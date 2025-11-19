int16x4_t sub_277A47518(uint64_t a1, int a2, unsigned __int8 *a3, char a4, char a5, int a6)
{
  v7 = a1;
  v8 = *(a3 + 1);
  if (a5)
  {
    v10 = (2 * a1);
    HIDWORD(v12) = *a3 - 4;
    LODWORD(v12) = HIDWORD(v12);
    v11 = v12 >> 1;
    if (a6 == 1)
    {
      if (v11 <= 1)
      {
        if (v11)
        {
          if (v11 != 1)
          {
            return result;
          }

          goto LABEL_19;
        }

        goto LABEL_65;
      }

      if (v11 != 2)
      {
        if (v11 != 5)
        {
          return result;
        }

        goto LABEL_43;
      }
    }

    else
    {
      if (a6 != 2)
      {
        if (v11 <= 1)
        {
          if (v11)
          {
            if (v11 != 1)
            {
              return result;
            }

            v18 = v8[16];
            v19 = *v8;
            v20 = v8 + 32;
            v17 = 2 * a1;
            goto LABEL_24;
          }

          v32 = v8[16];
          v33 = *v8;
          v34 = v8 + 32;
          v31 = 2 * a1;
          goto LABEL_69;
        }

        if (v11 != 2)
        {
          if (v11 != 5)
          {
            return result;
          }

          v25 = v8[16];
          v26 = *v8;
          v27 = v8 + 32;
          v24 = (2 * a1);
          goto LABEL_47;
        }

        v36 = v8[16];
        v37 = *v8;
        v38 = v8 + 32;
        v35 = 2 * a1;
        goto LABEL_73;
      }

      if (v11 <= 1)
      {
        if (v11)
        {
          if (v11 != 1)
          {
            return result;
          }

          sub_2779D8E58(2 * a1, a2, *v8, v8[16], v8 + 32, a4);
          sub_2779D8E58(&v10->i64[a2], a2, *v8, v8[16], v8 + 32, a4);
          v10 += a2;
LABEL_19:
          sub_2779D8E58(v10, a2, *v8, v8[16], v8 + 32, a4);
          v17 = &v10->i64[a2];
          v18 = v8[16];
          v19 = *v8;
          v20 = v8 + 32;
LABEL_24:

          *&result = sub_2779D8E58(v17, a2, v19, v18, v20, a4);
          return result;
        }

        sub_2779D8AAC(2 * a1, a2, *v8, v8[16], v8 + 32, a4);
        sub_2779D8AAC(&v10->i64[a2], a2, *v8, v8[16], v8 + 32, a4);
        v10 += a2;
LABEL_65:
        sub_2779D8AAC(v10, a2, *v8, v8[16], v8 + 32, a4);
        v31 = &v10->i64[a2];
        v32 = v8[16];
        v33 = *v8;
        v34 = v8 + 32;
LABEL_69:

        *&result = sub_2779D8AAC(v31, a2, v33, v32, v34, a4);
        return result;
      }

      if (v11 != 2)
      {
        if (v11 != 5)
        {
          return result;
        }

        sub_2779D9988((2 * a1), a2, *v8, v8[16], v8 + 32, a4);
        sub_2779D9988((v10 + 8 * a2), a2, *v8, v8[16], v8 + 32, a4);
        v10 += a2;
LABEL_43:
        sub_2779D9988(v10, a2, *v8, v8[16], v8 + 32, a4);
        v24 = (v10 + 8 * a2);
        v25 = v8[16];
        v26 = *v8;
        v27 = v8 + 32;
LABEL_47:

        return sub_2779D9988(v24, a2, v26, v25, v27, a4).u64[0];
      }

      sub_2779D92F8(2 * a1, a2, *v8, v8[16], v8 + 32, a4);
      sub_2779D92F8(&v10->i64[a2], a2, *v8, v8[16], v8 + 32, a4);
      v10 += a2;
    }

    sub_2779D92F8(v10, a2, *v8, v8[16], v8 + 32, a4);
    v35 = &v10->i64[a2];
    v36 = v8[16];
    v37 = *v8;
    v38 = v8 + 32;
LABEL_73:

    *&result = sub_2779D92F8(v35, a2, v37, v36, v38, a4);
    return result;
  }

  HIDWORD(v14) = *a3 - 4;
  LODWORD(v14) = HIDWORD(v14);
  v13 = v14 >> 1;
  if (a6 == 1)
  {
    if (v13 > 1)
    {
      if (v13 != 2)
      {
        if (v13 != 5)
        {
          return result;
        }

        sub_27798C02C(a1, a2, *v8, v8[16], v8[32]);
        a1 = v7 + 4 * a2;
        goto LABEL_56;
      }

      sub_27798C498(a1, a2, *v8, v8[16], v8[32]);
      a1 = v7 + 4 * a2;
      goto LABEL_82;
    }

    if (v13)
    {
      if (v13 != 1)
      {
        return result;
      }

      sub_27798C73C(a1, a2, *v8, v8[16], v8[32]);
      a1 = v7 + 4 * a2;
      v21 = v8[32];
      v22 = v8[16];
      v23 = *v8;
LABEL_35:

      return sub_27798C73C(a1, a2, v23, v22, v21);
    }

    sub_27798CA44(a1, a2, *v8, v8[16], v8[32]);
    a1 = v7 + 4 * a2;
    v40 = v8[32];
    v41 = v8[16];
    v42 = *v8;
  }

  else
  {
    if (a6 == 2)
    {
      if (v13 <= 1)
      {
        if (v13)
        {
          if (v13 == 1)
          {
            v15 = *(a3 + 1);

            return sub_27798C99C(a1, a2, v15, v8 + 16, v8 + 32);
          }
        }

        else
        {
          v39 = *(a3 + 1);

          return sub_27798CC04(a1, a2, v39, v8 + 16, v8 + 32);
        }

        return result;
      }

      if (v13 != 2)
      {
        if (v13 != 5)
        {
          return result;
        }

        sub_27798C02C(a1, a2, *v8, v8[16], v8[32]);
        sub_27798C02C(v7 + 4 * a2, a2, *v8, v8[16], v8[32]);
        sub_27798C02C(v7 + 8 * a2, a2, *v8, v8[16], v8[32]);
        a1 = v7 + 8 * a2 + 4 * a2;
LABEL_56:
        v28 = v8[32];
        v29 = v8[16];
        v30 = *v8;
LABEL_60:

        return sub_27798C02C(a1, a2, v30, v29, v28);
      }

      sub_27798C498(a1, a2, *v8, v8[16], v8[32]);
      sub_27798C498(v7 + 4 * a2, a2, *v8, v8[16], v8[32]);
      sub_27798C498(v7 + 8 * a2, a2, *v8, v8[16], v8[32]);
      a1 = v7 + 8 * a2 + 4 * a2;
LABEL_82:
      v43 = v8[32];
      v44 = v8[16];
      v45 = *v8;
LABEL_88:

      return sub_27798C498(a1, a2, v45, v44, v43);
    }

    if (v13 > 1)
    {
      if (v13 != 2)
      {
        if (v13 != 5)
        {
          return result;
        }

        v28 = v8[32];
        v29 = v8[16];
        v30 = *v8;
        goto LABEL_60;
      }

      v43 = v8[32];
      v44 = v8[16];
      v45 = *v8;
      goto LABEL_88;
    }

    if (v13)
    {
      if (v13 != 1)
      {
        return result;
      }

      v21 = v8[32];
      v22 = v8[16];
      v23 = *v8;
      goto LABEL_35;
    }

    v40 = v8[32];
    v41 = v8[16];
    v42 = *v8;
  }

  return sub_27798CA44(a1, a2, v42, v41, v40);
}

uint64_t sub_277A47B90(uint64_t a1, uint64_t a2, unsigned int a3, int a4, _BYTE *a5)
{
  v5 = a5[167] & 7;
  if (*(a1 + 24392))
  {
    if (*(a1 + 24400))
    {
      v6 = &a5[dword_277BF7E58[2 * a4 + a3] + 163];
    }

    else
    {
      v6 = a5 + 162;
    }

    v8 = *v6;
    v9 = (a1 + 23032);
    v10 = a1 + 23036;
    if (!a4)
    {
      v10 = a1 + 4 * a3 + 23024;
    }

    if (a4 != 1)
    {
      v9 = v10;
    }

    v11 = *v9 + v8;
    if (v11 >= 0x3F)
    {
      v12 = 63;
    }

    else
    {
      v12 = v11;
    }

    if (v11 >= 0)
    {
      v7 = v12;
    }

    else
    {
      v7 = 0;
    }

    if (*(a1 + 18992) && ((*(a1 + 4 * (a5[167] & 7) + 19124) >> byte_277BF7DA4[2 * a4 + a3]) & 1) != 0)
    {
      v13 = v7 + *(a1 + 16 * v5 + 2 * byte_277BF7DA4[2 * a4 + a3] + 18996);
      if (v13 >= 0x3F)
      {
        v14 = 63;
      }

      else
      {
        v14 = v13;
      }

      if (v13 >= 0)
      {
        v7 = v14;
      }

      else
      {
        v7 = 0;
      }
    }

    if (*(a1 + 23044))
    {
      v15 = a5[16];
      v16 = *(a1 + v15 + 23046);
      if (v15 >= 1)
      {
        v16 += *(a1 + dword_277BF7E70[a5[2]] + 23054);
      }

      v17 = (v16 << (v7 >> 5)) + v7;
      if (v17 >= 0x3F)
      {
        v18 = 63;
      }

      else
      {
        v18 = v17;
      }

      if (v17 >= 0)
      {
        LOBYTE(v7) = v18;
      }

      else
      {
        LOBYTE(v7) = 0;
      }
    }
  }

  else
  {
    LOBYTE(v7) = *(a2 + (a4 << 8) + 32 * v5 + 16 * a3 + 2 * a5[16] + dword_277BF7E70[a5[2]] + 3072);
  }

  return v7;
}

uint64_t sub_277A47D0C(int a1, int a2, int a3)
{
  result = byte_277C3BD80[byte_277C3BCDE[4 * a1 + 2 * a2 + a3]];
  if (result > 0x10)
  {
    if (result == 17)
    {
      return 9;
    }

    else if (result == 18)
    {
      return 10;
    }
  }

  else if ((result - 11) < 2 || result == 4)
  {
    return 3;
  }

  return result;
}

double sub_277A47D6C(__int32 *a1, int a2, unsigned __int8 *a3, char a4, char a5, int a6)
{
  v7 = a1;
  v8 = *(a3 + 1);
  if (a5)
  {
    v10 = (2 * a1);
    HIDWORD(v12) = *a3 - 4;
    LODWORD(v12) = HIDWORD(v12);
    v11 = v12 >> 1;
    if (a6 == 1)
    {
      if (v11 <= 1)
      {
        if (v11)
        {
          if (v11 != 1)
          {
            return result;
          }

          sub_2779D8C5C(v10, a2, *v8, v8[16], v8 + 32, a4);
          v13 = v8[16];
          v14 = *v8;
          v15 = v10 + 1;
          goto LABEL_20;
        }

        sub_2779D893C(v10, a2, *v8, v8[16], v8 + 32, a4);
        v31 = v8[16];
        v32 = *v8;
        v33 = v10 + 1;
        goto LABEL_68;
      }

      if (v11 != 2)
      {
        if (v11 != 5)
        {
          return result;
        }

        sub_2779D9580(v10, a2, *v8, v8[16], v8 + 32, a4);
        v24 = v8[16];
        v25 = *v8;
        v26 = v10 + 1;
        goto LABEL_45;
      }

      sub_2779D9090(v10, a2, *v8, v8[16], v8 + 32, a4);
      v34 = v8[16];
      v35 = *v8;
      v36 = v10 + 1;
    }

    else
    {
      if (a6 != 2)
      {
        if (v11 <= 1)
        {
          if (v11)
          {
            if (v11 != 1)
            {
              return result;
            }

            v13 = v8[16];
            v14 = *v8;
            v20 = v8 + 32;
            v15 = (2 * a1);
            goto LABEL_25;
          }

          v31 = v8[16];
          v32 = *v8;
          v37 = v8 + 32;
          v33 = (2 * a1);
          goto LABEL_72;
        }

        if (v11 != 2)
        {
          if (v11 != 5)
          {
            return result;
          }

          v24 = v8[16];
          v25 = *v8;
          v27 = v8 + 32;
          v26 = (2 * a1);
          goto LABEL_49;
        }

        v34 = v8[16];
        v35 = *v8;
        v38 = v8 + 32;
        v36 = (2 * a1);
        goto LABEL_76;
      }

      if (v11 <= 1)
      {
        if (v11)
        {
          if (v11 != 1)
          {
            return result;
          }

          sub_2779D8C5C(v10, a2, *v8, v8[16], v8 + 32, a4);
          sub_2779D8C5C(v10 + 1, a2, *v8, v8[16], v8 + 32, a4);
          sub_2779D8C5C(v10 + 2, a2, *v8, v8[16], v8 + 32, a4);
          v13 = v8[16];
          v14 = *v8;
          v15 = v10 + 3;
LABEL_20:
          v20 = v8 + 32;
LABEL_25:

          return sub_2779D8C5C(v15, a2, v14, v13, v20, a4);
        }

        sub_2779D893C(v10, a2, *v8, v8[16], v8 + 32, a4);
        sub_2779D893C(v10 + 1, a2, *v8, v8[16], v8 + 32, a4);
        sub_2779D893C(v10 + 2, a2, *v8, v8[16], v8 + 32, a4);
        v31 = v8[16];
        v32 = *v8;
        v33 = v10 + 3;
LABEL_68:
        v37 = v8 + 32;
LABEL_72:

        return sub_2779D893C(v33, a2, v32, v31, v37, a4);
      }

      if (v11 != 2)
      {
        if (v11 != 5)
        {
          return result;
        }

        sub_2779D9580(v10, a2, *v8, v8[16], v8 + 32, a4);
        sub_2779D9580(v10 + 1, a2, *v8, v8[16], v8 + 32, a4);
        sub_2779D9580(v10 + 2, a2, *v8, v8[16], v8 + 32, a4);
        v24 = v8[16];
        v25 = *v8;
        v26 = v10 + 3;
LABEL_45:
        v27 = v8 + 32;
LABEL_49:

        return sub_2779D9580(v26, a2, v25, v24, v27, a4);
      }

      sub_2779D9090(v10, a2, *v8, v8[16], v8 + 32, a4);
      sub_2779D9090(v10 + 1, a2, *v8, v8[16], v8 + 32, a4);
      sub_2779D9090(v10 + 2, a2, *v8, v8[16], v8 + 32, a4);
      v34 = v8[16];
      v35 = *v8;
      v36 = v10 + 3;
    }

    v38 = v8 + 32;
LABEL_76:

    return sub_2779D9090(v36, a2, v35, v34, v38, a4);
  }

  HIDWORD(v17) = *a3 - 4;
  LODWORD(v17) = HIDWORD(v17);
  v16 = v17 >> 1;
  if (a6 == 1)
  {
    if (v16 > 1)
    {
      if (v16 != 2)
      {
        if (v16 != 5)
        {
          return result;
        }

        sub_27798CCAC(a1, a2, *v8, v8[16], v8[32]);
        v28 = v8[32];
        v29 = v8[16];
        v30 = *v8;
        a1 = v7 + 1;
        goto LABEL_61;
      }

      sub_27798CE30(a1, a2, *v8, v8[16], v8[32]);
      v40 = v8[32];
      v41 = v8[16];
      v42 = *v8;
      a1 = v7 + 1;
      goto LABEL_90;
    }

    if (v16)
    {
      if (v16 != 1)
      {
        return result;
      }

      sub_27798CF14(a1, a2, *v8, v8[16], v8[32]);
      v21 = v8[32];
      v22 = v8[16];
      v23 = *v8;
      a1 = v7 + 1;
LABEL_36:

      return sub_27798CF14(a1, a2, v23, v22, v21);
    }

    sub_27798D060(a1, a2, *v8, v8[16], v8[32]);
    v43 = v8[32];
    v44 = v8[16];
    v45 = *v8;
    a1 = v7 + 1;
  }

  else
  {
    if (a6 == 2)
    {
      if (v16 <= 1)
      {
        if (v16)
        {
          if (v16 == 1)
          {
            v18 = *(a3 + 1);

            return sub_27798CFBC(a1, a2, v18, v8 + 16, v8 + 32);
          }
        }

        else
        {
          v39 = *(a3 + 1);

          return sub_27798D0F0(a1, a2, v39, v8 + 16, v8 + 32);
        }

        return result;
      }

      if (v16 != 2)
      {
        if (v16 != 5)
        {
          return result;
        }

        sub_27798CCAC(a1, a2, *v8, v8[16], v8[32]);
        sub_27798CCAC(v7 + 1, a2, *v8, v8[16], v8[32]);
        sub_27798CCAC(v7 + 2, a2, *v8, v8[16], v8[32]);
        v28 = v8[32];
        v29 = v8[16];
        v30 = *v8;
        a1 = v7 + 3;
LABEL_61:

        return sub_27798CCAC(a1, a2, v30, v29, v28);
      }

      sub_27798CE30(a1, a2, *v8, v8[16], v8[32]);
      sub_27798CE30(v7 + 1, a2, *v8, v8[16], v8[32]);
      sub_27798CE30(v7 + 2, a2, *v8, v8[16], v8[32]);
      v40 = v8[32];
      v41 = v8[16];
      v42 = *v8;
      a1 = v7 + 3;
      goto LABEL_90;
    }

    if (v16 > 1)
    {
      if (v16 != 2)
      {
        if (v16 != 5)
        {
          return result;
        }

        v28 = v8[32];
        v29 = v8[16];
        v30 = *v8;
        goto LABEL_61;
      }

      v40 = v8[32];
      v41 = v8[16];
      v42 = *v8;
LABEL_90:

      return sub_27798CE30(a1, a2, v42, v41, v40);
    }

    if (v16)
    {
      if (v16 != 1)
      {
        return result;
      }

      v21 = v8[32];
      v22 = v8[16];
      v23 = *v8;
      goto LABEL_36;
    }

    v43 = v8[32];
    v44 = v8[16];
    v45 = *v8;
  }

  return sub_27798D060(a1, a2, v45, v44, v43);
}

char *sub_277A4848C(uint64_t a1, int a2, int a3, int a4)
{
  v5 = *(a1 + 128);
  v6 = *(a1 + 144);
  v7 = *(a1 + 148);
  if (a2 <= 0)
  {
    LOBYTE(v7) = 0;
  }

  v8 = v5 >> v7;
  if (a2 <= 0)
  {
    LOBYTE(v6) = 0;
  }

  v9 = v5 >> v6;
  v10 = (a1 + 4 * (a2 > 0));
  v11 = v10[6];
  v12 = v10[4];
  v13 = *v10 + v9 - v12;
  v14 = *(a1 + 8 * a2 + 40);
  v15 = v10[8];
  if (a3)
  {
    v16 = 0;
  }

  else
  {
    v16 = v8;
  }

  if (v11 == a4)
  {
    v17 = v8 + v10[2] - v11;
  }

  else
  {
    v17 = 0;
  }

  if ((*(a1 + 192) & 8) != 0)
  {
    return sub_277A48538(v14, v15, v12, v11, v16, v9, v17, v13, a3, a4);
  }

  else
  {
    return sub_277A488C0(v14, v15, v12, v11, v16, v9, v17, v13, a3, a4);
  }
}

uint64_t sub_277A48538(uint64_t result, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10)
{
  v13 = a9;
  v14 = a6 + a3;
  v15 = 2 * result;
  v16 = a6;
  if (a9 < a10)
  {
    v17 = (v15 + 2 * a9 * a2);
    v18 = &v17[a3 - 1];
    v19 = vdupq_n_s64(a6 - 1);
    v20 = vdupq_n_s64(a8 - 1);
    v21 = 2 * a9 * a2 - 2 * a6 + v15 + 8;
    result = 2 * a2;
    v22 = 2 * a3 + 2 * a9 * a2 + v15 + 8;
    do
    {
      if (a6)
      {
        v23 = 0;
        v24 = *v17;
        v25 = v21;
        do
        {
          v26 = vdupq_n_s64(v23);
          v27 = vmovn_s64(vcgeq_u64(v19, vorrq_s8(v26, xmmword_277BB70A0)));
          if (vuzp1_s8(vuzp1_s16(v27, *v19.i8), *v19.i8).u8[0])
          {
            *(v25 - 4) = v24;
          }

          if (vuzp1_s8(vuzp1_s16(v27, *&v19), *&v19).i8[1])
          {
            *(v25 - 3) = v24;
          }

          if (vuzp1_s8(vuzp1_s16(*&v19, vmovn_s64(vcgeq_u64(v19, vorrq_s8(v26, xmmword_277BB7090)))), *&v19).i8[2])
          {
            *(v25 - 2) = v24;
            *(v25 - 1) = v24;
          }

          v28 = vmovn_s64(vcgeq_u64(v19, vorrq_s8(v26, xmmword_277BB7080)));
          if (vuzp1_s8(*&v19, vuzp1_s16(v28, *&v19)).i32[1])
          {
            *v25 = v24;
          }

          if (vuzp1_s8(*&v19, vuzp1_s16(v28, *&v19)).i8[5])
          {
            v25[1] = v24;
          }

          if (vuzp1_s8(*&v19, vuzp1_s16(*&v19, vmovn_s64(vcgeq_u64(v19, vorrq_s8(v26, xmmword_277BB7070))))).i8[6])
          {
            v25[2] = v24;
            v25[3] = v24;
          }

          v23 += 8;
          v25 += 8;
        }

        while (((a6 + 7) & 0xFFFFFFFFFFFFFFF8) != v23);
      }

      if (a8)
      {
        v29 = 0;
        v30 = *v18;
        v31 = v22;
        do
        {
          v32 = vdupq_n_s64(v29);
          v33 = vmovn_s64(vcgeq_u64(v20, vorrq_s8(v32, xmmword_277BB70A0)));
          if (vuzp1_s8(vuzp1_s16(v33, *v19.i8), *v19.i8).u8[0])
          {
            *(v31 - 4) = v30;
          }

          if (vuzp1_s8(vuzp1_s16(v33, *&v19), *&v19).i8[1])
          {
            *(v31 - 3) = v30;
          }

          if (vuzp1_s8(vuzp1_s16(*&v19, vmovn_s64(vcgeq_u64(v20, vorrq_s8(v32, xmmword_277BB7090)))), *&v19).i8[2])
          {
            *(v31 - 2) = v30;
            *(v31 - 1) = v30;
          }

          v34 = vmovn_s64(vcgeq_u64(v20, vorrq_s8(v32, xmmword_277BB7080)));
          if (vuzp1_s8(*&v19, vuzp1_s16(v34, *&v19)).i32[1])
          {
            *v31 = v30;
          }

          if (vuzp1_s8(*&v19, vuzp1_s16(v34, *&v19)).i8[5])
          {
            v31[1] = v30;
          }

          if (vuzp1_s8(*&v19, vuzp1_s16(*&v19, vmovn_s64(vcgeq_u64(v20, vorrq_s8(v32, xmmword_277BB7070))))).i8[6])
          {
            v31[2] = v30;
            v31[3] = v30;
          }

          v29 += 8;
          v31 += 8;
        }

        while (((a8 + 7) & 0xFFFFFFFFFFFFFFF8) != v29);
      }

      v17 += a2;
      v18 += a2;
      ++v13;
      v21 += result;
      v22 += result;
    }

    while (v13 != a10);
  }

  v35 = v14 + a8;
  v36 = (v15 - 2 * a6);
  if (a5 >= 1)
  {
    v37 = &v36[-2 * a2 * a5];
    do
    {
      result = memcpy(v37, v36, 2 * v35);
      v37 += 2 * a2;
      --a5;
    }

    while (a5);
  }

  if (a7 >= 1)
  {
    v38 = (a4 - 1) * a2;
    v39 = &v36[2 * v38];
    v40 = 2 * a2;
    v41 = (v15 + 2 * v38 + v40 - 2 * v16);
    do
    {
      result = memcpy(v41, v39, 2 * v35);
      v41 += v40;
      --a7;
    }

    while (a7);
  }

  return result;
}

char *sub_277A488C0(char *result, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10)
{
  v25 = result;
  v22 = a6 + a3;
  v12 = a6;
  v13 = -a6;
  v14 = a10 - a9;
  if (a10 > a9)
  {
    v15 = &result[a9 * a2];
    v16 = a3;
    do
    {
      memset(&v15[v13], *v15, v12);
      result = memset(&v15[v16], v15[v16 - 1], a8);
      v15 += a2;
      --v14;
    }

    while (v14);
  }

  v17 = v22 + a8;
  v18 = &v25[v13];
  if (a5 >= 1)
  {
    v19 = &v18[-(a2 * a5)];
    do
    {
      result = memcpy(v19, v18, v17);
      v19 += a2;
      --a5;
    }

    while (a5);
  }

  if (a7 >= 1)
  {
    v20 = &v25[(a4 - 1) * a2 + a2 - v12];
    do
    {
      result = memcpy(v20, &v18[(a4 - 1) * a2], v17);
      v20 += a2;
      --a7;
    }

    while (a7);
  }

  return result;
}

uint64_t sub_277A48A28(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 128);
  v4 = *(a1 + 144);
  v5 = *(a1 + 148);
  v6 = a1 + 8;
  v7 = a1 + 24;
  v8 = a1 + 16;
  v9 = a1 + 40;
  v10 = a1 + 32;
  v11 = a2;
  v29 = v4;
  v12 = a1 + 8;
  v13 = a1 + 24;
  v14 = a1 + 16;
  v15 = a1 + 40;
  v16 = a1 + 32;
  v17 = 0;
  if ((*(a1 + 192) & 8) != 0)
  {
    do
    {
      if (v17)
      {
        v24 = v5;
      }

      else
      {
        v24 = 0;
      }

      v25 = v3 >> v24;
      if (v17)
      {
        v26 = v4;
      }

      else
      {
        v26 = 0;
      }

      v27 = *(v7 + 4 * (v17 != 0));
      v28 = *(v8 + 4 * (v17 != 0));
      result = sub_277A48538(*(v9 + 8 * v17), *(v10 + 4 * (v17 != 0)), v28, v27, v25, v3 >> v26, *(v6 + 4 * (v17 != 0)) - v27 + v25, *(a1 + 4 * (v17 != 0)) + (v3 >> v26) - v28, 0, v27);
      v10 = v16;
      v9 = v15;
      v8 = v14;
      v7 = v13;
      v6 = v12;
      LOBYTE(v4) = v29;
      ++v17;
    }

    while (v11 != v17);
  }

  else
  {
    do
    {
      if (v17)
      {
        v18 = v5;
      }

      else
      {
        v18 = 0;
      }

      v19 = v3 >> v18;
      if (v17)
      {
        v20 = v4;
      }

      else
      {
        v20 = 0;
      }

      v21 = *(v7 + 4 * (v17 != 0));
      v22 = *(v8 + 4 * (v17 != 0));
      result = sub_277A488C0(*(v9 + 8 * v17), *(v10 + 4 * (v17 != 0)), v22, v21, v19, v3 >> v20, *(v6 + 4 * (v17 != 0)) - v21 + v19, *(a1 + 4 * (v17 != 0)) + (v3 >> v20) - v22, 0, v21);
      v10 = v16;
      v9 = v15;
      v8 = v14;
      v7 = v13;
      v6 = v12;
      LOBYTE(v4) = v29;
      ++v17;
    }

    while (v11 != v17);
  }

  return result;
}

uint64_t sub_277A48B90(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v26 = a1 + 40;
  v27 = a2 + 40;
  v5 = a1 + 8;
  v6 = a1 + 32;
  v7 = a2 + 32;
  v28 = a3;
  if ((*(a1 + 192) & 8) != 0)
  {
    v12 = 0;
    do
    {
      if (*(v5 + 4 * (v12 != 0)) >= 1)
      {
        v13 = 0;
        v14 = *(v27 + 8 * v12);
        v15 = *(v26 + 8 * v12);
        do
        {
          memcpy((2 * v14), (2 * v15), 2 * *(a1 + 4 * (v12 != 0)));
          v15 += *(v6 + 4 * (v12 != 0));
          v14 += *(v7 + 4 * (v12 != 0));
          ++v13;
        }

        while (v13 < *(v5 + 4 * (v12 != 0)));
      }

      ++v12;
    }

    while (v12 != v28);
  }

  else
  {
    v8 = 0;
    do
    {
      if (*(v5 + 4 * (v8 != 0)) >= 1)
      {
        v9 = 0;
        v10 = *(v27 + 8 * v8);
        v11 = *(v26 + 8 * v8);
        do
        {
          memcpy(v10, v11, *(a1 + 4 * (v8 != 0)));
          v11 += *(v6 + 4 * (v8 != 0));
          v10 += *(v7 + 4 * (v8 != 0));
          ++v9;
        }

        while (v9 < *(v5 + 4 * (v8 != 0)));
      }

      ++v8;
    }

    while (v8 != v28);
  }

  v16 = a2 + 16;
  v17 = a2 + 24;
  v18 = a2 + 8;
  if ((*(a2 + 192) & 8) != 0)
  {
    v23 = 0;
    do
    {
      v24 = v23 != 0;
      v25 = *(a2 + 128) >> v24;
      result = sub_277A48538(*(v27 + 8 * v23++), *(v7 + 4 * v24), *(v16 + 4 * v24), *(v17 + 4 * v24), v25, v25, v25 - *(v17 + 4 * v24) + *(v18 + 4 * v24), v25 - *(v16 + 4 * v24) + *(a2 + 4 * v24), 0, *(v17 + 4 * v24));
    }

    while (v28 != v23);
  }

  else
  {
    v19 = 0;
    do
    {
      v20 = v19 != 0;
      v21 = *(a2 + 128) >> v20;
      result = sub_277A488C0(*(v27 + 8 * v19++), *(v7 + 4 * v20), *(v16 + 4 * v20), *(v17 + 4 * v20), v21, v21, v21 - *(v17 + 4 * v20) + *(v18 + 4 * v20), v21 - *(v16 + 4 * v20) + *(a2 + 4 * v20), 0, *(v17 + 4 * v20));
    }

    while (v28 != v19);
  }

  return result;
}

int *sub_277A48DA4(int *result, uint64_t a2, int a3)
{
  v4 = result;
  v5 = result[4 * (a3 != 0)];
  v6 = 6;
  if (!a3)
  {
    v6 = 2;
  }

  v7 = result[v6];
  v8 = *(result + 5);
  v9 = *(a2 + 40);
  if ((result[48] & 8) != 0)
  {
    if (v7 >= 1)
    {
      v10 = (2 * v9);
      v11 = (2 * v8);
      v12 = 2 * v5;
      do
      {
        result = memcpy(v10, v11, v12);
        v11 += 2 * v4[8];
        v10 += 2 * *(a2 + 32);
        --v7;
      }

      while (v7);
    }
  }

  else if (v7 >= 1)
  {
    do
    {
      result = memcpy(v9, v8, v5);
      v8 = v8 + v4[8];
      v9 = v9 + *(a2 + 32);
      --v7;
    }

    while (v7);
  }

  return result;
}

void *sub_277A48E78(void *result, uint64_t a2, int a3)
{
  v4 = result;
  v5 = 20;
  if (!a3)
  {
    v5 = 4;
  }

  v6 = *(result + v5);
  v7 = 28;
  if (!a3)
  {
    v7 = 12;
  }

  v8 = *(result + v7);
  v9 = result[6];
  v10 = *(a2 + 48);
  if ((result[24] & 8) != 0)
  {
    if (v8 >= 1)
    {
      v11 = (2 * v10);
      v12 = (2 * v9);
      v13 = 2 * v6;
      do
      {
        result = memcpy(v11, v12, v13);
        v12 += 2 * *(v4 + 9);
        v11 += 2 * *(a2 + 36);
        --v8;
      }

      while (v8);
    }
  }

  else if (v8 >= 1)
  {
    do
    {
      result = memcpy(v10, v9, v6);
      v9 = v9 + *(v4 + 9);
      v10 = v10 + *(a2 + 36);
      --v8;
    }

    while (v8);
  }

  return result;
}

void *sub_277A48F50(void *result, uint64_t a2, int a3)
{
  v4 = result;
  v5 = 20;
  if (!a3)
  {
    v5 = 4;
  }

  v6 = *(result + v5);
  v7 = 28;
  if (!a3)
  {
    v7 = 12;
  }

  v8 = *(result + v7);
  v9 = result[7];
  v10 = *(a2 + 56);
  if ((result[24] & 8) != 0)
  {
    if (v8 >= 1)
    {
      v11 = (2 * v10);
      v12 = (2 * v9);
      v13 = 2 * v6;
      do
      {
        result = memcpy(v11, v12, v13);
        v12 += 2 * *(v4 + 9);
        v11 += 2 * *(a2 + 36);
        --v8;
      }

      while (v8);
    }
  }

  else if (v8 >= 1)
  {
    do
    {
      result = memcpy(v10, v9, v6);
      v9 = v9 + *(v4 + 9);
      v10 = v10 + *(a2 + 36);
      --v8;
    }

    while (v8);
  }

  return result;
}

int *sub_277A49028(int *result, uint64_t a2, int a3, int a4, int a5, int a6)
{
  v7 = result;
  v8 = *(result + 5);
  v9 = *(a2 + 40);
  if ((result[48] & 8) != 0)
  {
    v14 = a6 - a5;
    if (a6 > a5)
    {
      v15 = (2 * (v9 + *(a2 + 32) * a5 + a3));
      v16 = (2 * (v8 + result[8] * a5 + a3));
      v17 = 2 * (a4 - a3);
      do
      {
        result = memcpy(v15, v16, v17);
        v16 += 2 * v7[8];
        v15 += 2 * *(a2 + 32);
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    v10 = a6 - a5;
    if (a6 > a5)
    {
      v11 = (v9 + *(a2 + 32) * a5 + a3);
      v12 = (v8 + result[8] * a5 + a3);
      v13 = a4 - a3;
      do
      {
        result = memcpy(v11, v12, v13);
        v12 += v7[8];
        v11 += *(a2 + 32);
        --v10;
      }

      while (v10);
    }
  }

  return result;
}

int *sub_277A49118(int *result, uint64_t a2, int a3, int a4, int a5, int a6)
{
  v7 = result;
  v8 = *(result + 6);
  v9 = *(a2 + 48);
  if ((result[48] & 8) != 0)
  {
    v14 = a6 - a5;
    if (a6 > a5)
    {
      v15 = (2 * (v9 + *(a2 + 36) * a5 + a3));
      v16 = (2 * (v8 + result[9] * a5 + a3));
      v17 = 2 * (a4 - a3);
      do
      {
        result = memcpy(v15, v16, v17);
        v16 += 2 * v7[9];
        v15 += 2 * *(a2 + 36);
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    v10 = a6 - a5;
    if (a6 > a5)
    {
      v11 = (v9 + *(a2 + 36) * a5 + a3);
      v12 = (v8 + result[9] * a5 + a3);
      v13 = a4 - a3;
      do
      {
        result = memcpy(v11, v12, v13);
        v12 += v7[9];
        v11 += *(a2 + 36);
        --v10;
      }

      while (v10);
    }
  }

  return result;
}

int *sub_277A49208(int *result, uint64_t a2, int a3, int a4, int a5, int a6)
{
  v7 = result;
  v8 = *(result + 7);
  v9 = *(a2 + 56);
  if ((result[48] & 8) != 0)
  {
    v14 = a6 - a5;
    if (a6 > a5)
    {
      v15 = (2 * (v9 + *(a2 + 36) * a5 + a3));
      v16 = (2 * (v8 + result[9] * a5 + a3));
      v17 = 2 * (a4 - a3);
      do
      {
        result = memcpy(v15, v16, v17);
        v16 += 2 * v7[9];
        v15 += 2 * *(a2 + 36);
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    v10 = a6 - a5;
    if (a6 > a5)
    {
      v11 = (v9 + *(a2 + 36) * a5 + a3);
      v12 = (v8 + result[9] * a5 + a3);
      v13 = a4 - a3;
      do
      {
        result = memcpy(v11, v12, v13);
        v12 += v7[9];
        v11 += *(a2 + 36);
        --v10;
      }

      while (v10);
    }
  }

  return result;
}

uint64_t sub_277A492F8(unint64_t *a1, void *__src)
{
  v4 = *a1;
  if (*a1 != a1[1])
  {
    goto LABEL_10;
  }

  if (2 * v4 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2 * v4;
  }

  if (!(2 * v4))
  {
    if (v4 < 3)
    {
LABEL_10:
      memcpy((a1[3] + a1[2] * v4), __src, a1[2]);
      result = 0;
      ++*a1;
      return result;
    }

    v5 = 2;
  }

  v6 = a1[3];
  v7 = malloc_type_malloc(a1[2] * v5, 0x5AF82FD1uLL);
  a1[3] = v7;
  if (v7)
  {
    memcpy(v7, v6, a1[2] * *a1);
    a1[1] = v5;
    free(v6);
    v4 = *a1;
    goto LABEL_10;
  }

  return 0xFFFFFFFFLL;
}

float sub_277A493B4(__int32 *a1, int a2, __int32 **a3, int a4, uint64_t a5)
{
  v5.i32[0] = *a1;
  v5.i32[1] = *(a1 + a2);
  v6 = a3[1];
  v7.i32[0] = **a3;
  v7.i32[1] = *(*a3 + a4);
  v8.i32[0] = *v6;
  v8.i32[1] = *(v6 + a4);
  v9 = a3[2];
  v10.i32[0] = *v9;
  v10.i32[1] = *(v9 + a4);
  v11 = vabdl_u8(v5, v7);
  v12 = vabdl_u8(v5, v8);
  v13 = vabdl_u8(v5, v10);
  v14 = (a1 + 2 * a2);
  v10.i32[0] = *v14;
  v10.i32[1] = *(v14 + a2);
  v15 = (*a3 + 2 * a4);
  v16.i32[0] = *v15;
  v16.i32[1] = *(v15 + a4);
  v17 = (v6 + 2 * a4);
  v18.i32[0] = *v17;
  v18.i32[1] = *(v17 + a4);
  v19 = (v9 + 2 * a4);
  v20.i32[0] = *v19;
  v20.i32[1] = *(v19 + a4);
  *a5 = __PAIR64__(vaddlvq_u16(vabal_u8(v12, v10, v18)), vaddlvq_u16(vabal_u8(v11, v10, v16)));
  result = COERCE_FLOAT(vaddlvq_u16(vabal_u8(v13, v10, v20)));
  *(a5 + 8) = result;
  return result;
}

float sub_277A49464(__int32 *a1, int a2, __int32 **a3, int a4, uint64_t a5)
{
  v5.i32[0] = *a1;
  v5.i32[1] = *(a1 + a2);
  v6 = *a3;
  v7 = a3[1];
  v8 = (*a3 + a4);
  v9.i32[0] = **a3;
  v9.i32[1] = *v8;
  v10 = (v7 + a4);
  v11.i32[0] = *v7;
  v11.i32[1] = *v10;
  v12 = a3[2];
  v13 = (v12 + a4);
  v14.i32[0] = *v12;
  v14.i32[1] = *v13;
  v15 = vabdl_u8(v5, v9);
  v16 = vabdl_u8(v5, v11);
  v17 = vabdl_u8(v5, v14);
  v18 = 2 * a4;
  v19 = (a1 + 2 * a2);
  v20 = -3;
  do
  {
    v21.i32[0] = *v19;
    v21.i32[1] = *(v19 + a2);
    v6 = (v6 + v18);
    v8 = (v8 + v18);
    v22.i32[0] = *v6;
    v22.i32[1] = *v8;
    v7 = (v7 + v18);
    v10 = (v10 + v18);
    v23.i32[0] = *v7;
    v23.i32[1] = *v10;
    v12 = (v12 + v18);
    v13 = (v13 + v18);
    v24.i32[0] = *v12;
    v24.i32[1] = *v13;
    v15 = vabal_u8(v15, v21, v22);
    v16 = vabal_u8(v16, v21, v23);
    v17 = vabal_u8(v17, v21, v24);
    v19 = (v19 + 2 * a2);
  }

  while (!__CFADD__(v20++, 1));
  *a5 = __PAIR64__(vaddlvq_u16(v16), vaddlvq_u16(v15));
  result = COERCE_FLOAT(vaddlvq_u16(v17));
  *(a5 + 8) = result;
  return result;
}

float sub_277A49530(uint8x8_t *a1, int a2, uint8x8_t **a3, int a4, uint64_t a5)
{
  v5 = a3[1];
  v6 = vabdl_u8(*a1, **a3);
  v7 = vabdl_u8(*a1, *v5);
  v8 = a3[2];
  v9 = vabdl_u8(*a1, *v8);
  v10 = (a1 + a2);
  v11 = -3;
  v12 = a4;
  do
  {
    v6 = vabal_u8(v6, *v10, *(*a3 + v12));
    v7 = vabal_u8(v7, *v10, *(v5 + v12));
    v9 = vabal_u8(v9, *v10, *(v8 + v12));
    v12 += a4;
    v10 = (v10 + a2);
  }

  while (!__CFADD__(v11++, 1));
  *a5 = __PAIR64__(vaddlvq_u16(v7), vaddlvq_u16(v6));
  result = COERCE_FLOAT(vaddlvq_u16(v9));
  *(a5 + 8) = result;
  return result;
}

float sub_277A495B0(uint8x8_t *a1, int a2, uint8x8_t **a3, int a4, uint64_t a5)
{
  v5 = a3[1];
  v6 = vabdl_u8(*a1, **a3);
  v7 = vabdl_u8(*a1, *v5);
  v8 = a3[2];
  v9 = vabdl_u8(*a1, *v8);
  v10 = (a1 + a2);
  v11 = -7;
  v12 = a4;
  do
  {
    v6 = vabal_u8(v6, *v10, *(*a3 + v12));
    v7 = vabal_u8(v7, *v10, *(v5 + v12));
    v9 = vabal_u8(v9, *v10, *(v8 + v12));
    v12 += a4;
    v10 = (v10 + a2);
  }

  while (!__CFADD__(v11++, 1));
  *a5 = __PAIR64__(vaddlvq_u16(v7), vaddlvq_u16(v6));
  result = COERCE_FLOAT(vaddlvq_u16(v9));
  *(a5 + 8) = result;
  return result;
}

float sub_277A49630(uint8x8_t *a1, int a2, uint8x8_t **a3, int a4, uint64_t a5)
{
  v5 = a3[1];
  v6 = vabdl_u8(*a1, **a3);
  v7 = vabdl_u8(*a1, *v5);
  v8 = a3[2];
  v9 = vabdl_u8(*a1, *v8);
  v10 = (a1 + a2);
  v11 = -15;
  v12 = a4;
  do
  {
    v6 = vabal_u8(v6, *v10, *(*a3 + v12));
    v7 = vabal_u8(v7, *v10, *(v5 + v12));
    v9 = vabal_u8(v9, *v10, *(v8 + v12));
    v12 += a4;
    v10 = (v10 + a2);
  }

  while (!__CFADD__(v11++, 1));
  *a5 = __PAIR64__(vaddlvq_u16(v7), vaddlvq_u16(v6));
  result = COERCE_FLOAT(vaddlvq_u16(v9));
  *(a5 + 8) = result;
  return result;
}

float sub_277A496B0(uint8x16_t *a1, int a2, void *a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 0uLL;
  v7 = -8;
  v8 = 0uLL;
  v9 = 0uLL;
  do
  {
    v9 = vpadalq_u8(v9, vabdq_u8(*a1, *(*a3 + v5)));
    v8 = vpadalq_u8(v8, vabdq_u8(*a1, *(a3[1] + v5)));
    v6 = vpadalq_u8(v6, vabdq_u8(*a1, *(a3[2] + v5)));
    a1 = (a1 + a2);
    v5 += a4;
  }

  while (!__CFADD__(v7++, 1));
  *a5 = __PAIR64__(vaddlvq_u16(v8), vaddlvq_u16(v9));
  result = COERCE_FLOAT(vaddlvq_u16(v6));
  *(a5 + 8) = result;
  return result;
}

float sub_277A49728(uint8x16_t *a1, int a2, void *a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 0uLL;
  v7 = -16;
  v8 = 0uLL;
  v9 = 0uLL;
  do
  {
    v9 = vpadalq_u8(v9, vabdq_u8(*a1, *(*a3 + v5)));
    v8 = vpadalq_u8(v8, vabdq_u8(*a1, *(a3[1] + v5)));
    v6 = vpadalq_u8(v6, vabdq_u8(*a1, *(a3[2] + v5)));
    a1 = (a1 + a2);
    v5 += a4;
  }

  while (!__CFADD__(v7++, 1));
  *a5 = __PAIR64__(vaddlvq_u16(v8), vaddlvq_u16(v9));
  result = COERCE_FLOAT(vaddlvq_u16(v6));
  *(a5 + 8) = result;
  return result;
}

float sub_277A497A0(uint8x16_t *a1, int a2, void *a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 0uLL;
  v7 = -32;
  v8 = 0uLL;
  v9 = 0uLL;
  do
  {
    v9 = vpadalq_u8(v9, vabdq_u8(*a1, *(*a3 + v5)));
    v8 = vpadalq_u8(v8, vabdq_u8(*a1, *(a3[1] + v5)));
    v6 = vpadalq_u8(v6, vabdq_u8(*a1, *(a3[2] + v5)));
    a1 = (a1 + a2);
    v5 += a4;
  }

  while (!__CFADD__(v7++, 1));
  *a5 = __PAIR64__(vaddlvq_u16(v8), vaddlvq_u16(v9));
  result = COERCE_FLOAT(vaddlvq_u16(v6));
  *(a5 + 8) = result;
  return result;
}

float sub_277A49818(uint8x16_t *a1, int a2, uint64_t *a3, int a4, _DWORD *a5)
{
  v5 = 0;
  v6 = *a3;
  v7 = a3[1];
  v8 = a3[2];
  v9 = 0uLL;
  v10 = a1 + 1;
  v11 = -16;
  v12 = 0uLL;
  v13 = 0uLL;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  do
  {
    v17 = v10[-1];
    v13 = vpadalq_u8(v13, vabdq_u8(v17, *(v6 + v5)));
    v12 = vpadalq_u8(v12, vabdq_u8(v17, *(v7 + v5)));
    v9 = vpadalq_u8(v9, vabdq_u8(v17, *(v8 + v5)));
    v16 = vpadalq_u8(v16, vabdq_u8(*v10, *(v6 + v5 + 16)));
    v15 = vpadalq_u8(v15, vabdq_u8(*v10, *(v7 + v5 + 16)));
    v14 = vpadalq_u8(v14, vabdq_u8(*v10, *(v8 + v5 + 16)));
    v5 += a4;
    v10 = (v10 + a2);
  }

  while (!__CFADD__(v11++, 1));
  *a5 = vaddlvq_u16(v16) + vaddlvq_u16(v13);
  a5[1] = vaddlvq_u16(v15) + vaddlvq_u16(v12);
  v19 = vaddlvq_u16(v9);
  result = COERCE_FLOAT(vaddlvq_u16(v14));
  a5[2] = LODWORD(result) + v19;
  return result;
}

float sub_277A498F0(uint8x16_t *a1, int a2, uint64_t *a3, int a4, _DWORD *a5)
{
  v5 = 0;
  v6 = *a3;
  v7 = a3[1];
  v8 = a3[2];
  v9 = 0uLL;
  v10 = a1 + 1;
  v11 = -32;
  v12 = 0uLL;
  v13 = 0uLL;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  do
  {
    v17 = v10[-1];
    v13 = vpadalq_u8(v13, vabdq_u8(v17, *(v6 + v5)));
    v12 = vpadalq_u8(v12, vabdq_u8(v17, *(v7 + v5)));
    v9 = vpadalq_u8(v9, vabdq_u8(v17, *(v8 + v5)));
    v16 = vpadalq_u8(v16, vabdq_u8(*v10, *(v6 + v5 + 16)));
    v15 = vpadalq_u8(v15, vabdq_u8(*v10, *(v7 + v5 + 16)));
    v14 = vpadalq_u8(v14, vabdq_u8(*v10, *(v8 + v5 + 16)));
    v5 += a4;
    v10 = (v10 + a2);
  }

  while (!__CFADD__(v11++, 1));
  *a5 = vaddlvq_u16(v16) + vaddlvq_u16(v13);
  a5[1] = vaddlvq_u16(v15) + vaddlvq_u16(v12);
  v19 = vaddlvq_u16(v9);
  result = COERCE_FLOAT(vaddlvq_u16(v14));
  a5[2] = LODWORD(result) + v19;
  return result;
}

float sub_277A499C8(uint8x16_t *a1, int a2, uint64_t *a3, int a4, _DWORD *a5)
{
  v5 = 0;
  v6 = *a3;
  v7 = a3[1];
  v8 = a3[2];
  v9 = 0uLL;
  v10 = a1 + 1;
  v11 = -64;
  v12 = 0uLL;
  v13 = 0uLL;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  do
  {
    v17 = v10[-1];
    v13 = vpadalq_u8(v13, vabdq_u8(v17, *(v6 + v5)));
    v12 = vpadalq_u8(v12, vabdq_u8(v17, *(v7 + v5)));
    v9 = vpadalq_u8(v9, vabdq_u8(v17, *(v8 + v5)));
    v16 = vpadalq_u8(v16, vabdq_u8(*v10, *(v6 + v5 + 16)));
    v15 = vpadalq_u8(v15, vabdq_u8(*v10, *(v7 + v5 + 16)));
    v14 = vpadalq_u8(v14, vabdq_u8(*v10, *(v8 + v5 + 16)));
    v5 += a4;
    v10 = (v10 + a2);
  }

  while (!__CFADD__(v11++, 1));
  *a5 = vaddlvq_u16(v16) + vaddlvq_u16(v13);
  a5[1] = vaddlvq_u16(v15) + vaddlvq_u16(v12);
  v19 = vaddlvq_u16(v9);
  result = COERCE_FLOAT(vaddlvq_u16(v14));
  a5[2] = LODWORD(result) + v19;
  return result;
}

int32x2_t sub_277A49AA0(uint64_t a1, int a2, uint64_t *a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 0;
  v7 = a2;
  v8 = *a3;
  v9 = a3[1];
  v10 = a3[2];
  v11 = 0uLL;
  v12 = a4;
  v13 = 0uLL;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  v17 = 0uLL;
  do
  {
    v18 = 0;
    v19 = v8 + v5;
    v20 = v9 + v5;
    v21 = 1;
    do
    {
      v22 = *(a1 + v18);
      v23 = *(a1 + v18 + 16);
      v24 = *(v19 + v18 + 16);
      v14 = vpadalq_u8(v14, vabdq_u8(v22, *(v19 + v18)));
      v25 = *(v20 + v18 + 16);
      v13 = vpadalq_u8(v13, vabdq_u8(v22, *(v20 + v18)));
      v26 = (v10 + v5 + v18);
      v11 = vpadalq_u8(v11, vabdq_u8(v22, *v26));
      v17 = vpadalq_u8(v17, vabdq_u8(v23, v24));
      v16 = vpadalq_u8(v16, vabdq_u8(v23, v25));
      v27 = v21;
      v15 = vpadalq_u8(v15, vabdq_u8(v23, v26[1]));
      v18 = 32;
      v21 = 0;
    }

    while ((v27 & 1) != 0);
    a1 += v7;
    v5 += v12;
    ++v6;
  }

  while (v6 != 32);
  v28 = vpadalq_u16(vpaddlq_u16(v11), v15);
  *a5 = vaddvq_s32(vpadalq_u16(vpaddlq_u16(v14), v17));
  v15.i32[0] = vaddvq_s32(vpadalq_u16(vpaddlq_u16(v13), v16));
  v28.i32[0] = vaddvq_s32(v28);
  result = vzip1_s32(*v15.i8, *v28.i8);
  *(a5 + 4) = result;
  return result;
}

int32x2_t sub_277A49B8C(uint64_t a1, int a2, uint64_t *a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 0;
  v7 = a2;
  v8 = *a3;
  v9 = a3[1];
  v10 = a3[2];
  v11 = 0uLL;
  v12 = a4;
  v13 = 0uLL;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  v17 = 0uLL;
  do
  {
    v18 = 0;
    v19 = v8 + v5;
    v20 = v9 + v5;
    v21 = 1;
    do
    {
      v22 = *(a1 + v18);
      v23 = *(a1 + v18 + 16);
      v24 = *(v19 + v18 + 16);
      v14 = vpadalq_u8(v14, vabdq_u8(v22, *(v19 + v18)));
      v25 = *(v20 + v18 + 16);
      v13 = vpadalq_u8(v13, vabdq_u8(v22, *(v20 + v18)));
      v26 = (v10 + v5 + v18);
      v11 = vpadalq_u8(v11, vabdq_u8(v22, *v26));
      v17 = vpadalq_u8(v17, vabdq_u8(v23, v24));
      v16 = vpadalq_u8(v16, vabdq_u8(v23, v25));
      v27 = v21;
      v15 = vpadalq_u8(v15, vabdq_u8(v23, v26[1]));
      v18 = 32;
      v21 = 0;
    }

    while ((v27 & 1) != 0);
    a1 += v7;
    v5 += v12;
    ++v6;
  }

  while (v6 != 64);
  v28 = vpadalq_u16(vpaddlq_u16(v15), v11);
  v29 = vpadalq_u16(vpaddlq_u16(v16), v13);
  *a5 = vaddvq_s32(vpadalq_u16(vpaddlq_u16(v17), v14));
  v29.i32[0] = vaddvq_s32(v29);
  v14.i32[0] = vaddvq_s32(v28);
  result = vzip1_s32(*v29.i8, *v14.i8);
  *(a5 + 4) = result;
  return result;
}

double sub_277A49C78(uint64_t a1, int a2, void *a3, int a4, uint64_t a5)
{
  v5 = 0;
  LODWORD(v6) = 0;
  v7 = a2;
  v8 = 0uLL;
  v9 = a4;
  v10 = 64;
  v11 = 0uLL;
  v12 = 0uLL;
  do
  {
    v6 = v6;
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = v5;
    v19 = 0uLL;
    do
    {
      v20 = 0;
      v21 = *a3 + v6;
      v22 = a3[1] + v6;
      v23 = 1;
      do
      {
        v24 = *(a1 + v20);
        v25 = *(a1 + v20 + 16);
        v26 = *(v21 + v20 + 16);
        v15 = vpadalq_u8(v15, vabdq_u8(v24, *(v21 + v20)));
        v27 = *(v22 + v20 + 16);
        v14 = vpadalq_u8(v14, vabdq_u8(v24, *(v22 + v20)));
        v28 = (a3[2] + v6 + v20);
        v13 = vpadalq_u8(v13, vabdq_u8(v24, *v28));
        v19 = vpadalq_u8(v19, vabdq_u8(v25, v26));
        v17 = vpadalq_u8(v17, vabdq_u8(v25, v27));
        v29 = v23;
        v16 = vpadalq_u8(v16, vabdq_u8(v25, v28[1]));
        v20 = 32;
        v23 = 0;
      }

      while ((v29 & 1) != 0);
      a1 += v7;
      v6 += v9;
      ++v18;
    }

    while (v18 < v10);
    if (v10 <= (v5 + 1))
    {
      ++v5;
    }

    else
    {
      v5 = v10;
    }

    v8 = vpadalq_u16(vpadalq_u16(v8, v15), v19);
    v11 = vpadalq_u16(vpadalq_u16(v11, v14), v17);
    v12 = vpadalq_u16(vpadalq_u16(v12, v13), v16);
    v10 += 64;
  }

  while (v5 < 0x80);
  *a5 = vaddvq_s32(v8);
  v8.i32[0] = vaddvq_s32(v11);
  v12.i32[0] = vaddvq_s32(v12);
  *v8.i8 = vzip1_s32(*v8.i8, *v12.i8);
  *(a5 + 4) = v8.i64[0];
  return *v8.i64;
}

double sub_277A49D94(uint64_t a1, int a2, uint64_t *a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 0;
  v7 = a2;
  v8 = *a3;
  v9 = a3[1];
  v10 = a3[2];
  v11 = 0uLL;
  v12 = a4;
  v13 = 32;
  v14 = 0uLL;
  v15 = 0uLL;
  do
  {
    v16 = v10 + v6;
    v17 = v8 + v6;
    v18 = v9 + v6;
    v19 = 0uLL;
    v20 = 0uLL;
    v21 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
    v24 = 0uLL;
    v25 = v5;
    do
    {
      v26 = 16;
      do
      {
        v27 = *(a1 + v26 - 16);
        v28 = *(a1 + v26);
        v21 = vpadalq_u8(v21, vabdq_u8(v27, *(v17 + v26 - 16)));
        v20 = vpadalq_u8(v20, vabdq_u8(v27, *(v18 + v26 - 16)));
        v19 = vpadalq_u8(v19, vabdq_u8(v27, *(v16 + v26 - 16)));
        v24 = vpadalq_u8(v24, vabdq_u8(v28, *(v17 + v26)));
        v23 = vpadalq_u8(v23, vabdq_u8(v28, *(v18 + v26)));
        v22 = vpadalq_u8(v22, vabdq_u8(v28, *(v16 + v26)));
        v29 = v26 - 16;
        v26 += 32;
      }

      while (v29 < 0x60);
      a1 += v7;
      v6 += v12;
      ++v25;
      v16 += v12;
      v17 += v12;
      v18 += v12;
    }

    while (v25 < v13);
    if (v13 <= (v5 + 1))
    {
      ++v5;
    }

    else
    {
      v5 = v13;
    }

    v11 = vpadalq_u16(vpadalq_u16(v11, v21), v24);
    v14 = vpadalq_u16(vpadalq_u16(v14, v20), v23);
    v15 = vpadalq_u16(vpadalq_u16(v15, v19), v22);
    v13 += 32;
  }

  while (v5 < 0x40);
  *a5 = vaddvq_s32(v11);
  v11.i32[0] = vaddvq_s32(v14);
  v15.i32[0] = vaddvq_s32(v15);
  *v11.i8 = vzip1_s32(*v11.i8, *v15.i8);
  *(a5 + 4) = v11.i64[0];
  return *v11.i64;
}

double sub_277A49EB8(uint64_t a1, int a2, uint64_t *a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 0;
  v7 = a2;
  v8 = *a3;
  v9 = a3[1];
  v10 = a3[2];
  v11 = 0uLL;
  v12 = a4;
  v13 = 32;
  v14 = 0uLL;
  v15 = 0uLL;
  do
  {
    v16 = v10 + v6;
    v17 = v8 + v6;
    v18 = v9 + v6;
    v19 = 0uLL;
    v20 = 0uLL;
    v21 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
    v24 = 0uLL;
    v25 = v5;
    do
    {
      v26 = 16;
      do
      {
        v27 = *(a1 + v26 - 16);
        v28 = *(a1 + v26);
        v21 = vpadalq_u8(v21, vabdq_u8(v27, *(v17 + v26 - 16)));
        v20 = vpadalq_u8(v20, vabdq_u8(v27, *(v18 + v26 - 16)));
        v19 = vpadalq_u8(v19, vabdq_u8(v27, *(v16 + v26 - 16)));
        v24 = vpadalq_u8(v24, vabdq_u8(v28, *(v17 + v26)));
        v23 = vpadalq_u8(v23, vabdq_u8(v28, *(v18 + v26)));
        v22 = vpadalq_u8(v22, vabdq_u8(v28, *(v16 + v26)));
        v29 = v26 - 16;
        v26 += 32;
      }

      while (v29 < 0x60);
      a1 += v7;
      v6 += v12;
      ++v25;
      v16 += v12;
      v17 += v12;
      v18 += v12;
    }

    while (v25 < v13);
    if (v13 <= (v5 + 1))
    {
      ++v5;
    }

    else
    {
      v5 = v13;
    }

    v11 = vpadalq_u16(vpadalq_u16(v11, v21), v24);
    v14 = vpadalq_u16(vpadalq_u16(v14, v20), v23);
    v15 = vpadalq_u16(vpadalq_u16(v15, v19), v22);
    v13 += 32;
  }

  while (v5 < 0x80);
  *a5 = vaddvq_s32(v11);
  v11.i32[0] = vaddvq_s32(v14);
  v15.i32[0] = vaddvq_s32(v15);
  *v11.i8 = vzip1_s32(*v11.i8, *v15.i8);
  *(a5 + 4) = v11.i64[0];
  return *v11.i64;
}

float sub_277A49FDC(__int32 *a1, int a2, __int32 **a3, int a4, uint64_t a5)
{
  v5.i32[0] = *a1;
  v5.i32[1] = *(a1 + a2);
  v6 = *a3;
  v7 = a3[1];
  v8 = (*a3 + a4);
  v9.i32[0] = **a3;
  v9.i32[1] = *v8;
  v10 = (v7 + a4);
  v11.i32[0] = *v7;
  v11.i32[1] = *v10;
  v12 = a3[2];
  v13 = (v12 + a4);
  v14.i32[0] = *v12;
  v14.i32[1] = *v13;
  v15 = vabdl_u8(v5, v9);
  v16 = vabdl_u8(v5, v11);
  v17 = vabdl_u8(v5, v14);
  v18 = 2 * a4;
  v19 = (a1 + 2 * a2);
  v20 = -7;
  do
  {
    v21.i32[0] = *v19;
    v21.i32[1] = *(v19 + a2);
    v6 = (v6 + v18);
    v8 = (v8 + v18);
    v22.i32[0] = *v6;
    v22.i32[1] = *v8;
    v7 = (v7 + v18);
    v10 = (v10 + v18);
    v23.i32[0] = *v7;
    v23.i32[1] = *v10;
    v12 = (v12 + v18);
    v13 = (v13 + v18);
    v24.i32[0] = *v12;
    v24.i32[1] = *v13;
    v15 = vabal_u8(v15, v21, v22);
    v16 = vabal_u8(v16, v21, v23);
    v17 = vabal_u8(v17, v21, v24);
    v19 = (v19 + 2 * a2);
  }

  while (!__CFADD__(v20++, 1));
  *a5 = __PAIR64__(vaddlvq_u16(v16), vaddlvq_u16(v15));
  result = COERCE_FLOAT(vaddlvq_u16(v17));
  *(a5 + 8) = result;
  return result;
}

float sub_277A4A0A8(uint8x8_t *a1, int a2, uint8x8_t **a3, int a4, uint64_t a5)
{
  v5 = a3[1];
  v6 = vabdl_u8(*a1, **a3);
  v7 = vabdl_u8(*a1, *v5);
  v8 = a3[2];
  v9 = vabdl_u8(*a1, *v8);
  v10 = (a1 + a2);
  v11 = -31;
  v12 = a4;
  do
  {
    v6 = vabal_u8(v6, *v10, *(*a3 + v12));
    v7 = vabal_u8(v7, *v10, *(v5 + v12));
    v9 = vabal_u8(v9, *v10, *(v8 + v12));
    v12 += a4;
    v10 = (v10 + a2);
  }

  while (!__CFADD__(v11++, 1));
  *a5 = __PAIR64__(vaddlvq_u16(v7), vaddlvq_u16(v6));
  result = COERCE_FLOAT(vaddlvq_u16(v9));
  *(a5 + 8) = result;
  return result;
}

float sub_277A4A128(uint8x16_t *a1, int a2, void *a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 0uLL;
  v7 = -4;
  v8 = 0uLL;
  v9 = 0uLL;
  do
  {
    v9 = vpadalq_u8(v9, vabdq_u8(*a1, *(*a3 + v5)));
    v8 = vpadalq_u8(v8, vabdq_u8(*a1, *(a3[1] + v5)));
    v6 = vpadalq_u8(v6, vabdq_u8(*a1, *(a3[2] + v5)));
    a1 = (a1 + a2);
    v5 += a4;
  }

  while (!__CFADD__(v7++, 1));
  *a5 = __PAIR64__(vaddlvq_u16(v8), vaddlvq_u16(v9));
  result = COERCE_FLOAT(vaddlvq_u16(v6));
  *(a5 + 8) = result;
  return result;
}

float sub_277A4A1A0(uint8x16_t *a1, int a2, void *a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 0uLL;
  v7 = -64;
  v8 = 0uLL;
  v9 = 0uLL;
  do
  {
    v9 = vpadalq_u8(v9, vabdq_u8(*a1, *(*a3 + v5)));
    v8 = vpadalq_u8(v8, vabdq_u8(*a1, *(a3[1] + v5)));
    v6 = vpadalq_u8(v6, vabdq_u8(*a1, *(a3[2] + v5)));
    a1 = (a1 + a2);
    v5 += a4;
  }

  while (!__CFADD__(v7++, 1));
  *a5 = __PAIR64__(vaddlvq_u16(v8), vaddlvq_u16(v9));
  result = COERCE_FLOAT(vaddlvq_u16(v6));
  *(a5 + 8) = result;
  return result;
}

float sub_277A4A218(uint8x16_t *a1, int a2, uint64_t *a3, int a4, _DWORD *a5)
{
  v5 = 0;
  v6 = *a3;
  v7 = a3[1];
  v8 = a3[2];
  v9 = 0uLL;
  v10 = a1 + 1;
  v11 = -8;
  v12 = 0uLL;
  v13 = 0uLL;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  do
  {
    v17 = v10[-1];
    v13 = vpadalq_u8(v13, vabdq_u8(v17, *(v6 + v5)));
    v12 = vpadalq_u8(v12, vabdq_u8(v17, *(v7 + v5)));
    v9 = vpadalq_u8(v9, vabdq_u8(v17, *(v8 + v5)));
    v16 = vpadalq_u8(v16, vabdq_u8(*v10, *(v6 + v5 + 16)));
    v15 = vpadalq_u8(v15, vabdq_u8(*v10, *(v7 + v5 + 16)));
    v14 = vpadalq_u8(v14, vabdq_u8(*v10, *(v8 + v5 + 16)));
    v5 += a4;
    v10 = (v10 + a2);
  }

  while (!__CFADD__(v11++, 1));
  *a5 = vaddlvq_u16(v16) + vaddlvq_u16(v13);
  a5[1] = vaddlvq_u16(v15) + vaddlvq_u16(v12);
  v19 = vaddlvq_u16(v9);
  result = COERCE_FLOAT(vaddlvq_u16(v14));
  a5[2] = LODWORD(result) + v19;
  return result;
}

int32x2_t sub_277A4A2F0(uint64_t a1, int a2, uint64_t *a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 0;
  v7 = a2;
  v8 = *a3;
  v9 = a3[1];
  v10 = a3[2];
  v11 = 0uLL;
  v12 = a4;
  v13 = 0uLL;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  v17 = 0uLL;
  do
  {
    v18 = 0;
    v19 = v8 + v5;
    v20 = v9 + v5;
    v21 = 1;
    do
    {
      v22 = *(a1 + v18);
      v23 = *(a1 + v18 + 16);
      v24 = *(v19 + v18 + 16);
      v14 = vpadalq_u8(v14, vabdq_u8(v22, *(v19 + v18)));
      v25 = *(v20 + v18 + 16);
      v13 = vpadalq_u8(v13, vabdq_u8(v22, *(v20 + v18)));
      v26 = (v10 + v5 + v18);
      v11 = vpadalq_u8(v11, vabdq_u8(v22, *v26));
      v17 = vpadalq_u8(v17, vabdq_u8(v23, v24));
      v16 = vpadalq_u8(v16, vabdq_u8(v23, v25));
      v27 = v21;
      v15 = vpadalq_u8(v15, vabdq_u8(v23, v26[1]));
      v18 = 32;
      v21 = 0;
    }

    while ((v27 & 1) != 0);
    a1 += v7;
    v5 += v12;
    ++v6;
  }

  while (v6 != 16);
  v28 = vpadalq_u16(vpaddlq_u16(v11), v15);
  *a5 = vaddvq_s32(vpadalq_u16(vpaddlq_u16(v14), v17));
  v15.i32[0] = vaddvq_s32(vpadalq_u16(vpaddlq_u16(v13), v16));
  v28.i32[0] = vaddvq_s32(v28);
  result = vzip1_s32(*v15.i8, *v28.i8);
  *(a5 + 4) = result;
  return result;
}

uint32x4_t sub_277A4A3DC(__int32 *a1, int a2, __int32 **a3, int a4, uint32x4_t *a5)
{
  v5.i32[0] = *a1;
  v5.i32[1] = *(a1 + a2);
  v6 = a3[1];
  v7.i32[0] = **a3;
  v7.i32[1] = *(*a3 + a4);
  v8.i32[0] = *v6;
  v8.i32[1] = *(v6 + a4);
  v9 = a3[2];
  v10 = a3[3];
  v11.i32[0] = *v9;
  v11.i32[1] = *(v9 + a4);
  v12.i32[0] = *v10;
  v12.i32[1] = *(v10 + a4);
  v13 = vabdl_u8(v5, v7);
  v14 = vabdl_u8(v5, v8);
  v15 = vabdl_u8(v5, v11);
  v16 = vabdl_u8(v5, v12);
  v17 = (a1 + 2 * a2);
  v12.i32[0] = *v17;
  v12.i32[1] = *(v17 + a2);
  v18 = (*a3 + 2 * a4);
  v19.i32[0] = *v18;
  v19.i32[1] = *(v18 + a4);
  v20 = (v6 + 2 * a4);
  v21.i32[0] = *v20;
  v21.i32[1] = *(v20 + a4);
  v22 = (v9 + 2 * a4);
  v23.i32[0] = *v22;
  v23.i32[1] = *(v22 + a4);
  v24 = (v10 + 2 * a4);
  v25.i32[0] = *v24;
  v25.i32[1] = *(v24 + a4);
  result = vpaddlq_u16(vpaddq_s16(vpaddq_s16(vabal_u8(v13, v12, v19), vabal_u8(v14, v12, v21)), vpaddq_s16(vabal_u8(v15, v12, v23), vabal_u8(v16, v12, v25))));
  *a5 = result;
  return result;
}

uint32x4_t sub_277A4A4AC(__int32 *a1, int a2, __int32 **a3, int a4, uint32x4_t *a5)
{
  v5.i32[0] = *a1;
  v5.i32[1] = *(a1 + a2);
  v6 = *a3;
  v7 = a3[1];
  v8 = (*a3 + a4);
  v9.i32[0] = **a3;
  v9.i32[1] = *v8;
  v10 = a2;
  v11 = (v7 + a4);
  v12.i32[0] = *v7;
  v12.i32[1] = *v11;
  v13 = a3[2];
  v14 = a3[3];
  v15 = (v13 + a4);
  v16.i32[0] = *v13;
  v16.i32[1] = *v15;
  v17 = (v14 + a4);
  v18.i32[0] = *v14;
  v18.i32[1] = *v17;
  v19 = vabdl_u8(v5, v9);
  v20 = vabdl_u8(v5, v12);
  v21 = vabdl_u8(v5, v16);
  v22 = 2 * a2;
  v23 = vabdl_u8(v5, v18);
  v24 = 2 * a4;
  v25 = (a1 + v22);
  v26 = -3;
  do
  {
    v27.i32[0] = *v25;
    v27.i32[1] = *(v25 + v10);
    v6 = (v6 + v24);
    v8 = (v8 + v24);
    v28.i32[0] = *v6;
    v28.i32[1] = *v8;
    v7 = (v7 + v24);
    v11 = (v11 + v24);
    v29.i32[0] = *v7;
    v29.i32[1] = *v11;
    v13 = (v13 + v24);
    v15 = (v15 + v24);
    v30.i32[0] = *v13;
    v30.i32[1] = *v15;
    v14 = (v14 + v24);
    v17 = (v17 + v24);
    v31.i32[0] = *v14;
    v31.i32[1] = *v17;
    v19 = vabal_u8(v19, v27, v28);
    v20 = vabal_u8(v20, v27, v29);
    v21 = vabal_u8(v21, v27, v30);
    v23 = vabal_u8(v23, v27, v31);
    v25 = (v25 + v22);
  }

  while (!__CFADD__(v26++, 1));
  result = vpaddlq_u16(vpaddq_s16(vpaddq_s16(v19, v20), vpaddq_s16(v21, v23)));
  *a5 = result;
  return result;
}

uint32x4_t sub_277A4A598(uint8x8_t *a1, int a2, uint8x8_t **a3, int a4, uint32x4_t *a5)
{
  v5 = a3[1];
  v6 = vabdl_u8(*a1, **a3);
  v7 = vabdl_u8(*a1, *v5);
  v8 = a3[2];
  v9 = a3[3];
  v10 = vabdl_u8(*a1, *v8);
  v11 = vabdl_u8(*a1, *v9);
  v12 = (a1 + a2);
  v13 = -3;
  v14 = a4;
  do
  {
    v6 = vabal_u8(v6, *v12, *(*a3 + v14));
    v7 = vabal_u8(v7, *v12, *(v5 + v14));
    v10 = vabal_u8(v10, *v12, *(v8 + v14));
    v11 = vabal_u8(v11, *v12, *(v9 + v14));
    v14 += a4;
    v12 = (v12 + a2);
  }

  while (!__CFADD__(v13++, 1));
  result = vpaddlq_u16(vpaddq_s16(vpaddq_s16(v6, v7), vpaddq_s16(v10, v11)));
  *a5 = result;
  return result;
}

uint32x4_t sub_277A4A624(uint8x8_t *a1, int a2, uint8x8_t **a3, int a4, uint32x4_t *a5)
{
  v5 = a3[1];
  v6 = vabdl_u8(*a1, **a3);
  v7 = vabdl_u8(*a1, *v5);
  v8 = a3[2];
  v9 = a3[3];
  v10 = vabdl_u8(*a1, *v8);
  v11 = vabdl_u8(*a1, *v9);
  v12 = (a1 + a2);
  v13 = -7;
  v14 = a4;
  do
  {
    v6 = vabal_u8(v6, *v12, *(*a3 + v14));
    v7 = vabal_u8(v7, *v12, *(v5 + v14));
    v10 = vabal_u8(v10, *v12, *(v8 + v14));
    v11 = vabal_u8(v11, *v12, *(v9 + v14));
    v14 += a4;
    v12 = (v12 + a2);
  }

  while (!__CFADD__(v13++, 1));
  result = vpaddlq_u16(vpaddq_s16(vpaddq_s16(v6, v7), vpaddq_s16(v10, v11)));
  *a5 = result;
  return result;
}

uint32x4_t sub_277A4A6B0(uint8x8_t *a1, int a2, uint8x8_t **a3, int a4, uint32x4_t *a5)
{
  v5 = a3[1];
  v6 = vabdl_u8(*a1, **a3);
  v7 = vabdl_u8(*a1, *v5);
  v8 = a3[2];
  v9 = a3[3];
  v10 = vabdl_u8(*a1, *v8);
  v11 = vabdl_u8(*a1, *v9);
  v12 = (a1 + a2);
  v13 = -15;
  v14 = a4;
  do
  {
    v6 = vabal_u8(v6, *v12, *(*a3 + v14));
    v7 = vabal_u8(v7, *v12, *(v5 + v14));
    v10 = vabal_u8(v10, *v12, *(v8 + v14));
    v11 = vabal_u8(v11, *v12, *(v9 + v14));
    v14 += a4;
    v12 = (v12 + a2);
  }

  while (!__CFADD__(v13++, 1));
  result = vpaddlq_u16(vpaddq_s16(vpaddq_s16(v6, v7), vpaddq_s16(v10, v11)));
  *a5 = result;
  return result;
}

int32x4_t sub_277A4A73C(uint8x16_t *a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = 0uLL;
  v7 = -8;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v6 = vpadalq_u8(v6, vabdq_u8(*a1, *(*a3 + v5)));
    v8 = vpadalq_u8(v8, vabdq_u8(*a1, *(a3[1] + v5)));
    v9 = vpadalq_u8(v9, vabdq_u8(*a1, *(a3[2] + v5)));
    v10 = vpadalq_u8(v10, vabdq_u8(*a1, *(a3[3] + v5)));
    a1 = (a1 + a2);
    v5 += a4;
  }

  while (!__CFADD__(v7++, 1));
  result = vpaddq_s32(vpaddq_s32(vpaddlq_u16(v6), vpaddlq_u16(v8)), vpaddq_s32(vpaddlq_u16(v9), vpaddlq_u16(v10)));
  *a5 = result;
  return result;
}

int32x4_t sub_277A4A7CC(uint8x16_t *a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = 0uLL;
  v7 = -16;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v6 = vpadalq_u8(v6, vabdq_u8(*a1, *(*a3 + v5)));
    v8 = vpadalq_u8(v8, vabdq_u8(*a1, *(a3[1] + v5)));
    v9 = vpadalq_u8(v9, vabdq_u8(*a1, *(a3[2] + v5)));
    v10 = vpadalq_u8(v10, vabdq_u8(*a1, *(a3[3] + v5)));
    a1 = (a1 + a2);
    v5 += a4;
  }

  while (!__CFADD__(v7++, 1));
  result = vpaddq_s32(vpaddq_s32(vpaddlq_u16(v6), vpaddlq_u16(v8)), vpaddq_s32(vpaddlq_u16(v9), vpaddlq_u16(v10)));
  *a5 = result;
  return result;
}

int32x4_t sub_277A4A85C(uint8x16_t *a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = 0uLL;
  v7 = -32;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v6 = vpadalq_u8(v6, vabdq_u8(*a1, *(*a3 + v5)));
    v8 = vpadalq_u8(v8, vabdq_u8(*a1, *(a3[1] + v5)));
    v9 = vpadalq_u8(v9, vabdq_u8(*a1, *(a3[2] + v5)));
    v10 = vpadalq_u8(v10, vabdq_u8(*a1, *(a3[3] + v5)));
    a1 = (a1 + a2);
    v5 += a4;
  }

  while (!__CFADD__(v7++, 1));
  result = vpaddq_s32(vpaddq_s32(vpaddlq_u16(v6), vpaddlq_u16(v8)), vpaddq_s32(vpaddlq_u16(v9), vpaddlq_u16(v10)));
  *a5 = result;
  return result;
}

int32x4_t sub_277A4A8EC(uint8x16_t *a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = a3[1];
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = a3[2];
  v10 = a3[3];
  v11 = a1 + 1;
  v12 = -16;
  v13 = 0uLL;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  v17 = 0uLL;
  v18 = 0uLL;
  do
  {
    v19 = v11[-1];
    v14 = vpadalq_u8(v14, vabdq_u8(v19, *(*a3 + v5)));
    v13 = vpadalq_u8(v13, vabdq_u8(v19, *(v6 + v5)));
    v8 = vpadalq_u8(v8, vabdq_u8(v19, *(v9 + v5)));
    v7 = vpadalq_u8(v7, vabdq_u8(v19, *(v10 + v5)));
    v18 = vpadalq_u8(v18, vabdq_u8(*v11, *(*a3 + 16 + v5)));
    v17 = vpadalq_u8(v17, vabdq_u8(*v11, *(v6 + v5 + 16)));
    v16 = vpadalq_u8(v16, vabdq_u8(*v11, *(v9 + v5 + 16)));
    v15 = vpadalq_u8(v15, vabdq_u8(*v11, *(v10 + v5 + 16)));
    v5 += a4;
    v11 = (v11 + a2);
  }

  while (!__CFADD__(v12++, 1));
  result = vpaddq_s32(vpaddq_s32(vpadalq_u16(vpaddlq_u16(v18), v14), vpadalq_u16(vpaddlq_u16(v17), v13)), vpaddq_s32(vpadalq_u16(vpaddlq_u16(v16), v8), vpadalq_u16(vpaddlq_u16(v15), v7)));
  *a5 = result;
  return result;
}

int32x4_t sub_277A4A9D4(uint8x16_t *a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = a3[1];
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = a3[2];
  v10 = a3[3];
  v11 = a1 + 1;
  v12 = -32;
  v13 = 0uLL;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  v17 = 0uLL;
  v18 = 0uLL;
  do
  {
    v19 = v11[-1];
    v14 = vpadalq_u8(v14, vabdq_u8(v19, *(*a3 + v5)));
    v13 = vpadalq_u8(v13, vabdq_u8(v19, *(v6 + v5)));
    v8 = vpadalq_u8(v8, vabdq_u8(v19, *(v9 + v5)));
    v7 = vpadalq_u8(v7, vabdq_u8(v19, *(v10 + v5)));
    v18 = vpadalq_u8(v18, vabdq_u8(*v11, *(*a3 + 16 + v5)));
    v17 = vpadalq_u8(v17, vabdq_u8(*v11, *(v6 + v5 + 16)));
    v16 = vpadalq_u8(v16, vabdq_u8(*v11, *(v9 + v5 + 16)));
    v15 = vpadalq_u8(v15, vabdq_u8(*v11, *(v10 + v5 + 16)));
    v5 += a4;
    v11 = (v11 + a2);
  }

  while (!__CFADD__(v12++, 1));
  result = vpaddq_s32(vpaddq_s32(vpadalq_u16(vpaddlq_u16(v18), v14), vpadalq_u16(vpaddlq_u16(v17), v13)), vpaddq_s32(vpadalq_u16(vpaddlq_u16(v16), v8), vpadalq_u16(vpaddlq_u16(v15), v7)));
  *a5 = result;
  return result;
}

int32x4_t sub_277A4AABC(uint8x16_t *a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = a3[1];
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = a3[2];
  v10 = a3[3];
  v11 = a1 + 1;
  v12 = -64;
  v13 = 0uLL;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  v17 = 0uLL;
  v18 = 0uLL;
  do
  {
    v19 = v11[-1];
    v14 = vpadalq_u8(v14, vabdq_u8(v19, *(*a3 + v5)));
    v13 = vpadalq_u8(v13, vabdq_u8(v19, *(v6 + v5)));
    v8 = vpadalq_u8(v8, vabdq_u8(v19, *(v9 + v5)));
    v7 = vpadalq_u8(v7, vabdq_u8(v19, *(v10 + v5)));
    v18 = vpadalq_u8(v18, vabdq_u8(*v11, *(*a3 + 16 + v5)));
    v17 = vpadalq_u8(v17, vabdq_u8(*v11, *(v6 + v5 + 16)));
    v16 = vpadalq_u8(v16, vabdq_u8(*v11, *(v9 + v5 + 16)));
    v15 = vpadalq_u8(v15, vabdq_u8(*v11, *(v10 + v5 + 16)));
    v5 += a4;
    v11 = (v11 + a2);
  }

  while (!__CFADD__(v12++, 1));
  result = vpaddq_s32(vpaddq_s32(vpadalq_u16(vpaddlq_u16(v18), v14), vpadalq_u16(vpaddlq_u16(v17), v13)), vpaddq_s32(vpadalq_u16(vpaddlq_u16(v16), v8), vpadalq_u16(vpaddlq_u16(v15), v7)));
  *a5 = result;
  return result;
}

int32x4_t sub_277A4ABA4(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = 0;
  v7 = a2;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = a4;
  v11 = 0uLL;
  v12 = 0uLL;
  v13 = 0uLL;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  do
  {
    v17 = 0;
    v18 = *a3 + v5;
    v19 = a3[1] + v5;
    v20 = a3[2] + v5;
    v21 = 1;
    do
    {
      v22 = *(a1 + v17);
      v23 = *(a1 + v17 + 16);
      v24 = *(v18 + v17 + 16);
      v12 = vpadalq_u8(v12, vabdq_u8(v22, *(v18 + v17)));
      v25 = *(v19 + v17 + 16);
      v11 = vpadalq_u8(v11, vabdq_u8(v22, *(v19 + v17)));
      v26 = *(v20 + v17 + 16);
      v9 = vpadalq_u8(v9, vabdq_u8(v22, *(v20 + v17)));
      v27 = (a3[3] + v5 + v17);
      v8 = vpadalq_u8(v8, vabdq_u8(v22, *v27));
      v16 = vpadalq_u8(v16, vabdq_u8(v23, v24));
      v15 = vpadalq_u8(v15, vabdq_u8(v23, v25));
      v14 = vpadalq_u8(v14, vabdq_u8(v23, v26));
      v28 = v21;
      v13 = vpadalq_u8(v13, vabdq_u8(v23, v27[1]));
      v17 = 32;
      v21 = 0;
    }

    while ((v28 & 1) != 0);
    a1 += v7;
    v5 += v10;
    ++v6;
  }

  while (v6 != 32);
  result = vpaddq_s32(vpaddq_s32(vpadalq_u16(vpaddlq_u16(v12), v16), vpadalq_u16(vpaddlq_u16(v11), v15)), vpaddq_s32(vpadalq_u16(vpaddlq_u16(v9), v14), vpadalq_u16(vpaddlq_u16(v8), v13)));
  *a5 = result;
  return result;
}

int32x4_t sub_277A4ACB4(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = 0;
  v7 = a2;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = a4;
  v11 = 0uLL;
  v12 = 0uLL;
  v13 = 0uLL;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  do
  {
    v17 = 0;
    v18 = *a3 + v5;
    v19 = a3[1] + v5;
    v20 = a3[2] + v5;
    v21 = 1;
    do
    {
      v22 = *(a1 + v17);
      v23 = *(a1 + v17 + 16);
      v24 = *(v18 + v17 + 16);
      v12 = vpadalq_u8(v12, vabdq_u8(v22, *(v18 + v17)));
      v25 = *(v19 + v17 + 16);
      v11 = vpadalq_u8(v11, vabdq_u8(v22, *(v19 + v17)));
      v26 = *(v20 + v17 + 16);
      v9 = vpadalq_u8(v9, vabdq_u8(v22, *(v20 + v17)));
      v27 = (a3[3] + v5 + v17);
      v8 = vpadalq_u8(v8, vabdq_u8(v22, *v27));
      v16 = vpadalq_u8(v16, vabdq_u8(v23, v24));
      v15 = vpadalq_u8(v15, vabdq_u8(v23, v25));
      v14 = vpadalq_u8(v14, vabdq_u8(v23, v26));
      v28 = v21;
      v13 = vpadalq_u8(v13, vabdq_u8(v23, v27[1]));
      v17 = 32;
      v21 = 0;
    }

    while ((v28 & 1) != 0);
    a1 += v7;
    v5 += v10;
    ++v6;
  }

  while (v6 != 64);
  result = vpaddq_s32(vpaddq_s32(vpadalq_u16(vpaddlq_u16(v16), v12), vpadalq_u16(vpaddlq_u16(v15), v11)), vpaddq_s32(vpadalq_u16(vpaddlq_u16(v14), v9), vpadalq_u16(vpaddlq_u16(v13), v8)));
  *a5 = result;
  return result;
}

int32x4_t sub_277A4ADC4(uint64_t a1, int a2, uint64_t *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  LODWORD(v6) = 0;
  v7 = a2;
  v8 = *a3;
  v9 = a3[1];
  v10 = a3[2];
  v11 = a3[3];
  v12 = a4;
  v13 = 64;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  v17 = 0uLL;
  do
  {
    v18 = 0uLL;
    v6 = v6;
    v19 = 0uLL;
    v20 = 0uLL;
    v21 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
    v24 = 0uLL;
    v25 = v5;
    v26 = 0uLL;
    do
    {
      v27 = 0;
      v28 = v8 + v6;
      v29 = v9 + v6;
      v30 = v10 + v6;
      v31 = 1;
      do
      {
        v32 = *(a1 + v27);
        v33 = *(a1 + v27 + 16);
        v34 = *(v28 + v27 + 16);
        v21 = vpadalq_u8(v21, vabdq_u8(v32, *(v28 + v27)));
        v35 = *(v29 + v27 + 16);
        v20 = vpadalq_u8(v20, vabdq_u8(v32, *(v29 + v27)));
        v36 = *(v30 + v27 + 16);
        v19 = vpadalq_u8(v19, vabdq_u8(v32, *(v30 + v27)));
        v37 = (v11 + v6 + v27);
        v18 = vpadalq_u8(v18, vabdq_u8(v32, *v37));
        v26 = vpadalq_u8(v26, vabdq_u8(v33, v34));
        v24 = vpadalq_u8(v24, vabdq_u8(v33, v35));
        v23 = vpadalq_u8(v23, vabdq_u8(v33, v36));
        v38 = v31;
        v22 = vpadalq_u8(v22, vabdq_u8(v33, v37[1]));
        v27 = 32;
        v31 = 0;
      }

      while ((v38 & 1) != 0);
      a1 += v7;
      v6 += v12;
      ++v25;
    }

    while (v25 < v13);
    if (v13 <= (v5 + 1))
    {
      ++v5;
    }

    else
    {
      v5 = v13;
    }

    v17 = vpadalq_u16(vpadalq_u16(v17, v21), v26);
    v16 = vpadalq_u16(vpadalq_u16(v16, v20), v24);
    v15 = vpadalq_u16(vpadalq_u16(v15, v19), v23);
    v14 = vpadalq_u16(vpadalq_u16(v14, v18), v22);
    v13 += 64;
  }

  while (v5 < 0x80);
  result = vpaddq_s32(vpaddq_s32(v17, v16), vpaddq_s32(v15, v14));
  *a5 = result;
  return result;
}

int32x4_t sub_277A4AF10(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = 0;
  v7 = a2;
  v8 = a3[1];
  v9 = a3[2];
  v10 = a3[3];
  v11 = a4;
  v12 = *a3 + 16;
  v13 = 32;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  v17 = 0uLL;
  do
  {
    v18 = v10 + v6;
    v19 = v12 + v6;
    v20 = 0uLL;
    v21 = 0uLL;
    v22 = v9 + v6;
    v23 = v8 + v6;
    v24 = 0uLL;
    v25 = 0uLL;
    v26 = 0uLL;
    v27 = 0uLL;
    v28 = 0uLL;
    v29 = 0uLL;
    v30 = v5;
    do
    {
      v31 = -32;
      do
      {
        v32 = *(a1 + v31 + 32);
        v33 = *(a1 + v31 + 48);
        v25 = vpadalq_u8(v25, vabdq_u8(v32, *(v19 + v31 + 16)));
        v24 = vpadalq_u8(v24, vabdq_u8(v32, *(v23 + v31 + 32)));
        v21 = vpadalq_u8(v21, vabdq_u8(v32, *(v22 + v31 + 32)));
        v20 = vpadalq_u8(v20, vabdq_u8(v32, *(v18 + v31 + 32)));
        v29 = vpadalq_u8(v29, vabdq_u8(v33, *(v19 + v31 + 32)));
        v28 = vpadalq_u8(v28, vabdq_u8(v33, *(v23 + v31 + 48)));
        v27 = vpadalq_u8(v27, vabdq_u8(v33, *(v22 + v31 + 48)));
        v26 = vpadalq_u8(v26, vabdq_u8(v33, *(v18 + v31 + 48)));
        v31 += 32;
      }

      while (v31 < 0x60);
      a1 += v7;
      v6 += v11;
      ++v30;
      v18 += v11;
      v19 += v11;
      v22 += v11;
      v23 += v11;
    }

    while (v30 < v13);
    if (v13 <= (v5 + 1))
    {
      ++v5;
    }

    else
    {
      v5 = v13;
    }

    v17 = vpadalq_u16(vpadalq_u16(v17, v25), v29);
    v16 = vpadalq_u16(vpadalq_u16(v16, v24), v28);
    v15 = vpadalq_u16(vpadalq_u16(v15, v21), v27);
    v14 = vpadalq_u16(vpadalq_u16(v14, v20), v26);
    v13 += 32;
  }

  while (v5 < 0x40);
  result = vpaddq_s32(vpaddq_s32(v17, v16), vpaddq_s32(v15, v14));
  *a5 = result;
  return result;
}

int32x4_t sub_277A4B068(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = 0;
  v7 = a2;
  v8 = a3[1];
  v9 = a3[2];
  v10 = a3[3];
  v11 = a4;
  v12 = *a3 + 16;
  v13 = 32;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  v17 = 0uLL;
  do
  {
    v18 = v10 + v6;
    v19 = v12 + v6;
    v20 = 0uLL;
    v21 = 0uLL;
    v22 = v9 + v6;
    v23 = v8 + v6;
    v24 = 0uLL;
    v25 = 0uLL;
    v26 = 0uLL;
    v27 = 0uLL;
    v28 = 0uLL;
    v29 = 0uLL;
    v30 = v5;
    do
    {
      v31 = -32;
      do
      {
        v32 = *(a1 + v31 + 32);
        v33 = *(a1 + v31 + 48);
        v25 = vpadalq_u8(v25, vabdq_u8(v32, *(v19 + v31 + 16)));
        v24 = vpadalq_u8(v24, vabdq_u8(v32, *(v23 + v31 + 32)));
        v21 = vpadalq_u8(v21, vabdq_u8(v32, *(v22 + v31 + 32)));
        v20 = vpadalq_u8(v20, vabdq_u8(v32, *(v18 + v31 + 32)));
        v29 = vpadalq_u8(v29, vabdq_u8(v33, *(v19 + v31 + 32)));
        v28 = vpadalq_u8(v28, vabdq_u8(v33, *(v23 + v31 + 48)));
        v27 = vpadalq_u8(v27, vabdq_u8(v33, *(v22 + v31 + 48)));
        v26 = vpadalq_u8(v26, vabdq_u8(v33, *(v18 + v31 + 48)));
        v31 += 32;
      }

      while (v31 < 0x60);
      a1 += v7;
      v6 += v11;
      ++v30;
      v18 += v11;
      v19 += v11;
      v22 += v11;
      v23 += v11;
    }

    while (v30 < v13);
    if (v13 <= (v5 + 1))
    {
      ++v5;
    }

    else
    {
      v5 = v13;
    }

    v17 = vpadalq_u16(vpadalq_u16(v17, v25), v29);
    v16 = vpadalq_u16(vpadalq_u16(v16, v24), v28);
    v15 = vpadalq_u16(vpadalq_u16(v15, v21), v27);
    v14 = vpadalq_u16(vpadalq_u16(v14, v20), v26);
    v13 += 32;
  }

  while (v5 < 0x80);
  result = vpaddq_s32(vpaddq_s32(v17, v16), vpaddq_s32(v15, v14));
  *a5 = result;
  return result;
}

uint32x4_t sub_277A4B1C0(__int32 *a1, int a2, __int32 **a3, int a4, uint32x4_t *a5)
{
  v5.i32[0] = *a1;
  v5.i32[1] = *(a1 + a2);
  v6 = *a3;
  v7 = a3[1];
  v8 = (*a3 + a4);
  v9.i32[0] = **a3;
  v9.i32[1] = *v8;
  v10 = a2;
  v11 = (v7 + a4);
  v12.i32[0] = *v7;
  v12.i32[1] = *v11;
  v13 = a3[2];
  v14 = a3[3];
  v15 = (v13 + a4);
  v16.i32[0] = *v13;
  v16.i32[1] = *v15;
  v17 = (v14 + a4);
  v18.i32[0] = *v14;
  v18.i32[1] = *v17;
  v19 = vabdl_u8(v5, v9);
  v20 = vabdl_u8(v5, v12);
  v21 = vabdl_u8(v5, v16);
  v22 = 2 * a2;
  v23 = vabdl_u8(v5, v18);
  v24 = 2 * a4;
  v25 = (a1 + v22);
  v26 = -7;
  do
  {
    v27.i32[0] = *v25;
    v27.i32[1] = *(v25 + v10);
    v6 = (v6 + v24);
    v8 = (v8 + v24);
    v28.i32[0] = *v6;
    v28.i32[1] = *v8;
    v7 = (v7 + v24);
    v11 = (v11 + v24);
    v29.i32[0] = *v7;
    v29.i32[1] = *v11;
    v13 = (v13 + v24);
    v15 = (v15 + v24);
    v30.i32[0] = *v13;
    v30.i32[1] = *v15;
    v14 = (v14 + v24);
    v17 = (v17 + v24);
    v31.i32[0] = *v14;
    v31.i32[1] = *v17;
    v19 = vabal_u8(v19, v27, v28);
    v20 = vabal_u8(v20, v27, v29);
    v21 = vabal_u8(v21, v27, v30);
    v23 = vabal_u8(v23, v27, v31);
    v25 = (v25 + v22);
  }

  while (!__CFADD__(v26++, 1));
  result = vpaddlq_u16(vpaddq_s16(vpaddq_s16(v19, v20), vpaddq_s16(v21, v23)));
  *a5 = result;
  return result;
}

uint32x4_t sub_277A4B2AC(uint8x8_t *a1, int a2, uint8x8_t **a3, int a4, uint32x4_t *a5)
{
  v5 = a3[1];
  v6 = vabdl_u8(*a1, **a3);
  v7 = vabdl_u8(*a1, *v5);
  v8 = a3[2];
  v9 = a3[3];
  v10 = vabdl_u8(*a1, *v8);
  v11 = vabdl_u8(*a1, *v9);
  v12 = (a1 + a2);
  v13 = -31;
  v14 = a4;
  do
  {
    v6 = vabal_u8(v6, *v12, *(*a3 + v14));
    v7 = vabal_u8(v7, *v12, *(v5 + v14));
    v10 = vabal_u8(v10, *v12, *(v8 + v14));
    v11 = vabal_u8(v11, *v12, *(v9 + v14));
    v14 += a4;
    v12 = (v12 + a2);
  }

  while (!__CFADD__(v13++, 1));
  result = vpaddlq_u16(vpaddq_s16(vpaddq_s16(v6, v7), vpaddq_s16(v10, v11)));
  *a5 = result;
  return result;
}

int32x4_t sub_277A4B338(uint8x16_t *a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = 0uLL;
  v7 = -4;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v6 = vpadalq_u8(v6, vabdq_u8(*a1, *(*a3 + v5)));
    v8 = vpadalq_u8(v8, vabdq_u8(*a1, *(a3[1] + v5)));
    v9 = vpadalq_u8(v9, vabdq_u8(*a1, *(a3[2] + v5)));
    v10 = vpadalq_u8(v10, vabdq_u8(*a1, *(a3[3] + v5)));
    a1 = (a1 + a2);
    v5 += a4;
  }

  while (!__CFADD__(v7++, 1));
  result = vpaddq_s32(vpaddq_s32(vpaddlq_u16(v6), vpaddlq_u16(v8)), vpaddq_s32(vpaddlq_u16(v9), vpaddlq_u16(v10)));
  *a5 = result;
  return result;
}

int32x4_t sub_277A4B3C8(uint8x16_t *a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = 0uLL;
  v7 = -64;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v6 = vpadalq_u8(v6, vabdq_u8(*a1, *(*a3 + v5)));
    v8 = vpadalq_u8(v8, vabdq_u8(*a1, *(a3[1] + v5)));
    v9 = vpadalq_u8(v9, vabdq_u8(*a1, *(a3[2] + v5)));
    v10 = vpadalq_u8(v10, vabdq_u8(*a1, *(a3[3] + v5)));
    a1 = (a1 + a2);
    v5 += a4;
  }

  while (!__CFADD__(v7++, 1));
  result = vpaddq_s32(vpaddq_s32(vpaddlq_u16(v6), vpaddlq_u16(v8)), vpaddq_s32(vpaddlq_u16(v9), vpaddlq_u16(v10)));
  *a5 = result;
  return result;
}

int32x4_t sub_277A4B458(uint8x16_t *a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = a3[1];
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = a3[2];
  v10 = a3[3];
  v11 = a1 + 1;
  v12 = -8;
  v13 = 0uLL;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  v17 = 0uLL;
  v18 = 0uLL;
  do
  {
    v19 = v11[-1];
    v14 = vpadalq_u8(v14, vabdq_u8(v19, *(*a3 + v5)));
    v13 = vpadalq_u8(v13, vabdq_u8(v19, *(v6 + v5)));
    v8 = vpadalq_u8(v8, vabdq_u8(v19, *(v9 + v5)));
    v7 = vpadalq_u8(v7, vabdq_u8(v19, *(v10 + v5)));
    v18 = vpadalq_u8(v18, vabdq_u8(*v11, *(*a3 + 16 + v5)));
    v17 = vpadalq_u8(v17, vabdq_u8(*v11, *(v6 + v5 + 16)));
    v16 = vpadalq_u8(v16, vabdq_u8(*v11, *(v9 + v5 + 16)));
    v15 = vpadalq_u8(v15, vabdq_u8(*v11, *(v10 + v5 + 16)));
    v5 += a4;
    v11 = (v11 + a2);
  }

  while (!__CFADD__(v12++, 1));
  result = vpaddq_s32(vpaddq_s32(vpadalq_u16(vpaddlq_u16(v18), v14), vpadalq_u16(vpaddlq_u16(v17), v13)), vpaddq_s32(vpadalq_u16(vpaddlq_u16(v16), v8), vpadalq_u16(vpaddlq_u16(v15), v7)));
  *a5 = result;
  return result;
}

int32x4_t sub_277A4B540(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = 0;
  v7 = a2;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = a4;
  v11 = 0uLL;
  v12 = 0uLL;
  v13 = 0uLL;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  do
  {
    v17 = 0;
    v18 = *a3 + v5;
    v19 = a3[1] + v5;
    v20 = a3[2] + v5;
    v21 = 1;
    do
    {
      v22 = *(a1 + v17);
      v23 = *(a1 + v17 + 16);
      v24 = *(v18 + v17 + 16);
      v12 = vpadalq_u8(v12, vabdq_u8(v22, *(v18 + v17)));
      v25 = *(v19 + v17 + 16);
      v11 = vpadalq_u8(v11, vabdq_u8(v22, *(v19 + v17)));
      v26 = *(v20 + v17 + 16);
      v9 = vpadalq_u8(v9, vabdq_u8(v22, *(v20 + v17)));
      v27 = (a3[3] + v5 + v17);
      v8 = vpadalq_u8(v8, vabdq_u8(v22, *v27));
      v16 = vpadalq_u8(v16, vabdq_u8(v23, v24));
      v15 = vpadalq_u8(v15, vabdq_u8(v23, v25));
      v14 = vpadalq_u8(v14, vabdq_u8(v23, v26));
      v28 = v21;
      v13 = vpadalq_u8(v13, vabdq_u8(v23, v27[1]));
      v17 = 32;
      v21 = 0;
    }

    while ((v28 & 1) != 0);
    a1 += v7;
    v5 += v10;
    ++v6;
  }

  while (v6 != 16);
  result = vpaddq_s32(vpaddq_s32(vpadalq_u16(vpaddlq_u16(v12), v16), vpadalq_u16(vpaddlq_u16(v11), v15)), vpaddq_s32(vpadalq_u16(vpaddlq_u16(v9), v14), vpadalq_u16(vpaddlq_u16(v8), v13)));
  *a5 = result;
  return result;
}

int32x4_t sub_277A4B650(__int32 *a1, int a2, __int32 **a3, int a4, int32x4_t *a5)
{
  v5.i32[0] = *a1;
  v5.i32[1] = *(a1 + 2 * a2);
  v6 = a3[1];
  v7.i32[0] = **a3;
  v7.i32[1] = *(*a3 + 2 * a4);
  v8.i32[0] = *v6;
  v8.i32[1] = *(v6 + 2 * a4);
  v9 = a3[2];
  v10 = a3[3];
  v11.i32[0] = *v9;
  v11.i32[1] = *(v9 + 2 * a4);
  v12.i32[0] = *v10;
  v12.i32[1] = *(v10 + 2 * a4);
  v13 = vabdl_u8(v5, v7);
  v14 = vabdl_u8(v5, v8);
  v15 = vabdl_u8(v5, v11);
  v16 = vabdl_u8(v5, v12);
  v17 = &a1[a2];
  v12.i32[0] = *v17;
  v12.i32[1] = *(v17 + 2 * a2);
  v18 = &(*a3)[a4];
  v19.i32[0] = *v18;
  v19.i32[1] = *(v18 + 2 * a4);
  v20 = &v6[a4];
  v21.i32[0] = *v20;
  v21.i32[1] = *(v20 + 2 * a4);
  v22 = &v9[a4];
  v23.i32[0] = *v22;
  v23.i32[1] = *(v22 + 2 * a4);
  v24 = &v10[a4];
  v25.i32[0] = *v24;
  v25.i32[1] = *(v24 + 2 * a4);
  v26 = vpaddlq_u16(vpaddq_s16(vpaddq_s16(vabal_u8(v13, v12, v19), vabal_u8(v14, v12, v21)), vpaddq_s16(vabal_u8(v15, v12, v23), vabal_u8(v16, v12, v25))));
  result = vaddq_s32(v26, v26);
  *a5 = result;
  return result;
}

int32x4_t sub_277A4B724(uint8x8_t *a1, int a2, uint8x8_t **a3, int a4, int32x4_t *a5)
{
  v5 = a3[1];
  v6 = vabdl_u8(*a1, **a3);
  v7 = vabdl_u8(*a1, *v5);
  v8 = a3[2];
  v9 = a3[3];
  v10 = vabdl_u8(*a1, *v8);
  v11 = vabdl_u8(*a1, *v9);
  v12 = (a1 + 2 * a2);
  v13 = -3;
  v14 = 2 * a4;
  do
  {
    v6 = vabal_u8(v6, *v12, *(*a3 + v14));
    v7 = vabal_u8(v7, *v12, *(v5 + v14));
    v10 = vabal_u8(v10, *v12, *(v8 + v14));
    v11 = vabal_u8(v11, *v12, *(v9 + v14));
    v14 += 2 * a4;
    v12 = (v12 + 2 * a2);
  }

  while (!__CFADD__(v13++, 1));
  v16 = vpaddlq_u16(vpaddq_s16(vpaddq_s16(v6, v7), vpaddq_s16(v10, v11)));
  result = vaddq_s32(v16, v16);
  *a5 = result;
  return result;
}

int32x4_t sub_277A4B7BC(uint8x8_t *a1, int a2, uint8x8_t **a3, int a4, int32x4_t *a5)
{
  v5 = a3[1];
  v6 = vabdl_u8(*a1, **a3);
  v7 = vabdl_u8(*a1, *v5);
  v8 = a3[2];
  v9 = a3[3];
  v10 = vabdl_u8(*a1, *v8);
  v11 = vabdl_u8(*a1, *v9);
  v12 = (a1 + 2 * a2);
  v13 = -7;
  v14 = 2 * a4;
  do
  {
    v6 = vabal_u8(v6, *v12, *(*a3 + v14));
    v7 = vabal_u8(v7, *v12, *(v5 + v14));
    v10 = vabal_u8(v10, *v12, *(v8 + v14));
    v11 = vabal_u8(v11, *v12, *(v9 + v14));
    v14 += 2 * a4;
    v12 = (v12 + 2 * a2);
  }

  while (!__CFADD__(v13++, 1));
  v16 = vpaddlq_u16(vpaddq_s16(vpaddq_s16(v6, v7), vpaddq_s16(v10, v11)));
  result = vaddq_s32(v16, v16);
  *a5 = result;
  return result;
}

int32x4_t sub_277A4B854(uint8x16_t *a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = 0uLL;
  v7 = -4;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v6 = vpadalq_u8(v6, vabdq_u8(*a1, *(*a3 + v5)));
    v8 = vpadalq_u8(v8, vabdq_u8(*a1, *(a3[1] + v5)));
    v9 = vpadalq_u8(v9, vabdq_u8(*a1, *(a3[2] + v5)));
    v10 = vpadalq_u8(v10, vabdq_u8(*a1, *(a3[3] + v5)));
    a1 = (a1 + 2 * a2);
    v5 += 2 * a4;
  }

  while (!__CFADD__(v7++, 1));
  v12 = vpaddq_s32(vpaddq_s32(vpaddlq_u16(v6), vpaddlq_u16(v8)), vpaddq_s32(vpaddlq_u16(v9), vpaddlq_u16(v10)));
  result = vaddq_s32(v12, v12);
  *a5 = result;
  return result;
}

int32x4_t sub_277A4B8F0(uint8x16_t *a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = 0uLL;
  v7 = -8;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v6 = vpadalq_u8(v6, vabdq_u8(*a1, *(*a3 + v5)));
    v8 = vpadalq_u8(v8, vabdq_u8(*a1, *(a3[1] + v5)));
    v9 = vpadalq_u8(v9, vabdq_u8(*a1, *(a3[2] + v5)));
    v10 = vpadalq_u8(v10, vabdq_u8(*a1, *(a3[3] + v5)));
    a1 = (a1 + 2 * a2);
    v5 += 2 * a4;
  }

  while (!__CFADD__(v7++, 1));
  v12 = vpaddq_s32(vpaddq_s32(vpaddlq_u16(v6), vpaddlq_u16(v8)), vpaddq_s32(vpaddlq_u16(v9), vpaddlq_u16(v10)));
  result = vaddq_s32(v12, v12);
  *a5 = result;
  return result;
}

int32x4_t sub_277A4B98C(uint8x16_t *a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = 0uLL;
  v7 = -16;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v6 = vpadalq_u8(v6, vabdq_u8(*a1, *(*a3 + v5)));
    v8 = vpadalq_u8(v8, vabdq_u8(*a1, *(a3[1] + v5)));
    v9 = vpadalq_u8(v9, vabdq_u8(*a1, *(a3[2] + v5)));
    v10 = vpadalq_u8(v10, vabdq_u8(*a1, *(a3[3] + v5)));
    a1 = (a1 + 2 * a2);
    v5 += 2 * a4;
  }

  while (!__CFADD__(v7++, 1));
  v12 = vpaddq_s32(vpaddq_s32(vpaddlq_u16(v6), vpaddlq_u16(v8)), vpaddq_s32(vpaddlq_u16(v9), vpaddlq_u16(v10)));
  result = vaddq_s32(v12, v12);
  *a5 = result;
  return result;
}

int32x4_t sub_277A4BA28(uint8x16_t *a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = a3[1];
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = a3[2];
  v10 = a3[3];
  v11 = a1 + 1;
  v12 = -8;
  v13 = 0uLL;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  v17 = 0uLL;
  v18 = 0uLL;
  do
  {
    v19 = v11[-1];
    v14 = vpadalq_u8(v14, vabdq_u8(v19, *(*a3 + v5)));
    v13 = vpadalq_u8(v13, vabdq_u8(v19, *(v6 + v5)));
    v8 = vpadalq_u8(v8, vabdq_u8(v19, *(v9 + v5)));
    v7 = vpadalq_u8(v7, vabdq_u8(v19, *(v10 + v5)));
    v18 = vpadalq_u8(v18, vabdq_u8(*v11, *(*a3 + 16 + v5)));
    v17 = vpadalq_u8(v17, vabdq_u8(*v11, *(v6 + v5 + 16)));
    v16 = vpadalq_u8(v16, vabdq_u8(*v11, *(v9 + v5 + 16)));
    v15 = vpadalq_u8(v15, vabdq_u8(*v11, *(v10 + v5 + 16)));
    v5 += 2 * a4;
    v11 = (v11 + 2 * a2);
  }

  while (!__CFADD__(v12++, 1));
  v21 = vpaddq_s32(vpaddq_s32(vpadalq_u16(vpaddlq_u16(v18), v14), vpadalq_u16(vpaddlq_u16(v17), v13)), vpaddq_s32(vpadalq_u16(vpaddlq_u16(v16), v8), vpadalq_u16(vpaddlq_u16(v15), v7)));
  result = vaddq_s32(v21, v21);
  *a5 = result;
  return result;
}

int32x4_t sub_277A4BB1C(uint8x16_t *a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = a3[1];
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = a3[2];
  v10 = a3[3];
  v11 = a1 + 1;
  v12 = -16;
  v13 = 0uLL;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  v17 = 0uLL;
  v18 = 0uLL;
  do
  {
    v19 = v11[-1];
    v14 = vpadalq_u8(v14, vabdq_u8(v19, *(*a3 + v5)));
    v13 = vpadalq_u8(v13, vabdq_u8(v19, *(v6 + v5)));
    v8 = vpadalq_u8(v8, vabdq_u8(v19, *(v9 + v5)));
    v7 = vpadalq_u8(v7, vabdq_u8(v19, *(v10 + v5)));
    v18 = vpadalq_u8(v18, vabdq_u8(*v11, *(*a3 + 16 + v5)));
    v17 = vpadalq_u8(v17, vabdq_u8(*v11, *(v6 + v5 + 16)));
    v16 = vpadalq_u8(v16, vabdq_u8(*v11, *(v9 + v5 + 16)));
    v15 = vpadalq_u8(v15, vabdq_u8(*v11, *(v10 + v5 + 16)));
    v5 += 2 * a4;
    v11 = (v11 + 2 * a2);
  }

  while (!__CFADD__(v12++, 1));
  v21 = vpaddq_s32(vpaddq_s32(vpadalq_u16(vpaddlq_u16(v18), v14), vpadalq_u16(vpaddlq_u16(v17), v13)), vpaddq_s32(vpadalq_u16(vpaddlq_u16(v16), v8), vpadalq_u16(vpaddlq_u16(v15), v7)));
  result = vaddq_s32(v21, v21);
  *a5 = result;
  return result;
}

int32x4_t sub_277A4BC10(uint8x16_t *a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = a3[1];
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = a3[2];
  v10 = a3[3];
  v11 = a1 + 1;
  v12 = -32;
  v13 = 0uLL;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  v17 = 0uLL;
  v18 = 0uLL;
  do
  {
    v19 = v11[-1];
    v14 = vpadalq_u8(v14, vabdq_u8(v19, *(*a3 + v5)));
    v13 = vpadalq_u8(v13, vabdq_u8(v19, *(v6 + v5)));
    v8 = vpadalq_u8(v8, vabdq_u8(v19, *(v9 + v5)));
    v7 = vpadalq_u8(v7, vabdq_u8(v19, *(v10 + v5)));
    v18 = vpadalq_u8(v18, vabdq_u8(*v11, *(*a3 + 16 + v5)));
    v17 = vpadalq_u8(v17, vabdq_u8(*v11, *(v6 + v5 + 16)));
    v16 = vpadalq_u8(v16, vabdq_u8(*v11, *(v9 + v5 + 16)));
    v15 = vpadalq_u8(v15, vabdq_u8(*v11, *(v10 + v5 + 16)));
    v5 += 2 * a4;
    v11 = (v11 + 2 * a2);
  }

  while (!__CFADD__(v12++, 1));
  v21 = vpaddq_s32(vpaddq_s32(vpadalq_u16(vpaddlq_u16(v18), v14), vpadalq_u16(vpaddlq_u16(v17), v13)), vpaddq_s32(vpadalq_u16(vpaddlq_u16(v16), v8), vpadalq_u16(vpaddlq_u16(v15), v7)));
  result = vaddq_s32(v21, v21);
  *a5 = result;
  return result;
}

int32x4_t sub_277A4BD04(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = 0;
  v7 = 2 * a2;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 2 * a4;
  v11 = 0uLL;
  v12 = 0uLL;
  v13 = 0uLL;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  do
  {
    v17 = 0;
    v18 = *a3 + v5;
    v19 = a3[1] + v5;
    v20 = a3[2] + v5;
    v21 = 1;
    do
    {
      v22 = *(a1 + v17);
      v23 = *(a1 + v17 + 16);
      v24 = *(v18 + v17 + 16);
      v12 = vpadalq_u8(v12, vabdq_u8(v22, *(v18 + v17)));
      v25 = *(v19 + v17 + 16);
      v11 = vpadalq_u8(v11, vabdq_u8(v22, *(v19 + v17)));
      v26 = *(v20 + v17 + 16);
      v9 = vpadalq_u8(v9, vabdq_u8(v22, *(v20 + v17)));
      v27 = (a3[3] + v5 + v17);
      v8 = vpadalq_u8(v8, vabdq_u8(v22, *v27));
      v16 = vpadalq_u8(v16, vabdq_u8(v23, v24));
      v15 = vpadalq_u8(v15, vabdq_u8(v23, v25));
      v14 = vpadalq_u8(v14, vabdq_u8(v23, v26));
      v28 = v21;
      v13 = vpadalq_u8(v13, vabdq_u8(v23, v27[1]));
      v17 = 32;
      v21 = 0;
    }

    while ((v28 & 1) != 0);
    a1 += v7;
    v5 += v10;
    ++v6;
  }

  while (v6 != 16);
  v29 = vpaddq_s32(vpaddq_s32(vpadalq_u16(vpaddlq_u16(v12), v16), vpadalq_u16(vpaddlq_u16(v11), v15)), vpaddq_s32(vpadalq_u16(vpaddlq_u16(v9), v14), vpadalq_u16(vpaddlq_u16(v8), v13)));
  result = vaddq_s32(v29, v29);
  *a5 = result;
  return result;
}

int32x4_t sub_277A4BE20(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = 0;
  v7 = 2 * a2;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 2 * a4;
  v11 = 0uLL;
  v12 = 0uLL;
  v13 = 0uLL;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  do
  {
    v17 = 0;
    v18 = *a3 + v5;
    v19 = a3[1] + v5;
    v20 = a3[2] + v5;
    v21 = 1;
    do
    {
      v22 = *(a1 + v17);
      v23 = *(a1 + v17 + 16);
      v24 = *(v18 + v17 + 16);
      v12 = vpadalq_u8(v12, vabdq_u8(v22, *(v18 + v17)));
      v25 = *(v19 + v17 + 16);
      v11 = vpadalq_u8(v11, vabdq_u8(v22, *(v19 + v17)));
      v26 = *(v20 + v17 + 16);
      v9 = vpadalq_u8(v9, vabdq_u8(v22, *(v20 + v17)));
      v27 = (a3[3] + v5 + v17);
      v8 = vpadalq_u8(v8, vabdq_u8(v22, *v27));
      v16 = vpadalq_u8(v16, vabdq_u8(v23, v24));
      v15 = vpadalq_u8(v15, vabdq_u8(v23, v25));
      v14 = vpadalq_u8(v14, vabdq_u8(v23, v26));
      v28 = v21;
      v13 = vpadalq_u8(v13, vabdq_u8(v23, v27[1]));
      v17 = 32;
      v21 = 0;
    }

    while ((v28 & 1) != 0);
    a1 += v7;
    v5 += v10;
    ++v6;
  }

  while (v6 != 32);
  v29 = vpaddq_s32(vpaddq_s32(vpadalq_u16(vpaddlq_u16(v12), v16), vpadalq_u16(vpaddlq_u16(v11), v15)), vpaddq_s32(vpadalq_u16(vpaddlq_u16(v9), v14), vpadalq_u16(vpaddlq_u16(v8), v13)));
  result = vaddq_s32(v29, v29);
  *a5 = result;
  return result;
}

int32x4_t sub_277A4BF3C(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = 0;
  v7 = 2 * a2;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 2 * a4;
  v11 = 0uLL;
  v12 = 0uLL;
  v13 = 0uLL;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  do
  {
    v17 = 0;
    v18 = *a3 + v5;
    v19 = a3[1] + v5;
    v20 = a3[2] + v5;
    v21 = 1;
    do
    {
      v22 = *(a1 + v17);
      v23 = *(a1 + v17 + 16);
      v24 = *(v18 + v17 + 16);
      v12 = vpadalq_u8(v12, vabdq_u8(v22, *(v18 + v17)));
      v25 = *(v19 + v17 + 16);
      v11 = vpadalq_u8(v11, vabdq_u8(v22, *(v19 + v17)));
      v26 = *(v20 + v17 + 16);
      v9 = vpadalq_u8(v9, vabdq_u8(v22, *(v20 + v17)));
      v27 = (a3[3] + v5 + v17);
      v8 = vpadalq_u8(v8, vabdq_u8(v22, *v27));
      v16 = vpadalq_u8(v16, vabdq_u8(v23, v24));
      v15 = vpadalq_u8(v15, vabdq_u8(v23, v25));
      v14 = vpadalq_u8(v14, vabdq_u8(v23, v26));
      v28 = v21;
      v13 = vpadalq_u8(v13, vabdq_u8(v23, v27[1]));
      v17 = 32;
      v21 = 0;
    }

    while ((v28 & 1) != 0);
    a1 += v7;
    v5 += v10;
    ++v6;
  }

  while (v6 != 64);
  v29 = vpaddq_s32(vpaddq_s32(vpadalq_u16(vpaddlq_u16(v16), v12), vpadalq_u16(vpaddlq_u16(v15), v11)), vpaddq_s32(vpadalq_u16(vpaddlq_u16(v14), v9), vpadalq_u16(vpaddlq_u16(v13), v8)));
  result = vaddq_s32(v29, v29);
  *a5 = result;
  return result;
}

int32x4_t sub_277A4C058(uint64_t a1, int a2, uint64_t *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = *a3;
  v7 = a3[1];
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = a3[2];
  v11 = a3[3];
  v12 = 2 * a4;
  v13 = 0uLL;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  v17 = 0uLL;
  v18 = 0uLL;
  do
  {
    v19 = 16;
    do
    {
      v20 = *(a1 + v19 - 16);
      v21 = *(a1 + v19);
      v14 = vpadalq_u8(v14, vabdq_u8(v20, *(v6 + v19 - 16)));
      v13 = vpadalq_u8(v13, vabdq_u8(v20, *(v7 + v19 - 16)));
      v9 = vpadalq_u8(v9, vabdq_u8(v20, *(v10 + v19 - 16)));
      v8 = vpadalq_u8(v8, vabdq_u8(v20, *(v11 + v19 - 16)));
      v18 = vpadalq_u8(v18, vabdq_u8(v21, *(v6 + v19)));
      v17 = vpadalq_u8(v17, vabdq_u8(v21, *(v7 + v19)));
      v16 = vpadalq_u8(v16, vabdq_u8(v21, *(v10 + v19)));
      v15 = vpadalq_u8(v15, vabdq_u8(v21, *(v11 + v19)));
      v22 = v19 - 16;
      v19 += 32;
    }

    while (v22 < 0x60);
    a1 += 2 * a2;
    ++v5;
    v11 += v12;
    v6 += v12;
    v10 += v12;
    v7 += v12;
  }

  while (v5 != 32);
  v23 = vpaddq_s32(vpaddq_s32(vpadalq_u16(vpaddlq_u16(v18), v14), vpadalq_u16(vpaddlq_u16(v17), v13)), vpaddq_s32(vpadalq_u16(vpaddlq_u16(v16), v9), vpadalq_u16(vpaddlq_u16(v15), v8)));
  result = vaddq_s32(v23, v23);
  *a5 = result;
  return result;
}

int32x4_t sub_277A4C168(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = 0;
  v7 = 2 * a2;
  v8 = a3[1];
  v9 = a3[2];
  v10 = a3[3];
  v11 = 2 * a4;
  v12 = *a3 + 16;
  v13 = 32;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  v17 = 0uLL;
  do
  {
    v18 = v10 + v6;
    v19 = v12 + v6;
    v20 = 0uLL;
    v21 = 0uLL;
    v22 = v9 + v6;
    v23 = v8 + v6;
    v24 = 0uLL;
    v25 = 0uLL;
    v26 = 0uLL;
    v27 = 0uLL;
    v28 = 0uLL;
    v29 = 0uLL;
    v30 = v5;
    do
    {
      v31 = -32;
      do
      {
        v32 = *(a1 + v31 + 32);
        v33 = *(a1 + v31 + 48);
        v25 = vpadalq_u8(v25, vabdq_u8(v32, *(v19 + v31 + 16)));
        v24 = vpadalq_u8(v24, vabdq_u8(v32, *(v23 + v31 + 32)));
        v21 = vpadalq_u8(v21, vabdq_u8(v32, *(v22 + v31 + 32)));
        v20 = vpadalq_u8(v20, vabdq_u8(v32, *(v18 + v31 + 32)));
        v29 = vpadalq_u8(v29, vabdq_u8(v33, *(v19 + v31 + 32)));
        v28 = vpadalq_u8(v28, vabdq_u8(v33, *(v23 + v31 + 48)));
        v27 = vpadalq_u8(v27, vabdq_u8(v33, *(v22 + v31 + 48)));
        v26 = vpadalq_u8(v26, vabdq_u8(v33, *(v18 + v31 + 48)));
        v31 += 32;
      }

      while (v31 < 0x60);
      a1 += v7;
      v6 += v11;
      ++v30;
      v18 += v11;
      v19 += v11;
      v22 += v11;
      v23 += v11;
    }

    while (v30 < v13);
    if (v13 <= (v5 + 1))
    {
      ++v5;
    }

    else
    {
      v5 = v13;
    }

    v17 = vpadalq_u16(vpadalq_u16(v17, v25), v29);
    v16 = vpadalq_u16(vpadalq_u16(v16, v24), v28);
    v15 = vpadalq_u16(vpadalq_u16(v15, v21), v27);
    v14 = vpadalq_u16(vpadalq_u16(v14, v20), v26);
    v13 += 32;
  }

  while (v5 < 0x40);
  v34 = vpaddq_s32(vpaddq_s32(v17, v16), vpaddq_s32(v15, v14));
  result = vaddq_s32(v34, v34);
  *a5 = result;
  return result;
}

int32x4_t sub_277A4C2CC(__int32 *a1, int a2, __int32 **a3, int a4, int32x4_t *a5)
{
  v5.i32[0] = *a1;
  v5.i32[1] = *(a1 + 2 * a2);
  v6 = *a3;
  v7 = a3[1];
  v8 = (*a3 + 2 * a4);
  v9.i32[0] = **a3;
  v9.i32[1] = *v8;
  v10 = 2 * a2;
  v11 = (v7 + 2 * a4);
  v12.i32[0] = *v7;
  v12.i32[1] = *v11;
  v13 = a3[2];
  v14 = a3[3];
  v15 = (v13 + 2 * a4);
  v16.i32[0] = *v13;
  v16.i32[1] = *v15;
  v17 = (v14 + 2 * a4);
  v18.i32[0] = *v14;
  v18.i32[1] = *v17;
  v19 = vabdl_u8(v5, v9);
  v20 = vabdl_u8(v5, v12);
  v21 = vabdl_u8(v5, v16);
  v22 = a2;
  v23 = vabdl_u8(v5, v18);
  v24 = 4 * a4;
  v25 = &a1[v22];
  v26 = -3;
  do
  {
    v27.i32[0] = *v25;
    v27.i32[1] = *(v25 + v10);
    v6 = (v6 + v24);
    v8 = (v8 + v24);
    v28.i32[0] = *v6;
    v28.i32[1] = *v8;
    v7 = (v7 + v24);
    v11 = (v11 + v24);
    v29.i32[0] = *v7;
    v29.i32[1] = *v11;
    v13 = (v13 + v24);
    v15 = (v15 + v24);
    v30.i32[0] = *v13;
    v30.i32[1] = *v15;
    v14 = (v14 + v24);
    v17 = (v17 + v24);
    v31.i32[0] = *v14;
    v31.i32[1] = *v17;
    v19 = vabal_u8(v19, v27, v28);
    v20 = vabal_u8(v20, v27, v29);
    v21 = vabal_u8(v21, v27, v30);
    v23 = vabal_u8(v23, v27, v31);
    v25 = (v25 + v22 * 4);
  }

  while (!__CFADD__(v26++, 1));
  v33 = vpaddlq_u16(vpaddq_s16(vpaddq_s16(v19, v20), vpaddq_s16(v21, v23)));
  result = vaddq_s32(v33, v33);
  *a5 = result;
  return result;
}

int32x4_t sub_277A4C3BC(uint8x8_t *a1, int a2, uint8x8_t **a3, int a4, int32x4_t *a5)
{
  v5 = a3[1];
  v6 = vabdl_u8(*a1, **a3);
  v7 = vabdl_u8(*a1, *v5);
  v8 = a3[2];
  v9 = a3[3];
  v10 = vabdl_u8(*a1, *v8);
  v11 = vabdl_u8(*a1, *v9);
  v12 = (a1 + 2 * a2);
  v13 = -15;
  v14 = 2 * a4;
  do
  {
    v6 = vabal_u8(v6, *v12, *(*a3 + v14));
    v7 = vabal_u8(v7, *v12, *(v5 + v14));
    v10 = vabal_u8(v10, *v12, *(v8 + v14));
    v11 = vabal_u8(v11, *v12, *(v9 + v14));
    v14 += 2 * a4;
    v12 = (v12 + 2 * a2);
  }

  while (!__CFADD__(v13++, 1));
  v16 = vpaddlq_u16(vpaddq_s16(vpaddq_s16(v6, v7), vpaddq_s16(v10, v11)));
  result = vaddq_s32(v16, v16);
  *a5 = result;
  return result;
}

int32x4_t sub_277A4C454(uint8x16_t *a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = 0uLL;
  v7 = -2;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v6 = vpadalq_u8(v6, vabdq_u8(*a1, *(*a3 + v5)));
    v8 = vpadalq_u8(v8, vabdq_u8(*a1, *(a3[1] + v5)));
    v9 = vpadalq_u8(v9, vabdq_u8(*a1, *(a3[2] + v5)));
    v10 = vpadalq_u8(v10, vabdq_u8(*a1, *(a3[3] + v5)));
    a1 = (a1 + 2 * a2);
    v5 += 2 * a4;
  }

  while (!__CFADD__(v7++, 1));
  v12 = vpaddq_s32(vpaddq_s32(vpaddlq_u16(v6), vpaddlq_u16(v8)), vpaddq_s32(vpaddlq_u16(v9), vpaddlq_u16(v10)));
  result = vaddq_s32(v12, v12);
  *a5 = result;
  return result;
}

int32x4_t sub_277A4C4F0(uint8x16_t *a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = 0uLL;
  v7 = -32;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v6 = vpadalq_u8(v6, vabdq_u8(*a1, *(*a3 + v5)));
    v8 = vpadalq_u8(v8, vabdq_u8(*a1, *(a3[1] + v5)));
    v9 = vpadalq_u8(v9, vabdq_u8(*a1, *(a3[2] + v5)));
    v10 = vpadalq_u8(v10, vabdq_u8(*a1, *(a3[3] + v5)));
    a1 = (a1 + 2 * a2);
    v5 += 2 * a4;
  }

  while (!__CFADD__(v7++, 1));
  v12 = vpaddq_s32(vpaddq_s32(vpaddlq_u16(v6), vpaddlq_u16(v8)), vpaddq_s32(vpaddlq_u16(v9), vpaddlq_u16(v10)));
  result = vaddq_s32(v12, v12);
  *a5 = result;
  return result;
}

int32x4_t sub_277A4C58C(uint8x16_t *a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = a3[1];
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = a3[2];
  v10 = a3[3];
  v11 = a1 + 1;
  v12 = -4;
  v13 = 0uLL;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  v17 = 0uLL;
  v18 = 0uLL;
  do
  {
    v19 = v11[-1];
    v14 = vpadalq_u8(v14, vabdq_u8(v19, *(*a3 + v5)));
    v13 = vpadalq_u8(v13, vabdq_u8(v19, *(v6 + v5)));
    v8 = vpadalq_u8(v8, vabdq_u8(v19, *(v9 + v5)));
    v7 = vpadalq_u8(v7, vabdq_u8(v19, *(v10 + v5)));
    v18 = vpadalq_u8(v18, vabdq_u8(*v11, *(*a3 + 16 + v5)));
    v17 = vpadalq_u8(v17, vabdq_u8(*v11, *(v6 + v5 + 16)));
    v16 = vpadalq_u8(v16, vabdq_u8(*v11, *(v9 + v5 + 16)));
    v15 = vpadalq_u8(v15, vabdq_u8(*v11, *(v10 + v5 + 16)));
    v5 += 2 * a4;
    v11 = (v11 + 2 * a2);
  }

  while (!__CFADD__(v12++, 1));
  v21 = vpaddq_s32(vpaddq_s32(vpadalq_u16(vpaddlq_u16(v18), v14), vpadalq_u16(vpaddlq_u16(v17), v13)), vpaddq_s32(vpadalq_u16(vpaddlq_u16(v16), v8), vpadalq_u16(vpaddlq_u16(v15), v7)));
  result = vaddq_s32(v21, v21);
  *a5 = result;
  return result;
}

int32x4_t sub_277A4C680(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = 0;
  v7 = 2 * a2;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 2 * a4;
  v11 = 0uLL;
  v12 = 0uLL;
  v13 = 0uLL;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  do
  {
    v17 = 0;
    v18 = *a3 + v5;
    v19 = a3[1] + v5;
    v20 = a3[2] + v5;
    v21 = 1;
    do
    {
      v22 = *(a1 + v17);
      v23 = *(a1 + v17 + 16);
      v24 = *(v18 + v17 + 16);
      v12 = vpadalq_u8(v12, vabdq_u8(v22, *(v18 + v17)));
      v25 = *(v19 + v17 + 16);
      v11 = vpadalq_u8(v11, vabdq_u8(v22, *(v19 + v17)));
      v26 = *(v20 + v17 + 16);
      v9 = vpadalq_u8(v9, vabdq_u8(v22, *(v20 + v17)));
      v27 = (a3[3] + v5 + v17);
      v8 = vpadalq_u8(v8, vabdq_u8(v22, *v27));
      v16 = vpadalq_u8(v16, vabdq_u8(v23, v24));
      v15 = vpadalq_u8(v15, vabdq_u8(v23, v25));
      v14 = vpadalq_u8(v14, vabdq_u8(v23, v26));
      v28 = v21;
      v13 = vpadalq_u8(v13, vabdq_u8(v23, v27[1]));
      v17 = 32;
      v21 = 0;
    }

    while ((v28 & 1) != 0);
    a1 += v7;
    v5 += v10;
    ++v6;
  }

  while (v6 != 8);
  v29 = vpaddq_s32(vpaddq_s32(vpadalq_u16(vpaddlq_u16(v12), v16), vpadalq_u16(vpaddlq_u16(v11), v15)), vpaddq_s32(vpadalq_u16(vpaddlq_u16(v9), v14), vpadalq_u16(vpaddlq_u16(v8), v13)));
  result = vaddq_s32(v29, v29);
  *a5 = result;
  return result;
}

void sub_277A4C79C(void *a1)
{
  if (a1)
  {
    v2 = a1[19];
    if (v2)
    {
      sub_277A4C810(v2);
      a1[19] = 0;
    }

    v3 = a1[17];
    if (v3 && *(a1 + 36))
    {
      free(*(v3 - 8));
    }

    if (*(a1 + 37))
    {

      free(a1);
    }
  }
}

void sub_277A4C810(unint64_t *a1)
{
  if (a1)
  {
    v2 = a1[1];
    if (v2)
    {
      v3 = *a1;
      if (*a1)
      {
        v4 = 0;
        do
        {
          v5 = *(a1[1] + 8 * v4);
          if (v5)
          {
            v6 = v5[1];
            if (v6)
            {
              free(v6);
            }

            free(v5);
            v3 = *a1;
          }

          ++v4;
        }

        while (v4 < v3);
        v2 = a1[1];
      }

      free(v2);
    }

    free(a1);
  }
}

void sub_277A4C9A0(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      free(*(v2 - 8));
    }

    v3 = *(a1 - 8);

    free(v3);
  }
}

uint64_t sub_277A4C9EC(uint64_t a1, int a2, double a3)
{
  v4 = *(a1 + 463432);
  result = sub_277A5B3A8(a1, *(a1 + 245616), a2, a3);
  v6 = *(v4 + 8) * a2;
  if (v6 / 100 < -result)
  {
    return (-v6 / 100);
  }

  return result;
}

int *sub_277A4CA6C(int *result)
{
  v1 = result + 115858;
  v2 = result + 98778;
  v3 = result + 67578;
  v4 = result + 61404;
  v5 = *result;
  v6 = *(result + 57929);
  v7 = result[98811];
  if (v7 >= 12)
  {
    v8 = v7 + 4;
  }

  else
  {
    v8 = 16;
  }

  v9 = result[67999];
  if (*(v5 + 51016))
  {
    v10 = 0;
  }

  else
  {
    v10 = v9 == 1;
  }

  v11 = v10;
  v12 = *v2;
  if (v10 && v12 >= *(v6 + 112))
  {
    v12 = *(v6 + 112);
  }

  v13 = result[98782];
  v14 = *v4 & 0xFD;
  if (*v4 & 0xFD) == 0 || v13 || (*(v5 + 85841))
  {
    *(v6 + 104) = 1;
    v15 = (v6 + 104);
    *(v6 + 4) = 5;
    *(v6 + 80) = 0x3FD0000000000000;
    *(v6 + 108) = result[68035] > 9;
    if (!v14)
    {
      goto LABEL_68;
    }
  }

  else
  {
    v16 = result[68035] > 9;
    *(v6 + 104) = 1;
    *(v6 + 108) = v16;
    v15 = (v6 + 104);
  }

  if (!result[67821] && !result[67820])
  {
    goto LABEL_68;
  }

  if (result[98783] | v13)
  {
    goto LABEL_68;
  }

  result += 160949;
  if (*result > 0)
  {
    goto LABEL_68;
  }

  v17 = result[3];
  if (v17 != result[1])
  {
    goto LABEL_68;
  }

  v18 = *(v5 + 44216);
  if (v18 < v8 || v17 >= 2 && *(*(result + 85) + 13176 * *result + 13168))
  {
    goto LABEL_68;
  }

  if (v12 >= 21 && v18 > 235)
  {
    goto LABEL_68;
  }

  v19 = v2[39];
  if (v19)
  {
    if (v19 <= 29 && v12 > 40)
    {
      goto LABEL_68;
    }
  }

  if (*(v5 + 85841))
  {
    goto LABEL_68;
  }

  v20 = result[2];
  if (v20 <= 2)
  {
    v21 = *(v6 + 4) + 10;
  }

  else
  {
    v21 = 15;
  }

  *v6 = v21;
  if (v1[2])
  {
    v22 = (100 - v2[42]) * v21;
    result = ((1374389535 * v22) >> 63);
    v21 = v22 / 100;
    *v6 = v22 / 100;
    if ((v22 + 99) <= 0xC6)
    {
      *v15 = 0;
    }
  }

  *(v6 + 8) = 60;
  *(v6 + 20) = 0;
  if (v9 == 1)
  {
    v23 = 0;
    v24 = 10;
  }

  else
  {
    v23 = *(*v3 + 28) == 12;
    v24 = 15;
  }

  *(v6 + 116) = v23;
  *(v6 + 64) = 32;
  *(v6 + 88) = v24;
  if (v21 < 1)
  {
    v26 = *(v6 + 80);
    goto LABEL_54;
  }

  if ((v11 & 1) == 0)
  {
    v26 = *(v6 + 80);
    if (v12 < (4 * v20 * (0x64u / v21)))
    {
      v27 = 3.0;
      goto LABEL_55;
    }

LABEL_54:
    v27 = 2.25;
    goto LABEL_55;
  }

  v25 = (v12 / 10) * 0.1;
  if (v25 > 0.75)
  {
    v25 = 0.75;
  }

  v26 = *(v6 + 80) + 3.0 - v25;
  *(v6 + 72) = v26;
  if (v12 <= 9 && (v2[34] < 0 || v2[35] < 0))
  {
    v27 = -0.25;
LABEL_55:
    v26 = v26 + v27;
    *(v6 + 72) = v26;
  }

  if (v4[15] * v4[14] > 101376)
  {
    goto LABEL_63;
  }

  if (v20 >= 2)
  {
    v28 = 32;
LABEL_61:
    *(v6 + 64) = v28;
    *(v6 + 88) = 13;
    goto LABEL_63;
  }

  if (v2[18] <= 2999)
  {
    v28 = 16;
    goto LABEL_61;
  }

  *(v6 + 8) = 50;
  *(v6 + 72) = fmax(v26, 2.0);
LABEL_63:
  if (!v3[245])
  {
    v21 = 10;
    *v6 = 10;
    *(v6 + 72) = 0x3FF8000000000000;
    *(v6 + 88) = 10;
    if (*(v3 + 3440) == 1)
    {
      v21 = 0;
      *v6 = 0;
      *(v6 + 72) = 0x3FF0000000000000;
    }
  }

  if (v2[50])
  {
    v29 = 1374389535 * v4[133] * v21 * v4[134];
    *(v6 + 28) = (v29 >> 63) + (SHIDWORD(v29) >> 5);
    v15 = (v6 + 32);
LABEL_68:
    *v15 = 0;
  }

  return result;
}

uint64_t sub_277A4CE08(uint64_t result, int a2, uint16x8_t *a3, uint64_t a4, uint8x8_t *a5, uint64_t a6, uint8x8_t *a7, uint64_t a8)
{
  if (a2 < 17)
  {
    if (a2 < 9)
    {
      if (a2 < 5)
      {
        if (a2 <= 1)
        {
          v18 = 1;
        }

        else
        {
          v18 = a2;
        }

        do
        {
          for (i = 0; i != v18; ++i)
          {
            a3->i16[i] = a5->u8[i] - a7->u8[i];
          }

          a7 = (a7 + a8);
          a5 = (a5 + a6);
          a3 = (a3 + 2 * a4);
          result = (result - 1);
        }

        while (result);
      }

      else
      {
        do
        {
          *a3 = vsubl_u8(*a5, *a7);
          a7 = (a7 + a8);
          a5 = (a5 + a6);
          a3 = (a3 + 2 * a4);
          result = (result - 1);
        }

        while (result);
      }
    }

    else
    {
      v16 = a3 + 1;
      do
      {
        v17 = vsubl_high_u8(*a5->i8, *a7->i8);
        v16[-1] = vsubl_u8(*a5, *a7);
        *v16 = v17;
        a7 = (a7 + a8);
        a5 = (a5 + a6);
        v16 = (v16 + 2 * a4);
        result = (result - 1);
      }

      while (result);
    }
  }

  else
  {
    v8 = a3 + 2;
    do
    {
      v9 = v8;
      v10 = 2;
      do
      {
        v11 = *a5[v10 - 2].i8;
        v12 = *a5[v10].i8;
        v13 = *a7[v10 - 2].i8;
        v14 = *a7[v10].i8;
        v9[-2] = vsubl_u8(*v11.i8, *v13.i8);
        v9[-1] = vsubl_high_u8(v11, v13);
        *v9 = vsubl_u8(*v12.i8, *v14.i8);
        v9[1] = vsubl_high_u8(v12, v14);
        v9 += 4;
        v15 = v10 * 8 + 16;
        v10 += 4;
      }

      while (v15 < a2);
      a7 = (a7 + a8);
      a5 = (a5 + a6);
      v8 = (v8 + 2 * a4);
      result = (result - 1);
    }

    while (result);
  }

  return result;
}

uint64_t sub_277A4CF28(uint64_t result, int a2, int16x4_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = (2 * a5);
  v9 = (2 * a7);
  if (a2 < 17)
  {
    if (a2 < 9)
    {
      v18 = 4 * a4;
      v19 = 4 * a8;
      v20 = 4 * a6;
      if (a2 <= 4)
      {
        do
        {
          v22 = vsub_s16(*(v8 + 2 * a6), *(v9 + 2 * a8));
          *a3 = vsub_s16(*v8, *v9);
          *(a3 + 2 * a4) = v22;
          a3 = (a3 + v18);
          v9 = (v9 + v19);
          v8 = (v8 + v20);
          result = (result - 2);
        }

        while (result);
      }

      else
      {
        do
        {
          v21 = vsubq_s16(*&v8->i8[2 * a6], *&v9->i8[2 * a8]);
          *a3->i8 = vsubq_s16(*v8->i8, *v9->i8);
          *&a3->i8[2 * a4] = v21;
          a3 = (a3 + v18);
          v9 = (v9 + v19);
          v8 = (v8 + v20);
          result = (result - 2);
        }

        while (result);
      }
    }

    else
    {
      v14 = &v9[2];
      v15 = &v8[2];
      v16 = &a3[2];
      do
      {
        v17 = vsubq_s16(*v15, *v14);
        v16[-1] = vsubq_s16(v15[-1], v14[-1]);
        *v16 = v17;
        v14 = (v14 + 2 * a8);
        v15 = (v15 + 2 * a6);
        v16 = (v16 + 2 * a4);
        result = (result - 1);
      }

      while (result);
    }
  }

  else
  {
    do
    {
      v10 = 0;
      v11 = 2;
      do
      {
        v12 = vsubq_s16(*v8[v11].i8, *v9[v11].i8);
        v13 = &a3[v11];
        v13[-1] = vsubq_s16(*v8[v11 - 2].i8, *v9[v11 - 2].i8);
        *v13 = v12;
        v10 += 16;
        v11 += 4;
      }

      while (v10 < a2);
      v8 = (v8 + 2 * a6);
      a3 = (a3 + 2 * a4);
      v9 = (v9 + 2 * a8);
      result = (result - 1);
    }

    while (result);
  }

  return result;
}

void sub_277A4D074(uint64_t a1, uint64_t a2, unsigned int a3, int *a4, int a5, _DWORD *a6, unsigned __int16 *a7, uint64_t a8)
{
  v412 = *MEMORY[0x277D85DE8];
  v11 = (a1 + 395680);
  v350 = (a1 + 270312);
  if (*(*(a1 + 270312) + 77))
  {
    v12 = 1;
  }

  else
  {
    v12 = 3;
  }

  v13 = **(a2 + 8280);
  memset(v411, 0, sizeof(v411));
  v14 = *(v13 + 16);
  v15 = v14 - 1;
  v16 = *(a1 + 8 * v15 + 273688);
  v351 = v12;
  if ((*(v13 + 16) - 1) > 7u || (v17 = *(a1 + 4 * v15 + 245856), v17 == -1))
  {
    v18 = 0;
  }

  else
  {
    v18 = *(a1 + 8 * v17 + 246032);
  }

  v19 = (a1 + 246096);
  if (v16)
  {
    v20 = v16 == v18;
  }

  else
  {
    v20 = 1;
  }

  v21 = v20;
  v342 = v21;
  v22 = v16 + 1248;
  if (v20)
  {
    v23 = 0;
  }

  else
  {
    v23 = v22;
  }

  v24 = *(a2 + 416);
  v25 = *(a2 + 420);
  v343 = *(a2 + 47560);
  if (!v20)
  {
    v26 = (a2 + 480);
    v27 = v411;
    v28 = v12;
    do
    {
      v29 = v26[1];
      *v27 = *v26;
      v27[1] = v29;
      v27 += 2;
      v26 += 163;
      --v28;
    }

    while (v28);
    sub_27798E424(a2 + 416, 0, v23, v24, v25, 0, v12);
  }

  v353 = v14;
  v358 = a1;
  if (*(v11 + 2) && *v19)
  {
    if (*(a2 + 4 * v14 + 128708) <= 16)
    {
      v30 = 16;
    }

    else
    {
      v30 = *(a2 + 4 * v14 + 128708);
    }

    v31 = -1;
    do
    {
      ++v31;
    }

    while (v30 << v31 < 1023);
    if (v31 >= 9)
    {
      v31 = 9;
    }

    v32 = (*(v11 + 255) + v31) / 2;
  }

  else
  {
    v32 = *(v11 + 255);
  }

  v33 = (a2 + 86612);
  v34 = **(a2 + 8280);
  if (*(v34 + 2) - 21 >= 2)
  {
    v35 = (*(v34 + 167) >> 4) & 3;
  }

  else
  {
    v35 = ((*(v34 + 167) >> 4) & 3) + 1;
  }

  v36 = sub_277B1C4F0(0, *(v34 + 16), *(v34 + 17), v35, a2 + 15472);
  __nel_4 = v36;
  v37 = *(v13 + 24);
  v344 = v19;
  if (*(v13 + 24))
  {
    v38 = *(v13 + 8) + ((*(v13 + 8) & 0x8000) == 0) + 3;
    v39 = *(v13 + 10);
    v40 = ~v39;
  }

  else
  {
    v38 = (((v36 >> 15) & 1) == 0) + v36 + 3;
    v39 = v36 >> 16;
    v40 = ~v36;
  }

  v359 = a2;
  v345 = (a2 + 16904);
  v346 = v39 + (v40 >> 31) + 3;
  v348 = v38;
  v41 = (v346 << 13) & 0xFFFF0000 | (v38 >> 3);
  bzero(v410, 0x204uLL);
  v42 = 0;
  __base = v41;
  v43 = 1;
  __nel = 1;
  v360 = v11;
  if (*(v11 + 27) || v37)
  {
    goto LABEL_71;
  }

  if (!*v33)
  {
    v42 = 0;
    v43 = 1;
    goto LABEL_71;
  }

  v44 = *(*v358 + 54269);
  if (v44 <= 0xF)
  {
    v45 = a3;
    if (v44 == 4)
    {
      v46 = 0;
      goto LABEL_53;
    }

    if (v44 == 8)
    {
      v46 = 3u;
      goto LABEL_53;
    }

LABEL_50:
    v46 = 6u;
    goto LABEL_53;
  }

  v45 = a3;
  if (v44 == 16)
  {
    goto LABEL_50;
  }

  if (v44 == 64)
  {
    v46 = 0xCu;
    goto LABEL_53;
  }

  if (v44 != 32)
  {
    goto LABEL_50;
  }

  v46 = 9u;
LABEL_53:
  v42 = 0;
  v47 = byte_277C3F990[v46];
  v48 = byte_277C3F990[v45];
  v43 = 1;
  if (v47 <= v48)
  {
    v49 = byte_277C36D60[v46];
    v50 = byte_277C36D60[v45];
    if (v49 <= v50)
    {
      v51 = 0;
      v52 = v48 / v47;
      v53 = *(*v350 + 28);
      v54 = v359[26].n128_u32[0] % byte_277C36D60[v53] / v49;
      v55 = v359[26].n128_u32[1] % byte_277C3F990[v53] / v47;
      v56 = v50 / v49;
      v57 = v33[705];
      v410[0] = v56 * v52;
      while (2)
      {
        v58 = 0;
        do
        {
          v59 = &v359[5477].n128_u16[14 * v55 + 4 + 14 * (v51 + v54) * v57 + 14 * v58 + 2 * v15];
          v60 = *v59;
          v61 = v59[1];
          if ((v60 | (v61 << 16)) == 0x80008000)
          {
            v42 = 0;
            v43 = __nel;
            goto LABEL_71;
          }

          v62 = (v60 + ((v60 & 0x8000) == 0) + 3) >> 3;
          v63 = (v61 + ((v61 & 0x8000) == 0) + 3) >> 3;
          v64 = __nel;
          if (__nel < 1)
          {
LABEL_63:
            v67 = &v410[2 * __nel - 1];
            *v67 = v62;
            *(v67 + 1) = v63;
            v67[1] = 1;
            p_nel = &__nel;
          }

          else
          {
            p_base = &__base;
            v66 = __nel;
            while (((*p_base + ((*p_base & 0x8000) == 0) + 3) ^ (((v62 & 0x8000u) == 0) + v62 + 3)) > 7 || ((p_base[1] + ((p_base[1] & 0x8000) == 0) + 3) ^ (((v63 & 0x8000u) == 0) + v63 + 3)) > 7)
            {
              p_base += 4;
              if (!--v66)
              {
                goto LABEL_63;
              }
            }

            v69 = *(p_base + 1);
            p_nel = (p_base + 2);
            v64 = v69;
          }

          *p_nel = v64 + 1;
          ++v58;
          v11 = v360;
        }

        while (v58 < v52);
        if (++v51 < v56)
        {
          continue;
        }

        break;
      }

      v42 = 2 * v52 * v56;
      v43 = __nel;
      if (__nel >= 3)
      {
        qsort(&__base, __nel, 8uLL, sub_277A5031C);
      }
    }
  }

LABEL_71:
  v340 = v42;
  if (v43 >= 2)
  {
    v70 = 2;
  }

  else
  {
    v70 = v43;
  }

  if (*(v11 + 32) && !*(v13 + 24) && v43 >= 1)
  {
    v71 = 0;
    v72 = *(a8 + 5284);
    v73 = *(a8 + 5284);
    do
    {
      v74 = &v410[2 * v71 - 1];
      if (v72 >= 1)
      {
        v76 = (a8 + 5280);
        v77 = (a8 + 5266);
        for (i = v72; i; --i)
        {
          v80 = *v76++;
          v81 = *(*(a8 + 96) + 32 * v80 + 4 * v353);
          v75 = *v74;
          v82 = *(v77 - 1) - v75;
          if (v82 < 0)
          {
            v82 = v75 - *(v77 - 1);
          }

          v79 = v74[1];
          v83 = *v77 - v79;
          if (v83 < 0)
          {
            v83 = v79 - *v77;
          }

          if (v81)
          {
            v84 = *(v11 + 32);
            if (v84 < 2)
            {
              if (v84 == 1 && (v83 + v82) < 2)
              {
                goto LABEL_96;
              }
            }

            else if (v82 <= 1 && v83 < 2)
            {
LABEL_96:
              *v74 = -2147450880;
              goto LABEL_97;
            }
          }

          v77 += 2;
        }
      }

      if ((*(v13 + 167) & 0x30) != 0x20)
      {
        *(a8 + 5264 + 4 * v73) = *v74;
        *(a8 + 5280 + *(a8 + 5284)) = (*(v13 + 167) >> 4) & 3;
        v73 = *(a8 + 5284) + 1;
        *(a8 + 5284) = v73;
      }

LABEL_97:
      ++v71;
    }

    while (v71 != v70);
  }

  v86 = *v11;
  v87 = *(v11 + 1);
  v88 = byte_277C3CAE8[a3];
  if (byte_277C3CAFE[a3] < v88)
  {
    v88 = byte_277C3CAFE[a3];
  }

  if (v87 == 1 && v88 > 0x1F || v87 >= 2 && v88 >= 0x10 && v33[707] <= 3u && *v345 <= 191)
  {
    if (v86 > 0xA)
    {
      LODWORD(v86) = 0;
    }

    else
    {
      LODWORD(v86) = byte_277C39598[v86];
    }
  }

  v89 = v359[31].n128_u32[2];
  v354 = v86;
  if (v89 == *(v358 + 99971))
  {
    v90 = (v358 + 49589);
  }

  else if (v89 == *(v358 + 105529))
  {
    v90 = (v358 + 52368);
  }

  else
  {
    v90 = v359[8047].n128_i64 + 4;
    if (v89 != v359[8245].n128_u32[794 * byte_277C3D03C[v86] + 2])
    {
      (off_28866F278[byte_277C3D03C[byte_277C3D03C[v86]]])(v90 + 3176 * byte_277C3D03C[byte_277C3D03C[v86]]);
      v90 = v359[8047].n128_i64 + 4;
      LODWORD(v86) = v354;
    }
  }

  v91 = a7;
  if (a5 != 0x7FFFFFFF)
  {
    v92 = v90 + 3176 * byte_277C3D03C[v86];
    if (a5 < 1)
    {
      v32 = *(v92 + 2992);
    }

    else
    {
      v93 = ~v32--;
      v94 = v93 + *(v92 + 2992);
      do
      {
        ++v32;
        v95 = *(v92 + 3084 + 4 * v94) <= 2 * a5 || v94 <= 0;
        --v94;
      }

      while (!v95);
    }
  }

  v400 = 0;
  v399 = 0;
  *a7 = -2147450880;
  v352 = v13;
  v96 = *(v358 + 160935) && *(*v358 + *(v358 + 463456) + 400) == 3 && v350[457] < 3;
  v397 = 0u;
  v398 = 0u;
  v395 = 0u;
  v396 = 0u;
  v393 = 0u;
  v394 = 0u;
  v391 = 0u;
  v392 = 0u;
  v389 = 0u;
  v390 = 0u;
  v387 = 0u;
  v388 = 0u;
  v385 = 0u;
  v386 = 0u;
  v339 = a8;
  if (*(v352 + 24) != 1)
  {
    if (!*(v352 + 24) && v43 >= 1)
    {
      v97 = 0;
      v98 = v410;
      v362 = 0x7FFFFFFF;
      v347 = 0x8000;
      LOWORD(v349) = 0x8000;
      while (1)
      {
        v99 = *(v98 - 1);
        LODWORD(v369[0]) = 0;
        LODWORD(v366) = 0;
        v373.n128_u32[2] = 0;
        v373.n128_u64[0] = 0;
        if (v99 != -2147450880)
        {
          v41 = v41 & 0xFFFFFFFF00000000 | v99;
          v100 = v90;
          sub_277B99138(&v385, v358, v359, a3, &__nel_4, v41, v90, v86, v96);
          if (v11[12])
          {
            if (*(v11 + 25))
            {
              v101 = v408;
            }

            else
            {
              v101 = 0;
            }
          }

          else
          {
            v101 = 0;
          }

          v43 = v43 & 0xFFFFFFFF00000000 | v99;
          v102 = sub_277B99630(v43, &v385, v32, v101, v369, &v373, &v366);
          v91 = a7;
          if (v102 < v362)
          {
            *a7 = v369[0];
            v399 = v373.n128_u64[0];
            v400 = v373.n128_u32[2];
            v347 = v366;
            v349 = WORD1(v366);
            v362 = v102;
          }

          v97 += *v98;
          LODWORD(v86) = v354;
          if (3 * v340 < 4 * v97)
          {
            goto LABEL_246;
          }

          v90 = v100;
        }

        v98 += 2;
        if (!--v70)
        {
          goto LABEL_246;
        }
      }
    }

    v362 = 0x7FFFFFFF;
    LOWORD(v349) = 0x8000;
    goto LABEL_245;
  }

  sub_277B99138(&v385, v358, v359, a3, &__nel_4, v41, v90, v86, v96);
  if (!v394)
  {
    v114 = v390;
    LODWORD(v369[0]) = 0;
    LODWORD(v366) = 0;
    v408[0] = 0;
    v362 = 0x7FFFFFFF;
    if (sub_277B9F838(&v385, v41, v369, v32, &v366) == 0x7FFFFFFF)
    {
      goto LABEL_166;
    }

    v115 = v369[0];
    v116 = WORD1(v369[0]);
    v373.n128_u32[0] = 0;
    v117 = (*(*(&v385 + 1) + 96))(*v386 + SWORD1(v369[0]) + *(v386 + 24) * SLOWORD(v369[0]));
    if (BYTE4(v395) == 4)
    {
      LODWORD(v118) = 0;
    }

    else
    {
      v186 = 8 * v115;
      v187 = **(&v394 + 1);
      v188 = 8 * v115 - v187;
      LOWORD(v189) = v188;
      v190 = *(*(&v394 + 1) + 2);
      v191 = (8 * v116 - v190);
      if (v188 < 0)
      {
        v189 = -v188;
      }

      if (v191 < 0)
      {
        v191 = -v191;
      }

      if (BYTE4(v395) != 3)
      {
        v11 = v360;
        if (BYTE4(v395) == 1)
        {
          LODWORD(v118) = (v191 + v189) >> 2;
        }

        else if (BYTE4(v395))
        {
          LODWORD(v118) = 0;
        }

        else
        {
          v118 = ((*(v396 + 4 * v188) + *(*(&v396 + 1) + 4 * (8 * v116 - v190)) + *(*(&v395 + 1) + ((4 * (v190 != (8 * v116))) | (8 * (v187 != v186))))) * v397 + 0x2000) >> 14;
        }

        goto LABEL_165;
      }

      LODWORD(v118) = (v191 + v189) >> 3;
    }

    v11 = v360;
LABEL_165:
    v362 = v118 + v117;
LABEL_166:
    v91 = a7;
    *a7 = v369[0];
    v119 = *(v114 + 2992) + ~v32;
    v120 = v366;
    if (v366 < v119)
    {
      v121 = v32 + v366 + 1;
      do
      {
        if (v408[0])
        {
          --v408[0];
        }

        else
        {
          v114 = v114 & 0xFFFFFFFF00000000 | v41;
          if (sub_277B9F838(&v385, v114, v369, v121, v408) == 0x7FFFFFFF)
          {
            v91 = a7;
          }

          else
          {
            v122 = v369[0];
            v123 = WORD1(v369[0]);
            v373.n128_u32[0] = 0;
            v124 = (*(*(&v385 + 1) + 96))(*v386 + SWORD1(v369[0]) + *(v386 + 24) * SLOWORD(v369[0]));
            if (BYTE4(v395) == 4)
            {
              LODWORD(v125) = 0;
              v91 = a7;
              v11 = v360;
            }

            else
            {
              v127 = 8 * v122;
              v128 = **(&v394 + 1);
              v129 = 8 * v122 - v128;
              LOWORD(v130) = v129;
              v131 = *(*(&v394 + 1) + 2);
              v132 = (8 * v123 - v131);
              if (v129 < 0)
              {
                v130 = -v129;
              }

              if (v132 < 0)
              {
                v132 = -v132;
              }

              if (BYTE4(v395) == 3)
              {
                LODWORD(v125) = (v132 + v130) >> 3;
                v91 = a7;
                v11 = v360;
              }

              else
              {
                v91 = a7;
                v11 = v360;
                if (BYTE4(v395) == 1)
                {
                  LODWORD(v125) = (v132 + v130) >> 2;
                }

                else if (BYTE4(v395))
                {
                  LODWORD(v125) = 0;
                }

                else
                {
                  v125 = ((*(v396 + 4 * v129) + *(*(&v396 + 1) + 4 * (8 * v123 - v131)) + *(*(&v395 + 1) + ((4 * (v131 != (8 * v123))) | (8 * (v128 != v127))))) * v397 + 0x2000) >> 14;
                }
              }
            }

            v126 = v125 + v124;
            if (v126 < v362)
            {
              *v91 = v369[0];
              v362 = v126;
            }
          }
        }

        ++v120;
        ++v121;
      }

      while (v120 < v119);
    }

    goto LABEL_244;
  }

  v103 = v348 >> 3;
  v104 = v346 >> 3;
  if (v346 >> 3 >= SHIDWORD(v390))
  {
    LOWORD(v104) = WORD6(v390);
  }

  if (SDWORD2(v390) > v346 >> 3)
  {
    LOWORD(v104) = WORD4(v390);
  }

  a7[1] = v104;
  v105 = v348 >> 3;
  if (v103 >= SDWORD1(v391))
  {
    v105 = WORD2(v391);
  }

  if (v391 <= v103)
  {
    v106 = v105;
  }

  else
  {
    v106 = v391;
  }

  *a7 = v106;
  v107 = v386;
  v363 = *(&v385 + 1);
  v109 = (*(*(&v385 + 1) + 88))(*v386 + *(v386 + 24) * v106 + v104);
  v91 = a7;
  v110 = 0;
  v109.n128_u16[0] = *a7;
  v109.n128_u16[2] = a7[1];
  v111.i16[2] = WORD1(v395);
  v111.i16[0] = v395;
  v112 = vshl_n_s32(vsub_s32(v109.n128_u64[0], v111), 3uLL);
  if (BYTE4(v395) > 1u)
  {
    if (BYTE4(v395) == 2)
    {
      v134 = vabs_s32(vshr_n_s32(vshl_n_s32(v112, 0x10uLL), 0x10uLL));
      v110 = (15 * (v134.i32[1] + v134.i32[0])) >> 3;
    }

    else if (BYTE4(v395) == 3)
    {
      v133 = vabs_s32(vshr_n_s32(vshl_n_s32(v112, 0x10uLL), 0x10uLL));
      v110 = v133.i32[1] + v133.i32[0];
    }
  }

  else if (BYTE4(v395))
  {
    if (BYTE4(v395) == 1)
    {
      v113 = vabs_s32(vshr_n_s32(vshl_n_s32(v112, 0x10uLL), 0x10uLL));
      v110 = 4 * (v113.i32[1] + v113.i32[0]);
    }
  }

  else
  {
    v110 = ((*(v396 + 4 * v112.i16[0]) + *(*(&v396 + 1) + 4 * v112.i16[2]) + *(*(&v395 + 1) + ((4 * (v112.u16[2] != 0)) | (8 * (v112.u16[0] != 0))))) * DWORD1(v397) + 256) >> 9;
  }

  v135 = 0;
  v136 = v110 + v108;
  do
  {
    v137 = 0;
    v138 = -1;
    v139 = &word_277BB7DE2;
    do
    {
      v140 = (*v139 + v91[1]);
      if (SDWORD2(v390) <= v140 && SHIDWORD(v390) >= v140)
      {
        v142 = *(v139 - 1) + *v91;
        if (v391 <= v142 && SDWORD1(v391) >= v142)
        {
          v144 = (*(v363 + 88))(*v107 + v140 + *(v107 + 24) * v142);
          if (v144 >= v136)
          {
            v91 = a7;
          }

          else
          {
            LOWORD(v145) = 8 * (v142 - v395);
            LOWORD(v146) = 8 * (v140 - WORD1(v395));
            if (BYTE4(v395) > 1u)
            {
              v145 = v145;
              if ((v145 & 0x8000u) == 0)
              {
                v149 = v145;
              }

              else
              {
                v149 = (-8 * (v142 - v395));
              }

              v146 = v146;
              if ((v146 & 0x8000u) == 0)
              {
                v150 = v146;
              }

              else
              {
                v150 = (-8 * (v140 - WORD1(v395)));
              }

              v151 = (15 * (v150 + v149)) >> 3;
              if ((v145 & 0x8000u) != 0)
              {
                v145 = (-8 * (v142 - v395));
              }

              if ((v146 & 0x8000u) != 0)
              {
                v146 = (-8 * (v140 - WORD1(v395)));
              }

              v152 = v146 + v145;
              if (BYTE4(v395) != 3)
              {
                v152 = 0;
              }

              if (BYTE4(v395) == 2)
              {
                v148 = v151;
              }

              else
              {
                v148 = v152;
              }

              v91 = a7;
            }

            else
            {
              v91 = a7;
              if (BYTE4(v395))
              {
                v145 = v145;
                if ((v145 & 0x8000u) != 0)
                {
                  v145 = (-8 * (v142 - v395));
                }

                v146 = v146;
                if ((v146 & 0x8000u) != 0)
                {
                  v146 = (-8 * (v140 - WORD1(v395)));
                }

                v147 = 4 * (v146 + v145);
                if (BYTE4(v395) == 1)
                {
                  v148 = v147;
                }

                else
                {
                  v148 = 0;
                }
              }

              else
              {
                v148 = ((*(v396 + 4 * (8 * (v142 - v395))) + *(*(&v396 + 1) + 4 * (8 * (v140 - WORD1(v395)))) + *(*(&v395 + 1) + ((4 * ((8 * (v140 - WORD1(v395))) != 0)) | (8 * ((8 * (v142 - v395)) != 0))))) * DWORD1(v397) + 256) >> 9;
              }
            }

            v153 = v148 + v144;
            if (v153 < v136)
            {
              v136 = v153;
              v138 = v137;
            }
          }
        }
      }

      v139 += 2;
      ++v137;
    }

    while (v137 != 4);
    if (v138 == -1)
    {
      break;
    }

    v154 = (&unk_277BB7DE0 + 4 * v138);
    *v91 += *v154;
    v91[1] += v154[1];
    ++v135;
  }

  while (v135 != 8);
  v362 = 0x7FFFFFFF;
  if (v136 == 0x7FFFFFFF)
  {
    v347 = 0x8000;
    LOWORD(v349) = 0x8000;
    v11 = v360;
    goto LABEL_246;
  }

  v155 = *v91;
  v156 = v91[1];
  v373.n128_u32[0] = 0;
  v157 = (*(*(&v385 + 1) + 96))(*v386 + v156 + *(v386 + 24) * v155);
  v11 = v360;
  if (BYTE4(v395) == 4)
  {
    LODWORD(v158) = 0;
  }

  else
  {
    v182 = **(&v394 + 1);
    v183 = (8 * v155 - v182);
    v184 = *(*(&v394 + 1) + 2);
    v185 = (8 * v156 - v184);
    if (v183 < 0)
    {
      v183 = -v183;
    }

    if (v185 < 0)
    {
      v185 = -v185;
    }

    if (BYTE4(v395) != 3)
    {
      v91 = a7;
      if (BYTE4(v395) == 1)
      {
        LODWORD(v158) = (v185 + v183) >> 2;
      }

      else if (BYTE4(v395))
      {
        LODWORD(v158) = 0;
      }

      else
      {
        v158 = ((*(v396 + 4 * (8 * v155 - v182)) + *(*(&v396 + 1) + 4 * (8 * v156 - v184)) + *(*(&v395 + 1) + ((4 * (v184 != (8 * v156))) | (8 * (v182 != (8 * v155)))))) * v397 + 0x2000) >> 14;
      }

      goto LABEL_243;
    }

    LODWORD(v158) = (v185 + v183) >> 3;
  }

  v91 = a7;
LABEL_243:
  v362 = v158 + v157;
LABEL_244:
  LOWORD(v349) = 0x8000;
LABEL_245:
  v347 = 0x8000;
LABEL_246:
  if (*v91 == -2147450880)
  {
    return;
  }

  v159 = v351;
  if ((v342 & 1) == 0)
  {
    v160 = v359 + 30;
    v161 = v411;
    do
    {
      v162 = *v161;
      v163 = v161[1];
      v161 += 2;
      *v160 = v162;
      v160[1] = v163;
      v160 += 163;
      --v159;
    }

    while (v159);
  }

  v164 = v353;
  if (*(v11 + 47) < 2 || *(v352 + 24) || (v165 = *v91, *v91 == -2147450880) || (v166 = 8 * v165, v167 = (v165 >> 13) & 0xFFF8, v168 = (*(v352 + 167) >> 4) & 3, v169 = (108 * (*(**(v343 + 524320) + 4 * (v166 - __nel_4)) + *(*(*(v343 + 524320) + 8) + 4 * (v167 - HIWORD(__nel_4))) + *(v343 + ((4 * (v167 != HIWORD(__nel_4))) | (8 * ((v166 & 0xFFF8) != __nel_4))))) + 64) >> 7, v170 = v166 & 0xFFF8FFF8, v171 = &a6[5 * v168], v171[1] = v170, v171[2] = v169, v171[3] = v362, !v168))
  {
LABEL_264:
    if (*(v344 + 14) == 1)
    {
      *v91 = (8 * (*v91 & 0x1FFF)) | (v91[1] << 19);
    }

    if (v362 == 0x7FFFFFFF || (*(v344 + 14) & 1) != 0)
    {
      goto LABEL_268;
    }

    memset_pattern16(__b, &unk_277BB7D80, 0xCuLL);
    v384 = 0;
    v383 = 0;
    v381 = 0u;
    v382 = 0u;
    v379 = 0u;
    v380 = 0u;
    v377 = 0u;
    v378 = 0u;
    v375 = 0u;
    v376 = 0u;
    v373 = 0u;
    v374 = 0u;
    v178 = sub_277B99474(&v373, v358, v359, a3, &__nel_4, v408);
    v91 = a7;
    v179 = (8 * (*a7 & 0x1FFF)) | (a7[1] << 19);
    if (*(v352 + 24) != 1)
    {
      if (!*(v352 + 24))
      {
        if (v360[22])
        {
          v180 = v347 | (v349 << 16);
          v181 = v180 != -2147450880 && v180 != *a7 && *(v360 + 31) < 2;
          v206 = v359 + 4 * v353;
          v207 = (*(v360 + 128))(v359 + 26, v358 + 30702, &v373, v179, &v399, a7, &v384, v206 + 153176, v178, __b);
          v91 = a7;
          if (v181)
          {
            v208 = v207;
            v372 = 0;
            v209 = v359[191].n128_u64[0];
            v369[0] = v359[28].n128_u64[0];
            v369[1] = v209;
            v369[2] = v359[354].n128_u64[0];
            LODWORD(v209) = v359[192].n128_u32[2];
            v370 = v359[29].n128_u32[2];
            v371 = v209;
            LODWORD(v372) = v359[355].n128_u32[2];
            if (*(v360 + 31))
            {
              v210 = 0x7FFFFFFFFFFFFFFFLL;
              v211 = v352;
            }

            else
            {
              v211 = v352;
              *(v352 + 8) = *a7;
              sub_2779CCAB4();
              sub_277A8E3DC(v359, a3, 0);
              v366 = 0u;
              v367 = 0u;
              v368 = 1;
              sub_277A3D20C(v358, v359, &v366, 0x7FFFFFFFFFFFFFFFLL, a3, byte_277C3BD80[a3]);
              v91 = a7;
              v210 = (((v366 + ((108 * (*(**(v343 + 524320) + 4 * (*a7 - __nel_4)) + *(*(*(v343 + 524320) + 8) + 4 * (a7[1] - HIWORD(__nel_4))) + *(v343 + ((4 * (a7[1] != HIWORD(__nel_4))) | (8 * (*a7 != __nel_4))))) + 64) >> 7)) * v345[4] + 256) >> 9) + (*(&v366 + 1) << 7);
            }

            v406 = 0;
            if (SDWORD2(v374) <= (8 * v349) && SHIDWORD(v374) >= (8 * v349) && v375 <= (8 * v347) && SDWORD1(v375) >= (8 * v347))
            {
              v405 = 0;
              v331 = (*(v360 + 128))(v359 + 26, v358 + 30702, &v373, ((v349 & 0x1FFF) << 19) | (8 * (v347 & 0x1FFF)), 0, &v406, &v384, &v405, __b);
              if (*(v360 + 31))
              {
                v91 = a7;
                if (v331 < v208)
                {
                  *a7 = v406;
                  *(v206 + 38294) = v405;
                }
              }

              else
              {
                *(v211 + 8) = v406;
                sub_2779CCAB4();
                sub_277A8E3DC(v359, a3, 0);
                v366 = 0u;
                v367 = 0u;
                v368 = 1;
                sub_277A3D20C(v358, v359, &v366, 0x7FFFFFFFFFFFFFFFLL, a3, byte_277C3BD80[a3]);
                v91 = a7;
                if ((((v366 + ((108 * (*(**(v343 + 524320) + 4 * (v406 - __nel_4)) + *(*(*(v343 + 524320) + 8) + 4 * (HIWORD(v406) - HIWORD(__nel_4))) + *(v343 + ((4 * (HIWORD(v406) != HIWORD(__nel_4))) | (8 * (v406 != __nel_4))))) + 64) >> 7)) * v345[4] + 256) >> 9) + (*(&v366 + 1) << 7) < v210)
                {
                  *a7 = v406;
                  *(v206 + 38294) = v405;
                }
              }
            }

            v164 = v353;
          }
        }

        else
        {
          (*(v360 + 128))(v359 + 26, v358 + 30702, &v373, v179, &v399, a7, &v384, &v359[9573].n128_i64[1] + 4 * v353, v178, 0);
          v91 = a7;
        }
      }

LABEL_612:
      if (v339)
      {
        if (*(v360 + 47) >= 1 && !*(v352 + 24))
        {
          v332 = *v91;
          if (*v91 != -2147450880)
          {
            v177 = (108 * (*(**(v343 + 524320) + 4 * (v332 - __nel_4)) + *(*(*(v343 + 524320) + 8) + 4 * (HIWORD(v332) - HIWORD(__nel_4))) + *(v343 + ((4 * (HIWORD(v332) != HIWORD(__nel_4))) | (8 * (__nel_4 != v332))))) + 64) >> 7;
            if (((*(v352 + 167) >> 4) & 3) != 0)
            {
              v333 = &a6[5 * ((*(v352 + 167) >> 4) & 3)];
              v334 = 4 * v164;
              v335 = a6 + 4;
              v336 = (*(v352 + 167) >> 4) & 3;
              while (1)
              {
                if (*(v339[12] + v334) && v332 == *(v339[10] + v334))
                {
                  if (*v335)
                  {
                    v337 = &a6[5 * ((*(v352 + 167) >> 4) & 3) + 4];
                    goto LABEL_626;
                  }

                  if (*(v335 - 4) + *(v339[11] + v334) <= *v333 + v177)
                  {
                    break;
                  }
                }

                v334 += 32;
                v335 += 5;
                if (!--v336)
                {
                  goto LABEL_269;
                }
              }

              v337 = v333 + 4;
LABEL_626:
              *v337 = 1;
            }

            goto LABEL_269;
          }
        }
      }

LABEL_268:
      v177 = (108 * (*(**(v343 + 524320) + 4 * (*v91 - __nel_4)) + *(*(*(v343 + 524320) + 8) + 4 * (v91[1] - HIWORD(__nel_4))) + *(v343 + ((4 * (v91[1] != HIWORD(__nel_4))) | (8 * (*v91 != __nel_4))))) + 64) >> 7;
LABEL_269:
      *a4 = v177;
      return;
    }

    v192 = v374;
    v357 = DWORD1(v374);
    v193 = v379;
    if (v373.n128_u32[0])
    {
      v194 = 3;
    }

    else
    {
      v194 = 2;
    }

    if (3 - v374 >= v194)
    {
      v195 = v194;
    }

    else
    {
      v195 = 3 - v374;
    }

    *a7 = v179;
    v355 = v359 + 4 * v353;
    if (v193)
    {
      v196 = sub_277BA3CB8();
      v384 = v196;
      if (BYTE4(v376) == 4)
      {
        LODWORD(v197) = 0;
        v91 = a7;
LABEL_334:
        v364 = v197 + v196;
        if (v192 > 2)
        {
          goto LABEL_612;
        }

        v212 = 4;
        while (1)
        {
          v213 = *v91;
          v214 = v91[1];
          LOWORD(v366) = v213;
          WORD1(v366) = v214 - v212;
          LOWORD(v406) = v213;
          HIWORD(v406) = v214 + v212;
          LOWORD(v405) = v213 - v212;
          HIWORD(v405) = v214;
          LOWORD(v404) = v213 + v212;
          HIWORD(v404) = v214;
          v215 = v366;
          v216 = DWORD2(v374);
          v218 = v366 >> 16 < SDWORD2(v374) || v366 >> 16 > SHIDWORD(v374);
          if (v379)
          {
            if (v218)
            {
              v219 = 0x7FFFFFFF;
            }

            else
            {
              v219 = 0x7FFFFFFF;
              if (v366 >= v375 && v366 <= SDWORD1(v375))
              {
                LODWORD(v369[0]) = 0;
                v221 = sub_277BA3CB8();
                if (BYTE4(v376) == 4)
                {
                  LODWORD(v222) = 0;
                  v91 = a7;
                }

                else
                {
                  v284 = **(&v375 + 1);
                  v285 = (v215 - v284);
                  v286 = *(*(&v375 + 1) + 2);
                  v287 = (HIWORD(v215) - v286);
                  if (v285 < 0)
                  {
                    v285 = -v285;
                  }

                  if (v287 < 0)
                  {
                    v287 = -v287;
                  }

                  v91 = a7;
                  if (BYTE4(v376) == 3)
                  {
                    LODWORD(v222) = (v287 + v285) >> 3;
                  }

                  else if (BYTE4(v376) == 1)
                  {
                    LODWORD(v222) = (v287 + v285) >> 2;
                  }

                  else if (BYTE4(v376))
                  {
                    LODWORD(v222) = 0;
                  }

                  else
                  {
                    v222 = ((*(v377 + 4 * (v215 - v284)) + *(*(&v377 + 1) + 4 * (HIWORD(v215) - v286)) + *(*(&v376 + 1) + ((4 * (v286 != HIWORD(v215))) | (8 * (v284 != v215))))) * v378 + 0x2000) >> 14;
                  }
                }

                v219 = v222 + v221;
                if (v222 + v221 < v364)
                {
                  *v91 = v215;
                  v384 = v221;
                  *(v355 + 38294) = v369[0];
                  v364 = v222 + v221;
                }

                v216 = DWORD2(v374);
              }
            }

            v223 = v406;
            v224 = 0x7FFFFFFF;
            if (v406 >> 16 >= v216 && v406 >> 16 <= SHIDWORD(v374) && v406 >= v375 && v406 <= SDWORD1(v375))
            {
              LODWORD(v369[0]) = 0;
              v225 = sub_277BA3CB8();
              if (BYTE4(v376) == 4)
              {
                LODWORD(v226) = 0;
                v91 = a7;
              }

              else
              {
                v288 = **(&v375 + 1);
                v289 = (v223 - v288);
                v290 = *(*(&v375 + 1) + 2);
                v291 = (HIWORD(v223) - v290);
                if (v289 < 0)
                {
                  v289 = -v289;
                }

                if (v291 < 0)
                {
                  v291 = -v291;
                }

                v91 = a7;
                if (BYTE4(v376) == 3)
                {
                  LODWORD(v226) = (v291 + v289) >> 3;
                }

                else if (BYTE4(v376) == 1)
                {
                  LODWORD(v226) = (v291 + v289) >> 2;
                }

                else if (BYTE4(v376))
                {
                  LODWORD(v226) = 0;
                }

                else
                {
                  v226 = ((*(v377 + 4 * (v223 - v288)) + *(*(&v377 + 1) + 4 * (HIWORD(v223) - v290)) + *(*(&v376 + 1) + ((4 * (v290 != HIWORD(v223))) | (8 * (v288 != v223))))) * v378 + 0x2000) >> 14;
                }
              }

              v224 = v226 + v225;
              if (v226 + v225 < v364)
              {
                *v91 = v223;
                v384 = v225;
                *(v355 + 38294) = v369[0];
                v364 = v226 + v225;
              }

              v216 = DWORD2(v374);
            }

            v227 = v405;
            v228 = 0x7FFFFFFF;
            if (v405 >> 16 >= v216 && v405 >> 16 <= SHIDWORD(v374) && v405 >= v375 && v405 <= SDWORD1(v375))
            {
              LODWORD(v369[0]) = 0;
              v229 = sub_277BA3CB8();
              if (BYTE4(v376) == 4)
              {
                LODWORD(v230) = 0;
                v91 = a7;
              }

              else
              {
                v292 = **(&v375 + 1);
                v293 = (v227 - v292);
                v294 = *(*(&v375 + 1) + 2);
                v295 = (HIWORD(v227) - v294);
                if (v293 < 0)
                {
                  v293 = -v293;
                }

                if (v295 < 0)
                {
                  v295 = -v295;
                }

                v91 = a7;
                if (BYTE4(v376) == 3)
                {
                  LODWORD(v230) = (v295 + v293) >> 3;
                }

                else if (BYTE4(v376) == 1)
                {
                  LODWORD(v230) = (v295 + v293) >> 2;
                }

                else if (BYTE4(v376))
                {
                  LODWORD(v230) = 0;
                }

                else
                {
                  v230 = ((*(v377 + 4 * (v227 - v292)) + *(*(&v377 + 1) + 4 * (HIWORD(v227) - v294)) + *(*(&v376 + 1) + ((4 * (v294 != HIWORD(v227))) | (8 * (v292 != v227))))) * v378 + 0x2000) >> 14;
                }
              }

              v228 = v230 + v229;
              if (v230 + v229 < v364)
              {
                *v91 = v227;
                v384 = v229;
                *(v355 + 38294) = v369[0];
                v364 = v230 + v229;
              }

              v216 = DWORD2(v374);
            }

            v231 = v404;
            v232 = 0x7FFFFFFF;
            if (v404 >> 16 >= v216 && v404 >> 16 <= SHIDWORD(v374) && v404 >= v375 && v404 <= SDWORD1(v375))
            {
              LODWORD(v369[0]) = 0;
              v233 = sub_277BA3CB8();
              if (BYTE4(v376) == 4)
              {
                LODWORD(v234) = 0;
                v91 = a7;
              }

              else
              {
                v296 = **(&v375 + 1);
                v297 = (v231 - v296);
                v298 = *(*(&v375 + 1) + 2);
                v299 = (HIWORD(v231) - v298);
                if (v297 < 0)
                {
                  v297 = -v297;
                }

                if (v299 < 0)
                {
                  v299 = -v299;
                }

                v91 = a7;
                if (BYTE4(v376) == 3)
                {
                  LODWORD(v234) = (v299 + v297) >> 3;
                }

                else if (BYTE4(v376) == 1)
                {
                  LODWORD(v234) = (v299 + v297) >> 2;
                }

                else if (BYTE4(v376))
                {
                  LODWORD(v234) = 0;
                }

                else
                {
                  v234 = ((*(v377 + 4 * (v231 - v296)) + *(*(&v377 + 1) + 4 * (HIWORD(v231) - v298)) + *(*(&v376 + 1) + ((4 * (v298 != HIWORD(v231))) | (8 * (v296 != v231))))) * v378 + 0x2000) >> 14;
                }
              }

              v232 = v234 + v233;
              if (v234 + v233 < v364)
              {
                *v91 = v231;
                v384 = v233;
                *(v355 + 38294) = v369[0];
                v364 = v234 + v233;
              }

              v216 = DWORD2(v374);
            }

            if (v228 > v232)
            {
              LOWORD(v235) = v212;
            }

            else
            {
              v235 = -v212;
            }

            if (v219 > v224)
            {
              LOWORD(v236) = v212;
            }

            else
            {
              v236 = -v212;
            }

            LOWORD(v403) = v213 + v235;
            HIWORD(v403) = v214 + v236;
            v237 = v403;
            if (v403 >> 16 >= v216 && v403 >> 16 <= SHIDWORD(v374) && v403 >= v375 && v403 <= SDWORD1(v375))
            {
              LODWORD(v369[0]) = 0;
              v238 = sub_277BA3CB8();
              if (BYTE4(v376) == 4)
              {
                LODWORD(v239) = 0;
                v91 = a7;
              }

              else
              {
                v300 = **(&v375 + 1);
                v301 = (v237 - v300);
                v302 = *(*(&v375 + 1) + 2);
                v303 = (HIWORD(v237) - v302);
                if (v301 < 0)
                {
                  v301 = -v301;
                }

                if (v303 < 0)
                {
                  v303 = -v303;
                }

                v91 = a7;
                if (BYTE4(v376) == 3)
                {
                  LODWORD(v239) = (v303 + v301) >> 3;
                }

                else if (BYTE4(v376) == 1)
                {
                  LODWORD(v239) = (v303 + v301) >> 2;
                }

                else if (BYTE4(v376))
                {
                  LODWORD(v239) = 0;
                }

                else
                {
                  v239 = ((*(v377 + 4 * (v237 - v300)) + *(*(&v377 + 1) + 4 * (HIWORD(v237) - v302)) + *(*(&v376 + 1) + ((4 * (v302 != HIWORD(v237))) | (8 * (v300 != v237))))) * v378 + 0x2000) >> 14;
                }
              }

              v240 = v239 + v238;
              if (v240 < v364)
              {
                *v91 = v237;
                v384 = v238;
                *(v355 + 38294) = v369[0];
                v364 = v240;
              }
            }

            v261 = v235 | (v236 << 16);
          }

          else
          {
            if (v218)
            {
              v220 = 0x7FFFFFFF;
            }

            else
            {
              v220 = 0x7FFFFFFF;
              if (v366 >= v375 && v366 <= SDWORD1(v375))
              {
                LODWORD(v369[0]) = 0;
                v241 = (*(*(&v378 + 1) + 104))(**(&v379 + 1) + *(*(&v379 + 1) + 24) * (v366 >> 3) + (v366 >> 19));
                v242 = 0;
                if (!BYTE4(v376))
                {
                  v243 = HIWORD(v215) - *(*(&v375 + 1) + 2);
                  v242 = ((*(v377 + 4 * (8 * (v215 - **(&v375 + 1)))) + *(*(&v377 + 1) + 4 * (8 * v243)) + *(*(&v376 + 1) + ((4 * (((8 * v243) & 0xFFF8) != 0)) | (8 * (((8 * (v215 - **(&v375 + 1))) & 0xFFF8) != 0))))) * v378 + 4096) >> 13;
                }

                v220 = v242 + v241;
                v91 = a7;
                if (v242 + v241 < v364)
                {
                  *a7 = v215;
                  v384 = v241;
                  *(v355 + 38294) = v369[0];
                  v364 = v242 + v241;
                }

                v216 = DWORD2(v374);
              }
            }

            v244 = v406;
            v245 = 0x7FFFFFFF;
            if (v406 >> 16 >= v216 && v406 >> 16 <= SHIDWORD(v374) && v406 >= v375 && v406 <= SDWORD1(v375))
            {
              LODWORD(v369[0]) = 0;
              v246 = (*(*(&v378 + 1) + 104))(**(&v379 + 1) + *(*(&v379 + 1) + 24) * (v406 >> 3) + (v406 >> 19));
              v247 = 0;
              if (!BYTE4(v376))
              {
                v248 = HIWORD(v244) - *(*(&v375 + 1) + 2);
                v247 = ((*(v377 + 4 * (8 * (v244 - **(&v375 + 1)))) + *(*(&v377 + 1) + 4 * (8 * v248)) + *(*(&v376 + 1) + ((4 * (((8 * v248) & 0xFFF8) != 0)) | (8 * (((8 * (v244 - **(&v375 + 1))) & 0xFFF8) != 0))))) * v378 + 4096) >> 13;
              }

              v245 = v247 + v246;
              v91 = a7;
              if (v247 + v246 < v364)
              {
                *a7 = v244;
                v384 = v246;
                *(v355 + 38294) = v369[0];
                v364 = v247 + v246;
              }

              v216 = DWORD2(v374);
            }

            v249 = v405;
            v250 = 0x7FFFFFFF;
            if (v405 >> 16 >= v216 && v405 >> 16 <= SHIDWORD(v374) && v405 >= v375 && v405 <= SDWORD1(v375))
            {
              LODWORD(v369[0]) = 0;
              v251 = (*(*(&v378 + 1) + 104))(**(&v379 + 1) + *(*(&v379 + 1) + 24) * (v405 >> 3) + (v405 >> 19));
              v252 = 0;
              if (!BYTE4(v376))
              {
                v253 = HIWORD(v249) - *(*(&v375 + 1) + 2);
                v252 = ((*(v377 + 4 * (8 * (v249 - **(&v375 + 1)))) + *(*(&v377 + 1) + 4 * (8 * v253)) + *(*(&v376 + 1) + ((4 * (((8 * v253) & 0xFFF8) != 0)) | (8 * (((8 * (v249 - **(&v375 + 1))) & 0xFFF8) != 0))))) * v378 + 4096) >> 13;
              }

              v250 = v252 + v251;
              v91 = a7;
              if (v252 + v251 < v364)
              {
                *a7 = v249;
                v384 = v251;
                *(v355 + 38294) = v369[0];
                v364 = v252 + v251;
              }

              v216 = DWORD2(v374);
            }

            v254 = v404;
            v255 = 0x7FFFFFFF;
            if (v404 >> 16 >= v216 && v404 >> 16 <= SHIDWORD(v374) && v404 >= v375 && v404 <= SDWORD1(v375))
            {
              LODWORD(v369[0]) = 0;
              v256 = (*(*(&v378 + 1) + 104))(**(&v379 + 1) + *(*(&v379 + 1) + 24) * (v404 >> 3) + (v404 >> 19));
              v257 = 0;
              if (!BYTE4(v376))
              {
                v258 = HIWORD(v254) - *(*(&v375 + 1) + 2);
                v257 = ((*(v377 + 4 * (8 * (v254 - **(&v375 + 1)))) + *(*(&v377 + 1) + 4 * (8 * v258)) + *(*(&v376 + 1) + ((4 * (((8 * v258) & 0xFFF8) != 0)) | (8 * (((8 * (v254 - **(&v375 + 1))) & 0xFFF8) != 0))))) * v378 + 4096) >> 13;
              }

              v255 = v257 + v256;
              v91 = a7;
              if (v257 + v256 < v364)
              {
                *a7 = v254;
                v384 = v256;
                *(v355 + 38294) = v369[0];
                v364 = v257 + v256;
              }

              v216 = DWORD2(v374);
            }

            if (v250 > v255)
            {
              LOWORD(v259) = v212;
            }

            else
            {
              v259 = -v212;
            }

            if (v220 > v245)
            {
              LOWORD(v260) = v212;
            }

            else
            {
              v260 = -v212;
            }

            v261 = v259 | (v260 << 16);
            v262 = v214 + v260;
            if (v216 <= (v214 + v260) && SHIDWORD(v374) >= v262)
            {
              v263 = v213 + v259;
              v264 = (v213 + v259);
              if (v375 <= v264 && SDWORD1(v375) >= v264)
              {
                LODWORD(v369[0]) = 0;
                v265 = (*(*(&v378 + 1) + 104))(**(&v379 + 1) + *(*(&v379 + 1) + 24) * (v264 >> 3) + (v262 >> 3));
                v266 = 0;
                if (!BYTE4(v376))
                {
                  v266 = ((*(v377 + 4 * (8 * (v264 - **(&v375 + 1)))) + *(*(&v377 + 1) + 4 * (8 * (v262 - *(*(&v375 + 1) + 2)))) + *(*(&v376 + 1) + ((4 * (((8 * (v262 - *(*(&v375 + 1) + 2))) & 0xFFF8) != 0)) | (8 * (((8 * (v264 - **(&v375 + 1))) & 0xFFF8) != 0))))) * v378 + 4096) >> 13;
                }

                v267 = v266 + v265;
                v91 = a7;
                if (v267 < v364)
                {
                  *a7 = v263 | (v262 << 16);
                  v384 = v265;
                  *(v355 + 38294) = v369[0];
                  v364 = v267;
                }
              }
            }
          }

          v268 = *v91;
          v164 = v353;
          if (v213 == v268)
          {
            v269 = v91[1];
            if (v214 == v269 || v357 <= 1)
            {
              goto LABEL_466;
            }

            v270 = HIWORD(v261);
            v261 = -v261;
          }

          else
          {
            if (v357 <= 1)
            {
              goto LABEL_466;
            }

            v270 = HIWORD(v261);
            v269 = v91[1];
            if (v269 == v214)
            {
              v270 = -v270;
            }
          }

          LOWORD(v366) = v261 + v268;
          WORD1(v366) = v269;
          LOWORD(v406) = v268;
          HIWORD(v406) = v269 + v270;
          LOWORD(v405) = v261 + v268;
          HIWORD(v405) = v269 + v270;
          v271 = v366;
          v272 = DWORD2(v374);
          v274 = v366 >> 16 < SDWORD2(v374) || v366 >> 16 > SHIDWORD(v374);
          if (v379)
          {
            v275 = 0;
            if (!v274 && v366 >= v375 && v366 <= SDWORD1(v375))
            {
              LODWORD(v369[0]) = 0;
              v276 = sub_277BA3CB8();
              if (BYTE4(v376) == 4)
              {
                LODWORD(v277) = 0;
                v91 = a7;
              }

              else
              {
                v304 = **(&v375 + 1);
                v305 = (v271 - v304);
                v306 = *(*(&v375 + 1) + 2);
                v307 = (HIWORD(v271) - v306);
                if (v305 < 0)
                {
                  v305 = -v305;
                }

                if (v307 < 0)
                {
                  v307 = -v307;
                }

                v91 = a7;
                if (BYTE4(v376) == 3)
                {
                  LODWORD(v277) = (v307 + v305) >> 3;
                }

                else if (BYTE4(v376) == 1)
                {
                  LODWORD(v277) = (v307 + v305) >> 2;
                }

                else if (BYTE4(v376))
                {
                  LODWORD(v277) = 0;
                }

                else
                {
                  v277 = ((*(v377 + 4 * (v271 - v304)) + *(*(&v377 + 1) + 4 * (HIWORD(v271) - v306)) + *(*(&v376 + 1) + ((4 * (v306 != HIWORD(v271))) | (8 * (v304 != v271))))) * v378 + 0x2000) >> 14;
                }
              }

              v278 = v277 + v276;
              if (v278 >= v364)
              {
                v275 = 0;
              }

              else
              {
                *v91 = v271;
                v384 = v276;
                *(v355 + 38294) = v369[0];
                v275 = 1;
                v364 = v278;
              }

              v272 = DWORD2(v374);
            }

            v308 = v406;
            if (v406 >> 16 >= v272 && v406 >> 16 <= SHIDWORD(v374) && v406 >= v375 && v406 <= SDWORD1(v375))
            {
              LODWORD(v369[0]) = 0;
              v309 = sub_277BA3CB8();
              if (BYTE4(v376) == 4)
              {
                LODWORD(v310) = 0;
                v91 = a7;
              }

              else
              {
                v316 = **(&v375 + 1);
                v317 = (v308 - v316);
                v318 = *(*(&v375 + 1) + 2);
                v319 = (HIWORD(v308) - v318);
                if (v317 < 0)
                {
                  v317 = -v317;
                }

                if (v319 < 0)
                {
                  v319 = -v319;
                }

                v91 = a7;
                if (BYTE4(v376) == 3)
                {
                  LODWORD(v310) = (v319 + v317) >> 3;
                }

                else if (BYTE4(v376) == 1)
                {
                  LODWORD(v310) = (v319 + v317) >> 2;
                }

                else if (BYTE4(v376))
                {
                  LODWORD(v310) = 0;
                }

                else
                {
                  v310 = ((*(v377 + 4 * (v308 - v316)) + *(*(&v377 + 1) + 4 * (HIWORD(v308) - v318)) + *(*(&v376 + 1) + ((4 * (v318 != HIWORD(v308))) | (8 * (v316 != v308))))) * v378 + 0x2000) >> 14;
                }
              }

              v311 = v310 + v309;
              if (v311 < v364)
              {
                *v91 = v308;
                v384 = v309;
                *(v355 + 38294) = v369[0];
                v275 = 1;
                v364 = v311;
              }
            }

            if (!v275)
            {
              goto LABEL_466;
            }

            v312 = v405;
            if (v405 >> 16 < SDWORD2(v374) || v405 >> 16 > SHIDWORD(v374) || v405 < v375 || v405 > SDWORD1(v375))
            {
              goto LABEL_466;
            }

            LODWORD(v369[0]) = 0;
            v313 = sub_277BA3CB8();
            if (BYTE4(v376) == 4)
            {
              LODWORD(v314) = 0;
              v91 = a7;
            }

            else
            {
              v320 = **(&v375 + 1);
              v321 = (v312 - v320);
              v322 = *(*(&v375 + 1) + 2);
              v323 = (HIWORD(v312) - v322);
              if (v321 < 0)
              {
                v321 = -v321;
              }

              if (v323 < 0)
              {
                v323 = -v323;
              }

              v91 = a7;
              if (BYTE4(v376) == 3)
              {
                LODWORD(v314) = (v323 + v321) >> 3;
              }

              else if (BYTE4(v376) == 1)
              {
                LODWORD(v314) = (v323 + v321) >> 2;
              }

              else if (BYTE4(v376))
              {
                LODWORD(v314) = 0;
              }

              else
              {
                v314 = ((*(v377 + 4 * (v312 - v320)) + *(*(&v377 + 1) + 4 * (HIWORD(v312) - v322)) + *(*(&v376 + 1) + ((4 * (v322 != HIWORD(v312))) | (8 * (v320 != v312))))) * v378 + 0x2000) >> 14;
              }
            }

            v315 = v314 + v313;
            if (v315 >= v364)
            {
              goto LABEL_466;
            }
          }

          else
          {
            v279 = 0;
            if (!v274 && v366 >= v375 && v366 <= SDWORD1(v375))
            {
              LODWORD(v369[0]) = 0;
              v280 = (*(*(&v378 + 1) + 104))(**(&v379 + 1) + *(*(&v379 + 1) + 24) * (v366 >> 3) + (v366 >> 19));
              v281 = 0;
              if (!BYTE4(v376))
              {
                v282 = HIWORD(v271) - *(*(&v375 + 1) + 2);
                v281 = ((*(v377 + 4 * (8 * (v271 - **(&v375 + 1)))) + *(*(&v377 + 1) + 4 * (8 * v282)) + *(*(&v376 + 1) + ((4 * (((8 * v282) & 0xFFF8) != 0)) | (8 * (((8 * (v271 - **(&v375 + 1))) & 0xFFF8) != 0))))) * v378 + 4096) >> 13;
              }

              v283 = v281 + v280;
              v91 = a7;
              if (v283 >= v364)
              {
                v279 = 0;
              }

              else
              {
                *a7 = v271;
                v384 = v280;
                *(v355 + 38294) = v369[0];
                v279 = 1;
                v364 = v283;
              }

              v272 = DWORD2(v374);
            }

            v324 = v406;
            if (v406 >> 16 >= v272 && v406 >> 16 <= SHIDWORD(v374) && v406 >= v375 && v406 <= SDWORD1(v375))
            {
              LODWORD(v369[0]) = 0;
              v325 = (*(*(&v378 + 1) + 104))(**(&v379 + 1) + *(*(&v379 + 1) + 24) * (v406 >> 3) + (v406 >> 19));
              v326 = 0;
              if (!BYTE4(v376))
              {
                v327 = HIWORD(v324) - *(*(&v375 + 1) + 2);
                v326 = ((*(v377 + 4 * (8 * (v324 - **(&v375 + 1)))) + *(*(&v377 + 1) + 4 * (8 * v327)) + *(*(&v376 + 1) + ((4 * (((8 * v327) & 0xFFF8) != 0)) | (8 * (((8 * (v324 - **(&v375 + 1))) & 0xFFF8) != 0))))) * v378 + 4096) >> 13;
              }

              v328 = v326 + v325;
              v91 = a7;
              if (v328 < v364)
              {
                *a7 = v324;
                v384 = v325;
                *(v355 + 38294) = v369[0];
                v279 = 1;
                v364 = v328;
              }
            }

            if (!v279)
            {
              goto LABEL_466;
            }

            v312 = v405;
            if (v405 >> 16 < SDWORD2(v374) || v405 >> 16 > SHIDWORD(v374) || v405 < v375 || v405 > SDWORD1(v375))
            {
              goto LABEL_466;
            }

            LODWORD(v369[0]) = 0;
            v313 = (*(*(&v378 + 1) + 104))(**(&v379 + 1) + *(*(&v379 + 1) + 24) * (v405 >> 3) + (v405 >> 19));
            v329 = 0;
            if (!BYTE4(v376))
            {
              v330 = HIWORD(v312) - *(*(&v375 + 1) + 2);
              v329 = ((*(v377 + 4 * (8 * (v312 - **(&v375 + 1)))) + *(*(&v377 + 1) + 4 * (8 * v330)) + *(*(&v376 + 1) + ((4 * (((8 * v330) & 0xFFF8) != 0)) | (8 * (((8 * (v312 - **(&v375 + 1))) & 0xFFF8) != 0))))) * v378 + 4096) >> 13;
            }

            v315 = v329 + v313;
            v91 = a7;
            if (v315 >= v364)
            {
              goto LABEL_466;
            }
          }

          *v91 = v312;
          v384 = v313;
          *(v355 + 38294) = v369[0];
          v364 = v315;
LABEL_466:
          v212 >>= 1;
          if (!--v195)
          {
            goto LABEL_612;
          }
        }
      }

      v198 = *a7;
      v199 = **(&v375 + 1);
      v200 = v198 - v199;
      v201 = (v198 - v199);
      v202 = a7[1];
      v203 = *(*(&v375 + 1) + 2);
      v204 = v202 - v203;
      v205 = (v202 - v203);
      if (v201 < 0)
      {
        v201 = -v201;
      }

      if (v205 < 0)
      {
        v205 = -v205;
      }

      v91 = a7;
      if (BYTE4(v376) != 3)
      {
        if (BYTE4(v376) != 1)
        {
          if (!BYTE4(v376))
          {
LABEL_316:
            v197 = ((*(v377 + 4 * v200) + *(*(&v377 + 1) + 4 * v204) + *(*(&v376 + 1) + ((4 * (v202 != v203)) | (8 * (v198 != v199))))) * v378 + 0x2000) >> 14;
            goto LABEL_334;
          }

LABEL_327:
          LODWORD(v197) = 0;
          goto LABEL_334;
        }

        goto LABEL_332;
      }
    }

    else
    {
      v196 = (*(*(&v378 + 1) + 96))(**(&v379 + 1), *(*(&v379 + 1) + 24), v382, *(&v382 + 1), &v359[9573].n128_i64[1] + 4 * v353, v178);
      v384 = v196;
      if (BYTE4(v376) == 4)
      {
        LODWORD(v197) = 0;
        v91 = a7;
        goto LABEL_334;
      }

      v91 = a7;
      v198 = *a7;
      v199 = **(&v375 + 1);
      v200 = v198 - v199;
      v201 = (v198 - v199);
      v202 = a7[1];
      v203 = *(*(&v375 + 1) + 2);
      v204 = v202 - v203;
      v205 = (v202 - v203);
      if (v201 < 0)
      {
        v201 = -v201;
      }

      if (v205 < 0)
      {
        v205 = -v205;
      }

      if (BYTE4(v376) != 3)
      {
        if (BYTE4(v376) != 1)
        {
          if (!BYTE4(v376))
          {
            goto LABEL_316;
          }

          goto LABEL_327;
        }

LABEL_332:
        LODWORD(v197) = (v205 + v201) >> 2;
        goto LABEL_334;
      }
    }

    LODWORD(v197) = (v205 + v201) >> 3;
    goto LABEL_334;
  }

  v172 = a6;
  while (v170 != v172[1] || *v172 + v172[2] > *v171 + v169)
  {
    v173 = v172[3];
    if (v173 != 0x7FFFFFFF)
    {
      v174 = *(v11 + 47);
      v175 = v174 == 3;
      if (v174 >= 3)
      {
        v176 = v173 >> 2;
        if (!v175)
        {
          v176 = 0;
        }

        if (v362 > v176 + v173 && *v172 < *v171)
        {
          break;
        }
      }
    }

    v172 += 5;
    if (!--v168)
    {
      goto LABEL_264;
    }
  }

  *v91 = -2147450880;
}

uint64_t sub_277A5031C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 4);
  v3 = *(a2 + 4);
  v4 = v2 < v3;
  if (v2 == v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = -1;
  }

  if (v4)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_277A50334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v9 = MEMORY[0x28223BE20]();
  v176 = v15;
  v182 = v16;
  v17 = v13;
  v18 = v10;
  v19 = v9;
  v243[1] = *MEMORY[0x277D85DE8];
  if (*(*(v9 + 270312) + 77))
  {
    v20 = 1;
  }

  else
  {
    v20 = 3;
  }

  v180 = v11;
  v177 = byte_277C3CAE8[v11];
  v178 = byte_277C3CAFE[v11];
  v21 = **(v10 + 8280);
  v243[0] = *v12;
  v22 = *(v21 + 16);
  v164 = v21;
  v23 = *(v21 + 17);
  v24 = *(v10 + 47560);
  v25 = *(v10 + 416);
  v240[0] = 0x7FFFFFFF7FFFFFFFLL;
  v26 = v22 - 1;
  v27 = *(v9 + 273688 + 8 * (v22 - 1));
  if (v26 > 7u || (v28 = *(v9 + 4 * v26 + 245856), v28 == -1))
  {
    v29 = 0;
  }

  else
  {
    v29 = *(v9 + 8 * v28 + 246032);
  }

  v185 = (v9 + 395680);
  v30 = v27 == v29 || v27 == 0;
  v31 = v27 + 1248;
  if (v30)
  {
    v31 = 0;
  }

  v210 = v31;
  v32 = v23 - 1;
  v33 = *(v9 + 273688 + 8 * (v23 - 1));
  v160 = v24;
  if (v32 > 7u || (v34 = *(v9 + 4 * v32 + 245856), v34 == -1))
  {
    v35 = v12;
    v36 = 0;
  }

  else
  {
    v35 = v12;
    v36 = *(v9 + 8 * v34 + 246032);
  }

  v37 = 0;
  *&v223[16] = 0;
  v38 = v33 == v36 || v33 == 0;
  v39 = v33 + 1248;
  v222 = 0uLL;
  *v223 = 0uLL;
  if (v38)
  {
    v39 = 0;
  }

  v40 = v239;
  if ((*(*(v10 + 8376) + 192) & 8) != 0)
  {
    v40 = (v239 >> 1);
  }

  v186 = v40;
  v220 = 0uLL;
  v221 = 0uLL;
  v189 = (v10 + 480);
  v218 = 0uLL;
  v219 = 0uLL;
  v175 = v9 + 245888;
  v216 = 0uLL;
  v217 = 0uLL;
  v214 = 0uLL;
  v215 = 0uLL;
  if ((0x10003uLL >> v11))
  {
    v41 = &off_27A71F730;
  }

  else
  {
    v41 = &off_27A71F770;
  }

  v174 = v41;
  v212 = 0uLL;
  v213 = 0uLL;
  if ((0x20005uLL >> v11))
  {
    v42 = &off_27A71F730;
  }

  else
  {
    v42 = &off_27A71F770;
  }

  v173 = v42;
  v43 = v178;
  if (v178 >= v177)
  {
    v43 = v177;
  }

  v181 = v43;
  v211 = 0uLL;
  v209 = v39;
  v165 = v10 + 128756;
  v166 = v9 + 418944;
  v208 = 0;
  v172 = v9 + 396712;
  if (2 * a9 <= 1)
  {
    v44 = 1;
  }

  else
  {
    v44 = 2 * a9;
  }

  v171 = v44;
  v45 = v25;
  v46 = vshl_n_s32(v25, 2uLL);
  v161 = v14;
  v168 = v13;
  v169 = v10;
  v170 = v35;
  v167 = v9;
  v188 = v20;
  while (1)
  {
    if (v37 > 1 && *(v35 + !(v37 & 1)) == *(v243 | (4 * !(v37 & 1))))
    {
      v47 = *(v35 + (v37 & 1));
      v48 = *(v243 | (4 * (v37 & 1)));
      if (v47 == v48 || ((v47 >> 3) | ((v47 >> 19) << 16)) == ((v48 >> 3) | ((v48 >> 19) << 16)))
      {
        break;
      }
    }

    v187 = v37 & 1;
    v184 = v37;
    v49 = 0;
    v50 = v241;
    v51 = &v210;
    v52 = 1;
    do
    {
      v53 = v52;
      v54 = **(v18 + 8280);
      if (*(v54 + 2) - 21 >= 2)
      {
        v55 = (*(v54 + 167) >> 4) & 3;
      }

      else
      {
        v55 = ((*(v54 + 167) >> 4) & 3) + 1;
      }

      *v50 = sub_277B1C4F0(v49, *(v54 + 16), *(v54 + 17), v55, v18 + 15472);
      v56 = *v51;
      if (*v51)
      {
        v57 = &v189[2 * v49];
        v58 = &v240[12 * v49 + 1];
        v59 = v188;
        do
        {
          v60 = v57[1];
          *v58 = *v57;
          v58[1] = v60;
          v58 += 2;
          v57 += 163;
          --v59;
        }

        while (v59);
        sub_27798E424(v18 + 416, v49, v56, v45.i32[0], v45.i32[1], 0, v188);
      }

      v52 = 0;
      v51 = &v209;
      v50 = &v242;
      v49 = 1;
    }

    while ((v53 & 1) != 0);
    v61 = v189[1];
    v235 = *v189;
    v236 = v61;
    v62 = *(v18 + 528);
    v237 = *(v18 + 512);
    v238 = v62;
    v63 = *(v18 + 11072);
    v64 = (*(*(v18 + 8376) + 192) >> 3) & 1;
    v65 = &v235 + 2 * (v187 ^ 1);
    *(&v218 + 1) = v46;
    *&v221 = 0;
    DWORD1(v218) = v177;
    *&v222 = __PAIR64__(v64, v63);
    *&v211 = 0;
    *&v223[12] = 0xFFFB900000000000;
    *&v223[20] = -290816;
    *&v217 = v174;
    *(&v217 + 1) = v173;
    *(&v221 + 1) = v175;
    v66 = v65[1];
    v219 = *v65;
    v220 = v66;
    v216 = 0uLL;
    v67 = 21 - v63;
    v68 = v63 <= 10;
    if (v63 <= 10)
    {
      v69 = 3;
    }

    else
    {
      v69 = v63 - 7;
    }

    if (v68)
    {
      v70 = 11;
    }

    else
    {
      v70 = v67;
    }

    LODWORD(v215) = 0;
    v214 = 0uLL;
    *(&v215 + 4) = __PAIR64__(v70, v69);
    LODWORD(v218) = v178;
    HIDWORD(v215) = 0;
    sub_2779CAFC0();
    v71 = v187;
    if (v187)
    {
      v72 = v238;
      *v189 = v237;
      v189[1] = v72;
    }

    v206 = 0u;
    v207 = 0u;
    v204 = 0u;
    v205 = 0u;
    v202 = 0u;
    v203 = 0u;
    v201 = 0u;
    v199 = 0u;
    v200 = 0u;
    v197 = 0u;
    v198 = 0u;
    v195 = 0u;
    v196 = 0u;
    v194 = 0u;
    v193 = 0;
    v192 = 0;
    v73 = *v185;
    v74 = *(v185 + 1);
    v75 = v188;
    if (v181 >= 0x20 && v74 == 1 || v181 >= 0x10 && v74 >= 2 && *(v18 + 89440) <= 3u && *(v18 + 16904) <= 191)
    {
      if (v73 > 0xA)
      {
        LODWORD(v73) = 0;
      }

      else
      {
        LODWORD(v73) = byte_277C39598[v73];
      }
    }

    v76 = *(v18 + 504);
    v77 = v172;
    if (v76 != *(v19 + 399884))
    {
      v77 = v166;
      if (v76 != *(v19 + 422116))
      {
        v77 = v165;
        if (v76 != *(v165 + 3176 * byte_277C3D03C[v73] + 3172))
        {
          (off_28866F278[byte_277C3D03C[byte_277C3D03C[v73]]])(v165 + 3176 * byte_277C3D03C[byte_277C3D03C[v73]]);
          v71 = v187;
          v77 = v165;
        }
      }
    }

    v78 = v35 + 2 * v71;
    v183 = v78;
    v79 = (((v78[1] + (v78[1] >= 0)) << 13) + 24576) & 0xFFFF0000 | ((*v78 + (*v78 >= 0) + 3) >> 3);
    v80 = &v241[4 * v71];
    sub_277B99138(&v194, v19, v18, v180, v80, (((v78[1] + (v78[1] >= 0)) << 13) + 24576) & 0xFFFF0000 | ((*v78 + (*v78 >= 0) + 3) >> 3), v77, v73, 0);
    *&v196 = v186;
    *(&v196 + 1) = v17;
    *&v197 = __PAIR64__(v187, v182);
    v179 = v80;
    if (*(v185 + 30) || *(v164 + 83) == 2)
    {
      LOBYTE(v227) = 0;
      v225 = 0u;
      v226 = 0u;
      v224 = 0u;
      v81 = v195;
      v82 = v79 >> 16;
      v83 = WORD4(v199);
      if (v79 >> 16 >= SHIDWORD(v199))
      {
        LOWORD(v82) = WORD6(v199);
      }

      if (SDWORD2(v199) <= v79 >> 16)
      {
        v83 = v82;
      }

      v84 = v200;
      v85 = WORD2(v200);
      if (v79 < SDWORD1(v200))
      {
        v85 = v79;
      }

      v86 = *(v195 + 24);
      HIWORD(v208) = v83;
      if (v200 <= v79)
      {
        v84 = v85;
      }

      WORD2(v208) = v84;
      v87 = *v195 + (v84 * v86 + v83);
      v88 = **(&v195 + 1);
      v191 = *(&v195 + 1);
      v89 = *(*(&v195 + 1) + 24);
      v190 = v86;
      if (v17)
      {
        v90 = (*(*(&v194 + 1) + 72))(v88, v89, v87);
      }

      else
      {
        v91 = (*(*(&v194 + 1) + 16))(v88, v89, v87);
      }

      v93 = 0;
      v91.n128_u16[2] = HIWORD(v208);
      v91.n128_u16[0] = WORD2(v208);
      v92.i16[2] = WORD1(v204);
      v92.i16[0] = v204;
      v91.n128_u64[0] = vshl_n_s32(vsub_s32(v91.n128_u64[0], v92), 3uLL);
      if (BYTE4(v204) > 1u)
      {
        if (BYTE4(v204) == 2)
        {
          v99 = vabs_s32(vshr_n_s32(vshl_n_s32(v91.n128_u64[0], 0x10uLL), 0x10uLL));
          v93 = (15 * (v99.i32[1] + v99.i32[0])) >> 3;
        }

        else if (BYTE4(v204) == 3)
        {
          v95 = vabs_s32(vshr_n_s32(vshl_n_s32(v91.n128_u64[0], 0x10uLL), 0x10uLL));
          v93 = v95.i32[1] + v95.i32[0];
        }
      }

      else if (BYTE4(v204))
      {
        if (BYTE4(v204) == 1)
        {
          v94 = vabs_s32(vshr_n_s32(vshl_n_s32(v91.n128_u64[0], 0x10uLL), 0x10uLL));
          v93 = 4 * (v94.i32[1] + v94.i32[0]);
        }
      }

      else
      {
        v93 = ((*(v205 + 4 * v91.n128_i16[0]) + *(*(&v205 + 1) + 4 * v91.n128_i16[2]) + *(*(&v204 + 1) + ((4 * (v91.n128_u16[2] != 0)) | (8 * (v91.n128_u16[0] != 0))))) * DWORD1(v206) + 256) >> 9;
      }

      v100 = 0;
      v96 = v93 + v90;
      BYTE8(v225) = 1;
      v101 = 24;
      do
      {
        v102 = 0;
        v103 = -1;
        v104 = &word_277C3CF8E;
        do
        {
          v105 = *(v104 + 1) + v101;
          if (v224.n128_u8[v105] != 1)
          {
            v106 = WORD2(v208);
            v107 = *(v104 - 1);
            v108 = HIWORD(v208);
            v109 = *v104;
            v224.n128_u8[v105] = 1;
            v110 = (v109 + v108);
            if (SDWORD2(v199) <= v110 && SHIDWORD(v199) >= v110)
            {
              v112 = v107 + v106;
              if (v200 <= (v107 + v106) && SDWORD1(v200) >= v112)
              {
                v113 = *v81 + v110 + *(v81 + 24) * v112;
                v114 = *v191;
                v115 = *(v191 + 6);
                if (*(&v196 + 1))
                {
                  v116 = (*(*(&v194 + 1) + 72))(v114, v115, v113, v190, v196, *(&v196 + 1), v197, DWORD1(v197));
                }

                else
                {
                  v116 = v196 ? (*(*(&v194 + 1) + 16))(v114, v115, v113, v190) : (*(&v206 + 1))(v114, v115, v113, v190);
                }

                if (v116 < v96)
                {
                  v117 = 0;
                  LOWORD(v118) = 8 * (v112 - v204);
                  LOWORD(v119) = 8 * (v110 - WORD1(v204));
                  if (BYTE4(v204) > 1u)
                  {
                    if (BYTE4(v204) == 2)
                    {
                      v118 = v118;
                      if ((v118 & 0x8000u) != 0)
                      {
                        v118 = (-8 * (v112 - v204));
                      }

                      v119 = v119;
                      if ((v119 & 0x8000u) != 0)
                      {
                        v119 = (-8 * (v110 - WORD1(v204)));
                      }

                      v117 = (15 * (v119 + v118)) >> 3;
                    }

                    else if (BYTE4(v204) == 3)
                    {
                      v118 = v118;
                      if ((v118 & 0x8000u) != 0)
                      {
                        v118 = (-8 * (v112 - v204));
                      }

                      v119 = v119;
                      if ((v119 & 0x8000u) != 0)
                      {
                        v119 = (-8 * (v110 - WORD1(v204)));
                      }

                      v117 = v119 + v118;
                    }
                  }

                  else if (BYTE4(v204))
                  {
                    if (BYTE4(v204) == 1)
                    {
                      v118 = v118;
                      if ((v118 & 0x8000u) != 0)
                      {
                        v118 = (-8 * (v112 - v204));
                      }

                      v119 = v119;
                      if ((v119 & 0x8000u) != 0)
                      {
                        v119 = (-8 * (v110 - WORD1(v204)));
                      }

                      v117 = 4 * (v119 + v118);
                    }
                  }

                  else
                  {
                    v117 = ((*(v205 + 4 * (8 * (v112 - v204))) + *(*(&v205 + 1) + 4 * (8 * (v110 - WORD1(v204)))) + *(*(&v204 + 1) + ((4 * ((8 * (v110 - WORD1(v204))) != 0)) | (8 * ((8 * (v112 - v204)) != 0))))) * DWORD1(v206) + 256) >> 9;
                  }

                  if (v117 + v116 < v96)
                  {
                    v96 = v117 + v116;
                    v103 = v102;
                  }
                }
              }
            }
          }

          ++v102;
          v104 += 4;
        }

        while (v102 != 8);
        if (v103 == -1)
        {
          break;
        }

        v120 = &unk_277C3CF8C + 8 * v103;
        WORD2(v208) += *v120;
        HIWORD(v208) += *(v120 + 1);
        v101 += *(v120 + 1);
        ++v100;
      }

      while (v100 != 3);
      v98 = HIDWORD(v208);
      LODWORD(v208) = HIDWORD(v208);
      v97 = HIDWORD(v208);
      v18 = v169;
      v35 = v170;
      v19 = v167;
      v17 = v168;
      v75 = v188;
    }

    else
    {
      v162 = v79 | v162 & 0xFFFFFFFF00000000;
      v96 = sub_277B99630(v79, &v194, 5, 0, &v208 + 2, &v192, &v208);
      v97 = v208;
      v98 = HIDWORD(v208);
    }

    v123 = v97 != -2147450880 && v97 != v98 && v176 != 0;
    v124 = v187;
    if (v187)
    {
      v125 = v236;
      *v189 = v235;
      v189[1] = v125;
    }

    v126 = 0;
    v127 = &v210;
    v128 = &v235;
    v129 = 1;
    do
    {
      v130 = v129;
      if (*v127)
      {
        v131 = &v240[12 * v126 + 1];
        v132 = &v189[2 * v126];
        v133 = v132;
        v134 = v75;
        do
        {
          v135 = *v131;
          v136 = v131[1];
          v131 += 2;
          *v133 = v135;
          v133[1] = v136;
          v133 += 163;
          --v134;
        }

        while (v134);
        v137 = v132[1];
        *v128 = *v132;
        v128[1] = v137;
      }

      v129 = 0;
      v127 = &v209;
      v128 = &v237;
      v126 = 1;
    }

    while ((v130 & 1) != 0);
    if (v187)
    {
      v138 = &v235 + 2 * v187;
      v139 = v138[1];
      *v189 = *v138;
      v189[1] = v139;
    }

    v140 = *(v19 + 246110);
    if (v140 == 1)
    {
      v141 = 8 * v98;
      v98 = v141 & 0xFFF8FFF8;
      HIDWORD(v208) = v141 & 0xFFF8FFF8;
    }

    else
    {
      LOWORD(v141) = v98;
    }

    v142 = 0x7FFFFFFF;
    if (v96 != 0x7FFFFFFF)
    {
      if (v140)
      {
        v142 = v96;
      }

      else
      {
        v146 = v141;
        v234 = 0;
        v232 = 0u;
        v233 = 0u;
        v230 = 0u;
        v231 = 0u;
        v228 = 0u;
        v229 = 0u;
        v226 = 0u;
        v227 = 0u;
        v224 = 0u;
        v225 = 0u;
        v147 = sub_277B99474(&v224, v19, v18, v180, v179, 0);
        *(&v231 + 1) = v186;
        *&v232 = v17;
        *(&v232 + 1) = __PAIR64__(v187, v182);
        LOBYTE(v225) = 0;
        v163 = v163 & 0xFFFFFFFF00000000 | (8 * v98) & 0xFFF80000 | (8 * (v146 & 0x1FFF));
        v142 = (*(v185 + 128))(v18 + 416, v19 + 245616, &v224, v147);
        if (!v123)
        {
          v143 = v184;
LABEL_180:
          v124 = v187;
          goto LABEL_167;
        }

        v124 = v187;
        if (SDWORD2(v225) <= (8 * WORD1(v208)))
        {
          v143 = v184;
          if (SHIDWORD(v225) < (8 * WORD1(v208)) || v226 > (8 * v208) || SDWORD1(v226) < (8 * v208))
          {
            goto LABEL_167;
          }

          v159 = v159 & 0xFFFFFFFF00000000 | ((WORD1(v208) & 0x1FFF) << 19) | (8 * (v208 & 0x1FFF));
          v148 = (*(v185 + 128))(v18 + 416, v19 + 245616, &v224);
          if (v148 < v142)
          {
            HIDWORD(v208) = 0;
            v142 = v148;
          }

          goto LABEL_180;
        }
      }
    }

    v143 = v184;
LABEL_167:
    if (v124)
    {
      v144 = v236;
      *v189 = v235;
      v189[1] = v144;
    }

    v145 = (v240 | (4 * v124));
    if (v142 < *v145)
    {
      *v183 = HIDWORD(v208);
      *v145 = v142;
      v37 = v143 + 1;
      if (v37 != v171)
      {
        continue;
      }
    }

    break;
  }

  v149 = 0;
  v150 = 0;
  *v161 = 0;
  v151 = **(v18 + 8280);
  v152 = *(v151 + 2) - 21 < 2;
  v153 = 1;
  v154 = v35;
  do
  {
    v155 = v153;
    result = sub_277B1C4F0(v150, *(v151 + 16), *(v151 + 17), v152 + ((*(v151 + 167) >> 4) & 3u), v18 + 15472);
    v153 = 0;
    v157 = v154 + 2 * v150;
    v158 = *v157;
    LODWORD(v157) = v157[1] - WORD1(result);
    v149 += (108 * (*(**(v160 + 524320) + 4 * (v158 - result)) + *(*(*(v160 + 524320) + 8) + 4 * v157) + *(v160 + ((4 * (v157 != 0)) | (8 * (v158 != result))))) + 64) >> 7;
    *v161 = v149;
    v150 = 1;
  }

  while ((v155 & 1) != 0);
  return result;
}

uint64_t sub_277A51260(uint64_t a1, uint64_t a2, unsigned int a3, __int16 *a4, uint64_t a5, uint64_t a6, unsigned int a7, int *a8, unsigned int a9)
{
  *(&v50 + 1) = a6;
  v84 = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 270312) + 77))
  {
    v14 = 1;
  }

  else
  {
    v14 = 3;
  }

  v15 = **(a2 + 8280);
  v16 = *(v15 + 16 + a9);
  if (*(v15 + 2) - 21 >= 2)
  {
    v17 = (*(v15 + 167) >> 4) & 3;
  }

  else
  {
    v17 = ((*(v15 + 167) >> 4) & 3) + 1;
  }

  v82 = sub_277B1C4F0(a9, *(v15 + 16), *(v15 + 17), v17, a2 + 15472);
  v18 = *(a1 + 8 * (v16 - 1) + 273688);
  if ((v16 - 1) > 7u || (v19 = *(a1 + 4 * (v16 - 1) + 245856), v19 == -1))
  {
    v20 = 0;
  }

  else
  {
    v20 = *(a1 + 8 * v19 + 246032);
  }

  *&v50 = a5;
  v51 = *(a2 + 47560);
  if (v18)
  {
    v21 = v18 == v20;
  }

  else
  {
    v21 = 1;
  }

  v22 = v21;
  if (v21)
  {
    v23 = 0;
  }

  else
  {
    v23 = v18 + 1248;
  }

  v80 = 0u;
  v81 = 0u;
  if (a9)
  {
    v24 = *(a2 + 496);
    v80 = *(a2 + 480);
    v81 = v24;
    v25 = (a2 + 480 + 32 * a9);
    v26 = v25[1];
    *(a2 + 480) = *v25;
    *(a2 + 496) = v26;
  }

  if ((v22 & 1) == 0)
  {
    v27 = (a2 + 32 * a9 + 480);
    v28 = v83;
    v29 = v14;
    do
    {
      v30 = v27[1];
      *v28 = *v27;
      v28[1] = v30;
      v28 += 2;
      v27 += 163;
      --v29;
    }

    while (v29);
    sub_27798E424(a2 + 416, 0, v23, *(a2 + 416), *(a2 + 420), 0, v14);
  }

  v31 = a7;
  v79 = 0;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  memset(v66, 0, sizeof(v66));
  v65 = 0;
  v64 = 0;
  v32 = *(a1 + 395680);
  v33 = byte_277C3CAE8[a3];
  if (byte_277C3CAFE[a3] < v33)
  {
    v33 = byte_277C3CAFE[a3];
  }

  v34 = *(a1 + 395684);
  if (v34 == 1 && v33 > 0x1F || v34 >= 2 && v33 >= 0x10 && *(a2 + 89440) <= 3u && *(a2 + 16904) <= 191)
  {
    if (v32 > 0xA)
    {
      LODWORD(v32) = 0;
    }

    else
    {
      LODWORD(v32) = byte_277C39598[v32];
    }
  }

  v35 = *(a2 + 504);
  if (v35 == *(a1 + 399884))
  {
    v36 = a1 + 396712;
  }

  else if (v35 == *(a1 + 422116))
  {
    v36 = a1 + 418944;
  }

  else
  {
    v36 = a2 + 128756;
    if (v35 != *(a2 + 128756 + 3176 * byte_277C3D03C[v32] + 3172))
    {
      (off_28866F278[byte_277C3D03C[byte_277C3D03C[v32]]])(v36 + 3176 * byte_277C3D03C[byte_277C3D03C[v32]]);
    }
  }

  v37 = (((a4[1] + (a4[1] >= 0)) << 13) + 24576) & 0xFFFF0000 | ((*a4 + (*a4 >= 0) + 3) >> 3);
  sub_277B99138(v66, a1, a2, a3, &v82, v37, v36, v32, 0);
  v67 = v50;
  *&v68 = __PAIR64__(a9, v31);
  result = sub_277B99630(v37, v66, 5, 0, &v79, &v64, 0);
  if ((v22 & 1) == 0)
  {
    v39 = (a2 + 480);
    v40 = v83;
    do
    {
      v41 = *v40;
      v42 = v40[1];
      v40 += 2;
      *v39 = v41;
      v39[1] = v42;
      v39 += 163;
      --v14;
    }

    while (v14);
  }

  v43 = *(a1 + 246110);
  if (v43 == 1)
  {
    v79 = (8 * (v79 & 0x1FFF)) | (HIWORD(v79) << 19);
  }

  if (result == 0x7FFFFFFF)
  {
    v44 = 1;
    if (!a9)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  if (v43)
  {
    v44 = 0;
    if (!a9)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  v62 = 0;
  v63 = 0;
  v60 = 0u;
  memset(v61, 0, sizeof(v61));
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v49 = sub_277B99474(&v54, a1, a2, a3, &v82, 0);
  *(v61 + 8) = v50;
  *(&v61[1] + 1) = __PAIR64__(a9, v31);
  LOBYTE(v55) = 0;
  result = (*(a1 + 396704))(a2 + 416, a1 + 245616, &v54, ((HIWORD(v79) & 0x1FFF) << 19) | (8 * (v79 & 0x1FFF)), &v64, &v79, &v63 + 4, &v63, v49, 0);
  v44 = result == 0x7FFFFFFF;
  if (a9)
  {
LABEL_54:
    v45 = v81;
    *(a2 + 480) = v80;
    *(a2 + 496) = v45;
  }

LABEL_55:
  if (v44)
  {
    LOWORD(v46) = *a4;
    v47 = a4[1];
  }

  else
  {
    v46 = v79;
    *a4 = v79;
    v47 = HIWORD(v46);
  }

  v48 = *(v51 + 524320);
  *a8 = 0;
  *a8 = (108 * (*(*v48 + 4 * (v46 - v82)) + *(v48[1] + 4 * (v47 - HIWORD(v82))) + *(v51 + ((4 * (v47 != HIWORD(v82))) | (8 * (v82 != v46))))) + 64) >> 7;
  return result;
}

uint64_t sub_277A517B8()
{
  v0 = MEMORY[0x28223BE20]();
  v5 = v3;
  v6 = v1;
  v7 = v0;
  v58 = *MEMORY[0x277D85DE8];
  v8 = *(v1 + 8280);
  v9 = *v8;
  v40 = 0;
  v10 = v9[83];
  if (v9[83])
  {
    v11 = *(v1 + 11184);
    *(v9 + 9) = v11;
    if (v4 == 24)
    {
      v12 = byte_277C3CAFE[v3];
      if (v10 == 2)
      {
        v11 = *(*&dword_27A722360[8 * **v8 + 6] + (v9[81] << 7) + 8 * v9[80]);
      }

      goto LABEL_7;
    }
  }

  else
  {
    v11 = 0;
    *(v9 + 9) = 0;
    if (v4 == 24)
    {
      v11 = 0;
      v12 = byte_277C3CAFE[v3];
LABEL_7:
      v56 = *v2;
      if (v0[98998] == 2)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      sub_277A50334(v0, v1, v3, &v56, v11, v12, &v40, v0[98951] == 0, v13);
      *(v9 + 1) = v56;
      return v40;
    }
  }

  if ((v4 - 19) <= 3)
  {
    v14 = v3;
    v39 = byte_277C3CAFE[v3];
    v15 = *v8;
    if (v10 == 2)
    {
      v11 = *(*&dword_27A722360[8 * *v15 + 6] + (v9[81] << 7) + 8 * v9[80]);
    }

    v56 = *v2;
    v16 = *(*(v1 + 8376) + 192);
    if ((v16 & 8) != 0)
    {
      v17 = (v57 >> 1);
    }

    else
    {
      v17 = v57;
    }

    v37 = v17;
    v38 = (&v56 | (4 * ((0x1280000uLL >> v4) & 1)));
    v32 = byte_277C3CAE8[v3];
    v18 = v1 + 32 * !((0x1280000uLL >> v4) & 1);
    v19 = *(v18 + 500);
    v33 = v19;
    v34 = *(v18 + 496);
    v35 = *(v18 + 504);
    v36 = (0x1280000uLL >> v4) & 1;
    v55[0] = 0;
    v55[1] = 0;
    v20 = *(v1 + 436);
    v21 = vshl_s32(vshl_n_s32(*(v1 + 416), 2uLL), vneg_s32(vrev64_s32(v20)));
    sub_277AF62F8(v55, v34, v19, v0[61418], v0[61419]);
    v53 = 0;
    v52 = 0u;
    v51 = 0u;
    v50 = 0u;
    memset(v49, 0, sizeof(v49));
    v48 = 0u;
    v47 = 0u;
    v46 = 0u;
    v45 = 0u;
    v44 = 0u;
    v43 = 0u;
    v42 = 0u;
    v22 = *(v6 + 11072);
    v23 = *(v15 + 5);
    *(&v48 + 1) = __PAIR64__(v32, v39);
    *&v49[0] = v21;
    DWORD2(v51) = v22;
    HIDWORD(v51) = (v16 >> 3) & 1;
    v41 = 0;
    *(&v50 + 1) = v20;
    v54 = vrev64_s32(vsub_s32(0x100000001000, vshl_n_s32(vshl_u32(vdup_n_s32(0x120u), vneg_s32(v20)), 0xAuLL)));
    if (((0x10003uLL >> v14) & ((*&v23 & 0xFF0000) != 0x40000)) != 0)
    {
      v24 = &off_27A71F730;
    }

    else
    {
      v24 = &off_27A71F770;
    }

    v25 = &v24[2 * BYTE2(v23)];
    if (((0x20005uLL >> v14) & (v23 != 4)) != 0)
    {
      v26 = &off_27A71F730;
    }

    else
    {
      v26 = &off_27A71F770;
    }

    *(&v47 + 1) = v25;
    *&v48 = &v26[2 * v23];
    *&v51 = v55;
    *(v49 + 8) = *(v18 + 480);
    *(&v49[1] + 1) = __PAIR64__(v33, v34);
    *&v50 = v35;
    *(&v46 + 1) = 0;
    *&v47 = 0;
    v27 = 21 - v22;
    v28 = v22 <= 10;
    if (v22 <= 10)
    {
      v29 = 3;
    }

    else
    {
      v29 = v22 - 7;
    }

    if (v28)
    {
      v30 = 11;
    }

    else
    {
      v30 = v27;
    }

    *(&v44 + 1) = 0;
    *&v45 = 0;
    DWORD2(v45) = 0;
    HIDWORD(v45) = v29;
    LODWORD(v46) = v30;
    sub_2779CAFC0();
    sub_277A51260(v7, v6, v5, v38, v37, v11, v39, &v40, v36);
    *&v9[4 * v36 + 8] = *v38;
  }

  return v40;
}

uint64_t sub_277A51BBC(uint64_t a1, uint64_t a2, int a3, int a4, unsigned int a5, int a6, int a7, int a8, _DWORD *a9, _DWORD *a10)
{
  v101 = *MEMORY[0x277D85DE8];
  v14 = (a2 + 128740);
  v80 = a1 + 395608;
  v15 = a1 + 270312;
  v16 = a1 + 245568;
  if (*(*(a1 + 270312) + 77))
  {
    v17 = 1;
  }

  else
  {
    v17 = 3;
  }

  v18 = byte_277C3F990[a5];
  v19 = byte_277C36D60[a5];
  v78 = a5;
  v20 = *(a1 + 246196);
  v21 = a4 + v20 * a3;
  v22 = byte_277C3F990[*(a1 + 246176)];
  v23 = a3 / v22;
  v24 = a4 / v22;
  *(*(a1 + 246184) + 8 * v21) = *(a1 + 246160) + 176 * (v24 + *(a1 + 246172) * v23);
  *(a2 + 8280) = *(a1 + 246184) + 8 * v21;
  *(a2 + 8328) = *(a1 + 246200) + v21;
  *(a2 + 8336) = v20;
  *(a2 + 16760) = *(a1 + 245568) + 84 * (v24 + *(a1 + 245580) * v23);
  sub_27798E348(a2 + 432, a5, *(a1 + 245848) + 1248, a3, a4, 0, v17);
  v25 = *(v15 + 1820);
  v26 = -8 - 4 * (v19 + a3);
  if (8 - (v25 + 4 * a3) > v26)
  {
    v26 = 8 - (v25 + 4 * a3);
  }

  v27 = *(v16 + 580);
  v28 = 4 * (v27 - a3) + 8;
  if (v25 - 8 + 4 * (v27 - a3 - v19) < v28)
  {
    v28 = v25 - 8 + 4 * (v27 - a3 - v19);
  }

  v14[2] = v26;
  v14[3] = v28;
  v29 = -8 - 4 * (v18 + a4);
  if (8 - (v25 + 4 * a4) > v29)
  {
    v29 = 8 - (v25 + 4 * a4);
  }

  v30 = *(v16 + 584);
  v31 = 4 * (v30 - a4) + 8;
  if (v25 - 8 + 4 * (v30 - a4 - v18) < v31)
  {
    v31 = v25 - 8 + 4 * (v30 - a4 - v18);
  }

  *v14 = v29;
  v14[1] = v31;
  v32 = (a2 + 601);
  v33 = v17;
  do
  {
    v34 = ((4 * v18) >> *(v32 - 165));
    v35 = ((4 * v19) >> *(v32 - 161));
    if (v34 <= 4)
    {
      LOBYTE(v34) = 4;
    }

    *(v32 - 1) = v34;
    if (v35 <= 4)
    {
      v36 = 4;
    }

    else
    {
      v36 = v35;
    }

    *v32 = v36;
    v32 += 2608;
    --v33;
  }

  while (v33);
  *(a2 + 416) = a3;
  *(a2 + 420) = a4;
  *(a2 + 8348) = -32 * a3;
  *(a2 + 8352) = 32 * (v27 - (v19 + a3));
  *(a2 + 8340) = -32 * a4;
  *(a2 + 8344) = 32 * (v30 - (v18 + a4));
  sub_277A5D0C0(a2, *(v15 + 1952), a3, a4, v17, a5);
  v37 = **(a2 + 8280);
  *v37 = a5;
  *(v37 + 16) = a6;
  *(v37 + 17) = -1;
  *(v37 + 24) = 0;
  *(v37 + 20) = 0;
  v38 = a6 - 1;
  v39 = a1 + 8 * a6;
  if (v38 > 7)
  {
    v43 = 0;
    v44 = 0;
    v45 = *(v39 + 273680);
    v41 = v80;
  }

  else
  {
    v40 = *(a1 + 4 * v38 + 245856);
    v41 = v80;
    if (v40 == -1)
    {
      v42 = 0;
    }

    else
    {
      v42 = *(a1 + 8 * v40 + 246032);
    }

    if (v42)
    {
      v43 = v42 + 1248;
    }

    else
    {
      v43 = 0;
    }

    v45 = *(v39 + 273680);
    v46 = *(a1 + 4 * (a6 - 1) + 245856);
    if (v46 == -1)
    {
      v44 = 0;
    }

    else
    {
      v44 = *(a1 + 8 * v46 + 246032);
    }
  }

  if (v45)
  {
    v47 = v45 == v44;
  }

  else
  {
    v47 = 1;
  }

  v48 = v47;
  v79 = v48;
  v49 = v45 + 1248;
  if (v47)
  {
    v50 = 0;
  }

  else
  {
    v50 = v49;
  }

  v97 = 0u;
  v98 = 0u;
  v95 = 0;
  v96 = 0;
  v51 = *v41 + *(v41 + 1092);
  if (v51 >= 9)
  {
    v51 = 9;
  }

  v75 = v51;
  v99 = 0;
  if (v38 > 7 || (v52 = *(a1 + 4 * (a6 - 1) + 245856), v52 == -1))
  {
    v53 = 0;
  }

  else
  {
    v53 = (a1 + 16 * v52 + 245904);
  }

  sub_27798E424(a2 + 416, 0, v43, a3, a4, v53, 1u);
  v54 = *(v37 + 16);
  v55 = *(v37 + 17);
  if (v54 > 8)
  {
    goto LABEL_50;
  }

  if (v54 <= 1)
  {
    v54 = 1;
  }

  v56 = *(a1 + 4 * (v54 - 1) + 245856);
  if (v56 == -1)
  {
LABEL_50:
    v57 = 0;
  }

  else
  {
    v57 = a1 + 16 * v56 + 245904;
  }

  *(a2 + 8360) = v57;
  if (v55 > 8)
  {
    goto LABEL_56;
  }

  if (v55 <= 1)
  {
    v55 = 1;
  }

  v58 = *(a1 + 4 * (v55 - 1) + 245856);
  if (v58 == -1)
  {
LABEL_56:
    v59 = 0;
  }

  else
  {
    v59 = a1 + 16 * v58 + 245904;
  }

  *(a2 + 8368) = v59;
  if ((v79 & 1) == 0)
  {
    v60 = *(a2 + 496);
    v97 = *(a2 + 480);
    v98 = v60;
    sub_27798E424(a2 + 416, 0, v50, a3, a4, 0, 1u);
  }

  v61 = *(a1 + 643740) && *(*a1 + *(a1 + 463456) + 400) == 3 && *(v15 + 1828) < 3;
  memset(v94, 0, sizeof(v94));
  v62 = *(v41 + 72);
  v63 = byte_277C3CAE8[v78];
  if (byte_277C3CAFE[v78] < v63)
  {
    v63 = byte_277C3CAFE[v78];
  }

  v64 = *(v41 + 76);
  if (v64 == 1 && v63 > 0x1F || v64 >= 2 && v63 >= 0x10 && *(a2 + 89440) <= 3u && *(a2 + 16904) <= 191)
  {
    if (v62 > 0xA)
    {
      LODWORD(v62) = 0;
    }

    else
    {
      LODWORD(v62) = byte_277C39598[v62];
    }
  }

  v65 = *(a2 + 504);
  if (v65 == *(a1 + 399884))
  {
    v66 = a1 + 396712;
  }

  else if (v65 == *(a1 + 422116))
  {
    v66 = a1 + 418944;
  }

  else
  {
    v66 = a2 + 128756;
    if (v65 != *(a2 + 128756 + 3176 * byte_277C3D03C[v62] + 3172))
    {
      v67 = v61;
      (off_28866F278[byte_277C3D03C[byte_277C3D03C[v62]]])(v66 + 3176 * byte_277C3D03C[byte_277C3D03C[v62]]);
      v61 = v67;
    }
  }

  sub_277B99138(v94, a1, a2, a5, &v96 + 2, a7, v66, v62, v61);
  if (*(v80 + 84))
  {
    if (*(v80 + 172))
    {
      v68 = v100;
    }

    else
    {
      v68 = 0;
    }
  }

  else
  {
    v68 = 0;
  }

  if (sub_277B99630(a7, v94, v75, v68, &v99, &v95, 0) == 0x7FFFFFFF)
  {
    v69 = 0;
  }

  else
  {
    v69 = 0;
    if (a8 && (*(v16 + 542) & 1) == 0)
    {
      v69 = *(v80 + 93) != 3;
    }
  }

  if ((v79 & 1) == 0)
  {
    v70 = v98;
    *(a2 + 480) = v97;
    *(a2 + 496) = v70;
  }

  if (v69)
  {
    v93 = 0;
    v92 = 0;
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v71 = sub_277B99474(&v82, a1, a2, a5, &v96 + 2, v100);
    LOBYTE(v83) = *(v80 + 93);
    (*(v80 + 1096))(a2 + 416, a1 + 245616, &v82, ((HIWORD(v99) & 0x1FFF) << 19) | (8 * (v99 & 0x1FFF)), &v95, &v99, &v93, a2 + 4 * a6 + 153176, v71, 0);
    *(v37 + 8) = v99;
    sub_2779CCAB4();
    *a10 = (*(*a1 + (v78 << 7) + 51464))(*(a2 + 48), *(a2 + 72), *(a2 + 448), *(a2 + 472), a9);
    return v99;
  }

  else
  {
    result = (8 * (v99 & 0x1FFF)) | (HIWORD(v99) << 19);
    v73 = v96;
    *a10 = HIDWORD(v95);
    *a9 = v73;
  }

  return result;
}

uint8x16_t *sub_277A52414(uint8x16_t *result, uint8x16_t *a2, int a3, int a4, uint64_t *a5, int a6)
{
  if (a3 < 9)
  {
    if (a3 == 8)
    {
      v7 = a4 / 2;
      do
      {
        v8 = *a2++;
        v9.i64[0] = *a5;
        v9.i64[1] = *(a5 + a6);
        *result++ = vrhaddq_u8(v8, v9);
        a5 = (a5 + 2 * a6);
        --v7;
      }

      while (v7);
    }

    else
    {
      v10 = a4 / 4;
      do
      {
        if (a6 == 4)
        {
          v11 = *a5;
        }

        else
        {
          v11.i32[0] = *a5;
          v11.i32[1] = *(a5 + a6);
          v11.i32[2] = *(a5 + 2 * a6);
          v11.i32[3] = *(a5 + 3 * a6);
        }

        v12 = *a2++;
        *result++ = vrhaddq_u8(v12, v11);
        a5 = (a5 + 4 * a6);
        --v10;
      }

      while (v10);
    }
  }

  else
  {
    do
    {
      v6 = 0;
      do
      {
        result[v6 / 2] = vrhaddq_u8(a2[v6 / 2], *&a5[v6]);
        v6 += 2;
      }

      while (a3 != (v6 * 8));
      a5 = (a5 + a6);
      a2 = (a2 + a3);
      result = (result + a3);
      --a4;
    }

    while (a4);
  }

  return result;
}

int8x8_t *sub_277A52504(int8x8_t *result, uint8x8_t *a2, int a3, int a4, uint8x8_t *a5, int a6, int8x8_t *a7, int a8, int a9)
{
  if (a9)
  {
    v9 = a2;
  }

  else
  {
    v9 = a5;
  }

  if (a9)
  {
    v10 = a5;
  }

  else
  {
    v10 = a2;
  }

  if (a9)
  {
    v11 = a3;
  }

  else
  {
    v11 = a6;
  }

  if (a9)
  {
    v12 = a6;
  }

  else
  {
    v12 = a3;
  }

  if (a3 < 9)
  {
    if (a3 == 8)
    {
      do
      {
        *result++ = vrshrn_n_s16(vmlal_u8(vmull_u8(vsub_s8(0x4040404040404040, *a7), *v10), *a7, *v9), 6uLL);
        v9 = (v9 + v11);
        v10 = (v10 + v12);
        a7 = (a7 + a8);
        --a4;
      }

      while (a4);
    }

    else
    {
      v18 = a4 / 2;
      v19 = v11;
      v20 = v12;
      v21 = 2 * v11;
      v22 = 2 * v12;
      do
      {
        v23.i32[0] = v9->i32[0];
        v23.i32[1] = *(v9->i32 + v19);
        v24.i32[0] = v10->i32[0];
        v24.i32[1] = *(v10->i32 + v20);
        v25.i32[0] = a7->i32[0];
        v25.i32[1] = *(a7->i32 + a8);
        *result++ = vrshrn_n_s16(vmlal_u8(vmull_u8(vsub_s8(0x4040404040404040, v25), v24), v25, v23), 6uLL);
        v9 = (v9 + v21);
        v10 = (v10 + v22);
        a7 = (a7 + 2 * a8);
        --v18;
      }

      while (v18);
    }
  }

  else
  {
    v13 = v11;
    v14.i64[0] = 0x4040404040404040;
    v14.i64[1] = 0x4040404040404040;
    do
    {
      v15 = 0;
      do
      {
        v16 = *a7[v15].i8;
        v17 = vsubq_s8(v14, v16);
        *result[v15].i8 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v17.i8, v10[v15]), *v16.i8, v9[v15]), 6uLL), vmlal_high_u8(vmull_high_u8(v17, *v10[v15].i8), v16, *v9[v15].i8), 6uLL);
        v15 += 2;
      }

      while (a3 != (v15 * 8));
      v9 = (v9 + v13);
      v10 = (v10 + v12);
      a7 = (a7 + a8);
      result = (result + a3);
      --a4;
    }

    while (a4);
  }

  return result;
}

uint64_t sub_277A52654(uint64_t a1, uint64_t a2, unsigned __int8 *a3, int a4, int a5, unsigned int a6, int a7)
{
  v9 = a3;
  v11 = (a2 + 151048);
  v12 = a1 + 270312;
  v13 = a1 + 245616;
  v14 = *(*(a1 + 270312) + 77);
  v15 = **(a2 + 8280);
  v16 = *a3;
  v17 = byte_277C3F990[v16];
  v186 = byte_277C36D60[v16];
  v194 = byte_277C3F990[a6];
  v185 = *(a1 + 246196);
  v18 = byte_277C36D60[a6];
  v19 = *(a3 + 6);
  v21 = *(a3 + 3);
  v20 = *(a3 + 4);
  *(v15 + 80) = *(a3 + 5);
  *(v15 + 96) = v19;
  *(v15 + 48) = v21;
  *(v15 + 64) = v20;
  v22 = *(a3 + 10);
  v24 = *(a3 + 7);
  v23 = *(a3 + 8);
  *(v15 + 144) = *(a3 + 9);
  *(v15 + 160) = v22;
  *(v15 + 112) = v24;
  *(v15 + 128) = v23;
  v25 = *a3;
  v26 = *(a3 + 2);
  *(v15 + 16) = *(a3 + 1);
  *(v15 + 32) = v26;
  *v15 = v25;
  v27 = a3[16];
  v190 = v18;
  v188 = (a1 + 264608);
  if (a3[17] >= 1)
  {
    v28 = a3[17];
    if (v28 >= 5 && v27 < 5)
    {
LABEL_8:
      LOBYTE(v27) = v27 + 4 * v28 - 13;
    }

    else
    {
      v29 = 0;
      while (byte_277C3BCCC[v29] != v27 || v28 != byte_277C3BCD5[v29])
      {
        if (++v29 == 9)
        {
          goto LABEL_8;
        }
      }

      LOBYTE(v27) = v29 + 20;
    }
  }

  v181 = (a2 + 86580);
  v30 = (a2 + 15472 + 32 * v27);
  v31 = *(a3 + 12);
  *v30 = *(a3 + 11);
  v30[1] = v31;
  *(a2 + 8 * v27 + 16400) = *(a3 + 26);
  *(a2 + 2 * v27 + 16696) = *(a3 + 126);
  *(a2 + v27 + 16632) = a3[216];
  v32 = *(a3 + 236);
  *(a2 + 16664) = *(a3 + 220);
  *(a2 + 16680) = v32;
  result = memcpy((a2 + 151049), *(a3 + 35), *(a3 + 104));
  *v11 = v9[456];
  *(a2 + 8328) = *(v9 + 51);
  *(a2 + 8336) = v194;
  v187 = a5;
  if (!a7)
  {
    v177 = v12;
    v179 = v11;
    v34 = 0;
    v35 = v13;
    v36 = *(v13 + 580);
    v191 = v35;
    v37 = (*(v35 + 584) + v36 * a4 + a5);
    if (v186 <= 1)
    {
      v38 = 1;
    }

    else
    {
      v38 = v186;
    }

    v184 = v37;
    do
    {
      result = memcpy(v37, (*(a2 + 8328) + v34 * *(a2 + 8336)), v17);
      ++v34;
      v37 += v36;
    }

    while (v38 != v34);
    *(a2 + 8328) = v184;
    *(a2 + 8336) = v36;
    a5 = v187;
    v13 = v191;
    v12 = v177;
    v11 = v179;
    a7 = 0;
  }

  v39 = v188;
  v40 = v190;
  if (!*v188)
  {
LABEL_185:
    if (a7)
    {
      goto LABEL_196;
    }

    goto LABEL_186;
  }

  result = a1 + 463416;
  v41 = *(v12 + 1016);
  if (v41 == 2)
  {
    v42 = 463416;
    if (!v188[1])
    {
      v42 = 264784;
    }

    v43 = *(a1 + v42);
    if (v43)
    {
      v44 = *(v13 + 532) - a4;
      if (v44 >= v190)
      {
        v44 = v190;
      }

      if (v44 < 1)
      {
        LOWORD(v43) = 0;
      }

      else
      {
        v45 = 0;
        v46 = *(v13 + 536);
        LODWORD(v47) = v46 - a5;
        if (v46 - a5 >= v194)
        {
          v47 = v194;
        }

        else
        {
          v47 = v47;
        }

        v48 = a5 + v46 * a4;
        v49 = 8;
        do
        {
          v50 = v48;
          v51 = v47;
          if (v47 >= 1)
          {
            do
            {
              if (v49 >= *(v43 + v50))
              {
                v49 = *(v43 + v50);
              }

              ++v50;
              --v51;
            }

            while (v51);
          }

          ++v45;
          v48 += v46;
        }

        while (v45 != v44);
        LOWORD(v43) = v49 & 7;
      }
    }

    *(v15 + 167) = *(v15 + 167) & 0xFFF8 | v43;
    v41 = *(v12 + 1016);
  }

  if (v41 == 3 && (~*(v15 + 167) & 7) != 0 && !*(a1 + 395312))
  {
    v180 = v11;
    v52 = **(a2 + 8280);
    v53 = *(a1 + 463432);
    v54 = *(v13 + 536);
    v55 = v54 - v187;
    if (v54 - v187 >= v194)
    {
      v55 = v194;
    }

    v172 = v55;
    v56 = *(v13 + 532) - a4;
    if (v56 >= v190)
    {
      v57 = v190;
    }

    else
    {
      v57 = v56;
    }

    v58 = v54 * a4 + v187;
    v59 = *(v52 + 17);
    if (*(a1 + 644224))
    {
      if (v59 >= 1)
      {
        if (*(a1 + 644228) > 1)
        {
LABEL_64:
          if (a6 < 6 || *(v53 + 48) <= *(v9 + 106) || (*(v52 + 167) & 0x80) == 0 && *(v52 + 16) < 1 || *(v52 + 8) || *(v53 + 88) <= 10)
          {
            v60 = 0;
            v61 = 1;
            goto LABEL_71;
          }
        }

LABEL_50:
        v60 = 0;
        v61 = 2;
LABEL_71:
        if (*(v53 + 108))
        {
          v67 = 2;
        }

        else
        {
          v67 = 1;
        }

        v68 = *(*(v53 + 40) + v58);
        v69 = *(v52 + 167);
        if ((v69 & 7u) - 3 >= 0xFFFFFFFE)
        {
          v70 = v69 & 0xFFF8;
          if (*v180)
          {
            v61 = 0;
          }

          v69 = v70 | v61;
          *(v52 + 167) = v69;
        }

        v174 = v69 & 7;
        v175 = v17;
        v178 = v12;
        v173 = v9;
        if ((v174 - 3) >= 0xFFFFFFFE)
        {
          v71 = -*(v53 + 20);
        }

        else if (v60)
        {
          v71 = 1;
        }

        else if (*(*(v53 + 40) + v58) == 1)
        {
          v71 = 0;
        }

        else
        {
          v71 = v68;
        }

        v192 = v13;
        if (v57 >= 1)
        {
          v72 = 0;
          v183 = v67 * *(v13 + 536);
          do
          {
            v73 = v57;
            v74 = v53;
            v75 = v67;
            memset((*(v53 + 40) + v58), v71, v172);
            memset((*(a1 + 463416) + v58), v174, v172);
            memset((*(*(v192 + 232) + 80) + v58), v174, v172);
            v67 = v75;
            v53 = v74;
            v57 = v73;
            v72 += v75;
            v58 += v183;
          }

          while (v72 < v73);
        }

        v13 = v192;
        LODWORD(v17) = v175;
        v12 = v178;
        v11 = v180;
        v40 = v190;
        v39 = v188;
        result = a1 + 463416;
        v9 = v173;
        if (!a7)
        {
          if (v174 == 2)
          {
            v181[1] += v57 * v172;
          }

          else if (v174 == 1)
          {
            *v181 += v57 * v172;
          }
        }

        goto LABEL_89;
      }
    }

    else if (v59 > 0)
    {
      goto LABEL_50;
    }

    if (*(v53 + 56) < *(v9 + 54))
    {
      v62 = *(v52 + 8);
      v63 = *(v53 + 64);
      if (v62 > v63 || ((v64 = *(v52 + 10), v62 >= -v63) ? (v65 = v64 <= v63) : (v65 = 0), v65 ? (v66 = v64 < -v63) : (v66 = 1), v66 || (*(v52 + 167) & 0x80) == 0 && *(v52 + 16) < 1))
      {
        v61 = 0;
        v60 = 1;
        goto LABEL_71;
      }
    }

    goto LABEL_64;
  }

LABEL_89:
  if (*(v15 + 3) != 13)
  {
    goto LABEL_95;
  }

  v76 = **(a2 + 8280);
  v77 = *v76;
  if (*(a2 + 4 * (*(v76 + 167) & 7) + 11108))
  {
    if (!byte_277C3BCDE[4 * v77 + 2 * *(a2 + 3044) + *(a2 + 3048)])
    {
      goto LABEL_95;
    }

    goto LABEL_92;
  }

  if (((0x1F07FFuLL >> v77) & 1) == 0 || ((0x2F0BFFuLL >> v77) & 1) == 0)
  {
LABEL_92:
    *(v15 + 3) = 0;
  }

LABEL_95:
  if (a7)
  {
    goto LABEL_196;
  }

  if (!*(v15 + 144))
  {
    if (*(*(result + 16) + 108))
    {
      v78 = 2;
    }

    else
    {
      v78 = 1;
    }

    v79 = *(a2 + 416);
    v80 = *(a2 + 420);
    v81 = *(*(v13 + 232) + 80);
    v193 = v13;
    if ((*(a2 + 8288) & 1) == 0)
    {
      if ((*(a2 + 8289) & 1) == 0)
      {
        v103 = v11;
        v94 = 255;
        v95 = -1;
        goto LABEL_151;
      }

      v83 = *(v13 + 536);
      v84 = *(v13 + 532);
      v95 = -1;
      v94 = 255;
      goto LABEL_137;
    }

    if (*(a2 + 8289))
    {
      v82 = v79 - v78;
      v83 = *(v13 + 536);
      v84 = *(v13 + 532);
      v85 = v84 - (v79 - v78);
      if (v85 >= 1)
      {
        v86 = 1;
      }

      else
      {
        v86 = v84 - (v79 - v78);
      }

      if (v85 < 1)
      {
        v95 = 8;
        v94 = 8;
        goto LABEL_137;
      }

      v87 = 0;
      v88 = v83 - (v80 - v78);
      if (v88 >= 1)
      {
        v89 = 1;
      }

      else
      {
        v89 = v88;
      }

      v90 = v80 + v83 * v82 - v78;
      v91 = 8;
      do
      {
        v92 = v90;
        v93 = v89;
        if (v88 >= 1)
        {
          do
          {
            if (v91 >= *(v81 + v92))
            {
              v91 = *(v81 + v92);
            }

            ++v92;
            --v93;
          }

          while (v93);
        }

        ++v87;
        v90 += v83;
      }

      while (v87 != v86);
      v94 = v91;
    }

    else
    {
      v84 = *(v13 + 532);
      v82 = v79 - v78;
      v94 = 255;
      if (v84 <= v79 - v78)
      {
        v103 = v11;
        v95 = 8;
        goto LABEL_151;
      }

      v83 = *(v13 + 536);
      v86 = 1;
    }

    v96 = 0;
    v97 = v83 - v80;
    if (v83 - v80 >= 1)
    {
      v98 = 1;
    }

    else
    {
      v98 = v97;
    }

    v99 = v80 + v83 * v82;
    v95 = 8;
    do
    {
      v100 = v99;
      v101 = v98;
      if (v97 >= 1)
      {
        do
        {
          if (v95 >= *(v81 + v100))
          {
            v95 = *(v81 + v100);
          }

          ++v100;
          --v101;
        }

        while (v101);
      }

      ++v96;
      v99 += v83;
    }

    while (v96 != v86);
    if ((*(a2 + 8289) & 1) == 0)
    {
      v102 = 255;
LABEL_149:
      v103 = v11;
      if (v94 != 255)
      {
        if (v94 == v95 && v94 == v102)
        {
          v111 = 2;
          v102 = v94;
          v112 = v94;
        }

        else
        {
          v112 = v95;
          v170 = v94 == v102 || v102 == v95;
          v171 = v170;
          v111 = ((v94 == v95) | v171) & 1;
        }

        goto LABEL_152;
      }

      v94 = v102;
LABEL_151:
      v111 = 0;
      v112 = v95;
      v102 = v94;
      v94 = 255;
LABEL_152:
      if (v94 == v112)
      {
        v113 = v112;
      }

      else
      {
        v113 = v102;
      }

      if (v102 == 255)
      {
        v113 = v95;
        LOBYTE(v102) = 0;
      }

      if (v95 != 0xFF)
      {
        LOBYTE(v102) = v113;
      }

      result = sub_2779FB808(*(v15 + 167) & 7, v102, *(v39 + 41) + 1);
      v114 = *(a2 + 32 * v111 + 4 * result + 47460);
      *(v103 + 454) += v114;
      v115 = *(v39 + 22);
      if (v115)
      {
        v13 = v193;
        v116 = *(v193 + 532) - a4;
        v40 = v190;
        if (v116 >= v190)
        {
          v116 = v190;
        }

        if (v116 < 1)
        {
          LODWORD(v115) = 8;
          v11 = v103;
        }

        else
        {
          v117 = 0;
          v118 = *(v193 + 536);
          LODWORD(v119) = v118 - v187;
          if (v118 - v187 >= v194)
          {
            v119 = v194;
          }

          else
          {
            v119 = v119;
          }

          v120 = v187 + v118 * a4;
          v121 = 8;
          v11 = v103;
          do
          {
            v122 = v120;
            v123 = v119;
            if (v119 >= 1)
            {
              do
              {
                result = *(v115 + v122);
                if (v121 >= result)
                {
                  v121 = *(v115 + v122);
                }

                ++v122;
                --v123;
              }

              while (v123);
            }

            ++v117;
            v120 += v118;
          }

          while (v117 != v116);
          LODWORD(v115) = v121;
        }
      }

      else
      {
        v13 = v193;
        v11 = v103;
        v40 = v190;
      }

      v124 = *(a2 + 8304);
      v125 = *(a2 + 8296);
      if (v124)
      {
        v124 = (*(v124 + 167) >> 3) & 1;
      }

      v126 = *(v15 + 167) & 7;
      if (v125)
      {
        v125 = (*(v125 + 167) >> 3) & 1;
      }

      v170 = v115 == v126;
      v127 = *(a2 + 8 * (v125 + v124) + 4 * (v115 == v126) + 47436);
      if (v170)
      {
        v114 = 0;
      }

      *(v11 + 455) += v114 + v127;
      goto LABEL_185;
    }

LABEL_137:
    if (v84 - v79 < 1)
    {
      v102 = 8;
    }

    else
    {
      v104 = 0;
      v105 = v83 - (v80 - v78);
      if (v105 >= 1)
      {
        v106 = 1;
      }

      else
      {
        v106 = v105;
      }

      v107 = v80 + v83 * v79 - v78;
      v108 = 8;
      do
      {
        v109 = v107;
        v110 = v106;
        if (v105 >= 1)
        {
          do
          {
            if (v108 >= *(v81 + v109))
            {
              v108 = *(v81 + v109);
            }

            ++v109;
            --v110;
          }

          while (v110);
        }

        ++v104;
        v107 += v83;
      }

      while (v104 != 1);
      v102 = v108;
    }

    goto LABEL_149;
  }

LABEL_186:
  if ((*v13 & 0xFD) != 0)
  {
    v128 = v9[16];
    if (((*(v9 + 167) & 0x80) != 0 || v128 >= 1) && v128 == 1)
    {
      v129.i32[0] = *(v9 + 4);
      v129.i32[1] = *(v9 + 5);
      v130 = vcgt_u32(0x800000008, vabs_s32(v129));
      if (v130.i8[0] & 1) != 0 && (v130.i8[4])
      {
        v131 = *(v13 + 532) - a4;
        if (v131 >= v186)
        {
          v131 = v186;
        }

        v132 = __OFSUB__(v131, 1);
        v133 = v131 - 1;
        if (v133 < 0 == v132)
        {
          v181[2] += ((v133 & 0xFFFFFFFE) + 2) * v17;
        }
      }
    }
  }

LABEL_196:
  v134 = 0;
  v135 = (v9 + 16);
  v136 = v9 + 288;
  v137 = (a2 + 24);
  do
  {
    *v137 = *v136;
    *(v137 - 1) = v136[3];
    *(v137 - 2) = v136[6];
    v137[1] = v136[9];
    v137[2] = v136[12];
    if (v14)
    {
      break;
    }

    ++v136;
    v137 += 17;
  }

  while (v134++ < 2);
  *(a2 + 592) = *(v9 + 33);
  *(a2 + 3200) = *(v9 + 34);
  v139 = (*(a2 + 8352) >> 5) & (*(a2 + 8352) >> 31);
  v132 = __OFADD__(v139, v40);
  v140 = (v139 + v40);
  if (!((v140 < 0) ^ v132 | (v140 == 0)))
  {
    v141 = 0;
    v142 = 0;
    v143 = ((*(a2 + 8344) >> 5) & (*(a2 + 8344) >> 31)) + v194;
    do
    {
      if (v143 >= 1)
      {
        v144 = v141;
        v145 = v143;
        do
        {
          *(*(a2 + 8280) + v144) = v15;
          v144 += 8;
          --v145;
        }

        while (v145);
      }

      ++v142;
      v141 += 8 * v185;
    }

    while (v142 != v140);
  }

  if (*(v12 + 1016))
  {
    result = sub_277A806F0(a1, a2, *(v15 + 167) & 7, 0);
  }

  if (!a7)
  {
    v176 = v17;
    v146 = v12;
    v147 = v13;
    if ((*v13 & 0xFD) != 0 && ((*(v9 + 167) & 0x80) != 0 || *v135 >= 1) && *(v13 + 505) == 4)
    {
      v148 = 0;
      v149 = *(v11 + 456);
      v150 = 1;
      do
      {
        result = sub_277B1FAF0(a2 + 416, v148);
        v151 = *(v15 + 20);
        v152 = v150 & 1;
        if ((v150 & 1) == 0)
        {
          LOBYTE(v151) = BYTE2(*(v15 + 20));
        }

        ++*(v149 + 12 * result + 4 * v151);
        v148 = 1;
        v150 = 0;
      }

      while (v152);
    }

    if (*(*v146 + 52))
    {
      v153 = *(v147 + 532) - a4;
      if (v153 >= v186)
      {
        v153 = v186;
      }

      v154 = *(v147 + 536);
      if (v154 - v187 >= v176)
      {
        v155 = v176;
      }

      else
      {
        v155 = v154 - v187;
      }

      v156 = (v153 + 1) >> 1;
      if (v156 >= 1)
      {
        v157 = 0;
        v158 = v154 + 1;
        v159 = (v155 + 1) >> 1;
        v160 = *(*(v147 + 232) + 72) + 8 * ((v154 + 1) >> 1) * (a4 >> 1) + 8 * (v187 >> 1);
        v161 = v158 >> 1;
        do
        {
          if (v159 >= 1)
          {
            v162 = 0;
            v163 = v160;
            do
            {
              v164 = 0;
              *(v163 + 4) = -1;
              *v163 = 0;
              v165 = 1;
              do
              {
                result = v165;
                v166 = v135[v164];
                if (v166 >= 1 && !*(a1 + 271076 + v166))
                {
                  v167 = &v9[4 * v164 + 8];
                  v168 = *v167;
                  if (v168 < 0)
                  {
                    v168 = -v168;
                  }

                  if (v168 <= 0xFFF)
                  {
                    v169 = *(v167 + 1);
                    if (v169 < 0)
                    {
                      v169 = -v169;
                    }

                    if (v169 <= 0xFFF)
                    {
                      *(v163 + 4) = v166;
                      *v163 = *v167;
                    }
                  }
                }

                v165 = 0;
                v164 = 1;
              }

              while ((result & 1) != 0);
              v163 += 8;
              ++v162;
            }

            while (v162 != v159);
          }

          v160 += 8 * v161;
          ++v157;
        }

        while (v157 != v156);
      }
    }
  }

  return result;
}

void *sub_277A5343C(uint64_t a1, _OWORD *__src, char a3, int a4, int a5, unsigned int a6)
{
  v7 = __src;
  v8 = byte_277C36D60[a5];
  v9 = byte_277C3F990[a5];
  v10 = a3 & 0x1F;
  v11 = (a1 + 8384);
  v12 = a1 + 8408;
  v13 = (__src + 6);
  v14 = (a1 + 440);
  v15 = a6;
  do
  {
    v16 = *v11++;
    memcpy((v16 + (a4 >> *(v14 - 1))), v7, v9 >> *(v14 - 1));
    memcpy((v12 + (v10 >> *v14)), v13, v8 >> *v14);
    v13 += v8;
    v12 += 32;
    v7 = (v7 + v9);
    v14 += 652;
    --v15;
  }

  while (v15);
  memcpy((*(a1 + 8504) + a4), __src + 12, v9);
  memcpy((a1 + v10 + 8512), __src + 14, v8);
  v17 = __src[16];
  *(a1 + 8544) = v17;
  memcpy(v17, __src + 17, v9);
  v18 = *(a1 + 8552);

  return memcpy(v18, __src + 19, v8);
}

__n128 sub_277A53574(uint64_t a1, __n128 *__dst, char a3, int a4, int a5, unsigned int a6)
{
  v7 = __dst;
  v8 = byte_277C36D60[a5];
  v9 = byte_277C3F990[a5];
  v10 = a3 & 0x1F;
  v11 = (a1 + 8384);
  v12 = __dst + 6;
  v13 = a1 + 8408;
  v14 = (a1 + 440);
  v15 = a6;
  do
  {
    v16 = *v11++;
    memcpy(v7, (v16 + (a4 >> *(v14 - 1))), v9 >> *(v14 - 1));
    memcpy(v12, (v13 + (v10 >> *v14)), v8 >> *v14);
    v13 += 32;
    v12 = (v12 + v8);
    v7 = (v7 + v9);
    v14 += 652;
    --v15;
  }

  while (v15);
  memcpy(&__dst[12], (*(a1 + 8504) + a4), v9);
  memcpy(&__dst[14], (a1 + v10 + 8512), v8);
  memcpy(&__dst[17], *(a1 + 8544), v9);
  memcpy(&__dst[19], *(a1 + 8552), v8);
  result = *(a1 + 8544);
  __dst[16] = result;
  return result;
}

uint64_t sub_277A536A0(uint64_t result, int a2, int a3, uint64_t a4, int a5, int a6, unsigned int a7)
{
  v7 = a2 - a5;
  v8 = a3 - a6;
  v9 = byte_277C3F990[*(result + 246176)];
  v10 = *(result + 246172);
  v11 = *(result + 246160) + 176 * (a6 / v9 + v10 * (a5 / v9));
  v12 = byte_277C36D60[a7];
  v13 = byte_277C3F990[a7];
  LODWORD(v14) = *(*(result + 270312) + 32);
  if (a3 - a6 < v14 || v7 < v14)
  {
    if (v14 >= 1)
    {
      v19 = 0;
      if (a7 >= 3)
      {
        v20 = 3;
      }

      else
      {
        v20 = a7;
      }

      do
      {
        if (v14 >= 1)
        {
          v21 = 0;
          v22 = *(result + 246196) * v19;
          v23 = v7 - v19;
          v24 = v13;
          do
          {
            v25 = v8 - v21;
            v14 = v11 + 176 * (v21 / v9 + v10 * (v19 / v9));
            *(a4 + 8 * (v21 + v22)) = v14;
            v27 = v23 < 1 || v25 < 1;
            if (v27)
            {
              LOBYTE(v28) = v20;
            }

            else
            {
              LOBYTE(v28) = 0;
            }

            if (a7 && !v27)
            {
              v28 = a7;
              do
              {
                v12 = byte_277C36D60[v28];
                v24 = byte_277C3F990[v28];
                if (v23 >= v12 && v25 >= v24)
                {
                  break;
                }

                v30 = __OFSUB__(v28, 3);
                v28 -= 3;
              }

              while (!((v28 < 0) ^ v30 | (v28 == 0)));
            }

            *v14 = v28;
            v21 += v24;
            LODWORD(v14) = *(*(result + 270312) + 32);
          }

          while (v21 < v14);
        }

        v19 += v12;
      }

      while (v19 < v14);
    }
  }

  else if (v14 >= 1)
  {
    v15 = 0;
    do
    {
      if (v14 >= 1)
      {
        v16 = 0;
        v17 = a4 + 8 * *(result + 246196) * v15;
        do
        {
          v18 = (v11 + 176 * (v15 / v9 * v10 + v16 / v9));
          *(v17 + 8 * v16) = v18;
          *v18 = a7;
          v16 += v13;
          v14 = *(*(result + 270312) + 32);
        }

        while (v16 < v14);
      }

      v15 += v12;
    }

    while (v15 < v14);
  }

  return result;
}

BOOL sub_277A53850(_DWORD *a1, signed int a2, int a3)
{
  v3 = a1[61537];
  if (a1[68045] >= 2u)
  {
    v5 = a1[61406];
    if ((v5 & 0x80000000) != 0)
    {
      return 1;
    }

    v6 = *(*a1 + 23888);
    v8 = *v6;
    v7 = v6[1];
    v9 = v8 + 232 * v5;
    if (!v8 || v9 > v7)
    {
      return 1;
    }

    v4 = vcvtd_n_s64_f64(*(v9 + 88), 2uLL);
    v3 -= v4;
    if (v3 <= v4)
    {
      v3 = v4;
    }
  }

  else
  {
    v4 = 0;
  }

  v11 = a3 + a2;
  return v4 >= a2 && v4 < v11 || v3 >= a2 && v3 < v11;
}