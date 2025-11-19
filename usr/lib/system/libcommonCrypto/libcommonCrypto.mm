uint64_t CNEncode(unsigned int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t *a6)
{
  result = 4294962996;
  if (a3)
  {
    if (a5)
    {
      if (a6)
      {
        v15 = 0;
        result = CNEncoderCreate(a1, a2, &v15);
        if (!result)
        {
          v12 = *a6;
          v16 = *a6;
          *a6 = 0;
          result = CNEncoderUpdate(v15, a3, a4, a5, &v16);
          if (!result)
          {
            v13 = v15;
            v14 = v16;
            *a6 = v16;
            v16 = v12 - v14;
            result = CNEncoderFinal(v13, a5 + v14, &v16);
            if (!result)
            {
              *a6 += v16;
              CNEncoderRelease(&v15);
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t CCDigestGetDigestInfo(unsigned int a1)
{
  if (*(MEMORY[0x29EDCA698] + 96) == -1)
  {
    v2 = *(MEMORY[0x29EDCA698] + 104);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_7:
    CCDigestGetDigestInfo_cold_1();
  }

  v2 = _os_alloc_once();
  if (!v2)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (a1 <= 0x10)
  {
    return *(v2 + 8 * a1 + 3536);
  }

  else
  {
    return 0;
  }
}

uint64_t CCDigest(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!CCDigestGetDigestInfo(a1))
  {
    return 4294962991;
  }

  if (!a4 || !a2 && a3)
  {
    return 4294962996;
  }

  ccdigest();
  return 0;
}

unsigned __int8 *__cdecl CC_MD5(const void *data, CC_LONG len, unsigned __int8 *md)
{
  if (CCDigest(3u, data, len, md))
  {
    return 0;
  }

  else
  {
    return md;
  }
}

uint64_t CNEncoderUpdate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  result = 4294962996;
  if (a1 && a4 && a5)
  {
    if (a2)
    {
      v11 = *(a1 + 8);
      if (v11 == 2)
      {
        v12 = OUTLINED_FUNCTION_0_1(4294962996, a1);
        v19 = v21;
        v20 = decodeLen;
        return CNBufferProcessData(v12, v13, v14, v15, v16, v17, v19, v20);
      }

      if (v11 == 1)
      {
        v12 = OUTLINED_FUNCTION_1(4294962996, a1);
        v19 = v18;
        v20 = encodeLen;
        return CNBufferProcessData(v12, v13, v14, v15, v16, v17, v19, v20);
      }
    }

    else if (!a3)
    {
      result = 0;
      *a5 = 0;
    }
  }

  return result;
}

void *CNBufferCreate(size_t a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0x1010040A79CA2DEuLL);
  v3 = v2;
  if (v2)
  {
    *v2 = a1;
    v2[1] = 0;
    v4 = malloc_type_malloc(a1, 0xB0E99D69uLL);
    v3[2] = v4;
    if (!v4)
    {
      free(v3);
      return 0;
    }
  }

  return v3;
}

uint64_t CNEncoderCreate(unsigned int a1, int a2, void *a3)
{
  if ((a2 - 3) < 0xFFFFFFFE || a3 == 0)
  {
    return 4294962996;
  }

  *a3 = 0;
  if (a1 > 5)
  {
    return 4294962996;
  }

  if (*(MEMORY[0x29EDCA698] + 96) == -1)
  {
    v8 = *(MEMORY[0x29EDCA698] + 104);
    if (v8)
    {
      goto LABEL_9;
    }

LABEL_30:
    CCDigestGetDigestInfo_cold_1();
  }

  v8 = _os_alloc_once();
  if (!v8)
  {
    goto LABEL_30;
  }

LABEL_9:
  v9 = malloc_type_malloc(0x20uLL, 0x10200405028CB4AuLL);
  if (v9)
  {
    v10 = v9;
    v11 = malloc_type_malloc(0x108uLL, 0x1060040B02D0E39uLL);
    if (v11)
    {
      v12 = v11;
      memcpy(v11, (v8 + 264 * a1 + 1952), 0x108uLL);
      *(v10 + 2) = a2;
      *v10 = v12;
      *(v10 + 2) = 0;
      v13 = v10 + 16;
      *(v10 + 3) = 0;
      v14 = v10 + 24;
      v15 = v12[32];
      if (v15 && (v16 = *(v15 + 24)) != 0)
      {
        v17 = *(v16 + 8);
      }

      else
      {
        v17 = 0;
      }

      *(v10 + 2) = CNBufferCreate(v17);
      if (*v10 && (v18 = *(*v10 + 256)) != 0 && (v19 = *(v18 + 24)) != 0)
      {
        v20 = *(v19 + 12);
      }

      else
      {
        v20 = 0;
      }

      v21 = CNBufferCreate(v20);
      *v14 = v21;
      if (*v13 && v21)
      {
        result = 0;
        *a3 = v10;
        return result;
      }

      if (*v13)
      {
        CNBufferRelease((v10 + 16));
        v21 = *v14;
      }

      if (v21)
      {
        CNBufferRelease((v10 + 24));
      }
    }

    free(v10);
  }

  return 4294962994;
}

uint64_t CNBufferProcessData(uint64_t a1, uint64_t a2, char *a3, size_t a4, uint64_t a5, unint64_t *a6, void (*a7)(uint64_t, char *, size_t, uint64_t, unint64_t *), uint64_t (*a8)(uint64_t, size_t))
{
  v11 = a4;
  v23 = *a6;
  v15 = v23;
  v16 = *a1;
  if (a8(a2, *(a1 + 8) + a4) > v23)
  {
    return 4294962995;
  }

  *a6 = 0;
  v18 = *(a1 + 8);
  if (v18)
  {
    if (v16 - v18 >= v11)
    {
      v19 = v11;
    }

    else
    {
      v19 = v16 - v18;
    }

    memcpy((*(a1 + 16) + v18), a3, v19);
    v20 = *(a1 + 8) + v19;
    *(a1 + 8) = v20;
    if (v20 < v16)
    {
      return 0;
    }

    v22 = a7;
    a7(a2, *(a1 + 16), v16, a5, &v23);
    v11 -= v19;
    v21 = v23;
    a3 += v19;
    a5 += v23;
    *a6 = v23;
    v15 -= v21;
    *(a1 + 8) = 0;
  }

  else
  {
    v22 = a7;
  }

  if (v11 == v11 % v16)
  {
    if (v11 > v16)
    {
      return 4294962993;
    }
  }

  else
  {
    v23 = v15;
    v22(a2, a3, v11 - v11 % v16, a5, &v23);
    a3 += v11 - v11 % v16;
    *a6 += v23;
    v11 %= v16;
  }

  if (v11)
  {
    memcpy(*(a1 + 16), a3, v11);
    result = 0;
    *(a1 + 8) = v11;
    return result;
  }

  return 0;
}

unsigned __int8 *__cdecl CC_SHA256(const void *data, CC_LONG len, unsigned __int8 *md)
{
  if (CCDigest(0xAu, data, len, md))
  {
    return 0;
  }

  else
  {
    return md;
  }
}

uint64_t ccdigest_finalize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a4 + 1;
  *(a2 + a4) = 0x80;
  v10 = *(a1 + 16);
  v11 = -8;
  if (v10 == 128)
  {
    v11 = -16;
  }

  if (v9 > v11 + v10)
  {
    if (v9 < v10)
    {
      do
      {
        *(a2 + v9++) = 0;
      }

      while (v9 < *(a1 + 16));
    }

    (*(a1 + 48))(a3, 1, a2);
    v9 = 0;
    v10 = *(a1 + 16);
  }

  for (i = v10 - 8; v9 < i; ++v9)
  {
    *(a2 + v9) = 0;
    i = *(a1 + 16) - 8;
  }

  *(a2 + i) = bswap64(8 * a5);
  v13 = *(a1 + 48);

  return v13(a3, 1, a2);
}

void *ccdigest_process(void *result, uint64_t a2, uint64_t a3, uint64_t a4, size_t a5, char *__src)
{
  if (a5)
  {
    v7 = a5;
    v11 = result;
    do
    {
      v12 = *(v11 + 16);
      if (a4 || v7 < v12)
      {
        v15 = v12 - a4;
        if (v7 >= v15)
        {
          v14 = v15;
        }

        else
        {
          v14 = v7;
        }

        result = memcpy((a2 + a4), __src, v14);
        a4 += v14;
        if (a4 == *(v11 + 16))
        {
          result = (*(v11 + 48))(a3, 1, a2);
          a4 = 0;
        }
      }

      else
      {
        v13 = v7 / v12;
        result = (*(v11 + 48))(a3, v7 / v12, __src);
        a4 = 0;
        v14 = *(v11 + 16) * v13;
      }

      __src += v14;
      v7 -= v14;
    }

    while (v7);
  }

  return result;
}

int CC_SHA256_Init(CC_SHA256_CTX *c)
{
  DigestInfo = CCDigestGetDigestInfo(0xAu);
  cc_clear();
  cc_clear();
  *c->count = 0;
  memcpy(c->hash, *(DigestInfo + 40), *(DigestInfo + 8));
  return 1;
}

int CC_SHA256_Update(CC_SHA256_CTX *c, const void *data, CC_LONG len)
{
  DigestInfo = CCDigestGetDigestInfo(0xAu);
  if (data && len)
  {
    v7 = *c->count % DigestInfo[2];
    *c->count += len;
    ccdigest_process(DigestInfo, c->wbuf, c->hash, v7, len, data);
  }

  return 1;
}

int CC_SHA256_Final(unsigned __int8 *md, CC_SHA256_CTX *c)
{
  DigestInfo = CCDigestGetDigestInfo(0xAu);
  if (md)
  {
    ccdigest_finalize(DigestInfo, c->wbuf, c->hash, *c->count % *(DigestInfo + 16), *c->count);
    v5 = 0;
    v6 = md + 1;
    do
    {
      *(v6 - 1) = bswap32(c->hash[v5++]);
      v6 += 4;
    }

    while (v5 != 8);
  }

  return 1;
}

unint64_t encodeLen(uint64_t *a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    v4 = *a1;
    if (v4 && (v5 = *(v4 + 256)) != 0 && (v6 = *(v5 + 24)) != 0 && (v7 = *(v6 + 8), v7) && (v8 = *(v6 + 12), v8))
    {
      return (a2 + v7 - 1) / v7 * v8;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t enCode(uint64_t *a1, char *a2, uint64_t a3, char *a4, unint64_t *a5)
{
  if (!a1)
  {
    goto LABEL_15;
  }

  v7 = *a1;
  if (!*a1)
  {
    goto LABEL_15;
  }

  v8 = a3;
  v10 = *(v7 + 256);
  if (v10 && (v11 = *(v10 + 24)) != 0)
  {
    v12 = *(v11 + 4);
    if (!a3)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v12 = 0;
    if (!a3)
    {
LABEL_15:
      *a5 = 0;
      goto LABEL_16;
    }
  }

  v13 = *(v7 + 256);
  if (!v13)
  {
    goto LABEL_15;
  }

  v14 = *(v13 + 24);
  if (!v14)
  {
    goto LABEL_15;
  }

  v15 = *(v14 + 8);
  if (!v15)
  {
    goto LABEL_15;
  }

  v16 = *(v14 + 12);
  if (!v16)
  {
    goto LABEL_15;
  }

  v17 = (a3 + v15 - 1) / v15 * v16;
  if (!v17)
  {
    goto LABEL_15;
  }

  v18 = *a5;
  *a5 = v17;
  if (v18 < v17)
  {
    return 0xFFFFFFFFLL;
  }

  cc_clear();
  v20 = 0;
  do
  {
    v21 = v20 / v12;
    v22 = v20 % v12 - v12 + 8;
    a4[v21] |= *(*(*(*a1 + 256) + 24) + 16) & (*a2 >> (v20 % v12 - v12 + 8));
    if (v22 > v12)
    {
      a4[++v21] |= *(*(*(*a1 + 256) + 24) + 16) & (*a2 >> (v22 - v12));
      LOBYTE(v22) = v22 - v12;
    }

    v23 = *a2++;
    a4[v21 + 1] |= *(*(*(*a1 + 256) + 24) + 16) & (v23 << (v12 - v22));
    v20 += 8;
    --v8;
  }

  while (v8);
  v24 = v21 + 2;
  v25 = a4;
  v26 = v21 + 2;
  do
  {
    v27 = *(*a1 + 256);
    if (*(v27 + 32) <= *v25)
    {
      v28 = 0x80;
    }

    else
    {
      v28 = *(*(v27 + 16) + *v25);
    }

    *v25++ = v28;
    --v26;
  }

  while (v26);
  while (v24 < v17)
  {
    a4[v24++] = *(*(*a1 + 256) + 33);
  }

  a4 += v24;
LABEL_16:
  result = 0;
  *a4 = 0;
  return result;
}

uint64_t CNEncoderFinal(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  result = 4294962996;
  if (a1 && a2 && a3)
  {
    v7 = *(a1 + 8);
    if (v7 == 2)
    {
      v14 = OUTLINED_FUNCTION_0_1(4294962996, a1);

      return CNBufferFlushData(v14, v15, a2, a3, v16, decodeLen);
    }

    else if (v7 == 1)
    {
      v8 = *(*(a1 + 24) + 8);
      if (v8 && *a1 && (v9 = *(*a1 + 256)) != 0 && (v10 = *(v9 + 24)) != 0 && (v11 = *(v10 + 8), v11) && (v12 = *(v10 + 12), v12))
      {
        v13 = (v8 + v11 - 1) / v11 * v12 + 1;
      }

      else
      {
        v13 = 1;
      }

      if (v13 <= *a3)
      {
        v17 = OUTLINED_FUNCTION_1(4294962996, a1);
        result = CNBufferFlushData(v17, v18, a2, a3, v19, encodeLen);
        if (!result)
        {
          *(a2 + *a3) = 0;
        }
      }

      else
      {
        return 4294962995;
      }
    }
  }

  return result;
}

uint64_t CNBufferFlushData(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, unint64_t, unint64_t, uint64_t, void *), uint64_t (*a6)(uint64_t))
{
  v8 = a1[1];
  if (v8)
  {
    if (v8 <= *a1)
    {
      if (a6(a2) <= *a4)
      {
        a5(a2, a1[2], a1[1], a3, a4);
        return 0;
      }

      else
      {
        return 4294962995;
      }
    }

    else
    {
      return 4294962993;
    }
  }

  else
  {
    result = 0;
    *a4 = 0;
  }

  return result;
}

uint64_t CNEncoderRelease(void **a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = *v1;
    v3 = *(*v1 + 256);
    if (v3 && v3[2] == 51966)
    {
      free(v3);
    }

    if (v1[2])
    {
      CNBufferRelease((v1 + 2));
    }

    if (v1[3])
    {
      CNBufferRelease((v1 + 3));
    }

    free(v2);
    free(v1);
  }

  return 0;
}

uint64_t CNBufferRelease(uint64_t a1)
{
  if (a1)
  {
    v1 = *a1;
    v2 = *(*a1 + 16);
    if (v2)
    {
      free(v2);
    }

    free(v1);
  }

  return 0;
}

unsigned __int8 *__cdecl CC_SHA1(const void *data, CC_LONG len, unsigned __int8 *md)
{
  if (CCDigest(8u, data, len, md))
  {
    return 0;
  }

  else
  {
    return md;
  }
}

int CC_MD5_Init(CC_MD5_CTX *c)
{
  v8[1] = *MEMORY[0x29EDCA608];
  DigestInfo = CCDigestGetDigestInfo(3u);
  v3 = (((*(DigestInfo + 8) + *(DigestInfo + 16) + 19) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8]();
  v5 = (v8 - v4);
  ccdigest_init();
  memcpy(c, v5 + 1, *(DigestInfo + 8));
  memcpy(c->data, v5 + *(DigestInfo + 8) + 8, *(DigestInfo + 16));
  *&c->Nl = *v5;
  c->num = *(v5 + *(DigestInfo + 8) + *(DigestInfo + 16) + 8);
  v6 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t init_globals(uint64_t a1)
{
  *(a1 + 3536) = 0u;
  *(a1 + 3552) = 0u;
  *(a1 + 3664) = 0;
  *(a1 + 3648) = 0u;
  *(a1 + 3632) = 0u;
  *(a1 + 3616) = 0u;
  *(a1 + 3600) = 0u;
  *(a1 + 3584) = 0u;
  *(a1 + 3568) = 0u;
  *(a1 + 3544) = MEMORY[0x29EDCA518];
  *(a1 + 3552) = MEMORY[0x29EDCA520];
  *(a1 + 3560) = ccmd5_di();
  *(a1 + 3576) = MEMORY[0x29EDCA530];
  *(a1 + 3600) = ccsha1_di();
  *(a1 + 3608) = ccsha224_di();
  *(a1 + 3616) = ccsha256_di();
  *(a1 + 3624) = ccsha384_di();
  *(a1 + 3632) = ccsha512_di();
  *(a1 + 3640) = ccsha3_224_di();
  *(a1 + 3648) = ccsha3_256_di();
  *(a1 + 3656) = ccsha3_384_di();
  *(a1 + 3664) = ccsha3_512_di();
  *(a1 + 2208) = 0;
  *(a1 + 2472) = &defaultBase64;
  *(a1 + 2736) = &defaultBase32;
  *(a1 + 3000) = &recoveryBase32;
  *(a1 + 3264) = &hexBase32;
  *(a1 + 3528) = &defaultBase16;
  v2 = a1 + 2216;
  v3 = 5;
  do
  {
    result = setReverseMap(v2);
    v2 += 264;
    --v3;
  }

  while (v3);
  *(a1 + 328) = &CC_crc8;
  *(a1 + 360) = &CC_crc8_icode;
  *(a1 + 392) = &CC_crc8_itu;
  *(a1 + 424) = &CC_crc8_rohc;
  *(a1 + 456) = &CC_crc8_wcdma;
  *(a1 + 648) = &CC_crc16;
  *(a1 + 680) = &CC_crc16_ccitt_true;
  *(a1 + 712) = &CC_crc16_ccitt_false;
  *(a1 + 744) = &CC_crc16_usb;
  *(a1 + 776) = &CC_crc16_xmodem;
  *(a1 + 808) = &CC_crc16_dect_r;
  *(a1 + 840) = &CC_crc16_dect_x;
  *(a1 + 872) = &CC_crc16_icode;
  *(a1 + 904) = &CC_crc16_verifone;
  *(a1 + 936) = &CC_crc16_a;
  *(a1 + 968) = &CC_crc16_b;
  *(a1 + 1000) = 0;
  *(a1 + 1288) = &CC_adler32;
  *(a1 + 1320) = &CC_crc32;
  *(a1 + 1352) = &CC_crc32_castagnoli;
  *(a1 + 1384) = &CC_crc32_bzip2;
  *(a1 + 1416) = &CC_crc32_mpeg_2;
  *(a1 + 1448) = &CC_crc32_posix;
  *(a1 + 1480) = &CC_crc32_xfer;
  *(a1 + 1928) = &CC_crc64_ecma_182;
  return result;
}

uint64_t setReverseMap(uint64_t result)
{
  *&v1 = 0x8080808080808080;
  *(&v1 + 1) = 0x8080808080808080;
  *(result + 224) = v1;
  *(result + 240) = v1;
  *(result + 192) = v1;
  *(result + 208) = v1;
  *(result + 160) = v1;
  *(result + 176) = v1;
  *(result + 128) = v1;
  *(result + 144) = v1;
  *(result + 96) = v1;
  *(result + 112) = v1;
  *(result + 64) = v1;
  *(result + 80) = v1;
  *(result + 32) = v1;
  *(result + 48) = v1;
  *result = v1;
  *(result + 16) = v1;
  v2 = *(result + 256);
  if (*(v2 + 32))
  {
    v3 = 0;
    do
    {
      *(result + *(*(v2 + 16) + v3)) = v3;
      ++v3;
    }

    while (v3 < *(v2 + 32));
  }

  return result;
}

int CC_MD5_Update(CC_MD5_CTX *c, const void *data, CC_LONG len)
{
  v13[1] = *MEMORY[0x29EDCA608];
  DigestInfo = CCDigestGetDigestInfo(3u);
  v5 = *(DigestInfo + 8);
  v6 = *(DigestInfo + 16);
  MEMORY[0x2A1C7C4A8]();
  v8 = (v13 - v7);
  v9 = &v13[1] - v7;
  memcpy(v9, c, v5);
  v10 = &v9[v5];
  memcpy(v10, c->data, v6);
  *v8 = *&c->Nl;
  *&v10[v6] = c->num;
  ccdigest_update();
  memcpy(c, v9, *(DigestInfo + 8));
  memcpy(c->data, &v9[*(DigestInfo + 8)], *(DigestInfo + 16));
  *&c->Nl = *v8;
  c->num = *(v8 + *(DigestInfo + 8) + *(DigestInfo + 16) + 8);
  v11 = *MEMORY[0x29EDCA608];
  return 1;
}

int CC_MD5_Final(unsigned __int8 *md, CC_MD5_CTX *c)
{
  v13[1] = *MEMORY[0x29EDCA608];
  DigestInfo = CCDigestGetDigestInfo(3u);
  v5 = *(DigestInfo + 8);
  v6 = *(DigestInfo + 16);
  MEMORY[0x2A1C7C4A8]();
  v8 = (v13 - v7);
  v9 = &v13[1] - v7;
  memcpy(v9, c, v5);
  v10 = &v9[v5];
  memcpy(v10, c->data, v6);
  *v8 = *&c->Nl;
  *&v10[v6] = c->num;
  (*(DigestInfo + 56))(DigestInfo, v8, md);
  memcpy(c, v9, *(DigestInfo + 8));
  memcpy(c->data, &v9[*(DigestInfo + 8)], *(DigestInfo + 16));
  *&c->Nl = *v8;
  c->num = *(v8 + *(DigestInfo + 8) + *(DigestInfo + 16) + 8);
  v11 = *MEMORY[0x29EDCA608];
  return 1;
}

CCCryptorStatus CCCryptorCreateWithMode(CCOperation op, CCMode mode, CCAlgorithm alg, CCPadding padding, const void *iv, const void *key, size_t keyLength, const void *tweak, size_t tweakLength, int numRounds, CCModeOptions options, CCCryptorRef *cryptorRef)
{
  v40[2] = *MEMORY[0x29EDCA608];
  v12 = -4300;
  if (key && cryptorRef)
  {
    v15 = key;
    if ((key & 3) != 0)
    {
      v20 = malloc_type_malloc(keyLength, 0x7941071FuLL);
      if (!v20)
      {
        v12 = -4302;
        goto LABEL_22;
      }

      v21 = v20;
      v38 = tweak;
      memcpy(v20, v15, keyLength);
      v15 = v21;
    }

    else
    {
      v38 = tweak;
      v21 = 0;
    }

    v22 = malloc_type_malloc(0x1000uLL, 0x10E2040E799B8C4uLL);
    if (v22)
    {
      v23 = v22;
      *v22 = 0;
      if (op > 3 || alg > 6)
      {
        goto LABEL_17;
      }

      if (alg == 4)
      {
        mode = 7;
      }

      v22[17] = mode;
      if (mode <= 8 && ((1 << mode) & 0x106) != 0)
      {
        *(v22 + 13) = 0;
        *(v22 + 14) = 0;
      }

      else
      {
        *(v22 + 13) = 0;
        *(v22 + 14) = 0;
        if (op < 2)
        {
          v37 = (v22 + 26);
          v24 = setCryptorCipherMode(v22, alg, mode, op);
          if (v24)
          {
            goto LABEL_16;
          }

          v31 = (**(v23 + 96))(*(v23 + 8 * op + 80));
          v32 = malloc_type_malloc(v31, 0x6D6FC5BBuLL);
          *&v37[8 * op] = v32;
          if (!v32)
          {
LABEL_30:
            v12 = -4302;
            goto LABEL_17;
          }

LABEL_32:
          if (padding == 12)
          {
            v33 = cccts3_pad;
          }

          else if (padding == 1)
          {
            if (mode == 2)
            {
              v33 = ccpkcs7_pad;
            }

            else
            {
              v33 = ccpkcs7_ecb_pad;
            }
          }

          else
          {
            v33 = ccnopad_pad;
          }

          *(v23 + 120) = v33;
          *(v23 + 64) = alg;
          if (alg > 3)
          {
            if (alg == 4)
            {
              *(v23 + 48) = 0;
              *(v23 + 56) = 1;
              *(v23 + 72) = op;
              *(v23 + 40) = 0;
              if (keyLength - 1 >= 0x200)
              {
                goto LABEL_57;
              }
            }

            else
            {
              if (alg == 5)
              {
                *(v23 + 48) = 0;
                *(v23 + 56) = 8;
                *(v23 + 72) = op;
                *(v23 + 40) = 0;
                if (keyLength - 1 < 0x80)
                {
                  goto LABEL_59;
                }

                goto LABEL_57;
              }

              *(v23 + 48) = 0;
              *(v23 + 56) = 8;
              *(v23 + 72) = op;
              *(v23 + 40) = 0;
              if (keyLength - 8 >= 0x31)
              {
                goto LABEL_57;
              }
            }
          }

          else
          {
            if (alg != 1)
            {
              if (alg == 2)
              {
                *(v23 + 48) = 0;
                *(v23 + 56) = 8;
                *(v23 + 72) = op;
                *(v23 + 40) = 0;
                if (keyLength == 24)
                {
                  goto LABEL_59;
                }

                goto LABEL_57;
              }

              if (alg == 3)
              {
                *(v23 + 48) = 0;
                *(v23 + 56) = 8;
                *(v23 + 72) = op;
                *(v23 + 40) = 0;
                if (keyLength - 5 < 0xC)
                {
                  goto LABEL_59;
                }

LABEL_57:
                v12 = -4310;
                goto LABEL_17;
              }

              *(v23 + 48) = 0;
              *(v23 + 56) = 16;
              *(v23 + 72) = op;
              *(v23 + 40) = 0;
              v12 = -4310;
              if (keyLength <= 0x20 && ((1 << keyLength) & 0x101010000) != 0)
              {
                goto LABEL_59;
              }

LABEL_17:
              *cryptorRef = 0;
              ccClearCryptor(v23);
              free(v23);
              if (!v21)
              {
                goto LABEL_22;
              }

              goto LABEL_20;
            }

            *(v23 + 48) = 0;
            *(v23 + 56) = 8;
            *(v23 + 72) = op;
            *(v23 + 40) = 0;
            if (keyLength != 8)
            {
              goto LABEL_57;
            }
          }

LABEL_59:
          v40[0] = 0;
          v40[1] = 0;
          if (iv)
          {
            v34 = iv;
          }

          else
          {
            v34 = v40;
          }

          v35 = *(v23 + 68);
          if (v35 > 8 || ((1 << v35) & 0x106) == 0)
          {
            if (op < 2)
            {
              if ((*(*(v23 + 96) + 16))(*(v23 + 8 * op + 80), v34, v15, keyLength, v38, 0, 0, *(v23 + 8 * op + 104)))
              {
                goto LABEL_65;
              }

              goto LABEL_72;
            }

            if (op != 3)
            {
              goto LABEL_72;
            }
          }

          v36 = (*(*(v23 + 96) + 16))(*(v23 + 80), v34, v15, keyLength, v38, 0, 0, *(v23 + 104));
          if ((*(*(v23 + 96) + 16))(*(v23 + 88), v34, v15, keyLength, v38, 0, 0, *(v23 + 112)) | v36)
          {
LABEL_65:
            if (*(v23 + 64) != 2 && *(v23 + 68) != 8)
            {
              v12 = -4308;
              goto LABEL_17;
            }
          }

LABEL_72:
          v12 = 0;
          *cryptorRef = v23;
          if (!v21)
          {
            goto LABEL_22;
          }

          goto LABEL_20;
        }

        if (op != 3)
        {
          goto LABEL_32;
        }
      }

      v24 = setCryptorCipherMode(v22, alg, mode, 0);
      if (v24)
      {
LABEL_16:
        v12 = v24;
        goto LABEL_17;
      }

      v27 = (**(v23 + 96))(*(v23 + 80));
      v28 = malloc_type_malloc(v27, 0x852E10A9uLL);
      *(v23 + 104) = v28;
      if (!v28)
      {
        goto LABEL_30;
      }

      v24 = setCryptorCipherMode(v23, alg, mode, 1u);
      if (v24)
      {
        goto LABEL_16;
      }

      v29 = (**(v23 + 96))(*(v23 + 88));
      v30 = malloc_type_malloc(v29, 0x1FF1E7E4uLL);
      *(v23 + 112) = v30;
      if (!v30)
      {
        goto LABEL_30;
      }

      goto LABEL_32;
    }

    *cryptorRef = 0;
    v12 = -4302;
    if (v21)
    {
LABEL_20:
      cc_clear();
      free(v21);
    }
  }

LABEL_22:
  v25 = *MEMORY[0x29EDCA608];
  return v12;
}

uint64_t setCryptorCipherMode(uint64_t a1, unsigned int a2, int a3, unsigned int a4)
{
  result = 4294962996;
  if (a3 <= 6)
  {
    if (a3 > 2)
    {
      if (a3 == 3)
      {
        v13 = (*(&ccmodeList[18 * a2 + 2] + 9 * a4))(4294962996);
        *(a1 + 8 * a4 + 80) = v13;
        if (v13)
        {
          v8 = cccfb_mode;
          goto LABEL_31;
        }
      }

      else
      {
        if (a3 != 4)
        {
          return result;
        }

        v10 = (*(&ccmodeList[18 * a2 + 4] + 9 * a4))(4294962996);
        *(a1 + 8 * a4 + 80) = v10;
        if (v10)
        {
          v8 = ccctr_mode;
          goto LABEL_31;
        }
      }
    }

    else if (a3 == 1)
    {
      v12 = (*(&ccmodeList[18 * a2] + 9 * a4))(4294962996);
      *(a1 + 8 * a4 + 80) = v12;
      if (v12)
      {
        v8 = ccecb_mode;
        goto LABEL_31;
      }
    }

    else
    {
      if (a3 != 2)
      {
        return result;
      }

      v9 = (*(&ccmodeList[18 * a2 + 1] + 9 * a4))(4294962996);
      *(a1 + 8 * a4 + 80) = v9;
      if (v9)
      {
        v8 = cccbc_mode;
        goto LABEL_31;
      }
    }
  }

  else if (a3 <= 9)
  {
    if (a3 == 7)
    {
      v15 = (*(&ccmodeList[18 * a2 + 5] + 9 * a4))(4294962996);
      *(a1 + 8 * a4 + 80) = v15;
      if (v15)
      {
        v8 = ccofb_mode;
        goto LABEL_31;
      }
    }

    else
    {
      if (a3 != 8)
      {
        return result;
      }

      v11 = (*(&ccmodeList[18 * a2 + 6] + 9 * a4))(4294962996);
      *(a1 + 8 * a4 + 80) = v11;
      if (v11)
      {
        v8 = ccxts_mode;
        goto LABEL_31;
      }
    }
  }

  else
  {
    switch(a3)
    {
      case 10:
        v14 = (*(&ccmodeList[18 * a2 + 3] + 9 * a4))(4294962996);
        *(a1 + 8 * a4 + 80) = v14;
        if (v14)
        {
          v8 = cccfb8_mode;
          goto LABEL_31;
        }

        break;
      case 11:
        v16 = (*(&ccmodeList[18 * a2 + 7] + 9 * a4))(4294962996);
        *(a1 + 8 * a4 + 80) = v16;
        if (v16)
        {
          v8 = ccgcm_mode;
          goto LABEL_31;
        }

        break;
      case 12:
        v7 = (*(&ccmodeList[18 * a2 + 8] + 9 * a4))(4294962996);
        *(a1 + 8 * a4 + 80) = v7;
        if (v7)
        {
          v8 = ccccm_mode;
LABEL_31:
          result = 0;
          *(a1 + 96) = v8;
          return result;
        }

        break;
      default:
        return result;
    }
  }

  return 4294962991;
}

uint64_t CCCryptorGCM(CCOperation a1, CCAlgorithm alg, void *key, size_t keyLength, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13)
{
  cryptorRef = 0;
  v17 = CCCryptorCreateWithMode(a1, 0xBu, alg, 0, 0, key, keyLength, 0, 0, 0, 0, &cryptorRef);
  if (v17)
  {
    return v17;
  }

  v17 = CCCryptorGCMAddIV(cryptorRef, a5, a6);
  if (v17)
  {
    return v17;
  }

  v17 = CCCryptorGCMAddAAD(cryptorRef, a7, a8);
  if (v17)
  {
    return v17;
  }

  v17 = gcm_update(cryptorRef, a9, a10, a11);
  if (v17)
  {
    return v17;
  }

  v18 = CCCryptorGCMFinal(cryptorRef, a12, a13);
  CCCryptorRelease(cryptorRef);
  return v18;
}

uint64_t getDesc(unsigned int a1)
{
  if (*(MEMORY[0x29EDCA698] + 96) != -1)
  {
    v2 = _os_alloc_once();
    if (v2)
    {
      return v2 + 32 * a1;
    }

LABEL_5:
    CCDigestGetDigestInfo_cold_1();
  }

  v2 = *(MEMORY[0x29EDCA698] + 104);
  if (!v2)
  {
    goto LABEL_5;
  }

  return v2 + 32 * a1;
}

uint64_t CNCRC(unsigned int a1, _BYTE *a2, uint64_t a3, uint64_t *a4)
{
  Desc = getDesc(a1);
  v8 = Desc[1];
  if (!v8)
  {
    return 4294962991;
  }

  if (*(v8 + 8))
  {
    v9 = (*(v8 + 40))(a3, a2);
  }

  else if (*(v8 + 20))
  {
    v9 = crc_reverse_oneshot(Desc, a2, a3);
  }

  else
  {
    v9 = crc_normal_oneshot(Desc, a2, a3);
  }

  v10 = 0;
  *a4 = v9;
  return v10;
}

unint64_t crc_reverse_oneshot(dispatch_once_t *predicate, _BYTE *a2, uint64_t a3)
{
  if (*predicate != -1)
  {
    dispatch_once_f(predicate, predicate, gen_std_crc_table);
  }

  v6 = predicate[1];
  return *(v6 + 48) ^ crc_reverse_update(predicate, a2, a3, *(v6 + 40));
}

unint64_t crc_reverse_update(uint64_t a1, _BYTE *a2, uint64_t a3, unint64_t a4)
{
  if (a3)
  {
    v4 = *(*(a1 + 8) + 16);
    do
    {
      if (v4 > 3)
      {
        if (v4 == 4)
        {
          a4 = *(*(a1 + 24) + 4 * (*a2 ^ a4)) ^ (a4 >> 8);
        }

        else if (v4 == 8)
        {
          a4 = *(*(a1 + 24) + 8 * (*a2 ^ a4)) ^ (a4 >> 8);
        }
      }

      else if (v4 == 1)
      {
        a4 = *(*(a1 + 24) + (*a2 ^ a4));
      }

      else if (v4 == 2)
      {
        a4 = (*(*(a1 + 24) + 2 * (*a2 ^ a4)) ^ ((a4 & 0xFF00) >> 8));
      }

      ++a2;
      --a3;
    }

    while (a3);
  }

  return a4;
}

int CC_SHA512_Init(CC_SHA512_CTX *c)
{
  DigestInfo = CCDigestGetDigestInfo(0xCu);
  cc_clear();
  cc_clear();
  c->count[0] = 0;
  memcpy(c->hash, *(DigestInfo + 40), *(DigestInfo + 8));
  return 1;
}

int CC_SHA512_Update(CC_SHA512_CTX *c, const void *data, CC_LONG len)
{
  DigestInfo = CCDigestGetDigestInfo(0xCu);
  if (data && len)
  {
    v7 = c->count[0] % DigestInfo[2];
    c->count[0] += len;
    ccdigest_process(DigestInfo, c->wbuf, c->hash, v7, len, data);
  }

  return 1;
}

int CC_SHA512_Final(unsigned __int8 *md, CC_SHA512_CTX *c)
{
  DigestInfo = CCDigestGetDigestInfo(0xCu);
  if (md)
  {
    v5 = DigestInfo;
    ccdigest_finalize(DigestInfo, c->wbuf, c->hash, c->count[0] % *(DigestInfo + 16), c->count[0]);
    if (*v5 >= 8uLL)
    {
      v6 = 0;
      v7 = md + 3;
      do
      {
        *(v7 - 3) = bswap64(c->hash[v6++]);
        v7 += 8;
      }

      while (v6 < *v5 >> 3);
    }
  }

  return 1;
}

CCRNGStatus CCRandomGenerateBytes(void *bytes, size_t count)
{
  if (!count)
  {
    return 0;
  }

  if (!bytes)
  {
    return -4300;
  }

  v4 = ccrng();
  if ((*v4)(v4, count, bytes))
  {
    return -4307;
  }

  else
  {
    return 0;
  }
}

void CCHmac(CCHmacAlgorithm algorithm, const void *key, size_t keyLength, const void *data, size_t dataLength, void *macOut)
{
  v11 = 6;
  v12 = &dword_29F286C04;
  while (*(v12 - 1) != algorithm)
  {
    v12 += 4;
    if (!--v11)
    {
      DigestInfo = 0;
      goto LABEL_6;
    }
  }

  DigestInfo = CCDigestGetDigestInfo(*v12);
LABEL_6:

  MEMORY[0x2A1C74558](DigestInfo, keyLength, key, dataLength, data, macOut);
}

uint64_t cccbc_mode_setup(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, char *__dst)
{
  memcpy(__dst, a2, *(a1 + 8));
  v12 = *(a1 + 16);

  return v12(a1, __dst + 16, a4, a3);
}

CCCryptorStatus CCCryptorUpdate(CCCryptorRef cryptorRef, const void *dataIn, size_t dataInLength, void *dataOut, size_t dataOutAvailable, size_t *dataOutMoved)
{
  v32 = dataOutAvailable;
  v33 = dataOut;
  if (!cryptorRef)
  {
    return -4300;
  }

  v9 = dataInLength;
  if (*cryptorRef)
  {
    v11 = *cryptorRef;
  }

  else
  {
    v11 = cryptorRef;
  }

  if (dataOutMoved)
  {
    *dataOutMoved = 0;
  }

  if (!dataInLength)
  {
    return 0;
  }

  v12 = v11 + 80;
  v13 = (*(*(v11 + 12) + 8))(*(v11 + *(v11 + 18) + 10));
  v14 = v9;
  if (v13 != 1)
  {
    v14 = (*(*(v11 + 15) + 16))(*(v11 + 18) == 0, *(v11 + 12), *&v12[8 * *(v11 + 18)], *(v11 + 5) + v9, 0);
  }

  if (v14 <= dataOutAvailable)
  {
    if ((*(*(v11 + 12) + 8))(*&v12[8 * *(v11 + 18)]) == 1)
    {
      v16 = &v33;
      return ccSimpleUpdate(v11, dataIn, v9, v16, &v32, dataOutMoved);
    }

    v34 = dataOut;
    v17 = *(v11 + 5);
    v18 = (*(*(v11 + 15) + 24))(*(v11 + 18) == 0, *(v11 + 12), *&v12[8 * *(v11 + 18)]);
    v19 = v18;
    v20 = *(v11 + 16) - 1;
    if (v20 > 5)
    {
      v21 = 16;
      if (!v18)
      {
LABEL_22:
        if (!*(v11 + 5) && ((v21 - 1) & v9) == 0)
        {
          v16 = &v34;
          return ccSimpleUpdate(v11, dataIn, v9, v16, &v32, dataOutMoved);
        }
      }
    }

    else
    {
      v21 = qword_299C600B0[v20];
      if (!v18)
      {
        goto LABEL_22;
      }
    }

    v22 = v17 + v9;
    v23 = v17 + v9;
    if (v18 < v17 + v9)
    {
      v24 = v18 - v21;
      if (!v18)
      {
        v24 = 0;
      }

      if (((v21 - 1) & v22) != 0)
      {
        v23 = v24 + ((v21 - 1) & v22);
      }

      else
      {
        v23 = v18;
      }
    }

    v25 = v22 - v23;
    if (v22 != v23)
    {
      v26 = *(v11 + 5);
      if (!v26)
      {
        goto LABEL_38;
      }

      if (v26 >= v25)
      {
        if (v26 != v25)
        {
          if (v23)
          {
            return -4304;
          }

          result = ccSimpleUpdate(v11, v11 + 8, v25, &v34, &v32, dataOutMoved);
          if (result)
          {
            return result;
          }

          v31 = (v19 - v22);
          *(v11 + 5) = v31;
          memmove(v11 + 8, v11 + v25 + 8, v31);
          return 0;
        }

        result = ccSimpleUpdate(v11, v11 + 8, v22 - v23, &v34, &v32, dataOutMoved);
        if (result)
        {
          return result;
        }
      }

      else
      {
        v27 = v21 - (v26 & (v21 - 1));
        memcpy(v11 + v26 + 8, dataIn, v27);
        v28 = *(v11 + 5) + v27;
        *(v11 + 5) = v28;
        result = ccSimpleUpdate(v11, v11 + 8, v28, &v34, &v32, dataOutMoved);
        if (result)
        {
          return result;
        }

        v9 -= v27;
        dataIn = dataIn + v27;
      }

      v29 = *(v11 + 5);
      *(v11 + 5) = 0;
      v25 -= v29;
      if (v25)
      {
LABEL_38:
        if ((v25 & (v21 - 1)) != 0)
        {
          return -4304;
        }

        result = ccSimpleUpdate(v11, dataIn, v25, &v34, &v32, dataOutMoved);
        if (result)
        {
          return result;
        }

        dataIn = dataIn + v25;
        v9 -= v25;
      }
    }

    if (!v23 || (v30 = *(v11 + 5), v23 == v30))
    {
      if (!v9)
      {
        return 0;
      }

      return -4304;
    }

    if (v23 - v30 != v9)
    {
      return -4304;
    }

    memcpy(v11 + v30 + 8, dataIn, v9);
    *(v11 + 5) += v9;
    return 0;
  }

  if (dataOutMoved)
  {
    *dataOutMoved = v14;
  }

  return -4301;
}

uint64_t ccSimpleUpdate(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, unint64_t *a5, void *a6)
{
  v11 = *(a1 + 96);
  if (*(a1 + 72))
  {
    v12 = *(v11 + 32);
    if (!v12)
    {
      return 4294962996;
    }

    v13 = *a4;
    v14 = *(a1 + 88);
    v15 = *(a1 + 112);
  }

  else
  {
    v12 = *(v11 + 24);
    if (!v12)
    {
      return 4294962996;
    }

    v13 = *a4;
    v14 = *(a1 + 80);
    v15 = *(a1 + 104);
  }

  v16 = v12(v14, a2, v13, a3, v15);
  if (v16 == -68)
  {
    return 4294962987;
  }

  if (v16)
  {
    return 4294962996;
  }

  if (a6)
  {
    *a6 += a3;
  }

  if (*a5 < a3)
  {
    return 4294962995;
  }

  result = 0;
  *(a1 + 48) += a3;
  *a4 += a3;
  *a5 -= a3;
  return result;
}

int CC_SHA1_Init(CC_SHA1_CTX *c)
{
  v8[1] = *MEMORY[0x29EDCA608];
  DigestInfo = CCDigestGetDigestInfo(8u);
  v3 = (((*(DigestInfo + 8) + *(DigestInfo + 16) + 19) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8]();
  v5 = (v8 - v4);
  ccdigest_init();
  memcpy(c, v5 + 1, *(DigestInfo + 8));
  memcpy(c->data, v5 + *(DigestInfo + 8) + 8, *(DigestInfo + 16));
  *&c->Nl = *v5;
  c->num = *(v5 + *(DigestInfo + 8) + *(DigestInfo + 16) + 8);
  v6 = *MEMORY[0x29EDCA608];
  return 1;
}

int CC_SHA1_Update(CC_SHA1_CTX *c, const void *data, CC_LONG len)
{
  v13[1] = *MEMORY[0x29EDCA608];
  DigestInfo = CCDigestGetDigestInfo(8u);
  v5 = *(DigestInfo + 8);
  v6 = *(DigestInfo + 16);
  MEMORY[0x2A1C7C4A8]();
  v8 = (v13 - v7);
  v9 = &v13[1] - v7;
  memcpy(v9, c, v5);
  v10 = &v9[v5];
  memcpy(v10, c->data, v6);
  *v8 = *&c->Nl;
  *&v10[v6] = c->num;
  ccdigest_update();
  memcpy(c, v9, *(DigestInfo + 8));
  memcpy(c->data, &v9[*(DigestInfo + 8)], *(DigestInfo + 16));
  *&c->Nl = *v8;
  c->num = *(v8 + *(DigestInfo + 8) + *(DigestInfo + 16) + 8);
  v11 = *MEMORY[0x29EDCA608];
  return 1;
}

int CC_SHA1_Final(unsigned __int8 *md, CC_SHA1_CTX *c)
{
  v13[1] = *MEMORY[0x29EDCA608];
  DigestInfo = CCDigestGetDigestInfo(8u);
  v5 = *(DigestInfo + 8);
  v6 = *(DigestInfo + 16);
  MEMORY[0x2A1C7C4A8]();
  v8 = (v13 - v7);
  v9 = &v13[1] - v7;
  memcpy(v9, c, v5);
  v10 = &v9[v5];
  memcpy(v10, c->data, v6);
  *v8 = *&c->Nl;
  *&v10[v6] = c->num;
  (*(DigestInfo + 56))(DigestInfo, v8, md);
  memcpy(c, v9, *(DigestInfo + 8));
  memcpy(c->data, &v9[*(DigestInfo + 8)], *(DigestInfo + 16));
  *&c->Nl = *v8;
  c->num = *(v8 + *(DigestInfo + 8) + *(DigestInfo + 16) + 8);
  v11 = *MEMORY[0x29EDCA608];
  return 1;
}

CCCryptorStatus CCCryptorCreate(CCOperation op, CCAlgorithm alg, CCOptions options, const void *key, size_t keyLength, const void *iv, CCCryptorRef *cryptorRef)
{
  if ((options & 2) != 0)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (alg == 4)
  {
    v9 = 9;
  }

  else
  {
    v9 = v8;
  }

  return CCCryptorCreateWithMode(op, v9, alg, options & 1, iv, key, keyLength, 0, v11, v12, HIDWORD(v12), cryptorRef);
}

uint64_t CCDigestInit(unsigned int a1, uint64_t *a2)
{
  if (a1 - 17 < 0xFFFFFFF0 || a2 == 0)
  {
    return 4294962996;
  }

  DigestInfo = CCDigestGetDigestInfo(a1);
  *a2 = DigestInfo;
  if (!DigestInfo)
  {
    return 4294962991;
  }

  ccdigest_init();
  return 0;
}

uint64_t CCDigestFinal(void *a1, uint64_t a2)
{
  result = 4294962996;
  if (a1 && a2)
  {
    if (*a1)
    {
      (*(*a1 + 56))(*a1, a1 + 1, a2);
      return 0;
    }

    else
    {
      return 4294962991;
    }
  }

  return result;
}

uint64_t CCCryptorGCMAddIV(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 4294962996;
  }

  v3 = 4294962996;
  if (a2 || !a3)
  {
    v4 = *a1;
    if (!*a1)
    {
      v4 = a1;
    }

    v5 = &v4[*(v4 + 18)];
    v6 = v5[10];
    v7 = v5[13];
    v8 = ccgcm_set_iv_legacy();
    if (v8 == -7)
    {
      v9 = -4300;
    }

    else
    {
      v9 = -4308;
    }

    if (v8)
    {
      return v9;
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

CCCryptorStatus CCCryptorRelease(CCCryptorRef cryptorRef)
{
  if (cryptorRef)
  {
    if (*cryptorRef)
    {
      v1 = *cryptorRef;
    }

    else
    {
      v1 = cryptorRef;
    }

    ccClearCryptor(v1);
    free(v1);
  }

  return 0;
}

uint64_t ccClearCryptor(uint64_t a1)
{
  cc_clear();
  v2 = *(a1 + 68);
  v3 = v2 > 8;
  v4 = (1 << v2) & 0x106;
  if (!v3 && v4 != 0)
  {
    goto LABEL_5;
  }

  v12 = *(a1 + 72);
  if (v12 < 2)
  {
    (**(a1 + 96))(*(a1 + 8 * v12 + 80));
    v13 = *(a1 + 104 + 8 * *(a1 + 72));
    cc_clear();
    free(*(a1 + 104 + 8 * *(a1 + 72)));
    goto LABEL_7;
  }

  if (v12 == 3)
  {
LABEL_5:
    v6 = 0;
    v7 = a1 + 104;
    v8 = 1;
    do
    {
      v9 = v8;
      (**(a1 + 96))(*(a1 + 80 + 8 * v6));
      v10 = *(v7 + 8 * v6);
      cc_clear();
      free(*(v7 + 8 * v6));
      v8 = 0;
      v6 = 1;
    }

    while ((v9 & 1) != 0);
  }

LABEL_7:

  return cc_clear();
}

uint64_t CCCryptorGCMAddAAD(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 4294962996;
  }

  v3 = 4294962996;
  if (a2 || !a3)
  {
    v4 = *a1;
    if (!*a1)
    {
      v4 = a1;
    }

    v5 = &v4[*(v4 + 18)];
    v6 = v5[10];
    v7 = v5[13];
    v8 = ccgcm_aad();
    if (v8 == -7)
    {
      v9 = -4300;
    }

    else
    {
      v9 = -4308;
    }

    if (v8)
    {
      return v9;
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

uint64_t gcm_update(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 4294962996;
  }

  v4 = a1;
  if (a3)
  {
    v5 = a2 == 0;
  }

  else
  {
    v5 = 0;
  }

  result = 4294962996;
  if (!v5 && a4)
  {
    if (*v4)
    {
      v4 = *v4;
    }

    v7 = &v4[*(v4 + 18)];
    v8 = v7[10];
    v9 = v7[13];
    v10 = ccgcm_update();
    if (v10 == -7)
    {
      v11 = -4300;
    }

    else
    {
      v11 = -4308;
    }

    if (v10)
    {
      return v11;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CCCryptorGCMFinal(uint64_t **a1, uint64_t a2, uint64_t *a3)
{
  if (!a1)
  {
    return 4294962996;
  }

  v3 = a1;
  result = 4294962996;
  if (a2 && a3)
  {
    if (*v3)
    {
      v3 = *v3;
    }

    v5 = &v3[*(v3 + 18)];
    v6 = v5[10];
    v7 = v5[13];
    v8 = *a3;
    if (ccgcm_finalize() == -1)
    {
      return 4294962988;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unsigned __int8 *__cdecl CC_SHA512(const void *data, CC_LONG len, unsigned __int8 *md)
{
  if (CCDigest(0xCu, data, len, md))
  {
    return 0;
  }

  else
  {
    return md;
  }
}

uint64_t CCDeriveKey(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  DigestInfo = CCDigestGetDigestInfo(a2);
  v12 = 4294962996;
  if (DigestInfo && a5 && a6 && (a3 || !a4))
  {
    v13 = !a4 || a3 == 0;
    v14 = *a1;
    if (!v13 || v14 == 6)
    {
      v12 = 4294962991;
      if (v14 <= 1)
      {
        if (v14)
        {
          if (v14 != 1)
          {
            return v12;
          }

          v19 = *(a1 + 8);
          v18 = *(a1 + 16);
          v21 = *(a1 + 24);
          v20 = *(a1 + 32);
          v17 = ccnistkdf_ctr_hmac();
        }

        else
        {
          v29 = *(a1 + 16);
          v28 = *(a1 + 24);
          v30 = *(a1 + 8);
          v17 = ccpbkdf2_hmac();
        }
      }

      else
      {
        switch(v14)
        {
          case 2:
            v23 = *(a1 + 8);
            v22 = *(a1 + 16);
            v17 = ccnistkdf_ctr_hmac_fixed();
            break;
          case 6:
            v25 = *(a1 + 8);
            v24 = *(a1 + 16);
            v27 = *(a1 + 24);
            v26 = *(a1 + 32);
            v17 = cchkdf();
            break;
          case 7:
            v16 = *(a1 + 8);
            v15 = *(a1 + 16);
            v17 = ccansikdf_x963();
            break;
          default:
            return v12;
        }
      }

      if (v17)
      {
        return 4294962996;
      }

      else
      {
        return 0;
      }
    }
  }

  return v12;
}

void CCKDFParametersDestroy(void *a1)
{
  cc_clear();

  free(a1);
}

void *CCDigestCreate(unsigned int a1)
{
  v2 = malloc_type_malloc(0x408uLL, 0x1000040F7F14A6DuLL);
  if (v2 && CCDigestInit(a1, v2))
  {
    free(v2);
    return 0;
  }

  return v2;
}

void CCDigestDestroy(void *a1)
{
  if (a1)
  {
    cc_clear();

    free(a1);
  }
}

uint64_t CCHKDFExtract(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  DigestInfo = CCDigestGetDigestInfo(a2);
  result = 4294962996;
  if (a5 && DigestInfo && *DigestInfo == a6 && (a3 || !a4) && *a1 == 6)
  {
    v14 = *(a1 + 8);
    v13 = *(a1 + 16);
    if (cchkdf_extract())
    {
      return 4294962988;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CCHKDFExpand(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  DigestInfo = CCDigestGetDigestInfo(a2);
  if (!DigestInfo)
  {
    return 4294962996;
  }

  v12 = DigestInfo;
  result = 4294962996;
  if (a3 && a5 && a6 && *v12 == a4 && *a1 == 6)
  {
    v15 = *(a1 + 24);
    v14 = *(a1 + 32);
    if (cchkdf_expand())
    {
      return 4294962988;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

CCCryptorStatus CCCrypt(CCOperation op, CCAlgorithm alg, CCOptions options, const void *key, size_t keyLength, const void *iv, const void *dataIn, size_t dataInLength, void *dataOut, size_t dataOutAvailable, size_t *dataOutMoved)
{
  v22 = 0;
  cryptorRef = 0;
  if ((options & 2) != 0)
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  if (alg == 4)
  {
    v15 = 9;
  }

  else
  {
    v15 = v14;
  }

  v21 = 0;
  v16 = CCCryptorCreateWithMode(op, v15, alg, options & 1, iv, key, keyLength, 0, v19, v20, HIDWORD(v20), &cryptorRef);
  if (!v16)
  {
    OutputLength = CCCryptorGetOutputLength(cryptorRef, dataInLength, 1);
    if (dataOutMoved)
    {
      *dataOutMoved = OutputLength;
    }

    if (OutputLength <= dataOutAvailable)
    {
      v16 = CCCryptorUpdate(cryptorRef, dataIn, dataInLength, dataOut, dataOutAvailable, &v22);
      if (!v16)
      {
        v16 = CCCryptorFinal(cryptorRef, dataOut + v22, dataOutAvailable - v22, &v21);
        if (dataOutMoved)
        {
          *dataOutMoved = v21 + v22;
        }
      }
    }

    else
    {
      v16 = -4301;
    }

    CCCryptorRelease(cryptorRef);
  }

  return v16;
}

CCCryptorStatus CCCryptorFinal(CCCryptorRef cryptorRef, void *dataOut, size_t dataOutAvailable, size_t *dataOutMoved)
{
  v18 = *MEMORY[0x29EDCA608];
  if (!cryptorRef)
  {
    goto LABEL_23;
  }

  if (*cryptorRef)
  {
    v7 = *cryptorRef;
  }

  else
  {
    v7 = cryptorRef;
  }

  v8 = *(v7 + 18);
  __n = 0;
  if (dataOutMoved)
  {
    *dataOutMoved = 0;
  }

  v9 = v7 + 80;
  if ((*(*(v7 + 12) + 8))(*(v7 + v8 + 10)) != 1)
  {
    v11 = *(v7 + 15);
    if (v8)
    {
      if (!v11[1](*(v7 + *(v7 + 18) + 13), *(v7 + 12), *&v9[8 * *(v7 + 18)], v7 + 8, *(v7 + 5), __src, &__n))
      {
        v12 = __n;
        if (__n <= dataOutAvailable)
        {
          if (dataOut)
          {
            memcpy(dataOut, __src, __n);
            if (dataOutMoved)
            {
              *dataOutMoved = v12;
            }
          }

          *(v7 + 6) += v12;
LABEL_18:
          LODWORD(cryptorRef) = 0;
          *(v7 + 5) = 0;
          goto LABEL_23;
        }

        goto LABEL_22;
      }
    }

    else if (!(*v11)(*(v7 + *(v7 + 18) + 13), *(v7 + 12), *&v9[8 * *(v7 + 18)], v7 + 8, *(v7 + 5), __src, &__n))
    {
      v13 = __n;
      if (__n <= dataOutAvailable)
      {
        if (dataOut)
        {
          memcpy(dataOut, __src, __n);
          if (dataOutMoved)
          {
            *dataOutMoved = v13;
          }
        }

        goto LABEL_18;
      }

LABEL_22:
      LODWORD(cryptorRef) = -4301;
      goto LABEL_23;
    }

    LODWORD(cryptorRef) = -4303;
    goto LABEL_23;
  }

  v10 = *(*(v7 + 12) + 56);
  if (v10)
  {
    v10(*&v9[8 * *(v7 + 18)], *(v7 + *(v7 + 18) + 13));
  }

  LODWORD(cryptorRef) = 0;
LABEL_23:
  v14 = *MEMORY[0x29EDCA608];
  return cryptorRef;
}

uint64_t ccnopad_encrypt_pad(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  *a7 = 0;
  if (a5)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t adler32_implementation(uint64_t a1, unsigned __int8 *a2)
{
  if (!a1)
  {
    return 1;
  }

  v2 = 0;
  v3 = 1;
  do
  {
    v4 = *a2++;
    v3 = (v3 + v4) % 0xFFF1;
    v2 = (v3 + v2) % 0xFFF1;
    --a1;
  }

  while (a1);
  return v3 | (v2 << 16);
}

uint64_t adler32_oneshot(uint64_t a1, unsigned __int8 *a2)
{
  if (!a1)
  {
    return 1;
  }

  v2 = 0;
  v3 = 1;
  do
  {
    v4 = *a2++;
    v3 = (v3 + v4) % 0xFFF1;
    v2 = (v3 + v2) % 0xFFF1;
    --a1;
  }

  while (a1);
  return v3 | (v2 << 16);
}

uint64_t CCCryptorChaCha20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 12)
  {
    LODWORD(v4) = 0;
  }

  else
  {
    LODWORD(v4) = -4300;
  }

  if (a2 == 32)
  {
    v4 = v4;
  }

  else
  {
    v4 = 4294962986;
  }

  if (a2 == 32 && a4 == 12)
  {
    v5 = ccchacha20();
    if (v5 == -7)
    {
      LODWORD(v4) = -4300;
    }

    else
    {
      LODWORD(v4) = -4308;
    }

    if (v5)
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

uint64_t CCCryptorChaCha20Poly1305OneshotEncrypt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a2 != 32)
  {
    return 4294962986;
  }

  v11 = 4294962996;
  if (a10)
  {
    v12 = a4 == 12;
  }

  else
  {
    v12 = 0;
  }

  if (v12 && a11 == 16)
  {
    ccchacha20poly1305_info();
    v14 = ccchacha20poly1305_encrypt_oneshot();
    if (v14 == -7)
    {
      v15 = -4300;
    }

    else
    {
      v15 = -4308;
    }

    if (v14)
    {
      return v15;
    }

    else
    {
      return 0;
    }
  }

  return v11;
}

uint64_t CCCryptorChaCha20Poly1305OneshotDecrypt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a2 != 32)
  {
    return 4294962986;
  }

  result = 4294962996;
  if (a4 == 12 && a11 == 16)
  {
    ccchacha20poly1305_info();
    v12 = ccchacha20poly1305_decrypt_oneshot();
    if (v12 == -7)
    {
      v13 = -4300;
    }

    else
    {
      v13 = -4308;
    }

    if (v12)
    {
      return v13;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CCKDFParametersCreatePbkdf2(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 4294962996;
  }

  if (!a3 && a4)
  {
    return 4294962996;
  }

  v9 = malloc_type_malloc(0x28uLL, 0x10C2040F56B5A66uLL);
  if (!v9)
  {
    return 4294962994;
  }

  v10 = v9;
  result = 0;
  *v10 = 0;
  v10[2] = a2;
  *(v10 + 2) = a3;
  *(v10 + 3) = a4;
  *a1 = v10;
  return result;
}

uint64_t CCKDFParametersCreateCtrHmac(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2 && a3 || !a4 && a5)
  {
    return 4294962996;
  }

  v11 = malloc_type_malloc(0x28uLL, 0x10C2040F56B5A66uLL);
  if (!v11)
  {
    return 4294962994;
  }

  v12 = v11;
  result = 0;
  *v12 = 1;
  v12[1] = a2;
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  *a1 = v12;
  return result;
}

uint64_t CCKDFParametersCreateCtrHmacFixed(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a2 && a3)
  {
    return 4294962996;
  }

  v7 = malloc_type_malloc(0x28uLL, 0x10C2040F56B5A66uLL);
  if (!v7)
  {
    return 4294962994;
  }

  v8 = v7;
  result = 0;
  *v8 = 2;
  v8[1] = a2;
  v8[2] = a3;
  *a1 = v8;
  return result;
}

uint64_t CCKDFParametersCreateHkdf(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2 && a3 || !a4 && a5)
  {
    return 4294962996;
  }

  v11 = malloc_type_malloc(0x28uLL, 0x10C2040F56B5A66uLL);
  if (!v11)
  {
    return 4294962994;
  }

  v12 = v11;
  result = 0;
  *v12 = 6;
  v12[1] = a2;
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  *a1 = v12;
  return result;
}

uint64_t CCKDFParametersCreateAnsiX963(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a2 && a3)
  {
    return 4294962996;
  }

  v7 = malloc_type_malloc(0x28uLL, 0x10C2040F56B5A66uLL);
  if (!v7)
  {
    return 4294962994;
  }

  v8 = v7;
  result = 0;
  *v8 = 7;
  v8[1] = a2;
  v8[2] = a3;
  *a1 = v8;
  return result;
}

uint64_t CCKeyDerivationHMac(int a1, unsigned int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v24 = 0;
  result = 4294962991;
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      if (!a8 && a9)
      {
        return 4294962996;
      }

      v22 = malloc_type_malloc(0x28uLL, 0x10C2040F56B5A66uLL);
      if (!v22)
      {
        return 4294962994;
      }

      v21 = v22;
      *v22 = 2;
      *(v22 + 1) = a8;
      *(v22 + 2) = a9;
      goto LABEL_17;
    }

    if (a1 == 6)
    {
      result = CCKDFParametersCreateHkdf(&v24, a12, a13, a8, a9);
      if (!result)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
    if (!a1)
    {
      result = CCKDFParametersCreatePbkdf2(&v24, a3, a12, a13);
      if (result)
      {
        return result;
      }

      goto LABEL_11;
    }

    if (a1 == 1)
    {
      result = CCKDFParametersCreateCtrHmac(&v24, a6, a7, a8, a9);
      if (!result)
      {
LABEL_11:
        v21 = v24;
LABEL_17:
        v23 = CCDeriveKey(v21, a2, a4, a5, a14, a15);
        cc_clear();
        free(v21);
        return v23;
      }
    }
  }

  return result;
}

unint64_t gen_std_crc_table(uint64_t a1)
{
  v2 = *(*(a1 + 8) + 16);
  result = malloc_type_malloc(v2 << 8, 0x118C467uLL);
  *(a1 + 24) = result;
  if (result)
  {
    for (i = 0; i != 256; ++i)
    {
      result = i;
      if (v2 > 3)
      {
        if (v2 == 4)
        {
          v14 = *(a1 + 8);
          v15 = *(v14 + 16);
          if ((v15 - 1) > 7)
          {
            LODWORD(v16) = 0;
          }

          else
          {
            v16 = qword_299C5FF10[v15 - 1];
          }

          v23 = 8 * v15;
          if (*(v14 + 20))
          {
            result = reflect_byte(i);
            v24 = 8 * *(v14 + 16);
          }

          else
          {
            v24 = 8 * v15;
          }

          result <<= v24 - 8;
          v29 = 8;
          do
          {
            v26 = (result & (1 << (v23 - 1))) == 0;
            result *= 2;
            if (!v26)
            {
              result ^= *(v14 + 32);
            }

            --v29;
          }

          while (v29);
          if (*(v14 + 20))
          {
            result = reflect(result, v24);
          }

          *(*(a1 + 24) + 4 * i) = result & v16;
        }

        else if (v2 == 8)
        {
          v8 = *(a1 + 8);
          v9 = *(v8 + 16);
          if ((v9 - 1) > 7)
          {
            v10 = 0;
          }

          else
          {
            v10 = qword_299C5FF10[v9 - 1];
          }

          v19 = 8 * v9;
          if (*(v8 + 20))
          {
            result = reflect_byte(i);
            v20 = 8 * *(v8 + 16);
          }

          else
          {
            v20 = 8 * v9;
          }

          result <<= v20 - 8;
          v27 = 8;
          do
          {
            v26 = (result & (1 << (v19 - 1))) == 0;
            result *= 2;
            if (!v26)
            {
              result ^= *(v8 + 32);
            }

            --v27;
          }

          while (v27);
          if (*(v8 + 20))
          {
            result = reflect(result, v20);
          }

          *(*(a1 + 24) + 8 * i) = result & v10;
        }
      }

      else if (v2 == 1)
      {
        v11 = *(a1 + 8);
        v12 = *(v11 + 16);
        if ((v12 - 1) > 7)
        {
          LOBYTE(v13) = 0;
        }

        else
        {
          v13 = qword_299C5FF10[v12 - 1];
        }

        v21 = 8 * v12;
        if (*(v11 + 20))
        {
          result = reflect_byte(i);
          v22 = 8 * *(v11 + 16);
        }

        else
        {
          v22 = 8 * v12;
        }

        result <<= v22 - 8;
        v28 = 8;
        do
        {
          v26 = (result & (1 << (v21 - 1))) == 0;
          result *= 2;
          if (!v26)
          {
            result ^= *(v11 + 32);
          }

          --v28;
        }

        while (v28);
        if (*(v11 + 20))
        {
          result = reflect(result, v22);
        }

        *(*(a1 + 24) + i) = result & v13;
      }

      else if (v2 == 2)
      {
        v5 = *(a1 + 8);
        v6 = *(v5 + 16);
        if ((v6 - 1) > 7)
        {
          LOWORD(v7) = 0;
        }

        else
        {
          v7 = qword_299C5FF10[v6 - 1];
        }

        v17 = 8 * v6;
        if (*(v5 + 20))
        {
          result = reflect_byte(i);
          v18 = 8 * *(v5 + 16);
        }

        else
        {
          v18 = 8 * v6;
        }

        result <<= v18 - 8;
        v25 = 8;
        do
        {
          v26 = (result & (1 << (v17 - 1))) == 0;
          result *= 2;
          if (!v26)
          {
            result ^= *(v5 + 32);
          }

          --v25;
        }

        while (v25);
        if (*(v5 + 20))
        {
          result = reflect(result, v18);
        }

        *(*(a1 + 24) + 2 * i) = result & v7;
      }
    }
  }

  return result;
}

void dump_crc_table(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 16);
  v4 = *v2;
  v5 = strnlen(*v2, 0x40uLL);
  v6 = malloc_type_malloc(v5 + 1, 0x1AC0E8ACuLL);
  memcpy(v6, v4, v5);
  v6[v5] = 0;
  if (*v6)
  {
    v7 = 0;
    do
    {
      if (v6[v7] == 45)
      {
        v6[v7] = 95;
      }

      ++v7;
    }

    while (v7 < strlen(v6));
  }

  v8 = v3 - 1;
  if (v3 - 1) < 8 && ((0x8Bu >> v8))
  {
    v9 = dword_299C5FF50[v8];
    printf(off_29F286BC0[v8], v6);
  }

  else
  {
    v9 = 7;
  }

  v10 = 0;
  do
  {
    if (v3 > 3)
    {
      if (v3 == 4)
      {
        v14 = *(*(a1 + 24) + 4 * v10);
        printf(" 0x%08x,");
      }

      else if (v3 == 8)
      {
        v12 = *(*(a1 + 24) + 8 * v10);
        printf(" 0x%016llx,");
      }
    }

    else if (v3 == 1)
    {
      v13 = *(*(a1 + 24) + v10);
      printf(" 0x%02x,");
    }

    else if (v3 == 2)
    {
      v11 = *(*(a1 + 24) + 2 * v10);
      printf(" 0x%04x,");
    }

    if ((v9 & ++v10) == 0)
    {
      putchar(10);
    }
  }

  while (v10 != 256);
  puts("};\n");

  free(v6);
}

uint64_t crc_normal_init(dispatch_once_t *predicate)
{
  if (*predicate != -1)
  {
    dispatch_once_f(predicate, predicate, gen_std_crc_table);
  }

  return *(predicate[1] + 40);
}

uint64_t crc_normal_update(uint64_t a1, _BYTE *a2, uint64_t a3, unint64_t a4)
{
  for (i = *(*(a1 + 8) + 16); a3; --a3)
  {
    if (i > 3)
    {
      if (i == 4)
      {
        a4 = (*(*(a1 + 24) + 4 * (*a2 ^ BYTE3(a4))) ^ (a4 << 8));
      }

      else if (i == 8)
      {
        a4 = *(*(a1 + 24) + 8 * (*a2 ^ HIBYTE(a4))) ^ (a4 << 8);
      }
    }

    else if (i == 1)
    {
      a4 = *(*(a1 + 24) + (*a2 ^ a4));
    }

    else if (i == 2)
    {
      a4 = (*(*(a1 + 24) + 2 * (*a2 ^ BYTE1(a4))) ^ (a4 << 8));
    }

    ++a2;
  }

  v5 = i - 1;
  if (v5 > 7)
  {
    v6 = 0;
  }

  else
  {
    v6 = qword_299C5FF70[v5];
  }

  return v6 & a4;
}

uint64_t crc_normal_final(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 48);
  v4 = *(v2 + 16) - 1;
  if (v4 > 7)
  {
    v5 = 0;
  }

  else
  {
    v5 = qword_299C5FF70[v4];
  }

  return v5 & (v3 ^ a2);
}

uint64_t crc_normal_oneshot(dispatch_once_t *predicate, _BYTE *a2, uint64_t a3)
{
  if (*predicate != -1)
  {
    dispatch_once_f(predicate, predicate, gen_std_crc_table);
  }

  v6 = predicate[1];
  v7 = crc_normal_update(predicate, a2, a3, *(v6 + 40));
  v8 = *(v6 + 16) - 1;
  if (v8 > 7)
  {
    v9 = 0;
  }

  else
  {
    v9 = qword_299C5FF70[v8];
  }

  return v9 & (*(v6 + 48) ^ v7);
}

uint64_t reflect(unint64_t a1, unint64_t a2)
{
  if (a2 >> 3 >= 8)
  {
    v2 = 8;
  }

  else
  {
    v2 = a2 >> 3;
  }

  if (a2 < 8)
  {
    return 0;
  }

  v4 = 0;
  v3 = 0;
  v5 = 8 * v2 - 8;
  do
  {
    v3 |= reflector[(a1 >> v4)] << v5;
    v5 -= 8;
    v4 += 8;
  }

  while (v5 != -8);
  return v3;
}

void *CCCreateBigNum(int *a1)
{
  v2 = ccz_size();
  v3 = malloc_type_malloc(v2, 0xD86A7F7FuLL);
  v4 = v3;
  if (a1)
  {
    if (v3)
    {
      v5 = 0;
    }

    else
    {
      v5 = -4302;
    }

    *a1 = v5;
  }

  if (v3)
  {
    ccz_init();
  }

  return v4;
}

void CCBigNumFree(void *a1)
{
  ccz_free();

  free(a1);
}

void *CCBigNumCopy(int *a1)
{
  v1 = CCCreateBigNum(a1);
  if (v1)
  {
    ccz_set();
  }

  return v1;
}

void *CCBigNumFromData(int *a1)
{
  v1 = CCCreateBigNum(a1);
  if (v1)
  {
    ccz_read_uint();
  }

  return v1;
}

uint64_t CCBigNumToData()
{
  v0 = ccz_write_uint_size();
  ccz_write_uint();
  return v0;
}

void *CCBigNumFromHexString(int *a1, const char *a2)
{
  v4 = CCCreateBigNum(a1);
  if (!v4)
  {
    v6 = -4302;
LABEL_6:
    v5 = 0;
    *a1 = v6;
    return v5;
  }

  v5 = v4;
  strlen(a2);
  if (ccz_read_radix())
  {
    ccz_zero();
    if (!a1)
    {
      return 0;
    }

    v6 = -4304;
    goto LABEL_6;
  }

  return v5;
}

void *CCBigNumToHexString(int *a1)
{
  v2 = ccz_write_radix_size();
  if (!v2)
  {
    v4 = 0;
    v5 = -4300;
LABEL_7:
    *a1 = v5;
    return v4;
  }

  v3 = v2;
  v4 = malloc_type_malloc(v2 + 1, 0x7371D778uLL);
  if (!v4)
  {
    v5 = -4302;
    goto LABEL_7;
  }

  if (ccz_write_radix())
  {
    *a1 = -4300;
    free(v4);
    return 0;
  }

  else
  {
    *(v4 + v3) = 0;
  }

  return v4;
}

void *CCBigNumFromDecimalString(int *a1, const char *a2)
{
  v4 = CCCreateBigNum(a1);
  if (!v4)
  {
    v6 = -4302;
LABEL_6:
    v5 = 0;
    *a1 = v6;
    return v5;
  }

  v5 = v4;
  strlen(a2);
  if (ccz_read_radix())
  {
    ccz_zero();
    if (!a1)
    {
      return 0;
    }

    v6 = -4304;
    goto LABEL_6;
  }

  return v5;
}

void *CCBigNumToDecimalString(int *a1)
{
  v2 = ccz_write_radix_size();
  if (!v2)
  {
    v4 = 0;
    v5 = -4300;
LABEL_7:
    *a1 = v5;
    return v4;
  }

  v3 = v2;
  v4 = malloc_type_malloc(v2 + 1, 0x403202A5uLL);
  if (!v4)
  {
    v5 = -4302;
    goto LABEL_7;
  }

  if (ccz_write_radix())
  {
    *a1 = -4300;
    free(v4);
    return 0;
  }

  else
  {
    *(v4 + v3) = 0;
  }

  return v4;
}

uint64_t CCBigNumGetI(_DWORD *a1)
{
  if (ccz_write_int_size() < 5)
  {
    ccz_write_uint();
    result = bswap32(v3);
    if (a1)
    {
      *a1 = 0;
    }
  }

  else
  {
    result = 0;
    *a1 = -4306;
  }

  return result;
}

void *CCBigNumCreateRandom(int *a1, uint64_t a2, int a3, int a4)
{
  ccDRBGGetRngState();
  v7 = CCCreateBigNum(a1);
  v8 = v7;
  if (a3 >= 1 && v7)
  {
    v9 = a4;
    do
    {
      ccz_random_bits();
      v10 = ccz_bitlen();
    }

    while (v10 - ccz_trailing_zeros() < v9);
  }

  return v8;
}

uint64_t CCBigNumModI(_DWORD *a1)
{
  v7 = 0;
  v2 = CCCreateBigNum(&v7);
  if (v2)
  {
    v3 = v2;
    v4 = CCCreateBigNum(&v7);
    if (v4)
    {
      v5 = v4;
      ccz_seti();
      v7 = 0;
      ccz_mod();
      *a1 = CCBigNumGetI(&v7);
      ccz_free();
      free(v3);
      v3 = v5;
    }

    ccz_free();
    free(v3);
  }

  return v7;
}

uint64_t CCBigNumModExp()
{
  if (ccz_expmod())
  {
    return 4294962996;
  }

  else
  {
    return 0;
  }
}

uint64_t CCBigNumIsPrime(_DWORD *a1, uint64_t a2)
{
  if (a1)
  {
    *a1 = 0;
  }

  return MEMORY[0x2A1C74850](a2, 16);
}

uint64_t CCBigNumIsZero(_DWORD *a1, uint64_t a2)
{
  if (a1)
  {
    *a1 = 0;
  }

  return MEMORY[0x2A1C74858](a2);
}

uint64_t CCBigNumIsNegative(_DWORD *a1, uint64_t a2)
{
  if (a1)
  {
    *a1 = 0;
  }

  return MEMORY[0x2A1C74848](a2);
}

void *cc_realloc(int a1, size_t a2, void *a3, size_t size)
{
  v6 = malloc_type_malloc(size, 0x91378770uLL);
  memcpy(v6, a3, a2);
  cc_clear();
  free(a3);
  return v6;
}

void cc_free(uint64_t a1, uint64_t a2, void *a3)
{
  cc_clear();

  free(a3);
}

uint64_t CCAESCmac(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = ccaes_cbc_encrypt_mode();

  return MEMORY[0x2A1C74200](v8, 16, a1, a3, a2, 16, a4);
}

void **CCAESCmacCreate(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x2004093837F09uLL);
  if (v2)
  {
    v3 = ccaes_cbc_encrypt_mode();
    v4 = malloc_type_malloc(v3[1] + *v3 + 80, 0x10600403EE1B117uLL);
    *v2 = v4;
    if (!v4)
    {
LABEL_7:
      free(v2);
      return 0;
    }

    v5 = v4;
    if (!a1)
    {
LABEL_6:
      free(v5);
      goto LABEL_7;
    }

    if (cccmac_init())
    {
      v5 = *v2;
      goto LABEL_6;
    }
  }

  return v2;
}

void CCAESCmacDestroy(void **a1)
{
  if (a1)
  {
    free(*a1);

    free(a1);
  }
}

uint64_t CCCKGGetCommitmentSize(uint64_t a1, unsigned int a2)
{
  if (ccec_keysize_is_supported() && ccec_get_cp() && CCDigestGetDigestInfo(a2))
  {
    return ccckg_sizeof_commitment();
  }

  else
  {
    return 4294962996;
  }
}

uint64_t CCCKGGetShareSize(uint64_t a1, unsigned int a2)
{
  if (ccec_keysize_is_supported() && ccec_get_cp() && CCDigestGetDigestInfo(a2))
  {
    return ccckg_sizeof_share();
  }

  else
  {
    return 4294962996;
  }
}

uint64_t CCCKGGetOpeningSize(uint64_t a1, unsigned int a2)
{
  if (ccec_keysize_is_supported() && ccec_get_cp() && CCDigestGetDigestInfo(a2))
  {
    return ccckg_sizeof_opening();
  }

  else
  {
    return 4294962996;
  }
}

uint64_t CCCKGContributorCreate(uint64_t a1, unsigned int a2, uint64_t **a3)
{
  if (!a3)
  {
    return 4294962996;
  }

  v6 = malloc_type_malloc(8uLL, 0x2004093837F09uLL);
  if (!v6)
  {
    return 4294962994;
  }

  v7 = v6;
  v8 = CCCKGContextCreate(a1, a2, v6);
  if (v8)
  {
    free(v7);
  }

  else
  {
    *a3 = v7;
  }

  return v8;
}

uint64_t CCCKGContextCreate(uint64_t a1, unsigned int a2, uint64_t *a3)
{
  if (!ccec_keysize_is_supported() || !ccec_get_cp() || !CCDigestGetDigestInfo(a2))
  {
    return 4294962996;
  }

  v5 = ccckg_sizeof_ctx();
  v6 = malloc_type_malloc(v5, 0x44FAD288uLL);
  *a3 = v6;
  if (!v6)
  {
    return 4294962994;
  }

  ccDRBGGetRngState();
  v7 = *a3;
  ccckg_init();
  return 0;
}

uint64_t CCCKGOwnerCreate(uint64_t a1, unsigned int a2, uint64_t **a3)
{
  if (!a3)
  {
    return 4294962996;
  }

  v6 = malloc_type_malloc(8uLL, 0x2004093837F09uLL);
  if (!v6)
  {
    return 4294962994;
  }

  v7 = v6;
  v8 = CCCKGContextCreate(a1, a2, v6);
  if (v8)
  {
    free(v7);
  }

  else
  {
    *a3 = v7;
  }

  return v8;
}

void CCCKGContributorDestroy(void **a1)
{
  free(*a1);

  free(a1);
}

void CCCKGOwnerDestroy(void **a1)
{
  free(*a1);

  free(a1);
}

uint64_t CCCKGContributorCommit(uint64_t *a1, uint64_t a2)
{
  result = 4294962996;
  if (a1 && a2)
  {
    v4 = *a1;
    result = ccckg_contributor_commit();
    if (result > -3)
    {
      if (result == -2)
      {
        return 4294962992;
      }

      else if (result)
      {
        return 4294962988;
      }
    }

    else
    {
      if (result != -86)
      {
        if (result == -7)
        {
          return 4294962996;
        }

        return 4294962988;
      }

      return 4294962987;
    }
  }

  return result;
}

uint64_t CCCKGOwnerGenerateShare(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = 4294962996;
  if (a1 && a2 && a4)
  {
    v6 = *a1;
    result = ccckg_owner_generate_share();
    if (result > -3)
    {
      if (result == -2)
      {
        return 4294962992;
      }

      else if (result)
      {
        return 4294962988;
      }
    }

    else
    {
      if (result != -86)
      {
        if (result == -7)
        {
          return 4294962996;
        }

        return 4294962988;
      }

      return 4294962987;
    }
  }

  return result;
}

uint64_t CCCKGContributorFinish(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v23[1] = *MEMORY[0x29EDCA608];
  v8 = 4294962996;
  if (a1 && a2 && a4 && a6 && a8)
  {
    v11 = *a1;
    v12 = ccckg_ctx_cp();
    v23[0] = v23;
    v13 = (24 * *v12 + 31) & 0xFFFFFFFFFFFFFFF0;
    v15 = MEMORY[0x2A1C7C4A8](v12, v14);
    v17 = v23 - v16;
    *(v23 - v16) = v15;
    v18 = *a1;
    v19 = ccckg_contributor_finish();
    if (v19 > -3)
    {
      if (!v19)
      {
        v8 = CCCKGConvertNativeToECCryptor(v12, v17, 0, a8);
        goto LABEL_16;
      }

      if (v19 == -2)
      {
        v8 = 4294962992;
        goto LABEL_16;
      }
    }

    else
    {
      if (v19 == -86)
      {
        v8 = 4294962987;
        goto LABEL_16;
      }

      if (v19 == -7)
      {
        v8 = 4294962996;
LABEL_16:
        v20 = *v12;
        cc_clear();
        goto LABEL_17;
      }
    }

    v8 = 4294962988;
    goto LABEL_16;
  }

LABEL_17:
  v21 = *MEMORY[0x29EDCA608];
  return v8;
}

uint64_t CCCKGConvertNativeToECCryptor(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  v6 = (cczp_bitlen() + 7) >> 3;
  v7 = 2;
  if (a3 == 1)
  {
    v7 = 3;
  }

  v8 = v6 * v7 + 1;
  v9 = malloc_type_malloc(v8, 0xEC240CDAuLL);
  if (!v9)
  {
    return 4294962994;
  }

  v10 = v9;
  ccec_x963_export();
  v11 = CCECCryptorImportKey(0, v10, v8, a3, a4);
  cc_clear();
  free(v10);
  return v11;
}

uint64_t CCCKGOwnerFinish(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v21[1] = *MEMORY[0x29EDCA608];
  v6 = 4294962996;
  if (a1 && a2 && a4 && a6)
  {
    v9 = *a1;
    v10 = ccckg_ctx_cp();
    v11 = (32 * *v10) | 0x10;
    v13 = MEMORY[0x2A1C7C4A8](v10, v12);
    v15 = v21 - v14;
    *(v21 - v14) = v13;
    v16 = *a1;
    v17 = ccckg_owner_finish();
    if (v17 > -3)
    {
      if (!v17)
      {
        v6 = CCCKGConvertNativeToECCryptor(v10, v15, 1, a6);
        goto LABEL_15;
      }

      if (v17 != -2)
      {
LABEL_12:
        v6 = 4294962988;
        goto LABEL_15;
      }

      v6 = 4294962992;
    }

    else
    {
      if (v17 == -86)
      {
        v6 = 4294962987;
        goto LABEL_15;
      }

      if (v17 != -7)
      {
        goto LABEL_12;
      }
    }

LABEL_15:
    v18 = *v10;
    cc_clear();
  }

  v19 = *MEMORY[0x29EDCA608];
  return v6;
}

uint64_t CCCKG2ContributorCreate(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 4294962996;
  }

  v4 = malloc_type_malloc(8uLL, 0x2004093837F09uLL);
  if (!v4)
  {
    return 4294962994;
  }

  v5 = v4;
  v6 = CCCKG2ContextCreate(a1, v4);
  if (v6)
  {
    free(v5);
  }

  else
  {
    *a2 = v5;
  }

  return v6;
}

uint64_t CCCKG2ContextCreate(uint64_t a1, void *a2)
{
  v3 = ccckg2_sizeof_ctx();
  v4 = malloc_type_malloc(v3, 0xFA5EA02FuLL);
  *a2 = v4;
  if (!v4)
  {
    return 4294962994;
  }

  result = ccckg2_init();
  if (result > -3)
  {
    if (result != -2)
    {
      if (!result)
      {
        return result;
      }

      return 4294962988;
    }

    return 4294962992;
  }

  else
  {
    if (result != -86)
    {
      if (result == -7)
      {
        return 4294962996;
      }

      return 4294962988;
    }

    return 4294962987;
  }
}

uint64_t CCCKG2OwnerCreate(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 4294962996;
  }

  v4 = malloc_type_malloc(8uLL, 0x2004093837F09uLL);
  if (!v4)
  {
    return 4294962994;
  }

  v5 = v4;
  v6 = CCCKG2ContextCreate(a1, v4);
  if (v6)
  {
    free(v5);
  }

  else
  {
    *a2 = v5;
  }

  return v6;
}

void CCCKG2ContributorDestroy(void **a1)
{
  free(*a1);

  free(a1);
}

void CCCKG2OwnerDestroy(void **a1)
{
  free(*a1);

  free(a1);
}

uint64_t CCCKG2ContributorCommit(uint64_t *a1, uint64_t a2)
{
  result = 4294962996;
  if (a1 && a2)
  {
    ccDRBGGetRngState();
    v4 = *a1;
    result = ccckg2_contributor_commit();
    if (result > -3)
    {
      if (result != -2)
      {
        if (!result)
        {
          return result;
        }

        return 4294962988;
      }

      return 4294962992;
    }

    else
    {
      if (result != -86)
      {
        if (result == -7)
        {
          return 4294962996;
        }

        return 4294962988;
      }

      return 4294962987;
    }
  }

  return result;
}

uint64_t CCCKG2OwnerGenerateShare(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = 4294962996;
  if (a1 && a2 && a4)
  {
    ccDRBGGetRngState();
    v6 = *a1;
    result = ccckg2_owner_generate_share();
    if (result > -3)
    {
      if (result != -2)
      {
        if (!result)
        {
          return result;
        }

        return 4294962988;
      }

      return 4294962992;
    }

    else
    {
      if (result != -86)
      {
        if (result == -7)
        {
          return 4294962996;
        }

        return 4294962988;
      }

      return 4294962987;
    }
  }

  return result;
}

uint64_t CCCKG2ContributorFinish(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v23[1] = *MEMORY[0x29EDCA608];
  v8 = 4294962996;
  if (a1 && a2 && a4 && a6 && a8)
  {
    v11 = *a1;
    v12 = ccckg2_ctx_cp();
    v23[0] = v23;
    v13 = (24 * *v12 + 31) & 0xFFFFFFFFFFFFFFF0;
    v15 = MEMORY[0x2A1C7C4A8](v12, v14);
    v17 = v23 - v16;
    *(v23 - v16) = v15;
    ccDRBGGetRngState();
    v18 = *a1;
    v19 = ccckg2_contributor_finish();
    if (v19 > -3)
    {
      if (!v19)
      {
        v8 = CCCKGConvertNativeToECCryptor(v12, v17, 0, a8);
        goto LABEL_16;
      }

      if (v19 == -2)
      {
        v8 = 4294962992;
        goto LABEL_16;
      }
    }

    else
    {
      if (v19 == -86)
      {
        v8 = 4294962987;
        goto LABEL_16;
      }

      if (v19 == -7)
      {
        v8 = 4294962996;
LABEL_16:
        v20 = *v12;
        cc_clear();
        goto LABEL_17;
      }
    }

    v8 = 4294962988;
    goto LABEL_16;
  }

LABEL_17:
  v21 = *MEMORY[0x29EDCA608];
  return v8;
}

uint64_t CCCKG2OwnerFinish(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v21[1] = *MEMORY[0x29EDCA608];
  v6 = 4294962996;
  if (a1 && a2 && a4 && a6)
  {
    v9 = *a1;
    v10 = ccckg2_ctx_cp();
    v11 = (32 * *v10) | 0x10;
    v13 = MEMORY[0x2A1C7C4A8](v10, v12);
    v15 = v21 - v14;
    *(v21 - v14) = v13;
    ccDRBGGetRngState();
    v16 = *a1;
    v17 = ccckg2_owner_finish();
    if (v17 > -3)
    {
      if (!v17)
      {
        v6 = CCCKGConvertNativeToECCryptor(v10, v15, 1, a6);
        goto LABEL_15;
      }

      if (v17 != -2)
      {
LABEL_12:
        v6 = 4294962988;
        goto LABEL_15;
      }

      v6 = 4294962992;
    }

    else
    {
      if (v17 == -86)
      {
        v6 = 4294962987;
        goto LABEL_15;
      }

      if (v17 != -7)
      {
        goto LABEL_12;
      }
    }

LABEL_15:
    v18 = *v10;
    cc_clear();
  }

  v19 = *MEMORY[0x29EDCA608];
  return v6;
}

uint64_t getCipherMode(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = 0;
  if (a2 <= 6)
  {
    if (a2 > 2)
    {
      if (a2 == 3)
      {
        v4 = &ccmodeList[18 * a1 + 2] + 9 * a3;
        return (*v4)(a1, a2);
      }

      if (a2 == 4)
      {
        v4 = &ccmodeList[18 * a1 + 4] + 9 * a3;
        return (*v4)(a1, a2);
      }
    }

    else
    {
      if (a2 == 1)
      {
        v4 = &ccmodeList[18 * a1] + 9 * a3;
        return (*v4)(a1, a2);
      }

      if (a2 == 2)
      {
        v4 = &ccmodeList[18 * a1 + 1] + 9 * a3;
        return (*v4)(a1, a2);
      }
    }
  }

  else if (a2 <= 9)
  {
    if (a2 == 7)
    {
      v4 = &ccmodeList[18 * a1 + 5] + 9 * a3;
      return (*v4)(a1, a2);
    }

    if (a2 == 8)
    {
      v4 = &ccmodeList[18 * a1 + 6] + 9 * a3;
      return (*v4)(a1, a2);
    }
  }

  else
  {
    switch(a2)
    {
      case 0xA:
        v4 = &ccmodeList[18 * a1 + 3] + 9 * a3;
        return (*v4)(a1, a2);
      case 0xB:
        v4 = &ccmodeList[18 * a1 + 7] + 9 * a3;
        return (*v4)(a1, a2);
      case 0xC:
        v4 = &ccmodeList[18 * a1 + 8] + 9 * a3;
        return (*v4)(a1, a2);
    }
  }

  return v3;
}

CCCryptorStatus CCCryptorCreateFromData(CCOperation op, CCAlgorithm alg, CCOptions options, const void *key, size_t keyLength, const void *iv, const void *data, size_t dataLength, CCCryptorRef *cryptorRef, size_t *dataUsed)
{
  v11 = ((data + 7) & 0xFFFFFFFFFFFFFFF8);
  v12 = v11 - data + 16;
  if (dataUsed)
  {
    *dataUsed = v12;
  }

  v13 = -4301;
  if (v11 && v12 <= dataLength)
  {
    if ((options & 2) != 0)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    if (alg == 4)
    {
      v15 = 9;
    }

    else
    {
      v15 = v14;
    }

    v13 = CCCryptorCreateWithMode(op, v15, alg, options & 1, iv, key, keyLength, 0, v17, v18, HIDWORD(v18), ((data + 7) & 0xFFFFFFFFFFFFFFF8));
    if (!v13)
    {
      *cryptorRef = v11;
    }
  }

  return v13;
}

uint64_t CCCryptorCreateFromDataWithMode(CCOperation a1, CCMode a2, CCAlgorithm a3, CCPadding a4, const void *a5, const void *a6, size_t a7, const void *a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, CCCryptorRef **a13, unint64_t *a14)
{
  cryptorRef = ((a11 + 7) & 0xFFFFFFFFFFFFFFF8);
  v15 = cryptorRef - a11 + 16;
  if (a14)
  {
    *a14 = v15;
  }

  if (cryptorRef)
  {
    v16 = v15 > a12;
  }

  else
  {
    v16 = 1;
  }

  if (v16)
  {
    return 4294962995;
  }

  result = CCCryptorCreateWithMode(a1, a2, a3, a4, a5, a6, a7, a8, v18, v19, HIDWORD(v19), cryptorRef);
  if (!result)
  {
    *a13 = cryptorRef;
  }

  return result;
}

uint64_t CCCryptorReset_binary_compatibility(void *a1, void *a2)
{
  v15[2] = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    result = 4294962996;
    goto LABEL_24;
  }

  v2 = *a1;
  if (!*a1)
  {
    v2 = a1;
  }

  v2[5] = 0;
  v2[6] = 0;
  if (!a2)
  {
    v15[0] = 0;
    v15[1] = 0;
    v6 = *(v2 + 16) - 1;
    if (v6 > 5)
    {
      v4 = 16;
    }

    else
    {
      v4 = dword_299C600E0[v6];
    }

    v7 = *(v2[12] + 64);
    if (v7)
    {
      v12 = *(v2 + 18);
      if (v12 == 3)
      {
        v12 = 0;
      }

      v13 = &v2[v12];
      v10 = v13[10];
      v11 = v13[13];
      a2 = v15;
      goto LABEL_20;
    }

LABEL_23:
    result = 0;
    goto LABEL_24;
  }

  v3 = *(v2 + 16) - 1;
  if (v3 > 5)
  {
    v4 = 16;
  }

  else
  {
    v4 = dword_299C600E0[v3];
  }

  v7 = *(v2[12] + 64);
  if (!v7)
  {
    goto LABEL_23;
  }

  v8 = *(v2 + 18);
  if (v8 == 3)
  {
    v8 = 0;
  }

  v9 = &v2[v8];
  v10 = v9[10];
  v11 = v9[13];
LABEL_20:
  if (v7(v10, a2, v4, v11))
  {
    result = 4294962994;
  }

  else
  {
    result = 0;
  }

LABEL_24:
  v14 = *MEMORY[0x29EDCA608];
  return result;
}

CCCryptorStatus CCCryptorReset(CCCryptorRef cryptorRef, const void *iv)
{
  v21[2] = *MEMORY[0x29EDCA608];
  if (dyld_program_sdk_at_least())
  {
    if (cryptorRef)
    {
      v4 = *cryptorRef;
      if (!*cryptorRef)
      {
        v4 = cryptorRef;
      }

      v5 = *(v4 + 17);
      if (v5 != 4 && v5 != 2)
      {
        result = -4305;
LABEL_32:
        v20 = *MEMORY[0x29EDCA608];
        return result;
      }

      *(v4 + 5) = 0;
      *(v4 + 6) = 0;
      if (iv)
      {
        v7 = *(v4 + 16) - 1;
        if (v7 > 5)
        {
          v8 = 16;
        }

        else
        {
          v8 = dword_299C600E0[v7];
        }

        v12 = *(*(v4 + 12) + 64);
        if (v12)
        {
          v13 = *(v4 + 18);
          if (v13 == 3)
          {
            v13 = 0;
          }

          v14 = v4 + 8 * v13;
          v15 = *(v14 + 10);
          v16 = *(v14 + 13);
          v17 = iv;
LABEL_28:
          if (v12(v15, v17, v8, v16))
          {
            result = -4302;
          }

          else
          {
            result = 0;
          }

          goto LABEL_32;
        }
      }

      else
      {
        v21[0] = 0;
        v21[1] = 0;
        v11 = *(v4 + 16) - 1;
        if (v11 > 5)
        {
          v8 = 16;
        }

        else
        {
          v8 = dword_299C600E0[v11];
        }

        v12 = *(*(v4 + 12) + 64);
        if (v12)
        {
          v18 = *(v4 + 18);
          if (v18 == 3)
          {
            v18 = 0;
          }

          v19 = v4 + 8 * v18;
          v15 = *(v19 + 10);
          v16 = *(v19 + 13);
          v17 = v21;
          goto LABEL_28;
        }
      }
    }

    result = -4300;
    goto LABEL_32;
  }

  v9 = *MEMORY[0x29EDCA608];

  return CCCryptorReset_binary_compatibility(cryptorRef, iv);
}

uint64_t CCCryptorGetIV(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 4294962996;
  }

  if (*a1)
  {
    v3 = *a1;
  }

  else
  {
    v3 = a1;
  }

  if ((*(v3[12] + 8))(v3[*(v3 + 18) + 10]) == 1)
  {
    return 4294962996;
  }

  v4 = *(v3 + 16) - 1;
  v5 = v4 > 5 ? 16 : dword_299C600E0[v4];
  v7 = *(v3[12] + 72);
  if (!v7)
  {
    return 4294962996;
  }

  v9 = v5;
  v8 = *(v3 + 18);
  if (v8 == 3)
  {
    v8 = 0;
  }

  if (v7(v3[v8 + 10], a2, &v9, v3[v8 + 13]))
  {
    return 4294962994;
  }

  else
  {
    return 0;
  }
}

uint64_t CCCryptorEncryptDataBlock(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a1)
  {
    return 4294962996;
  }

  v9 = *a1 ? *a1 : a1;
  if ((*(v9[12] + 8))(v9[*(v9 + 18) + 10]) == 1)
  {
    return 4294962996;
  }

  v12 = v9[12];
  if (a2)
  {
    v13 = *(v12 + 40);
    v10 = 4294962996;
    if (v13)
    {
      if (v13(v9[10], a3, a4, a5, a2, v9[13]))
      {
        return 4294962996;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    v14 = *(v12 + 24);
    v10 = 4294962996;
    if (v14)
    {
      v15 = v14(v9[10], a3, a5, a4, v9[13]);
      if (v15)
      {
        v16 = -4300;
      }

      else
      {
        v16 = 0;
      }

      if (v15 == -68)
      {
        return 4294962987;
      }

      else
      {
        return v16;
      }
    }
  }

  return v10;
}

uint64_t CCCryptorDecryptDataBlock(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a1)
  {
    return 4294962996;
  }

  v9 = *a1 ? *a1 : a1;
  if ((*(v9[12] + 8))(v9[*(v9 + 18) + 10]) == 1)
  {
    return 4294962996;
  }

  v12 = v9[12];
  if (a2)
  {
    v13 = *(v12 + 48);
    v10 = 4294962996;
    if (v13)
    {
      if (v13(v9[11], a3, a4, a5, a2, v9[14]))
      {
        return 4294962996;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    v14 = *(v12 + 32);
    v10 = 4294962996;
    if (v14)
    {
      v15 = v14(v9[11], a3, a5, a4, v9[14]);
      if (v15)
      {
        v16 = -4300;
      }

      else
      {
        v16 = 0;
      }

      if (v15 == -68)
      {
        return 4294962987;
      }

      else
      {
        return v16;
      }
    }
  }

  return v10;
}

uint64_t CCCryptorAddParameter(void *a1, int a2, void *__src, size_t __n)
{
  if (!a1)
  {
    return 4294962996;
  }

  v4 = *a1;
  if (!*a1)
  {
    v4 = a1;
  }

  result = 4294962996;
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      if (*(v4 + 17) != 12)
      {
        return 4294962991;
      }

      *(v4[*(v4 + 18) + 13] + 8) = __n;
    }

    else
    {
      if (a2 != 3)
      {
        return result;
      }

      if (*(v4 + 17) != 12)
      {
        return 4294962991;
      }

      *v4[*(v4 + 18) + 13] = __n;
    }

    return 0;
  }

  if (!a2)
  {
    v10 = *(v4 + 17);
    if (v10 == 12)
    {
      v18 = v4[*(v4 + 18) + 13];
      *(v18 + 16) = __n;
      memcpy((v18 + 32), __src, __n);
    }

    else
    {
      if (v10 != 11)
      {
        return 4294962991;
      }

      v11 = &v4[*(v4 + 18)];
      v12 = v11[10];
      v13 = v11[13];
      if (ccgcm_set_iv_legacy())
      {
        return 4294962996;
      }
    }

    return 0;
  }

  if (a2 != 1)
  {
    return result;
  }

  v6 = *(v4 + 17);
  if (v6 != 12)
  {
    if (v6 == 11)
    {
      v7 = &v4[*(v4 + 18)];
      v8 = v7[10];
      v9 = v7[13];
      if (ccgcm_aad())
      {
        return 4294962987;
      }

      return 0;
    }

    return 4294962991;
  }

  v14 = &v4[*(v4 + 18)];
  v15 = v14[13];
  if (v15[1] != -1 && v15[2] != -1 && *v15 != -1)
  {
    v16 = v14[10];
    v15[3] = __n;
    if (!ccccm_set_iv())
    {
      v17 = v15[3];
      if (ccccm_cbcmac())
      {
        return 4294962987;
      }

      return 0;
    }

    return 4294962996;
  }

  return result;
}

uint64_t CCCryptorGetParameter(void *a1, int a2, void *__dst, void *a4)
{
  if (!a1)
  {
    return 4294962996;
  }

  v4 = *a1;
  if (!*a1)
  {
    v4 = a1;
  }

  if (a2 != 4)
  {
    return 4294962996;
  }

  if (*(v4 + 17) != 12)
  {
    return 4294962991;
  }

  v6 = v4[*(v4 + 18) + 13];
  memcpy(__dst, (v6 + 48), *(v6 + 8));
  result = 0;
  *a4 = *(v6 + 8);
  return result;
}

uint64_t CCDHGenerateKey(uint64_t *a1, uint64_t a2, unint64_t *a3)
{
  result = 4294962996;
  if (a1 && a2 && a3)
  {
    v6 = *a1;
    ccDRBGGetRngState();
    if (ccdh_generate_key())
    {
      return 0xFFFFFFFFLL;
    }

    ccdh_ctx_public();
    v7 = ccdh_export_pub_size();
    v8 = *a3;
    *a3 = v7;
    if (v7 > v8)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      ccdh_ctx_public();
      ccdh_export_pub();
      return 0;
    }
  }

  return result;
}

uint64_t CCDHComputeKey(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v16 = *MEMORY[0x29EDCA608];
  result = 4294962996;
  if (a1 && a2 && a3 && a5)
  {
    v9 = *a5;
    v10 = ccdh_ccn_size();
    MEMORY[0x2A1C7C4A8](v10, v11);
    v12 = *a5;
    v13 = (cczp_bitlen() + 7) >> 3;
    if (v13 <= *a2)
    {
      v14 = *a5;
      if (ccdh_import_pub())
      {
        *a2 = v13;
        result = 4294967294;
      }

      else
      {
        ccrng();
        if (ccdh_compute_shared_secret())
        {
          result = 4294967293;
        }

        else
        {
          result = 0;
        }
      }
    }

    else
    {
      *a2 = v13;
      result = 0xFFFFFFFFLL;
    }
  }

  v15 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t CCDigestUpdate(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 4294962996;
  }

  if (!a3)
  {
    return 0;
  }

  if (!a2)
  {
    return 4294962996;
  }

  if (!*a1)
  {
    return 4294962991;
  }

  v3 = *a1;
  ccdigest_update();
  return 0;
}

uint64_t CCDigestGetBlockSize(unsigned int a1)
{
  DigestInfo = CCDigestGetDigestInfo(a1);
  if (DigestInfo)
  {
    return *(DigestInfo + 16);
  }

  else
  {
    return -4305;
  }
}

uint64_t CCDigestGetOutputSize(unsigned int a1)
{
  DigestInfo = CCDigestGetDigestInfo(a1);
  if (DigestInfo)
  {
    return *DigestInfo;
  }

  else
  {
    return -4305;
  }
}

uint64_t CCDigestGetBlockSizeFromRef(uint64_t a1)
{
  if (*a1)
  {
    return *(*a1 + 16);
  }

  else
  {
    return -4305;
  }
}

uint64_t CCDigestBlockSize(uint64_t a1)
{
  if (*a1)
  {
    return *(*a1 + 16);
  }

  else
  {
    return -4305;
  }
}

uint64_t CCDigestOutputSize(uint64_t a1)
{
  if (*a1)
  {
    return **a1;
  }

  else
  {
    return -4305;
  }
}

uint64_t CCDigestGetOutputSizeFromRef(uint64_t a1)
{
  if (*a1)
  {
    return **a1;
  }

  else
  {
    return -4305;
  }
}

void *CCDigestCreateByOID(const void *a1, size_t a2)
{
  v4 = 1;
  while (1)
  {
    DigestInfo = CCDigestGetDigestInfo(v4);
    if (DigestInfo)
    {
      if (*(DigestInfo + 24) == a2 && !memcmp(a1, *(DigestInfo + 32), a2))
      {
        break;
      }
    }

    if (++v4 == 17)
    {
      return 0;
    }
  }

  return CCDigestCreate(v4);
}

uint64_t CCDigestReset(uint64_t *a1)
{
  result = *a1;
  if (result)
  {
    return ccdigest_init();
  }

  return result;
}

unsigned __int8 *__cdecl CC_MD2(const void *data, CC_LONG len, unsigned __int8 *md)
{
  if (CCDigest(1u, data, len, md))
  {
    return 0;
  }

  else
  {
    return md;
  }
}

int CC_MD4_Init(CC_MD4_CTX *c)
{
  v9[1] = *MEMORY[0x29EDCA608];
  DigestInfo = CCDigestGetDigestInfo(2u);
  v3 = (*(DigestInfo + 8) + *(DigestInfo + 16) + 19) & 0xFFFFFFFFFFFFFFF8;
  MEMORY[0x2A1C7C4A8](DigestInfo, v4);
  v6 = (v9 - v5);
  ccdigest_init();
  memcpy(c, v6 + 1, *(DigestInfo + 8));
  memcpy(c->data, v6 + *(DigestInfo + 8) + 8, *(DigestInfo + 16));
  *&c->Nl = *v6;
  c->num = *(v6 + *(DigestInfo + 8) + *(DigestInfo + 16) + 8);
  v7 = *MEMORY[0x29EDCA608];
  return 1;
}

int CC_MD4_Update(CC_MD4_CTX *c, const void *data, CC_LONG len)
{
  v14[1] = *MEMORY[0x29EDCA608];
  DigestInfo = CCDigestGetDigestInfo(2u);
  v5 = *(DigestInfo + 8);
  v6 = *(DigestInfo + 16);
  MEMORY[0x2A1C7C4A8](DigestInfo, v7);
  v9 = (v14 - v8);
  v10 = &v14[1] - v8;
  memcpy(v10, c, v5);
  v11 = &v10[v5];
  memcpy(v11, c->data, v6);
  *v9 = *&c->Nl;
  *&v11[v6] = c->num;
  ccdigest_update();
  memcpy(c, v10, *(DigestInfo + 8));
  memcpy(c->data, &v10[*(DigestInfo + 8)], *(DigestInfo + 16));
  *&c->Nl = *v9;
  c->num = *(v9 + *(DigestInfo + 8) + *(DigestInfo + 16) + 8);
  v12 = *MEMORY[0x29EDCA608];
  return 1;
}

int CC_MD4_Final(unsigned __int8 *md, CC_MD4_CTX *c)
{
  v14[1] = *MEMORY[0x29EDCA608];
  DigestInfo = CCDigestGetDigestInfo(2u);
  v5 = *(DigestInfo + 8);
  v6 = *(DigestInfo + 16);
  MEMORY[0x2A1C7C4A8](DigestInfo, v7);
  v9 = (v14 - v8);
  v10 = &v14[1] - v8;
  memcpy(v10, c, v5);
  v11 = &v10[v5];
  memcpy(v11, c->data, v6);
  *v9 = *&c->Nl;
  *&v11[v6] = c->num;
  (*(DigestInfo + 56))(DigestInfo, v9, md);
  memcpy(c, v10, *(DigestInfo + 8));
  memcpy(c->data, &v10[*(DigestInfo + 8)], *(DigestInfo + 16));
  *&c->Nl = *v9;
  c->num = *(v9 + *(DigestInfo + 8) + *(DigestInfo + 16) + 8);
  v12 = *MEMORY[0x29EDCA608];
  return 1;
}

unsigned __int8 *__cdecl CC_MD4(const void *data, CC_LONG len, unsigned __int8 *md)
{
  if (CCDigest(2u, data, len, md))
  {
    return 0;
  }

  else
  {
    return md;
  }
}

unsigned __int8 *__cdecl CC_SHA224(const void *data, CC_LONG len, unsigned __int8 *md)
{
  if (CCDigest(9u, data, len, md))
  {
    return 0;
  }

  else
  {
    return md;
  }
}

unsigned __int8 *__cdecl CC_SHA384(const void *data, CC_LONG len, unsigned __int8 *md)
{
  if (CCDigest(0xBu, data, len, md))
  {
    return 0;
  }

  else
  {
    return md;
  }
}

int CC_MD2_Init(CC_MD2_CTX *c)
{
  v9[1] = *MEMORY[0x29EDCA608];
  DigestInfo = CCDigestGetDigestInfo(1u);
  v3 = (*(DigestInfo + 8) + *(DigestInfo + 16) + 19) & 0xFFFFFFFFFFFFFFF8;
  MEMORY[0x2A1C7C4A8](DigestInfo, v4);
  v6 = v9 - v5;
  ccdigest_init();
  *c->cksm = *(v6 + 56);
  *c->state = *(v6 + 8);
  *c->data = *&v6[*(DigestInfo + 8) + 8];
  c->num = *&v6[*(DigestInfo + 8) + 8 + *(DigestInfo + 16)];
  v7 = *MEMORY[0x29EDCA608];
  return 1;
}

int CC_MD2_Update(CC_MD2_CTX *c, const void *data, CC_LONG len)
{
  v15[1] = *MEMORY[0x29EDCA608];
  DigestInfo = CCDigestGetDigestInfo(1u);
  v5 = *(DigestInfo + 8);
  v6 = *(DigestInfo + 16);
  MEMORY[0x2A1C7C4A8](DigestInfo, v7);
  v9 = v15 - v8;
  *(v9 + 56) = *c->cksm;
  *(v9 + 8) = *c->state;
  v11 = (&v15[1] + v10 - v8);
  *v11 = *c->data;
  *(v11 + v12) = c->num;
  ccdigest_update();
  *c->cksm = *(v9 + 56);
  *c->state = *(v9 + 8);
  *c->data = *&v9[*(DigestInfo + 8) + 8];
  c->num = *&v9[*(DigestInfo + 8) + 8 + *(DigestInfo + 16)];
  v13 = *MEMORY[0x29EDCA608];
  return 1;
}

int CC_MD2_Final(unsigned __int8 *md, CC_MD2_CTX *c)
{
  v16[1] = *MEMORY[0x29EDCA608];
  DigestInfo = CCDigestGetDigestInfo(1u);
  v5 = *(DigestInfo + 8);
  v6 = *(DigestInfo + 16);
  v8 = MEMORY[0x2A1C7C4A8](DigestInfo, v7);
  v10 = v16 - v9;
  *(v10 + 56) = *c->cksm;
  *(v10 + 8) = *c->state;
  v12 = (&v16[1] + v11 - v9);
  *v12 = *c->data;
  *(v12 + v13) = c->num;
  (*(v8 + 56))(v8, v16 - v9, md);
  *c->cksm = *(v10 + 56);
  *c->state = *(v10 + 8);
  *c->data = *&v10[*(DigestInfo + 8) + 8];
  c->num = *&v10[*(DigestInfo + 8) + 8 + *(DigestInfo + 16)];
  v14 = *MEMORY[0x29EDCA608];
  return 1;
}

int CC_SHA224_Init(CC_SHA256_CTX *c)
{
  DigestInfo = CCDigestGetDigestInfo(9u);
  cc_clear();
  cc_clear();
  *c->count = 0;
  memcpy(c->hash, *(DigestInfo + 40), *(DigestInfo + 8));
  return 1;
}

int CC_SHA224_Final(unsigned __int8 *md, CC_SHA256_CTX *c)
{
  v6 = *MEMORY[0x29EDCA608];
  CC_SHA256_Final(mda, c);
  *md = *mda;
  *(md + 12) = *&mda[12];
  v3 = *MEMORY[0x29EDCA608];
  return 1;
}

int CC_SHA384_Init(CC_SHA512_CTX *c)
{
  DigestInfo = CCDigestGetDigestInfo(0xBu);
  cc_clear();
  cc_clear();
  c->count[0] = 0;
  c->count[1] = 0;
  memcpy(c->hash, *(DigestInfo + 40), *(DigestInfo + 8));
  return 1;
}

int CC_SHA384_Final(unsigned __int8 *md, CC_SHA512_CTX *c)
{
  v9 = *MEMORY[0x29EDCA608];
  CC_SHA512_Final(mda, c);
  v3 = v7;
  *md = *mda;
  *(md + 1) = v3;
  *(md + 2) = v8;
  v4 = *MEMORY[0x29EDCA608];
  return 1;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0x20u);
}

uint64_t CCECCryptorGeneratePair(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  ccDRBGGetRngState();
  if (!ccec_keysize_is_supported())
  {
    return 4294962996;
  }

  ccec_get_cp();
  v6 = ccMallocECCryptor(a1, 1);
  if (v6)
  {
    v7 = v6;
    v6[1] = a1;
    v8 = *v6;
    if (ccec_generate_key() || (*(v7 + 16) = 1, (PublicKeyFromPrivateKey = CCECCryptorGetPublicKeyFromPrivateKey(v7)) == 0))
    {
      v10 = v7;
    }

    else
    {
      v10 = PublicKeyFromPrivateKey;
      if (ccECpairwiseConsistencyCheck())
      {
        result = 0;
        *a2 = v10;
        *a3 = v7;
        return result;
      }

      ccECCryptorFree(v7);
    }

    ccECCryptorFree(v10);
  }

  *a3 = 0;
  *a2 = 0;
  return 4294962992;
}

void *ccMallocECCryptor(uint64_t a1, int a2)
{
  if (!ccec_keysize_is_supported())
  {
    return 0;
  }

  cp = ccec_get_cp();
  v5 = *cp;
  v6 = malloc_type_malloc(0x18uLL, 0x10320407B3D6EFEuLL);
  v7 = v6;
  if (v6)
  {
    *v6 = 0;
    v6[1] = a1;
    if (a2 == 1)
    {
      *(v6 + 4) = 98;
      v8 = 32 * v5;
    }

    else
    {
      if (a2)
      {
LABEL_9:
        free(v7);
        return 0;
      }

      *(v6 + 4) = 97;
      v8 = 24 * v5;
    }

    v9 = malloc_type_malloc(v8 + 16, 0x4FC8BAFDuLL);
    *v7 = v9;
    if (v9)
    {
      *v9 = cp;
      return v7;
    }

    goto LABEL_9;
  }

  return v7;
}

uint64_t ccECpairwiseConsistencyCheck()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v2 = v1;
  v9[3] = *MEMORY[0x29EDCA608];
  v6 = 4096;
  memset(v9, 10, 20);
  if (CCECCryptorSignHash(v0, v9, 20, v8, &v6) || (v7 = 0, !v2))
  {
    result = 0;
  }

  else
  {
    v4 = *v2;
    if (ccec_verify())
    {
      result = 0;
    }

    else
    {
      result = v7;
    }
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

void ccECCryptorFree(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *ccec_get_cp();
  v4 = *(a1 + 16);
  if (v4 <= 96)
  {
    if (v4)
    {
      if (v4 != 1)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v4 == 97)
  {
LABEL_8:
    if (24 * v3 == -16)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (v4 != 98)
  {
    goto LABEL_11;
  }

LABEL_9:
  if (*a1)
  {
    cc_clear();
    free(*a1);
  }

LABEL_11:
  cc_clear();

  free(a1);
}

uint64_t CCECCryptorGetKeyComponents(uint64_t *a1)
{
  v1 = *(a1 + 4);
  if (v1 == 1)
  {
    v4 = *a1;
    if (ccec_get_fullkey_components())
    {
      return 4294962994;
    }

    return 0;
  }

  if (!v1)
  {
    v2 = *a1;
    if (ccec_get_pubkey_components())
    {
      return 4294962994;
    }

    return 0;
  }

  return 4294962996;
}

uint64_t CCECCryptorCreateFromData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  *a6 = 0;
  v7 = ccMallocECCryptor(a1, 0);
  if (!v7)
  {
    return 4294962994;
  }

  v8 = v7;
  v9 = *v7;
  result = ccec_make_pub();
  if (result)
  {
    ccECCryptorFree(v8);
    return 4294962992;
  }

  else
  {
    *(v8 + 16) = 0;
    *a6 = v8;
  }

  return result;
}

uint64_t CCECGetKeyType(uint64_t a1)
{
  if (!a1)
  {
    return 97;
  }

  v1 = *(a1 + 16);
  if (v1 <= 1)
  {
    return v1;
  }

  else
  {
    return 99;
  }
}

uint64_t CCECGetKeySize(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 8);
  }

  else
  {
    return 4294962996;
  }
}

uint64_t CCECCryptorImportKey(int a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5)
{
  if (!a2)
  {
    return 4294962996;
  }

  if (a1 == 2)
  {
    if (a4)
    {
      return 4294962996;
    }

    v13 = ccec_compact_import_pub_size();
    v14 = ccMallocECCryptor(v13, 0);
    if (!v14)
    {
      return 4294962994;
    }

    v9 = v14;
    ccec_get_cp();
    v15 = *v9;
    result = ccec_compact_import_pub();
    if (!result)
    {
      *(v9 + 8) = v13;
      *(v9 + 16) = 0;
LABEL_23:
      *a5 = v9;
      return result;
    }

    goto LABEL_25;
  }

  if (a1 == 1)
  {
    result = 4294962991;
LABEL_16:
    *a5 = 0;
    return result;
  }

  if (a1)
  {
    result = 4294962996;
    goto LABEL_16;
  }

  if (a4)
  {
    if (a4 == 1)
    {
      v7 = ccec_x963_import_priv_size();
      v8 = ccMallocECCryptor(v7, 1);
      if (v8)
      {
        v9 = v8;
        ccec_get_cp();
        v10 = *v9;
        if (!ccec_x963_import_priv())
        {
          PublicKeyFromPrivateKey = CCECCryptorGetPublicKeyFromPrivateKey(v9);
          if (PublicKeyFromPrivateKey)
          {
            ccECCryptorFree(PublicKeyFromPrivateKey);
LABEL_22:
            result = 0;
            *(v9 + 8) = v7;
            *(v9 + 16) = a4;
            goto LABEL_23;
          }
        }

        goto LABEL_25;
      }

      return 4294962994;
    }

    return 4294962996;
  }

  v7 = ccec_x963_import_pub_size();
  v16 = ccMallocECCryptor(v7, 0);
  if (!v16)
  {
    return 4294962994;
  }

  v9 = v16;
  ccec_get_cp();
  v17 = *v9;
  if (!ccec_x963_import_pub())
  {
    goto LABEL_22;
  }

LABEL_25:
  *a5 = 0;
  ccECCryptorFree(v9);
  return 4294962985;
}

uint64_t CCECCryptorExportPublicKey(uint64_t **a1, uint64_t a2, unint64_t *a3)
{
  if (a1 && a2)
  {
    return CCECCryptorExportKey(0, a2, a3, 0, a1);
  }

  else
  {
    return 4294962996;
  }
}

uint64_t CCECCryptorExportKey(int a1, uint64_t a2, unint64_t *a3, int a4, uint64_t **a5)
{
  result = 4294962996;
  if (a2 && a5)
  {
    if (a1 == 2)
    {
      if (a4 != 1)
      {
        v16 = **a5;
        v17 = (cczp_bitlen() + 7) >> 3;
        v18 = *a3;
        *a3 = v17;
        if (v17 <= v18)
        {
          v19 = *a5;
          ccec_compact_export_pub();
          return 0;
        }

        return 4294962994;
      }
    }

    else if (a1 != 1)
    {
      if (a1)
      {
        return 4294962996;
      }

      v10 = **a5;
      v11 = cczp_bitlen();
      v12 = 2;
      if (a4 == 1)
      {
        v12 = 3;
      }

      v13 = ((v11 + 7) >> 3) * v12;
      v14 = v13 + 1;
      if (v13 < *a3)
      {
        *a3 = v14;
        v15 = *a5;
        ccec_x963_export();
        return 0;
      }

      *a3 = v14;
      return 4294962994;
    }

    return 4294962991;
  }

  return result;
}

uint64_t CCECCryptorSignHash(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = 4294962996;
  if (a1 && a2 && a4 && a5)
  {
    ccDRBGGetRngState();
    v7 = *a1;
    if (ccec_sign())
    {
      return 4294962992;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CCECCryptorVerifyHash(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6)
{
  result = 4294962996;
  if (a1 && a2 && a4)
  {
    v9 = *a1;
    if (ccec_verify())
    {
      result = 4294962946;
    }

    else
    {
      result = 0;
    }

    *a6 = 0;
  }

  return result;
}

uint64_t CCECCryptorComputeSharedSecret(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  result = 4294962996;
  if (a1 && a2 && a3)
  {
    v5 = *a1;
    v6 = *a2;
    ccrng();
    if (ccecdh_compute_shared_secret())
    {
      return 4294962992;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CCECCryptorTwinDiversifyKey(unsigned int a1, uint64_t **a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = **a2;
  ccDRBGGetRngState();
  if (a1 > 1)
  {
    return 4294962996;
  }

  v10 = ccMallocECCryptor(a2[1], a1);
  if (!v10)
  {
    return 4294962994;
  }

  v11 = v10;
  if (a1)
  {
    v12 = &(*a2)[3 * ***a2];
    v13 = *v10;
    v14 = ccec_diversify_priv_twin();
  }

  else
  {
    v15 = *v10;
    v14 = ccec_diversify_pub_twin();
  }

  v16 = v14;
  if (v14)
  {
    *a5 = 0;
    ccECCryptorFree(v11);
    if (v16 == -7)
    {
      return 4294962996;
    }

    else
    {
      return 4294962985;
    }
  }

  else
  {
    result = 0;
    *(v11 + 8) = a2[1];
    *(v11 + 16) = a1;
    *a5 = v11;
  }

  return result;
}

uint64_t CCECCryptorH2C(int a1)
{
  if (a1 == 2)
  {
    ccec_cp_521();
  }

  else if (a1 == 1)
  {
    MEMORY[0x29C2AF880]();
  }

  else
  {
    if (a1)
    {
      return 0;
    }

    MEMORY[0x29C2AF870]();
  }

  v1 = cczp_bitlen();
  v2 = ccMallocECCryptor(v1, 0);
  v3 = v2;
  if (v2)
  {
    v4 = *v2;
    if (cch2c())
    {
      ccECCryptorFree(v3);
      return 0;
    }
  }

  return v3;
}

void *CCECCryptorGenerateBlindingKeys(uint64_t a1)
{
  if (!ccec_get_cp())
  {
    v3 = 0;
LABEL_8:
    CCECCryptorBlindingKeysRelease(v3);
    return 0;
  }

  v2 = malloc_type_malloc(0x18uLL, 0x102004023CB03E4uLL);
  v3 = v2;
  if (!v2)
  {
    goto LABEL_8;
  }

  v2[1] = 0;
  v2[2] = 0;
  *v2 = a1;
  v4 = ccMallocECCryptor(a1, 1);
  v3[1] = v4;
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = ccMallocECCryptor(a1, 1);
  v3[2] = v5;
  if (!v5)
  {
    goto LABEL_8;
  }

  ccDRBGGetRngState();
  v6 = *v3[1];
  v7 = *v3[2];
  if (ccec_generate_blinding_keys())
  {
    goto LABEL_8;
  }

  return v3;
}

void CCECCryptorBlindingKeysRelease(void *a1)
{
  if (a1)
  {
    ccECCryptorFree(a1[1]);
    ccECCryptorFree(a1[2]);
  }

  free(a1);
}

uint64_t *CCECCryptorBlind(uint64_t a1, uint64_t *a2)
{
  v4 = ccMallocECCryptor(*a1, 0);
  if (v4)
  {
    ccDRBGGetRngState();
    v5 = **(a1 + 8);
    v6 = *a2;
    v7 = *v4;
    if (ccec_blind())
    {
      ccECCryptorFree(v4);
      return 0;
    }
  }

  return v4;
}

uint64_t *CCECCryptorUnblind(uint64_t a1, uint64_t *a2)
{
  v4 = ccMallocECCryptor(*a1, 0);
  if (v4)
  {
    ccDRBGGetRngState();
    v5 = **(a1 + 16);
    v6 = *a2;
    v7 = *v4;
    if (ccec_unblind())
    {
      ccECCryptorFree(v4);
      return 0;
    }
  }

  return v4;
}

uint64_t CCCryptorGCMSetIV(uint64_t **a1, uint64_t a2, unint64_t a3)
{
  if (!a1)
  {
    return 4294962996;
  }

  v3 = a1;
  result = 4294962996;
  if (a2 && a3 >= 0xC)
  {
    if (*v3)
    {
      v3 = *v3;
    }

    v5 = &v3[*(v3 + 18)];
    v6 = v5[10];
    v7 = v5[13];
    v8 = ccgcm_set_iv();
    if (v8 == -7)
    {
      v9 = -4300;
    }

    else
    {
      v9 = -4308;
    }

    if (v8)
    {
      return v9;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CCCryptorGCMFinalize(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (*a1)
    {
      v4 = *a1;
    }

    else
    {
      v4 = a1;
    }

    v5 = 4294962996;
    if (a2)
    {
      if ((a3 - 17) >= 0xFFFFFFFFFFFFFFF7)
      {
        v6 = *(a1 + 18);
        if (v6 <= 1)
        {
          if (v6 == 1)
          {
            __memcpy_chk();
          }

          v7 = &v4[*(v4 + 18)];
          v8 = v7[10];
          v9 = v7[13];
          if (ccgcm_finalize())
          {
            v5 = 4294962988;
          }

          else
          {
            v5 = 0;
          }

          if (*(a1 + 18) == 1)
          {
            cc_clear();
          }
        }
      }
    }
  }

  else
  {
    v5 = 4294962996;
  }

  v10 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t CCCryptorGCMReset(void *a1)
{
  v1 = 4294962996;
  if (a1)
  {
    v2 = *a1;
    if (!*a1)
    {
      v2 = a1;
    }

    v3 = &v2[*(v2 + 18)];
    v4 = v3[10];
    v5 = v3[13];
    v6 = ccgcm_reset();
    if (v6 == -7)
    {
      v7 = -4300;
    }

    else
    {
      v7 = -4308;
    }

    if (v6)
    {
      return v7;
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

uint64_t CCCryptorGCMOneshotEncrypt(int a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a1)
  {
    return 4294962996;
  }

  v12 = 4294962986;
  if (a3 <= 0x20 && ((1 << a3) & 0x101010000) != 0)
  {
    v12 = 4294962996;
    if (a5 >= 0xC && (a12 - 17) >= 0xFFFFFFFFFFFFFFF7 && a2 && a4 && a11 && (!a9 || a10))
    {
      ccaes_gcm_encrypt_mode();
      v14 = ccgcm_one_shot();
      if (v14 == -7)
      {
        v15 = -4300;
      }

      else
      {
        v15 = -4308;
      }

      if (v14)
      {
        return v15;
      }

      else
      {
        return 0;
      }
    }
  }

  return v12;
}

uint64_t CCCryptorGCMOneshotDecrypt(int a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v16 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    result = 4294962996;
  }

  else
  {
    result = 4294962986;
    if (a3 <= 0x20 && ((1 << a3) & 0x101010000) != 0)
    {
      result = 4294962996;
      if (a5 >= 0xC && (a12 - 17) >= 0xFFFFFFFFFFFFFFF7 && a2 && a4 && a11 && (!a9 || a10))
      {
        __memcpy_chk();
        ccaes_gcm_decrypt_mode();
        v14 = ccgcm_one_shot();
        if (v14)
        {
          cc_clear();
        }

        cc_clear();
        if (v14 == -7)
        {
          v15 = -4300;
        }

        else
        {
          v15 = -4308;
        }

        if (v14)
        {
          result = v15;
        }

        else
        {
          result = 0;
        }
      }
    }
  }

  v13 = *MEMORY[0x29EDCA608];
  return result;
}

void CCHmacInit(CCHmacContext *ctx, CCHmacAlgorithm algorithm, const void *key, size_t keyLength)
{
  if (ctx)
  {
    cc_clear();
    v6 = &dword_29F286C04;
    v7 = 6;
    while (*(v6 - 1) != algorithm)
    {
      v6 += 4;
      if (!--v7)
      {
        *ctx->ctx = 0;
        return;
      }
    }

    DigestInfo = CCDigestGetDigestInfo(*v6);
    *ctx->ctx = DigestInfo;
    if (DigestInfo)
    {

      cchmac_init();
    }
  }
}

void CCHmacDestroy(void *a1)
{
  cc_clear();

  free(a1);
}

void *CCHmacCreate(unsigned int a1)
{
  v2 = malloc_type_malloc(0x118uLL, 0x1060040072DDC3AuLL);
  if (v2)
  {
    cc_clear();
    DigestInfo = CCDigestGetDigestInfo(a1);
    *v2 = DigestInfo;
    if (DigestInfo)
    {
      cchmac_init();
    }

    else
    {
      free(v2);
      return 0;
    }
  }

  return v2;
}

uint64_t CCHmacOneShot(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  DigestInfo = CCDigestGetDigestInfo(a1);

  return MEMORY[0x2A1C74558](DigestInfo, a3, a2, a5, a4, a6);
}

void *CCHmacClone(const void *a1)
{
  result = malloc_type_malloc(0x118uLL, 0x1060040072DDC3AuLL);
  if (result)
  {

    return memcpy(result, a1, 0x118uLL);
  }

  return result;
}

int CCKeyDerivationPBKDF(CCPBKDFAlgorithm algorithm, const char *password, size_t passwordLen, const uint8_t *salt, size_t saltLen, CCPseudoRandomAlgorithm prf, unsigned int rounds, uint8_t *derivedKey, size_t derivedKeyLen)
{
  v9 = -4300;
  if (algorithm == 2 && prf - 1 <= 4)
  {
    CCDigestGetDigestInfo(prf + 7);
    if (rounds)
    {
      if (password && derivedKey && derivedKeyLen && (salt || !saltLen))
      {
        if (ccpbkdf2_hmac())
        {
          return -4300;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return v9;
}

unsigned int CCCalibratePBKDF(CCPBKDFAlgorithm algorithm, size_t passwordLen, size_t saltLen, CCPseudoRandomAlgorithm prf, size_t derivedKeyLen, uint32_t msec)
{
  v6 = -1;
  if (saltLen <= 0x84 && derivedKeyLen)
  {
    if (passwordLen <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = passwordLen;
    }

    if (algorithm == 2)
    {
      v12 = malloc_type_malloc(v8, 0x5787CC44uLL);
      v13 = v12;
      if (v12)
      {
        memset(v12, 97, v8);
        if (saltLen <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = saltLen;
        }

        v15 = malloc_type_malloc(v14, 0x342DEC7CuLL);
        v16 = v15;
        if (v15)
        {
          v17 = 0;
          v18 = xmmword_299C60100;
          v19 = xmmword_299C60110;
          v20 = xmmword_299C60120;
          v21 = xmmword_299C60130;
          v22 = vdupq_n_s64(v14 - 1);
          v23 = vdupq_n_s64(8uLL);
          do
          {
            v24 = vmovn_s64(vcgeq_u64(v22, v21));
            if (vuzp1_s8(vuzp1_s16(v24, *v18.i8), *v18.i8).u8[0])
            {
              v15[v17] = v17;
            }

            if (vuzp1_s8(vuzp1_s16(v24, *&v18), *&v18).i8[1])
            {
              v15[v17 + 1] = v17 | 1;
            }

            if (vuzp1_s8(vuzp1_s16(*&v18, vmovn_s64(vcgeq_u64(v22, *&v20))), *&v18).i8[2])
            {
              v15[v17 + 2] = v17 | 2;
              v15[v17 + 3] = v17 | 3;
            }

            v25 = vmovn_s64(vcgeq_u64(v22, v19));
            if (vuzp1_s8(*&v18, vuzp1_s16(v25, *&v18)).i32[1])
            {
              v15[v17 + 4] = v17 | 4;
            }

            if (vuzp1_s8(*&v18, vuzp1_s16(v25, *&v18)).i8[5])
            {
              v15[v17 + 5] = v17 | 5;
            }

            if (vuzp1_s8(*&v18, vuzp1_s16(*&v18, vmovn_s64(vcgeq_u64(v22, *&v18)))).i8[6])
            {
              v15[v17 + 6] = v17 | 6;
              v15[v17 + 7] = v17 | 7;
            }

            v17 += 8;
            v19 = vaddq_s64(v19, v23);
            v20 = vaddq_s64(v20, v23);
            v21 = vaddq_s64(v21, v23);
            v18 = vaddq_s64(v18, v23);
          }

          while (((v14 + 7) & 0x1F8) != v17);
          v26 = malloc_type_malloc(derivedKeyLen, 0x270970A3uLL);
          if (v26)
          {
            v27 = 0;
            while (1)
            {
              v28 = mach_absolute_time();
              if (CCKeyDerivationPBKDF(2u, v13, v8, v16, saltLen, prf, 0x186A0u, v26, derivedKeyLen))
              {
                break;
              }

              v29 = mach_absolute_time();
              if (v27 <= 3)
              {
                ++v27;
                if (v29 == v28)
                {
                  continue;
                }
              }

              v6 = 10000;
              v30 = v29 - v28;
              if (v30)
              {
                v31 = 100000 * msec / to_msec(v30);
                if (v31 <= 10000)
                {
                  v6 = 10000;
                }

                else
                {
                  v6 = v31;
                }
              }

              goto LABEL_39;
            }
          }
        }

        else
        {
          v26 = 0;
        }
      }

      else
      {
        v26 = 0;
        v16 = 0;
      }

      v6 = -1;
LABEL_39:
      free(v13);
      free(v16);
      free(v26);
    }

    else
    {
      return -1;
    }
  }

  return v6;
}

unint64_t to_msec(unint64_t a1)
{
  info = 0;
  mach_timebase_info(&info);
  LODWORD(v3) = info.denom;
  LODWORD(v2) = info.numer;
  return (a1 * v2 / v3 / 1000000.0);
}

uint64_t CCRandomUniform()
{
  ccrng();
  if (ccrng_uniform())
  {
    return 4294962989;
  }

  else
  {
    return 0;
  }
}

void *ccMallocRSACryptor(unint64_t a1)
{
  if (a1 > 0x1000)
  {
    return 0;
  }

  v3 = a1 + 63;
  result = malloc_type_malloc((((a1 + 63) >> 1) & 0x1FE0) - (((a1 + 63) >> 4) & 0x3F8) + 8 * (((a1 + 63) >> 4) & 0x3F8) + 192, 0xB632B443uLL);
  if (result)
  {
    *result = a1;
    result[2] = v3 >> 6;
  }

  return result;
}

void *CCRSACryptorCreatePublicKeyFromPrivateKey(unint64_t *a1)
{
  v2 = ccMallocRSACryptor(*a1);
  if (v2)
  {
    ccrsa_ctx_public();
    v3 = &a1[2 * a1[2] + 5];
    inited = ccrsa_init_pub();
    *(v2 + 2) = 0;
    if (inited)
    {
      ccRSACryptorClear(v2);
      return 0;
    }
  }

  return v2;
}

void ccRSACryptorClear(void *a1)
{
  if (a1)
  {
    v2 = (((*a1 + 63) >> 1) & 0x7FFFFFFFFFFFFFE0) - (((*a1 + 63) >> 4) & 0xFFFFFFFFFFFFFF8) + 8 * (((*a1 + 63) >> 4) & 0xFFFFFFFFFFFFFF8);
    cc_clear();

    free(a1);
  }
}

uint64_t CCRSAGetKeyType(uint64_t a1)
{
  result = 99;
  if (a1)
  {
    v3 = *(a1 + 8);
    if (v3 <= 1)
    {
      return v3;
    }

    else
    {
      return 99;
    }
  }

  return result;
}

uint64_t CCRSAGetKeySize(unsigned int *a1)
{
  if (a1)
  {
    return *a1;
  }

  else
  {
    return 4294962996;
  }
}

uint64_t CCRSACryptorImport(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  result = 4294962996;
  if (a1 && a3)
  {
    v6 = ccrsa_import_priv_n();
    if (v6)
    {
      v7 = v6;
      v8 = 1;
    }

    else
    {
      v9 = ccrsa_import_pub_n();
      if (!v9)
      {
        return 4294962992;
      }

      v7 = v9;
      v8 = 0;
    }

    v10 = ccMallocRSACryptor(v7 << 6);
    if (v10)
    {
      v11 = v10;
      if (v8)
      {
        v10[2] = v7;
        if (ccrsa_import_priv())
        {
LABEL_10:
          ccRSACryptorClear(v11);
          return 4294962992;
        }
      }

      else
      {
        *ccrsa_ctx_public() = v7;
        ccrsa_ctx_public();
        if (ccrsa_import_pub())
        {
          goto LABEL_10;
        }
      }

      *(v11 + 2) = v8;
      *a3 = v11;
      v12 = v11[2];
      v13 = ccn_bitlen();
      result = 0;
      *v11 = v13;
    }

    else
    {
      ccRSACryptorClear(0);
      *a3 = 0;
      return 4294962994;
    }
  }

  return result;
}

uint64_t CCRSACryptorExport(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  result = 4294962996;
  if (a1 && a2)
  {
    v6 = *(a1 + 8);
    if (v6 == 1)
    {
      v10 = ccrsa_export_priv_size();
      v11 = *a3;
      *a3 = v10;
      if (v11 >= v10)
      {
        result = ccrsa_export_priv();
        if (!result)
        {
          return result;
        }

        return 4294962992;
      }
    }

    else
    {
      if (v6)
      {
        return result;
      }

      v7 = ccrsa_ctx_public();
      v8 = MEMORY[0x29C2AFCB0](v7);
      v9 = *a3;
      *a3 = v8;
      if (v9 >= v8)
      {
        ccrsa_ctx_public();
        result = ccrsa_export_pub();
        if (!result)
        {
          return result;
        }

        return 4294962992;
      }
    }

    return 4294962995;
  }

  return result;
}

uint64_t CCRSACryptorEncrypt(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  result = 4294962996;
  if (a6 && a3 && a1 && a5)
  {
    if (a2 == 1002)
    {
      ccrsa_ctx_public();
      CCDigestGetDigestInfo(a9);
      ccDRBGGetRngState();
      v11 = ccrsa_encrypt_oaep();
    }

    else
    {
      if (a2 != 1001)
      {
        return 4294962996;
      }

      ccrsa_ctx_public();
      ccDRBGGetRngState();
      v11 = ccrsa_encrypt_eme_pkcs1v15();
    }

    if (v11)
    {
      return 4294962992;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CCRSACryptorDecrypt(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  result = 4294962996;
  if (a1 && a3 && a5 && a6)
  {
    if (a2 == 1002)
    {
      CCDigestGetDigestInfo(a9);
      v11 = ccrsa_decrypt_oaep();
    }

    else
    {
      if (a2 != 1001)
      {
        return 0;
      }

      v11 = ccrsa_decrypt_eme_pkcs1v15();
    }

    if (v11)
    {
      return 4294962992;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CCRSACryptorCreateFromData(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t **a10)
{
  if (a1 == 1)
  {
    v13 = 0;
    v10 = 4294962996;
    if (!a4 || !a5 || !a6 || !a7 || !a8 || !a9 || !a10)
    {
      goto LABEL_28;
    }

    v15 = a9 + a7 + 7;
    if (v15 >= 8)
    {
      v16 = ccMallocRSACryptor(8 * (a9 + a7));
      v13 = v16;
      if (v16)
      {
        v16[2] = v15 >> 3;
        if (!ccrsa_make_priv())
        {
          v17 = v13[2];
          v10 = 0;
          *v13 = ccn_bitlen();
          *(v13 + 2) = 1;
          goto LABEL_23;
        }

        goto LABEL_26;
      }

      goto LABEL_27;
    }

LABEL_25:
    v13 = 0;
LABEL_26:
    v10 = 4294962996;
LABEL_28:
    ccRSACryptorClear(v13);
    return v10;
  }

  v10 = 4294962996;
  if (!a1 && a5 && a3 && a2 && a4 && a10)
  {
    v11 = a3 + 7;
    if ((a3 + 7) >= 8)
    {
      v12 = ccMallocRSACryptor(8 * a3);
      v13 = v12;
      if (v12)
      {
        v12[2] = v11 >> 3;
        ccrsa_ctx_public();
        if (!ccrsa_make_pub())
        {
          v14 = v13[2];
          v10 = 0;
          *v13 = ccn_bitlen();
          *(v13 + 2) = 0;
LABEL_23:
          *a10 = v13;
          return v10;
        }

        goto LABEL_26;
      }

LABEL_27:
      v10 = 4294962994;
      goto LABEL_28;
    }

    goto LABEL_25;
  }

  return v10;
}

uint64_t CCRSACryptorRecoverPrivateKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v7 = 0;
  v8 = 4294962996;
  if (!a1 || !a2 || !a3 || !a4 || !a5 || !a6 || !a7)
  {
    goto LABEL_15;
  }

  v7 = ccMallocRSACryptor(8 * a2);
  if (!v7)
  {
    v8 = 4294962994;
    goto LABEL_15;
  }

  if (!ccDRBGGetRngState())
  {
    v8 = 4294962989;
    goto LABEL_15;
  }

  if (ccrsa_recover_priv())
  {
LABEL_15:
    ccRSACryptorClear(v7);
    return v8;
  }

  v8 = 0;
  *v7 = cczp_bitlen();
  *(v7 + 2) = 1;
  *a7 = v7;
  return v8;
}

uint64_t CCRSAGetKeyComponents(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 == 1)
  {
    fullkey_components = ccrsa_get_fullkey_components();
  }

  else
  {
    if (v1)
    {
      return 4294962996;
    }

    ccrsa_ctx_public();
    fullkey_components = ccrsa_get_pubkey_components();
  }

  if (fullkey_components)
  {
    return 4294962996;
  }

  else
  {
    return 0;
  }
}

uint64_t CCRSAGetCRTComponentsSizes(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (*(a1 + 8) != 1)
  {
    return 4294962996;
  }

  ccrsa_ctx_private_zp();
  cczp_n();
  v7 = ccrsa_ctx_private_zp();
  v8 = v7 + 16 * *ccrsa_ctx_private_zp();
  v9 = v8 + 16 * *ccrsa_ctx_private_zp();
  *a2 = ccn_write_uint_size();
  v10 = ccrsa_ctx_private_zp();
  v11 = v10 + 16 * *ccrsa_ctx_private_zp();
  cczp_n();
  v12 = ccrsa_ctx_private_zp();
  v13 = v12 + 16 * *ccrsa_ctx_private_zp();
  v14 = v13 + 16 * *ccrsa_ctx_private_zp();
  v15 = v14 + 8 * *ccrsa_ctx_private_zp();
  *a3 = ccn_write_uint_size();
  ccrsa_ctx_private_zp();
  cczp_n();
  v16 = ccrsa_ctx_private_zp();
  v17 = v16 + 16 * *ccrsa_ctx_private_zp();
  v18 = v17 + 16 * *ccrsa_ctx_private_zp();
  v19 = v18 + 8 * *ccrsa_ctx_private_zp();
  v20 = v19 + 8 * *ccrsa_ctx_private_zp();
  v21 = ccn_write_uint_size();
  result = 0;
  *a4 = v21;
  return result;
}

uint64_t CCRSACryptorSign(uint64_t a1, int a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v8 = validate_sign_verify_params(a1, a2, a3, a5, a7, a7);
  if (!v8)
  {
    return 4294962996;
  }

  if (a2 == 1001)
  {
    v9 = *(v8 + 32);
    v10 = ccrsa_sign_pkcs1v15();
  }

  else
  {
    ccDRBGGetRngState();
    v10 = ccrsa_sign_pss();
  }

  if (v10)
  {
    return 4294962992;
  }

  else
  {
    return 0;
  }
}

uint64_t validate_sign_verify_params(uint64_t a1, int a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  if (a4 - 13 < 0xFFFFFFFB)
  {
    return 0;
  }

  DigestInfo = CCDigestGetDigestInfo(a4);
  if ((a2 & 0xFFFFFFFB) == 0x3E9)
  {
    v13 = DigestInfo;
  }

  else
  {
    v13 = 0;
  }

  if (DigestInfo)
  {
    v14 = a6 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14 || a5 == 0 || a3 == 0 || a1 == 0)
  {
    return 0;
  }

  else
  {
    return v13;
  }
}

uint64_t CCRSACryptorVerify(uint64_t a1, int a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v19 = *MEMORY[0x29EDCA608];
  if (a5 - 13 >= 0xFFFFFFFB)
  {
    DigestInfo = CCDigestGetDigestInfo(a5);
    v13 = DigestInfo;
    if ((a2 & 0xFFFFFFFB) == 0x3E9)
    {
      v14 = DigestInfo;
    }

    else
    {
      v14 = 0;
    }

    result = 4294962996;
    if (a1 && a3 && a7 && v14)
    {
      ccrsa_ctx_public();
      if (a2 == 1001)
      {
        v15 = *(v13 + 32);
        v16 = ccrsa_verify_pkcs1v15_digest();
      }

      else
      {
        v16 = ccrsa_verify_pss_digest();
      }

      if (cc_cmp_safe())
      {
        v17 = -146;
      }

      else
      {
        v17 = v16;
      }

      if (v17)
      {
        result = 4294962992;
      }

      else
      {
        result = 0;
      }
    }
  }

  else
  {
    result = 4294962996;
  }

  v18 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t OUTLINED_FUNCTION_0_0()
{

  return ccrsa_ctx_private_zp();
}

int CCSymmetricKeyWrap(CCWrappingAlgorithm algorithm, const uint8_t *iv, const size_t ivLen, const uint8_t *kek, size_t kekLen, const uint8_t *rawKey, size_t rawKeyLen, uint8_t *wrappedKey, size_t *wrappedKeyLen)
{
  v25[0] = rawKey;
  v25[1] = *MEMORY[0x29EDCA608];
  CipherMode = getCipherMode(0, 1, 0);
  v14 = (*CipherMode + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8](CipherMode, v15);
  v17 = v25 - v16;
  v18 = (kekLen & 0xFFFFFFFFFFFFFFF7) == 0x10 || kekLen == 32;
  if (!v18 || !wrappedKeyLen || (v19 = *wrappedKeyLen, v19 < ccwrap_wrapped_size()) || iv && ivLen < 8 || (*(CipherMode + 16))(CipherMode, v17, kekLen, kek) || ccwrap_auth_encrypt_withiv())
  {
    v20 = *wrappedKeyLen;
    cc_clear();
    *wrappedKeyLen = 0;
    v21 = -4300;
  }

  else
  {
    v21 = 0;
  }

  v22 = *CipherMode;
  cc_clear();
  v23 = *MEMORY[0x29EDCA608];
  return v21;
}

uint64_t cccbc_setiv(uint64_t a1, const void *a2, size_t __n, void *__dst)
{
  if (*(a1 + 8) != __n)
  {
    return 0xFFFFFFFFLL;
  }

  memcpy(__dst, a2, __n);
  return 0;
}

uint64_t cccbc_getiv(uint64_t a1, void *__dst, _DWORD *a3, void *__src)
{
  v4 = *(a1 + 8);
  if (v4 <= *a3)
  {
    *a3 = v4;
    memcpy(__dst, __src, v4);
    return 0;
  }

  else
  {
    *a3 = v4;
    return 0xFFFFFFFFLL;
  }
}

uint64_t ccctr_setiv(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (*(a1 + 16) != a3)
  {
    return 0xFFFFFFFFLL;
  }

  (*(a1 + 32))(a1, a4, a2);
  return 0;
}

uint64_t ccxts_mode_encrypt_tweak(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15[1] = *MEMORY[0x29EDCA608];
  v9 = ccxts_context_size();
  MEMORY[0x2A1C7C4A8](v9, v10);
  v12 = (*(a1 + 40))(a6, v15 - v11, a5);
  ccpad_xts_encrypt();
  v13 = *MEMORY[0x29EDCA608];
  return v12;
}

uint64_t ccxts_mode_decrypt_tweak(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15[1] = *MEMORY[0x29EDCA608];
  v9 = ccxts_context_size();
  MEMORY[0x2A1C7C4A8](v9, v10);
  v12 = (*(a1 + 40))(a6, v15 - v11, a5);
  ccpad_xts_decrypt();
  v13 = *MEMORY[0x29EDCA608];
  return v12;
}

__n128 ccccm_mode_setup(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __n128 *a8)
{
  (*(a1 + 24))(a1, a8 + 10, a4, a3);
  result.n128_u64[0] = -1;
  result.n128_u64[1] = -1;
  *a8 = result;
  a8[1] = result;
  return result;
}

uint64_t ccccm_mode_done(uint64_t a1, uint64_t a2)
{
  (*(a1 + 56))(a2 + 160, a2 + 64, a2 + 48);
  *(a2 + 8) = *(a2 + 152);
  return 0;
}

uint64_t ccpkcs7_encrypt_pad(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  ccpad_pkcs7_encrypt();
  *a7 = (*(a2 + 8))(a3);
  return 0;
}

unint64_t ccpkcs7_padlen(int a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v5 = a4;
  if (!a5)
  {
    if (!a1 && a4)
    {
      v5 = (__PAIR128__(v5, v5 % (*(a2 + 8))(a3)) - 1) >> 64;
    }

    v8 = (a2 + 8);
    goto LABEL_8;
  }

  if (a1)
  {
    v8 = (a2 + 8);
    v5 = (*(a2 + 8))(a3) + a4;
LABEL_8:
    v9 = (*v8)(a3);
    return v5 / v9 * v9;
  }

  return v5;
}

uint64_t ccpkcs7_reserve(int a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return (*(a2 + 8))(a3);
  }
}

uint64_t ccpkcs7_encrypt_ecb_pad(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  ccpad_pkcs7_ecb_encrypt();
  *a7 = (*(a2 + 8))(a3);
  return 0;
}

uint64_t cccts3_encrypt_pad(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  ccpad_cts3_encrypt();
  *a7 = a5;
  return 0;
}

uint64_t cccts3_decrypt_pad(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  ccpad_cts3_decrypt();
  *a7 = a5;
  return 0;
}

unint64_t cccts3_padlen(int a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v10 = (*(a2 + 8))(a3);
  if (a5)
  {
    if (a1)
    {
      v11 = a4 + (*(a2 + 8))(a3) - 1;
LABEL_7:
      v13 = (*(a2 + 8))(a3);
      return v11 / v13 * v13;
    }
  }

  else if (a1)
  {
    v12 = a4 > v10;
    v11 = a4 - v10;
    if (v12)
    {
      goto LABEL_7;
    }

    return 0;
  }

  return a4;
}

uint64_t ccnopad_decrypt_pad(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  *a7 = 0;
  if (a5)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t CNCRCInit(unsigned int a1, dispatch_once_t ***a2)
{
  v4 = malloc_type_malloc(0x18uLL, 0x102004024DAA5DEuLL);
  if (!v4)
  {
    return 4294962994;
  }

  v5 = v4;
  Desc = getDesc(a1);
  *v5 = Desc;
  v7 = Desc[1];
  if (v7)
  {
    v5[1] = 0;
    v5[2] = 0;
    if (*(v7 + 8))
    {
      v8 = (*(v7 + 16))();
    }

    else
    {
      v8 = crc_normal_init(Desc);
    }

    v10 = v8;
    result = 0;
    v5[1] = v10;
    *a2 = v5;
  }

  else
  {
    free(v5);
    return 4294962991;
  }

  return result;
}

uint64_t CNCRCUpdate(uint64_t *a1, _BYTE *a2, uint64_t a3)
{
  v5 = *a1;
  v6 = *(v5 + 8);
  if (*(v6 + 8) == 1)
  {
    v7 = (*(v6 + 24))(a3, a2, a1[1]);
  }

  else
  {
    v8 = a1[1];
    if (*(v6 + 20))
    {
      v7 = crc_reverse_update(v5, a2, a3, v8);
    }

    else
    {
      v7 = crc_normal_update(v5, a2, a3, v8);
    }
  }

  v9 = a1[2] + a3;
  a1[1] = v7;
  a1[2] = v9;
  return 0;
}

uint64_t CNCRCFinal(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *(v4 + 8);
  if (*(v5 + 8) == 1)
  {
    v6 = (*(v5 + 32))(a1[2], a1[1]);
  }

  else
  {
    v7 = a1[1];
    if (*(v5 + 20))
    {
      v6 = crc_reverse_final(v4, v7);
    }

    else
    {
      v6 = crc_normal_final(v4, v7);
    }
  }

  a1[1] = v6;
  *a2 = v6;
  return 0;
}

uint64_t CNCRCDumpTable(unsigned int a1)
{
  Desc = getDesc(a1);
  v2 = Desc[1];
  if (!v2)
  {
    return 4294962991;
  }

  if (*(v2 + 8))
  {
    return 4294962996;
  }

  v4 = Desc;
  crc_normal_init(Desc);
  dump_crc_table(v4);
  return 0;
}

BOOL CNCRCWeakTest(unsigned int a1)
{
  Desc = getDesc(a1);
  v2 = Desc[1];
  if (!v2 || *(v2 + 8) == 1)
  {
    return 0;
  }

  v4 = Desc;
  if (*(v2 + 20))
  {
    v5 = crc_reverse_oneshot(Desc, "123456789", 9);
  }

  else
  {
    v5 = crc_normal_oneshot(Desc, "123456789", 9);
  }

  return v5 != *(v4[1] + 56);
}

uint64_t CNEncoderCreateCustom(uint64_t a1, unsigned int a2, uint64_t a3, char a4, int a5, void *a6)
{
  if ((a5 - 3) < 0xFFFFFFFE)
  {
    return 4294962996;
  }

  result = 4294962996;
  if (a2 - 16 <= 0x30 && ((1 << (a2 - 16)) & 0x1000000010001) != 0 && a3 && a6)
  {
    *a6 = 0;
    v13 = malloc_type_malloc(0x108uLL, 0x1060040B02D0E39uLL);
    v14 = malloc_type_malloc(0x28uLL, 0x1070040DD70D767uLL);
    v15 = malloc_type_malloc(0x20uLL, 0x10200405028CB4AuLL);
    if (v15)
    {
      v16 = v15;
      v15[2] = 0;
      v17 = v15 + 2;
      v15[3] = 0;
      v18 = v15 + 3;
      if (v13 && v14)
      {
        v29 = v15 + 3;
        v14[32] = a2;
        *v14 = a1;
        *(v14 + 2) = a3;
        *(v14 + 3) = &encoderValue + 20 * (a2 >> 5);
        v14[33] = a4;
        *(v14 + 2) = 51966;
        v13[32] = v14;
        *&v19 = 0x8080808080808080;
        *(&v19 + 1) = 0x8080808080808080;
        *v13 = v19;
        *(v13 + 1) = v19;
        *(v13 + 2) = v19;
        *(v13 + 3) = v19;
        *(v13 + 4) = v19;
        *(v13 + 5) = v19;
        *(v13 + 6) = v19;
        *(v13 + 7) = v19;
        *(v13 + 8) = v19;
        *(v13 + 9) = v19;
        *(v13 + 10) = v19;
        *(v13 + 11) = v19;
        *(v13 + 12) = v19;
        *(v13 + 13) = v19;
        *(v13 + 14) = v19;
        *(v13 + 15) = v19;
        if (v14[32])
        {
          v20 = 0;
          do
          {
            *(v13 + *(*(v14 + 2) + v20)) = v20;
            ++v20;
          }

          while (v20 < v14[32]);
        }

        *v15 = v13;
        *(v15 + 2) = a5;
        v21 = *(v14 + 3);
        v22 = v21 ? *(v21 + 8) : 0;
        v16[2] = CNBufferCreate(v22);
        if (*v16 && (v24 = *(*v16 + 256)) != 0 && (v25 = *(v24 + 24)) != 0)
        {
          v26 = *(v25 + 12);
        }

        else
        {
          v26 = 0;
        }

        v27 = CNBufferCreate(v26);
        v18 = v29;
        *v29 = v27;
        if (*v17)
        {
          if (v27)
          {
            result = 0;
            *a6 = v16;
            return result;
          }
        }
      }

      v28 = v18;
      free(v13);
      free(v14);
      if (*v17)
      {
        CNBufferRelease(v17);
      }

      if (*v28)
      {
        CNBufferRelease(v28);
      }

      v23 = v16;
    }

    else
    {
      free(v13);
      v23 = v14;
    }

    free(v23);
    return 4294962994;
  }

  return result;
}

unint64_t decodeLen(uint64_t *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      v2 = *(v2 + 256);
      if (v2)
      {
        v2 = *(v2 + 24);
        if (v2)
        {
          v2 = *(v2 + 4);
        }
      }
    }
  }

  else
  {
    v2 = 0;
  }

  return (v2 * a2 + 8) >> 3;
}

unint64_t CNEncoderGetOutputLengthFromEncoding(unsigned int a1, int a2, uint64_t a3)
{
  v12 = 0;
  v5 = 0;
  if (!CNEncoderCreate(a1, a2, &v12))
  {
    if (a2 == 2)
    {
      if (a3)
      {
        v10 = v12;
        if (v12)
        {
          v10 = *v12;
          if (*v12)
          {
            v10 = *(v10 + 256);
            if (v10)
            {
              v10 = *(v10 + 24);
              if (v10)
              {
                v10 = *(v10 + 4);
              }
            }
          }
        }

        v5 = (v10 * a3 + 8) >> 3;
        goto LABEL_21;
      }
    }

    else if (a2 == 1)
    {
      v5 = 1;
      if (a3 && v12)
      {
        if (*v12 && (v6 = *(*v12 + 256)) != 0 && (v7 = *(v6 + 24)) != 0 && (v8 = *(v7 + 8), v8) && (v9 = *(v7 + 12), v9))
        {
          v5 = (a3 + v8 - 1) / v8 * v9 + 1;
        }

        else
        {
          v5 = 1;
        }
      }

      goto LABEL_21;
    }

    v5 = 0;
LABEL_21:
    CNEncoderRelease(&v12);
  }

  return v5;
}

uint64_t deCode(uint64_t a1, unsigned __int8 *a2, uint64_t a3, _BYTE *a4, unint64_t *a5)
{
  if (!a1)
  {
    return 0;
  }

  if (!*a1)
  {
    return 0;
  }

  v6 = *(*a1 + 256);
  if (!v6)
  {
    return 0;
  }

  v9 = a3;
  v11 = *(v6 + 24);
  if (v11)
  {
    v12 = *(v11 + 4);
    if (a3)
    {
      goto LABEL_6;
    }

LABEL_21:
    *a5 = 0;
LABEL_22:
    *a4 = 0;
    return 0;
  }

  v12 = 0;
  if (!a3)
  {
    goto LABEL_21;
  }

LABEL_6:
  v13 = *(v6 + 24);
  if (v13)
  {
    v13 = *(v13 + 4);
  }

  v14 = v13 * a3;
  *a5 = (v14 + 8) >> 3;
  if (v14 >= 0xFFFFFFFFFFFFFFF8)
  {
    goto LABEL_22;
  }

  cc_clear();
  v15 = 0;
  v16 = 0;
  do
  {
    v18 = *a2++;
    v17 = v18;
    if (v18 != *(*(*a1 + 256) + 33))
    {
      v19 = *(*a1 + v17);
      v20 = (v15 & 7) + v12;
      v16 = v15 >> 3;
      if (8 - v20 < 0)
      {
        a4[v16] |= v19 >> (v20 - 8);
        v22 = &a4[v16 + 1];
        v21 = v19 << (16 - v20);
      }

      else
      {
        v21 = v19 << (8 - v20);
        v22 = &a4[v16];
      }

      *v22 |= v21;
    }

    v15 += v12;
    --v9;
  }

  while (v9);
  if (a4[v16 + 1])
  {
    v23 = v16 + 2;
  }

  else
  {
    v23 = v16 + 1;
  }

  *a5 = v23;
  return 0;
}

void *CCDHCreate(int a1)
{
  if (a1 != 1)
  {
    return 0;
  }

  ccdh_gp_rfc3526group05();
  v1 = ccdh_ccn_size();
  v2 = malloc_type_malloc(2 * v1 + 16, 0xAFC8BD88uLL);
  if (v2)
  {
    ccdh_ctx_public();
    ccdh_ctx_init();
  }

  return v2;
}

void CCDigestGetDigestInfo_cold_1()
{
  v0 = os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_FAULT);
  v6 = MEMORY[0x29EDCA698];
  if (v0)
  {
    v17 = *(MEMORY[0x29EDCA698] + 80);
    v20 = *(MEMORY[0x29EDCA698] + 88);
    OUTLINED_FUNCTION_0(&dword_299C53000, MEMORY[0x29EDCA988], v1, "slot=%p once=%li, ptr=%p", v2, v3, v4, v5, 0);
  }

  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_FAULT))
  {
    v18 = v6[12];
    v21 = v6[13];
    OUTLINED_FUNCTION_0(&dword_299C53000, MEMORY[0x29EDCA988], v7, "slot=%p once=%li, ptr=%p", v8, v9, v10, v11, 0);
  }

  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_FAULT))
  {
    v19 = v6[14];
    v22 = v6[15];
    OUTLINED_FUNCTION_0(&dword_299C53000, MEMORY[0x29EDCA988], v12, "slot=%p once=%li, ptr=%p", v13, v14, v15, v16, 0);
  }

  _os_crash();
  __break(1u);
}

void *CCECCryptorGetPublicKeyFromPrivateKey(uint64_t a1)
{
  v2 = ccMallocECCryptor(*(a1 + 8), 0);
  if (v2)
  {
    v3 = *(a1 + 8);
    cp = ccec_get_cp();
    memcpy(*v2, *a1, 24 * *cp + 16);
    v2[1] = *(a1 + 8);
    *(v2 + 4) = 0;
    if ((ccECpairwiseConsistencyCheck() & 1) == 0)
    {
      ccECCryptorFree(v2);
      return 0;
    }
  }

  return v2;
}

uint64_t CCRSACryptorGeneratePair(unint64_t a1, uint64_t a2, void *a3, void *a4)
{
  *a4 = 0;
  *a3 = 0;
  v7 = ccn_write_int_size();
  v8 = malloc_type_malloc(v7, 0x5CEC70E0uLL);
  if (!v8)
  {
    v9 = 0;
LABEL_10:
    v11 = 4294962994;
    goto LABEL_8;
  }

  ccn_write_int();
  if (a1 > 0x1000)
  {
    v9 = 0;
    v11 = 4294962996;
    goto LABEL_8;
  }

  if (!ccDRBGGetRngState())
  {
    v9 = 0;
    v11 = 4294962989;
    goto LABEL_8;
  }

  v9 = ccMallocRSACryptor(a1);
  if (!v9)
  {
    goto LABEL_10;
  }

  if (ccrsa_generate_fips186_key())
  {
    v11 = 4294962992;
    goto LABEL_8;
  }

  *(v9 + 2) = 1;
  PublicKeyFromPrivateKey = CCRSACryptorCreatePublicKeyFromPrivateKey(v9);
  if (!PublicKeyFromPrivateKey)
  {
    goto LABEL_10;
  }

  v11 = 0;
  *a3 = PublicKeyFromPrivateKey;
  *a4 = v9;
  v9 = 0;
LABEL_8:
  free(v8);
  ccRSACryptorClear(v9);
  ccRSACryptorClear(0);
  return v11;
}

uint64_t CCRSACryptorCrypt(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t *a5)
{
  v5 = 0;
  v6 = *a5;
  *a5 = 0;
  v7 = 4294962996;
  if (a1 && a2 && a4 && v6)
  {
    v10 = (*a1 + 7) >> 3;
    if (v10 != a3 || v6 < v10)
    {
      v5 = 0;
LABEL_20:
      v7 = 4294962994;
      goto LABEL_19;
    }

    v5 = malloc_type_malloc(8 * *(a1 + 16), 0x100004000313F17uLL);
    if (!v5)
    {
      goto LABEL_20;
    }

    if (ccn_read_uint())
    {
      goto LABEL_18;
    }

    v13 = *(a1 + 8);
    if (v13 == 1)
    {
      v14 = ccrsa_priv_crypt();
    }

    else
    {
      if (v13)
      {
        goto LABEL_18;
      }

      ccrsa_ctx_public();
      v14 = ccrsa_pub_crypt();
    }

    if (!v14)
    {
      ccn_write_uint_padded();
      v7 = 0;
      *a5 = a3;
      goto LABEL_19;
    }

LABEL_18:
    v7 = 4294962996;
  }

LABEL_19:
  free(v5);
  return v7;
}

uint64_t CCRSAGetCRTComponents(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  if (*(a1 + 8) != 1)
  {
    return 4294962996;
  }

  v35[11] = v7;
  v35[12] = v8;
  v34 = 0;
  v35[0] = 0;
  v33 = 0;
  if (CCRSAGetCRTComponentsSizes(a1, v35, &v34, &v33))
  {
    return 4294962996;
  }

  ccrsa_ctx_private_zp();
  cczp_n();
  ccrsa_ctx_private_zp();
  cczp_prime();
  v13 = ccrsa_ctx_private_zp();
  v14 = v13 + 16 * *ccrsa_ctx_private_zp();
  cczp_n();
  ccrsa_ctx_private_zp();
  v15 = a6 + 16 * *OUTLINED_FUNCTION_0_0();
  cczp_prime();
  v16 = ccn_cmpn() < 1 || v35[0] > a3;
  v17 = v16 || v34 > a5;
  if (v17 || v33 > a7)
  {
    return 4294962996;
  }

  ccrsa_ctx_private_zp();
  cczp_n();
  v19 = OUTLINED_FUNCTION_0_0();
  v20 = v19 + 16 * *ccrsa_ctx_private_zp();
  v21 = v20 + 16 * *ccrsa_ctx_private_zp();
  ccn_write_uint();
  ccrsa_ctx_private_zp();
  v22 = a6 + 16 * *OUTLINED_FUNCTION_0_0();
  cczp_n();
  v23 = OUTLINED_FUNCTION_0_0();
  v24 = v23 + 16 * *ccrsa_ctx_private_zp();
  v25 = v24 + 16 * *ccrsa_ctx_private_zp();
  v26 = v25 + 8 * *ccrsa_ctx_private_zp();
  ccn_write_uint();
  ccrsa_ctx_private_zp();
  cczp_n();
  v27 = OUTLINED_FUNCTION_0_0();
  v28 = v27 + 16 * *ccrsa_ctx_private_zp();
  v29 = v28 + 16 * *ccrsa_ctx_private_zp();
  v30 = v29 + 8 * *ccrsa_ctx_private_zp();
  v31 = v30 + 8 * *ccrsa_ctx_private_zp();
  ccn_write_uint();
  return 0;
}

int CCSymmetricKeyUnwrap(CCWrappingAlgorithm algorithm, const uint8_t *iv, const size_t ivLen, const uint8_t *kek, size_t kekLen, const uint8_t *wrappedKey, size_t wrappedKeyLen, uint8_t *rawKey, size_t *rawKeyLen)
{
  v30[0] = rawKey;
  v32 = *MEMORY[0x29EDCA608];
  v31 = 0;
  CipherMode = getCipherMode(0, 1, 1u);
  v30[1] = v30;
  v14 = (*CipherMode + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8](CipherMode, v15);
  v17 = v30 - v16;
  v18 = 0;
  v19 = (kekLen & 0xFFFFFFFFFFFFFFF7) == 0x10 || kekLen == 32;
  v20 = -4300;
  if (v19 && rawKeyLen)
  {
    v21 = *rawKeyLen;
    if (v21 < ccwrap_unwrapped_size() || iv && ivLen < 8 || (*(CipherMode + 16))(CipherMode, v17, kekLen, kek))
    {
      v18 = 0;
      v20 = -4300;
    }

    else
    {
      v22 = malloc_type_malloc(*rawKeyLen, 0x7F6BFBA0uLL);
      if (v22)
      {
        v23 = v22;
        v24 = 1;
        while (1)
        {
          v25 = v24;
          if (iv)
          {
            v31 = *rawKeyLen;
            if (!ccwrap_auth_decrypt_withiv())
            {
              break;
            }
          }

          v24 = 0;
          iv = &rfc3394_iv_data;
          if ((v25 & 1) == 0)
          {
            cc_clear();
            v20 = -4304;
            goto LABEL_18;
          }
        }

        memcpy(v30[0], v23, v31);
        v20 = 0;
LABEL_18:
        v26 = *rawKeyLen;
        cc_clear();
        free(v23);
        v18 = v31;
      }

      else
      {
        v18 = 0;
        v20 = -4302;
      }
    }
  }

  *rawKeyLen = v18;
  v27 = *CipherMode;
  cc_clear();
  v28 = *MEMORY[0x29EDCA608];
  return v20;
}

unint64_t CNEncoderGetOutputLength(unint64_t result, uint64_t a2)
{
  if (!result)
  {
    return result;
  }

  v2 = *(result + 8);
  if (v2 != 2)
  {
    if (v2 == 1)
    {
      v3 = *(*(result + 16) + 8) + a2;
      if (v3 && *result && (v4 = *(*result + 256)) != 0 && (v5 = *(v4 + 24)) != 0 && (v6 = *(v5 + 8), v6) && (v7 = *(v5 + 12), v7))
      {
        return (v3 + v6 - 1) / v6 * v7 + 1;
      }

      else
      {
        return 1;
      }
    }

    return 0;
  }

  v8 = *(*(result + 24) + 8) + a2;
  if (!v8)
  {
    return 0;
  }

  v9 = *result;
  if (*result)
  {
    v9 = *(v9 + 256);
    if (v9)
    {
      v9 = *(v9 + 24);
      if (v9)
      {
        v9 = *(v9 + 4);
      }
    }
  }

  return (v9 * v8 + 8) >> 3;
}

uint64_t CNEncoderBlocksize(unsigned int a1, void *a2, void *a3)
{
  result = 4294962996;
  if (a2)
  {
    if (a3)
    {
      v9 = 0;
      result = CNEncoderCreate(a1, 1, &v9);
      if (!result)
      {
        v7 = v9;
        if (v9 && (v7 = *v9) != 0 && (v7 = v7[32]) != 0)
        {
          v8 = v7[3];
          if (v8)
          {
            v8 = *(v8 + 8);
          }

          *a2 = v8;
          v7 = v7[3];
          if (v7)
          {
            v7 = *(v7 + 3);
          }
        }

        else
        {
          *a2 = 0;
        }

        *a3 = v7;
        CNEncoderRelease(&v9);
        return 0;
      }
    }
  }

  return result;
}

uint64_t CNEncoderBlocksizeFromRef(uint64_t *a1, void *a2, void *a3)
{
  result = 4294962996;
  if (a1 && a2 && a3)
  {
    v5 = *a1;
    if (v5 && (v5 = *(v5 + 256)) != 0)
    {
      v6 = *(v5 + 24);
      if (v6)
      {
        v6 = *(v6 + 8);
      }

      *a2 = v6;
      v5 = *(v5 + 24);
      if (v5)
      {
        v5 = *(v5 + 12);
      }
    }

    else
    {
      *a2 = 0;
    }

    result = 0;
    *a3 = v5;
  }

  return result;
}