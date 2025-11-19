uint64_t lzvnStreamEncodeInit(uint64_t a1, int a2, int a3)
{
  if (!a3)
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  v5 = lzvn_encode_scratch_size(a2);
  v6 = realloc_stream_state(*(a1 + 32), 0, a2, v5 + 524544, v5 + 524344);
  *(a1 + 32) = v6;
  if (!v6)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = v6;
  result = 0;
  v7[4] = v7 + 32;
  v9 = v7 + v5 + 256;
  v7[2] = v9;
  v7[3] = v9 + 0x40000;
  v7[8] = v9;
  v7[14] = v9 + 0x40000;
  v7[15] = v9 + 0x40000;
  v7[16] = v9 + 0x80000;
  v9[0x40000] = 14;
  *(v7[14] + 1) = 22;
  *(v7[14] + 2) = 22;
  *(v7[14] + 3) = 14;
  v7[14] += 4;
  return result;
}

uint64_t lzvnStreamEncode(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    *(v3 + 44) = 1;
  }

  while (1)
  {
    if (*(v3 + 48))
    {
      v4 = 0;
    }

    else
    {
      v5 = *(v3 + 80);
      v6 = *(a1 + 24);
      if (v6 >= 0x40000 - v5)
      {
        v4 = 0x40000 - v5;
      }

      else
      {
        v4 = *(a1 + 24);
      }

      if (v4 >= 1)
      {
        memcpy((*(v3 + 16) + v5), *(a1 + 16), v4);
        *(v3 + 80) += v4;
        v6 = *(a1 + 24) - v4;
        *(a1 + 16) += v4;
        *(a1 + 24) = v6;
      }

      if (!v6 && *(v3 + 44))
      {
        *(v3 + 48) = 1;
      }
    }

    v7 = *(v3 + 120);
    v8 = *(v3 + 24);
    if (v7 >= v8 + 0x20000)
    {
      v9 = *(v3 + 112);
      v10 = v9 - v7;
      if (v9 != v7)
      {
        memmove(v8, v7, v9 - v7);
        v8 = *(v3 + 24);
      }

      *(v3 + 112) = &v8[v10];
      *(v3 + 120) = v8;
    }

    if (*(v3 + 40))
    {
      if (*(v3 + 52))
      {
        goto LABEL_34;
      }

      v11 = 0;
      v12 = *(v3 + 72);
      if (v12 <= -65536)
      {
        LODWORD(v12) = -65536;
      }

      v13 = vdupq_n_s32(v12);
      v14 = *(v3 + 136);
      v15 = 1;
      do
      {
        *(*(v3 + 192) + v11) = vmaxq_s32(*(*(v3 + 192) + v11), v13);
        v16 = v15++ >> v14;
        v11 += 32;
      }

      while (!v16);
      goto LABEL_27;
    }

    if (*(v3 + 80) <= 3)
    {
      break;
    }

    if (*(v3 + 52))
    {
      goto LABEL_34;
    }

    lzvnEncodeInitState(v3 + 64, *(v3 + 4), *(v3 + 32));
    *(v3 + 40) = 1;
LABEL_27:
    v17 = *(v3 + 80);
    *(v3 + 96) = v17 - 400;
    if (*(v3 + 48))
    {
      *(v3 + 96) = v17 - 8;
    }

    lzvnEncode(v3 + 64, v13);
    if (*(v3 + 48) && *(v3 + 88) >= *(v3 + 80) - 8)
    {
      *(v3 + 52) = 1;
    }

    else if (!*(v3 + 52))
    {
      goto LABEL_35;
    }

LABEL_34:
    if (*(v3 + 56))
    {
      goto LABEL_35;
    }

    v30 = *(v3 + 160);
    v31 = *(v3 + 104);
    if (!v30)
    {
      goto LABEL_99;
    }

    v32 = *(v3 + 168);
    v33 = *(v3 + 144) - v31;
    v62 = *(v3 + 184);
    v63 = *(v3 + 152);
    v34 = (*(v3 + 64) + v31);
    v35 = *(v3 + 112);
    v36 = *(v3 + 128);
    if (v33 >= 0x10)
    {
      do
      {
        v37 = v33 >= 0x10F ? 271 : v33;
        if (&v35[v37 + 10] >= v36)
        {
          goto LABEL_94;
        }

        *v35 = (v37 << 8) - 3872;
        v38 = v35 + 2;
        v33 -= v37;
        memcpy(v38, v34, ((v37 - 1) & 0xFFFFFFFFFFFFFFF8) + 8);
        v35 = &v38[v37];
        v34 = (v34 + v37);
      }

      while (v33 > 0xF);
    }

    if (v33 >= 4)
    {
      if (&v35[v33 + 10] >= v36)
      {
        goto LABEL_94;
      }

      *v35 = v33 | 0xE0;
      v39 = v35 + 1;
      memcpy(v39, v34, ((v33 - 1) & 0xFFFFFFFFFFFFFFF8) + 8);
      v35 = &v39[v33];
      v34 = (v34 + v33);
      v33 = 0;
    }

    if (10 - 2 * v33 >= v30)
    {
      v40 = v30;
    }

    else
    {
      v40 = 10 - 2 * v33;
    }

    if ((v35 + 8) < v36)
    {
      v41 = v30 - v40;
      v42 = v40 - 3;
      v43 = *v34;
      if (v32 == v62)
      {
        v44 = (v33 << 6) + 8 * v42;
        if (v33)
        {
          v45 = 6;
        }

        else
        {
          v45 = -16;
        }

        if (!v33)
        {
          v44 = v40;
        }

        *v35 = v45 | v44;
        v46 = v35 + 1;
LABEL_84:
        *v46 = v43;
        v47 = (v46 + v33);
        if (v41 < 0x10)
        {
          v48 = v46 + v33;
          if (v41)
          {
LABEL_90:
            if ((v48 + 1) < v36)
            {
              *v48 = v41 | 0xF0;
              v36 = (v48 + 1);
            }
          }

          else
          {
LABEL_93:
            v36 = v48;
          }
        }

        else
        {
          while (1)
          {
            v48 = v47 + 1;
            if ((v47 + 1) >= v36)
            {
              break;
            }

            v49 = 271;
            if (v41 < 0x10F)
            {
              v49 = v41;
            }

            *v47 = (v49 << 8) - 3856;
            v41 -= v49;
            ++v47;
            if (v41 <= 0xF)
            {
              if (!v41)
              {
                goto LABEL_93;
              }

              goto LABEL_90;
            }
          }
        }

        goto LABEL_94;
      }

      if (v32 <= 0x5FF)
      {
        *v35 = ((v33 << 6) | BYTE1(v32)) + 8 * v42;
        v35[1] = v32;
        v46 = v35 + 2;
        goto LABEL_84;
      }

      if (v30 > 0x22 || v32 >> 14 || !v41)
      {
        *v35 = ((v33 << 6) + 8 * v42) | 7;
        *(v35 + 1) = v32;
        v46 = v35 + 3;
        goto LABEL_84;
      }

      *v35 = ((v30 - 3) >> 2) + 8 * v33 - 96;
      *(v35 + 1) = (v30 - 3) & 3 | (4 * v32);
      *(v35 + 3) = v43;
      v36 = &v35[v33 + 3];
    }

LABEL_94:
    if (v36 < *(v3 + 128))
    {
      v50 = *(v3 + 112);
      *(v3 + 184) = v32;
      *(v3 + 104) = v63;
      *(v3 + 112) = v36;
      if (v36 != v50)
      {
        *(v3 + 176) = 0;
        *(v3 + 144) = 0u;
        *(v3 + 160) = 0u;
      }
    }

    if (*(v3 + 160))
    {
      goto LABEL_35;
    }

    v31 = *(v3 + 104);
LABEL_99:
    v51 = *(v3 + 80);
    v52 = v51 - v31;
    if (v51 > v31)
    {
      v53 = (*(v3 + 64) + v31);
      v54 = *(v3 + 112);
      v55 = *(v3 + 128);
      v56 = v51 - v31;
      if (v52 < 0x10)
      {
LABEL_106:
        if (v56)
        {
          if (&v54[v56 + 10] < v55)
          {
            *v54 = v56 | 0xE0;
            v59 = v54 + 1;
            memcpy(v59, v53, v56);
            v55 = v59 + v56;
          }
        }

        else
        {
          v55 = v54;
        }
      }

      else
      {
        while (1)
        {
          v57 = v56 >= 0x10F ? 271 : v56;
          if (&v54[v57 + 10] >= v55)
          {
            break;
          }

          *v54 = (v57 << 8) - 3872;
          v58 = v54 + 2;
          v56 -= v57;
          memcpy(v58, v53, v57);
          v54 = &v58[v57];
          v53 += v57;
          if (v56 <= 0xF)
          {
            goto LABEL_106;
          }
        }
      }

      if (v55 < *(v3 + 128))
      {
        *(v3 + 104) += v52;
        *(v3 + 112) = v55;
      }
    }

    if (!*(v3 + 160) && *(v3 + 80) == *(v3 + 104))
    {
      v60 = *(v3 + 112);
      if (*(v3 + 128) >= (v60 + 1))
      {
        *v60 = 6;
        *(v3 + 112) = v60 + 1;
        *(v3 + 56) = 1;
      }
    }

LABEL_35:
    if (*(v3 + 60))
    {
      if (*(v3 + 56))
      {
        return 1;
      }

      v18 = 0;
    }

    else
    {
      v19 = *(v3 + 120);
      if (*(a1 + 8) >= *(v3 + 112) - v19)
      {
        v18 = *(v3 + 112) - v19;
      }

      else
      {
        v18 = *(a1 + 8);
      }

      if (v18 >= 1)
      {
        memcpy(*a1, v19, v18);
        v19 = (*(v3 + 120) + v18);
        *(v3 + 120) = v19;
        v20 = *(a1 + 8) - v18;
        *a1 += v18;
        *(a1 + 8) = v20;
      }

      if (*(v3 + 56))
      {
        if (v19 == *(v3 + 112))
        {
          *(v3 + 60) = 1;
          return *(v3 + 56) && *(v3 + 60);
        }

        if (*(v3 + 60))
        {
          return *(v3 + 56) && *(v3 + 60);
        }
      }
    }

    v21 = *(v3 + 80);
    if (v21 >= 0x20000)
    {
      v22 = *(v3 + 88);
      v23 = v22 - 0x10000;
      if (v22 < 0x20000)
      {
        v23 = 0;
      }

      if (v23 >= 1)
      {
        v24 = 0;
        v25 = v21 - v23;
        *(v3 + 80) = v21 - v23;
        *(v3 + 88) = v22 - v23;
        *(v3 + 104) -= v23;
        *(v3 + 144) = vsubq_s64(*(v3 + 144), vdupq_n_s64(v23));
        v26 = vdupq_n_s32(-v23);
        v27 = *(v3 + 136);
        v28 = 1;
        do
        {
          *(*(v3 + 192) + v24) = vaddq_s32(*(*(v3 + 192) + v24), v26);
          v29 = v28++ >> v27;
          v24 += 32;
        }

        while (!v29);
        memmove(*(v3 + 16), (*(v3 + 16) + v23), v25);
        *(v3 + 64) = *(v3 + 16);
        *(v3 + 72) = 0;
      }
    }

    if (!(v18 | v4))
    {
      return *(v3 + 56) && *(v3 + 60);
    }
  }

  if (*(v3 + 48))
  {
    return 0xFFFFFFFFLL;
  }

  return *(v3 + 56) && *(v3 + 60);
}

uint64_t lz24_decode_buffer(char *__dst, unint64_t a2, unsigned int *a3, uint64_t a4)
{
  result = 0;
  if (a4 >= 4 && ((a4 | a2) & 0x8000000000000000) == 0)
  {
    v6 = (a3 + 1);
    v7 = *a3;
    if (v7 > a2)
    {
      return 0;
    }

    if (v7)
    {
      v8 = a3 + a4;
      v9 = &__dst[a2];
      v10 = a3 + a4 - 34;
      v11 = &__dst[a2 - 62];
      v12 = __dst;
      while (1)
      {
        if (v7 >= 0x1000)
        {
          v13 = 4096;
        }

        else
        {
          v13 = v7;
        }

        if (v8 - v6 < 2 || v9 - v12 < v13)
        {
          return 0;
        }

        if (*v6)
        {
          break;
        }

        v23 = v6 + 2;
        if (v8 - (v6 + 2) < v13)
        {
          return 0;
        }

        memcpy(v12, v6 + 2, v13);
        v6 = &v23[v13];
LABEL_29:
        v12 += v13;
        LODWORD(v7) = v7 - v13;
        if (!v7)
        {
          return v12 - __dst;
        }
      }

      v14 = &v12[v13];
      if ((v9 - v12) >= 0x3F && (v8 - v6) >= 0x23)
      {
        if (v11 <= v14)
        {
          v15 = v11;
        }

        else
        {
          v15 = &v12[v13];
        }

        i = v12;
        while (1)
        {
          v17 = *v6;
          v18 = (v17 >> 10) & 0x3FFF;
          v19 = *(v6 + 19);
          *i = *(v6 + 3);
          *(i + 1) = v19;
          v20 = &i[v17 & 0x1F];
          if (v20 - __dst < v18)
          {
            return 0;
          }

          v6 += (v17 & 0x1F) + 3;
          v21 = *&v20[-v18 + 16];
          *v20 = *&v20[-v18];
          *(v20 + 1) = v21;
          i = &v20[(v17 >> 5) & 0x1F];
          if (v6 >= v10 || i >= v15)
          {
            if (i <= v14)
            {
              goto LABEL_32;
            }

            return 0;
          }
        }
      }

      for (i = v12; ; i = &v31[v26])
      {
LABEL_32:
        if (i >= v14)
        {
          goto LABEL_29;
        }

        if (v8 - v6 < 3)
        {
          return 0;
        }

        v24 = *v6;
        v25 = v24 & 0x1F;
        v26 = (v24 >> 5) & 0x1F;
        if (v14 - i < (v26 + (v24 & 0x1F)))
        {
          return 0;
        }

        v27 = v6 + 3;
        if (v8 - (v6 + 3) < v25)
        {
          return 0;
        }

        v28 = *(v6 + 1);
        v29 = (v6 + 3);
        v30 = i;
        if ((v24 & 0x10) != 0)
        {
          *i = *(v6 + 3);
          v30 = i + 16;
          v29 = (v6 + 19);
          if ((v24 & 8) == 0)
          {
LABEL_38:
            if ((v24 & 4) == 0)
            {
              goto LABEL_39;
            }

            goto LABEL_48;
          }
        }

        else if ((v24 & 8) == 0)
        {
          goto LABEL_38;
        }

        v34 = *v29++;
        *v30++ = v34;
        if ((v24 & 4) == 0)
        {
LABEL_39:
          if ((v24 & 2) == 0)
          {
            goto LABEL_40;
          }

          goto LABEL_49;
        }

LABEL_48:
        v35 = *v29;
        v29 = (v29 + 4);
        *v30 = v35;
        v30 = (v30 + 4);
        if ((v24 & 2) == 0)
        {
LABEL_40:
          if ((v24 & 1) == 0)
          {
            goto LABEL_42;
          }

LABEL_41:
          *v30 = *v29;
          goto LABEL_42;
        }

LABEL_49:
        v36 = *v29;
        v29 = (v29 + 2);
        *v30 = v36;
        v30 = (v30 + 2);
        if (v24)
        {
          goto LABEL_41;
        }

LABEL_42:
        v31 = &i[v25];
        if (v31 - __dst < (v28 >> 2))
        {
          return 0;
        }

        v32 = &v31[-(v28 >> 2)];
        if ((v24 & 0x200) != 0)
        {
          v37 = *v32++;
          *v31 = v37;
          v33 = v31 + 16;
          if ((v24 & 0x100) == 0)
          {
            goto LABEL_53;
          }

LABEL_52:
          v38 = *v32;
          v32 = (v32 + 8);
          *v33++ = v38;
          goto LABEL_53;
        }

        v33 = v31;
        if ((v24 & 0x100) != 0)
        {
          goto LABEL_52;
        }

LABEL_53:
        if ((v24 & 0x80) != 0)
        {
          v39 = *v32;
          v32 = (v32 + 4);
          *v33 = v39;
          v33 = (v33 + 4);
          if ((v24 & 0x40) == 0)
          {
LABEL_55:
            if ((v24 & 0x20) == 0)
            {
              goto LABEL_57;
            }

LABEL_56:
            *v33 = *v32;
            goto LABEL_57;
          }
        }

        else if ((v24 & 0x40) == 0)
        {
          goto LABEL_55;
        }

        v40 = *v32;
        v32 = (v32 + 2);
        *v33 = v40;
        v33 = (v33 + 2);
        if ((v24 & 0x20) != 0)
        {
          goto LABEL_56;
        }

LABEL_57:
        v6 = &v27[v25];
      }
    }

    v12 = __dst;
    return v12 - __dst;
  }

  return result;
}

uint64_t create_thread(pthread_t *a1, void *(__cdecl *a2)(void *), void *a3, size_t a4)
{
  v8 = calloc(1uLL, 0x40uLL);
  if (!v8)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = v8;
  v10 = pthread_attr_init(v8);
  if (!v10)
  {
    if (!a4 || (v10 = pthread_attr_setstacksize(v9, a4), !v10))
    {
      v10 = pthread_create(a1, v9, a2, a3);
    }
  }

  v11 = v10;
  pthread_attr_destroy(v9);
  free(v9);
  return v11;
}

uint64_t BrotliSafeReadBits32Slow(unint64_t *a1, int a2, unsigned int *a3)
{
  v3 = *(a1 + 2);
  v4 = a1[2];
  v5 = a1[3];
  v6 = v4;
  v7 = *a1;
  v8 = v5;
  v9 = *a1;
  v10 = v3;
  if ((v3 - 49) <= 0xF)
  {
    v11 = 0;
    v12 = -1;
    v9 = *a1;
    v13 = *(a1 + 2);
    while (v5 != v11)
    {
      *a1 = v9 >> 8;
      *(&v14 + 1) = *(v4 + v11);
      *&v14 = v9;
      v9 = v14 >> 8;
      *a1 = v9;
      v10 = v13 - 8;
      *(a1 + 2) = v13 - 8;
      a1[2] = v4 + v11 + 1;
      a1[3] = v5 + v12;
      ++v11;
      --v12;
      v15 = v13 - 57;
      v13 -= 8;
      if (v15 >= 0x10)
      {
        v6 = v4 + v11;
        v8 = v5 - v11;
        goto LABEL_6;
      }
    }

    goto LABEL_11;
  }

LABEL_6:
  v16 = v10 + 16;
  *(a1 + 2) = v10 + 16;
  v17 = a2 - 16;
  v18 = 48 - v10;
  if (48 - v10 < (a2 - 16))
  {
    v19 = v6 + 1;
    v20 = v8 - 1;
    v21 = v9;
    while (v20 != -1)
    {
      *a1 = v21 >> 8;
      *(&v22 + 1) = *(v19 - 1);
      *&v22 = v21;
      v21 = v22 >> 8;
      *a1 = v21;
      v16 -= 8;
      *(a1 + 2) = v16;
      a1[2] = v19;
      a1[3] = v20;
      ++v19;
      --v20;
      v18 += 8;
      if (v18 >= v17)
      {
        goto LABEL_13;
      }
    }

LABEL_11:
    v23 = 0;
    *a1 = v7;
    *(a1 + 2) = v3;
    a1[2] = v4;
    a1[3] = v5;
    return v23;
  }

  v21 = v9;
LABEL_13:
  *(a1 + 2) = v16 + v17;
  *a3 = (v9 >> v10) | (((v21 >> v16) & ~(-1 << v17)) << 16);
  return 1;
}

uint64_t BrotliDecoderDecompress()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v2 = v1;
  v13 = *MEMORY[0x29EDCA608];
  memset(v12, 0, 512);
  v10 = v0;
  v11 = 0;
  v8 = *v1;
  v9 = v3;
  v7 = v4;
  result = BrotliDecoderStateInit(v12, 0, 0, 0);
  if (result)
  {
    v6 = BrotliDecoderDecompressStream(v12, &v10, &v9, &v8, &v7, &v11);
    *v2 = v11;
    BrotliDecoderStateCleanup(v12);
    return v6 == 1;
  }

  return result;
}

uint64_t CopyUncompressedBlockToOutput(size_t *a1, void **a2, size_t *a3, uint64_t a4)
{
  if (!BrotliEnsureRingBuffer(a4))
  {
    return 4294967270;
  }

  for (i = *(a4 + 652); ; i = 0)
  {
    do
    {
      if (i == 1)
      {
        goto LABEL_24;
      }
    }

    while (i);
    v9 = *(a4 + 32);
    v10 = *(a4 + 16);
    if (v9 <= 0x40000000)
    {
      LODWORD(v9) = v9 + ((64 - v10) >> 3);
    }

    else
    {
      LODWORD(v9) = 0x40000000;
    }

    if (*(a4 + 264) < v9)
    {
      LODWORD(v9) = *(a4 + 264);
    }

    v11 = *(a4 + 76);
    v12 = *(a4 + 88);
    if (v11 + v9 > v12)
    {
      LODWORD(v9) = v12 - v11;
    }

    v13 = (*(a4 + 120) + v11);
    v14 = v9;
    if ((v10 - 65) <= 0xFFFFFFF7 && v9)
    {
      v9 = v9;
      do
      {
        *v13++ = *(a4 + 8) >> v10;
        v15 = *(a4 + 16);
        LOBYTE(v10) = v15 + 8;
        *(a4 + 16) = v15 + 8;
        v16 = v9 - 1;
      }

      while ((v15 - 57) <= 0xFFFFFFF7 && v9-- != 1);
    }

    else
    {
      v16 = v9;
    }

    memcpy(v13, *(a4 + 24), v16);
    v18 = *(a4 + 32) - v16;
    *(a4 + 24) += v16;
    *(a4 + 32) = v18;
    v19 = *(a4 + 76) + v14;
    *(a4 + 76) = v19;
    v20 = *(a4 + 264);
    *(a4 + 264) = v20 - v14;
    if (v19 < 1 << *(a4 + 668))
    {
      break;
    }

    *(a4 + 652) = 1;
LABEL_24:
    result = WriteRingBuffer(a4, a1, a2, a3, 0);
    if (result != 1)
    {
      return result;
    }

    if (*(a4 + 88) == 1 << *(a4 + 668))
    {
      *(a4 + 84) = *(a4 + 80);
    }

    *(a4 + 652) = 0;
  }

  if (v20 == v14)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

void *BrotliDecoderTakeOutput(uint64_t a1, size_t *a2)
{
  if (*a2)
  {
    v3 = *a2;
  }

  else
  {
    v3 = 0x1000000;
  }

  v7 = v3;
  v8 = 0;
  if (*(a1 + 120) && (*(a1 + 116) & 0x80000000) == 0)
  {
    WrapRingBuffer(a1);
    v5 = WriteRingBuffer(a1, &v7, &v8, 0, 1);
    if ((v5 & 0xFFFFFFFD) == 1)
    {
      result = v8;
      *a2 = v3 - v7;
      return result;
    }

    if ((v5 & 0x80000000) != 0)
    {
      SaveErrorCode(a1, v5);
    }
  }

  result = 0;
  *a2 = 0;
  return result;
}

BOOL BrotliDecoderIsFinished(uint64_t a1)
{
  if (*a1 != 26)
  {
    return 0;
  }

  if ((*(a1 + 116) & 0x80000000) != 0 || !*(a1 + 120))
  {
    return 1;
  }

  return *(a1 + 76) - *(a1 + 376) + *(a1 + 368) * *(a1 + 88) == 0;
}

const char *BrotliDecoderErrorString(int a1)
{
  if ((a1 + 31) > 0x22)
  {
    return "INVALID";
  }

  else
  {
    return off_29EEA6798[a1 + 31];
  }
}

uint64_t SafeDecodeLiteralBlockSwitch(uint64_t a1)
{
  v1 = *(a1 + 284);
  if (v1 < 2)
  {
    return 0;
  }

  v3 = *(a1 + 240);
  v4 = *(a1 + 248);
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
    v17 = &v3[4 * (v9 >> v10)];
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

    if (!SafeDecodeSymbol(v3, a1 + 8, &v46))
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
    v20 = *(a1 + 16);
    if ((v20 - 50) >= 0xF)
    {
      v24 = *(a1 + 8);
LABEL_19:
      v27 = v24 >> v20;
      v28 = &v4[4 * (v24 >> v20)];
      v29 = *v28;
      if (v29 >= 9)
      {
        v20 += 8;
        v28 += 4 * (BYTE1(v27) & ~(-1 << (v29 - 8)) & 0x7F) + 4 * *(v28 + 1);
        v29 = *v28;
      }

      *(a1 + 16) = v20 + v29;
      v19 = *(v28 + 1);
    }

    else
    {
      v21 = *(a1 + 32) - 1;
      while (v21 != -1)
      {
        v22 = *(a1 + 8);
        *(a1 + 8) = v22 >> 8;
        v23 = *(a1 + 24);
        *(&v25 + 1) = *v23;
        *&v25 = v22;
        v24 = v25 >> 8;
        *(a1 + 8) = v24;
        v26 = v20 - 8;
        *(a1 + 16) = v20 - 8;
        *(a1 + 24) = v23 + 1;
        *(a1 + 32) = v21--;
        LODWORD(v23) = v20 - 58;
        v20 -= 8;
        if (v23 >= 0xF)
        {
          v20 = v26;
          goto LABEL_19;
        }
      }

      if (!SafeDecodeSymbol(v4, a1 + 8, &v47))
      {
        goto LABEL_32;
      }

      v19 = v47;
    }
  }

  v30 = (&_kBrotliPrefixCodeRanges + 4 * v19);
  v31 = *(v30 + 2);
  v32 = *v30;
  v33 = *(a1 + 16);
  v34 = 64 - v33;
  if (64 - v33 < v31)
  {
    v35 = *(a1 + 32) - 1;
    while (v35 != -1)
    {
      v36 = *(a1 + 8);
      *(a1 + 8) = v36 >> 8;
      v37 = *(a1 + 24);
      *(&v39 + 1) = *v37;
      *&v39 = v36;
      v38 = v39 >> 8;
      *(a1 + 8) = v38;
      v33 -= 8;
      *(a1 + 16) = v33;
      *(a1 + 24) = v37 + 1;
      *(a1 + 32) = v35--;
      v34 += 8;
      if (v34 >= v31)
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

  v38 = *(a1 + 8);
LABEL_28:
  *(a1 + 16) = v33 + v31;
  *(a1 + 272) = ((v38 >> v33) & ~(-1 << v31)) + v32;
  *(a1 + 660) = 0;
  if (v46)
  {
    if (v46 == 1)
    {
      v40 = *(a1 + 300) + 1;
    }

    else
    {
      v40 = v46 - 2;
    }
  }

  else
  {
    v40 = *(a1 + 296);
  }

  if (v40 >= v1)
  {
    v42 = v1;
  }

  else
  {
    v42 = 0;
  }

  v43 = v40 - v42;
  *(a1 + 296) = *(a1 + 300);
  *(a1 + 300) = v43;
  v44 = v43 << 6;
  v45 = *(a1 + 680);
  *(a1 + 152) = v45 + v44;
  *(a1 + 256) = (*(a1 + 4 * (v43 >> 5) + 712) >> v43) & 1;
  *(a1 + 344) = *(*(a1 + 168) + 8 * *(v45 + v44));
  *(a1 + 144) = &_kBrotliContextLookupTable[512 * (*(*(a1 + 688) + v43) & 3)];
  return 1;
}

uint64_t lzbitmap_decode(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, __n128 a6, int8x16_t a7)
{
  if (a4 < 4)
  {
    return 0;
  }

  v158 = v12;
  v159 = v11;
  v160 = v10;
  v161 = v9;
  v162 = v7;
  v163 = v8;
  if (*a3 != 16986 || *(a3 + 2) != 77)
  {
    return 0;
  }

  v16 = *(a3 + 3);
  v17 = v16 > 0xF || (v16 & 8) == 0;
  if (v17 || (v16 & 3) - 2 < 2)
  {
    return 0;
  }

  v18 = a5;
  v21 = (v16 & 3) != 0 ? 0x8000 : 0x4000;
  if (!a2)
  {
    return 0;
  }

  v22 = 0;
  v23 = (a5 + 4160);
  v147 = (v16 >> 2) & 1;
  v146 = v21 >> 4;
  v24 = ((v16 & 4) == 0) - 13;
  v25 = 4;
  v26 = 0uLL;
  v27.i64[0] = 0xF0F0F0F0F0F0F0FLL;
  v27.i64[1] = 0xF0F0F0F0F0F0F0FLL;
  v28 = xmmword_29864DC70;
  v29 = xmmword_29864DC80;
  v30 = xmmword_29864DC90;
  v31.i64[0] = -1;
  v31.i64[1] = -1;
  v32 = 0uLL;
  while (1)
  {
    v33 = v25 + 6;
    if (v25 + 6 > a4)
    {
      return 0;
    }

    v34 = (a3 + v25);
    v35 = *v34 & 0xFFFFFF;
    v36 = *(v34 + 2);
    v37 = v36 >> 8;
    v38 = (v36 >> 8) + 6;
    if (v36 >> 8 > v21 || v35 > v38)
    {
      return 0;
    }

    v40 = v37 + v22;
    v41 = v37 + v22 >= a2 ? a2 : v40;
    if (v38 == v35)
    {
      break;
    }

    v25 += v35;
    if (v35 < 0x21 || v25 > a4)
    {
      return 0;
    }

    result = 0;
    v52 = *(v34 + 5);
    if (v52 < 0xF00)
    {
      return result;
    }

    v53 = v52 >> 8;
    v54 = v34[2] >> 8;
    if (*(v34 + 5) >> 8 > v34[2] >> 8)
    {
      return result;
    }

    v55 = *(v34 + 11) >> 8;
    if (v54 > *(v34 + 11) >> 8)
    {
      return result;
    }

    v56 = v35 - 17;
    v57 = (v56 - v55);
    if (v56 < v55)
    {
      return result;
    }

    v58 = 0;
    v59 = ((v41 - v22 + 63) >> 3) & 0x1FFFFFF8;
    v60 = (v34 + v53);
    do
    {
      v157 = v26;
      *(&v157 | v58 & 0xF) = 0;
      v26 = v157;
      v156 = v32;
      *(&v156 | v58 & 0xF) = v58;
      v32 = v156;
      ++v58;
    }

    while (v58 != 3);
    v61 = 0;
    v62 = (v34 + 15);
    v63 = v34 + v56;
    v64 = 3;
    do
    {
      v65 = *(v63 + (v61 >> 3)) >> (v61 & 6);
      v66 = (v65 >> 8) & 3;
      if (v66 == 3)
      {
        return 0;
      }

      v154 = v26;
      *(&v154 | v64 & 0xF) = v65;
      v26 = v154;
      v155 = v32;
      *(&v155 | v64 & 0xF) = v66;
      v32 = v155;
      ++v64;
      v61 += 10;
    }

    while (v24 + v64 != 3);
    if (!v147)
    {
      if (v57 > v146)
      {
        return 0;
      }

      v139 = v54;
      v140 = v56;
      v141 = v60;
      v142 = v40;
      v143 = v25;
      v151 = v155;
      v153 = v26;
      v144 = v24;
      v145 = v21;
      v149 = a2;
      if (v56 != v55)
      {
        v67 = 0;
        v68 = v34 + v55;
        v69 = v23;
        do
        {
          v70 = *&v68[v67];
          v164.val[0] = vandq_s8(v70, v27);
          v164.val[1] = vshrq_n_u8(v70, 4uLL);
          vst2q_s8(v69, v164);
          v69 += 32;
          v67 += 16;
        }

        while (v67 < v57);
      }

      lzbitmap_decode_rle_unsafe(v18, v59, v23);
      v59 = ((v41 - v22 + 63) >> 3) & 0x1FFFFFF8;
      LODWORD(v56) = v140;
      v27.i64[0] = 0xF0F0F0F0F0F0F0FLL;
      v27.i64[1] = 0xF0F0F0F0F0F0F0FLL;
      a2 = v149;
      v24 = v144;
      v21 = v145;
      v40 = v142;
      v25 = v143;
      v29 = xmmword_29864DC80;
      v28 = xmmword_29864DC70;
      v32 = v151;
      v26 = v153;
      v30 = xmmword_29864DC90;
      v31.i64[0] = -1;
      v31.i64[1] = -1;
      v60 = v141;
      LODWORD(v54) = v139;
LABEL_55:
      v75 = (v34 + v54);
      if (v59)
      {
        v76 = 0;
        v77 = v18;
        v78 = (v34 + v54);
        do
        {
          if (v78 > v63)
          {
            return 0;
          }

          v79 = *v77;
          v80 = vpaddl_u32(vpaddl_u16(vpaddl_u8(vand_s8(vcgt_u8(0x303030303030303, *v77), 0x8040201008040201))));
          *v77 = vqtbl1_s8(v32, *v77);
          v71.i64[0] = *v78;
          v81 = vorr_s8(vqtbl1_s8(v71, lzbitmap_unpack_perm_table[v80]), vqtbl1_s8(v26, v79));
          v77[520] = v81;
          v81.i32[0] = v80;
          v82 = vcnt_s8(v81);
          v82.i16[0] = vaddlv_u8(v82);
          v78 = (v78 + v82.u32[0]);
          v76 += 8;
          ++v77;
        }

        while (v76 < v59);
      }

      goto LABEL_61;
    }

    if (v57 < v59 >> 1)
    {
      return 0;
    }

    if (v59)
    {
      v72 = 0;
      v73 = v34 + v55;
      v74 = v18;
      do
      {
        a6 = *&v73[v72];
        a7 = vandq_s8(a6, v27);
        v71 = vshrq_n_u8(a6, 4uLL);
        vst2q_s8(v74, *a7.i8);
        v74 += 32;
        v72 += 16;
      }

      while (v72 < v59 >> 1);
      goto LABEL_55;
    }

    v75 = (v34 + v54);
LABEL_61:
    v83 = 0;
    v84 = 8;
    if (v22 + 64 > v41 || v56 < 0x3F)
    {
      v85 = v60;
      goto LABEL_95;
    }

    v83 = 0;
    v85 = v60;
    do
    {
      v86 = *(v18 + v83);
      v87 = *&v23[v83];
      if (!*&v86)
      {
        if (v87)
        {
          if (*&v87 == -1)
          {
            a7 = *v62;
            a6 = v62[1];
            v123 = v62[3];
            v124 = a1 + v22;
            *(v124 + 32) = v62[2];
            *(v124 + 48) = v123;
            *v124 = a7;
            *(v124 + 16) = a6;
            v62 += 4;
            goto LABEL_66;
          }
        }

        else if (v22 >= v84)
        {
          v125 = (a1 + v22);
          *v125 = *(v125 - v84);
          v125[1] = *(v125 - v84 + 8);
          v125[2] = *(v125 - v84 + 16);
          v125[3] = *(v125 - v84 + 24);
          v125[4] = *(v125 - v84 + 32);
          v125[5] = *(v125 - v84 + 40);
          v125[6] = *(v125 - v84 + 48);
          v125[7] = *(v125 - v84 + 56);
          goto LABEL_66;
        }
      }

      a6.n128_u64[0] = *(v18 + v83);
      *a7.i8 = vshl_u8(v86, 0x604020006040200);
      v88 = vaddvq_s32(vqtbl2q_s8(*a6.n128_u64, v28));
      a7.i32[2] = 0;
      a7.i64[0] = *v85;
      v89 = (v85 + v88);
      v90.i32[2] = 0;
      v90.i64[0] = *v89;
      v85 = (v89 + BYTE1(v88));
      a7.i32[3] = v84;
      v91 = vqtbl1q_s8(a7, lzbitmap_unpack_dist_perm_table[BYTE2(v88)]);
      v90.i32[3] = v91.i32[3];
      v92 = lzbitmap_unpack_dist_perm_table[HIBYTE(v88)];
      v93 = vdupq_n_s32(v22);
      v94 = vaddq_s32(v93, v29);
      v95 = vqsubq_u32(v94, v91);
      v96 = vcnt_s8(v87);
      *v97.i8 = lzbitmap_unpack_perm_table[*&v23[v83]];
      v94.i32[0] = *&v23[v83];
      *v94.i8 = vcnt_s8(*v94.i8);
      v94.i16[0] = vaddlv_u8(*v94.i8);
      *v94.i8 = vdup_lane_s8(*v94.i8, 0);
      v97.u64[1] = vqadd_u8(lzbitmap_unpack_perm_table[v87.u8[1]], *v94.i8);
      *v98.i8 = lzbitmap_unpack_perm_table[v87.u8[2]];
      v94.i32[0] = v87.u8[2];
      *v94.i8 = vcnt_s8(*v94.i8);
      v94.i16[0] = vaddlv_u8(*v94.i8);
      v98.u64[1] = vqadd_u8(lzbitmap_unpack_perm_table[v87.u8[3]], vdup_lane_s8(*v94.i8, 0));
      *v94.i8 = lzbitmap_unpack_perm_table[v87.u8[5]];
      v99 = v87.u8[4];
      *v100.i8 = lzbitmap_unpack_perm_table[v87.u8[4]];
      v101 = *(lzbitmap_unpack_perm_table + ((*&v87 >> 53) & 0x7F8));
      v102 = v87.u8[6];
      *v91.i8 = lzbitmap_unpack_perm_table[v87.u8[6]];
      v103 = vadd_s16(v96, vrev16_s8(v96));
      v104 = (v62 + (v103.i8[0] & 0x1F));
      v105 = *v104;
      v106 = (v104 + (v103.i8[2] & 0x1F));
      v107 = *v106;
      v108 = (v106 + (v103.i8[4] & 0x1F));
      v109 = *v108;
      v110 = vqtbl1q_s8(*v62, v97);
      v111 = vceqq_s8(v97, v31);
      v112 = (a1 + v22);
      *v112 = vorr_s8(vand_s8(*(a1 + v95.u32[0]), *v111.i8), *v110.i8);
      *v95.i8 = vorr_s8(vand_s8(*(a1 + v95.u32[1]), *&vextq_s8(v111, v111, 8uLL)), *&vextq_s8(v110, v110, 8uLL));
      v113 = vqtbl1q_s8(v105, v98);
      v112[1] = *v95.i8;
      v114 = vceqq_s8(v98, v31);
      v112[2] = vorr_s8(vand_s8(*(a1 + v95.u32[2]), *v114.i8), *v113.i8);
      v115 = vqtbl1q_s8(v90, v92);
      v116 = vqsubq_u32(vaddq_s32(v93, v30), v115);
      v95.i64[0] = vextq_s8(v113, v113, 8uLL).u64[0];
      *v92.i8 = vorr_s8(vand_s8(*(a1 + v95.u32[3]), *&vextq_s8(v114, v114, 8uLL)), *v95.i8);
      v95.i32[0] = v99;
      v112[3] = *v92.i8;
      v117 = v116.u32[3];
      v92.i64[0] = *(a1 + v116.u32[0]);
      v116.i32[0] = v102;
      *v95.i8 = vcnt_s8(*v95.i8);
      v95.i16[0] = vaddlv_u8(*v95.i8);
      v100.u64[1] = vqadd_u8(*v94.i8, vdup_lane_s8(*v95.i8, 0));
      v118 = vqtbl1q_s8(v107, v100);
      v119 = vceqq_s8(v100, v31);
      v112[4] = vorr_s8(vand_s8(*v92.i8, *v119.i8), *v118.i8);
      v84 = v115.u32[3];
      *v115.i8 = vcnt_s8(*v116.i8);
      v115.i16[0] = vaddlv_u8(*v115.i8);
      v91.u64[1] = vqadd_u8(v101, vdup_lane_s8(*v115.i8, 0));
      a6 = vextq_s8(v119, v119, 8uLL);
      v112[5] = vorr_s8(vand_s8(*(a1 + v116.u32[1]), a6.n128_u64[0]), *&vextq_s8(v118, v118, 8uLL));
      a6.n128_u64[0] = *(a1 + v116.u32[2]);
      v120 = vqtbl1q_s8(v109, v91);
      v121 = vceqq_s8(v91, v31);
      v112[6] = vorr_s8(vand_s8(a6.n128_u64[0], *v121.i8), *v120.i8);
      v62 = &v108->i8[v103.i8[6] & 0x1F];
      a7 = vextq_s8(v120, v120, 8uLL);
      v112[7] = vorr_s8(vand_s8(*(a1 + v117), *&vextq_s8(v121, v121, 8uLL)), *a7.i8);
LABEL_66:
      v83 += 8;
      v122 = v22 + 128;
      v22 = (v22 + 64);
    }

    while (v122 <= v41 && v85 <= v63 && v62[3].n128_u64 <= v63);
LABEL_95:
    while (v22 < v41)
    {
      result = 0;
      if (v85 > v63 || v62 > v63)
      {
        return result;
      }

      v126 = *(v18 + v83);
      if (v126 == 2)
      {
        v128 = *v85;
        v85 = (v85 + 2);
        v84 = v128;
      }

      else if (v126 == 1)
      {
        v127 = *v85;
        v85 = (v85 + 1);
        v84 = v127;
      }

      v129 = v22 - v84;
      if (v22 < v84 && v23[v83] != 255)
      {
        return 0;
      }

      if (v22 < v41)
      {
        v130 = (a1 + v22);
        v131 = v22 + 1;
        v132 = 1;
        do
        {
          v133 = v23[v83];
          v134 = (v132 & v133) == 0;
          if ((v132 & v133) != 0)
          {
            v135 = v62;
          }

          else
          {
            v135 = (a1 + v129);
          }

          if (!v134)
          {
            v62 = (v62 + 1);
          }

          *v130++ = v135->n128_u8[0];
          v22 = (v22 + 1);
          if (v132 > 0x7F)
          {
            break;
          }

          v132 *= 2;
          ++v129;
        }

        while (v131++ < v41);
      }

      ++v83;
    }

    if (v40 > a2)
    {
      if (v62 <= v60 && v85 <= v75)
      {
        goto LABEL_30;
      }

      return 0;
    }

    if (v62 != v60 || v85 != v75)
    {
      return 0;
    }

LABEL_30:
    result = v22;
    if (v22 >= a2)
    {
      return result;
    }
  }

  if (v36 >= 0x100)
  {
    v42 = (v41 - v22);
    if (v42 + v33 <= a4)
    {
      v43 = (a1 + v22);
      v44 = a2;
      v45 = v21;
      v46 = v24;
      v148 = v41;
      v47 = v18;
      v48 = v23;
      v49 = v25;
      v150 = v32;
      v152 = v26;
      memcpy(v43, (a3 + v33), v42);
      v32 = v150;
      v26 = v152;
      v31.i64[0] = -1;
      v31.i64[1] = -1;
      v30 = xmmword_29864DC90;
      v29 = xmmword_29864DC80;
      v28 = xmmword_29864DC70;
      v27.i64[0] = 0xF0F0F0F0F0F0F0FLL;
      v27.i64[1] = 0xF0F0F0F0F0F0F0FLL;
      v50 = v49;
      v23 = v48;
      v18 = v47;
      v24 = v46;
      v21 = v45;
      a2 = v44;
      v25 = v35 + v50;
      v22 = v148;
      goto LABEL_30;
    }

    return 0;
  }

  return v22;
}

uint64_t smb_lznt1_decode_buffer(char *__dst, unint64_t a2, char *__src, uint64_t a4)
{
  v5 = a2;
  v6 = __dst;
  v7 = 0;
  v8 = 15;
  if (a2 > 0xF)
  {
    v8 = a2;
  }

  v9 = &__dst[v8 - 15];
  if (a4)
  {
    while (a4 != 1)
    {
      v12 = *__src;
      v11 = __src + 2;
      v10 = v12;
      if (!v12)
      {
        return v7;
      }

      if ((v10 & 0x7000) != 0x3000 || (v7 & 0xFFF) != 0)
      {
        break;
      }

      v14 = a4 - 2;
      v15 = (v10 & 0xFFF) + 1;
      if (a4 - 2 < v15)
      {
        break;
      }

      if (v10 < 0)
      {
        v16 = 0;
        v17 = 0;
        do
        {
          v18 = v11[v17];
          v19 = v17 + 9;
          ++v17;
          if (v18)
          {
            v20 = 1;
          }

          else
          {
            v20 = v19 > v15;
          }

          if (v20 || v16 + 8 > v5)
          {
            if (v17 < v15)
            {
              v22 = 1;
              while (1)
              {
                if (v18)
                {
                  v24 = v17 + 2;
                  if (v17 + 2 > v15)
                  {
                    return 0;
                  }

                  v25 = *&v11[v17];
                  v26 = __clz((v16 - 1) & 0xFFF | 8) - 16;
                  v27 = v25 >> v26;
                  v28 = (v25 >> v26) + 1;
                  if (v16 < v28)
                  {
                    return 0;
                  }

                  v29 = (v25 & ~(-1 << v26)) + 3;
                  v30 = &v6[v16];
                  v31 = &v6[v16 + v29];
                  if (v27 < 0xF || v31 > v9)
                  {
                    if (v5 - v16 < v29)
                    {
                      return 0;
                    }

                    v33 = -v28;
                    do
                    {
                      *v30 = v30[v33];
                      ++v30;
                    }

                    while (v30 < v31);
                  }

                  else
                  {
                    v32 = -v28;
                    do
                    {
                      *v30 = *&v30[v32];
                      v30 += 16;
                    }

                    while (v30 < v31);
                  }

                  v16 += v29;
                  v17 = v24;
                }

                else
                {
                  if (v5 <= v16)
                  {
                    return 0;
                  }

                  v23 = v11[v17++];
                  v6[v16++] = v23;
                }

                if (v22 <= 7)
                {
                  v18 >>= 1;
                  ++v22;
                  if (v17 < v15)
                  {
                    continue;
                  }
                }

                break;
              }
            }
          }

          else
          {
            *&v6[v16] = *&v11[v17];
            v17 = v19;
            v16 += 8;
          }
        }

        while (v17 < v15);
      }

      else
      {
        if (v5 < v15)
        {
          return 0;
        }

        memcpy(v6, v11, (v10 & 0xFFF) + 1);
        v16 = v15;
        v17 = v15;
      }

      v6 += v16;
      v5 -= v16;
      __src = &v11[v17];
      a4 = v14 - v17;
      v7 += v16;
      if (v14 == v17)
      {
        return v7;
      }
    }

    return 0;
  }

  return v7;
}

uint64_t smb_lznt1_encode_buffer(_WORD *a1, unint64_t a2, _BYTE *a3, unint64_t a4, void *a5)
{
  bzero(a5, 0x8000uLL);
  v10 = 0;
  if (!a4)
  {
    goto LABEL_63;
  }

  do
  {
    if (a4 >= 0x1000)
    {
      v11 = 4096;
    }

    else
    {
      v11 = a4;
    }

    if (a2 < 3)
    {
      return 0;
    }

    v12 = 0;
    v13 = v11 + 7;
    if (a4 < v11 + 7)
    {
      v13 = a4;
    }

    if (v13 <= 7)
    {
      v13 = 7;
    }

    v14 = v13 - 7;
    v15 = 2;
    v16 = 0x10000;
    v17 = 3;
    while (a2 >= v17 + 3)
    {
      if (v16 <= 0x1FF)
      {
        *(a1 + v15) = v16;
        v15 = v17++;
        v16 = 0x10000;
      }

      v16 >>= 1;
      if (a4 < v12 + 4)
      {
        v18 = a3[v12++];
        *(a1 + v17++) = v18;
        goto LABEL_54;
      }

      v19 = &a3[v12];
      v20 = *v19;
      v21 = *v19 >> 8;
      v22 = (-1640531535 * (*v19 & 0xFFFFFFu)) >> 19;
      v23 = (-1640531535 * v21) >> 19;
      v24 = *(a5 + v22);
      v25 = *(a5 + v23);
      v26 = v24 & 0xFFF;
      v27 = *v19 & 0xFFFFF;
      *(a5 + v22) = v12 + (*v19 << 12);
      if (v27 != v24 >> 12 || v26 >= v12 || v12 >= v14)
      {
        LODWORD(v30) = 0;
      }

      else
      {
        v30 = 0;
        v31 = 0;
        while (1)
        {
          v32 = *&v19[v30];
          v30 = *&a3[v26 + v30];
          if (v32 != v30)
          {
            break;
          }

          v31 += 8;
          v30 = v31;
          if (v31 + v12 >= v14)
          {
            goto LABEL_29;
          }
        }

        LODWORD(v30) = v31 + (__clz(__rbit64(v30 ^ v32)) >> 3);
      }

LABEL_29:
      if (((v20 >> 8) & 0xFFFFF) != v25 >> 12)
      {
        goto LABEL_47;
      }

      v33 = v25 & 0xFFF;
      if (v33 > v12)
      {
        goto LABEL_47;
      }

      v34 = v12 + 1;
      if (v34 >= v14)
      {
        LODWORD(v35) = 0;
LABEL_37:
        if (v33)
        {
LABEL_40:
          v38 = v33 - 1;
          if (*v19 == a3[v38] && v30 <= v35)
          {
            LODWORD(v30) = v35 + 1;
            LOWORD(v26) = v38;
LABEL_47:
            if (v30 >= v11 - v12)
            {
              LODWORD(v30) = v11 - v12;
            }

            if (v30 > 2)
            {
              *(a5 + v23) = v12 + 1 + (v21 << 12);
              v40 = __clz((v12 - 1) & 0xFFF | 8) - 16;
              v41 = (1 << v40) + 2;
              if (v30 < v41)
              {
                v41 = v30;
              }

              *(a1 + v17) = ((v12 + ~v26) << v40) - 3 + v41;
              v17 += 2;
              v12 += v41;
              v16 |= 0x80u;
            }

            else
            {
              *(a1 + v17++) = *v19;
              ++v12;
            }

            goto LABEL_54;
          }
        }
      }

      else
      {
        v35 = 0;
        v36 = 0;
        while (1)
        {
          v37 = *&a3[v34 + v35];
          v35 = *&a3[v33 + v35];
          if (v37 != v35)
          {
            break;
          }

          v36 += 8;
          v35 = v36;
          if (v36 + v34 >= v14)
          {
            goto LABEL_37;
          }
        }

        LODWORD(v35) = v36 + (__clz(__rbit64(v35 ^ v37)) >> 3);
        if (v33)
        {
          goto LABEL_40;
        }
      }

      if (v30 >= v35)
      {
        goto LABEL_47;
      }

      *(a1 + v17++) = *v19;
      ++v12;
LABEL_54:
      if (v12 >= v11)
      {
        goto LABEL_57;
      }
    }

    v17 = -1;
    do
    {
LABEL_57:
      v42 = v16;
      v16 >>= 1;
    }

    while (v42 > 0x1FF);
    *(a1 + v15) = v42;
    v43 = (v11 + 2);
    if (v17 < v43)
    {
      *a1 = (v17 + 32765) | 0xB000;
      v43 = v17;
      goto LABEL_62;
    }

    if (a2 < v43)
    {
      return 0;
    }

    *a1 = (v11 - 1) | 0x3000;
    memcpy(a1 + 1, a3, v11);
LABEL_62:
    a3 += v11;
    a1 = (a1 + v43);
    a2 -= v43;
    v10 += v43;
    a4 -= v11;
  }

  while (a4);
LABEL_63:
  if (a2 >= 2)
  {
    *a1 = 0;
    v10 += 2;
  }

  return v10;
}

uint64_t get_slice_width(unsigned __int16 *a1, int a2)
{
  v2 = a1[2] + a2;
  if (v2 >= *a1)
  {
    v2 = *a1;
  }

  return v2 - a2;
}

uint64_t get_slice_height(uint64_t a1, int a2)
{
  v2 = *(a1 + 6) + a2;
  if (v2 >= *(a1 + 2))
  {
    v2 = *(a1 + 2);
  }

  return v2 - a2;
}

uint64_t yzip_jobs_worker_entry(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 152);
  switch(v3)
  {
    case 2:
      v4 = yzip_plane_decoder(a2);
      goto LABEL_7;
    case 1:
      v4 = yzip_plane_encoder_phase2(a2);
LABEL_7:
      *(a2 + 144) = v4;
      return 0;
    case 0:
      *(a2 + 144) = yzip_plane_encoder_phase1(a2);
      *(a2 + 152) = 1;
      break;
  }

  return 0;
}

uint64_t yzip_jobs_create_encoder_list(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = yzip_jobs_create_empty_list(a1, a3);
  if (result)
  {
    v6 = *(a3 + 17);
    if (*(a3 + 17))
    {
      v7 = 0;
      v8 = *(result + 16);
      v9 = a3 + 18;
      v10 = a2 + 16;
      v31 = result;
      v32 = a2 + 16;
      while (1)
      {
        v11 = (v9 + 10 * v7);
        v12 = v11[1];
        if (v12)
        {
          break;
        }

LABEL_21:
        if (++v7 >= v6)
        {
          return v31;
        }
      }

      v13 = 0;
      v33 = (v10 + 32 * v7);
      v14 = *v11;
      while (!v14)
      {
LABEL_19:
        v13 += v11[3];
        if (v13 >= v12)
        {
          v6 = *(a3 + 17);
          v9 = a3 + 18;
          goto LABEL_21;
        }
      }

      v15 = 0;
      v16 = v11[2];
      while (1)
      {
        *(v8 + 152) = 0;
        *(v8 + 24) = a3;
        *(v8 + 32) = v11;
        v17 = *v33;
        *(v8 + 8) = v33[1];
        v18 = v15 + v16;
        if (v18 < v14)
        {
          v14 = v18;
        }

        v19 = v14 - v15;
        v20 = v13 + v11[3];
        if (v20 >= v11[1])
        {
          v20 = v11[1];
        }

        *(v8 + 16) = v19;
        *(v8 + 20) = v20 - v13;
        *v8 = v17 + get_format_bytes_per_pixel(*(a3 + 16), *(v11 + 8), v7) * v15 + *(v8 + 8) * v13;
        v21 = *(v11 + 8);
        v22 = *(v8 + 20) * *(v8 + 16);
        v23 = ((v21 + 2) * (v22 * get_format_components(*(a3 + 16), v7)) + 1024) >> 3;
        *(v8 + 144) = v23;
        v24 = *(v8 + 140) ? *(v8 + 104) : 0;
        result = reallocf(v24, v23);
        *(v8 + 104) = result;
        if (!result)
        {
          break;
        }

        *(v8 + 140) = 1;
        v25 = *(v8 + 96);
        v26 = *(v8 + 16);
        v27 = *(v8 + 20);
        v28 = *(a3 + 16);
        v35 = 0;
        memset(v34, 0, sizeof(v34));
        format_components = get_format_components(v28, v7);
        v30 = yzip_plane_encoder_allocate(v34, v26, v27, format_components, v28, 0);
        result = reallocf(v25, v30 + 16);
        *(v8 + 96) = result;
        if (!result)
        {
          break;
        }

        v16 = v11[2];
        v15 += v16;
        v8 += 160;
        v14 = *v11;
        if (v15 >= v14)
        {
          v12 = v11[1];
          v10 = v32;
          goto LABEL_19;
        }
      }
    }
  }

  return result;
}

uint64_t yzip_jobs_create_empty_list(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = *(a2 + 17);
  if (*(a2 + 17))
  {
    v4 = 0;
    v5 = (a2 + 24);
    v6 = *(a2 + 17);
    do
    {
      v7 = (*(v5 - 3) + *(v5 - 1) - 1) / *(v5 - 1);
      v8 = *(v5 - 2);
      v9 = *v5;
      v5 += 5;
      v4 += (v8 + v9 - 1) / v9 * v7;
      --v6;
    }

    while (v6);
  }

  else
  {
    v4 = 0;
  }

  *a1 = a2;
  *(a1 + 24) = v4;
  if (*(a1 + 32) < v3)
  {
    v10 = reallocf(*(a1 + 8), 2664 * v3);
    *(v2 + 8) = v10;
    if (!v10)
    {
      return 0;
    }

    *(v2 + 32) = v3;
  }

  if (v4 > *(v2 + 28))
  {
    v11 = reallocf(*(v2 + 16), 160 * v4);
    *(v2 + 16) = v11;
    if (v11)
    {
      bzero(&v11[160 * *(v2 + 28)], 160 * (v4 - *(v2 + 28)));
      *(v2 + 28) = v4;
      return v2;
    }

    return 0;
  }

  return v2;
}

uint64_t yzip_jobs_create_decoder_list(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  result = yzip_jobs_create_empty_list(a1, a3);
  if (result)
  {
    v10 = *(a3 + 6);
    if (v10 <= a5)
    {
      if (*(a3 + 17))
      {
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v76 = &a4[a5];
        v14 = &a4[v10 & 0xFFFC];
        v77 = &a4[v10];
        v78 = a3 + 18;
        v79 = result;
        v80 = a3;
        do
        {
          v15 = (*(result + 8) + 2664 * v11);
          v16 = *(v78 + 10 * v11 + 8);
          bzero(v15, 0xA68uLL);
          v17 = 0;
          v18 = 0;
          if (v16 <= 8)
          {
            v19 = 7;
          }

          else
          {
            v19 = 15;
          }

          do
          {
            if (v12 <= 0x20)
            {
              if (a4 >= v14)
              {
                v20 = 0;
              }

              else
              {
                v21 = *a4;
                a4 += 4;
                v20 = v21;
              }

              v13 += v20 << v12;
              v12 += 32;
            }

            v22 = v13;
            v23 = v12 - 1;
            v13 >>= 1;
            if (v22)
            {
              if (v17 <= 0xA)
              {
                v24 = -1;
              }

              else
              {
                v24 = -11;
              }

              v25 = v24 + v17;
              if (v25 < 0)
              {
                v27 = 0;
                v28 = 0;
              }

              else
              {
                v26 = &v15[4 * v25];
                v27 = *v26;
                v28 = v26[2];
              }

              v29 = 0;
              v30 = &v15[4 * v17];
              for (i = v18 - 1; ; ++i)
              {
                if (v23 > 0x20)
                {
                  v34 = v23;
                }

                else
                {
                  if (a4 >= v14)
                  {
                    v32 = 0;
                  }

                  else
                  {
                    v33 = *a4;
                    a4 += 4;
                    v32 = v33;
                  }

                  v13 += v32 << v23;
                  v34 = v23 + 32;
                }

                v35 = v13;
                v23 = v34 - 1;
                v13 >>= 1;
                v36 = lut_rle[v18 & 0x3F];
                if ((v35 & 1) == 0)
                {
                  break;
                }

                LOBYTE(v18) = v18 + 1;
                v29 += 1 << v36;
              }

              if (v34 <= 0x21)
              {
                if (a4 >= v14)
                {
                  v37 = 0;
                }

                else
                {
                  v38 = *a4;
                  a4 += 4;
                  v37 = v38;
                }

                v13 += v37 << v23;
                v23 = v34 + 31;
              }

              v39 = v13 & ~(-1 << v36);
              v40 = v23 - v36;
              v41 = v13 >> v36;
              *v30 = (((-((v39 + v29) & 1) ^ ((v39 + v29) >> 1)) + v27) << (32 - v16)) >> (32 - v16);
              if (v40 <= 0x20)
              {
                if (a4 >= v14)
                {
                  v42 = 0;
                }

                else
                {
                  v43 = *a4;
                  a4 += 4;
                  v42 = v43;
                }

                v41 += v42 << v40;
                v40 += 32;
              }

              v44 = __clz(__rbit32(v41 | 0x80000000));
              v45 = v40 - (v44 + 1);
              v46 = v41 >> (v44 + 1);
              if (v45 <= 0x20)
              {
                if (a4 >= v14)
                {
                  v47 = 0;
                }

                else
                {
                  v48 = *a4;
                  a4 += 4;
                  v47 = v48;
                }

                v46 += v47 << v45;
                v45 += 32;
              }

              v18 = i + (i >> 31);
              v49 = -1;
              v50 = (v46 & ~(-1 << v44)) + ~(-1 << v44);
              v51 = ((-(v50 & 1) ^ (v50 >> 1)) + v28) & v19;
              v30[2] = v51;
              v52 = 16 << v51;
              do
              {
                ++v49;
              }

              while (!(((1 << v49) + v52) >> v16));
              v12 = v45 - v44;
              v13 = v46 >> v44;
              v30[3] = v49;
            }

            else
            {
              --v12;
            }

            ++v17;
          }

          while (v17 != 666);
          ++v11;
          result = v79;
          v53 = *(v80 + 17);
        }

        while (v11 < v53);
        if (*(v80 + 17))
        {
          v54 = 0;
          v55 = a2 + 16;
          v56 = *(v79 + 16);
          v75 = a2 + 16;
          while (1)
          {
            v57 = (v78 + 10 * v54);
            v58 = v57[1];
            if (v58)
            {
              break;
            }

LABEL_70:
            if (++v54 >= v53)
            {
              return v79;
            }
          }

          v59 = 0;
          v60 = (v55 + 32 * v54);
          v61 = *v57;
          while (!v61)
          {
LABEL_68:
            v59 += v57[3];
            if (v59 >= v58)
            {
              LOBYTE(v53) = *(v80 + 17);
              v55 = v75;
              goto LABEL_70;
            }
          }

          v62 = 0;
          v63 = v57[2];
          while (1)
          {
            *(v56 + 152) = 2;
            *(v56 + 24) = v80;
            *(v56 + 32) = v57;
            v64 = *v60;
            *(v56 + 8) = v60[1];
            v65 = v62 + v63;
            if (v65 < v61)
            {
              v61 = v65;
            }

            v66 = v61 - v62;
            v67 = v59 + v57[3];
            if (v67 >= v57[1])
            {
              v67 = v57[1];
            }

            *(v56 + 16) = v66;
            *(v56 + 20) = v67 - v59;
            *v56 = v64 + get_format_bytes_per_pixel(*(v80 + 16), *(v57 + 8), v54) * v62 + *(v56 + 8) * v59;
            v68 = *(v56 + 96);
            v69 = *(v56 + 16);
            v70 = *(v80 + 16);
            v81[0] = 0;
            v81[1] = 0;
            format_components = get_format_components(v70, v54);
            v72 = yzip_plane_decoder_allocate(v81, v69, format_components, v70, 0);
            result = reallocf(v68, v72 + 16);
            *(v56 + 96) = result;
            if (!result)
            {
              break;
            }

            *(v56 + 120) = *(v79 + 8) + 2664 * v54;
            if (*(v56 + 140))
            {
              free(*(v56 + 104));
              *(v56 + 104) = 0;
              *(v56 + 140) = 0;
            }

            if ((v77 + 4) > v76)
            {
              return 0;
            }

            *(v56 + 104) = v77 + 4;
            v73 = *v77;
            *(v56 + 144) = v73;
            v74 = &v77[v73 + 4];
            if (v74 > v76)
            {
              return 0;
            }

            v77 = v74;
            v63 = v57[2];
            v62 += v63;
            v56 += 160;
            v61 = *v57;
            if (v62 >= v61)
            {
              v58 = v57[1];
              goto LABEL_68;
            }
          }
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t yzip_jobs_encode(uint64_t a1, uint64_t *a2, _DWORD *a3, uint64_t a4)
{
  v6 = a2;
  v7 = a1;
  v8 = *a2;
  yzip_jobs_process(a1, a2);
  v9 = a3 + (a4 & 0xFFFFFFFFFFFFFFFCLL);
  v79 = v6;
  if (*(v8 + 17))
  {
    v75 = v7;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = *(v6 + 16);
    v73 = a3 + (a4 & 0xFFFFFFFFFFFFFFFCLL);
    v74 = a3;
    v14 = v9 - 7;
    v15 = v8 + 18;
    v16 = a3;
    v77 = v9 - 7;
    v78 = v8;
    v76 = v8 + 18;
    while (1)
    {
      v17 = *(v15 + 10 * v10 + 8);
      if (v14 - v16 - ((v11 + 31) >> 3) < ((666 * *(v15 + 10 * v10 + 8) + 9580) >> 3))
      {
        return -1;
      }

      v18 = v13[14];
      v19 = (v15 + 10 * v10);
      v20 = (v19[1] + v19[3] - 1) / v19[3] * ((*v19 + v19[2] - 1) / v19[2]);
      if (v20)
      {
        break;
      }

      v23 = *(v6 + 8);
LABEL_13:
      v27 = (v23 + 2664 * v10);
      bzero(v27, 0xA68uLL);
      v28 = 0;
      v29 = 0u;
      if (v17 > 8)
      {
        v30 = 28;
      }

      else
      {
        v30 = 29;
      }

      v15 = v76;
      v14 = v77;
      do
      {
        v31 = &v18->i64[3 * v28];
        v32 = *(v31 + 4) != 0;
        *v16 = v12;
        v12 = (v32 << (v11 & 0x1F)) + (v12 >> (v11 & 0x20));
        LODWORD(v32) = v11 >> 5;
        v11 = (v11 & 0x1F) + 1;
        v16 += 4 * v32;
        v33 = *(v31 + 4);
        if (v33)
        {
          v34 = &v27[4 * v28];
          v35 = *v31;
          v36 = v18->i64[3 * v28 + 1];
          v37 = (v33 + v36 - 1) / v33;
          v38 = v36 <= 0;
          v39 = -v36 / v33;
          if (v38)
          {
            v40 = -v39;
          }

          else
          {
            LOWORD(v40) = v37;
          }

          *v34 = v40;
          v41 = -1;
          do
          {
            ++v41;
          }

          while ((v33 << v41) < v35);
          v34[2] = v41;
          v42 = v41;
          v43 = 16 << v41;
          v44 = -1;
          do
          {
            ++v44;
          }

          while (!(((1 << v44) + v43) >> v17));
          v34[3] = v44;
          if (v28 <= 0xA)
          {
            v45 = -1;
          }

          else
          {
            v45 = -11;
          }

          v46 = v45 + v28;
          if (v46 < 0)
          {
            v48 = 0;
            v49 = 0;
          }

          else
          {
            v47 = &v27[4 * v46];
            v48 = *v47;
            v49 = v47[2];
          }

          v50 = (2 * ((v40 - v48) << (32 - v17) >> (32 - v17))) ^ ~(~(2 * ((v40 - v48) << (32 - v17) >> (32 - v17))) >> 31);
          v51 = lut_rle[v29];
          if (v50 >> v51)
          {
            v52 = &lut_rle[v29 + 1];
            do
            {
              *v16 = v12;
              v12 = (v12 >> (v11 & 0x20)) + (1 << (v11 & 0x1F));
              v53 = (v11 & 0x1F) + 1;
              v16 += 4 * (v11 >> 5);
              v50 += -1 << v51;
              v54 = *v52++;
              v51 = v54;
              ++v29;
              v11 = v53;
            }

            while (v50 >> v54);
          }

          else
          {
            v53 = v11;
          }

          *v16 = v12;
          v55 = ((2 * v50) << (v53 & 0x1F)) + (v12 >> (v53 & 0x20));
          v56 = (v53 & 0x1F) + v51 + 1;
          v57 = &v16[4 * (v53 >> 5)];
          v29 = v29 - 1 + ((v29 - 1) >> 31);
          v58 = ((2 * ((v42 - v49) << v30 >> v30)) ^ ~(~(2 * ((v42 - v49) << v30 >> v30)) >> 31)) + 1;
          v59 = __clz(v58);
          v60 = 0x80000000 >> v59;
          *v57 = v55;
          v61 = (v55 >> (v56 & 0x20)) + (v60 << (v56 & 0x1F));
          v62 = (v56 & 0x1F) - v59;
          v63 = &v57[4 * (v56 >> 5)];
          *v63 = v61;
          v12 = (v61 >> ((v62 + 32) & 0x20)) + ((v58 - v60) << (v62 & 0x1F));
          v11 = (v62 & 0x1F) - v59 + 31;
          v16 = &v63[4 * ((v62 + 32) >> 5)];
        }

        ++v28;
      }

      while (v28 != 666);
      ++v10;
      v8 = v78;
      v6 = v79;
      if (v10 >= *(v78 + 17))
      {
        v64 = (v11 + 7) >> 3;
        v7 = v75;
        v9 = v73;
        a3 = v74;
        goto LABEL_41;
      }
    }

    v21 = 0;
    while (1)
    {
      result = v13[18];
      if (result < 0)
      {
        break;
      }

      v23 = *(v6 + 8);
      v13[15] = v23 + 2664 * v10;
      if (v21)
      {
        v24 = (v13[14] + 16);
        v25 = 666;
        v26 = v18 + 1;
        do
        {
          v26->i32[0] += v24->i32[0];
          v26[-1] = vaddq_s64(v26[-1], v24[-1]);
          v24 = (v24 + 24);
          v26 = (v26 + 24);
          --v25;
        }

        while (v25);
      }

      ++v21;
      v13 += 20;
      if (v21 == v20)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
    v12 = 0;
    LOWORD(v64) = 0;
    v16 = a3;
LABEL_41:
    v65 = a3 + a4;
    *v16 = v12;
    *(v9 - 1) = 0;
    v66 = v16 - a3 + v64 + 3;
    *(v8 + 6) = v66 & 0xFFFC;
    v67 = a3 + (v66 & 0xFFFC);
    yzip_jobs_process(v7, v6);
    if (*(v6 + 24))
    {
      v68 = 0;
      v69 = 0;
      while (1)
      {
        v70 = *(v6 + 16);
        v71 = v70 + v68;
        result = *(v70 + v68 + 144);
        if (result < 0)
        {
          break;
        }

        if (&v67[result + 4] > v65)
        {
          return -1;
        }

        *v67 = result;
        v72 = v67 + 4;
        memcpy(v72, *(v70 + v68 + 104), *(v71 + 144));
        v67 = &v72[*(v71 + 144)];
        ++v69;
        v6 = v79;
        v68 += 160;
        if (v69 >= *(v79 + 24))
        {
          return &v67[a4 - v65];
        }
      }
    }

    else
    {
      return &v67[a4 - v65];
    }
  }

  return result;
}

void yzip_jobs_process(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v4 = *(a2 + 24);
  if (v3 == 1)
  {
    if (!*(a2 + 24))
    {
      return;
    }
  }

  else if (v4 != 1)
  {
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = __yzip_jobs_process_block_invoke;
    block[3] = &__block_descriptor_tmp;
    block[4] = a2;
    dispatch_apply(v4, 0, block);
    return;
  }

  v5 = 0;
  v6 = 0;
  do
  {
    v7 = *(a2 + 16);
    if (*(v7 + v5))
    {
      yzip_jobs_worker_entry(v4, v7 + v5);
      v4 = *(a2 + 24);
    }

    ++v6;
    v5 += 160;
  }

  while (v6 < v4);
}

uint64_t yzip_jobs_decode(uint64_t a1, uint64_t a2)
{
  yzip_jobs_process(a1, a2);
  v3 = *(a2 + 24);
  if (!v3)
  {
    return 0;
  }

  result = 0;
  for (i = *(a2 + 16); !*i; i += 20)
  {
LABEL_6:
    if (!--v3)
    {
      return result;
    }
  }

  v6 = i[18];
  if ((v6 & 0x8000000000000000) == 0)
  {
    result += v6;
    goto LABEL_6;
  }

  return i[18];
}

uint64_t __yzip_jobs_process_block_invoke(uint64_t result, uint64_t a2)
{
  v2 = (*(*(result + 32) + 16) + 160 * a2);
  if (*v2)
  {
    return yzip_jobs_worker_entry(result, v2);
  }

  return result;
}

uint64_t lzbitmap_fast_encode_state_size(unsigned int a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return dword_29864DD30[a1];
  }
}

uint64_t lzbitmap_fast_encode(uint64_t a1, unsigned int a2, char *__src, unsigned int a4, uint64_t a5, unsigned int a6)
{
  result = 0;
  v222 = *MEMORY[0x29EDCA608];
  if (!a4 || !a5)
  {
    return result;
  }

  if (a4 >= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = a4;
  }

  v198 = a1 + a2;
  if (a1 + v9 + 5 > v198)
  {
    return 0;
  }

  *a1 = -1;
  *(a1 + 2) = v9;
  *(a1 + 4) = 0;
  v192 = a1;
  v12 = a1 + 5;
  memcpy((a1 + 5), __src, v9);
  v193 = v9;
  v13 = (v12 + v9);
  if (a6 >= 3)
  {
    v15 = 0;
    v14 = 0;
    *&v19 = 0x8000800080008;
    *(&v19 + 1) = 0x8000800080008;
    __srca = v19;
    v201 = v19;
  }

  else
  {
    v14 = 0;
    v15 = qword_29864DD40[a6];
    *&v16 = 0x8000800080008;
    *(&v16 + 1) = 0x8000800080008;
    __srca = v16;
    v201 = v16;
    do
    {
      v17 = (a5 + v14);
      *v17 = v16;
      v17[1] = v16;
      v18 = v14 + 64;
      v14 += 32;
    }

    while (v18 <= v15);
  }

  memcpy((a5 + v14), &__srca, v15 - v14);
  if (a6 == 2)
  {
    v220 = 0u;
    v221 = 0u;
    v218 = 0u;
    v219 = 0u;
    v216 = 0u;
    v217 = 0u;
    v214 = 0u;
    v215 = 0u;
    v22 = v9;
    v212 = 0u;
    v213 = 0u;
    v20 = a4;
    if ((v9 | 0x90) > a4)
    {
      goto LABEL_52;
    }

    v195 = 8;
    v81 = vdupq_n_s32(0x9E3779B1);
    v21 = v9;
    while (1)
    {
      if ((v13 + 164) > v198)
      {
        goto LABEL_114;
      }

      v82 = 0;
      v83 = &__src[v21];
      v85 = *v83;
      v84 = (v83 + 16);
      v86 = v85;
      do
      {
        v87 = v86;
        v88 = *v84++;
        v86 = v88;
        v89 = (&__srca + 2 * v82);
        *v89 = vshrq_n_u32(vmulq_s32(vqtbl1q_s8(v87, xmmword_29864DCF0), v81), 0x11uLL);
        v89[1] = vshrq_n_u32(vmulq_s32(vqtbl1q_s8(v87, xmmword_29864DD00), v81), 0x11uLL);
        v89[2] = vshrq_n_u32(vmulq_s32(vqtbl1q_s8(v87, xmmword_29864DD10), v81), 0x11uLL);
        v89[3] = vshrq_n_u32(vmulq_s32(vqtbl2q_s8(*(&v86 - 1), xmmword_29864DD20), v81), 0x11uLL);
        v82 += 2;
      }

      while (v82 < 0xE);
      v90 = 0;
      v91 = 0;
      v92 = 0;
      v93 = 0;
      v94 = 0;
      v95 = *v84;
      v208 = vshrq_n_u32(vmulq_s32(vqtbl1q_s8(v86, xmmword_29864DCF0), v81), 0x11uLL);
      v209 = vshrq_n_u32(vmulq_s32(vqtbl1q_s8(v86, xmmword_29864DD00), v81), 0x11uLL);
      v96 = vshrq_n_u32(vmulq_s32(vqtbl2q_s8(*v86.i8, xmmword_29864DD20), v81), 0x11uLL);
      v210 = vshrq_n_u32(vmulq_s32(vqtbl1q_s8(v86, xmmword_29864DD10), v81), 0x11uLL);
      v211 = v96;
      *v13 = 0;
      v97 = v195;
      do
      {
        v98 = v21;
        v99 = &__src[v21];
        *v96.i8 = *v99;
        v100 = vpaddl_u32(vpaddl_u16(vpaddl_u8(vbic_s8(0x8040201008040201, vceq_s8(*(v99 - v97), *v99)))));
        if (v100.i8[0])
        {
          v101 = v100.i8[0];
          v100.i32[0] = v100.u8[0];
          v102 = vcnt_s8(v100);
          v102.i16[0] = vaddlv_u8(v102);
          v103 = v102.i8[0];
          if (v102.i32[0] == 1)
          {
LABEL_67:
            v117 = vqtbl1_s8(v96, lzbitmap_pack_perm_table[v101]);
            *&v214.i8[v94] = v117;
            v117.i32[0] = v101;
            v94 += vaddlv_u8(vcnt_s8(v117));
            v90 = *v13 | (1 << v91);
            *v13 = v90;
            v13[v93++ + 4] = v101;
          }

          else
          {
            v104 = 0;
            v105 = &__srca + 2 * v91;
            v107 = *v105;
            v106 = v105[1];
            v108 = HIDWORD(*(v105 + 2));
            v109 = *(a5 + 2 * v106);
            v110 = *(a5 + 2 * *v105);
            v111 = *(a5 + 2 * *(v105 + 1));
            *(a5 + 2 * HIDWORD(*v105)) = v98 + 1;
            *(a5 + 2 * DWORD2(v107)) = v98 + 2;
            *(a5 + 2 * HIDWORD(v107)) = v98 + 3;
            *(a5 + 2 * v108) = v98 + 5;
            v199[0] = v98 + 4 - v109;
            v199[1] = v98 - v110;
            *(a5 + 2 * DWORD2(v106)) = v98 + 6;
            *(a5 + 2 * HIDWORD(v106)) = v98 + 7;
            v199[2] = v98 + 2 - v111;
            *(a5 + 2 * v106) = v98 + 4;
            *(a5 + 2 * v107) = v98;
            v112 = v97;
            while (1)
            {
              v113 = v199[v104];
              v114 = vpaddl_u32(vpaddl_u16(vpaddl_u8(vbic_s8(0x8040201008040201, vceq_s8(*(v99 - v113), *v96.i8)))));
              v115 = v114.u8[0] | ((v113 - 8) >> 24);
              if (!(v114.i8[0] | ((v113 - 8) >> 24)))
              {
                break;
              }

              v114.i32[0] = v114.i8[0] | ((v113 - 8) >> 24);
              v116 = vcnt_s8(v114);
              v116.i16[0] = vaddlv_u8(v116);
              if (v116.i32[0] + 2 < v103)
              {
                v101 = v115;
                v103 = v116.i8[0] + 2;
                v112 = v199[v104];
                if (v104 == 2)
                {
                  goto LABEL_66;
                }
              }

              if (++v104 == 3)
              {
                v113 = v112;
                LOBYTE(v115) = v101;
                if (v112 == v97)
                {
                  goto LABEL_67;
                }

LABEL_66:
                *v13 = (0x10000 << v91) | v90;
                *(&v212 + v92) = v113;
                v97 = v113;
                ++v92;
                v101 = v115;
                goto LABEL_67;
              }
            }

            v90 |= 0x10000 << v91;
            *v13 = v90;
            *(&v212 + v92) = v113;
            v97 = v113;
            ++v92;
          }
        }

        ++v91;
        v21 = v98 + 8;
      }

      while (v91 != 16);
      v118 = v93 + 4;
      v119 = 2 * v92 + v94;
      if ((v119 + v118) <= 0x85)
      {
        v127 = &v13[v118];
        v128 = v213;
        *v127 = v212;
        *(v127 + 1) = v128;
        if (v127 < v127 + 32)
        {
          v129 = &v212;
          v130 = v127;
          do
          {
            v131 = *v129;
            v132 = v129[1];
            v129 += 2;
            *v130 = v131;
            *(v130 + 1) = v132;
            v130 += 32;
          }

          while (v130 < v127 + 32);
        }

        v13 = &v127[v119];
        v133 = v215;
        v134 = &v127[v119 - v94];
        *v134 = v214;
        v134[1] = v133;
        if (v134 < v13)
        {
          v135 = &v214;
          v20 = a4;
          do
          {
            v136 = *v135;
            v137 = v135[1];
            v135 += 2;
            *v134 = v136;
            v134[1] = v137;
            v134 += 2;
          }

          while (v134 < v13);
          v195 = v97;
          goto LABEL_81;
        }

        v195 = v97;
      }

      else
      {
        v120 = &__src[v21 - 128];
        *v13 = 8454143;
        v13[4] = 0;
        v121 = *v120;
        v122 = *(v120 + 1);
        v123 = *(v120 + 2);
        *(v13 + 53) = *(v120 + 3);
        *(v13 + 37) = v123;
        *(v13 + 21) = v122;
        *(v13 + 5) = v121;
        v124 = *(v120 + 4);
        v125 = *(v120 + 5);
        v126 = *(v120 + 6);
        *(v13 + 117) = *(v120 + 7);
        *(v13 + 101) = v126;
        *(v13 + 85) = v125;
        *(v13 + 69) = v124;
        v13 += 133;
      }

      v20 = a4;
LABEL_81:
      if (v98 + 152 > v20)
      {
        goto LABEL_115;
      }
    }
  }

  v20 = a4;
  if (a6 != 1)
  {
    if (!a6)
    {
      v206 = 0u;
      v207 = 0u;
      v204 = 0u;
      v205 = 0u;
      v202 = 0u;
      v203 = 0u;
      __srca = 0u;
      v201 = 0u;
      v212 = 0u;
      v213 = 0u;
      if ((v9 | 0x90) > a4)
      {
        v21 = v9;
        goto LABEL_115;
      }

      v138 = vdupq_n_s32(0x9E3779B1);
      v196 = 8;
      v21 = v9;
      while ((v13 + 164) <= v198)
      {
        v139 = 0;
        v140 = 0;
        v141 = 0;
        v142 = 0;
        v143 = 0;
        v144 = &__src[v21];
        v145 = vshrq_n_u32(vmulq_s32(v144[1], v138), 0x13uLL);
        v214 = vshrq_n_u32(vmulq_s32(*v144, v138), 0x13uLL);
        v215 = v145;
        v146 = vshrq_n_u32(vmulq_s32(v144[3], v138), 0x13uLL);
        v216 = vshrq_n_u32(vmulq_s32(v144[2], v138), 0x13uLL);
        v217 = v146;
        v147 = vshrq_n_u32(vmulq_s32(v144[5], v138), 0x13uLL);
        v218 = vshrq_n_u32(vmulq_s32(v144[4], v138), 0x13uLL);
        v219 = v147;
        v148 = vshrq_n_u32(vmulq_s32(v144[6], v138), 0x13uLL);
        v149 = vshrq_n_u32(vmulq_s32(v144[7], v138), 0x13uLL);
        v220 = v148;
        v221 = v149;
        *v13 = 0;
        v150 = v196;
        do
        {
          v151 = v21;
          v152 = &__src[v21];
          *v148.i8 = *v152;
          v153 = vpaddl_u32(vpaddl_u16(vpaddl_u8(vbic_s8(0x8040201008040201, vceq_s8(*(v152 - v150), *v152)))));
          if (v153.i8[0])
          {
            v154 = v153.i8[0];
            v153.i32[0] = v153.u8[0];
            v155 = vcnt_s8(v153);
            v155.i16[0] = vaddlv_u8(v155);
            v156 = v155.i8[0];
            if (v155.i32[0] != 1)
            {
              v157 = &v214 + 2 * v140;
              v158 = *v157;
              v159 = v157[1];
              v160 = v151 - *(a5 + 2 * v158);
              v161 = v151 + 4 - *(a5 + 2 * v159);
              *(a5 + 2 * v159) = v151 + 4;
              *(a5 + 2 * v158) = v151;
              v162 = 1;
              v163 = v150;
              do
              {
                v164 = v162;
                v165 = vpaddl_u32(vpaddl_u16(vpaddl_u8(vbic_s8(0x8040201008040201, vceq_s8(*(v152 - v160), *v148.i8)))));
                v166 = v165.u8[0] | ((v160 - 8) >> 24);
                if (!(v165.i8[0] | ((v160 - 8) >> 24)))
                {
                  v139 |= 0x10000 << v140;
                  *v13 = v139;
                  *(&v212 + v141) = v160;
                  v150 = v160;
                  ++v141;
                  goto LABEL_102;
                }

                v165.i32[0] = v165.i8[0] | ((v160 - 8) >> 24);
                v167 = vcnt_s8(v165);
                v167.i16[0] = vaddlv_u8(v167);
                v168 = v167.i8[0] + 2;
                if (((v167.i32[0] + 2 < v156) & ~v162) != 0)
                {
                  v163 = v160;
                  v154 = v166;
                  goto LABEL_100;
                }

                v162 = 0;
                if (v156 > v168)
                {
                  v163 = v160;
                  v154 = v166;
                }

                if (v156 >= v168)
                {
                  v156 = v167.i8[0] + 2;
                }

                v160 = v161;
              }

              while ((v164 & 1) != 0);
              if (v163 == v150)
              {
                goto LABEL_101;
              }

LABEL_100:
              *v13 = (0x10000 << v140) | v139;
              *(&v212 + v141) = v163;
              v150 = v163;
              ++v141;
            }

LABEL_101:
            v169 = vqtbl1_s8(v148, lzbitmap_pack_perm_table[v154]);
            *(&__srca + v143) = v169;
            v169.i32[0] = v154;
            v143 += vaddlv_u8(vcnt_s8(v169));
            v139 = *v13 | (1 << v140);
            *v13 = v139;
            v13[v142++ + 4] = v154;
          }

LABEL_102:
          ++v140;
          v21 = v151 + 8;
        }

        while (v140 != 16);
        v170 = v142 + 4;
        v171 = 2 * v141 + v143;
        if ((v171 + v170) <= 0x85)
        {
          v179 = &v13[v170];
          v180 = v213;
          *v179 = v212;
          *(v179 + 1) = v180;
          if (v179 < v179 + 32)
          {
            v181 = &v212;
            v182 = v179;
            do
            {
              v183 = *v181;
              v184 = v181[1];
              v181 += 2;
              *v182 = v183;
              *(v182 + 1) = v184;
              v182 += 32;
            }

            while (v182 < v179 + 32);
          }

          v13 = &v179[v171];
          v185 = v201;
          v186 = &v179[v171 - v143];
          *v186 = __srca;
          *(v186 + 1) = v185;
          v20 = a4;
          if (v186 < v13)
          {
            p_srca = &__srca;
            do
            {
              v188 = *p_srca;
              v189 = p_srca[1];
              p_srca += 2;
              *v186 = v188;
              *(v186 + 1) = v189;
              v186 += 32;
            }

            while (v186 < v13);
          }

          v196 = v150;
        }

        else
        {
          v172 = &__src[v21 - 128];
          *v13 = 8454143;
          v13[4] = 0;
          v173 = *v172;
          v174 = *(v172 + 1);
          v175 = *(v172 + 2);
          *(v13 + 53) = *(v172 + 3);
          *(v13 + 37) = v175;
          *(v13 + 21) = v174;
          *(v13 + 5) = v173;
          v176 = *(v172 + 4);
          v177 = *(v172 + 5);
          v178 = *(v172 + 6);
          *(v13 + 117) = *(v172 + 7);
          *(v13 + 101) = v178;
          *(v13 + 85) = v177;
          *(v13 + 69) = v176;
          v13 += 133;
          v20 = a4;
        }

        if (v151 + 152 > v20)
        {
          goto LABEL_115;
        }
      }

      goto LABEL_114;
    }

    return 0;
  }

  v220 = 0u;
  v221 = 0u;
  v218 = 0u;
  v219 = 0u;
  v216 = 0u;
  v217 = 0u;
  v214 = 0u;
  v215 = 0u;
  v22 = v9;
  v212 = 0u;
  v213 = 0u;
  if ((v9 | 0x90) > a4)
  {
LABEL_52:
    v21 = v22;
    goto LABEL_115;
  }

  v194 = 8;
  v23 = vdupq_n_s32(0x9E3779B1);
  v21 = v9;
  while ((v13 + 164) <= v198)
  {
    v24 = 0;
    v25 = &__src[v21];
    v27 = *v25;
    v26 = (v25 + 16);
    v28 = v27;
    do
    {
      v29 = v28;
      v30 = *v26++;
      v28 = v30;
      v31 = (&__srca + 2 * v24);
      *v31 = vshrq_n_u32(vmulq_s32(vqtbl1q_s8(v29, xmmword_29864DCF0), v23), 0x13uLL);
      v31[1] = vshrq_n_u32(vmulq_s32(vqtbl1q_s8(v29, xmmword_29864DD00), v23), 0x13uLL);
      v31[2] = vshrq_n_u32(vmulq_s32(vqtbl1q_s8(v29, xmmword_29864DD10), v23), 0x13uLL);
      v31[3] = vshrq_n_u32(vmulq_s32(vqtbl2q_s8(*(&v28 - 1), xmmword_29864DD20), v23), 0x13uLL);
      v24 += 2;
    }

    while (v24 < 0xE);
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = *v26;
    v208 = vshrq_n_u32(vmulq_s32(vqtbl1q_s8(v28, xmmword_29864DCF0), v23), 0x13uLL);
    v209 = vshrq_n_u32(vmulq_s32(vqtbl1q_s8(v28, xmmword_29864DD00), v23), 0x13uLL);
    v38 = vshrq_n_u32(vmulq_s32(vqtbl2q_s8(*v28.i8, xmmword_29864DD20), v23), 0x13uLL);
    v210 = vshrq_n_u32(vmulq_s32(vqtbl1q_s8(v28, xmmword_29864DD10), v23), 0x13uLL);
    v211 = v38;
    *v13 = 0;
    v39 = v194;
    do
    {
      v40 = v21;
      v41 = &__src[v21];
      *v38.i8 = *v41;
      v42 = vpaddl_u32(vpaddl_u16(vpaddl_u8(vbic_s8(0x8040201008040201, vceq_s8(*(v41 - v39), *v41)))));
      if (v42.i8[0])
      {
        v43 = v42.i8[0];
        v42.i32[0] = v42.u8[0];
        v44 = vcnt_s8(v42);
        v44.i16[0] = vaddlv_u8(v44);
        v45 = v44.i8[0];
        if (v44.i32[0] != 1)
        {
          v46 = &__srca + 2 * v33;
          v48 = *v46;
          v47 = v46[1];
          v49 = HIDWORD(*(v46 + 2));
          v50 = *(v46 + 3);
          LODWORD(v46) = *(a5 + 2 * v47);
          v51 = *(a5 + 2 * v48);
          *(a5 + 2 * DWORD1(v48)) = v40 + 1;
          *(a5 + 2 * DWORD2(v48)) = v40 + 2;
          v52 = v40 + 4 - v46;
          *(a5 + 2 * HIDWORD(v48)) = v40 + 3;
          *(a5 + 2 * v49) = v40 + 5;
          *(a5 + 2 * v50) = v40 + 6;
          *(a5 + 2 * HIDWORD(v47)) = v40 + 7;
          *(a5 + 2 * v47) = v40 + 4;
          *(a5 + 2 * v48) = v40;
          v53 = 1;
          v54 = v39;
          do
          {
            v55 = vpaddl_u32(vpaddl_u16(vpaddl_u8(vbic_s8(0x8040201008040201, vceq_s8(*(v41 - v52), *v38.i8)))));
            v56 = v55.u8[0] | ((v52 - 8) >> 24);
            if (!(v55.i8[0] | ((v52 - 8) >> 24)))
            {
              v32 |= 0x10000 << v33;
              *v13 = v32;
              *(&v212 + v34) = v52;
              v39 = v52;
              ++v34;
              goto LABEL_39;
            }

            v57 = v53;
            v55.i32[0] = v55.i8[0] | ((v52 - 8) >> 24);
            v58 = vcnt_s8(v55);
            v58.i16[0] = vaddlv_u8(v58);
            v59 = v58.i8[0] + 2;
            if (((v58.i32[0] + 2 < v45) & ~v53) != 0)
            {
              v54 = v52;
              v43 = v56;
              goto LABEL_37;
            }

            v53 = 0;
            if (v45 > v59)
            {
              v54 = v52;
              v43 = v56;
            }

            if (v45 >= v59)
            {
              v45 = v58.i8[0] + 2;
            }

            v52 = v40 - v51;
          }

          while ((v57 & 1) != 0);
          if (v54 == v39)
          {
            goto LABEL_38;
          }

LABEL_37:
          *v13 = (0x10000 << v33) | v32;
          *(&v212 + v34) = v54;
          v39 = v54;
          ++v34;
        }

LABEL_38:
        v60 = vqtbl1_s8(v38, lzbitmap_pack_perm_table[v43]);
        *&v214.i8[v36] = v60;
        v60.i32[0] = v43;
        v36 += vaddlv_u8(vcnt_s8(v60));
        v32 = *v13 | (1 << v33);
        *v13 = v32;
        v13[v35++ + 4] = v43;
      }

LABEL_39:
      ++v33;
      v21 = v40 + 8;
    }

    while (v33 != 16);
    v61 = v35 + 4;
    v62 = 2 * v34 + v36;
    if ((v62 + v61) <= 0x85)
    {
      v70 = &v13[v61];
      v71 = v213;
      *v70 = v212;
      *(v70 + 1) = v71;
      if (v70 < v70 + 32)
      {
        v72 = &v212;
        v73 = v70;
        do
        {
          v74 = *v72;
          v75 = v72[1];
          v72 += 2;
          *v73 = v74;
          *(v73 + 1) = v75;
          v73 += 32;
        }

        while (v73 < v70 + 32);
      }

      v13 = &v70[v62];
      v76 = v215;
      v77 = &v70[v62 - v36];
      *v77 = v214;
      v77[1] = v76;
      v20 = a4;
      if (v77 < v13)
      {
        v78 = &v214;
        do
        {
          v79 = *v78;
          v80 = v78[1];
          v78 += 2;
          *v77 = v79;
          v77[1] = v80;
          v77 += 2;
        }

        while (v77 < v13);
      }

      v194 = v39;
    }

    else
    {
      v63 = &__src[v21 - 128];
      *v13 = 8454143;
      v13[4] = 0;
      v64 = *v63;
      v65 = *(v63 + 1);
      v66 = *(v63 + 2);
      *(v13 + 53) = *(v63 + 3);
      *(v13 + 37) = v66;
      *(v13 + 21) = v65;
      *(v13 + 5) = v64;
      v67 = *(v63 + 4);
      v68 = *(v63 + 5);
      v69 = *(v63 + 6);
      *(v13 + 117) = *(v63 + 7);
      *(v13 + 101) = v69;
      *(v13 + 85) = v68;
      *(v13 + 69) = v67;
      v13 += 133;
      v20 = a4;
    }

    if (v40 + 152 > v20)
    {
      goto LABEL_115;
    }
  }

LABEL_114:
  v13 = 0;
  v21 = v193;
LABEL_115:
  if (!v13)
  {
    return 0;
  }

  do
  {
    v190 = v20 - v21;
    if (v20 < v21)
    {
      break;
    }

    if (&v13[v190 + 5] > v198)
    {
      return 0;
    }

    *v13 = -1;
    *(v13 + 1) = v20 - v21;
    v13[4] = 0;
    memcpy(v13 + 5, &__src[v21], v190);
    v20 = a4;
    v13 += v190 + 5;
    v191 = a4 == v21;
    v21 = a4;
  }

  while (!v191);
  return (v13 - v192);
}

uint64_t compression_stream_init_with_state_buffer(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  if ((a5 - 0x100000000) < 0xFFFFFFFF00000010)
  {
    return 0xFFFFFFFFLL;
  }

  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = a4;
  *a4 = 0;
  *(a4 + 8) = -1412628475;
  *(a4 + 12) = a5;
  return compression_stream_reinit(a1, a2, a3);
}

uint64_t compression_stream_reinit(uint64_t a1, int a2, int a3)
{
  if (a3 > 2192)
  {
    if ((a3 - 2304) < 2)
    {
      return lzvn_stream_init(a1, a2, a3, 1);
    }

    if (a3 != 2193)
    {
      return 0xFFFFFFFFLL;
    }

    return lzfse_stream_init(a1, a2, a3, 1);
  }

  if ((a3 - 2049) < 2)
  {
    return lzfse_stream_init(a1, a2, a3, 1);
  }

  if (a3 != 256)
  {
    if (a3 == 517)
    {
      return zlib_stream_init(a1, a2, 1);
    }

    return 0xFFFFFFFFLL;
  }

  return lz4_stream_init(a1, a2, 1);
}

uint64_t compression_stream_identify_algorithm(int *a1)
{
  if (lzfse_stream_identify_algorithm(a1))
  {
    return 2049;
  }

  if (zlib_stream_identify_algorithm())
  {
    return 517;
  }

  if (lzma_stream_identify_algorithm(a1))
  {
    return 774;
  }

  if (lz4_stream_identify_algorithm(a1))
  {
    return 256;
  }

  if (lzvn_stream_identify_algorithm(a1))
  {
    return 2304;
  }

  if (lzbitmap_stream_identify_algorithm(a1))
  {
    return 1794;
  }

  return 0xFFFFFFFFLL;
}

uint64_t compression_stream_get_state_size(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v3 = *(v1 + 4);
  if (v3 > 2048)
  {
    if ((v3 - 2049) >= 2 && v3 != 2193)
    {
      return result;
    }

    return *(v1 + 12);
  }

  if (v3 == 256 || v3 == 517)
  {
    return *(v1 + 12);
  }

  return result;
}

uint64_t compression_stream_get_encode_state_size(int a1)
{
  if (a1 > 2192)
  {
    if ((a1 - 2304) < 2)
    {
      return lzvn_stream_get_encode_state_size();
    }

    if (a1 != 2193)
    {
      return 0;
    }

    return lzfse_stream_get_encode_state_size();
  }

  if ((a1 - 2049) < 2)
  {
    return lzfse_stream_get_encode_state_size();
  }

  if (a1 != 256)
  {
    if (a1 == 517)
    {
      return lzvn_decode_scratch_size();
    }

    return 0;
  }

  return lz4_stream_get_state_size();
}

uint64_t compression_stream_get_decode_state_size(int a1)
{
  if (a1 > 2192)
  {
    if ((a1 - 2304) < 2)
    {
      return lzvn_stream_get_decode_state_size();
    }

    if (a1 != 2193)
    {
      return 0;
    }

    return lzfse_stream_get_decode_state_size();
  }

  if ((a1 - 2049) < 2)
  {
    return lzfse_stream_get_decode_state_size();
  }

  if (a1 != 256)
  {
    if (a1 == 517)
    {
      return zlib_stream_get_decode_state_size();
    }

    return 0;
  }

  return lz4_stream_get_state_size();
}

_DWORD *compression_stream_is_state_valid(_DWORD *result)
{
  if (result)
  {
    if (*result > 1u)
    {
      return 0;
    }

    else
    {
      return (result[2] == -1412628475);
    }
  }

  return result;
}

uint64_t lzfse_stream_identify_algorithm(int *a1)
{
  v1 = *a1;
  result = 1;
  if (v1 <= 829978209)
  {
    v3 = v1 == 611874402;
    v4 = 762869346;
  }

  else
  {
    v3 = v1 == 829978210 || v1 == 846755426;
    v4 = 1853388386;
  }

  if (!v3 && v1 != v4)
  {
    return 0;
  }

  return result;
}

uint64_t lzfse_stream_get_state_size(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*v1 == 1)
  {
    return lzfseStreamDecodeStateSize();
  }

  if (*v1)
  {
    return 0;
  }

  return lzfseStreamEncodeStateSize(v1[1]);
}

void BrotliEstimateBitCostsForLiterals()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v0;
  v65 = *MEMORY[0x29EDCA608];
  v60 = v7;
  if (BrotliIsMostlyUTF8(v3, v0, v5, v7, 0.75))
  {
    v62 = 0;
    v63 = 0;
    v64 = 0;
    if (v8)
    {
      v10 = 0;
      v11 = v9;
      v12 = v8;
      do
      {
        if (*(v4 + (v11 & v6)) < 0)
        {
          v14 = 2 * (v10 > 0xDF);
          if (*(v4 + (v11 & v6)) <= 0xBFu)
          {
            v13 = v14;
          }

          else
          {
            v13 = 1;
          }
        }

        else
        {
          v13 = 0;
        }

        v10 = *(v4 + (v11 & v6));
        ++*(&v62 + v13);
        ++v11;
        --v12;
      }

      while (v12);
      v15 = (v63 + v64) > 0x18;
      bzero(&v62, 0x1800uLL);
      v16 = 0;
      v17 = 0;
      v18 = 495;
      if (v8 < 0x1EF)
      {
        v18 = v8;
      }

      memset(v61, 0, sizeof(v61));
      v19 = v9;
      do
      {
        v20 = *(v4 + (v19 & v6));
        v21 = *(v4 + (v19 & v6));
        ++*(&v62 + 256 * v17 + v21);
        ++v61[v17];
        v17 = v16 >= 0xE0 && v15;
        if (v20 > 0xBFu)
        {
          v17 = v15;
        }

        if (v20 >= 0)
        {
          v17 = 0;
        }

        ++v19;
        v16 = v21;
        --v18;
      }

      while (v18);
      v22 = 0;
      v23 = 2000;
      do
      {
        if (v22 >= 0x1EF)
        {
          if (v22 == 495)
          {
            v24 = 0;
          }

          else
          {
            v25 = v9 + v22;
            v26 = v22 < 0x1F1 || *(v4 + ((v25 - 497) & v6)) < 0xE0u;
            v27 = *(v4 + ((v25 - 496) & v6));
            v28 = !v26 && v15;
            if (v27 > 0xBF)
            {
              v28 = v15;
            }

            v24 = (v27 & 0x80) != 0 && v28;
          }

          v29 = *(v4 + ((v9 + v22 - 495) & v6));
          --*(&v62 + 256 * v24 + v29);
          --v61[v24];
        }

        if (v22 + 495 < v8)
        {
          v30 = *(v4 + ((v9 + v22 + 493) & v6)) >= 0xE0u && v15;
          if (*(v4 + ((v9 + v22 + 494) & v6)) > 0xBFu)
          {
            v30 = v15;
          }

          if (*(v4 + ((v9 + v22 + 494) & v6)) >= 0)
          {
            v30 = 0;
          }

          v31 = *(v4 + ((v9 + v22 + 495) & v6));
          ++*(&v62 + 256 * v30 + v31);
          ++v61[v30];
        }

        if (v22)
        {
          v32 = v9 + v22;
          v33 = v22 == 1 || *(v4 + ((v32 - 2) & v6)) < 0xE0u;
          v35 = *(v4 + ((v32 - 1) & v6));
          v36 = !v33 && v15;
          if (v35 > 0xBF)
          {
            v36 = v15;
          }

          v34 = (v35 & 0x80) != 0 && v36;
        }

        else
        {
          v34 = 0;
        }

        v37 = *(v4 + ((v9 + v22) & v6));
        v38 = &v62 + 256 * v34;
        v39 = v38[v37];
        if (v39 <= 1)
        {
          v40 = 1;
        }

        else
        {
          v40 = v38[v37];
        }

        v41 = v61[v34];
        if (v41 > 0xFF)
        {
          v42 = log2(v41);
        }

        else
        {
          v42 = kBrotliLog2Table[v41];
        }

        if (v39 > 0xFF)
        {
          v43 = log2(v40);
        }

        else
        {
          v43 = kBrotliLog2Table[v40];
        }

        v8 = v60;
        v44 = v42 - v43 + 0.02905;
        if (v44 < 1.0)
        {
          v44 = v44 * 0.5 + 0.5;
        }

        if (v22 <= 0x7CF)
        {
          v44 = v23 / -2000.0 * 0.35 + 0.7 + v44;
        }

        v45 = v44;
        v2[v22++] = v45;
        --v23;
      }

      while (v60 != v22);
    }
  }

  else
  {
    bzero(&v62, 0x800uLL);
    if (v8 >= 0x7D0)
    {
      v46 = 2000;
    }

    else
    {
      v46 = v8;
    }

    if (v8)
    {
      v47 = v9;
      v48 = v46;
      do
      {
        ++*(&v62 + *(v4 + (v47++ & v6)));
        --v48;
      }

      while (v48);
      v49 = 0;
      do
      {
        if (v49 >= 0x7D0)
        {
          v50 = *(v4 + ((v9 - 2000) & v6));
          --*(&v62 + v50);
          --v46;
        }

        v51 = v49 + 2000;
        if (v49 + 2000 < v8)
        {
          v52 = *(v4 + ((v9 + 2000) & v6));
          ++*(&v62 + v52);
          ++v46;
        }

        v53 = *(v4 + (v9 & v6));
        v54 = *(&v62 + v53);
        if (v54 <= 1)
        {
          v55 = 1;
        }

        else
        {
          v55 = *(&v62 + v53);
        }

        if (v46 > 0xFF)
        {
          v56 = log2(v46);
        }

        else
        {
          v56 = kBrotliLog2Table[v46];
        }

        if (v54 > 0xFF)
        {
          v57 = log2(v55);
        }

        else
        {
          v57 = kBrotliLog2Table[v55];
        }

        v8 = v60;
        v58 = v56 - v57 + 0.029;
        if (v58 < 1.0)
        {
          v58 = v58 * 0.5 + 0.5;
        }

        v59 = v58;
        *v2++ = v59;
        ++v9;
        v49 = v51 - 1999;
      }

      while (v51 - 1999 != v60);
    }
  }
}

unint64_t lz24_encode_buffer(char *a1, unint64_t a2, char *a3, unint64_t a4, char *__b, int a6)
{
  result = 0;
  if (!HIDWORD(a4) && (a6 - 32) >= 0xFFFFFFE1)
  {
    if ((a2 & 0x8000000000000000) != 0 || a2 < 4)
    {
      return 0;
    }

    else
    {
      *a1 = a4;
      v9 = a1 + 4;
      v80 = a1;
      if (a4)
      {
        v10 = __b;
        v12 = __b + 279520;
        v13 = (__b + 213488);
        v82 = &a1[a2];
        v14 = __b + 0x20000;
        v83 = a6 - 1;
        v84 = a4;
        __dst = __b + 147456;
        v81 = a4 + a3;
        v15 = a4;
        v16 = a3;
        v91 = __b + 279520;
        v90 = __b + 0x10000;
        while (1)
        {
          v87 = v15;
          if (v15 >= 0x1000)
          {
            v17 = 4096;
          }

          else
          {
            v17 = v15;
          }

          v18 = *(v12 + 1);
          if (v18 > 0x7F || (*(v12 + 2) ^ v18) != 0xE11CCA)
          {
            v18 = 0;
            *(v12 + 1) = 0;
          }

          v88 = v18;
          __src = v16;
          v19 = v16 - a3;
          if (((v16 - a3) & 0x7FFFFFFF) == 0)
          {
            result = memset(v10, (v19 >> 24) - 2, 0x10000uLL);
          }

          v20 = (v17 + v19);
          if (v20 > v19)
          {
            v21 = v19;
            v22 = v81 - v16;
            do
            {
              v23 = &v14[4 * (v21 & 0xFFF)];
              *v23 = 0;
              v24 = (v84 - v21);
              if (v24 >= 4)
              {
                v25 = *(v10 + ((-1640531535 * *&a3[v21]) >> 18));
                v26 = v21 - v25;
                v27 = (v21 - v25) >> 14;
                if (!v27)
                {
                  v28 = 64;
                  while (v28)
                  {
                    result = 0;
                    --v28;
                    v29 = 1;
                    while (1)
                    {
                      v30 = v29;
                      if (result + 16 > v24)
                      {
                        break;
                      }

                      v31 = veorq_s8(*&a3[v25 + result], *&a3[v21 + result]);
                      if (*&v31 != 0)
                      {
                        v33 = (__clz(__rbit64(v31.u64[1])) >> 3) + 8;
                        v34 = __clz(__rbit64(v31.u64[0])) >> 3;
                        if (v31.i64[0])
                        {
                          v33 = v34;
                        }

                        result = v33 + result;
                        if (result >= 0x1F)
                        {
                          LODWORD(v32) = 31;
                        }

                        else
                        {
                          LODWORD(v32) = result;
                        }

                        goto LABEL_40;
                      }

                      v29 = 0;
                      result = 16;
                      if ((v30 & 1) == 0)
                      {
LABEL_33:
                        LODWORD(v32) = 31;
                        goto LABEL_40;
                      }
                    }

                    if (result <= v22)
                    {
                      v32 = v22;
                    }

                    else
                    {
                      v32 = result;
                    }

                    while (v32 != result)
                    {
                      if (a3[(v21 + result)] != a3[v25 + result])
                      {
                        LODWORD(v32) = result;
                        break;
                      }

                      if (++result == 31)
                      {
                        goto LABEL_33;
                      }
                    }

LABEL_40:
                    if (v32 > v27)
                    {
                      *v23 = v32;
                      *(v23 + 1) = v26;
                      if (v32 == 31)
                      {
                        v27 = 31;
                        break;
                      }

                      v27 = v32;
                    }

                    v25 = *&v90[4 * (v25 & 0x3FFF)];
                    v26 = v21 - v25;
                    if (v21 - v25 >= 0x4000)
                    {
                      break;
                    }
                  }

                  if (v20 - v21 < v27)
                  {
                    *v23 = v17 + v19 - v21;
                  }
                }

                if (v21 >= 0x1F)
                {
                  v35 = (-1640531535 * *&a3[(v21 - 31)]) >> 18;
                  *&v90[4 * ((v21 - 31) & 0x3FFF)] = *(v10 + v35);
                  *(v10 + v35) = v21 - 31;
                }
              }

              ++v21;
              --v22;
            }

            while (v21 != v20);
          }

          v36 = 0;
          v37 = 128;
          v38 = v88;
LABEL_52:
          v39 = v38;
          while (v36 < v37)
          {
            result = memset(v13, 255, (16 * v17 + 496));
            v40 = 0;
            v41 = 0;
            *v13 = -0.0;
            *(v13 + 4) = 7936;
            while (1)
            {
              v42 = &v13[2 * v41];
              v43 = *(v42 + 1);
              if (v40 > v43)
              {
                *v42 = v43;
                *(v42 + 8) = *(v42 + 9);
                *(v42 + 10) = 0;
                *(v42 + 6) = 0;
                v40 = v43;
              }

              if (v41 == v17)
              {
                break;
              }

              v44 = *(v42 + 9);
              if (v44 != 31 && *(v42 + 5) > v43 + 4)
              {
                *(v42 + 5) = v43 + 4;
                *(v42 + 25) = v44 + 1;
              }

              v45 = v39 + 136 + v40;
              v46 = 31;
              do
              {
                v47 = &v42[2 * v46];
                if (*(v47 + 1) <= v45)
                {
                  break;
                }

                *(v47 + 1) = v45;
                *(v47 + 9) = v46;
                v45 -= 4;
                --v46;
              }

              while (v46);
              v48 = &v14[4 * v41];
              v49 = v43 + v39;
              v50 = *v48;
              v51 = &v42[2 * v50];
              result = *v51;
              if (result > v49)
              {
                *v51 = v49;
                *(v51 + 8) = v44;
                *(v51 + 10) = v50;
                *(v51 + 6) = *(v48 + 1);
                v40 = *v42;
                result = v49;
              }

              v52 = v39 + 12 + v40;
              if (result > v52)
              {
                *v51 = v52;
                *(v51 + 8) = 0;
                *(v51 + 10) = v50;
                *(v51 + 6) = *(v48 + 1);
              }

              ++v41;
              v40 = LODWORD(v13[2 * v41]);
            }

            v53 = 0;
            v54 = 0;
            v55 = v17;
            do
            {
              if (v55 > 0x1000)
              {
                goto LABEL_91;
              }

              v56 = &v13[2 * v55];
              v57 = *(v56 + 8);
              v54 += v57 + 3;
              v53 += a6;
              v55 -= v57 + *(v56 + 10);
            }

            while (v55);
            if (v53 <= v83 + v17)
            {
              result = memcpy(__dst, v13, (16 * v17 + 16));
              *v91 = v54;
              goto LABEL_77;
            }

            v36 = v39 + 1;
            if (v39 == *(v91 + 1))
            {
              v39 = (2 * v39) | 1u;
              if (v36 + v37 > 2 * v39)
              {
                continue;
              }
            }

            v39 = v37;
LABEL_77:
            v38 = (v39 + v36) >> 1;
            v37 = v39;
            goto LABEL_52;
          }

          *(v91 + 1) = v36;
          *(v91 + 2) = v36 ^ 0xE11CCA;
          if (v36 == 128)
          {
            break;
          }

          v58 = *v91;
          v59 = v82 - v9;
          v10 = __b;
          if (v58 >= v17 + 2)
          {
            if (v59 < (v17 + 2))
            {
              return 0;
            }

            *v9 = 0;
            v79 = v9 + 2;
            v78 = __src;
            result = memcpy(v79, __src, v17);
            v12 = v91;
            v9 = &v79[v17];
          }

          else
          {
            if (v59 < v58 + 1)
            {
              return 0;
            }

            v60 = &__dst[16 * v17];
            v61 = *v60;
            v62 = v60[8];
            v63 = v60[9];
            v64 = v60[10];
            v92 = *(v60 + 11);
            v93 = v60[15];
            v65 = v17;
            do
            {
              v65 -= v64 + v62;
              v66 = &__dst[16 * v65];
              v67 = *v66;
              v68 = v66[8];
              v69 = v66[9];
              v70 = v66[10];
              v71 = *(v66 + 11);
              v72 = v66[15];
              *v66 = v61;
              v66[8] = v62;
              v66[9] = v63;
              v66[10] = v64;
              *(v66 + 11) = v92;
              v66[15] = v93;
              v93 = v72;
              v92 = v71;
              v64 = v70;
              v63 = v69;
              v62 = v68;
              v61 = v67;
            }

            while (v65);
            v73 = 0;
            do
            {
              v74 = &__dst[16 * v73];
              v75 = v74[8];
              *v9 = v75 + 32 * v74[10] + (*(v74 + 6) << 10);
              v76 = v9 + 3;
              result = memcpy(v76, &__src[v73], v75);
              v77 = v74[8];
              v9 = &v76[v77];
              v73 += v77 + v74[10];
            }

            while (v73 < v17);
            v12 = v91;
            v78 = __src;
            v10 = __b;
          }

          v16 = &v78[v17];
          v15 = v87 - v17;
          if (v87 == v17)
          {
            return v9 - v80;
          }
        }

LABEL_91:
        __break(1u);
      }

      else
      {
        return v9 - v80;
      }
    }
  }

  return result;
}

uint64_t lz4raw_encode_buffer(int32x4_t *a1, uint64_t a2, char *a3, unint64_t a4, void *__b)
{
  v15 = a1;
  v16 = a3;
  v6 = a1;
  if (!a4)
  {
    return v6 - a1;
  }

  v8 = a4;
  v9 = a3;
  v11 = a1;
  while (1)
  {
    memset_pattern8(__b, &unk_29862DB60, 0x8000uLL);
    v12 = v8 >= 0x7FFFF000 ? 2147479552 : v8;
    lz4_encode_2gb(&v15, a2, &v16, v9, v12, __b, v8 > 0x7FFFF000);
    v6 = v15;
    v13 = &v16[-v9];
    if (v8 <= 0x7FFFF000 && v12 > v13)
    {
      break;
    }

    if (v8 >= 0x7FFFF001 && (v12 - v13) >> 16)
    {
      break;
    }

    a2 = &v11->i8[a2] - v15;
    v9 = v16;
    v11 = v15;
    v8 -= v13;
    if (!v8)
    {
      return v6 - a1;
    }
  }

  return 0;
}

char *lz4raw_decode_buffer(char *a1, unint64_t a2, unsigned __int8 *a3, unint64_t a4)
{
  v9 = a1;
  v10 = a3;
  if (a2 >= 0x81 && a4 >= 0x81 && lz4_decode_asm(&v9, a1, &a1[a2 - 128], &v10, &a3[a4 - 128]) || lz4_decode(&v9, a1, &a1[a2], &v10, &a3[a4]))
  {
    return 0;
  }

  else
  {
    return (v9 - a1);
  }
}

uint64_t BrotliSetDepth(int a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(v4) = 0;
  v9 = *MEMORY[0x29EDCA608];
  v8[0] = -1;
  while (1)
  {
    while (1)
    {
      v5 = a2 + 8 * a1;
      a1 = *(v5 + 4);
      if ((a1 & 0x80000000) == 0)
      {
        break;
      }

      *(a3 + *(v5 + 6)) = v4;
      if ((v4 & 0x80000000) != 0)
      {
        return 1;
      }

      while (1)
      {
        a1 = v8[v4];
        if (a1 != -1)
        {
          break;
        }

        v6 = v4 <= 0;
        LODWORD(v4) = v4 - 1;
        if (v6)
        {
          return 1;
        }
      }

      v8[v4] = -1;
    }

    if (v4 >= a4)
    {
      break;
    }

    v4 = v4 + 1;
    v8[v4] = *(v5 + 6);
  }

  return 0;
}

uint64_t BrotliCreateHuffmanTree(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v9 = result;
  v46 = a2 - 1;
  v10 = a4 + 8;
  for (i = 1; ; i *= 2)
  {
    if (!a2)
    {
      goto LABEL_21;
    }

    v12 = 0;
    v13 = v46;
    do
    {
      v14 = *(v9 + 4 * v13);
      if (v14)
      {
        if (v14 <= i)
        {
          v14 = i;
        }

        v15 = a4 + 8 * v12;
        *v15 = v14;
        ++v12;
        *(v15 + 4) = -1;
        *(v15 + 6) = v13;
      }

      --v13;
    }

    while (v13 != -1);
    if (v12 == 1)
    {
      break;
    }

    if (v12 > 0xC)
    {
      v25 = 2 * (v12 < 0x39);
      while (1)
      {
        v26 = kBrotliShellGaps[v25];
        if (v26 >= v12)
        {
          goto LABEL_35;
        }

        v27 = 0;
        v28 = kBrotliShellGaps[v25];
        do
        {
          v29 = *(a4 + 8 * v28);
          v30 = v28;
          if (v28 < v26)
          {
            goto LABEL_34;
          }

          v31 = v27;
          v32 = v28;
          while (1)
          {
            v33 = *(a4 + v31);
            if (v33 != v29)
            {
              break;
            }

            if (*(a4 + v31 + 6) >= SHIWORD(v29))
            {
              goto LABEL_33;
            }

LABEL_31:
            v30 = v32 - v26;
            *(a4 + 8 * v32) = *(a4 + v31);
            v31 -= 8 * v26;
            v32 = v30;
            if (v30 < v26)
            {
              goto LABEL_34;
            }
          }

          if (v33 > v29)
          {
            goto LABEL_31;
          }

LABEL_33:
          v30 = v32;
LABEL_34:
          *(a4 + 8 * v30) = v29;
          ++v28;
          v27 += 8;
        }

        while (v28 != v12);
LABEL_35:
        if (++v25 == 6)
        {
          goto LABEL_36;
        }
      }
    }

    if (v12)
    {
      v16 = 0;
      for (j = 1; j != v12; ++j)
      {
        v18 = *(a4 + 8 * j);
        v19 = v16;
        v20 = j;
        do
        {
          v21 = *(a4 + v19);
          if (v21 == v18)
          {
            if (*(a4 + v19 + 6) >= SHIWORD(v18))
            {
              break;
            }
          }

          else if (v21 <= v18)
          {
            break;
          }

          *(a4 + 8 * v20) = *(a4 + v19);
          v19 -= 8;
          --v20;
        }

        while (v20);
        *(a4 + 8 * v20) = v18;
        v16 += 8;
      }

LABEL_36:
      *&v34 = -1;
      *(&v34 + 1) = -1;
      *(a4 + 8 * v12) = v34;
      v23 = v12 - 1;
      v24 = v12 + 1;
      goto LABEL_37;
    }

LABEL_21:
    v12 = 0;
    *&v22 = -1;
    *(&v22 + 1) = -1;
    *a4 = v22;
    v23 = -1;
    v24 = 1;
LABEL_37:
    v35 = 0;
    v36 = (v10 - 8 * v23 + 16 * v12);
    do
    {
      v37 = *(a4 + 8 * v35);
      v38 = *(a4 + 8 * v24);
      v39 = v37 > v38;
      if (v37 > v38)
      {
        v40 = v35;
      }

      else
      {
        v40 = v35 + 1;
      }

      if (v39)
      {
        v41 = v24 + 1;
      }

      else
      {
        v41 = v24;
      }

      v42 = *(a4 + 8 * v40);
      v43 = *(a4 + 8 * v41);
      if (!v39)
      {
        v24 = v35;
      }

      v44 = v42 > v43;
      if (v42 > v43)
      {
        v45 = v41;
      }

      else
      {
        v45 = v40;
      }

      *(v36 - 2) = *(a4 + 8 * v45) + *(a4 + 8 * v24);
      *(v36 - 2) = v24;
      if (v44)
      {
        v35 = v40;
      }

      else
      {
        v35 = v40 + 1;
      }

      if (v44)
      {
        v24 = v41 + 1;
      }

      else
      {
        v24 = v41;
      }

      *(v36 - 1) = v45;
      *v36++ = -1;
      --v23;
    }

    while (v23);
    result = BrotliSetDepth(2 * v12 - 1, a4, a5, a3);
    if (result)
    {
      return result;
    }
  }

  *(a5 + *(a4 + 6)) = 1;
  return result;
}

void BrotliOptimizeHuffmanCountsForRle(size_t a1, int *a2, char *a3)
{
  if (a1)
  {
    v5 = a1;
    v6 = 0;
    v7 = 0;
    do
    {
      if (a2[v6])
      {
        ++v7;
      }

      ++v6;
    }

    while (a1 != v6);
    if (v7 >= 0x10)
    {
      v8 = a2 - 1;
      while (!v8[v5])
      {
        if (!--v5)
        {
          return;
        }
      }

      v9 = 0;
      v10 = 0;
      v11 = 0x40000000;
      do
      {
        v12 = v9;
        v13 = a2[v10];
        if (v11 >= v13)
        {
          v14 = a2[v10];
        }

        else
        {
          v14 = v11;
        }

        if (v13)
        {
          ++v9;
          v11 = v14;
        }

        ++v10;
      }

      while (v5 != v10);
      if (v9 >= 5)
      {
        if (v13)
        {
          v15 = v12 + 1;
        }

        else
        {
          v15 = v12;
        }

        v16 = v5 - v15;
        if (v11 <= 3 && v16 <= 5 && v5 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v19 = a2 + 1;
          v20 = v5 - 2;
          do
          {
            if (*(v19 - 1) && !*v19 && v19[1])
            {
              *v19 = 1;
            }

            ++v19;
            --v20;
          }

          while (v20);
        }

        if (v9 >= 0x1C)
        {
          bzero(a3, v5);
          v21 = 0;
          v22 = 0;
          v23 = *a2;
          do
          {
            if (v5 == v22 || a2[v22] != v23)
            {
              if (!v23 && v21 > 4 || v23 && v21 >= 7)
              {
                memset(&a3[v22 - v21], 1, v21);
              }

              if (v5 != v22)
              {
                v23 = a2[v22];
              }

              v21 = 1;
            }

            else
            {
              ++v21;
            }

            v24 = v22++ >= v5;
          }

          while (!v24);
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = vdupq_n_s64(4uLL);
          v29 = ((a2[1] + *a2 + a2[2]) << 8) / 3u + 420;
          do
          {
            if (v5 == v25 || a3[v25] || v25 && a3[v25 - 1] || (v42 = a2[v25], (v42 << 8) - v29 - 1240 <= 0xFFFFFFFFFFFFF64FLL))
            {
              v30 = &a2[v25];
              if (v27 > 3 || v27 == 3 && !v26)
              {
                v31 = 0;
                v32 = v26 + (v27 >> 1);
                if (v27 > v32)
                {
                  v33 = 1;
                }

                else
                {
                  v33 = v32 / v27;
                }

                if (v26)
                {
                  v34 = v33;
                }

                else
                {
                  v34 = 0;
                }

                v35 = (v27 + 3) & 0xFFFFFFFFFFFFFFFCLL;
                v36 = vdupq_n_s64(v27 - 1);
                v37 = v8;
                v38 = xmmword_29862D9D0;
                v39 = xmmword_29862D9C0;
                do
                {
                  v40 = vmovn_s64(vcgeq_u64(v36, v38));
                  if (vuzp1_s16(v40, 2).u8[0])
                  {
                    *v37 = v34;
                  }

                  if (vuzp1_s16(v40, 2).i8[2])
                  {
                    v30[v31 ^ 0x3FFFFFFFFFFFFFFELL] = v34;
                  }

                  if (vuzp1_s16(2, vmovn_s64(vcgeq_u64(v36, *&v39))).i32[1])
                  {
                    v30[v31 ^ 0xFFFFFFFFFFFFFFFDLL] = v34;
                    v30[v31 ^ 0x3FFFFFFFFFFFFFFCLL] = v34;
                  }

                  v31 += 4;
                  v39 = vaddq_s64(v39, v28);
                  v38 = vaddq_s64(v38, v28);
                  v37 -= 4;
                }

                while (v35 != v31);
              }

              if (v25 >= v5 - 2)
              {
                if (v25 >= v5)
                {
                  v41 = 0;
                }

                else
                {
                  v41 = a2[v25] << 8;
                }
              }

              else
              {
                v41 = ((v30[1] + *v30 + v30[2]) << 8) / 3u + 420;
              }

              v29 = v41;
              if (v5 == v25)
              {
                v26 = 0;
              }

              else
              {
                v26 = a2[v25];
              }

              v27 = 1;
            }

            else
            {
              ++v27;
              v26 += v42;
              if (v27 >= 4)
              {
                v29 = ((v26 << 8) + (v27 >> 1)) / v27;
                if (v27 == 4)
                {
                  v29 += 120;
                }
              }
            }

            ++v8;
            v24 = v25++ >= v5;
          }

          while (!v24);
        }
      }
    }
  }
}

uint64_t BrotliWriteHuffmanTree(uint64_t result, unint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    return result;
  }

  v5 = -a2;
  v6 = result - 1;
  while (!*(v6 + a2))
  {
    --v6;
    if (__CFADD__(v5++, 1))
    {
      if (a2 <= 0x32)
      {
        return result;
      }

LABEL_28:
      v8 = 0;
      v11 = 0;
      v9 = 0;
      v23 = 2;
      v22 = 2;
      goto LABEL_29;
    }
  }

  v8 = -v5;
  if (a2 <= 0x32)
  {
    v24 = 0;
    v25 = 0;
    if (!v5)
    {
      return result;
    }

LABEL_32:
    v26 = 0;
    v27 = 8;
    while (1)
    {
      v28 = *(result + v26);
      if ((*(result + v26) == 0 || !v24) && (*(result + v26) != 0 || !v25))
      {
        break;
      }

      if (v26 + 1 >= v8)
      {
        break;
      }

      v29 = 1;
      while (*(result + v26 + v29) == v28)
      {
        if (v8 - v26 == ++v29)
        {
          v29 = v8 - v26;
          break;
        }
      }

      if (*(result + v26))
      {
        goto LABEL_44;
      }

      if (v29 == 11)
      {
        *(a4 + *a3) = 0;
        *(a5 + *a3) = 0;
        v30 = *a3 + 1;
        *a3 = v30;
        v29 = 11;
        v31 = 7;
LABEL_70:
        *(a4 + v30) = 17;
        *(a5 + *a3) = v31 & 7;
        v44 = *a3;
        v45 = *a3 + 1;
        *a3 = v45;
        if (v31 >= 8)
        {
          do
          {
            v31 = (v31 >> 3) - 1;
            *(a4 + v45) = 17;
            *(a5 + *a3) = v31 & 7;
            v44 = *a3;
            v45 = *a3 + 1;
            *a3 = v45;
          }

          while (v31 > 7);
        }

        if (v44 > v30)
        {
          v46 = v30;
          do
          {
            v47 = *(a4 + v46);
            *(a4 + v46) = *(a4 + v44);
            *(a4 + v44) = v47;
            ++v46;
            --v44;
          }

          while (v46 < v44);
          v45 = *a3;
        }

        for (i = v45 - 1; v30 < i; --i)
        {
          v49 = *(a5 + v30);
          *(a5 + v30) = *(a5 + i);
          *(a5 + i) = v49;
          ++v30;
        }

        goto LABEL_67;
      }

      v31 = v29 - 3;
      if (v29 >= 3)
      {
        v30 = *a3;
        goto LABEL_70;
      }

      if (v29)
      {
LABEL_65:
        v42 = *a3;
        v43 = v29;
        do
        {
          *(a4 + v42) = 0;
          *(a5 + *a3) = 0;
          v42 = *a3 + 1;
          *a3 = v42;
          --v43;
        }

        while (v43);
      }

LABEL_67:
      v26 += v29;
      if (v26 >= v8)
      {
        return result;
      }
    }

    v29 = 1;
    if (!*(result + v26))
    {
      goto LABEL_65;
    }

LABEL_44:
    v32 = v29;
    if (v27 != v28)
    {
      *(a4 + *a3) = v28;
      *(a5 + (*a3)++) = 0;
      v32 = v29 - 1;
    }

    if (v32 == 7)
    {
      *(a4 + *a3) = v28;
      *(a5 + *a3) = 0;
      v33 = *a3 + 1;
      *a3 = v33;
      v34 = 3;
    }

    else
    {
      v34 = v32 - 3;
      if (v32 < 3)
      {
        if (v32)
        {
          v35 = *a3;
          do
          {
            *(a4 + v35) = v28;
            *(a5 + *a3) = 0;
            v35 = *a3 + 1;
            *a3 = v35;
            --v32;
          }

          while (v32);
        }

        goto LABEL_62;
      }

      v33 = *a3;
    }

    *(a4 + v33) = 16;
    *(a5 + *a3) = v34 & 3;
    v36 = *a3;
    v37 = *a3 + 1;
    *a3 = v37;
    if (v34 >= 4)
    {
      do
      {
        v34 = (v34 >> 2) - 1;
        *(a4 + v37) = 16;
        *(a5 + *a3) = v34 & 3;
        v36 = *a3;
        v37 = *a3 + 1;
        *a3 = v37;
      }

      while (v34 > 3);
    }

    if (v36 > v33)
    {
      v38 = v33;
      do
      {
        v39 = *(a4 + v38);
        *(a4 + v38) = *(a4 + v36);
        *(a4 + v36) = v39;
        ++v38;
        --v36;
      }

      while (v38 < v36);
      v37 = *a3;
    }

    for (j = v37 - 1; v33 < j; --j)
    {
      v41 = *(a5 + v33);
      *(a5 + v33) = *(a5 + j);
      *(a5 + j) = v41;
      ++v33;
    }

LABEL_62:
    v27 = v28;
    goto LABEL_67;
  }

  if (!v5)
  {
    goto LABEL_28;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = -v5;
  v13 = 1;
  v14 = 1;
  do
  {
    v15 = *(result + v10);
    if (v10 + 1 >= v8)
    {
      ++v10;
      v16 = 1;
    }

    else
    {
      v16 = 1;
      while (*(result + v10 + v16) == v15)
      {
        if (v12 - v10 == ++v16)
        {
          v16 = v12 - v10;
          break;
        }
      }

      v10 += v16;
    }

    v17 = v15 == 0;
    v18 = !v17;
    v19 = (v16 > 2) & v17;
    v14 += v19;
    if (v19)
    {
      v20 = v16;
    }

    else
    {
      v20 = 0;
    }

    v9 += v20;
    v21 = (v16 > 3) & v18;
    if (((v16 > 3) & v18) == 0)
    {
      v16 = 0;
    }

    v11 += v16;
    v13 += v21;
  }

  while (v10 < v8);
  v22 = 2 * v13;
  v23 = 2 * v14;
LABEL_29:
  v24 = v11 > v22;
  v25 = v9 > v23;
  if (v8)
  {
    goto LABEL_32;
  }

  return result;
}

unsigned __int8 *BrotliConvertBitDepthsToSymbols(unsigned __int8 *result, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x29EDCA608];
  memset(v14, 0, sizeof(v14));
  if (a2)
  {
    v3 = result;
    v4 = a2;
    do
    {
      v5 = *v3++;
      ++*(v14 + v5);
      --v4;
    }

    while (v4);
  }

  v6 = 0;
  v7 = 0;
  LOWORD(v14[0]) = 0;
  do
  {
    v7 = 2 * (v7 + *(v14 + v6));
    *&v13[v6 + 2] = v7;
    v6 += 2;
  }

  while (v6 != 30);
  if (a2)
  {
    for (i = 0; i != a2; ++i)
    {
      v9 = result[i];
      if (result[i])
      {
        v10 = *&v13[2 * v9];
        *&v13[2 * v9] = v10 + 1;
        v11 = BrotliReverseBits_kLut[v10 & 0xF];
        if (v9 >= 5)
        {
          for (j = 4; j < v9; j += 4)
          {
            v10 >>= 4;
            v11 = BrotliReverseBits_kLut[v10] | (16 * v11);
          }
        }

        *(a3 + 2 * i) = v11 >> (-v9 & 3);
      }
    }
  }

  return result;
}

uint64_t lzfse_decode_buffer_output_size(char *__src, uint64_t a2)
{
  if (a2 >= 1)
  {
    v2 = __src;
    v3 = 0;
    v4 = &__src[a2];
    do
    {
      v5 = (v2 + 4);
      if (v2 + 4 > v4)
      {
        return 0;
      }

      v6 = *v2;
      if (*v2 > 846755425)
      {
        if (v6 == 846755426)
        {
          goto LABEL_13;
        }

        if (v6 != 1853388386)
        {
          return 0;
        }

        if (v2 + 12 > v4)
        {
          return 0;
        }

        v7 = *(v2 + 2);
        if (&v2[v7 + 12] > v4)
        {
          return 0;
        }

        v8 = *v5;
        v9 = v7 + 12;
      }

      else
      {
        if (v6 != 762869346)
        {
          if (v6 != 829978210)
          {
            if (v6 == 611874402)
            {
              return v3;
            }

            return 0;
          }

LABEL_13:
          memset(v13, 0, 512);
          if (v6 == 846755426)
          {
            if (v2 + 32 > v4)
            {
              return 0;
            }

            v10 = *(v2 + 3);
            if ((v10 & 0xFFFFFFE0) == 0 || &v2[v10] > v4 || lzfseDecodeV1(v13, v2, v4))
            {
              return 0;
            }

            v11 = v10;
          }

          else
          {
            if (v2 + 772 > v4)
            {
              return 0;
            }

            memcpy(v13, v2, 0x304uLL);
            v11 = 772;
          }

          if (&v2[v11 + DWORD2(v13[0])] > v4)
          {
            return 0;
          }

          v8 = DWORD1(v13[0]);
          v9 = v11 + DWORD2(v13[0]);
          goto LABEL_26;
        }

        if (v2 + 8 > v4)
        {
          return 0;
        }

        v8 = *v5;
        if (&v2[v8 + 8] > v4)
        {
          return 0;
        }

        v9 = v8 + 8;
      }

LABEL_26:
      v2 += v9;
      v3 += v8;
    }

    while (v2 < v4);
  }

  return 0;
}

uint64_t lzfseDecodeV1(_DWORD *a1, uint64_t a2, unint64_t a3)
{
  bzero(a1, 0x304uLL);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 4);
  *a1 = 829978210;
  a1[1] = v8;
  v9 = v7 >> 10;
  v10 = v7 >> 20;
  v11 = v7 >> 30;
  v12 = (v7 >> 40) & 0xFFFFF;
  v13 = (v7 >> 60) & 7;
  LOWORD(v14) = v7;
  v15 = *(a2 + 24);
  WORD2(v14) = v10;
  v16 = (v6 >> 20) & 0xFFFFF;
  LOWORD(v14) = v14 & 0x3FF;
  WORD1(v14) = v9 & 0x3FF;
  WORD2(v14) &= 0x3FFu;
  HIWORD(v14) = v11 & 0x3FF;
  *(a1 + 4) = v14;
  a1[4] = (v6 >> 40) & 0xFFFFF;
  a1[5] = v16;
  a1[6] = v12;
  a1[7] = ((v6 >> 60) & 7) - 7;
  a1[10] = v13 - 7;
  *(a1 + 22) = WORD2(v15) & 0x3FF;
  *(a1 + 23) = (v15 >> 42) & 0x3FF;
  *(a1 + 24) = (v15 >> 52) & 0x3FF;
  a1[2] = v12 + v16;
  a1[3] = v6 & 0xFFFFF;
  if (v15 == 32)
  {
    return 0;
  }

  result = 0xFFFFFFFFLL;
  if (v15 >= 0x20)
  {
    v18 = (a2 + v15);
    if (v18 <= a3)
    {
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = (a2 + 32);
      do
      {
        if (v22 >= v18 || v20 > 24)
        {
          v23 = v20;
        }

        else
        {
          do
          {
            v23 = v20 + 8;
            v24 = *v22++;
            v21 |= v24 << v20;
            if (v22 >= v18)
            {
              break;
            }

            v25 = v20 < 17;
            v20 += 8;
          }

          while (v25);
        }

        v26 = lzfse_freq_nbits_table[v21 & 0x1F];
        if (v26 == 14)
        {
          v27 = ((v21 >> 4) & 0x3FF) + 24;
        }

        else if (v26 == 8)
        {
          LOWORD(v27) = (v21 >> 4) + 8;
        }

        else
        {
          LOWORD(v27) = lzfse_freq_value_table[v21 & 0x1F];
        }

        v28 = v26;
        *(a1 + v19 + 25) = v27;
        v20 = v23 - v26;
        if (v23 < v28)
        {
          return 0xFFFFFFFFLL;
        }

        v21 >>= v28;
        ++v19;
      }

      while (v19 != 360);
      v30 = v20 > 7 || v22 != v18;
      return (v30 << 31 >> 31);
    }
  }

  return result;
}

char *lzfse_decode_buffer_iboot(char *a1, uint64_t a2, char *a3, uint64_t a4, char **a5)
{
  bzero(a5 + 7, 0x1F60uLL);
  result = 0;
  *a5 = a3;
  a5[1] = a3;
  v11 = &a3[a4];
  a5[3] = a1;
  v191 = a5 + 3;
  a5[2] = &a3[a4];
  a5[5] = a1;
  a5[6] = 0;
  a5[4] = &a1[a2];
  if ((a1 & 3) != 0 || ((a1 + a2) & 3) != 0 || a4 < 4)
  {
    return result;
  }

  v12 = a3 + 4;
  v13 = a5 + 110;
  v14 = a5 + 150;
  v15 = a5 + 190;
  v16 = a5 + 318;
  v17 = a5 + 106;
  v190 = a5 + 490;
  v189 = a5 + 1006;
  v188 = a5 + 1002;
  while (1)
  {
    result = 0;
    v18 = *a3;
    *(a5 + 14) = *a3;
    if (v18 <= 846755425)
    {
      break;
    }

    if (v18 == 846755426)
    {
      goto LABEL_13;
    }

    if (v18 != 1853388386)
    {
      return result;
    }

    if ((lzfse_decode_lzvn_block_iboot(a5) & 0x80000000) != 0)
    {
      return 0;
    }

    a3 = *a5;
LABEL_131:
    result = 0;
    v11 = a5[2];
    if (a3 < v11)
    {
      v12 = a3 + 4;
      if ((a3 + 4) <= v11)
      {
        continue;
      }
    }

    return result;
  }

  if (v18 == 762869346)
  {
    v109 = (a3 + 8);
    if ((a3 + 8) > v11)
    {
      return 0;
    }

    v110 = *v12;
    if (&v109[v110] > v11 || (LZFSEIBootBufferPushN(v191, v110, v109) & 0x80000000) != 0)
    {
      return 0;
    }

    a3 = &(*a5)[v110 + 8];
    goto LABEL_130;
  }

  if (v18 != 829978210)
  {
    if (v18 == 611874402)
    {
      *a5 = v12;
      if (*(a5 + 13))
      {
        v182 = a5[5];
        *v182 = *(a5 + 12);
        v183 = *(a5 + 13);
      }

      else
      {
        v183 = 0;
        v182 = a5[5];
      }

      return &v182[v183 - *v191];
    }

    return result;
  }

LABEL_13:
  *(a5 + 208) = 0;
  if (v18 == 846755426)
  {
    if ((a3 + 32) > v11)
    {
      return 0;
    }

    result = 0;
    v19 = *(a3 + 3);
    *(a5 + 208) = v19;
    if (v19 < 0x20 || &a3[v19] > v11)
    {
      return result;
    }

    if (lzfseDecodeV1(a5 + 15, a3, v11))
    {
      return 0;
    }
  }

  else
  {
    if ((a3 + 772) > v11)
    {
      return 0;
    }

    memcpy(a5 + 60, a3, 0x304uLL);
    *(a5 + 208) = 772;
  }

  v20 = 0;
  for (i = 110; i != 150; i += 2)
  {
    v20 += *(a5 + i);
  }

  v22 = 0;
  for (j = 150; j != 190; j += 2)
  {
    v22 += *(a5 + j);
  }

  v24 = 0uLL;
  v25 = 0uLL;
  v26 = 0uLL;
  v27 = 0uLL;
  do
  {
    v28 = *(a5 + j);
    v29 = vmovl_u16(*v28.i8);
    v30 = vmovl_high_u16(v28);
    v27 = vaddw_high_u32(v27, v30);
    v26 = vaddw_u32(v26, *v30.i8);
    v25 = vaddw_high_u32(v25, v29);
    v24 = vaddw_u32(v24, *v29.i8);
    j += 16;
  }

  while (j != 318);
  v31 = vaddvq_s64(vaddq_s64(vaddq_s64(v24, v26), vaddq_s64(v25, v27)));
  v32 = 0uLL;
  v33 = 318;
  v34 = 0uLL;
  v35 = 0uLL;
  v36 = 0uLL;
  do
  {
    v37 = *(a5 + v33);
    v38 = vmovl_u16(*v37.i8);
    v39 = vmovl_high_u16(v37);
    v36 = vaddw_high_u32(v36, v39);
    v35 = vaddw_u32(v35, *v39.i8);
    v34 = vaddw_high_u32(v34, v38);
    v32 = vaddw_u32(v32, *v38.i8);
    v33 += 16;
  }

  while (v33 != 830);
  v40 = vbicq_s8(xmmword_29864E080, vmovl_s16(vcgt_u16(0x400040004000400, *(a5 + 92))));
  v41 = vorr_s8(*v40.i8, *&vextq_s8(v40, v40, 8uLL));
  v42 = ((vaddvq_s64(vaddq_s64(vaddq_s64(v32, v35), vaddq_s64(v34, v36))) > 0x400) << 13) | ((v31 > 0x100) << 12);
  v43 = ((*(a5 + 54) > 0xFFu) << 9) | ((*(a5 + 53) > 0x3Fu) << 8) | ((v22 > 0x40) << 11) | ((v20 > 0x40) << 10);
  if (*(a5 + 15) == 829978210)
  {
    v44 = v42;
  }

  else
  {
    v44 = v42 + 1;
  }

  if (v41.i32[0] | v41.i32[1] | (2 * (*(a5 + 18) > 0x9C40u)) | ((*(a5 + 52) > 0x3Fu) << 7) | (4 * (*(a5 + 19) > 0x2710u)) | v43 | v44 || &(*a5)[*(a5 + 208) + *(a5 + 17)] > a5[2])
  {
    return 0;
  }

  v187 = *(a5 + 17);
  v45 = 0;
  v46 = 0;
  v47 = a5 + 490;
  do
  {
    v48 = *(v16 + 2 * v45);
    if (*(v16 + 2 * v45))
    {
      v46 += v48;
      if (v46 > 1024)
      {
        return 0;
      }

      v49 = 0;
      v50 = __clz(v48);
      v51 = v50 - 21;
      v52 = 0x800u >> (v50 - 21);
      v53 = v52 - v48;
      v54 = v50 - 22;
      v55 = v48 - v52;
      do
      {
        v56 = (v55 + v49) << v54;
        if (v49 < v53)
        {
          v57 = v51;
        }

        else
        {
          v57 = v54;
        }

        if (v49 < v53)
        {
          LOWORD(v56) = ((v48 + v49) << v51) - 1024;
        }

        *v47 = v57;
        *(v47 + 1) = v45;
        *(v47 + 1) = v56;
        v47 = (v47 + 4);
        ++v49;
      }

      while (v48 != v49);
    }

    ++v45;
  }

  while (v45 != 256);
  v58 = 0;
  v59 = v17;
  do
  {
    v60 = *(v13 + 2 * v58);
    if (*(v13 + 2 * v58))
    {
      v61 = 0;
      v62 = __clz(v60);
      v63 = v62 - 25;
      v64 = 0x80u >> (v62 - 25);
      v65 = v64 - v60;
      v66 = kLSymbolVBits[v58];
      v67 = kLSymbolVBase[v58];
      v68 = v62 - 26;
      v69 = v60 - v64;
      do
      {
        v70 = (v69 + v61) << v68;
        if (v61 < v65)
        {
          v71 = v63;
        }

        else
        {
          v71 = v68;
        }

        if (v61 < v65)
        {
          LOWORD(v70) = ((v60 + v61) << v63) - 64;
        }

        *v59 = v66 + v71;
        *(v59 + 1) = v66;
        *(v59 + 1) = v70;
        *(v59++ + 1) = v67;
        ++v61;
      }

      while (v60 != v61);
    }

    ++v58;
  }

  while (v58 != 20);
  v72 = 0;
  v73 = a5 + 170;
  do
  {
    v74 = *(v14 + 2 * v72);
    if (*(v14 + 2 * v72))
    {
      v75 = 0;
      v76 = __clz(v74);
      v77 = v76 - 25;
      v78 = 0x80u >> (v76 - 25);
      v79 = v78 - v74;
      v80 = kMSymbolVBits[v72];
      v81 = kMSymbolVBase[v72];
      v82 = v76 - 26;
      v83 = v74 - v78;
      do
      {
        v84 = (v83 + v75) << v82;
        if (v75 < v79)
        {
          v85 = v77;
        }

        else
        {
          v85 = v82;
        }

        if (v75 < v79)
        {
          LOWORD(v84) = ((v74 + v75) << v77) - 64;
        }

        *v73 = v80 + v85;
        *(v73 + 1) = v80;
        *(v73 + 1) = v84;
        *(v73++ + 1) = v81;
        ++v75;
      }

      while (v74 != v75);
    }

    ++v72;
  }

  while (v72 != 20);
  v86 = 0;
  v87 = a5 + 234;
  do
  {
    v88 = *(v15 + 2 * v86);
    if (*(v15 + 2 * v86))
    {
      v89 = 0;
      v90 = __clz(v88);
      v91 = v90 - 23;
      v92 = 0x200u >> (v90 - 23);
      v93 = v92 - v88;
      v94 = kDSymbolVBits[v86];
      v95 = kDSymbolVBase[v86];
      v96 = v90 - 24;
      v97 = v88 - v92;
      do
      {
        v98 = (v97 + v89) << v96;
        if (v89 < v93)
        {
          v99 = v91;
        }

        else
        {
          v99 = v96;
        }

        if (v89 < v93)
        {
          LOWORD(v98) = ((v88 + v89) << v91) - 256;
        }

        *v87 = v94 + v99;
        *(v87 + 1) = v94;
        *(v87 + 1) = v98;
        *(v87++ + 1) = v95;
        ++v89;
      }

      while (v88 != v89);
    }

    ++v86;
  }

  while (v86 != 64);
  *(a5 + 210) = *(a5 + 18);
  v100 = *a5;
  v101 = *(a5 + 208);
  v102 = &(*a5)[v101 + *(a5 + 20)];
  a5[1008] = v102;
  v103 = a5[2];
  if (v102 > v103)
  {
    return 0;
  }

  a5[1010] = 0;
  v104 = *(a5 + 92);
  a5[1009] = v104;
  v105 = *(a5 + 22);
  v106 = a5[1];
  if (v105)
  {
    if (v102 < (v106 + 8))
    {
      return 0;
    }

    a5[1008] = (v102 - 8);
    v107 = *(v102 - 8);
    a5[1006] = v107;
    v108 = v105 + 64;
    *(a5 + 2014) = v105 + 64;
    if (v105 < 0xFFFFFFF8)
    {
      return 0;
    }
  }

  else
  {
    if (v102 < (v106 + 7))
    {
      return 0;
    }

    a5[1008] = (v102 - 7);
    v111 = *(v102 - 7);
    *(a5 + 8051) = *(v102 - 4);
    *v189 = v111;
    v107 = a5[1006] & 0xFFFFFFFFFFFFFFLL;
    a5[1006] = v107;
    v108 = 56;
    *(a5 + 2014) = 56;
  }

  v113 = v107 >> v108 == 0;
  v112 = vaddv_s16(vand_s8(vcgt_u16(v104, 0xFC00FC00FC00FC00), 0x8000400020001)) & 0xF;
  v113 = v113 && v112 == 0;
  if (!v113)
  {
    return 0;
  }

  v114 = *(a5 + 19);
  *(a5 + 209) = v114;
  v115 = v102 + *(a5 + 21);
  a5[1004] = v115;
  if (v115 > v103)
  {
    return 0;
  }

  v116 = *(a5 + 52);
  *(a5 + 4020) = v116;
  v117 = *(a5 + 53);
  *(a5 + 4021) = v117;
  v118 = *(a5 + 54);
  *(a5 + 4022) = v118;
  v119 = *(a5 + 25);
  if (v119)
  {
    if (v115 < (v106 + 8))
    {
      return 0;
    }

    a5[1004] = (v115 - 8);
    v120 = *(v115 - 8);
    a5[1002] = v120;
    v121 = v119 + 64;
    *(a5 + 2006) = v119 + 64;
    if (v119 < 0xFFFFFFF8)
    {
      return 0;
    }
  }

  else
  {
    if (v115 < (v106 + 7))
    {
      return 0;
    }

    a5[1004] = (v115 - 7);
    v122 = *(v115 - 7);
    *(a5 + 8019) = *(v115 - 4);
    *v188 = v122;
    v120 = a5[1002] & 0xFFFFFFFFFFFFFFLL;
    a5[1002] = v120;
    v121 = 56;
    *(a5 + 2006) = 56;
  }

  result = 0;
  if (v120 >> v121)
  {
    return result;
  }

  if (v116 > 0x3F)
  {
    return result;
  }

  if (v117 > 0x3F)
  {
    return result;
  }

  v123 = __OFSUB__(v118, 255);
  if (v118 > 0xFF)
  {
    return result;
  }

  if (!v114)
  {
LABEL_129:
    a3 = (v100 + (v101 + v187));
LABEL_130:
    *a5 = a3;
    goto LABEL_131;
  }

  v124 = 0;
  v125 = 0;
  v184 = v17;
  while (1)
  {
    v126 = *(a5 + 2006);
    v127 = 63 - v126;
    v128 = (63 - v126) & 0xFFFFFFF8;
    v186 = v124;
    if ((v127 < 0) ^ v123 | ((v127 & 0xFFFFFFF8) == 0))
    {
      v130 = *v188;
    }

    else
    {
      v129 = &a5[1004][-(v127 >> 3)];
      if (v129 < a5[1])
      {
        return 0;
      }

      a5[1004] = v129;
      v130 = (FSE_mask_lsb64_mtable[v128] & *v129 | (a5[1002] << v128));
      a5[1002] = v130;
      v126 += v128;
      *(a5 + 2006) = v126;
    }

    result = 0;
    v131 = &v17[*(a5 + 4020)];
    v132 = *v131;
    v133 = *(v131 + 1);
    v134 = *(v131 + 1);
    v135 = *(v131 + 1);
    v136 = v126 - v132;
    *(a5 + 2006) = v136;
    v137 = v130 >> v136;
    v138 = FSE_mask_lsb64_mtable[v136] & v130;
    a5[1002] = v138;
    v139 = v134 + ((v130 >> v136) >> v133);
    v140 = v139;
    *(a5 + 4020) = v139;
    v141 = FSE_mask_lsb64_mtable[v133];
    v142 = &a5[*(a5 + 4021) + 170];
    v143 = *v142;
    v144 = *(v142 + 1);
    v145 = *(v142 + 2);
    v185 = *(v142 + 4);
    LODWORD(v142) = v136 - v143;
    *(a5 + 2006) = v136 - v143;
    v146 = v138 >> (v136 - v143);
    v147 = FSE_mask_lsb64_mtable[v136 - v143] & v138;
    a5[1002] = v147;
    v148 = v145 + (v146 >> v144);
    *(a5 + 4021) = v145 + (v146 >> v144);
    v149 = FSE_mask_lsb64_mtable[v144];
    v150 = &a5[*(a5 + 4022) + 234];
    v151 = *(v150 + 1);
    LODWORD(v142) = v142 - *v150;
    *(a5 + 2006) = v142;
    v152 = v147 >> v142;
    v153 = (FSE_mask_lsb64_mtable[v142] & v147);
    v154 = *(v150 + 1);
    v155 = *(v150 + 1);
    a5[1002] = v153;
    *(a5 + 4022) = v154 + (v152 >> v151);
    if (v155 + (FSE_mask_lsb64_mtable[v151] & v152))
    {
      v125 = v155 + (FSE_mask_lsb64_mtable[v151] & v152);
    }

    if (v140 > 0x3F || v148 > 0x3Fu || (v154 + (v152 >> v151)) > 0xFFu)
    {
      return result;
    }

    v156 = v135 + (v141 & v137);
    if (v156)
    {
      v157 = *(a5 + 2021);
      do
      {
        if (v157)
        {
          v158 = *(a5 + 2020);
        }

        else
        {
          v159 = *(a5 + 210);
          v161 = __OFSUB__(v159, 4);
          v160 = v159 >= 4;
          v162 = v159 - 4;
          if (!v160)
          {
            return 0;
          }

          *(a5 + 2020) = 0;
          v163 = *(a5 + 2014);
          v164 = 63 - v163;
          v165 = (63 - v163) & 0xFFFFFFF8;
          if ((v164 < 0) ^ v161 | ((v164 & 0xFFFFFFF8) == 0))
          {
            v167 = *v189;
          }

          else
          {
            v166 = &a5[1008][-(v164 >> 3)];
            if (v166 < a5[1])
            {
              return 0;
            }

            a5[1008] = v166;
            v167 = FSE_mask_lsb64_mtable[v165] & *v166 | (a5[1006] << v165);
            v163 += v165;
            *(a5 + 2014) = v163;
          }

          v168 = *(v190 + *(a5 + 4036));
          v169 = v163 - v168;
          *(a5 + 2014) = v169;
          v170 = v167 >> v169;
          v171 = FSE_mask_lsb64_mtable[v169] & v167;
          *(a5 + 4036) = v170 + HIWORD(v168);
          *(a5 + 2020) = BYTE1(v168);
          LODWORD(v170) = *(v190 + *(a5 + 4037));
          v172 = v169 - v170;
          *(a5 + 2014) = v172;
          v173 = v171 >> v172;
          v174 = FSE_mask_lsb64_mtable[v172] & v171;
          *(a5 + 4037) = v173 + WORD1(v170);
          LODWORD(v173) = v170 & 0xFF00 | BYTE1(v168);
          *(a5 + 2020) = v173;
          v175 = *(v190 + *(a5 + 4038));
          v176 = v172 - v175;
          *(a5 + 2014) = v176;
          v177 = v174 >> v176;
          v178 = FSE_mask_lsb64_mtable[v176] & v174;
          *(a5 + 4038) = v177 + HIWORD(v175);
          LODWORD(v173) = v173 & 0xFF00FFFF | (BYTE1(v175) << 16);
          *(a5 + 2020) = v173;
          v179 = *(v190 + *(a5 + 4039));
          v180 = v176 - v179;
          *(a5 + 2014) = v180;
          a5[1006] = (FSE_mask_lsb64_mtable[v180] & v178);
          *(a5 + 4039) = (v178 >> v180) + HIWORD(v179);
          v158 = v173 & 0xFFFFFF | (BYTE1(v179) << 24);
          *(a5 + 2020) = v158;
          *(a5 + 2021) = 4;
          *(a5 + 210) = v162;
        }

        if ((LZFSEIBootBufferPush(v191, v158) & 0x80000000) != 0)
        {
          return 0;
        }

        *(a5 + 2020) >>= 8;
        v157 = *(a5 + 2021) - 1;
        *(a5 + 2021) = v157;
      }

      while (--v156);
    }

    if ((LZFSEIBootBufferCopy(v191, v185 + (v149 & v146), v125) & 0x80000000) != 0)
    {
      return 0;
    }

    v124 = v186 + 1;
    v181 = *(a5 + 209);
    v123 = __OFSUB__(v186 + 1, v181);
    v17 = v184;
    if (v186 + 1 >= v181)
    {
      LODWORD(v101) = *(a5 + 208);
      v100 = *a5;
      goto LABEL_129;
    }
  }
}

uint64_t lzfse_decode_lzvn_block_iboot(void *a1)
{
  v1 = *a1 + 12;
  v2 = a1[2];
  if (v1 <= v2)
  {
    v3 = *(*a1 + 8);
    if (v1 + v3 <= v2)
    {
      if (v3)
      {
        __asm { BRAA            X9, X17 }
      }
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t LZFSEIBootBufferPushN(uint64_t a1, unsigned int a2, unsigned __int8 *a3)
{
  v4 = a2;
  if (*(a1 + 16) + a2 <= *(a1 + 8))
  {
    if (a2)
    {
      while (*(a1 + 28))
      {
        if ((LZFSEIBootBufferPush(a1, *a3) & 0x80000000) != 0)
        {
          return 0xFFFFFFFFLL;
        }

        ++a3;
        if (!--v4)
        {
          return 0;
        }
      }

      if (v4 < 4)
      {
        goto LABEL_15;
      }

      v6 = *(a1 + 16) + 4;
      do
      {
        v7 = *a3;
        a3 += 4;
        *(v6 - 4) = v7;
        *(a1 + 16) = v6;
        v4 -= 4;
        v6 += 4;
      }

      while (v4 > 3);
      if (v4)
      {
LABEL_15:
        while ((LZFSEIBootBufferPush(a1, *a3) & 0x80000000) == 0)
        {
          ++a3;
          if (!--v4)
          {
            return 0;
          }
        }

        return 0xFFFFFFFFLL;
      }
    }

    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  while ((LZFSEIBootBufferPush(a1, *a3) & 0x80000000) == 0)
  {
    ++a3;
    if (!--v4)
    {
      return 0;
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t LZFSEIBootBufferPush(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  if (v2 >= *(a1 + 8))
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(a1 + 28);
  v4 = (a2 << (8 * v3++)) | *(a1 + 24);
  *(a1 + 24) = v4;
  *(a1 + 28) = v3;
  if (v3 != 4)
  {
    return 0;
  }

  v5 = 0;
  *v2 = v4;
  *(a1 + 16) = v2 + 1;
  *(a1 + 24) = 0;
  return v5;
}

uint64_t LZFSEIBootBufferCopy(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v3 = a2 != 0;
  if (a3 && a2)
  {
    v6 = 0;
    v7 = a3;
    v8 = (a1 + 24);
    while (1)
    {
      v9 = *(a1 + 16);
      v10 = *(a1 + 28);
      v11 = v9 - v7 - *a1;
      v13 = &v11[v10];
      v12 = &v11[v10] < 0;
      v14 = (v11 + v10) & 3;
      v15 = (*a1 + (v13 & 0xFFFFFFFFFFFFFFFCLL));
      if (v12 || v15 >= v9)
      {
        v16 = v15 != v9 || v14 >= v10;
        v15 = v8;
        if (v16)
        {
          break;
        }
      }

      if ((LZFSEIBootBufferPush(a1, (*v15 >> (8 * v14))) & 0x80000000) != 0)
      {
        break;
      }

      if (++v6 >= a2)
      {
        v3 = 0;
        return (v3 << 31 >> 31);
      }
    }

    v3 = 1;
  }

  return (v3 << 31 >> 31);
}

uint64_t is_format_msb_layout(int a1)
{
  if ((a1 - 6) > 6)
  {
    return 0;
  }

  else
  {
    return dword_29864E2A0[a1 - 6];
  }
}

uint64_t get_format_components(int a1, int a2)
{
  v2 = 1;
  if (a1 <= 6)
  {
    if (a1 < 7)
    {
      return v2;
    }

    return 0;
  }

  if (a1 >= 13)
  {
    if ((a1 - 15) < 2)
    {
      return v2;
    }

    if (a1 == 13)
    {
      return 3;
    }

    if (a1 == 14)
    {
      return 4;
    }

    return 0;
  }

  if (a2)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t get_format_convert_at_once(int a1)
{
  if (a1 == 16)
  {
    v1 = 4;
  }

  else
  {
    v1 = 1;
  }

  if (a1 == 15)
  {
    return 2;
  }

  else
  {
    return v1;
  }
}

uint64_t get_format_process_at_once(int a1)
{
  if ((a1 - 15) >= 2)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

const char *is_format_invalid(unsigned int a1, unsigned int a2, int a3, int a4)
{
  if (a1 > 0x10)
  {
    return "unknown format";
  }

  v4 = "width/height is 0";
  if (a2 && a3)
  {
    if ((a3 | a2) >> 16)
    {
      return "width/height too large";
    }

    else
    {
      if (a1 - 1 > 0xA)
      {
        v6 = 0;
      }

      else
      {
        v6 = dword_29864E328[a1 - 1];
      }

      if ((v6 & a2) != 0)
      {
        return "width/format invalid";
      }

      v7 = a1 == 16 ? 65539 : 0x10000;
      v8 = a1 == 15 ? 65537 : v7;
      if ((v8 & a2) != 0)
      {
        return "width/format invalid";
      }

      else
      {
        if (a1 > 0xA || (v9 = 1, ((1 << a1) & 0x482) == 0))
        {
          v9 = 0;
        }

        if (((v9 | v8) & a3) != 0)
        {
          return "height/format invalid";
        }

        else
        {
          v4 = "bits/sample invalid";
          if ((a4 - 17) >= 0xFFFFFFF7 && get_format_bits(a1, a4) == a4)
          {
            return 0;
          }
        }
      }
    }
  }

  return v4;
}

uint64_t get_format_bits(int a1, int a2)
{
  if (a1 <= 9)
  {
    if (a1 < 6 || (a1 - 7) < 3)
    {
      return a2;
    }

    goto LABEL_9;
  }

  if (((1 << a1) & 0x1C00) != 0)
  {
LABEL_9:
    if ((a2 - 9) >= 7)
    {
      LOBYTE(a2) = 0;
    }

    return a2;
  }

  if (((1 << a1) & 0x16000) != 0)
  {
    LOBYTE(a2) = 8;
  }

  return a2;
}

_DWORD *yzip_image_create(unsigned int a1, unsigned int a2, int a3, unsigned int a4)
{
  if (is_format_invalid(a4, a1, a2, a3))
  {
    return 0;
  }

  format_plane_count = get_format_plane_count(a4);
  result = calloc(1uLL, (32 * format_plane_count) | 0x10u);
  if (result)
  {
    result[1] = format_plane_count;
    result[2] = a4;
    if (format_plane_count)
    {
      v10 = 0;
      v11 = a4 - 1;
      v15 = result;
      for (i = result + 10; ; i += 8)
      {
        if (v10)
        {
          if (v11 > 0xA)
          {
            LOBYTE(v13) = 0;
          }

          else
          {
            v13 = dword_29864E328[v11];
          }

          if (a4 <= 0xA && ((1 << a4) & 0x482) != 0)
          {
            v14 = 1;
            goto LABEL_16;
          }
        }

        else
        {
          LOBYTE(v13) = 0;
        }

        v14 = 0;
LABEL_16:
        *(i - 2) = a1 >> v13;
        *(i - 1) = a2 >> v14;
        *i = a3;
        *(i - 2) = (get_format_components(a4, v10++) << (a3 > 8u)) * (a1 >> v13);
        if (format_plane_count == v10)
        {
          return v15;
        }
      }
    }
  }

  return result;
}

uint64_t get_format_plane_count(unsigned int a1)
{
  if (a1 > 0x10)
  {
    return 0;
  }

  else
  {
    return byte_29864E2BC[a1];
  }
}

unsigned int *yzip_image_create_with_payload(unsigned int *a1, unint64_t a2)
{
  result = header_fetch_from_payload(a1, a2);
  if (result)
  {
    v3 = *(result + 10);
    v4 = *(result + 26);
    v5 = *(result + 16);
    v6 = *(result + 9);

    return yzip_image_create(v6, v3, v4, v5);
  }

  return result;
}

unsigned int *header_fetch_from_payload(unsigned int *a1, unint64_t a2)
{
  if (a2 < 0x12)
  {
    return 0;
  }

  v4 = *(a1 + 17);
  v5 = 10 * v4 + 18;
  if (v5 > a2)
  {
    return 0;
  }

  v6 = *a1;
  if (v6 > a2)
  {
    return 0;
  }

  v7 = *(a1 + 2);
  if (v5 > v7 || v6 <= *(a1 + 3) + v7)
  {
    return 0;
  }

  v9 = a1[2];
  if (v9 != 1297111641 && v9 != 810572377)
  {
    return 0;
  }

  result = 0;
  if (v4)
  {
    v10 = *(a1 + 16);
    if (v10 <= 0x10)
    {
      v11 = 0;
      for (i = a1 + 27; ; i += 10)
      {
        v13 = *(i - 9);
        if (!*(i - 9))
        {
          break;
        }

        v14 = *(i - 5);
        if (v13 <= (v14 - 1))
        {
          break;
        }

        v15 = *(i - 7);
        if (!*(i - 7))
        {
          break;
        }

        v16 = *(i - 3);
        if (v15 <= (v16 - 1) || v14 <= 0x3F && v13 != v14)
        {
          break;
        }

        if (v16 <= 0x3F && v15 != v16)
        {
          break;
        }

        if (*(i - 1) - 17 < 0xFFFFFFF7)
        {
          break;
        }

        v17 = *i;
        if (v17 != get_format_components(v10, v11))
        {
          break;
        }

        if (v4 == ++v11)
        {
          return a1;
        }
      }

      return 0;
    }
  }

  return result;
}

uint64_t *yzip_image_encode(uint64_t a1, uint64_t a2, unsigned __int16 *a3, unint64_t a4)
{
  v7 = a1;
  if (!is_image_valid(a1))
  {
    return 0;
  }

  if (!is_image_valid(v7))
  {
    return 0;
  }

  v8 = 10 * v7[1];
  v9 = v8 + 18;
  if (v8 + 18 > a4)
  {
    return 0;
  }

  v11 = 810572377;
  bzero(a3, v8 + 18);
  a3[2] = v9;
  *(a3 + 2) = 810572377;
  *(a3 + 3) = *v7;
  *(a3 + 16) = v7[2];
  *(a3 + 17) = v7[1];
  if (!v7[1])
  {
    *a3 = v9 & 0xFFFE;
    v37 = (a3 + (v9 & 0xFFFE));
    v38 = a4 - (v9 & 0xFFFE);
    goto LABEL_63;
  }

  v48 = v9;
  v49 = a4;
  v50 = a2;
  v12 = 0;
  v52 = v7 + 4;
  v53 = a3 + 9;
  v13 = v7[2];
  v57 = 810572377;
  v14 = 810572377;
  v54 = v7;
  v55 = a3;
  do
  {
    v15 = &v53[5 * v12];
    v16 = &v52[8 * v12];
    v17 = v16[4];
    v18 = v16[5];
    *v15 = v17;
    v15[1] = v18;
    *(v15 + 8) = v16[6];
    *(v15 + 9) = get_format_components(v13, v12);
    v15[2] = v17;
    v58 = v15;
    v15[3] = v18;
    if (v14 == 1297111641)
    {
      v19 = v57;
      v20 = 1297111641;
      goto LABEL_26;
    }

    v51 = v18;
    if (v12)
    {
      LOWORD(v21) = v18;
      LOWORD(v22) = v17;
LABEL_12:
      v23 = 1;
      v24 = 3;
      do
      {
        v25 = v24 - 1;
        if (v22 <= v21)
        {
          v21 = (v25 + v21) / v24;
          v58[3] = v21;
        }

        else
        {
          v22 = (v25 + v22) / v24;
          v58[2] = v22;
        }

        v23 *= v24;
        v24 = 2;
      }

      while (v23 < 0x18);
      v19 = v57;
      v20 = v14;
      goto LABEL_18;
    }

    format_plane_count = get_format_plane_count(v13);
    if (!format_plane_count)
    {
      LOWORD(v21) = v18;
      LOWORD(v22) = v17;
      goto LABEL_49;
    }

    v29 = format_plane_count;
    LOWORD(v22) = v17;
    LOWORD(v21) = v18;
    while (2)
    {
      v56 = v11;
      v30 = 0;
      v31 = 0;
      v32 = v13 - 1;
      do
      {
        if (!v31)
        {
          LOBYTE(v33) = 0;
LABEL_35:
          v34 = 0;
          goto LABEL_40;
        }

        if (v32 > 0xA)
        {
          LOBYTE(v33) = 0;
        }

        else
        {
          v33 = qword_29864E2D0[v32];
        }

        if (v13 > 0xA || ((1 << v13) & 0x482) == 0)
        {
          goto LABEL_35;
        }

        v34 = 1;
LABEL_40:
        v30 += (v21 >> v34) * (v22 >> v33) * get_format_components(v13, v31++);
      }

      while (v29 != v31);
      if (v30 >= 0x600000)
      {
        v7 = v54;
        a3 = v55;
        if (v22 <= v21)
        {
          v21 = (v21 + 1) >> 1;
          v58[3] = v21;
        }

        else
        {
          v22 = (v22 + 1) >> 1;
          v58[2] = v22;
        }

        *(v55 + 2) = 1297111641;
        v13 = v54[2];
        v29 = get_format_plane_count(v13);
        v11 = 1297111641;
        v19 = 1297111641;
        v57 = 1297111641;
        if (!v29)
        {
          v20 = 1297111641;
          v12 = 0;
          goto LABEL_18;
        }

        continue;
      }

      break;
    }

    v7 = v54;
    a3 = v55;
    v12 = 0;
    v11 = v56;
LABEL_49:
    v14 = v57;
    v19 = 1297111641;
    v20 = 1297111641;
    if (v57 != 1297111641)
    {
      goto LABEL_12;
    }

LABEL_18:
    v26 = (v22 + 7) & 0xFFF8;
    v58[2] = v26;
    v27 = (v21 + 7) & 0xFFF8;
    v58[3] = v27;
    if ((v22 + 7) <= 0x3Fu)
    {
      v26 = 64;
      v58[2] = 64;
    }

    if ((v21 + 7) <= 0x3Fu)
    {
      v27 = 64;
      v58[3] = 64;
    }

    if (v26 > v17)
    {
      v58[2] = v17;
    }

    if (v27 > v51)
    {
      v58[3] = v51;
    }

LABEL_26:
    ++v12;
    v57 = v19;
    v14 = v20;
  }

  while (v12 < v7[1]);
  v35 = v48 & 0xFFFE;
  *a3 = v35;
  v36 = v48 & 0xFFFE;
  v37 = (a3 + v36);
  v38 = v49 - v36;
  a2 = v50;
  if (v11 != 1297111641)
  {
LABEL_63:
    result = yzip_jobs_create_encoder_list(a2, v7, a3);
    if (!result)
    {
      return result;
    }

    v47 = yzip_jobs_encode(a2, result, v37, v38);
    if (v47 < 1)
    {
      return 0;
    }

    v35 = *a3 + v47;
    *a3 = v35;
    return v35;
  }

  v39 = a3[10];
  if (!a3[10])
  {
    return v35;
  }

  v40 = 0;
  v41 = a3[9];
  while (!v41)
  {
LABEL_60:
    v40 += a3[12];
    if (v40 >= v39)
    {
      return *a3;
    }
  }

  v42 = 0;
  while (1)
  {
    slice_width = get_slice_width(v53, v42);
    slice_height = get_slice_height(v53, v40);
    result = create_rectangle_within_image(v7, v42, v40, slice_width, slice_height);
    if (!result)
    {
      return result;
    }

    v45 = result;
    v46 = yzip_image_encode(result, v50, v37, v38);
    if (!v46)
    {
      free(v45);
      return 0;
    }

    v37 = (v37 + v46);
    v38 -= v46;
    *a3 += v46;
    free(v45);
    v42 += a3[11];
    v41 = a3[9];
    if (v42 >= v41)
    {
      v39 = a3[10];
      goto LABEL_60;
    }
  }
}

BOOL is_image_valid(uint64_t a1)
{
  v1 = *(a1 + 4);
  if (!v1)
  {
    return 0;
  }

  v3 = *(a1 + 8);
  if (v1 != get_format_plane_count(v3) || is_format_invalid(v3, *(a1 + 32), *(a1 + 36), *(a1 + 40)) || !*(a1 + 16))
  {
    return 0;
  }

  v5 = (a1 + 48);
  v6 = 1;
  do
  {
    v7 = v6;
    if (v1 == v6)
    {
      break;
    }

    v8 = *v5;
    v5 += 4;
    ++v6;
  }

  while (v8);
  return v7 >= v1;
}

_DWORD *create_rectangle_within_image(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v6 = yzip_image_create(a4, a5, *(a1 + 40), *(a1 + 8));
  v7 = v6;
  if (v6)
  {
    v8 = *(a1 + 4);
    if (v8)
    {
      v9 = 0;
      v10 = 0;
      v22 = v6[2];
      v21 = 32 * v8;
      do
      {
        if (v10)
        {
          v11 = *(a1 + 8);
          if (v11 - 1 > 0xA)
          {
            LOBYTE(v12) = 0;
          }

          else
          {
            v12 = dword_29864E328[v11 - 1];
          }

          v14 = v11 > 0xA;
          v15 = (1 << v11) & 0x482;
          v13 = !v14 && v15 != 0;
        }

        else
        {
          LOBYTE(v12) = 0;
          v13 = 0;
        }

        v18 = *(a1 + v10 + 16);
        v17 = *(a1 + v10 + 24);
        *&v7[v10 / 4 + 6] = v17;
        v19 = *(a1 + v10 + 40);
        *&v7[v10 / 4 + 4] = v18 + (get_format_components(v22, v9) << (v19 > 8)) * (a2 >> v12) + v17 * (a3 >> v13);
        v10 += 32;
        ++v9;
      }

      while (v21 != v10);
    }
  }

  return v7;
}

uint64_t yzip_image_decode(_DWORD *a1, uint64_t a2, unsigned int *a3, unint64_t a4)
{
  v8 = header_fetch_from_payload(a3, a4);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = a1[1];
  if (__PAIR64__(v10, a1[2]) != __PAIR64__(*(v8 + 17), *(v8 + 16)))
  {
    return 0;
  }

  v11 = *(v8 + 2);
  if (v10)
  {
    v12 = v8 + 9;
    v13 = a1 + 10;
    while (*(v13 - 3) && *(v13 - 2) == *v12 && *(v13 - 1) == v12[1] && *v13 == *(v12 + 8))
    {
      v12 += 5;
      v13 += 8;
      if (!--v10)
      {
        goto LABEL_10;
      }
    }

    return 0;
  }

LABEL_10:
  v14 = a3 + v11;
  v15 = a4 - v11;
  *a1 = v8[3];
  if (v8[2] == 1297111641)
  {
    if (!*(v8 + 3))
    {
      v16 = *(v8 + 10);
      if (*(v8 + 10))
      {
        v17 = 0;
        v18 = 0;
        v19 = *(v8 + 9);
        while (!v19)
        {
LABEL_20:
          v18 += v9[12];
          if (v18 >= v16)
          {
            return v17;
          }
        }

        v20 = 0;
        while (1)
        {
          slice_width = get_slice_width(v9 + 9, v20);
          slice_height = get_slice_height((v9 + 9), v18);
          rectangle_within_image = create_rectangle_within_image(a1, v20, v18, slice_width, slice_height);
          if (!rectangle_within_image)
          {
            break;
          }

          v24 = rectangle_within_image;
          v25 = yzip_image_decode(rectangle_within_image, a2, v14, v15);
          if (!v25)
          {
            free(v24);
            return 0;
          }

          v17 += v25;
          v26 = *v14;
          v14 += v26;
          v15 -= v26;
          free(v24);
          v20 += v9[11];
          v19 = v9[9];
          if (v20 >= v19)
          {
            v16 = v9[10];
            goto LABEL_20;
          }
        }
      }
    }

    return 0;
  }

  decoder_list = yzip_jobs_create_decoder_list(a2, a1, v8, v14, v15);
  if (!decoder_list)
  {
    return 0;
  }

  v17 = yzip_jobs_decode(a2, decoder_list);
  if (v17 < 0)
  {
    return 0;
  }

  return v17;
}

uint64_t yzip_image_get_descriptor(uint64_t a1, uint64_t a2)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *(a1 + 4);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = 0;
  v4 = (a1 + 36);
  do
  {
    v5 = *(v4 - 3);
    v6 = *v4;
    v4 += 8;
    v3 += v5 * v6;
    --v2;
  }

  while (v2);
  *a2 = v3;
  *(a2 + 8) = *(a1 + 32);
  *(a2 + 16) = *(a1 + 40);
  *(a2 + 20) = *(a1 + 4);
  *(a2 + 24) = *(a1 + 8);
  *(a2 + 28) = *a1;
  return v2;
}

uint64_t yzip_image_get_plane_descriptor(uint64_t a1, unsigned int a2, uint64_t a3)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  if (!a1 || *(a1 + 4) <= a2)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v5 = a1 + 32 * a2;
  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  v9 = v5 + 32;
  LODWORD(v5) = *(v5 + 32);
  v8 = *(v9 + 4);
  *a3 = v6;
  *(a3 + 8) = v7 * v8;
  *(a3 + 16) = v7;
  *(a3 + 24) = v5;
  *(a3 + 28) = v8;
  return result;
}

uint64_t yzip_image_get_max_payload_size(_DWORD *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = a1[1];
  v3 = 10 * v2 + 18;
  if (v2)
  {
    v4 = 0;
    v5 = a1 + 10;
    do
    {
      v6 = get_plane_max_rice_size(*v5) + v3;
      v7 = *(v5 - 2);
      v8 = *(v5 - 1);
      v9 = *v5;
      v5 += 8;
      v3 = v6 + get_max_payload_size(v7, v8, a1[2], v9, v4++);
    }

    while (v4 < a1[1]);
  }

  return v3;
}

uint64_t yzip_image_set_data(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = 0xFFFFFFFFLL;
  if (a1 && a2 && a3)
  {
    v4 = *(a1 + 4);
    if (v4)
    {
      v5 = 0;
      v6 = a1 + 24;
      v7 = *(a1 + 4);
      do
      {
        *(v6 - 8) = v5 + a2;
        v5 += *v6 * *(v6 + 12);
        v6 += 32;
        --v7;
      }

      while (v7);
      v8 = v5 > a3;
      v9 = v5 > a3;
      if (v8)
      {
        v10 = (v4 + 1) & 0x1FFFFFFFELL;
        v11 = vdupq_n_s64(v4 - 1);
        v12 = xmmword_29862D9D0;
        v13 = (a1 + 48);
        v14 = vdupq_n_s64(2uLL);
        do
        {
          v15 = vmovn_s64(vcgeq_u64(v11, v12));
          if (v15.i8[0])
          {
            *(v13 - 4) = 0;
          }

          if (v15.i8[4])
          {
            *v13 = 0;
          }

          v12 = vaddq_s64(v12, v14);
          v13 += 8;
          v10 -= 2;
        }

        while (v10);
        v9 = 1;
      }
    }

    else
    {
      v9 = 0;
    }

    return (v9 << 31 >> 31);
  }

  return v3;
}

uint64_t yzip_image_set_plane_data(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a3 && a4)
  {
    if (*(a1 + 4) <= a2)
    {
      return 0xFFFFFFFFLL;
    }

    v10 = a1 + 32 * a2;
    v11 = *(v10 + 32);
    v12 = *(v10 + 40);
    format_components = get_format_components(*(a1 + 8), a2);
    if (HIWORD(v11))
    {
      return 0xFFFFFFFFLL;
    }

    v14 = *(v10 + 36);
    if (WORD1(v14))
    {
      return 0xFFFFFFFFLL;
    }

    if (a5)
    {
      if (v11 * (format_components << (v12 > 8)) > a5)
      {
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      a5 = v11 * (format_components << (v12 > 8));
    }

    if (a5 * v14 <= a4)
    {
      result = 0;
      *(v10 + 16) = a3;
      *(v10 + 24) = a5;
      return result;
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

_DWORD *yzip_image_set_identifier(_DWORD *result, int a2)
{
  if (result)
  {
    *result = a2;
  }

  return result;
}

unint64_t smb_lz77h_decode_buffer(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, char *a5)
{
  v6 = 0;
  v7 = 0;
  v94 = *MEMORY[0x29EDCA608];
  v8 = 15;
  if (a2 > 0xF)
  {
    v8 = a2;
  }

  v9 = a5 + 5120;
  v10 = a5 + 4096;
  v11 = a5 + 5121;
  v12 = a5 + 8;
  v13 = 0uLL;
  v14.i64[0] = 0xF0F0F0F0F0F0F0FLL;
  v14.i64[1] = 0xF0F0F0F0F0F0F0FLL;
  v88 = a2;
  v89 = a4;
  v87 = a3;
  v85 = a1 + v8 - 15;
LABEL_4:
  if (v7 + 256 > a4)
  {
    if (v6 != a2)
    {
      return 0;
    }
  }

  else
  {
    v15 = (a3 + v7);
    v93 = 0;
    v16 = -32;
    v91 = v13;
    v92 = v13;
    do
    {
      v17 = *v15++;
      v95.val[0] = vandq_s8(v17, v14);
      v95.val[1] = vshrq_n_u8(v17, 4uLL);
      v18 = &a5[v16 + 5152];
      vst2q_s8(v18, v95);
      v16 += 32;
    }

    while (v16 < 0x1E0);
    v19 = 0;
    do
    {
      v20 = &v91 + 2 * v11[v19 - 1];
      ++*(v20 + 1);
      v21 = &v91 + 2 * v11[v19];
      ++*(v21 + 1);
      v22 = &v91 + 2 * v11[v19 + 1];
      ++*(v22 + 1);
      v23 = &v91 + 2 * v11[v19 + 2];
      ++*(v23 + 1);
      v24 = v19 >= 0x1FC;
      v19 += 4;
    }

    while (!v24);
    v25 = 0;
    WORD1(v91) = 0;
    for (i = 4; i != 34; i += 2)
    {
      v25 += *(&v91 + i);
      *(&v91 + i) = v25;
    }

    v27 = 0;
    LOWORD(v91) = v93;
    do
    {
      v28 = v9[v27];
      v29 = *(&v91 + v28);
      *(&v91 + v28) = v29 + 1;
      *&v10[2 * v29] = v28 + 16 * v27++;
    }

    while (v27 != 512);
    v30 = HIWORD(v92);
    if (HIWORD(v92))
    {
      v90 = v7 + 256;
      bzero(a5, 0x800uLL);
      v31 = 0x8000;
      v32 = 1024;
      while (1)
      {
        v33 = v31;
        v34 = *&v10[2 * v30 - 2];
        v35 = v34 & 0xF;
        v31 += -1 << (v34 & 0xF ^ 0xF);
        if (v31 < 0)
        {
          break;
        }

        v36 = v31 >> 5;
        if (v35 > 0xA)
        {
          v46 = *&a5[2 * v36];
          if (!*&a5[2 * v36])
          {
            v47 = v35 | (16 * v32);
            *&a5[2 * v36] = v47;
            v32 += (1 << (v35 - 10));
            if (v32 > 0x800)
            {
              return 0;
            }

            v46 = v47;
          }

          v48 = 0;
          v49 = (v31 >> (v46 & 0xF ^ 0xF)) & ~(-1 << ((v46 & 0xF) - 10));
          v50 = (1 << ((v46 & 0xF) - v35)) + (v46 >> 4) + v49;
          v51 = (v46 >> 4) + v49;
          if (v50 <= v51 + 1)
          {
            v50 = v51 + 1;
          }

          v52 = v50 - v51;
          v53 = vdupq_n_s64(v52 - 1);
          v54 = (v52 + 7) & 0xFFFFFFFFFFFFFFF8;
          v55 = &v12[2 * v51];
          do
          {
            v56 = vdupq_n_s64(v48);
            v57 = vmovn_s64(vcgeq_u64(v53, vorrq_s8(v56, xmmword_29862D9D0)));
            if (vuzp1_s8(vuzp1_s16(v57, *v53.i8), *v53.i8).u8[0])
            {
              *(v55 - 4) = v34;
            }

            if (vuzp1_s8(vuzp1_s16(v57, *&v53), *&v53).i8[1])
            {
              *(v55 - 3) = v34;
            }

            if (vuzp1_s8(vuzp1_s16(*&v53, vmovn_s64(vcgeq_u64(v53, vorrq_s8(v56, xmmword_29862D9C0)))), *&v53).i8[2])
            {
              *(v55 - 2) = v34;
              *(v55 - 1) = v34;
            }

            v58 = vmovn_s64(vcgeq_u64(v53, vorrq_s8(v56, xmmword_29862E070)));
            if (vuzp1_s8(*&v53, vuzp1_s16(v58, *&v53)).i32[1])
            {
              *v55 = v34;
            }

            if (vuzp1_s8(*&v53, vuzp1_s16(v58, *&v53)).i8[5])
            {
              *(v55 + 1) = v34;
            }

            if (vuzp1_s8(*&v53, vuzp1_s16(*&v53, vmovn_s64(vcgeq_u64(v53, vorrq_s8(v56, xmmword_29862E060))))).i8[6])
            {
              *(v55 + 2) = v34;
              *(v55 + 3) = v34;
            }

            v48 += 8;
            v55 += 16;
          }

          while (v54 != v48);
        }

        else
        {
          v37 = v33 >> 5;
          if (v36 < v33 >> 5)
          {
            v38 = 0;
            v39 = v37 + ~v36;
            v40 = (v39 + 8) & 0x1FFFFFFF8;
            v41 = vdupq_n_s64(v39);
            v42 = &v12[2 * v36];
            do
            {
              v43 = vdupq_n_s64(v38);
              v44 = vmovn_s64(vcgeq_u64(v41, vorrq_s8(v43, xmmword_29862D9D0)));
              if (vuzp1_s8(vuzp1_s16(v44, *v41.i8), *v41.i8).u8[0])
              {
                *(v42 - 4) = v34;
              }

              if (vuzp1_s8(vuzp1_s16(v44, *&v41), *&v41).i8[1])
              {
                *(v42 - 3) = v34;
              }

              if (vuzp1_s8(vuzp1_s16(*&v41, vmovn_s64(vcgeq_u64(v41, vorrq_s8(v43, xmmword_29862D9C0)))), *&v41).i8[2])
              {
                *(v42 - 2) = v34;
                *(v42 - 1) = v34;
              }

              v45 = vmovn_s64(vcgeq_u64(v41, vorrq_s8(v43, xmmword_29862E070)));
              if (vuzp1_s8(*&v41, vuzp1_s16(v45, *&v41)).i32[1])
              {
                *v42 = v34;
              }

              if (vuzp1_s8(*&v41, vuzp1_s16(v45, *&v41)).i8[5])
              {
                *(v42 + 1) = v34;
              }

              if (vuzp1_s8(*&v41, vuzp1_s16(*&v41, vmovn_s64(vcgeq_u64(v41, vorrq_s8(v43, xmmword_29862E060))))).i8[6])
              {
                *(v42 + 2) = v34;
                *(v42 + 3) = v34;
              }

              v38 += 8;
              v42 += 16;
            }

            while (v40 != v38);
          }
        }

        v77 = v30-- <= 1;
        if (v77)
        {
          if (v31)
          {
            return 0;
          }

          v59 = v7 + 258;
          a4 = v89;
          if (v7 + 258 > v89)
          {
            return 0;
          }

          v7 += 260;
          if (v7 > v89)
          {
            return 0;
          }

          a3 = v87;
          a2 = v88;
          v60 = *(v87 + v59) | (*(v87 + v90) << 16);
          if (v6 + 0x10000 >= v88)
          {
            v61 = v88;
          }

          else
          {
            v61 = v6 + 0x10000;
          }

          v62 = 16;
          if (v6 < v61)
          {
            v13 = 0uLL;
            v14.i64[0] = 0xF0F0F0F0F0F0F0FLL;
            v14.i64[1] = 0xF0F0F0F0F0F0F0FLL;
            while (1)
            {
              v63 = *&a5[2 * (v60 >> 22)];
              if (v63 >= 0x4000)
              {
                v63 = *&a5[2 * (v60 << 10 >> (42 - (v63 & 0xF))) + 2 * (v63 >> 4)];
              }

              v64 = v60 << (v63 & 0xF);
              v62 -= v63 & 0xF;
              if (v62 < 0)
              {
                if (v7 + 2 > v89)
                {
                  return 0;
                }

                v64 |= *(v87 + v7) << -v62;
                v62 += 16;
                v7 += 2;
              }

              v65 = v63 >> 4;
              if (v63 > 0xFFF)
              {
                if (v65 == 256 && v7 == v89)
                {
                  return v6;
                }

                v67 = v63 >> 4;
                if (v67 == 15)
                {
                  if (v7 >= v89)
                  {
                    return 0;
                  }

                  v68 = v7 + 1;
                  v69 = *(v87 + v7);
                  if (v69 == 255)
                  {
                    v70 = v7 + 3;
                    if (v7 + 3 > v89)
                    {
                      return 0;
                    }

                    v71 = *(v87 + v68);
                    if (!*(v87 + v68))
                    {
                      if (v7 + 7 > v89)
                      {
                        return 0;
                      }

                      v71 = *(v87 + v70);
                      v70 = v7 + 7;
                    }

                    v24 = v71 >= 0xF;
                    v69 = v71 - 15;
                    if (!v24)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v70 = v7 + 1;
                  }

                  v67 = v69 + 15;
                  v7 = v70;
                }

                v72 = (v63 >> 8) & 0xF;
                v60 = v64 << v72;
                v62 -= v72;
                if (v62 < 0)
                {
                  if (v7 + 2 > v89)
                  {
                    return 0;
                  }

                  v60 |= *(v87 + v7) << -v62;
                  v62 += 16;
                  v7 += 2;
                }

                v73 = (HIWORD(v64) >> (16 - v72)) | (1 << v72);
                if (v6 < v73)
                {
                  return 0;
                }

                v74 = v67 + 3;
                v75 = (a1 + v6);
                v76 = a1 + v6 + v67 + 3;
                v77 = v73 < 0x10 || v76 > v85;
                if (v77)
                {
                  if (v74 > v88 - v6)
                  {
                    return 0;
                  }

                  v78 = -v73;
                  do
                  {
                    *v75 = v75[v78];
                    ++v75;
                  }

                  while (v75 < v76);
                }

                else
                {
                  v79 = -v73;
                  do
                  {
                    *v75 = *&v75[v79];
                    v75 += 16;
                  }

                  while (v75 < v76);
                }

                v6 += v74;
              }

              else
              {
                *(a1 + v6++) = v65;
                v60 = v64;
              }

              if (v6 >= v61)
              {
                goto LABEL_103;
              }
            }
          }

          v13 = 0uLL;
          v14.i64[0] = 0xF0F0F0F0F0F0F0FLL;
          v14.i64[1] = 0xF0F0F0F0F0F0F0FLL;
LABEL_103:
          v80 = *&a5[2 * (v60 >> 22)];
          if (v80 >= 0x4000)
          {
            LOWORD(v80) = *&a5[2 * (v60 << 10 >> (42 - (v80 & 0xF))) + 2 * (v80 >> 4)];
          }

          v81 = v80 & 0xFFF0;
          v82 = v80 & 0xF;
          if (v81 == 4096 && v62 < v82)
          {
            v7 += 2;
            if (v7 > v89)
            {
              return 0;
            }
          }

          if (v7 != v89)
          {
            goto LABEL_4;
          }

          return v6;
        }
      }
    }

    return 0;
  }

  return v6;
}

uint64_t smb_lz77h_encode_buffer(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char *a5)
{
  v5 = a5;
  v168 = *MEMORY[0x29EDCA608];
  v150 = a5 + 170338;
  v143 = (a5 + 162144);
  bzero(a5, 0x10006uLL);
  v8 = a3;
  result = 0;
  v10 = 0;
  v11 = v5 + 152928;
  v160 = v5 + 65542;
  v12 = (v5 + 167264);
  v13 = v5 + 169312;
  v155 = (v5 + 171362);
  v147 = v5 + 171364;
  v148 = v5 + 167776;
  v145 = (v5 + 171876);
  v146 = v5 + 171878;
  v163 = v5 + 161116;
  v14 = (v5 + 165216);
  v15 = v5 + 168288;
  v159 = v8 + 1;
  v144 = v5 + 161118;
  v154 = v5;
  v153 = v8;
  v157 = v5 + 152928;
  v149 = v5 + 161120;
  do
  {
    if (v10 >= a4)
    {
      return result;
    }

    v158 = result;
    if (v10 + 0x10000 >= a4)
    {
      v16 = a4;
    }

    else
    {
      v16 = v10 + 0x10000;
    }

    if (v16 <= 8)
    {
      v17 = 8;
    }

    else
    {
      v17 = v16;
    }

    v161 = v10;
    v18 = v10 + 1;
    bzero(v11, 0x2000uLL);
    if (v18 < v16)
    {
      v19 = 0;
      v20 = v17 - 8;
      v21 = 1;
      v22 = v18;
      v23 = v153;
      while (1)
      {
        if (v22 + 4 <= a4)
        {
          v24 = 0;
          v25 = 0;
          v26 = &v5[2 * ((-1640531535 * (*(v153 + v22) & 0xFFFFFFu)) >> 17)];
          v27 = v22 & 0xFFFF0000;
          v28 = 2;
          LOWORD(v29) = v22;
          do
          {
            v30 = *&v26[2 * v24];
            *&v26[2 * v24] = v29;
            v29 = v27 | v30;
            if (v22 != (v27 | v30))
            {
              v31 = v29 - 0x10000;
              if (v29 < v22)
              {
                v31 = v29;
              }

              if (v22 >= v20)
              {
                LODWORD(v32) = 0;
              }

              else
              {
                v32 = 0;
                v33 = 0;
                while (1)
                {
                  v34 = *(v153 + v22 + v32);
                  v32 = *(v153 + v31 + v32);
                  if (v34 != v32)
                  {
                    break;
                  }

                  v33 += 8;
                  v32 = v33;
                  if (v22 + v33 >= v20)
                  {
                    goto LABEL_24;
                  }
                }

                LODWORD(v32) = v33 + (__clz(__rbit64(v32 ^ v34)) >> 3);
              }

LABEL_24:
              v35 = v28 >= v32;
              if (v28 <= v32)
              {
                v28 = v32;
              }

              if (!v35)
              {
                v25 = v31;
              }
            }

            ++v24;
          }

          while (v24 != 3);
          if (v28 >= 4)
          {
            LOWORD(v37) = v22 - v25;
            v36 = v159;
LABEL_34:
            *&v157[4 * (v21 >> 5)] |= 1 << v21;
            v38 = v19 + 1;
            v39 = &v160[4 * v19];
            *v39 = v37;
            *(v39 + 1) = v28;
            v40 = v22 + v28;
            v18 = v22 + 1;
            if (v22 + 1 >= v40)
            {
              v19 = v38;
            }

            else
            {
              v41 = v28 - 1;
              do
              {
                v42 = v22 + 1;
                if (v22 + 5 <= a4)
                {
                  v43 = &v5[2 * ((-1640531535 * (*(v36 + v22) & 0xFFFFFFu)) >> 17)];
                  v44 = *v43;
                  *v43 = v42;
                  *(v43 + 2) = v44;
                }

                v22 = v42;
                --v41;
              }

              while (v41);
              v19 = v38;
              v18 = v40;
            }

            goto LABEL_41;
          }

          v36 = v159;
          if (v28 == 3)
          {
            v37 = v22 - v25;
            if (v37 < 0x100)
            {
              goto LABEL_34;
            }
          }
        }

        v18 = v22 + 1;
LABEL_41:
        ++v21;
        v22 = v18;
        if (v18 >= v16)
        {
          goto LABEL_44;
        }
      }
    }

    v21 = 1;
    v23 = v153;
LABEL_44:
    v156 = v18;
    v164 = a1 + v158;
    v162 = v23 + v161;
    bzero(v12, 0x400uLL);
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 2176;
    do
    {
      if ((*&v157[4 * (v45 >> 5)] >> v45))
      {
        v49 = &v160[4 * v46++];
        v50 = *v49;
        v51 = *(v49 + 1);
        v52 = 31 - __clz(v50);
        v53 = v51 - 3;
        if (v51 - 3 >= 0xF)
        {
          v53 = 15;
        }

        v54 = v53 | (16 * v52);
        v47 += v51;
        v55 = v48 + v52;
        ++v148[v54];
        if (v51 <= 0x110)
        {
          v56 = 8;
        }

        else
        {
          v56 = 24;
        }

        v57 = v55 + v56;
        if (v51 >= 0x12)
        {
          v48 = v57;
        }

        else
        {
          v48 = v55;
        }
      }

      else
      {
        v58 = *(v162 + v47++);
        ++v12[v58];
      }

      ++v45;
    }

    while (v21 != v45);
    if (!*v148)
    {
      *v148 = 1;
    }

    bzero(v155, 0x404uLL);
    v59 = 0;
    v60 = 0;
    do
    {
      v61 = v12[v59];
      if (v12[v59])
      {
        ++*&v147[2 * v12[v59]];
        ++*&v146[(v61 >> 7) & 0x1FE];
        *&v13[2 * v60++] = v59;
      }

      ++v59;
    }

    while (v59 != 512);
    v62 = *v155;
    v63 = *v145;
    v64 = v147;
    v65 = 255;
    do
    {
      v62 += *v64;
      *v64 = v62;
      v63 += *(v64 + 257);
      *(v64 + 257) = v63;
      v64 += 2;
      --v65;
    }

    while (v65);
    v66 = v60;
    if (v60 >= 1)
    {
      v67 = v13;
      v68 = v60;
      do
      {
        v69 = *v67;
        v67 += 2;
        v70 = LOBYTE(v12[v69]);
        v71 = v155[v70];
        v155[v70] = v71 + 1;
        *&v150[2 * v71] = v69;
        --v68;
      }

      while (v68);
      v72 = v150;
      v73 = v60;
      do
      {
        v74 = *v72++;
        v75 = HIBYTE(v12[v74]);
        v76 = v145[v75];
        v145[v75] = v76 + 1;
        *&v13[2 * v76] = v74;
        --v73;
      }

      while (v73);
    }

    memcpy(v14, v12, 0x400uLL);
    *(v154 + 83120) = -1;
    *&v13[2 * v60] = 512;
    v77 = (v60 + 511);
    if (v77 <= 513)
    {
      v78 = 513;
    }

    else
    {
      v78 = v60 + 511;
    }

    if (v60 > 1)
    {
      v122 = 0;
      v123 = (v78 + 1);
      v124 = 513;
      v125 = 513;
      v11 = v157;
      v79 = 0uLL;
      while (1)
      {
        do
        {
          v14[v124] = -1;
          v126 = *&v13[2 * v122];
          v127 = v14[*&v13[2 * v122]];
          v128 = v14[v125];
          v129 = v127 > v128;
          if (v127 <= v128)
          {
            v130 = v125;
          }

          else
          {
            v130 = v125 + 1;
          }

          if (v129)
          {
            v126 = v125;
          }

          else
          {
            ++v122;
          }

          v131 = v14[*&v13[2 * v122]];
          v132 = v14[v130];
          v133 = v131 > v132;
          if (v131 <= v132)
          {
            v125 = v130;
          }

          else
          {
            v125 = v130 + 1;
          }

          if (!v133)
          {
            v130 = *&v13[2 * v122];
          }

          v14[v124] = v14[v130] + v14[v126];
          if (!v133)
          {
            ++v122;
          }

          v134 = &v163[4 * v124];
          *v134 = v126;
          *(v134 + 1) = v130;
          ++v124;
        }

        while (v124 != v123);
        v135 = 0;
        v15[30] = 0uLL;
        v15[31] = 0uLL;
        v15[28] = 0uLL;
        v15[29] = 0uLL;
        v15[26] = 0uLL;
        v15[27] = 0uLL;
        v15[24] = 0uLL;
        v15[25] = 0uLL;
        v15[22] = 0uLL;
        v15[23] = 0uLL;
        v15[20] = 0uLL;
        v15[21] = 0uLL;
        v15[18] = 0uLL;
        v15[19] = 0uLL;
        v15[16] = 0uLL;
        v15[17] = 0uLL;
        v15[14] = 0uLL;
        v15[15] = 0uLL;
        v15[12] = 0uLL;
        v15[13] = 0uLL;
        v15[10] = 0uLL;
        v15[11] = 0uLL;
        v15[8] = 0uLL;
        v15[9] = 0uLL;
        v15[6] = 0uLL;
        v15[7] = 0uLL;
        v15[4] = 0uLL;
        v15[5] = 0uLL;
        v15[2] = 0uLL;
        v15[3] = 0uLL;
        v136 = v15 + v77;
        v137 = &v144[4 * v77];
        v138 = v60 + 512;
        *v15 = 0uLL;
        v15[1] = 0uLL;
        *(v15 + v77) = 0;
        do
        {
          v135 |= 2 << *v136;
          *(v15 + *(v137 - 1)) = *v136 + 1;
          v139 = *v136--;
          v140 = v139 + 1;
          v141 = *v137;
          v137 -= 4;
          *(v15 + v141) = v140;
          --v138;
        }

        while (v138 > 513);
        if (v135 < 0x10000)
        {
          break;
        }

        for (i = 0; i != 512; i += 8)
        {
          *&v14[i] = vsubq_s16(*&v14[i], vshrq_n_u16(*&v14[i], 1uLL));
        }

        v122 = 0;
        v124 = 513;
        v125 = 513;
      }
    }

    else
    {
      v79 = 0uLL;
      v15[30] = 0u;
      v15[31] = 0u;
      v15[28] = 0u;
      v15[29] = 0u;
      v15[26] = 0u;
      v15[27] = 0u;
      v15[24] = 0u;
      v15[25] = 0u;
      v15[22] = 0u;
      v15[23] = 0u;
      v15[20] = 0u;
      v15[21] = 0u;
      v15[18] = 0u;
      v15[19] = 0u;
      v15[16] = 0u;
      v15[17] = 0u;
      v15[14] = 0u;
      v15[15] = 0u;
      v15[12] = 0u;
      v15[13] = 0u;
      v15[10] = 0u;
      v15[11] = 0u;
      v15[8] = 0u;
      v15[9] = 0u;
      v15[6] = 0u;
      v15[7] = 0u;
      v15[4] = 0u;
      v15[5] = 0u;
      v15[2] = 0u;
      v15[3] = 0u;
      *v15 = 0u;
      v15[1] = 0u;
      *(v15 + v77) = 0;
      v11 = v157;
    }

    v80 = 0;
    v167[0] = v79;
    v167[1] = v79;
    v166 = 0;
    v165[0] = v79;
    v165[1] = v79;
    do
    {
      v81 = *(v15 + v80);
      *(v167 + v81) += v12[v80];
      ++*(v165 + v81 + 1);
      ++v80;
    }

    while (v80 != 512);
    v82 = 0;
    v83 = 0;
    v84 = 0;
    WORD1(v165[0]) = 0;
    do
    {
      v85 = v165 + 2 * v82;
      v84 += (v82 + 1) * *(v167 + v82 + 1);
      v83 += *(v85 + 2);
      *(v85 + 2) = v83;
      ++v82;
    }

    while (v82 != 15);
    v86 = 0;
    LOWORD(v165[0]) = v166;
    do
    {
      v87 = *(v15 + v86);
      v88 = *(v165 + v87);
      *(v165 + v87) = v88 + 1;
      *&v13[2 * v88] = v86++;
    }

    while (v86 != 512);
    if (v60 >= 1)
    {
      LOWORD(v89) = 0;
      v90 = v13;
      do
      {
        v91 = *v90;
        v90 += 2;
        v92 = *(v15 + v91);
        v93 = &v149[4 * v91];
        *v93 = v89 >> (15 - v92);
        *(v93 + 1) = v92;
        v89 = (1 << (15 - v92)) + v89;
        --v66;
      }

      while (v66);
    }

    if (a2 - v158 < (v84 + v48) >> 3)
    {
      break;
    }

    v94 = 0;
    v95 = (a1 + v158);
    do
    {
      v96 = &v15[v94];
      v169 = vld2q_s8(v96);
      *v95++ = vorrq_s8(vshlq_n_s8(v169.val[1], 4uLL), v169.val[0]);
      v35 = v94 >= 30;
      v94 += 2;
    }

    while (!v35);
    v97 = 0;
    v98 = 0;
    v99 = 0;
    v100 = 0;
    v101 = 16;
    v102 = 260;
    v103 = 258;
    v104 = 256;
    v5 = v154;
    do
    {
      if ((*&v157[4 * (v99 >> 5)] >> v99))
      {
        v105 = &v160[4 * v98];
        v106 = *v105;
        v107 = *(v105 + 1);
        v108 = __clz(v106);
        v109 = 31 - v108;
        if ((v107 - 3) >= 0xF)
        {
          v110 = 15;
        }

        else
        {
          v110 = v107 - 3;
        }

        v111 = &v149[4 * (v110 | (16 * v109))];
        v112 = *(v111 + 513);
        v113 = *(v111 + 512);
        if (v112 <= v101)
        {
          v113 += v100 << v112;
        }

        else
        {
          v114 = (v113 >> (v112 - v101)) + (v100 << v101);
          v101 += 16;
          *(v164 + v104) = v114;
          v104 = v103;
          v103 = v102;
          v102 += 2;
        }

        if (v107 >= 0x12)
        {
          if (v107 > 0x110)
          {
            *(v164 + v102) = ((v107 - 3) << 8) | 0xFF;
            v102 += 3;
          }

          else
          {
            *(v164 + v102++) = v107 - 18;
          }
        }

        ++v98;
        v115 = v97 + v107;
        v119 = v101 - v112;
        v100 = v106 - (0x80000000 >> v108);
        v101 = v101 - v112 - v109;
        if (v119 >= v109)
        {
          v100 += v113 << v109;
        }

        else
        {
          v101 = v108 + v119 - 15;
          *(v164 + v104) = (v113 << v119) + (v100 >> (v109 - v119));
          v104 = v103;
          v103 = v102;
          v102 += 2;
        }
      }

      else
      {
        v115 = v97 + 1;
        v116 = &v149[4 * *(v162 + v97)];
        v117 = *(v116 + 1);
        v118 = *v116;
        if (v101 >= v117)
        {
          v100 = v118 + (v100 << v117);
          v101 -= v117;
        }

        else
        {
          *(v164 + v104) = (v118 >> (v117 - v101)) + (v100 << v101);
          v101 = v101 - v117 + 16;
          v104 = v103;
          v103 = v102;
          v102 += 2;
          v100 = v118;
        }
      }

      ++v99;
      v97 = v115;
    }

    while (v21 != v99);
    v10 = v156;
    if (v156 == a4)
    {
      v120 = v143[1];
      v121 = *v143;
      if (v101 >= v120)
      {
        v100 = v121 + (v100 << v120);
        LOBYTE(v101) = v101 - v120;
      }

      else
      {
        *(v164 + v104) = (v121 >> (v120 - v101)) + (v100 << v101);
        LOBYTE(v101) = v101 - v120 + 16;
        v104 = v103;
        v103 = v102;
        v102 += 2;
        v100 = v121;
      }

      v10 = v156;
    }

    *(v164 + v104) = v100 << v101;
    *(v164 + v103) = 0;
    result = v102 + v158;
  }

  while (v102);
  return 0;
}

uint16x8_t *convert_row_to_msb(uint16x8_t *result, unint64_t a2, char a3)
{
  if (a2 >= 8)
  {
    v4 = 0;
    v5 = vdupq_n_s16(a3);
    v6 = result;
    do
    {
      *v6 = vshlq_u16(*v6, v5);
      ++v6;
      v3 = v4 + 8;
      v7 = v4 + 16;
      v4 += 8;
    }

    while (v7 <= a2);
  }

  else
  {
    v3 = 0;
  }

  v8 = a2 - v3;
  if (a2 > v3)
  {
    v9 = &result->i16[v3];
    do
    {
      *v9 = *v9 << a3;
      ++v9;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint16x8_t *convert_row_to_lsb(uint16x8_t *result, unint64_t a2, char a3)
{
  if (a2 >= 8)
  {
    v4 = 0;
    v5 = vnegq_s16(vdupq_n_s16(a3));
    v6 = result;
    do
    {
      *v6 = vshlq_u16(*v6, v5);
      ++v6;
      v3 = v4 + 8;
      v7 = v4 + 16;
      v4 += 8;
    }

    while (v7 <= a2);
  }

  else
  {
    v3 = 0;
  }

  v8 = a2 - v3;
  if (a2 > v3)
  {
    v9 = &result->i16[v3];
    do
    {
      *v9 = *v9 >> a3;
      ++v9;
      --v8;
    }

    while (v8);
  }

  return result;
}

void *get_conversion_set(void *result, int a2, unsigned int a3, int a4)
{
  *result = 0;
  result[1] = 0;
  if (a2 > 14)
  {
    if (a2 == 15)
    {
      if (a3 > 8)
      {
        *result = convert_rows_from_bayer16;
        v4 = convert_rows_to_bayer16;
      }

      else
      {
        *result = convert_rows_from_bayer8;
        v4 = convert_rows_to_bayer8;
      }

      goto LABEL_21;
    }

    if (a2 == 16)
    {
      if (a3 > 8)
      {
        return result;
      }

      *result = convert_rows_from_quadra8;
      v4 = convert_rows_to_quadra8;
      goto LABEL_21;
    }
  }

  else
  {
    if (a2 == 13)
    {
      *result = convert_row_RGB888toGUV;
      v4 = convert_row_GUVtoRGB888;
      goto LABEL_21;
    }

    if (a2 == 14)
    {
      *result = convert_row_RGBA8888toGUVA;
      v4 = convert_row_GUVAtoRGBA8888;
      goto LABEL_21;
    }
  }

  if (a4 == 2)
  {
    if (a3 > 8)
    {
      *result = convert_row_RGtoPlanarRG;
      v4 = convert_row_PlanarRGtoRG;
    }

    else
    {
      *result = convert_row_RG88toRG;
      v4 = convert_row_RGtoRG88;
    }
  }

  else
  {
    if (a4 != 1)
    {
      return result;
    }

    if (a3 > 8)
    {
      v4 = convert_row_copy16;
      *result = convert_row_copy16;
    }

    else
    {
      *result = convert_row_8to16;
      v4 = convert_row_16to8;
    }
  }

LABEL_21:
  result[1] = v4;
  return result;
}

uint64_t convert_rows_from_quadra8(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = 2 * a4;
  v6 = 3 * a4;
  v7 = a3 >> 1;
  if (a3 >= 0x10)
  {
    v9 = 0;
    v8 = (((a3 - 16) >> 1) & 0x7FFFFFFFFFFFFFF8) + 8;
    do
    {
      v10 = *(a2 + v9);
      v11 = *(a2 + v5 + v9);
      v12 = *(a2 + a4 + v9);
      v13 = *(a2 + v6 + v9);
      *(result + v9) = vmovl_u8(vmovn_s32(v10));
      *(result + 2 * v7 + v9) = vmovl_u8(*&vuzp2q_s16(v10, v10));
      v14 = vmovl_u8(vmovn_s32(v11));
      *(result + 2 * a3 + v9) = v14;
      *(result + 6 * v7 + v9) = vmovl_u8(*&vuzp2q_s16(v11, v14));
      v15 = vmovl_u8(vmovn_s32(v12));
      *(result + 2 * a5 + v9) = v15;
      *(result + 2 * a5 + 2 * v7 + v9) = vmovl_u8(*&vuzp2q_s16(v12, v15));
      v16 = vmovl_u8(vmovn_s32(v13));
      *(result + 2 * a5 + 2 * a3 + v9) = v16;
      *(result + 6 * v7 + 2 * a5 + v9) = vmovl_u8(*&vuzp2q_s16(v13, v16));
      v17 = v9 + 32;
      v9 += 16;
    }

    while (v17 <= a3);
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  if ((v9 | 4uLL) <= a3)
  {
    v18 = 0;
    v19 = result + 2 * v8;
    v20 = 6 * v7 + 2 * v8;
    v21 = result + 2 * v8 + 2 * a5;
    v22 = v20 + 2 * a5 + result + 2;
    v23 = a2 + v9 + v5;
    v24 = result + v20;
    v25 = result + 2 * (v8 + a3) + 2;
    v26 = v8 + v7;
    v27 = a2 + v9;
    v28 = result + 2 * v26 + 2;
    result = v28 + 2 * a5;
    v29 = a2 + v9 + a4;
    v30 = a2 + v9 + v6;
    do
    {
      v31 = (v19 + v18);
      *v31 = *(v27 + v18);
      v31[1] = *(v27 + v18 + 1);
      v32 = (v28 + v18);
      *(v32 - 1) = *(v27 + v18 + 2);
      *v32 = *(v27 + v18 + 3);
      v33 = (v25 + v18);
      *(v33 - 1) = *(v23 + v18);
      *v33 = *(v23 + v18 + 1);
      v34 = (v24 + v18);
      *v34 = *(v23 + v18 + 2);
      v34[1] = *(v23 + v18 + 3);
      v35 = (v21 + v18);
      *v35 = *(v29 + v18);
      v35[1] = *(v29 + v18 + 1);
      v36 = (result + v18);
      *(v36 - 1) = *(v29 + v18 + 2);
      *v36 = *(v29 + v18 + 3);
      v37 = (v25 + 2 * a5 + v18);
      *(v37 - 1) = *(v30 + v18);
      *v37 = *(v30 + v18 + 1);
      v38 = (v22 + v18);
      *(v38 - 1) = *(v30 + v18 + 2);
      *v38 = *(v30 + v18 + 3);
      v18 += 4;
    }

    while (v9 + v18 + 4 <= a3);
  }

  return result;
}

unint64_t convert_rows_to_quadra8(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a3 >> 1;
  v6 = 2 * a4;
  v7 = 3 * a4;
  if (a3 >= 0x10)
  {
    v10 = 0;
    v9 = 0;
    do
    {
      v35.val[0] = vmovn_s16(*(a2 + v10));
      v35.val[1] = vmovn_s16(*(a2 + 2 * v5 + v10));
      v36.val[0] = vmovn_s16(*(a2 + 2 * a3 + v10));
      v36.val[1] = vmovn_s16(*(a2 + 6 * v5 + v10));
      v37.val[0] = vmovn_s16(*(a2 + 2 * a5 + v10));
      v37.val[1] = vmovn_s16(*(a2 + 2 * a5 + 2 * v5 + v10));
      v38.val[0] = vmovn_s16(*(a2 + 2 * a5 + 2 * a3 + v10));
      v38.val[1] = vmovn_s16(*(a2 + 6 * v5 + 2 * a5 + v10));
      v11 = (result + v10);
      vst2_s16(v11, v35);
      v12 = (result + v6 + v10);
      vst2_s16(v12, v36);
      v13 = (result + a4 + v10);
      vst2_s16(v13, v37);
      v14 = (result + v7 + v10);
      vst2_s16(v14, v38);
      v9 += 8;
      v8 = v10 + 16;
      v15 = v10 + 32;
      v10 += 16;
    }

    while (v15 <= a3);
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  if ((v8 | 4uLL) <= a3)
  {
    v16 = 0;
    v17 = a2 + 2 * v9;
    v18 = 6 * v5 + 2 * v9;
    v19 = a2 + 2 * v9 + 2 * a5;
    v20 = v18 + 2 * a5 + a2 + 2;
    v21 = result + v8 + v6;
    v22 = a2 + v18;
    v23 = a2 + 2 * (v9 + a3) + 2;
    v24 = v23 + 2 * a5;
    v25 = v9 + v5;
    v26 = result + v8;
    v27 = a2 + 2 * v25 + 2;
    v28 = v27 + 2 * a5;
    v29 = result + v8 + a4;
    v30 = result + v8 + v7;
    do
    {
      v31 = (v26 + v16);
      *v31 = *(v17 + v16);
      v31[1] = *(v17 + v16 + 2);
      v31[2] = *(v27 + v16 - 2);
      v31[3] = *(v27 + v16);
      v32 = (v21 + v16);
      *v32 = *(v23 + v16 - 2);
      v32[1] = *(v23 + v16);
      v32[2] = *(v22 + v16);
      v32[3] = *(v22 + v16 + 2);
      v33 = (v29 + v16);
      *v33 = *(v19 + v16);
      v33[1] = *(v19 + v16 + 2);
      v33[2] = *(v28 + v16 - 2);
      v33[3] = *(v28 + v16);
      v34 = (v30 + v16);
      *v34 = *(v24 + v16 - 2);
      v34[1] = *(v24 + v16);
      v34[2] = *(v20 + v16 - 2);
      v34[3] = *(v20 + v16);
      v16 += 4;
      result = v8 + v16 + 4;
    }

    while (result <= a3);
  }

  return result;
}

uint64_t convert_rows_from_bayer8(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = a3 >> 1;
  v5 = a3 & 0xFFFFFFFFFFFFFFFELL;
  if (a3 >= 0x10)
  {
    v8 = 0;
    v6 = 0;
    for (i = 16; i <= a3; i += 16)
    {
      v10 = (a2 + v8);
      v20 = vld2_s8(v10);
      v11 = (a2 + a4 + v8);
      v21 = vld2_s8(v11);
      v7 = i;
      v12 = 2 * v6;
      *(result + v12) = vmovl_u8(v20.val[1]);
      *(result + 2 * v4 + v12) = vmovl_u8(v21.val[0]);
      *(result + 2 * v5 + v12) = vmovl_u8(v21.val[1]);
      *(result + 6 * (a3 >> 1) + v12) = vmovl_u8(v20.val[0]);
      v6 += 8;
      v8 = v7;
    }
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  if ((v7 | 2) <= a3)
  {
    v13 = 0;
    v14 = result + 4 * v4 + 2 * v6;
    v15 = result + v5 + 2 * v6;
    v16 = v7 + a2 + 1;
    v17 = v16 + a4;
    v18 = result + 6 * (a3 >> 1) + 2 * v6;
    v19 = result + 2 * v6;
    do
    {
      *(v18 + v13) = *(v7 + a2 + v13);
      *(v19 + v13) = *(v16 + v13);
      *(v15 + v13) = *(v17 + v13 - 1);
      *(v14 + v13) = *(v17 + v13);
      v13 += 2;
    }

    while (v7 + v13 + 2 <= a3);
  }

  return result;
}

uint64_t convert_rows_to_bayer8(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = a3 >> 1;
  v5 = a3 & 0xFFFFFFFFFFFFFFFELL;
  if (a3 >= 0x10)
  {
    v7 = 0;
    v8 = 0;
    for (i = 16; i <= a3; i += 16)
    {
      v6 = i;
      v10 = *(a2 + 2 * v4 + 2 * v7);
      v11 = *(a2 + 2 * v5 + 2 * v7);
      v12 = *(a2 + 6 * (a3 >> 1) + 2 * v7);
      *(result + v8) = vuzp1q_s8(vzip1q_s16(v12, *(a2 + 2 * v7)), vzip2q_s16(v12, *(a2 + 2 * v7)));
      *(result + a4 + v8) = vuzp1q_s8(vzip1q_s16(v10, v11), vzip2q_s16(v10, v11));
      v7 += 8;
      v8 = v6;
    }
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  if ((v6 | 2) <= a3)
  {
    v13 = 0;
    v14 = a2 + 4 * v4 + 2 * v7;
    v15 = a2 + v5 + 2 * v7;
    v16 = v6 + result + 1;
    v17 = a2 + 6 * (a3 >> 1) + 2 * v7;
    v18 = a2 + 2 * v7;
    do
    {
      v19 = (v16 + v13);
      *(v19 - 1) = *(v17 + v13);
      *v19 = *(v18 + v13);
      v20 = (v16 + a4 + v13);
      *(v20 - 1) = *(v15 + v13);
      *v20 = *(v14 + v13);
      v13 += 2;
    }

    while (v6 + v13 + 2 <= a3);
  }

  return result;
}

uint64_t convert_rows_from_bayer16(uint64_t result, const __int16 *a2, unint64_t a3, unint64_t a4)
{
  v4 = a3 >> 1;
  v5 = a3 & 0xFFFFFFFFFFFFFFFELL;
  v6 = 6 * (a3 >> 1);
  v7 = a4 >> 1;
  if (a3 >= 0x10)
  {
    v9 = 0;
    v8 = (((a3 - 16) >> 1) & 0x7FFFFFFFFFFFFFF8) + 8;
    v10 = a2;
    do
    {
      v11 = &v10[v7];
      v20 = vld2q_s16(v10);
      v10 += 16;
      v21 = vld2q_s16(v11);
      *(result + v9) = v20.val[1];
      *(result + v5 + v9) = v21.val[0];
      *(result + 4 * v4 + v9) = v21.val[1];
      *(result + v6 + v9) = v20.val[0];
      v12 = v9 + 32;
      v9 += 16;
    }

    while (v12 <= a3);
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v13 = v9 | 2;
  if ((v9 | 2uLL) <= a3)
  {
    v14 = 0;
    v15 = result + 4 * v4 + 2 * v8;
    v16 = result + v5 + 2 * v8;
    v17 = &a2[v9 + 1];
    v18 = result + v6 + 2 * v8;
    v19 = result + 2 * v8;
    do
    {
      *(v18 + v14) = *(v17 - 1);
      *(v19 + v14) = *v17;
      *(v16 + v14) = v17[v7 - 1];
      *(v15 + v14) = v17[v7];
      v14 += 2;
      v17 += 2;
    }

    while (v13 + v14 <= a3);
  }

  return result;
}