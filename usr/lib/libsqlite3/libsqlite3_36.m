uint64_t sub_1819FD438(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  v2 = *(result + 152);
  if (v2)
  {
    v3 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_8:
      (*v3)(v2);
      goto LABEL_9;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48 -= xmmword_1ED452EC0(v2);
    --qword_1ED456A90;
    off_1ED452EB0(v2);
    v2 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v3 = &xmmword_1ED452F28;
      goto LABEL_8;
    }
  }

LABEL_9:
  v4 = *(v1 + 128);
  if (!v4)
  {
    goto LABEL_16;
  }

  v5 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_15;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48 -= xmmword_1ED452EC0(v4);
  --qword_1ED456A90;
  off_1ED452EB0(v4);
  v4 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v5 = &xmmword_1ED452F28;
LABEL_15:
    (*v5)(v4);
  }

LABEL_16:
  v6 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
LABEL_21:
    v7 = *v6;

    return v7(v1);
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48 -= xmmword_1ED452EC0(v1);
  --qword_1ED456A90;
  result = off_1ED452EB0(v1);
  v1 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v6 = &xmmword_1ED452F28;
    goto LABEL_21;
  }

  return result;
}

uint64_t sub_1819FD5EC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, int a5, uint64_t (*a6)(uint64_t, void, char *, void, uint64_t, void))
{
  v6 = a4;
  v8 = &a4[a5];
  v9 = *(a1 + 128);
  v10 = v8 - 1;
  v42 = *(a1 + 136);
  v43 = &v9[v42 - 6];
  v11 = a4;
  do
  {
    if (v11 >= v8)
    {
      return 0;
    }

    while (1)
    {
      v14 = *v11;
      if (*v11 < 0)
      {
        break;
      }

      if (*(a1 + *v11))
      {
        v19 = (v11 - v6);
        v20 = v9;
LABEL_26:
        if ((v14 - 65) >= 0x1A)
        {
          v21 = v14;
        }

        else
        {
          v21 = v14 + 32;
        }

        *v20++ = v21;
        v15 = v11 + 1;
        goto LABEL_30;
      }

      v15 = v11 + 1;
LABEL_14:
      v11 = v15;
      if (v15 >= v8)
      {
        return 0;
      }
    }

    v15 = v11 + 1;
    if (v14 >= 0xC0)
    {
      v16 = byte_181A20D3A[(v14 - 192)];
      if (v15 < v8)
      {
        v17 = v10 - v11;
        while (1)
        {
          v18 = *v15;
          if ((*v15 & 0xC0) != 0x80)
          {
            break;
          }

          ++v15;
          v16 = v18 & 0x3F | (v16 << 6);
          if (!--v17)
          {
            v15 = v8;
            break;
          }
        }
      }

      if (v16 < 0x80 || v16 >> 1 == 0x7FFF || v16 >> 11 == 27)
      {
        v14 = 65533;
      }

      else
      {
        v14 = v16;
      }
    }

    if (!sub_1819FEB00(a1, v14))
    {
      goto LABEL_14;
    }

    v19 = (v11 - v6);
    v20 = v9;
    while (1)
    {
      v34 = v19;
      v35 = sub_1819FEC04(v14, *(a1 + 140));
      v19 = v34;
      if (v35)
      {
        if (v35 > 0x7F)
        {
          if (v35 > 0x7FF)
          {
            v36 = (v35 >> 6) & 0x3F | 0x80;
            v37 = v35 & 0x3F | 0x80;
            if (HIWORD(v35))
            {
              *v20 = (v35 >> 18) & 7 | 0xF0;
              v20[1] = (v35 >> 12) & 0x3F | 0x80;
              v20[2] = v36;
              v20[3] = v37;
              v20 += 4;
            }

            else
            {
              *v20 = (v35 >> 12) | 0xE0;
              v20[1] = v36;
              v20[2] = v37;
              v20 += 3;
            }
          }

          else
          {
            *v20 = (v35 >> 6) | 0xC0;
            v20[1] = v35 & 0x3F | 0x80;
            v20 += 2;
          }
        }

        else
        {
          *v20++ = v35;
        }
      }

LABEL_30:
      if (v15 >= v8)
      {
        goto LABEL_44;
      }

      if (v20 > v43)
      {
        v22 = v19;
        if (sqlite3_initialize())
        {
          return 7;
        }

        v23 = sub_181902484(2 * v42, 3728906940);
        if (!v23)
        {
          return 7;
        }

        v9 = v23;
        v24 = *(a1 + 128);
        v20 = &v23[v20 - v24];
        memcpy(v23, v24, v42);
        v25 = *(a1 + 128);
        if (v25)
        {
          v26 = &off_1ED452EB0;
          if (!dword_1ED452E80)
          {
            goto LABEL_39;
          }

          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48[0] -= xmmword_1ED452EC0(v25);
          --qword_1ED456A90;
          off_1ED452EB0(v25);
          v25 = xmmword_1ED456AF0;
          v26 = &xmmword_1ED452F28;
          if (xmmword_1ED456AF0)
          {
LABEL_39:
            (*v26)(v25);
          }
        }

        *(a1 + 128) = v9;
        *(a1 + 136) = 2 * v42;
        v42 *= 2;
        v43 = &v9[v42 - 6];
        v19 = v22;
      }

      v14 = *v15;
      if ((*v15 & 0x80000000) == 0)
      {
        break;
      }

      v11 = v15 + 1;
      if (v14 < 0xC0)
      {
        v31 = v19;
      }

      else
      {
        v28 = byte_181A20D3A[(v14 - 192)];
        if (v11 < v8)
        {
          v29 = v10 - v15;
          while (1)
          {
            v30 = *v11;
            if ((*v11 & 0xC0) != 0x80)
            {
              break;
            }

            ++v11;
            v28 = v30 & 0x3F | (v28 << 6);
            if (!--v29)
            {
              v11 = v8;
              break;
            }
          }
        }

        v31 = v19;
        if (v28 < 0x80 || v28 >> 1 == 0x7FFF || v28 >> 11 == 27)
        {
          v14 = 65533;
        }

        else
        {
          v14 = v28;
        }
      }

      if (sub_1819FEB00(a1, v14))
      {
        v15 = v11;
        v19 = v31;
      }

      else
      {
        v19 = v31;
        if ((v14 - 818) < 0xFFFFFFCE)
        {
          goto LABEL_45;
        }

        v38 = v14 >= 0x320 ? -32 : 0;
        v39 = v14 >= 0x320 ? 221688 : 134389727;
        if (((v39 >> (v14 + v38)) & 1) == 0)
        {
          goto LABEL_45;
        }

        v15 = v11;
      }
    }

    if (*(a1 + *v15))
    {
      v11 = v15;
      goto LABEL_26;
    }

LABEL_44:
    v11 = v15;
LABEL_45:
    LODWORD(result) = a6(a2, 0, v9, (v20 - v9), v19, (v15 - v6));
  }

  while (!result);
  if (result == 101)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t sub_1819FDA44(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  if (a3)
  {
    goto LABEL_36;
  }

  if (sqlite3_initialize())
  {
    v7 = 0;
    v8 = 7;
  }

  else
  {
    v7 = sub_181902484(128, 0x1000040AE2C30F4);
    if (v7)
    {
      v7[6] = 0u;
      v7[7] = 0u;
      v7[4] = 0u;
      v7[5] = 0u;
      v7[2] = 0u;
      v7[3] = 0u;
      *v7 = 0u;
      v7[1] = 0u;
      v9 = xmmword_1EA831688;
      v10 = unk_1EA831698;
      v11 = unk_1EA8316B8;
      v7[2] = xmmword_1EA8316A8;
      v7[3] = v11;
      *v7 = v9;
      v7[1] = v10;
      v12 = xmmword_1EA8316C8;
      v13 = unk_1EA8316D8;
      v14 = unk_1EA8316F8;
      v7[6] = xmmword_1EA8316E8;
      v7[7] = v14;
      v7[4] = v12;
      v7[5] = v13;
      if (a3 < 1)
      {
LABEL_39:
        v8 = 0;
        goto LABEL_38;
      }

      v15 = 0;
LABEL_8:
      v16 = a2 + 8 * v15;
      v17 = *v16;
      if (*v16)
      {
        v18 = *(v16 + 8);
        v19 = v17;
        for (i = "tokenchars"; ; ++i)
        {
          if (*v19 == *i)
          {
            if (!*v19)
            {
              v25 = *v18;
              if (*v18)
              {
                v26 = v18 + 1;
                do
                {
                  if ((v25 & 0x80) == 0)
                  {
                    *(v7 + v25) = 1;
                  }

                  v27 = *v26++;
                  v25 = v27;
                }

                while (v27);
              }

LABEL_7:
              v15 += 2;
              if (v15 >= a3)
              {
                goto LABEL_39;
              }

              goto LABEL_8;
            }
          }

          else if (byte_181A20298[*v19] != byte_181A20298[*i])
          {
            for (j = "separators"; ; ++j)
            {
              if (*v17 == *j)
              {
                if (!*v17)
                {
                  v22 = *v18;
                  if (*v18)
                  {
                    v23 = v18 + 1;
                    do
                    {
                      if ((v22 & 0x80) == 0)
                      {
                        *(v7 + v22) = 0;
                      }

                      v24 = *v23++;
                      v22 = v24;
                    }

                    while (v24);
                  }

                  goto LABEL_7;
                }
              }

              else if (byte_181A20298[*v17] != byte_181A20298[*j])
              {
                goto LABEL_30;
              }

              ++v17;
            }
          }

          ++v19;
        }
      }

LABEL_30:
      v28 = &off_1ED452EB0;
      if (!dword_1ED452E80)
      {
        goto LABEL_35;
      }

      if (xmmword_1ED456AF0)
      {
        v29 = v7;
        xmmword_1ED452F18(xmmword_1ED456AF0);
        v7 = v29;
      }

      v30 = v7;
      qword_1ED456A48[0] -= xmmword_1ED452EC0(v7);
      --qword_1ED456A90;
      off_1ED452EB0(v30);
      v7 = xmmword_1ED456AF0;
      if (xmmword_1ED456AF0)
      {
        v28 = &xmmword_1ED452F28;
LABEL_35:
        (*v28)();
LABEL_36:
        v7 = 0;
      }

      v8 = 1;
    }

    else
    {
      v8 = 7;
    }
  }

LABEL_38:
  *a4 = v7;
  return v8;
}

uint64_t sub_1819FDC90(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  v1 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_7;
  }

  if (xmmword_1ED456AF0)
  {
    v2 = result;
    xmmword_1ED452F18(xmmword_1ED456AF0);
    result = v2;
  }

  v3 = result;
  qword_1ED456A48 -= xmmword_1ED452EC0(result);
  --qword_1ED456A90;
  off_1ED452EB0(v3);
  result = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v1 = &xmmword_1ED452F28;
LABEL_7:
    v4 = *v1;

    return v4();
  }

  return result;
}

uint64_t sub_1819FDD5C(uint64_t a1, uint64_t a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8, uint64_t a9, uint64_t a10, int a11, uint64_t (*a12)(uint64_t, void, int8x16_t *, void, uint64_t, uint64_t))
{
  v57 = *MEMORY[0x1E69E9840];
  v53 = a11 - 1;
  if (a11 < 1)
  {
    return 0;
  }

  v15 = 0;
  v52 = a10 + 16;
  v16 = 64;
  v17 = a11;
  v18.n128_u64[0] = 0xBFBFBFBFBFBFBFBFLL;
  v18.n128_u64[1] = 0xBFBFBFBFBFBFBFBFLL;
  v19.n128_u64[0] = 0x1A1A1A1A1A1A1A1ALL;
  v19.n128_u64[1] = 0x1A1A1A1A1A1A1A1ALL;
  v20.i64[0] = 0x2020202020202020;
  v20.i64[1] = 0x2020202020202020;
  v21 = v56;
  while (1)
  {
    v22 = v15;
    v23 = a11 <= v15 + 1 ? (v15 + 1) : a11;
    while (1)
    {
      v24 = *(a10 + v22);
      if (v24 < 0 || *(a1 + v24))
      {
        break;
      }

      if (++v22 >= v17)
      {
        v22 = v23;
        break;
      }
    }

    if (v22 == a11)
    {
      break;
    }

    v25 = (v22 + 1);
    v26 = v22;
    v27 = v25;
    if (v25 < a11)
    {
      v27 = v25;
      v26 = v22;
      do
      {
        v29 = *(a10 + v27);
        if (v29 < 0)
        {
          v28 = v27;
        }

        else
        {
          v28 = v27;
          if (!*(a1 + v29))
          {
            goto LABEL_19;
          }
        }

        ++v27;
        v26 = v28;
      }

      while (v17 != v27);
      v26 = v53;
      v27 = v17;
    }

LABEL_19:
    v30 = (v27 - v22);
    if (v30 <= v16)
    {
      goto LABEL_31;
    }

    if (v21 != v56 && v21)
    {
      v31 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v21);
        --qword_1ED456A90;
        off_1ED452EB0(v21);
        v21 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
          goto LABEL_28;
        }

        v31 = &xmmword_1ED452F28;
      }

      (*v31)(v21, a3, a4, a5, a6, a7, a8, v18, v19);
    }

LABEL_28:
    if (sqlite3_initialize())
    {
      return 7;
    }

    v32 = sub_181902484(2 * (v27 - v22), 834311414);
    if (!v32)
    {
      return 7;
    }

    v21 = v32;
    v16 = 2 * v30;
    v18.n128_u64[0] = 0xBFBFBFBFBFBFBFBFLL;
    v18.n128_u64[1] = 0xBFBFBFBFBFBFBFBFLL;
    v19.n128_u64[0] = 0x1A1A1A1A1A1A1A1ALL;
    v19.n128_u64[1] = 0x1A1A1A1A1A1A1A1ALL;
    v20.i64[0] = 0x2020202020202020;
    v20.i64[1] = 0x2020202020202020;
LABEL_31:
    if (v30 >= 1)
    {
      if (v30 < 8 || v21 - a10 - v22 < 0x20)
      {
        v33 = 0;
LABEL_35:
        v34 = v30 - v33;
        v35 = &v21->i8[v33];
        v36 = (a10 + v33 + v22);
        do
        {
          v38 = *v36++;
          v37 = v38;
          v39 = v38 | 0x20;
          if ((v38 - 65) < 0x1A)
          {
            v37 = v39;
          }

          *v35++ = v37;
          --v34;
        }

        while (v34);
        goto LABEL_39;
      }

      if (v30 >= 0x20)
      {
        v33 = v30 & 0x7FFFFFE0;
        v41 = (v52 + v22);
        v42 = v21 + 1;
        v43 = v33;
        do
        {
          v44 = vbslq_s8(vcgtq_u8(v19, vaddq_s8(*v41, v18)), vorrq_s8(*v41, v20), *v41);
          v42[-1] = vbslq_s8(vcgtq_u8(v19, vaddq_s8(v41[-1], v18)), vorrq_s8(v41[-1], v20), v41[-1]);
          *v42 = v44;
          v41 += 2;
          v42 += 2;
          v43 -= 32;
        }

        while (v43);
        if (v33 == v30)
        {
          goto LABEL_39;
        }

        if (((v27 - v22) & 0x18) == 0)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v33 = 0;
      }

      v45 = v33;
      v33 = v30 & 0x7FFFFFF8;
      v46 = (a10 + v45 + v22);
      v47 = &v21->i8[v45];
      v48 = v45 - v33;
      do
      {
        v49 = *v46++;
        *v47++ = vbsl_s8(vcgt_u8(0x1A1A1A1A1A1A1A1ALL, vadd_s8(v49, 0xBFBFBFBFBFBFBFBFLL)), vorr_s8(v49, 0x2020202020202020), v49);
        v48 += 8;
      }

      while (v48);
      if (v33 != v30)
      {
        goto LABEL_35;
      }
    }

LABEL_39:
    LODWORD(result) = a12(a2, 0, v21, (v27 - v22), v22, v27);
    v15 = v26 + 2;
    if (v26 + 2 < a11)
    {
      v18.n128_u64[0] = 0xBFBFBFBFBFBFBFBFLL;
      v18.n128_u64[1] = 0xBFBFBFBFBFBFBFBFLL;
      v19.n128_u64[0] = 0x1A1A1A1A1A1A1A1ALL;
      v19.n128_u64[1] = 0x1A1A1A1A1A1A1A1ALL;
      v20.i64[0] = 0x2020202020202020;
      v20.i64[1] = 0x2020202020202020;
      if (!result)
      {
        continue;
      }
    }

    goto LABEL_54;
  }

  LODWORD(result) = 0;
LABEL_54:
  if (v21 != v56 && v21)
  {
    v50 = &off_1ED452EB0;
    v51 = result;
    if (!dword_1ED452E80)
    {
      goto LABEL_61;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v21);
    --qword_1ED456A90;
    off_1ED452EB0(v21);
    v21 = xmmword_1ED456AF0;
    LODWORD(result) = v51;
    if (xmmword_1ED456AF0)
    {
      v50 = &xmmword_1ED452F28;
LABEL_61:
      (*v50)(v21);
      LODWORD(result) = v51;
    }
  }

  if (result == 101)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t sub_1819FE198(_DWORD *a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, int a5, uint64_t (*a6)(uint64_t, void, unsigned __int8 *, void, void, uint64_t))
{
  v6 = a4;
  v8 = 0;
  *&v44[31] = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v9 = &a4[a5];
  }

  else
  {
    v9 = 0;
  }

  v10 = v9 - 1;
  v41 = &v43;
  v11 = a4;
  while (1)
  {
    *&v42[4 * v8] = v11 - v6;
    if (v11 >= v9)
    {
      return 0;
    }

    v13 = v11 + 1;
    v12 = *v11;
    if (v12 >= 0xC0)
    {
      v14 = byte_181A20D3A[(v12 - 192)];
      if (v13 < v9)
      {
        v15 = v10 - v11;
        while (1)
        {
          v16 = *v13;
          if ((*v13 & 0xC0) != 0x80)
          {
            break;
          }

          ++v13;
          v14 = v16 & 0x3F | (v14 << 6);
          if (!--v15)
          {
            v13 = v9;
            break;
          }
        }
      }

      if (v14 < 0x80 || v14 >> 1 == 0x7FFF || v14 >> 11 == 27)
      {
        v12 = 65533;
      }

      else
      {
        v12 = v14;
      }
    }

    v11 = v13;
    if (*a1)
    {
      LODWORD(v12) = sub_1819FEC04(v12, a1[1]);
    }

    if (v12)
    {
      if (v12 > 0x7F)
      {
        v20 = v12 & 0x3F | 0x80;
        if (v12 > 0x7FF)
        {
          v21 = (v12 >> 6) & 0x3F | 0x80;
          if (WORD1(v12))
          {
            *v41 = (v12 >> 18) & 7 | 0xF0;
            v41[1] = (v12 >> 12) & 0x3F | 0x80;
            v41[2] = v21;
            v41[3] = v20;
            v19 = v41 + 4;
          }

          else
          {
            *v41 = (v12 >> 12) | 0xE0;
            v41[1] = v21;
            v41[2] = v20;
            v19 = v41 + 3;
          }
        }

        else
        {
          *v41 = (v12 >> 6) | 0xC0;
          v41[1] = v20;
          v19 = v41 + 2;
        }
      }

      else
      {
        *v41 = v12;
        v19 = v41 + 1;
      }

      v41 = v19;
      if (++v8 == 3)
      {
        v22 = v19;
        while (1)
        {
          v23 = v11;
          if (v11 >= v9)
          {
            break;
          }

          ++v11;
          v24 = *v23;
          if (v24 >= 0xC0)
          {
            v25 = byte_181A20D3A[(v24 - 192)];
            if (v11 < v9)
            {
              v26 = v10 - v23;
              while (1)
              {
                v27 = *v11;
                if ((*v11 & 0xC0) != 0x80)
                {
                  break;
                }

                ++v11;
                v25 = v27 & 0x3F | (v25 << 6);
                if (!--v26)
                {
                  v11 = v9;
                  break;
                }
              }
            }

            if (v25 < 0x80 || v25 >> 1 == 0x7FFF || v25 >> 11 == 27)
            {
              v24 = 65533;
            }

            else
            {
              v24 = v25;
            }
          }

          if (*a1)
          {
            LODWORD(v24) = sub_1819FEC04(v24, a1[1]);
          }

          if (v24)
          {
LABEL_53:
            v30 = (v23 - v6);
            v31 = v24;
            result = a6(a2, 0, &v43, v22 - &v43, *v42, v30);
            if (!v31 || result)
            {
              return result;
            }

            v33 = v22;
            v34 = v44;
            if (v43 >= 0xC0u)
            {
              v34 = &v43;
              do
              {
                v35 = *++v34;
              }

              while ((v35 & 0xC0) == 0x80);
            }

            __memmove_chk();
            v36 = &v33[&v43 - v34];
            if (v31 > 0x7F)
            {
              if (v31 > 0x7FF)
              {
                v37 = (v31 >> 6) & 0x3F | 0x80;
                v38 = v31 & 0x3F | 0x80;
                if (HIWORD(v31))
                {
                  *v36 = (v31 >> 18) & 7 | 0xF0;
                  v36[1] = (v31 >> 12) & 0x3F | 0x80;
                  v36[2] = v37;
                  v36[3] = v38;
                  v22 = v36 + 4;
                }

                else
                {
                  *v36 = (v31 >> 12) | 0xE0;
                  v36[1] = v37;
                  v36[2] = v38;
                  v22 = v36 + 3;
                }
              }

              else
              {
                *v36 = (v31 >> 6) | 0xC0;
                v36[1] = v31 & 0x3F | 0x80;
                v22 = v36 + 2;
              }
            }

            else
            {
              *v36 = v31;
              v22 = v36 + 1;
            }

            *v42 = *&v42[4];
            *&v42[8] = v30;
          }
        }

        LODWORD(v24) = 0;
        goto LABEL_53;
      }
    }
  }
}

uint64_t sub_1819FE550(uint64_t a1, const char **a2, int a3, uint64_t *a4)
{
  v19 = 0;
  v20 = 0;
  v8 = a3 - 1;
  if (a3 < 1)
  {
    v9 = "unicode61";
    if (sqlite3_initialize())
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = *a2;
    if (sqlite3_initialize())
    {
LABEL_3:
      v10 = 0;
LABEL_4:
      result = 7;
      goto LABEL_24;
    }
  }

  v12 = sub_181902484(168, 0x10A0040548F8476);
  v10 = v12;
  if (!v12)
  {
    goto LABEL_4;
  }

  *(v12 + 160) = 0;
  *(v12 + 128) = 0u;
  *(v12 + 144) = 0u;
  *(v12 + 96) = 0u;
  *(v12 + 112) = 0u;
  *(v12 + 64) = 0u;
  *(v12 + 80) = 0u;
  *(v12 + 32) = 0u;
  *(v12 + 48) = 0u;
  *v12 = 0u;
  *(v12 + 16) = 0u;
  result = (*(a1 + 40))(a1, v9, &v20, &v19);
  if (result || (a3 <= 0 ? (v13 = 0) : (v13 = v8), v13 ? (v14 = a2 + 1) : (v14 = 0), v15 = v20, v16 = v19[1], *v10 = *v19, *(v10 + 16) = v16, result = (*(v10 + 8))(v15, v14), result))
  {
    v17 = result;
    if (*(v10 + 32))
    {
      (*(v10 + 16))(*(v10 + 32));
    }

    v18 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v10);
      --qword_1ED456A90;
      off_1ED452EB0(v10);
      v10 = xmmword_1ED456AF0;
      if (!xmmword_1ED456AF0)
      {
        goto LABEL_23;
      }

      v18 = &xmmword_1ED452F28;
    }

    (*v18)(v10);
    v10 = 0;
LABEL_23:
    result = v17;
  }

LABEL_24:
  *a4 = v10;
  return result;
}

uint64_t sub_1819FE6FC(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  if (*(result + 32))
  {
    (*(result + 16))();
  }

  v2 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_9;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48 -= xmmword_1ED452EC0(v1);
  --qword_1ED456A90;
  result = off_1ED452EB0(v1);
  v1 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v2 = &xmmword_1ED452F28;
LABEL_9:
    v3 = *v2;

    return v3(v1);
  }

  return result;
}

uint64_t sub_1819FE7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[0] = a2;
  v9[1] = a8;
  v9[2] = a1 + 40;
  return (*(a1 + 24))(*(a1 + 32), v9, a3, a4, a5, a6, a7, sub_1819FED48);
}

uint64_t sub_1819FE818(uint64_t a1, char *__s, int a3)
{
  v4 = __s;
  v6 = strlen(__s);
  v7 = v6;
  if (v6 < 1)
  {
    return 0;
  }

  v8 = *(a1 + 152);
  v9 = *(a1 + 144) + v6;
  v10 = sqlite3_initialize();
  if (v9)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 0;
  }

  if (!v11)
  {
    return 7;
  }

  v12 = sub_18190287C(v8, 4 * v9, 0x100004052888210);
  if (!v12)
  {
    return 7;
  }

  v13 = v12;
  v14 = *(a1 + 144);
  v15 = v7 & 0x7FFFFFFF;
  if ((v7 & 0x7FFFFFFF) != 0)
  {
    v16 = &v4[v15];
    v37 = &v4[v15];
    v38 = &v4[v15 - 1];
    v17 = v4;
    while (1)
    {
      v19 = *v17++;
      v18 = v19;
      v20 = v19 - 192;
      if (v19 >= 0xC0)
      {
        v18 = byte_181A20D3A[v20];
        if (v17 < v16)
        {
          v21 = v38 - v4;
          while (1)
          {
            v22 = *v17;
            if ((*v17 & 0xC0) != 0x80)
            {
              break;
            }

            ++v17;
            v18 = v22 & 0x3F | (v18 << 6);
            if (!--v21)
            {
              v17 = v37;
              break;
            }
          }
        }

        v23 = 65533;
        if (v18 >> 1 == 0x7FFF || v18 < 0x80 || (v18 & 0xFFFFF800) == 0xD800)
        {
          goto LABEL_25;
        }
      }

      if (v18 > 0x7F)
      {
        break;
      }

      *(a1 + v18) = a3;
LABEL_11:
      v4 = v17;
      if (v17 >= v16)
      {
        goto LABEL_59;
      }
    }

    if (v18 >> 20)
    {
      v24 = 0;
    }

    else
    {
      v23 = v18;
LABEL_25:
      v25 = word_181A26714[HIWORD(v23)];
      v26 = word_181A26714[HIWORD(v23) + 1];
      if (v26 <= v25)
      {
        goto LABEL_39;
      }

      v27 = -1;
      do
      {
        v28 = (v26 + v25) >> 1;
        v29 = word_181A26736[v28];
        if (v23 < v29)
        {
          v26 = (v26 + v25) >> 1;
        }

        else
        {
          v27 = (v26 + v25) >> 1;
        }

        if (v23 >= v29)
        {
          v25 = v28 + 1;
        }
      }

      while (v26 > v25);
      if ((v27 & 0x80000000) != 0 || (v30 = word_181A26736[v27], v31 = word_181A2594A[v27], v23 >= v30 + (v31 >> 5)))
      {
LABEL_39:
        v24 = 0;
      }

      else
      {
        v24 = v31 & 0x1F;
        if (v24 == 30)
        {
          if ((v23 - v30))
          {
            v24 = 5;
          }

          else
          {
            v24 = 9;
          }
        }
      }

      v18 = v23;
    }

    if (*(a1 + 160 + v24) != a3)
    {
      if (v18 - 818 < 0xFFFFFFCE || (v18 >= 0x320 ? (v32 = -32) : (v32 = 0), v18 >= 0x320 ? (v33 = 221688) : (v33 = 134389727), ((v33 >> (v18 + v32)) & 1) == 0))
      {
        if (v14 < 1)
        {
          LODWORD(v34) = 0;
        }

        else
        {
          v34 = 0;
          while (*(v13 + 4 * v34) <= v18)
          {
            if (v14 == ++v34)
            {
              LODWORD(v34) = v14;
              break;
            }
          }
        }

        v35 = (v13 + 4 * v34);
        memmove(v35 + 1, v35, 4 * (v14 - v34));
        *v35 = v18;
        ++v14;
      }
    }

    goto LABEL_11;
  }

LABEL_59:
  result = 0;
  *(a1 + 152) = v13;
  *(a1 + 144) = v14;
  return result;
}

uint64_t sub_1819FEB00(uint64_t a1, unsigned int a2)
{
  if (a2 >> 20)
  {
    goto LABEL_16;
  }

  v2 = word_181A26714[HIWORD(a2)];
  v3 = word_181A26714[HIWORD(a2) + 1];
  if (v3 <= v2)
  {
    goto LABEL_16;
  }

  v4 = -1;
  do
  {
    v5 = (v3 + v2) >> 1;
    v6 = word_181A26736[v5];
    if (a2 < v6)
    {
      v3 = (v3 + v2) >> 1;
    }

    else
    {
      v4 = (v3 + v2) >> 1;
    }

    if (a2 >= v6)
    {
      v2 = v5 + 1;
    }
  }

  while (v3 > v2);
  if ((v4 & 0x80000000) != 0 || (v7 = word_181A26736[v4], v8 = word_181A2594A[v4], a2 >= v7 + (v8 >> 5)))
  {
LABEL_16:
    v9 = 0;
  }

  else
  {
    v9 = v8 & 0x1F;
    if (v9 == 30)
    {
      if ((a2 - v7))
      {
        v9 = 5;
      }

      else
      {
        v9 = 9;
      }
    }
  }

  v10 = *(a1 + 160 + v9);
  v11 = *(a1 + 144);
  v12 = __OFSUB__(v11, 1);
  v13 = v11 - 1;
  if (v13 < 0 != v12)
  {
    return v10;
  }

  v14 = 0;
  while (1)
  {
    v15 = (v14 + v13) >> 1;
    v16 = *(*(a1 + 152) + 4 * v15);
    if (v16 == a2)
    {
      break;
    }

    if (v16 >= a2)
    {
      v13 = v15 - 1;
    }

    else
    {
      v14 = v15 + 1;
    }

    if (v13 < v14)
    {
      return v10;
    }
  }

  return v10 ^ 1;
}

uint64_t sub_1819FEC04(uint64_t result, int a2)
{
  if (result <= 127)
  {
    v2 = result | 0x20;
    v3 = (result - 65) >= 0x1A;
    goto LABEL_27;
  }

  v4 = WORD1(result);
  if (WORD1(result))
  {
    v2 = result + 40;
    v3 = (result - 66560) >= 0x28;
LABEL_27:
    if (v3)
    {
      return result;
    }

    else
    {
      return v2;
    }
  }

  v5 = 162;
  v6 = -1;
  do
  {
    v7 = (v4 + v5) >> 1;
    v8 = word_181A27500[2 * v7];
    if (v8 <= result)
    {
      v4 = v7 + 1;
    }

    else
    {
      v5 = v7 - 1;
    }

    if (v8 <= result)
    {
      v6 = v7;
    }
  }

  while (v5 >= v4);
  v9 = &word_181A27500[2 * v6];
  v10 = *v9;
  if (*(v9 + 3) + v10 > result)
  {
    v11 = *(v9 + 2);
    if (((v10 ^ result) & v11 & 1) == 0)
    {
      result = (*(&unk_181A2778C + (v11 & 0xFE)) + result);
    }
  }

  if (a2)
  {
    v12 = 0;
    v13 = 0;
    v14 = (8 * result) | 7;
    v15 = 125;
    do
    {
      v16 = (v15 + v12) / 2;
      v17 = word_181A27826[v16];
      if (v14 < v17)
      {
        v15 = v16 - 1;
      }

      else
      {
        v13 = (v15 + v12) / 2;
      }

      if (v14 >= v17)
      {
        v12 = v16 + 1;
      }
    }

    while (v15 >= v12);
    if (a2 == 2 || (byte_181A27922[v13] & 0x80000000) == 0)
    {
      v18 = word_181A27826[v13];
      if (((v18 & 7) + (v18 >> 3)) >= result)
      {
        return byte_181A27922[v13] & 0x7F;
      }
    }
  }

  return result;
}

uint64_t sub_1819FED48(uint64_t *a1, uint64_t a2, unsigned __int8 *__src, size_t __n)
{
  if ((__n - 65) < 0xFFFFFFC2)
  {
    v5 = *a1;
    v6 = a1[1];
    goto LABEL_914;
  }

  v7 = a2;
  v8 = a1[2];
  v9 = __n;
  v10 = __n;
  memcpy(v8, __src, __n);
  v11 = v10;
  if (v8[(v10 - 1)] == 115)
  {
    v12 = (v10 - 2);
    v13 = v8[v12];
    if (v13 != 115)
    {
      if (v13 == 101)
      {
        if (v10 < 5)
        {
          if (v10 != 4)
          {
            goto LABEL_12;
          }
        }

        else if (v8[v9 - 4] == 115 && v8[v9 - 3] == 115)
        {
          goto LABEL_13;
        }

        if (v8[v9 - 3] == 105)
        {
LABEL_13:
          v11 = v12;
          goto LABEL_14;
        }
      }

LABEL_12:
      v12 = (v10 - 1);
      goto LABEL_13;
    }
  }

LABEL_14:
  v14 = (v11 - 2);
  v15 = v8[v14];
  if (v15 == 101)
  {
    if (v11 < 4)
    {
      if (v11 != 3)
      {
        v14 = 2;
        goto LABEL_20;
      }
    }

    else
    {
      v39 = (v11 - 3);
      if (*&v8[v39] == 25957 && v8[v39 + 2] == 100)
      {
        v41 = (((*v8 - 97) >> 1) | ((*v8 - 97) << 7));
        v322 = v41 > 0xA;
        v42 = (1 << v41) & 0x495;
        if (v322 || v42 == 0)
        {
          v44 = 1;
          if (v11 == 4)
          {
            v45 = 1;
          }

          else
          {
            v248 = 1;
            while (1)
            {
              v249 = v8[v248];
              v250 = (((v249 - 97) >> 1) | ((v249 - 97) << 7));
              v322 = v250 > 0xA;
              v251 = (1 << v250) & 0x495;
              v252 = v322 || v251 == 0;
              if (!v252 || v249 == 121)
              {
                break;
              }

              ++v248;
              v45 = 1;
              if (v39 == v248)
              {
                v44 = v11 - 3;
                goto LABEL_72;
              }
            }

            v45 = 0;
            v44 = v248;
          }
        }

        else
        {
          v44 = 0;
          v45 = 0;
        }

LABEL_72:
        if ((v44 + 1) >= v39)
        {
          goto LABEL_19;
        }

        v46 = v8[v44 + 1];
        v47 = (((v46 - 97) >> 1) | ((v46 - 97) << 7));
        v322 = v47 > 0xA;
        v48 = (1 << v47) & 0x495;
        if (!v322 && v48 != 0)
        {
          goto LABEL_77;
        }

        v247 = v45 ^ 1;
        if (v46 != 121)
        {
          v247 = 1;
        }

        if ((v247 & 1) == 0)
        {
LABEL_77:
          v50 = v44 + 2;
          if (v39 <= v50)
          {
            goto LABEL_19;
          }

          v51 = &v8[v50];
          while (1)
          {
            v52 = *v51++;
            v53 = (((v52 - 97) >> 1) | ((v52 - 97) << 7));
            v322 = v53 > 0xA;
            v54 = (1 << v53) & 0x495;
            if (v322 || v54 == 0)
            {
              break;
            }

            LODWORD(v50) = v50 + 1;
            if (v39 <= v50)
            {
              goto LABEL_19;
            }
          }
        }

        *&v8[v39] = 25957;
        v14 = (v11 - 1);
        goto LABEL_20;
      }
    }

    if (*&v8[v14] == 25701)
    {
      v77 = *v8;
      v81 = (((v77 - 97) >> 1) | ((v77 - 97) << 7));
      v322 = v81 > 0xA;
      v82 = (1 << v81) & 0x495;
      if (v322 || v82 == 0)
      {
        if (v11 == 3)
        {
          v14 = 3;
          goto LABEL_20;
        }

        v228 = v14 - 1;
        v229 = v8 + 1;
        while (1)
        {
          v231 = *v229++;
          v230 = v231;
          v232 = (((v231 - 97) >> 1) | ((v231 - 97) << 7));
          v322 = v232 > 0xA;
          v233 = (1 << v232) & 0x495;
          v234 = v322 || v233 == 0;
          if (!v234 || v230 == 121)
          {
            break;
          }

          if (!--v228)
          {
            goto LABEL_19;
          }
        }
      }

      goto LABEL_136;
    }

LABEL_19:
    v14 = v11;
    goto LABEL_20;
  }

  if (v15 != 110 || v11 < 4)
  {
    goto LABEL_19;
  }

  v14 = (v11 - 3);
  if (*&v8[v14] != 28265 || v8[v14 + 2] != 103)
  {
    goto LABEL_19;
  }

  v77 = *v8;
  v78 = (((v77 - 97) >> 1) | ((v77 - 97) << 7));
  v322 = v78 > 0xA;
  v79 = (1 << v78) & 0x495;
  if (v322 || v79 == 0)
  {
    if (v11 == 4)
    {
      v14 = 4;
      goto LABEL_20;
    }

    v240 = v14 - 1;
    v241 = v8 + 1;
    while (1)
    {
      v243 = *v241++;
      v242 = v243;
      v244 = (((v243 - 97) >> 1) | ((v243 - 97) << 7));
      v322 = v244 > 0xA;
      v245 = (1 << v244) & 0x495;
      v246 = v322 || v245 == 0;
      if (!v246 || v242 == 121)
      {
        break;
      }

      if (!--v240)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_136:
  v84 = &v8[v14];
  v85 = v84 - 2;
  v86 = *(v84 - 2);
  if (v86 == 105)
  {
    if (v14 >= 3 && *v85 == 31337)
    {
      v87 = "ize";
      goto LABEL_397;
    }
  }

  else if (v86 == 98)
  {
    if (v14 >= 3 && *v85 == 27746)
    {
      v87 = "ble";
      goto LABEL_397;
    }
  }

  else if (v86 == 97 && v14 >= 3 && *v85 == 29793)
  {
    v87 = "ate";
LABEL_397:
    *v85 = *v87;
    v85[2] = v87[2];
    v14 = (v14 + 1);
    goto LABEL_20;
  }

  v146 = *(v84 - 1);
  v147 = (((v146 - 97) >> 1) | ((v146 - 97) << 7));
  v322 = v147 > 0xA;
  v148 = (1 << v147) & 0x495;
  v149 = v322 || v148 == 0;
  if (v149 && ((v146 - 108) > 0xE || ((1 << (v146 - 108)) & 0x4081) == 0) && v146 == v86)
  {
    v14 = (v14 - 1);
    goto LABEL_20;
  }

  if (v14 < 1 || (v150 = (((v77 - 97) >> 1) | ((v77 - 97) << 7)), v150 <= 0xA) && ((1 << v150) & 0x495) != 0)
  {
    v151 = 0;
    v152 = 0;
  }

  else
  {
    v151 = 1;
    if (v14 == 1)
    {
      v152 = 1;
    }

    else
    {
      v235 = 1;
      while (1)
      {
        v236 = v8[v235];
        v237 = (((v236 - 97) >> 1) | ((v236 - 97) << 7));
        v322 = v237 > 0xA;
        v238 = (1 << v237) & 0x495;
        v239 = v322 || v238 == 0;
        if (!v239 || v236 == 121)
        {
          break;
        }

        ++v235;
        v152 = 1;
        if (v14 == v235)
        {
          v151 = v14;
          goto LABEL_266;
        }
      }

      v152 = 0;
      v151 = v235;
    }
  }

LABEL_266:
  if (v151 + 1 < v14)
  {
    v153 = v8[v151 + 1];
    v154 = (((v153 - 97) >> 1) | ((v153 - 97) << 7));
    v322 = v154 > 0xA;
    v155 = (1 << v154) & 0x495;
    if (!v322 && v155 != 0)
    {
      goto LABEL_271;
    }

    v220 = v152 ^ 1;
    if (v153 != 121)
    {
      v220 = 1;
    }

    if ((v220 & 1) == 0)
    {
LABEL_271:
      if (v14 <= v151 + 2)
      {
        goto LABEL_20;
      }

      v157 = &v8[v151++ + 2];
      while (1)
      {
        v158 = *v157++;
        v159 = (((v158 - 97) >> 1) | ((v158 - 97) << 7));
        v322 = v159 > 0xA;
        v160 = (1 << v159) & 0x495;
        if (v322 || v160 == 0)
        {
          break;
        }

        v162 = v151 + 2;
        ++v151;
        if (v14 <= v162)
        {
          goto LABEL_20;
        }
      }
    }

    v221 = &v8[v151 + 2];
    v222 = (v14 - (v151 + 2));
    v223 = 1;
    if (v222 < 1)
    {
      v227 = 0;
    }

    else
    {
      v224 = *v221;
      v225 = (((v224 - 97) >> 1) | ((v224 - 97) << 7));
      v226 = v225 > 0xA || ((1 << v225) & 0x495) == 0;
      if (!v226 || v224 == 121)
      {
        v227 = 0;
        v223 = 0;
      }

      else
      {
        v227 = 1;
        if (v222 == 1)
        {
          v223 = 1;
        }

        else
        {
          v534 = &v8[v151 + 3];
          v535 = -1;
          while (1)
          {
            v537 = *v534++;
            v536 = v537;
            v538 = (((v537 - 97) >> 1) | ((v537 - 97) << 7));
            v322 = v538 > 0xA;
            v539 = (1 << v538) & 0x495;
            v540 = v322 || v539 == 0;
            if (!v540 || v536 == 121)
            {
              break;
            }

            --v535;
            v223 = 1;
            if (-v222 == v535)
            {
              v227 = v14 - (v151 + 2);
              goto LABEL_451;
            }
          }

          v223 = 0;
          v227 = -v535;
        }
      }
    }

LABEL_451:
    if ((v227 + 1) >= v222)
    {
      goto LABEL_463;
    }

    v253 = v221[v227 + 1];
    v254 = (((v253 - 97) >> 1) | ((v253 - 97) << 7));
    v322 = v254 > 0xA;
    v255 = (1 << v254) & 0x495;
    if (v322 || v255 == 0)
    {
      v20 = v253 == 121;
      v526 = v223 ^ 1;
      if (!v20)
      {
        v526 = 1;
      }

      if (v526)
      {
        goto LABEL_20;
      }
    }

    v257 = v227 + 2;
    if (v222 <= (v227 + 2))
    {
LABEL_463:
      if (v14 >= 1 && (v146 - 122) <= 0xFCu)
      {
        v263 = 0;
        v264 = 0;
        v265 = v8;
        v266 = v14;
        do
        {
          v269 = *v265++;
          v268 = v269;
          v270 = ((v269 - 97) >> 1) | ((v269 - 97) << 7);
          if (v270 < 0xBu && ((0x495u >> v270) & 1) != 0)
          {
            v263 = 0;
          }

          else
          {
            if (v263)
            {
              v267 = v268 == 121;
            }

            else
            {
              v267 = 0;
            }

            v263 = !v267;
          }

          v264 = v263 | (2 * v264);
          --v266;
        }

        while (v266);
        if ((v264 & 7) == 5)
        {
          v14 = (v14 + 1);
          *v84 = 101;
        }
      }

      goto LABEL_20;
    }

    v258 = &v8[v227 + 4 + v151];
    while (1)
    {
      v259 = *v258++;
      v260 = (((v259 - 97) >> 1) | ((v259 - 97) << 7));
      v322 = v260 > 0xA;
      v261 = (1 << v260) & 0x495;
      if (v322 || v261 == 0)
      {
        break;
      }

      if (v222 <= ++v257)
      {
        goto LABEL_463;
      }
    }
  }

LABEL_20:
  v17 = v14 - 1;
  if (v14 > 1 && v8[v17] == 121)
  {
    v18 = (((*v8 - 97) >> 1) | ((*v8 - 97) << 7));
    v322 = v18 > 0xA;
    v19 = (1 << v18) & 0x495;
    v20 = v322 || v19 == 0;
    if (!v20)
    {
LABEL_26:
      v8[v14 - 1] = 105;
      goto LABEL_27;
    }

    if (v14 != 2)
    {
      v133 = v17 - 1;
      v134 = v8 + 1;
      do
      {
        v136 = *v134++;
        v135 = v136;
        v137 = (((v136 - 97) >> 1) | ((v136 - 97) << 7));
        v322 = v137 > 0xA;
        v138 = (1 << v137) & 0x495;
        v139 = v322 || v138 == 0;
        if (!v139 || v135 == 121)
        {
          goto LABEL_26;
        }
      }

      while (--v133);
    }
  }

LABEL_27:
  v21 = v8[v14 - 2];
  if (v21 <= 0x6B)
  {
    if (v8[v14 - 2] > 0x64u)
    {
      if (v21 == 101)
      {
        if (v14 < 5)
        {
          goto LABEL_588;
        }

        v111 = (v14 - 4);
        v57 = &v8[v111];
        if (*&v8[v111] != 1919253097)
        {
          goto LABEL_588;
        }

        v112 = (((*v8 - 97) >> 1) | ((*v8 - 97) << 7));
        if (v112 <= 0xA && ((1 << v112) & 0x495) != 0)
        {
          v113 = 0;
          v114 = 0;
        }

        else
        {
          v113 = 1;
          if (v14 == 5)
          {
            v114 = 1;
          }

          else
          {
            v276 = 1;
            while (1)
            {
              v277 = v8[v276];
              v278 = (((v277 - 97) >> 1) | ((v277 - 97) << 7));
              v322 = v278 > 0xA;
              v279 = (1 << v278) & 0x495;
              v280 = v322 || v279 == 0;
              if (!v280 || v277 == 121)
              {
                break;
              }

              ++v276;
              v114 = 1;
              if (v111 == v276)
              {
                v113 = v14 - 4;
                goto LABEL_192;
              }
            }

            v114 = 0;
            v113 = v276;
          }
        }

LABEL_192:
        if ((v113 + 1) >= v111)
        {
          goto LABEL_588;
        }

        v115 = v8[v113 + 1];
        v116 = (((v115 - 97) >> 1) | ((v115 - 97) << 7));
        v322 = v116 > 0xA;
        v117 = (1 << v116) & 0x495;
        if (!v322 && v117 != 0)
        {
          goto LABEL_197;
        }

        v313 = v114 ^ 1;
        if (v115 != 121)
        {
          v313 = 1;
        }

        if ((v313 & 1) == 0)
        {
LABEL_197:
          v119 = v113 + 2;
          if (v111 <= v119)
          {
            goto LABEL_588;
          }

          v120 = &v8[v119];
          while (1)
          {
            v121 = *v120++;
            v122 = (((v121 - 97) >> 1) | ((v121 - 97) << 7));
            v322 = v122 > 0xA;
            v123 = (1 << v122) & 0x495;
            if (v322 || v123 == 0)
            {
              break;
            }

            LODWORD(v119) = v119 + 1;
            if (v111 <= v119)
            {
              goto LABEL_588;
            }
          }
        }

        v57[2] = 101;
        v314 = 31337;
      }

      else
      {
        if (v21 != 103)
        {
          goto LABEL_588;
        }

        if (v14 < 5)
        {
          goto LABEL_588;
        }

        v56 = (v14 - 4);
        v57 = &v8[v56];
        if (*&v8[v56] != 1768386412)
        {
          goto LABEL_588;
        }

        v58 = (((*v8 - 97) >> 1) | ((*v8 - 97) << 7));
        if (v58 <= 0xA && ((1 << v58) & 0x495) != 0)
        {
          v59 = 0;
          v60 = 0;
        }

        else
        {
          v59 = 1;
          if (v14 == 5)
          {
            v60 = 1;
          }

          else
          {
            v296 = 1;
            while (1)
            {
              v297 = v8[v296];
              v298 = (((v297 - 97) >> 1) | ((v297 - 97) << 7));
              v322 = v298 > 0xA;
              v299 = (1 << v298) & 0x495;
              v300 = v322 || v299 == 0;
              if (!v300 || v297 == 121)
              {
                break;
              }

              ++v296;
              v60 = 1;
              if (v56 == v296)
              {
                v59 = v14 - 4;
                goto LABEL_92;
              }
            }

            v60 = 0;
            v59 = v296;
          }
        }

LABEL_92:
        if ((v59 + 1) >= v56)
        {
          goto LABEL_588;
        }

        v61 = v8[v59 + 1];
        v62 = (((v61 - 97) >> 1) | ((v61 - 97) << 7));
        v322 = v62 > 0xA;
        v63 = (1 << v62) & 0x495;
        if (!v322 && v63 != 0)
        {
          goto LABEL_97;
        }

        v318 = v60 ^ 1;
        if (v61 != 121)
        {
          v318 = 1;
        }

        if ((v318 & 1) == 0)
        {
LABEL_97:
          v65 = v59 + 2;
          if (v56 <= v65)
          {
            goto LABEL_588;
          }

          v66 = &v8[v65];
          while (1)
          {
            v67 = *v66++;
            v68 = (((v67 - 97) >> 1) | ((v67 - 97) << 7));
            v322 = v68 > 0xA;
            v69 = (1 << v68) & 0x495;
            if (v322 || v69 == 0)
            {
              break;
            }

            LODWORD(v65) = v65 + 1;
            if (v56 <= v65)
            {
              goto LABEL_588;
            }
          }
        }

        v57[2] = 103;
        v314 = 28524;
      }

      *v57 = v314;
      v14 = v14 - 1;
      goto LABEL_588;
    }

    if (v21 != 97)
    {
      if (v21 == 99 && v14 >= 5)
      {
        v22 = (v14 - 4);
        if (*&v8[v22] == 1768124005)
        {
          v192 = (((*v8 - 97) >> 1) | ((*v8 - 97) << 7));
          if (v192 <= 0xA && ((1 << v192) & 0x495) != 0)
          {
            v193 = 0;
            v194 = 0;
          }

          else
          {
            v193 = 1;
            if (v14 == 5)
            {
              v194 = 1;
            }

            else
            {
              v301 = 1;
              while (1)
              {
                v302 = v8[v301];
                v303 = (((v302 - 97) >> 1) | ((v302 - 97) << 7));
                v322 = v303 > 0xA;
                v304 = (1 << v303) & 0x495;
                v305 = v322 || v304 == 0;
                if (!v305 || v302 == 121)
                {
                  break;
                }

                ++v301;
                v194 = 1;
                if (v22 == v301)
                {
                  v193 = v14 - 4;
                  goto LABEL_325;
                }
              }

              v194 = 0;
              v193 = v301;
            }
          }

LABEL_325:
          if ((v193 + 1) < v22)
          {
            v195 = v8[v193 + 1];
            v196 = (((v195 - 97) >> 1) | ((v195 - 97) << 7));
            v322 = v196 > 0xA;
            v197 = (1 << v196) & 0x495;
            if (!v322 && v197 != 0)
            {
              goto LABEL_330;
            }

            v319 = v194 ^ 1;
            if (v195 != 121)
            {
              v319 = 1;
            }

            if ((v319 & 1) == 0)
            {
LABEL_330:
              v199 = v193 + 2;
              if (v22 <= v199)
              {
                goto LABEL_588;
              }

              v200 = &v8[v199];
              while (1)
              {
                v201 = *v200++;
                v202 = (((v201 - 97) >> 1) | ((v201 - 97) << 7));
                v322 = v202 > 0xA;
                v203 = (1 << v202) & 0x495;
                if (v322 || v203 == 0)
                {
                  break;
                }

                LODWORD(v199) = v199 + 1;
                if (v22 <= v199)
                {
                  goto LABEL_588;
                }
              }
            }

            *&v8[v22] = 1701015141;
          }
        }

        else if (*&v8[v22] == 1768124001 && sub_181A01A88(v8, v14 - 4, 0))
        {
          *&v8[v22] = 1701015137;
        }
      }

      goto LABEL_588;
    }

    if (v14 < 8)
    {
      if (v14 != 7)
      {
        goto LABEL_588;
      }

      goto LABEL_238;
    }

    v88 = (v14 - 7);
    v24 = &v8[v88];
    if (*&v8[v88] != 1869182049 || *&v8[v88 + 3] != 1818324591)
    {
LABEL_238:
      v140 = (v14 - 6);
      v141 = &v8[v140];
      v142 = *&v8[v140] == 1852795252 && *&v8[v140 + 4] == 27745;
      if (v142 && sub_181A01A88(v8, v140, 0))
      {
        *v141 = 1852795252;
        v14 = (v14 - 2);
      }

      goto LABEL_588;
    }

    v90 = (((*v8 - 97) >> 1) | ((*v8 - 97) << 7));
    if (v90 <= 0xA && ((1 << v90) & 0x495) != 0)
    {
      v91 = 0;
      v92 = 0;
    }

    else
    {
      v91 = 1;
      if (v14 == 8)
      {
        v92 = 1;
      }

      else
      {
        v271 = 1;
        while (1)
        {
          v272 = v8[v271];
          v273 = (((v272 - 97) >> 1) | ((v272 - 97) << 7));
          v322 = v273 > 0xA;
          v274 = (1 << v273) & 0x495;
          v275 = v322 || v274 == 0;
          if (!v275 || v272 == 121)
          {
            break;
          }

          ++v271;
          v92 = 1;
          if (v88 == v271)
          {
            v91 = v14 - 7;
            goto LABEL_151;
          }
        }

        v92 = 0;
        v91 = v271;
      }
    }

LABEL_151:
    if ((v91 + 1) >= v88)
    {
      goto LABEL_588;
    }

    v93 = v8[v91 + 1];
    v94 = (((v93 - 97) >> 1) | ((v93 - 97) << 7));
    v322 = v94 > 0xA;
    v95 = (1 << v94) & 0x495;
    if (!v322 && v95 != 0)
    {
      goto LABEL_156;
    }

    v311 = v92 ^ 1;
    if (v93 != 121)
    {
      v311 = 1;
    }

    if ((v311 & 1) == 0)
    {
LABEL_156:
      v97 = v91 + 2;
      if (v88 <= v97)
      {
        goto LABEL_588;
      }

      v98 = &v8[v97];
      while (1)
      {
        v99 = *v98++;
        v100 = (((v99 - 97) >> 1) | ((v99 - 97) << 7));
        v322 = v100 > 0xA;
        v101 = (1 << v100) & 0x495;
        if (v322 || v101 == 0)
        {
          break;
        }

        LODWORD(v97) = v97 + 1;
        if (v88 <= v97)
        {
          goto LABEL_588;
        }
      }
    }

    v24[2] = 101;
    v312 = 29793;
LABEL_572:
    *v24 = v312;
    v14 = (v14 - 4);
    goto LABEL_588;
  }

  if (v8[v14 - 2] <= 0x72u)
  {
    if (v21 != 108)
    {
      if (v21 != 111)
      {
        goto LABEL_588;
      }

      if (v14 < 8)
      {
        if (v14 < 6)
        {
          if (v14 != 5)
          {
            goto LABEL_588;
          }

          goto LABEL_280;
        }
      }

      else
      {
        v23 = (v14 - 7);
        v24 = &v8[v23];
        if (*&v8[v23] == 1952545385 && *&v8[v23 + 3] == 1852795252)
        {
          v26 = (((*v8 - 97) >> 1) | ((*v8 - 97) << 7));
          if (v26 <= 0xA && ((1 << v26) & 0x495) != 0)
          {
            v27 = 0;
            v28 = 0;
          }

          else
          {
            v27 = 1;
            if (v14 == 8)
            {
              v28 = 1;
            }

            else
            {
              v291 = 1;
              while (1)
              {
                v292 = v8[v291];
                v293 = (((v292 - 97) >> 1) | ((v292 - 97) << 7));
                v322 = v293 > 0xA;
                v294 = (1 << v293) & 0x495;
                v295 = v322 || v294 == 0;
                if (!v295 || v292 == 121)
                {
                  break;
                }

                ++v291;
                v28 = 1;
                if (v23 == v291)
                {
                  v27 = v14 - 7;
                  goto LABEL_48;
                }
              }

              v28 = 0;
              v27 = v291;
            }
          }

LABEL_48:
          if ((v27 + 1) >= v23)
          {
            goto LABEL_588;
          }

          v29 = v8[v27 + 1];
          v30 = (((v29 - 97) >> 1) | ((v29 - 97) << 7));
          v322 = v30 > 0xA;
          v31 = (1 << v30) & 0x495;
          if (!v322 && v31 != 0)
          {
            goto LABEL_53;
          }

          v317 = v28 ^ 1;
          if (v29 != 121)
          {
            v317 = 1;
          }

          if ((v317 & 1) == 0)
          {
LABEL_53:
            v33 = v27 + 2;
            if (v23 <= v33)
            {
              goto LABEL_588;
            }

            v34 = &v8[v33];
            while (1)
            {
              v35 = *v34++;
              v36 = (((v35 - 97) >> 1) | ((v35 - 97) << 7));
              v322 = v36 > 0xA;
              v37 = (1 << v36) & 0x495;
              if (v322 || v37 == 0)
              {
                break;
              }

              LODWORD(v33) = v33 + 1;
              if (v23 <= v33)
              {
                goto LABEL_588;
              }
            }
          }

          v24[2] = 101;
          v312 = 31337;
          goto LABEL_572;
        }
      }

      v143 = (v14 - 5);
      v144 = &v8[v143];
      if (*&v8[v143] == 1869182049 && v8[v143 + 4] == 110)
      {
        if (sub_181A01A88(v8, v143, 0))
        {
          v144[2] = 101;
          *v144 = 29793;
          v14 = (v14 - 2);
        }

        goto LABEL_588;
      }

LABEL_280:
      v163 = (v14 - 4);
      v164 = &v8[v163];
      if (*&v8[v163] == 1919906913 && sub_181A01A88(v8, v163, 0))
      {
        v164[2] = 101;
        *v164 = 29793;
        v14 = v14 - 1;
      }

      goto LABEL_588;
    }

    if (v14 < 4)
    {
      goto LABEL_588;
    }

    v103 = (v14 - 3);
    v104 = &v8[v103];
    if (*&v8[v103] == 27746 && v8[v103 + 2] == 105)
    {
      v166 = (((*v8 - 97) >> 1) | ((*v8 - 97) << 7));
      if (v166 <= 0xA && ((1 << v166) & 0x495) != 0)
      {
        v167 = 0;
        v168 = 0;
      }

      else
      {
        v167 = 1;
        if (v14 == 4)
        {
          v168 = 1;
        }

        else
        {
          v281 = 1;
          while (1)
          {
            v282 = v8[v281];
            v283 = (((v282 - 97) >> 1) | ((v282 - 97) << 7));
            v322 = v283 > 0xA;
            v284 = (1 << v283) & 0x495;
            v285 = v322 || v284 == 0;
            if (!v285 || v282 == 121)
            {
              break;
            }

            ++v281;
            v168 = 1;
            if (v103 == v281)
            {
              v167 = v14 - 3;
              goto LABEL_293;
            }
          }

          v168 = 0;
          v167 = v281;
        }
      }

LABEL_293:
      if ((v167 + 1) < v103)
      {
        v169 = v8[v167 + 1];
        v170 = (((v169 - 97) >> 1) | ((v169 - 97) << 7));
        v322 = v170 > 0xA;
        v171 = (1 << v170) & 0x495;
        if (!v322 && v171 != 0)
        {
          goto LABEL_298;
        }

        v315 = v168 ^ 1;
        if (v169 != 121)
        {
          v315 = 1;
        }

        if ((v315 & 1) == 0)
        {
LABEL_298:
          v173 = v167 + 2;
          if (v103 <= v173)
          {
            goto LABEL_588;
          }

          v174 = &v8[v173];
          while (1)
          {
            v175 = *v174++;
            v176 = (((v175 - 97) >> 1) | ((v175 - 97) << 7));
            v322 = v176 > 0xA;
            v177 = (1 << v176) & 0x495;
            if (v322 || v177 == 0)
            {
              break;
            }

            LODWORD(v173) = v173 + 1;
            if (v103 <= v173)
            {
              goto LABEL_588;
            }
          }
        }

        v104[2] = 101;
        *v104 = 27746;
      }

      goto LABEL_588;
    }

    v106 = (v14 - 4);
    if (v14 == 4)
    {
      goto LABEL_283;
    }

    if (*&v8[v106] == 1768713313)
    {
      if (sub_181A01A88(v8, v14 - 4, 0))
      {
        *&v8[v106] = 27745;
        v14 = (v14 - 2);
      }

      goto LABEL_588;
    }

    if (v14 < 6)
    {
LABEL_283:
      if (*v104 != 27749 || v104[2] != 105)
      {
        goto LABEL_588;
      }
    }

    else
    {
      v72 = &v8[(v14 - 5)];
      if (*v72 == 1819569765 && v72[4] == 105)
      {
        if (!sub_181A01A88(v8, v14 - 5, 0))
        {
          goto LABEL_588;
        }

        v72[2] = 116;
        v110 = 28261;
        goto LABEL_360;
      }

      if (*v104 != 27749 || v104[2] != 105)
      {
        v109 = *v72 == 1819506031 && v72[4] == 105;
        if (!v109 || !sub_181A01A88(v8, v14 - 5, 0))
        {
          goto LABEL_588;
        }

        v72[2] = 115;
        v110 = 30063;
LABEL_360:
        *v72 = v110;
        v14 = (v14 - 2);
        goto LABEL_588;
      }
    }

    if (sub_181A01A88(v8, v103, 0))
    {
      *v104 = 101;
      v14 = (v14 - 2);
    }

    goto LABEL_588;
  }

  if (v21 != 115)
  {
    if (v21 != 116 || v14 < 6)
    {
      goto LABEL_588;
    }

    v71 = (v14 - 5);
    v72 = &v8[v71];
    if (*&v8[v71] == 1953066081 && v8[v71 + 4] == 105)
    {
      v205 = (((*v8 - 97) >> 1) | ((*v8 - 97) << 7));
      if (v205 <= 0xA && ((1 << v205) & 0x495) != 0)
      {
        v206 = 0;
        v207 = 0;
      }

      else
      {
        v206 = 1;
        if (v14 == 6)
        {
          v207 = 1;
        }

        else
        {
          v306 = 1;
          while (1)
          {
            v307 = v8[v306];
            v308 = (((v307 - 97) >> 1) | ((v307 - 97) << 7));
            v322 = v308 > 0xA;
            v309 = (1 << v308) & 0x495;
            v310 = v322 || v309 == 0;
            if (!v310 || v307 == 121)
            {
              break;
            }

            ++v306;
            v207 = 1;
            if (v71 == v306)
            {
              v206 = v14 - 5;
              goto LABEL_341;
            }
          }

          v207 = 0;
          v206 = v306;
        }
      }

LABEL_341:
      if ((v206 + 1) >= v71)
      {
        goto LABEL_588;
      }

      v208 = v8[v206 + 1];
      v209 = (((v208 - 97) >> 1) | ((v208 - 97) << 7));
      v322 = v209 > 0xA;
      v210 = (1 << v209) & 0x495;
      if (!v322 && v210 != 0)
      {
        goto LABEL_346;
      }

      v320 = v207 ^ 1;
      if (v208 != 121)
      {
        v320 = 1;
      }

      if ((v320 & 1) == 0)
      {
LABEL_346:
        v212 = v206 + 2;
        if (v71 <= v212)
        {
          goto LABEL_588;
        }

        v213 = &v8[v212];
        while (1)
        {
          v214 = *v213++;
          v215 = (((v214 - 97) >> 1) | ((v214 - 97) << 7));
          v322 = v215 > 0xA;
          v216 = (1 << v215) & 0x495;
          if (v322 || v216 == 0)
          {
            break;
          }

          LODWORD(v212) = v212 + 1;
          if (v71 <= v212)
          {
            goto LABEL_588;
          }
        }
      }

      v219 = 27745;
    }

    else
    {
      if (*v72 == 1953068649 && v72[4] == 105)
      {
        if (!sub_181A01A88(v8, v71, 0))
        {
          goto LABEL_588;
        }

        v72[2] = 101;
        v110 = 30313;
        goto LABEL_360;
      }

      v75 = (v14 - 6);
      if (v14 == 6)
      {
        v14 = 6;
        goto LABEL_588;
      }

      v72 = &v8[v75];
      v218 = *&v8[v75] == 1768712546 && *&v8[v75 + 4] == 26996;
      if (!v218 || !sub_181A01A88(v8, v75, 0))
      {
        goto LABEL_588;
      }

      v72[2] = 101;
      v219 = 27746;
    }

    *v72 = v219;
LABEL_587:
    v14 = (v14 - 3);
    goto LABEL_588;
  }

  if (v14 < 6)
  {
    goto LABEL_588;
  }

  v125 = (v14 - 5);
  if (*&v8[v125] != 1936288865 || v8[v125 + 4] != 109)
  {
    if (v14 < 8)
    {
      goto LABEL_588;
    }

    v127 = (v14 - 7);
    v128 = &v8[v127];
    if (*&v8[v127] == 1852143209 && *&v8[v127 + 3] == 1936942446)
    {
      if (!sub_181A01A88(v8, v127, 0))
      {
        goto LABEL_588;
      }

      v128[2] = 101;
      v132 = 30313;
    }

    else if (*v128 == 1852601702 && *(v128 + 3) == 1936942446)
    {
      if (!sub_181A01A88(v8, v127, 0))
      {
        goto LABEL_588;
      }

      v128[2] = 108;
      v132 = 30054;
    }

    else
    {
      v131 = *v128 == 1853060463 && *(v128 + 3) == 1936942446;
      if (!v131 || !sub_181A01A88(v8, v127, 0))
      {
        goto LABEL_588;
      }

      v128[2] = 115;
      v132 = 30063;
    }

    *v128 = v132;
    v14 = (v14 - 4);
    goto LABEL_588;
  }

  v179 = (((*v8 - 97) >> 1) | ((*v8 - 97) << 7));
  if (v179 <= 0xA && ((1 << v179) & 0x495) != 0)
  {
    v180 = 0;
    v181 = 0;
  }

  else
  {
    v180 = 1;
    if (v14 == 6)
    {
      v181 = 1;
    }

    else
    {
      v286 = 1;
      while (1)
      {
        v287 = v8[v286];
        v288 = (((v287 - 97) >> 1) | ((v287 - 97) << 7));
        v322 = v288 > 0xA;
        v289 = (1 << v288) & 0x495;
        v290 = v322 || v289 == 0;
        if (!v290 || v287 == 121)
        {
          break;
        }

        ++v286;
        v181 = 1;
        if (v125 == v286)
        {
          v180 = v14 - 5;
          goto LABEL_309;
        }
      }

      v181 = 0;
      v180 = v286;
    }
  }

LABEL_309:
  if ((v180 + 1) < v125)
  {
    v182 = v8[v180 + 1];
    v183 = (((v182 - 97) >> 1) | ((v182 - 97) << 7));
    v322 = v183 > 0xA;
    v184 = (1 << v183) & 0x495;
    if (!v322 && v184 != 0)
    {
      goto LABEL_314;
    }

    v316 = v181 ^ 1;
    if (v182 != 121)
    {
      v316 = 1;
    }

    if ((v316 & 1) == 0)
    {
LABEL_314:
      v186 = v180 + 2;
      if (v125 <= v186)
      {
        goto LABEL_588;
      }

      v187 = &v8[v186];
      while (1)
      {
        v188 = *v187++;
        v189 = (((v188 - 97) >> 1) | ((v188 - 97) << 7));
        v322 = v189 > 0xA;
        v190 = (1 << v189) & 0x495;
        if (v322 || v190 == 0)
        {
          break;
        }

        LODWORD(v186) = v186 + 1;
        if (v125 <= v186)
        {
          goto LABEL_588;
        }
      }
    }

    *&v8[v125] = 27745;
    goto LABEL_587;
  }

LABEL_588:
  v321 = v8[v14 - 2];
  if (v321 > 0x74)
  {
    if (v321 == 117)
    {
      if (v14 < 4)
      {
        goto LABEL_820;
      }

      v357 = (v14 - 3);
      if (*&v8[v357] != 30054 || v8[v357 + 2] != 108)
      {
        goto LABEL_820;
      }

      v359 = (((*v8 - 97) >> 1) | ((*v8 - 97) << 7));
      if (v359 <= 0xA && ((1 << v359) & 0x495) != 0)
      {
        v360 = 0;
        v361 = 0;
      }

      else
      {
        v360 = 1;
        if (v14 == 4)
        {
          v361 = 1;
        }

        else
        {
          v417 = 1;
          while (1)
          {
            v418 = v8[v417];
            v419 = (((v418 - 97) >> 1) | ((v418 - 97) << 7));
            v322 = v419 > 0xA;
            v420 = (1 << v419) & 0x495;
            v421 = v322 || v420 == 0;
            if (!v421 || v418 == 121)
            {
              break;
            }

            ++v417;
            v361 = 1;
            if (v357 == v417)
            {
              v360 = v14 - 3;
              goto LABEL_661;
            }
          }

          v361 = 0;
          v360 = v417;
        }
      }

LABEL_661:
      if ((v360 + 1) >= v357)
      {
        goto LABEL_820;
      }

      v362 = v8[v360 + 1];
      v363 = (((v362 - 97) >> 1) | ((v362 - 97) << 7));
      v322 = v363 > 0xA;
      v364 = (1 << v363) & 0x495;
      if (!v322 && v364 != 0)
      {
        goto LABEL_666;
      }

      v443 = v361 ^ 1;
      if (v362 != 121)
      {
        v443 = 1;
      }

      if ((v443 & 1) == 0)
      {
LABEL_666:
        v366 = v360 + 2;
        if (v357 <= v366)
        {
          goto LABEL_820;
        }

        v367 = &v8[v366];
        while (1)
        {
          v368 = *v367++;
          v369 = (((v368 - 97) >> 1) | ((v368 - 97) << 7));
          v322 = v369 > 0xA;
          v370 = (1 << v369) & 0x495;
          if (v322 || v370 == 0)
          {
            break;
          }

          LODWORD(v366) = v366 + 1;
          if (v357 <= v366)
          {
            goto LABEL_820;
          }
        }
      }

      goto LABEL_819;
    }

    if (v321 == 118)
    {
      if (v14 < 6)
      {
        goto LABEL_820;
      }

      v357 = (v14 - 5);
      if (*&v8[v357] != 1986622561 || v8[v357 + 4] != 101)
      {
        goto LABEL_820;
      }

      v386 = (((*v8 - 97) >> 1) | ((*v8 - 97) << 7));
      if (v386 <= 0xA && ((1 << v386) & 0x495) != 0)
      {
        v387 = 0;
        v388 = 0;
      }

      else
      {
        v387 = 1;
        if (v14 == 6)
        {
          v388 = 1;
        }

        else
        {
          v437 = 1;
          while (1)
          {
            v438 = v8[v437];
            v439 = (((v438 - 97) >> 1) | ((v438 - 97) << 7));
            v322 = v439 > 0xA;
            v440 = (1 << v439) & 0x495;
            v441 = v322 || v440 == 0;
            if (!v441 || v438 == 121)
            {
              break;
            }

            ++v437;
            v388 = 1;
            if (v357 == v437)
            {
              v387 = v14 - 5;
              goto LABEL_701;
            }
          }

          v388 = 0;
          v387 = v437;
        }
      }

LABEL_701:
      if ((v387 + 1) >= v357)
      {
        goto LABEL_820;
      }

      v389 = v8[v387 + 1];
      v390 = (((v389 - 97) >> 1) | ((v389 - 97) << 7));
      v322 = v390 > 0xA;
      v391 = (1 << v390) & 0x495;
      if (!v322 && v391 != 0)
      {
        goto LABEL_706;
      }

      v447 = v388 ^ 1;
      if (v389 != 121)
      {
        v447 = 1;
      }

      if ((v447 & 1) == 0)
      {
LABEL_706:
        v393 = v387 + 2;
        if (v357 <= v393)
        {
          goto LABEL_820;
        }

        v394 = &v8[v393];
        while (1)
        {
          v395 = *v394++;
          v396 = (((v395 - 97) >> 1) | ((v395 - 97) << 7));
          v322 = v396 > 0xA;
          v397 = (1 << v396) & 0x495;
          if (v322 || v397 == 0)
          {
            break;
          }

          LODWORD(v393) = v393 + 1;
          if (v357 <= v393)
          {
            goto LABEL_820;
          }
        }
      }

      goto LABEL_819;
    }

    if (v321 == 122 && v14 >= 6)
    {
      v328 = (v14 - 5);
      if (*&v8[v328] == 2053729377 && v8[v328 + 4] == 101)
      {
        v330 = (((*v8 - 97) >> 1) | ((*v8 - 97) << 7));
        if (v330 <= 0xA && ((1 << v330) & 0x495) != 0)
        {
          v331 = 0;
          v332 = 0;
        }

        else
        {
          v331 = 1;
          if (v14 == 6)
          {
            v332 = 1;
          }

          else
          {
            v422 = 1;
            while (1)
            {
              v423 = v8[v422];
              v424 = (((v423 - 97) >> 1) | ((v423 - 97) << 7));
              v322 = v424 > 0xA;
              v425 = (1 << v424) & 0x495;
              v426 = v322 || v425 == 0;
              if (!v426 || v423 == 121)
              {
                break;
              }

              ++v422;
              v332 = 1;
              if (v328 == v422)
              {
                v331 = v14 - 5;
                goto LABEL_621;
              }
            }

            v332 = 0;
            v331 = v422;
          }
        }

LABEL_621:
        if ((v331 + 1) < v328)
        {
          v333 = v8[v331 + 1];
          v334 = (((v333 - 97) >> 1) | ((v333 - 97) << 7));
          v322 = v334 > 0xA;
          v335 = (1 << v334) & 0x495;
          if (!v322 && v335 != 0)
          {
            goto LABEL_626;
          }

          v444 = v332 ^ 1;
          if (v333 != 121)
          {
            v444 = 1;
          }

          if ((v444 & 1) == 0)
          {
LABEL_626:
            v337 = v331 + 2;
            if (v328 <= v337)
            {
              goto LABEL_820;
            }

            v338 = &v8[v337];
            while (1)
            {
              v339 = *v338++;
              v340 = (((v339 - 97) >> 1) | ((v339 - 97) << 7));
              v322 = v340 > 0xA;
              v341 = (1 << v340) & 0x495;
              if (v322 || v341 == 0)
              {
                break;
              }

              LODWORD(v337) = v337 + 1;
              if (v328 <= v337)
              {
                goto LABEL_820;
              }
            }
          }

          *&v8[v328] = 27745;
          goto LABEL_606;
        }
      }
    }
  }

  else
  {
    if (v321 != 97)
    {
      if (v321 != 115)
      {
        v322 = v321 != 116 || v14 < 6;
        if (!v322)
        {
          v323 = (v14 - 5);
          v324 = &v8[v323];
          if (*&v8[v323] == 1952539497 && v8[v323 + 4] == 101)
          {
            v399 = (((*v8 - 97) >> 1) | ((*v8 - 97) << 7));
            if (v399 <= 0xA && ((1 << v399) & 0x495) != 0)
            {
              v400 = 0;
              v401 = 0;
            }

            else
            {
              v400 = 1;
              if (v14 == 6)
              {
                v401 = 1;
              }

              else
              {
                v427 = 1;
                while (1)
                {
                  v428 = v8[v427];
                  v429 = (((v428 - 97) >> 1) | ((v428 - 97) << 7));
                  v322 = v429 > 0xA;
                  v430 = (1 << v429) & 0x495;
                  v431 = v322 || v430 == 0;
                  if (!v431 || v428 == 121)
                  {
                    break;
                  }

                  ++v427;
                  v401 = 1;
                  if (v323 == v427)
                  {
                    v400 = v14 - 5;
                    goto LABEL_717;
                  }
                }

                v401 = 0;
                v400 = v427;
              }
            }

LABEL_717:
            if ((v400 + 1) < v323)
            {
              v402 = v8[v400 + 1];
              v403 = (((v402 - 97) >> 1) | ((v402 - 97) << 7));
              v322 = v403 > 0xA;
              v404 = (1 << v403) & 0x495;
              if (v322 || v404 == 0)
              {
                v445 = v401 ^ 1;
                if (v402 != 121)
                {
                  v445 = 1;
                }

                if (v445)
                {
                  goto LABEL_605;
                }
              }

              v406 = v400 + 2;
              if (v323 > v406)
              {
                v407 = &v8[v406];
                while (1)
                {
                  v408 = *v407++;
                  v409 = (((v408 - 97) >> 1) | ((v408 - 97) << 7));
                  v322 = v409 > 0xA;
                  v410 = (1 << v409) & 0x495;
                  if (v322 || v410 == 0)
                  {
                    goto LABEL_605;
                  }

                  LODWORD(v406) = v406 + 1;
                  if (v323 <= v406)
                  {
                    goto LABEL_820;
                  }
                }
              }
            }
          }

          else
          {
            v326 = *v324 == 1953063785 && v324[4] == 105;
            if (v326 && sub_181A01A88(v8, v323, 0))
            {
LABEL_605:
              *v324 = 25449;
LABEL_606:
              v14 = (v14 - 3);
              goto LABEL_820;
            }
          }
        }

        goto LABEL_820;
      }

      if (v14 < 5)
      {
        goto LABEL_820;
      }

      v357 = (v14 - 4);
      if (*&v8[v357] != 1936942446)
      {
        goto LABEL_820;
      }

      v372 = (((*v8 - 97) >> 1) | ((*v8 - 97) << 7));
      if (v372 <= 0xA && ((1 << v372) & 0x495) != 0)
      {
        v373 = 0;
        v374 = 0;
      }

      else
      {
        v373 = 1;
        if (v14 == 5)
        {
          v374 = 1;
        }

        else
        {
          v432 = 1;
          while (1)
          {
            v433 = v8[v432];
            v434 = (((v433 - 97) >> 1) | ((v433 - 97) << 7));
            v322 = v434 > 0xA;
            v435 = (1 << v434) & 0x495;
            v436 = v322 || v435 == 0;
            if (!v436 || v433 == 121)
            {
              break;
            }

            ++v432;
            v374 = 1;
            if (v357 == v432)
            {
              v373 = v14 - 4;
              goto LABEL_679;
            }
          }

          v374 = 0;
          v373 = v432;
        }
      }

LABEL_679:
      if ((v373 + 1) >= v357)
      {
        goto LABEL_820;
      }

      v375 = v8[v373 + 1];
      v376 = (((v375 - 97) >> 1) | ((v375 - 97) << 7));
      v322 = v376 > 0xA;
      v377 = (1 << v376) & 0x495;
      if (!v322 && v377 != 0)
      {
        goto LABEL_684;
      }

      v446 = v374 ^ 1;
      if (v375 != 121)
      {
        v446 = 1;
      }

      if ((v446 & 1) == 0)
      {
LABEL_684:
        v379 = v373 + 2;
        if (v357 <= v379)
        {
          goto LABEL_820;
        }

        v380 = &v8[v379];
        while (1)
        {
          v381 = *v380++;
          v382 = (((v381 - 97) >> 1) | ((v381 - 97) << 7));
          v322 = v382 > 0xA;
          v383 = (1 << v382) & 0x495;
          if (v322 || v383 == 0)
          {
            break;
          }

          LODWORD(v379) = v379 + 1;
          if (v357 <= v379)
          {
            goto LABEL_820;
          }
        }
      }

LABEL_819:
      v14 = v357;
      goto LABEL_820;
    }

    if (v14 >= 5)
    {
      v343 = (v14 - 4);
      if (*&v8[v343] == 1818321769)
      {
        v344 = (((*v8 - 97) >> 1) | ((*v8 - 97) << 7));
        if (v344 <= 0xA && ((1 << v344) & 0x495) != 0)
        {
          v345 = 0;
          v346 = 0;
        }

        else
        {
          v345 = 1;
          if (v14 == 5)
          {
            v346 = 1;
          }

          else
          {
            v412 = 1;
            while (1)
            {
              v413 = v8[v412];
              v414 = (((v413 - 97) >> 1) | ((v413 - 97) << 7));
              v322 = v414 > 0xA;
              v415 = (1 << v414) & 0x495;
              v416 = v322 || v415 == 0;
              if (!v416 || v413 == 121)
              {
                break;
              }

              ++v412;
              v346 = 1;
              if (v343 == v412)
              {
                v345 = v14 - 4;
                goto LABEL_639;
              }
            }

            v346 = 0;
            v345 = v412;
          }
        }

LABEL_639:
        if ((v345 + 1) < v343)
        {
          v347 = v8[v345 + 1];
          v348 = (((v347 - 97) >> 1) | ((v347 - 97) << 7));
          v322 = v348 > 0xA;
          v349 = (1 << v348) & 0x495;
          if (!v322 && v349 != 0)
          {
            goto LABEL_644;
          }

          v442 = v346 ^ 1;
          if (v347 != 121)
          {
            v442 = 1;
          }

          if ((v442 & 1) == 0)
          {
LABEL_644:
            v351 = v345 + 2;
            if (v343 <= v351)
            {
              goto LABEL_820;
            }

            v352 = &v8[v351];
            while (1)
            {
              v353 = *v352++;
              v354 = (((v353 - 97) >> 1) | ((v353 - 97) << 7));
              v322 = v354 > 0xA;
              v355 = (1 << v354) & 0x495;
              if (v322 || v355 == 0)
              {
                break;
              }

              LODWORD(v351) = v351 + 1;
              if (v343 <= v351)
              {
                goto LABEL_820;
              }
            }
          }

          *&v8[v343] = 25449;
          v14 = (v14 - 2);
        }
      }
    }
  }

LABEL_820:
  v448 = v14 - 2;
  v449 = v8[v448];
  if (v449 > 0x6E)
  {
    if (v8[v448] > 0x74u)
    {
      if (v449 == 117)
      {
        if (v14 < 4)
        {
          goto LABEL_903;
        }

        v448 = (v14 - 3);
        v467 = v8[v448 + 2];
        v470 = *&v8[v448] == 30063;
        v471 = 115;
      }

      else
      {
        if (v449 == 118)
        {
          if (v14 < 4)
          {
            goto LABEL_903;
          }

          v448 = (v14 - 3);
          v466 = *&v8[v448];
          v467 = v8[v448 + 2];
          v468 = 30313;
        }

        else
        {
          if (v449 != 122 || v14 < 4)
          {
            goto LABEL_903;
          }

          v448 = (v14 - 3);
          v466 = *&v8[v448];
          v467 = v8[v448 + 2];
          v468 = 31337;
        }

        v470 = v466 == v468;
        v471 = 101;
      }
    }

    else
    {
      if (v449 == 111)
      {
        if (v14 < 4)
        {
          if (v14 != 3)
          {
            goto LABEL_903;
          }
        }

        else
        {
          v463 = (v14 - 3);
          if (*&v8[v463] == 28521 && v8[v463 + 2] == 110)
          {
            if (v8[v463 - 1] - 115 > 1)
            {
              goto LABEL_903;
            }

            goto LABEL_874;
          }
        }

        v451 = *&v8[v448];
        v452 = 30063;
        goto LABEL_900;
      }

      if (v449 != 115)
      {
        if (v449 != 116 || v14 < 4)
        {
          goto LABEL_903;
        }

        v448 = (v14 - 3);
        v454 = &v8[v448];
        if (*&v8[v448] == 29793 && v8[v448 + 2] == 101)
        {
          goto LABEL_901;
        }

        v456 = *v454;
        v457 = v454[2];
        v458 = v456 == 29801;
        v459 = 105;
        goto LABEL_948;
      }

      if (v14 < 4)
      {
        goto LABEL_903;
      }

      v448 = (v14 - 3);
      v467 = v8[v448 + 2];
      v470 = *&v8[v448] == 29545;
      v471 = 109;
    }

    v472 = v470 && v467 == v471;
    if (!v472 || !sub_181A01798(v8, v448))
    {
      goto LABEL_903;
    }

    goto LABEL_902;
  }

  if (v8[v448] > 0x68u)
  {
    if (v449 == 105)
    {
      if (v14 < 3)
      {
        goto LABEL_903;
      }

      v451 = *&v8[v448];
      v452 = 25449;
    }

    else
    {
      if (v449 != 108)
      {
        if (v449 != 110 || v14 < 4)
        {
          goto LABEL_903;
        }

        v448 = (v14 - 3);
        v461 = &v8[v448];
        if (*&v8[v448] == 28257 && v8[v448 + 2] == 116)
        {
          goto LABEL_901;
        }

        if (v14 < 6)
        {
          if (v14 == 4)
          {
LABEL_947:
            v500 = *v461;
            v457 = v461[2];
            v458 = v500 == 28261;
            v459 = 116;
LABEL_948:
            if (v458 && v457 == v459)
            {
              goto LABEL_901;
            }

            goto LABEL_903;
          }

          goto LABEL_946;
        }

        v463 = (v14 - 5);
        if (*&v8[v463] != 1852140901 || v8[v463 + 4] != 116)
        {
LABEL_946:
          if (*&v8[(v14 - 4)] != 1953391981)
          {
            goto LABEL_947;
          }

          v448 = (v14 - 4);
          if (!sub_181A01798(v8, v14 - 4))
          {
            goto LABEL_903;
          }

LABEL_902:
          v14 = v448;
          goto LABEL_903;
        }

LABEL_874:
        v448 = v463;
        if (!sub_181A01798(v8, v463))
        {
          goto LABEL_903;
        }

        goto LABEL_902;
      }

      if (v14 < 5)
      {
        goto LABEL_903;
      }

      v448 = (v14 - 4);
      if (*&v8[v448] == 1701601889)
      {
        goto LABEL_901;
      }

      v452 = *&v8[v448];
      v451 = 1701601897;
    }

LABEL_900:
    if (v451 != v452)
    {
      goto LABEL_903;
    }

LABEL_901:
    if (!sub_181A01798(v8, v448))
    {
      goto LABEL_903;
    }

    goto LABEL_902;
  }

  if (v449 == 97)
  {
    if (v14 < 3)
    {
      goto LABEL_903;
    }

    v451 = *&v8[v448];
    v452 = 27745;
    goto LABEL_900;
  }

  if (v449 == 99)
  {
    if (v14 < 5)
    {
      goto LABEL_903;
    }

    v448 = (v14 - 4);
    if (*&v8[v448] == 1701015137)
    {
      goto LABEL_901;
    }

    v452 = *&v8[v448];
    v451 = 1701015141;
    goto LABEL_900;
  }

  if (v449 == 101 && v14 >= 3)
  {
    v451 = *&v8[v448];
    v452 = 29285;
    goto LABEL_900;
  }

LABEL_903:
  v473 = v14 - 1;
  if (v8[v473] != 101)
  {
LABEL_906:
    a2 = v7;
    goto LABEL_907;
  }

  if (sub_181A01798(v8, v14 - 1))
  {
    v14 = v14 - 1;
    goto LABEL_906;
  }

  a2 = v7;
  if (v14 < 2 || (v476 = (((*v8 - 97) >> 1) | ((*v8 - 97) << 7)), v476 <= 0xA) && ((1 << v476) & 0x495) != 0)
  {
    v477 = 0;
    v478 = 0;
  }

  else
  {
    v477 = 1;
    if (v14 == 2)
    {
      v478 = 1;
    }

    else
    {
      v502 = 1;
      while (1)
      {
        v503 = v8[v502];
        v504 = (((v503 - 97) >> 1) | ((v503 - 97) << 7));
        v322 = v504 > 0xA;
        v505 = (1 << v504) & 0x495;
        v506 = v322 || v505 == 0;
        if (!v506 || v503 == 121)
        {
          break;
        }

        ++v502;
        v478 = 1;
        if (v473 == v502)
        {
          v477 = v14 - 1;
          goto LABEL_921;
        }
      }

      v478 = 0;
      v477 = v502;
    }
  }

LABEL_921:
  v479 = v477 + 1;
  if (v477 + 1 >= v473)
  {
    goto LABEL_907;
  }

  v480 = v477;
  v481 = v8[v477 + 1];
  v482 = (((v481 - 97) >> 1) | ((v481 - 97) << 7));
  v322 = v482 > 0xA;
  v483 = (1 << v482) & 0x495;
  if (!v322 && v483 != 0)
  {
    goto LABEL_926;
  }

  v492 = v478 ^ 1;
  if (v481 != 121)
  {
    v492 = 1;
  }

  if ((v492 & 1) == 0)
  {
LABEL_926:
    v485 = v477 + 2;
    if (v473 <= v480 + 2)
    {
      goto LABEL_907;
    }

    v486 = &v8[v485];
    v477 = v479;
    while (1)
    {
      v487 = *v486++;
      v488 = (((v487 - 97) >> 1) | ((v487 - 97) << 7));
      v322 = v488 > 0xA;
      v489 = (1 << v488) & 0x495;
      if (v322 || v489 == 0)
      {
        break;
      }

      v491 = v477 + 2;
      ++v477;
      if (v473 <= v491)
      {
        goto LABEL_907;
      }
    }
  }

  v493 = &v8[v477 + 2];
  v494 = (v473 - (v477 + 2));
  v495 = 1;
  if (v494 < 1)
  {
    v499 = 0;
  }

  else
  {
    v496 = *v493;
    v497 = (((v496 - 97) >> 1) | ((v496 - 97) << 7));
    v498 = v497 > 0xA || ((1 << v497) & 0x495) == 0;
    if (!v498 || v496 == 121)
    {
      v499 = 0;
      v495 = 0;
    }

    else
    {
      v499 = 1;
      if (v494 == 1)
      {
        v495 = 1;
      }

      else
      {
        v527 = &v8[v477 + 3];
        v528 = -1;
        while (1)
        {
          v530 = *v527++;
          v529 = v530;
          v531 = (((v530 - 97) >> 1) | ((v530 - 97) << 7));
          v322 = v531 > 0xA;
          v532 = (1 << v531) & 0x495;
          v533 = v322 || v532 == 0;
          if (!v533 || v529 == 121)
          {
            break;
          }

          --v528;
          v495 = 1;
          if (-v494 == v528)
          {
            v499 = v473 - (v477 + 2);
            goto LABEL_965;
          }
        }

        v495 = 0;
        v499 = -v528;
      }
    }
  }

LABEL_965:
  if ((v499 + 1) < v494)
  {
    v507 = v493[v499 + 1];
    v508 = (((v507 - 97) >> 1) | ((v507 - 97) << 7));
    v322 = v508 > 0xA;
    v509 = (1 << v508) & 0x495;
    if (v322 || v509 == 0)
    {
      v20 = v507 == 121;
      v525 = v495 ^ 1;
      if (!v20)
      {
        v525 = 1;
      }

      if (v525)
      {
        goto LABEL_907;
      }
    }

    v511 = v499 + 2;
    if (v494 > (v499 + 2))
    {
      v512 = &v8[v499 + 4 + v477];
      do
      {
        v513 = *v512++;
        v514 = (((v513 - 97) >> 1) | ((v513 - 97) << 7));
        v322 = v514 > 0xA;
        v515 = (1 << v514) & 0x495;
        if (v322 || v515 == 0)
        {
          goto LABEL_907;
        }
      }

      while (v494 > ++v511);
    }
  }

  if (v14 < 2 || v8[v473 - 1] - 122 > 0xFFFFFFFC)
  {
    v14 = v14 - 1;
  }

  else
  {
    v517 = 0;
    v518 = 0;
    v519 = v8;
    v520 = v473;
    do
    {
      v523 = *v519++;
      v522 = v523;
      v524 = ((v523 - 97) >> 1) | ((v523 - 97) << 7);
      if (v524 < 0xBu && ((0x495u >> v524) & 1) != 0)
      {
        v517 = 0;
      }

      else
      {
        if (v517)
        {
          v521 = v522 == 121;
        }

        else
        {
          v521 = 0;
        }

        v517 = !v521;
      }

      v518 = v517 | (2 * v518);
      --v520;
    }

    while (v520);
    if ((v518 & 7) == 5)
    {
      v14 = v14;
    }

    else
    {
      v14 = v473;
    }
  }

LABEL_907:
  if (v14 >= 2 && v8[(v14 - 1)] == 108 && v8[v14 - 2] == 108)
  {
    v474 = sub_181A01798(v8, v14 - 1);
    a2 = v7;
    if (v474)
    {
      v14 = (v14 - 1);
    }

    else
    {
      v14 = v14;
    }
  }

  v5 = *a1;
  v6 = a1[1];
  __src = v8;
  __n = v14;
LABEL_914:

  return v6(v5, a2, __src, __n);
}

uint64_t sub_181A01798(_BYTE *a1, int a2)
{
  if (a2 >= 1 && ((v2 = (((*a1 - 97) >> 1) | ((*a1 - 97) << 7)), v3 = v2 > 0xA, v4 = (1 << v2) & 0x495, !v3) ? (v5 = v4 == 0) : (v5 = 1), v5))
  {
    v6 = 1;
    if (a2 == 1)
    {
      v7 = 1;
    }

    else
    {
      v27 = 1;
      while (1)
      {
        v28 = a1[v27];
        v29 = (((v28 - 97) >> 1) | ((v28 - 97) << 7));
        v3 = v29 > 0xA;
        v30 = (1 << v29) & 0x495;
        v31 = v3 || v30 == 0;
        if (!v31 || v28 == 121)
        {
          break;
        }

        if (a2 == ++v27)
        {
          v7 = 1;
          v6 = a2;
          goto LABEL_7;
        }
      }

      v7 = 0;
      v6 = v27;
    }
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

LABEL_7:
  if (v6 + 1 >= a2)
  {
    return 0;
  }

  v8 = a1[v6 + 1];
  v9 = (((v8 - 97) >> 1) | ((v8 - 97) << 7));
  v3 = v9 > 0xA;
  v10 = (1 << v9) & 0x495;
  if (!v3 && v10 != 0)
  {
    goto LABEL_12;
  }

  v19 = v7 ^ 1;
  if (v8 != 121)
  {
    v19 = 1;
  }

  if ((v19 & 1) == 0)
  {
LABEL_12:
    if (v6 + 2 >= a2)
    {
      return 0;
    }

    v12 = &a1[v6++ + 2];
    while (1)
    {
      v13 = *v12++;
      v14 = (((v13 - 97) >> 1) | ((v13 - 97) << 7));
      v3 = v14 > 0xA;
      v15 = (1 << v14) & 0x495;
      if (v3 || v15 == 0)
      {
        break;
      }

      v17 = v6 + 2;
      ++v6;
      if (v17 >= a2)
      {
        return 0;
      }
    }
  }

  v20 = &a1[v6 + 2];
  v21 = (a2 - (v6 + 2));
  v22 = 1;
  if (v21 < 1)
  {
    v26 = 0;
  }

  else
  {
    v23 = *v20;
    v24 = (((v23 - 97) >> 1) | ((v23 - 97) << 7));
    v25 = v24 > 0xA || ((1 << v24) & 0x495) == 0;
    if (!v25 || v23 == 121)
    {
      v26 = 0;
      v22 = 0;
    }

    else
    {
      v26 = 1;
      if (v21 == 1)
      {
        v22 = 1;
      }

      else
      {
        v43 = &a1[v6 + 3];
        v44 = -1;
        while (1)
        {
          v46 = *v43++;
          v45 = v46;
          v47 = (((v46 - 97) >> 1) | ((v46 - 97) << 7));
          v3 = v47 > 0xA;
          v48 = (1 << v47) & 0x495;
          v49 = v3 || v48 == 0;
          if (!v49 || v45 == 121)
          {
            break;
          }

          --v44;
          v22 = 1;
          if (-v21 == v44)
          {
            v26 = a2 - (v6 + 2);
            goto LABEL_42;
          }
        }

        v22 = 0;
        v26 = -v44;
      }
    }
  }

LABEL_42:
  if ((v26 + 1) >= v21)
  {
    return 0;
  }

  v32 = v20[v26 + 1];
  v33 = (((v32 - 97) >> 1) | ((v32 - 97) << 7));
  v3 = v33 > 0xA;
  v34 = (1 << v33) & 0x495;
  if (!v3 && v34 != 0)
  {
    goto LABEL_47;
  }

  v5 = v32 == 121;
  v42 = v22 ^ 1;
  if (!v5)
  {
    v42 = 1;
  }

  if ((v42 & 1) == 0)
  {
LABEL_47:
    v36 = v26 + 2;
    if (v21 > (v26 + 2))
    {
      v37 = &a1[v26 + 4 + v6];
      while (1)
      {
        v38 = *v37++;
        v39 = (((v38 - 97) >> 1) | ((v38 - 97) << 7));
        v3 = v39 > 0xA;
        v40 = (1 << v39) & 0x495;
        if (v3 || v40 == 0)
        {
          break;
        }

        result = 0;
        if (v21 <= ++v36)
        {
          return result;
        }
      }

      return 1;
    }

    return 0;
  }

  return 1;
}

uint64_t sub_181A01A88(unsigned __int8 *a1, int a2, int a3)
{
  if (a2 < 1)
  {
    v4 = 0;
  }

  else
  {
    v3 = *a1;
    if ((((v3 - 97) >> 1) | ((v3 - 97) << 7)) < 0xBu && ((0x495u >> (((v3 - 97) >> 1) | ((v3 - 97) << 7))) & 1) != 0 || a3 && v3 == 121)
    {
      v4 = 0;
      a3 = 0;
    }

    else
    {
      v4 = 1;
      a3 = 1;
      if (a2 != 1)
      {
        v5 = 1;
        while (1)
        {
          v6 = a1[v5];
          v7 = (((v6 - 97) >> 1) | ((v6 - 97) << 7));
          v8 = v7 > 0xA;
          v9 = (1 << v7) & 0x495;
          v10 = v8 || v9 == 0;
          if (!v10 || v6 == 121)
          {
            break;
          }

          if (a2 == ++v5)
          {
            a3 = 1;
            v4 = a2;
            goto LABEL_19;
          }
        }

        a3 = 0;
        v4 = v5;
      }
    }
  }

LABEL_19:
  if ((v4 + 1) >= a2)
  {
    return 0;
  }

  v11 = a1[v4 + 1];
  v12 = (((v11 - 97) >> 1) | ((v11 - 97) << 7));
  v8 = v12 > 0xA;
  v13 = (1 << v12) & 0x495;
  v14 = v8 || v13 == 0;
  if (!v14 || a3 && v11 == 121)
  {
    v15 = v4 + 2;
    if (v15 < a2)
    {
      ++v4;
      v16 = &a1[v15];
      while (1)
      {
        v17 = *v16++;
        v18 = (((v17 - 97) >> 1) | ((v17 - 97) << 7));
        v8 = v18 > 0xA;
        v19 = (1 << v18) & 0x495;
        if (v8 || v19 == 0)
        {
          break;
        }

        v21 = v4 + 2;
        ++v4;
        if (v21 >= a2)
        {
          return 0;
        }
      }

      return v4 + 2;
    }

    return 0;
  }

  return v4 + 2;
}

uint64_t sub_181A01C00(uint64_t a1, unsigned int *a2)
{
  v2 = a2[22];
  v3 = *a2;
  if (v3 <= 0)
  {
    *(a2 + 8) = 0x412E848000000000;
  }

  else
  {
    v4 = 0;
    v5 = (*(a2 + 1) + 4);
    v6 = -1;
    v7 = -1;
    v8 = -1;
    do
    {
      if (v5[1] && !*(v5 - 1))
      {
        v9 = *v5;
        if (v9 == 2)
        {
          v8 = v4;
        }

        if (v9 == 8 || v9 == 16)
        {
          v6 = v4;
        }

        if (v9 == 32 || v9 == 4)
        {
          v7 = v4;
        }
      }

      ++v4;
      v5 += 12;
    }

    while (v3 != v4);
    if ((v8 & 0x80000000) != 0)
    {
      *(a2 + 8) = 0x412E848000000000;
      v12 = 1;
      if ((v7 & 0x80000000) != 0)
      {
        v13 = 0x411E848000000000;
        if ((v6 & 0x80000000) != 0)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v2 |= 0x200u;
        *(*(a2 + 4) + 8 * v7) = 1;
        *(a2 + 8) = 0x411E848000000000;
        v12 = 2;
        v13 = 0x410E848000000000;
        if ((v6 & 0x80000000) != 0)
        {
          goto LABEL_25;
        }
      }

      v2 |= 0x400u;
      *(*(a2 + 4) + 8 * v6) = v12;
      *(a2 + 8) = v13;
      goto LABEL_25;
    }

    v2 |= 0x100u;
    *(*(a2 + 4) + 8 * v8) = 1;
    *(a2 + 8) = 0x4059000000000000;
  }

LABEL_25:
  if (a2[4] == 1)
  {
    v14 = *(a2 + 3);
    if (!*v14 && !*(v14 + 4))
    {
      a2[15] = 1;
    }
  }

  a2[10] = v2;
  return 0;
}

uint64_t sub_181A01D40(uint64_t a1)
{
  if (a1)
  {
    v1 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_7:
      (*v1)();
      return 0;
    }

    if (xmmword_1ED456AF0)
    {
      v2 = a1;
      xmmword_1ED452F18(xmmword_1ED456AF0);
      a1 = v2;
    }

    v3 = a1;
    qword_1ED456A48 -= xmmword_1ED452EC0(a1);
    --qword_1ED456A90;
    off_1ED452EB0(v3);
    if (xmmword_1ED456AF0)
    {
      v1 = &xmmword_1ED452F28;
      goto LABEL_7;
    }
  }

  return 0;
}

uint64_t sub_181A01DF8(uint64_t a1)
{
  if (a1)
  {
    v1 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_7:
      (*v1)();
      return 0;
    }

    if (xmmword_1ED456AF0)
    {
      v2 = a1;
      xmmword_1ED452F18(xmmword_1ED456AF0);
      a1 = v2;
    }

    v3 = a1;
    qword_1ED456A48 -= xmmword_1ED452EC0(a1);
    --qword_1ED456A90;
    off_1ED452EB0(v3);
    if (xmmword_1ED456AF0)
    {
      v1 = &xmmword_1ED452F28;
      goto LABEL_7;
    }
  }

  return 0;
}

uint64_t sub_181A01EB0(uint64_t a1, void *a2)
{
  v20 = 0;
  pStmt = 0;
  if (!*(a1 + 60))
  {
    v5 = sub_1819D6A30(&v20, "SELECT t.%Q FROM %Q.%Q AS t WHERE t.%Q MATCH '*id'", *(a1 + 24), *(a1 + 32), *(a1 + 24), *(a1 + 24));
    if (!v5)
    {
      v3 = v20;
      goto LABEL_11;
    }

    v7 = v5;
    v3 = sub_1818954B4(*(a1 + 40), v5, 0xFFFFFFFFLL, 128, 0, &pStmt, 0, v6);
    v8 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v7);
      --qword_1ED456A90;
      off_1ED452EB0(v7);
      v7 = xmmword_1ED456AF0;
      if (!xmmword_1ED456AF0)
      {
LABEL_11:
        *(a1 + 60) = 1;
        if (pStmt && sqlite3_step(pStmt) == 100 && (v9 = sqlite3_column_int64(pStmt, 0), (v10 = *(*(a1 + 48) + 88)) != 0))
        {
          while (v10[3] != v9)
          {
            v10 = v10[1];
            if (!v10)
            {
              goto LABEL_16;
            }
          }

          v11 = *v10;
        }

        else
        {
LABEL_16:
          v11 = 0;
        }

        *(a1 + 60) = 0;
        if (v3 > 1)
        {
          goto LABEL_31;
        }

        if (v11)
        {
          for (i = *(*(v11 + 48) + 88); i; i = *(i + 8))
          {
            if (*(i + 32) == 1 && *i == v11)
            {
              *(i + 80) |= 0x20u;
            }
          }

          v13 = sub_1819FA088(*(v11 + 40));
          if (!v13)
          {
            v14 = *(*(v11 + 24) + 32);
            if (!sqlite3_initialize())
            {
              v17 = sub_181902484(16 * v14 + 128, 1913357809);
              if (v17)
              {
                v15 = v17;
                bzero(v17, 16 * v14 + 128);
                v3 = 0;
                v15[1] = pStmt;
                v15[2] = v11;
                v18 = &v15[*(*(v11 + 24) + 32) + 16];
                v15[9] = v15 + 16;
                v15[10] = v18;
                goto LABEL_32;
              }
            }

            if (v14 <= -8)
            {
              v3 = 0;
            }

            else
            {
              v3 = 7;
            }

LABEL_31:
            sqlite3_finalize(pStmt);
            v15 = 0;
LABEL_32:
            *a2 = v15;
            return v3;
          }
        }

        else
        {
          v13 = sqlite3_finalize(pStmt);
          pStmt = 0;
          if (!v13)
          {
            *(a1 + 16) = sqlite3_mprintf("no such fts5 table: %s.%s", *(a1 + 32), *(a1 + 24));
            v3 = 1;
            goto LABEL_31;
          }
        }

        v3 = v13;
        goto LABEL_31;
      }

      v8 = &xmmword_1ED452F28;
    }

    (*v8)(v7);
    goto LABEL_11;
  }

  *(a1 + 16) = sqlite3_mprintf("recursive definition for %s.%s", *(a1 + 32), *(a1 + 24));
  return 1;
}

uint64_t sub_181A02148(uint64_t a1)
{
  v1 = a1;
  sub_181A033B0(a1);
  v2 = *(v1 + 96);
  if (v2)
  {
    v3 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_7:
      (*v3)(v2);
      goto LABEL_8;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v2);
    --qword_1ED456A90;
    off_1ED452EB0(v2);
    v2 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v3 = &xmmword_1ED452F28;
      goto LABEL_7;
    }
  }

LABEL_8:
  *(v1 + 96) = 0;
  *(v1 + 104) = 0;
  sqlite3_finalize(*(v1 + 8));
  v4 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
LABEL_13:
    (*v4)(v1);
    return 0;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(v1);
  --qword_1ED456A90;
  off_1ED452EB0(v1);
  v1 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v4 = &xmmword_1ED452F28;
    goto LABEL_13;
  }

  return 0;
}

uint64_t sub_181A02288(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = *(*a1 + 56);
  sub_181A033B0(a1);
  if ((a2 & 0x100) == 0)
  {
    v9 = 0;
    v10 = 0;
    if ((a2 & 0x200) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v11 = 0;
    if ((a2 & 0x400) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v10 = *a5;
  v9 = 1;
  if ((a2 & 0x200) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v11 = a5[v9++];
  if ((a2 & 0x400) != 0)
  {
LABEL_4:
    v12 = a5[v9];
    goto LABEL_8;
  }

LABEL_7:
  v12 = 0;
LABEL_8:
  *(a1 + 64) = a2;
  if (!v10)
  {
    if (v11)
    {
      v15 = *(v11 + 20);
      if ((~v15 & 0x202) != 0 || *(v11 + 22) != 1)
      {
        if (v15)
        {
          v14 = 0;
          if ((v15 & 2) == 0)
          {
            goto LABEL_41;
          }
        }

        else
        {
          v14 = sub_18193CB70(v11, 1);
          LOWORD(v15) = *(v11 + 20);
          if ((v15 & 2) == 0)
          {
            goto LABEL_41;
          }
        }
      }

      else
      {
        v14 = *(v11 + 8);
        if ((v15 & 2) == 0)
        {
LABEL_41:
          if ((v15 & 0x10) != 0)
          {
            v16 = *(v11 + 16);
            if ((v15 & 0x400) != 0)
            {
              v16 += *v11;
            }

            if (!v12)
            {
              goto LABEL_35;
            }
          }

          else if (v15)
          {
            v16 = 0;
            if (!v12)
            {
              goto LABEL_35;
            }
          }

          else
          {
            v16 = sub_18193CB44(v11, 1);
            if (!v12)
            {
              goto LABEL_35;
            }
          }

LABEL_48:
          v18 = *(v12 + 20);
          v19 = v16;
          if ((~v18 & 0x202) != 0 || *(v12 + 22) != 1)
          {
            if (v18)
            {
              v20 = 0;
              if ((v18 & 2) == 0)
              {
                goto LABEL_58;
              }
            }

            else
            {
              v20 = sub_18193CB70(v12, 1);
              LOWORD(v18) = *(v12 + 20);
              if ((v18 & 2) == 0)
              {
                goto LABEL_58;
              }
            }
          }

          else
          {
            v20 = *(v12 + 8);
            if ((v18 & 2) == 0)
            {
              goto LABEL_58;
            }
          }

          if (*(v12 + 22) == 1)
          {
            v21 = *(v12 + 16);
            goto LABEL_66;
          }

LABEL_58:
          if ((v18 & 0x10) != 0)
          {
            v21 = *(v12 + 16);
            if ((v18 & 0x400) != 0)
            {
              v21 += *v12;
            }
          }

          else if (v18)
          {
            v21 = 0;
          }

          else
          {
            v21 = sub_18193CB44(v12, 1);
          }

LABEL_66:
          *(a1 + 48) = v21;
          v22 = sqlite3_initialize();
          if (v21 < 0 || v22)
          {
            *(a1 + 56) = 0;
          }

          else
          {
            v23 = sub_181902484((v21 + 1), 4085173811);
            *(a1 + 56) = v23;
            if (v23)
            {
              if (v20)
              {
                v24 = v20;
              }

              else
              {
                v24 = &byte_181A2878D;
              }

              memcpy(v23, v24, *(a1 + 48) + 1);
              v17 = 8;
              v16 = v19;
              goto LABEL_73;
            }
          }

          return 7;
        }
      }

      if (*(v11 + 22) != 1)
      {
        goto LABEL_41;
      }

      v16 = *(v11 + 16);
      if (v12)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v14 = 0;
      v16 = 0;
      if (v12)
      {
        goto LABEL_48;
      }
    }

LABEL_35:
    v17 = 8;
    goto LABEL_73;
  }

  v13 = *(v10 + 20);
  if ((~v13 & 0x202) != 0 || *(v10 + 22) != 1)
  {
    if (v13)
    {
      v14 = 0;
      if ((v13 & 2) == 0)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v14 = sub_18193CB70(v10, 1);
      LOWORD(v13) = *(v10 + 20);
      if ((v13 & 2) == 0)
      {
        goto LABEL_24;
      }
    }

LABEL_22:
    if (*(v10 + 22) == 1)
    {
      v16 = *(v10 + 16);
      v17 = 128;
      goto LABEL_73;
    }

    goto LABEL_24;
  }

  v14 = *(v10 + 8);
  if ((v13 & 2) != 0)
  {
    goto LABEL_22;
  }

LABEL_24:
  if ((v13 & 0x10) != 0)
  {
    v16 = *(v10 + 16);
    if ((v13 & 0x400) != 0)
    {
      v16 += *v10;
    }

    v17 = 128;
  }

  else
  {
    if (v13)
    {
      v16 = 0;
    }

    else
    {
      v16 = sub_18193CB44(v10, 1);
    }

    v17 = 128;
  }

LABEL_73:
  v25 = *(*(a1 + 16) + 32);
  result = sub_1819E3624(v25, v14, v16, v17, 0, (a1 + 32));
  if (result)
  {
    return result;
  }

  v27 = *(v25 + 160);
  ++*v27;
  *(a1 + 40) = v27;
  if (v8 == 2)
  {
    result = sub_181A0385C(a1);
    if (result)
    {
      return result;
    }

    if (!*(a1 + 24) && *(*(*(a1 + 16) + 24) + 116) != 1)
    {
      goto LABEL_78;
    }

    return 0;
  }

  if (*(a1 + 24))
  {
    return 0;
  }

LABEL_78:

  return sub_181A02620(a1);
}

uint64_t sub_181A02620(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  v4 = *(v3 + 24);
  v5 = *(v4 + 32);
  v6 = *(a1 + 40);
  v7 = *(*(v3 + 32) + 160);
  v8 = v7 == v6;
  LODWORD(v7) = v7 != v6;
  result = (4 * v7);
  v66 = 4 * v7;
  if (!v8)
  {
    return 4;
  }

  ++*(a1 + 88);
  v10 = *(v2 + 56);
  if (v10)
  {
    if (v10 == 2)
    {
      v11 = *(v4 + 116);
      v12 = *(a1 + 32);
      while (1)
      {
        if (v11 != 1)
        {
          result = sub_1819E0A34(*(v12 + 8), *(v12 + 16), (a1 + 120), (a1 + 112));
          if (!result)
          {
            return result;
          }
        }

        *(a1 + 112) = 0;
        *(a1 + 120) = 0;
        v13 = *(a1 + 32);
        v14 = *(v13 + 32);
        sub_1819DEB74(v14, v13, 0, 0);
        if (!*(v14 + 60))
        {
          v16 = v13 + (*(*(v13 + 96) + 4) << 7);
          v17 = *(v16 + 120);
          if (v17)
          {
            if (**(v16 + 200) != 48)
            {
              break;
            }
          }
        }

LABEL_10:
        v15 = *(v13 + 32);
        result = *(v15 + 60);
        *(v15 + 60) = 0;
        if (result)
        {
          goto LABEL_55;
        }

        result = sub_181A0385C(a1);
        if (v11 == 1 || *(a1 + 24))
        {
          return result;
        }

        if (result)
        {
          goto LABEL_55;
        }
      }

      v18 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v17);
        --qword_1ED456A90;
        off_1ED452EB0(v17);
        v17 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
          goto LABEL_23;
        }

        v18 = &xmmword_1ED452F28;
      }

      (*v18)(v17);
LABEL_23:
      *(v16 + 120) = 0;
      *(v13 + 20) = 1;
      goto LABEL_10;
    }

LABEL_33:
    v23 = *(a1 + 32);
    if (*(v23 + 20))
    {
      *(a1 + 24) = 1;
      goto LABEL_35;
    }

    v24 = v23 + (*(*(v23 + 96) + 4) << 7);
    v25 = *(v24 + 208);
    v26 = *(v24 + 200);
    v27 = (v25 - 1);
    if (v26)
    {
      v28 = (v26 + 1);
    }

    else
    {
      v28 = 0;
    }

    v29 = *(a1 + 48);
    if ((v29 & 0x80000000) == 0)
    {
      v30 = v27 >= v29 ? *(a1 + 48) : v25 - 1;
      v31 = memcmp(*(a1 + 56), v28, v30);
      if (v31 < 0 || (!v31 ? (v32 = v29 < v27) : (v32 = 0), v32))
      {
        result = 0;
LABEL_55:
        *(a1 + 24) = 1;
        return result;
      }
    }

    *(a1 + 104) = 0;
    if (!v27)
    {
      goto LABEL_65;
    }

    if (*(a1 + 108) >= v27)
    {
      v33 = 0;
    }

    else
    {
      if (sub_1819D750C(&v66, a1 + 96, v27))
      {
LABEL_65:
        bzero(*(a1 + 72), 8 * v5);
        bzero(*(a1 + 80), 8 * v5);
        *(a1 + 68) = 0;
        result = v66;
        if (v66)
        {
          return result;
        }

        v10 = *(v2 + 56);
        while (1)
        {
          v38 = *(*(*(a1 + 16) + 24) + 116);
          v65 = 0;
          v64 = 0;
          v39 = *(a1 + 32);
          v40 = *(v39 + 8);
          v41 = *(v39 + 16);
          if (v10)
          {
            if (v10 == 1)
            {
              if (!v38 && (*(a1 + 64) & 4) != 0 && v41 >= 1)
              {
                v42 = 0;
                while (1)
                {
                  v43 = v40 + v42;
                  v44 = *(v40 + v42);
                  if (*(v40 + v42) < 0)
                  {
                    v45 = *(v43 + 1);
                    if (*(v43 + 1) < 0)
                    {
                      v48 = *(v43 + 2);
                      if (v48 < 0)
                      {
                        v67 = 0;
                        v49 = sub_1819DFFB0(v43, &v67);
                        v46 = v67 & 0x7FFFFFFF;
                        v47 = v49;
                      }

                      else
                      {
                        v46 = ((v44 & 0x7F) << 14) | ((v45 & 0x7F) << 7) | v48;
                        v47 = 3;
                      }
                    }

                    else
                    {
                      v46 = ((v44 & 0x7F) << 7) | v45;
                      v47 = 2;
                    }

                    v42 += v47;
                    if (v46 == 1)
                    {
LABEL_85:
                      v50 = (v40 + v42);
                      if (*(v40 + v42) < 0)
                      {
                        if (v50[1] < 0)
                        {
                          if (v50[2] < 0)
                          {
                            v42 += sub_1819DFFB0(v50, &v67);
                          }

                          else
                          {
                            v42 += 3;
                          }
                        }

                        else
                        {
                          v42 += 2;
                        }
                      }

                      else
                      {
                        ++v42;
                      }

                      goto LABEL_75;
                    }
                  }

                  else
                  {
                    ++v42;
                    if (v44 == 1)
                    {
                      goto LABEL_85;
                    }
                  }

                  ++**(a1 + 72);
LABEL_75:
                  if (v42 >= v41)
                  {
                    v65 = v42;
                    break;
                  }
                }
              }

LABEL_104:
              ++**(a1 + 80);
            }
          }

          else if (v38)
          {
            if (v38 != 2)
            {
              goto LABEL_104;
            }

            while (!sub_1819E0A34(v40, v41, &v64, &v65))
            {
              if (v65 >= v5)
              {
                return 267;
              }

              ++*(*(a1 + 80) + 8 * v65);
            }
          }

          else if (!sub_1819E0A34(*(v39 + 8), *(v39 + 16), &v64, &v65))
          {
            v51 = -1;
            do
            {
              v52 = HIDWORD(v65) & 0x7FFFFFFF;
              if (v51 != v52)
              {
                if (v52 >= v5)
                {
                  return 267;
                }

                ++*(*(a1 + 80) + 8 * v52);
                v51 = v52;
              }

              ++*(*(a1 + 72) + 8 * v52);
            }

            while (!sub_1819E0A34(v40, v41, &v64, &v65));
          }

          v53 = *(v39 + 32);
          sub_1819DEB74(v53, v39, 0, 0);
          if (!*(v53 + 60))
          {
            v61 = v39 + (*(*(v39 + 96) + 4) << 7);
            v62 = *(v61 + 120);
            if (v62)
            {
              if (**(v61 + 200) != 48)
              {
                break;
              }
            }
          }

LABEL_106:
          v54 = *(v39 + 32);
          result = *(v54 + 60);
          *(v54 + 60) = 0;
          v10 = *(v2 + 56);
          if (v10 == 2)
          {
            goto LABEL_35;
          }

          if (result)
          {
            return result;
          }

          v55 = *(a1 + 32);
          v56 = v55 + (*(*(v55 + 96) + 4) << 7);
          v57 = *(v56 + 208);
          v58 = *(v56 + 200);
          v59 = (v57 - 1);
          if (v58)
          {
            v60 = (v58 + 1);
          }

          else
          {
            v60 = 0;
          }

          if (v59 != *(a1 + 104) || v57 >= 2 && memcmp(v60, *(a1 + 96), v59) || *(v55 + 20))
          {
            result = 0;
            goto LABEL_35;
          }
        }

        v63 = &off_1ED452EB0;
        if (dword_1ED452E80)
        {
          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48[0] -= xmmword_1ED452EC0(v62);
          --qword_1ED456A90;
          off_1ED452EB0(v62);
          v62 = xmmword_1ED456AF0;
          if (!xmmword_1ED456AF0)
          {
            goto LABEL_123;
          }

          v63 = &xmmword_1ED452F28;
        }

        (*v63)(v62);
LABEL_123:
        *(v61 + 120) = 0;
        *(v39 + 20) = 1;
        goto LABEL_106;
      }

      v33 = *(a1 + 104);
    }

    memcpy((*(a1 + 96) + v33), v28, v27);
    *(a1 + 104) += v27;
    goto LABEL_65;
  }

  v19 = *(a1 + 68);
  if (v5 <= v19 + 1)
  {
    v20 = v19 + 1;
  }

  else
  {
    v20 = v5;
  }

  v21 = v19 + 1;
  do
  {
    if (v21 >= v5)
    {
      *(a1 + 68) = v20;
      goto LABEL_33;
    }

    v22 = *(*(a1 + 80) + 8 * v21);
    LODWORD(v19) = v19 + 1;
    ++v21;
  }

  while (!v22);
  *(a1 + 68) = v19;
  if (v5 <= v19)
  {
    goto LABEL_33;
  }

  v10 = 0;
LABEL_35:
  if (!result)
  {
    if (*(a1 + 24) | v10)
    {
      return 0;
    }

    v34 = *(a1 + 68);
    if (v34 < v5)
    {
      v35 = (*(a1 + 80) + 8 * v34);
      v36 = v5 - v34;
      while (!*v35++)
      {
        *(a1 + 68) = ++v34;
        if (!--v36)
        {
          return 267;
        }
      }
    }

    if (v34 != v5)
    {
      return 0;
    }

    else
    {
      return 267;
    }
  }

  return result;
}

uint64_t sub_181A02CDC(uint64_t a1, uint64_t *a2, int a3)
{
  if (!a3)
  {
    if (a2)
    {
      v7 = *(a1 + 104);
      v8 = *(a1 + 96);
      v9 = a2;
      v10 = v8;
      v11 = -1;
LABEL_11:
      sub_18190B23C(v9, v10, v7, 1u, v11);
      return 0;
    }

    return 0;
  }

  v3 = *(*a1 + 56);
  if (v3 == 1)
  {
    if (a3 == 1)
    {
      v12 = *(a1 + 80);
    }

    else
    {
      v12 = *(a1 + 72);
    }

LABEL_22:
    if (!a2)
    {
      return 0;
    }

    v13 = *v12;
    if (v13 < 1)
    {
      return 0;
    }

    goto LABEL_24;
  }

  v4 = *(*(a1 + 16) + 24);
  v5 = *(v4 + 116);
  if (!v3)
  {
    if (a3 == 2)
    {
      v14 = *(a1 + 80);
    }

    else
    {
      if (a3 == 1)
      {
        if (a2 && v5 != 1)
        {
          v6 = *(*(v4 + 40) + 8 * *(a1 + 68));
LABEL_38:
          v9 = a2;
          v10 = v6;
          v7 = -1;
          v11 = 0;
          goto LABEL_11;
        }

        return 0;
      }

      v14 = *(a1 + 72);
    }

    v12 = (v14 + 8 * *(a1 + 68));
    goto LABEL_22;
  }

  if (a3 != 2)
  {
    if (a3 == 1)
    {
      if (!a2)
      {
        return 0;
      }

      v13 = **(a1 + 32);
    }

    else
    {
      if (!a2 || v5)
      {
        return 0;
      }

      v13 = *(a1 + 112) & 0x7FFFFFFFLL;
    }

LABEL_24:
    v15 = *a2;
    if ((*(*a2 + 20) & 0x9000) != 0)
    {
      sub_18193D288(v15, v13);
    }

    else
    {
      *v15 = v13;
      *(v15 + 20) = 4;
    }

    return 0;
  }

  if (v5 == 2)
  {
    v17 = *(a1 + 112);
    if (v17 < 0)
    {
      return 0;
    }
  }

  else
  {
    if (v5)
    {
      return 0;
    }

    v17 = *(a1 + 116) & 0x7FFFFFFF;
  }

  if (a2 && v17 < *(v4 + 32))
  {
    v6 = *(*(v4 + 40) + 8 * v17);
    goto LABEL_38;
  }

  return 0;
}

uint64_t sub_181A02E60(sqlite3 *a1, uint64_t a2, int a3, uint64_t a4, unsigned __int8 **a5, char **a6)
{
  if (a3 == 6)
  {
    v12 = *(a4 + 8);
    if (strlen(v12) == 4)
    {
      v13 = *v12 == 1886217588;
      goto LABEL_5;
    }
  }

  v13 = 0;
  if (a3 != 5)
  {
LABEL_5:
    if (!v13)
    {
      v14 = 0;
      *a6 = sqlite3_mprintf("wrong number of vtable arguments");
LABEL_7:
      result = 1;
      goto LABEL_8;
    }
  }

  v16 = !v13;
  v17 = 8;
  v18 = 24;
  if (!v16)
  {
    v17 = 24;
  }

  v19 = *(a4 + v17);
  v20 = 32;
  if (!v16)
  {
    v18 = 32;
  }

  v21 = *(a4 + v18);
  if (!v16)
  {
    v20 = 40;
  }

  v22 = *(a4 + v20);
  v60 = strlen(v19);
  v23 = strlen(v21);
  v24 = strlen(v22);
  v25 = sqlite3_initialize();
  v14 = 0;
  result = 7;
  if (v24 < 0 || v25)
  {
    goto LABEL_8;
  }

  v26 = sub_181902484((v24 + 1), 0x100004077774924);
  v14 = v26;
  if (!v26)
  {
    result = 7;
    goto LABEL_8;
  }

  __n = v23 + 1;
  v27 = v24 & 0x7FFFFFFF;
  memcpy(v26, v22, v27);
  v14[v27] = 0;
  v28 = *v14;
  if ((v28 - 34) <= 0x3E && ((1 << (v28 - 34)) & 0x4200000000000021) != 0)
  {
    if (v28 == 91)
    {
      v30 = 93;
    }

    else
    {
      v30 = *v14;
    }

    v31 = v14[1];
    if (v14[1])
    {
      v32 = 0;
      v33 = 1;
      while (1)
      {
        v34 = v33 + 1;
        if (v31 == v30)
        {
          if (v14[v34] != v30)
          {
LABEL_31:
            v32 = v32;
            goto LABEL_34;
          }

          LODWORD(v34) = v33 + 2;
          LOBYTE(v31) = v30;
        }

        v14[v32++] = v31;
        v31 = v14[v34];
        v33 = v34;
        if (!v14[v34])
        {
          goto LABEL_31;
        }
      }
    }

    v32 = 0;
LABEL_34:
    v14[v32] = 0;
  }

  for (i = 0; v14[i] == aCol[i]; ++i)
  {
    if (!v14[i])
    {
      v36 = 0;
      v37 = 1;
      goto LABEL_54;
    }

LABEL_37:
    ;
  }

  if (byte_181A20298[v14[i]] == byte_181A20298[aCol[i]])
  {
    goto LABEL_37;
  }

  for (j = 0; v14[j] == aRow_0[j]; ++j)
  {
    if (!v14[j])
    {
      v36 = 1;
      v37 = 1;
      goto LABEL_54;
    }

LABEL_43:
    ;
  }

  if (byte_181A20298[v14[j]] == byte_181A20298[aRow_0[j]])
  {
    goto LABEL_43;
  }

  for (k = 0; v14[k] == aInstance[k]; ++k)
  {
    if (!v14[k])
    {
      v37 = 1;
      v36 = 2;
      goto LABEL_54;
    }

LABEL_49:
    ;
  }

  if (byte_181A20298[v14[k]] == byte_181A20298[aInstance[k]])
  {
    goto LABEL_49;
  }

  v36 = 0;
  v37 = 0;
  *a6 = sqlite3_mprintf("fts5vocab: unknown table type: %Q", v14);
LABEL_54:
  v40 = &off_1ED452EB0;
  if (dword_1ED452E80)
  {
    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v14);
    --qword_1ED456A90;
    off_1ED452EB0(v14);
    v14 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v40 = &xmmword_1ED452F28;
      goto LABEL_59;
    }
  }

  else
  {
LABEL_59:
    (*v40)(v14);
  }

  if (!v37)
  {
    v14 = 0;
    goto LABEL_7;
  }

  result = sqlite3_declare_vtab(a1, off_1E6A28160[v36]);
  if (result)
  {
    v14 = 0;
  }

  else
  {
    v41 = v60 + __n + 65;
    if (sqlite3_initialize() || (v42 = sub_181902484(v41, 1913357809)) == 0)
    {
      v14 = 0;
      if (v41 <= 0)
      {
        result = 0;
      }

      else
      {
        result = 7;
      }
    }

    else
    {
      v14 = v42;
      bzero(v42, v41);
      *(v14 + 14) = v36;
      *(v14 + 5) = a1;
      *(v14 + 6) = a2;
      v43 = &v14[__n + 64];
      *(v14 + 3) = v14 + 64;
      *(v14 + 4) = v43;
      memcpy(v14 + 64, v21, __n);
      memcpy(v43, v19, v60 + 1);
      v44 = *(v14 + 3);
      v45 = *v44;
      if ((v45 - 34) <= 0x3E && ((1 << (v45 - 34)) & 0x4200000000000021) != 0)
      {
        if (v45 == 91)
        {
          v46 = 93;
        }

        else
        {
          v46 = *v44;
        }

        v47 = v44[1];
        if (v44[1])
        {
          v48 = 0;
          v49 = 1;
          while (1)
          {
            v50 = v49 + 1;
            if (v47 == v46)
            {
              if (v44[v50] != v46)
              {
LABEL_80:
                v48 = v48;
                goto LABEL_82;
              }

              LODWORD(v50) = v49 + 2;
              LOBYTE(v47) = v46;
            }

            v44[v48++] = v47;
            v47 = v44[v50];
            v49 = v50;
            if (!v44[v50])
            {
              goto LABEL_80;
            }
          }
        }

        v48 = 0;
LABEL_82:
        v44[v48] = 0;
      }

      v51 = *(v14 + 4);
      v52 = *v51;
      if ((v52 - 34) > 0x3E || ((1 << (v52 - 34)) & 0x4200000000000021) == 0)
      {
        result = 0;
      }

      else
      {
        if (v52 == 91)
        {
          v54 = 93;
        }

        else
        {
          v54 = *v51;
        }

        v55 = v51[1];
        if (v51[1])
        {
          v56 = 0;
          v57 = 1;
          while (1)
          {
            v58 = v57 + 1;
            if (v55 == v54)
            {
              if (v51[v58] != v54)
              {
LABEL_96:
                v56 = v56;
                goto LABEL_98;
              }

              LODWORD(v58) = v57 + 2;
              LOBYTE(v55) = v54;
            }

            v51[v56++] = v55;
            v55 = v51[v58];
            v57 = v58;
            if (!v51[v58])
            {
              goto LABEL_96;
            }
          }
        }

        v56 = 0;
LABEL_98:
        result = 0;
        v51[v56] = 0;
      }
    }
  }

LABEL_8:
  *a5 = v14;
  return result;
}

uint64_t sub_181A033B0(uint64_t result)
{
  v1 = result;
  v3 = (result + 32);
  v2 = *(result + 32);
  *(result + 88) = 0;
  if (!v2)
  {
    goto LABEL_40;
  }

  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  if (!v4)
  {
    goto LABEL_33;
  }

  if (*(v4 + 32) >= 1)
  {
    v6 = 0;
    do
    {
      sub_1819DB2CC(*(v4 + 56 + 8 * v6++));
    }

    while (v6 < *(v4 + 32));
  }

  v7 = *(v4 + 16);
  if (v7)
  {
    v8 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_12:
      (*v8)(v7);
      goto LABEL_13;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v7);
    --qword_1ED456A90;
    off_1ED452EB0(v7);
    v7 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v8 = &xmmword_1ED452F28;
      goto LABEL_12;
    }
  }

LABEL_13:
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  v9 = *(v4 + 40);
  if (!v9)
  {
    goto LABEL_20;
  }

  v10 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_19;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(v9);
  --qword_1ED456A90;
  off_1ED452EB0(v9);
  v9 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v10 = &xmmword_1ED452F28;
LABEL_19:
    (*v10)(v9);
  }

LABEL_20:
  v11 = *(v4 + 8);
  if (v11)
  {
    v12 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v11);
      --qword_1ED456A90;
      off_1ED452EB0(v11);
      v11 = xmmword_1ED456AF0;
      if (!xmmword_1ED456AF0)
      {
        goto LABEL_27;
      }

      v12 = &xmmword_1ED452F28;
    }

    (*v12)(v11);
  }

LABEL_27:
  v13 = &off_1ED452EB0;
  if (dword_1ED452E80)
  {
    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v4);
    --qword_1ED456A90;
    off_1ED452EB0(v4);
    v4 = xmmword_1ED456AF0;
    if (!xmmword_1ED456AF0)
    {
      goto LABEL_33;
    }

    v13 = &xmmword_1ED452F28;
  }

  (*v13)(v4);
LABEL_33:
  result = sub_1819DB2CC(v2);
  v14 = *(v5 + 72);
  if (v14)
  {
    *(v5 + 72) = 0;
    v15 = v14[3];
    v16 = v14[4];
    v17 = v16[3];
    if (v17)
    {
      xmmword_1ED452F18(v17);
    }

    sub_181929C84(v16, v14);
    v18 = v16[3];
    if (v18)
    {
      xmmword_1ED452F28(v18);
    }

    result = sqlite3_finalize(v15);
  }

  *(v5 + 60) = 0;
LABEL_40:
  v19 = *(v1 + 40);
  if (!v19)
  {
    goto LABEL_59;
  }

  if ((*v19)-- > 1)
  {
    goto LABEL_59;
  }

  if (v19[7] >= 1)
  {
    v21 = 0;
    v22 = (v19 + 10);
    do
    {
      v23 = *v22;
      if (*v22)
      {
        v24 = &off_1ED452EB0;
        if (dword_1ED452E80)
        {
          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48[0] -= xmmword_1ED452EC0(v23);
          --qword_1ED456A90;
          off_1ED452EB0(v23);
          v23 = xmmword_1ED456AF0;
          if (!xmmword_1ED456AF0)
          {
            goto LABEL_46;
          }

          v24 = &xmmword_1ED452F28;
        }

        (*v24)(v23);
      }

LABEL_46:
      ++v21;
      v22 += 2;
    }

    while (v21 < v19[7]);
  }

  v25 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
LABEL_58:
    result = (*v25)(v19);
    goto LABEL_59;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(v19);
  --qword_1ED456A90;
  result = off_1ED452EB0(v19);
  v19 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v25 = &xmmword_1ED452F28;
    goto LABEL_58;
  }

LABEL_59:
  *v3 = 0;
  v3[1] = 0;
  v26 = *(v1 + 56);
  if (v26)
  {
    v27 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_65:
      result = (*v27)(v26);
      goto LABEL_66;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v26);
    --qword_1ED456A90;
    result = off_1ED452EB0(v26);
    v26 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v27 = &xmmword_1ED452F28;
      goto LABEL_65;
    }
  }

LABEL_66:
  *(v1 + 48) = -1;
  *(v1 + 56) = 0;
  *(v1 + 24) = 0;
  return result;
}

uint64_t sub_181A0385C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 20))
  {
    result = 0;
    *(a1 + 24) = 1;
    return result;
  }

  v4 = v2 + (*(*(v2 + 96) + 4) << 7);
  v5 = *(v4 + 208);
  v6 = *(v4 + 200);
  v7 = (v5 - 1);
  if (v6)
  {
    v8 = (v6 + 1);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a1 + 48);
  if ((v9 & 0x80000000) == 0)
  {
    v10 = v7 >= v9 ? *(a1 + 48) : v5 - 1;
    v11 = memcmp(*(a1 + 56), v8, v10);
    if (v11 < 0 || (!v11 ? (v12 = v9 < v7) : (v12 = 0), v12))
    {
      *(a1 + 24) = 1;
    }
  }

  *(a1 + 104) = 0;
  if (!v7)
  {
    return 0;
  }

  LODWORD(v13) = *(a1 + 108);
  if (v13 >= v7)
  {
    v16 = 0;
    v17 = *(a1 + 96);
  }

  else
  {
    if (!v13)
    {
      LODWORD(v13) = 64;
    }

    v13 = v13;
    do
    {
      v14 = v13;
      v13 *= 2;
    }

    while (v14 < v7);
    v15 = *(a1 + 96);
    if (sqlite3_initialize())
    {
      return 7;
    }

    v17 = sub_18190287C(v15, v14, 688041480);
    if (!v17)
    {
      return 7;
    }

    *(a1 + 108) = v14;
    *(a1 + 96) = v17;
    v16 = *(a1 + 104);
  }

  memcpy((v17 + v16), v8, v7);
  result = 0;
  *(a1 + 104) += v7;
  return result;
}

void sub_181A039A0(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a3;
  if (!*a3)
  {
    v13 = 92237;
LABEL_11:

    sub_1819012D0(v13);
    return;
  }

  v5 = *(v4 + 20);
  if ((v5 & 0x24) != 0)
  {
    v6 = *v4;
  }

  else if ((v5 & 8) != 0)
  {
    if (fabs(*v4) > 9.22337204e18)
    {
      return;
    }

    *&v6 = *v4;
  }

  else
  {
    if ((v5 & 0x12) == 0 || !*(v4 + 8))
    {
      return;
    }

    v14 = a3;
    v15 = sub_18193CFCC(v4);
    a3 = v14;
    LOBYTE(v6) = v15;
  }

  if (LOBYTE(v6) - 6 < 0xFFFFFFFB)
  {
    return;
  }

  v7 = a3;
  v8 = sqlite3_value_blob(*(a3 + 8));
  if (!v8)
  {
    return;
  }

  v9 = *(v7 + 8);
  if (!v9)
  {
    v13 = 93690;
    goto LABEL_11;
  }

  v10 = v8;
  v11 = *(v9 + 20);
  if ((v11 & 2) != 0 && *(v9 + 22) == 1)
  {
    v12 = *(v9 + 16);
  }

  else if ((v11 & 0x10) != 0)
  {
    v12 = *(v9 + 16);
    if ((*(v9 + 20) & 0x400) != 0)
    {
      v12 += *v9;
    }
  }

  else
  {
    if (v11)
    {
      return;
    }

    v12 = sub_18193CB44(v9, 1);
  }

  if (v12 >= 4 && v12 >= __rev16(*(v10 + 1)) * (8 * LOBYTE(v6) + 8))
  {
    if (sqlite3_initialize() || (v17 = sub_181902484(32, 0x10300409A0FC5E0)) == 0)
    {
      v16 = &unk_1EA831560;
    }

    else
    {
      v16 = v17;
      *(v17 + 16) = 0;
      *v17 = 0u;
      *(v17 + 20) = 2147483645;
      *(v17 + 28) = 0;
    }

    if (__rev16(*(v10 + 1)))
    {
      v18 = 0;
      do
      {
        v19 = 0;
        v20 = &v10[v18 * (8 * LOBYTE(v6) + 8)];
        v21 = ((v20[4] << 56) | (v20[5] << 48) | (v20[6] << 40) | (v20[7] << 32) | (v20[8] << 24) | (v20[9] << 16) | (v20[10] << 8)) + v20[11];
        v38 = 0;
        memset(v37, 0, sizeof(v37));
        v36 = v21;
        v22 = (v20 + 12);
        do
        {
          v23 = &v37[4 * v19 - 8];
          v24 = *v22;
          v25 = v22[1];
          v22 += 2;
          *(v23 + 2) = bswap32(v24);
          *(v23 + 3) = bswap32(v25);
          v19 += 2;
        }

        while (v19 < (2 * LOBYTE(v6)));
        if (v18)
        {
          v26 = v16[6];
          if ((v26 + 1) >= v16[4])
          {
            sub_181906814(v16, " ", 1u);
          }

          else
          {
            v16[6] = v26 + 1;
            *(*(v16 + 1) + v26) = 32;
          }
        }

        sqlite3_str_appendf(v16, "{%lld", v36);
        if (2 * LOBYTE(v6))
        {
          v27 = (2 * LOBYTE(v6));
          v28 = v37;
          do
          {
            v29 = *v28++;
            sqlite3_str_appendf(v16, " %g", v29);
            --v27;
          }

          while (v27);
        }

        v30 = v16[6];
        if ((v30 + 1) < v16[4])
        {
          v16[6] = v30 + 1;
          *(*(v16 + 1) + v30) = 125;
        }

        else
        {
          sub_181906814(v16, "}", 1u);
        }

        ++v18;
      }

      while (v18 < __rev16(*(v10 + 1)));
    }

    if (a1)
    {
      v31 = *(v16 + 28);
      if (*(v16 + 28))
      {
        v32 = *(v16 + 28);
      }

      else
      {
        v32 = -1;
      }

      a1[9] = v32;
      if (*(*a1 + 20))
      {
        if (v31 == 100)
        {
          v33 = "another row available";
        }

        else if (v31 == 101)
        {
          v33 = "no more rows available";
        }

        else if (v31 > 0x1C || ((0x1410004uLL >> v31) & 1) != 0)
        {
          v33 = "unknown error";
        }

        else
        {
          v33 = off_1E6A27DD8[v31];
        }

        sub_18190B23C(a1, v33, -1, 1u, 0);
      }

      v35 = sqlite3_str_finish(v16);

      sub_18190B23C(a1, v35, -1, 1u, sqlite3_free);
    }

    else
    {
      v34 = sqlite3_str_finish(v16);

      sqlite3_free(v34);
    }
  }
}

void sub_181A03E30(sqlite3_context *a1, uint64_t a2, sqlite3_value **a3)
{
  v4 = *a3;
  if (!*a3)
  {
    sub_1819012D0(99877);
    goto LABEL_13;
  }

  v5 = *(v4 + 10);
  if (((0x1000000010001uLL >> v5) & 1) == 0)
  {
    goto LABEL_13;
  }

  if ((v5 & 2) != 0 && *(v4 + 22) == 1)
  {
    v6 = *(v4 + 4);
  }

  else if ((v5 & 0x10) != 0)
  {
    v6 = *(v4 + 4);
    if ((*(v4 + 10) & 0x400) != 0)
    {
      v6 += *v4;
    }
  }

  else
  {
    if (v5)
    {
      goto LABEL_13;
    }

    v7 = a3;
    v8 = sub_18193CB44(v4, 1);
    a3 = v7;
    v6 = v8;
  }

  if (v6 <= 1)
  {
LABEL_13:
    if (a1)
    {
      *(a1 + 9) = 1;
      v9 = *a1;

      sub_1818900D0(v9, "Invalid argument to rtreedepth()", -1, 1u, 0xFFFFFFFFFFFFFFFFLL);
    }

    return;
  }

  v10 = sqlite3_value_blob(*a3);
  if (v10)
  {
    if (a1)
    {
      v11 = __rev16(*v10);
      v12 = *a1;
      if ((*(*a1 + 20) & 0x9000) != 0)
      {

        sub_18193D288(v12, v11);
      }

      else
      {
        *v12 = v11;
        *(v12 + 20) = 4;
      }
    }
  }

  else
  {

    sqlite3_result_error_nomem(a1);
  }
}

void sub_181A03F80(_DWORD *a1, int a2, uint64_t *a3)
{
  if ((a2 - 3) <= 0xFFFFFFFD)
  {
    if (a1)
    {
      a1[9] = 1;
      v4 = *a1;

      sub_1818900D0(v4, "wrong number of arguments to function rtreecheck()", -1, 1u, 0xFFFFFFFFFFFFFFFFLL);
    }

    return;
  }

  v20 = 0;
  v6 = *a3;
  if (!*a3)
  {
LABEL_18:
    v8 = 0;
    if (a2 == 1)
    {
      goto LABEL_19;
    }

    goto LABEL_13;
  }

  v7 = *(v6 + 20);
  if ((~v7 & 0x202) != 0 || *(v6 + 22) != 1)
  {
    if ((v7 & 1) == 0)
    {
      v8 = sub_18193CB70(v6, 1);
      if (a2 == 1)
      {
        goto LABEL_19;
      }

      goto LABEL_13;
    }

    goto LABEL_18;
  }

  v8 = *(v6 + 8);
  if (a2 == 1)
  {
LABEL_19:
    v12 = "main";
    if (a1)
    {
      goto LABEL_20;
    }

LABEL_30:
    sub_181A04294(0, v12, v8, &v20);
    goto LABEL_31;
  }

LABEL_13:
  v10 = a3[1];
  if (!v10)
  {
    goto LABEL_29;
  }

  v11 = *(v10 + 20);
  if ((~v11 & 0x202) != 0 || *(v10 + 22) != 1)
  {
    if ((v11 & 1) == 0)
    {
      v15 = v8;
      v16 = sub_18193CB70(v10, 1);
      v12 = v15;
      v8 = v16;
      if (a1)
      {
        goto LABEL_20;
      }

      goto LABEL_30;
    }

LABEL_29:
    v12 = v8;
    v8 = 0;
    if (a1)
    {
      goto LABEL_20;
    }

    goto LABEL_30;
  }

  v12 = v8;
  v8 = *(v10 + 8);
  if (!a1)
  {
    goto LABEL_30;
  }

LABEL_20:
  v13 = sub_181A04294(*(*a1 + 24), v12, v8, &v20);
  if (!v13)
  {
    v17 = v20;
    if (v20)
    {
      v18 = v20;
    }

    else
    {
      v18 = "ok";
    }

    sub_18190B23C(a1, v18, -1, 1u, 0xFFFFFFFFFFFFFFFFLL);
    if (!v17)
    {
      return;
    }

    goto LABEL_45;
  }

  a1[9] = v13;
  if (*(*a1 + 20))
  {
    switch(v13)
    {
      case 516:
        v14 = "abort due to ROLLBACK";
        break;
      case 101:
        v14 = "no more rows available";
        break;
      case 100:
        v14 = "another row available";
        break;
      default:
        if (v13 > 0x1Cu || ((0x1410004uLL >> v13) & 1) != 0)
        {
          v14 = "unknown error";
        }

        else
        {
          v14 = off_1E6A27DD8[v13];
        }

        break;
    }

    sub_18190B23C(a1, v14, -1, 1u, 0);
    v17 = v20;
    if (!v20)
    {
      return;
    }

    goto LABEL_45;
  }

LABEL_31:
  v17 = v20;
  if (!v20)
  {
    return;
  }

LABEL_45:
  v19 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
LABEL_50:
    (*v19)(v17);
    return;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48 -= xmmword_1ED452EC0(v17);
  --qword_1ED456A90;
  off_1ED452EB0(v17);
  v17 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v19 = &xmmword_1ED452F28;
    goto LABEL_50;
  }
}

uint64_t sub_181A04294(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v34 = 0u;
  v35 = 0u;
  *pStmt = 0u;
  *v33 = 0u;
  v31[0] = a1;
  v31[1] = a2;
  v31[2] = a3;
  v7 = sub_181A04528(v31, "SELECT * FROM %Q.'%q_rowid'", a2, a3);
  if (v7)
  {
    v8 = v7;
    v9 = *(*v7 + 24);
    if (v9)
    {
      xmmword_1ED452F18(v9);
      v10 = *(*v8 + 24);
      v11 = v8[130];
      if (v10)
      {
        xmmword_1ED452F28(v10);
      }
    }

    else
    {
      v11 = v8[130];
    }

    sqlite3_finalize(v8);
    v13 = 1 - v11;
  }

  else
  {
    if (DWORD2(v34) == 7)
    {
      v12 = 7;
    }

    else
    {
      v12 = 0;
    }

    DWORD2(v34) = v12;
    v13 = -1;
  }

  v14 = sub_181A04528(v31, "SELECT * FROM %Q.%Q", a2, a3);
  if (v14)
  {
    v15 = v14;
    v16 = *(*v14 + 24);
    if (v16)
    {
      xmmword_1ED452F18(v16);
      v17 = *(*v15 + 24);
      v18 = *(v15 + 130);
      if (v17)
      {
        xmmword_1ED452F28(v17);
      }
    }

    else
    {
      v18 = *(v15 + 130);
    }

    HIDWORD(pStmt[0]) = (v13 + v18) / 2;
    if (v13 + v18 > 1)
    {
      if (sqlite3_step(v15) == 100)
      {
        v19 = *(*v15 + 24);
        if (v19)
        {
          xmmword_1ED452F18(v19);
        }

        v20 = *(v15 + 20);
        if (v20 && *(v15 + 130) >= 2u)
        {
          v21 = (v20 + 64);
        }

        else
        {
          v22 = *v15;
          *(v22 + 80) = 25;
          sub_181932D5C(v22, 25);
          v21 = &qword_181A20ED0;
        }

        v23 = *(v21 + 10);
        v24 = *v15;
        v25 = *(v15 + 13);
        if (v25 || (v26 = *(v24 + 103), *(v24 + 103)))
        {
          v26 = sub_18193C988(v24, v25);
          v24 = *v15;
        }

        v27 = v23 & 0x3F;
        *(v15 + 13) = v26;
        v28 = *(v24 + 24);
        if (v28)
        {
          xmmword_1ED452F28(v28);
        }

        LODWORD(pStmt[0]) = (0x50505050uLL >> v27) & 1;
      }
    }

    else
    {
      sub_181A04640(v31, "Schema corrupt or not an rtree");
    }

    v29 = sqlite3_finalize(v15);
    if (v29 != 11)
    {
      DWORD2(v34) = v29;
    }
  }

  if (SHIDWORD(pStmt[0]) >= 1)
  {
    if (!DWORD2(v34))
    {
      sub_181A046EC(v31, 0, 0, 1);
    }

    sub_181A04BD8(v31, "_rowid", v34);
    sub_181A04BD8(v31, "_parent", SDWORD1(v34));
  }

  sqlite3_finalize(pStmt[1]);
  sqlite3_finalize(v33[0]);
  sqlite3_finalize(v33[1]);
  *a4 = v35;
  return DWORD2(v34);
}

uint64_t sub_181A04528(uint64_t a1, char *a2, ...)
{
  va_start(va, a2);
  v8[0] = 0;
  va_copy(&v8[1], va);
  v3 = sqlite3_vmprintf(a2, va);
  v5 = v3;
  if (*(a1 + 64))
  {
    if (!v3)
    {
      return v8[0];
    }
  }

  else
  {
    if (!v3)
    {
      *(a1 + 64) = 7;
      return v8[0];
    }

    *(a1 + 64) = sub_1818954B4(*a1, v3, 0xFFFFFFFFLL, 128, 0, v8, 0, v4);
  }

  v6 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_11;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48 -= xmmword_1ED452EC0(v5);
  --qword_1ED456A90;
  off_1ED452EB0(v5);
  v5 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v6 = &xmmword_1ED452F28;
LABEL_11:
    (*v6)(v5);
  }

  return v8[0];
}

char *sub_181A04640(char *result, char *a2, ...)
{
  va_start(va, a2);
  if (!*(result + 16) && *(result + 20) <= 99)
  {
    v2 = result;
    result = sqlite3_vmprintf(a2, va);
    v3 = v2;
    if (!result)
    {
      goto LABEL_7;
    }

    v4 = *(v2 + 9);
    v5 = "\n";
    if (!v4)
    {
      v5 = &byte_181A2878D;
    }

    result = sqlite3_mprintf("%z%s%z", v4, v5, result);
    v3 = v2;
    *(v2 + 9) = result;
    if (!result)
    {
LABEL_7:
      *(v3 + 16) = 7;
    }

    ++*(v3 + 20);
  }

  return result;
}

uint64_t sub_181A046EC(uint64_t result, unsigned int a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 64))
  {
    return result;
  }

  v6 = result;
  v7 = *(result + 32);
  if (!v7)
  {
    result = sub_181A04528(result, "SELECT data FROM %Q.'%q_node' WHERE nodeno=?", *(result + 8), *(result + 16));
    *(v6 + 32) = result;
    if (*(v6 + 64))
    {
      return result;
    }

    v7 = result;
  }

  if (!sub_1818DF6EC(v7, 0))
  {
    v8 = v7[16];
    if ((*(v8 + 20) & 0x9000) != 0)
    {
      sub_18193D288(v8, a4);
    }

    else
    {
      *v8 = a4;
      *(v8 + 20) = 4;
    }

    v9 = *(*v7 + 24);
    if (v9)
    {
      xmmword_1ED452F28(v9);
    }
  }

  if (sqlite3_step(*(v6 + 32)) == 100)
  {
    v10 = sqlite3_column_bytes(*(v6 + 32), 0);
    v11 = sqlite3_column_blob(*(v6 + 32), 0);
    if (sqlite3_initialize() || (v16 = sub_181902484(v10, 3707084698)) == 0)
    {
      v10 = 0;
      v12 = 0;
      *(v6 + 64) = 7;
    }

    else
    {
      v12 = v16;
      memcpy(v16, v11, v10);
    }
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  result = sqlite3_reset(*(v6 + 32));
  if (!*(v6 + 64))
  {
    *(v6 + 64) = result;
    if (!v12 && !result)
    {
      return sub_181A04640(v6, "Node %lld missing from database", a4);
    }
  }

  if (!v12)
  {
    return result;
  }

  if (v10 > 3)
  {
    if (!a3)
    {
      a2 = __rev16(*v12);
      if (a2 >= 0x29)
      {
        sub_181A04640(v6, "Rtree depth out of range (%d)");
        goto LABEL_28;
      }
    }

    v13 = __rev16(v12[1]);
    if ((((8 * *(v6 + 28) + 8) * v13) | 4) > v10)
    {
      sub_181A04640(v6, "Node %lld is too small for cell count of %d (%d bytes)");
      goto LABEL_28;
    }

    if (!v13)
    {
      goto LABEL_28;
    }

    v17 = 0;
    v32 = a2 - 1;
    v31 = v12 + 19;
    v34 = a2;
    v35 = v12;
    v33 = v13;
    while (1)
    {
      v19 = *(v6 + 28);
      v20 = 8 * v19 + 8;
      v21 = v12 + v20 * v17;
      v36 = v21[4];
      v37 = v21[5];
      v38 = v21[6];
      v39 = v21[7];
      v40 = v21[8];
      v41 = v21[9];
      v42 = v21[10];
      v43 = v21[11];
      if (v19 >= 1)
      {
        break;
      }

LABEL_40:
      v18 = (v36 << 56) | (v37 << 48) | (v38 << 40) | (v39 << 32) | (v40 << 24) | (v41 << 16) | (v42 << 8);
      if (v34 < 1)
      {
        sub_181A04C84(v6, 1u, v18 + v43, a4);
        ++*(v6 + 56);
      }

      else
      {
        sub_181A04C84(v6, 0, v18 + v43, a4);
        sub_181A046EC(v6, v32, v21 + 12, v18 + v43);
        ++*(v6 + 60);
      }

      ++v17;
      v12 = v35;
      if (v17 == v33)
      {
        goto LABEL_28;
      }
    }

    v22 = 0;
    v23 = a3 + 3;
    v24 = &v31[v17 * v20];
    while (1)
    {
      v25 = COERCE_FLOAT(bswap32(*(v24 - 7)));
      v26 = COERCE_FLOAT(bswap32(*(v24 - 3)));
      if (*(v6 + 24))
      {
        break;
      }

      if (v25 > v26)
      {
        goto LABEL_49;
      }

LABEL_50:
      if (a3)
      {
        v27 = COERCE_FLOAT(bswap32(*(v23 - 3)));
        v28 = COERCE_FLOAT(bswap32(*(v23 + 1)));
        if (*(v6 + 24))
        {
          if (SLODWORD(v25) >= SLODWORD(v27) && SLODWORD(v26) <= SLODWORD(v28))
          {
            goto LABEL_46;
          }
        }

        else if (v25 >= v27 && v26 <= v28)
        {
          goto LABEL_46;
        }

        sub_181A04640(v6, "Dimension %d of cell %d on node %lld is corrupt relative to parent", v22, v17, a4);
      }

LABEL_46:
      v24 += 8;
      ++v22;
      v23 += 8;
      if (v22 >= *(v6 + 28))
      {
        goto LABEL_40;
      }
    }

    if (SLODWORD(v25) <= SLODWORD(v26))
    {
      goto LABEL_50;
    }

LABEL_49:
    sub_181A04640(v6, "Dimension %d of cell %d on node %lld is corrupt", v22, v17, a4);
    goto LABEL_50;
  }

  sub_181A04640(v6, "Node %lld is too small (%d bytes)");
LABEL_28:
  v14 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
LABEL_33:
    v15 = *v14;

    return v15(v12);
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48 -= xmmword_1ED452EC0(v12);
  --qword_1ED456A90;
  result = off_1ED452EB0(v12);
  v12 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v14 = &xmmword_1ED452F28;
    goto LABEL_33;
  }

  return result;
}

uint64_t sub_181A04BD8(uint64_t result, const char *a2, uint64_t a3)
{
  if (!*(result + 64))
  {
    v5 = result;
    result = sub_181A04528(result, "SELECT count(*) FROM %Q.'%q%s'", *(result + 8), *(result + 16), a2);
    if (result)
    {
      v6 = result;
      if (sqlite3_step(result) == 100)
      {
        v7 = sqlite3_column_int64(v6, 0);
        if (v7 != a3)
        {
          sub_181A04640(v5, "Wrong number of entries in %%%s table - expected %lld, actual %lld", a2, a3, v7);
        }
      }

      result = sqlite3_finalize(v6);
      *(v5 + 64) = result;
    }
  }

  return result;
}

uint64_t sub_181A04C84(uint64_t result, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v7 = result;
  v8 = result + 40;
  v9 = *(result + 40 + 8 * a2);
  if (v9)
  {
    if (*(result + 64))
    {
      return result;
    }
  }

  else
  {
    result = sub_181A04528(result, off_1E6A28178[a2], *(result + 8), *(result + 16));
    v9 = result;
    *(v8 + 8 * a2) = result;
    if (*(v7 + 64))
    {
      return result;
    }
  }

  if (!sub_1818DF6EC(v9, 0))
  {
    v10 = *(v9 + 16);
    if ((*(v10 + 20) & 0x9000) != 0)
    {
      sub_18193D288(v10, a3);
    }

    else
    {
      *v10 = a3;
      *(v10 + 20) = 4;
    }

    v11 = *(*v9 + 24);
    if (v11)
    {
      xmmword_1ED452F28(v11);
    }
  }

  v12 = sqlite3_step(v9);
  if (v12 == 100)
  {
    if (sqlite3_column_int64(v9, 0) != a4)
    {
      sub_181A04640(v7, "Found (%lld -> %lld) in %s table, expected (%lld -> %lld)");
    }
  }

  else if (v12 == 101)
  {
    sub_181A04640(v7, "Mapping (%lld -> %lld) missing from %s table");
  }

  result = sqlite3_reset(v9);
  if (!*(v7 + 64))
  {
    *(v7 + 64) = result;
  }

  return result;
}

uint64_t sub_181A04E10(uint64_t a1, double *a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v3 = 0uLL;
  memset(v46, 0, 41);
  v4 = *a2;
  if (v4 < 1)
  {
    v8 = 0;
    *(a2 + 10) = 2;
    *(a2 + 14) = 1;
LABEL_51:
    v35 = 0;
    v37 = *(a1 + 80) >> (v8 / 2);
    a2[8] = v37 * 6.0;
    *(a2 + 9) = v37;
    return v35;
  }

  v5 = *(a2 + 1);
  if (v4 < 8)
  {
    v6 = 0;
    v7 = 0;
    goto LABEL_14;
  }

  if (v4 >= 0x20)
  {
    v6 = v4 & 0x7FFFFFE0;
    v10 = (v5 + 196);
    v11.i64[0] = 0x4040404040404040;
    v11.i64[1] = 0x4040404040404040;
    v12 = v6;
    v13 = 0uLL;
    do
    {
      v14.i8[0] = *(v10 - 192);
      v15.i8[0] = *v10;
      v15.i8[1] = v10[12];
      v14.i8[1] = *(v10 - 180);
      v15.i8[2] = v10[24];
      v14.i8[2] = *(v10 - 168);
      v15.i8[3] = v10[36];
      v14.i8[3] = *(v10 - 156);
      v15.i8[4] = v10[48];
      v14.i8[4] = *(v10 - 144);
      v15.i8[5] = v10[60];
      v14.i8[5] = *(v10 - 132);
      v15.i8[6] = v10[72];
      v14.i8[6] = *(v10 - 120);
      v15.i8[7] = v10[84];
      v14.i8[7] = *(v10 - 108);
      v15.i8[8] = v10[96];
      v14.i8[8] = *(v10 - 96);
      v15.i8[9] = v10[108];
      v14.i8[9] = *(v10 - 84);
      v15.i8[10] = v10[120];
      v14.i8[10] = *(v10 - 72);
      v15.i8[11] = v10[132];
      v14.i8[11] = *(v10 - 60);
      v15.i8[12] = v10[144];
      v14.i8[12] = *(v10 - 48);
      v15.i8[13] = v10[156];
      v14.i8[13] = *(v10 - 36);
      v15.i8[14] = v10[168];
      v14.i8[14] = *(v10 - 24);
      v15.i8[15] = v10[180];
      v14.i8[15] = *(v10 - 12);
      v3 = vorrq_s8(v3, vceqq_s8(v14, v11));
      v13 = vorrq_s8(v13, vceqq_s8(v15, v11));
      v10 += 384;
      v12 -= 32;
    }

    while (v12);
    v16 = vcltzq_s8(vshlq_n_s8(vorrq_s8(v13, v3), 7uLL));
    v16.i8[0] = vmaxvq_u8(v16);
    v9 = v16.i32[0];
    v7 = v16.i8[0] & 1;
    if (v6 == v4)
    {
      goto LABEL_18;
    }

    if ((v4 & 0x18) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v9 = 0;
    v6 = 0;
  }

  v17 = v6;
  v18 = vdup_n_s8(v9);
  v6 = v4 & 0x7FFFFFF8;
  v19 = v17 - v6;
  v20 = (v5 + 12 * v17 + 52);
  do
  {
    v21.i8[0] = *(v20 - 48);
    v21.i8[1] = *(v20 - 36);
    v21.i8[2] = *(v20 - 24);
    v21.i8[3] = *(v20 - 12);
    v21.i8[4] = *v20;
    v21.i8[5] = v20[12];
    v21.i8[6] = v20[24];
    v21.i8[7] = v20[36];
    v18 = vorr_s8(v18, vceq_s8(v21, 0x4040404040404040));
    v20 += 96;
    v19 += 8;
  }

  while (v19);
  v7 = vmaxv_u8(vcltz_s8(vshl_n_s8(v18, 7uLL))) & 1;
  if (v6 != v4)
  {
LABEL_14:
    v22 = (v5 + 12 * v6 + 4);
    v23 = v4 - v6;
    do
    {
      v24 = *v22;
      v22 += 12;
      if (v24 == 64)
      {
        v7 = 1;
      }

      --v23;
    }

    while (v23);
  }

LABEL_18:
  v25 = 0;
  v26 = 0;
  v8 = 0;
  v27 = (*(a2 + 1) + 4);
  do
  {
    if (v7)
    {
      if (!v27[1])
      {
        goto LABEL_30;
      }

LABEL_21:
      v28 = *(v27 - 1);
      if (v28 < 1)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }

    if (!v27[1])
    {
      goto LABEL_30;
    }

    v28 = *(v27 - 1);
    if (v28 <= 0)
    {
      if (*v27 != 2)
      {
        goto LABEL_21;
      }

      v39 = *(a2 + 4);
      if (v26)
      {
        if (v26 >= 2)
        {
          v40 = v26 & 0x7FFFFFFE;
          v41 = v39 + 8;
          v42 = v40;
          do
          {
            *(v41 - 8) = 0;
            *v41 = 0;
            *(v41 - 4) = 0;
            *(v41 + 4) = 0;
            v41 += 16;
            v42 -= 2;
          }

          while (v42);
          if (v26 == v40)
          {
            goto LABEL_63;
          }
        }

        else
        {
          v40 = 0;
        }

        v43 = (v39 + 8 * v40 + 4);
        v44 = v40 - v26;
        do
        {
          *(v43 - 1) = 0;
          *v43 = 0;
          v43 += 8;
        }

        while (!__CFADD__(v44++, 1));
      }

LABEL_63:
      v35 = 0;
      *(a2 + 10) = 1;
      *(v39 + v25) = 1;
      *(v39 + 8 * v26 + 4) = 1;
      a2[8] = 30.0;
      *(a2 + 9) = 1;
      *(a2 + 20) = 1;
      return v35;
    }

LABEL_25:
    if (v28 <= *(a1 + 37))
    {
      v29 = *v27;
      if (v29 <= 0xF)
      {
        switch(v29)
        {
          case 2u:
            v30 = 0;
            v31 = 65;
            break;
          case 4u:
            v30 = 0;
            v31 = 69;
            break;
          case 8u:
            v30 = 1;
            v31 = 66;
            break;
          default:
            goto LABEL_30;
        }

        goto LABEL_29;
      }

      if (v29 == 16)
      {
        v30 = 0;
        v31 = 67;
        goto LABEL_29;
      }

      if (v29 == 32)
      {
        v30 = 1;
        v31 = 68;
        goto LABEL_29;
      }

      goto LABEL_27;
    }

LABEL_26:
    v29 = *v27;
LABEL_27:
    if (v29 == 64)
    {
      v30 = 1;
      v31 = 70;
LABEL_29:
      v32 = v46 + v8;
      *v32 = v31;
      v8 += 2;
      v32[1] = v28 + 47;
      v33 = *(a2 + 4) + v25;
      *v33 = v8 / 2;
      *(v33 + 4) = v30;
    }

LABEL_30:
    if (++v26 >= v4)
    {
      break;
    }

    v25 += 8;
    v27 += 12;
  }

  while (v8 < 40);
  *(a2 + 10) = 2;
  *(a2 + 14) = 1;
  if (v8 < 1)
  {
    goto LABEL_51;
  }

  v34 = a1;
  if (sqlite3_initialize())
  {
    a2[6] = 0.0;
    return 7;
  }

  v36 = sub_181902484((v8 + 1), 2522652024);
  *(a2 + 6) = v36;
  if (v36)
  {
    memcpy(v36, v46, (v8 + 1));
    a1 = v34;
    goto LABEL_51;
  }

  return 7;
}

uint64_t sub_181A05338(uint64_t a1)
{
  v2 = sqlite3_mprintf("DROP TABLE '%q'.'%q_node';DROP TABLE '%q'.'%q_rowid';DROP TABLE '%q'.'%q_parent';", *(a1 + 48), *(a1 + 56), *(a1 + 48), *(a1 + 56), *(a1 + 48), *(a1 + 56));
  if (!v2)
  {
    return 7;
  }

  v3 = v2;
  v4 = *(a1 + 112);
  *(a1 + 112) = 0;
  if (v4)
  {
    v5 = v4[3];
    v6 = v4[4];
    v7 = v6[3];
    if (v7)
    {
      xmmword_1ED452F18(v7);
    }

    sub_181929C84(v6, v4);
    v8 = v6[3];
    if (v8)
    {
      xmmword_1ED452F28(v8);
    }

    sqlite3_finalize(v5);
  }

  v9 = sqlite3_exec(*(a1 + 24), v3, 0, 0, 0);
  v10 = &off_1ED452EB0;
  if (dword_1ED452E80)
  {
    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v3);
    --qword_1ED456A90;
    off_1ED452EB0(v3);
    v3 = xmmword_1ED456AF0;
    if (!xmmword_1ED456AF0)
    {
      goto LABEL_14;
    }

    v10 = &xmmword_1ED452F28;
  }

  (*v10)(v3);
LABEL_14:
  if (!v9)
  {
    sub_181A07BB8(a1);
  }

  return v9;
}

uint64_t sub_181A05494(uint64_t a1, uint64_t *a2)
{
  if (sqlite3_initialize())
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_181902484(296, 0x10200400C580839);
    if (v4)
    {
      v5 = 0;
      *(v4 + 288) = 0;
      *(v4 + 256) = 0u;
      *(v4 + 272) = 0u;
      *(v4 + 224) = 0u;
      *(v4 + 240) = 0u;
      *(v4 + 192) = 0u;
      *(v4 + 208) = 0u;
      *(v4 + 160) = 0u;
      *(v4 + 176) = 0u;
      *(v4 + 128) = 0u;
      *(v4 + 144) = 0u;
      *(v4 + 96) = 0u;
      *(v4 + 112) = 0u;
      *(v4 + 64) = 0u;
      *(v4 + 80) = 0u;
      *(v4 + 32) = 0u;
      *(v4 + 48) = 0u;
      *v4 = 0u;
      *(v4 + 16) = 0u;
      ++*(a1 + 88);
      *v4 = a1;
      goto LABEL_6;
    }
  }

  v5 = 7;
LABEL_6:
  *a2 = v4;
  return v5;
}

uint64_t sub_181A05530(void *a1)
{
  v1 = a1;
  v2 = *a1;
  sub_181A07DA0(a1);
  sqlite3_finalize(v1[7]);
  v3 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_6;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(v1);
  --qword_1ED456A90;
  off_1ED452EB0(v1);
  v1 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v3 = &xmmword_1ED452F28;
LABEL_6:
    (*v3)(v1);
  }

  v4 = *(v2 + 88) - 1;
  *(v2 + 88) = v4;
  if (!v4 && !*(v2 + 40))
  {
    v5 = *(v2 + 112);
    *(v2 + 112) = 0;
    if (v5)
    {
      v6 = v5[3];
      v7 = v5[4];
      v8 = v7[3];
      if (v8)
      {
        xmmword_1ED452F18(v8);
      }

      sub_181929C84(v7, v5);
      v9 = v7[3];
      if (v9)
      {
        xmmword_1ED452F28(v9);
      }

      sqlite3_finalize(v6);
    }
  }

  return 0;
}

uint64_t sub_181A05650(uint64_t a1, int a2, uint64_t a3, unsigned int a4, uint64_t *a5)
{
  v10 = *a1;
  v58 = 0;
  ++*(v10 + 72);
  sub_181A07DA0(a1);
  *(a1 + 12) = a2;
  if (a2 == 1)
  {
    v57 = 0;
    v11 = *a5;
    if (*a5)
    {
      v12 = *(v11 + 20);
      if ((v12 & 0x24) != 0)
      {
        v13 = *v11;
        goto LABEL_14;
      }

      if ((v12 & 8) != 0)
      {
        v48 = *v11;
        if (*v11 >= -9.22337204e18)
        {
          if (v48 <= 9.22337204e18)
          {
            v13 = v48;
          }

          else
          {
            v13 = 0x7FFFFFFFFFFFFFFFLL;
          }
        }

        else
        {
          v13 = 0x8000000000000000;
        }

LABEL_14:
        v56 = 0;
        v15 = *a5;
        if (*a5)
        {
          v17 = *(v15 + 20);
          if ((0x4000000040004uLL >> v17))
          {
            sub_18190FC94(*a5, 0);
            v17 = *(v15 + 20);
          }

          v18 = byte_181A203AA[v17 & 0x3F];
          if (v18 != 1)
          {
            if (v18 != 2)
            {
              v15 = 0;
              goto LABEL_104;
            }

            v19 = *a5;
            if (*a5)
            {
              v20 = *(v19 + 20);
              if ((v20 & 8) != 0)
              {
                v21 = *v19;
              }

              else if ((v20 & 0x24) != 0)
              {
                v21 = *v19;
              }

              else if ((v20 & 0x12) != 0)
              {
                v21 = sub_18193CF90(v19);
              }

              else
              {
                v21 = 0.0;
              }
            }

            else
            {
              sub_1819012D0(92272);
              v21 = 0.0;
            }

            v15 = 0;
            if (v21 >= 9.22337204e18 || v21 < -9.22337204e18 || v13 != v21 || v21 < v13 || v21 > v13)
            {
              goto LABEL_104;
            }
          }

          v15 = sub_181A083C8(v10, v13, &v57, &v56);
          if (!v15)
          {
            v49 = v57;
            if (v57)
            {
              v50 = sub_181A084D0(a1, 0, 0.0);
              *(a1 + 88) = v49;
              *(v50 + 8) = v56;
              *(v50 + 17) = 1;
              v51 = *(v49 + 3);
              v52 = __rev16(*(v51 + 2));
              if (v52)
              {
                v53 = 0;
                v54 = (v51 + 5);
                while (((*(v54 - 1) << 56) | (*v54 << 48) | (v54[1] << 40) | (v54[2] << 32) | (v54[3] << 24) | (v54[4] << 16) | (v54[5] << 8)) + v54[6] != v13)
                {
                  v54 += *(v10 + 39);
                  if (v52 == ++v53)
                  {
                    goto LABEL_103;
                  }
                }

                v15 = 0;
                *(v50 + 18) = v53;
              }

              else
              {
LABEL_103:
                v15 = 267;
                *(v50 + 18) = 0;
              }

              goto LABEL_105;
            }
          }
        }

        else
        {
          sub_1819012D0(99877);
        }

LABEL_104:
        *(a1 + 8) = 1;
        goto LABEL_105;
      }

      if ((v12 & 0x12) != 0 && *(v11 + 8))
      {
        v13 = sub_18193CFCC(v11);
        goto LABEL_14;
      }
    }

    else
    {
      sub_1819012D0(92237);
    }

    v13 = 0;
    goto LABEL_14;
  }

  v14 = sub_181A086B4(v10, 1, 0, &v58);
  v15 = v14;
  if (a4 < 1 || v14)
  {
    if (v14)
    {
      goto LABEL_105;
    }

LABEL_10:
    v16 = sub_181A084D0(a1, (*(v10 + 44) + 1), 0.0);
    if (v16)
    {
      *(v16 + 8) = 1;
      *(v16 + 17) = 1;
      *(a1 + 88) = v58;
      v58 = 0;
      v15 = sub_181A08AA4(a1);
      goto LABEL_105;
    }

    return 7;
  }

  if (sqlite3_initialize())
  {
    *(a1 + 24) = 0;
    *(a1 + 16) = a4;
    v15 = 7;
    goto LABEL_105;
  }

  v22 = sub_181902484(24 * a4, 0x10A204099538C89);
  *(a1 + 24) = v22;
  *(a1 + 16) = a4;
  if (!v22)
  {
LABEL_88:
    v15 = 7;
    goto LABEL_105;
  }

  bzero(v22, 24 * a4);
  bzero((a1 + 128), 4 * *(v10 + 44) + 4);
  v23 = 0;
  v24 = 24 * a4;
  v25 = (a3 + 1);
  while (1)
  {
    v27 = *(a1 + 24);
    v28 = *a5;
    if (*a5)
    {
      v29 = *(v28 + 20);
      if ((0x4000000040004uLL >> v29))
      {
        sub_18190FC94(*a5, 0);
        v29 = *(v28 + 20);
      }

      v30 = byte_181A203AA[v29 & 0x3F];
    }

    else
    {
      sub_1819012D0(99877);
      v30 = 0;
    }

    v31 = *(v25 - 1);
    v32 = (v27 + v23);
    v32[1] = v31;
    *v32 = *v25 - 48;
    if (v31 >= 70)
    {
      break;
    }

    if (v30 == 2)
    {
      v42 = *a5;
      if (*a5)
      {
        v43 = *(v42 + 20);
        if ((v43 & 8) != 0)
        {
          v44 = *v42;
        }

        else if ((v43 & 0x24) != 0)
        {
          v44 = *v42;
        }

        else if ((v43 & 0x12) != 0)
        {
          v44 = sub_18193CF90(v42);
        }

        else
        {
          v44 = 0.0;
        }
      }

      else
      {
        sub_1819012D0(92272);
        v44 = 0.0;
      }

      *(v27 + v23 + 8) = v44;
      goto LABEL_32;
    }

    if (v30 != 1)
    {
      *(v27 + v23 + 8) = 0;
      if (v30 == 5 || (v31 & 0xFFFFFFFE) != 0x42)
      {
        v45 = 64;
      }

      else
      {
        v45 = 63;
      }

LABEL_63:
      v32[1] = v45;
      goto LABEL_32;
    }

    v39 = *a5;
    if (!*a5)
    {
      sub_1819012D0(92237);
LABEL_65:
      *(v27 + v23 + 8) = 0;
      goto LABEL_32;
    }

    v40 = *(v39 + 20);
    if ((v40 & 0x24) != 0)
    {
      v41 = *v39;
    }

    else if ((v40 & 8) != 0)
    {
      v46 = *v39;
      if (*v39 < -9.22337204e18)
      {
        v47 = 0xC3E0000000000000;
        goto LABEL_79;
      }

      if (v46 > 9.22337204e18)
      {
        v47 = 0x43E0000000000000;
LABEL_79:
        *(v27 + v23 + 8) = v47;
LABEL_80:
        if (v31 == 69)
        {
          v45 = 68;
        }

        else
        {
          if (v31 != 67)
          {
            goto LABEL_32;
          }

          v45 = 66;
        }

        goto LABEL_63;
      }

      v41 = v46;
    }

    else
    {
      if ((v40 & 0x12) == 0 || !*(v39 + 8))
      {
        goto LABEL_65;
      }

      v41 = sub_18193CFCC(v39);
    }

    *(v27 + v23 + 8) = v41;
    if ((v41 - 0x1000000000000) <= 0xFFFE000000000000)
    {
      v31 = v32[1];
      goto LABEL_80;
    }

LABEL_32:
    ++a5;
    v23 += 24;
    v25 += 2;
    if (v24 == v23)
    {
      goto LABEL_10;
    }
  }

  v33 = *a5;
  if (*a5)
  {
    if ((*(v33 + 20) & 0xFBF) != 0xA01)
    {
      goto LABEL_114;
    }

    if (*(v33 + 23) != 112)
    {
      goto LABEL_114;
    }

    if (strcmp(*v33, "RtreeMatchArg"))
    {
      goto LABEL_114;
    }

    v34 = *(v33 + 8);
    if (!v34)
    {
      goto LABEL_114;
    }

    v35 = *v34;
    if (sqlite3_initialize())
    {
      goto LABEL_88;
    }

    v36 = sub_181902484(v35 + 112, 0x1090040CAC3BAA7);
    if (!v36)
    {
      goto LABEL_88;
    }

    v37 = v36;
    v36[5] = 0u;
    v36[6] = 0u;
    v36[3] = 0u;
    v36[4] = 0u;
    v36[1] = 0u;
    v36[2] = 0u;
    *v36 = 0u;
    memcpy(v36 + 7, v34, *v34);
    *v37 = *(v37 + 18);
    *(v37 + 2) = *(v37 + 38);
    *(v37 + 2) = v37 + 168;
    *(v37 + 13) = *(v37 + 20);
    v38 = *(v37 + 15);
    if (!v38)
    {
      v32[1] = 71;
      v38 = *(v37 + 16);
    }

    v26 = v27 + v23;
    *(v26 + 8) = v38;
    *(v26 + 16) = v37;
    *(v37 + 14) = *(v10 + 37);
    *(v37 + 6) = a1 + 128;
    *(v37 + 16) = *(v10 + 44) + 1;
    goto LABEL_32;
  }

  sub_1819012D0(99775);
LABEL_114:
  v15 = 1;
LABEL_105:
  sub_181A08010(v10, v58);
  sub_181A07BB8(v10);
  return v15;
}

uint64_t sub_181A05D74(uint64_t a1)
{
  if (*(a1 + 10))
  {
    *(a1 + 10) = 0;
    sqlite3_reset(*(a1 + 56));
  }

  sub_181A093F4(a1);

  return sub_181A08AA4(a1);
}

uint64_t sub_181A05DCC(uint64_t a1, sqlite3_context *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a1;
  v9 = *(a1 + 9);
  if (*(a1 + 9))
  {
    v10 = a1 + 64;
  }

  else if (*(a1 + 36))
  {
    v10 = *(a1 + 48);
  }

  else
  {
    v10 = 0;
  }

  v11 = a1 + 8 * (1 - v9);
  v14 = *(v11 + 88);
  v12 = (v11 + 88);
  v13 = v14;
  if (v14)
  {
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    v20 = a3;
    v21 = a2;
    v22 = a1;
    if (v9 == 1)
    {
      v23 = (a1 + 72);
    }

    else
    {
      v23 = (*(a1 + 48) + 8);
    }

    result = sub_181A086B4(*a1, *v23, 0, v12);
    if (result)
    {
      return result;
    }

    v13 = *v12;
    a2 = v21;
    a3 = v20;
    a1 = v22;
    if (!v10)
    {
      return 0;
    }
  }

  v15 = *(v10 + 18);
  v16 = *(v13 + 3);
  if (v15 >= bswap32(*(v16 + 2)) >> 16)
  {
    return 4;
  }

  if (!a3)
  {
    if (a2)
    {
      v25 = (v16 + *(v8 + 39) * v15);
      v26 = ((v25[4] << 56) | (v25[5] << 48) | (v25[6] << 40) | (v25[7] << 32) | (v25[8] << 24) | (v25[9] << 16) | (v25[10] << 8)) + v25[11];
      v27 = *a2;
      if ((*(*a2 + 20) & 0x9000) == 0)
      {
        result = 0;
        *v27 = v26;
        *(v27 + 20) = 4;
        return result;
      }

      sub_18193D288(*a2, v26);
    }

    return 0;
  }

  v17 = *(v8 + 37);
  if (v17 >= a3)
  {
    v28 = (v16 + (*(v8 + 39) * v15 + 4 * a3 + 8));
    v29 = (*v28 << 24) | (v28[1] << 16) | (v28[2] << 8) | v28[3];
    if (*(v8 + 38))
    {
      if (a2)
      {
        v30 = *a2;
        if ((*(*a2 + 20) & 0x9000) == 0)
        {
          result = 0;
          *v30 = v29;
          *(v30 + 20) = 4;
          return result;
        }

        sub_18193D288(*a2, v29);
      }
    }

    else
    {
      sqlite3_result_double(a2, *&v29);
    }

    return 0;
  }

  if (*(a1 + 10))
  {
    goto LABEL_12;
  }

  v31 = a1;
  v32 = (a1 + 56);
  v33 = *(a1 + 56);
  if (v33)
  {
    v34 = a3;
    v35 = a2;
  }

  else
  {
    v34 = a3;
    v35 = a2;
    result = sub_1818954B4(v8[3], v8[12], 0xFFFFFFFFLL, 128, 0, v32, 0, a8);
    if (result)
    {
      return result;
    }

    v33 = *v32;
    v15 = *(v10 + 18);
    v16 = *(v13 + 3);
  }

  v36 = sub_181A04250((v16 + *(v8 + 39) * v15 + 4));
  sqlite3_bind_int64(v33, 1, v36);
  v37 = sqlite3_step(*v32);
  if (v37 == 100)
  {
    a1 = v31;
    *(v31 + 10) = 1;
    v17 = *(v8 + 37);
    a2 = v35;
    a3 = v34;
LABEL_12:
    v18 = a2;
    v19 = sqlite3_column_value(*(a1 + 56), a3 - v17 + 1);
    sqlite3_result_value(v18, v19);
    return 0;
  }

  v38 = v37;
  sqlite3_reset(*v32);
  if (v38 == 101)
  {
    return 0;
  }

  else
  {
    return v38;
  }
}

uint64_t sub_181A060C0(sqlite3_blob ***a1, void *a2)
{
  v4 = *(a1 + 9);
  if (*(a1 + 9))
  {
    v5 = a1 + 8;
  }

  else if (*(a1 + 9))
  {
    v5 = a1[6];
  }

  else
  {
    v5 = 0;
  }

  v6 = &a1[1 - v4];
  v9 = v6[11];
  v8 = (v6 + 11);
  v7 = v9;
  if (v9)
  {
    result = 0;
LABEL_12:
    if (v5)
    {
      v12 = *(v5 + 18);
      v13 = *(v7 + 3);
      if (v12 >= bswap32(*(v13 + 2)) >> 16)
      {
        return 4;
      }

      else
      {
        result = 0;
        v14 = (v13 + *(*a1 + 39) * v12);
        *a2 = ((v14[4] << 56) | (v14[5] << 48) | (v14[6] << 40) | (v14[7] << 32) | (v14[8] << 24) | (v14[9] << 16) | (v14[10] << 8)) + v14[11];
      }
    }

    return result;
  }

  if (v4 == 1)
  {
    v11 = (a1 + 9);
  }

  else
  {
    v11 = (a1[6] + 1);
  }

  result = sub_181A086B4(*a1, *v11, 0, v8);
  v7 = *v8;
  if (!result)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_181A061E0(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4)
{
  if (*(a1 + 92))
  {
    return 518;
  }

  v82 = v9;
  v83 = v8;
  v84 = v7;
  v85 = v6;
  v86 = v4;
  v87 = v5;
  ++*(a1 + 72);
  memset(v81, 0, sizeof(v81));
  if (a2 < 2)
  {
    goto LABEL_78;
  }

  if (a2 - 4 >= *(a1 + 37))
  {
    v15 = *(a1 + 37);
  }

  else
  {
    v15 = (a2 - 4);
  }

  if (*(a1 + 38))
  {
    if (v15 >= 1)
    {
      v16 = 0;
      v17 = a3 + 4;
      v18 = (v81 | 0xC);
      while (1)
      {
        v19 = *(v17 - 1);
        if (!v19)
        {
          break;
        }

        v20 = *(v19 + 20);
        if ((v20 & 0x24) != 0)
        {
          v21 = *v19;
          goto LABEL_15;
        }

        if ((v20 & 8) != 0)
        {
          v25 = *v19;
          if (*v19 >= -9.22337204e18)
          {
            if (v25 <= 9.22337204e18)
            {
              *&v21 = v25;
            }

            else
            {
              LODWORD(v21) = -1;
            }
          }

          else
          {
            LODWORD(v21) = 0;
          }
        }

        else
        {
          if ((v20 & 0x12) == 0 || !*(v19 + 8))
          {
            goto LABEL_14;
          }

          LODWORD(v21) = sub_18193CFCC(v19);
        }

LABEL_15:
        *(v18 - 1) = LODWORD(v21);
        v22 = *v17;
        if (!*v17)
        {
          sub_1819012D0(92237);
LABEL_19:
          LODWORD(v24) = 0;
          goto LABEL_20;
        }

        v23 = *(v22 + 20);
        if ((v23 & 0x24) != 0)
        {
          v24 = *v22;
          goto LABEL_20;
        }

        if ((v23 & 8) != 0)
        {
          v26 = *v22;
          if (*v22 >= -9.22337204e18)
          {
            if (v26 <= 9.22337204e18)
            {
              *&v24 = v26;
            }

            else
            {
              LODWORD(v24) = -1;
            }
          }

          else
          {
            LODWORD(v24) = 0;
          }
        }

        else
        {
          if ((v23 & 0x12) == 0 || !*(v22 + 8))
          {
            goto LABEL_19;
          }

          LODWORD(v24) = sub_18193CFCC(v22);
        }

LABEL_20:
        *v18 = LODWORD(v24);
        if (SLODWORD(v21) > SLODWORD(v24))
        {
          v52 = v16 + 1;
          goto LABEL_103;
        }

        v16 += 2;
        v17 += 2;
        v18 += 2;
        if (v16 >= v15)
        {
          goto LABEL_76;
        }
      }

      sub_1819012D0(92237);
LABEL_14:
      LODWORD(v21) = 0;
      goto LABEL_15;
    }
  }

  else if (v15 >= 1)
  {
    v27 = 0;
    v28 = a3 + 4;
    v29 = (v81 | 0xC);
    while (1)
    {
      v30 = *(v28 - 1);
      if (v30)
      {
        v31 = *(v30 + 20);
        if ((v31 & 8) != 0)
        {
          v32 = *v30;
        }

        else if ((v31 & 0x24) != 0)
        {
          v32 = *v30;
        }

        else
        {
          v32 = (v31 & 0x12) != 0 ? sub_18193CF90(v30) : 0.0;
        }
      }

      else
      {
        sub_1819012D0(92272);
        v32 = 0.0;
      }

      v34 = v32 >= 0.0 ? 0.999999881 : 1.00000012;
      v35 = v32 * v34;
      v33 = v32;
      v36 = v32 >= v33 ? v32 : v35;
      *(v29 - 1) = v36;
      v37 = *v28;
      if (*v28)
      {
        v38 = *(v37 + 20);
        if ((v38 & 8) != 0)
        {
          v39 = *v37;
        }

        else if ((v38 & 0x24) != 0)
        {
          v39 = *v37;
        }

        else
        {
          v39 = (v38 & 0x12) != 0 ? sub_18193CF90(v37) : 0.0;
        }
      }

      else
      {
        sub_1819012D0(92272);
        v39 = 0.0;
      }

      v41 = v39 >= 0.0 ? 1.00000012 : 0.999999881;
      v42 = v39 * v41;
      v40 = v39;
      v43 = v39 <= v40 ? v39 : v42;
      *v29 = v43;
      if (v36 > v43)
      {
        break;
      }

      v27 += 2;
      v28 += 2;
      v29 += 2;
      if (v27 >= v15)
      {
        goto LABEL_76;
      }
    }

    v52 = v27 + 1;
LABEL_103:
    v45 = sub_181A09684(a1, v52);
    goto LABEL_181;
  }

LABEL_76:
  v44 = a3[2];
  if (v44)
  {
    if ((0xAAAAAAAAAAAAAAAALL >> *(v44 + 20)))
    {
LABEL_78:
      v45 = 0;
      v46 = 1;
      goto LABEL_79;
    }
  }

  else
  {
    sub_1819012D0(99877);
    v44 = a3[2];
    if (!v44)
    {
      sub_1819012D0(92237);
LABEL_105:
      v51 = 0;
      goto LABEL_144;
    }
  }

  v50 = *(v44 + 20);
  if ((v50 & 0x24) != 0)
  {
    v51 = *v44;
    goto LABEL_144;
  }

  if ((v50 & 8) == 0)
  {
    if ((v50 & 0x12) != 0 && *(v44 + 8))
    {
      v51 = sub_18193CFCC(v44);
      goto LABEL_144;
    }

    goto LABEL_105;
  }

  v54 = *v44;
  if (*v44 >= -9.22337204e18)
  {
    if (v54 <= 9.22337204e18)
    {
      v51 = v54;
    }

    else
    {
      v51 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v51 = 0x8000000000000000;
  }

LABEL_144:
  *&v81[0] = v51;
  v69 = *a3;
  if (*a3)
  {
    if ((0xAAAAAAAAAAAAAAAALL >> *(v69 + 20)))
    {
      goto LABEL_163;
    }
  }

  else
  {
    sub_1819012D0(99877);
    v69 = *a3;
    if (!*a3)
    {
      sub_1819012D0(92237);
LABEL_155:
      v71 = 0;
      goto LABEL_161;
    }
  }

  v70 = *(v69 + 20);
  if ((v70 & 0x24) != 0)
  {
    v71 = *v69;
    goto LABEL_161;
  }

  if ((v70 & 8) == 0)
  {
    if ((v70 & 0x12) != 0 && *(v69 + 8))
    {
      v71 = sub_18193CFCC(v69);
      goto LABEL_161;
    }

    goto LABEL_155;
  }

  v72 = *v69;
  if (*v69 >= -9.22337204e18)
  {
    if (v72 <= 9.22337204e18)
    {
      v71 = v72;
    }

    else
    {
      v71 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v71 = 0x8000000000000000;
  }

LABEL_161:
  if (v71 == v51)
  {
    v46 = 0;
    v45 = 0;
    goto LABEL_79;
  }

LABEL_163:
  v73 = *(a1 + 136);
  if (!sub_1818DF6EC(v73, 0))
  {
    v74 = v73[16];
    if ((*(v74 + 20) & 0x9000) != 0)
    {
      sub_18193D288(v74, v51);
    }

    else
    {
      *v74 = v51;
      *(v74 + 20) = 4;
    }

    v75 = *(*v73 + 24);
    if (v75)
    {
      xmmword_1ED452F28(v75);
    }
  }

  v76 = sqlite3_step(*(a1 + 136));
  v45 = sqlite3_reset(*(a1 + 136));
  if (v76 == 100)
  {
    if (sqlite3_vtab_on_conflict(*(a1 + 24)) != 5)
    {
      v45 = sub_181A09684(a1, 0);
      goto LABEL_181;
    }

    v45 = sub_181A09810(a1, v51);
  }

  v46 = 0;
LABEL_79:
  v47 = *a3;
  if (*a3)
  {
    if ((0xAAAAAAAAAAAAAAAALL >> *(v47 + 20)))
    {
      if (a2 < 2)
      {
        goto LABEL_181;
      }

      goto LABEL_112;
    }
  }

  else
  {
    sub_1819012D0(99877);
    v47 = *a3;
    if (!*a3)
    {
      sub_1819012D0(92237);
LABEL_94:
      v49 = 0;
      goto LABEL_111;
    }
  }

  v48 = *(v47 + 20);
  if ((v48 & 0x24) != 0)
  {
    v49 = *v47;
    goto LABEL_111;
  }

  if ((v48 & 8) == 0)
  {
    if ((v48 & 0x12) != 0 && *(v47 + 8))
    {
      v49 = sub_18193CFCC(v47);
      goto LABEL_111;
    }

    goto LABEL_94;
  }

  v53 = *v47;
  if (*v47 >= -9.22337204e18)
  {
    if (v53 <= 9.22337204e18)
    {
      v49 = v53;
    }

    else
    {
      v49 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v49 = 0x8000000000000000;
  }

LABEL_111:
  v45 = sub_181A09810(a1, v49);
  if (a2 < 2)
  {
    goto LABEL_181;
  }

LABEL_112:
  if (v45)
  {
    goto LABEL_181;
  }

  v80 = 0;
  if ((v46 & 1) == 0)
  {
    *a4 = *&v81[0];
LABEL_131:
    v45 = sub_181A09C80(a1, v81, 0, &v80);
    if (!v45)
    {
      v64 = v80;
      v65 = sub_181A0A1B4(a1, v80, v81, 0);
      LODWORD(v45) = sub_181A08010(a1, v64);
      v45 = v65 ? v65 : v45;
      if (!v45)
      {
        if (*(a1 + 41))
        {
          v66 = *(a1 + 184);
          v67 = *a4;
          if (!sub_1818DF6EC(v66, 0))
          {
            v68 = *(v66 + 16);
            if ((*(v68 + 20) & 0x9000) != 0)
            {
              sub_18193D288(v68, v67);
            }

            else
            {
              *v68 = v67;
              *(v68 + 20) = 4;
            }

            v77 = *(*v66 + 24);
            if (v77)
            {
              xmmword_1ED452F28(v77);
            }
          }

          if (*(a1 + 41))
          {
            v78 = 0;
            do
            {
              sqlite3_bind_value(v66, v78 + 2, a3[v78 + 3 + *(a1 + 37)]);
              ++v78;
            }

            while (v78 < *(a1 + 41));
          }

          sqlite3_step(v66);
          v45 = sqlite3_reset(v66);
        }

        else
        {
          v45 = 0;
        }
      }
    }

    goto LABEL_181;
  }

  v55 = *(a1 + 144);
  if (!sub_1818DF6EC(v55, 0))
  {
    v56 = *(*v55 + 24);
    if (v56)
    {
      xmmword_1ED452F28(v56);
    }
  }

  v57 = *(a1 + 144);
  if (!sub_1818DF6EC(v57, 1u))
  {
    v58 = *(*v57 + 24);
    if (v58)
    {
      xmmword_1ED452F28(v58);
    }
  }

  sqlite3_step(*(a1 + 144));
  v45 = sqlite3_reset(*(a1 + 144));
  v59 = *(a1 + 24);
  if (v59)
  {
    v60 = *(v59 + 113);
    switch(v60)
    {
      case 186:
        goto LABEL_124;
      case 118:
        v63 = *(v59 + 56);
        goto LABEL_130;
      case 109:
LABEL_124:
        v61 = v45;
        v62 = "unopened";
        break;
      default:
        v61 = v45;
        v62 = "invalid";
        break;
    }
  }

  else
  {
    v61 = v45;
    v62 = "NULL";
  }

  sqlite3_log(21, "API call with %s database connection pointer", v62);
  sub_1819012D0(192786);
  v63 = 0;
  v45 = v61;
LABEL_130:
  *&v81[0] = v63;
  *a4 = v63;
  if (!v45)
  {
    goto LABEL_131;
  }

LABEL_181:
  v79 = v45;
  sub_181A07BB8(a1);
  return v79;
}