compression_status compression_stream_init(compression_stream *stream, compression_stream_operation operation, compression_algorithm algorithm)
{
  if (algorithm > 2192)
  {
    if (algorithm - 2304 < 2)
    {
      return lzvn_stream_init(stream, operation, algorithm, 0);
    }

    if (algorithm == COMPRESSION_BROTLI)
    {
      return brotli_stream_init(stream, operation);
    }

    if (algorithm == 2193)
    {
      return lzfse_stream_init(stream, operation, algorithm, 0);
    }

    return -1;
  }

  if (algorithm > 2048)
  {
    if (algorithm - 2049 < 2)
    {
      return lzfse_stream_init(stream, operation, algorithm, 0);
    }

    return -1;
  }

  if (algorithm == COMPRESSION_LZ4)
  {
    return lz4_stream_init(stream, operation, 0);
  }

  if (algorithm != COMPRESSION_ZLIB)
  {
    if (algorithm == COMPRESSION_LZMA)
    {
      lzma_stream_init(stream, operation);
      return result;
    }

    return -1;
  }

  return zlib_stream_init(stream, operation, 0);
}

uint64_t lzfse_stream_init(uint64_t a1, int a2, int a3, int a4)
{
  if (a2 == 1)
  {
    return lzfseStreamDecodeInit(a1, a3, a4);
  }

  if (a2)
  {
    return 0xFFFFFFFFLL;
  }

  return lzfseStreamEncodeInit(a1, a3, a4);
}

uint64_t lzfseStreamDecodeInit(uint64_t a1, int a2, int a3)
{
  if (a3)
  {
    v5 = *(a1 + 32);
  }

  else
  {
    v5 = 0;
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  v6 = realloc_stream_state(v5, 1, a2, 0x18B940u, 0x180000u);
  *(a1 + 32) = v6;
  if (!v6)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = v6;
  result = 0;
  if (a2 == 2193)
  {
    v9 = 15000;
  }

  else
  {
    v9 = 40000;
  }

  v7[1838] = v9;
  *(v7 + 16) -= v7;
  *(v7 + 10) = 833856;
  *(v7 + 11) = 1620288;
  *(v7 + 6) = 47424;
  *(v7 + 7) = 47424;
  *(v7 + 8) = 47424;
  *(v7 + 9) = 833856;
  *(v7 + 2) = 47424;
  *(v7 + 3) = 833856;
  *(v7 + 4) = 833856;
  return result;
}

_DWORD *realloc_stream_state(_DWORD *a1, int a2, int a3, unsigned int a4, unsigned int a5)
{
  v6 = a4;
  v9 = a1;
  if (a1 && a1[3] >= a4)
  {
    v6 = a1[3];
  }

  else
  {
    free(a1);
    v9 = malloc(v6);
    if (!v9)
    {
      return v9;
    }
  }

  if (v6 > a5)
  {
    bzero(v9, v6 - a5);
  }

  *v9 = a2;
  v9[1] = a3;
  v9[2] = -1412628475;
  v9[3] = v6;
  return v9;
}

uint64_t lzfse_stream_process(uint64_t a1, char a2)
{
  v2 = **(a1 + 32);
  if (v2 == 1)
  {
    return lzfseStreamDecode(a1, a2);
  }

  if (v2)
  {
    return 0xFFFFFFFFLL;
  }

  return lzfseStreamEncode(a1, a2);
}

uint64_t lzfseStreamDecode(uint64_t a1, char a2)
{
  v4 = *(a1 + 32);
  v5 = *(v4 + 48);
  *(v4 + 128) += v4;
  v6 = vdupq_n_s64(v4);
  *(v4 + 48) = vaddq_s64(v6, v5);
  v7 = vaddq_s64(v6, *(v4 + 80));
  *(v4 + 64) = vaddq_s64(v6, *(v4 + 64));
  *(v4 + 80) = v7;
  v28 = v6;
  v8 = vaddq_s64(v6, *(v4 + 16));
  *(v4 + 16) = v8;
  *(v4 + 32) += v4;
  v9 = v8.i64[0];
  while (1)
  {
    v10 = *(v4 + 64);
    if (*(a1 + 24) >= &v9[-v10 + 786432])
    {
      v11 = &v9[-v10 + 786432];
    }

    else
    {
      v11 = *(a1 + 24);
    }

    if (v11)
    {
      memcpy(*(v4 + 64), *(a1 + 16), v11);
      *(v4 + 64) += v11;
      v12 = *(a1 + 24) - v11;
      *(a1 + 16) += v11;
      *(a1 + 24) = v12;
    }

    v14 = *(v4 + 24);
    v13 = *(v4 + 32);
    if (v13 >= v14 + 393216)
    {
      v15 = *(v4 + 72);
      v16 = v15 - 0x40000;
      if (v13 < (v15 - 0x40000))
      {
        v16 = *(v4 + 32);
      }

      if (v16 >= v14)
      {
        v17 = v16;
      }

      else
      {
        v17 = *(v4 + 24);
      }

      if (v17 > v14)
      {
        if (v15 != v17)
        {
          memmove(*(v4 + 80), v17, v15 - v17);
          v13 = *(v4 + 32);
          v15 = *(v4 + 72);
        }

        *(v4 + 32) = v13 + v14 - v17;
        *(v4 + 72) = &v15[v14 - v17];
      }
    }

    if (!*(v4 + 40) && *(v4 + 72) < *(v4 + 88))
    {
      v18 = lzfseDecode(v4 + 48);
      if (v18 == -1)
      {
        if (a2)
        {
LABEL_46:
          v25 = 1;
          goto LABEL_41;
        }
      }

      else if (v18 == -3)
      {
        goto LABEL_46;
      }

      if (*(v4 + 96))
      {
        *(v4 + 40) = 1;
      }
    }

    if (*(v4 + 44))
    {
      goto LABEL_40;
    }

    v19 = *(v4 + 32);
    if (*(a1 + 8) >= *(v4 + 72) - v19)
    {
      v20 = *(v4 + 72) - v19;
    }

    else
    {
      v20 = *(a1 + 8);
    }

    if (v20)
    {
      memcpy(*a1, v19, v20);
      v19 = (*(v4 + 32) + v20);
      *(v4 + 32) = v19;
      v21 = *(a1 + 8) - v20;
      *a1 += v20;
      *(a1 + 8) = v21;
    }

    if (*(v4 + 40) && v19 == *(v4 + 72))
    {
      break;
    }

    if (*(v4 + 44))
    {
LABEL_40:
      v25 = 0;
LABEL_41:
      v26 = *(v4 + 72);
      v19 = *(v4 + 32);
      goto LABEL_42;
    }

    v22 = *(v4 + 48);
    v9 = *(v4 + 16);
    if (v22 >= v9 + 393216)
    {
      v23 = *(v4 + 64);
      v24 = v23 - v22;
      if (v23 - v22 >= 1)
      {
        memmove(v9, v22, v23 - v22);
        v9 = *(v4 + 16);
      }

      *(v4 + 48) = v9;
      *(v4 + 64) = &v9[v24];
    }

    v25 = v20 | v11;
    if (!(v20 | v11))
    {
      goto LABEL_41;
    }
  }

  v25 = 0;
  *(v4 + 44) = 1;
  v26 = v19;
LABEL_42:
  *(v4 + 128) -= v4;
  *(v4 + 48) = vsubq_s64(*(v4 + 48), v28);
  *(v4 + 64) -= v4;
  *(v4 + 72) = &v26[-v4];
  *(v4 + 80) = vsubq_s64(*(v4 + 80), v28);
  *(v4 + 16) = vsubq_s64(*(v4 + 16), v28);
  *(v4 + 32) = &v19[-v4];
  if (v25)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *(v4 + 44) != 0;
  }
}

compression_status compression_stream_process(compression_stream *stream, int flags)
{
  state = stream->state;
  if (!state)
  {
    return -1;
  }

  v3 = flags;
  src_ptr = stream->src_ptr;
  dst_ptr = stream->dst_ptr;
  v7 = state[1];
  result = COMPRESSION_STATUS_ERROR;
  if (v7 > 2192)
  {
    if ((v7 - 2304) < 2)
    {
      result = lzvn_stream_process(stream, flags);
      if (result)
      {
        return result;
      }

      goto LABEL_24;
    }

    if (v7 == 2818)
    {
      result = brotli_stream_process(stream, flags);
      if (result)
      {
        return result;
      }

      goto LABEL_24;
    }

    if (v7 != 2193)
    {
      return result;
    }

    goto LABEL_15;
  }

  if (v7 > 2048)
  {
    if ((v7 - 2049) >= 2)
    {
      return result;
    }

LABEL_15:
    result = lzfse_stream_process(stream, flags);
    if (result)
    {
      return result;
    }

    goto LABEL_24;
  }

  switch(v7)
  {
    case 256:
      result = lz4_stream_process(stream, flags);
      if (result)
      {
        return result;
      }

      break;
    case 517:
      result = zlib_stream_process(&stream->dst_ptr, flags);
      if (result)
      {
        return result;
      }

      break;
    case 774:
      result = lzma_stream_process(stream, flags);
      if (result)
      {
        return result;
      }

      break;
    default:
      return result;
  }

LABEL_24:
  if ((v3 & 1) != 0 && stream->src_ptr == src_ptr && stream->dst_ptr == dst_ptr)
  {
    return -1;
  }

  return result;
}

size_t compression_encode_scratch_buffer_size(compression_algorithm algorithm)
{
  if ((algorithm ^ 0xA00) >= 0x100)
  {
    v1 = algorithm;
  }

  else
  {
    v1 = 2584;
  }

  if (v1 - 512 >= 0xA)
  {
    v2 = v1;
  }

  else
  {
    v2 = 517;
  }

  if ((v2 - 1280) >= 0xA)
  {
    v3 = v2;
  }

  else
  {
    v3 = 1285;
  }

  if (v3 > 2048)
  {
    if (v3 <= 2303)
    {
      if ((v3 - 2049) < 2 || v3 == 2193 || v3 == 2209)
      {
        return lzfse_encode_scratch_size(v3);
      }

      return 0;
    }

    if ((v3 - 3072) <= 0x20 && ((1 << v3) & 0x100010001) != 0)
    {
      return smb_encode_scratch_size(v3);
    }

    if ((v3 - 2304) < 2)
    {
      return lzvn_encode_scratch_size(v3);
    }

    if (v3 != 2584)
    {
      return 0;
    }

    return lz24_encode_scratch_buffer_size();
  }

  else
  {
    if (v3 > 1284)
    {
      if ((v3 - 1536) < 3)
      {
        return lzbitmap_fast_encode_scratch_size(v3 & 0xF);
      }

      if ((v3 - 1792) < 3)
      {
        return lzbitmap_encode_scratch_size(v3 & 0xF);
      }

      if (v3 != 1285)
      {
        return 0;
      }

      return zlib_encode_scratch_size();
    }

    if (v3 <= 773)
    {
      if ((v3 - 256) < 2)
      {
        return 0x8000;
      }

      if (v3 != 517)
      {
        return 0;
      }

      return zlib_encode_scratch_size();
    }

    if (v3 != 774)
    {
      return 0;
    }

    return lzvn_decode_scratch_size();
  }
}

uint64_t lz4_encode_buffer(int32x4_t *a1, unint64_t a2, char *a3, unint64_t a4, char *__b)
{
  v7 = a3;
  v24 = a3;
  memset_pattern8(__b, &unk_29862DB60, 0x8000uLL);
  v22 = a1;
  if (a4)
  {
    v10 = v7;
    v11 = a1;
    while (1)
    {
      if (a2 < 0xC)
      {
        return 0;
      }

      v12 = a4 >= 0x10000 ? 0x10000 : a4;
      v13 = (&v11->u64[1] + 4);
      v23 = (&v11->u64[1] + 4);
      lz4_encode_2gb(&v23, a2 - 12, &v24, v10, v12, __b, 0);
      if (v24 - v7 < v12)
      {
        break;
      }

      if (v23 == v13)
      {
        goto LABEL_12;
      }

      v14 = v23 - v13;
      v15 = v23 - v11;
      if (v23 - v11 >= v12 + 8)
      {
        goto LABEL_12;
      }

      v11->i32[0] = 825521762;
      v11->i32[1] = v12;
      v11->i32[2] = v14;
      v11 = v23;
      v7 = v24;
      a2 -= v15;
LABEL_15:
      if (&v7[-v10] >= 1610612736)
      {
        for (i = 0; i != 0x8000; i += 8)
        {
          v19 = *&__b[i];
          if (v19 != 0x80000000)
          {
            if (v19 >> 30)
            {
              v20 = v19 - 0x40000000;
            }

            else
            {
              v20 = 0x80000000;
            }

            *&__b[i] = v20;
          }
        }

        v10 += 0x40000000;
      }

      a4 -= v12;
      if (!a4)
      {
        goto LABEL_27;
      }
    }

    v23 = (&v11->u64[1] + 4);
    v24 = &v7[v12];
LABEL_12:
    v11->i32[0] = 758412898;
    v11->i32[1] = v12;
    v16 = a2 - 8 >= v12;
    a2 = a2 - 8 - v12;
    if (!v16)
    {
      return 0;
    }

    v17 = &v11->u64[1];
    v7 = v24;
    memcpy(v17, &v24[-v12], v12);
    v11 = (v17 + v12);
    goto LABEL_15;
  }

  v11 = a1;
LABEL_27:
  if (a2 < 4)
  {
    return 0;
  }

  v11->i32[0] = 607417954;
  return v11 - v22 + 4;
}

size_t compression_encode_buffer(uint8_t *dst_buffer, size_t dst_size, const uint8_t *src_buffer, size_t src_size, void *scratch_buffer, compression_algorithm algorithm)
{
  v6 = algorithm;
  if ((algorithm ^ 0xA00) >= 0x100)
  {
    v11 = algorithm;
  }

  else
  {
    v11 = 2584;
  }

  if (v11 - 2816 >= 0xA)
  {
    v12 = 2;
  }

  else
  {
    v12 = v11 & 0xF;
  }

  if (v11 - 2816 < 0xA)
  {
    v11 = COMPRESSION_BROTLI;
  }

  if (v11 - 512 >= 0xA)
  {
    v13 = 5;
  }

  else
  {
    v13 = v11 & 0xF;
  }

  if (v11 - 512 < 0xA)
  {
    v11 = COMPRESSION_ZLIB;
  }

  if (v11 - 1280 >= 0xA)
  {
    v14 = v13;
  }

  else
  {
    v14 = v11 & 0xF;
  }

  if (v11 - 1280 >= 0xA)
  {
    v15 = v11;
  }

  else
  {
    v15 = 1285;
  }

  v16 = compression_encode_scratch_buffer_size(v15);
  v17 = v16;
  if (scratch_buffer)
  {
    v18 = 1;
  }

  else
  {
    v18 = v16 == 0;
  }

  v19 = v18;
  if (!v18)
  {
    scratch_buffer = malloc(v16);
    if (!scratch_buffer)
    {
      return 0;
    }
  }

  v31 = v19;
  v20 = 0;
  if (v15 <= 2048)
  {
    if (v15 <= 1284)
    {
      if (v15 <= 516)
      {
        if (v15 == COMPRESSION_LZ4)
        {
          v21 = lz4_encode_buffer(dst_buffer, dst_size, src_buffer, src_size, scratch_buffer);
        }

        else
        {
          if (v15 != COMPRESSION_LZ4_RAW)
          {
            goto LABEL_66;
          }

          v21 = lz4raw_encode_buffer(dst_buffer, dst_size, src_buffer, src_size, scratch_buffer);
        }

        goto LABEL_65;
      }

      if (v15 != COMPRESSION_ZLIB)
      {
        if (v15 != COMPRESSION_LZMA)
        {
          goto LABEL_66;
        }

        v21 = lzma_encode_buffer();
        goto LABEL_65;
      }

      v23 = dst_buffer;
      v24 = dst_size;
      v25 = src_buffer;
      v26 = src_size;
      v27 = scratch_buffer;
      v28 = v14;
      v29 = 0;
    }

    else
    {
      if (v15 - 1536 < 3)
      {
        v21 = lzbitmap_fast_encode_buffer(dst_buffer, dst_size, src_buffer, src_size, scratch_buffer, v15 & 0xF);
        goto LABEL_65;
      }

      if (v15 - 1792 < 3)
      {
        v21 = lzbitmap_encode_buffer(dst_buffer, dst_size, src_buffer, src_size, scratch_buffer, v15 & 0xF);
LABEL_65:
        v20 = v21;
        goto LABEL_66;
      }

      if (v15 != 1285)
      {
        goto LABEL_66;
      }

      v23 = dst_buffer;
      v24 = dst_size;
      v25 = src_buffer;
      v26 = src_size;
      v27 = scratch_buffer;
      v28 = v14;
      v29 = 1;
    }

    v21 = zlib_encode_buffer(v23, v24, v25, v26, v27, v28, v29);
    goto LABEL_65;
  }

  if (v15 > 2583)
  {
    if (v15 - 3072 > 0x20 || ((1 << v15) & 0x100010001) == 0)
    {
      if (v15 == 2584)
      {
        v21 = lz24_encode_buffer(dst_buffer, dst_size, src_buffer, src_size, scratch_buffer, v6);
      }

      else
      {
        if (v15 != COMPRESSION_BROTLI)
        {
          goto LABEL_66;
        }

        v21 = brotli_encode_buffer(dst_buffer, dst_size, src_buffer, src_size, scratch_buffer, v12);
      }
    }

    else
    {
      v21 = smb_encode_buffer(dst_buffer, dst_size, src_buffer, src_size, scratch_buffer, v15);
    }

    goto LABEL_65;
  }

  if (v15 > 2208)
  {
    if (v15 - 2304 < 2)
    {
      v21 = lzvn_encode_buffer(dst_buffer, dst_size, src_buffer, src_size, scratch_buffer, v15);
      goto LABEL_65;
    }

    if (v15 != 2209)
    {
      goto LABEL_66;
    }

LABEL_60:
    v21 = lzfse_encode_buffer(dst_buffer, dst_size, src_buffer, src_size, scratch_buffer, v15);
    goto LABEL_65;
  }

  if (v15 - 2049 < 2 || v15 == 2193)
  {
    goto LABEL_60;
  }

LABEL_66:
  if ((v31 & 1) == 0)
  {
    memset_s(scratch_buffer, v17, 0, v17);
    free(scratch_buffer);
  }

  return v20;
}

int32x4_t **lz4_encode_2gb(int32x4_t **result, uint64_t a2, char **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = vdupq_n_s32(0xFFFFFFFF);
  v8 = *result;
  v9 = *a3;
  v10 = (*result)[-8].i64 + a2;
  if (v10 < *result)
  {
    goto LABEL_92;
  }

  v11 = &v9[a5 - 128];
  if (v11 >= v9)
  {
    do
    {
      v12 = v9;
      v13 = &v9[-a4];
      while (1)
      {
        v14 = *v12;
        v15 = (a6 + 8 * ((-1640531535 * *v12) >> 20));
        v16 = *v15;
        v17 = v15[1];
        *v15 = v13;
        v15[1] = v14;
        v18 = v14 >> 8;
        v19 = (a6 + 8 * ((-1640531535 * (v14 >> 8)) >> 20));
        v20 = *v19;
        v21 = v19[1];
        *v19 = v13 + 1;
        v19[1] = v14 >> 8;
        if (v14 == v17)
        {
          v22 = (v13 - v16);
          if (v22 < 0x10000 && v22 != 0)
          {
            break;
          }
        }

        v12 = (v12 + 1);
        v24 = v13 + 1;
        v25 = v14 >> 16;
        v26 = (a6 + 8 * ((-1640531535 * v25) >> 20));
        v27 = *v26;
        v28 = v26[1];
        *v26 = v24 + 1;
        v26[1] = v25;
        if (v18 == v21)
        {
          v22 = (v24 - v20);
          if (v22 < 0x10000 && v24 != v20)
          {
            break;
          }
        }

        v12 = (v12 + 1);
        v30 = v24 + 1;
        v31 = v25 >> 8;
        v32 = (a6 + 8 * ((-1640531535 * (v25 >> 8)) >> 20));
        v33 = *v32;
        v34 = v32[1];
        *v32 = v30 + 1;
        v32[1] = v25 >> 8;
        if (v25 == v28)
        {
          v22 = (v30 - v27);
          if (v22 < 0x10000 && v30 != v27)
          {
            break;
          }
        }

        v12 = (v12 + 1);
        v36 = v30 + 1;
        v37 = v25 >> 16;
        v38 = (a6 + 8 * ((-1640531535 * v37) >> 20));
        v39 = *v38;
        v40 = v38[1];
        *v38 = v36 + 1;
        v38[1] = v37;
        if (v31 == v34)
        {
          v22 = (v36 - v33);
          if (v22 < 0x10000 && v36 != v33)
          {
            break;
          }
        }

        v12 = (v12 + 1);
        v42 = v36 + 1;
        if (v37 == v40)
        {
          v22 = (v42 - v39);
          if (v22 < 0x10000 && v42 != v39)
          {
            break;
          }
        }

        v12 = (v12 + 1);
        v13 = v42 + 1;
        if (v12 >= v11)
        {
          goto LABEL_74;
        }
      }

      v44 = v12 + 4;
      v45 = (v12 - v22 + 4);
      while (1)
      {
        v47 = *v44;
        v44 += 8;
        v46 = v47;
        v49 = *v45++;
        v48 = v49;
        if (v46 != v49)
        {
          break;
        }

        if (v44 >= v11)
        {
          goto LABEL_38;
        }
      }

      v44 = &v44[(__clz(__rbit64(v46 ^ v48)) >> 3) - 8];
LABEL_38:
      v50 = v12 - v22;
      while (1)
      {
        v51 = v12 <= v9 || v50 <= a4;
        if (v51)
        {
          break;
        }

        v53 = *(v12 - 1);
        v12 = (v12 - 1);
        v52 = v53;
        v54 = *--v50;
        if (v52 != v54)
        {
          v12 = (v12 + 1);
          break;
        }
      }

      v55 = v44 - v12 - 4;
      v56 = v12 - v9;
      v57 = v12 - v9 + 3;
      v58 = v10 - v8 - v57;
      if (v10 - v8 < v57)
      {
        goto LABEL_92;
      }

      v59 = (v55 & 0xF) + 16 * v56;
      v60 = &v8->i8[1];
      if (v56 >= 0xF)
      {
        v59 |= 0xF0u;
        v61 = v56 - 15;
        v62 = v58-- != 0;
        if (!v62)
        {
          goto LABEL_92;
        }

        if (v61 >= 0xFF)
        {
          v63 = v61 / 0xFFuLL;
          v62 = v58 >= v63;
          v58 -= v63;
          if (!v62)
          {
            goto LABEL_92;
          }

          LOBYTE(v61) = v61 + v63;
          do
          {
            *v60++ = v7;
            v51 = v63 > 0x10;
            v63 -= 16;
          }

          while (v51);
          v60 = (v60 + v63);
        }

        v60->i8[0] = v61;
        v60 = (v60 + 1);
      }

      do
      {
        v64 = *v9;
        v9 += 16;
        *v60++ = v64;
        v51 = v56 <= 16;
        v56 -= 16;
      }

      while (!v51);
      v65 = (v60->i16 + v56);
      *v65 = v22;
      v66 = (v65 + 1);
      if (v55 >= 0xF)
      {
        v59 |= 0xFu;
        v67 = v44 - v12 - 19;
        v62 = v58 != 0;
        v68 = v58 - 1;
        if (!v62)
        {
          goto LABEL_92;
        }

        if (v67 >= 0xFF)
        {
          v69 = v67 / 0xFFuLL;
          if (v68 < v69)
          {
            goto LABEL_92;
          }

          LOBYTE(v67) = v67 + v69;
          do
          {
            *v66++ = v7;
            v51 = v69 > 0x10;
            v69 -= 16;
          }

          while (v51);
          v66 = (v66 + v69);
        }

        v66->i8[0] = v67;
        v66 = (v66 + 1);
      }

      v8->i8[0] = v59;
      v8 = v66;
      v9 = v44;
    }

    while (v44 < v11 && v66 < v10);
  }

LABEL_74:
  if (a7)
  {
    goto LABEL_92;
  }

  v71 = (v11 + 128);
  v72 = v71 - v9;
  if (v71 == v9)
  {
    goto LABEL_92;
  }

  v73 = v10 + 128 - v8 - 1;
  v51 = v73 <= v72;
  v74 = v73 - v72;
  if (v51)
  {
    goto LABEL_92;
  }

  if (v72 < 15)
  {
    v8->i8[0] = 16 * v72;
    v8 = (v8 + 1);
    do
    {
LABEL_91:
      v81 = *v9++;
      v8->i8[0] = v81;
      v8 = (v8 + 1);
    }

    while (v9 < v71);
    goto LABEL_92;
  }

  v75 = v74 - 1;
  if (v75 >= 0)
  {
    v8->i8[0] = -16;
    v76 = &v8->i8[1];
    v77 = v72 - 15;
    if ((v72 - 15) >= 0xFF)
    {
      v78 = v77 / 0xFFuLL;
      if (v75 - v78 < 0)
      {
        v8 = (v76 - 1);
        goto LABEL_92;
      }

      LOBYTE(v77) = v77 + v78;
      do
      {
        *v76++ = v7;
        v51 = v78 <= 16;
        v78 -= 16;
      }

      while (!v51);
      v76 = (v76 + v78);
    }

    v76->i8[0] = v77;
    v8 = &v76->i8[1];
    v79 = v72 >> 4;
    if (!(v72 >> 4))
    {
      goto LABEL_91;
    }

    do
    {
      v80 = *v9;
      v9 += 16;
      *v8++ = v80;
      v51 = v79-- <= 1;
    }

    while (!v51);
    if (v9 < v71)
    {
      goto LABEL_91;
    }
  }

LABEL_92:
  *result = v8;
  *a3 = v9;
  return result;
}

uint64_t lzfse_decode_lmd(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = (*a1 + *(a1 + 120));
  v3 = *(a1 + 104);
  v4 = *(a1 + 112);
  v5 = *(a1 + 72);
  v6 = *(a1 + 88);
  v7 = *(a1 + 92);
  v8 = *(a1 + 96);
  v9 = *(a1 + 124);
  v10 = *(a1 + 126);
  v11 = *(a1 + 128);
  v12 = *(a1 + 40) - v1 - 32;
  v13 = *(a1 + 80);
  if (v6 | v7)
  {
    goto LABEL_7;
  }

  if (*(a1 + 72))
  {
    while (1)
    {
      v2 = (v2 - ((63 - v4) >> 3));
      if (v2 < *(a1 + 8))
      {
        return -3;
      }

      v3 = *v2;
      v14 = (a1 + 136 + 8 * v9);
      v15 = *v14;
      v16 = v4 + ((63 - v4) & 0xFFFFFFFFFFFFFFF8) - v15;
      v17 = *v2 >> v16;
      v18 = v17 & ~(-1 << v15);
      LOBYTE(v15) = v14[1];
      v9 = (v18 >> v15) + *(v14 + 1);
      v6 = (v17 & ~(-1 << v15)) + *(v14 + 1);
      v19 = (a1 + 648 + 8 * v10);
      v20 = *v19;
      v21 = v16 - v20;
      v22 = *v2 >> v21;
      v23 = v22 & ~(-1 << v20);
      LOBYTE(v20) = v19[1];
      v10 = (v23 >> v20) + *(v19 + 1);
      v7 = (v22 & ~(-1 << v20)) + *(v19 + 1);
      v24 = (a1 + 1160 + 8 * v11);
      v25 = *v24;
      v4 = v21 - v25;
      v26 = *v2 >> v4;
      v27 = v26 & ~(-1 << v25);
      LOBYTE(v25) = v24[1];
      v11 = (v27 >> v25) + *(v24 + 1);
      v28 = (v26 & ~(-1 << v25)) + *(v24 + 1);
      if (v28)
      {
        v8 = v28;
      }

      --v5;
LABEL_7:
      if (v8 > v1 + v6 - *(a1 + 32) || a1 + *(a1 + 7304) + 7308 < &v13[v6])
      {
        return -3;
      }

      v29 = v12 < (v6 + v7);
      v12 -= v6 + v7;
      if (v29)
      {
        v40 = v12 + v6 + v7 + 32;
        if (v6)
        {
          do
          {
            v41 = v40-- != 0;
            if (!v41)
            {
              goto LABEL_30;
            }

            v42 = *v13++;
            *v1 = v42;
            v1 = (v1 + 1);
          }

          while (--v6);
        }

        if (v7)
        {
          v43 = v1 - v8;
          while (1)
          {
            v41 = v40-- != 0;
            if (!v41)
            {
              break;
            }

            v44 = *v43++;
            *v1 = v44;
            v1 = (v1 + 1);
            if (!--v7)
            {
              goto LABEL_28;
            }
          }

LABEL_30:
          *(a1 + 24) = v1;
          *(a1 + 120) = v2 - *a1;
          *(a1 + 104) = v3;
          *(a1 + 112) = v4;
          *(a1 + 72) = v5;
          *(a1 + 88) = v6;
          *(a1 + 92) = v7;
          *(a1 + 96) = v8;
          *(a1 + 124) = v9;
          *(a1 + 126) = v10;
          *(a1 + 128) = v11;
          *(a1 + 80) = v13;
          return -2;
        }

LABEL_28:
        v12 = v40 - 32;
        if (!v5)
        {
          goto LABEL_29;
        }
      }

      else
      {
        do
        {
          v30 = *v13;
          v31 = *(v13 + 1);
          v13 += 16;
          *v1 = v30;
          v1[1] = v31;
          v1 += 2;
          v29 = v6 > 0x10;
          v6 -= 16;
        }

        while (v29);
        v32 = (v1 + v6);
        v13 += v6;
        v33 = (v32 - v8);
        if (v8 < 0x10)
        {
          v36 = (&unk_29864DA50 + 32 * v8);
          v37 = byte_29864DC50[v8];
          v38 = vqtbl1q_s8(*v33, *v36);
          v39 = vqtbl1q_s8(*v33, v36[1]);
          do
          {
            *v32 = v38;
            v32[1] = v39;
            v32 = (v32 + v37);
            v29 = v7 > v37;
            v7 -= v37;
          }

          while (v29);
          v1 = (v32->i64 + v7);
          if (!v5)
          {
            goto LABEL_29;
          }
        }

        else
        {
          do
          {
            v34 = v33->i64[0];
            v35 = v33->i64[1];
            ++v33;
            v32->i64[0] = v34;
            v32->i64[1] = v35;
            ++v32;
            v29 = v7 > 0x10;
            v7 -= 16;
          }

          while (v29);
          v1 = (v32->i64 + v7);
          if (!v5)
          {
            goto LABEL_29;
          }
        }
      }
    }
  }

  else
  {
LABEL_29:
    *(a1 + 24) = v1;
    return 0;
  }
}

uint64_t lzfseDecode(uint64_t a1)
{
  v2 = &__dst[16] + 2;
  v3 = a1 + 3208;
  v4 = a1 + 136;
  v158 = a1 + 1160;
  v159 = a1 + 648;
  v160 = (a1 + 7308);
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v5 = *(a1 + 52);
          result = 4294967293;
          if (v5 <= 829978209)
          {
            break;
          }

          if (v5 == 829978210 || v5 == 846755426)
          {
            v8 = *(a1 + 16);
            v9 = v8 > *a1;
            v10 = v8 - *a1;
            if (!v9 || v10 < *(a1 + 76))
            {
              return 0xFFFFFFFFLL;
            }

            result = lzfse_decode_lmd(a1);
            if (result)
            {
              return result;
            }

            *(a1 + 52) = 0;
            *a1 += *(a1 + 76);
          }

          else
          {
            if (v5 != 1853388386)
            {
              return result;
            }

            v18 = *(a1 + 60);
            v19 = *a1;
            v20 = *(a1 + 16);
            if (v18 && v20 <= v19)
            {
              return 0xFFFFFFFFLL;
            }

            *(&__dst[4] + 8) = 0u;
            *(&__dst[3] + 8) = 0u;
            *(&__dst[2] + 8) = 0u;
            v9 = (v20 - v19) <= v18;
            v21 = v19 + v18;
            if (v9)
            {
              v21 = v20;
            }

            *&__dst[0] = v19;
            *(&__dst[0] + 1) = v21;
            v22 = *(a1 + 24);
            __dst[1] = v22;
            *&__dst[2] = *(a1 + 40);
            v23 = *(a1 + 56);
            if (*&__dst[2] - v22 > v23)
            {
              *&__dst[2] = v22 + v23;
            }

            *(&__dst[4] + 1) = *(a1 + 64);
            LODWORD(__dst[5]) = 0;
            result = lzvnDecode(__dst);
            if (result == -3)
            {
              return result;
            }

            v24 = *&__dst[0] - *a1;
            v25 = *(a1 + 60);
            if (v24 > v25)
            {
              return 4294967293;
            }

            v26 = *&__dst[1];
            v27 = *&__dst[1] - *(a1 + 24);
            v28 = *(a1 + 56);
            if (v27 > v28)
            {
              return 4294967293;
            }

            *a1 = *&__dst[0];
            *(a1 + 24) = v26;
            v29 = DWORD2(__dst[4]);
            v30 = __dst[5];
            v31 = v25 - v24;
            *(a1 + 60) = v31;
            *(a1 + 64) = v29;
            *(a1 + 56) = v28 - v27;
            if (v31)
            {
              if (v30)
              {
                v152 = 1;
              }

              else
              {
                v152 = v28 == v27;
              }

              if (v152)
              {
                return 4294967293;
              }

              else
              {
                return 4294967294;
              }
            }

            result = 4294967293;
            if (v28 != v27 || !v30)
            {
              return result;
            }

LABEL_41:
            *(a1 + 52) = 0;
          }
        }

        if (!v5)
        {
          break;
        }

        if (v5 != 762869346)
        {
          return result;
        }

        v11 = *(a1 + 68);
        if (!v11)
        {
          goto LABEL_41;
        }

        v12 = *(a1 + 16);
        v9 = v12 > *a1;
        v13 = v12 - *a1;
        if (!v9)
        {
          return 0xFFFFFFFFLL;
        }

        v14 = *(a1 + 40);
        v15 = *(a1 + 24);
        v9 = v14 > v15;
        v16 = v14 - v15;
        if (!v9)
        {
          return 4294967294;
        }

        if (v13 >= v11)
        {
          v11 = v11;
        }

        else
        {
          v11 = v13;
        }

        if (v16 >= v11)
        {
          v17 = v11;
        }

        else
        {
          v17 = v16;
        }

        memmove(v15, *a1, v17);
        *a1 += v17;
        *(a1 + 24) += v17;
        *(a1 + 68) -= v17;
      }

      v32 = *a1;
      v33 = (*a1 + 4);
      v34 = *(a1 + 16);
      if (v33 > v34)
      {
        return 0xFFFFFFFFLL;
      }

      v35 = *v32;
      if (*v32 <= 846755425)
      {
        break;
      }

      if (v35 == 846755426)
      {
LABEL_51:
        v157 = *v32;
        if (v35 == 846755426)
        {
          v155 = v3;
          v36 = (v32 + 8);
          if ((v32 + 8) > v34)
          {
            return 0xFFFFFFFFLL;
          }

          v156 = v4;
          v37 = *(v32 + 3);
          if (v37 < 0x20)
          {
            return result;
          }

          v154 = v2;
          v38 = v32 + v37;
          if (v38 > v34)
          {
            return 0xFFFFFFFFLL;
          }

          v153 = v37;
          bzero(&__dst[3], 0x2D4uLL);
          v39 = *(v32 + 1);
          v40 = *(v32 + 2);
          v41 = v32[1];
          LODWORD(__dst[0]) = 829978210;
          DWORD1(__dst[0]) = v41;
          v42 = v40 >> 30;
          v43 = (v40 >> 40) & 0xFFFFF;
          v44 = (v40 >> 60) & 7;
          LOWORD(v45) = v40;
          WORD1(v45) = v40 >> 10;
          WORD2(v45) = v40 >> 20;
          v46 = (v39 >> 20) & 0xFFFFF;
          LODWORD(v45) = v45 & 0x3FF03FF;
          WORD2(v45) &= 0x3FFu;
          HIWORD(v45) = v42 & 0x3FF;
          *&__dst[2] = v45;
          LODWORD(__dst[1]) = (v39 >> 40) & 0xFFFFF;
          *(&__dst[1] + 4) = __PAIR64__(v43, v46);
          HIDWORD(__dst[1]) = ((v39 >> 60) & 7) - 7;
          DWORD2(__dst[2]) = v44 - 7;
          WORD6(__dst[2]) = WORD2(v37) & 0x3FF;
          HIWORD(__dst[2]) = (v37 >> 42) & 0x3FF;
          LOWORD(__dst[3]) = (v37 >> 52) & 0x3FF;
          DWORD2(__dst[0]) = v43 + v46;
          HIDWORD(__dst[0]) = v39 & 0xFFFFF;
          if (v37 != 32)
          {
            v143 = 0;
            v144 = 0;
            v145 = 0;
            v4 = v156;
            while (1)
            {
              if (v36 >= v38 || v144 > 24)
              {
                v146 = v144;
              }

              else
              {
                do
                {
                  v146 = v144 + 8;
                  v147 = *v36++;
                  v145 |= v147 << v144;
                  if (v36 >= v38)
                  {
                    break;
                  }

                  v9 = v144 < 17;
                  v144 += 8;
                }

                while (v9);
              }

              v148 = lzfse_freq_nbits_table[v145 & 0x1F];
              if (v148 == 14)
              {
                v149 = ((v145 >> 4) & 0x3FF) + 24;
              }

              else
              {
                LOWORD(v149) = v148 == 8 ? (v145 >> 4) + 8 : lzfse_freq_value_table[v145 & 0x1F];
              }

              v150 = v148;
              *(&__dst[3] + v143 + 1) = v149;
              v144 = v146 - v148;
              if (v146 < v150)
              {
                return 4294967293;
              }

              v145 >>= v150;
              if (++v143 == 360)
              {
                v151 = v144 <= 7 && v36 == v38;
                v2 = v154;
                v3 = v155;
                v47 = v153;
                if (v151)
                {
                  goto LABEL_59;
                }

                return 4294967293;
              }
            }
          }

          v47 = 32;
          v2 = v154;
          v3 = v155;
          v4 = v156;
        }

        else
        {
          if ((v32 + 193) > v34)
          {
            return 0xFFFFFFFFLL;
          }

          memcpy(__dst, v32, 0x304uLL);
          v46 = DWORD1(__dst[1]);
          v43 = DWORD2(__dst[1]);
          v47 = 772;
        }

LABEL_59:
        v48 = v32 + v47;
        if (&v48[v46 + v43] > v34)
        {
          return 0xFFFFFFFFLL;
        }

        v49 = 0;
        v50 = __dst[1];
        for (i = 50; i != 90; i += 2)
        {
          v49 += *(__dst + i);
        }

        v52 = 0;
        for (j = 90; j != 130; j += 2)
        {
          v52 += *(__dst + j);
        }

        v54 = 0uLL;
        v55 = 0uLL;
        v56 = 0uLL;
        v57 = 0uLL;
        do
        {
          v58 = *(__dst + j);
          v59 = vmovl_u16(*v58.i8);
          v60 = vmovl_high_u16(v58);
          v57 = vaddw_high_u32(v57, v60);
          v56 = vaddw_u32(v56, *v60.i8);
          v55 = vaddw_high_u32(v55, v59);
          v54 = vaddw_u32(v54, *v59.i8);
          j += 16;
        }

        while (j != 258);
        v61 = vaddvq_s64(vaddq_s64(vaddq_s64(v54, v56), vaddq_s64(v55, v57)));
        v62 = 0uLL;
        v63 = 258;
        v64 = 0uLL;
        v65 = 0uLL;
        v66 = 0uLL;
        do
        {
          v67 = *(__dst + v63);
          v68 = vmovl_u16(*v67.i8);
          v69 = vmovl_high_u16(v67);
          v66 = vaddw_high_u32(v66, v69);
          v65 = vaddw_u32(v65, *v69.i8);
          v64 = vaddw_high_u32(v64, v68);
          v62 = vaddw_u32(v62, *v68.i8);
          v63 += 16;
        }

        while (v63 != 770);
        v70 = vbicq_s8(xmmword_29864E080, vmovl_s16(vcgt_u16(0x400040004000400, *&__dst[2])));
        v71 = vorr_s8(*v70.i8, *&vextq_s8(v70, v70, 8uLL));
        v72 = ((vaddvq_s64(vaddq_s64(vaddq_s64(v62, v65), vaddq_s64(v64, v66))) > 0x400) << 13) | ((v61 > 0x100) << 12);
        v73 = ((LOWORD(__dst[3]) > 0xFFu) << 9) | ((HIWORD(__dst[2]) > 0x3Fu) << 8) | ((v52 > 0x40) << 11) | ((v49 > 0x40) << 10);
        if (LODWORD(__dst[0]) == 829978210)
        {
          v74 = v72;
        }

        else
        {
          v74 = v72 + 1;
        }

        if (v71.i32[0] | v71.i32[1] | (2 * (HIDWORD(__dst[0]) > 0x9C40)) | ((WORD6(__dst[2]) > 0x3Fu) << 7) | (4 * (LODWORD(__dst[1]) > 0x2710)) | v73 | v74 || *(a1 + 7304) < HIDWORD(__dst[0]))
        {
          return 4294967293;
        }

        v75 = 0;
        v76 = 0;
        *a1 = v48;
        v77 = v3;
        *(a1 + 72) = v50;
        *(a1 + 76) = v43;
        do
        {
          v78 = *&v2[2 * v75];
          if (*&v2[2 * v75])
          {
            v76 += v78;
            if (v76 > 1024)
            {
              break;
            }

            v79 = 0;
            v80 = __clz(v78);
            v81 = v80 - 21;
            v82 = 0x800u >> (v80 - 21);
            v83 = v82 - v78;
            v84 = v80 - 22;
            v85 = v78 - v82;
            do
            {
              v86 = (v85 + v79) << v84;
              if (v79 < v83)
              {
                v87 = v81;
              }

              else
              {
                v87 = v84;
              }

              if (v79 < v83)
              {
                LOWORD(v86) = ((v78 + v79) << v81) - 1024;
              }

              *v77 = v87;
              *(v77 + 1) = v75;
              *(v77 + 2) = v86;
              v77 += 4;
              ++v79;
            }

            while (v78 != v79);
          }

          ++v75;
        }

        while (v75 != 256);
        v88 = 0;
        v89 = v4;
        do
        {
          v90 = *(&__dst[3] + v88 + 1);
          if (*(&__dst[3] + v88 + 1))
          {
            v91 = 0;
            v92 = __clz(v90);
            v93 = v92 - 25;
            v94 = 0x80u >> (v92 - 25);
            v95 = v94 - v90;
            v96 = kLSymbolVBits[v88];
            v97 = kLSymbolVBase[v88];
            v98 = v92 - 26;
            v99 = v90 - v94;
            do
            {
              v100 = (v99 + v91) << v98;
              if (v91 < v95)
              {
                v101 = v93;
              }

              else
              {
                v101 = v98;
              }

              if (v91 < v95)
              {
                LOWORD(v100) = ((v90 + v91) << v93) - 64;
              }

              *v89 = v96 + v101;
              *(v89 + 1) = v96;
              *(v89 + 2) = v100;
              *(v89 + 4) = v97;
              v89 += 8;
              ++v91;
            }

            while (v90 != v91);
          }

          ++v88;
        }

        while (v88 != 20);
        v102 = 0;
        v103 = v159;
        do
        {
          v104 = *(&__dst[5] + v102 + 5);
          if (*(&__dst[5] + v102 + 5))
          {
            v105 = 0;
            v106 = __clz(v104);
            v107 = v106 - 25;
            v108 = 0x80u >> (v106 - 25);
            v109 = v108 - v104;
            v110 = kMSymbolVBits[v102];
            v111 = kMSymbolVBase[v102];
            v112 = v106 - 26;
            v113 = v104 - v108;
            do
            {
              v114 = (v113 + v105) << v112;
              if (v105 < v109)
              {
                v115 = v107;
              }

              else
              {
                v115 = v112;
              }

              if (v105 < v109)
              {
                LOWORD(v114) = ((v104 + v105) << v107) - 64;
              }

              *v103 = v110 + v115;
              *(v103 + 1) = v110;
              *(v103 + 2) = v114;
              *(v103 + 4) = v111;
              v103 += 8;
              ++v105;
            }

            while (v104 != v105);
          }

          ++v102;
        }

        while (v102 != 20);
        v116 = 0;
        v117 = v158;
        do
        {
          v118 = *(&__dst[8] + v116 + 1);
          if (*(&__dst[8] + v116 + 1))
          {
            v119 = 0;
            v120 = __clz(v118);
            v121 = v120 - 23;
            v122 = 0x200u >> (v120 - 23);
            v123 = v122 - v118;
            v124 = kDSymbolVBits[v116];
            v125 = kDSymbolVBase[v116];
            v126 = v120 - 24;
            v127 = v118 - v122;
            do
            {
              v128 = (v127 + v119) << v126;
              if (v119 < v123)
              {
                v129 = v121;
              }

              else
              {
                v129 = v126;
              }

              if (v119 < v123)
              {
                LOWORD(v128) = ((v118 + v119) << v121) - 256;
              }

              *v117 = v124 + v129;
              *(v117 + 1) = v124;
              *(v117 + 2) = v128;
              *(v117 + 4) = v125;
              v117 += 8;
              ++v119;
            }

            while (v118 != v119);
          }

          ++v116;
        }

        while (v116 != 64);
        v162 = 0;
        v163 = 0;
        v130 = *(a1 + 8);
        v131 = HIDWORD(__dst[1]);
        v132 = *a1 + DWORD1(__dst[1]);
        *a1 = v132;
        if (v131)
        {
          if (v132 < v130 + 8)
          {
            return 4294967293;
          }

          v161 = (v132 - 8);
          v133 = *(v132 - 8);
          v162 = v133;
          v134 = v131 + 64;
          LODWORD(v163) = v131 + 64;
          if (v131 < 0xFFFFFFF8)
          {
            return 4294967293;
          }
        }

        else
        {
          if (v132 < v130 + 7)
          {
            return 4294967293;
          }

          v161 = (v132 - 7);
          v135 = *(v132 - 7);
          *(&v162 + 3) = *(v132 - 4);
          v134 = 56;
          LODWORD(v162) = v135;
          v133 = v162 & 0xFFFFFFFFFFFFFFLL;
          v162 &= 0xFFFFFFFFFFFFFFuLL;
          LODWORD(v163) = 56;
        }

        if (v133 >> v134 || lzfse_decode_literals(v160, v3, HIDWORD(__dst[0]), &v162, &v161, v130, *&__dst[2]) == -3)
        {
          return 4294967293;
        }

        *(a1 + 80) = v160;
        v136 = *a1;
        v137 = *a1 + DWORD2(__dst[1]);
        if (DWORD2(__dst[2]))
        {
          if (DWORD2(__dst[1]) < 8)
          {
            return 4294967293;
          }

          v140 = *(v137 - 8);
          v138 = v137 - 8;
          v139 = v140;
          v141 = DWORD2(__dst[2]) + 64;
        }

        else
        {
          if (DWORD2(__dst[1]) < 7)
          {
            return 4294967293;
          }

          v142 = *(v137 - 7);
          v138 = v137 - 7;
          v139 = v142 | ((*(v138 + 4) | (*(v138 + 6) << 16)) << 32);
          v141 = 56;
        }

        result = 4294967293;
        if ((v141 & 0xFFFFFFF8) != 0x38)
        {
          return result;
        }

        if (v139 >> v141)
        {
          return result;
        }

        *(a1 + 124) = WORD6(__dst[2]);
        *(a1 + 126) = *(&__dst[2] + 14);
        if (v138 < v136)
        {
          return result;
        }

        *(a1 + 116) = 0;
        *(a1 + 120) = v138 - v136;
        *(a1 + 88) = 0;
        *(a1 + 96) = -1;
        *(a1 + 104) = v139;
        *(a1 + 112) = v141;
        *(a1 + 52) = v157;
      }

      else
      {
        if (v35 != 1853388386)
        {
          return result;
        }

        if ((v32 + 3) > v34)
        {
          return 0xFFFFFFFFLL;
        }

        *(a1 + 56) = v32[1];
        *(a1 + 60) = v32[2];
        *a1 = v32 + 3;
        *(a1 + 52) = 1853388386;
      }
    }

    if (v35 != 762869346)
    {
      break;
    }

    if ((v32 + 2) > v34)
    {
      return 0xFFFFFFFFLL;
    }

    *(a1 + 68) = *v33;
    *a1 = v32 + 2;
    *(a1 + 52) = 762869346;
  }

  if (v35 == 829978210)
  {
    goto LABEL_51;
  }

  if (v35 == 611874402)
  {
    result = 0;
    *a1 = v33;
    *(a1 + 48) = 1;
  }

  return result;
}

uint64_t lzvnDecode(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8) - *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 32) - v3;
  if (*(a1 + 8) == *a1 || *(a1 + 32) == v3)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = *(a1 + 48);
  v9 = *(a1 + 56);
  v8 = a1 + 48;
  if (!v10)
  {
    if (!v9)
    {
      return lzvnDecode_opc_tbl[*v1](a1, v8);
    }

    v11 = *(a1 + 64);
    *v8 = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    goto LABEL_19;
  }

  v11 = *(a1 + 64);
  *v8 = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  if (v9)
  {
    if (v4 < 4 || v2 < 4)
    {
      v13 = v10 - v4;
      if (v10 > v4)
      {
        if (v4)
        {
          v21 = v1;
          v22 = v3;
          v23 = v4;
          do
          {
            v24 = *v21++;
            *v22++ = v24;
            --v23;
          }

          while (v23);
        }

        *a1 = &v1[v4];
        *(a1 + 16) = v3 + v4;
        *(a1 + 48) = v13;
        *(a1 + 56) = v9;
        goto LABEL_40;
      }

      v14 = v1;
      v15 = v3;
      v16 = v10;
      do
      {
        v17 = *v14++;
        *v15++ = v17;
        --v16;
      }

      while (v16);
    }

    else
    {
      *v3 = *v1;
    }

    v3 = (v3 + v10);
    if (v11 - 1 >= v3 - *(a1 + 24))
    {
      return 4294967293;
    }

    v4 -= v10;
    v1 += v10;
LABEL_19:
    if (v4 < v9 + 7 || v11 < 8)
    {
      v18 = v9 - v4;
      if (v9 > v4)
      {
        if (v4)
        {
          v25 = v3;
          v26 = v4;
          do
          {
            *v25 = v25[-v11];
            ++v25;
            --v26;
          }

          while (v26);
        }

        *a1 = v1;
        *(a1 + 16) = v3 + v4;
        *(a1 + 48) = 0;
        *(a1 + 56) = v18;
        goto LABEL_40;
      }

      v19 = v3;
      v20 = v9;
      do
      {
        *v19 = v19[-v11];
        ++v19;
        --v20;
      }

      while (v20);
    }

    else
    {
      for (i = 0; i < v9; i += 8)
      {
        *&v3[i / 4] = *(&v3[i / 4] - v11);
      }
    }

    return (lzvnDecode_opc_tbl[*v1])();
  }

  if (v2 <= v10)
  {
    return 0xFFFFFFFFLL;
  }

  if (v4 >= v10 + 7 && v2 >= v10 + 7)
  {
    for (j = 0; j < v10; j += 8)
    {
      *&v3[j / 4] = *&v1[j];
    }

    goto LABEL_52;
  }

  v28 = v10 - v4;
  if (v10 > v4)
  {
    if (v4)
    {
      v34 = v1;
      v35 = v3;
      v36 = v4;
      do
      {
        v37 = *v34++;
        *v35++ = v37;
        --v36;
      }

      while (v36);
    }

    *a1 = &v1[v4];
    *(a1 + 16) = v3 + v4;
    *(a1 + 48) = v28;
    *(a1 + 56) = 0;
LABEL_40:
    v6 = 4294967294;
    *(a1 + 64) = v11;
    return v6;
  }

  v29 = v1;
  v30 = v3;
  v31 = v10;
  do
  {
    v32 = *v29++;
    v8 = v32;
    *v30++ = v32;
    --v31;
  }

  while (v31);
LABEL_52:
  v1 += v10;
  return lzvnDecode_opc_tbl[*v1](a1, v8);
}

uint64_t lzfse_decode_literals(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5, unint64_t a6, double a7)
{
  v7 = LOWORD(a7);
  v8 = WORD1(a7);
  v9 = WORD2(a7);
  v10 = HIWORD(a7);
  v12 = *a4;
  v13 = *(a4 + 8);
  v14 = *a5;
  while (1)
  {
    v15 = *(a2 + 4 * v7);
    v16 = *(a2 + 4 * v8);
    v17 = *(a2 + 4 * v9);
    v18 = *(a2 + 4 * v10);
    *a1++ = (v16 & 0xFF00) + ((v15 & 0xFF00) >> 8) + (((v18 & 0xFF00) + ((v17 & 0xFF00) >> 8)) << 16);
    v19 = (63 - v13) & 0xFFFFFFF8;
    if (((63 - v13) & 0xFFFFFFF8) != 0)
    {
      break;
    }

LABEL_5:
    v20 = v13 - v15;
    v21 = v20 - v16;
    v22 = v12 >> (v13 - v15);
    v23 = v12 & qword_2985D6AE0[v20];
    v24 = v21 - v17;
    v7 = v22 + HIWORD(v15);
    v25 = v23 >> (v20 - v16);
    v26 = v23 & qword_2985D6AE0[v21];
    v13 = v24 - v18;
    v8 = v25 + HIWORD(v16);
    v27 = v26 >> (v21 - v17);
    v28 = v26 & qword_2985D6AE0[v24];
    v9 = v27 + HIWORD(v17);
    v29 = v28 >> (v24 - v18);
    v12 = v28 & qword_2985D6AE0[v13];
    v10 = v29 + HIWORD(v18);
    v30 = a3 <= 4;
    a3 -= 4;
    if (v30)
    {
      *a4 = v12;
      *(a4 + 8) = v13;
      *a5 = v14;
      return 0;
    }
  }

  v14 = (v14 - (v19 >> 3));
  if (v14 >= a6)
  {
    v13 += v19;
    v12 = (v12 << v19) | *v14 & qword_2985D6AE0[v19];
    goto LABEL_5;
  }

  return -3;
}

uint64_t BrotliEncoderCompressStream(uint64_t a1, int a2, size_t *a3, const void **a4, size_t *a5, void **a6, size_t *a7)
{
  if (*(a1 + 168))
  {
    return 0;
  }

  v143[11] = v7;
  v143[12] = v8;
  if (!*(a1 + 8636))
  {
    *(a1 + 2432) = -33554432;
    *(a1 + 8624) = -1;
    v17 = *(a1 + 4);
    v18 = v17 & ~(v17 >> 31);
    if (v18 >= 11)
    {
      v18 = 11;
    }

    *(a1 + 4) = v18;
    if (v17 <= 2)
    {
      *(a1 + 36) = 0;
    }

    v19 = *(a1 + 8);
    if (v19 >= 10)
    {
      if (*(a1 + 36))
      {
        v20 = 30;
      }

      else
      {
        v20 = 24;
      }

      if (v19 <= v20)
      {
LABEL_15:
        if (v17 >= 2)
        {
          if (v17 >= 4)
          {
            v22 = *(a1 + 12);
            if (v22)
            {
              if (v22 <= 16)
              {
                v23 = 16;
              }

              else
              {
                v23 = *(a1 + 12);
              }

              if (v23 >= 24)
              {
                v21 = 24;
              }

              else
              {
                v21 = v23;
              }
            }

            else
            {
              v21 = 16;
              if (v17 >= 9)
              {
                if (v19 >= 0x12)
                {
                  v24 = 18;
                }

                else
                {
                  v24 = v19;
                }

                if (v24 <= 0x10)
                {
                  v21 = 16;
                }

                else
                {
                  v21 = v24;
                }
              }
            }
          }

          else
          {
            v21 = 14;
          }
        }

        else
        {
          v21 = v19;
        }

        *(a1 + 12) = v21;
        ChooseDistanceParams(a1);
        v25 = *(a1 + 16);
        if (v25)
        {
          *(a1 + 2435) = 2;
          *&v26 = 0xF0000000FLL;
          *(&v26 + 1) = 0xF0000000FLL;
          *(a1 + 2352) = v26;
          *(a1 + 2416) = *(a1 + 2352);
        }

        v28 = *(a1 + 8);
        v27 = *(a1 + 12);
        v29 = *(a1 + 4);
        if (v28 <= v27)
        {
          v30 = *(a1 + 12);
        }

        else
        {
          v30 = *(a1 + 8);
        }

        v31 = 1 << (v30 + 1);
        *(a1 + 2260) = v31 - 1;
        *(a1 + 2256) = v31;
        v32 = 1 << v27;
        *(a1 + 2264) = v32;
        *(a1 + 2268) = v31 + v32;
        if (v28 <= 18)
        {
          v33 = 18;
        }

        else
        {
          v33 = v28;
        }

        if (v29 >= 2)
        {
          v33 = v28;
        }

        if (v25)
        {
          v34 = (1 << v33) - 16;
          if (v25 >= v34)
          {
            v25 = v34;
          }

          *(a1 + 16) = v25;
          if (v29)
          {
            goto LABEL_48;
          }
        }

        else
        {
          if (*(a1 + 36))
          {
            v39 = ((v33 & 0x3F) << 8) | 0x11;
            v40 = 14;
          }

          else if (v33 == 16)
          {
            v39 = 0;
            v40 = 1;
          }

          else if (v33 == 17)
          {
            v40 = 7;
            v39 = 1;
          }

          else if (v33 < 18)
          {
            v39 = 16 * v33 - 127;
            v40 = 7;
          }

          else
          {
            v39 = 2 * v33 - 33;
            v40 = 4;
          }

          *(a1 + 2432) = v39;
          *(a1 + 2434) = v40;
          if (v29)
          {
            goto LABEL_48;
          }
        }

        *(a1 + 7728) = xmmword_29862DC10;
        *(a1 + 7744) = unk_29862DC20;
        *(a1 + 7760) = xmmword_29862DC30;
        *(a1 + 7776) = unk_29862DC40;
        *(a1 + 7664) = InitCommandPrefixCodes_kDefaultCommandDepths;
        *(a1 + 7680) = unk_29862DBE0;
        *(a1 + 7696) = xmmword_29862DBF0;
        *(a1 + 7712) = unk_29862DC00;
        *(a1 + 7840) = unk_29862DC80;
        *(a1 + 7824) = xmmword_29862DC70;
        *(a1 + 7808) = unk_29862DC60;
        *(a1 + 7792) = InitCommandPrefixCodes_kDefaultCommandBits;
        *(a1 + 7904) = unk_29862DCC0;
        *(a1 + 7888) = xmmword_29862DCB0;
        *(a1 + 7872) = unk_29862DCA0;
        *(a1 + 7856) = xmmword_29862DC90;
        *(a1 + 7968) = unk_29862DD00;
        *(a1 + 7952) = xmmword_29862DCF0;
        *(a1 + 7936) = unk_29862DCE0;
        *(a1 + 7920) = xmmword_29862DCD0;
        *(a1 + 8032) = unk_29862DD40;
        *(a1 + 8016) = xmmword_29862DD30;
        *(a1 + 8000) = unk_29862DD20;
        *(a1 + 7984) = xmmword_29862DD10;
        strcpy((a1 + 8048), "\xFFwտ\xE7\xDE\xEA\x9EQ]\xDE\xC6pW\xBCX");
        strcpy((a1 + 8064), "XX\xD8\xD8X\xD5\xCB\x8C\xEA\xE0\xC3\x87\x1F\x83\xC1\x60\x1Cg\xB2\xAA\x06\x83\xC1\x600\x18̡ΈT\x94");
        *(a1 + 8095) = InitCommandPrefixCodes_kDefaultCommandCode[47];
        *(a1 + 8089) = *"\x18̡ΈT\x94F\xE1\xB0\xD0N\xB2\xF7\x04O_ERROR";
        *(a1 + 8560) = 448;
LABEL_48:
        *(a1 + 8636) = 1;
        goto LABEL_49;
      }
    }

    else
    {
      v20 = 10;
    }

    *(a1 + 8) = v20;
    v19 = v20;
    goto LABEL_15;
  }

LABEL_49:
  v35 = *(a1 + 8624);
  if (v35 != -1)
  {
    result = 0;
    if (a2 != 3 || *a3 != v35)
    {
      return result;
    }

LABEL_54:
    if (!*(a1 + 24))
    {
      v36 = *(a1 + 2248) - *(a1 + 2344);
      if (v36 >= 0x40000000)
      {
        v36 = 0x40000000;
      }

      *(a1 + 24) = v36;
    }

    if (*a3 <= 0x1000000)
    {
      v37 = *(a1 + 8628);
      if (!v37)
      {
        *(a1 + 8624) = *a3;
        *(a1 + 8628) = 3;
LABEL_71:
        v41 = a1 + 8608;
        while (1)
        {
          while (1)
          {
            while (1)
            {
                ;
              }

              if (*(a1 + 8592))
              {
                return 1;
              }

              if (*(a1 + 2248) == *(a1 + 2336))
              {
                break;
              }

              result = EncodeData(a1, 0, 1, (a1 + 8592), (a1 + 8584), v42, v43, v44, v45, v46, v47);
              if (!result)
              {
                return result;
              }
            }

            if (*(a1 + 8628) == 3)
            {
              break;
            }

            v54 = *(a1 + 8624);
            if (!v54)
            {
              *(a1 + 8624) = 0xFFFFFFFFLL;
              return 1;
            }

            if (*a5)
            {
              if (v54 >= *a5)
              {
                v55 = *a5;
              }

              else
              {
                v55 = *(a1 + 8624);
              }

              memcpy(*a6, *a4, v55);
              *a4 = *a4 + v55;
              *a3 -= v55;
              *(a1 + 8624) -= v55;
              *a6 = *a6 + v55;
              *a5 -= v55;
            }

            else
            {
              if (v54 >= 0x10)
              {
                v56 = 16;
              }

              else
              {
                v56 = v54;
              }

              *(a1 + 8584) = v41;
              memcpy((a1 + 8608), *a4, v56);
              *a4 = *a4 + v56;
              *a3 -= v56;
              *(a1 + 8624) -= v56;
              *(a1 + 8592) = v56;
            }
          }

          *(a1 + 8584) = v41;
          v48 = *(a1 + 8624);
          v49 = *(a1 + 2434);
          *(a1 + 8608) = *(a1 + 2432);
          *(a1 + 2432) = 0;
          *(v41 + (v49 >> 3)) = *(v41 + (v49 >> 3));
          *(v41 + ((v49 + 1) >> 3)) = (3 << ((v49 + 1) & 7)) | *(v41 + ((v49 + 1) >> 3));
          v50 = (v49 + 3) >> 3;
          v51 = *(v41 + v50);
          *(a1 + 2434) = 0;
          *(v41 + v50) = v51;
          v52 = (v49 + 4) >> 3;
          if (v48 == 1)
          {
            v57 = 0;
          }

          else
          {
            if (!v48)
            {
              *(v41 + v52) = *(v41 + v52);
              v53 = v49 + 6;
              goto LABEL_94;
            }

            v57 = ((__clz(v48 - 1) ^ 0x18) + 8) >> 3;
          }

          *(v41 + v52) = (v57 << ((v49 + 4) & 7)) | *(v41 + v52);
          v58 = v49 + 6;
          *(v41 + (v58 >> 3)) = ((v48 - 1) << (v58 & 7)) | *(v41 + (v58 >> 3));
          v53 = v58 + 8 * v57;
LABEL_94:
          *(a1 + 8592) = (v53 + 7) >> 3;
          *(a1 + 8628) = 4;
        }
      }

      if ((v37 - 3) <= 1)
      {
        goto LABEL_71;
      }
    }

    return 0;
  }

  if (a2 == 3)
  {
    goto LABEL_54;
  }

  v38 = *(a1 + 8628);
  if ((v38 - 3) < 2 || v38 && *a3)
  {
    return 0;
  }

  v59 = *(a1 + 4);
  if (v59 < 2)
  {
    v60 = 1 << *(a1 + 8);
    v137 = v60;
    if (*a3 < v60)
    {
      v60 = *a3;
    }

    if (v59 != 1)
    {
      v62 = 0;
      v63 = 0;
      v61 = 0;
      goto LABEL_190;
    }

    v61 = *(a1 + 8568);
    if (v61 || v60 < 0x20000)
    {
      if (v61)
      {
        v63 = 0;
        v115 = 0;
        v62 = *(a1 + 8576);
        goto LABEL_200;
      }

      if (!*a3)
      {
        v61 = 0;
        v62 = 0;
LABEL_199:
        v63 = v62;
        v115 = v61;
        if (*(a1 + 168))
        {
          return 0;
        }

        goto LABEL_200;
      }
    }

    else
    {
      *(a1 + 8568) = BrotliAllocate(a1 + 144);
      v62 = BrotliAllocate(a1 + 144);
      *(a1 + 8576) = v62;
      if (*(a1 + 168))
      {
        return 0;
      }

      v61 = *(a1 + 8568);
      if (v61)
      {
        v63 = 0;
LABEL_190:
        v115 = 0;
LABEL_200:
        v132 = v115;
        v133 = v63;
        v134 = v62;
        v135 = v61;
        if (a2 == 2)
        {
          v116 = 2;
        }

        else
        {
          v116 = 1;
        }

        v136 = v116;
        v117 = v137;
        while (1)
        {
            ;
          }

          if (*(a1 + 8592) || *(a1 + 8628) || (v118 = *a3, !a2) && !v118)
          {
            BrotliFree(a1 + 144, v132);
            BrotliFree(a1 + 144, v133);
            if (*(a1 + 8628) == 1 && !*(a1 + 8592))
            {
LABEL_241:
              *(a1 + 8628) = 0;
              *(a1 + 8584) = 0;
            }

            return 1;
          }

          v119 = v117 >= v118 ? *a3 : v117;
          v120 = *(a1 + 2434);
          v121 = a2 != 2 || v118 > v117;
          v122 = !v121;
          v142 = 0;
          v143[0] = v120;
          if (a2 == 1 && !v118)
          {
            break;
          }

          v141 = v122;
          v124 = 2 * v119 + 503;
          v138 = *a5;
          v139 = v124;
          if (v124 <= *a5)
          {
            v126 = *a6;
          }

          else
          {
            BrotliStorage = GetBrotliStorage(a1, v124);
            if (*(a1 + 168))
            {
              return 0;
            }

            v126 = BrotliStorage;
          }

          *v126 = *(a1 + 2432);
          v126[1] = *(a1 + 2433);
          HashTable = GetHashTable(a1, *(a1 + 4), v119, &v142);
          if (*(a1 + 168))
          {
            return 0;
          }

          v128 = *a4;
          if (*(a1 + 4))
          {
            BrotliCompressFragmentTwoPass(a1 + 144, v128, v119, v141, v135, v134, HashTable, v142, v143, v126);
          }

          else
          {
            BrotliCompressFragmentFast(a1 + 144, v128, v119, v141, HashTable, v142, (a1 + 7664), a1 + 7792, (a1 + 8560), (a1 + 8048), v143, v126);
          }

          if (*(a1 + 168))
          {
            return 0;
          }

          if (v118)
          {
            *a4 = *a4 + v119;
            *a3 -= v119;
          }

          v129 = v143[0];
          v130 = v143[0] >> 3;
          if (v139 <= v138)
          {
            *a6 = *a6 + v130;
            *a5 -= v130;
            v131 = *(a1 + 8600) + v130;
            *(a1 + 8600) = v131;
            if (a7)
            {
              *a7 = v131;
            }
          }

          else
          {
            *(a1 + 8584) = v126;
            *(a1 + 8592) = v130;
          }

          *(a1 + 2432) = v126[v130];
          *(a1 + 2434) = v129 & 7;
          v117 = v137;
          if ((a2 - 1) <= 1)
          {
            v123 = v136;
            if (v118 <= v137)
            {
LABEL_238:
              *(a1 + 8628) = v123;
            }
          }
        }

        v123 = 1;
        goto LABEL_238;
      }
    }

    v61 = BrotliAllocate(a1 + 144);
    v62 = BrotliAllocate(a1 + 144);
    goto LABEL_199;
  }

  while (1)
  {
    while (1)
    {
      while (1)
      {
        v64 = *(a1 + 2248) - *(a1 + 2344);
        v65 = 1 << *(a1 + 12);
        v66 = v65 >= v64;
        v67 = v65 - v64;
        if (!v66)
        {
          v67 = 0;
        }

        v68 = *(a1 + 2435);
        v69 = v68;
        if (v67 < v68)
        {
          v68 = v67;
        }

        v70 = v69 >= 0 ? v68 : v67;
        if (!v70 || !*a3)
        {
          break;
        }

        if (v70 >= *a3)
        {
          v70 = *a3;
        }

        v71 = *a4;
        v72 = *(a1 + 2276);
        if (v72 || v70 >= *(a1 + 2264))
        {
          v85 = *(a1 + 2268);
          if (*(a1 + 2272) >= v85)
          {
            goto LABEL_142;
          }

          v140 = *a4;
          v86 = BrotliAllocate(a1 + 144);
          if (!*(a1 + 168))
          {
            v87 = v86;
            v88 = *(a1 + 2280);
            if (v88)
            {
              memcpy(v86, v88, (*(a1 + 2272) + 2) + 7);
              BrotliFree(a1 + 144, *(a1 + 2280));
            }

            v89 = 0;
            *(a1 + 2280) = v87;
            *(a1 + 2272) = v85;
            *(a1 + 2288) = v87 + 2;
            v87[1] = 0;
            *(*(a1 + 2288) - 2) = 0;
            do
            {
              *(*(a1 + 2288) + *(a1 + 2272) + v89++) = 0;
            }

            while (v89 != 7);
            if (!*(a1 + 168))
            {
              *(*(a1 + 2288) + (*(a1 + 2256) - 2)) = 0;
              *(*(a1 + 2288) + (*(a1 + 2256) - 1)) = 0;
              *(*(a1 + 2288) + *(a1 + 2256)) = -15;
              v72 = *(a1 + 2276);
              v71 = v140;
LABEL_142:
              v90 = *(a1 + 2260) & v72;
              v91 = *(a1 + 2264);
              v92 = *(a1 + 2256);
              if (v90 < v91)
              {
                v108 = *(a1 + 2288) + v92;
                v109 = v91 - v90;
                if (v70 >= v109)
                {
                  v110 = v109;
                }

                else
                {
                  v110 = v70;
                }

                v111 = v71;
                memcpy((v108 + v90), v71, v110);
                v71 = v111;
                v92 = *(a1 + 2256);
              }

              v93 = *(a1 + 2288);
              if (v70 + v90 > v92)
              {
                if (v70 >= *(a1 + 2268) - v90)
                {
                  v112 = *(a1 + 2268) - v90;
                }

                else
                {
                  v112 = v70;
                }

                v113 = v71;
                memcpy((v93 + v90), v71, v112);
                v94 = *(a1 + 2288);
                v114 = *(a1 + 2256) - v90;
                v95 = v70 - v114;
                v71 = &v113[v114];
              }

              else
              {
                v94 = (v93 + v90);
                v95 = v70;
              }

              memcpy(v94, v71, v95);
              v96 = *(a1 + 2276);
              *(*(a1 + 2288) - 2) = *(*(a1 + 2288) + (*(a1 + 2256) - 2));
              *(*(a1 + 2288) - 1) = *(*(a1 + 2288) + (*(a1 + 2256) - 1));
              *(a1 + 2276) = ((*(a1 + 2276) & 0x7FFFFFFF) + (v70 & 0x7FFFFFFF)) | v96 & 0x80000000;
LABEL_146:
              if (!*(a1 + 168))
              {
                *(a1 + 2248) += v70;
                v97 = *(a1 + 2276);
                if (v97 <= *(a1 + 2260))
                {
                  v98 = (*(a1 + 2288) + v97);
                  *(v98 + 3) = 0;
                  *v98 = 0;
                }
              }
            }
          }
        }

        else
        {
          v73 = *a4;
          *(a1 + 2276) = v70;
          v74 = BrotliAllocate(a1 + 144);
          if (!*(a1 + 168))
          {
            v75 = v74;
            v76 = *(a1 + 2280);
            if (v76)
            {
              memcpy(v74, v76, (*(a1 + 2272) + 2) + 7);
              BrotliFree(a1 + 144, *(a1 + 2280));
            }

            v77 = 0;
            *(a1 + 2280) = v75;
            *(a1 + 2272) = v70;
            *(a1 + 2288) = v75 + 2;
            v75[1] = 0;
            *(*(a1 + 2288) - 2) = 0;
            do
            {
              *(*(a1 + 2288) + *(a1 + 2272) + v77++) = 0;
            }

            while (v77 != 7);
            if (!*(a1 + 168))
            {
              memcpy(*(a1 + 2288), v73, v70);
              goto LABEL_146;
            }
          }
        }

        *a4 = *a4 + v70;
        *a3 -= v70;
        v99 = *(a1 + 2435);
        if (v99 >= 1)
        {
          *(a1 + 2435) = v99 - v70;
        }
      }

      if (!InjectFlushOrPushOutput(a1, a5, a6, a7))
      {
        break;
      }

      if (*(a1 + 2435) == 255)
      {
        v84 = *(a1 + 8628);
        if (!v84)
        {
          goto LABEL_133;
        }

        if (v84 == 1 && !*(a1 + 8592))
        {
          *(a1 + 8628) = 0;
          *(a1 + 8584) = 0;
LABEL_133:
          *(a1 + 2435) = -2;
        }
      }
    }

    if (*(a1 + 8592))
    {
      return 1;
    }

    v100 = *(a1 + 8628);
    if (v100)
    {
      if (v100 == 1)
      {
        goto LABEL_241;
      }

      return 1;
    }

    if (!a2 && v70)
    {
      return 1;
    }

    v101 = *a3;
    if (*a3)
    {
      v102 = 0;
    }

    else
    {
      v102 = a2 == 2;
    }

    if (*a3)
    {
      v103 = 0;
    }

    else
    {
      v103 = a2 == 1;
    }

    if ((v102 & 1) == 0 && !*(a1 + 2435))
    {
      *(a1 + 2435) = -1;
      v103 = 1;
    }

    if (!*(a1 + 24))
    {
      v104 = *(a1 + 2248) - *(a1 + 2344);
      v105 = v104 | v101;
      v106 = v104 + v101;
      if (v106 >= 0x40000000)
      {
        v106 = 0x40000000;
      }

      if (v105 >> 30)
      {
        v106 = 0x40000000;
      }

      *(a1 + 24) = v106;
    }

    result = EncodeData(a1, v102, v103, (a1 + 8592), (a1 + 8584), v78, v79, v80, v81, v82, v83);
    if (!result)
    {
      return result;
    }

    if ((v102 & 1) != 0 || v103)
    {
      if (v102)
      {
        v107 = 2;
      }

      else
      {
        v107 = 1;
      }

      *(a1 + 8628) = v107;
    }
  }
}

unint64_t lzfse_encode_scratch_size(int a1)
{
  ScratchSize = lzfseEncodeGetScratchSize(a1);
  if (a1 == 2050)
  {
    v3 = 2305;
  }

  else
  {
    v3 = 2304;
  }

  result = lzvn_encode_scratch_size(v3);
  if (ScratchSize > result)
  {
    return ScratchSize;
  }

  return result;
}

uint64_t lzfseEncodeGetScratchSize(int a1)
{
  v1 = 684288;
  if (a1 == 2193)
  {
    v1 = 584288;
  }

  if (a1 == 2050)
  {
    return 64768;
  }

  else
  {
    return v1;
  }
}

uint64_t lzvn_encode_scratch_size(int a1)
{
  if (a1 == 2305)
  {
    return 0x10000;
  }

  else
  {
    return 0x80000;
  }
}

uint64_t lz4_decode(void **a1, unint64_t a2, char *a3, unsigned __int8 **a4, unint64_t a5)
{
  v7 = *a1;
  v8 = *a4;
  if (*a1 < a3 && v8 < a5)
  {
    while (1)
    {
      *a4 = v8;
      *a1 = v7;
      v15 = *v8++;
      v14 = v15;
      v16 = v15 >> 4;
      if (v15 >> 4 == 15)
      {
        while (v8 < a5)
        {
          v26 = *v8++;
          v16 += v26;
          if (v26 != 255)
          {
            goto LABEL_8;
          }
        }

        return 1;
      }

LABEL_8:
      if (a5 - v8 < v16)
      {
        return 1;
      }

      v17 = v16;
      if (a3 - v7 < v16)
      {
        memcpy(v7, v8, a3 - v7);
        v7 = a3;
        goto LABEL_6;
      }

      memcpy(v7, v8, v16);
      v8 += v17;
      v18 = &v7[v17];
      if (v8 >= a5)
      {
        v7 += v17;
        goto LABEL_6;
      }

      if (a5 - v8 < 2)
      {
        return 1;
      }

      v20 = *v8;
      v8 += 2;
      v19 = v20;
      if (!v20 || &v18[-v19] < a2)
      {
        return 1;
      }

      v21 = (v14 & 0xF) + 4;
      if ((v14 & 0xF) == 0xF)
      {
        while (v8 < a5)
        {
          v27 = *v8++;
          v21 += v27;
          if (v27 != 255)
          {
            goto LABEL_15;
          }
        }

        return 1;
      }

LABEL_15:
      v22 = a3 - v18;
      if (a3 - v18 < v21)
      {
        break;
      }

      if (v21)
      {
        v23 = -v19;
        v24 = &v7[v17];
        v25 = v21;
        do
        {
          *v24 = v24[v23];
          ++v24;
          --v25;
        }

        while (v25);
      }

      v7 = &v18[v21];
      if (v8 >= a5)
      {
        goto LABEL_6;
      }
    }

    if (v18 != a3)
    {
      if (v22 <= 1)
      {
        v28 = 1;
      }

      else
      {
        v28 = v22;
      }

      v29 = -v19;
      v30 = &v7[v17];
      do
      {
        *v30 = v30[v29];
        ++v30;
        --v28;
      }

      while (v28);
    }

    v7 = &v18[v22];
  }

LABEL_6:
  result = 0;
  *a1 = v7;
  *a4 = v8;
  return result;
}

uint64_t lz4_decode_buffer(char *__dst, _BYTE *__n, unsigned __int8 *a3, unint64_t a4)
{
  v18 = a3;
  v19 = __dst;
  v5 = __dst;
  if (!__n)
  {
    return v5 - __dst;
  }

  v7 = __n;
  v5 = __dst;
  while (1)
  {
    if (a4 < 4)
    {
      return 0;
    }

    v8 = *a3;
    if (*a3 == 758412898)
    {
      break;
    }

    if (v8 != 825521762)
    {
      if (v8 == 607417954)
      {
        return v5 - __dst;
      }

      else
      {
        return 0;
      }
    }

    v9 = a4 - 12;
    if (a4 < 0xC)
    {
      return 0;
    }

    v11 = *(a3 + 1);
    v10 = *(a3 + 2);
    v12 = a3 + 12;
    v18 = a3 + 12;
    a4 = v9 - v10;
    if (v9 < v10 || v7 >= 0x81 && v10 >= 0x81 && lz4_decode_asm(&v19, __dst, &v7[v5 - 128], &v18, &v10[v12 - 128]))
    {
      return 0;
    }

    if (lz4_decode(&v19, __dst, &v7[v5], &v18, &v10[v12]))
    {
      return 0;
    }

    v13 = v19;
    v14 = v19 - v5;
    if ((v19 - v5) == v7)
    {
      return v13 - __dst;
    }

    result = 0;
    if (v14 != v11)
    {
      return result;
    }

    a3 = v18;
    if ((v18 - v12) != v10)
    {
      return result;
    }

    v5 = v19;
LABEL_20:
    v7 -= v14;
    if (!v7)
    {
      return v5 - __dst;
    }
  }

  v16 = a4 - 8;
  if (a4 < 8)
  {
    return 0;
  }

  v14 = *(a3 + 1);
  v17 = a3 + 8;
  v18 = a3 + 8;
  a4 = v16 - v14;
  if (v16 < v14)
  {
    return 0;
  }

  if (v7 > v14)
  {
    memcpy(v5, v17, v14);
    v5 = &v19[v14];
    a3 = &v18[v14];
    v18 += v14;
    v19 += v14;
    goto LABEL_20;
  }

  memcpy(v5, v17, v7);
  v13 = &v7[v19];
  return v13 - __dst;
}

uint64_t lz4_decode_asm(int8x16_t **a1, unint64_t a2, unint64_t a3, unsigned __int8 **a4, unint64_t a5)
{
  v5 = *a4;
  v6 = *a1;
  while (1)
  {
    v7 = v6;
    v8 = v5;
    if (v5 >= a5 || v6 >= a3)
    {
      break;
    }

    v10 = *v5;
    v9 = v5 + 1;
    v11 = v10 >> 4;
    v12 = (v10 & 0xF) + 4;
    if (v11 > 0xE)
    {
      while (v9 < a5)
      {
        v13 = *v9;
        v9 = (v9 + 1);
        v11 += v13;
        if (v13 != 255)
        {
          v14 = v9;
          v15 = v6;
          v16 = (v9 + v11);
          v17 = (v6 + v11);
          if (v16 < a5 && v17 < a3)
          {
            v19 = *v14;
            v20 = v14[1];
            v18 = v14 + 2;
            *v15 = v19;
            v15[1] = v20;
            v21 = v15 + 2;
            do
            {
              v22 = *v18;
              v23 = v18[1];
              v18 += 2;
              *v21 = v22;
              v21[1] = v23;
              v21 += 2;
            }

            while (v17 > v21);
            goto LABEL_13;
          }

          goto LABEL_36;
        }
      }

      break;
    }

    *v6 = *v9;
    v16 = (v9 + v11);
    v17 = (v6 + v11);
LABEL_13:
    if (v16 >= a5)
    {
      break;
    }

    v25 = *v16;
    v5 = (v16 + 1);
    v24 = v25;
    if (!v25 || (v26 = (v17 - v24), v17 - v24 < a2))
    {
      v47 = -1;
      goto LABEL_37;
    }

    v27 = v17;
    v6 = (v17 + v12);
    if (v12 == 19)
    {
      while (v5 < a5)
      {
        v28 = *v5++;
        v6 = (v6 + v28);
        if (v28 != 255)
        {
          if (v6 >= a3)
          {
            goto LABEL_36;
          }

          goto LABEL_24;
        }
      }

      break;
    }

    if (v12 > 0x10)
    {
LABEL_24:
      if (v24 > 0x1F)
      {
        v36 = *v26;
        v35 = v26 + 1;
        *v27 = v36;
        v37 = v27 + 1;
        do
        {
          v38 = *v35;
          v39 = v35[1];
          v35 += 2;
          *v37 = v38;
          v37[1] = v39;
          v37 += 2;
        }

        while (v6 > v37);
      }

      else if (v24 > 0xF)
      {
        v41 = *v26;
        v40 = v26 + 1;
        *v27 = v41;
        v42 = v27 + 1;
        do
        {
          v44 = *v40;
          v43 = v40 + 1;
          *v42 = v44;
          v45 = v42 + 1;
          v46 = *v43;
          v40 = v43 + 1;
          *v45 = v46;
          v42 = v45 + 1;
        }

        while (v6 > v42);
      }

      else
      {
        v29 = &qword_2985D8080[4 * v24];
        v30 = vqtbl1q_s8(*v26, *v29);
        v31 = vqtbl1q_s8(*v26, v29[1]);
        v32 = *(qword_2985D8280 + v24);
        *v27 = v30;
        v27[1] = v31;
        v33 = (v27 + v32);
        do
        {
          *v33 = v30;
          v33[1] = v31;
          v34 = (v33 + v32);
          *v34 = v30;
          v34[1] = v31;
          v33 = (v34 + v32);
        }

        while (v6 > v33);
      }
    }

    else if (v24 <= 0xF)
    {
      *v27 = vqtbl1q_s8(*v26, *&qword_2985D8080[4 * v24]);
    }

    else
    {
      *v27 = *v26;
    }
  }

LABEL_36:
  v47 = 0;
LABEL_37:
  *a4 = v8;
  *a1 = v7;
  return v47;
}

size_t compression_decode_scratch_buffer_size(compression_algorithm algorithm)
{
  if (algorithm - 512 >= 0xA)
  {
    v1 = algorithm;
  }

  else
  {
    v1 = COMPRESSION_ZLIB;
  }

  if (v1 - 1280 >= 0xA)
  {
    v2 = v1;
  }

  else
  {
    v2 = 1285;
  }

  if (v2 > 2192)
  {
    if (v2 > 3071)
    {
      if ((v2 - 3072) <= 0x20 && ((1 << v2) & 0x100010001) != 0)
      {
        return smb_decode_scratch_size(v2);
      }

      return 0;
    }

    if ((v2 - 2304) < 2)
    {
      return lzvn_decode_scratch_size();
    }

    if (v2 != 2193)
    {
      if (v2 == 2209)
      {
        return lzfse_decode_buffer_scratch_size_iboot();
      }

      return 0;
    }

    return lzfse_decode_scratch_size(v2);
  }

  if (v2 > 1284)
  {
    if ((v2 - 1792) < 3)
    {
      return lzbitmap_decode_scratch_size();
    }

    if ((v2 - 2049) >= 2)
    {
      if (v2 != 1285)
      {
        return 0;
      }

      return zlib_decode_scratch_size();
    }

    return lzfse_decode_scratch_size(v2);
  }

  switch(v2)
  {
    case 517:
      return zlib_decode_scratch_size();
    case 774:
      return lzma_xz_buffer_decode_scratch_size();
    case 1031:
      return lzx_decode_scratch_size();
  }

  return 0;
}

size_t compression_decode_buffer(uint8_t *dst_buffer, size_t dst_size, const uint8_t *src_buffer, size_t src_size, void *scratch_buffer, compression_algorithm algorithm)
{
  if ((algorithm ^ 0xA00) >= 0x100)
  {
    v11 = algorithm;
  }

  else
  {
    v11 = 2584;
  }

  if (v11 - 2816 < 0xA)
  {
    v11 = COMPRESSION_BROTLI;
  }

  if (v11 - 512 < 0xA)
  {
    v11 = COMPRESSION_ZLIB;
  }

  if (v11 - 1280 >= 0xA)
  {
    v12 = v11;
  }

  else
  {
    v12 = 1285;
  }

  v13 = compression_decode_scratch_buffer_size(v12);
  v16 = v13;
  if (scratch_buffer)
  {
    v17 = 1;
  }

  else
  {
    v17 = v13 == 0;
  }

  v18 = v17;
  if (!v17)
  {
    scratch_buffer = malloc(v13);
    if (!scratch_buffer)
    {
      return 0;
    }
  }

  v19 = 0;
  if (v12 <= 2048)
  {
    if (v12 <= 1284)
    {
      if (v12 <= 516)
      {
        if (v12 == COMPRESSION_LZ4)
        {
          v20 = lz4_decode_buffer(dst_buffer, dst_size, src_buffer, src_size);
        }

        else
        {
          if (v12 != COMPRESSION_LZ4_RAW)
          {
            goto LABEL_60;
          }

          v20 = lz4raw_decode_buffer(dst_buffer, dst_size, src_buffer, src_size);
        }

        goto LABEL_59;
      }

      if (v12 != COMPRESSION_ZLIB)
      {
        if (v12 == COMPRESSION_LZMA)
        {
          v19 = lzma_xz_buffer_decode(dst_buffer, dst_size, src_buffer, src_size, scratch_buffer);
          if (v19)
          {
            goto LABEL_60;
          }

          v20 = lzma_decode_buffer();
        }

        else
        {
          if (v12 != 1031)
          {
            goto LABEL_60;
          }

          v20 = lzx_decode_buffer(dst_buffer, dst_size, src_buffer, src_size, scratch_buffer);
        }

        goto LABEL_59;
      }

      v22 = dst_buffer;
      v23 = dst_size;
      v24 = src_buffer;
      v25 = src_size;
      v26 = scratch_buffer;
      v27 = 0;
      goto LABEL_57;
    }

    if (v12 - 1536 < 3)
    {
      v20 = lzbitmap_fast_decode_buffer(dst_buffer, dst_size, src_buffer, src_size, v14);
    }

    else
    {
      if (v12 - 1792 >= 3)
      {
        if (v12 != 1285)
        {
          goto LABEL_60;
        }

        v22 = dst_buffer;
        v23 = dst_size;
        v24 = src_buffer;
        v25 = src_size;
        v26 = scratch_buffer;
        v27 = 1;
LABEL_57:
        v20 = zlib_decode_buffer(v22, v23, v24, v25, v26, v27);
        goto LABEL_59;
      }

      v20 = lzbitmap_decode_buffer(dst_buffer, dst_size, src_buffer, src_size, scratch_buffer, v14, v15);
    }

LABEL_59:
    v19 = v20;
    goto LABEL_60;
  }

  if (v12 > 2583)
  {
    if (v12 - 3072 > 0x20 || ((1 << v12) & 0x100010001) == 0)
    {
      if (v12 == 2584)
      {
        v20 = lz24_decode_buffer(dst_buffer, dst_size, src_buffer, src_size);
      }

      else
      {
        if (v12 != COMPRESSION_BROTLI)
        {
          goto LABEL_60;
        }

        v20 = brotli_decode_buffer(dst_buffer, dst_size);
      }
    }

    else
    {
      v20 = smb_decode_buffer(dst_buffer, dst_size, src_buffer, src_size, scratch_buffer, v12);
    }

    goto LABEL_59;
  }

  if (v12 > 2208)
  {
    if (v12 - 2304 >= 2)
    {
      if (v12 != 2209)
      {
        goto LABEL_60;
      }

      v20 = lzfse_decode_buffer_iboot(dst_buffer, dst_size, src_buffer, src_size, scratch_buffer);
    }

    else
    {
      v20 = lzvn_decode_buffer(dst_buffer, dst_size, src_buffer, src_size);
    }

    goto LABEL_59;
  }

  if (v12 - 2049 < 2 || v12 == 2193)
  {
    v20 = lzfse_decode_buffer(dst_buffer, dst_size, src_buffer, src_size, scratch_buffer, v12);
    goto LABEL_59;
  }

LABEL_60:
  if ((v18 & 1) == 0)
  {
    memset_s(scratch_buffer, v16, 0, v16);
    free(scratch_buffer);
  }

  return v19;
}

uint64_t lzfse_decode_scratch_size(int a1)
{
  if (a1 == 2193)
  {
    return 22376;
  }

  else
  {
    return 47376;
  }
}

uint64_t lzfse_stream_end(uint64_t a1)
{
  free(*(a1 + 32));
  *(a1 + 32) = 0;
  return 0;
}

compression_status compression_stream_destroy(compression_stream *stream)
{
  state = stream->state;
  if (!state)
  {
    return -1;
  }

  v2 = state[1];
  if (v2 <= 2192)
  {
    if (v2 <= 2048)
    {
      if (v2 != 256 && v2 != 517)
      {
        if (v2 == 774)
        {
          return lzma_stream_end(stream);
        }

        return -1;
      }

      return lzfse_stream_end(stream);
    }

    if ((v2 - 2049) < 2)
    {
      return lzfse_stream_end(stream);
    }

    return -1;
  }

  if ((v2 - 2304) < 2)
  {
    return lzfse_stream_end(stream);
  }

  if (v2 != 2818)
  {
    if (v2 == 2193)
    {
      return lzfse_stream_end(stream);
    }

    return -1;
  }

  return brotli_stream_end(stream);
}

uint64_t brotli_stream_process(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 24) | a2 & 1;
  *(v3 + 24) = v4;
  v5 = *(v3 + 16);
  if (*v3)
  {
    v6 = BrotliDecoderDecompressStream(v5, (a1 + 24), (a1 + 16), (a1 + 8), a1, 0) - 1;
    if (v6 <= 2)
    {
      return dword_298687198[v6];
    }

    return 0xFFFFFFFFLL;
  }

  if (!BrotliEncoderCompressStream(v5, 2 * (v4 != 0), (a1 + 24), (a1 + 16), (a1 + 8), a1, 0))
  {
    return 0xFFFFFFFFLL;
  }

  return *(v3 + 24) && BrotliEncoderIsFinished(*(v3 + 16));
}

uint64_t lzfse_decode_buffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, int a6)
{
  if (a6 == 2193)
  {
    v11 = 22376;
  }

  else
  {
    v11 = 47376;
  }

  if (a6 == 2193)
  {
    v12 = 15000;
  }

  else
  {
    v12 = 40000;
  }

  bzero(a5, v11);
  *a5 = a3;
  a5[1] = a3;
  a5[2] = a3 + a4;
  a5[3] = a1;
  a5[4] = a1;
  a5[5] = a1 + a2;
  *(a5 + 1826) = v12;
  v13 = lzfseDecode(a5);
  if (v13 != -2)
  {
    if (v13)
    {
      return 0;
    }

    else
    {
      return a5[3] - a1;
    }
  }

  return a2;
}

char *lzfse_encode_buffer(uint64_t a1, unint64_t a2, const float *__src, size_t __n, int8x16_t *a5, int a6)
{
  v10 = __n;
  if (__n >= 8)
  {
    if (__n > 0xFFF)
    {
      v29 = 0;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v20 = 0u;
      v10 = __n;
      if (!lzfseEncodeInitState(&v20, a6, a5))
      {
        *(&v22 + 1) = a1;
        *&v23 = a1;
        *(&v23 + 1) = a1 + a2;
        v17 = __n;
        v10 = __n;
        *&v20 = __src;
        *(&v21 + 1) = 0;
        if (__n < 0x7FFFFFFF)
        {
LABEL_21:
          *(&v20 + 1) = v17;
          *&v22 = v17 - 8;
          if (!lzfseEncodeBase(&v20) && !lzfseEncodeFinish(&v20))
          {
            return (*(&v22 + 1) - a1);
          }
        }

        else
        {
          *(&v20 + 1) = 0x40000;
          *&v22 = 262136;
          v10 = __n;
          if (!lzfseEncodeBase(&v20))
          {
            v18 = __n;
            while (1)
            {
              *(&v20 + 1) = 0x80000;
              *&v22 = 524280;
              if (lzfseEncodeBase(&v20))
              {
                break;
              }

              lzfseEncodeTranslateState(&v20, 0x40000uLL);
              v17 = v18 - 0x40000;
              v19 = (v18 - 0x80000) >> 18;
              v18 -= 0x40000;
              if (!v19)
              {
                v10 = v17 - 0x40000;
                goto LABEL_21;
              }
            }

            v10 = v18 - 0x40000;
          }
        }
      }
    }

    else
    {
      v10 = __n;
      if (a2 >= 0x11)
      {
        v11 = a1 + 12;
        v12 = a2 - 16;
        v13 = a6 == 2050 ? 2305 : 2304;
        v14 = lzvn_encode_buffer((a1 + 12), v12, __src, __n, a5, v13);
        v10 = __n;
        if (v14)
        {
          v10 = __n;
          if (v14 < __n)
          {
            *a1 = 1853388386;
            *(a1 + 4) = __n;
            *(a1 + 8) = v14;
            *&v14[v11] = 611874402;
            return v14 + 16;
          }
        }
      }
    }
  }

  result = 0;
  if (__n <= 0x7FFFFFFE && __n + 12 <= a2)
  {
    *a1 = 762869346;
    *(a1 + 4) = v10;
    v16 = (a1 + 8);
    memcpy(v16, __src, __n);
    *&v16[__n] = 611874402;
    return (__n + 12);
  }

  return result;
}

uint64_t lzfseEncodeInitState(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 2050)
  {
    v3 = 10;
  }

  else
  {
    v3 = 14;
  }

  *(a1 + 64) = v3;
  v4 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(a2 == 2050), 0x1FuLL)), 34359738370000, vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(a2 == 2193), 0x1FuLL)), 0x3A9800000EA6, 171798691850000));
  *(a1 + 68) = v4;
  v5 = a3 + (32 << v3);
  *(a1 + 112) = a3;
  *(a1 + 120) = v5;
  v6 = (4 * v4.i32[0]);
  v7 = v5 + v6;
  *(a1 + 128) = v7;
  *(a1 + 136) = v7 + v6;
  *(a1 + 144) = v7 + v6 + v6;
  v8 = 1;
  v9 = vdupq_n_s32(0xFFF00014);
  do
  {
    v10 = (a3 + 32 * (v8 - 1));
    v10[1].i64[0] = 0;
    v10[1].i64[1] = 0;
    *v10 = v9;
    LODWORD(v10) = v8++ >> v3;
  }

  while (!v10);
  *(a1 + 16) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  return 0;
}

uint64_t lzfseEncodeBase(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 < *(a1 + 32))
  {
    v30 = vdupq_n_s32(0x3FFFBu);
    v3 = xmmword_29868AC80;
    do
    {
      v4 = *a1;
      v5 = (*a1 + v1);
      v6 = *v5;
      v7 = (*(a1 + 112) + 32 * ((-1640531535 * *v5) >> -*(a1 + 64)));
      v8 = *v7;
      v9 = v7[1];
      v10 = *(a1 + 16);
      if (v1 >= v10)
      {
        v36 = 0;
        v35 = v1;
        v3 = vandq_s8(vcgeq_s32(vaddq_s32(v8, v30), vdupq_n_s32(v1)), vceqq_s32(v9, vdupq_n_s32(v6)));
        if ((vmaxvq_u32(v3) & 0x80000000) != 0)
        {
          v12 = 0;
          v13 = 0;
          v14 = 0;
          do
          {
            v34 = v3;
            if (*(&v34 & 0xFFFFFFFFFFFFFFF3 | (4 * (v12 & 3))))
            {
              v33 = v8;
              v15 = *(a1 + 8) - v1 - 8;
              if (v15 < 5)
              {
                v16 = 4;
              }

              else
              {
                v16 = 4;
                while (1)
                {
                  v17 = *(v4 + *(&v33 & 0xFFFFFFFFFFFFFFF3 | (4 * (v12 & 3))) + v16);
                  v18 = *(v5 + v16);
                  if (v17 != v18)
                  {
                    break;
                  }

                  v16 += 8;
                  if (v16 >= v15)
                  {
                    goto LABEL_17;
                  }
                }

                v16 += __clz(__rbit64(v18 ^ v17)) >> 3;
              }

LABEL_17:
              if (v16 > v13)
              {
                v14 = *(&v33 & 0xFFFFFFFFFFFFFFF3 | (4 * (v12 & 3)));
                v13 = v16;
              }
            }

            ++v12;
          }

          while (v12 != 4);
          LODWORD(v36) = v13;
          v35.i64[1] = v14;
          if (v13)
          {
            if (v13 >= 0x3997C)
            {
              v19 = 235900;
            }

            else
            {
              v19 = v13;
            }

            if (v1 <= v10 || v14 < 1)
            {
              v22 = v14;
              v21 = v1;
            }

            else
            {
              v20 = v4 - 1;
              v21 = v1;
              while (*(v20 + v14) == *(v20 + v21))
              {
                --v21;
                v22 = v14 - 1;
                if (v21 > v10 && v14-- > 1)
                {
                  continue;
                }

                goto LABEL_36;
              }

              v22 = v14;
            }

LABEL_36:
            v35.i64[0] = v21;
            v35.i64[1] = v22;
            v25 = v19 + v1 - v21;
            LODWORD(v36) = v25;
            if (v25 >= 0x28)
            {
              v31 = v9;
              v32 = v8;
              goto LABEL_38;
            }

            v28 = *(a1 + 96);
            if (!v28)
            {
              v3 = v35;
              *(a1 + 80) = v35;
              *(a1 + 96) = v36;
              goto LABEL_42;
            }

            v31 = v9;
            v32 = v8;
            if (*(a1 + 80) + v28 <= v21)
            {
              if (lzfseBackendMatch(a1, (a1 + 80)))
              {
                return 4294967294;
              }

              v3 = v35;
              *(a1 + 80) = v35;
              *(a1 + 96) = v36;
            }

            else
            {
              if (v25 <= v28)
              {
LABEL_7:
                v11 = (a1 + 80);
              }

              else
              {
LABEL_38:
                v11 = &v35;
              }

              if (lzfseBackendMatch(a1, v11))
              {
                return 4294967294;
              }

              *(a1 + 80) = 0;
              *(a1 + 88) = 0;
              *(a1 + 96) = 0;
            }

            v9 = v31;
            v8 = v32;
            goto LABEL_42;
          }
        }

        if (v1 - v10 >= 946)
        {
          v31 = v9;
          v32 = v8;
          if (*(a1 + 96))
          {
            goto LABEL_7;
          }

          v38 = 0;
          v37 = vaddq_s64(vdupq_n_s64(v10), xmmword_29868AC80);
          v24 = lzfseBackendMatch(a1, v37.i32);
          v9 = v31;
          v8 = v32;
          if (v24)
          {
            return 4294967294;
          }
        }
      }

LABEL_42:
      v3 = vextq_s8(v3, v9, 0xCuLL);
      v26 = vextq_s8(v3, v8, 0xCuLL);
      v26.i32[0] = v1;
      v3.i32[0] = v6;
      *v7 = v26;
      v7[1] = v3;
      v27 = *(a1 + 32);
      v1 = *(a1 + 24) + 1;
      *(a1 + 24) = v1;
    }

    while (v1 < v27);
  }

  return 0;
}

uint64_t lzfseBackendMatch(uint64_t *a1, int *a2)
{
  result = lzfsePushMatch(a1, a2);
  if (result)
  {
    lzfseEncodeMatches();
    if (v5)
    {
      return 4294967294;
    }

    else
    {

      return lzfsePushMatch(a1, a2);
    }
  }

  return result;
}

uint64_t lzfsePushMatch(uint64_t *a1, int *a2)
{
  v3 = *(a1 + 26);
  v4 = *(a1 + 27);
  v5 = a1[2];
  v6 = *a2;
  v7 = *a2 - v5;
  v8 = a2[4];
  v9 = a2[2];
  if (v7 >= 0x13C)
  {
    v10 = a1[2];
    v11 = *(a1 + 27);
    while (1)
    {
      v12 = *(a1 + 26);
      if ((v12 + 9) > *(a1 + 17) || (v11 + 331) > *(a1 + 18))
      {
        goto LABEL_27;
      }

      *(a1 + 26) = v12 + 1;
      v13 = a1[16];
      *(a1[15] + 4 * v12) = 315;
      *(v13 + 4 * v12) = 0;
      v14 = a1[18];
      *(a1[17] + 4 * v12) = 1;
      v15 = (v14 + *(a1 + 27));
      v16 = (*a1 + v10);
      if (v10 + 331 <= a1[1])
      {
        v17 = v15 + 315;
        v19 = *v16;
        v18 = v16 + 1;
        *v15 = v19;
        v20 = v15 + 16;
        do
        {
          v21 = *v18++;
          *v20 = v21;
          v20 += 16;
        }

        while (v20 < v17);
      }

      else
      {
        memcpy(v15, v16, 0x13BuLL);
      }

      v11 = *(a1 + 27) + 315;
      *(a1 + 27) = v11;
      v10 = a1[2] + 315;
      a1[2] = v10;
      v7 -= 315;
      if (v7 <= 0x13B)
      {
        goto LABEL_12;
      }
    }
  }

  v10 = a1[2];
  v11 = *(a1 + 27);
LABEL_12:
  v22 = v6 - v9;
  if (v8 >= 0x938)
  {
    while (1)
    {
      v23 = *(a1 + 26);
      if ((v23 + 9) > *(a1 + 17) || v7 + v11 + 16 > *(a1 + 18))
      {
        goto LABEL_27;
      }

      *(a1 + 26) = v23 + 1;
      v24 = a1[16];
      *(a1[15] + 4 * v23) = v7;
      *(v24 + 4 * v23) = 2359;
      v25 = a1[18];
      *(a1[17] + 4 * v23) = v22;
      v26 = (v25 + *(a1 + 27));
      v27 = *a1;
      if (v10 + v7 + 16 <= a1[1])
      {
        *v26 = *(v27 + v10);
        if (v7 >= 0x11)
        {
          v28 = v26 + 1;
          v29 = (v27 + v10 + 16);
          do
          {
            v30 = *v29++;
            *v28++ = v30;
          }

          while (v28 < (v26 + v7));
        }
      }

      else if (v7)
      {
        memcpy(v26, (v27 + v10), v7);
      }

      v31 = 0;
      v11 = *(a1 + 27) + v7;
      *(a1 + 27) = v11;
      v10 = a1[2] + v7 + 2359;
      a1[2] = v10;
      v8 -= 2359;
      v7 = 0;
      if (v8 <= 0x937)
      {
        goto LABEL_24;
      }
    }
  }

  v31 = v7;
LABEL_24:
  if (v8 | v31)
  {
    v32 = *(a1 + 26);
    if ((v32 + 9) <= *(a1 + 17) && v31 + v11 + 16 <= *(a1 + 18))
    {
      *(a1 + 26) = v32 + 1;
      v34 = a1[16];
      *(a1[15] + 4 * v32) = v31;
      *(v34 + 4 * v32) = v8;
      v35 = a1[18];
      *(a1[17] + 4 * v32) = v22;
      v36 = (v35 + *(a1 + 27));
      v37 = *a1;
      if (v10 + v31 + 16 <= a1[1])
      {
        *v36 = *(v37 + v10);
        if (v31 >= 0x11)
        {
          v38 = v36 + 1;
          v39 = (v10 + v37 + 16);
          do
          {
            v40 = *v39++;
            *v38++ = v40;
          }

          while (v38 < (v36 + v31));
        }
      }

      else if (v31)
      {
        memcpy(v36, (v37 + v10), v31);
      }

      result = 0;
      *(a1 + 27) += v31;
      v5 = a1[2] + v8 + v31;
      goto LABEL_28;
    }

LABEL_27:
    *(a1 + 26) = v3;
    *(a1 + 27) = v4;
    result = 4294967294;
LABEL_28:
    a1[2] = v5;
    return result;
  }

  return 0;
}

uint64_t lzfseEncodeFinish(uint64_t a1)
{
  if (*(a1 + 96))
  {
    if (lzfseBackendMatch(a1, (a1 + 80)))
    {
      return 4294967294;
    }

    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
  }

  v2 = *(a1 + 8);
  if (v2 <= *(a1 + 16) || (v6[0] = *(a1 + 8), v6[1] = v2 - 1, v6[2] = 0, !lzfseBackendMatch(a1, v6)))
  {
    lzfseEncodeMatches();
    if (!v3)
    {
      v4 = *(a1 + 40);
      if ((v4 + 1) <= *(a1 + 56))
      {
        result = 0;
        *v4 = 611874402;
        *(a1 + 40) = v4 + 1;
        return result;
      }
    }
  }

  return 4294967294;
}

double lzfseEncodeMatches()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v2 = v0;
  v246 = *MEMORY[0x29EDCA608];
  v3 = *(v0 + 108);
  if (v3)
  {
    bzero(&v227, 0x304uLL);
    v4 = (v2 + 40);
    v225 = *(v2 + 40);
    v226 = v3;
    if ((v3 & 3) != 0)
    {
      v5 = v3;
      do
      {
        *(v2 + 108) = v5 + 1;
        *(*(v2 + 144) + v5) = 0;
        v5 = *(v2 + 108);
      }

      while ((v5 & 3) != 0);
    }
  }

  else
  {
    if (!*(v0 + 104))
    {
      return *v1.i64;
    }

    v226 = 0;
    bzero(&v227, 0x304uLL);
    v4 = (v2 + 40);
    v225 = *(v2 + 40);
  }

  v6 = *(v2 + 104);
  if (v6)
  {
    v7 = 0;
    v8 = 0;
    v9 = *(v2 + 136);
    do
    {
      v10 = *(v9 + 4 * v7);
      if (v10 == v8)
      {
        *(v9 + 4 * v7) = 0;
        v6 = *(v2 + 104);
        v10 = v8;
      }

      ++v7;
      v8 = v10;
    }

    while (v7 < v6);
  }

  else
  {
    v6 = 0;
  }

  memset(v244, 0, sizeof(v244));
  memset(v245, 0, 80);
  memset(v243, 0, sizeof(v243));
  bzero(v242, 0x400uLL);
  if (v6)
  {
    v11 = 0;
    v12 = *(v2 + 120);
    v13 = v6;
    do
    {
      v14 = *v12++;
      v11 += v14;
      ++v245[getLSymbolFromValue_sym[v14]];
      --v13;
    }

    while (v13);
    v15 = 0;
    v16 = *(v2 + 128);
    v17 = v6;
    do
    {
      v18 = *v16++;
      v15 += v18;
      ++*&v244[4 * getMSymbolFromValue_sym[v18]];
      --v17;
    }

    while (v17);
    v19 = *(v2 + 136);
    v20 = v6;
    do
    {
      v22 = *v19++;
      v21 = v22;
      v23 = v22 - 60;
      if (v22 >= 0x3C)
      {
        v24 = 0;
      }

      else
      {
        v24 = v21;
      }

      if (v23 >= 0x3C0)
      {
        v25 = 0;
      }

      else
      {
        v25 = (v23 >> 4) + 64;
      }

      v26 = v25 | v24;
      if ((v21 - 1020) >> 10 >= 0xF)
      {
        v27 = 0;
      }

      else
      {
        v27 = ((v21 - 1020) >> 8) ^ 0x80;
      }

      v28 = v21 - 16380;
      v29 = ((v21 + 1032196) >> 12) + 192;
      if (v28 >= 0x3C000)
      {
        LOBYTE(v29) = 0;
      }

      v30 = getDSymbolFromValue_sym[(v26 | v27 | v29)];
      ++*&v243[4 * v30];
      --v20;
    }

    while (v20);
  }

  else
  {
    v15 = 0;
    v11 = 0;
  }

  v31 = *(v2 + 108);
  if (v31)
  {
    v32 = *(v2 + 144);
    v33 = *(v2 + 108);
    do
    {
      v34 = *v32++;
      ++v242[v34];
      --v33;
    }

    while (v33);
  }

  v35 = *(v2 + 40);
  if ((v35 + 752) > *(v2 + 56))
  {
    goto LABEL_150;
  }

  v36 = 0;
  v227 = 829978210;
  v228 = v15 + v11;
  v229 = v31;
  v230 = v6;
  v37 = 0uLL;
  do
  {
    v37 = vaddq_s32(*&v245[v36], v37);
    v36 += 4;
  }

  while (v36 != 20);
  v38 = vaddvq_s32(v37);
  if (v38)
  {
    v39 = 0x80000000 / v38;
  }

  else
  {
    v39 = 0;
  }

  v40 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 64;
  do
  {
    v44 = v245[v40];
    v45 = (v44 * v39) >> 24;
    v46 = v44 != 0;
    if (v45)
    {
      v46 = (v45 + 1) >> 1;
    }

    v234[v40] = v46;
    v43 -= v46;
    v47 = v46 > v42;
    if (v46 > v42)
    {
      v42 = v46;
    }

    if (v47)
    {
      v41 = v40;
    }

    ++v40;
  }

  while (v40 != 20);
  if (-v43 >= (v42 >> 2))
  {
    fse_adjust_freqs(v234, -v43, 20);
  }

  else
  {
    v234[v41] += v43;
  }

  v48 = 0;
  v49 = 0uLL;
  do
  {
    v49 = vaddq_s32(*&v244[v48], v49);
    v48 += 16;
  }

  while (v48 != 80);
  v50 = vaddvq_s32(v49);
  if (v50)
  {
    v51 = 0x80000000 / v50;
  }

  else
  {
    v51 = 0;
  }

  v52 = 0;
  v53 = 0;
  v54 = 0;
  v55 = 64;
  do
  {
    v56 = *&v244[4 * v52];
    v57 = (v56 * v51) >> 24;
    v58 = v56 != 0;
    if (v57)
    {
      v58 = (v57 + 1) >> 1;
    }

    v235[v52] = v58;
    v55 -= v58;
    v59 = v58 > v54;
    if (v58 > v54)
    {
      v54 = v58;
    }

    if (v59)
    {
      v53 = v52;
    }

    ++v52;
  }

  while (v52 != 20);
  if (-v55 >= (v54 >> 2))
  {
    fse_adjust_freqs(v235, -v55, 20);
  }

  else
  {
    v235[v53] += v55;
  }

  v60 = 0;
  v61 = 0uLL;
  do
  {
    v61 = vaddq_s32(*&v243[v60], v61);
    v60 += 16;
  }

  while (v60 != 256);
  v62 = vaddvq_s32(v61);
  if (v62)
  {
    v63 = 0x80000000 / v62;
  }

  else
  {
    v63 = 0;
  }

  v64 = 0;
  v65 = 0;
  v66 = 0;
  v67 = 256;
  do
  {
    v68 = *&v243[4 * v64];
    v69 = v68 * v63;
    v70 = (((v68 * v63) >> 22) + 1) >> 1;
    v71 = v68 != 0;
    if (v69 >= 0x400000)
    {
      v71 = v70;
    }

    v236[v64] = v71;
    v67 -= v71;
    v72 = v71 > v66;
    if (v71 > v66)
    {
      v66 = v71;
    }

    if (v72)
    {
      v65 = v64;
    }

    ++v64;
  }

  while (v64 != 64);
  if (-v67 >= (v66 >> 2))
  {
    fse_adjust_freqs(v236, -v67, 64);
  }

  else
  {
    v236[v65] += v67;
  }

  v73 = 0;
  v1 = 0uLL;
  do
  {
    v1 = vaddq_s32(*&v242[v73], v1);
    v73 += 4;
  }

  while (v73 != 256);
  v1.i32[0] = vaddvq_s32(v1);
  if (v1.i32[0])
  {
    v74 = 0x80000000 / v1.i32[0];
  }

  else
  {
    v74 = 0;
  }

  v75 = 0;
  v76 = 0;
  v77 = 0;
  v78 = 1024;
  do
  {
    v79 = v242[v75];
    v80 = v79 * v74;
    v81 = (((v79 * v74) >> 20) + 1) >> 1;
    v82 = v79 != 0;
    if (v80 >= 0x100000)
    {
      v82 = v81;
    }

    v237[v75] = v82;
    v78 -= v82;
    v83 = v82 > v77;
    if (v82 > v77)
    {
      v77 = v82;
    }

    if (v83)
    {
      v76 = v75;
    }

    ++v75;
  }

  while (v75 != 256);
  if (-v78 >= (v77 >> 2))
  {
    fse_adjust_freqs(v237, -v78, 256);
  }

  else
  {
    v237[v76] += v78;
  }

  v84 = 0;
  v85 = 0;
  v86 = 0;
  v87 = (v35 + 32);
  do
  {
    v88 = v234[v84];
    if (v88 >= 8)
    {
      if (v88 <= 0x17)
      {
        v89 = 8;
      }

      else
      {
        v89 = 14;
      }

      if (v88 <= 0x17)
      {
        v90 = 16 * v88 - 121;
      }

      else
      {
        v90 = 16 * v88 - 369;
      }
    }

    else
    {
      v89 = dword_29868BA10[v234[v84]];
      v90 = dword_29868BA30[v234[v84]];
    }

    v85 |= v90 << v86;
    v91 = v89 + v86;
    if (v91 < 8)
    {
      v86 = v91;
    }

    else
    {
      do
      {
        *v87++ = v85;
        v85 >>= 8;
        v86 = v91 - 8;
        v47 = v91 > 0xF;
        v91 -= 8;
      }

      while (v47);
    }

    ++v84;
  }

  while (v84 != 360);
  if (v86 > 0)
  {
    *v87 = v85;
    LODWORD(v87) = v87 + 1;
  }

  v92 = 0;
  v93 = 0;
  v94 = (v87 - v35);
  *(v35 + 8) = 0;
  *(v35 + 16) = 0;
  *(v35 + 24) = v94;
  v95 = (*v4 + v94);
  *v4 = v95;
  v96 = &v241;
  do
  {
    v97 = v234[v92];
    if (v234[v92])
    {
      v98 = __clz(v97);
      *(v96 - 2) = (v97 << (v98 - 25)) - 64;
      *(v96 - 1) = v98 - 25;
      *v96 = (0x40u >> (v98 - 25)) + v93 - v97;
      *(v96 + 1) = (0x40u >> (v98 - 26)) + v93 - v97;
      v93 += v97;
    }

    ++v92;
    v96 += 2;
  }

  while (v92 != 20);
  v99 = 0;
  v100 = 0;
  v101 = v240;
  do
  {
    v102 = v235[v99];
    if (v235[v99])
    {
      v103 = __clz(v102);
      *(v101 - 2) = (v102 << (v103 - 25)) - 64;
      *(v101 - 1) = v103 - 25;
      *v101 = (0x40u >> (v103 - 25)) + v100 - v102;
      v101[1] = (0x40u >> (v103 - 26)) + v100 - v102;
      v100 += v102;
    }

    ++v99;
    v101 += 4;
  }

  while (v99 != 20);
  v104 = 0;
  v105 = 0;
  v106 = v239;
  do
  {
    v107 = v236[v104];
    if (v236[v104])
    {
      v108 = __clz(v107);
      *(v106 - 2) = (v107 << (v108 - 23)) - 256;
      *(v106 - 1) = v108 - 23;
      *v106 = (0x100u >> (v108 - 23)) + v105 - v107;
      v106[1] = (0x100u >> (v108 - 24)) + v105 - v107;
      v105 += v107;
    }

    ++v104;
    v106 += 4;
  }

  while (v104 != 64);
  v109 = 0;
  v110 = 0;
  v111 = v238;
  do
  {
    v112 = v237[v109];
    if (v237[v109])
    {
      v113 = __clz(v112);
      *(v111 - 2) = (v112 << (v113 - 21)) - 1024;
      *(v111 - 1) = v113 - 21;
      *v111 = (0x400u >> (v113 - 21)) + v110 - v112;
      v111[1] = (0x400u >> (v113 - 22)) + v110 - v112;
      v110 += v112;
    }

    ++v109;
    v111 += 4;
  }

  while (v109 != 256);
  v114 = *(v2 + 108);
  if (v114)
  {
    v115 = 0;
    LOWORD(v116) = 0;
    LOWORD(v117) = 0;
    LOWORD(v118) = 0;
    LOWORD(v119) = 0;
    v120 = 0;
    v121 = v114 - 2;
    while ((v95 + 2) <= *(v2 + 56))
    {
      v122 = *(v2 + 144);
      v123 = &v237[4 * *(v122 + v121 + 1) + 257];
      v124 = *v123;
      v125 = v123[1];
      v126 = v123 + 2;
      v127 = v123 + 3;
      v128 = v116 < v124;
      if (!v128)
      {
        v127 = v126;
      }

      v129 = v125 - v128;
      v130 = *v127;
      v131 = (v116 & FSE_mask_lsb64_mtable_0[v129]) << v120;
      v132 = v129 + v120;
      v116 = v130 + (v116 >> v129);
      v133 = &v237[4 * *(v122 + v121) + 257];
      v134 = *v133;
      v135 = v133[1];
      v136 = v133 + 2;
      v137 = v133 + 3;
      v138 = v117 < v134;
      if (!v138)
      {
        v137 = v136;
      }

      v139 = v135 - v138;
      v140 = (v117 & FSE_mask_lsb64_mtable_0[v139]) << v132;
      v141 = v139 + v132;
      v117 = *v137 + (v117 >> v139);
      v142 = &v237[4 * *(v122 + v121 - 1) + 257];
      v143 = *v142;
      v144 = v142[1];
      v145 = v142 + 2;
      v146 = v142 + 3;
      v147 = v118 < v143;
      if (!v147)
      {
        v146 = v145;
      }

      v148 = v144 - v147;
      v149 = (v118 & FSE_mask_lsb64_mtable_0[v148]) << v141;
      v150 = v148 + v141;
      v118 = *v146 + (v118 >> v148);
      v151 = &v237[4 * *(v122 + v121 - 2) + 257];
      v152 = *v151;
      v153 = v151[1];
      v154 = v151 + 2;
      v155 = v151 + 3;
      v156 = v119 < v152;
      if (!v156)
      {
        v155 = v154;
      }

      v157 = v153 - v156;
      v158 = v131 | v115 | v140 | v149 | ((v119 & FSE_mask_lsb64_mtable_0[v157]) << v150);
      v159 = v157 + v150;
      v119 = *v155 + (v119 >> v157);
      *v95 = v158;
      v95 = (v95 + (v159 >> 3));
      v115 = v158 >> (v159 & 0xF8);
      v120 = v159 & 7;
      v121 -= 4;
      if (v121 == -2)
      {
        goto LABEL_149;
      }
    }

    goto LABEL_150;
  }

  v120 = 0;
  LOWORD(v119) = 0;
  LOWORD(v118) = 0;
  LOWORD(v117) = 0;
  LOWORD(v116) = 0;
  v115 = 0;
LABEL_149:
  *v95 = v115;
  v160 = (v95 + ((v120 + 7) >> 3));
  v161 = *(v2 + 40);
  v1.i16[0] = v119;
  v1.i16[1] = v118;
  v1.i16[2] = v117;
  v1.i16[3] = v116;
  v232 = v120 - ((v120 + 7) & 8);
  v231 = v160 - v161;
  v233 = v1.i64[0];
  *(v2 + 40) = v160;
  v162 = v160 + 1;
  if ((v160 + 1) > *(v2 + 56))
  {
    goto LABEL_150;
  }

  v168 = *(v2 + 104);
  *v160 = 0;
  if (v168)
  {
    LOWORD(v169) = 0;
    LOWORD(v170) = 0;
    LOWORD(v171) = 0;
    v172 = 0;
    v173 = 0;
    v174 = 4 * v168 - 4;
    while ((v162 + 2) <= *(v2 + 56))
    {
      v175 = *(*(v2 + 136) + v174);
      if (v175 >= 0x3C)
      {
        v176 = 0;
      }

      else
      {
        v176 = *(*(v2 + 136) + v174);
      }

      v177 = ((v175 - 60) >> 4) + 64;
      if ((v175 - 60) >= 0x3C0)
      {
        LOBYTE(v177) = 0;
      }

      v178 = v177 | v176;
      if ((v175 - 1020) >> 10 >= 0xF)
      {
        v179 = 0;
      }

      else
      {
        v179 = ((v175 - 1020) >> 8) ^ 0x80;
      }

      v180 = ((v175 + 1032196) >> 12) + 192;
      if ((v175 - 16380) >= 0x3C000)
      {
        LOBYTE(v180) = 0;
      }

      v181 = getDSymbolFromValue_sym[(v178 | v179 | v180)];
      v182 = (v175 - kDSymbolVBase[v181]) << v172;
      v183 = v172 + kDSymbolVBits[v181];
      v184 = &v238[8 * v181 + 2044];
      v185 = *v184;
      v186 = v184[1];
      v187 = v184 + 2;
      v188 = v184 + 3;
      v189 = v169 < v185;
      if (!v189)
      {
        v188 = v187;
      }

      v190 = v186 - v189;
      v191 = (v169 & FSE_mask_lsb64_mtable_0[v190]) << v183;
      v192 = v190 + v183;
      v169 = *v188 + (v169 >> v190);
      v193 = *(*(v2 + 128) + v174);
      v194 = getMSymbolFromValue_sym[v193];
      v195 = (v193 - kMSymbolVBase[v194]) << v192;
      v196 = v192 + kMSymbolVBits[v194];
      v197 = &v239[8 * v194 + 508];
      v198 = *v197;
      v199 = v197[1];
      v200 = v197 + 2;
      v201 = v197 + 3;
      v202 = v170 < v198;
      if (v202)
      {
        v200 = v201;
      }

      v203 = v199 - v202;
      v204 = (v170 & FSE_mask_lsb64_mtable_0[v203]) << v196;
      v205 = v203 + v196;
      v170 = *v200 + (v170 >> v203);
      v206 = *(*(v2 + 120) + v174);
      v207 = getLSymbolFromValue_sym[v206];
      v208 = (v206 - kLSymbolVBase[v207]) << v205;
      v209 = v205 + kLSymbolVBits[v207];
      v210 = &v240[8 * v207 + 156];
      v211 = v210[1];
      v47 = v171 < *v210;
      v212 = v210 + 2;
      v213 = v210 + 3;
      if (v47)
      {
        v214 = 1;
      }

      else
      {
        v213 = v212;
        v214 = 0;
      }

      v215 = v211 - v214;
      v216 = v182 | v173 | v195 | v204 | v208 | ((v171 & FSE_mask_lsb64_mtable_0[v215]) << v209) | v191;
      v171 = *v213 + (v171 >> v215);
      *v162 = v216;
      v162 = (v162 + ((v215 + v209) >> 3));
      v173 = v216 >> ((v215 + v209) & 0xF8);
      v172 = (v215 + v209) & 7;
      v174 -= 4;
      if (v174 == -4)
      {
        v217 = v171 << 32;
        v218 = v170 << 42;
        v219 = v169 << 52;
        goto LABEL_180;
      }
    }

LABEL_150:
    v163 = *(v2 + 104);
    if (v163)
    {
      v164 = 0;
      v165 = 0;
      v166 = *(v2 + 136);
      do
      {
        v167 = *(v166 + 4 * v164);
        if (!v167)
        {
          *(v166 + 4 * v164) = v165;
          v163 = *(v2 + 104);
          v167 = v165;
        }

        ++v164;
        v165 = v167;
      }

      while (v164 < v163);
    }

    *(v2 + 108) = v226;
    *(v2 + 40) = v225;
    return *v1.i64;
  }

  v173 = 0;
  v172 = 0;
  v217 = 0;
  v218 = 0;
  v219 = 0;
LABEL_180:
  *v162 = v173;
  v220 = v162 + ((v172 + 7) >> 3);
  v221 = (v220 - *(v2 + 40));
  *(v2 + 40) = v220;
  *(v2 + 104) = 0;
  v222 = v228;
  *v35 = 846755426;
  *(v35 + 4) = v222;
  v1.i64[0] = v233;
  v223 = v233 | (v221 << 40) | (WORD1(v233) << 10) | (WORD2(v233) << 20) | (HIWORD(v233) << 30);
  *(v35 + 8) = v229 | (v231 << 20) | (v230 << 40) | ((v232 + 7) << 60);
  *(v35 + 16) = v223 | ((v172 - ((v172 + 7) & 8u) + 7) << 60);
  *(v35 + 24) |= v217 | v218 | v219;
  return *v1.i64;
}

_WORD *fse_adjust_freqs(_WORD *result, signed int a2, int a3)
{
  if (a2)
  {
    for (i = 3; ; --i)
    {
      v4 = a3;
      v5 = result;
      if (a3 >= 1)
      {
        break;
      }

LABEL_9:
      ;
    }

    while (1)
    {
      v6 = *v5;
      if (v6 >= 2)
      {
        v7 = (v6 - 1) >> i;
        if (v7 >= a2)
        {
          v7 = a2;
        }

        *v5 = v6 - v7;
        a2 -= v7;
        if (!a2)
        {
          break;
        }
      }

      ++v5;
      if (!--v4)
      {
        goto LABEL_9;
      }
    }
  }

  return result;
}

uint64_t lzfseStreamEncodeInit(uint64_t a1, int a2, int a3)
{
  if (!a3)
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  ScratchSize = lzfseEncodeGetScratchSize(a2);
  v6 = realloc_stream_state(*(a1 + 32), 0, a2, ScratchSize + 1573080, ScratchSize + 1572864);
  *(a1 + 32) = v6;
  if (!v6)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = v6;
  result = 0;
  v7[8] = 216;
  v7[13] = 786648;
  v7[14] = 786648;
  v7[15] = 1573080;
  v7[2] = 216;
  v7[3] = 786648;
  v7[4] = 1573080;
  return result;
}

uint64_t lzfseStreamEncode(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  v4 = v3 + 64;
  *(v3 + 64) += v3;
  v5 = vdupq_n_s64(v3);
  *(v3 + 104) = vaddq_s64(v5, *(v3 + 104));
  *(v3 + 120) += v3;
  v37 = v5;
  *(v3 + 16) = vaddq_s64(v5, *(v3 + 16));
  *(v3 + 32) += v3;
  if (a2)
  {
    *(v3 + 44) = 1;
  }

  while (1)
  {
    if (*(v3 + 48))
    {
      v6 = 0;
    }

    else
    {
      v7 = *(v3 + 72);
      v8 = *(a1 + 24);
      if (v8 >= 786432 - v7)
      {
        v6 = 786432 - v7;
      }

      else
      {
        v6 = *(a1 + 24);
      }

      if (v6 >= 1)
      {
        memcpy((*(v3 + 16) + v7), *(a1 + 16), v6);
        *(v3 + 72) += v6;
        v8 = *(a1 + 24) - v6;
        *(a1 + 16) += v6;
        *(a1 + 24) = v8;
      }

      if (!v8 && *(v3 + 44))
      {
        *(v3 + 48) = 1;
      }
    }

    v9 = *(v3 + 112);
    v10 = *(v3 + 24);
    if (v9 >= v10 + 393216)
    {
      v11 = *(v3 + 104);
      v12 = v11 - v9;
      if (v11 != v9)
      {
        memmove(v10, v9, v11 - v9);
        v10 = *(v3 + 24);
      }

      *(v3 + 104) = &v10[v12];
      *(v3 + 112) = v10;
    }

    if (*(v3 + 48))
    {
      break;
    }

    if (!*(v3 + 40) && *(v3 + 72) < 4096)
    {
      goto LABEL_42;
    }

LABEL_28:
    if (!*(v3 + 52))
    {
LABEL_29:
      if (*(v3 + 40))
      {
LABEL_30:
        lzfseEncodeSetStateScratch(v4, *(v3 + 32));
      }

      else
      {
LABEL_31:
        lzfseEncodeInitState(v4, *(v3 + 4), *(v3 + 32));
        *(v3 + 40) = 1;
      }

      v25 = *(v3 + 72);
      *(v3 + 96) = v25 - 400;
      if (*(v3 + 48))
      {
        *(v3 + 96) = v25 - 8;
      }

      lzfseEncodeBase(v4);
      if (*(v3 + 48) && *(v3 + 88) >= *(v3 + 72) - 8)
      {
        *(v3 + 52) = 1;
      }

      else if (!*(v3 + 52))
      {
        goto LABEL_42;
      }
    }

LABEL_39:
    if (!*(v3 + 56) && !lzfseEncodeFinish(v4))
    {
      goto LABEL_41;
    }

LABEL_42:
    if (*(v3 + 60))
    {
      if (*(v3 + 56))
      {
        goto LABEL_66;
      }

      v26 = 0;
    }

    else
    {
      v27 = *(v3 + 112);
      if (*(a1 + 8) >= *(v3 + 104) - v27)
      {
        v26 = *(v3 + 104) - v27;
      }

      else
      {
        v26 = *(a1 + 8);
      }

      if (v26 >= 1)
      {
        memcpy(*a1, v27, v26);
        v27 = (*(v3 + 112) + v26);
        *(v3 + 112) = v27;
        v28 = *(a1 + 8) - v26;
        *a1 += v26;
        *(a1 + 8) = v28;
      }

      if (*(v3 + 56))
      {
        if (v27 == *(v3 + 104))
        {
          v32 = 0;
          *(v3 + 60) = 1;
          goto LABEL_68;
        }

        if (*(v3 + 60))
        {
LABEL_66:
          v32 = 0;
          goto LABEL_68;
        }
      }
    }

    v29 = *(v3 + 72);
    if (v29 >= 393216)
    {
      v30 = *(v3 + 88);
      v31 = v30 > 0x80000 ? v30 - 0x40000 : 0;
      if (v31 >= 1)
      {
        lzfseEncodeTranslateState(v4, v31);
        if (v29 > v31)
        {
          memmove(*(v3 + 16), (*(v3 + 16) + v31), v29 - v31);
        }

        *(v3 + 64) = *(v3 + 16);
      }
    }

    v32 = v26 | v6;
    if (!(v26 | v6))
    {
      goto LABEL_68;
    }
  }

  if (*(v3 + 52))
  {
    goto LABEL_39;
  }

  if (*(v3 + 40))
  {
    goto LABEL_30;
  }

  v13 = *(v3 + 72);
  if (v13 > 4095)
  {
    goto LABEL_31;
  }

  v14 = *(v3 + 120);
  v15 = *(v3 + 104);
  if (v14 <= v15 + 16)
  {
    goto LABEL_29;
  }

  v16 = lzvn_encode_scratch_size(2304);
  v17 = malloc(v16);
  if (v17)
  {
    v18 = v17;
    v19 = v14 - v15;
    v20 = lzvn_encode_buffer((*(v3 + 104) + 12), v19 - 16, *(v3 + 64), v13, v17, 2304);
    free(v18);
    if (v20 && v20 < v13)
    {
      v21 = *(v3 + 104);
      *v21 = 1853388386;
      v21[1] = v13;
      v21[2] = v20;
      v22 = &v20[*(v3 + 104)];
      *(v22 + 3) = 611874402;
      v23 = *(v3 + 72);
      *(v3 + 80) = v23;
      *(v3 + 88) = v23;
      v24 = v22 + 16;
LABEL_65:
      *(v3 + 96) = v23;
      *(v3 + 104) = v24;
      *(v3 + 52) = 1;
LABEL_41:
      *(v3 + 56) = 1;
      goto LABEL_42;
    }

    if (v19 >= v13 + 12)
    {
      v33 = *(v3 + 104);
      *v33 = 762869346;
      v33[1] = v13;
      v34 = (*(v3 + 104) + 8);
      *(v3 + 104) = v34;
      memcpy(v34, *(v3 + 64), v13);
      v35 = (*(v3 + 104) + v13);
      *v35 = 611874402;
      v24 = v35 + 1;
      v23 = *(v3 + 72);
      *(v3 + 80) = v23;
      *(v3 + 88) = v23;
      goto LABEL_65;
    }

    goto LABEL_28;
  }

  v32 = 1;
LABEL_68:
  *(v3 + 64) -= v3;
  *(v3 + 104) = vsubq_s64(*(v3 + 104), v37);
  *(v3 + 120) -= v3;
  *(v3 + 16) = vsubq_s64(*(v3 + 16), v37);
  *(v3 + 32) -= v3;
  if (v32)
  {
    return 0xFFFFFFFFLL;
  }

  return *(v3 + 56) && *(v3 + 60);
}

char *lzvn_encode_buffer(char *a1, unint64_t a2, const float *a3, unint64_t a4, int8x16_t *a5, int a6)
{
  v8 = 0;
  result = lzvn_encode_partial(a1, a2, a3, a4, &v8, a5, a6);
  if (v8 != a4)
  {
    return 0;
  }

  return result;
}

char *lzvn_encode_partial(char *a1, unint64_t a2, const float *a3, unint64_t a4, uint64_t *a5, int8x16_t *a6, int a7)
{
  if (a2 < 8 || a4 <= 7)
  {
    result = 0;
    *a5 = 0;
    return result;
  }

  v34 = 0u;
  v35 = 0u;
  v8 = 0xFFFFFFFFLL;
  v36 = 0u;
  if (a4 < 0xFFFFFFFF)
  {
    v8 = a4;
  }

  v26[0] = a3;
  v26[1] = 0;
  v27 = v8;
  v28 = 0;
  v29 = v8 - 8;
  v30 = 0;
  v31 = a1;
  v32 = a1;
  v25 = &a1[a2];
  v33 = &a1[a2 - 8];
  if (a7 == 2305)
  {
    v9 = 11;
  }

  else
  {
    v9 = 14;
  }

  LODWORD(v34) = v9;
  v37 = 0;
  v38 = a6;
  v10 = a6 + 1;
  v11 = 1;
  v12 = vld1q_dup_f32(a3);
  do
  {
    v10[-1].i64[0] = 0;
    v10[-1].i64[1] = 0;
    v13 = v11++ >> v9;
    *v10 = v12;
    v10 += 2;
  }

  while (!v13);
  lzvnEncode(v26, v12);
  v14 = v27;
  v15 = v30;
  v16 = v31;
  v17 = v27 - v30;
  v18 = (v26[0] + v30);
  v19 = v33;
  if ((v27 - v30) >= 0x10)
  {
    v20 = v31;
    while (1)
    {
      v21 = v17 >= 0x10F ? 271 : v17;
      if (&v20[v21 + 10] >= v19)
      {
        goto LABEL_25;
      }

      *v20 = (v21 << 8) - 3872;
      v22 = v20 + 2;
      v17 -= v21;
      memcpy(v22, v18, v21);
      v20 = &v22[v21];
      v18 += v21;
      if (v17 <= 0xF)
      {
        if (v17)
        {
          goto LABEL_21;
        }

        goto LABEL_23;
      }
    }
  }

  v20 = v31;
  if (!v17)
  {
    goto LABEL_23;
  }

LABEL_21:
  if (&v20[v17 + 10] < v19)
  {
    *v20 = v17 | 0xE0;
    v24 = v20 + 1;
    memcpy(v24, v18, v17);
    v20 = &v24[v17];
LABEL_23:
    if (v20 < v19)
    {
      v15 = v14;
      v16 = v20;
    }
  }

LABEL_25:
  if (v25 >= (v16 + 8))
  {
    *v16 = 6;
    v16 += 8;
  }

  *a5 = v15;
  return (v16 - v32);
}

unint64_t lzvnEncode(unint64_t result, int8x16_t a2)
{
  v2 = *(result + 24);
  if (v2 < *(result + 32))
  {
    v3 = result;
    do
    {
      v4 = *v3;
      v5 = *(*v3 + v2);
      v6 = (-1640531535 * (v5 & 0xFFFFFF)) >> -*(v3 + 72);
      v7 = (*(v3 + 128) + 32 * v6);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      if (v2 >= v10)
      {
        a2 = veorq_s8(v8, vdupq_n_s32(v5));
        v11 = __clz(__rbit64(a2.u32[0])) >> 3;
        if (a2.i32[0])
        {
          v12 = v11;
        }

        else
        {
          v12 = 4;
        }

        v13 = *(v3 + 8);
        v14 = *(v3 + 16);
        if (v12 >= 3 && (v15 = v2 - v9.i32[0], (v15 - 0x10000) >= 0xFFFFFFFFFFFF0001))
        {
          for (i = v2 + v12; ; i += v12)
          {
            v22 = v12 == 4 && i + 4 < v14;
            if (!v22)
            {
              break;
            }

            v23 = *(v4 + i);
            v24 = *(v4 + i - v15);
            result = __clz(__rbit64(v24 ^ v23)) >> 3;
            if (v23 == v24)
            {
              v12 = 4;
            }

            else
            {
              v12 = result;
            }
          }

          v25 = v2;
          if (v2 > v10)
          {
            v25 = v2;
            if (v13 < v9.i32[0])
            {
              v26 = v9.i32[0] - 1;
              v27 = v2 - 1;
              while (1)
              {
                result = *(v4 + v26);
                if (*(v4 + v27) != result)
                {
                  break;
                }

                v28 = v27 - 1;
                if (v26 > v13)
                {
                  --v26;
                  v22 = v27-- <= v10;
                  if (!v22)
                  {
                    continue;
                  }
                }

                v25 = v28 + 1;
                goto LABEL_29;
              }

              v25 = v27 + 1;
            }
          }

LABEL_29:
          v29 = -3;
          if (v15 < 1536)
          {
            v29 = -2;
          }

          v30 = i - v25 + v29;
          if (v30 > 0 || (v16 = 0, v17 = 0, v18 = 0, v19 = 0, v20 = 0, !v30) && i >= 2)
          {
            v16 = v25;
            v17 = i;
            v18 = i - v25;
            v19 = v2 - v9.i32[0];
            v20 = v30;
          }
        }

        else
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v19 = 0;
          v20 = 0;
        }

        v31 = __clz(__rbit64(a2.u32[1])) >> 3;
        if (a2.i32[1])
        {
          v32 = v31;
        }

        else
        {
          v32 = 4;
        }

        if (v32 >= 3)
        {
          v33 = v2 - v9.i32[1];
          if ((v33 - 0x10000) >= 0xFFFFFFFFFFFF0001)
          {
            for (j = v2 + v32; v32 == 4 && j + 4 < v14; j += v32)
            {
              v36 = *(v4 + j);
              v37 = *(v4 + j - v33);
              result = __clz(__rbit64(v37 ^ v36)) >> 3;
              if (v36 == v37)
              {
                v32 = 4;
              }

              else
              {
                v32 = result;
              }
            }

            v38 = v2;
            if (v2 > v10)
            {
              v38 = v2;
              if (v13 < v9.i32[1])
              {
                v39 = v9.i32[1] - 1;
                v40 = v2 - 1;
                while (1)
                {
                  result = *(v4 + v39);
                  if (*(v4 + v40) != result)
                  {
                    break;
                  }

                  v41 = v40 - 1;
                  if (v39 > v13)
                  {
                    --v39;
                    v22 = v40-- <= v10;
                    if (!v22)
                    {
                      continue;
                    }
                  }

                  v38 = v41 + 1;
                  goto LABEL_59;
                }

                v38 = v40 + 1;
              }
            }

LABEL_59:
            v42 = -3;
            if (v33 < 1536)
            {
              v42 = -2;
            }

            v43 = j - v38 + v42;
            if (v43 > v20 || v43 == v20 && (result = v17 + 1, j > v17 + 1))
            {
              v16 = v38;
              v17 = j;
              v18 = j - v38;
              v19 = v2 - v9.i32[1];
              v20 = v43;
            }
          }
        }

        v44 = __clz(__rbit64(a2.u32[2])) >> 3;
        if (a2.i32[2])
        {
          v45 = v44;
        }

        else
        {
          v45 = 4;
        }

        if (v45 >= 3)
        {
          v46 = v2 - v9.i32[2];
          if ((v46 - 0x10000) >= 0xFFFFFFFFFFFF0001)
          {
            for (k = v2 + v45; v45 == 4 && k + 4 < v14; k += v45)
            {
              v49 = *(v4 + k);
              v50 = *(v4 + k - v46);
              result = __clz(__rbit64(v50 ^ v49)) >> 3;
              if (v49 == v50)
              {
                v45 = 4;
              }

              else
              {
                v45 = result;
              }
            }

            v51 = v2;
            if (v2 > v10)
            {
              v51 = v2;
              if (v13 < v9.i32[2])
              {
                v52 = v9.i32[2] - 1;
                v53 = v2 - 1;
                while (1)
                {
                  result = *(v4 + v52);
                  if (*(v4 + v53) != result)
                  {
                    break;
                  }

                  v54 = v53 - 1;
                  if (v52 > v13)
                  {
                    --v52;
                    v22 = v53-- <= v10;
                    if (!v22)
                    {
                      continue;
                    }
                  }

                  v51 = v54 + 1;
                  goto LABEL_89;
                }

                v51 = v53 + 1;
              }
            }

LABEL_89:
            v55 = -3;
            if (v46 < 1536)
            {
              v55 = -2;
            }

            v56 = k - v51 + v55;
            if (v56 > v20 || v56 == v20 && (result = v17 + 1, k > v17 + 1))
            {
              v16 = v51;
              v17 = k;
              v18 = k - v51;
              v19 = v2 - v9.i32[2];
              v20 = v56;
            }
          }
        }

        v57 = __clz(__rbit64(a2.u32[3])) >> 3;
        if (a2.i32[3])
        {
          v58 = v57;
        }

        else
        {
          v58 = 4;
        }

        if (v58 >= 3)
        {
          v59 = v2 - v9.i32[3];
          if ((v59 - 0x10000) >= 0xFFFFFFFFFFFF0001)
          {
            for (m = v2 + v58; v58 == 4 && m + 4 < v14; m += v58)
            {
              v62 = *(v4 + m);
              v63 = *(v4 + m - v59);
              result = __clz(__rbit64(v63 ^ v62)) >> 3;
              if (v62 == v63)
              {
                v58 = 4;
              }

              else
              {
                v58 = result;
              }
            }

            v64 = v2;
            if (v2 > v10)
            {
              v64 = v2;
              if (v13 < v9.i32[3])
              {
                v65 = v9.i32[3] - 1;
                v66 = v2 - 1;
                while (1)
                {
                  result = *(v4 + v65);
                  if (*(v4 + v66) != result)
                  {
                    break;
                  }

                  v67 = v66 - 1;
                  if (v65 > v13)
                  {
                    --v65;
                    v22 = v66-- <= v10;
                    if (!v22)
                    {
                      continue;
                    }
                  }

                  v64 = v67 + 1;
                  goto LABEL_119;
                }

                v64 = v66 + 1;
              }
            }

LABEL_119:
            v68 = -3;
            if (v59 < 1536)
            {
              v68 = -2;
            }

            v69 = m - v64 + v68;
            if (v69 > v20 || v69 == v20 && (result = v17 + 1, m > v17 + 1))
            {
              v16 = v64;
              v17 = m;
              v18 = m - v64;
              v19 = v2 - v9.i32[3];
              v20 = v69;
            }
          }
        }

        v70 = *(v3 + 120);
        if (v70)
        {
          v71 = *(v4 + v2 - v70);
          v72 = __clz(__rbit64(v71 ^ v5)) >> 3;
          if (v5 == v71)
          {
            v72 = 4;
          }

          if ((v70 - 0x10000) >= 0xFFFFFFFFFFFF0001 && v72 >= 3)
          {
            v73 = v2 + v72;
            v74 = v73 + 4;
            for (n = v72 == 4; n && v74 < v14; n = v79 == 4)
            {
              v77 = *(v4 + v73);
              v78 = *(v4 + v73 - v70);
              result = __clz(__rbit64(v78 ^ v77)) >> 3;
              if (v77 == v78)
              {
                v79 = 4;
              }

              else
              {
                v79 = result;
              }

              v73 += v79;
              v74 = v73 + 4;
            }

            v80 = v2;
            if (v2 > v10)
            {
              v80 = v2;
              if (v2 - v70 > v13)
              {
                v81 = v2 - 1;
                v82 = v2 - 1 - v70;
                while (*(v4 + v81) == *(v4 + v82))
                {
                  v83 = v81 - 1;
                  if (v82 > v13)
                  {
                    --v82;
                    v22 = v81-- <= v10;
                    if (!v22)
                    {
                      continue;
                    }
                  }

                  v80 = v83 + 1;
                  goto LABEL_149;
                }

                v80 = v81 + 1;
              }
            }

LABEL_149:
            v84 = v73 - v80 - 1;
            if (v84 > v20 || v84 == v20 && v73 > v17 + 1)
            {
              v16 = v80;
              v17 = v73;
              v18 = v73 - v80;
              v19 = *(v3 + 120);
              v20 = v73 - v80 - 1;
            }
          }
        }

        if (v18)
        {
          if (!*(v3 + 96))
          {
            goto LABEL_165;
          }

          v94 = v9;
          v97 = v8;
          if (*(v3 + 88) <= v16)
          {
            v87 = *(v3 + 96);
            v100 = *(v3 + 80);
            v101 = v87;
            v102 = *(v3 + 112);
            result = emitMatch(v3, &v100);
            v9 = v94;
            v8 = v97;
            if (!result)
            {
              return result;
            }

LABEL_165:
            *(v3 + 80) = v16;
            *(v3 + 88) = v17;
            *(v3 + 96) = v18;
            *(v3 + 104) = v19;
            *(v3 + 112) = v20;
            goto LABEL_166;
          }

          if (v20 > *(v3 + 112))
          {
            *(v3 + 80) = v16;
            *(v3 + 88) = v17;
            *(v3 + 96) = v18;
            *(v3 + 104) = v19;
            *(v3 + 112) = v20;
          }

          v85 = *(v3 + 96);
          v100 = *(v3 + 80);
          v101 = v85;
          v102 = *(v3 + 112);
          result = emitMatch(v3, &v100);
          v9 = v94;
          v8 = v97;
          if (!result)
          {
            return result;
          }

          goto LABEL_163;
        }

        if (v2 - v10 >= 400)
        {
          if (*(v3 + 96))
          {
            v95 = v9;
            v98 = v8;
            v86 = *(v3 + 96);
            v100 = *(v3 + 80);
            v101 = v86;
            v102 = *(v3 + 112);
            result = emitMatch(v3, &v100);
            v9 = v95;
            v8 = v98;
            if (!result)
            {
              return result;
            }

LABEL_163:
            *(v3 + 112) = 0;
            a2 = 0uLL;
            *(v3 + 80) = 0u;
            *(v3 + 96) = 0u;
            goto LABEL_166;
          }

          v91 = *(v3 + 48);
          v92 = *(v3 + 64);
          if (v91 + 281 < v92)
          {
            *v91 = -32;
            v96 = v9;
            v99 = v8;
            result = memcpy(v91 + 1, (v4 + v10), 0x10FuLL);
            v9 = v96;
            v8 = v99;
            v92 = v91 + 273;
          }

          if (v92 >= *(v3 + 64))
          {
            return result;
          }

          v93 = *(v3 + 48);
          *(v3 + 40) += 271;
          *(v3 + 48) = v92;
          if (v92 == v93)
          {
            return result;
          }
        }
      }

LABEL_166:
      a2 = vextq_s8(a2, v9, 0xCuLL);
      a2.i32[0] = v2;
      v88 = vextq_s8(a2, v8, 0xCuLL);
      v88.i32[0] = v5;
      v89 = *(v3 + 128) + 32 * v6;
      *v89 = a2;
      *(v89 + 16) = v88;
      v90 = *(v3 + 32);
      v2 = *(v3 + 24) + 1;
      *(v3 + 24) = v2;
    }

    while (v2 < v90);
  }

  return result;
}

unint64_t emitMatch(void *a1, void *a2)
{
  v4 = a1[5];
  v5 = a1[6];
  v6 = *a2 - v4;
  v7 = a2[2];
  v8 = a2[3];
  v25 = a1[15];
  v9 = (*a1 + v4);
  v10 = a1[8];
  if (v6 < 0x10)
  {
LABEL_7:
    if (v6 >= 4)
    {
      if (&v5[v6 + 10] >= v10)
      {
        goto LABEL_39;
      }

      *v5 = v6 | 0xE0;
      v13 = v5 + 1;
      memcpy(v13, v9, ((v6 - 1) & 0xFFFFFFFFFFFFFFF8) + 8);
      v5 = &v13[v6];
      v9 = (v9 + v6);
      v6 = 0;
    }

    if (10 - 2 * v6 >= v7)
    {
      v14 = v7;
    }

    else
    {
      v14 = 10 - 2 * v6;
    }

    if ((v5 + 8) < v10)
    {
      v15 = v7 - v14;
      v16 = v14 - 3;
      v17 = *v9;
      if (v8 == v25)
      {
        v18 = (v6 << 6) + 8 * v16;
        if (v6)
        {
          v19 = 6;
        }

        else
        {
          v19 = -16;
        }

        if (!v6)
        {
          v18 = v14;
        }

        *v5 = v19 | v18;
        v20 = v5 + 1;
      }

      else if (v8 > 0x5FF)
      {
        if (v7 <= 0x22 && !(v8 >> 14) && v15)
        {
          *v5 = ((v7 - 3) >> 2) + 8 * v6 - 96;
          *(v5 + 1) = (v7 - 3) & 3 | (4 * v8);
          *(v5 + 3) = v17;
          v10 = &v5[v6 + 3];
          goto LABEL_39;
        }

        *v5 = ((v6 << 6) + 8 * v16) | 7;
        *(v5 + 1) = v8;
        v20 = v5 + 3;
      }

      else
      {
        *v5 = ((v6 << 6) | BYTE1(v8)) + 8 * v16;
        v5[1] = v8;
        v20 = v5 + 2;
      }

      *v20 = v17;
      v21 = (v20 + v6);
      if (v15 < 0x10)
      {
        v22 = v20 + v6;
        if (v15)
        {
LABEL_35:
          if ((v22 + 1) < v10)
          {
            *v22 = v15 | 0xF0;
            v10 = (v22 + 1);
          }
        }

        else
        {
LABEL_38:
          v10 = v22;
        }
      }

      else
      {
        while (1)
        {
          v22 = v21 + 1;
          if ((v21 + 1) >= v10)
          {
            break;
          }

          if (v15 >= 0x10F)
          {
            v23 = 271;
          }

          else
          {
            v23 = v15;
          }

          *v21 = (v23 << 8) - 3856;
          v15 -= v23;
          ++v21;
          if (v15 <= 0xF)
          {
            if (!v15)
            {
              goto LABEL_38;
            }

            goto LABEL_35;
          }
        }
      }
    }
  }

  else
  {
    while (1)
    {
      v11 = v6 >= 0x10F ? 271 : v6;
      if (&v5[v11 + 10] >= v10)
      {
        break;
      }

      *v5 = (v11 << 8) - 3872;
      v12 = v5 + 2;
      v6 -= v11;
      memcpy(v12, v9, ((v11 - 1) & 0xFFFFFFFFFFFFFFF8) + 8);
      v5 = &v12[v11];
      v9 = (v9 + v11);
      if (v6 <= 0xF)
      {
        goto LABEL_7;
      }
    }
  }

LABEL_39:
  if (v10 >= a1[8])
  {
    return 0;
  }

  result = v10 - a1[6];
  a1[15] = a2[3];
  a1[5] = a2[1];
  a1[6] = v10;
  return result;
}

uint64_t brotli_stream_init(uint64_t a1, int a2)
{
  v4 = malloc(0x20uLL);
  if (v4)
  {
    v5 = v4;
    *v4 = 0u;
    v4[1] = 0u;
    if (a2 == 1)
    {
      Instance = BrotliDecoderCreateInstance(0, 0, 0);
      v5[2] = Instance;
      if (Instance)
      {
        BrotliDecoderSetParameter(Instance, 1, 1);
        goto LABEL_8;
      }
    }

    else if (!a2)
    {
      v6 = BrotliEncoderCreateInstance(0, 0, 0);
      v5[2] = v6;
      if (v6)
      {
        v7 = v6;
        BrotliEncoderSetParameter(v6, 1, 2u);
        BrotliEncoderSetParameter(v7, 2, 0x16u);
LABEL_8:
        result = 0;
        *v5 = a2;
        *(v5 + 1) = 2818;
        *(a1 + 32) = v5;
        return result;
      }
    }

    free(v5);
  }

  return 0xFFFFFFFFLL;
}

void *BrotliDecoderCreateInstance(void *(*a1)(int a1, size_t __size), void (*a2)(int a1, void *a2), uint64_t a3)
{
  v6 = (a1 | a2) != 0;
  if (a1 | a2)
  {
    result = 0;
    if (!a1 || !a2)
    {
      return result;
    }

    v8 = a1(a3, 5152);
  }

  else
  {
    v8 = malloc(0x1420uLL);
  }

  v9 = v8;
  if (!v8)
  {
    return 0;
  }

  if (BrotliDecoderStateInit(v8, a1, a2, a3))
  {
    return v9;
  }

  if (!v6)
  {
    free(v9);
    return 0;
  }

  result = 0;
  if (a1 && a2)
  {
    a2(a3, v9);
    return 0;
  }

  return result;
}

uint64_t BrotliDecoderStateInit(uint64_t a1, void *(*a2)(int a1, size_t __size), void (*a3)(int a1, void *a2), uint64_t a4)
{
  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = BrotliDefaultAllocFunc;
  }

  if (a2)
  {
    v6 = a3;
  }

  else
  {
    v6 = BrotliDefaultFreeFunc;
  }

  *(a1 + 40) = v5;
  *(a1 + 48) = v6;
  if (a2)
  {
    v7 = a4;
  }

  else
  {
    v7 = 0;
  }

  *(a1 + 56) = v7;
  *(a1 + 116) = 0;
  BrotliInitBitReader(a1 + 8);
  v8 = *(a1 + 664);
  *a1 = 0;
  *(a1 + 72) = 0;
  *(a1 + 120) = 0;
  *(a1 + 336) = 0;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 648) = 0u;
  *(a1 + 680) = 0u;
  *(a1 + 664) = v8 & 0xFFC0 | 0x10;
  *(a1 + 668) = 0;
  *(a1 + 100) = xmmword_29864DCA0;
  *(a1 + 96) = 0;
  *(a1 + 88) = 0;
  *(a1 + 84) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 384) = 63;
  *(a1 + 696) = BrotliGetDictionary();
  *(a1 + 704) = BrotliGetTransforms();
  return 1;
}

uint64_t BrotliInitBitReader(uint64_t result)
{
  *result = 0;
  *(result + 8) = 64;
  return result;
}

uint64_t BrotliDecoderSetParameter(uint64_t a1, int a2, int a3)
{
  if (*a1)
  {
    return 0;
  }

  if (a2 == 1)
  {
    v4 = *(a1 + 664) & 0xFFDF | (32 * (a3 != 0));
  }

  else
  {
    if (a2)
    {
      return 0;
    }

    v4 = *(a1 + 664) & 0xFFEF | (16 * (a3 == 0));
  }

  *(a1 + 664) = v4;
  return 1;
}

uint64_t BrotliDecoderDecompressStream(uint64_t a1, void *a2, _BYTE **a3, size_t *a4, void **a5, size_t *a6)
{
  v6 = a6;
  v7 = a4;
  if (a6)
  {
    *a6 = *(a1 + 376);
  }

  if ((*(a1 + 116) & 0x80000000) != 0)
  {
    return 0;
  }

  if (*a4)
  {
    if (!a5 || !*a5)
    {

      return SaveErrorCode(a1, 0xFFFFFFEC);
    }
  }

  else
  {
    a5 = 0;
  }

  v167 = a5;
  if (*(a1 + 72))
  {
    v12 = (a1 + 64);
    HuffmanCode = 2;
  }

  else
  {
    *(a1 + 32) = *a2;
    v12 = *a3;
    HuffmanCode = 1;
  }

  v14 = a1 + 64;
  *(a1 + 24) = v12;
  v165 = (a1 + 680);
  v166 = (a1 + 284);
  v163 = a1 + 192;
  v164 = (a1 + 712);
  v161 = a1 + 216;
  v162 = a1 + 168;
  v15 = (a1 + 744);
  v16 = a1 + 1288;
  v159 = a1 + 952;
  v160 = a1 + 272;
LABEL_16:
  while (2)
  {
    while (HuffmanCode == 1)
    {
      switch(*a1)
      {
        case 0:
          v34 = BrotliWarmupBitReader((a1 + 8));
          HuffmanCode = 2;
          if (!v34)
          {
            continue;
          }

          v35 = *(a1 + 664);
          *(a1 + 664) = v35 & 0xFFDF;
          v36 = *(a1 + 8);
          v37 = *(a1 + 16);
          *(a1 + 16) = v37 + 1;
          if (((v36 >> v37) & 1) == 0)
          {
            v39 = 16;
            goto LABEL_181;
          }

          *(a1 + 16) = v37 + 4;
          v38 = (v36 >> (v37 + 1)) & 7;
          if (v38)
          {
            v39 = v38 + 17;
LABEL_181:
            *(a1 + 668) = v39;
            v20 = 2;
            goto LABEL_185;
          }

          *(a1 + 16) = v37 + 7;
          v145 = (v36 >> (v37 + 4)) & 7;
          if (!v145)
          {
            v39 = 17;
            goto LABEL_181;
          }

          if (v145 != 1)
          {
            v39 = v145 | 8;
            goto LABEL_181;
          }

          HuffmanCode = -13;
          if ((v35 & 0x20) != 0)
          {
            *(a1 + 16) = v37 + 8;
            if (((v36 >> (v37 + 7)) & 1) == 0)
            {
              *(a1 + 664) = v35;
              HuffmanCode = 1;
              *a1 = 1;
            }
          }

          continue;
        case 1:
          v40 = *(a1 + 16);
          if ((v40 - 59) >= 6)
          {
            v44 = *(a1 + 8);
          }

          else
          {
            v41 = *(a1 + 32);
            HuffmanCode = 2;
            if (!v41)
            {
              continue;
            }

            v42 = *(a1 + 8);
            *(a1 + 8) = v42 >> 8;
            v43 = *(a1 + 24);
            *(&v45 + 1) = *v43;
            *&v45 = v42;
            v44 = v45 >> 8;
            *(a1 + 8) = v44;
            v40 -= 8;
            *(a1 + 24) = v43 + 1;
            *(a1 + 32) = v41 - 1;
          }

          v33 = (v44 >> v40) & 0x3F;
          *(a1 + 668) = v33;
          *(a1 + 16) = v40 + 6;
          HuffmanCode = -13;
          if ((v33 - 31) < 0xFFFFFFEB)
          {
            continue;
          }

          *a1 = 2;
LABEL_71:
          *(a1 + 80) = (1 << v33) - 16;
          v56 = (*(a1 + 40))(*(a1 + 56), 12336);
          *(a1 + 240) = v56;
          HuffmanCode = -30;
          if (!v56)
          {
            continue;
          }

          *(a1 + 248) = v56 + 7584;
          *a1 = 3;
LABEL_73:
          BrotliDecoderStateMetablockBegin(a1);
          *a1 = 4;
LABEL_74:
          HuffmanCode = DecodeMetaBlockLength(a1, (a1 + 8));
          if (HuffmanCode != 1)
          {
            continue;
          }

          v57 = *(a1 + 664);
          if ((v57 & 6) == 0)
          {
            goto LABEL_79;
          }

          v58 = *(a1 + 16);
          v59 = -v58 & 7;
          if (v59)
          {
            v60 = *(a1 + 8) >> v58;
            *(a1 + 16) = v59 + v58;
            HuffmanCode = -14;
            if ((v60 & ~(-1 << v59)) != 0)
            {
              continue;
            }
          }

          if ((v57 & 4) != 0)
          {
            v20 = 12;
            goto LABEL_185;
          }

LABEL_79:
          if (!*(a1 + 264))
          {
            goto LABEL_184;
          }

          BrotliCalculateRingBufferSize(a1);
          if ((*(a1 + 664) & 2) != 0)
          {
            v20 = 11;
            goto LABEL_185;
          }

LABEL_81:
          v52 = 0;
          *(a1 + 912) = v159;
          *v15 = 0;
          *(a1 + 752) = 0;
          *a1 = 18;
LABEL_82:
          HuffmanCode = DecodeVarLenUint8(a1, (a1 + 8), &v166[v52]);
          if (HuffmanCode == 1)
          {
            ++v166[*(a1 + 4)];
            v23 = *(a1 + 4);
            if (v166[v23] <= 1u)
            {
              *(a1 + 4) = v23 + 1;
              HuffmanCode = 1;
              continue;
            }

            v24 = v23;
            *a1 = 19;
LABEL_119:
            HuffmanCode = ReadHuffmanCode(v166[v24] + 2, v166[v24] + 2, (*(a1 + 240) + 2528 * v23), 0, a1);
            if (HuffmanCode == 1)
            {
              *a1 = 20;
LABEL_121:
              HuffmanCode = ReadHuffmanCode(26, 0x1Au, (*(a1 + 248) + 1584 * *(a1 + 4)), 0, a1);
              if (HuffmanCode == 1)
              {
                *a1 = 21;
LABEL_123:
                v91 = v14;
                v92 = v7;
                v93 = *(a1 + 4);
                v94 = *(a1 + 248);
                v168 = 0;
                if (*(a1 + 660))
                {
                  v95 = *(a1 + 268);
                  goto LABEL_134;
                }

                v96 = (v94 + 1584 * v93);
                v97 = *(a1 + 16);
                if ((v97 - 50) >= 0xF)
                {
                  v101 = *(a1 + 8);
LABEL_131:
                  v104 = v101 >> v97;
                  v105 = &v96[4 * (v101 >> v97)];
                  v106 = *v105;
                  if (v106 >= 9)
                  {
                    v97 += 8;
                    v105 += 4 * (BYTE1(v104) & ~(-1 << (v106 - 8)) & 0x7F) + 4 * *(v105 + 1);
                    v106 = *v105;
                  }

                  *(a1 + 16) = v97 + v106;
                  v95 = *(v105 + 1);
LABEL_134:
                  v107 = (&_kBrotliPrefixCodeRanges + 4 * v95);
                  v108 = *(v107 + 2);
                  v109 = *v107;
                  v110 = *(a1 + 16);
                  v111 = 64 - v110;
                  if (64 - v110 < v108)
                  {
                    v112 = *(a1 + 32) - 1;
                    while (v112 != -1)
                    {
                      v113 = *(a1 + 8);
                      *(a1 + 8) = v113 >> 8;
                      v114 = *(a1 + 24);
                      *(&v116 + 1) = *v114;
                      *&v116 = v113;
                      v115 = v116 >> 8;
                      *(a1 + 8) = v115;
                      v110 -= 8;
                      *(a1 + 16) = v110;
                      *(a1 + 24) = v114 + 1;
                      *(a1 + 32) = v112--;
                      v111 += 8;
                      if (v111 >= v108)
                      {
                        goto LABEL_140;
                      }
                    }

                    *(a1 + 268) = v95;
                    *(a1 + 660) = 1;
                    goto LABEL_142;
                  }

                  v115 = *(a1 + 8);
LABEL_140:
                  *(a1 + 16) = v110 + v108;
                  *(v160 + 4 * v93) = ((v115 >> v110) & ~(-1 << v108)) + v109;
                  *(a1 + 660) = 0;
                  v117 = *(a1 + 4) + 1;
                  *a1 = 18;
                  *(a1 + 4) = v117;
                  HuffmanCode = 1;
                }

                else
                {
                  v98 = *(a1 + 32) - 1;
                  while (v98 != -1)
                  {
                    v99 = *(a1 + 8);
                    *(a1 + 8) = v99 >> 8;
                    v100 = *(a1 + 24);
                    *(&v102 + 1) = *v100;
                    *&v102 = v99;
                    v101 = v102 >> 8;
                    *(a1 + 8) = v101;
                    v103 = v97 - 8;
                    *(a1 + 16) = v97 - 8;
                    *(a1 + 24) = v100 + 1;
                    *(a1 + 32) = v98--;
                    LODWORD(v100) = v97 - 58;
                    v97 -= 8;
                    if (v100 >= 0xF)
                    {
                      v97 = v103;
                      goto LABEL_131;
                    }
                  }

                  if (SafeDecodeSymbol(v96, a1 + 8, &v168))
                  {
                    v95 = v168;
                    goto LABEL_134;
                  }

LABEL_142:
                  HuffmanCode = 2;
                }

                v7 = v92;
                v14 = v91;
                continue;
              }
            }
          }

          continue;
        case 2:
          LODWORD(v33) = *(a1 + 668);
          goto LABEL_71;
        case 3:
          goto LABEL_73;
        case 4:
          goto LABEL_74;
        case 5:
          v46 = *(a1 + 16);
          if ((v46 - 59) >= 6)
          {
            v50 = *(a1 + 8);
          }

          else
          {
            v47 = *(a1 + 32);
            HuffmanCode = 2;
            if (!v47)
            {
              continue;
            }

            v48 = *(a1 + 8);
            *(a1 + 8) = v48 >> 8;
            v49 = *(a1 + 24);
            *(&v51 + 1) = *v49;
            *&v51 = v48;
            v50 = v51 >> 8;
            *(a1 + 8) = v50;
            v46 -= 8;
            *(a1 + 24) = v49 + 1;
            *(a1 + 32) = v47 - 1;
          }

          v61 = v50 >> v46;
          *(a1 + 16) = v46 + 6;
          v62 = (v50 >> v46) & 3;
          *(a1 + 320) = v62;
          *(a1 + 324) = ((v61 >> 2) & 0xF) << v62;
          v63 = (*(a1 + 40))(*(a1 + 56), *(a1 + 284));
          *(a1 + 688) = v63;
          HuffmanCode = -21;
          if (!v63)
          {
            continue;
          }

          LODWORD(i) = 0;
          *a1 = 6;
LABEL_88:
          LODWORD(v22) = *v166;
          if (i < *v166)
          {
            for (i = i; i < v22; ++i)
            {
              v64 = *(a1 + 16);
              if ((v64 - 63) >= 2)
              {
                v68 = *(a1 + 8);
              }

              else
              {
                v65 = *(a1 + 32);
                if (!v65)
                {
                  *(a1 + 4) = i;
LABEL_179:
                  HuffmanCode = 2;
                  goto LABEL_16;
                }

                v66 = *(a1 + 8);
                *(a1 + 8) = v66 >> 8;
                v67 = *(a1 + 24);
                *(&v69 + 1) = *v67;
                *&v69 = v66;
                v68 = v69 >> 8;
                *(a1 + 8) = v68;
                v64 -= 8;
                *(a1 + 24) = v67 + 1;
                *(a1 + 32) = v65 - 1;
              }

              *(a1 + 16) = v64 + 2;
              *(*(a1 + 688) + i) = (v68 >> v64) & 3;
              v22 = *(a1 + 284);
            }
          }

          *a1 = 22;
LABEL_96:
          HuffmanCode = DecodeContextMap(v22 << 6, (a1 + 676), v165, a1);
          if (HuffmanCode == 1)
          {
            *v164 = 0u;
            v164[1] = 0u;
            v70 = *v166;
            if (v70)
            {
              v71 = 0;
              v72 = *v165;
              v73 = *v165;
              do
              {
                v74 = 0;
                v75 = 0;
                do
                {
                  v76 = v72[64 * v71];
                  v75 |= (v73[v74 + 1] ^ v76 | v73[v74 + 2] ^ v76 | v72[v74 | (v71 << 6)] ^ v76 | v72[(v74 | (v71 << 6)) + 3] ^ v76);
                  v77 = v74 >= 0x3C;
                  v74 += 4;
                }

                while (!v77);
                if (!v75)
                {
                  *(v164 + ((v71 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v71;
                }

                ++v71;
                v73 += 64;
              }

              while (v71 != v70);
            }

            *a1 = 23;
LABEL_106:
            v78 = *(a1 + 320);
            v79 = *(a1 + 324);
            v80 = v79 + 16;
            v81 = v78 + 1;
            if ((*(a1 + 664) & 0x20) != 0)
            {
              if (v79 > 0x7FFFFFFB)
              {
                v83 = -2147483636;
              }

              else
              {
                v83 = v79 + 16;
                v84 = -1;
                v85 = -5;
                v86 = ((2147483644 - v79) >> v78) + 4;
                do
                {
                  ++v84;
                  v85 += 2;
                  v87 = v86 > 3;
                  v86 >>= 1;
                }

                while (v87);
                v88 = (((((2147483644 - v79) >> v78) + 4) >> v84) & 1) + v85;
                if (v88 != -1)
                {
                  v83 = v79 + ((v88 << v78) | ~(-1 << v78)) + 17;
                }
              }

              v82 = v80 + (62 << v81);
            }

            else
            {
              v82 = v80 + (24 << v81);
              v83 = v82;
            }

            HuffmanCode = DecodeContextMap(4 * *(a1 + 292), (a1 + 328), (a1 + 336), a1);
            if (HuffmanCode == 1)
            {
              v157 = v6;
              v158 = v14;
              v54 = v7;
              v55 = v162;
              v89 = BrotliDecoderHuffmanTreeGroupInit(a1, v162, 256, 256, *(a1 + 676));
              v90 = v89 & BrotliDecoderHuffmanTreeGroupInit(a1, v163, 704, 704, *(a1 + 288));
              if ((v90 & BrotliDecoderHuffmanTreeGroupInit(a1, v161, v82, v83, *(a1 + 328)) & 1) == 0)
              {
                v156 = a1;
                HuffmanCode = -22;
                return SaveErrorCode(v156, HuffmanCode);
              }

              v53 = 0;
              *a1 = 24;
LABEL_146:
              if (*v15 == 1)
              {
                v118 = *(a1 + 2540);
              }

              else
              {
                v118 = 0;
                *(a1 + 2544) = *(v55 + 8);
                *(a1 + 2540) = 0;
                *(a1 + 744) = 1;
              }

              if (v118 >= *(v55 + 20))
              {
LABEL_154:
                *(a1 + 744) = 0;
                *(a1 + 4) = v53 + 1;
                HuffmanCode = 1;
                v7 = v54;
                v6 = v157;
                v14 = v158;
                if (v53 >= 2)
                {
                  *a1 = 25;
LABEL_156:
                  v123 = *(a1 + 300);
                  v124 = (v123 << 6);
                  v125 = *(a1 + 680);
                  *(a1 + 152) = v125 + v124;
                  *(a1 + 256) = (*(v164 + ((v123 >> 3) & 0x1FFFFFFC)) >> v123) & 1;
                  *(a1 + 344) = *(*(a1 + 168) + 8 * *(v125 + v124));
                  *(a1 + 144) = &_kBrotliContextLookupTable[512 * (*(*(a1 + 688) + v123) & 3)];
                  *(a1 + 160) = *(a1 + 336);
                  *(a1 + 136) = **(a1 + 192);
                  v126 = BrotliEnsureRingBuffer(a1);
                  HuffmanCode = -27;
                  if (v126)
                  {
                    v127 = *(a1 + 324);
                    if (v127)
                    {
                      v128 = 16;
                      v129 = *(a1 + 324);
                      do
                      {
                        *(v15 + v128) = 0;
                        *(v16 + 4 * v128) = v128 - 15;
                        ++v128;
                        --v129;
                      }

                      while (v129);
                    }

                    else
                    {
                      v128 = 16;
                    }

                    v130 = *(a1 + 234);
                    if (v128 < v130)
                    {
                      v131 = 0;
                      v132 = *(a1 + 320);
                      v133 = 1;
                      do
                      {
                        v134 = 1;
                        do
                        {
                          v135 = v128 + v134 - 1;
                          *(v15 + v135) = v133;
                          *(v16 + 4 * v135) = v127 + ((((v131 + 2) << v133) - 4) << v132) + v134;
                        }

                        while (!(v134++ >> v132));
                        v133 += v131;
                        v131 ^= 1u;
                        v128 = v128 + v134 - 1;
                      }

                      while (v128 < v130);
                    }

                    *a1 = 7;
LABEL_169:
                    HuffmanCode = ProcessCommands(a1);
                    if (HuffmanCode == 2)
                    {
                      HuffmanCode = SafeProcessCommands(a1);
                    }
                  }
                }
              }

              else
              {
                v119 = *(a1 + 2544);
                while (1)
                {
                  v169 = 0;
                  v120 = ReadHuffmanCode(*(v55 + 16), *(v55 + 18), v119, &v169, a1);
                  if (v120 != 1)
                  {
                    break;
                  }

                  v121 = *(a1 + 2544);
                  v122 = *(a1 + 2540);
                  *(*v55 + 8 * v122) = v121;
                  v119 = (v121 + 4 * v169);
                  *(a1 + 2544) = v119;
                  *(a1 + 2540) = v122 + 1;
                  if (v122 + 1 >= *(v55 + 20))
                  {
                    v53 = *(a1 + 4);
                    goto LABEL_154;
                  }
                }

                HuffmanCode = v120;
                v7 = v54;
                v6 = v157;
                v14 = v158;
              }
            }
          }

          break;
        case 6:
          LODWORD(i) = *(a1 + 4);
          goto LABEL_88;
        case 7:
        case 8:
        case 9:
        case 0xA:
          goto LABEL_169;
        case 0xB:
          HuffmanCode = CopyUncompressedBlockToOutput(v7, v167, v6, a1);
          if (HuffmanCode == 1)
          {
            *a1 = 14;
          }

          continue;
        case 0xC:
          v26 = *(a1 + 264);
          if (v26 < 1)
          {
            goto LABEL_184;
          }

          v27 = *(a1 + 16);
          v28 = v26 + 1;
          do
          {
            if ((v27 - 57) <= 7)
            {
              v29 = *(a1 + 32);
              if (!v29)
              {
                goto LABEL_179;
              }

              v30 = *(a1 + 8);
              *(a1 + 8) = v30 >> 8;
              v31 = *(a1 + 24);
              *(&v32 + 1) = *v31;
              *&v32 = v30;
              *(a1 + 8) = v32 >> 8;
              v27 -= 8;
              *(a1 + 24) = v31 + 1;
              *(a1 + 32) = v29 - 1;
            }

            v27 += 8;
            *(a1 + 16) = v27;
            *(a1 + 264) = v28 - 2;
            --v28;
          }

          while (v28 > 1);
LABEL_184:
          v20 = 14;
          goto LABEL_185;
        case 0xD:
        case 0xF:
        case 0x10:
          HuffmanCode = WriteRingBuffer(a1, v7, v167, v6, 0);
          if (HuffmanCode != 1)
          {
            continue;
          }

          WrapRingBuffer(a1);
          if (*(a1 + 88) == 1 << *(a1 + 668))
          {
            *(a1 + 84) = *(a1 + 80);
          }

          if (*a1 == 16)
          {
            v20 = 10;
            goto LABEL_185;
          }

          if (*a1 == 15)
          {
            if (!*(a1 + 264))
            {
              goto LABEL_184;
            }

            v20 = 7;
            goto LABEL_185;
          }

          if (*(a1 + 4))
          {
            v20 = 8;
            goto LABEL_185;
          }

          if (*(a1 + 264))
          {
            v20 = 9;
            goto LABEL_185;
          }

          goto LABEL_184;
        case 0xE:
          HuffmanCode = -10;
          if ((*(a1 + 264) & 0x80000000) != 0)
          {
            continue;
          }

          BrotliDecoderStateCleanupAfterMetablock(a1);
          if ((*(a1 + 664) & 1) == 0)
          {
            v20 = 3;
LABEL_185:
            *a1 = v20;
            HuffmanCode = 1;
            continue;
          }

          v137 = *(a1 + 16);
          v138 = -v137 & 7;
          if (v138)
          {
            v139 = *(a1 + 8) >> v137;
            v137 += v138;
            *(a1 + 16) = v137;
            HuffmanCode = -15;
            if ((v139 & ~(-1 << v138)) != 0)
            {
              continue;
            }
          }

          if (!*(a1 + 72))
          {
            v140 = (64 - v137) >> 3;
            v141 = (64 - v137) & 0xFFFFFFF8;
            v142 = *(a1 + 32) + v140;
            v143 = (*(a1 + 24) - v140);
            *(a1 + 24) = v143;
            *(a1 + 32) = v142;
            if (v141 == 64)
            {
              v144 = 0;
            }

            else
            {
              v144 = *(a1 + 8) << v141;
            }

            *(a1 + 8) = v144;
            *(a1 + 16) = v141 + v137;
            *a2 = v142;
            *a3 = v143;
          }

          *a1 = 26;
LABEL_198:
          if (*(a1 + 120))
          {
            HuffmanCode = WriteRingBuffer(a1, v7, v167, v6, 1);
            if (HuffmanCode != 1)
            {
              continue;
            }
          }

          v156 = a1;
          HuffmanCode = 1;
          return SaveErrorCode(v156, HuffmanCode);
        case 0x11:
          goto LABEL_81;
        case 0x12:
          v52 = *(a1 + 4);
          if (v52 < 3)
          {
            goto LABEL_82;
          }

          v20 = 5;
          goto LABEL_185;
        case 0x13:
          v23 = *(a1 + 4);
          v24 = v23;
          goto LABEL_119;
        case 0x14:
          goto LABEL_121;
        case 0x15:
          goto LABEL_123;
        case 0x16:
          LODWORD(v22) = *v166;
          goto LABEL_96;
        case 0x17:
          goto LABEL_106;
        case 0x18:
          v157 = v6;
          v158 = v14;
          v53 = *(a1 + 4);
          if (v53)
          {
            v54 = v7;
            if (v53 == 2)
            {
              v55 = v161;
            }

            else
            {
              v55 = v163;
              if (v53 != 1)
              {
                v156 = a1;
                HuffmanCode = -31;
                return SaveErrorCode(v156, HuffmanCode);
              }
            }
          }

          else
          {
            v54 = v7;
            v55 = v162;
          }

          goto LABEL_146;
        case 0x19:
          goto LABEL_156;
        case 0x1A:
          goto LABEL_198;
        default:
          continue;
      }
    }

    if (HuffmanCode == 2)
    {
      if (*(a1 + 120) && (v17 = WriteRingBuffer(a1, v7, v167, v6, 1), (v17 & 0x80000000) != 0))
      {
        HuffmanCode = v17;
      }

      else
      {
        v18 = *(a1 + 72);
        if (v18)
        {
          if (!*(a1 + 32))
          {
            *(a1 + 72) = 0;
            v21 = *a2;
            *(a1 + 24) = *a3;
            *(a1 + 32) = v21;
            HuffmanCode = 1;
            continue;
          }

          if (*a2)
          {
            *(v14 + v18) = **a3;
            v19 = (*(a1 + 72) + 1);
            *(a1 + 72) = v19;
            *(a1 + 32) = v19;
            ++*a3;
            --*a2;
            HuffmanCode = 1;
            continue;
          }
        }

        else
        {
          v146 = *(a1 + 24);
          v147 = *(a1 + 32);
          *a3 = v146;
          *a2 = v147;
          if (v147)
          {
            v148 = 0;
            do
            {
              *(v14 + v148) = *v146;
              v148 = *(a1 + 72) + 1;
              *(a1 + 72) = v148;
              v146 = *a3 + 1;
              *a3 = v146;
            }

            while ((*a2)-- != 1);
          }
        }

        HuffmanCode = 2;
      }
    }

    else if (*(a1 + 72))
    {
      *(a1 + 72) = 0;
    }

    else
    {
      v150 = *(a1 + 16);
      v151 = (64 - v150) >> 3;
      v152 = (64 - v150) & 0xFFFFFFF8;
      v153 = *(a1 + 32) + v151;
      v154 = (*(a1 + 24) - v151);
      *(a1 + 24) = v154;
      *(a1 + 32) = v153;
      if (v152 == 64)
      {
        v155 = 0;
      }

      else
      {
        v155 = *(a1 + 8) << v152;
      }

      *(a1 + 8) = v155;
      *(a1 + 16) = v152 + v150;
      *a2 = v153;
      *a3 = v154;
    }

    break;
  }

  v156 = a1;
  return SaveErrorCode(v156, HuffmanCode);
}

uint64_t BrotliWarmupBitReader(unint64_t *a1)
{
  if (*(a1 + 2) != 64)
  {
    return 1;
  }

  v1 = a1[3];
  if (v1)
  {
    v2 = *a1;
    *a1 >>= 8;
    v3 = a1[2];
    *(&v4 + 1) = *v3;
    *&v4 = v2;
    *a1 = v4 >> 8;
    *(a1 + 2) = 56;
    a1[2] = (v3 + 1);
    a1[3] = v1 - 1;
    return 1;
  }

  return 0;
}

double BrotliDecoderStateMetablockBegin(uint64_t a1)
{
  *(a1 + 264) = 0;
  *(a1 + 272) = xmmword_29864DCB0;
  *(a1 + 288) = xmmword_29864DCC0;
  *(a1 + 304) = xmmword_29864DCD0;
  result = 0.0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 192) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0;
  *(a1 + 680) = 0u;
  return result;
}

uint64_t DecodeMetaBlockLength(uint64_t a1, unint64_t *a2)
{
  for (i = *(a1 + 648); ; *(a1 + 648) = i)
  {
    v3 = 4294967265;
    if (i >= 2)
    {
      break;
    }

    if (i)
    {
      if (i != 1)
      {
        return v3;
      }
    }

    else
    {
      v5 = *(a2 + 2);
      if (v5 == 64)
      {
        v6 = a2[3];
        if (!v6)
        {
          return 2;
        }

        v7 = *a2;
        *a2 >>= 8;
        v8 = a2[2];
        *(&v10 + 1) = *v8;
        *&v10 = v7;
        v9 = v10 >> 8;
        *a2 = v9;
        a2[2] = (v8 + 1);
        a2[3] = v6 - 1;
        v5 = 56;
      }

      else
      {
        v9 = *a2;
      }

      *(a2 + 2) = v5 + 1;
      v11 = v9 & (1 << v5);
      v12 = *(a1 + 664) & 0xFFF8;
      if (v11)
      {
        ++v12;
      }

      *(a1 + 264) = 0;
      *(a1 + 664) = v12;
      if (!v11)
      {
        i = 2;
        continue;
      }

      *(a1 + 648) = 1;
    }

    v13 = *(a2 + 2);
    if (v13 == 64)
    {
      v14 = a2[3];
      if (!v14)
      {
        return 2;
      }

      v15 = *a2;
      *a2 >>= 8;
      v16 = a2[2];
      *(&v18 + 1) = *v16;
      *&v18 = v15;
      v17 = v18 >> 8;
      *a2 = v17;
      a2[2] = (v16 + 1);
      a2[3] = v14 - 1;
      v13 = 56;
    }

    else
    {
      v17 = *a2;
    }

    v4 = v13 + 1;
    *(a2 + 2) = v13 + 1;
    if ((v17 >> v13))
    {
      goto LABEL_94;
    }

    *(a1 + 648) = 2;
LABEL_22:
    if ((v4 - 63) >= 2)
    {
      v22 = *a2;
    }

    else
    {
      v19 = a2[3];
      if (!v19)
      {
        return 2;
      }

      v20 = *a2;
      *a2 >>= 8;
      v21 = a2[2];
      *(&v23 + 1) = *v21;
      *&v23 = v20;
      v22 = v23 >> 8;
      *a2 = v22;
      v4 -= 8;
      a2[2] = (v21 + 1);
      a2[3] = v19 - 1;
    }

    v24 = (v22 >> v4) & 3;
    *(a2 + 2) = v4 + 2;
    v25 = *(a1 + 664) & 0xC03F | (v24 << 6);
    v26 = v25 | 0x100;
    *(a1 + 664) = v25 | 0x100;
    *(a1 + 4) = 0;
    if (v24 != 3)
    {
      v28 = 0;
      *(a1 + 648) = 3;
      goto LABEL_40;
    }

    *(a1 + 664) = v25 | 0x104;
    i = 5;
  }

  if (i <= 2)
  {
    v4 = *(a2 + 2);
    goto LABEL_22;
  }

  if (i <= 4)
  {
    if (i == 3)
    {
      v28 = *(a1 + 4);
      v26 = *(a1 + 664);
LABEL_40:
      if (v28 < (v26 >> 6))
      {
        v29 = *(a2 + 2);
        v30 = 4 * v28;
        do
        {
          if ((v29 - 61) >= 4)
          {
            v34 = *a2;
          }

          else
          {
            v31 = a2[3];
            if (!v31)
            {
              goto LABEL_95;
            }

            v32 = *a2;
            *a2 >>= 8;
            v33 = a2[2];
            *(&v35 + 1) = *v33;
            *&v35 = v32;
            v34 = v35 >> 8;
            *a2 = v34;
            v29 -= 8;
            a2[2] = (v33 + 1);
            a2[3] = v31 - 1;
          }

          v36 = (v34 >> v29) & 0xF;
          v29 += 4;
          *(a2 + 2) = v29;
          ++v28;
          v26 = *(a1 + 664);
          v37 = (v26 >> 6);
          v38 = v28 == v37 && v37 >= 5;
          if (v38 && v36 == 0)
          {
            return 0xFFFFFFFFLL;
          }

          *(a1 + 264) |= v36 << v30;
          v30 += 4;
        }

        while (v28 < v37);
      }

      *(a1 + 648) = 4;
      if (v26)
      {
        goto LABEL_64;
      }
    }

    else if (*(a1 + 664))
    {
      goto LABEL_64;
    }

    v40 = *(a2 + 2);
    if (v40 == 64)
    {
      v41 = a2[3];
      if (!v41)
      {
        return 2;
      }

      v42 = *a2;
      *a2 >>= 8;
      v43 = a2[2];
      *(&v45 + 1) = *v43;
      *&v45 = v42;
      v44 = v45 >> 8;
      *a2 = v44;
      a2[2] = (v43 + 1);
      a2[3] = v41 - 1;
      v40 = 56;
    }

    else
    {
      v44 = *a2;
    }

    *(a2 + 2) = v40 + 1;
    *(a1 + 664) = *(a1 + 664) & 0xFFFD | (2 * ((v44 >> v40) & 1));
LABEL_64:
    v53 = *(a1 + 264) + 1;
LABEL_93:
    *(a1 + 264) = v53;
    goto LABEL_94;
  }

  if (i == 5)
  {
    v47 = *(a2 + 2);
    if (v47 == 64)
    {
      v48 = a2[3];
      if (!v48)
      {
        return 2;
      }

      v49 = *a2;
      *a2 >>= 8;
      v50 = a2[2];
      *(&v52 + 1) = *v50;
      *&v52 = v49;
      v51 = v52 >> 8;
      *a2 = v51;
      a2[2] = (v50 + 1);
      a2[3] = v48 - 1;
      v47 = 56;
    }

    else
    {
      v51 = *a2;
    }

    v46 = v47 + 1;
    *(a2 + 2) = v47 + 1;
    if ((v51 >> v47))
    {
      return 4294967294;
    }

    *(a1 + 648) = 6;
    goto LABEL_70;
  }

  if (i == 6)
  {
    v46 = *(a2 + 2);
LABEL_70:
    if ((v46 - 63) >= 2)
    {
      v57 = *a2;
LABEL_74:
      *(a2 + 2) = v46 + 2;
      v59 = (v57 >> v46) & 3;
      if (v59)
      {
        v27 = *(a1 + 664) & 0xC03F | (v59 << 6);
        *(a1 + 664) = *(a1 + 664) & 0xC03F | (v59 << 6);
        *(a1 + 648) = 7;
        goto LABEL_76;
      }

LABEL_94:
      *(a1 + 648) = 0;
      return 1;
    }

    v54 = a2[3];
    if (v54)
    {
      v55 = *a2;
      *a2 >>= 8;
      v56 = a2[2];
      *(&v58 + 1) = *v56;
      *&v58 = v55;
      v57 = v58 >> 8;
      *a2 = v57;
      v46 -= 8;
      a2[2] = (v56 + 1);
      a2[3] = v54 - 1;
      goto LABEL_74;
    }

    return 2;
  }

  if (i != 7)
  {
    return v3;
  }

  v27 = *(a1 + 664);
LABEL_76:
  v28 = *(a1 + 4);
  if (v28 >= (v27 >> 6))
  {
    v71 = *(a1 + 264);
LABEL_92:
    v53 = v71 + 1;
    goto LABEL_93;
  }

  v60 = *(a2 + 2);
  v61 = 8 * v28;
  while (1)
  {
    if ((v60 - 57) >= 8)
    {
      v65 = *a2;
    }

    else
    {
      v62 = a2[3];
      if (!v62)
      {
LABEL_95:
        *(a1 + 4) = v28;
        return 2;
      }

      v63 = *a2;
      *a2 >>= 8;
      v64 = a2[2];
      *(&v66 + 1) = *v64;
      *&v66 = v63;
      v65 = v66 >> 8;
      *a2 = v65;
      v60 -= 8;
      a2[2] = (v64 + 1);
      a2[3] = v62 - 1;
    }

    v67 = (v65 >> v60);
    v60 += 8;
    *(a2 + 2) = v60;
    ++v28;
    v68 = (*(a1 + 664) >> 6);
    v69 = v28 == v68 && v68 >= 2;
    if (v69 && v67 == 0)
    {
      return 4294967293;
    }

    v71 = *(a1 + 264) | (v67 << v61);
    *(a1 + 264) = v71;
    v61 += 8;
    if (v28 >= v68)
    {
      goto LABEL_92;
    }
  }
}

uint64_t BrotliCalculateRingBufferSize(uint64_t result)
{
  v1 = 1 << *(result + 668);
  v2 = *(result + 88);
  if (v2)
  {
    v3 = *(result + 88);
  }

  else
  {
    v3 = 1024;
  }

  if (v2 != v1)
  {
    v4 = *(result + 664);
    if ((v4 & 4) == 0)
    {
      v5 = *(result + 120);
      if (v5)
      {
        LODWORD(v5) = *(result + 76);
      }

      v6 = *(result + 264) + v5;
      if (v3 <= v6)
      {
        v3 = v6;
      }

      if ((v4 & 0x10) != 0)
      {
        do
        {
          v7 = v1;
          v1 >>= 1;
        }

        while (v1 >= v3);
      }

      else
      {
        v7 = 1 << *(result + 668);
      }

      *(result + 672) = v7;
    }
  }

  return result;
}

uint64_t lzfseEncodeSetStateScratch(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 68);
  v3 = a2 + (32 << *(a1 + 64));
  *(a1 + 112) = a2;
  *(a1 + 120) = v3;
  v4 = v3 + 4 * v2;
  v5 = v4 + 4 * v2;
  *(a1 + 128) = v4;
  *(a1 + 136) = v5;
  *(a1 + 144) = v5 + 4 * v2;
  return 0;
}

uint64_t lz4_stream_init(uint64_t a1, int a2, int a3)
{
  if (!a3)
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  if (a2 == 1)
  {
    v6 = realloc_stream_state(*(a1 + 32), 1, 256, 0x4813Cu, 0);
    *(a1 + 32) = v6;
    if (v6)
    {
      v7 = v6;
      result = 0;
      v7[4] = 5;
      return result;
    }
  }

  else if (!a2)
  {
    v4 = realloc_stream_state(*(a1 + 32), 0, 256, 0x4813Cu, 0);
    *(a1 + 32) = v4;
    if (v4)
    {
      v4[4] = 0;
      memset_pattern8(v4 + 65615, &unk_29862DB60, 0x8000uLL);
      return 0;
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t lz4_stream_process(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  if (*v2 != 1)
  {
    if (*v2)
    {
      return 0xFFFFFFFFLL;
    }

    v5 = v2 + 16399;
    v6 = v2 + 6;
    v7 = v2 + 32815;
    for (i = v2[4]; ; v2[4] = i)
    {
      result = 0xFFFFFFFFLL;
      if (i > 2)
      {
        if (i == 3)
        {
          v16 = v2[12];
          if (*(a1 + 8) >= (v2[11] - v16))
          {
            v17 = (v2[11] - v16);
          }

          else
          {
            v17 = *(a1 + 8);
          }

          memcpy(*a1, v5 + v16, v17);
          v18 = *(a1 + 8) - v17;
          *a1 += v17;
          *(a1 + 8) = v18;
          v13 = v2[11];
          v14 = v2[12] + v17;
          v2[12] = v14;
LABEL_24:
          if (v14 < v13)
          {
            return 0;
          }

          i = 4;
          continue;
        }

        if (i != 4)
        {
          if (i == 8)
          {
            if (*(a1 + 24))
            {
              goto LABEL_99;
            }

            return 1;
          }

          return result;
        }

        if (*(a1 + 24))
        {
          memcpy(v2 + 15, v2 + 16399, 0x10000uLL);
          v2[11] = 0;
          if (v2[5])
          {
            for (j = 0; j != 0x2000; j += 2)
            {
              v2[j + 65615] -= 0x10000;
            }
          }

          i = 0;
          v2[5] = 1;
        }

        else
        {
          if (!a2)
          {
            return 0;
          }

          v2[6] = 607417954;
          *(v2 + 9) = 0x400000000;
          i = 1;
        }
      }

      else
      {
        if (i)
        {
          if (i != 1)
          {
            if (i != 2)
            {
              return result;
            }

            v10 = v2[14];
            if (*(a1 + 8) >= (v2[13] - v10))
            {
              v11 = (v2[13] - v10);
            }

            else
            {
              v11 = *(a1 + 8);
            }

            memcpy(*a1, v7 + v10, v11);
            v12 = *(a1 + 8) - v11;
            *a1 += v11;
            *(a1 + 8) = v12;
            v13 = v2[13];
            v14 = v2[14] + v11;
            v2[14] = v14;
            goto LABEL_24;
          }

          v29 = v2[9];
          v26 = v2[10];
        }

        else
        {
          v19 = v2[11];
          if (*(a1 + 24) >= (0x10000 - v19))
          {
            v20 = (0x10000 - v19);
          }

          else
          {
            v20 = *(a1 + 24);
          }

          memcpy(v5 + v19, *(a1 + 16), v20);
          v21 = *(a1 + 24) - v20;
          *(a1 + 16) += v20;
          *(a1 + 24) = v21;
          v22 = (v2[11] + v20);
          v2[11] = v22;
          if (!a2 && v22 < 0x10000)
          {
            return 0;
          }

          v61 = (v2 + 16399);
          v62 = v2 + 32815;
          if (v2[5])
          {
            v23 = (v2 + 15);
          }

          else
          {
            v23 = (v2 + 16399);
          }

          lz4_encode_2gb(&v62, 131200, &v61, v23, v22, (v2 + 65615), 0);
          v24 = v62 - v7;
          v2[13] = v62 - v7;
          v25 = v2[11];
          if (v25 <= v24)
          {
            v26 = 8;
            v27 = 758412898;
            v28 = v2 + 12;
          }

          else
          {
            v2[8] = v24;
            v26 = 12;
            v27 = 825521762;
            v28 = v2 + 14;
          }

          v29 = 0;
          v2[6] = v27;
          v2[7] = v25;
          v2[9] = 0;
          v2[10] = v26;
          *v28 = 0;
          v2[4] = 1;
        }

        v30 = v26 - v29;
        v31 = *(a1 + 8);
        if (v31 >= v30)
        {
          v32 = v30;
        }

        else
        {
          v32 = v31;
        }

        memcpy(*a1, v6 + v29, v32);
        v33 = *(a1 + 8) - v32;
        *a1 += v32;
        *(a1 + 8) = v33;
        LODWORD(v33) = v2[10];
        v34 = v2[9] + v32;
        v2[9] = v34;
        if (v34 != v33)
        {
          return 0;
        }

        v35 = *v6;
        if (*v6 == 607417954)
        {
          i = 8;
        }

        else if (v35 == 825521762)
        {
          i = 2;
        }

        else
        {
          if (v35 != 758412898)
          {
            return 0xFFFFFFFFLL;
          }

          i = 3;
        }
      }
    }
  }

  v36 = v2 + 16399;
  v37 = v2 + 6;
  v38 = v2 + 32815;
  while (1)
  {
    while (1)
    {
      v39 = v2[4];
      result = 0xFFFFFFFFLL;
      if (v39 <= 5)
      {
        break;
      }

      switch(v39)
      {
        case 6:
          v46 = v2[14];
          if (*(a1 + 24) >= (v2[13] - v46))
          {
            v47 = (v2[13] - v46);
          }

          else
          {
            v47 = *(a1 + 24);
          }

          memcpy(v38 + v46, *(a1 + 16), v47);
          v48 = *(a1 + 24) - v47;
          *(a1 + 16) += v47;
          *(a1 + 24) = v48;
          v49 = v2[13];
          LODWORD(v48) = v2[14] + v47;
          v2[14] = v48;
          if (v48 < v49)
          {
            return 0;
          }

          v61 = (v2 + 32815);
          v62 = v2 + 16399;
          if (lz4_decode_asm(&v62, (v2 + 15), (v2 + 32815), &v61, v38 + v49) || lz4_decode(&v62, (v2 + 15), v2 + 131260, &v61, v38 + v2[13]))
          {
            v2[4] = 9;
            return 0xFFFFFFFFLL;
          }

          v2[11] = v62 - v36;
LABEL_76:
          v2[12] = 0;
          v2[4] = 7;
          break;
        case 7:
          v40 = v2[12];
          if (*(a1 + 8) >= (v2[11] - v40))
          {
            v41 = (v2[11] - v40);
          }

          else
          {
            v41 = *(a1 + 8);
          }

          memcpy(*a1, v36 + v40, v41);
          v42 = *(a1 + 8) - v41;
          *a1 += v41;
          *(a1 + 8) = v42;
          LODWORD(v42) = v2[11];
          v43 = v2[12] + v41;
          v2[12] = v43;
          if (v43 < v42)
          {
            return 0;
          }

          memcpy(v2 + 15, v2 + 16399, 0x10000uLL);
          v2[9] = 0;
          v2[10] = 0;
          v2[4] = 5;
          break;
        case 8:
          return 1;
        default:
          return result;
      }
    }

    if (!v39)
    {
      v50 = v2[12];
      if (*(a1 + 24) >= (v2[11] - v50))
      {
        v51 = (v2[11] - v50);
      }

      else
      {
        v51 = *(a1 + 24);
      }

      memcpy(v36 + v50, *(a1 + 16), v51);
      v52 = *(a1 + 24) - v51;
      *(a1 + 16) += v51;
      *(a1 + 24) = v52;
      LODWORD(v52) = v2[11];
      v53 = v2[12] + v51;
      v2[12] = v53;
      if (v53 < v52)
      {
        return 0;
      }

      goto LABEL_76;
    }

    if (v39 != 5)
    {
      return result;
    }

    v44 = v2[9];
    if (v44 <= 3)
    {
      v45 = 4;
      v2[10] = 4;
      goto LABEL_82;
    }

    v54 = *v37;
    if (*v37 == 758412898)
    {
      v45 = 8;
      goto LABEL_81;
    }

    if (v54 != 825521762)
    {
      break;
    }

    v45 = 12;
LABEL_81:
    v2[10] = v45;
    if (v44 >= v45)
    {
      if (v54 == 758412898)
      {
        v60 = v2[7];
        if (v60 > 0x10000)
        {
          goto LABEL_99;
        }

        v2[11] = v60;
        v2[12] = 0;
        v2[4] = 0;
      }

      else
      {
        v59 = v2[8];
        if (v59 > 0x10000 || v2[7] >= 0x10001u)
        {
LABEL_99:
          v2[4] = 9;
          return result;
        }

        v2[13] = v59;
        v2[14] = 0;
        v2[4] = 6;
      }
    }

    else
    {
LABEL_82:
      v55 = v45 - v44;
      v56 = *(a1 + 24);
      if (v56 >= v55)
      {
        v57 = v55;
      }

      else
      {
        v57 = v56;
      }

      if (!v57)
      {
        return 0;
      }

      memcpy(v37 + v44, *(a1 + 16), v57);
      v58 = *(a1 + 24) - v57;
      *(a1 + 16) += v57;
      *(a1 + 24) = v58;
      v2[9] += v57;
    }
  }

  if (v54 == 607417954)
  {
    v2[10] = 4;
    v2[4] = 8;
    return 1;
  }

  return result;
}

uint64_t compress_block(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 5884))
  {
    v3 = 0;
    while (1)
    {
      v4 = *(*(result + 5888) + 2 * v3);
      v5 = *(*(result + 5872) + v3);
      if (*(*(result + 5888) + 2 * v3))
      {
        break;
      }

      v19 = (a2 + 4 * v5);
      v20 = v19[1];
      v21 = *(result + 5924);
      v22 = *v19;
      v23 = *(result + 5920);
      v24 = v23 | (v22 << v21);
      *(result + 5920) = v23 | (v22 << v21);
      if (v21 > 16 - v20)
      {
        v25 = *(result + 16);
        v26 = *(result + 40);
        *(result + 40) = v26 + 1;
        *(v25 + v26) = v24;
        v27 = *(result + 5921);
        v28 = *(result + 16);
        v29 = *(result + 40);
        *(result + 40) = v29 + 1;
        *(v28 + v29) = v27;
        v30 = *(result + 5924);
        *(result + 5920) = v22 >> (16 - v30);
        v31 = v20 + v30;
LABEL_24:
        v41 = v31 - 16;
        goto LABEL_26;
      }

      v41 = v21 + v20;
LABEL_26:
      *(result + 5924) = v41;
LABEL_27:
      if (++v3 >= *(result + 5884))
      {
        goto LABEL_30;
      }
    }

    v6 = _length_code[v5];
    v7 = a2 + 4 * v6;
    v8 = *(v7 + 1030);
    v9 = *(result + 5924);
    v10 = *(v7 + 1028);
    v11 = *(result + 5920);
    v12 = v11 | (v10 << v9);
    *(result + 5920) = v11 | (v10 << v9);
    if (v9 <= 16 - v8)
    {
      v18 = v9 + v8;
    }

    else
    {
      v13 = *(result + 16);
      v14 = *(result + 40);
      *(result + 40) = v14 + 1;
      *(v13 + v14) = v12;
      v15 = *(result + 5921);
      v16 = *(result + 16);
      v17 = *(result + 40);
      *(result + 40) = v17 + 1;
      *(v16 + v17) = v15;
      LODWORD(v16) = *(result + 5924);
      v12 = v10 >> (16 - v16);
      *(result + 5920) = v12;
      v18 = v8 + v16 - 16;
    }

    *(result + 5924) = v18;
    if ((v6 - 28) >= 0xFFFFFFFFFFFFFFECLL)
    {
      v32 = extra_lbits[v6];
      v33 = v5 - base_length[v6];
      v34 = v33 << v18;
      if (v18 <= 16 - v32)
      {
        v12 |= v34;
        *(result + 5920) = v12;
        v18 += v32;
      }

      else
      {
        v35 = v33;
        v36 = v12 | v34;
        *(result + 5920) = v36;
        v37 = *(result + 16);
        v38 = *(result + 40);
        *(result + 40) = v38 + 1;
        *(v37 + v38) = v36;
        LOBYTE(v36) = *(result + 5921);
        v39 = *(result + 16);
        v40 = *(result + 40);
        *(result + 40) = v40 + 1;
        *(v39 + v40) = v36;
        LODWORD(v39) = *(result + 5924);
        v12 = v35 >> (16 - v39);
        *(result + 5920) = v12;
        v18 = v32 + v39 - 16;
      }

      *(result + 5924) = v18;
    }

    v42 = v4 - 1;
    if (v4 >= 0x101)
    {
      v43 = ((v4 - 1) >> 7) + 256;
    }

    else
    {
      v43 = v4 - 1;
    }

    v44 = _dist_code[v43];
    v45 = (a3 + 4 * v44);
    v46 = v45[1];
    v47 = *v45;
    v48 = v12 | (v47 << v18);
    *(result + 5920) = v48;
    if (v18 <= 16 - v46)
    {
      v41 = v18 + v46;
    }

    else
    {
      v49 = *(result + 16);
      v50 = *(result + 40);
      *(result + 40) = v50 + 1;
      *(v49 + v50) = v48;
      v51 = *(result + 5921);
      v52 = *(result + 16);
      v53 = *(result + 40);
      *(result + 40) = v53 + 1;
      *(v52 + v53) = v51;
      LODWORD(v52) = *(result + 5924);
      v48 = v47 >> (16 - v52);
      *(result + 5920) = v48;
      v41 = v46 + v52 - 16;
    }

    *(result + 5924) = v41;
    if (v44 < 4)
    {
      goto LABEL_27;
    }

    v54 = extra_dbits[v44];
    v55 = v42 - base_dist[v44];
    v56 = v55 << v41;
    if (v41 <= 16 - v54)
    {
      *(result + 5920) = v48 | v56;
      v41 += v54;
      goto LABEL_26;
    }

    v57 = v55;
    v58 = v48 | v56;
    *(result + 5920) = v58;
    v59 = *(result + 16);
    v60 = *(result + 40);
    *(result + 40) = v60 + 1;
    *(v59 + v60) = v58;
    LOBYTE(v58) = *(result + 5921);
    v61 = *(result + 16);
    v62 = *(result + 40);
    *(result + 40) = v62 + 1;
    *(v61 + v62) = v58;
    v63 = *(result + 5924);
    *(result + 5920) = v57 >> (16 - v63);
    v31 = v54 + v63;
    goto LABEL_24;
  }

  v41 = *(result + 5924);
LABEL_30:
  v64 = *(a2 + 1026);
  v65 = *(a2 + 1024);
  v66 = *(result + 5920);
  v67 = v66 | (v65 << v41);
  *(result + 5920) = v66 | (v65 << v41);
  if (v41 <= 16 - v64)
  {
    v74 = v41 + v64;
  }

  else
  {
    v68 = *(result + 16);
    v69 = *(result + 40);
    *(result + 40) = v69 + 1;
    *(v68 + v69) = v67;
    v70 = *(result + 5921);
    v71 = *(result + 16);
    v72 = *(result + 40);
    *(result + 40) = v72 + 1;
    *(v71 + v72) = v70;
    v73 = *(result + 5924);
    *(result + 5920) = v65 >> (16 - v73);
    v74 = v64 + v73 - 16;
  }

  *(result + 5924) = v74;
  *(result + 5916) = *(a2 + 1026);
  return result;
}

uint64_t pqdownheap(uint64_t result, uint64_t a2, int a3)
{
  v3 = result + 2992;
  v4 = *(result + 2992 + 4 * a3);
  v5 = 2 * a3;
  v6 = *(result + 5284);
  if (2 * a3 <= v6)
  {
    v8 = result + 5292;
    while (1)
    {
      if (v5 >= v6)
      {
        v7 = v5;
        v9 = v5;
      }

      else
      {
        v9 = v5;
        v10 = *(v3 + 4 * (v5 | 1));
        v11 = *(a2 + 4 * v10);
        v12 = *(v3 + 4 * v5);
        v13 = *(a2 + 4 * v12);
        if (v11 >= v13)
        {
          if (v11 != v13)
          {
            v7 = v5;
            goto LABEL_9;
          }

          v17 = *(v8 + v10);
          v7 = v5;
          if (v17 > *(v8 + v12))
          {
            goto LABEL_9;
          }
        }

        v9 = v5 | 1;
        v7 = v5 | 1;
      }

LABEL_9:
      v14 = *(a2 + 4 * v4);
      v15 = *(v3 + 4 * v9);
      v16 = *(a2 + 4 * v15);
      if (v14 < v16 || v14 == v16 && *(v8 + v4) <= *(v8 + v15))
      {
        break;
      }

      *(v3 + 4 * a3) = v15;
      v5 = 2 * v7;
      v6 = *(result + 5284);
      a3 = v7;
      if (2 * v7 > v6)
      {
        goto LABEL_3;
      }
    }
  }

  v7 = a3;
LABEL_3:
  *(v3 + 4 * v7) = v4;
  return result;
}

_WORD *scan_tree(_WORD *result, uint64_t a2, int a3)
{
  v3 = *(a2 + 2);
  *(a2 + 4 * a3 + 6) = -1;
  if ((a3 & 0x80000000) == 0)
  {
    v4 = 0;
    if (v3)
    {
      v5 = 4;
    }

    else
    {
      v5 = 3;
    }

    if (v3)
    {
      v6 = 7;
    }

    else
    {
      v6 = 138;
    }

    v7 = result + 1366;
    v8 = (a3 + 1);
    v9 = (a2 + 6);
    v10 = 0xFFFFFFFFLL;
    do
    {
      v12 = *v9;
      v9 += 2;
      v11 = v12;
      v13 = v4 + 1;
      if (v4 + 1 < v6 && v3 == v11)
      {
        v3 = v10;
      }

      else
      {
        if (v13 >= v5)
        {
          if (v3)
          {
            if (v3 != v10)
            {
              ++v7[2 * v3];
            }

            ++result[1398];
          }

          else if (v4 > 9)
          {
            ++result[1402];
          }

          else
          {
            ++result[1400];
          }
        }

        else
        {
          v7[2 * v3] += v13;
        }

        if (v3 == v11)
        {
          v15 = 6;
        }

        else
        {
          v15 = 7;
        }

        if (v3 == v11)
        {
          v16 = 3;
        }

        else
        {
          v16 = 4;
        }

        v13 = 0;
        if (v11)
        {
          v6 = v15;
        }

        else
        {
          v6 = 138;
        }

        if (v11)
        {
          v5 = v16;
        }

        else
        {
          v5 = 3;
        }
      }

      v10 = v3;
      v4 = v13;
      v3 = v11;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t send_tree(uint64_t result, uint64_t a2, int a3)
{
  if ((a3 & 0x80000000) == 0)
  {
    v3 = 0;
    v4 = 0;
    v5 = *(a2 + 2);
    if (*(a2 + 2))
    {
      v6 = 7;
    }

    else
    {
      v6 = 138;
    }

    if (*(a2 + 2))
    {
      v7 = 4;
    }

    else
    {
      v7 = 3;
    }

    v8 = result + 2732;
    v9 = -1;
    do
    {
      ++v3;
      v10 = *(a2 + 4 * v3 + 2);
      v11 = v4 + 1;
      if (v4 + 1 >= v6 || v5 != v10)
      {
        if (v11 >= v7)
        {
          v22 = *(result + 5924);
          if (v5)
          {
            if (v5 != v9)
            {
              v23 = (v8 + 4 * v5);
              v24 = v23[1];
              v25 = *v23;
              v26 = *(result + 5920);
              v27 = v26 | (v25 << v22);
              *(result + 5920) = v26 | (v25 << v22);
              if (v22 <= 16 - v24)
              {
                v22 += v24;
              }

              else
              {
                v28 = *(result + 16);
                v29 = *(result + 40);
                *(result + 40) = v29 + 1;
                *(v28 + v29) = v27;
                LOBYTE(v28) = *(result + 5921);
                v30 = *(result + 16);
                v31 = *(result + 40);
                *(result + 40) = v31 + 1;
                *(v30 + v31) = v28;
                LODWORD(v28) = *(result + 5924);
                *(result + 5920) = v25 >> (16 - v28);
                v22 = v24 + v28 - 16;
              }

              *(result + 5924) = v22;
              v11 = v4;
            }

            v51 = *(result + 2798);
            v52 = *(result + 2796);
            v53 = *(result + 5920) | (v52 << v22);
            if (v22 <= 16 - v51)
            {
              v59 = v22 + v51;
            }

            else
            {
              *(result + 5920) = v53;
              v54 = *(result + 16);
              v55 = *(result + 40);
              *(result + 40) = v55 + 1;
              *(v54 + v55) = v53;
              v56 = *(result + 5921);
              v57 = *(result + 16);
              v58 = *(result + 40);
              *(result + 40) = v58 + 1;
              *(v57 + v58) = v56;
              LODWORD(v57) = *(result + 5924);
              v53 = v52 >> (16 - v57);
              v59 = v51 + v57 - 16;
            }

            *(result + 5924) = v59;
            v60 = v11 + 65533;
            v61 = v53 | (v60 << v59);
            *(result + 5920) = v61;
            if (v59 < 15)
            {
              v69 = v59 + 2;
            }

            else
            {
              v62 = *(result + 16);
              v63 = *(result + 40);
              *(result + 40) = v63 + 1;
              *(v62 + v63) = v61;
              v64 = *(result + 5921);
              v65 = *(result + 16);
              v66 = *(result + 40);
              *(result + 40) = v66 + 1;
              *(v65 + v66) = v64;
              v67 = v60;
              v68 = *(result + 5924);
              *(result + 5920) = v67 >> (16 - v68);
              v69 = v68 - 14;
            }
          }

          else
          {
            v32 = *(result + 5920);
            if (v4 > 9)
            {
              v42 = *(result + 2806);
              v43 = *(result + 2804);
              v44 = v32 | (v43 << v22);
              if (v22 <= 16 - v42)
              {
                v50 = v22 + v42;
              }

              else
              {
                *(result + 5920) = v44;
                v45 = *(result + 16);
                v46 = *(result + 40);
                *(result + 40) = v46 + 1;
                *(v45 + v46) = v44;
                v47 = *(result + 5921);
                v48 = *(result + 16);
                v49 = *(result + 40);
                *(result + 40) = v49 + 1;
                *(v48 + v49) = v47;
                LODWORD(v48) = *(result + 5924);
                v44 = v43 >> (16 - v48);
                v50 = v42 + v48 - 16;
              }

              *(result + 5924) = v50;
              v78 = v4 + 65526;
              v79 = v78 << v50;
              if (v50 < 10)
              {
                *(result + 5920) = v44 | v79;
                v69 = v50 + 7;
              }

              else
              {
                v80 = v44 | v79;
                *(result + 5920) = v80;
                v81 = *(result + 16);
                v82 = *(result + 40);
                *(result + 40) = v82 + 1;
                *(v81 + v82) = v80;
                LOBYTE(v80) = *(result + 5921);
                v83 = *(result + 16);
                v84 = *(result + 40);
                *(result + 40) = v84 + 1;
                *(v83 + v84) = v80;
                v85 = *(result + 5924);
                *(result + 5920) = v78 >> (16 - v85);
                v69 = v85 - 9;
              }
            }

            else
            {
              v33 = *(result + 2802);
              v34 = *(result + 2800);
              v35 = v32 | (v34 << v22);
              if (v22 <= 16 - v33)
              {
                v41 = v22 + v33;
              }

              else
              {
                *(result + 5920) = v35;
                v36 = *(result + 16);
                v37 = *(result + 40);
                *(result + 40) = v37 + 1;
                *(v36 + v37) = v35;
                v38 = *(result + 5921);
                v39 = *(result + 16);
                v40 = *(result + 40);
                *(result + 40) = v40 + 1;
                *(v39 + v40) = v38;
                LODWORD(v39) = *(result + 5924);
                v35 = v34 >> (16 - v39);
                v41 = v33 + v39 - 16;
              }

              *(result + 5924) = v41;
              v70 = v4 + 65534;
              v71 = v70 << v41;
              if (v41 < 14)
              {
                *(result + 5920) = v35 | v71;
                v69 = v41 + 3;
              }

              else
              {
                v72 = v35 | v71;
                *(result + 5920) = v72;
                v73 = *(result + 16);
                v74 = *(result + 40);
                *(result + 40) = v74 + 1;
                *(v73 + v74) = v72;
                LOBYTE(v72) = *(result + 5921);
                v75 = *(result + 16);
                v76 = *(result + 40);
                *(result + 40) = v76 + 1;
                *(v75 + v76) = v72;
                v77 = *(result + 5924);
                *(result + 5920) = v70 >> (16 - v77);
                v69 = v77 - 13;
              }
            }
          }

          *(result + 5924) = v69;
        }

        else
        {
          v12 = (v8 + 4 * v5);
          v13 = *(result + 5924);
          do
          {
            v14 = v12[1];
            v15 = *v12;
            v16 = *(result + 5920);
            v17 = v16 | (v15 << v13);
            *(result + 5920) = v16 | (v15 << v13);
            if (v13 <= 16 - v14)
            {
              v13 += v14;
            }

            else
            {
              v18 = *(result + 16);
              v19 = *(result + 40);
              *(result + 40) = v19 + 1;
              *(v18 + v19) = v17;
              LOBYTE(v18) = *(result + 5921);
              v20 = *(result + 16);
              v21 = *(result + 40);
              *(result + 40) = v21 + 1;
              *(v20 + v21) = v18;
              LODWORD(v18) = *(result + 5924);
              *(result + 5920) = v15 >> (16 - v18);
              v13 = v14 + v18 - 16;
            }

            *(result + 5924) = v13;
            --v11;
          }

          while (v11);
        }

        if (v5 == v10)
        {
          v86 = 3;
        }

        else
        {
          v86 = 4;
        }

        if (v5 == v10)
        {
          v87 = 6;
        }

        else
        {
          v87 = 7;
        }

        if (v10)
        {
          v7 = v86;
        }

        else
        {
          v7 = 3;
        }

        if (v10)
        {
          v6 = v87;
        }

        else
        {
          v6 = 138;
        }

        v11 = 0;
        v9 = v5;
      }

      v5 = v10;
      v4 = v11;
    }

    while (v3 != a3 + 1);
  }

  return result;
}