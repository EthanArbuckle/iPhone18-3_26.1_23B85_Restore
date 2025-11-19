double HDLCFrameFree(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    free(v2);
  }

  if (*a1)
  {
    free(*a1);
  }

  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t HDLCFrameCreateDownlink(uint64_t a1, char *a2, int a3, _DWORD *a4, uint64_t a5, unsigned int a6, int a7, char a8)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *a4 = 0;
  if (!a3)
  {
    return 0;
  }

  v8 = 1;
  while (1)
  {
    v9 = *a2;
    if (v9 != 126)
    {
      break;
    }

    ++a2;
    *a4 = v8++;
    if (!--a3)
    {
      return 0;
    }
  }

  v11 = 0;
  LODWORD(v12) = 0;
  v13 = 1;
  while (a3 != v13)
  {
    if (v9 == 125)
    {
      v12 = v12;
    }

    else
    {
      v12 = (v12 + 1);
    }

    v9 = a2[v11 + 1];
    ++v13;
    ++v11;
    if (v9 == 126)
    {
      *a4 = v8 + v11;
      if ((v13 - 2) >> 15)
      {
        return 0;
      }

      v15 = a2;
      v14 = malloc(v12);
      *a1 = v14;
      if (v14)
      {
        v20 = a1;
        v21 = 0;
        v22 = -v11;
        v23 = v12;
        v24 = a6;
        v25 = v15;
        do
        {
          if (!v23)
          {
            *(a1 + 8) = 0;
LABEL_28:
            if (*(a1 + 24))
            {
              free(*(a1 + 24));
              v20 = a1;
            }

            if (*v20)
            {
              free(*v20);
              v20 = a1;
            }

            v14 = 0;
            *(v20 + 32) = 0;
            *v20 = 0u;
            *(v20 + 16) = 0u;
            return v14;
          }

          v27 = *v25;
          if (v27 != 125)
          {
            if (v21)
            {
              v28 = v27 | 0x20;
            }

            else
            {
              v28 = *v25;
            }

            *v14++ = v28;
            --v23;
          }

          ++v25;
          v21 = v27 == 125;
        }

        while (!__CFADD__(v22++, 1));
        v29 = v12 - v23;
        *(a1 + 8) = v12 - v23;
        if (v23 || v29 <= 1)
        {
          goto LABEL_28;
        }

        v30 = *a1;
        v31 = v12 - v23;
        do
        {
          v32 = *v30++;
          v24 = FCSTable[v32 ^ v24] ^ (v24 >> 8);
          --v31;
        }

        while (v31);
        *(a1 + 16) = v24;
        *(a1 + 8) = v29 - 2;
        *(a1 + 12) = v12;
        v14 = 1;
        if ((a8 & 1) != 0 && v24 != a7)
        {
          HDLCFrameFree(a1);
          return 0;
        }
      }

      return v14;
    }
  }

  return 0;
}

BOOL HDLCFrameCreateDownlinkFake(uint64_t a1, const void *a2, size_t __size)
{
  v3 = __size;
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v6 = __size;
  v7 = malloc(__size);
  v8 = v7;
  *a1 = v7;
  if (v7)
  {
    *(a1 + 16) = 0;
    *(a1 + 8) = v3;
    *(a1 + 12) = v3;
    memcpy(v7, a2, v6);
  }

  return v8 != 0;
}

BOOL HDLCFrameCreateUplink(uint64_t a1, size_t __size, __int16 a3)
{
  v4 = __size;
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v6 = malloc(__size);
  *a1 = v6;
  if (v6)
  {
    *(a1 + 12) = v4;
    *(a1 + 16) = a3;
  }

  return v6 != 0;
}

BOOL HDLCFrameInject(uint64_t a1, char *a2, size_t __n)
{
  v3 = __n;
  v4 = *(a1 + 8);
  v5 = *(a1 + 12) - v4;
  if (v5 >= __n)
  {
    LOWORD(v6) = *(a1 + 16);
    if (__n)
    {
      v7 = a2;
      v8 = __n;
      do
      {
        v9 = *v7++;
        v6 = FCSTable[(v9 ^ v6)] ^ ((v6 & 0xFF00) >> 8);
        --v8;
      }

      while (v8);
    }

    *(a1 + 16) = v6;
    memcpy((*a1 + v4), a2, __n);
    *(a1 + 8) += v3;
  }

  return v5 >= v3;
}

uint64_t HDLCFrameEncode(uint64_t *a1, char *__b, unsigned int a3, size_t __len)
{
  v4 = a3 - __len;
  if (a3 < __len)
  {
    return 0;
  }

  v5 = *a1;
  if (!*a1)
  {
    return 0;
  }

  if (!__len)
  {
    v4 = a3;
    v10 = *(a1 + 2);
    if (v10)
    {
      goto LABEL_5;
    }

LABEL_18:
    v13 = __b;
    v15 = *(a1 + 8);
    v18 = *(a1 + 8);
    v17 = ~v18;
    if ((v18 - 129) <= 1)
    {
      goto LABEL_14;
    }

    goto LABEL_19;
  }

  v6 = __len;
  v7 = a1;
  v8 = __b;
  v9 = a3;
  memset(__b, 126, __len);
  a1 = v7;
  a3 = v9;
  __b = &v8[v6];
  v5 = *v7;
  v10 = *(v7 + 2);
  if (!v10)
  {
    goto LABEL_18;
  }

LABEL_5:
  v11 = 0;
  v12 = 0;
  v13 = __b;
  while (1)
  {
    v14 = *(v5 + v11);
    if ((v14 - 125) <= 1)
    {
      if (!v4)
      {
        break;
      }

      *v13++ = 125;
      LOBYTE(v14) = v14 & 0x5F;
      --v4;
    }

    if (!v4)
    {
      break;
    }

    *v13++ = v14;
    --v4;
    v12 = ++v11 >= v10;
    if (v10 == v11)
    {
      goto LABEL_13;
    }
  }

  v4 = 0;
  v13 = __b;
  if (!v12)
  {
    return 0;
  }

LABEL_13:
  v15 = *(a1 + 8);
  v16 = *(a1 + 8);
  v17 = ~v16;
  if ((v16 - 129) <= 1)
  {
LABEL_14:
    if (!v4)
    {
      return 0;
    }

    *v13++ = 125;
    v17 &= 0x5Fu;
    if (!--v4)
    {
      return 0;
    }

    goto LABEL_20;
  }

LABEL_19:
  if (!v4)
  {
    return 0;
  }

LABEL_20:
  v19 = v15 >> 8;
  v20 = (v15 >> 8) ^ 0xFF;
  *v13 = v17;
  v21 = v13 + 1;
  v22 = v4 - 1;
  if (v19 - 129 <= 1)
  {
    if (v4 != 1)
    {
      v13[1] = 125;
      LOBYTE(v20) = v20 & 0x5F;
      v21 = v13 + 2;
      v22 = v4 - 2;
      goto LABEL_23;
    }

    return 0;
  }

LABEL_23:
  if (!v22)
  {
    return 0;
  }

  *v21 = v20;
  if (v22 == 1)
  {
    return 0;
  }

  v21[1] = 126;
  return a3 - v22 + 2;
}

uint64_t HDLCFrameGetMaxEncodedLength(uint64_t a1, double a2, int32x4_t a3, double a4, double a5, int8x16_t a6)
{
  v6 = *(a1 + 8);
  if (!v6)
  {
    return 6;
  }

  v7 = *a1;
  if (v6 < 4)
  {
    v8 = 0;
    v9 = 2;
    goto LABEL_14;
  }

  if (v6 >= 0x20)
  {
    v8 = v6 & 0xFFFFFFE0;
    v11 = 0uLL;
    v12.i64[0] = 0x8383838383838383;
    v12.i64[1] = 0x8383838383838383;
    v13.i64[0] = 0x202020202020202;
    v13.i64[1] = 0x202020202020202;
    v14 = xmmword_2979470A0;
    a6.i64[0] = 0x100000001;
    a6.i64[1] = 0x100000001;
    v15 = v7 + 1;
    v16 = v8;
    v17 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
    v20 = 0uLL;
    v21 = 0uLL;
    v22 = 0uLL;
    do
    {
      v23 = vcgtq_u8(v13, vaddq_s8(v15[-1], v12));
      v24 = vmovl_u8(*v23.i8);
      v25 = vmovl_high_u8(v23);
      v26 = vcgtq_u8(v13, vaddq_s8(*v15, v12));
      v27 = vmovl_u8(*v26.i8);
      v28 = vmovl_high_u8(v26);
      v18 = vaddq_s32(v18, vandq_s8(vmovl_high_u16(v25), a6));
      v17 = vaddq_s32(v17, vandq_s8(vmovl_u16(*v25.i8), a6));
      v11 = vaddq_s32(v11, vandq_s8(vmovl_high_u16(v24), a6));
      v14 = vaddq_s32(v14, vandq_s8(vmovl_u16(*v24.i8), a6));
      v22 = vaddq_s32(v22, vandq_s8(vmovl_high_u16(v28), a6));
      v21 = vaddq_s32(v21, vandq_s8(vmovl_u16(*v28.i8), a6));
      v20 = vaddq_s32(v20, vandq_s8(vmovl_high_u16(v27), a6));
      v19 = vaddq_s32(v19, vandq_s8(vmovl_u16(*v27.i8), a6));
      v15 += 2;
      v16 -= 32;
    }

    while (v16);
    a3 = vaddq_s32(vaddq_s32(v19, v14), vaddq_s32(v21, v17));
    v9 = vaddvq_s32(vaddq_s32(a3, vaddq_s32(vaddq_s32(v20, v11), vaddq_s32(v22, v18))));
    if (v8 == v6)
    {
      return v9 + 4 + v6;
    }

    if ((v6 & 0x1C) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = 0;
    v9 = 2;
  }

  v29 = v8;
  v30 = v9;
  v8 = v6 & 0xFFFFFFFC;
  v31 = (v7->u32 + v29);
  v32 = v29 - v8;
  a3.i32[0] = 8585347;
  a3.i16[2] = 131;
  a3.i16[3] = 131;
  v33.i64[0] = 0x100000001;
  v33.i64[1] = 0x100000001;
  do
  {
    v34 = *v31++;
    a6.i32[0] = v34;
    a6 = vandq_s8(vmovl_u16(vcgt_u16(0x2000200020002, (vaddw_u8(a3, *a6.i8).u64[0] & 0xFF00FF00FF00FFLL))), v33);
    v30 = vaddq_s32(v30, a6);
    v32 += 4;
  }

  while (v32);
  v9 = vaddvq_s32(v30);
  if (v8 != v6)
  {
LABEL_14:
    v35 = v6 - v8;
    v36 = &v7->u8[v8];
    do
    {
      v37 = *v36++;
      if ((v37 - 125) < 2)
      {
        ++v9;
      }

      --v35;
    }

    while (v35);
  }

  return v9 + 4 + v6;
}

char *HDLCFrameEncodeAndCache(uint64_t a1, size_t a2, double a3, int32x4_t a4, double a5, double a6, int8x16_t a7)
{
  v8 = *(a1 + 8);
  if (v8)
  {
    v9 = *a1;
    if (v8 < 4)
    {
      v10 = 0;
      v11 = 2;
      goto LABEL_17;
    }

    if (v8 >= 0x20)
    {
      v10 = v8 & 0xFFFFFFE0;
      v16 = 0uLL;
      v17.i64[0] = 0x8383838383838383;
      v17.i64[1] = 0x8383838383838383;
      v18.i64[0] = 0x202020202020202;
      v18.i64[1] = 0x202020202020202;
      v19 = xmmword_2979470A0;
      a7.i64[0] = 0x100000001;
      a7.i64[1] = 0x100000001;
      v20 = (v9 + 16);
      v21 = v10;
      v22 = 0uLL;
      v23 = 0uLL;
      v24 = 0uLL;
      v25 = 0uLL;
      v26 = 0uLL;
      v27 = 0uLL;
      do
      {
        v28 = vcgtq_u8(v18, vaddq_s8(v20[-1], v17));
        v29 = vmovl_u8(*v28.i8);
        v30 = vmovl_high_u8(v28);
        v31 = vcgtq_u8(v18, vaddq_s8(*v20, v17));
        v32 = vmovl_u8(*v31.i8);
        v33 = vmovl_high_u8(v31);
        v23 = vaddq_s32(v23, vandq_s8(vmovl_high_u16(v30), a7));
        v22 = vaddq_s32(v22, vandq_s8(vmovl_u16(*v30.i8), a7));
        v16 = vaddq_s32(v16, vandq_s8(vmovl_high_u16(v29), a7));
        v19 = vaddq_s32(v19, vandq_s8(vmovl_u16(*v29.i8), a7));
        v27 = vaddq_s32(v27, vandq_s8(vmovl_high_u16(v33), a7));
        v26 = vaddq_s32(v26, vandq_s8(vmovl_u16(*v33.i8), a7));
        v25 = vaddq_s32(v25, vandq_s8(vmovl_high_u16(v32), a7));
        v24 = vaddq_s32(v24, vandq_s8(vmovl_u16(*v32.i8), a7));
        v20 += 2;
        v21 -= 32;
      }

      while (v21);
      a4 = vaddq_s32(vaddq_s32(v24, v19), vaddq_s32(v26, v22));
      v11 = vaddvq_s32(vaddq_s32(a4, vaddq_s32(vaddq_s32(v25, v16), vaddq_s32(v27, v23))));
      if (v10 == v8)
      {
        goto LABEL_21;
      }

      if ((v8 & 0x1C) == 0)
      {
LABEL_17:
        v40 = v8 - v10;
        v41 = (v9 + v10);
        do
        {
          v42 = *v41++;
          if ((v42 - 125) < 2)
          {
            ++v11;
          }

          --v40;
        }

        while (v40);
LABEL_21:
        v12 = v11 + 4;
        if (*(a1 + 24))
        {
          return 0;
        }

        goto LABEL_5;
      }
    }

    else
    {
      v10 = 0;
      v11 = 2;
    }

    v34 = v10;
    v35 = v11;
    v10 = v8 & 0xFFFFFFFC;
    v36 = (v9 + v34);
    v37 = v34 - v10;
    a4.i32[0] = 8585347;
    a4.i16[2] = 131;
    a4.i16[3] = 131;
    v38.i64[0] = 0x100000001;
    v38.i64[1] = 0x100000001;
    do
    {
      v39 = *v36++;
      a7.i32[0] = v39;
      a7 = vandq_s8(vmovl_u16(vcgt_u16(0x2000200020002, (vaddw_u8(a4, *a7.i8).u64[0] & 0xFF00FF00FF00FFLL))), v38);
      v35 = vaddq_s32(v35, a7);
      v37 += 4;
    }

    while (v37);
    v11 = vaddvq_s32(v35);
    if (v10 == v8)
    {
      goto LABEL_21;
    }

    goto LABEL_17;
  }

  v12 = 6;
  if (*(a1 + 24))
  {
    return 0;
  }

LABEL_5:
  v14 = v12 + v8;
  result = malloc((v12 + v8));
  *(a1 + 24) = result;
  if (result)
  {
    *(a1 + 32) = HDLCFrameEncode(a1, result, v14, a2);
    return 1;
  }

  return result;
}

uint64_t HDLCFrameCloneDownlink(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (!a1)
  {
    return v2;
  }

  if (!a2)
  {
    return v2;
  }

  v2 = *a2;
  if (!*a2)
  {
    return v2;
  }

  if (*(a2 + 12) < *(a2 + 8))
  {
    return 0;
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v5 = *(a2 + 8);
  v4 = *(a2 + 12);
  *(a1 + 8) = v5;
  *(a1 + 12) = v4;
  *(a1 + 16) = *(a2 + 16);
  v8 = malloc(v4);
  *a1 = v8;
  if (!v8)
  {
    return 0;
  }

  memcpy(v8, *a2, v5);
  return 1;
}

BOOL HDLCFrameInjectUnsignedInt(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 12) - v2;
  if (v3 >= 4)
  {
    v4 = FCSTable[(*(a1 + 16) ^ a2)];
    v5 = FCSTable[(v4 ^ ((*(a1 + 16) ^ a2) >> 8))];
    v6 = FCSTable[(v5 ^ HIBYTE(v4) ^ BYTE2(a2))];
    *(a1 + 16) = FCSTable[v6 ^ (v5 >> 8) ^ HIBYTE(a2)] ^ (v6 >> 8);
    *(*a1 + v2) = a2;
    *(a1 + 8) += 4;
  }

  return v3 > 3;
}

BOOL HDLCFrameInjectUnsignedShort(uint64_t a1, __int16 a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 12) - v2;
  if (v3 >= 2)
  {
    *(a1 + 16) = FCSTable[FCSTable[(*(a1 + 16) ^ a2)] ^ (((*(a1 + 16) ^ a2) & 0xFF00) >> 8)] ^ HIBYTE(FCSTable[(*(a1 + 16) ^ a2)]);
    *(*a1 + v2) = a2;
    *(a1 + 8) += 2;
  }

  return v3 > 1;
}

BOOL HDLCFrameInjectUnsignedChar(uint64_t a1, char a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 12);
  if (v2 != v3)
  {
    *(a1 + 16) = FCSTable[(*(a1 + 16) ^ a2)] ^ HIBYTE(*(a1 + 16));
    *(*a1 + v3) = a2;
    ++*(a1 + 8);
  }

  return v2 != v3;
}

uint64_t CRCCCITT(uint64_t result, char *a2, int a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    LODWORD(result) = FCSTable[(v3 ^ result)] ^ ((result & 0xFF00) >> 8);
  }

  return result;
}