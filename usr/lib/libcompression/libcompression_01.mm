uint64_t bi_windup(uint64_t result)
{
  v1 = *(result + 5924);
  if (v1 >= 9)
  {
    v2 = (result + 16);
    v3 = *(result + 16);
    v4 = (result + 40);
    v5 = *(result + 40);
    v6 = *(result + 5920);
    *(result + 40) = v5 + 1;
    *(v3 + v5) = v6;
    v7 = *(result + 5921);
LABEL_5:
    v8 = *v2;
    v9 = *v4;
    *v4 = v9 + 1;
    *(v8 + v9) = v7;
    goto LABEL_6;
  }

  if (v1 >= 1)
  {
    v7 = *(result + 5920);
    v2 = (result + 16);
    v4 = (result + 40);
    goto LABEL_5;
  }

LABEL_6:
  *(result + 5920) = 0;
  *(result + 5924) = 0;
  return result;
}

void *flush_pending(void *result)
{
  v1 = *(result + 7);
  v2 = *(v1 + 40);
  v3 = *(result + 8);
  if (v2 >= v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    v5 = result;
    result = memcpy(*(result + 3), *(v1 + 32), v4);
    v5[3] += v4;
    v6 = v5[7];
    *(v6 + 32) += v4;
    v5[5] += v4;
    *(v5 + 8) -= v4;
    v7 = *(v6 + 40) - v4;
    *(v6 + 40) = v7;
    if (!v7)
    {
      *(v6 + 32) = *(v6 + 16);
    }
  }

  return result;
}

int deflateEnd(z_streamp strm)
{
  if (!strm)
  {
    return -2;
  }

  state = strm->state;
  if (!state)
  {
    return -2;
  }

  v3 = *(state + 2);
  v4 = (v3 - 69) > 0x2C || ((1 << (v3 - 69)) & 0x100400400011) == 0;
  if (v4 && v3 != 666 && v3 != 42)
  {
    return -2;
  }

  if (*(state + 2))
  {
    (strm->zfree)(strm->opaque, *(state + 2));
    state = strm->state;
  }

  if (*(state + 13))
  {
    (strm->zfree)(strm->opaque, *(state + 13));
    state = strm->state;
  }

  if (*(state + 12))
  {
    (strm->zfree)(strm->opaque, *(state + 12));
    state = strm->state;
  }

  if (*(state + 10))
  {
    (strm->zfree)(strm->opaque, *(state + 10));
    state = strm->state;
  }

  (strm->zfree)(strm->opaque, state);
  strm->state = 0;
  if (v3 == 113)
  {
    return -3;
  }

  else
  {
    return 0;
  }
}

Bytef *zlib_encode_buffer(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  if ((a4 | a2) >> 32)
  {
    return 0;
  }

  v9 = a4;
  v11 = a2;
  v20[0] = a5;
  v20[1] = 270336;
  v13 = zlib_malloc(v20, 1u, 0x70u);
  v14 = v13;
  *(v13 + 56) = 0u;
  *(v13 + 72) = 0u;
  *(v13 + 8) = 0u;
  *(v13 + 24) = 0u;
  *(v13 + 40) = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 104) = 0;
  *(v13 + 64) = zlib_malloc;
  *(v13 + 72) = zlib_free;
  *(v13 + 80) = v20;
  *(v13 + 8) = v9;
  *v13 = a3;
  *(v13 + 32) = v11;
  *(v13 + 24) = a1;
  if (a7)
  {
    v15 = 15;
  }

  else
  {
    v15 = -15;
  }

  v16 = deflateInit2_(v13, a6, 8, v15, 8, 0, "1.2.5", 112);
  result = 0;
  if (!v16)
  {
    v18 = deflate(v14, 4);
    v19 = deflateEnd(v14);
    result = 0;
    if (!v19 && v18 == 1)
    {
      return &v14->next_out[-a1];
    }
  }

  return result;
}

uint64_t zlib_malloc(uint64_t *a1, unsigned int a2, unsigned int a3)
{
  v3 = a3 * a2;
  v4 = a1[1];
  v5 = v4 - v3;
  if (v4 < v3)
  {
    return 0;
  }

  v6 = *a1;
  *a1 += v3;
  a1[1] = v5;
  return v6;
}

int deflateInit2_(z_streamp strm, int level, int method, int windowBits, int memLevel, int strategy, const char *version, int stream_size)
{
  if (!version)
  {
    return -6;
  }

  result = -6;
  if (stream_size == 112 && *version == 49)
  {
    if (!strm)
    {
      return -2;
    }

    strm->msg = 0;
    zalloc = strm->zalloc;
    if (!zalloc)
    {
      zalloc = zcalloc;
      strm->zalloc = zcalloc;
      strm->opaque = 0;
    }

    if (!strm->zfree)
    {
      strm->zfree = zcfree;
    }

    v13 = level == -1 ? 6 : level;
    v14 = windowBits - 16;
    if (windowBits > 0xF)
    {
      v15 = 2;
    }

    else
    {
      v14 = windowBits;
      v15 = 1;
    }

    if (windowBits >= 0)
    {
      v16 = v15;
    }

    else
    {
      v14 = -windowBits;
      v16 = 0;
    }

    result = -2;
    if (strategy <= 4 && v13 <= 9 && method == 8 && (memLevel - 10) >= 0xFFFFFFF7 && (v14 - 16) >= 0xFFFFFFF8)
    {
      if (v14 == 8)
      {
        v17 = 9;
      }

      else
      {
        v17 = v14;
      }

      if (zalloc == zcalloc)
      {
        v18 = calloc(1uLL, 0x1730uLL);
      }

      else
      {
        v18 = (zalloc)(strm->opaque, 1, 5936);
      }

      v19 = v18;
      if (v18)
      {
        strm->state = v18;
        *v18 = strm;
        *(v18 + 11) = v16;
        *(v18 + 6) = 0;
        *(v18 + 17) = 1 << v17;
        *(v18 + 18) = v17;
        *(v18 + 19) = (1 << v17) - 1;
        *(v18 + 29) = 128 << memLevel;
        *(v18 + 30) = memLevel + 7;
        *(v18 + 31) = (128 << memLevel) - 1;
        *(v18 + 32) = (memLevel + 9) / 3u;
        v20 = strm->zalloc;
        if (v20 == zcalloc)
        {
          v21 = calloc((1 << v17), 2uLL);
        }

        else
        {
          v21 = (v20)(strm->opaque);
        }

        *(v19 + 10) = v21;
        v22 = strm->zalloc;
        if (v22 == zcalloc)
        {
          v23 = calloc(*(v19 + 17), 2uLL);
        }

        else
        {
          v23 = (v22)(strm->opaque, *(v19 + 17), 2);
        }

        *(v19 + 12) = v23;
        v24 = strm->zalloc;
        if (v24 == zcalloc)
        {
          v25 = calloc(*(v19 + 29), 2uLL);
        }

        else
        {
          v25 = (v24)(strm->opaque, *(v19 + 29), 2);
        }

        *(v19 + 13) = v25;
        *(v19 + 741) = 0;
        *(v19 + 1470) = 64 << memLevel;
        v26 = strm->zalloc;
        if (v26 == zcalloc)
        {
          v27 = calloc((64 << memLevel), 4uLL);
        }

        else
        {
          v27 = (v26)(strm->opaque);
        }

        v28 = *(v19 + 1470);
        *(v19 + 2) = v27;
        *(v19 + 3) = 4 * v28;
        if (*(v19 + 10) && *(v19 + 12) && *(v19 + 13) && v27)
        {
          *(v19 + 736) = &v27[v28 & 0xFFFFFFFE];
          *(v19 + 734) = &v27[3 * v28];
          *(v19 + 45) = v13;
          *(v19 + 46) = strategy;
          *(v19 + 60) = 8;

          return deflateReset(strm);
        }

        *(v19 + 2) = 666;
        strm->msg = "insufficient memory";
        deflateEnd(strm);
      }

      return -4;
    }
  }

  return result;
}

int deflateReset(z_streamp strm)
{
  if (!strm)
  {
    return -2;
  }

  state = strm->state;
  if (!state || !strm->zalloc || !strm->zfree)
  {
    return -2;
  }

  strm->total_in = 0;
  strm->total_out = 0;
  strm->msg = 0;
  strm->data_type = 2;
  *(state + 10) = 0;
  *(state + 4) = *(state + 2);
  v3 = *(state + 11);
  if (v3 < 0)
  {
    v3 = -v3;
    *(state + 11) = v3;
  }

  if (v3)
  {
    v4 = 42;
  }

  else
  {
    v4 = 113;
  }

  *(state + 2) = v4;
  if (v3 == 2)
  {
    v5 = crc32(0, 0, 0);
  }

  else
  {
    v5 = adler32(0, 0, 0);
  }

  strm->adler = v5;
  *(state + 16) = 0;
  _tr_init(state);
  *(state + 11) = 2 * *(state + 17);
  v7 = *(state + 13);
  v8 = 2 * (*(state + 29) - 1);
  *&v7[v8] = 0;
  bzero(v7, v8);
  result = 0;
  v9 = (&configuration_table + 16 * *(state + 45));
  v10 = v9[2];
  *(state + 47) = *v9;
  *(state + 48) = v10;
  v11 = v9[1];
  *(state + 43) = v9[3];
  *(state + 44) = v11;
  *(state + 17) = 0;
  *(state + 164) = 0x200000000;
  *(state + 36) = 2;
  *(state + 19) = 0;
  *(state + 28) = 0;
  return result;
}

uLong adler32(uLong adler, const Bytef *buf, uInt len)
{
  v5 = WORD1(adler);
  adler = adler;
  if (len == 1)
  {
    v6 = adler + *buf;
    if (v6 > 0xFFF0)
    {
      v6 -= 65521;
    }

    if (v6 + v5 <= 0xFFF0)
    {
      v7 = (v6 + v5) << 16;
    }

    else
    {
      v7 = ((v6 + v5) << 16) - 4293984256u;
    }

    return v7 | v6;
  }

  else if (buf)
  {
    if (len >= 16)
    {
      if ((buf & 0xF) != 0)
      {
        v11 = buf + 1;
        v12 = buf;
        do
        {
          --len;
          v13 = *v12++;
          v14 = adler + v13;
          if (v14 <= 0xFFF0)
          {
            adler = v14;
          }

          else
          {
            adler = v14 - 65521;
          }

          v5 = (v14 + v5) % 0xFFF1;
        }

        while ((v11++ & 0xF) != 0);
        buf = &buf[-(buf & 0xF) + 16];
      }

      return adler32_vec(adler, v5, buf, len);
    }

    else
    {
      for (; len; --len)
      {
        v9 = *buf++;
        adler += v9;
        v5 += adler;
      }

      v10 = adler - 65521;
      if (adler <= 0xFFF0)
      {
        v10 = adler;
      }

      return v10 | ((v5 % 0xFFF1) << 16);
    }
  }

  else
  {
    return 1;
  }
}

double _tr_init(uint64_t a1)
{
  *(a1 + 2888) = a1 + 196;
  *(a1 + 2904) = &static_l_desc;
  *(a1 + 2912) = a1 + 2488;
  *(a1 + 2928) = &static_d_desc;
  *(a1 + 2936) = a1 + 2732;
  *(a1 + 2952) = &static_bl_desc;
  *(a1 + 5920) = 0;
  *(a1 + 5924) = 0;
  *(a1 + 5916) = 8;
  return init_block(a1);
}

double init_block(uint64_t a1)
{
  v1 = xmmword_29862E060;
  v2 = xmmword_29862E070;
  v3 = xmmword_29862D9C0;
  v4 = xmmword_29862D9D0;
  v5 = (a1 + 224);
  v6 = 288;
  v7 = vdupq_n_s64(0x11EuLL);
  v8 = vdupq_n_s64(8uLL);
  do
  {
    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(v7, v4)), *v1.i8), *v1.i8).u8[0])
    {
      *(v5 - 14) = 0;
    }

    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x11EuLL), *&v4)), *&v1), *&v1).i8[1])
    {
      *(v5 - 12) = 0;
    }

    if (vuzp1_s8(vuzp1_s16(*&v1, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x11EuLL), *&v3))), *&v1).i8[2])
    {
      *(v5 - 10) = 0;
      *(v5 - 8) = 0;
    }

    if (vuzp1_s8(*&v1, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x11EuLL), *&v2)), *&v1)).i32[1])
    {
      *(v5 - 6) = 0;
    }

    if (vuzp1_s8(*&v1, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x11EuLL), *&v2)), *&v1)).i8[5])
    {
      *(v5 - 4) = 0;
    }

    if (vuzp1_s8(*&v1, vuzp1_s16(*&v1, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x11EuLL), *&v1)))).i8[6])
    {
      *(v5 - 2) = 0;
      *v5 = 0;
    }

    v2 = vaddq_s64(v2, v8);
    v3 = vaddq_s64(v3, v8);
    v4 = vaddq_s64(v4, v8);
    v5 += 16;
    v1 = vaddq_s64(v1, v8);
    v6 -= 8;
  }

  while (v6);
  v9 = xmmword_29862E060;
  v10 = xmmword_29862E070;
  v11 = xmmword_29862D9C0;
  v12 = xmmword_29862D9D0;
  v13 = (a1 + 2516);
  v14 = 32;
  v15 = vdupq_n_s64(0x1EuLL);
  v16 = vdupq_n_s64(8uLL);
  do
  {
    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(v15, v12)), *v9.i8), *v9.i8).u8[0])
    {
      *(v13 - 14) = 0;
    }

    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1EuLL), *&v12)), *&v9), *&v9).i8[1])
    {
      *(v13 - 12) = 0;
    }

    if (vuzp1_s8(vuzp1_s16(*&v9, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1EuLL), *&v11))), *&v9).i8[2])
    {
      *(v13 - 10) = 0;
      *(v13 - 8) = 0;
    }

    if (vuzp1_s8(*&v9, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1EuLL), *&v10)), *&v9)).i32[1])
    {
      *(v13 - 6) = 0;
    }

    if (vuzp1_s8(*&v9, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1EuLL), *&v10)), *&v9)).i8[5])
    {
      *(v13 - 4) = 0;
    }

    if (vuzp1_s8(*&v9, vuzp1_s16(*&v9, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1EuLL), *&v9)))).i8[6])
    {
      *(v13 - 2) = 0;
      *v13 = 0;
    }

    v10 = vaddq_s64(v10, v16);
    v11 = vaddq_s64(v11, v16);
    v12 = vaddq_s64(v12, v16);
    v13 += 16;
    v9 = vaddq_s64(v9, v16);
    v14 -= 8;
  }

  while (v14);
  v17 = xmmword_29862D9C0;
  v18 = xmmword_29862D9D0;
  v19 = (a1 + 2744);
  v20 = 20;
  v21 = vdupq_n_s64(0x13uLL);
  v22 = vdupq_n_s64(4uLL);
  do
  {
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(v21, v18)), *v17.i8).u8[0])
    {
      *(v19 - 6) = 0;
    }

    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x13uLL), *&v18)), *&v17).i8[2])
    {
      *(v19 - 4) = 0;
    }

    if (vuzp1_s16(*&v17, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x13uLL), *&v17))).i32[1])
    {
      *(v19 - 2) = 0;
      *v19 = 0;
    }

    v17 = vaddq_s64(v17, v22);
    v18 = vaddq_s64(v18, v22);
    v19 += 8;
    v20 -= 4;
  }

  while (v20);
  *(a1 + 1220) = 1;
  *(a1 + 5884) = 0;
  result = 0.0;
  *(a1 + 5896) = 0u;
  *(a1 + 5912) = 0;
  return result;
}

int deflate(z_streamp strm, int flush)
{
  if (!strm)
  {
    return -2;
  }

  v2 = *&flush;
  result = -2;
  if (flush <= 5)
  {
    state = strm->state;
    if (state)
    {
      if (!strm->next_out || !strm->next_in && strm->avail_in || (v6 = *(state + 2), flush != 4) && v6 == 666)
      {
        strm->msg = "stream error";
        return result;
      }

      if (!strm->avail_out)
      {
        goto LABEL_136;
      }

      *state = strm;
      v7 = *(state + 16);
      *(state + 16) = flush;
      if (v6 == 42)
      {
        if (*(state + 11) == 2)
        {
          strm->adler = crc32(0, 0, 0);
          v8 = *(state + 2);
          v9 = *(state + 10);
          *(state + 10) = v9 + 1;
          *(v8 + v9) = 31;
          v10 = *(state + 2);
          v11 = *(state + 10);
          *(state + 10) = v11 + 1;
          *(v10 + v11) = -117;
          v12 = *(state + 2);
          v13 = *(state + 10);
          *(state + 10) = v13 + 1;
          *(v12 + v13) = 8;
          v14 = *(state + 6);
          if (!v14)
          {
            v52 = *(state + 2);
            v53 = *(state + 10);
            *(state + 10) = v53 + 1;
            *(v52 + v53) = 0;
            v54 = *(state + 2);
            v55 = *(state + 10);
            *(state + 10) = v55 + 1;
            *(v54 + v55) = 0;
            v56 = *(state + 2);
            v57 = *(state + 10);
            *(state + 10) = v57 + 1;
            *(v56 + v57) = 0;
            v58 = *(state + 2);
            v59 = *(state + 10);
            *(state + 10) = v59 + 1;
            *(v58 + v59) = 0;
            v60 = *(state + 2);
            v61 = *(state + 10);
            *(state + 10) = v61 + 1;
            *(v60 + v61) = 0;
            v62 = *(state + 45);
            if (v62 == 9)
            {
              v63 = 2;
            }

            else if (*(state + 46) > 1 || v62 < 2)
            {
              v63 = 4;
            }

            else
            {
              v63 = 0;
            }

            v112 = *(state + 2);
            v113 = *(state + 10);
            *(state + 10) = v113 + 1;
            *(v112 + v113) = v63;
            v114 = *(state + 2);
            v115 = *(state + 10);
            *(state + 10) = v115 + 1;
            *(v114 + v115) = 7;
LABEL_127:
            *(state + 2) = 113;
            goto LABEL_128;
          }

          v15 = (*v14 != 0) | (2 * (*(v14 + 68) != 0)) | (4 * (*(v14 + 24) != 0)) | (8 * (*(v14 + 40) != 0)) | (16 * (*(v14 + 56) != 0));
          v16 = *(state + 2);
          v17 = *(state + 10);
          *(state + 10) = v17 + 1;
          *(v16 + v17) = v15;
          v18 = *(*(state + 6) + 8);
          v19 = *(state + 2);
          v20 = *(state + 10);
          *(state + 10) = v20 + 1;
          *(v19 + v20) = v18;
          v21 = *(*(state + 6) + 8) >> 8;
          v22 = *(state + 2);
          v23 = *(state + 10);
          *(state + 10) = v23 + 1;
          *(v22 + v23) = v21;
          v24 = *(*(state + 6) + 8) >> 16;
          v25 = *(state + 2);
          v26 = *(state + 10);
          *(state + 10) = v26 + 1;
          *(v25 + v26) = v24;
          v27 = *(*(state + 6) + 8) >> 24;
          v28 = *(state + 2);
          v29 = *(state + 10);
          *(state + 10) = v29 + 1;
          *(v28 + v29) = v27;
          v30 = *(state + 45);
          if (v30 == 9)
          {
            v31 = 2;
          }

          else if (*(state + 46) > 1 || v30 < 2)
          {
            v31 = 4;
          }

          else
          {
            v31 = 0;
          }

          v65 = *(state + 2);
          v66 = *(state + 10);
          *(state + 10) = v66 + 1;
          *(v65 + v66) = v31;
          v67 = *(*(state + 6) + 20);
          v68 = *(state + 2);
          v69 = *(state + 10);
          *(state + 10) = v69 + 1;
          *(v68 + v69) = v67;
          v70 = *(state + 6);
          if (*(v70 + 24))
          {
            v71 = *(v70 + 32);
            v72 = *(state + 2);
            v73 = *(state + 10);
            *(state + 10) = v73 + 1;
            *(v72 + v73) = v71;
            v74 = *(*(state + 6) + 32) >> 8;
            v75 = *(state + 2);
            v76 = *(state + 10);
            *(state + 10) = v76 + 1;
            *(v75 + v76) = v74;
            v70 = *(state + 6);
          }

          if (*(v70 + 68))
          {
            strm->adler = crc32(strm->adler, *(state + 2), *(state + 10));
          }

          *(state + 14) = 0;
          *(state + 2) = 69;
LABEL_49:
          v77 = *(state + 6);
          if (!*(v77 + 24))
          {
            goto LABEL_68;
          }

          v78 = *(state + 10);
          v79 = *(state + 14);
          while (1)
          {
            if (v79 >= *(v77 + 32))
            {
              goto LABEL_63;
            }

            v80 = *(state + 10);
            if (*(state + 3) == v80)
            {
              if (*(v77 + 68))
              {
                v81 = v80 > v78;
              }

              else
              {
                v81 = 0;
              }

              if (v81)
              {
                strm->adler = crc32(strm->adler, (*(state + 2) + v78), v80 - v78);
              }

              flush_pending(strm);
              v80 = *(state + 10);
              v77 = *(state + 6);
              if (*(state + 3) == v80)
              {
                v78 = *(state + 10);
LABEL_63:
                if (*(v77 + 68))
                {
                  v84 = *(state + 10);
                  if (v84 > v78)
                  {
                    strm->adler = crc32(strm->adler, (*(state + 2) + v78), v84 - v78);
                    v77 = *(state + 6);
                  }
                }

                if (*(state + 14) == *(v77 + 32))
                {
                  *(state + 14) = 0;
LABEL_68:
                  *(state + 2) = 73;
LABEL_72:
                  if (*(v77 + 40))
                  {
                    v85 = *(state + 10);
                    do
                    {
                      v86 = *(state + 10);
                      v87 = *(state + 6);
                      if (*(state + 3) == v86)
                      {
                        if (*(v87 + 68))
                        {
                          v88 = v86 > v85;
                        }

                        else
                        {
                          v88 = 0;
                        }

                        if (v88)
                        {
                          strm->adler = crc32(strm->adler, (*(state + 2) + v85), v86 - v85);
                        }

                        flush_pending(strm);
                        v86 = *(state + 10);
                        if (*(state + 3) == v86)
                        {
                          v92 = 0;
                          goto LABEL_86;
                        }

                        v87 = *(state + 6);
                        v85 = *(state + 10);
                      }

                      v89 = *(v87 + 40);
                      v90 = *(state + 14);
                      *(state + 14) = v90 + 1;
                      LODWORD(v89) = *(v89 + v90);
                      v91 = *(state + 2);
                      *(state + 10) = v86 + 1;
                      *(v91 + v86) = v89;
                    }

                    while (v89);
                    v92 = 1;
                    LODWORD(v86) = v85;
LABEL_86:
                    if (*(*(state + 6) + 68))
                    {
                      v93 = *(state + 10);
                      if (v93 > v86)
                      {
                        strm->adler = crc32(strm->adler, (*(state + 2) + v86), v93 - v86);
                      }
                    }

                    if (v92)
                    {
                      *(state + 14) = 0;
                      goto LABEL_91;
                    }

                    v6 = *(state + 2);
LABEL_93:
                    if (v6 != 91)
                    {
                      goto LABEL_114;
                    }
                  }

                  else
                  {
LABEL_91:
                    *(state + 2) = 91;
                  }

                  if (!*(*(state + 6) + 56))
                  {
                    goto LABEL_112;
                  }

                  v94 = *(state + 10);
                  while (1)
                  {
                    v95 = *(state + 10);
                    v96 = *(state + 6);
                    if (*(state + 3) == v95)
                    {
                      if (*(v96 + 68))
                      {
                        v97 = v95 > v94;
                      }

                      else
                      {
                        v97 = 0;
                      }

                      if (v97)
                      {
                        strm->adler = crc32(strm->adler, (*(state + 2) + v94), v95 - v94);
                      }

                      flush_pending(strm);
                      v95 = *(state + 10);
                      if (*(state + 3) == v95)
                      {
                        v101 = 0;
LABEL_108:
                        if (*(*(state + 6) + 68))
                        {
                          v102 = *(state + 10);
                          if (v102 > v95)
                          {
                            strm->adler = crc32(strm->adler, (*(state + 2) + v95), v102 - v95);
                          }
                        }

                        if (v101)
                        {
LABEL_112:
                          *(state + 2) = 103;
                          goto LABEL_115;
                        }

                        v6 = *(state + 2);
LABEL_114:
                        if (v6 == 103)
                        {
LABEL_115:
                          if (!*(*(state + 6) + 68))
                          {
                            goto LABEL_127;
                          }

                          v103 = *(state + 10);
                          v104 = v103 + 2;
                          v105 = *(state + 3);
                          if (v105 < v104)
                          {
                            flush_pending(strm);
                            v103 = *(state + 10);
                            v105 = *(state + 3);
                            v104 = v103 + 2;
                          }

                          if (v105 >= v104)
                          {
                            adler = strm->adler;
                            v107 = *(state + 2);
                            *(state + 10) = v103 + 1;
                            *(v107 + v103) = adler;
                            v108 = strm->adler >> 8;
                            v109 = *(state + 2);
                            v110 = *(state + 10);
                            *(state + 10) = v110 + 1;
                            *(v109 + v110) = v108;
                            strm->adler = crc32(0, 0, 0);
                            goto LABEL_127;
                          }
                        }

LABEL_128:
                        if (*(state + 10))
                        {
                          flush_pending(strm);
                          if (strm->avail_out)
                          {
                            goto LABEL_130;
                          }

LABEL_162:
                          result = 0;
                          *(state + 16) = -1;
                          return result;
                        }

                        if (!strm->avail_in && v2 != 4 && v7 >= v2)
                        {
LABEL_136:
                          strm->msg = "buffer error";
                          return -5;
                        }

LABEL_130:
                        v116 = *(state + 2);
                        avail_in = strm->avail_in;
                        if (v116 != 666)
                        {
                          if (!avail_in)
                          {
                            goto LABEL_138;
                          }

                          goto LABEL_139;
                        }

                        if (avail_in)
                        {
                          goto LABEL_136;
                        }

LABEL_138:
                        if (*(state + 41))
                        {
LABEL_139:
                          v118 = *(state + 46);
                          if (v118 == 3)
                          {
                            v119 = deflate_rle(state, v2);
                          }

                          else if (v118 == 2)
                          {
                            v119 = deflate_huff(state, v2);
                          }

                          else
                          {
                            v119 = configuration_table[2 * *(state + 45) + 1](state, v2);
                          }

                          if ((v119 & 0xFFFFFFFE) == 2)
                          {
                            *(state + 2) = 666;
                          }

                          if ((v119 & 0xFFFFFFFD) != 0)
                          {
                            if (v119 == 1)
                            {
                              if (v2 != 5)
                              {
                                if (v2 == 1)
                                {
                                  _tr_align(state);
                                }

                                else
                                {
                                  _tr_stored_block(state, 0, 0, 0);
                                  if (v2 == 3)
                                  {
                                    v120 = *(state + 13);
                                    v121 = 2 * (*(state + 29) - 1);
                                    *&v120[v121] = 0;
                                    bzero(v120, v121);
                                    if (!*(state + 41))
                                    {
                                      *(state + 39) = 0;
                                      *(state + 17) = 0;
                                    }
                                  }
                                }
                              }

                              flush_pending(strm);
                              if (!strm->avail_out)
                              {
                                goto LABEL_162;
                              }
                            }

                            goto LABEL_160;
                          }

                          if (!strm->avail_out)
                          {
                            goto LABEL_162;
                          }
                        }

                        else if (v2)
                        {
                          if (v116 != 666)
                          {
                            goto LABEL_139;
                          }

LABEL_160:
                          if (v2 == 4)
                          {
                            v122 = *(state + 11);
                            if (v122 < 1)
                            {
                              return 1;
                            }

                            v123 = strm->adler;
                            if (v122 == 2)
                            {
                              v124 = *(state + 2);
                              v125 = *(state + 10);
                              *(state + 10) = v125 + 1;
                              *(v124 + v125) = v123;
                              v126 = strm->adler >> 8;
                              v127 = *(state + 2);
                              v128 = *(state + 10);
                              *(state + 10) = v128 + 1;
                              *(v127 + v128) = v126;
                              v129 = strm->adler >> 16;
                              v130 = *(state + 2);
                              v131 = *(state + 10);
                              *(state + 10) = v131 + 1;
                              *(v130 + v131) = v129;
                              v132 = strm->adler >> 24;
                              v133 = *(state + 2);
                              v134 = *(state + 10);
                              *(state + 10) = v134 + 1;
                              *(v133 + v134) = v132;
                              total_in = strm->total_in;
                              v136 = *(state + 2);
                              v137 = *(state + 10);
                              *(state + 10) = v137 + 1;
                              *(v136 + v137) = total_in;
                              v138 = strm->total_in >> 8;
                              v139 = *(state + 2);
                              v140 = *(state + 10);
                              *(state + 10) = v140 + 1;
                              *(v139 + v140) = v138;
                              v141 = strm->total_in >> 16;
                              v142 = *(state + 2);
                              v143 = *(state + 10);
                              *(state + 10) = v143 + 1;
                              *(v142 + v143) = v141;
                              v144 = strm->total_in >> 24;
                            }

                            else
                            {
                              v145 = v123 >> 16;
                              v146 = *(state + 2);
                              v147 = *(state + 10);
                              *(state + 10) = v147 + 1;
                              *(v146 + v147) = BYTE3(v123);
                              v148 = *(state + 2);
                              v149 = *(state + 10);
                              *(state + 10) = v149 + 1;
                              *(v148 + v149) = v145;
                              v144 = strm->adler;
                              v150 = *(state + 2);
                              v151 = *(state + 10);
                              *(state + 10) = v151 + 1;
                              *(v150 + v151) = BYTE1(v144);
                            }

                            v152 = *(state + 2);
                            v153 = *(state + 10);
                            *(state + 10) = v153 + 1;
                            *(v152 + v153) = v144;
                            flush_pending(strm);
                            v154 = *(state + 11);
                            if (v154 >= 1)
                            {
                              *(state + 11) = -v154;
                            }

                            return *(state + 10) == 0;
                          }
                        }

                        return 0;
                      }

                      v96 = *(state + 6);
                      v94 = *(state + 10);
                    }

                    v98 = *(v96 + 56);
                    v99 = *(state + 14);
                    *(state + 14) = v99 + 1;
                    LODWORD(v98) = *(v98 + v99);
                    v100 = *(state + 2);
                    *(state + 10) = v95 + 1;
                    *(v100 + v95) = v98;
                    if (!v98)
                    {
                      v101 = 1;
                      LODWORD(v95) = v94;
                      goto LABEL_108;
                    }
                  }
                }

                v6 = *(state + 2);
LABEL_70:
                if (v6 == 73)
                {
                  v77 = *(state + 6);
                  goto LABEL_72;
                }

                goto LABEL_93;
              }

              v79 = *(state + 14);
              v78 = *(state + 10);
            }

            v82 = *(*(v77 + 24) + v79);
            v83 = *(state + 2);
            *(state + 10) = v80 + 1;
            *(v83 + v80) = v82;
            v79 = *(state + 14) + 1;
            *(state + 14) = v79;
            v77 = *(state + 6);
          }
        }

        if (*(state + 46) <= 1)
        {
          v33 = *(state + 45);
          if (v33 == 6)
          {
            v34 = 128;
          }

          else
          {
            v34 = 192;
          }

          if (v33 >= 6)
          {
            v35 = v34;
          }

          else
          {
            v35 = 64;
          }

          if (v33 >= 2)
          {
            v32 = v35;
          }

          else
          {
            v32 = 0;
          }
        }

        else
        {
          v32 = 0;
        }

        v36 = v32 | ((*(state + 18) << 12) - 30720);
        if (*(state + 39))
        {
          v36 |= 0x20u;
        }

        *(state + 2) = 113;
        v37 = *(state + 2);
        v38 = *(state + 10);
        *(state + 10) = v38 + 1;
        *(v37 + v38) = BYTE1(v36);
        v39 = *(state + 2);
        v40 = *(state + 10);
        *(state + 10) = v40 + 1;
        *(v39 + v40) = ((v36 % 0x1F) | v36) ^ 0x1F;
        if (*(state + 39))
        {
          v41 = strm->adler;
          v42 = v41 >> 16;
          v43 = *(state + 2);
          v44 = *(state + 10);
          *(state + 10) = v44 + 1;
          *(v43 + v44) = BYTE3(v41);
          v45 = *(state + 2);
          v46 = *(state + 10);
          *(state + 10) = v46 + 1;
          *(v45 + v46) = v42;
          v47 = strm->adler;
          v48 = *(state + 2);
          v49 = *(state + 10);
          *(state + 10) = v49 + 1;
          *(v48 + v49) = BYTE1(v47);
          v50 = *(state + 2);
          v51 = *(state + 10);
          *(state + 10) = v51 + 1;
          *(v50 + v51) = v47;
        }

        strm->adler = adler32(0, 0, 0);
        v6 = *(state + 2);
      }

      if (v6 != 69)
      {
        goto LABEL_70;
      }

      goto LABEL_49;
    }
  }

  return result;
}

uint64_t deflate_slow(uint64_t a1, int a2)
{
  v4 = a1 + 196;
  v5 = a1 + 2488;
  while (1)
  {
    if (*(a1 + 164) >= 0x106u)
    {
      v7 = *(a1 + 144);
      v8 = *(a1 + 160);
      goto LABEL_9;
    }

    fill_window(a1);
    v6 = *(a1 + 164);
    if (!a2 && v6 < 0x106)
    {
      return 0;
    }

    if (!v6)
    {
      break;
    }

    v7 = *(a1 + 144);
    v8 = *(a1 + 160);
    if (v6 <= 2)
    {
      *(a1 + 168) = v7;
      v9 = 2;
      *(a1 + 144) = 2;
      *(a1 + 148) = v8;
      goto LABEL_19;
    }

LABEL_9:
    v10 = *(a1 + 156);
    v11 = ((*(a1 + 112) << *(a1 + 128)) ^ *(*(a1 + 80) + v10 + 2)) & *(a1 + 124);
    *(a1 + 112) = v11;
    v12 = *(a1 + 104);
    v13 = *(v12 + 2 * v11);
    *(*(a1 + 96) + 2 * (*(a1 + 76) & v10)) = v13;
    *(v12 + 2 * v11) = v10;
    *(a1 + 168) = v7;
    v9 = 2;
    *(a1 + 144) = 2;
    *(a1 + 148) = v8;
    if (!v13)
    {
      goto LABEL_19;
    }

    if (v7 < *(a1 + 176) && v10 - v13 <= *(a1 + 68) - 262)
    {
      v9 = longest_match(a1, v13);
      *(a1 + 144) = v9;
      if (v9 <= 5)
      {
        if (*(a1 + 184) != 1)
        {
          if (v9 != 3)
          {
            goto LABEL_18;
          }

          if ((*(a1 + 156) - *(a1 + 160)) <= 0x1000)
          {
            v9 = 3;
            goto LABEL_18;
          }
        }

        v9 = 2;
        *(a1 + 144) = 2;
      }
    }

LABEL_18:
    v7 = *(a1 + 168);
LABEL_19:
    v14 = v7 - 3;
    if (v7 < 3 || v9 > v7)
    {
      if (*(a1 + 152))
      {
        v31 = *(*(a1 + 80) + (*(a1 + 156) - 1));
        v32 = *(a1 + 5884);
        *(*(a1 + 5888) + 2 * v32) = 0;
        v33 = *(a1 + 5872);
        *(a1 + 5884) = v32 + 1;
        *(v33 + v32) = v31;
        ++*(v4 + 4 * v31);
        if (*(a1 + 5884) == *(a1 + 5880) - 1)
        {
          v34 = *(a1 + 136);
          if (v34 < 0)
          {
            v35 = 0;
          }

          else
          {
            v35 = (*(a1 + 80) + v34);
          }

          _tr_flush_block(a1, v35, *(a1 + 156) - v34, 0);
          *(a1 + 136) = *(a1 + 156);
          flush_pending(*a1);
        }

        ++*(a1 + 156);
        --*(a1 + 164);
        goto LABEL_40;
      }

      v36 = *(a1 + 156) + 1;
      *(a1 + 152) = 1;
      *(a1 + 156) = v36;
      --*(a1 + 164);
    }

    else
    {
      v15 = *(a1 + 156);
      v16 = v15 + *(a1 + 164) - 3;
      v17 = v15 + ~*(a1 + 148);
      v18 = *(a1 + 5884);
      *(*(a1 + 5888) + 2 * v18) = v17;
      v19 = *(a1 + 5872);
      *(a1 + 5884) = v18 + 1;
      *(v19 + v18) = v14;
      v20 = v17 - 1;
      v21 = v4 + 4 * _length_code[v14];
      ++*(v21 + 1028);
      v22 = (v20 >> 7) + 256;
      if ((v20 & 0xFF00) == 0)
      {
        v22 = v20;
      }

      v26 = 4 * _dist_code[v22];
      ++*(v5 + v26);
      v23 = *(a1 + 5884);
      v24 = *(a1 + 5880) - 1;
      LODWORD(v26) = *(a1 + 168);
      *(a1 + 164) = *(a1 + 164) - v26 + 1;
      *(a1 + 168) = v26 - 2;
      v25 = v26 - 3;
      LODWORD(v26) = *(a1 + 156) + 1;
      do
      {
        *(a1 + 156) = v26;
        if (v26 <= v16)
        {
          v27 = ((*(a1 + 112) << *(a1 + 128)) ^ *(*(a1 + 80) + (v26 + 2))) & *(a1 + 124);
          *(a1 + 112) = v27;
          v28 = *(a1 + 104);
          *(*(a1 + 96) + 2 * (*(a1 + 76) & v26)) = *(v28 + 2 * v27);
          *(v28 + 2 * v27) = v26;
        }

        *(a1 + 168) = v25--;
        v26 = (v26 + 1);
      }

      while (v25 != -1);
      *(a1 + 144) = 2;
      *(a1 + 152) = 0;
      *(a1 + 156) = v26;
      if (v23 == v24)
      {
        v29 = *(a1 + 136);
        if (v29 < 0)
        {
          v30 = 0;
        }

        else
        {
          v30 = (*(a1 + 80) + v29);
        }

        _tr_flush_block(a1, v30, v26 - v29, 0);
        *(a1 + 136) = *(a1 + 156);
        flush_pending(*a1);
LABEL_40:
        if (!*(*a1 + 32))
        {
          return 0;
        }
      }
    }
  }

  if (*(a1 + 152))
  {
    v38 = *(*(a1 + 80) + (*(a1 + 156) - 1));
    v39 = *(a1 + 5884);
    *(*(a1 + 5888) + 2 * v39) = 0;
    v40 = *(a1 + 5872);
    *(a1 + 5884) = v39 + 1;
    *(v40 + v39) = v38;
    ++*(v4 + 4 * v38);
    *(a1 + 152) = 0;
  }

  v41 = *(a1 + 136);
  if (v41 < 0)
  {
    v42 = 0;
  }

  else
  {
    v42 = (*(a1 + 80) + v41);
  }

  _tr_flush_block(a1, v42, *(a1 + 156) - v41, a2 == 4);
  *(a1 + 136) = *(a1 + 156);
  flush_pending(*a1);
  if (!*(*a1 + 32))
  {
    return 2 * (a2 == 4);
  }

  if (a2 == 4)
  {
    return 3;
  }

  return 1;
}

void fill_window(uint64_t *a1)
{
  v2 = *(a1 + 17);
  v3 = *(a1 + 41);
  v4 = vdup_n_s32(v2);
  while (1)
  {
    v5 = *(a1 + 39);
    v6 = *(a1 + 22) - (v3 + v5);
    if (v5 >= v2 - 262 + *(a1 + 17))
    {
      memcpy(a1[10], (a1[10] + v2), v2);
      v7 = vsub_s32(*(a1 + 156), v4);
      *(a1 + 156) = v7;
      a1[17] -= v2;
      v8 = *(a1 + 29);
      v9 = (a1[13] + 2 * v8 - 2);
      do
      {
        v10 = *v9;
        v11 = v10 >= v2;
        v12 = v10 - v2;
        if (!v11)
        {
          v12 = 0;
        }

        *v9-- = v12;
        LODWORD(v8) = v8 - 1;
      }

      while (v8);
      v13 = (a1[12] + 2 * v2 - 2);
      v14 = v2;
      do
      {
        v15 = *v13;
        v11 = v15 >= v2;
        v16 = v15 - v2;
        if (!v11)
        {
          v16 = 0;
        }

        *v13-- = v16;
        --v14;
      }

      while (v14);
      v6 += v2;
      v5 = v7.i32[0];
    }

    v17 = *a1;
    v18 = *(*a1 + 8);
    if (!v18)
    {
      break;
    }

    v19 = *(a1 + 41);
    if (v18 >= v6)
    {
      v20 = v6;
    }

    else
    {
      v20 = v18;
    }

    if (!v6)
    {
      goto LABEL_23;
    }

    v21 = a1[10];
    *(v17 + 8) = v18 - v20;
    v22 = *(*(v17 + 56) + 44);
    if (v22 == 2)
    {
      v23 = crc32(*(v17 + 96), *v17, v20);
      goto LABEL_21;
    }

    if (v22 == 1)
    {
      v23 = adler32(*(v17 + 96), *v17, v20);
LABEL_21:
      *(v17 + 96) = v23;
    }

    memcpy((v21 + v5 + v19), *v17, v20);
    *v17 += v20;
    *(v17 + 16) += v20;
    LODWORD(v19) = *(a1 + 41);
LABEL_23:
    v3 = v19 + v20;
    *(a1 + 41) = v19 + v20;
    if ((v19 + v20) >= 3 && (v24 = a1[10], v25 = *(a1 + 39), v26 = *(v24 + v25), *(a1 + 28) = v26, *(a1 + 28) = ((v26 << *(a1 + 32)) ^ *(v24 + (v25 + 1))) & *(a1 + 31), v3 > 0x105) || !*(*a1 + 8))
    {
      v27 = a1[741];
      v28 = a1[11];
      if (v28 <= v27)
      {
        return;
      }

      v29 = *(a1 + 39) + v3;
      if (v27 >= v29)
      {
        if (v29 + 258 <= v27)
        {
          return;
        }

        if (v29 + 258 - v27 >= v28 - v27)
        {
          v32 = v28 - v27;
        }

        else
        {
          v32 = v29 + 258 - v27;
        }

        bzero((a1[10] + v27), v32);
        v31 = a1[741] + v32;
      }

      else
      {
        if (v28 - v29 >= 0x102)
        {
          v30 = 258;
        }

        else
        {
          v30 = v28 - v29;
        }

        bzero((a1[10] + v29), v30);
        v31 = v30 + v29;
      }

      a1[741] = v31;
      return;
    }
  }
}

uint64_t longest_match(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 172);
  v3 = *(a1 + 168);
  v4 = *(a1 + 80);
  v5 = *(a1 + 156);
  v6 = (v4 + v5);
  v7 = *(a1 + 68) - 262;
  v8 = v5 >= v7;
  v9 = v5 - v7;
  if (!v8)
  {
    v9 = 0;
  }

  v10 = *(a1 + 96);
  v11 = *(a1 + 76);
  v12 = *(a1 + 164);
  v13 = v6[v3 - 1];
  v14 = v6[v3];
  v15 = *(a1 + 192);
  if (v3 >= *(a1 + 188))
  {
    v2 >>= 2;
  }

  if (v15 >= v12)
  {
    v15 = *(a1 + 164);
  }

  while (1)
  {
    v16 = (v4 + a2);
    v17 = &v16[v3];
    if (*v17 != v14 || *(v17 - 1) != v13 || *v16 != *v6 || v16[1] != v6[1])
    {
      goto LABEL_32;
    }

    v18 = 0;
    v19 = v4 + 5 + a2;
    while (1)
    {
      v20 = &v6[v18];
      if (v6[v18 + 3] != *(v19 + v18 - 2))
      {
        v26 = v20 + 3;
        goto LABEL_29;
      }

      if (v20[4] != *(v19 + v18 - 1))
      {
        v26 = v6 + v18 + 4;
        goto LABEL_29;
      }

      v21 = &v6[v18];
      if (v6[v18 + 5] != *(v19 + v18))
      {
        v26 = v21 + 5;
        goto LABEL_29;
      }

      if (v21[6] != *(v19 + v18 + 1))
      {
        v26 = v6 + v18 + 6;
        goto LABEL_29;
      }

      v22 = &v6[v18];
      if (v6[v18 + 7] != *(v19 + v18 + 2))
      {
        v26 = v22 + 7;
        goto LABEL_29;
      }

      if (v22[8] != *(v19 + v18 + 3))
      {
        v26 = v6 + v18 + 8;
        goto LABEL_29;
      }

      v23 = &v6[v18];
      if (v6[v18 + 9] != *(v19 + v18 + 4))
      {
        break;
      }

      v24 = v18 + 8;
      if ((v18 + 2) <= 0xF9)
      {
        v25 = *(v19 + v18 + 5);
        v18 += 8;
        if (v23[10] == v25)
        {
          continue;
        }
      }

      v26 = v6 + v24 + 2;
      goto LABEL_29;
    }

    v26 = v23 + 9;
LABEL_29:
    v27 = v26 - (v6 + 258);
    v28 = v26 - v6;
    if (v28 <= v3)
    {
      goto LABEL_32;
    }

    *(a1 + 160) = a2;
    if (v28 >= v15)
    {
      break;
    }

    v13 = v6[v27 + 257];
    v14 = v6[v28];
    LODWORD(v3) = v28;
LABEL_32:
    a2 = *(v10 + 2 * (a2 & v11));
    --v2;
    if (v9 >= a2 || v2 == 0)
    {
      goto LABEL_37;
    }
  }

  LODWORD(v3) = v28;
LABEL_37:
  if (v3 >= v12)
  {
    return v12;
  }

  else
  {
    return v3;
  }
}

void _tr_flush_block(int *a1, char *a2, uint64_t a3, int a4)
{
  if (a1[45] < 1)
  {
    v11 = a3 + 5;
    LODWORD(v12) = 1;
    v13 = a3 + 5;
    if (!a2)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (*(*a1 + 88) == 2)
    {
      v8 = 0;
      v9 = 4093624447;
      do
      {
        if ((v9 & 1) != 0 && LOWORD(a1[v8 + 49]))
        {
          v10 = 0;
          goto LABEL_14;
        }

        v9 >>= 1;
        ++v8;
      }

      while (v8 != 32);
      if (!*(a1 + 116) && !*(a1 + 118) && !*(a1 + 124))
      {
        v70 = 0;
        v71 = a1 + 81;
        while (1)
        {
          v10 = v71[v70];
          if (v71[v70])
          {
            break;
          }

          v70 += 2;
          if (v70 == 448)
          {
            goto LABEL_14;
          }
        }
      }

      v10 = 1;
LABEL_14:
      *(*a1 + 88) = v10;
    }

    build_tree(a1, (a1 + 722));
    build_tree(a1, (a1 + 728));
    scan_tree(a1, (a1 + 49), a1[724]);
    scan_tree(a1, (a1 + 622), a1[730]);
    build_tree(a1, (a1 + 734));
    v14 = 0x12u;
    while (!HIWORD(a1[bl_order[v14] + 683]))
    {
      if (v14-- <= 3)
      {
        v14 = 2;
        break;
      }
    }

    v16 = *(a1 + 737) + (3 * v14 + 17);
    *(a1 + 737) = v16;
    v13 = (v16 + 10) >> 3;
    v11 = (*(a1 + 738) + 10) >> 3;
    if (v11 < v13)
    {
      v13 = (*(a1 + 738) + 10) >> 3;
    }

    LODWORD(v12) = v14 + 1;
    if (!a2)
    {
      goto LABEL_24;
    }
  }

  if (a3 + 4 <= v13)
  {
    _tr_stored_block(a1, a2, a3, a4);
    goto LABEL_50;
  }

LABEL_24:
  v17 = a1[1481];
  if (v11 == v13 || a1[46] == 4)
  {
    v26 = a4 + 2;
    if (v17 < 14)
    {
      *(a1 + 2960) |= v26 << v17;
      v33 = v17 + 3;
    }

    else
    {
      v27 = *(a1 + 2960) | (v26 << v17);
      *(a1 + 2960) = v27;
      v28 = *(a1 + 2);
      v29 = a1[10];
      a1[10] = v29 + 1;
      *(v28 + v29) = v27;
      LOBYTE(v27) = *(a1 + 5921);
      v30 = *(a1 + 2);
      v31 = a1[10];
      a1[10] = v31 + 1;
      *(v30 + v31) = v27;
      v32 = a1[1481];
      *(a1 + 2960) = (a4 + 2) >> (16 - v32);
      v33 = v32 - 13;
    }

    a1[1481] = v33;
    v34 = &static_ltree;
    v35 = &static_dtree;
  }

  else
  {
    v18 = a4 + 4;
    if (v17 < 14)
    {
      v24 = *(a1 + 2960) | (v18 << v17);
      v25 = v17 + 3;
    }

    else
    {
      v19 = *(a1 + 2960) | (v18 << v17);
      *(a1 + 2960) = v19;
      v20 = *(a1 + 2);
      v21 = a1[10];
      a1[10] = v21 + 1;
      *(v20 + v21) = v19;
      LOBYTE(v19) = *(a1 + 5921);
      v22 = *(a1 + 2);
      v23 = a1[10];
      a1[10] = v23 + 1;
      *(v22 + v23) = v19;
      LODWORD(v22) = a1[1481];
      v24 = (a4 + 4) >> (16 - v22);
      v25 = v22 - 13;
    }

    a1[1481] = v25;
    v36 = a1[724];
    v37 = a1[730];
    v38 = v36 + 65280;
    if (v25 < 12)
    {
      v45 = v24 | (v38 << v25);
      v46 = v25 + 5;
    }

    else
    {
      v39 = v24 | (v38 << v25);
      *(a1 + 2960) = v39;
      v40 = *(a1 + 2);
      v41 = a1[10];
      a1[10] = v41 + 1;
      *(v40 + v41) = v39;
      LOBYTE(v39) = *(a1 + 5921);
      v42 = *(a1 + 2);
      v43 = a1[10];
      a1[10] = v43 + 1;
      *(v42 + v43) = v39;
      v44 = a1[1481];
      v45 = (v36 - 256) >> (16 - v44);
      v46 = v44 - 11;
    }

    a1[1481] = v46;
    if (v46 < 12)
    {
      v52 = v45 | (v37 << v46);
      v53 = v46 + 5;
    }

    else
    {
      v47 = v45 | (v37 << v46);
      *(a1 + 2960) = v47;
      v48 = *(a1 + 2);
      v49 = a1[10];
      a1[10] = v49 + 1;
      *(v48 + v49) = v47;
      LOBYTE(v47) = *(a1 + 5921);
      v50 = *(a1 + 2);
      v51 = a1[10];
      a1[10] = v51 + 1;
      *(v50 + v51) = v47;
      LODWORD(v50) = a1[1481];
      v52 = v37 >> (16 - v50);
      v53 = v50 - 11;
    }

    a1[1481] = v53;
    v54 = v12 + 65532;
    if (v53 < 13)
    {
      v60 = v52 | (v54 << v53);
      *(a1 + 2960) = v60;
      v61 = v53 + 4;
    }

    else
    {
      v55 = v52 | (v54 << v53);
      *(a1 + 2960) = v55;
      v56 = *(a1 + 2);
      v57 = a1[10];
      a1[10] = v57 + 1;
      *(v56 + v57) = v55;
      LOBYTE(v55) = *(a1 + 5921);
      v58 = *(a1 + 2);
      v59 = a1[10];
      a1[10] = v59 + 1;
      *(v58 + v59) = v55;
      LODWORD(v58) = a1[1481];
      v60 = (v12 - 4) >> (16 - v58);
      *(a1 + 2960) = v60;
      v61 = v58 - 12;
    }

    a1[1481] = v61;
    if (v12 >= 1)
    {
      v12 = v12;
      v62 = bl_order;
      do
      {
        v63 = *v62++;
        v64 = HIWORD(a1[v63 + 683]);
        v60 |= v64 << v61;
        *(a1 + 2960) = v60;
        if (v61 < 14)
        {
          v61 += 3;
        }

        else
        {
          v65 = *(a1 + 2);
          v66 = a1[10];
          a1[10] = v66 + 1;
          *(v65 + v66) = v60;
          v67 = *(a1 + 5921);
          v68 = *(a1 + 2);
          v69 = a1[10];
          a1[10] = v69 + 1;
          *(v68 + v69) = v67;
          LODWORD(v68) = a1[1481];
          v60 = v64 >> (16 - v68);
          *(a1 + 2960) = v60;
          v61 = v68 - 13;
        }

        a1[1481] = v61;
        --v12;
      }

      while (v12);
    }

    send_tree(a1, (a1 + 49), v36);
    send_tree(a1, (a1 + 622), v37);
    v34 = a1 + 49;
    v35 = a1 + 622;
  }

  compress_block(a1, v34, v35);
LABEL_50:
  init_block(a1);
  if (a4)
  {

    bi_windup(a1);
  }
}

uint64_t build_tree(uint64_t a1, uint64_t a2)
{
  v76 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  v5 = *(a2 + 16);
  v6 = *v5;
  v7 = *(v5 + 5);
  *(a1 + 5284) = 0x23D00000000;
  if (v7 < 1)
  {
    v12 = 0;
    v10 = -1;
  }

  else
  {
    v8 = 0;
    v9 = (v4 + 2);
    v10 = -1;
    do
    {
      if (*(v9 - 1))
      {
        v11 = *(a1 + 5284) + 1;
        *(a1 + 5284) = v11;
        *(a1 + 2992 + 4 * v11) = v8;
        *(a1 + 5292 + v8) = 0;
        v10 = v8;
      }

      else
      {
        *v9 = 0;
      }

      ++v8;
      v9 += 2;
    }

    while (v7 != v8);
    v12 = *(a1 + 5284);
    if (v12 > 1)
    {
      goto LABEL_20;
    }
  }

  v13 = v10;
  do
  {
    if (v13 < 2)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 0;
    }

    v15 = v12 + 1;
    *(a1 + 5284) = v15;
    *(a1 + 2992 + 4 * v15) = v14;
    *(v4 + 4 * v14) = 1;
    if (v13 >= 2)
    {
      v10 = v13;
    }

    else
    {
      v10 = v13 + 1;
    }

    *(a1 + 5292 + v14) = 0;
    --*(a1 + 5896);
    if (v6)
    {
      *(a1 + 5904) -= *(v6 + 4 * v14 + 2);
    }

    v12 = *(a1 + 5284);
    v13 = v10;
  }

  while (v12 < 2);
LABEL_20:
  *(a2 + 8) = v10;
  v16 = v12 >> 1;
  do
  {
    pqdownheap(a1, v4, v16);
    v17 = v16-- != 0;
  }

  while (v16 != 0 && v17);
  v18 = *(a1 + 5284);
  v19 = a1 + 2992;
  v20 = a1 + 5292;
  v21 = v7;
  v22 = 4 * v7;
  do
  {
    v23 = *(a1 + 2996);
    *(a1 + 5284) = v18 - 1;
    *(a1 + 2996) = *(v19 + 4 * v18);
    pqdownheap(a1, v4, 1);
    v24 = *(a1 + 2996);
    v25 = *(a1 + 5288) - 1;
    *(a1 + 5288) = v25;
    *(v19 + 4 * v25) = v23;
    v26 = *(a1 + 5288) - 1;
    *(a1 + 5288) = v26;
    *(v19 + 4 * v26) = v24;
    v27 = (v4 + 4 * v23);
    v28 = (v4 + 4 * v24);
    *(v4 + v22) = *v28 + *v27;
    v29 = *(v20 + v24);
    if (*(v20 + v23) > v29)
    {
      LOBYTE(v29) = *(v20 + v23);
    }

    *(v20 + v21) = v29 + 1;
    v28[1] = v21;
    v27[1] = v21;
    *(a1 + 2996) = v21;
    result = pqdownheap(a1, v4, 1);
    v18 = *(a1 + 5284);
    v22 += 4;
    ++v21;
  }

  while (v18 > 1);
  v31 = *(a1 + 2996);
  v32 = *(a1 + 5288) - 1;
  *(a1 + 5288) = v32;
  *(v19 + 4 * v32) = v31;
  v33 = *a2;
  v34 = *(a2 + 8);
  v35 = *(a2 + 16);
  v36 = *v35;
  v37 = v35[1];
  v38 = *(v35 + 4);
  v39 = *(v35 + 6);
  v40 = a1 + 2960;
  *(a1 + 2976) = 0u;
  *(a1 + 2960) = 0u;
  *(v33 + 4 * *(v19 + 4 * *(a1 + 5288)) + 2) = 0;
  v41 = *(a1 + 5288);
  if (v41 <= 571)
  {
    v42 = 0;
    v43 = v41 + 2;
    v44 = (a1 + 4 * v41 + 2996);
    do
    {
      v46 = *v44++;
      v45 = v46;
      v47 = (v33 + 4 * v46);
      v48 = *(v33 + 4 * v47[1] + 2);
      v49 = v39 <= v48;
      if (v39 > v48)
      {
        v50 = v48 + 1;
      }

      else
      {
        v50 = v39;
      }

      if (v49)
      {
        ++v42;
      }

      v47[1] = v50;
      if (v45 <= v34)
      {
        ++*(v40 + 2 * v50);
        v51 = v45 >= v38 ? *(v37 + 4 * (v45 - v38)) : 0;
        v52 = *v47;
        *(a1 + 5896) += v52 * (v51 + v50);
        if (v36)
        {
          *(a1 + 5904) += (*(v36 + 4 * v45 + 2) + v51) * v52;
        }
      }

      result = v43 + 1;
    }

    while (v43++ != 573);
    if (v42)
    {
      do
      {
        v54 = (a1 + 2 * v39 + 2960);
        v55 = (v39 << 32) + 0x100000000;
        do
        {
          v57 = *--v54;
          v56 = v57;
          v55 -= 0x100000000;
        }

        while (!v57);
        result = (v56 - 1);
        *v54 = result;
        *(v40 + (v55 >> 31)) += 2;
        --*(v40 + 2 * v39);
        v58 = __OFSUB__(v42, 2);
        v42 -= 2;
      }

      while (!((v42 < 0) ^ v58 | (v42 == 0)));
      if (v39)
      {
        v59 = 573;
        do
        {
          v60 = *(v40 + 2 * v39);
          if (*(v40 + 2 * v39))
          {
            do
            {
              v61 = (a1 + 2988 + 4 * v59);
              do
              {
                v63 = *v61--;
                v62 = v63;
                --v59;
              }

              while (v63 > v34);
              v64 = (v33 + 4 * v62);
              v65 = v39 - v64[1];
              if (v65)
              {
                result = *(a1 + 5896);
                *(a1 + 5896) = result + v65 * *v64;
                v64[1] = v39;
              }

              --v60;
            }

            while (v60);
          }

          --v39;
        }

        while (v39);
      }
    }
  }

  v66 = 0;
  v67 = 0;
  do
  {
    v67 = 2 * ((v67 & 0xFFFE) + *(v40 + v66 * 2));
    v75[++v66] = v67;
  }

  while (v66 != 15);
  if ((v10 & 0x80000000) == 0)
  {
    v68 = 0;
    do
    {
      v69 = (v4 + 4 * v68);
      v70 = v69[1];
      if (v69[1])
      {
        v71 = 0;
        v72 = v75[v69[1]];
        v75[v69[1]] = v72 + 1;
        v73 = v70 + 1;
        do
        {
          v74 = v71 | v72 & 1;
          v72 >>= 1;
          v71 = 2 * v74;
          --v73;
        }

        while (v73 > 1);
        *v69 = v74;
      }

      ++v68;
    }

    while (v68 != v10 + 1);
  }

  return result;
}

uint64_t ProcessCommands(uint64_t a1)
{
  v2 = *(a1 + 76);
  LODWORD(v3) = *(a1 + 4);
  if (*(a1 + 32) < 0x1CuLL)
  {
    goto LABEL_9;
  }

  BrotliWarmupBitReader((a1 + 8));
  v4 = *a1;
  result = 4294967265;
  if (*a1 > 8)
  {
    if (v4 == 9)
    {
      goto LABEL_12;
    }

    if (v4 == 10)
    {
      v6 = v2;
      goto LABEL_57;
    }

    return result;
  }

  if (v4 == 7)
  {
    goto LABEL_78;
  }

  if (v4 != 8)
  {
    return result;
  }

LABEL_90:
  v76 = v2;
  if (!*(a1 + 256))
  {
    goto LABEL_111;
  }

  do
  {
    v77 = *(a1 + 16);
    v78 = *(a1 + 8);
    if (v77 >= 0x38)
    {
      *(a1 + 8) = HIBYTE(v78);
      v77 ^= 0x38u;
      *(a1 + 16) = v77;
      v79 = *(a1 + 24);
      v80 = *(a1 + 32);
      *(&v81 + 1) = *v79;
      *&v81 = v78;
      v78 = v81 >> 56;
      *(a1 + 8) = v78;
      *(a1 + 24) = v79 + 7;
      *(a1 + 32) = v80 - 7;
    }

    v82 = 0;
    v83 = (*(a1 + 344) + 4 * (v78 >> v77));
    v84 = *v83;
    v85 = *(v83 + 1);
    v86 = v76;
    while (1)
    {
      if (*(a1 + 32) <= 0x1BuLL)
      {
        goto LABEL_124;
      }

      if (!*(a1 + 272))
      {
        break;
      }

      v87 = *(a1 + 344);
LABEL_97:
      v88 = *(a1 + 16);
      if (v84 >= 9)
      {
        v91 = *(a1 + 8);
        if (v88 >= 0x30)
        {
          *(a1 + 8) = HIWORD(v91);
          v88 ^= 0x30u;
          v103 = *(a1 + 24);
          v104 = *(a1 + 32);
          *(&v105 + 1) = *v103;
          *&v105 = v91;
          v91 = v105 >> 48;
          *(a1 + 8) = v91;
          *(a1 + 24) = v103 + 6;
          *(a1 + 32) = v104 - 6;
        }

        v106 = (v87 + 4 * (v91 >> v88) + 4 * v85 + 4 * (((v91 >> v88) >> 8) & ~(-1 << (v84 - 8))));
        v89 = v88 + *v106 + 8;
        *(a1 + 16) = v89;
        v90 = v106[2];
      }

      else
      {
        v89 = v88 + v84;
        *(a1 + 16) = v89;
        v90 = v85;
        v91 = *(a1 + 8);
      }

      if (v89 >= 0x38)
      {
        *(a1 + 8) = HIBYTE(v91);
        v89 ^= 0x38u;
        *(a1 + 16) = v89;
        v92 = *(a1 + 24);
        v93 = *(a1 + 32);
        *(&v94 + 1) = *v92;
        *&v94 = v91;
        v91 = v94 >> 56;
        *(a1 + 8) = v91;
        *(a1 + 24) = v92 + 7;
        *(a1 + 32) = v93 - 7;
      }

      v95 = (v87 + 4 * (v91 >> v89));
      v84 = *v95;
      v85 = *(v95 + 1);
      *(*(a1 + 120) + v76 + v82) = v90;
      --*(a1 + 272);
      v2 = *(a1 + 88);
      if (v76 + v82 + 1 == v2)
      {
LABEL_128:
        *a1 = 13;
        LODWORD(v3) = ~v82 + v3;
LABEL_76:
        result = 1;
        goto LABEL_10;
      }

      if (v3 == ++v82)
      {
LABEL_125:
        v2 = v76 + v82;
        if (*(a1 + 264) <= 0)
        {
          LODWORD(v3) = 0;
LABEL_66:
          v55 = 14;
LABEL_75:
          *a1 = v55;
          goto LABEL_76;
        }

LABEL_12:
        while (2)
        {
          v7 = v2;
          v8 = *(a1 + 360);
          if ((v8 & 0x80000000) == 0)
          {
            v9 = v8 == 0;
            *(a1 + 260) = v9;
            v10 = *(a1 + 96) - 1;
            *(a1 + 96) = v10;
            v11 = *(a1 + 4 * (v10 & 3) + 100);
            break;
          }

          if (!*(a1 + 280))
          {
            DecodeDistanceBlockSwitch(a1);
          }

          v12 = *(*(a1 + 216) + 8 * *(a1 + 352));
          v13 = *(a1 + 16);
          v14 = *(a1 + 8);
          if (v13 >= 0x30)
          {
            *(a1 + 8) = HIWORD(v14);
            v13 ^= 0x30u;
            v15 = *(a1 + 24);
            v16 = *(a1 + 32);
            *(&v17 + 1) = *v15;
            *&v17 = v14;
            v14 = v17 >> 48;
            *(a1 + 8) = v14;
            *(a1 + 24) = v15 + 6;
            *(a1 + 32) = v16 - 6;
          }

          v18 = v14 >> v13;
          v19 = (v12 + 4 * (v14 >> v13));
          v20 = *v19;
          if (v20 >= 9)
          {
            v13 += 8;
            v19 += 4 * ((v18 >> 8) & ~(-1 << (v20 - 8))) + 4 * *(v19 + 1);
            v20 = *v19;
          }

          v21 = v13 + v20;
          *(a1 + 16) = v21;
          v22 = *(v19 + 1);
          --*(a1 + 280);
          *(a1 + 260) = 0;
          if (v22 > 0xF)
          {
            v25 = *(a1 + 744 + v22);
            if (v21 >= 0x20)
            {
              v21 ^= 0x20u;
              *(a1 + 16) = v21;
              v26 = *(a1 + 24);
              v27 = *(a1 + 32);
              *(&v28 + 1) = *v26;
              *&v28 = v14;
              v14 = v28 >> 32;
              *(a1 + 8) = v14;
              *(a1 + 24) = v26 + 1;
              *(a1 + 32) = v27 - 4;
            }

            v9 = 0;
            *(a1 + 16) = v21 + v25;
            v11 = (((v14 >> v21) & ~(-1 << v25)) << *(a1 + 320)) + *(a1 + 4 * v22 + 1288);
          }

          else
          {
            *(a1 + 360) = v22;
            if (v22 <= 3)
            {
              v23 = ~v22;
              v9 = 1u >> v22;
              *(a1 + 260) = 1u >> v22;
              v24 = *(a1 + 96);
              v11 = *(a1 + 4 * ((v24 + v23) & 3) + 100);
              *(a1 + 360) = v11;
              *(a1 + 96) = v24 - v9;
LABEL_35:
              v32 = *(a1 + 80);
              v31 = *(a1 + 84);
              if (v31 != v32)
              {
                if (v2 >= v32)
                {
                  v31 = *(a1 + 80);
                }

                else
                {
                  v31 = v2;
                }

                *(a1 + 84) = v31;
              }

              v3 = *(a1 + 356);
              if (v11 <= v31)
              {
                v43 = *(a1 + 96);
                v44 = *(a1 + 92) & (v2 - v11);
                v45 = *(a1 + 120);
                v6 = v2;
                v46 = (v45 + v2);
                v47 = (v45 + v44);
                v2 += v3;
                *(a1 + 4 * (v43 & 3) + 100) = v11;
                *(a1 + 96) = v43 + 1;
                *(a1 + 264) -= v3;
                *v46 = *v47;
                v48 = v44 + v3 <= v7 || v2 <= v44;
                if (v48 && ((v49 = *(a1 + 88), v2 < v49) ? (v50 = v44 + v3 < v49) : (v50 = 0), v50))
                {
                  if (v3 >= 17)
                  {
                    if (v3 < 0x21)
                    {
                      v46[1] = v47[1];
                    }

                    else
                    {
                      memcpy(v46 + 1, v47 + 1, (v3 - 16));
                    }
                  }
                }

                else
                {
                  v2 = v7;
LABEL_57:
                  v51 = -v6;
                  v52 = v2 - *(a1 + 88);
                  while (1)
                  {
                    v53 = __OFSUB__(v3, 1);
                    LODWORD(v3) = v3 - 1;
                    if (((v3 & 0x80000000) != 0) != v53)
                    {
                      break;
                    }

                    *(*(a1 + 120) + v6) = *(*(a1 + 120) + ((v6 - *(a1 + 360)) & *(a1 + 92)));
                    ++v6;
                    --v51;
                    if (__CFADD__(v52++, 1))
                    {
                      v2 = -v51;
                      v55 = 16;
                      goto LABEL_75;
                    }
                  }

                  v2 = -v51;
                }
              }

              else
              {
                if (v11 > 2147483644)
                {
                  return 4294967280;
                }

                if ((v3 - 4) > 0x14)
                {
                  return 4294967284;
                }

                v33 = *(a1 + 696);
                v34 = *(a1 + 704);
                v35 = *(v33 + 4 * v3 + 32);
                v36 = *(v33 + v3);
                *(a1 + 96) += v9;
                v37 = *(v33 + 168);
                if (!v37)
                {
                  return 4294967277;
                }

                v38 = v11 + ~v31;
                v39 = v38 >> v36;
                if (v38 >> v36 >= *(v34 + 24))
                {
                  return 4294967285;
                }

                v40 = (*(a1 + 120) + v2);
                v41 = (v37 + v35 + (v38 & ~(-1 << v36)) * v3);
                if (v39 == *(v34 + 48))
                {
                  memcpy(v40, v41, v3);
                  v42 = v3;
                }

                else
                {
                  v42 = BrotliTransformDictionaryWord(v40, v41, v3, v34, v39);
                }

                v2 += v42;
                *(a1 + 264) -= v42;
                if (v2 >= *(a1 + 88))
                {
                  v55 = 15;
                  goto LABEL_75;
                }
              }

              if (*(a1 + 264) <= 0)
              {
                goto LABEL_66;
              }

              while (1)
              {
LABEL_78:
                v56 = *(a1 + 32);
                if (v56 < 0x1C)
                {
                  *a1 = 7;
                  goto LABEL_9;
                }

                v57 = *(a1 + 276);
                if (v57)
                {
                  break;
                }

                DecodeCommandBlockSwitch(a1);
              }

              v58 = *(a1 + 136);
              v59 = *(a1 + 16);
              v60 = *(a1 + 8);
              if (v59 >= 0x30)
              {
                *(a1 + 8) = HIWORD(v60);
                v59 ^= 0x30u;
                v61 = *(a1 + 24);
                *(&v62 + 1) = *v61;
                *&v62 = v60;
                v60 = v62 >> 48;
                *(a1 + 8) = v60;
                v56 -= 6;
                *(a1 + 24) = v61 + 6;
                *(a1 + 32) = v56;
              }

              v63 = v60 >> v59;
              v64 = (v58 + 4 * (v60 >> v59));
              v65 = *v64;
              if (v65 >= 9)
              {
                v59 += 8;
                v64 += 4 * ((v63 >> 8) & ~(-1 << (v65 - 8))) + 4 * *(v64 + 1);
                v65 = *v64;
              }

              v66 = v59 + v65;
              *(a1 + 16) = v66;
              v67 = &kCmdLut + 8 * *(v64 + 1);
              v68 = *v67;
              v69 = v67[1];
              v70 = v67[3];
              *(a1 + 360) = v67[2];
              *(a1 + 260) = v70;
              v71 = *(v67 + 2);
              v72 = *(v67 + 3);
              *(a1 + 352) = *(*(a1 + 160) + v70);
              if (v68)
              {
                if (v66 >= 0x20)
                {
                  v66 ^= 0x20u;
                  *(a1 + 16) = v66;
                  v121 = *(a1 + 24);
                  *(&v122 + 1) = *v121;
                  *&v122 = v60;
                  v60 = v122 >> 32;
                  *(a1 + 8) = v60;
                  v56 -= 4;
                  *(a1 + 24) = v121 + 1;
                  *(a1 + 32) = v56;
                }

                v73 = (v60 >> v66) & ~(-1 << v68);
                v66 += v68;
              }

              else
              {
                v73 = 0;
              }

              if (v66 >= 0x20)
              {
                v66 ^= 0x20u;
                *(a1 + 16) = v66;
                v74 = *(a1 + 24);
                *(&v75 + 1) = *v74;
                *&v75 = v60;
                v60 = v75 >> 32;
                *(a1 + 8) = v60;
                *(a1 + 24) = v74 + 1;
                *(a1 + 32) = v56 - 4;
              }

              *(a1 + 16) = v66 + v69;
              *(a1 + 356) = ((v60 >> v66) & ~(-1 << v69)) + v72;
              *(a1 + 276) = v57 - 1;
              LODWORD(v3) = v73 + v71;
              if (v73 + v71)
              {
                *(a1 + 264) -= v3;
                goto LABEL_90;
              }

              continue;
            }

            v9 = 0;
            if (v22 >= 0xA)
            {
              v29 = -10;
            }

            else
            {
              v29 = -4;
            }

            if (v22 >= 0xA)
            {
              v30 = 2;
            }

            else
            {
              v30 = 3;
            }

            v11 = ((0x605142u >> (4 * (v29 + v22))) & 7) + *(a1 + 4 * ((*(a1 + 96) + v30) & 3) + 100) - 3;
            if (v11 < 1)
            {
              v11 = 0x7FFFFFFF;
            }
          }

          break;
        }

        *(a1 + 360) = v11;
        goto LABEL_35;
      }
    }

    DecodeLiteralBlockSwitch(a1);
    v96 = *(a1 + 16);
    v97 = *(a1 + 8);
    if (v96 >= 0x38)
    {
      *(a1 + 8) = HIBYTE(v97);
      v96 ^= 0x38u;
      *(a1 + 16) = v96;
      v98 = *(a1 + 24);
      v99 = *(a1 + 32);
      *(&v100 + 1) = *v98;
      *&v100 = v97;
      v97 = v100 >> 56;
      *(a1 + 8) = v97;
      *(a1 + 24) = v98 + 7;
      *(a1 + 32) = v99 - 7;
    }

    v101 = *(a1 + 256);
    if (v101)
    {
      v87 = *(a1 + 344);
      v102 = (v87 + 4 * (v97 >> v96));
      v84 = *v102;
      v85 = *(v102 + 1);
      goto LABEL_97;
    }

LABEL_122:
    v76 = v86 + v82;
    LODWORD(v3) = v3 - v82;
  }

  while (v101);
LABEL_111:
  v82 = 0;
  v107 = *(a1 + 120);
  v86 = v76;
  v108 = *(a1 + 92);
  v109 = *(v107 + (v108 & (v76 - 1)));
  v110 = *(v107 + (v108 & (v76 - 2)));
  while (*(a1 + 32) > 0x1BuLL)
  {
    if (!*(a1 + 272))
    {
      DecodeLiteralBlockSwitch(a1);
      v101 = *(a1 + 256);
      if (v101)
      {
        goto LABEL_122;
      }
    }

    v111 = *(*(a1 + 168) + 8 * *(*(a1 + 152) + (*(*(a1 + 144) + v110 + 256) | *(*(a1 + 144) + v109))));
    v112 = *(a1 + 16);
    v113 = *(a1 + 8);
    if (v112 >= 0x30)
    {
      *(a1 + 8) = HIWORD(v113);
      v112 ^= 0x30u;
      v114 = *(a1 + 24);
      v115 = *(a1 + 32);
      *(&v116 + 1) = *v114;
      *&v116 = v113;
      v113 = v116 >> 48;
      *(a1 + 8) = v113;
      *(a1 + 24) = v114 + 6;
      *(a1 + 32) = v115 - 6;
    }

    v117 = v113 >> v112;
    v118 = (v111 + 4 * (v113 >> v112));
    v119 = *v118;
    if (v119 >= 9)
    {
      v112 += 8;
      v118 += 4 * ((v117 >> 8) & ~(-1 << (v119 - 8))) + 4 * *(v118 + 1);
      v119 = *v118;
    }

    *(a1 + 16) = v112 + v119;
    v120 = v118[2];
    *(*(a1 + 120) + v76 + v82) = v120;
    --*(a1 + 272);
    v2 = *(a1 + 88);
    if (v76 + v82 + 1 == v2)
    {
      goto LABEL_128;
    }

    ++v82;
    v110 = v109;
    v109 = v120;
    if (v3 == v82)
    {
      goto LABEL_125;
    }
  }

LABEL_124:
  v2 = v76 + v82;
  *a1 = 8;
  LODWORD(v3) = v3 - v82;
LABEL_9:
  result = 2;
LABEL_10:
  *(a1 + 76) = v2;
  *(a1 + 4) = v3;
  return result;
}

uint64_t DecodeCommandBlockSwitch(uint64_t result)
{
  v1 = *(result + 288);
  if (v1 >= 2)
  {
    v2 = *(result + 240) + 2528;
    v3 = *(result + 16);
    v4 = *(result + 8);
    if (v3 >= 0x30)
    {
      *(result + 8) = HIWORD(v4);
      v3 ^= 0x30u;
      *(result + 16) = v3;
      v5 = *(result + 24);
      v6 = *(result + 32);
      *(&v7 + 1) = *v5;
      *&v7 = v4;
      v4 = v7 >> 48;
      *(result + 8) = v4;
      *(result + 24) = v5 + 6;
      *(result + 32) = v6 - 6;
    }

    v8 = v4 >> v3;
    v9 = (v2 + 4 * (v4 >> v3));
    v10 = *v9;
    if (v10 >= 9)
    {
      v3 += 8;
      v9 += 4 * ((v8 >> 8) & ~(-1 << (v10 - 8))) + 4 * *(v9 + 1);
      v10 = *v9;
    }

    v11 = *(result + 248) + 1584;
    v12 = v3 + v10;
    v13 = *(v9 + 1);
    if (v12 >= 0x30)
    {
      *(result + 8) = HIWORD(v4);
      v12 ^= 0x30u;
      v14 = *(result + 24);
      v15 = *(result + 32);
      *(&v16 + 1) = *v14;
      *&v16 = v4;
      v4 = v16 >> 48;
      *(result + 8) = v4;
      *(result + 24) = v14 + 6;
      *(result + 32) = v15 - 6;
    }

    v17 = v4 >> v12;
    v18 = (v11 + 4 * (v4 >> v12));
    v19 = *v18;
    if (v19 >= 9)
    {
      v12 += 8;
      v18 += 4 * ((v17 >> 8) & ~(-1 << (v19 - 8))) + 4 * *(v18 + 1);
      v19 = *v18;
    }

    v20 = v12 + v19;
    v21 = (&_kBrotliPrefixCodeRanges + 4 * *(v18 + 1));
    v22 = *(v21 + 2);
    v23 = *v21;
    if (v20 >= 0x20)
    {
      v20 ^= 0x20u;
      *(result + 16) = v20;
      v24 = *(result + 24);
      v25 = *(result + 32);
      *(&v26 + 1) = *v24;
      *&v26 = v4;
      v4 = v26 >> 32;
      *(result + 8) = v4;
      *(result + 24) = v24 + 1;
      *(result + 32) = v25 - 4;
    }

    *(result + 16) = v20 + v22;
    *(result + 276) = ((v4 >> v20) & ~(-1 << v22)) + v23;
    if (v13)
    {
      if (v13 == 1)
      {
        v27 = *(result + 308) + 1;
      }

      else
      {
        v27 = v13 - 2;
      }
    }

    else
    {
      v27 = *(result + 304);
    }

    if (v27 < v1)
    {
      v1 = 0;
    }

    v28 = v27 - v1;
    *(result + 304) = *(result + 308);
    *(result + 308) = v28;
    *(result + 136) = *(*(result + 192) + 8 * v28);
  }

  return result;
}

uint64_t DecodeDistanceBlockSwitch(uint64_t result)
{
  v1 = *(result + 292);
  if (v1 >= 2)
  {
    v2 = *(result + 240) + 5056;
    v3 = *(result + 16);
    v4 = *(result + 8);
    if (v3 >= 0x30)
    {
      *(result + 8) = HIWORD(v4);
      v3 ^= 0x30u;
      *(result + 16) = v3;
      v5 = *(result + 24);
      v6 = *(result + 32);
      *(&v7 + 1) = *v5;
      *&v7 = v4;
      v4 = v7 >> 48;
      *(result + 8) = v4;
      *(result + 24) = v5 + 6;
      *(result + 32) = v6 - 6;
    }

    v8 = v4 >> v3;
    v9 = (v2 + 4 * (v4 >> v3));
    v10 = *v9;
    if (v10 >= 9)
    {
      v3 += 8;
      v9 += 4 * ((v8 >> 8) & ~(-1 << (v10 - 8))) + 4 * *(v9 + 1);
      v10 = *v9;
    }

    v11 = *(result + 248) + 3168;
    v12 = v3 + v10;
    v13 = *(v9 + 1);
    if (v12 >= 0x30)
    {
      *(result + 8) = HIWORD(v4);
      v12 ^= 0x30u;
      v14 = *(result + 24);
      v15 = *(result + 32);
      *(&v16 + 1) = *v14;
      *&v16 = v4;
      v4 = v16 >> 48;
      *(result + 8) = v4;
      *(result + 24) = v14 + 6;
      *(result + 32) = v15 - 6;
    }

    v17 = v4 >> v12;
    v18 = (v11 + 4 * (v4 >> v12));
    v19 = *v18;
    if (v19 >= 9)
    {
      v12 += 8;
      v18 += 4 * ((v17 >> 8) & ~(-1 << (v19 - 8))) + 4 * *(v18 + 1);
      v19 = *v18;
    }

    v20 = v12 + v19;
    v21 = (&_kBrotliPrefixCodeRanges + 4 * *(v18 + 1));
    v22 = *(v21 + 2);
    v23 = *v21;
    if (v20 >= 0x20)
    {
      v20 ^= 0x20u;
      *(result + 16) = v20;
      v24 = *(result + 24);
      v25 = *(result + 32);
      *(&v26 + 1) = *v24;
      *&v26 = v4;
      v4 = v26 >> 32;
      *(result + 8) = v4;
      *(result + 24) = v24 + 1;
      *(result + 32) = v25 - 4;
    }

    *(result + 16) = v20 + v22;
    *(result + 280) = ((v4 >> v20) & ~(-1 << v22)) + v23;
    if (v13)
    {
      if (v13 == 1)
      {
        v27 = *(result + 316) + 1;
      }

      else
      {
        v27 = v13 - 2;
      }
    }

    else
    {
      v27 = *(result + 312);
    }

    if (v27 < v1)
    {
      v1 = 0;
    }

    v28 = v27 - v1;
    *(result + 312) = *(result + 316);
    *(result + 316) = v28;
    v29 = *(result + 336) + 4 * v28;
    *(result + 160) = v29;
    *(result + 352) = *(v29 + *(result + 260));
  }

  return result;
}

uint64_t SafeProcessCommands(uint64_t a1)
{
  v2 = *(a1 + 76);
  v3 = *a1;
  LODWORD(v4) = *(a1 + 4);
  result = 4294967265;
  if (v3 <= 8)
  {
    if (v3 == 7)
    {
      goto LABEL_15;
    }

    if (v3 != 8)
    {
      return result;
    }

LABEL_45:
    for (i = *(a1 + 256) == 0; ; i = 0)
    {
      *a1 = 8;
      if (!i)
      {
        v69 = v2;
        v70 = *(a1 + 272);
        while (1)
        {
          if (!v70)
          {
            if (!SafeDecodeLiteralBlockSwitch(a1))
            {
              goto LABEL_99;
            }

            if (!*(a1 + 256))
            {
              break;
            }
          }

          v133 = 0;
          v71 = *(a1 + 344);
          v72 = *(a1 + 16);
          if ((v72 - 50) >= 0xF)
          {
            v76 = *(a1 + 8);
LABEL_74:
            v79 = v76 >> v72;
            v80 = &v71[4 * (v76 >> v72)];
            v81 = *v80;
            if (v81 >= 9)
            {
              v72 += 8;
              v80 += 4 * (BYTE1(v79) & ~(-1 << (v81 - 8)) & 0x7F) + 4 * *(v80 + 1);
              v81 = *v80;
            }

            *(a1 + 16) = v72 + v81;
            v82 = *(v80 + 1);
          }

          else
          {
            v73 = *(a1 + 32) - 1;
            while (v73 != -1)
            {
              v74 = *(a1 + 8);
              *(a1 + 8) = v74 >> 8;
              v75 = *(a1 + 24);
              *(&v77 + 1) = *v75;
              *&v77 = v74;
              v76 = v77 >> 8;
              *(a1 + 8) = v76;
              v78 = v72 - 8;
              *(a1 + 16) = v72 - 8;
              *(a1 + 24) = v75 + 1;
              *(a1 + 32) = v73--;
              LODWORD(v75) = v72 - 58;
              v72 -= 8;
              if (v75 >= 0xF)
              {
                v72 = v78;
                goto LABEL_74;
              }
            }

            if (!SafeDecodeSymbol(v71, a1 + 8, &v133))
            {
LABEL_99:
              result = 2;
LABEL_100:
              v2 = v69;
              goto LABEL_156;
            }

            LOBYTE(v82) = v133;
          }

          *(*(a1 + 120) + v69) = v82;
          v70 = *(a1 + 272) - 1;
          *(a1 + 272) = v70;
          ++v69;
          v2 = *(a1 + 88);
          if (v2 == v69)
          {
LABEL_165:
            *a1 = 13;
            LODWORD(v4) = v4 - 1;
LABEL_164:
            result = 1;
LABEL_156:
            *(a1 + 76) = v2;
            *(a1 + 4) = v4;
            return result;
          }

          LODWORD(v4) = v4 - 1;
          if (!v4)
          {
LABEL_85:
            if (*(a1 + 264) <= 0)
            {
              LODWORD(v4) = 0;
              *a1 = 14;
              result = 1;
              goto LABEL_100;
            }

            LODWORD(v4) = 0;
            v2 = v69;
LABEL_88:
            while (2)
            {
              *a1 = 9;
              v83 = *(a1 + 360);
              if ((v83 & 0x80000000) == 0)
              {
                v84 = v83 == 0;
                *(a1 + 260) = v84;
                v85 = *(a1 + 96) - 1;
                *(a1 + 96) = v85;
                v86 = *(a1 + 4 * (v85 & 3) + 100);
                break;
              }

              if (!*(a1 + 280) && !SafeDecodeDistanceBlockSwitch(a1))
              {
                goto LABEL_155;
              }

              v87 = a1 + 744;
              v133 = 0;
              v88 = *(*(a1 + 216) + 8 * *(a1 + 352));
              v12 = *(a1 + 8);
              v13 = *(a1 + 16);
              v14 = *(a1 + 24);
              v15 = *(a1 + 32);
              v89 = v12;
              v90 = v13;
              if ((v13 - 50) > 0xE)
              {
LABEL_95:
                v96 = v89 >> v90;
                v97 = &v88[4 * (v89 >> v90)];
                v98 = *v97;
                if (v98 >= 9)
                {
                  v90 += 8;
                  v97 += 4 * (BYTE1(v96) & ~(-1 << (v98 - 8)) & 0x7F) + 4 * *(v97 + 1);
                  v98 = *v97;
                }

                *(a1 + 16) = v90 + v98;
                v99 = *(v97 + 1);
              }

              else
              {
                v91 = v14 + 1;
                v92 = v15 - 1;
                v89 = *(a1 + 8);
                v93 = *(a1 + 16);
                while (v92 != -1)
                {
                  *(a1 + 8) = v89 >> 8;
                  *(&v94 + 1) = *(v91 - 1);
                  *&v94 = v89;
                  v89 = v94 >> 8;
                  *(a1 + 8) = v89;
                  v90 = v93 - 8;
                  *(a1 + 16) = v93 - 8;
                  *(a1 + 24) = v91;
                  *(a1 + 32) = v92;
                  ++v91;
                  --v92;
                  v95 = v93 - 58;
                  v93 -= 8;
                  if (v95 >= 0xF)
                  {
                    goto LABEL_95;
                  }
                }

                if (!SafeDecodeSymbol(v88, a1 + 8, &v133))
                {
                  goto LABEL_155;
                }

                v99 = v133;
              }

              v100 = *(a1 + 280);
              *(a1 + 280) = v100 - 1;
              *(a1 + 260) = 0;
              if (v99 > 0xF)
              {
                v102 = 0;
                v103 = *(v87 + v99);
                if (*(v87 + v99))
                {
                  v104 = *(a1 + 16);
                  v105 = 64 - v104;
                  if (64 - v104 < v103)
                  {
                    v106 = *(a1 + 32) - 1;
                    while (v106 != -1)
                    {
                      v107 = *(a1 + 8);
                      *(a1 + 8) = v107 >> 8;
                      v108 = *(a1 + 24);
                      *(&v110 + 1) = *v108;
                      *&v110 = v107;
                      v109 = v110 >> 8;
                      *(a1 + 8) = v109;
                      v104 -= 8;
                      *(a1 + 16) = v104;
                      *(a1 + 24) = v108 + 1;
                      *(a1 + 32) = v106--;
                      v105 += 8;
                      if (v105 >= v103)
                      {
                        goto LABEL_122;
                      }
                    }

                    *(a1 + 280) = v100;
                    goto LABEL_154;
                  }

                  v109 = *(a1 + 8);
LABEL_122:
                  v102 = (v109 >> v104) & ~(-1 << v103);
                  *(a1 + 16) = v104 + v103;
                }

                v84 = 0;
                v86 = (v102 << *(a1 + 320)) + *(a1 + 4 * v99 + 1288);
              }

              else
              {
                *(a1 + 360) = v99;
                if (v99 <= 3)
                {
                  v84 = 1u >> v99;
                  *(a1 + 260) = 1u >> v99;
                  v101 = *(a1 + 96);
                  v86 = *(a1 + 4 * ((v101 + ~v99) & 3) + 100);
                  *(a1 + 360) = v86;
                  *(a1 + 96) = v101 - v84;
LABEL_125:
                  v114 = *(a1 + 80);
                  v113 = *(a1 + 84);
                  if (v113 != v114)
                  {
                    if (v2 >= v114)
                    {
                      v113 = *(a1 + 80);
                    }

                    else
                    {
                      v113 = v2;
                    }

                    *(a1 + 84) = v113;
                  }

                  v4 = *(a1 + 356);
                  if (v86 <= v113)
                  {
                    v125 = *(a1 + 96);
                    v126 = *(a1 + 92) & (v2 - v86);
                    v127 = *(a1 + 120);
                    v6 = v2;
                    v128 = (v127 + v2);
                    v129 = (v127 + v126);
                    v130 = v4 + v2;
                    *(a1 + 4 * (v125 & 3) + 100) = v86;
                    *(a1 + 96) = v125 + 1;
                    *(a1 + 264) -= v4;
                    *v128 = *v129;
                    if (v126 + v4 > v2 && v130 > v126)
                    {
                      goto LABEL_8;
                    }

                    v132 = *(a1 + 88);
                    if (v130 >= v132 || v126 + v4 >= v132)
                    {
                      goto LABEL_8;
                    }

                    if (v4 >= 17)
                    {
                      if (v4 < 0x21)
                      {
                        v128[1] = v129[1];
                      }

                      else
                      {
                        memcpy(v128 + 1, v129 + 1, (v4 - 16));
                      }
                    }
                  }

                  else
                  {
                    if (v86 > 2147483644)
                    {
                      return 4294967280;
                    }

                    if ((v4 - 4) > 0x14)
                    {
                      return 4294967284;
                    }

                    v115 = *(a1 + 696);
                    v116 = *(a1 + 704);
                    v117 = *(v115 + 4 * v4 + 32);
                    v118 = *(v115 + v4);
                    *(a1 + 96) += v84;
                    v119 = *(v115 + 168);
                    if (!v119)
                    {
                      return 4294967277;
                    }

                    v120 = v86 + ~v113;
                    v121 = v120 >> v118;
                    if (v120 >> v118 >= *(v116 + 24))
                    {
                      return 4294967285;
                    }

                    v122 = (*(a1 + 120) + v2);
                    v123 = (v119 + v117 + (v120 & ~(-1 << v118)) * v4);
                    if (v121 == *(v116 + 48))
                    {
                      memcpy(v122, v123, v4);
                      v124 = v4;
                    }

                    else
                    {
                      v124 = BrotliTransformDictionaryWord(v122, v123, v4, v116, v121);
                    }

                    v2 += v124;
                    *(a1 + 264) -= v124;
                    if (v2 >= *(a1 + 88))
                    {
                      v11 = 15;
                      goto LABEL_163;
                    }

                    v130 = v2;
                  }

                  if (*(a1 + 264) <= 0)
                  {
                    *a1 = 14;
                    result = 1;
                    v2 = v130;
                    goto LABEL_156;
                  }

                  v2 = v130;
LABEL_15:
                  while (1)
                  {
                    *a1 = 7;
                    if (*(a1 + 276))
                    {
                      break;
                    }

                    if (!SafeDecodeCommandBlockSwitch(a1))
                    {
                      goto LABEL_155;
                    }
                  }

                  v133 = 0;
                  v12 = *(a1 + 8);
                  v13 = *(a1 + 16);
                  v14 = *(a1 + 24);
                  v15 = *(a1 + 32);
                  v16 = *(a1 + 136);
                  v17 = v12;
                  v18 = v13;
                  if ((v13 - 50) > 0xE)
                  {
LABEL_22:
                    v24 = v17 >> v18;
                    v25 = &v16[4 * (v17 >> v18)];
                    v26 = *v25;
                    if (v26 >= 9)
                    {
                      v18 += 8;
                      v25 += 4 * (BYTE1(v24) & ~(-1 << (v26 - 8)) & 0x7F) + 4 * *(v25 + 1);
                      v26 = *v25;
                    }

                    *(a1 + 16) = v18 + v26;
                    v27 = *(v25 + 1);
                    v133 = v27;
                  }

                  else
                  {
                    v19 = v14 + 1;
                    v20 = v15 - 1;
                    v17 = *(a1 + 8);
                    v21 = *(a1 + 16);
                    while (v20 != -1)
                    {
                      *(a1 + 8) = v17 >> 8;
                      *(&v22 + 1) = *(v19 - 1);
                      *&v22 = v17;
                      v17 = v22 >> 8;
                      *(a1 + 8) = v17;
                      v18 = v21 - 8;
                      *(a1 + 16) = v21 - 8;
                      *(a1 + 24) = v19;
                      *(a1 + 32) = v20;
                      ++v19;
                      --v20;
                      v23 = v21 - 58;
                      v21 -= 8;
                      if (v23 >= 0xF)
                      {
                        goto LABEL_22;
                      }
                    }

                    if (!SafeDecodeSymbol(v16, a1 + 8, &v133))
                    {
                      goto LABEL_155;
                    }

                    v27 = v133;
                  }

                  v28 = 0;
                  v29 = &kCmdLut + 8 * v27;
                  v30 = *v29;
                  v31 = v29[1];
                  v32 = v29[2];
                  v33 = v29[3];
                  LODWORD(v4) = *(v29 + 2);
                  v34 = *(v29 + 3);
                  *(a1 + 360) = v32;
                  *(a1 + 260) = v33;
                  *(a1 + 352) = *(*(a1 + 160) + v33);
                  if (v30)
                  {
                    v35 = *(a1 + 16);
                    v36 = 64 - v35;
                    if (64 - v35 < v30)
                    {
                      v37 = *(a1 + 32) - 1;
                      while (v37 != -1)
                      {
                        v38 = *(a1 + 8);
                        *(a1 + 8) = v38 >> 8;
                        v39 = *(a1 + 24);
                        *(&v41 + 1) = *v39;
                        *&v41 = v38;
                        v40 = v41 >> 8;
                        *(a1 + 8) = v40;
                        v35 -= 8;
                        *(a1 + 16) = v35;
                        *(a1 + 24) = v39 + 1;
                        *(a1 + 32) = v37--;
                        v36 += 8;
                        if (v36 >= v30)
                        {
                          goto LABEL_34;
                        }
                      }

                      goto LABEL_154;
                    }

                    v40 = *(a1 + 8);
LABEL_34:
                    v28 = (v40 >> v35) & ~(-1 << v30);
                    *(a1 + 16) = v35 + v30;
                  }

                  v42 = 0;
                  if (v31)
                  {
                    v43 = *(a1 + 16);
                    v44 = 64 - v43;
                    if (64 - v43 < v31)
                    {
                      v45 = *(a1 + 32) - 1;
                      while (v45 != -1)
                      {
                        v46 = *(a1 + 8);
                        *(a1 + 8) = v46 >> 8;
                        v47 = *(a1 + 24);
                        *(&v49 + 1) = *v47;
                        *&v49 = v46;
                        v48 = v49 >> 8;
                        *(a1 + 8) = v48;
                        v43 -= 8;
                        *(a1 + 16) = v43;
                        *(a1 + 24) = v47 + 1;
                        *(a1 + 32) = v45--;
                        v44 += 8;
                        if (v44 >= v31)
                        {
                          goto LABEL_42;
                        }
                      }

LABEL_154:
                      *(a1 + 8) = v12;
                      *(a1 + 16) = v13;
                      *(a1 + 24) = v14;
                      *(a1 + 32) = v15;
LABEL_155:
                      result = 2;
                      goto LABEL_156;
                    }

                    v48 = *(a1 + 8);
LABEL_42:
                    v42 = (v48 >> v43) & ~(-1 << v31);
                    *(a1 + 16) = v43 + v31;
                  }

                  *(a1 + 356) = v42 + v34;
                  --*(a1 + 276);
                  if (v28 + v4)
                  {
                    *(a1 + 264) -= v28 + v4;
                    LODWORD(v4) = v28 + v4;
                    goto LABEL_45;
                  }

                  LODWORD(v4) = 0;
                  continue;
                }

                v84 = 0;
                if (v99 >= 0xA)
                {
                  v111 = 10;
                }

                else
                {
                  v111 = 3;
                }

                if (v99 >= 0xA)
                {
                  v112 = -10;
                }

                else
                {
                  v112 = -4;
                }

                v86 = ((0x605142u >> (4 * (v112 + v99))) & 7) + *(a1 + 4 * ((*(a1 + 96) + v111) & 3) + 100) - 3;
                if (v86 < 1)
                {
                  v86 = 0x7FFFFFFF;
                }
              }

              break;
            }

            *(a1 + 360) = v86;
            goto LABEL_125;
          }
        }

        *a1 = 8;
        v2 = v69;
      }

      v51 = *(a1 + 120);
      v52 = v2;
      v53 = *(a1 + 92);
      v54 = *(v51 + (v53 & (v2 - 1)));
      v55 = *(v51 + (v53 & (v2 - 2)));
      v56 = *(a1 + 272);
      while (1)
      {
        if (!v56)
        {
          if (!SafeDecodeLiteralBlockSwitch(a1))
          {
            goto LABEL_98;
          }

          if (*(a1 + 256))
          {
            break;
          }
        }

        v57 = *(*(a1 + 168) + 8 * *(*(a1 + 152) + (*(*(a1 + 144) + v55 + 256) | *(*(a1 + 144) + v54))));
        v133 = 0;
        v58 = *(a1 + 16);
        if ((v58 - 50) >= 0xF)
        {
          v62 = *(a1 + 8);
LABEL_55:
          v65 = v62 >> v58;
          v66 = &v57[4 * (v62 >> v58)];
          v67 = *v66;
          if (v67 >= 9)
          {
            v58 += 8;
            v66 += 4 * (BYTE1(v65) & ~(-1 << (v67 - 8)) & 0x7F) + 4 * *(v66 + 1);
            v67 = *v66;
          }

          *(a1 + 16) = v58 + v67;
          v68 = v66[2];
        }

        else
        {
          v59 = *(a1 + 32) - 1;
          while (v59 != -1)
          {
            v60 = *(a1 + 8);
            *(a1 + 8) = v60 >> 8;
            v61 = *(a1 + 24);
            *(&v63 + 1) = *v61;
            *&v63 = v60;
            v62 = v63 >> 8;
            *(a1 + 8) = v62;
            v64 = v58 - 8;
            *(a1 + 16) = v58 - 8;
            *(a1 + 24) = v61 + 1;
            *(a1 + 32) = v59--;
            LODWORD(v61) = v58 - 58;
            v58 -= 8;
            if (v61 >= 0xF)
            {
              v58 = v64;
              goto LABEL_55;
            }
          }

          if (!SafeDecodeSymbol(v57, a1 + 8, &v133))
          {
LABEL_98:
            result = 2;
            v2 = v52;
            goto LABEL_156;
          }

          v68 = v133;
        }

        *(*(a1 + 120) + v52) = v68;
        v56 = *(a1 + 272) - 1;
        *(a1 + 272) = v56;
        ++v52;
        v2 = *(a1 + 88);
        if (v2 == v52)
        {
          goto LABEL_165;
        }

        v55 = v54;
        v54 = v68;
        LODWORD(v69) = v52;
        LODWORD(v4) = v4 - 1;
        if (!v4)
        {
          goto LABEL_85;
        }
      }

      v2 = v52;
    }
  }

  if (v3 == 9)
  {
    goto LABEL_88;
  }

  if (v3 == 10)
  {
    v6 = v2;
LABEL_8:
    v7 = -v6;
    v8 = v2 - *(a1 + 88);
    while (1)
    {
      v9 = __OFSUB__(v4, 1);
      LODWORD(v4) = v4 - 1;
      if (((v4 & 0x80000000) != 0) != v9)
      {
        break;
      }

      *(*(a1 + 120) + v6) = *(*(a1 + 120) + ((v6 - *(a1 + 360)) & *(a1 + 92)));
      ++v6;
      --v7;
      if (__CFADD__(v8++, 1))
      {
        v2 = -v7;
        v11 = 16;
        goto LABEL_163;
      }
    }

    v2 = -v7;
    if (*(a1 + 264) > 0)
    {
      goto LABEL_15;
    }

    v11 = 14;
LABEL_163:
    *a1 = v11;
    goto LABEL_164;
  }

  return result;
}

uint64_t DecodeVarLenUint8(uint64_t a1, unint64_t *a2, unsigned int *a3)
{
  v3 = *(a1 + 656);
  if (v3)
  {
    if (v3 != 1)
    {
      if (v3 != 2)
      {
        return 4294967265;
      }

      v4 = *a3;
      goto LABEL_18;
    }

    v5 = *(a2 + 2);
  }

  else
  {
    v6 = *(a2 + 2);
    if (v6 == 64)
    {
      v7 = a2[3];
      if (!v7)
      {
        return 2;
      }

      v8 = *a2;
      *a2 >>= 8;
      v9 = a2[2];
      *(&v11 + 1) = *v9;
      *&v11 = v8;
      v10 = v11 >> 8;
      *a2 = v10;
      a2[2] = (v9 + 1);
      a2[3] = v7 - 1;
      v6 = 56;
    }

    else
    {
      v10 = *a2;
    }

    v5 = v6 + 1;
    *(a2 + 2) = v6 + 1;
    if (((v10 >> v6) & 1) == 0)
    {
      *a3 = 0;
      return 1;
    }
  }

  if ((v5 - 62) >= 3)
  {
    v16 = *a2;
    goto LABEL_16;
  }

  v13 = a2[3];
  if (!v13)
  {
    *(a1 + 656) = 1;
    return 2;
  }

  v14 = *a2;
  *a2 >>= 8;
  v15 = a2[2];
  *(&v17 + 1) = *v15;
  *&v17 = v14;
  v16 = v17 >> 8;
  *a2 = v16;
  v5 -= 8;
  a2[2] = (v15 + 1);
  a2[3] = v13 - 1;
LABEL_16:
  *(a2 + 2) = v5 + 3;
  v4 = (v16 >> v5) & 7;
  if (!v4)
  {
    v12 = 1;
    *a3 = 1;
LABEL_26:
    *(a1 + 656) = 0;
    return v12;
  }

  *a3 = v4;
LABEL_18:
  v18 = *(a2 + 2);
  v19 = 64 - v18;
  if (64 - v18 >= v4)
  {
    v23 = *a2;
LABEL_24:
    v25 = (v23 >> v18) & ~(-1 << v4);
    *(a2 + 2) = v18 + v4;
    v12 = 1;
    *a3 = (1 << *a3) + v25;
    goto LABEL_26;
  }

  v20 = a2[3] - 1;
  while (v20 != -1)
  {
    v21 = *a2;
    *a2 >>= 8;
    v22 = a2[2];
    *(&v24 + 1) = *v22;
    *&v24 = v21;
    v23 = v24 >> 8;
    *a2 = v23;
    v18 -= 8;
    *(a2 + 2) = v18;
    a2[2] = (v22 + 1);
    a2[3] = v20--;
    v19 += 8;
    if (v19 >= v4)
    {
      goto LABEL_24;
    }
  }

  v12 = 2;
  *(a1 + 656) = 2;
  return v12;
}

uint64_t ReadHuffmanCode(int a1, unsigned int a2, int *__src, _DWORD *a4, uint64_t a5)
{
  v9 = a5 + 760;
  v10 = *(a5 + 752);
  v11 = a5 + 2506;
  v12 = (a5 + 2488);
  if (!v10)
  {
    v13 = *(a5 + 16);
    if ((v13 - 63) >= 2)
    {
      v17 = *(a5 + 8);
    }

    else
    {
      v14 = *(a5 + 32);
      if (!v14)
      {
        return 2;
      }

      v15 = *(a5 + 8);
      *(a5 + 8) = v15 >> 8;
      v16 = *(a5 + 24);
      *(&v18 + 1) = *v16;
      *&v18 = v15;
      v17 = v18 >> 8;
      *(a5 + 8) = v17;
      v13 -= 8;
      *(a5 + 24) = v16 + 1;
      *(a5 + 32) = v14 - 1;
    }

    v19 = (v17 >> v13) & 3;
    *(a5 + 756) = v19;
    v20 = v13 + 2;
    *(a5 + 16) = v13 + 2;
    if (v19 == 1)
    {
      goto LABEL_38;
    }

    *(a5 + 772) = 0x2000000000;
    *(a5 + 2496) = 0;
    *(a5 + 2504) = 0;
    *v12 = 0;
    *(a5 + 2510) = 0;
    v10 = 4;
    *(a5 + 752) = 4;
  }

  v21 = 4294967265;
  if (v10 <= 2)
  {
    if (v10 != 1)
    {
      if (v10 != 2)
      {
        return v21;
      }

      v28 = *(a5 + 756);
      LODWORD(v29) = *(a5 + 768);
LABEL_43:
      v55 = 32 - __clz(a1 - 1);
      if (a1 == 1)
      {
        v55 = 0;
      }

      if (v28 <= v29)
      {
        v60 = *(a5 + 16);
        while (1)
        {
          v61 = 64 - v60;
          if (64 - v60 < v55)
          {
            break;
          }

          v65 = *(a5 + 8);
LABEL_60:
          v67 = (v65 >> v60) & ~(-1 << v55);
          v60 += v55;
          *(a5 + 16) = v60;
          if (v67 >= a2)
          {
            return 4294967292;
          }

          *(a5 + 920 + 2 * v28++) = v67;
          if (v28 > v29)
          {
            goto LABEL_46;
          }
        }

        v62 = *(a5 + 32) - 1;
        while (v62 != -1)
        {
          v63 = *(a5 + 8);
          *(a5 + 8) = v63 >> 8;
          v64 = *(a5 + 24);
          *(&v66 + 1) = *v64;
          *&v66 = v63;
          v65 = v66 >> 8;
          *(a5 + 8) = v65;
          v60 -= 8;
          *(a5 + 16) = v60;
          *(a5 + 24) = v64 + 1;
          *(a5 + 32) = v62--;
          v61 += 8;
          if (v61 >= v55)
          {
            goto LABEL_60;
          }
        }

        *(a5 + 756) = v28;
        v21 = 2;
        *(a5 + 752) = 2;
        return v21;
      }

LABEL_46:
      if (!v29)
      {
LABEL_112:
        v100 = BrotliBuildSimpleHuffmanTable(__src, 8, (a5 + 920), v29);
        if (a4)
        {
          *a4 = v100;
        }

        goto LABEL_159;
      }

      v56 = 0;
      v57 = a5 + 920;
      while (2)
      {
        v58 = *(v57 + 2 * v56++);
        v59 = v56;
        do
        {
          if (v58 == *(v57 + 2 * v59))
          {
            return 4294967291;
          }

          ++v59;
        }

        while (v59 <= v29);
        if (v56 != v29)
        {
          continue;
        }

        break;
      }

      goto LABEL_17;
    }

    v20 = *(a5 + 16);
LABEL_38:
    if ((v20 - 63) >= 2)
    {
      v53 = *(a5 + 8);
    }

    else
    {
      v50 = *(a5 + 32);
      if (!v50)
      {
        v49 = 1;
LABEL_151:
        *(a5 + 752) = v49;
        return 2;
      }

      v51 = *(a5 + 8);
      *(a5 + 8) = v51 >> 8;
      v52 = *(a5 + 24);
      *(&v54 + 1) = *v52;
      *&v54 = v51;
      v53 = v54 >> 8;
      *(a5 + 8) = v53;
      v20 -= 8;
      *(a5 + 24) = v52 + 1;
      *(a5 + 32) = v50 - 1;
    }

    v28 = 0;
    v29 = (v53 >> v20) & 3;
    *(a5 + 768) = v29;
    *(a5 + 16) = v20 + 2;
    *(a5 + 756) = 0;
    goto LABEL_43;
  }

  if (v10 == 3)
  {
    LODWORD(v29) = *(a5 + 768);
LABEL_17:
    if (v29 != 3)
    {
      goto LABEL_112;
    }

    v30 = *(a5 + 16);
    if (v30 != 64)
    {
      v34 = *(a5 + 8);
      goto LABEL_111;
    }

    v31 = *(a5 + 32);
    if (v31)
    {
      v32 = *(a5 + 8);
      *(a5 + 8) = v32 >> 8;
      v33 = *(a5 + 24);
      *(&v35 + 1) = *v33;
      *&v35 = v32;
      v34 = v35 >> 8;
      *(a5 + 8) = v34;
      *(a5 + 24) = v33 + 1;
      *(a5 + 32) = v31 - 1;
      v30 = 56;
LABEL_111:
      *(a5 + 16) = v30 + 1;
      LODWORD(v29) = ((v34 >> v30) & 1) + 3;
      *(a5 + 768) = v29;
      goto LABEL_112;
    }

    v49 = 3;
    goto LABEL_151;
  }

  if (v10 != 4)
  {
    if (v10 == 5)
    {
      v129 = a2;
      __srca = __src;
      v128 = a4;
      v22 = *(a5 + 768);
      v23 = *(a5 + 772);
      v24 = *(a5 + 776);
      v25 = *(a5 + 764);
      v26 = *(a5 + 760);
      v27 = *(a5 + 912);
      goto LABEL_71;
    }

    return v21;
  }

  v36 = *(a5 + 772);
  v37 = *(a5 + 776);
  v38 = *(a5 + 756);
  if (v38 <= 0x11)
  {
    v39 = *(a5 + 16);
    while (1)
    {
      v40 = kCodeLengthCodeOrder[v38];
      if ((v39 - 61) >= 4)
      {
        break;
      }

      v41 = *(a5 + 32);
      if (v41)
      {
        v42 = *(a5 + 8);
        *(a5 + 8) = v42 >> 8;
        v43 = *(a5 + 24);
        *(&v45 + 1) = *v43;
        *&v45 = v42;
        v44 = v45 >> 8;
        *(a5 + 8) = v44;
        v39 -= 8;
        *(a5 + 24) = v43 + 1;
        *(a5 + 32) = v41 - 1;
LABEL_27:
        v46 = (v44 >> v39) & 0xF;
        v47 = kCodeLengthPrefixLength[v46];
        goto LABEL_28;
      }

      if (v39 == 64)
      {
        v46 = 0;
      }

      else
      {
        v46 = *(a5 + 8) >> v39;
      }

      v47 = kCodeLengthPrefixLength[v46];
      if (64 - v39 < v47)
      {
        *(a5 + 756) = v38;
        *(a5 + 772) = v36;
        *(a5 + 776) = v37;
        v49 = 4;
        goto LABEL_151;
      }

LABEL_28:
      v48 = kCodeLengthPrefixValue[v46];
      v39 += v47;
      *(a5 + 16) = v39;
      *(v12 + v40) = v48;
      if (((0x1111uLL >> v46) & 1) != 0 || (v37 -= 0x20u >> v48, ++v36, ++*(v11 + 2 * v48), (v37 - 33) >= 0xFFFFFFE0))
      {
        if (++v38 != 18)
        {
          continue;
        }
      }

      goto LABEL_64;
    }

    v44 = *(a5 + 8);
    goto LABEL_27;
  }

LABEL_64:
  if (v36 == 1 || !v37)
  {
    v129 = a2;
    __srca = __src;
    v128 = a4;
    BrotliBuildCodeLengthsHuffmanTable(a5 + 780, v12, v11);
    v68 = 0;
    *v11 = 0u;
    *(v11 + 16) = 0u;
    v69 = (v9 + 1600);
    *&v70 = -1;
    *(&v70 + 1) = -1;
    v27 = *(a5 + 912);
    do
    {
      v71 = vdupq_n_s64(v68);
      v72 = vorrq_s8(v71, xmmword_29864C3B0);
      v73 = vorrq_s8(v71, xmmword_29864C3C0);
      v74 = vorrq_s8(v71, xmmword_29864C3D0);
      v75 = vorrq_s8(v71, xmmword_29864C3E0);
      *v69 = vuzp1q_s32(v75, v74);
      v69[1] = vuzp1q_s32(v73, v72);
      v69 += 2;
      *(v27 + 2 * v75.i64[0]) = v70;
      v68 += 8;
    }

    while (v68 != 16);
    v26 = 0;
    v23 = 0;
    v22 = 0;
    *v9 = xmmword_29864C3F0;
    v24 = 0x8000;
    *(a5 + 776) = 0x8000;
    *(a5 + 752) = 5;
    v25 = 8;
LABEL_71:
    v76 = a5 + 2360;
    if (BrotliWarmupBitReader((a5 + 8)))
    {
      v77 = v129;
      if (v22 >= v129 || !v24)
      {
LABEL_154:
        *(a5 + 776) = v24;
LABEL_155:
        if (v24)
        {
          return 4294967289;
        }

LABEL_157:
        v125 = BrotliBuildHuffmanTable(__srca, 8, *(a5 + 912), v11);
        if (v128)
        {
          *v128 = v125;
        }

LABEL_159:
        *(a5 + 752) = 0;
        return 1;
      }

      v78 = *(a5 + 32);
      while (1)
      {
        v79 = v78 - 4;
        if (v78 < 4)
        {
          break;
        }

        v80 = *(a5 + 16);
        v81 = *(a5 + 8);
        if (v80 >= 0x20)
        {
          v80 ^= 0x20u;
          *(a5 + 16) = v80;
          v82 = *(a5 + 24);
          *(&v83 + 1) = *v82;
          *&v83 = v81;
          v81 = v83 >> 32;
          *(a5 + 8) = v81;
          *(a5 + 24) = v82 + 1;
          *(a5 + 32) = v79;
          v78 = v79;
        }

        v84 = (a5 + 780 + 4 * ((v81 >> v80) & 0x1F));
        v85 = v80 + *v84;
        *(a5 + 16) = v85;
        v86 = *(v84 + 1);
        if (v86 > 0xF)
        {
          v87 = v86 == 16;
          if (v86 == 16)
          {
            v88 = 2;
          }

          else
          {
            v88 = 3;
          }

          v89 = (v81 >> v85) & ~(-1 << v88);
          *(a5 + 16) = v88 + v85;
          if (v87)
          {
            v90 = v25;
          }

          else
          {
            v90 = 0;
          }

          v91 = (v23 - 2) << v88;
          if (v23)
          {
            v92 = v23;
          }

          else
          {
            v92 = 0;
          }

          if (!v23)
          {
            v91 = 0;
          }

          v93 = v26 == v90;
          if (v26 == v90)
          {
            v94 = v92;
          }

          else
          {
            v26 = v90;
            v94 = 0;
          }

          if (v93)
          {
            v95 = v91;
          }

          else
          {
            v95 = 0;
          }

          v23 = v89 + v95 + 3;
          v96 = v23 - v94;
          v97 = v23 - v94 + v22;
          if (v97 > v129)
          {
            v24 = 0xFFFFF;
            goto LABEL_154;
          }

          if (v26)
          {
            v98 = *(v76 + 4 * v26);
            v99 = v95 + v89 - v94 + 3;
            do
            {
              *(v27 + 2 * v98) = v22;
              v98 = v22++;
              --v99;
            }

            while (v99);
            *(v76 + 4 * v26) = v22 - 1;
            v24 -= v96 << (15 - v26);
            *(v11 + 2 * v26) += v96;
          }

          v22 = v97;
        }

        else
        {
          if (*(v84 + 1))
          {
            *(v27 + 2 * *(v76 + 4 * *(v84 + 1))) = v22;
            *(v76 + 4 * v86) = v22;
            v24 -= 0x8000u >> v86;
            ++*(v11 + 2 * v86);
            v25 = v86;
          }

          v23 = 0;
          ++v22;
        }

        if (v22 >= v129 || !v24)
        {
          goto LABEL_154;
        }
      }

      *(a5 + 768) = v22;
      *(a5 + 772) = v23;
      *(a5 + 764) = v25;
      *(a5 + 760) = v26;
      *(a5 + 776) = v24;
    }

    else
    {
      v22 = *(a5 + 768);
      v24 = *(a5 + 776);
      v77 = v129;
    }

    if (v22 < v77)
    {
      v101 = 0;
      while (1)
      {
        if (!v24)
        {
          goto LABEL_157;
        }

        if (v101)
        {
          v102 = *(a5 + 32);
          if (!v102)
          {
            return 2;
          }

          v103 = *(a5 + 8);
          *(a5 + 8) = v103 >> 8;
          v104 = *(a5 + 24);
          *(&v105 + 1) = *v104;
          *&v105 = v103;
          *(a5 + 8) = v105 >> 8;
          v106 = *(a5 + 16) - 8;
          *(a5 + 16) = v106;
          *(a5 + 24) = v104 + 1;
          *(a5 + 32) = v102 - 1;
        }

        else
        {
          v106 = *(a5 + 16);
        }

        if (v106 == 64)
        {
          LODWORD(v107) = 0;
        }

        else
        {
          v107 = *(a5 + 8) >> v106;
        }

        v108 = (a5 + 780 + 4 * (v107 & 0x1F));
        v109 = *v108;
        if (64 - v106 < v109)
        {
          goto LABEL_126;
        }

        v110 = *(v108 + 1);
        if (v110 <= 0xF)
        {
          *(a5 + 16) = v106 + v109;
          v111 = *(a5 + 912);
          *(a5 + 772) = 0;
          if (v110)
          {
            *(v111 + 2 * *(v76 + 4 * v110)) = v22;
            *(v76 + 4 * v110) = v22;
            *(a5 + 764) = v110;
            v24 -= 0x8000u >> v110;
            *(a5 + 776) = v24;
            ++*(v11 + 2 * v110);
          }

          v101 = 0;
          *(a5 + 768) = ++v22;
          goto LABEL_147;
        }

        v112 = v110 - 14;
        v113 = v110 - 14 + v109;
        if (64 - v106 < v113)
        {
LABEL_126:
          v101 = 1;
        }

        else
        {
          *(a5 + 16) = v113 + v106;
          if (v110 == 16)
          {
            v114 = *(a5 + 764);
            v115 = 2;
          }

          else
          {
            v114 = 0;
            v115 = 3;
          }

          if (*(a5 + 760) == v114)
          {
            v116 = *(v9 + 12);
            if (v116)
            {
              v117 = (v116 - 2) << v115;
            }

            else
            {
              v117 = 0;
            }
          }

          else
          {
            v117 = 0;
            v116 = 0;
            *(a5 + 760) = v114;
          }

          v118 = (v107 >> v109) & ~(-1 << v112);
          v119 = *(a5 + 912);
          v120 = v118 + v117 + 3;
          *(v9 + 12) = v120;
          v121 = v120 - v116;
          v122 = v120 - v116 + v22;
          if (v122 > v77)
          {
            *(a5 + 768) = v77;
            *(a5 + 776) = 0xFFFFF;
            return 4294967289;
          }

          if (v114)
          {
            v123 = *(v76 + 4 * v114);
            v124 = v117 + v118 - v116 + 3;
            do
            {
              *(v119 + 2 * v123) = v22;
              v123 = v22++;
              --v124;
            }

            while (v124);
            v101 = 0;
            *(a5 + 768) = v122;
            *(v76 + 4 * v114) = v22 - 1;
            v24 -= v121 << (15 - v114);
            *(a5 + 776) = v24;
            *(v11 + 2 * v114) += v121;
          }

          else
          {
            v101 = 0;
            *(a5 + 768) = v122;
          }

          v22 = v122;
        }

LABEL_147:
        if (v22 >= v77)
        {
          goto LABEL_155;
        }
      }
    }

    goto LABEL_155;
  }

  return 4294967290;
}

uint64_t BrotliBuildCodeLengthsHuffmanTable(uint64_t result, uint64_t a2, unsigned __int16 *a3)
{
  v3 = 0;
  v45 = *MEMORY[0x29EDCA608];
  v4 = a3[1] - 1;
  v5 = v4 + a3[2] + a3[3];
  v43[2] = v4 + a3[2];
  v43[3] = v5;
  v6 = v5 + a3[4];
  v7 = v6 + a3[5];
  v43[4] = v6;
  v43[5] = v7;
  v43[0] = 17;
  v43[1] = v4;
  v8 = a2 + 17;
  do
  {
    v9 = *(v8 + v3);
    v10 = v43[v9];
    v44[v10] = v3 + 17;
    v43[v9] = v10 - 1;
    v11 = *(v8 + v3 - 1);
    v12 = v43[v11];
    v43[v11] = v12 - 1;
    v13 = *(v8 + v3 - 2);
    v14 = v43[v13];
    v44[v12] = v3 + 16;
    v44[v14] = v3 + 15;
    v43[v13] = v14 - 1;
    v15 = *(v8 + v3 - 3);
    v16 = v43[v15];
    v43[v15] = v16 - 1;
    v17 = *(v8 + v3 - 4);
    v18 = v43[v17];
    v44[v16] = v3 + 14;
    v44[v18] = v3 + 13;
    v43[v17] = v18 - 1;
    v19 = *(v8 + v3 - 5);
    v20 = v43[v19];
    v43[v19] = v20 - 1;
    v44[v20] = v3 + 12;
    v3 -= 6;
  }

  while (v3 != -18);
  if (v43[0])
  {
    v21 = 0;
    LODWORD(v22) = 0;
    v23 = result + 128;
    v24 = 2;
    v25 = 0x8000000000000000;
    for (i = 1; i != 6; ++i)
    {
      v27 = a3[i];
      if (a3[i])
      {
        v28 = -v24;
        v22 = v22;
        v29 = 0x1FuLL / v24;
        result = (v29 + 4) & 0x3C;
        v30 = vdupq_n_s64(v29);
        do
        {
          v31 = 0;
          v32 = i | (v44[v22] << 16);
          v33 = __rbit64(v21);
          v34 = 4 * v33;
          v35 = 12 * v28 + 4 * v33;
          v36 = 8 * v28 + 4 * v33;
          v37 = v28 + v33;
          v38 = v23 - 4 * v24;
          do
          {
            v39 = vdupq_n_s64(v31);
            v40 = vmovn_s64(vcgeq_u64(v30, vorrq_s8(v39, xmmword_29862D9D0)));
            if (vuzp1_s16(v40, 2).u8[0])
            {
              *(v38 + v34) = v32;
            }

            if (vuzp1_s16(v40, 2).i8[2])
            {
              *(v38 + 4 * v37) = v32;
            }

            if (vuzp1_s16(2, vmovn_s64(vcgeq_u64(v30, vorrq_s8(v39, xmmword_29862D9C0)))).i32[1])
            {
              *(v38 + v36) = v32;
              *(v38 + v35) = v32;
            }

            v31 += 4;
            v38 += 16 * v28;
          }

          while (result != v31);
          ++v22;
          v21 += v25;
          --v27;
        }

        while (v27);
      }

      v24 *= 2;
      v25 >>= 1;
    }
  }

  else
  {
    v41 = 0;
    v42 = vdupq_n_s32(v44[0] << 16);
    do
    {
      *(result + v41) = v42;
      v41 += 16;
    }

    while (v41 != 128);
  }

  return result;
}

uint64_t BrotliBuildHuffmanTable(char *__src, int a2, uint64_t a3, uint64_t a4)
{
  v8 = (a3 - 2);
  v9 = 16;
  do
  {
    v10 = *v8--;
    --v9;
  }

  while (v10 == -1);
  v11 = 0;
  v12 = 1;
  v13 = (1 << a2);
  if (v9 >= a2)
  {
    v14 = a2;
  }

  else
  {
    v14 = v9;
  }

  if (v9 >= a2)
  {
    v15 = 1 << a2;
  }

  else
  {
    v15 = 1 << v9;
  }

  v16 = v14;
  v17 = 2;
  v18 = 0x8000000000000000;
  do
  {
    v19 = *(a4 + 2 * v12);
    if (*(a4 + 2 * v12))
    {
      v20 = v12 - 16;
      do
      {
        v20 = *(a3 + 2 * v20);
        v21 = &__src[4 * __rbit64(v11)];
        v22 = v15;
        do
        {
          *&v21[4 * (v22 - v17)] = v12 | (v20 << 16);
          v22 -= v17;
        }

        while (v22 > 0);
        v11 += v18;
        --v19;
      }

      while (v19);
    }

    v17 *= 2;
    v18 >>= 1;
  }

  while (v12++ < v16);
  if (v13 != v15)
  {
    do
    {
      memcpy(&__src[4 * v15], __src, 4 * v15);
      v24 = v13 == 2 * v15;
      v15 *= 2;
    }

    while (!v24);
  }

  if (v9 > a2)
  {
    v25 = 0;
    v26 = a2;
    v27 = v9;
    v28 = a2 + 1;
    v29 = 0x8000000000000000;
    v30 = 2;
    v31 = __src;
    v32 = 1 << a2;
    do
    {
      v33 = v26 + 1;
      if (*(a4 + 2 * (v26 + 1)))
      {
        v34 = v26 - 15;
        do
        {
          if (!v25)
          {
            v35 = v26 + 1;
            if (v26 <= 13)
            {
              v36 = v26;
              v35 = v28;
              v37 = 1 << (v33 - a2);
              while (1)
              {
                v38 = v37 - *(a4 + 2 + 2 * v36);
                if (v38 < 1)
                {
                  break;
                }

                v37 = 2 * v38;
                ++v35;
                if (++v36 >= 14)
                {
                  v35 = 15;
                  break;
                }
              }
            }

            v31 += 4 * v32;
            v32 = 1 << (v35 - a2);
            v13 = (v32 + v13);
            v39 = __rbit64(v11);
            v11 += 0x8000000000000000 >> (a2 - 1);
            *&__src[4 * v39] = v35 | ((((v31 - __src) >> 2) - v39) << 16);
          }

          v34 = *(a3 + 2 * v34);
          v40 = &v31[4 * __rbit64(v25)];
          v41 = v32;
          do
          {
            *&v40[4 * (v41 - v30)] = (v33 - a2) | (v34 << 16);
            v41 -= v30;
          }

          while (v41 > 0);
          v25 += v29;
          v42 = *(a4 + 2 * v33) - 1;
          *(a4 + 2 * v33) = v42;
        }

        while (v42);
      }

      v30 *= 2;
      v29 >>= 1;
      ++v28;
      ++v26;
    }

    while (v33 < v27);
  }

  return v13;
}

uint64_t DecodeContextMap(unsigned int a1, unsigned int *a2, unsigned __int8 **a3, uint64_t a4)
{
  v8 = *(a4 + 748);
  result = 4294967265;
  if (v8 <= 1)
  {
    if (v8)
    {
      if (v8 != 1)
      {
        return result;
      }
    }

    else
    {
      result = DecodeVarLenUint8(a4, (a4 + 8), a2);
      if (result != 1)
      {
        return result;
      }

      ++*a2;
      *(a4 + 2552) = 0;
      v18 = (*(a4 + 40))(*(a4 + 56), a1);
      *a3 = v18;
      if (!v18)
      {
        return 4294967271;
      }

      if (*a2 <= 1)
      {
        bzero(v18, a1);
        return 1;
      }

      *(a4 + 748) = 1;
    }

    v11 = *(a4 + 16);
    if ((v11 - 60) >= 5)
    {
      v15 = *(a4 + 8);
    }

    else
    {
      v12 = *(a4 + 32);
      if (!v12)
      {
        return 2;
      }

      v13 = *(a4 + 8);
      *(a4 + 8) = v13 >> 8;
      v14 = *(a4 + 24);
      *(&v16 + 1) = *v14;
      *&v16 = v13;
      v15 = v16 >> 8;
      *(a4 + 8) = v15;
      v11 -= 8;
      *(a4 + 24) = v14 + 1;
      *(a4 + 32) = v12 - 1;
    }

    v19 = v15 >> v11;
    v20 = (v19 & 1) == 0;
    v17 = ((v19 << 31) >> 31) & (((v19 >> 1) & 0xF) + 1);
    if (v20)
    {
      v21 = v11 + 1;
    }

    else
    {
      v21 = v11 + 5;
    }

    *(a4 + 2556) = v17;
    *(a4 + 16) = v21;
    *(a4 + 748) = 2;
    goto LABEL_21;
  }

  if (v8 == 2)
  {
    v17 = *(a4 + 2556);
LABEL_21:
    result = ReadHuffmanCode(v17 + *a2, v17 + *a2, (a4 + 2564), 0, a4);
    if (result != 1)
    {
      return result;
    }

    v10 = 0xFFFF;
    *(a4 + 2560) = 0xFFFF;
    *(a4 + 748) = 3;
    goto LABEL_23;
  }

  if (v8 == 4)
  {
    goto LABEL_25;
  }

  if (v8 != 3)
  {
    return result;
  }

  v10 = *(a4 + 2560);
LABEL_23:
  v22 = *(a4 + 2552);
  v23 = *(a4 + 2556);
  v24 = *a3;
  v51 = v10;
  v25 = v10 != 0xFFFF;
  if (v22 >= a1 && v10 == 0xFFFF)
  {
LABEL_25:
    v26 = *(a4 + 16);
    if (v26 == 64)
    {
      v27 = *(a4 + 32);
      if (!v27)
      {
        result = 2;
        v32 = 4;
LABEL_32:
        *(a4 + 748) = v32;
        return result;
      }

      v28 = *(a4 + 8);
      *(a4 + 8) = v28 >> 8;
      v29 = *(a4 + 24);
      *(&v31 + 1) = *v29;
      *&v31 = v28;
      v30 = v31 >> 8;
      *(a4 + 8) = v30;
      *(a4 + 24) = v29 + 1;
      *(a4 + 32) = v27 - 1;
      v26 = 56;
    }

    else
    {
      v30 = *(a4 + 8);
    }

    *(a4 + 16) = v26 + 1;
    if ((v30 >> v26))
    {
      InverseMoveToFrontTransform(*a3, a1, a4);
    }

    v32 = 0;
    result = 1;
    goto LABEL_32;
  }

  while (1)
  {
    v33 = *(a4 + 16);
    if (!v25)
    {
      if ((v33 - 50) >= 0xF)
      {
        v37 = *(a4 + 8);
LABEL_40:
        v40 = v37 >> v33;
        v41 = (a4 + 2564 + 4 * (v37 >> v33));
        v42 = *v41;
        if (v42 >= 9)
        {
          v33 += 8;
          v41 += 4 * (BYTE1(v40) & ~(-1 << (v42 - 8)) & 0x7F) + 4 * *(v41 + 1);
          v42 = *v41;
        }

        *(a4 + 16) = v33 + v42;
        v10 = *(v41 + 1);
        v51 = v10;
        if (!v10)
        {
          goto LABEL_56;
        }
      }

      else
      {
        v34 = *(a4 + 32) - 1;
        while (v34 != -1)
        {
          v35 = *(a4 + 8);
          *(a4 + 8) = v35 >> 8;
          v36 = *(a4 + 24);
          *(&v38 + 1) = *v36;
          *&v38 = v35;
          v37 = v38 >> 8;
          *(a4 + 8) = v37;
          v39 = v33 - 8;
          *(a4 + 16) = v33 - 8;
          *(a4 + 24) = v36 + 1;
          *(a4 + 32) = v34--;
          LODWORD(v36) = v33 - 58;
          v33 -= 8;
          if (v36 >= 0xF)
          {
            v33 = v39;
            goto LABEL_40;
          }
        }

        if (!SafeDecodeSymbol((a4 + 2564), a4 + 8, &v51))
        {
          v10 = 0xFFFF;
          goto LABEL_65;
        }

        v10 = v51;
        if (!v51)
        {
LABEL_56:
          v43 = 0;
LABEL_57:
          v24[v22++] = v43;
          goto LABEL_58;
        }
      }

      v43 = v10 - v23;
      if (v10 > v23)
      {
        goto LABEL_57;
      }

      v33 = *(a4 + 16);
    }

    v44 = 64 - v33;
    if (64 - v33 < v10)
    {
      break;
    }

    v48 = *(a4 + 8);
LABEL_51:
    *(a4 + 16) = v33 + v10;
    v50 = ((v48 >> v33) & ~(-1 << v10)) + (1 << v10);
    if (v50 + v22 > a1)
    {
      return 4294967288;
    }

    do
    {
      v24[v22++] = 0;
      --v50;
    }

    while (v50);
LABEL_58:
    v25 = 0;
    if (v22 >= a1)
    {
      goto LABEL_25;
    }
  }

  v45 = *(a4 + 32) - 1;
  while (v45 != -1)
  {
    v46 = *(a4 + 8);
    *(a4 + 8) = v46 >> 8;
    v47 = *(a4 + 24);
    *(&v49 + 1) = *v47;
    *&v49 = v46;
    v48 = v49 >> 8;
    *(a4 + 8) = v48;
    v33 -= 8;
    *(a4 + 16) = v33;
    *(a4 + 24) = v47 + 1;
    *(a4 + 32) = v45--;
    v44 += 8;
    if (v44 >= v10)
    {
      goto LABEL_51;
    }
  }

LABEL_65:
  *(a4 + 2560) = v10;
  *(a4 + 2552) = v22;
  return 2;
}

unsigned __int8 *InverseMoveToFrontTransform(unsigned __int8 *result, unsigned int a2, uint64_t a3)
{
  v4 = result;
  v5 = 0;
  v6 = *(a3 + 384);
  v7 = (a3 + 392);
  *(a3 + 392) = 50462976;
  if ((v6 + 1) > 2)
  {
    v8 = (v6 + 1);
  }

  else
  {
    v8 = 2;
  }

  v9 = (v8 + 2) & 0x1FFFFFFFCLL;
  v10 = vdupq_n_s64(v8 - 2);
  v11 = xmmword_29864C400;
  v12 = a3 + 408;
  v13.i64[0] = 0x404040404040404;
  v13.i64[1] = 0x404040404040404;
  v14.i64[0] = 0x1010101010101010;
  v14.i64[1] = 0x1010101010101010;
  do
  {
    v15 = vdupq_n_s64(v5);
    v16 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(v15, xmmword_29862D9D0)));
    v17 = vaddq_s32(v11, v13);
    if (vuzp1_s16(v16, *v10.i8).u8[0])
    {
      *(v12 - 12) = v17.i32[0];
    }

    if (vuzp1_s16(v16, *&v10).i8[2])
    {
      *(v12 - 8) = v17.i32[1];
    }

    if (vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, vorrq_s8(v15, xmmword_29862D9C0)))).i32[1])
    {
      *(v12 - 4) = v17.i64[1];
    }

    v5 += 4;
    v11 = vaddq_s32(v11, v14);
    v12 += 16;
  }

  while (v9 != v5);
  if (a2)
  {
    v18 = 0;
    v19 = a2;
    do
    {
      v20 = *v4;
      v21 = v7[v20];
      *v4++ = v21;
      *(a3 + 391) = v21;
      result = memmove(v7, (a3 + 391), v20 + 1);
      v18 |= v20;
      --v19;
    }

    while (v19);
    v22 = v18 >> 2;
  }

  else
  {
    v22 = 0;
  }

  *(a3 + 384) = v22;
  return result;
}

uint64_t BrotliEnsureRingBuffer(uint64_t a1)
{
  v1 = *(a1 + 672);
  if (*(a1 + 88) == v1)
  {
    return 1;
  }

  v4 = *(a1 + 120);
  result = (*(a1 + 40))(*(a1 + 56), v1 + 42);
  *(a1 + 120) = result;
  if (result)
  {
    *(result + *(a1 + 672) - 2) = 0;
    *(*(a1 + 120) + *(a1 + 672) - 1) = 0;
    if (v4)
    {
      memcpy(*(a1 + 120), v4, *(a1 + 76));
      (*(a1 + 48))(*(a1 + 56), v4);
    }

    v5 = *(a1 + 672);
    *(a1 + 88) = v5;
    *(a1 + 92) = v5 - 1;
    *(a1 + 128) = *(a1 + 120) + v5;
    return 1;
  }

  else
  {
    *(a1 + 120) = v4;
  }

  return result;
}

uint64_t BrotliTransformDictionaryWord(uint64_t a1, char *a2, uint64_t a3, void *a4, int a5)
{
  v5 = a3;
  v8 = a4[1];
  v7 = a4[2];
  v9 = (a4[4] + 3 * a5);
  v10 = *(v7 + 2 * *v9);
  v11 = v9[1];
  v12 = *(v7 + 2 * v9[2]);
  v13 = *(v8 + v10);
  if (*(v8 + v10))
  {
    v14 = 0;
    v15 = v10 + v8 + 1;
    do
    {
      *(a1 + v14) = *(v15 + v14);
      ++v14;
    }

    while (v13 != v14);
  }

  else
  {
    v14 = 0;
  }

  if (v11 > 9)
  {
    if ((v11 - 12) <= 8)
    {
      v16 = (v11 - 11);
      a2 += v16;
      v5 = (a3 - v16);
    }
  }

  else
  {
    v5 = (a3 - v11);
  }

  if (v5 >= 1)
  {
    v14 = v14;
    v17 = v5;
    do
    {
      v18 = *a2++;
      *(a1 + v14++) = v18;
      --v17;
    }

    while (v17);
  }

  if (v11 > 20)
  {
    if (v11 == 21)
    {
      Shift((a1 - v5 + v14), v5, *(a4[5] + 2 * a5) | (*(a4[5] + 2 * a5 + 1) << 8));
    }

    else if (v11 == 22 && v5 >= 1)
    {
      v23 = *(a4[5] + 2 * a5) | (*(a4[5] + 2 * a5 + 1) << 8);
      v24 = (a1 - v5 + v14);
      do
      {
        v25 = Shift(v24, v5, v23);
        v24 += v25;
        v22 = __OFSUB__(v5, v25);
        v5 = (v5 - v25);
      }

      while (!((v5 < 0) ^ v22 | (v5 == 0)));
    }
  }

  else if (v11 == 10)
  {
    v26 = (a1 - v5 + v14);
    v27 = *v26;
    if (v27 > 0xBF)
    {
      if (v27 > 0xDF)
      {
        v26[2] ^= 5u;
      }

      else
      {
        v26[1] ^= 0x20u;
      }
    }

    else if (v27 - 97 <= 0x19)
    {
      *v26 = v27 & 0x5F;
    }
  }

  else if (v11 == 11 && v5 >= 1)
  {
    v19 = (a1 - v5 + v14);
    do
    {
      v20 = *v19;
      if (v20 > 0xBF)
      {
        if (v20 > 0xDF)
        {
          v19[2] ^= 5u;
          v21 = 3;
        }

        else
        {
          v19[1] ^= 0x20u;
          v21 = 2;
        }
      }

      else
      {
        if (v20 - 97 <= 0x19)
        {
          *v19 = v20 & 0x5F;
        }

        v21 = 1;
      }

      v19 += v21;
      v22 = __OFSUB__(v5, v21);
      LODWORD(v5) = v5 - v21;
    }

    while (!((v5 < 0) ^ v22 | (v5 == 0)));
  }

  v28 = *(v8 + v12);
  if (*(v8 + v12))
  {
    v14 = v14;
    v29 = (v12 + v8 + 1);
    do
    {
      v30 = *v29++;
      *(a1 + v14++) = v30;
      --v28;
    }

    while (v28);
  }

  return v14;
}

uint64_t DecodeLiteralBlockSwitch(uint64_t result)
{
  v1 = *(result + 284);
  if (v1 >= 2)
  {
    v2 = *(result + 240);
    v3 = *(result + 16);
    v4 = *(result + 8);
    if (v3 >= 0x30)
    {
      *(result + 8) = HIWORD(v4);
      v3 ^= 0x30u;
      *(result + 16) = v3;
      v5 = *(result + 24);
      v6 = *(result + 32);
      *(&v7 + 1) = *v5;
      *&v7 = v4;
      v4 = v7 >> 48;
      *(result + 8) = v4;
      *(result + 24) = v5 + 6;
      *(result + 32) = v6 - 6;
    }

    v8 = v4 >> v3;
    v9 = (v2 + 4 * (v4 >> v3));
    v10 = *v9;
    if (v10 >= 9)
    {
      v3 += 8;
      v9 += 4 * ((v8 >> 8) & ~(-1 << (v10 - 8))) + 4 * *(v9 + 1);
      v10 = *v9;
    }

    v11 = *(result + 248);
    v12 = v3 + v10;
    v13 = *(v9 + 1);
    if (v12 >= 0x30)
    {
      *(result + 8) = HIWORD(v4);
      v12 ^= 0x30u;
      v14 = *(result + 24);
      v15 = *(result + 32);
      *(&v16 + 1) = *v14;
      *&v16 = v4;
      v4 = v16 >> 48;
      *(result + 8) = v4;
      *(result + 24) = v14 + 6;
      *(result + 32) = v15 - 6;
    }

    v17 = v4 >> v12;
    v18 = (v11 + 4 * (v4 >> v12));
    v19 = *v18;
    if (v19 >= 9)
    {
      v12 += 8;
      v18 += 4 * ((v17 >> 8) & ~(-1 << (v19 - 8))) + 4 * *(v18 + 1);
      v19 = *v18;
    }

    v20 = v12 + v19;
    v21 = (&_kBrotliPrefixCodeRanges + 4 * *(v18 + 1));
    v22 = *(v21 + 2);
    v23 = *v21;
    if (v20 >= 0x20)
    {
      v20 ^= 0x20u;
      *(result + 16) = v20;
      v24 = *(result + 24);
      v25 = *(result + 32);
      *(&v26 + 1) = *v24;
      *&v26 = v4;
      v4 = v26 >> 32;
      *(result + 8) = v4;
      *(result + 24) = v24 + 1;
      *(result + 32) = v25 - 4;
    }

    *(result + 16) = v20 + v22;
    *(result + 272) = ((v4 >> v20) & ~(-1 << v22)) + v23;
    if (v13)
    {
      if (v13 == 1)
      {
        v27 = *(result + 300) + 1;
      }

      else
      {
        v27 = v13 - 2;
      }
    }

    else
    {
      v27 = *(result + 296);
    }

    if (v27 < v1)
    {
      v1 = 0;
    }

    v28 = v27 - v1;
    *(result + 296) = *(result + 300);
    *(result + 300) = v28;
    v29 = v28 << 6;
    v30 = *(result + 680);
    *(result + 152) = v30 + v29;
    *(result + 256) = (*(result + 4 * (v28 >> 5) + 712) >> v28) & 1;
    *(result + 344) = *(*(result + 168) + 8 * *(v30 + v29));
    *(result + 144) = &_kBrotliContextLookupTable + 512 * (*(*(result + 688) + v28) & 3);
  }

  return result;
}

uint64_t WriteRingBuffer(uint64_t a1, size_t *a2, void **a3, size_t *a4, int a5)
{
  v5 = *(a1 + 88);
  if (*(a1 + 76) >= v5)
  {
    v6 = *(a1 + 88);
  }

  else
  {
    v6 = *(a1 + 76);
  }

  v7 = *(a1 + 376);
  v8 = *(a1 + 368) * v5 - v7;
  v9 = v8 + v6;
  v10 = *a2;
  if (*a2 >= v9)
  {
    v11 = v8 + v6;
  }

  else
  {
    v11 = *a2;
  }

  if ((*(a1 + 264) & 0x80000000) != 0)
  {
    return 4294967287;
  }

  if (!a3)
  {
    goto LABEL_13;
  }

  v17 = (*(a1 + 120) + (v7 & *(a1 + 92)));
  if (!*a3)
  {
    *a3 = v17;
LABEL_13:
    v18 = v10;
    goto LABEL_14;
  }

  memcpy(*a3, v17, v11);
  *a3 = *a3 + v11;
  v18 = *a2;
LABEL_14:
  *a2 = v18 - v11;
  v20 = *(a1 + 376) + v11;
  *(a1 + 376) = v20;
  if (a4)
  {
    *a4 = v20;
  }

  v21 = *(a1 + 88);
  v22 = 1 << *(a1 + 668);
  if (v10 >= v9)
  {
    if (v21 == v22)
    {
      v24 = *(a1 + 76);
      v25 = __OFSUB__(v24, v21);
      v26 = v24 - v21;
      if (v26 < 0 == v25)
      {
        *(a1 + 76) = v26;
        ++*(a1 + 368);
        *(a1 + 664) = *(a1 + 664) & 0xFFF7 | (8 * (v26 != 0));
      }
    }

    return 1;
  }

  else if (v21 != v22 && a5 == 0)
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

uint64_t SafeDecodeSymbol(unsigned __int8 *a1, uint64_t a2, _DWORD *a3)
{
  v3 = *(a2 + 8);
  if (v3 == 64)
  {
    if (!*a1)
    {
      goto LABEL_12;
    }

    return 0;
  }

  v4 = 64 - v3;
  v5 = *a2 >> v3;
  a1 += 4 * v5;
  v6 = *a1;
  if (v6 > 8)
  {
    if (v4 < 9)
    {
      return 0;
    }

    a1 += 4 * *(a1 + 1) + 4 * ((v5 & ~(-1 << v6)) >> 8);
    v8 = *a1;
    if (56 - v3 < v8)
    {
      return 0;
    }

    v7 = v3 + v8 + 8;
  }

  else
  {
    if (v4 < v6)
    {
      return 0;
    }

    v7 = v3 + v6;
  }

  *(a2 + 8) = v7;
LABEL_12:
  *a3 = *(a1 + 1);
  return 1;
}

uint64_t SaveErrorCode(uint64_t a1, unsigned int a2)
{
  *(a1 + 116) = a2;
  if (a2 - 1 >= 3)
  {
    return 0;
  }

  else
  {
    return a2;
  }
}

BOOL BrotliDecoderHuffmanTreeGroupInit(uint64_t a1, uint64_t a2, __int16 a3, int a4, unsigned int a5)
{
  v6 = a4;
  v9 = (*(a1 + 40))(*(a1 + 56), (4 * (a4 + 376) + 8) * a5);
  *(a2 + 16) = a3;
  *(a2 + 18) = v6;
  *(a2 + 20) = a5;
  *a2 = v9;
  *(a2 + 8) = v9 + 8 * a5;
  return v9 != 0;
}

uint64_t BrotliBuildSimpleHuffmanTable(int *__src, char a2, unsigned __int16 *a3, int a4)
{
  v5 = 1;
  v6 = (1 << a2);
  if (a4 <= 1)
  {
    if (a4)
    {
      if (a4 == 1)
      {
        v14 = a3[1];
        v15 = *a3;
        if (v14 <= v15)
        {
          *__src = (v14 << 16) | 1;
          v16 = (*a3 << 16) | 1;
        }

        else
        {
          *__src = (v15 << 16) | 1;
          v16 = (a3[1] << 16) | 1;
        }

        __src[1] = v16;
        v5 = 2;
      }
    }

    else
    {
      *__src = *a3 << 16;
      v5 = 1;
    }
  }

  else
  {
    if (a4 == 2)
    {
      *__src = (*a3 << 16) | 1;
      __src[2] = (*a3 << 16) | 1;
      v17 = a3[2];
      v18 = a3[1];
      if (v17 > v18)
      {
        __src[1] = (v18 << 16) | 2;
        v19 = (a3[2] << 16) | 2;
LABEL_24:
        __src[3] = v19;
        v5 = 4;
        goto LABEL_28;
      }

      __src[1] = (v17 << 16) | 2;
      v13 = a3[1];
LABEL_23:
      v19 = (v13 << 16) | 2;
      goto LABEL_24;
    }

    if (a4 != 4)
    {
      if (a4 != 3)
      {
        goto LABEL_28;
      }

      v7 = 0;
      v8 = 2;
      do
      {
        v9 = v7++;
        v10 = a3[v9];
        v11 = v8;
        do
        {
          v12 = *(a3 + v11);
          if (v12 < v10)
          {
            *(a3 + v11) = v10;
            a3[v9] = v12;
            v10 = v12;
          }

          v11 += 2;
        }

        while (v11 != 8);
        v8 += 2;
      }

      while (v7 != 3);
      *__src = (*a3 << 16) | 2;
      __src[2] = (a3[1] << 16) | 2;
      __src[1] = (a3[2] << 16) | 2;
      v13 = a3[3];
      goto LABEL_23;
    }

    v20 = a3[3];
    v21 = a3[2];
    if (v20 < v21)
    {
      a3[3] = v21;
      a3[2] = v20;
    }

    *__src = (*a3 << 16) | 1;
    __src[1] = (a3[1] << 16) | 2;
    __src[2] = (*a3 << 16) | 1;
    __src[3] = (a3[2] << 16) | 3;
    __src[4] = (*a3 << 16) | 1;
    __src[5] = (a3[1] << 16) | 2;
    __src[6] = (*a3 << 16) | 1;
    __src[7] = (a3[3] << 16) | 3;
    v5 = 8;
  }

LABEL_28:
  while (v5 != v6)
  {
    memcpy(&__src[v5], __src, 4 * v5);
    v5 *= 2;
  }

  return v6;
}

uint64_t brotli_stream_end(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = v2[2];
    if (*v2)
    {
      BrotliDecoderDestroyInstance(v3);
    }

    else
    {
      BrotliEncoderDestroyInstance(v3);
    }

    free(v2);
  }

  *(a1 + 32) = 0;
  return 0;
}

uint64_t BrotliDecoderStateCleanupAfterMetablock(uint64_t a1)
{
  (*(a1 + 48))(*(a1 + 56), *(a1 + 688));
  *(a1 + 688) = 0;
  (*(a1 + 48))(*(a1 + 56), *(a1 + 680));
  *(a1 + 680) = 0;
  (*(a1 + 48))(*(a1 + 56), *(a1 + 336));
  *(a1 + 336) = 0;
  (*(a1 + 48))(*(a1 + 56), *(a1 + 168));
  *(a1 + 168) = 0;
  (*(a1 + 48))(*(a1 + 56), *(a1 + 192));
  *(a1 + 192) = 0;
  result = (*(a1 + 48))(*(a1 + 56), *(a1 + 216));
  *(a1 + 216) = 0;
  return result;
}

uint64_t BrotliDecoderStateCleanup(uint64_t a1)
{
  BrotliDecoderStateCleanupAfterMetablock(a1);
  (*(a1 + 48))(*(a1 + 56), *(a1 + 120));
  *(a1 + 120) = 0;
  result = (*(a1 + 48))(*(a1 + 56), *(a1 + 240));
  *(a1 + 240) = 0;
  return result;
}

uint64_t BrotliDecoderDestroyInstance(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = *(result + 48);
    v2 = *(result + 56);
    BrotliDecoderStateCleanup(result);

    return v3(v2, v1);
  }

  return result;
}

uint64_t Shift(char *a1, uint64_t a2, __int16 a3)
{
  v3 = *a1;
  if ((*a1 & 0x80000000) == 0)
  {
    *a1 = (v3 + a3) & 0x7F;
    return 1;
  }

  if (v3 < 0xC0)
  {
    return 1;
  }

  v5 = (a3 & 0x7FFF) - (a3 & 0x8000) + 0x1000000;
  if (v3 <= 0xDF)
  {
    if (a2 >= 2)
    {
      v6 = a1[1];
      v7 = (v6 & 0x3F | ((v3 & 0x1F) << 6)) + v5;
      *a1 = (v7 >> 6) & 0x1F | 0xC0;
      a1[1] = v6 & 0xC0 | v7 & 0x3F;
      return 2;
    }

    return 1;
  }

  if (v3 > 0xEF)
  {
    if (v3 > 0xF7)
    {
      return 1;
    }

    if (a2 >= 4)
    {
      v11 = a1[3];
      v12 = a1[2];
      v13 = a1[1];
      v14 = ((v3 & 7) << 18) + v5 + (v11 & 0x3F);
      v15 = v14 + ((v12 & 0x3F) << 6);
      v16 = v15 + ((v13 & 0x3F) << 12);
      *a1 = (v16 >> 18) & 7 | 0xF0;
      a1[1] = v13 & 0xC0 | (v16 >> 12) & 0x3F;
      a1[2] = v12 & 0xC0 | (v15 >> 6) & 0x3F;
      a1[3] = v11 & 0xC0 | v14 & 0x3F;
      return 4;
    }
  }

  else if (a2 >= 3)
  {
    v8 = a1[2];
    v9 = a1[1];
    v10 = ((v3 & 0xF) << 12) + v5 + (v8 & 0x3F);
    *a1 = ((v10 + ((v9 & 0x3F) << 6)) >> 12) | 0xE0;
    a1[1] = v9 & 0xC0 | ((v10 + ((v9 & 0x3Fu) << 6)) >> 6) & 0x3F;
    a1[2] = v8 & 0xC0 | v10 & 0x3F;
    return 3;
  }

  return a2;
}

void **WrapRingBuffer(void **result)
{
  if ((result[83] & 8) != 0)
  {
    v1 = result;
    result = memcpy(result[15], v1[16], *(v1 + 19));
    *(v1 + 332) &= ~8u;
  }

  return result;
}

uint64_t SafeDecodeCommandBlockSwitch(uint64_t a1)
{
  v1 = *(a1 + 288);
  if (v1 < 2)
  {
    return 0;
  }

  v3 = *(a1 + 248);
  v4 = (*(a1 + 240) + 2528);
  v45 = 0;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  if ((v6 - 50) > 0xE)
  {
LABEL_6:
    v16 = v9 >> v10;
    v17 = &v4[4 * (v9 >> v10)];
    v18 = *v17;
    if (v18 >= 9)
    {
      v10 += 8;
      v17 += 4 * (BYTE1(v16) & ~(-1 << (v18 - 8)) & 0x7F) + 4 * *(v17 + 1);
      v18 = *v17;
    }

    *(a1 + 16) = v10 + v18;
    v45 = *(v17 + 1);
  }

  else
  {
    v11 = v7 + 1;
    v12 = v8 - 1;
    v9 = *(a1 + 8);
    v13 = *(a1 + 16);
    while (v12 != -1)
    {
      *(a1 + 8) = v9 >> 8;
      *(&v14 + 1) = *(v11 - 1);
      *&v14 = v9;
      v9 = v14 >> 8;
      *(a1 + 8) = v9;
      v10 = v13 - 8;
      *(a1 + 16) = v13 - 8;
      *(a1 + 24) = v11;
      *(a1 + 32) = v12;
      ++v11;
      --v12;
      v15 = v13 - 58;
      v13 -= 8;
      if (v15 >= 0xF)
      {
        goto LABEL_6;
      }
    }

    if (!SafeDecodeSymbol(v4, a1 + 8, &v45))
    {
      return 0;
    }
  }

  v46 = 0;
  if (*(a1 + 660))
  {
    v19 = *(a1 + 268);
  }

  else
  {
    v20 = (v3 + 1584);
    v21 = *(a1 + 16);
    if ((v21 - 50) >= 0xF)
    {
      v25 = *(a1 + 8);
LABEL_19:
      v28 = v25 >> v21;
      v29 = &v20[4 * (v25 >> v21)];
      v30 = *v29;
      if (v30 >= 9)
      {
        v21 += 8;
        v29 += 4 * (BYTE1(v28) & ~(-1 << (v30 - 8)) & 0x7F) + 4 * *(v29 + 1);
        v30 = *v29;
      }

      *(a1 + 16) = v21 + v30;
      v19 = *(v29 + 1);
    }

    else
    {
      v22 = *(a1 + 32) - 1;
      while (v22 != -1)
      {
        v23 = *(a1 + 8);
        *(a1 + 8) = v23 >> 8;
        v24 = *(a1 + 24);
        *(&v26 + 1) = *v24;
        *&v26 = v23;
        v25 = v26 >> 8;
        *(a1 + 8) = v25;
        v27 = v21 - 8;
        *(a1 + 16) = v21 - 8;
        *(a1 + 24) = v24 + 1;
        *(a1 + 32) = v22--;
        LODWORD(v24) = v21 - 58;
        v21 -= 8;
        if (v24 >= 0xF)
        {
          v21 = v27;
          goto LABEL_19;
        }
      }

      if (!SafeDecodeSymbol(v20, a1 + 8, &v46))
      {
        goto LABEL_32;
      }

      v19 = v46;
    }
  }

  v31 = (&_kBrotliPrefixCodeRanges + 4 * v19);
  v32 = *(v31 + 2);
  v33 = *v31;
  v34 = *(a1 + 16);
  v35 = 64 - v34;
  if (64 - v34 < v32)
  {
    v36 = *(a1 + 32) - 1;
    while (v36 != -1)
    {
      v37 = *(a1 + 8);
      *(a1 + 8) = v37 >> 8;
      v38 = *(a1 + 24);
      *(&v40 + 1) = *v38;
      *&v40 = v37;
      v39 = v40 >> 8;
      *(a1 + 8) = v39;
      v34 -= 8;
      *(a1 + 16) = v34;
      *(a1 + 24) = v38 + 1;
      *(a1 + 32) = v36--;
      v35 += 8;
      if (v35 >= v32)
      {
        goto LABEL_28;
      }
    }

    *(a1 + 268) = v19;
LABEL_32:
    *(a1 + 660) = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7;
    *(a1 + 32) = v8;
    return 0;
  }

  v39 = *(a1 + 8);
LABEL_28:
  *(a1 + 16) = v34 + v32;
  *(a1 + 276) = ((v39 >> v34) & ~(-1 << v32)) + v33;
  *(a1 + 660) = 0;
  if (v45)
  {
    if (v45 == 1)
    {
      v41 = *(a1 + 308) + 1;
    }

    else
    {
      v41 = v45 - 2;
    }
  }

  else
  {
    v41 = *(a1 + 304);
  }

  if (v41 >= v1)
  {
    v43 = v1;
  }

  else
  {
    v43 = 0;
  }

  v44 = v41 - v43;
  *(a1 + 304) = *(a1 + 308);
  *(a1 + 308) = v44;
  *(a1 + 136) = *(*(a1 + 192) + 8 * v44);
  return 1;
}

uint64_t SafeDecodeDistanceBlockSwitch(uint64_t a1)
{
  v1 = *(a1 + 292);
  if (v1 < 2)
  {
    return 0;
  }

  v3 = *(a1 + 248);
  v4 = (*(a1 + 240) + 5056);
  v46 = 0;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  if ((v6 - 50) > 0xE)
  {
LABEL_6:
    v16 = v9 >> v10;
    v17 = &v4[4 * (v9 >> v10)];
    v18 = *v17;
    if (v18 >= 9)
    {
      v10 += 8;
      v17 += 4 * (BYTE1(v16) & ~(-1 << (v18 - 8)) & 0x7F) + 4 * *(v17 + 1);
      v18 = *v17;
    }

    *(a1 + 16) = v10 + v18;
    v46 = *(v17 + 1);
  }

  else
  {
    v11 = v7 + 1;
    v12 = v8 - 1;
    v9 = *(a1 + 8);
    v13 = *(a1 + 16);
    while (v12 != -1)
    {
      *(a1 + 8) = v9 >> 8;
      *(&v14 + 1) = *(v11 - 1);
      *&v14 = v9;
      v9 = v14 >> 8;
      *(a1 + 8) = v9;
      v10 = v13 - 8;
      *(a1 + 16) = v13 - 8;
      *(a1 + 24) = v11;
      *(a1 + 32) = v12;
      ++v11;
      --v12;
      v15 = v13 - 58;
      v13 -= 8;
      if (v15 >= 0xF)
      {
        goto LABEL_6;
      }
    }

    if (!SafeDecodeSymbol(v4, a1 + 8, &v46))
    {
      return 0;
    }
  }

  v47 = 0;
  if (*(a1 + 660))
  {
    v19 = *(a1 + 268);
  }

  else
  {
    v20 = (v3 + 3168);
    v21 = *(a1 + 16);
    if ((v21 - 50) >= 0xF)
    {
      v25 = *(a1 + 8);
LABEL_19:
      v28 = v25 >> v21;
      v29 = &v20[4 * (v25 >> v21)];
      v30 = *v29;
      if (v30 >= 9)
      {
        v21 += 8;
        v29 += 4 * (BYTE1(v28) & ~(-1 << (v30 - 8)) & 0x7F) + 4 * *(v29 + 1);
        v30 = *v29;
      }

      *(a1 + 16) = v21 + v30;
      v19 = *(v29 + 1);
    }

    else
    {
      v22 = *(a1 + 32) - 1;
      while (v22 != -1)
      {
        v23 = *(a1 + 8);
        *(a1 + 8) = v23 >> 8;
        v24 = *(a1 + 24);
        *(&v26 + 1) = *v24;
        *&v26 = v23;
        v25 = v26 >> 8;
        *(a1 + 8) = v25;
        v27 = v21 - 8;
        *(a1 + 16) = v21 - 8;
        *(a1 + 24) = v24 + 1;
        *(a1 + 32) = v22--;
        LODWORD(v24) = v21 - 58;
        v21 -= 8;
        if (v24 >= 0xF)
        {
          v21 = v27;
          goto LABEL_19;
        }
      }

      if (!SafeDecodeSymbol(v20, a1 + 8, &v47))
      {
        goto LABEL_32;
      }

      v19 = v47;
    }
  }

  v31 = (&_kBrotliPrefixCodeRanges + 4 * v19);
  v32 = *(v31 + 2);
  v33 = *v31;
  v34 = *(a1 + 16);
  v35 = 64 - v34;
  if (64 - v34 < v32)
  {
    v36 = *(a1 + 32) - 1;
    while (v36 != -1)
    {
      v37 = *(a1 + 8);
      *(a1 + 8) = v37 >> 8;
      v38 = *(a1 + 24);
      *(&v40 + 1) = *v38;
      *&v40 = v37;
      v39 = v40 >> 8;
      *(a1 + 8) = v39;
      v34 -= 8;
      *(a1 + 16) = v34;
      *(a1 + 24) = v38 + 1;
      *(a1 + 32) = v36--;
      v35 += 8;
      if (v35 >= v32)
      {
        goto LABEL_28;
      }
    }

    *(a1 + 268) = v19;
LABEL_32:
    *(a1 + 660) = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7;
    *(a1 + 32) = v8;
    return 0;
  }

  v39 = *(a1 + 8);
LABEL_28:
  *(a1 + 16) = v34 + v32;
  *(a1 + 280) = ((v39 >> v34) & ~(-1 << v32)) + v33;
  *(a1 + 660) = 0;
  if (v46)
  {
    if (v46 == 1)
    {
      v41 = *(a1 + 316) + 1;
    }

    else
    {
      v41 = v46 - 2;
    }
  }

  else
  {
    v41 = *(a1 + 312);
  }

  if (v41 >= v1)
  {
    v43 = v1;
  }

  else
  {
    v43 = 0;
  }

  v44 = v41 - v43;
  *(a1 + 312) = *(a1 + 316);
  *(a1 + 316) = v44;
  v45 = *(a1 + 336) + 4 * v44;
  *(a1 + 160) = v45;
  *(a1 + 352) = *(v45 + *(a1 + 260));
  return 1;
}

uint64_t zlib_stream_init(uint64_t a1, int a2, int a3)
{
  if (!a3)
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = realloc_stream_state(v4, a2, 517, 0x70148u, 0x30001u);
    *(a1 + 32) = v5;
    if (v5)
    {
      return 0;
    }
  }

  else
  {
    v7 = realloc_stream_state(v4, 0, 517, 0x88u, 0);
    *(a1 + 32) = v7;
    if (v7)
    {
      if (!deflateInit2_((v7 + 6), 5, 8, -15, 8, 0, "1.2.5", 112))
      {
        return 0;
      }

      free(*(a1 + 32));
      *(a1 + 32) = 0;
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t zlib_stream_process(void **a1, char a2)
{
  v3 = a1[4];
  if (*v3 == 1)
  {
    v17 = v3 + 328001;
    *(v3 + 2) = v3 + 328001;
    v18 = v3 + 262464;
    *(v3 + 5) = v3 + 262464;
    while (1)
    {
      v19 = *(v3 + 32806);
      if (v19 > 0x10000)
      {
        break;
      }

      if (0x10000 - v19 >= a1[3])
      {
        v20 = a1[3];
      }

      else
      {
        v20 = 0x10000 - v19;
      }

      memcpy(&v18[v19], a1[2], v20);
      v21 = a1[1];
      v22 = a1[3] - v20;
      a1[2] = a1[2] + v20;
      a1[3] = v22;
      v23 = *(v3 + 32807);
      v24 = *(v3 + 32806) + v20;
      *(v3 + 32806) = v24;
      v25 = 0x20000 - v23;
      if (0x20000 - v23 >= v21)
      {
        v25 = v21;
      }

      *(v3 + 3) = v25;
      *(v3 + 9) = &v17[v23 + v25];
      *(v3 + 10) = &v17[v23];
      if (v24 >= 9)
      {
        *(v3 + 6) = 8 * v24 - 64;
        zlibDecodeBuffer((v3 + 16));
        if (*(v3 + 16) == 12)
        {
          return 0xFFFFFFFFLL;
        }

        v24 = *(v3 + 32806);
      }

      memcpy(v3 + 131232, v3 + 16, 0x20090uLL);
      *(v3 + 6) = 8 * v24;
      zlibDecodeBufferSafe((v3 + 16));
      v26 = *(v3 + 7);
      if (v26 > *(v3 + 6) || *(v3 + 16) == 12)
      {
        memcpy(v3 + 16, v3 + 131232, 0x20090uLL);
        v26 = *(v3 + 7);
      }

      if (!*(v3 + 3))
      {
        v27 = ~(-1 << (*(v3 + 12) - v26));
        if (*(v3 + 17) < v27)
        {
          v27 = *(v3 + 17);
        }

        *(v3 + 17) = v27;
      }

      if (v26 >= 8)
      {
        result = 0xFFFFFFFFLL;
        if (v26 > 0x80007)
        {
          return result;
        }

        v28 = v26 >> 3;
        v29 = *(v3 + 32806);
        v30 = v29 >= v26 >> 3;
        v31 = v29 - (v26 >> 3);
        if (!v30)
        {
          return result;
        }

        *(v3 + 7) = v26 & 7;
        *(v3 + 32806) = v31;
        if (v31 >= 0x10000 - v28)
        {
          v32 = 0x10000 - v28;
        }

        else
        {
          v32 = v31;
        }

        memmove(v3 + 262464, &v18[v28], v32);
      }

      v33 = *(v3 + 10);
      v34 = &v17[*(v3 + 32807)];
      v35 = v33 - v34;
      if (v33 == v34)
      {
        if (*(v3 + 32806) == 0x10000)
        {
          return 0xFFFFFFFFLL;
        }
      }

      else
      {
        if (v35 > a1[1])
        {
          return 0xFFFFFFFFLL;
        }

        memcpy(*a1, v34, v35);
        v36 = a1[1] - v35;
        *a1 = *a1 + v35;
        a1[1] = v36;
        v37 = *(v3 + 32807) + v35;
        *(v3 + 32807) = v37;
        if (v37 > 0x10000)
        {
          memmove(v3 + 328001, &v3[v37 + 262465], 0x10000uLL);
          *(v3 + 32807) = 0x10000;
        }
      }

      v38 = *(v3 + 16);
      if (v38 == 11 || !a1[1] || !a1[3])
      {
        return v38 == 11;
      }
    }
  }

  else
  {
    result = 0xFFFFFFFFLL;
    if (*v3)
    {
      return result;
    }

    v5 = a1[3];
    *(v3 + 3) = a1[2];
    v6 = (v3 + 24);
    v7 = LODWORD(v6[-1].reserved) | a2 & 1;
    v8 = v7 != 0;
    LODWORD(v6[-1].reserved) = v7;
    LODWORD(v9) = -1;
    if (v5 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    v6->avail_in = v5;
    v10 = *a1;
    if (a1[1] < 0xFFFFFFFF)
    {
      v9 = a1[1];
    }

    v6->avail_out = v9;
    v6->next_out = v10;
    v11 = deflate(v6, 4 * v8);
    next_out = v6->next_out;
    v13 = *a1;
    v14 = a1[1];
    v15 = a1[3] + a1[2] - v6->next_in;
    a1[2] = v6->next_in;
    a1[3] = v15;
    *a1 = next_out;
    a1[1] = &v14[v13 - next_out];
    if (v11 == -5 || v11 == 0)
    {
      return 0;
    }

    if (v11 == 1)
    {
      deflateEnd(v6);
      return 1;
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t readHuffmanTable(uint64_t *a1, int *a2, uint64_t a3, int *a4, uint64_t a5)
{
  v94[8] = *MEMORY[0x29EDCA608];
  v6 = a1[1];
  v5 = a1[2];
  v7 = v6 - v5;
  if (v6 >= v5)
  {
    v8 = v6 - v5;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 0xE)
  {
    v13 = v5 & 7;
    v89 = v6 + 7;
    if ((v6 + 7 - v5) >> 3 >= 8)
    {
      v14 = 8;
    }

    else
    {
      v14 = (v6 + 7 - v5) >> 3;
    }

    *&__dst[0] = 0;
    v15 = *a1;
    memcpy(__dst, (*a1 + (v5 >> 3)), v14);
    v16 = *&__dst[0] >> v13;
    v17 = (((*&__dst[0] >> v13) >> 10) & 0xF) + 4;
    v18 = v5 + 14;
    a1[2] = v18;
    v91 = 0;
    v92[0] = 0;
    *(v92 + 7) = 0;
    v19 = v6 - v18;
    if (v6 < v18)
    {
      v19 = 0;
    }

    v20 = (3 * v17);
    if (v19 >= v20)
    {
      v85 = a5;
      v86 = ((v16 >> 5) & 0x1F) + 1;
      v87 = (v16 & 0x1F) + 257;
      v21 = (v7 - 7) >> 3 >= 8 ? 8 : (v7 - 7) >> 3;
      *&__dst[0] = 0;
      memcpy(__dst, (v15 + (v18 >> 3)), v21);
      v22 = *&__dst[0] >> (v18 & 7);
      v23 = v18 + v20;
      a1[2] = v18 + v20;
      v24 = &byte_2986825A8;
      do
      {
        v25 = *v24++;
        *(&v92[-1] + v25) = v22 & 7;
        v22 >>= 3;
        --v17;
      }

      while (v17);
      v26 = 0;
      v27 = 1;
      do
      {
        if (v27 <= *(&v92[-1] + v26))
        {
          v27 = *(&v92[-1] + v26);
        }

        ++v26;
      }

      while (v26 != 19);
      v28 = 1 << v27;
      if (v28 <= 128)
      {
        v30 = 0;
        memset(v90, 0, 64);
        do
        {
          ++*(v90 + *(&v92[-1] + v30++));
        }

        while (v30 != 19);
        v31 = 0;
        v32 = 0;
        LODWORD(v90[0]) = 0;
        LODWORD(v94[0]) = 0;
        do
        {
          v32 = 2 * (*(v90 + v31) + v32);
          *(v94 + v31 + 4) = v32;
          v31 += 4;
        }

        while (v31 != 60);
        for (i = 0; i != 19; ++i)
        {
          v34 = *(&v92[-1] + i);
          v35 = *(v94 + v34);
          *(v94 + v34) = v35 + 1;
          *(__dst + i) = (breverse_brev8[BYTE1(v35)] | (breverse_brev8[v35] << 8)) >> (16 - v34);
        }

        v83 = a4;
        v84 = a2;
        for (j = 0; j != 19; ++j)
        {
          v37 = *(&v92[-1] + j);
          if (*(&v92[-1] + j))
          {
            v38 = *(__dst + j);
            if (v28 > v38)
            {
              v39 = 0;
              v40 = v37 + 16 * j;
              v41 = 1 << v37;
              v42 = v41;
              v43 = v38 + v41;
              if (v43 >= v28)
              {
                v44 = 1;
              }

              else
              {
                v44 = 2;
              }

              if (v43 < v28)
              {
                v45 = v28;
              }

              else
              {
                v45 = v38 + v41;
              }

              v46 = v44 + (v45 - (v43 < v28) - v43) / v41;
              v47 = 2 * v41;
              v48 = 3 * v41;
              v49 = 4 * v41;
              v50 = 5 * v41;
              v51 = vdupq_n_s64(v46 - 1);
              v52 = 6 * v41;
              v53 = 16 * v41;
              v54 = v40 - 1;
              v55 = (v46 + 7) & 0xFFFFFFFFFFFFFFF8;
              v56 = 7 * v41;
              v57 = v90 + v38;
              do
              {
                v58 = vdupq_n_s64(v39);
                v59 = vmovn_s64(vcgeq_u64(v51, vorrq_s8(v58, xmmword_29862D9D0)));
                if (vuzp1_s8(vuzp1_s16(v59, 6), 6).u8[0])
                {
                  *v57 = v54;
                }

                if (vuzp1_s8(vuzp1_s16(v59, 6), 6).i8[1])
                {
                  v57[v42] = v54;
                }

                if (vuzp1_s8(vuzp1_s16(6, vmovn_s64(vcgeq_u64(v51, vorrq_s8(v58, xmmword_29862D9C0)))), 6).i8[2])
                {
                  v57[v47] = v54;
                  v57[v48] = v54;
                }

                v60 = vmovn_s64(vcgeq_u64(v51, vorrq_s8(v58, xmmword_29862E070)));
                if (vuzp1_s8(6, vuzp1_s16(v60, 6)).i32[1])
                {
                  v57[v49] = v54;
                }

                if (vuzp1_s8(6, vuzp1_s16(v60, 6)).i8[5])
                {
                  v57[v50] = v54;
                }

                if (vuzp1_s8(6, vuzp1_s16(6, vmovn_s64(vcgeq_u64(v51, vorrq_s8(v58, xmmword_29862E060))))).i8[6])
                {
                  v57[v52] = v54;
                  v57[v56] = v54;
                }

                v39 += 8;
                v57 = (v57 + v53);
              }

              while (v55 != v39);
            }
          }
        }

        v61 = 0;
        v62 = 0;
        v63 = v28 - 1;
        memset(__dst, 0, 320);
        while (1)
        {
          if (v6 >= v23)
          {
            v64 = v6 - v23;
          }

          else
          {
            v64 = 0;
          }

          v94[0] = 0;
          if ((v6 - v23 + 7) >> 3 >= 8)
          {
            v65 = 8;
          }

          else
          {
            v65 = (v6 - v23 + 7) >> 3;
          }

          memcpy(v94, (v15 + (v23 >> 3)), v65);
          v66 = *(v90 + (v63 & (v94[0] >> (v23 & 7))));
          v67 = (v66 & 0xF) + 1;
          if (v64 < v67)
          {
            return 0xFFFFFFFFLL;
          }

          v68 = v66 >> 4;
          v23 += v67;
          a1[2] = v23;
          if (v66 > 0xFF)
          {
            break;
          }

          *(__dst + v62++) = v66 >> 4;
LABEL_85:
          v61 = v68;
          if (v62 >= (v86 + v87))
          {
            DecoderTable = getDecoderTable(v87, __dst, *v84, a3);
            if (DecoderTable)
            {
              v80 = DecoderTable;
              v81 = getDecoderTable(v86, __dst + v87, *v83, v85);
              if (v81)
              {
                v82 = v81;
                result = 0;
                *v84 = v80;
                *v83 = v82;
                return result;
              }
            }

            return 0xFFFFFFFFLL;
          }
        }

        v69 = v6 - v23;
        if (v6 < v23)
        {
          v69 = 0;
        }

        if (v68 == 17)
        {
          if (v69 < 3)
          {
            return 0xFFFFFFFFLL;
          }

          if ((v89 - v23) >> 3 >= 8)
          {
            v73 = 8;
          }

          else
          {
            v73 = (v89 - v23) >> 3;
          }

          v94[0] = 0;
          memcpy(v94, (v15 + (v23 >> 3)), v73);
          v74 = v94[0] >> (v23 & 7);
          v23 += 3;
          a1[2] = v23;
          v75 = (v74 & 7) + 3;
        }

        else
        {
          if (v68 == 16)
          {
            if (v69 < 2)
            {
              return 0xFFFFFFFFLL;
            }

            v70 = (v89 - v23) >> 3 >= 8 ? 8 : (v89 - v23) >> 3;
            v94[0] = 0;
            memcpy(v94, (v15 + (v23 >> 3)), v70);
            v71 = v94[0] >> (v23 & 7);
            v23 += 2;
            a1[2] = v23;
            if (((v71 & 3) + v62 + 3) > 319)
            {
              return 0xFFFFFFFFLL;
            }

            v72 = v71 & 3;
            memset(__dst + v62, v61, (v71 & 3) + 3);
            v62 += v72 + 3;
            goto LABEL_84;
          }

          if (v69 < 7)
          {
            return 0xFFFFFFFFLL;
          }

          if ((v89 - v23) >> 3 >= 8)
          {
            v76 = 8;
          }

          else
          {
            v76 = (v89 - v23) >> 3;
          }

          v94[0] = 0;
          memcpy(v94, (v15 + (v23 >> 3)), v76);
          v77 = v94[0] >> (v23 & 7);
          v23 += 7;
          a1[2] = v23;
          v75 = (v77 & 0x7F) + 11;
        }

        v78 = v75 + v62;
        if (v75 + v62 > 319)
        {
          return 0xFFFFFFFFLL;
        }

        bzero(__dst + v62, v75);
        v62 = v78;
LABEL_84:
        v68 = v61;
        goto LABEL_85;
      }
    }
  }

  return 0xFFFFFFFFLL;
}

_BYTE *zlibDecodeBuffer(uint64_t a1)
{
  v156 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 48);
  if (v1 == 11)
  {
    return 0;
  }

  v4 = a1 + 144;
  v5 = a1 + 65680;
  if (v1 > 4)
  {
    v7 = *(a1 + 112);
    v6 = *(a1 + 120);
    v9 = *(a1 + 88);
    v8 = *(a1 + 92);
    if (v1 > 6)
    {
      if (v1 == 7)
      {
        goto LABEL_132;
      }

      v11 = *(a1 + 128);
      v10 = *(a1 + 136);
      if (v1 == 9)
      {
        goto LABEL_140;
      }

      if (v1 == 10)
      {
        goto LABEL_141;
      }

      goto LABEL_20;
    }

    if (v1 != 5)
    {
      v14 = *(a1 + 96);
      goto LABEL_128;
    }

    while (1)
    {
      while (1)
      {
LABEL_123:
        if (v6 >= v9)
        {
          v114 = *(a1 + 40);
        }

        else
        {
          v114 = *(a1 + 40);
          if (*(a1 + 32) <= v114)
          {
            result = 0;
            v145 = 5;
            goto LABEL_176;
          }

          v6 = 0xFFFFFFFFFFFFFFFFLL >> (v114 & 7);
          v7 = *(*(a1 + 24) + (v114 >> 3)) >> (v114 & 7);
        }

        v115 = *(v4 + 2 * (v7 & v9));
        v116 = (v115 & 0xF) + 1;
        v14 = v115 >> 4;
        *(a1 + 96) = v14;
        v7 >>= v116;
        v6 >>= v116;
        *(a1 + 40) = v116 + v114;
LABEL_128:
        if (v14 > 0xFF)
        {
          break;
        }

        if (!*(a1 + 8))
        {
          *(a1 + 48) = 6;
          *(a1 + 112) = v7;
          *(a1 + 120) = v6;
          *(a1 + 88) = v9;
          *(a1 + 92) = v8;
LABEL_173:
          v24 = *(a1 + 64);
          return (v24 - *a1);
        }

        v117 = *(a1 + 64);
        *(a1 + 64) = v117 + 1;
        *v117 = v14;
        v118 = *(a1 + 8) - 1;
LABEL_148:
        *(a1 + 8) = v118;
      }

      v119 = v14 - 256;
      *(a1 + 96) = v119;
      if (!v119)
      {
        goto LABEL_34;
      }

LABEL_132:
      v120 = *(a1 + 40);
      if (*(a1 + 32) <= v120)
      {
        result = 0;
        v145 = 7;
LABEL_176:
        *(a1 + 48) = v145;
        *(a1 + 112) = v7;
        *(a1 + 120) = v6;
        *(a1 + 88) = v9;
        *(a1 + 92) = v8;
        return result;
      }

      v121 = *(a1 + 96);
      if (v121 >= 0x1E)
      {
        goto LABEL_20;
      }

      v122 = 0xFFFFFFFFFFFFFFFFLL >> (v120 & 7);
      v123 = *(*(a1 + 24) + (v120 >> 3)) >> (v120 & 7);
      v10 = zlibDecodeBufferSafe_litlen_base[v121];
      if (v121 >= 9 && v121 != 29)
      {
        v124 = (v121 - 5) >> 2;
        v10 += v123 & ~(-1 << v124);
        v123 >>= v124;
        v122 >>= v124;
        v120 += v124;
        *(a1 + 40) = v120;
      }

      v125 = *(v5 + 2 * (v123 & v8));
      if (v125 >= 0x1E0)
      {
        goto LABEL_20;
      }

      v126 = v125 >> 4;
      v11 = zlibDecodeBufferSafe_distance_base[v125 >> 4];
      v127 = (v125 & 0xF) + 1;
      v7 = v123 >> v127;
      v6 = v122 >> v127;
      v128 = v120 + v127;
      *(a1 + 40) = v128;
      if (v125 >= 0x40)
      {
        v129 = v126 - 2;
        v130 = (v126 - 2) >> 1;
        v11 += v7 & ~(-1 << v130);
        v7 >>= v130;
        v6 >>= v130;
        *(a1 + 40) = v128 + (v129 >> 1);
      }

LABEL_140:
      if (v11 - 1 >= *(a1 + 64) - *a1)
      {
        goto LABEL_20;
      }

LABEL_141:
      v131 = *(a1 + 8);
      v132 = v131 - v10;
      if (v131 < v10)
      {
        v146 = *(a1 + 64);
        if (v131)
        {
          v147 = 0;
          do
          {
            *v146 = v146[-v11];
            ++v146;
            ++v147;
            v148 = *(a1 + 8);
          }

          while (v148 > v147);
          v146 = *(a1 + 64);
        }

        else
        {
          v148 = 0;
        }

        v149 = &v146[v148];
        *(a1 + 64) = v149;
        *(a1 + 112) = v7;
        *(a1 + 120) = v6;
        *(a1 + 88) = v9;
        *(a1 + 92) = v8;
        *(a1 + 128) = v11;
        *(a1 + 136) = v10 - v148;
        *(a1 + 8) = 0;
        *(a1 + 48) = 10;
        return &v149[-*a1];
      }

      v133 = *(a1 + 64);
      v134 = -v11;
      if (v131 < v10 + 31)
      {
        if (v10)
        {
          v135 = v10;
          do
          {
            *v133 = *(v133 + v134);
            ++v133;
            --v135;
          }

          while (v135);
          v133 = *(a1 + 64);
          v131 = *(a1 + 8);
        }

        *(a1 + 64) = v133 + v10;
        v118 = v131 - v10;
        goto LABEL_148;
      }

      v136 = v133 + v10;
      *(a1 + 64) = v133 + v10;
      *(a1 + 8) = v132;
      if (v11 < 8)
      {
        if (v11 == 1)
        {
          if (v10 >= 1)
          {
            v137 = 0;
            v138 = 0x101010101010101 * *(v133 + v134);
            v139 = v10 + v133;
            v140 = (v133 + 8);
            if (v139 <= v133 + 8)
            {
              v139 = v133 + 8;
            }

            v141 = (v139 + ~v133) >> 3;
            v142 = vdupq_n_s64(v141);
            v143 = (v141 + 2) & 0x3FFFFFFFFFFFFFFELL;
            do
            {
              v144 = vmovn_s64(vcgeq_u64(v142, vorrq_s8(vdupq_n_s64(v137), xmmword_29862D9D0)));
              if (v144.i8[0])
              {
                *(v140 - 1) = v138;
              }

              if (v144.i8[4])
              {
                *v140 = v138;
              }

              v137 += 2;
              v140 += 2;
            }

            while (v143 != v137);
          }
        }

        else if (v10 >= 1)
        {
          do
          {
            *v133 = *(v133 - v11);
            *(v133 + 2) = *(v133 - v11 + 2);
            v133 += 4;
          }

          while (v133 < v136);
        }
      }

      else if (v10 >= 1)
      {
        do
        {
          *v133 = *(v133 - v11);
          *(v133 + 8) = *(v133 - v11 + 8);
          v133 += 16;
        }

        while (v133 < v136);
      }
    }
  }

  if (v1 <= 1)
  {
    if (v1)
    {
      if (v1 != 1)
      {
        goto LABEL_20;
      }

      v12 = *(a1 + 32);
      v13 = *(a1 + 40);
      goto LABEL_22;
    }

    goto LABEL_34;
  }

  if (v1 != 2)
  {
    if (v1 != 3)
    {
      goto LABEL_117;
    }

    v13 = *(a1 + 40);
LABEL_116:
    if (!readHuffmanTable((a1 + 24), (a1 + 72), v4, (a1 + 76), v5))
    {
      goto LABEL_117;
    }

    result = 0;
    *(a1 + 40) = v13;
    v18 = 3;
    goto LABEL_21;
  }

  v12 = *(a1 + 32);
  v15 = *(a1 + 40);
  v16 = *(a1 + 80);
  v17 = *(a1 + 24);
  while (1)
  {
    v20 = v12 >= v15;
    v21 = v12 - v15;
    if (!v20)
    {
      v21 = 0;
    }

    v22 = v21 >> 3;
    if (v22 >= *(a1 + 8))
    {
      v22 = *(a1 + 8);
    }

    if (v22 >= v16)
    {
      v23 = v16;
    }

    else
    {
      v23 = v22;
    }

    memcpy(*(a1 + 64), (v17 + (v15 >> 3)), v23);
    *(a1 + 40) += 8 * v23;
    *(a1 + 8) -= v23;
    v24 = *(a1 + 64) + v23;
    *(a1 + 64) = v24;
    v25 = *(a1 + 80);
    v26 = v25 > v23;
    v27 = v25 - v23;
    if (v26)
    {
      *(a1 + 80) = v27;
      *(a1 + 48) = 2;
      return (v24 - *a1);
    }

LABEL_34:
    if (*(a1 + 52))
    {
      *(a1 + 48) = 11;
      goto LABEL_173;
    }

    v12 = *(a1 + 32);
    v28 = *(a1 + 40);
    v29 = v12 - v28;
    if (v12 < v28)
    {
      v29 = 0;
    }

    if (v29 <= 2)
    {
      result = 0;
      *(a1 + 48) = 0;
      return result;
    }

    v30 = *(a1 + 24);
    *(a1 + 52) = (*(v30 + (v28 >> 3)) >> (v28 & 7)) & 1;
    v31 = *(v30 + ((v28 + 1) >> 3)) >> ((v28 + 1) & 7);
    v13 = v28 + 3;
    *(a1 + 40) = v28 + 3;
    *(a1 + 72) = 0x800000008000;
    if ((v31 & 3u) > 1uLL)
    {
      if ((v31 & 3) != 2)
      {
        goto LABEL_20;
      }

      goto LABEL_116;
    }

    if ((v31 & 3) != 0)
    {
      break;
    }

LABEL_22:
    v19 = v12 - v13;
    if (v12 < v13)
    {
      v19 = 0;
    }

    if (v19 <= 0xF)
    {
      result = 0;
      v18 = 1;
      goto LABEL_21;
    }

    v17 = *(a1 + 24);
    v16 = *(v17 + ((v13 + 7) >> 3));
    *(a1 + 80) = v16;
    v15 = ((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
    *(a1 + 40) = v15;
  }

  for (i = 0; i != 288; ++i)
  {
    if (i <= 0x8F)
    {
LABEL_42:
      *(&v150[2] + i) = 8;
      continue;
    }

    if (i > 0xFF)
    {
      if (i > 0x117)
      {
        goto LABEL_42;
      }

      *(&v150[2] + i) = 7;
    }

    else
    {
      *(&v150[2] + i) = 9;
    }
  }

  v33 = 0;
  *&v34 = 0x505050505050505;
  *(&v34 + 1) = 0x505050505050505;
  v150[0] = v34;
  v150[1] = v34;
  v35.i64[0] = 0x100000001;
  v35.i64[1] = 0x100000001;
  v36.i64[0] = 0x100000001;
  v36.i64[1] = 0x100000001;
  v37.i64[0] = 0x100000001;
  v37.i64[1] = 0x100000001;
  v38.i64[0] = 0x100000001;
  v38.i64[1] = 0x100000001;
  do
  {
    v39 = v150[v33 + 2];
    v40 = vmovl_u8(*v39.i8);
    v41 = vmovl_high_u8(v39);
    v38 = vmaxq_s32(v38, vmovl_high_u16(v41));
    v37 = vmaxq_s32(v37, vmovl_u16(*v41.i8));
    v36 = vmaxq_s32(v36, vmovl_high_u16(v40));
    v35 = vmaxq_s32(v35, vmovl_u16(*v40.i8));
    ++v33;
  }

  while (v33 != 18);
  v42 = 1 << vmaxvq_s32(vmaxq_s32(vmaxq_s32(v35, v37), vmaxq_s32(v36, v38)));
  if (v42 <= 0x8000)
  {
    v43 = 0;
    v154 = 0u;
    v155 = 0u;
    v152 = 0u;
    v153 = 0u;
    do
    {
      ++*(&v152 + *(&v150[2] + v43++));
    }

    while (v43 != 288);
    v44 = 0;
    v45 = 0;
    LODWORD(v152) = 0;
    v151[0] = 0;
    do
    {
      v45 = 2 * (*(&v152 + v44 * 4) + v45);
      v151[++v44] = v45;
    }

    while (v44 != 15);
    for (j = 0; j != 288; ++j)
    {
      v47 = *(&v150[2] + j);
      v48 = v151[v47];
      v151[v47] = v48 + 1;
      *(&v150[20] + j) = (breverse_brev8[BYTE1(v48)] | (breverse_brev8[v48] << 8)) >> (16 - v47);
    }

    for (k = 0; k != 288; ++k)
    {
      v50 = *(&v150[2] + k);
      if (*(&v150[2] + k))
      {
        v51 = *(&v150[20] + k);
        if (v42 > v51)
        {
          v52 = 0;
          v53 = v50 + 16 * k;
          v54 = 1 << v50;
          v55 = v54;
          v56 = v51 + v54;
          if (v56 >= v42)
          {
            v57 = 1;
          }

          else
          {
            v57 = 2;
          }

          if (v56 < v42)
          {
            v58 = v42;
          }

          else
          {
            v58 = v51 + v54;
          }

          v59 = v57 + (v58 - (v56 < v42) - v56) / v54;
          v60 = 2 * v54;
          v61 = 3 * v54;
          v62 = 4 * v54;
          v63 = 5 * v54;
          v64 = vdupq_n_s64(v59 - 1);
          v65 = 6 * v54;
          v66 = 16 * v54;
          v67 = v53 - 1;
          v68 = (v59 + 7) & 0xFFFFFFFFFFFFFFF8;
          v69 = 7 * v54;
          v70 = (a1 + 144 + 2 * v51);
          do
          {
            v71 = vdupq_n_s64(v52);
            v72 = vmovn_s64(vcgeq_u64(v64, vorrq_s8(v71, xmmword_29862D9D0)));
            if (vuzp1_s8(vuzp1_s16(v72, 6), 6).u8[0])
            {
              *v70 = v67;
            }

            if (vuzp1_s8(vuzp1_s16(v72, 6), 6).i8[1])
            {
              v70[v55] = v67;
            }

            if (vuzp1_s8(vuzp1_s16(6, vmovn_s64(vcgeq_u64(v64, vorrq_s8(v71, xmmword_29862D9C0)))), 6).i8[2])
            {
              v70[v60] = v67;
              v70[v61] = v67;
            }

            v73 = vmovn_s64(vcgeq_u64(v64, vorrq_s8(v71, xmmword_29862E070)));
            if (vuzp1_s8(6, vuzp1_s16(v73, 6)).i32[1])
            {
              v70[v62] = v67;
            }

            if (vuzp1_s8(6, vuzp1_s16(v73, 6)).i8[5])
            {
              v70[v63] = v67;
            }

            if (vuzp1_s8(6, vuzp1_s16(6, vmovn_s64(vcgeq_u64(v64, vorrq_s8(v71, xmmword_29862E060))))).i8[6])
            {
              v70[v65] = v67;
              v70[v69] = v67;
            }

            v52 += 8;
            v70 = (v70 + v66);
          }

          while (v68 != v52);
        }
      }
    }

    v74 = 0;
    v75.i64[0] = 0x100000001;
    v75.i64[1] = 0x100000001;
    v76.i64[0] = 0x100000001;
    v76.i64[1] = 0x100000001;
    v77.i64[0] = 0x100000001;
    v77.i64[1] = 0x100000001;
    v78.i64[0] = 0x100000001;
    v78.i64[1] = 0x100000001;
    do
    {
      v79 = v150[v74];
      v80 = vmovl_u8(*v79.i8);
      v81 = vmovl_high_u8(v79);
      v78 = vmaxq_s32(v78, vmovl_high_u16(v81));
      v77 = vmaxq_s32(v77, vmovl_u16(*v81.i8));
      v76 = vmaxq_s32(v76, vmovl_high_u16(v80));
      v75 = vmaxq_s32(v75, vmovl_u16(*v80.i8));
      ++v74;
    }

    while (v74 != 2);
    v82 = 1 << vmaxvq_s32(vmaxq_s32(vmaxq_s32(v75, v77), vmaxq_s32(v76, v78)));
    if (v82 <= 0x8000)
    {
      v83 = 0;
      v154 = 0u;
      v155 = 0u;
      v152 = 0u;
      v153 = 0u;
      do
      {
        ++*(&v152 + *(v150 + v83++));
      }

      while (v83 != 32);
      v84 = 0;
      v85 = 0;
      LODWORD(v152) = 0;
      v151[0] = 0;
      do
      {
        v85 = 2 * (*(&v152 + v84 * 4) + v85);
        v151[++v84] = v85;
      }

      while (v84 != 15);
      for (m = 0; m != 32; ++m)
      {
        v87 = *(v150 + m);
        v88 = v151[v87];
        v151[v87] = v88 + 1;
        *(&v150[20] + m) = (breverse_brev8[BYTE1(v88)] | (breverse_brev8[v88] << 8)) >> (16 - v87);
      }

      for (n = 0; n != 32; ++n)
      {
        v90 = *(v150 + n);
        if (*(v150 + n))
        {
          v91 = *(&v150[20] + n);
          if (v82 > v91)
          {
            v92 = 0;
            v93 = v90 + 16 * n;
            v94 = 1 << v90;
            v95 = v94;
            v96 = v91 + v94;
            if (v96 >= v82)
            {
              v97 = 1;
            }

            else
            {
              v97 = 2;
            }

            if (v96 < v82)
            {
              v98 = v82;
            }

            else
            {
              v98 = v91 + v94;
            }

            v99 = v97 + (v98 - (v96 < v82) - v96) / v94;
            v100 = 2 * v94;
            v101 = 3 * v94;
            v102 = 4 * v94;
            v103 = 5 * v94;
            v104 = vdupq_n_s64(v99 - 1);
            v105 = 6 * v94;
            v106 = 16 * v94;
            v107 = v93 - 1;
            v108 = (v99 + 7) & 0xFFFFFFFFFFFFFFF8;
            v109 = 7 * v94;
            v110 = (a1 + 65680 + 2 * v91);
            do
            {
              v111 = vdupq_n_s64(v92);
              v112 = vmovn_s64(vcgeq_u64(v104, vorrq_s8(v111, xmmword_29862D9D0)));
              if (vuzp1_s8(vuzp1_s16(v112, 6), 6).u8[0])
              {
                *v110 = v107;
              }

              if (vuzp1_s8(vuzp1_s16(v112, 6), 6).i8[1])
              {
                v110[v95] = v107;
              }

              if (vuzp1_s8(vuzp1_s16(6, vmovn_s64(vcgeq_u64(v104, vorrq_s8(v111, xmmword_29862D9C0)))), 6).i8[2])
              {
                v110[v100] = v107;
                v110[v101] = v107;
              }

              v113 = vmovn_s64(vcgeq_u64(v104, vorrq_s8(v111, xmmword_29862E070)));
              if (vuzp1_s8(6, vuzp1_s16(v113, 6)).i32[1])
              {
                v110[v102] = v107;
              }

              if (vuzp1_s8(6, vuzp1_s16(v113, 6)).i8[5])
              {
                v110[v103] = v107;
              }

              if (vuzp1_s8(6, vuzp1_s16(6, vmovn_s64(vcgeq_u64(v104, vorrq_s8(v111, xmmword_29862E060))))).i8[6])
              {
                v110[v105] = v107;
                v110[v109] = v107;
              }

              v92 += 8;
              v110 = (v110 + v106);
            }

            while (v108 != v92);
          }
        }
      }

      *(a1 + 72) = v42;
      *(a1 + 76) = v82;
LABEL_117:
      v6 = 0;
      v7 = 0;
      v9 = *(a1 + 72) - 1;
      v8 = *(a1 + 76) - 1;
      goto LABEL_123;
    }
  }

LABEL_20:
  result = 0;
  v18 = 12;
LABEL_21:
  *(a1 + 48) = v18;
  return result;
}

uint64_t getDecoderTable(int a1, unsigned __int8 *a2, int a3, uint64_t a4)
{
  v49 = *MEMORY[0x29EDCA608];
  if (a1 < 1)
  {
    if (a3 > 1)
    {
      memset(v48 + 4, 0, 60);
      result = 2;
      goto LABEL_13;
    }

    return 0;
  }

  v5 = a1;
  v6 = 1;
  v7 = a1;
  v8 = a2;
  do
  {
    v10 = *v8++;
    v9 = v10;
    if (v6 <= v10)
    {
      v6 = v9;
    }

    --v7;
  }

  while (v7);
  result = (1 << v6);
  if (result > a3)
  {
    return 0;
  }

  memset(v48, 0, sizeof(v48));
  v12 = a2;
  do
  {
    v13 = *v12++;
    ++*(v48 + v13);
    --v5;
  }

  while (v5);
LABEL_13:
  v14 = 0;
  v15 = 0;
  LODWORD(v48[0]) = 0;
  v47[0] = 0;
  do
  {
    v15 = 2 * (*(v48 + v14 * 4) + v15);
    v47[++v14] = v15;
  }

  while (v14 != 15);
  if (a1 > 0)
  {
    v16 = v46;
    v17 = a2;
    v18 = a1;
    do
    {
      v19 = *v17++;
      v20 = v47[v19];
      v47[v19] = v20 + 1;
      *v16++ = (breverse_brev8[BYTE1(v20)] | (breverse_brev8[v20] << 8)) >> (16 - v19);
      --v18;
    }

    while (v18);
    v21 = 0;
    do
    {
      v22 = a2[v21];
      if (a2[v21])
      {
        v23 = v46[v21];
        if (result > v23)
        {
          v24 = 0;
          v25 = v22 + 16 * v21;
          v26 = 1 << v22;
          v27 = v26;
          v28 = v23 + v26;
          if (v28 >= result)
          {
            v29 = 1;
          }

          else
          {
            v29 = 2;
          }

          if (v28 < result)
          {
            v30 = result;
          }

          else
          {
            v30 = v23 + v26;
          }

          v31 = v29 + (v30 - (v28 < result) - v28) / v26;
          v32 = 2 * v26;
          v33 = 3 * v26;
          v34 = 4 * v26;
          v35 = 5 * v26;
          v36 = vdupq_n_s64(v31 - 1);
          v37 = 6 * v26;
          v38 = 16 * v26;
          v39 = v25 - 1;
          v40 = (v31 + 7) & 0xFFFFFFFFFFFFFFF8;
          v41 = 7 * v26;
          v42 = (a4 + 2 * v23);
          do
          {
            v43 = vdupq_n_s64(v24);
            v44 = vmovn_s64(vcgeq_u64(v36, vorrq_s8(v43, xmmword_29862D9D0)));
            if (vuzp1_s8(vuzp1_s16(v44, 6), 6).u8[0])
            {
              *v42 = v39;
            }

            if (vuzp1_s8(vuzp1_s16(v44, 6), 6).i8[1])
            {
              v42[v27] = v39;
            }

            if (vuzp1_s8(vuzp1_s16(6, vmovn_s64(vcgeq_u64(v36, vorrq_s8(v43, xmmword_29862D9C0)))), 6).i8[2])
            {
              v42[v32] = v39;
              v42[v33] = v39;
            }

            v45 = vmovn_s64(vcgeq_u64(v36, vorrq_s8(v43, xmmword_29862E070)));
            if (vuzp1_s8(6, vuzp1_s16(v45, 6)).i32[1])
            {
              v42[v34] = v39;
            }

            if (vuzp1_s8(6, vuzp1_s16(v45, 6)).i8[5])
            {
              v42[v35] = v39;
            }

            if (vuzp1_s8(6, vuzp1_s16(6, vmovn_s64(vcgeq_u64(v36, vorrq_s8(v43, xmmword_29862E060))))).i8[6])
            {
              v42[v37] = v39;
              v42[v41] = v39;
            }

            v24 += 8;
            v42 = (v42 + v38);
          }

          while (v40 != v24);
        }
      }

      ++v21;
    }

    while (v21 != a1);
  }

  return result;
}

_BYTE *zlibDecodeBufferSafe(uint64_t a1)
{
  v170 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 48);
  if (v1 == 11)
  {
    return 0;
  }

  v4 = a1 + 144;
  v5 = a1 + 65680;
  if (v1 > 4)
  {
    v7 = *(a1 + 112);
    v6 = *(a1 + 120);
    v9 = *(a1 + 88);
    v8 = *(a1 + 92);
    if (v1 > 6)
    {
      if (v1 == 7)
      {
        goto LABEL_145;
      }

      v11 = *(a1 + 128);
      v10 = *(a1 + 136);
      if (v1 == 9)
      {
        goto LABEL_157;
      }

      if (v1 == 10)
      {
        goto LABEL_158;
      }

      goto LABEL_20;
    }

    if (v1 != 5)
    {
      v14 = *(a1 + 96);
      goto LABEL_141;
    }

    while (1)
    {
      while (1)
      {
LABEL_132:
        if (v6 >= v9)
        {
          v121 = *(a1 + 40);
        }

        else
        {
          v120 = *(a1 + 32);
          v121 = *(a1 + 40);
          v28 = v120 > v121;
          v122 = v120 - v121;
          if (!v28)
          {
            result = 0;
            v161 = 5;
LABEL_191:
            *(a1 + 48) = v161;
            *(a1 + 112) = v7;
            *(a1 + 120) = v6;
            *(a1 + 88) = v9;
            *(a1 + 92) = v8;
            return result;
          }

          v123 = v121 & 7;
          v124 = (v122 + 7) >> 3 >= 8 ? 8 : (v122 + 7) >> 3;
          *__dst = 0;
          memcpy(__dst, (*(a1 + 24) + (v121 >> 3)), v124);
          v6 = 0xFFFFFFFFFFFFFFFFLL >> (-8 * v124) >> v123;
          v7 = *__dst >> v123;
        }

        v125 = *(v4 + 2 * (v7 & v9));
        v126 = (v125 & 0xF) + 1;
        v14 = v125 >> 4;
        *(a1 + 96) = v14;
        v7 >>= v126;
        v6 >>= v126;
        *(a1 + 40) = v126 + v121;
LABEL_141:
        if (v14 > 0xFF)
        {
          break;
        }

        if (!*(a1 + 8))
        {
          *(a1 + 48) = 6;
          *(a1 + 112) = v7;
          *(a1 + 120) = v6;
          *(a1 + 88) = v9;
          *(a1 + 92) = v8;
LABEL_189:
          v26 = *(a1 + 64);
          return (v26 - *a1);
        }

        v127 = *(a1 + 64);
        *(a1 + 64) = v127 + 1;
        *v127 = v14;
        v128 = *(a1 + 8) - 1;
LABEL_165:
        *(a1 + 8) = v128;
      }

      v129 = v14 - 256;
      *(a1 + 96) = v129;
      if (!v129)
      {
        goto LABEL_37;
      }

LABEL_145:
      v130 = *(a1 + 32);
      v131 = *(a1 + 40);
      v28 = v130 > v131;
      v132 = v130 - v131;
      if (!v28)
      {
        result = 0;
        v161 = 7;
        goto LABEL_191;
      }

      if ((v132 + 7) >> 3 >= 8)
      {
        v133 = 8;
      }

      else
      {
        v133 = (v132 + 7) >> 3;
      }

      *__dst = 0;
      memcpy(__dst, (*(a1 + 24) + (v131 >> 3)), v133);
      v134 = *(a1 + 96);
      if (v134 >= 0x1E)
      {
        goto LABEL_20;
      }

      v135 = 0xFFFFFFFFFFFFFFFFLL >> (-8 * v133) >> (v131 & 7);
      v136 = *__dst >> (v131 & 7);
      v10 = zlibDecodeBufferSafe_litlen_base[v134];
      if (v134 >= 9 && v134 != 29)
      {
        v137 = (v134 - 5) >> 2;
        v10 += v136 & ~(-1 << v137);
        v136 >>= v137;
        v135 >>= v137;
        v131 += v137;
        *(a1 + 40) = v131;
      }

      v138 = *(v5 + 2 * (v136 & v8));
      if (v138 >= 0x1E0)
      {
        goto LABEL_20;
      }

      v139 = v138 >> 4;
      v11 = zlibDecodeBufferSafe_distance_base[v138 >> 4];
      v140 = (v138 & 0xF) + 1;
      v7 = v136 >> v140;
      v6 = v135 >> v140;
      v141 = v131 + v140;
      *(a1 + 40) = v141;
      if (v138 >= 0x40)
      {
        v142 = v139 - 2;
        v143 = (v139 - 2) >> 1;
        v11 += v7 & ~(-1 << v143);
        v7 >>= v143;
        v6 >>= v143;
        *(a1 + 40) = v141 + (v142 >> 1);
      }

LABEL_157:
      if (v11 - 1 >= *(a1 + 64) - *a1)
      {
        goto LABEL_20;
      }

LABEL_158:
      v144 = *(a1 + 8);
      v145 = v144 - v10;
      if (v144 < v10)
      {
        v158 = *(a1 + 64);
        if (v144)
        {
          v159 = 0;
          do
          {
            *v158 = v158[-v11];
            ++v158;
            ++v159;
            v160 = *(a1 + 8);
          }

          while (v160 > v159);
          v158 = *(a1 + 64);
        }

        else
        {
          v160 = 0;
        }

        v162 = &v158[v160];
        *(a1 + 64) = v162;
        *(a1 + 112) = v7;
        *(a1 + 120) = v6;
        *(a1 + 88) = v9;
        *(a1 + 92) = v8;
        *(a1 + 128) = v11;
        *(a1 + 136) = v10 - v160;
        *(a1 + 8) = 0;
        *(a1 + 48) = 10;
        return &v162[-*a1];
      }

      v146 = *(a1 + 64);
      v147 = -v11;
      if (v144 < v10 + 31)
      {
        if (v10)
        {
          v148 = v10;
          do
          {
            *v146 = *(v146 + v147);
            ++v146;
            --v148;
          }

          while (v148);
          v146 = *(a1 + 64);
          v144 = *(a1 + 8);
        }

        *(a1 + 64) = v146 + v10;
        v128 = v144 - v10;
        goto LABEL_165;
      }

      v149 = v146 + v10;
      *(a1 + 64) = v146 + v10;
      *(a1 + 8) = v145;
      if (v11 < 8)
      {
        if (v11 == 1)
        {
          if (v10 >= 1)
          {
            v150 = 0;
            v151 = 0x101010101010101 * *(v146 + v147);
            v152 = v10 + v146;
            v153 = (v146 + 8);
            if (v152 <= v146 + 8)
            {
              v152 = v146 + 8;
            }

            v154 = (v152 + ~v146) >> 3;
            v155 = vdupq_n_s64(v154);
            v156 = (v154 + 2) & 0x3FFFFFFFFFFFFFFELL;
            do
            {
              v157 = vmovn_s64(vcgeq_u64(v155, vorrq_s8(vdupq_n_s64(v150), xmmword_29862D9D0)));
              if (v157.i8[0])
              {
                *(v153 - 1) = v151;
              }

              if (v157.i8[4])
              {
                *v153 = v151;
              }

              v150 += 2;
              v153 += 2;
            }

            while (v156 != v150);
          }
        }

        else if (v10 >= 1)
        {
          do
          {
            *v146 = *(v146 - v11);
            *(v146 + 2) = *(v146 - v11 + 2);
            v146 += 4;
          }

          while (v146 < v149);
        }
      }

      else if (v10 >= 1)
      {
        do
        {
          *v146 = *(v146 - v11);
          *(v146 + 8) = *(v146 - v11 + 8);
          v146 += 16;
        }

        while (v146 < v149);
      }
    }
  }

  if (v1 <= 1)
  {
    if (v1)
    {
      if (v1 != 1)
      {
        goto LABEL_20;
      }

      v12 = *(a1 + 32);
      v13 = *(a1 + 40);
      goto LABEL_22;
    }

    goto LABEL_37;
  }

  if (v1 != 2)
  {
    if (v1 != 3)
    {
      goto LABEL_126;
    }

    v13 = *(a1 + 40);
LABEL_125:
    if (!readHuffmanTable((a1 + 24), (a1 + 72), v4, (a1 + 76), v5))
    {
      goto LABEL_126;
    }

    result = 0;
    *(a1 + 40) = v13;
    v18 = 3;
    goto LABEL_21;
  }

  v12 = *(a1 + 32);
  v15 = *(a1 + 40);
  v16 = *(a1 + 80);
  v17 = *(a1 + 24);
  while (1)
  {
    v23 = v12 - v15;
    if (v12 < v15)
    {
      v23 = 0;
    }

    v24 = v23 >> 3;
    if (v24 >= *(a1 + 8))
    {
      v24 = *(a1 + 8);
    }

    if (v24 >= v16)
    {
      v25 = v16;
    }

    else
    {
      v25 = v24;
    }

    memcpy(*(a1 + 64), (v17 + (v15 >> 3)), v25);
    *(a1 + 40) += 8 * v25;
    *(a1 + 8) -= v25;
    v26 = *(a1 + 64) + v25;
    *(a1 + 64) = v26;
    v27 = *(a1 + 80);
    v28 = v27 > v25;
    v29 = v27 - v25;
    if (v28)
    {
      *(a1 + 80) = v29;
      *(a1 + 48) = 2;
      return (v26 - *a1);
    }

LABEL_37:
    if (*(a1 + 52))
    {
      *(a1 + 48) = 11;
      goto LABEL_189;
    }

    v12 = *(a1 + 32);
    v30 = *(a1 + 40);
    v31 = v12 - v30;
    if (v12 < v30)
    {
      v31 = 0;
    }

    if (v31 <= 2)
    {
      result = 0;
      *(a1 + 48) = 0;
      return result;
    }

    if ((v12 + 7 - v30) >> 3 >= 8)
    {
      v32 = 8;
    }

    else
    {
      v32 = (v12 + 7 - v30) >> 3;
    }

    *__dst = 0;
    v33 = *(a1 + 24);
    memcpy(__dst, (v33 + (v30 >> 3)), v32);
    v34 = *__dst >> (v30 & 7);
    *(a1 + 40) = v30 + 1;
    *(a1 + 52) = v34 & 1;
    if ((v12 + 7 + ~v30) >> 3 >= 8)
    {
      v35 = 8;
    }

    else
    {
      v35 = (v12 + 7 + ~v30) >> 3;
    }

    *__dst = 0;
    memcpy(__dst, (v33 + ((v30 + 1) >> 3)), v35);
    v36 = *__dst >> ((v30 + 1) & 7);
    v13 = v30 + 3;
    *(a1 + 40) = v13;
    v37 = v36 & 3;
    *(a1 + 72) = 0x800000008000;
    if (v37 > 1)
    {
      if (v37 != 2)
      {
        goto LABEL_20;
      }

      goto LABEL_125;
    }

    if (v37)
    {
      break;
    }

LABEL_22:
    v19 = v12 - v13;
    if (v12 < v13)
    {
      v19 = 0;
    }

    if (v19 <= 0xF)
    {
      result = 0;
      v18 = 1;
      goto LABEL_21;
    }

    v20 = v13 + 7;
    v21 = (v13 + 7) & 0xFFFFFFFFFFFFFFF8;
    *(a1 + 40) = v21;
    if ((v12 - v21 + 7) >> 3 >= 8)
    {
      v22 = 8;
    }

    else
    {
      v22 = (v12 - v21 + 7) >> 3;
    }

    *__dst = 0;
    v17 = *(a1 + 24);
    memcpy(__dst, (v17 + (v20 >> 3)), v22);
    v16 = __dst[0];
    *(a1 + 80) = __dst[0];
    v15 = v21 + 32;
    *(a1 + 40) = v21 + 32;
  }

  for (i = 0; i != 288; ++i)
  {
    if (i <= 0x8F)
    {
LABEL_51:
      *(&v163[2] + i) = 8;
      continue;
    }

    if (i > 0xFF)
    {
      if (i > 0x117)
      {
        goto LABEL_51;
      }

      *(&v163[2] + i) = 7;
    }

    else
    {
      *(&v163[2] + i) = 9;
    }
  }

  v39 = 0;
  *&v40 = 0x505050505050505;
  *(&v40 + 1) = 0x505050505050505;
  v163[0] = v40;
  v163[1] = v40;
  v41.i64[0] = 0x100000001;
  v41.i64[1] = 0x100000001;
  v42.i64[0] = 0x100000001;
  v42.i64[1] = 0x100000001;
  v43.i64[0] = 0x100000001;
  v43.i64[1] = 0x100000001;
  v44.i64[0] = 0x100000001;
  v44.i64[1] = 0x100000001;
  do
  {
    v45 = v163[v39 + 2];
    v46 = vmovl_u8(*v45.i8);
    v47 = vmovl_high_u8(v45);
    v44 = vmaxq_s32(v44, vmovl_high_u16(v47));
    v43 = vmaxq_s32(v43, vmovl_u16(*v47.i8));
    v42 = vmaxq_s32(v42, vmovl_high_u16(v46));
    v41 = vmaxq_s32(v41, vmovl_u16(*v46.i8));
    ++v39;
  }

  while (v39 != 18);
  v48 = 1 << vmaxvq_s32(vmaxq_s32(vmaxq_s32(v41, v43), vmaxq_s32(v42, v44)));
  if (v48 <= 0x8000)
  {
    v49 = 0;
    v168 = 0u;
    v169 = 0u;
    v166 = 0u;
    v167 = 0u;
    do
    {
      ++*(&v166 + *(&v163[2] + v49++));
    }

    while (v49 != 288);
    v50 = 0;
    v51 = 0;
    LODWORD(v166) = 0;
    v165[0] = 0;
    do
    {
      v51 = 2 * (*(&v166 + v50 * 4) + v51);
      v165[++v50] = v51;
    }

    while (v50 != 15);
    for (j = 0; j != 288; ++j)
    {
      v53 = *(&v163[2] + j);
      v54 = v165[v53];
      v165[v53] = v54 + 1;
      __dst[j] = (breverse_brev8[BYTE1(v54)] | (breverse_brev8[v54] << 8)) >> (16 - v53);
    }

    for (k = 0; k != 288; ++k)
    {
      v56 = *(&v163[2] + k);
      if (*(&v163[2] + k))
      {
        v57 = __dst[k];
        if (v48 > v57)
        {
          v58 = 0;
          v59 = v56 + 16 * k;
          v60 = 1 << v56;
          v61 = v60;
          v62 = v57 + v60;
          if (v62 >= v48)
          {
            v63 = 1;
          }

          else
          {
            v63 = 2;
          }

          if (v62 < v48)
          {
            v64 = v48;
          }

          else
          {
            v64 = v57 + v60;
          }

          v65 = v63 + (v64 - (v62 < v48) - v62) / v60;
          v66 = 2 * v60;
          v67 = 3 * v60;
          v68 = 4 * v60;
          v69 = 5 * v60;
          v70 = vdupq_n_s64(v65 - 1);
          v71 = 6 * v60;
          v72 = 16 * v60;
          v73 = v59 - 1;
          v74 = (v65 + 7) & 0xFFFFFFFFFFFFFFF8;
          v75 = 7 * v60;
          v76 = (a1 + 144 + 2 * v57);
          do
          {
            v77 = vdupq_n_s64(v58);
            v78 = vmovn_s64(vcgeq_u64(v70, vorrq_s8(v77, xmmword_29862D9D0)));
            if (vuzp1_s8(vuzp1_s16(v78, 6), 6).u8[0])
            {
              *v76 = v73;
            }

            if (vuzp1_s8(vuzp1_s16(v78, 6), 6).i8[1])
            {
              v76[v61] = v73;
            }

            if (vuzp1_s8(vuzp1_s16(6, vmovn_s64(vcgeq_u64(v70, vorrq_s8(v77, xmmword_29862D9C0)))), 6).i8[2])
            {
              v76[v66] = v73;
              v76[v67] = v73;
            }

            v79 = vmovn_s64(vcgeq_u64(v70, vorrq_s8(v77, xmmword_29862E070)));
            if (vuzp1_s8(6, vuzp1_s16(v79, 6)).i32[1])
            {
              v76[v68] = v73;
            }

            if (vuzp1_s8(6, vuzp1_s16(v79, 6)).i8[5])
            {
              v76[v69] = v73;
            }

            if (vuzp1_s8(6, vuzp1_s16(6, vmovn_s64(vcgeq_u64(v70, vorrq_s8(v77, xmmword_29862E060))))).i8[6])
            {
              v76[v71] = v73;
              v76[v75] = v73;
            }

            v58 += 8;
            v76 = (v76 + v72);
          }

          while (v74 != v58);
        }
      }
    }

    v80 = 0;
    v81.i64[0] = 0x100000001;
    v81.i64[1] = 0x100000001;
    v82.i64[0] = 0x100000001;
    v82.i64[1] = 0x100000001;
    v83.i64[0] = 0x100000001;
    v83.i64[1] = 0x100000001;
    v84.i64[0] = 0x100000001;
    v84.i64[1] = 0x100000001;
    do
    {
      v85 = v163[v80];
      v86 = vmovl_u8(*v85.i8);
      v87 = vmovl_high_u8(v85);
      v84 = vmaxq_s32(v84, vmovl_high_u16(v87));
      v83 = vmaxq_s32(v83, vmovl_u16(*v87.i8));
      v82 = vmaxq_s32(v82, vmovl_high_u16(v86));
      v81 = vmaxq_s32(v81, vmovl_u16(*v86.i8));
      ++v80;
    }

    while (v80 != 2);
    v88 = 1 << vmaxvq_s32(vmaxq_s32(vmaxq_s32(v81, v83), vmaxq_s32(v82, v84)));
    if (v88 <= 0x8000)
    {
      v89 = 0;
      v168 = 0u;
      v169 = 0u;
      v166 = 0u;
      v167 = 0u;
      do
      {
        ++*(&v166 + *(v163 + v89++));
      }

      while (v89 != 32);
      v90 = 0;
      v91 = 0;
      LODWORD(v166) = 0;
      v165[0] = 0;
      do
      {
        v91 = 2 * (*(&v166 + v90 * 4) + v91);
        v165[++v90] = v91;
      }

      while (v90 != 15);
      for (m = 0; m != 32; ++m)
      {
        v93 = *(v163 + m);
        v94 = v165[v93];
        v165[v93] = v94 + 1;
        __dst[m] = (breverse_brev8[BYTE1(v94)] | (breverse_brev8[v94] << 8)) >> (16 - v93);
      }

      for (n = 0; n != 32; ++n)
      {
        v96 = *(v163 + n);
        if (*(v163 + n))
        {
          v97 = __dst[n];
          if (v88 > v97)
          {
            v98 = 0;
            v99 = v96 + 16 * n;
            v100 = 1 << v96;
            v101 = v100;
            v102 = v97 + v100;
            if (v102 >= v88)
            {
              v103 = 1;
            }

            else
            {
              v103 = 2;
            }

            if (v102 < v88)
            {
              v104 = v88;
            }

            else
            {
              v104 = v97 + v100;
            }

            v105 = v103 + (v104 - (v102 < v88) - v102) / v100;
            v106 = 2 * v100;
            v107 = 3 * v100;
            v108 = 4 * v100;
            v109 = 5 * v100;
            v110 = vdupq_n_s64(v105 - 1);
            v111 = 6 * v100;
            v112 = 16 * v100;
            v113 = v99 - 1;
            v114 = (v105 + 7) & 0xFFFFFFFFFFFFFFF8;
            v115 = 7 * v100;
            v116 = (a1 + 65680 + 2 * v97);
            do
            {
              v117 = vdupq_n_s64(v98);
              v118 = vmovn_s64(vcgeq_u64(v110, vorrq_s8(v117, xmmword_29862D9D0)));
              if (vuzp1_s8(vuzp1_s16(v118, 6), 6).u8[0])
              {
                *v116 = v113;
              }

              if (vuzp1_s8(vuzp1_s16(v118, 6), 6).i8[1])
              {
                v116[v101] = v113;
              }

              if (vuzp1_s8(vuzp1_s16(6, vmovn_s64(vcgeq_u64(v110, vorrq_s8(v117, xmmword_29862D9C0)))), 6).i8[2])
              {
                v116[v106] = v113;
                v116[v107] = v113;
              }

              v119 = vmovn_s64(vcgeq_u64(v110, vorrq_s8(v117, xmmword_29862E070)));
              if (vuzp1_s8(6, vuzp1_s16(v119, 6)).i32[1])
              {
                v116[v108] = v113;
              }

              if (vuzp1_s8(6, vuzp1_s16(v119, 6)).i8[5])
              {
                v116[v109] = v113;
              }

              if (vuzp1_s8(6, vuzp1_s16(6, vmovn_s64(vcgeq_u64(v110, vorrq_s8(v117, xmmword_29862E060))))).i8[6])
              {
                v116[v111] = v113;
                v116[v115] = v113;
              }

              v98 += 8;
              v116 = (v116 + v112);
            }

            while (v114 != v98);
          }
        }
      }

      *(a1 + 72) = v48;
      *(a1 + 76) = v88;
LABEL_126:
      v6 = 0;
      v7 = 0;
      v9 = *(a1 + 72) - 1;
      v8 = *(a1 + 76) - 1;
      goto LABEL_132;
    }
  }

LABEL_20:
  result = 0;
  v18 = 12;
LABEL_21:
  *(a1 + 48) = v18;
  return result;
}

uint64_t lzvn_decode_buffer(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a3 <= a3 + a4 - 8)
    {
      __asm { BR              X17 }
    }

    __asm { BTI             j }

    return 0;
  }

  else
  {
    __asm { BTI             j }

    return 0;
  }
}

uint64_t adler32_vec(uint64_t a1, uint64_t a2, uint8x16_t *a3, int a4)
{
  v4 = a1 + (a2 << 32);
  if (a4 >= 5552)
  {
    v5 = a4 - 5552;
    do
    {
      v6 = *a3;
      v7 = vmlal_high_u8(vmull_u8(*a3->i8, vec_table[2]), *a3, *&vec_table[2]);
      v6.i16[0] = vaddlvq_u8(*a3);
      v7.i32[0] = vaddlvq_u16(v7);
      ++a3;
      v8 = vadd_s32((v4 + vshld_n_s64(v4, 0x24uLL)), vzip1_s32(*v6.i8, *v7.i8));
      v9 = 173;
      do
      {
        v10 = *a3;
        v11 = a3[1];
        v12 = vshld_n_s64(v8, 0x25uLL);
        v13 = (v8 + *&v12);
        v10.i16[0] = vaddlvq_u8(*a3);
        v12.i16[0] = vaddlvq_u8(v11);
        v14 = vmlal_high_u8(vmlal_u8(vmlal_high_u8(vmull_u8(*a3->i8, vec_table[0]), *a3, *vec_table), *v11.i8, vec_table[2]), v11, *&vec_table[2]);
        v14.i32[0] = vaddlvq_u16(v14);
        a3 += 2;
        v8 = vadd_s32(v13, vzip1_s32(*&vaddl_u16(*v10.i8, v12), *v14.i8));
        v15 = __OFSUB__(v9--, 1);
      }

      while (!((v9 < 0) ^ v15 | (v9 == 0)));
      v16 = vshrq_n_u64(vmull_lane_u32(v8, 0x800780710000FFF1, 1), 0x2FuLL);
      v16.i32[1] = v16.i32[2];
      v4 = vmls_lane_s32(v8, *v16.i8, 0x800780710000FFF1, 0);
      v15 = __OFSUB__(v5, 5552);
      v5 -= 5552;
    }

    while (v5 < 0 == v15);
    a4 = v5 + 5552;
  }

  v15 = __OFSUB__(a4, 32);
  for (i = a4 - 32; i < 0 == v15; i -= 32)
  {
    v18 = *a3;
    v19 = a3[1];
    v20 = vshld_n_s64(v4, 0x25uLL);
    v21 = (v4 + *&v20);
    v18.i16[0] = vaddlvq_u8(*a3);
    v20.i16[0] = vaddlvq_u8(v19);
    v22 = vmlal_high_u8(vmlal_u8(vmlal_high_u8(vmull_u8(*a3->i8, vec_table[0]), *a3, *vec_table), *v19.i8, vec_table[2]), v19, *&vec_table[2]);
    v22.i32[0] = vaddlvq_u16(v22);
    a3 += 2;
    v4 = vadd_s32(v21, vzip1_s32(*&vaddl_u16(*v18.i8, v20), *v22.i8));
    v15 = __OFSUB__(i, 32);
  }

  if ((i & 0x10) != 0)
  {
    v23 = *a3;
    v24 = vmlal_high_u8(vmull_u8(*a3->i8, vec_table[2]), *a3, *&vec_table[2]);
    v23.i16[0] = vaddlvq_u8(*a3);
    v24.i32[0] = vaddlvq_u16(v24);
    ++a3;
    v4 = vadd_s32((v4 + vshld_n_s64(v4, 0x24uLL)), vzip1_s32(*v23.i8, *v24.i8));
  }

  for (j = i & 0xF; j; v4 += v26 + vshld_n_s64(v4 + v26, 0x20uLL))
  {
    v26 = a3->u8[0];
    a3 = (a3 + 1);
    --j;
  }

  v27 = vshrq_n_u64(vmull_lane_u32(v4, 0x800780710000FFF1, 1), 0x2FuLL);
  v27.i32[1] = v27.i32[2];
  v28 = vmls_lane_s32(v4, *v27.i8, 0x800780710000FFF1, 0);
  return (v28.i32[0] + (v28.i32[1] << 16));
}

char *zero_coder_decode(int8x8_t *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, int8x16_t a5)
{
  if (!zero_coder_luts_ok)
  {
    zero_coder_init_luts();
  }

  v9 = (a1 + a2);
  v10 = &a3[a4];
  if (a2 < 8 || a4 < 9)
  {
    v11 = a1;
  }

  else
  {
    v11 = a1;
    do
    {
      v12 = *a3;
      a5.i64[0] = *(a3 + 1);
      v13 = v11 + 2;
      *v11++ = vqtbl1_s8(a5, *&zero_coder_lut_read[8 * v12]);
      a3 += zero_coder_lut_popcount[v12] + 1;
    }

    while (v13 <= v9 && (a3 + 9) <= v10);
  }

LABEL_17:
  if (a3 < v10)
  {
    v14 = *a3++;
    v15 = v14 | 0x100;
    while (v11 != v9)
    {
      if (v15)
      {
        if (a3 == v10)
        {
          return (v11 - a1);
        }

        v17 = *a3++;
        v16 = v17;
      }

      else
      {
        v16 = 0;
      }

      v11->i8[0] = v16;
      v11 = (v11 + 1);
      v18 = v15 > 3;
      v15 >>= 1;
      if (!v18)
      {
        goto LABEL_17;
      }
    }

    v11 = (a1 + a2);
  }

  return (v11 - a1);
}

_BYTE *zero_coder_encode(_BYTE *a1, uint64_t a2, int8x8_t *a3, uint64_t a4, double a5, int8x16_t a6)
{
  if (!zero_coder_luts_ok)
  {
    zero_coder_init_luts();
  }

  if (a2 < 9)
  {
    return 0;
  }

  v10 = a3 + a4;
  v11 = a1;
  while (&a3[1] <= v10)
  {
    *a6.i8 = *a3;
    v12 = vbic_s8(0x8040201008040201, vceqz_s8(*a3));
    v12.i32[0] = vuzp1_s8(vorr_s8(vzip1_s8(v12, 0x8040201008040201), vzip2_s8(v12, 0x8040201008040201)), 0x8040201008040201).u32[0];
    *v11 = v12.i8[0] | v12.i8[2] | ((v12.i16[0] | v12.i16[1]) >> 8);
    v13 = (v12.i8[0] | v12.i8[2] | ((v12.i16[0] | v12.i16[1]) >> 8));
    *(v11 + 1) = vqtbl1_s8(a6, *&zero_coder_lut_write[8 * v13]);
    v11 += zero_coder_lut_popcount[v13] + 1;
    ++a3;
    if (v11 + 9 > &a1[a2])
    {
      return 0;
    }
  }

  if (a3 >= v10)
  {
    v17 = v11;
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v17 = v11 + 1;
    v18 = -1 << (a4 & 7);
    v19 = 1;
    v20 = a3;
    do
    {
      v21 = v20->u8[0];
      if (v21)
      {
        *v17++ = v21;
        v18 |= 1 << v15;
      }

      v15 = ++v16;
      v20 = (a3 + v19++);
    }

    while (v20 < v10);
    *v11 = v18;
  }

  return (v17 - a1);
}

__int16 zero_coder_init_luts@<H0>()
{
  zero_coder_luts_ok = 1;
  memset(zero_coder_lut_write, 128, sizeof(zero_coder_lut_write));
  memset(zero_coder_lut_read, 128, sizeof(zero_coder_lut_read));
  for (i = 0; i != 256; ++i)
  {
    v2 = 0;
    for (j = 0; j != 8; ++j)
    {
      if ((i >> j))
      {
        zero_coder_lut_write[8 * i + (v2 & 7)] = j;
        zero_coder_lut_read[8 * i + (j & 7)] = v2++;
      }
    }

    v0.i32[0] = i;
    v0 = vcnt_s8(v0);
    v0.i16[0] = vaddlv_u8(v0);
    zero_coder_lut_popcount[i] = v0.i8[0];
  }

  return v0.i16[0];
}

uint64_t BrotliEncoderSetParameter(uint64_t a1, int a2, unsigned int a3)
{
  if (*(a1 + 8636))
  {
    return 0;
  }

  result = 0;
  if (a2 > 4)
  {
    if (a2 <= 6)
    {
      if (a2 == 5)
      {
        *(a1 + 24) = a3;
      }

      else
      {
        *(a1 + 36) = a3 != 0;
      }

      return 1;
    }

    if (a2 == 7)
    {
      *(a1 + 64) = a3;
      return 1;
    }

    if (a2 == 8)
    {
      *(a1 + 68) = a3;
      return 1;
    }

    if (a2 != 9)
    {
      return result;
    }

    if (a3 <= 0x40000000)
    {
      *(a1 + 16) = a3;
      return 1;
    }

    return 0;
  }

  if (a2 > 1)
  {
    if (a2 == 2)
    {
      *(a1 + 8) = a3;
      return 1;
    }

    if (a2 == 3)
    {
      *(a1 + 12) = a3;
      return 1;
    }

    if (a3 <= 1)
    {
      *(a1 + 32) = a3;
      return 1;
    }

    return 0;
  }

  if (a2)
  {
    if (a2 != 1)
    {
      return result;
    }

    *(a1 + 4) = a3;
  }

  else
  {
    *a1 = a3;
  }

  return 1;
}

char *BrotliEncoderCreateInstance(void *(*a1)(int a1, size_t __size), void (*a2)(int a1, void *a2), uint64_t a3)
{
  if (a1 | a2)
  {
    v6 = 0;
    if (!a1 || !a2)
    {
      return v6;
    }

    v7 = a1(a3, 8640);
  }

  else
  {
    v7 = malloc(0x21C0uLL);
  }

  v6 = v7;
  if (v7)
  {
    BrotliInitMemoryManager((v7 + 144), a1, a2, a3);
    *(v6 + 9) = 0;
    *v6 = 0xB00000000;
    *(v6 + 2) = 22;
    *(v6 + 12) = 0;
    *(v6 + 20) = 0u;
    BrotliInitEncoderDictionary((v6 + 88));
    *(v6 + 4) = xmmword_29862DBB0;
    *(v6 + 10) = 67108860;
    *(v6 + 281) = 0;
    *(v6 + 1218) = 0;
    *(v6 + 2157) = 0;
    *(v6 + 1079) = 0;
    *(v6 + 142) = 0u;
    *(v6 + 143) = 0u;
    *(v6 + 144) = 0u;
    *(v6 + 145) = 0u;
    *(v6 + 146) = 0u;
    *(v6 + 305) = 0;
    *(v6 + 153) = 0u;
    *(v6 + 478) = 0u;
    *(v6 + 537) = 0u;
    *(v6 + 536) = 0u;
    *(v6 + 535) = 0u;
    *(v6 + 147) = xmmword_29862DBC0;
    *(v6 + 151) = *(v6 + 147);
  }

  return v6;
}

uint64_t BrotliEncoderDestroyInstance(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v4 = *(result + 152);
    v2 = *(result + 160);
    if (*(result + 168))
    {
      BrotliWipeOutMemoryManager(result + 144);
    }

    else
    {
      BrotliFree(result + 144, *(result + 2448));
      v1[306] = 0;
      BrotliFree((v1 + 18), v1[288]);
      v1[288] = 0;
      BrotliFree((v1 + 18), v1[285]);
      v1[285] = 0;
      v3 = v1[307];
      if (v3)
      {
        BrotliFree((v1 + 18), v3);
        v1[307] = 0;
      }

      BrotliFree((v1 + 18), v1[956]);
      v1[956] = 0;
      BrotliFree((v1 + 18), v1[1071]);
      v1[1071] = 0;
      BrotliFree((v1 + 18), v1[1072]);
      v1[1072] = 0;
    }

    return v4(v2, v1);
  }

  return result;
}

uint64_t BrotliEncoderMaxCompressedSize(unint64_t a1)
{
  v1 = a1 + 4 * (a1 >> 14) + 6;
  if (v1 < a1)
  {
    v1 = 0;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 2;
  }
}

uint64_t BrotliEncoderCompress(int a1, int a2, int a3, unint64_t a4, uint64_t *a5, unint64_t *a6, _BYTE *a7)
{
  v7 = a7;
  v8 = a6;
  v267 = *MEMORY[0x29EDCA608];
  v9 = *a6;
  if (!a4)
  {
    if (v9)
    {
      result = 1;
      *a6 = 1;
      *a7 = 6;
      return result;
    }

    return 0;
  }

  v10 = a4;
  v11 = a4 + 4 * (a4 >> 14) + 6;
  if (v11 < a4)
  {
    v11 = 0;
  }

  if (v9)
  {
    v176 = v11;
    if (a1 != 10)
    {
      result = BrotliEncoderCreateInstance(0, 0, 0);
      if (!result)
      {
        return result;
      }

      v22 = result;
      v23 = v9;
      *&v233 = v10;
      *&v203[0] = a5;
      *&v192[0] = *v8;
      *v232 = v7;
      *&v186[0] = 0;
      if (!*(result + 8636))
      {
        *(result + 4) = a1;
        *(result + 8) = a2;
        *result = a3;
        *(result + 24) = v10;
        if (a2 >= 25)
        {
          *(result + 36) = 1;
        }
      }

      v24 = BrotliEncoderCompressStream(result, 2, &v233, v203, v192, v232, v186);
      if (*(v22 + 8628) == 2 && !*(v22 + 8592))
      {
        v25 = v24;
      }

      else
      {
        v25 = 0;
      }

      *v8 = *&v186[0];
      BrotliEncoderDestroyInstance(v22);
      v26 = v176;
      if (!v25)
      {
LABEL_345:
        *v8 = 0;
        if (v26 - 1 < v23)
        {
          v152 = v8;
          v153 = 0;
          *v7 = 801;
          v154 = 2;
          do
          {
            if (v10 >= 0x1000000)
            {
              v155 = 0x1000000;
            }

            else
            {
              v155 = v10;
            }

            if (v10 <= 0x100000)
            {
              v156 = 1;
            }

            else
            {
              v156 = 2;
            }

            if (v10 <= 0x10000)
            {
              v156 = 0;
            }

            v157 = 8 * v155 - 8;
            v158 = v157 | (2 * v156);
            v159 = v158 | (0x80000 << (4 * v156));
            v160 = v7 + v154;
            *v160 = v158;
            v160[1] = BYTE1(v157);
            v161 = v154 + 3;
            v160[2] = BYTE2(v159);
            if (v10 > 0x100000)
            {
              *(v7 + v161) = HIBYTE(v159);
              v161 = v154 + 4;
            }

            memcpy(v7 + v161, a5 + v153, v155);
            v154 = v161 + v155;
            v153 += v155;
            v10 -= v155;
          }

          while (v10);
          *(v7 + v154) = 3;
          *v152 = v154 + 1;
          return 1;
        }

        return 0;
      }

LABEL_30:
      if (!v26 || *v8 <= v26)
      {
        return 1;
      }

      goto LABEL_345;
    }

    v264 = 0u;
    v263 = 0u;
    if (a2 <= 16)
    {
      v15 = 16;
    }

    else
    {
      v15 = a2;
    }

    v262 = 0uLL;
    v261 = 0uLL;
    if (v15 >= 30)
    {
      v16 = 30;
    }

    else
    {
      v16 = v15;
    }

    v260 = 0uLL;
    v259 = 0uLL;
    v258 = 0uLL;
    v257 = 0uLL;
    v256 = 0uLL;
    v255 = 0uLL;
    v254 = 0uLL;
    v253 = 0uLL;
    v252 = 0uLL;
    v251 = 0uLL;
    v250 = 0uLL;
    v249 = 0uLL;
    v248 = 0uLL;
    v247 = 0uLL;
    v246 = 0uLL;
    v245 = 0uLL;
    v244 = 0uLL;
    v243 = 0uLL;
    v242 = 0uLL;
    v241 = 0uLL;
    v240 = 0uLL;
    v239 = 0uLL;
    v238 = 0uLL;
    v237 = 0uLL;
    v236 = 0uLL;
    v235 = 0uLL;
    v234 = 0uLL;
    v233 = 0uLL;
    v265 = xmmword_29862DBC0;
    v266 = xmmword_29862DBC0;
    if (a4 >= 1 << v16)
    {
      v17 = 1 << v16;
    }

    else
    {
      v17 = a4;
    }

    memset(&v232[40], 0, 104);
    if (v15 >= 23)
    {
      v18 = 23;
    }

    else
    {
      v18 = v15;
    }

    v228 = 0uLL;
    v227 = 0uLL;
    v226 = 0uLL;
    v225 = 0uLL;
    v224 = 0uLL;
    v223 = 0uLL;
    v222 = 0uLL;
    v220 = 0uLL;
    v221 = 0uLL;
    v218 = 0uLL;
    v219 = 0uLL;
    v216 = 0uLL;
    v217 = 0uLL;
    v214 = 0uLL;
    v215 = 0uLL;
    v212 = 0uLL;
    v213 = 0uLL;
    v210 = 0uLL;
    v211 = 0uLL;
    v208 = 0uLL;
    v209 = 0uLL;
    v207 = 0uLL;
    memset(v206, 0, sizeof(v206));
    *v204 = 0uLL;
    *__b = 0uLL;
    memset(v203, 0, sizeof(v203));
    *v232 = 0xB00000000;
    memset(&v232[12], 0, 28);
    BrotliInitEncoderDictionary(&v232[88]);
    *&v232[64] = xmmword_29862DBB0;
    *&v232[80] = 67108860;
    *&v232[8] = v16;
    if (a2 < 25)
    {
      *&v232[4] = 10;
      v19 = v16;
      if (v16 > 0x18)
      {
        *&v232[8] = 24;
        v19 = 24;
      }
    }

    else
    {
      *&v232[36] = 1;
      *&v232[4] = 10;
      v19 = v16;
    }

    v8 = a6;
    v174 = v9;
    if (v19 >= 0x12)
    {
      v19 = 18;
    }

    *&v232[12] = v19;
    ChooseDistanceParams(v232);
    v27 = v232[12];
    BrotliInitMemoryManager(&v233, 0, 0, 0);
    if (*&v232[36])
    {
      v28 = 17;
      v29 = 14;
    }

    else if (v16 == 16)
    {
      v28 = 0;
      LOBYTE(v16) = 0;
      v29 = 1;
    }

    else
    {
      if (v16 != 17)
      {
        v28 = 2 * v16 - 33;
        v172 = 4;
        LOBYTE(v16) = 0;
LABEL_40:
        if (*&v203[0])
        {
          if (HIDWORD(v203[2]))
          {
            goto LABEL_215;
          }

          v30 = DWORD2(v203[1]);
LABEL_141:
          if (v30 > 34)
          {
            if (v30 > 41)
            {
              if (v30 > 54)
              {
                if (v30 == 55)
                {
                  PrepareH55(v204, 1, v17, a5);
                }

                else if (v30 == 65)
                {
                  PrepareH65(v204, 1, v17, a5);
                }

                goto LABEL_214;
              }

              if (v30 != 42)
              {
                if (v30 == 54)
                {
                  v42 = v204[1];
                  if (v17 <= 0x8000)
                  {
                    v43 = 0;
                    do
                    {
                      v44 = (0x35A7BD1E35A7BD00 * *(a5 + v43)) >> 44;
                      v45 = 4;
                      do
                      {
                        v42[v44 & 0xFFFFF] = 0;
                        LODWORD(v44) = v44 + 8;
                        --v45;
                      }

                      while (v45);
                      ++v43;
                    }

                    while (v43 != v17);
                    goto LABEL_214;
                  }

                  v81 = 0x400000;
                  goto LABEL_213;
                }

LABEL_214:
                *&v203[1] = 0;
                *(&v203[0] + 1) = 0;
                HIDWORD(v203[2]) = 1;
LABEL_215:
                if (DWORD2(v234))
                {
LABEL_344:
                  BrotliWipeOutMemoryManager(&v233);
                  v23 = v174;
                  v7 = a7;
                  v26 = v176;
                  goto LABEL_345;
                }

                v87 = 1 << (v18 + 1);
                if (DWORD2(v203[1]) == 65)
                {
                  v88 = &v206[3] + 1;
                  v89 = a7;
                  if (v17 >= 0x20)
                  {
                    v94 = 0;
                    v95 = 0;
                    do
                    {
                      v95 = *(a5 + v94++) + v95 * DWORD1(v206[4]) + 1;
                    }

                    while (v94 != 32);
                    DWORD2(v206[2]) = v95;
                  }

                  goto LABEL_233;
                }

                v88 = v206;
                v89 = a7;
                if (DWORD2(v203[1]) == 55)
                {
                  if (v17 >= 0x20)
                  {
                    v93 = 0;
                    v91 = 0;
                    do
                    {
                      v91 = *(a5 + v93) + v91 * HIDWORD(v206[0]) + 1;
                      v92 = v93 >= 0x1C;
                      v93 += 4;
                    }

                    while (!v92);
                    goto LABEL_228;
                  }
                }

                else
                {
                  if (DWORD2(v203[1]) != 35)
                  {
LABEL_234:
                    v169 = v28;
                    v171 = 0;
                    v96 = 0;
                    v164 = 0;
                    v165 = 0;
                    v177 = v87 >> 3;
                    __dst = v89;
                    v163 = 1 << (v18 + 1);
                    do
                    {
                      v167 = v16;
                      v97 = v96 + v87;
                      if (v10 < v96 + v87)
                      {
                        v97 = v10;
                      }

                      v180 = v97;
                      v98 = v97 - v96;
                      v202 = 0;
                      v201 = 0;
                      v200 = 0;
                      v99 = v96;
                      if (*&v232[4] < 10 || BrotliIsMostlyUTF8(a5, v96, 0x7FFFFFFFFFFFFFFFLL, v98, 0.75))
                      {
                        v100 = 2;
                      }

                      else
                      {
                        v100 = 3;
                      }

                      __src = 0;
                      v184 = 0;
                      v101 = 0;
                      v181 = 0;
                      v178 = v98 / 0xC + 16;
                      v166 = v100;
                      v179 = (v100 << 9);
                      v170 = v96;
                      while (v180 > v99)
                      {
                        v182 = v101;
                        if (v180 - v99 >= 1 << v27)
                        {
                          v102 = 1 << v27;
                        }

                        else
                        {
                          v102 = v180 - v99;
                        }

                        if (v102 == -1)
                        {
                          v185 = 0;
                        }

                        else
                        {
                          v185 = BrotliAllocate(&v233);
                        }

                        if (DWORD2(v234))
                        {
                          goto LABEL_343;
                        }

                        BrotliInitZopfliNodes(v185, v102 + 1);
                        if (v99 >= 0x80 && v102 >= 3)
                        {
                          v103 = v99 - 127;
                          v104 = v102 + v99 - 127;
                          if (v99 < v104)
                          {
                            v104 = v99;
                          }

                          if (v103 < v104)
                          {
                            v105 = v204[0];
                            v106 = v204[1];
                            v107 = __b[1];
                            do
                            {
                              v108 = v103 & 0x7FFFFFFFFFFFFFFFLL;
                              if (v99 - v103 <= 0xF)
                              {
                                v109 = 15;
                              }

                              else
                              {
                                v109 = v99 - v103;
                              }

                              v110 = a5 + v108;
                              v111 = (506832829 * *(a5 + v108)) >> 15;
                              v112 = v106[v111];
                              v113 = 2 * (v103 & v105);
                              v114 = v113 | 1;
                              v106[v111] = v103;
                              if (v103 != v112)
                              {
                                v116 = 0;
                                v117 = 0;
                                v118 = (v105 - v109);
                                v119 = 64;
                                do
                                {
                                  if (v103 - v112 > v118 || v119 == 0)
                                  {
                                    break;
                                  }

                                  if (v117 >= v116)
                                  {
                                    v121 = v116;
                                  }

                                  else
                                  {
                                    v121 = v117;
                                  }

                                  v122 = a5 + v112 + v121;
                                  v123 = 128 - v121;
                                  if (128 - v121 < 8)
                                  {
                                    v126 = 0;
LABEL_283:
                                    v131 = v123 & 7;
                                    if (v131)
                                    {
                                      v132 = v126 | v131;
                                      while (v110[v121 + v126] == *v122)
                                      {
                                        ++v122;
                                        ++v126;
                                        if (!--v131)
                                        {
                                          v126 = v132;
                                          break;
                                        }
                                      }
                                    }
                                  }

                                  else
                                  {
                                    v124 = 0;
                                    v125 = v123 >> 3;
                                    v126 = v123 & 0xFFFFFFFFFFFFFFF8;
                                    while (1)
                                    {
                                      v127 = *&v122[v124];
                                      v128 = *&v110[v121 + v124];
                                      if (v127 != v128)
                                      {
                                        break;
                                      }

                                      v124 += 8;
                                      if (!--v125)
                                      {
                                        v122 += v123 & 0xFFFFFFFFFFFFFFF8;
                                        goto LABEL_283;
                                      }
                                    }

                                    v126 = v124 + (__clz(__rbit64(v128 ^ v127)) >> 3);
                                  }

                                  v129 = v126 + v121;
                                  if (v129 >= 0x80)
                                  {
                                    v133 = &v107[2 * (v112 & v105)];
                                    v107[v113] = *v133;
                                    v115 = v133[1];
                                    goto LABEL_260;
                                  }

                                  v130 = 2 * (v112 & v105);
                                  if (v110[v129] <= *(a5 + v112 + v129))
                                  {
                                    v107[v114] = v112;
                                    v114 = 2 * (v112 & v105);
                                    v116 = v129;
                                  }

                                  else
                                  {
                                    v107[v113] = v112;
                                    v113 = v130 | 1;
                                    v117 = v129;
                                    v130 |= 1uLL;
                                  }

                                  v112 = v107[v130];
                                  --v119;
                                }

                                while (v103 != v112);
                              }

                              v115 = __b[0];
                              v107[v113] = __b[0];
LABEL_260:
                              v107[v114] = v115;
                              ++v103;
                            }

                            while (v103 != v104);
                          }
                        }

                        v134 = BrotliZopfliComputeShortestPath(&v233, v102, v99, a5, 0x7FFFFFFFFFFFFFFFLL, &_kBrotliContextLookupTable[v179], v232, &v266, v203, v185);
                        if (DWORD2(v234))
                        {
                          goto LABEL_343;
                        }

                        v135 = v134 + v184;
                        if (v178 <= v134 + v184 + 1)
                        {
                          v136 = v135 + 1;
                        }

                        else
                        {
                          v136 = v178;
                        }

                        if (v181 == v136)
                        {
                          v137 = v177;
                          v138 = __src;
                        }

                        else
                        {
                          v139 = BrotliAllocate(&v233);
                          if (DWORD2(v234))
                          {
                            goto LABEL_343;
                          }

                          v138 = v139;
                          if (__src)
                          {
                            memcpy(v139, __src, 16 * v184);
                            BrotliFree(&v233, __src);
                          }

                          v181 = v136;
                          v137 = v177;
                        }

                        __src = v138;
                        BrotliZopfliCreateCommands(v102, v99, v185, &v266, &v202, v232, &v138[16 * v184], &v201);
                        v101 = v102 + v182;
                        BrotliFree(&v233, v185);
                        if (v135 <= v137)
                        {
                          v99 += v102;
                          v184 = v135;
                          if (v201 <= v137)
                          {
                            continue;
                          }
                        }

                        goto LABEL_303;
                      }

                      v135 = v184;
LABEL_303:
                      v140 = v202;
                      if (v202)
                      {
                        v141 = &__src[16 * v135];
                        *v141 = v202;
                        *(v141 + 4) = 0x8000000;
                        *(v141 + 7) = 16;
                        v142 = v170;
                        if (v140 > 5)
                        {
                          if (v140 > 0x81)
                          {
                            if (v140 > 0x841)
                            {
                              if (v140 >> 1 >= 0xC21)
                              {
                                if (v140 < 0x5842)
                                {
                                  LOWORD(v143) = 22;
                                }

                                else
                                {
                                  LOWORD(v143) = 23;
                                }
                              }

                              else
                              {
                                LOWORD(v143) = 21;
                              }
                            }

                            else
                            {
                              v143 = (__clz(v140 - 66) ^ 0x1F) + 10;
                            }
                          }

                          else
                          {
                            v144 = (__clz(v140 - 2) ^ 0x1F) - 1;
                            v143 = ((v140 - 2) >> v144) + 2 * v144 + 2;
                          }
                        }

                        else
                        {
                          LOWORD(v143) = v140;
                        }

                        ++v135;
                        *(v141 + 6) = ((((0x520D40u >> (6 * (v143 >> 3))) & 0xC0) + 192 * (v143 >> 3)) & 0xFFC7 | (8 * (v143 & 7))) + 66;
                        v201 += v140;
                      }

                      else
                      {
                        v142 = v170;
                      }

                      v96 = v101 + v142;
                      v145 = v101 + v142 == v10;
                      v200 = v172;
                      if (v101)
                      {
                        if (ShouldCompress(a5, 0xFFFFFFFF, v142, v101, v201, v135))
                        {
                          v198 = 0u;
                          v199 = 0u;
                          v196 = 0u;
                          v197 = 0u;
                          v195 = 0u;
                          memset(v194, 0, sizeof(v194));
                          memset(v193, 0, sizeof(v193));
                          memset(v192, 0, sizeof(v192));
                          v189 = *&v232[96];
                          v190 = *&v232[112];
                          v191 = *&v232[128];
                          v186[2] = *&v232[32];
                          v186[3] = *&v232[48];
                          *v187 = *&v232[64];
                          v188 = *&v232[80];
                          v186[0] = *v232;
                          v186[1] = *&v232[16];
                          BrotliInitBlockSplit(v192);
                          BrotliInitBlockSplit(v193);
                          BrotliInitBlockSplit(v194);
                          v198 = 0u;
                          v199 = 0u;
                          v196 = 0u;
                          v197 = 0u;
                          v195 = 0u;
                          BrotliBuildMetaBlock(&v233, a5, v142, 0x7FFFFFFFFFFFFFFFuLL, v186, v165, v164, __src, v135, v166, v192);
                          if (DWORD2(v234))
                          {
                            goto LABEL_343;
                          }

                          BrotliOptimizeHistograms(HIDWORD(v187[1]), v192);
                          v146 = BrotliAllocate(&v233);
                          if (DWORD2(v234))
                          {
                            goto LABEL_343;
                          }

                          v147 = v146;
                          *v146 = v169;
                          v146[1] = v167;
                          BrotliStoreMetaBlock(&v233, a5, v170, v101, 0x7FFFFFFFFFFFFFFFLL, v165, v164, v145, v186, v166, __src, v135, v192, &v200, v146);
                          if (DWORD2(v234))
                          {
                            goto LABEL_343;
                          }

                          if (v101 + 4 < v200 >> 3)
                          {
                            v266 = v265;
                            *v147 = v169;
                            v147[1] = v167;
                            v200 = v172;
                            BrotliStoreUncompressedMetaBlock(v145, a5, v170, 0x7FFFFFFFFFFFFFFFLL, v101, &v200, v147);
                          }

                          BrotliDestroyBlockSplit(&v233, v192);
                          BrotliDestroyBlockSplit(&v233, v193);
                          BrotliDestroyBlockSplit(&v233, v194);
                          BrotliFree(&v233, v195);
                          *&v195 = 0;
                          BrotliFree(&v233, v196);
                          *&v196 = 0;
                          BrotliFree(&v233, v197);
                          *&v197 = 0;
                          BrotliFree(&v233, v198);
                          *&v198 = 0;
                          BrotliFree(&v233, v199);
                        }

                        else
                        {
                          v266 = v265;
                          if (v101 == -16)
                          {
                            v147 = 0;
                          }

                          else
                          {
                            v147 = BrotliAllocate(&v233);
                          }

                          if (DWORD2(v234))
                          {
LABEL_343:
                            v8 = a6;
                            goto LABEL_344;
                          }

                          *v147 = v169;
                          v147[1] = v167;
                          BrotliStoreUncompressedMetaBlock(v101 + v142 == v10, a5, v170, 0x7FFFFFFFFFFFFFFFLL, v101, &v200, v147);
                        }
                      }

                      else
                      {
                        v148 = BrotliAllocate(&v233);
                        if (DWORD2(v234))
                        {
                          goto LABEL_343;
                        }

                        v147 = v148;
                        *v148 = v169;
                        v148[1] = v167;
                        v149 = v200;
                        *&v148[v200 >> 3] = (3 << (v200 & 7)) | v148[v200 >> 3];
                        v200 = (v149 + 9) & 0xFFFFFFF8;
                      }

                      v150 = v200;
                      v151 = v200 >> 3;
                      v169 = v147[v200 >> 3];
                      v7 = a7;
                      if (v96 < v10)
                      {
                        v164 = *(a5 + v96 - 2);
                        v165 = *(a5 + v96 - 1);
                      }

                      v265 = v266;
                      v171 += v151;
                      if (v171 <= v174)
                      {
                        memcpy(__dst, v147, v200 >> 3);
                        __dst += v151;
                      }

                      BrotliFree(&v233, v147);
                      BrotliFree(&v233, __src);
                      v87 = v163;
                      if (v96 >= v10)
                      {
                        break;
                      }

                      LOBYTE(v16) = 0;
                      v172 = v150 & 7;
                    }

                    while (v171 <= v174);
                    v8 = a6;
                    *a6 = v171;
                    if (*&v203[0])
                    {
                      BrotliFree(&v233, *&v203[0]);
                    }

                    v23 = v174;
                    v26 = v176;
                    if (v171 > v174)
                    {
                      goto LABEL_345;
                    }

                    goto LABEL_30;
                  }

                  if (v17 >= 0x20)
                  {
                    v90 = 0;
                    v91 = 0;
                    do
                    {
                      v91 = *(a5 + v90) + v91 * HIDWORD(v206[0]) + 1;
                      v92 = v90 >= 0x1C;
                      v90 += 4;
                    }

                    while (!v92);
LABEL_228:
                    LODWORD(__b[0]) = v91;
                  }
                }

LABEL_233:
                *v88 = 0;
                goto LABEL_234;
              }

              v168 = v28;
              v59 = v230;
              v60 = v230 + 0x20000;
              if (v17 > 0x200)
              {
                memset(v230, 204, 0x20000uLL);
                bzero(v60, 0x10000uLL);
              }

              else
              {
                v61 = a5;
                v62 = v17;
                do
                {
                  v63 = *v61;
                  v61 = (v61 + 1);
                  v64 = (506832829 * v63) >> 17;
                  v59[v64] = -858993460;
                  *&v60[2 * v64] = -13108;
                  --v62;
                }

                while (v62);
              }

              bzero(v59 + 49152, 0x10000uLL);
              bzero(v204, 0x400uLL);
              v8 = a6;
LABEL_207:
              v28 = v168;
              goto LABEL_214;
            }

            switch(v30)
            {
              case '#':
                PrepareH35(v204, 1, v17, a5);
                goto LABEL_214;
              case '(':
                v168 = v28;
                v49 = __b[0];
                v50 = __b[0] + 0x20000;
                if (v17 <= 0x200)
                {
                  v65 = a5;
                  v66 = v17;
                  do
                  {
                    v67 = *v65;
                    v65 = (v65 + 1);
                    v68 = (506832829 * v67) >> 17;
                    v49[v68] = -858993460;
                    *&v50[2 * v68] = -13108;
                    --v66;
                  }

                  while (v66);
                  goto LABEL_197;
                }

                break;
              case ')':
                v168 = v28;
                v49 = __b[0];
                v50 = __b[0] + 0x20000;
                if (v17 <= 0x200)
                {
                  v51 = a5;
                  v52 = v17;
                  do
                  {
                    v53 = *v51;
                    v51 = (v51 + 1);
                    v54 = (506832829 * v53) >> 17;
                    v49[v54] = -858993460;
                    *&v50[2 * v54] = -13108;
                    --v52;
                  }

                  while (v52);
                  goto LABEL_197;
                }

                break;
              default:
                goto LABEL_214;
            }

            memset(v49, 204, 0x20000uLL);
            bzero(v50, 0x10000uLL);
LABEL_197:
            bzero(v49 + 49152, 0x10000uLL);
            LOWORD(v204[0]) = 0;
            goto LABEL_207;
          }

          if (v30 > 4)
          {
            if (v30 == 5)
            {
              v42 = *(&v206[0] + 1);
              v72 = v204[0];
              if (v17 <= v204[0] >> 6)
              {
                v73 = __b[0];
                v74 = a5;
                v75 = v17;
                do
                {
                  v76 = *v74;
                  v74 = (v74 + 1);
                  *(v42 + ((506832829 * v76) >> v73)) = 0;
                  --v75;
                }

                while (v75);
                goto LABEL_214;
              }
            }

            else
            {
              if (v30 != 6)
              {
                if (v30 == 10)
                {
                  v55 = 0;
                  v56 = v204[1];
                  v57 = __b;
                  v58 = vld1q_dup_f32(v57);
                  do
                  {
                    *&v56[v55] = v58;
                    v55 += 16;
                  }

                  while (v55 != 0x80000);
                }

                goto LABEL_214;
              }

              v42 = *(&v206[1] + 1);
              v72 = v204[0];
              if (v17 <= v204[0] >> 6)
              {
                v82 = __b[1];
                v83 = __b[0];
                v84 = a5;
                v85 = v17;
                do
                {
                  v86 = *v84;
                  v84 = (v84 + 1);
                  *(v42 + ((0x1FE35A7BD3579BD3 * (v86 & v82)) >> v83)) = 0;
                  --v85;
                }

                while (v85);
                goto LABEL_214;
              }
            }

            v81 = 2 * v72;
            goto LABEL_213;
          }

          switch(v30)
          {
            case 2:
              v42 = v204[1];
              if (v17 <= 0x800)
              {
                v69 = a5;
                v70 = v17;
                do
                {
                  v71 = *v69;
                  v69 = (v69 + 1);
                  *(v42 + (((0xBD1E35A7BD000000 * v71) >> 46) & 0x3FFFC)) = 0;
                  --v70;
                }

                while (v70);
                goto LABEL_214;
              }

              break;
            case 3:
              v42 = v204[1];
              if (v17 <= 0x800)
              {
                v77 = a5;
                v78 = v17;
                do
                {
                  v79 = *v77;
                  v77 = (v77 + 1);
                  v80 = (0xBD1E35A7BD000000 * v79) >> 48;
                  v42[v80] = 0;
                  v42[(v80 + 8)] = 0;
                  --v78;
                }

                while (v78);
                goto LABEL_214;
              }

              break;
            case 4:
              v42 = v204[1];
              if (v17 <= 0x1000)
              {
                v46 = 0;
                do
                {
                  v47 = (0xBD1E35A7BD000000 * *(a5 + v46)) >> 47;
                  v48 = 4;
                  do
                  {
                    v42[v47 & 0x1FFFF] = 0;
                    LODWORD(v47) = v47 + 8;
                    --v48;
                  }

                  while (v48);
                  ++v46;
                }

                while (v46 != v17);
                goto LABEL_214;
              }

              v81 = 0x80000;
LABEL_213:
              bzero(v42, v81);
              goto LABEL_214;
            default:
              goto LABEL_214;
          }

          v81 = 0x40000;
          goto LABEL_213;
        }

        v31 = *&v232[4];
        if (*&v232[4] < 10)
        {
          if (*&v232[4] == 4)
          {
            if (*&v232[24] >= 0x100000uLL)
            {
              v31 = 54;
            }
          }

          else if (*&v232[4] > 4)
          {
            if (*&v232[8] > 16)
            {
              if (*&v232[8] < 0x13u || *&v232[24] < 0x100000uLL)
              {
                if (*&v232[4] >= 9u)
                {
                  v38 = 16;
                }

                else
                {
                  v38 = 10;
                }

                if (*&v232[4] < 7u)
                {
                  v39 = 14;
                }

                else
                {
                  v39 = 15;
                }

                *&v232[40] = 5;
                *&v232[44] = v39;
                if (*&v232[4] >= 7u)
                {
                  v40 = v38;
                }

                else
                {
                  v40 = 4;
                }

                *&v232[48] = *&v232[4] - 1;
                *&v232[56] = v40;
                v31 = 5;
              }

              else
              {
                *&v232[40] = 0xF00000006;
                *&v232[48] = *&v232[4] - 1;
                *&v232[52] = 5;
                if (*&v232[4] >= 9u)
                {
                  v36 = 16;
                }

                else
                {
                  v36 = 10;
                }

                if (*&v232[4] >= 7u)
                {
                  v37 = v36;
                }

                else
                {
                  v37 = 4;
                }

                *&v232[56] = v37;
                v31 = 6;
              }

LABEL_49:
              if (*&v232[8] < 25)
              {
                v32 = 0;
                if (v31 <= 34)
                {
                  if (v31 > 4)
                  {
                    if (v31 == 5 || v31 == 6)
                    {
                      goto LABEL_81;
                    }
                  }

                  else if ((v31 - 2) >= 2 && v31 != 4)
                  {
LABEL_88:
                    *&v203[0] = v32;
                    if (DWORD2(v234))
                    {
                      goto LABEL_215;
                    }

                    *(&v203[1] + 8) = *&v232[40];
                    DWORD2(v203[2]) = *&v232[56];
                    v30 = *&v232[40];
                    if (*&v232[40] > 34)
                    {
                      if (*&v232[40] <= 41)
                      {
                        if (*&v232[40] != 35)
                        {
                          if (*&v232[40] == 40 || *&v232[40] == 41)
                          {
                            __b[1] = v203;
                            if (*&v232[4] >= 7)
                            {
                              v35 = 7;
                            }

                            else
                            {
                              v35 = 8;
                            }

                            __b[0] = v32;
                            v204[1] = (v35 << (v232[4] - 4));
                          }

                          goto LABEL_140;
                        }
                      }

                      else
                      {
                        if (*&v232[40] <= 54)
                        {
                          if (*&v232[40] == 42)
                          {
                            v231 = v203;
                            v230 = v32;
                            if (*&v232[4] >= 7)
                            {
                              v41 = 7;
                            }

                            else
                            {
                              v41 = 8;
                            }

                            v229 = (v41 << (v232[4] - 4));
                            goto LABEL_140;
                          }

                          if (*&v232[40] != 54)
                          {
LABEL_140:
                            HIDWORD(v203[2]) = 0;
                            goto LABEL_141;
                          }

LABEL_99:
                          v204[0] = v203;
                          v204[1] = v32;
                          goto LABEL_140;
                        }

                        if (*&v232[40] != 55)
                        {
                          if (*&v232[40] == 65)
                          {
                            *(&v210 + 1) = v203;
                            *&v210 = v32;
                            v207 = v203[0];
                            v208 = v203[1];
                            v209 = v203[2];
                            LODWORD(v211) = 1;
                            *(&v211 + 1) = v232;
                          }

                          goto LABEL_140;
                        }
                      }

                      *&v207 = v203;
                      *(&v206[4] + 1) = v32;
                      *(&v206[1] + 8) = v203[0];
                      *(&v206[2] + 8) = v203[1];
                      *(&v206[3] + 8) = v203[2];
                      DWORD2(v207) = 1;
                      *&v208 = v232;
                      goto LABEL_140;
                    }

                    if (*&v232[40] > 4)
                    {
                      switch(*&v232[40])
                      {
                        case 5:
                          v204[0] = (1 << SBYTE12(v203[1]));
                          v204[1] = (1 << SLOBYTE(v203[2]));
                          LODWORD(__b[0]) = 32 - HIDWORD(v203[1]);
                          HIDWORD(__b[0]) = (1 << SLOBYTE(v203[2])) - 1;
                          *&v206[0] = v203;
                          *(&v206[0] + 1) = v32;
                          *&v206[1] = v32 + 2 * (1 << SBYTE12(v203[1]));
                          __b[1] = __PAIR64__(DWORD2(v203[2]), v203[2]);
                          break;
                        case 6:
                          LODWORD(__b[0]) = 64 - HIDWORD(v203[1]);
                          __b[1] = (0xFFFFFFFFFFFFFFFFLL >> (-8 * BYTE4(v203[2])));
                          v204[0] = (1 << SBYTE12(v203[1]));
                          v204[1] = (1 << SLOBYTE(v203[2]));
                          *(v206 + 4) = __PAIR64__(DWORD2(v203[2]), v203[2]);
                          LODWORD(v206[0]) = (1 << SLOBYTE(v203[2])) - 1;
                          *&v206[1] = v203;
                          *(&v206[1] + 1) = v32;
                          *&v206[2] = v32 + 2 * (1 << SBYTE12(v203[1]));
                          break;
                        case 0xA:
                          __b[1] = (v32 + 0x80000);
                          v204[1] = v32;
                          v204[0] = ~(-1 << v232[8]);
                          LODWORD(__b[0]) = (-1 << v232[8]) + 1;
                          break;
                      }

                      goto LABEL_140;
                    }

                    if (*&v232[40] != 2 && *&v232[40] != 3 && *&v232[40] != 4)
                    {
                      goto LABEL_140;
                    }

                    goto LABEL_99;
                  }
                }
              }

              else
              {
                v32 = 0;
                if (v31 > 9)
                {
                  if (v31 > 42)
                  {
                    *&v232[40] = 55;
                  }

                  goto LABEL_87;
                }

                if (v31 <= 3)
                {
                  if (v31 != 2)
                  {
                    if (v31 != 3)
                    {
                      goto LABEL_88;
                    }

                    *&v232[40] = 35;
                  }

                  goto LABEL_87;
                }

                if (v31 != 4)
                {
                  if (v31 != 5)
                  {
                    *&v232[40] = 65;
                    v34 = (2 << v232[44]) + 0x4000000 + (4 << v232[44] << v232[48]);
                    goto LABEL_82;
                  }

LABEL_81:
                  v34 = (4 << v232[44] << v232[48]) + (2 << v232[44]);
LABEL_82:
                  if (!v34)
                  {
                    v32 = 0;
                    goto LABEL_88;
                  }
                }
              }

LABEL_87:
              v32 = BrotliAllocate(&v233);
              goto LABEL_88;
            }

            if (*&v232[4] < 9u)
            {
              v33 = 41;
            }

            else
            {
              v33 = 42;
            }

            if (*&v232[4] >= 7u)
            {
              v31 = v33;
            }

            else
            {
              v31 = 40;
            }
          }
        }

        else
        {
          v31 = 10;
        }

        *&v232[40] = v31;
        goto LABEL_49;
      }

      LOBYTE(v16) = 0;
      v28 = 1;
      v29 = 7;
    }

    v172 = v29;
    goto LABEL_40;
  }

  return 0;
}