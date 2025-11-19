uint64_t sub_2993DD9C8(uint64_t a1, int a2, uint8x8_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, uint64_t a10, uint64_t a11, int a12, int a13)
{
  if ((a2 & 3) != 2)
  {
    if ((a2 & 3) == 3 && a9 >= 1)
    {
      v15 = 0;
      v16 = *(a1 + 8) + (a2 - 3) + 4;
      v17 = a9;
      do
      {
        if (a13)
        {
          v18 = 1;
        }

        else
        {
          v18 = v15 == 0;
        }

        if (!v18)
        {
          a13 = 1;
        }

        v19 = *(v16 + 4 * *(a10 + 2 * v15));
        v20 = v19 & 3;
        if ((v19 & 3) != 0)
        {
          v21 = *(a10 + 2 * v15 + 1);
          if (v20 == 2)
          {
            v22 = *(a1 + 8) + (v19 - 2);
            v23 = (v22 + 4);
            v24 = v21 >> 5;
            v25 = *(v22 + 4 + 4 * (v21 >> 5));
            if ((v25 >> v21))
            {
              if (v21 >= 0x20)
              {
                v26 = 0;
                do
                {
                  v28 = *v23++;
                  a3 = vcnt_s8(v28);
                  a3.i16[0] = vaddlv_u8(a3);
                  v26 += a3.i32[0];
                  --v24;
                }

                while (v24);
              }

              else
              {
                v26 = 0;
              }

              a3.i32[0] = v25 & ~(-1 << (v21 & 0x1F));
              v29 = vcnt_s8(a3);
              v29.i16[0] = vaddlv_u8(v29);
              v30 = *(v22 + 40 + 4 * (v26 + v29.i32[0]));
LABEL_22:
              v27 = a1;
LABEL_23:
              if (sub_2993DB770(v27))
              {
                return 1;
              }
            }
          }

          else
          {
            if (v20 != 3)
            {
              v27 = a1;
              goto LABEL_23;
            }

            if ((*(*(a1 + 8) + (v19 - 3) + 4 * v21 + 4) & 3) != 0)
            {
              goto LABEL_22;
            }
          }
        }

        ++v15;
      }

      while (v15 != v17);
    }

    return 0;
  }

  if (a9 < 1)
  {
    return 0;
  }

  v31 = 0;
  v32 = *(a1 + 8) + (a2 - 2);
  v33 = (v32 + 4);
  v34 = v32 + 40;
  v35 = a9;
  while (1)
  {
    if (a13)
    {
      v36 = 1;
    }

    else
    {
      v36 = v31 == 0;
    }

    if (!v36)
    {
      a13 = 1;
    }

    v37 = *(a10 + 2 * v31);
    v38 = v37 >> 5;
    v39 = v33[v37 >> 5];
    if (((v39 >> v37) & 1) == 0)
    {
      goto LABEL_52;
    }

    if (v37 >= 0x20)
    {
      v40 = 0;
      v41 = v33;
      do
      {
        v42 = *v41++;
        a3 = vcnt_s8(v42);
        a3.i16[0] = vaddlv_u8(a3);
        v40 += a3.i32[0];
        --v38;
      }

      while (v38);
    }

    else
    {
      v40 = 0;
    }

    a3.i32[0] = v39 & ~(-1 << (v37 & 0x1F));
    a3 = vcnt_s8(a3);
    a3.i16[0] = vaddlv_u8(a3);
    v43 = *(v34 + 4 * (v40 + a3.i32[0]));
    v44 = *(a10 + 2 * v31 + 1);
    if ((v43 & 3u) <= 1)
    {
      if ((v43 & 3) != 0)
      {
        v45 = a1;
        goto LABEL_51;
      }

      goto LABEL_52;
    }

    if ((v43 & 3) != 2)
    {
      break;
    }

    v46 = *(a1 + 8) + (v43 - 2);
    v47 = (v46 + 4);
    v48 = v44 >> 5;
    v49 = *(v46 + 4 + 4 * (v44 >> 5));
    if ((v49 >> v44))
    {
      if (v44 >= 0x20)
      {
        v50 = 0;
        do
        {
          v51 = *v47++;
          a3 = vcnt_s8(v51);
          a3.i16[0] = vaddlv_u8(a3);
          v50 += a3.i32[0];
          --v48;
        }

        while (v48);
      }

      else
      {
        v50 = 0;
      }

      a3.i32[0] = v49 & ~(-1 << (v44 & 0x1F));
      v52 = vcnt_s8(a3);
      v52.i16[0] = vaddlv_u8(v52);
      v53 = *(v46 + 40 + 4 * (v50 + v52.i32[0]));
      goto LABEL_50;
    }

LABEL_52:
    if (++v31 == v35)
    {
      return 0;
    }
  }

  if ((*(*(a1 + 8) + (v43 - 3) + 4 * v44 + 4) & 3) == 0)
  {
    goto LABEL_52;
  }

LABEL_50:
  v45 = a1;
LABEL_51:
  if (!sub_2993DB770(v45))
  {
    goto LABEL_52;
  }

  return 1;
}

uint64_t sub_2993DDD54(uint64_t a1, int a2, uint8x8_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, _BYTE *a11)
{
  if ((a2 & 3) != 2)
  {
    if ((a2 & 3) == 3 && a6 >= 1)
    {
      v14 = 0;
      v15 = *(a1 + 8) + (a2 - 3) + 4;
      v16 = a6;
      do
      {
        if (a8)
        {
          v17 = 1;
        }

        else
        {
          v17 = v14 == 0;
        }

        if (!v17)
        {
          a8 = 1;
        }

        v18 = *(a7 + 2 * v14);
        *a11 = v18;
        v19 = *(v15 + 4 * v18);
        v20 = v19 & 3;
        if ((v19 & 3) != 0)
        {
          v21 = *(a7 + 2 * v14 + 1);
          a11[1] = v21;
          if (v20 == 2)
          {
            v22 = *(a1 + 8) + (v19 - 2);
            v23 = (v22 + 4);
            v24 = v21 >> 5;
            v25 = *(v22 + 4 + 4 * (v21 >> 5));
            if ((v25 >> v21))
            {
              if (v21 >= 0x20)
              {
                v26 = 0;
                do
                {
                  v28 = *v23++;
                  a3 = vcnt_s8(v28);
                  a3.i16[0] = vaddlv_u8(a3);
                  v26 += a3.i32[0];
                  --v24;
                }

                while (v24);
              }

              else
              {
                v26 = 0;
              }

              a3.i32[0] = v25 & ~(-1 << (v21 & 0x1F));
              v29 = vcnt_s8(a3);
              v29.i16[0] = vaddlv_u8(v29);
              v30 = *(v22 + 40 + 4 * (v26 + v29.i32[0]));
LABEL_22:
              v27 = a1;
LABEL_23:
              if (sub_2993DBD10(v27))
              {
                return 1;
              }
            }
          }

          else
          {
            if (v20 != 3)
            {
              v27 = a1;
              goto LABEL_23;
            }

            if ((*(*(a1 + 8) + (v19 - 3) + 4 * v21 + 4) & 3) != 0)
            {
              goto LABEL_22;
            }
          }
        }

        ++v14;
      }

      while (v14 != v16);
    }

    return 0;
  }

  if (a6 < 1)
  {
    return 0;
  }

  v31 = 0;
  v32 = *(a1 + 8) + (a2 - 2);
  v33 = (v32 + 4);
  v34 = v32 + 40;
  v35 = a6;
  while (1)
  {
    if (a8)
    {
      v36 = 1;
    }

    else
    {
      v36 = v31 == 0;
    }

    v37 = *(a7 + 2 * v31);
    if (!v36)
    {
      a8 = 1;
    }

    *a11 = v37;
    v38 = v37 >> 5;
    v39 = v33[v37 >> 5];
    if (((v39 >> v37) & 1) == 0)
    {
      goto LABEL_52;
    }

    if (v37 >= 0x20)
    {
      v40 = 0;
      v41 = v33;
      do
      {
        v42 = *v41++;
        a3 = vcnt_s8(v42);
        a3.i16[0] = vaddlv_u8(a3);
        v40 += a3.i32[0];
        --v38;
      }

      while (v38);
    }

    else
    {
      v40 = 0;
    }

    a3.i32[0] = v39 & ~(-1 << (v37 & 0x1F));
    a3 = vcnt_s8(a3);
    a3.i16[0] = vaddlv_u8(a3);
    v43 = *(v34 + 4 * (v40 + a3.i32[0]));
    v44 = *(a7 + 2 * v31 + 1);
    a11[1] = v44;
    if ((v43 & 3u) <= 1)
    {
      if ((v43 & 3) != 0)
      {
        v45 = a1;
        goto LABEL_51;
      }

      goto LABEL_52;
    }

    if ((v43 & 3) != 2)
    {
      break;
    }

    v46 = *(a1 + 8) + (v43 - 2);
    v47 = (v46 + 4);
    v48 = v44 >> 5;
    v49 = *(v46 + 4 + 4 * (v44 >> 5));
    if ((v49 >> v44))
    {
      if (v44 >= 0x20)
      {
        v50 = 0;
        do
        {
          v51 = *v47++;
          a3 = vcnt_s8(v51);
          a3.i16[0] = vaddlv_u8(a3);
          v50 += a3.i32[0];
          --v48;
        }

        while (v48);
      }

      else
      {
        v50 = 0;
      }

      a3.i32[0] = v49 & ~(-1 << (v44 & 0x1F));
      v52 = vcnt_s8(a3);
      v52.i16[0] = vaddlv_u8(v52);
      v53 = *(v46 + 40 + 4 * (v50 + v52.i32[0]));
      goto LABEL_50;
    }

LABEL_52:
    if (++v31 == v35)
    {
      return 0;
    }
  }

  if ((*(*(a1 + 8) + (v43 - 3) + 4 * v44 + 4) & 3) == 0)
  {
    goto LABEL_52;
  }

LABEL_50:
  v45 = a1;
LABEL_51:
  if (!sub_2993DBD10(v45))
  {
    goto LABEL_52;
  }

  return 1;
}

uint64_t sub_2993DE0F8(uint64_t a1, int a2, uint8x8_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, _BYTE *a11)
{
  if ((a2 & 3) != 2)
  {
    if ((a2 & 3) == 3 && a6 >= 1)
    {
      v14 = 0;
      v15 = *(a1 + 8) + (a2 - 3) + 4;
      v16 = a6;
      do
      {
        if (a8)
        {
          v17 = 1;
        }

        else
        {
          v17 = v14 == 0;
        }

        if (!v17)
        {
          a8 = 1;
        }

        v18 = *(a7 + 2 * v14);
        *a11 = v18;
        v19 = *(v15 + 4 * v18);
        v20 = v19 & 3;
        if ((v19 & 3) != 0)
        {
          v21 = *(a7 + 2 * v14 + 1);
          a11[1] = v21;
          if (v20 == 2)
          {
            v22 = *(a1 + 8) + (v19 - 2);
            v23 = (v22 + 4);
            v24 = v21 >> 5;
            v25 = *(v22 + 4 + 4 * (v21 >> 5));
            if ((v25 >> v21))
            {
              if (v21 >= 0x20)
              {
                v26 = 0;
                do
                {
                  v28 = *v23++;
                  a3 = vcnt_s8(v28);
                  a3.i16[0] = vaddlv_u8(a3);
                  v26 += a3.i32[0];
                  --v24;
                }

                while (v24);
              }

              else
              {
                v26 = 0;
              }

              a3.i32[0] = v25 & ~(-1 << (v21 & 0x1F));
              v29 = vcnt_s8(a3);
              v29.i16[0] = vaddlv_u8(v29);
              v30 = *(v22 + 40 + 4 * (v26 + v29.i32[0]));
LABEL_22:
              v27 = a1;
LABEL_23:
              if (sub_2993DC510(v27))
              {
                return 1;
              }
            }
          }

          else
          {
            if (v20 != 3)
            {
              v27 = a1;
              goto LABEL_23;
            }

            if ((*(*(a1 + 8) + (v19 - 3) + 4 * v21 + 4) & 3) != 0)
            {
              goto LABEL_22;
            }
          }
        }

        ++v14;
      }

      while (v14 != v16);
    }

    return 0;
  }

  if (a6 < 1)
  {
    return 0;
  }

  v31 = 0;
  v32 = *(a1 + 8) + (a2 - 2);
  v33 = (v32 + 4);
  v34 = v32 + 40;
  v35 = a6;
  while (1)
  {
    if (a8)
    {
      v36 = 1;
    }

    else
    {
      v36 = v31 == 0;
    }

    v37 = *(a7 + 2 * v31);
    if (!v36)
    {
      a8 = 1;
    }

    *a11 = v37;
    v38 = v37 >> 5;
    v39 = v33[v37 >> 5];
    if (((v39 >> v37) & 1) == 0)
    {
      goto LABEL_52;
    }

    if (v37 >= 0x20)
    {
      v40 = 0;
      v41 = v33;
      do
      {
        v42 = *v41++;
        a3 = vcnt_s8(v42);
        a3.i16[0] = vaddlv_u8(a3);
        v40 += a3.i32[0];
        --v38;
      }

      while (v38);
    }

    else
    {
      v40 = 0;
    }

    a3.i32[0] = v39 & ~(-1 << (v37 & 0x1F));
    a3 = vcnt_s8(a3);
    a3.i16[0] = vaddlv_u8(a3);
    v43 = *(v34 + 4 * (v40 + a3.i32[0]));
    v44 = *(a7 + 2 * v31 + 1);
    a11[1] = v44;
    if ((v43 & 3u) <= 1)
    {
      if ((v43 & 3) != 0)
      {
        v45 = a1;
        goto LABEL_51;
      }

      goto LABEL_52;
    }

    if ((v43 & 3) != 2)
    {
      break;
    }

    v46 = *(a1 + 8) + (v43 - 2);
    v47 = (v46 + 4);
    v48 = v44 >> 5;
    v49 = *(v46 + 4 + 4 * (v44 >> 5));
    if ((v49 >> v44))
    {
      if (v44 >= 0x20)
      {
        v50 = 0;
        do
        {
          v51 = *v47++;
          a3 = vcnt_s8(v51);
          a3.i16[0] = vaddlv_u8(a3);
          v50 += a3.i32[0];
          --v48;
        }

        while (v48);
      }

      else
      {
        v50 = 0;
      }

      a3.i32[0] = v49 & ~(-1 << (v44 & 0x1F));
      v52 = vcnt_s8(a3);
      v52.i16[0] = vaddlv_u8(v52);
      v53 = *(v46 + 40 + 4 * (v50 + v52.i32[0]));
      goto LABEL_50;
    }

LABEL_52:
    if (++v31 == v35)
    {
      return 0;
    }
  }

  if ((*(*(a1 + 8) + (v43 - 3) + 4 * v44 + 4) & 3) == 0)
  {
    goto LABEL_52;
  }

LABEL_50:
  v45 = a1;
LABEL_51:
  if (!sub_2993DC510(v45))
  {
    goto LABEL_52;
  }

  return 1;
}

uint64_t sub_2993DE4C4(uint64_t a1, char *a2, unsigned int a3, void *a4, unsigned int a5, unsigned __int16 *a6, unsigned int a7, uint64_t a8, _BYTE *a9, int a10, float *a11)
{
  LODWORD(v11) = a5;
  v52 = *MEMORY[0x29EDCA608];
  if (a7)
  {
    if (a3)
    {
      v16 = *a11;
      if (*(a1 + 81) == 1)
      {
        v17 = a6 - *(a1 + 24);
        if ((v17 & 1) == 0)
        {
          v18 = *(a1 + 32);
          if ((v18 & 1) == 0 && (a8 & 1) == 0 && v18 >= 2)
          {
            v19 = sub_299254EB8(*(a1 + 8), *(a1 + 16), v16, (v17 >> 1) + 1, ((v17 & 0xFFFFFFFE) + a8) >> 1, (v18 + a8) >> 1, v50, 0xEuLL);
            if (v19)
            {
              if (v19 < 1)
              {
                goto LABEL_73;
              }

              goto LABEL_47;
            }

            v16 = *a11;
          }
        }
      }

      v50[0] = *a6;
      v51 = v16;
      v19 = 1;
LABEL_47:
      v34 = v50;
      v11 = v11;
      v35 = v19;
      v43 = v11;
      while (1)
      {
        v47 = 0;
        v48 = 0;
        v36 = *a9;
        if (!*a9)
        {
          if (*v34 == *a6)
          {
            v36 = 0;
          }

          else
          {
            v36 = 1;
            *a9 = 1;
          }
        }

        if (a7 >= 4)
        {
          sub_2993DE948(a6, *(a1 + 24), *(a1 + 56), *v34, *(a1 + 16));
          v36 = *a9;
        }

        if (*(a1 + 8) || *(a1 + 16)) && (!*(a1 + 82) || *(a1 + 80) == 1 && (*(a1 + 96)))
        {
          v37 = sub_299216378(v36 != 0, a4, v11, *v34, __s2, 16, &v48, &v47);
          if (v37 == -2)
          {
            goto LABEL_72;
          }

          v38 = v37;
          if (v37 == -1)
          {
            goto LABEL_73;
          }

          if (v47 > 7)
          {
            goto LABEL_72;
          }

          v39 = *(a1 + 88);
          if (!v37)
          {
LABEL_68:
            if (!memcmp(a2, __s2, v38))
            {
              v46 = *(v34 + 1);
              if (sub_2993DE4C4(a1, &a2[v38], (a3 - v38), v48, v47, a6 + 1, a7 - 2, a8, a9, a10, &v46))
              {
                *a11 = v46;
                goto LABEL_76;
              }
            }

            v11 = v43;
            goto LABEL_71;
          }
        }

        else
        {
          __s2[0] = *v34;
          v47 = 0;
          v48 = 0;
          v38 = 2;
          v39 = *(a1 + 88);
        }

        memcpy(v39, a4, v11);
        v40 = (*(a1 + 88) + v11);
        *(a1 + 88) = v40;
        if (!v47)
        {
          *v40 = *v34;
          *(a1 + 88) += 2;
        }

        if (v38 <= a3)
        {
          goto LABEL_68;
        }

LABEL_71:
        *(a1 + 88) = v39;
LABEL_72:
        v34 += 4;
        if (!--v35)
        {
          goto LABEL_73;
        }
      }
    }

    v31 = *(a1 + 64) == 1;
    goto LABEL_37;
  }

  if (!a5)
  {
    v32 = *(a1 + 64);
    if (v32 >= 2)
    {
      if (v32 == 2 && (a3 || a10))
      {
        v33 = *(a1 + 72) + a3;
LABEL_44:
        *(a1 + 72) = v33;
        goto LABEL_76;
      }

      goto LABEL_73;
    }

    v31 = a3 == 0;
LABEL_37:
    result = v31;
    goto LABEL_74;
  }

  if (*(a1 + 96) != 1)
  {
LABEL_73:
    result = 0;
    goto LABEL_74;
  }

  v21 = *(a1 + 88);
  result = sub_299216BF4(a4, a5);
  if (result)
  {
    v23 = result;
    memcpy(*(a1 + 88), a4, v11);
    *(a1 + 88) += v11;
    if (*(a1 + 32) == v11 && *(a1 + 64) == 2)
    {
      *(a1 + 97) = 0;
    }

    v24 = *v23;
    v25 = v23[1] - *v23;
    if (!v25)
    {
LABEL_33:
      result = 0;
      *(a1 + 88) = v21;
      goto LABEL_74;
    }

    v26 = 0xAAAAAAAAAAAAAAABLL * (v25 >> 3);
    if (v26 <= 1)
    {
      v27 = 1;
    }

    else
    {
      v27 = v26;
    }

    while (1)
    {
      if (v24[23] < 0)
      {
        v28 = *(v24 + 1);
        if (a3 < v28)
        {
          goto LABEL_32;
        }

        v29 = *v24;
      }

      else
      {
        LODWORD(v28) = v24[23];
        if (v28 > a3)
        {
          goto LABEL_32;
        }

        v29 = v24;
      }

      if (!memcmp(a2, v29, v28))
      {
        if ((*(a1 + 97) & 1) == 0)
        {
          v31 = v28 == a3;
          goto LABEL_37;
        }

        v30 = *(a1 + 64);
        if (v30 >= 2)
        {
          if (v30 == 2)
          {
            v33 = *(a1 + 72) + (a3 - v28);
            goto LABEL_44;
          }
        }

        else if (a3 == v28)
        {
LABEL_76:
          result = 1;
          break;
        }
      }

LABEL_32:
      v24 += 24;
      if (!--v27)
      {
        goto LABEL_33;
      }
    }
  }

LABEL_74:
  v41 = *MEMORY[0x29EDCA608];
  return result;
}

const UInt8 *sub_2993DE948(uint64_t a1, int a2, uint64_t a3, int a4, CFArrayRef *a5)
{
  if (!a5)
  {
    return *(a1 + 2);
  }

  v7 = (((a1 - a2) + a3) >> 1) + 1;
  result = sub_299308694(a5, v7);
  if (result)
  {
    v9 = result;
    if (a4 == 110 && (sub_299255298(a5, v7) & 1) != 0)
    {
      return 0;
    }

    else
    {
      return *v9;
    }
  }

  return result;
}

void sub_2993DE9CC(const void **a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, int a5)
{
  if (a5 > 4)
  {
    if (a5 == 5)
    {
      sub_2993DEAEC(a3, a1);
      sub_29922E664(a1, &word_29942A7C2);
      sub_29922E664(a1, word_29942A7C6);
      goto LABEL_10;
    }

    if (a5 != 13)
    {
      return;
    }
  }

  else if (a5 != 2)
  {
    if (a5 != 4)
    {
      return;
    }

    sub_29922E664(a1, word_29942A7C6);
    sub_29922E664(a1, &word_29942A7C2);
  }

  sub_2993DEAEC(a3, a1);
LABEL_10:
  sub_29922E664(a1, &word_29942A7C2);
  sub_2993DEAEC(a4, a1);
  sub_29922E664(a1, &word_29942A7C2);
  sub_2993DEB7C(a2, a1);

  sub_29922E664(a1, &word_29942A7C4);
}

void sub_2993DEAEC(uint64_t *a1, const void **a2)
{
  v3 = *a1;
  if (a1[1] == *a1)
  {

    sub_29922E664(a2, word_29942A7C6);
  }

  else
  {
    v5 = 0;
    v6 = 0;
    do
    {
      sub_29922E664(a2, (v3 + v5));
      ++v6;
      v3 = *a1;
      v5 += 2;
    }

    while (v6 < (a1[1] - *a1) >> 1);
  }
}

void sub_2993DEB7C(uint64_t *a1, const void **a2)
{
  v2 = *a1;
  if (a1[1] != *a1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      sub_29922E664(a2, (v2 + v5));
      ++v6;
      v2 = *a1;
      v5 += 2;
    }

    while (v6 < (a1[1] - *a1) >> 1);
  }
}

uint64_t sub_2993DEBE4(uint64_t *a1, uint64_t a2, char a3)
{
  v5 = *a1;
  v6 = a1[1];
  if (a3)
  {
    if (v6 == *a1)
    {
      return 1;
    }

    v7 = 0;
LABEL_4:
    v8 = 0;
    v9 = *(v5 + 2 * v7);
    v10 = &word_299413998;
    while (*v10 != v9)
    {
      v8 -= 2;
      ++v10;
      if (v8 == -10)
      {
        if ((v9 - 12549) > 0x24)
        {
          return 0;
        }

LABEL_15:
        if (v9 <= 713)
        {
          if (v9 == 711)
          {
            v12 = 51;
          }

          else
          {
            if (v9 != 713)
            {
              goto LABEL_26;
            }

            v12 = 49;
          }
        }

        else
        {
          switch(v9)
          {
            case 729:
              v12 = 53;
              break;
            case 715:
              v12 = 52;
              break;
            case 714:
              v12 = 50;
              break;
            default:
LABEL_26:
              v12 = v9 + 49;
              break;
          }
        }

        v14 = *(a2 + 8);
        v13 = *(a2 + 16);
        if (v14 < v13)
        {
          *v14 = v12;
          v15 = v14 + 1;
          goto LABEL_39;
        }

        v16 = *a2;
        v17 = &v14[-*a2];
        v18 = (v17 + 1);
        if ((v17 + 1) < 0)
        {
          goto LABEL_61;
        }

        v19 = v13 - v16;
        if (2 * v19 > v18)
        {
          v18 = 2 * v19;
        }

        if (v19 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v20 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v20 = v18;
        }

        if (v20)
        {
          operator new();
        }

        v21 = &v14[-*a2];
        *v17 = v12;
        v15 = v17 + 1;
        memcpy(0, v16, v21);
        *a2 = 0;
        *(a2 + 8) = v17 + 1;
        *(a2 + 16) = 0;
        if (v16)
        {
          operator delete(v16);
        }

LABEL_39:
        *(a2 + 8) = v15;
        ++v7;
        v5 = *a1;
        if (v7 >= (a1[1] - *a1) >> 1)
        {
          return 1;
        }

        goto LABEL_4;
      }
    }

    v11 = -v8 == -2 || v8 == -10;
    if (!v11 || (v9 - 12549) < 0x25u)
    {
      goto LABEL_15;
    }

    return 0;
  }

  else
  {
    if (v6 == *a1)
    {
      return 1;
    }

    for (i = 0; i < (a1[1] - *a1) >> 1; ++i)
    {
      v23 = *(v5 + 2 * i);
      v24 = (v23 - 97) < 0x1A;
      if ((v23 - 97) > 0x19)
      {
        break;
      }

      v25 = v23;
      v27 = *(a2 + 8);
      v26 = *(a2 + 16);
      if (v27 >= v26)
      {
        v29 = *a2;
        v30 = &v27[-*a2];
        v31 = (v30 + 1);
        if ((v30 + 1) < 0)
        {
LABEL_61:
          sub_299212A8C();
        }

        v32 = v26 - v29;
        if (2 * v32 > v31)
        {
          v31 = 2 * v32;
        }

        if (v32 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v33 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v33 = v31;
        }

        if (v33)
        {
          operator new();
        }

        v34 = &v27[-*a2];
        *v30 = v25;
        v28 = v30 + 1;
        memcpy(0, v29, v34);
        *a2 = 0;
        *(a2 + 8) = v30 + 1;
        *(a2 + 16) = 0;
        if (v29)
        {
          operator delete(v29);
        }
      }

      else
      {
        *v27 = v25;
        v28 = v27 + 1;
      }

      *(a2 + 8) = v28;
      v5 = *a1;
    }
  }

  return v24;
}

uint64_t sub_2993DEED0(uint64_t a1, int a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2A1F79218;
  *(a1 + 28) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 68) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 100) = 0u;
  *(a1 + 116) = 0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0;
  *(a1 + 120) = sub_2993B2710(a2);
  return a1;
}

void sub_2993DEF78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v5 = v2[22];
  if (v5)
  {
    v2[23] = v5;
    operator delete(v5);
  }

  sub_299362490(va);
  v6 = *v3;
  if (*v3)
  {
    v2[17] = v6;
    operator delete(v6);
  }

  v7 = v2[12];
  if (v7)
  {
    v2[13] = v7;
    operator delete(v7);
  }

  sub_299362490(va);
  v8 = v2[6];
  if (v8)
  {
    sub_2991A893C(v8);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2993DEFD8(uint64_t a1)
{
  *a1 = &unk_2A1F79218;
  sub_2993DF080(a1);
  v2 = *(a1 + 176);
  if (v2)
  {
    *(a1 + 184) = v2;
    operator delete(v2);
  }

  v7 = (a1 + 152);
  sub_299362490(&v7);
  v3 = *(a1 + 128);
  if (v3)
  {
    *(a1 + 136) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 96);
  if (v4)
  {
    *(a1 + 104) = v4;
    operator delete(v4);
  }

  v7 = (a1 + 72);
  sub_299362490(&v7);
  v5 = *(a1 + 48);
  if (v5)
  {
    sub_2991A893C(v5);
  }

  return a1;
}

void sub_2993DF080(void *a1)
{
  a1[2] = 0;
  v2 = a1[9];
  for (i = a1[10]; i != v2; i -= 8)
  {
    v5 = *(i - 8);
    v4 = v5;
    if (v5)
    {
      sub_2993226F0(v4);
    }
  }

  a1[10] = v2;
  a1[13] = a1[12];
  v6 = a1[19];
  for (j = a1[20]; j != v6; j -= 8)
  {
    v9 = *(j - 8);
    v8 = v9;
    if (v9)
    {
      sub_2993226F0(v8);
    }
  }

  a1[20] = v6;
  a1[23] = a1[22];
  a1[17] = a1[16];
}

void sub_2993DF108(uint64_t a1)
{
  sub_2993DEFD8(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2993DF140(uint64_t a1, char *__s, uint64_t a3)
{
  v3 = __s;
  sub_2992BC434(__s, a3, 1, &v140);
  v5 = v140;
  v140 = 0uLL;
  v6 = *(a1 + 48);
  *(a1 + 40) = v5;
  if (!v6)
  {
    v7 = v5;
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_9:
    v18 = sub_29930AF10();
    sub_29930B600(v18, "Dictionary file %s is empty", v19, v20, v21, v22, v23, v24, v3);
    return 0;
  }

  sub_2991A893C(v6);
  if (*(&v140 + 1))
  {
    sub_2991A893C(*(&v140 + 1));
  }

  v7 = *(a1 + 40);
  if (!v7)
  {
    goto LABEL_9;
  }

LABEL_5:
  v9 = *v7;
  v8 = v7[1];
  if (v8 < 4)
  {
    if (!v9)
    {
      v119 = sub_29930AF10();
      sub_29930B600(v119, "Dictionary file %s has an empty header", v120, v121, v122, v123, v124, v125, v3);
      return 0;
    }

    LODWORD(v10) = *v9;
  }

  else
  {
    v10 = *v9;
    if (v8 == (v10 ^ 0xEF718F77))
    {
      v11 = sub_29930AF10();
      sub_29930B600(v11, "Dictionary file %s doesn't support the original format", v12, v13, v14, v15, v16, v17, v3);
      return 0;
    }
  }

  if (v10 == 105)
  {
    *(a1 + 32) = v9[1];
    *(a1 + 24) = v9[2];
    v128 = v3;
    v129 = v9[3];
    v130 = v9[4];
    v25 = v9[5];
    *(a1 + 28) = v25;
    *(a1 + 8) = v9[6];
    v26 = v9 + 12;
    if (v25)
    {
      v27 = 0;
      v28 = (a1 + 152);
      v131 = (a1 + 72);
      do
      {
        v29 = *v26;
        v31 = *(a1 + 136);
        v30 = *(a1 + 144);
        if (v31 >= v30)
        {
          v33 = *(a1 + 128);
          v34 = v31 - v33;
          v35 = (v31 - v33) >> 2;
          v36 = v35 + 1;
          if ((v35 + 1) >> 62)
          {
            sub_299212A8C();
          }

          v37 = v30 - v33;
          if (v37 >> 1 > v36)
          {
            v36 = v37 >> 1;
          }

          v38 = v37 >= 0x7FFFFFFFFFFFFFFCLL;
          v39 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v38)
          {
            v39 = v36;
          }

          if (v39)
          {
            sub_2992F86B0(a1 + 128, v39);
          }

          v40 = v35;
          v41 = (4 * v35);
          v42 = &v41[-v40];
          *v41 = v29;
          v32 = v41 + 1;
          memcpy(v42, v33, v34);
          v43 = *(a1 + 128);
          *(a1 + 128) = v42;
          *(a1 + 136) = v32;
          *(a1 + 144) = 0;
          if (v43)
          {
            operator delete(v43);
          }
        }

        else
        {
          *v31 = v29;
          v32 = v31 + 4;
        }

        *(a1 + 136) = v32;
        v44 = v26[1];
        v132 = v26[2];
        v45 = v26[4];
        v47 = v26[5];
        v46 = v26[6];
        v48 = v26 + 8;
        v137 = v26[7];
        v138 = v26[3];
        sub_2993E3F98(&v139, v26 + 4, v44, 0);
        v50 = *(a1 + 80);
        v49 = *(a1 + 88);
        if (v50 >= v49)
        {
          v135 = v47;
          v51 = *v131;
          v52 = (v50 - *v131) >> 3;
          v53 = v52 + 1;
          if ((v52 + 1) >> 61)
          {
            sub_299212A8C();
          }

          v54 = v49 - v51;
          if (v54 >> 2 > v53)
          {
            v53 = v54 >> 2;
          }

          if (v54 >= 0x7FFFFFFFFFFFFFF8)
          {
            v55 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v55 = v53;
          }

          v143 = (a1 + 72);
          v133 = v46;
          if (v55)
          {
            sub_29924EEE8(v131, v55);
          }

          v56 = v52;
          v57 = (8 * v52);
          *v57 = v139;
          v139 = 0;
          v58 = &v57[-v56];
          if (v51 != v50)
          {
            v59 = v51;
            v60 = v58;
            do
            {
              *v60++ = *v59;
              *v59++ = 0;
            }

            while (v59 != v50);
            do
            {
              if (*v51)
              {
                sub_2993226F0(*v51);
              }

              ++v51;
            }

            while (v51 != v50);
            v51 = *v131;
          }

          *(a1 + 72) = v58;
          *(a1 + 80) = v57 + 1;
          v61 = *(a1 + 88);
          *(a1 + 88) = 0;
          v141 = v51;
          v142 = v61;
          *&v140 = v51;
          *(&v140 + 1) = v51;
          sub_299362E64(&v140);
          v62 = v139;
          *(a1 + 80) = v57 + 1;
          v28 = (a1 + 152);
          v46 = v133;
          v47 = v135;
          if (v62)
          {
            sub_2993226F0(v62);
          }
        }

        else
        {
          *v50 = v139;
          *(a1 + 80) = v50 + 1;
        }

        v26 = (v48 + v44 + v138);
        if (*(a1 + 28) != 1)
        {
          *&v140 = v48 + v44 + v138;
          sub_2993DF930(a1 + 96, &v140);
          v26 = (v26 + v132);
        }

        if (v45)
        {
          sub_2993E3F98(&v139, v26, v47, 0);
          v64 = *(a1 + 160);
          v63 = *(a1 + 168);
          if (v64 >= v63)
          {
            v134 = v46;
            v67 = *v28;
            v68 = (v64 - *v28) >> 3;
            v69 = v68 + 1;
            if ((v68 + 1) >> 61)
            {
              sub_299212A8C();
            }

            v70 = v63 - v67;
            if (v70 >> 2 > v69)
            {
              v69 = v70 >> 2;
            }

            if (v70 >= 0x7FFFFFFFFFFFFFF8)
            {
              v71 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v71 = v69;
            }

            v143 = v28;
            v136 = v47;
            if (v71)
            {
              sub_29924EEE8(v28, v71);
            }

            v77 = v68;
            v78 = (8 * v68);
            *v78 = v139;
            v139 = 0;
            v79 = &v78[-v77];
            if (v67 != v64)
            {
              v80 = v67;
              v81 = v79;
              do
              {
                *v81++ = *v80;
                *v80++ = 0;
              }

              while (v80 != v64);
              do
              {
                if (*v67)
                {
                  sub_2993226F0(*v67);
                }

                ++v67;
              }

              while (v67 != v64);
              v67 = *v28;
            }

            *(a1 + 152) = v79;
            *(a1 + 160) = v78 + 1;
            v82 = *(a1 + 168);
            *(a1 + 168) = 0;
            v141 = v67;
            v142 = v82;
            *&v140 = v67;
            *(&v140 + 1) = v67;
            sub_299362E64(&v140);
            v83 = v139;
            *(a1 + 160) = v78 + 1;
            v46 = v134;
            v47 = v136;
            if (v83)
            {
              sub_2993226F0(v83);
            }
          }

          else
          {
            *v64 = v139;
            *(a1 + 160) = v64 + 1;
          }

          *&v140 = v26 + v47 + v137;
          sub_2993DF930(a1 + 176, &v140);
          v26 = (v26 + v47 + v137 + v46);
        }

        else
        {
          sub_2993E3F98(&v139, 0, 0, 0);
          v66 = *(a1 + 160);
          v65 = *(a1 + 168);
          if (v66 >= v65)
          {
            v72 = *v28;
            v73 = (v66 - *v28) >> 3;
            v74 = v73 + 1;
            if ((v73 + 1) >> 61)
            {
              sub_299212A8C();
            }

            v75 = v65 - v72;
            if (v75 >> 2 > v74)
            {
              v74 = v75 >> 2;
            }

            if (v75 >= 0x7FFFFFFFFFFFFFF8)
            {
              v76 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v76 = v74;
            }

            v143 = v28;
            if (v76)
            {
              sub_29924EEE8(v28, v76);
            }

            v84 = v73;
            v85 = (8 * v73);
            *v85 = v139;
            v139 = 0;
            v86 = &v85[-v84];
            if (v72 != v66)
            {
              v87 = v72;
              v88 = v86;
              do
              {
                *v88++ = *v87;
                *v87++ = 0;
              }

              while (v87 != v66);
              do
              {
                if (*v72)
                {
                  sub_2993226F0(*v72);
                }

                ++v72;
              }

              while (v72 != v66);
              v72 = *v28;
            }

            *(a1 + 152) = v86;
            *(a1 + 160) = v85 + 1;
            v89 = *(a1 + 168);
            *(a1 + 168) = 0;
            v141 = v72;
            v142 = v89;
            *&v140 = v72;
            *(&v140 + 1) = v72;
            sub_299362E64(&v140);
            v90 = v139;
            *(a1 + 160) = v85 + 1;
            if (v90)
            {
              sub_2993226F0(v90);
            }
          }

          else
          {
            *v66 = v139;
            *(a1 + 160) = v66 + 1;
          }

          v92 = *(a1 + 184);
          v91 = *(a1 + 192);
          if (v92 >= v91)
          {
            v94 = *(a1 + 176);
            v95 = (v92 - v94) >> 3;
            if ((v95 + 1) >> 61)
            {
              sub_29924EED0();
            }

            v96 = v91 - v94;
            v97 = v96 >> 2;
            if (v96 >> 2 <= (v95 + 1))
            {
              v97 = v95 + 1;
            }

            if (v96 >= 0x7FFFFFFFFFFFFFF8)
            {
              v98 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v98 = v97;
            }

            if (v98)
            {
              sub_29920BE54(a1 + 176, v98);
            }

            v99 = (8 * v95);
            *v99 = 0;
            v93 = 8 * v95 + 8;
            v100 = *(a1 + 176);
            v101 = *(a1 + 184) - v100;
            v102 = v99 - v101;
            memcpy(v99 - v101, v100, v101);
            v103 = *(a1 + 176);
            *(a1 + 176) = v102;
            *(a1 + 184) = v93;
            *(a1 + 192) = 0;
            if (v103)
            {
              operator delete(v103);
            }
          }

          else
          {
            *v92 = 0;
            v93 = (v92 + 1);
          }

          *(a1 + 184) = v93;
        }

        ++v27;
      }

      while (v27 < *(a1 + 28));
      v104 = *(a1 + 40);
      v9 = *v104;
      v8 = v104[1];
    }

    *(a1 + 36) = 0;
    *(a1 + 16) = *(a1 + 72);
    *(a1 + 56) = v26;
    *(a1 + 64) = v26 + v129;
    if (v26 + v129 + v130 == v9 + v8)
    {
      return 1;
    }

    v105 = sub_29930AF10();
    sub_29930B600(v105, "Dictionary file %s has the wrong content", v106, v107, v108, v109, v110, v111, v128);
  }

  else
  {
    v112 = sub_29930AF10();
    v127 = *v9;
    sub_29930B600(v112, "Dictionary file %s is incompatible (version %d, expected version %d)", v113, v114, v115, v116, v117, v118, v3);
  }

  return 0;
}

void sub_2993DF88C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void **a24)
{
  if (a24)
  {
    sub_2993226F0(a24);
  }

  _Unwind_Resume(exception_object);
}

void sub_2993DF930(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_29924EED0();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_29920BE54(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

uint64_t sub_2993DFA0C(uint64_t result, int a2)
{
  if (*(result + 28) <= a2)
  {
    v2 = 0;
    a2 = -1;
  }

  else
  {
    v2 = *(result + 72) + 8 * a2;
  }

  *(result + 36) = a2;
  *(result + 16) = v2;
  return result;
}

uint64_t sub_2993DFA38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(*a1 + 104))(a1);
  if (result)
  {
    result = (*(*a1 + 104))(a1, a2);
    v15 = 0;
    v7 = result;
    if (result)
    {
      v8 = 12 * (result >> 12);
      v9 = 4 * (result >> 12);
      v10 = 1;
      do
      {
        if (*(a1 + 28) == 1)
        {
          v11 = *(a1 + 56) + v8;
        }

        else
        {
          v11 = *(a1 + 56) + 12 * *(*(*(a1 + 96) + 8 * *(a1 + 36)) + v9);
        }

        v12 = *(a1 + 64) + *(v11 + 8);
        v14[0] = v11;
        v14[1] = v12;
        result = (*(a3 + 16))(a3, v14, &v15);
        if (v15)
        {
          break;
        }

        v8 += 12;
        v9 += 4;
      }

      while (v10++ < v7);
    }
  }

  return result;
}

uint64_t sub_2993DFB70(uint64_t result, unsigned int a2, uint64_t a3, _BYTE *a4)
{
  v4 = a2;
  if (a2 && (*a4 & 1) == 0)
  {
    v6 = result;
    v7 = *(result + 40);
    v8 = 12 * (a2 >> 12);
    v9 = 4 * (a2 >> 12);
    v10 = 1;
    do
    {
      if (*(v7 + 28) == 1)
      {
        v11 = *(v7 + 56) + v8;
      }

      else
      {
        v11 = *(v7 + 56) + 12 * *(*(*(v7 + 96) + 8 * *(v7 + 36)) + v9);
      }

      v12 = *(v7 + 64) + *(v11 + 8);
      v14[0] = v11;
      v14[1] = v12;
      result = (*(*(v6 + 32) + 16))(*(v6 + 32), v14);
      if (*a4)
      {
        break;
      }

      v8 += 12;
      v9 += 4;
    }

    while (v10++ < v4);
  }

  return result;
}

void **sub_2993DFC68(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  (*(*a1 + 7))(&v12);
  sub_299359338(&v12, a1, a3, &v14);
  sub_2992B0BA8(&v12, &v14);
  sub_2992A5BA0(v15);
  v9 = v14;
  v14 = 0;
  if (v9)
  {
    MEMORY[0x29C29BFB0](v9, 0x1010C40E4C6A875);
  }

  if ((*(*a1 + 11))(a1, &v12))
  {
    v11[0] = MEMORY[0x29EDCA5F8];
    v11[1] = 0x40000000;
    v11[2] = sub_2993DFE50;
    v11[3] = &unk_29EF22280;
    v11[4] = a5;
    v14 = MEMORY[0x29EDCA5F8];
    v15[0] = 0x40000000;
    v15[1] = sub_2993DFB70;
    v15[2] = &unk_29EF22258;
    v15[3] = v11;
    v15[4] = a1;
    (*(*a1 + 10))(a1, &v12, a4, &v14);
  }

  sub_2992A5BA0(&v13);
  result = v12;
  v12 = 0;
  if (result)
  {
    return MEMORY[0x29C29BFB0](result, 0x1010C40E4C6A875);
  }

  return result;
}

void sub_2993DFE38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2992AB338(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2993DFE60(void **a1, _DWORD **a2, char a3, BOOL *a4, BOOL *a5)
{
  if (!((*a1)[11])(a1))
  {
    return 0;
  }

  v10 = sub_2993E44C8(a1[2], a2);
  *a5 = v10 != 0;
  *a4 = (v10 & 0x800) != 0;
  v11 = 1;
  if ((a3 & 0xE) != 0 && *a5)
  {
    if (a3)
    {
      v12 = 256;
    }

    else
    {
      v12 = 512;
    }

    LODWORD(v11) = (v10 & v12) != 0;
    if (a3)
    {
      v13 = (v10 >> 10) & 1;
    }

    else
    {
      v13 = 1;
    }

    if ((a3 & 8) != 0)
    {
      return v13;
    }

    else
    {
      return v11;
    }
  }

  return v11;
}

_WORD *sub_2993DFF74(void *a1, unsigned int a2)
{
  v3 = a1[15];
  if (v3)
  {
    return sub_2993B2928(v3, (a1[8] + *(a1[7] + 12 * a2 + 8)));
  }

  v5 = sub_2992FE060();
  result = *v5;
  v6 = v5[1];
  return result;
}

_DWORD *sub_2993DFFC0(_DWORD *result, unsigned __int8 *a2, unint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      v4 = result;
      v5 = result[9];
      if (v5 != -1)
      {
        if (*(*(result + 22) + 8 * v5))
        {
          v7 = (*(result + 19) + 8 * v5);
          sub_2992B72DC(&v13, *v7);
          sub_2992A5E4C(&v15, &v13);
          sub_2992A5BA0(&v14);
          v8 = v13;
          v13 = 0;
          if (v8)
          {
            MEMORY[0x29C29BFB0](v8, 0x1010C40E4C6A875);
          }

          sub_2993E4318(v7, &v15, a2, a3, &v13);
          if ((*(*v4 + 88))(v4, &v13))
          {
            sub_2992A5E4C(&v11, &v13);
            sub_2992B73E8(&v11, *v7);
            sub_2992A5BA0(&v12);
            v9 = v11;
            v11 = 0;
            if (v9)
            {
              MEMORY[0x29C29BFB0](v9, 0x1010C40E4C6A875);
            }
          }

          sub_2992A5BA0(&v14);
          v10 = v13;
          v13 = 0;
          if (v10)
          {
            MEMORY[0x29C29BFB0](v10, 0x1010C40E4C6A875);
          }

          sub_2992A5BA0(&v16);
          result = v15;
          v15 = 0;
          if (result)
          {
            return MEMORY[0x29C29BFB0](result, 0x1010C40E4C6A875);
          }
        }
      }
    }
  }

  return result;
}

void sub_2993E0194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va2, a7);
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  va_copy(va2, va1);
  v11 = va_arg(va2, void **);
  v13 = va_arg(va2, void);
  sub_2992AB338(va);
  sub_2992A5B54(va1);
  sub_2992A5B54(va2);
  _Unwind_Resume(a1);
}

uint64_t sub_2993E01DC(uint64_t result, unsigned int a2, uint64_t a3, _BYTE *a4)
{
  if (a3)
  {
    v4 = a2;
    if (a2)
    {
      if ((*a4 & 1) == 0)
      {
        v6 = result;
        v7 = *(result + 40);
        v8 = 4 * (a2 >> 12);
        v9 = 1;
        do
        {
          v10 = *(v7 + 64) + *(*(v7 + 56) + 12 * *(*(*(v7 + 176) + 8 * *(v7 + 36)) + v8) + 8);
          v12[0] = *(v7 + 56) + 12 * *(*(*(v7 + 176) + 8 * *(v7 + 36)) + v8);
          v12[1] = v10;
          result = (*(*(v6 + 32) + 16))(*(v6 + 32), v12);
          if (*a4)
          {
            break;
          }

          v8 += 4;
        }

        while (v9++ < v4);
      }
    }
  }

  return result;
}

uint64_t sub_2993E02C0()
{
  if ((atomic_load_explicit(&qword_2A14622C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14622C0))
  {
    operator new();
  }

  return qword_2A14622B8;
}

uint64_t sub_2993E0350(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (a2 == 5)
  {
    v4 = (a1 + 8);
    if (!*(a1 + 8))
    {
      v5 = sub_2993E03BC(a1, 5);
      sub_29920FE30(v4, v5);
      if (*(a1 + 8))
      {
        return v2;
      }

      else
      {
        return 2;
      }
    }
  }

  return v2;
}

CFURLRef sub_2993E03BC(_BYTE *a1, int a2)
{
  v4 = sub_29936C2B8();
  result = sub_29936CBC8(v4, a2, 0);
  if (result)
  {
    *a1 = 1;
  }

  else
  {
    v6 = sub_29936C2B8();

    return sub_29936CBC8(v6, a2, 1);
  }

  return result;
}

const __CFURL *sub_2993E0424(uint64_t a1, CFURLRef relativeURL)
{
  result = 0;
  if (relativeURL)
  {
    if ((*a1 & 1) == 0)
    {
      result = CFURLCopyAbsoluteURL(relativeURL);
      if (result)
      {
        v4 = result;
        v7 = *(a1 + 8);
        v6 = (a1 + 8);
        v5 = v7;
        if (!v7 || !CFEqual(result, v5))
        {
          v8 = sub_29936C2B8();
          sub_29936CC30(v8, 5, v4);
          v9 = CFRetain(v4);
          sub_29920FE30(v6, v9);
        }

        CFRelease(v4);
        return 1;
      }
    }
  }

  return result;
}

void sub_2993E04B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29920FE30(va, 0);
  _Unwind_Resume(a1);
}

void sub_2993E04D0(CFStringTokenizerRef *a1, CFStringRef theString, uint64_t a3)
{
  v29 = *MEMORY[0x29EDCA608];
  Length = CFStringGetLength(theString);
  if ((Length - 201) >= 0xFFFFFFFFFFFFFF3BLL)
  {
    v30.length = Length;
    v30.location = 0;
    CFStringTokenizerSetString(*a1, theString, v30);
    v7 = 0;
    v8 = 0;
    v21 = *MEMORY[0x29EDB8ED8];
    do
    {
      if (!CFStringTokenizerAdvanceToNextToken(*a1))
      {
        break;
      }

      CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(*a1);
      v10 = CFStringCreateWithSubstring(v21, theString, CurrentTokenRange);
      v11 = sub_29927947C();
      cf = v10;
      v13 = objc_msgSend_componentsSeparatedByCharactersInSet_(v10, v12, v11);
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v24, v28, 16);
      if (v15)
      {
        v16 = v15;
        v17 = *v25;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v25 != v17)
            {
              objc_enumerationMutation(v13);
            }

            v19 = *(*(&v24 + 1) + 8 * i);
            if (sub_2993D5A34(a1, v19))
            {
              (*(a3 + 16))(a3, v19);
            }
          }

          v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v20, &v24, v28, 16);
        }

        while (v16);
      }

      CFRelease(cf);
      if (v7 > 0x13)
      {
        break;
      }

      v8 += CurrentTokenRange.length;
      ++v7;
    }

    while (v8 < 0x33);
  }

  v6 = *MEMORY[0x29EDCA608];
}

uint64_t sub_2993E0694(uint64_t a1)
{
  *a1 = &unk_2A1F792C8;
  sub_2993E0710(a1);
  std::mutex::~mutex((a1 + 104));
  sub_299354B0C((a1 + 96), 0);
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    *(a1 + 40) = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_2993E0710(uint64_t a1)
{
  std::mutex::lock((a1 + 104));
  *(a1 + 40) = *(a1 + 32);
  *(a1 + 64) = *(a1 + 56);
  v2 = *(a1 + 16);
  if (v2)
  {
    if (*v2)
    {
      sub_2993226F0(*v2);
    }

    MEMORY[0x29C29BFB0](v2, 0x80C40B8603338);
    *(a1 + 16) = 0;
  }

  sub_299354B0C((a1 + 96), 0);

  std::mutex::unlock((a1 + 104));
}

uint64_t sub_2993E07A0(void *a1, uint64_t a2, uint64_t a3)
{
  result = (*(*a1 + 104))(a1);
  if (result)
  {
    result = (*(*a1 + 104))(a1, a2);
    v7 = *(a1[4] + 2 * result);
    v15 = 0;
    if (v7)
    {
      v8 = (result + 1);
      v9 = 1;
      do
      {
        v10 = a1[4];
        v11 = *(v10 + 2 * v8);
        v12 = v8 + 1;
        v14[0] = a1 + 10;
        v14[1] = v10 + 2 * (v8 + 1);
        result = (*(a3 + 16))(a3, v14, &v15);
        if (v15)
        {
          break;
        }

        v8 = v12 + v11;
      }

      while (v9++ < v7);
    }
  }

  return result;
}

void sub_2993E08DC(uint64_t a1, CFArrayRef theArray)
{
  if (!theArray || !CFArrayGetCount(theArray))
  {
    return;
  }

  v93 = 0;
  v92 = 0uLL;
  v4 = (*(*a1 + 16))(a1);
  v5 = 0;
  v89 = *MEMORY[0x29EDB8F80];
  while (v5 < CFArrayGetCount(theArray))
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v5);
    v7 = v5 + 1;
    v8 = CFArrayGetValueAtIndex(theArray, v5 + 1);
    if (v4 == 17)
    {
      v9 = CFArrayGetValueAtIndex(theArray, v5 + 2);
      v7 = v5 + 3;
      v10 = CFArrayGetValueAtIndex(theArray, v5 + 3);
      if (!ValueAtIndex)
      {
        goto LABEL_74;
      }
    }

    else
    {
      v9 = 0;
      v10 = 0;
      if (!ValueAtIndex)
      {
        goto LABEL_74;
      }
    }

    if (v8)
    {
      if (ValueAtIndex != v89 && v8 != v89)
      {
        Length = CFStringGetLength(v8);
        v12 = CFStringGetLength(ValueAtIndex);
        if (Length)
        {
          v13 = v12;
          if (v12)
          {
            v106 = 0;
            v107 = 0;
            v108 = 0;
            sub_299217A94(&v106, Length);
            v109.location = 0;
            v109.length = Length;
            CFStringGetCharacters(v8, v109, v106);
            if (v106 != v107)
            {
              v14 = v107 - 2;
              if (v107 - 2 > v106)
              {
                v15 = v106 + 2;
                do
                {
                  v16 = *(v15 - 1);
                  *(v15 - 1) = *v14;
                  *v14 = v16;
                  v14 -= 2;
                  v17 = v15 >= v14;
                  v15 += 2;
                }

                while (!v17);
              }
            }

            v103 = 0;
            v104 = 0;
            v105 = 0;
            sub_299217A94(&v103, v13);
            v110.location = 0;
            v110.length = v13;
            CFStringGetCharacters(ValueAtIndex, v110, v103);
            v18 = v107 - v106;
            if ((v107 - v106) >= 0x7FFFFFFFFFFFFFF8)
            {
              sub_2991A11B0();
            }

            if (v18 >= 0x17)
            {
              operator new();
            }

            *(&__dst.__r_.__value_.__s + 23) = v107 - v106;
            if (v107 != v106)
            {
              memmove(&__dst, v106, v18);
            }

            v19 = 0;
            __dst.__r_.__value_.__s.__data_[v18] = 0;
            LOWORD(valuePtr) = 0;
            if (v4 == 17 && v9 && v89 != v9)
            {
              if (CFNumberGetValue(v9, kCFNumberSInt16Type, &valuePtr))
              {
                v19 = valuePtr;
              }

              else
              {
                v19 = 0;
              }
            }

            valuePtr = 0uLL;
            v95 = 0;
            if (v4 == 17 && v10 && v89 != v10)
            {
              for (i = 0; i < CFArrayGetCount(v10); ++i)
              {
                v21 = CFArrayGetValueAtIndex(v10, i);
                v91[0] = 0;
                if (CFNumberGetValue(v21, kCFNumberSInt64Type, v91))
                {
                  v22 = *(&valuePtr + 1);
                  if (*(&valuePtr + 1) >= v95)
                  {
                    v24 = valuePtr;
                    v25 = *(&valuePtr + 1) - valuePtr;
                    v26 = (*(&valuePtr + 1) - valuePtr) >> 3;
                    v27 = v26 + 1;
                    if ((v26 + 1) >> 61)
                    {
                      sub_2993B2DA8();
                    }

                    v28 = v95 - valuePtr;
                    if ((v95 - valuePtr) >> 2 > v27)
                    {
                      v27 = v28 >> 2;
                    }

                    v17 = v28 >= 0x7FFFFFFFFFFFFFF8;
                    v29 = 0x1FFFFFFFFFFFFFFFLL;
                    if (!v17)
                    {
                      v29 = v27;
                    }

                    if (v29)
                    {
                      sub_299236FB8(&valuePtr, v29);
                    }

                    *(8 * v26) = v91[0];
                    v23 = 8 * v26 + 8;
                    memcpy(0, v24, v25);
                    v30 = valuePtr;
                    *&valuePtr = 0;
                    *(&valuePtr + 1) = v23;
                    v95 = 0;
                    if (v30)
                    {
                      operator delete(v30);
                    }
                  }

                  else
                  {
                    **(&valuePtr + 1) = v91[0];
                    v23 = v22 + 8;
                  }

                  *(&valuePtr + 1) = v23;
                }
              }
            }

            __p = __dst;
            memset(&__dst, 0, sizeof(__dst));
            v99 = 0;
            v98 = 0uLL;
            sub_299215EC0(&v98, v103, v104, (v104 - v103) >> 1);
            v100 = v19;
            v31 = valuePtr;
            v101 = valuePtr;
            v32 = v95;
            v102 = v95;
            valuePtr = 0uLL;
            v95 = 0;
            v33 = *(&v92 + 1);
            if (*(&v92 + 1) >= v93)
            {
              v35 = v92;
              v36 = *(&v92 + 1) - v92;
              v37 = 0xCCCCCCCCCCCCCCCDLL * ((*(&v92 + 1) - v92) >> 4);
              v38 = v37 + 1;
              if (v37 + 1 > 0x333333333333333)
              {
                sub_299212A8C();
              }

              if (0x999999999999999ALL * ((v93 - v92) >> 4) > v38)
              {
                v38 = 0x999999999999999ALL * ((v93 - v92) >> 4);
              }

              if (0xCCCCCCCCCCCCCCCDLL * ((v93 - v92) >> 4) >= 0x199999999999999)
              {
                v39 = 0x333333333333333;
              }

              else
              {
                v39 = v38;
              }

              if (v39)
              {
                if (v39 <= 0x333333333333333)
                {
                  operator new();
                }

                sub_29919600C();
              }

              v40 = 16 * ((*(&v92 + 1) - v92) >> 4);
              *v40 = __p;
              memset(&__p, 0, sizeof(__p));
              *(v40 + 24) = v98;
              *(v40 + 40) = v99;
              v99 = 0;
              v98 = 0uLL;
              *(v40 + 48) = v19;
              *(v40 + 56) = v31;
              *(v40 + 72) = v32;
              v101 = 0uLL;
              v41 = 80 * v37 + 80;
              v42 = 80 * v37 - v36;
              v102 = 0;
              memcpy((v40 - v36), v35, v36);
              *&v92 = v42;
              *(&v92 + 1) = v41;
              v93 = 0;
              if (v35)
              {
                operator delete(v35);
                *(&v92 + 1) = v41;
                if (v101)
                {
                  *(&v101 + 1) = v101;
                  operator delete(v101);
                }
              }
            }

            else
            {
              v34 = *&__p.__r_.__value_.__l.__data_;
              *(*(&v92 + 1) + 16) = *(&__p.__r_.__value_.__l + 2);
              *(v33 + 24) = 0;
              *v33 = v34;
              memset(&__p, 0, sizeof(__p));
              *(v33 + 32) = 0;
              *(v33 + 40) = 0;
              *(v33 + 24) = v98;
              *(v33 + 40) = v99;
              v98 = 0uLL;
              v99 = 0;
              *(v33 + 48) = v100;
              *(v33 + 56) = 0;
              *(v33 + 64) = 0;
              *(v33 + 72) = 0;
              *(v33 + 56) = v101;
              *(v33 + 72) = v102;
              v101 = 0uLL;
              v102 = 0;
              *(&v92 + 1) = v33 + 80;
            }

            if (v98)
            {
              *(&v98 + 1) = v98;
              operator delete(v98);
            }

            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (valuePtr)
            {
              *(&valuePtr + 1) = valuePtr;
              operator delete(valuePtr);
            }

            if (v103)
            {
              v104 = v103;
              operator delete(v103);
            }

            if (v106)
            {
              v107 = v106;
              operator delete(v106);
            }
          }
        }
      }
    }

LABEL_74:
    v5 = v7 + 1;
  }

  v43 = *(&v92 + 1);
  v44 = *&v92;
  v45 = v92;
  if (v92 != *(&v92 + 1))
  {
    v106 = sub_2993E1850;
    if ((*(&v92 + 1) - v92) < 1)
    {
      v51 = 0;
      v47 = 0;
    }

    else
    {
      v46 = MEMORY[0x29EDC9418];
      v47 = 0xCCCCCCCCCCCCCCCDLL * ((*(&v92 + 1) - v92) >> 4);
      while (1)
      {
        v48 = operator new(80 * v47, v46);
        if (v48)
        {
          break;
        }

        v49 = v47 >> 1;
        v50 = v47 > 1;
        v47 >>= 1;
        if (!v50)
        {
          v51 = 0;
          v47 = v49;
          goto LABEL_83;
        }
      }

      v51 = v48;
    }

LABEL_83:
    sub_2993E186C(v45, v43, &v106, 0xCCCCCCCCCCCCCCCDLL * ((v43 - v45) >> 4), v51, v47, v44);
    if (v51)
    {
      operator delete(v51);
    }

    std::mutex::lock((a1 + 104));
    v52 = (a1 + 56);
    *(a1 + 64) = *(a1 + 56);
    LOWORD(__p.__r_.__value_.__l.__data_) = 0;
    sub_29922E664((a1 + 56), &__p);
    memset(&__p, 0, sizeof(__p));
    v107 = 0;
    v108 = 0;
    v103 = 0;
    v104 = 0;
    v105 = 0;
    v106 = 0;
    v53 = v92;
    if (*(&v92 + 1) != v92)
    {
      v54 = 0;
      v55 = 0;
      v56 = 0;
      v57 = 1;
      do
      {
        v58 = v53 + v54;
        if (!v56)
        {
          goto LABEL_101;
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = __p.__r_.__value_.__l.__size_;
        }

        v60 = *(v58 + 23);
        v61 = v60;
        if ((v60 & 0x80u) != 0)
        {
          v60 = *(v58 + 8);
        }

        if (size == v60 && ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (p_p = &__p) : (p_p = __p.__r_.__value_.__r.__words[0]), (v63 = *v58, v61 >= 0) ? (v64 = (v53 + v54)) : (v64 = *v58), !memcmp(p_p, v64, size)))
        {
          ++*(*v52 + v55);
        }

        else
        {
LABEL_101:
          sub_29924BA6C(&v106, (v53 + v54));
          v65 = v104;
          if (v104 >= v105)
          {
            v67 = v103;
            v68 = v104 - v103;
            v69 = (v104 - v103) >> 2;
            v70 = v69 + 1;
            if ((v69 + 1) >> 62)
            {
              sub_299212A8C();
            }

            v71 = v105 - v103;
            if ((v105 - v103) >> 1 > v70)
            {
              v70 = v71 >> 1;
            }

            v17 = v71 >= 0x7FFFFFFFFFFFFFFCLL;
            v72 = 0x3FFFFFFFFFFFFFFFLL;
            if (!v17)
            {
              v72 = v70;
            }

            if (v72)
            {
              sub_2992F86B0(&v103, v72);
            }

            *(4 * v69) = v57;
            v66 = (4 * v69 + 4);
            memcpy(0, v67, v68);
            v73 = v103;
            v103 = 0;
            v104 = v66;
            v105 = 0;
            if (v73)
            {
              operator delete(v73);
            }
          }

          else
          {
            *v104 = v57;
            v66 = v65 + 4;
          }

          v104 = v66;
          LOWORD(__dst.__r_.__value_.__l.__data_) = 1;
          sub_29922E664(v52, &__dst);
          v55 = v57++;
          v53 = v92;
        }

        memset(&__dst, 0, sizeof(__dst));
        valuePtr = 0uLL;
        v95 = 0;
        memset(v91, 0, sizeof(v91));
        v74 = *(v53 + v54 + 23);
        if (v74 < 0)
        {
          v74 = *(v53 + v54 + 8);
        }

        v90 = (v74 >> 1) + 48;
        sub_29922E664(&valuePtr, &v90);
        sub_2993DE9CC(&__dst.__r_.__value_.__l.__data_, (v58 + 24), &valuePtr, v91, *(a1 + 24));
        if ((*(*a1 + 16))(a1) == 17)
        {
          v75 = v92 + v54;
          v76 = __dst.__r_.__value_.__l.__size_;
          if (__dst.__r_.__value_.__l.__size_ >= __dst.__r_.__value_.__r.__words[2])
          {
            v78 = __dst.__r_.__value_.__r.__words[0];
            v79 = __dst.__r_.__value_.__l.__size_ - __dst.__r_.__value_.__r.__words[0];
            v80 = (__dst.__r_.__value_.__l.__size_ - __dst.__r_.__value_.__r.__words[0]) >> 1;
            if (v80 <= -2)
            {
              sub_299212A8C();
            }

            if (__dst.__r_.__value_.__r.__words[2] - __dst.__r_.__value_.__r.__words[0] <= v80 + 1)
            {
              v81 = v80 + 1;
            }

            else
            {
              v81 = __dst.__r_.__value_.__r.__words[2] - __dst.__r_.__value_.__r.__words[0];
            }

            v82 = 0x7FFFFFFFFFFFFFFFLL;
            if (__dst.__r_.__value_.__r.__words[2] - __dst.__r_.__value_.__r.__words[0] < 0x7FFFFFFFFFFFFFFELL)
            {
              v82 = v81;
            }

            if (v82)
            {
              sub_299212A48(&__dst, v82);
            }

            v83 = (2 * v80);
            v84 = *(v75 + 48);
            v85 = &v83[-((__dst.__r_.__value_.__l.__size_ - __dst.__r_.__value_.__r.__words[0]) >> 1)];
            *v83 = v84;
            v77 = (v83 + 1);
            memcpy(v85, v78, v79);
            v86 = __dst.__r_.__value_.__r.__words[0];
            __dst.__r_.__value_.__r.__words[0] = v85;
            *&__dst.__r_.__value_.__r.__words[1] = v77;
            if (v86)
            {
              operator delete(v86);
            }
          }

          else
          {
            *__dst.__r_.__value_.__l.__size_ = *(v75 + 48);
            v77 = v76 + 2;
          }

          __dst.__r_.__value_.__l.__size_ = v77;
          v87 = v92 + v54;
          v90 = (*(v92 + v54 + 64) - *(v92 + v54 + 56)) >> 3;
          sub_29922E664(&__dst.__r_.__value_.__l.__data_, &v90);
          sub_299218EBC(&__dst, __dst.__r_.__value_.__l.__size_, *(v87 + 56), *(v87 + 64), (*(v87 + 64) - *(v87 + 56)) >> 1);
        }

        v90 = (LODWORD(__dst.__r_.__value_.__r.__words[1]) - LODWORD(__dst.__r_.__value_.__l.__data_)) >> 1;
        sub_29922E664(v52, &v90);
        sub_2992F87C8(v52, *(a1 + 64), __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_, (__dst.__r_.__value_.__l.__size_ - __dst.__r_.__value_.__r.__words[0]) >> 1);
        v88 = *&__dst.__r_.__value_.__l.__data_;
        std::string::operator=(&__p, (v92 + v54));
        if (valuePtr)
        {
          *(&valuePtr + 1) = valuePtr;
          operator delete(valuePtr);
        }

        if (__dst.__r_.__value_.__r.__words[0])
        {
          __dst.__r_.__value_.__l.__size_ = __dst.__r_.__value_.__r.__words[0];
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        v57 += ((*(&v88 + 1) - v88) >> 1) + 1;
        ++v56;
        v53 = v92;
        v54 += 80;
      }

      while (v56 < 0xCCCCCCCCCCCCCCCDLL * ((*(&v92 + 1) - v92) >> 4));
    }

    operator new();
  }

  __p.__r_.__value_.__r.__words[0] = &v92;
  sub_2993E1740(&__p);
}

void sub_2993E13FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  MEMORY[0x29C29BFB0](v34, 0x80C40B8603338);
  v37 = *(v33 + 80);
  if (v37)
  {
    *(v33 + 88) = v37;
    operator delete(v37);
  }

  *(v33 + 80) = v35 - 120;
  sub_299212B90((v35 - 144));
  if (a33 < 0)
  {
    operator delete(__p);
  }

  std::mutex::unlock((a10 + 104));
  __p = &a15;
  sub_2993E1740(&__p);
  _Unwind_Resume(a1);
}

uint64_t sub_2993E158C(uint64_t a1)
{
  v6 = (a1 + 104);
  v7 = 0;
  if ((sub_2993479E4(&v6) & 1) != 0 && (v2 = *(a1 + 96)) != 0)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      if (*v3)
      {
        sub_2993226F0(*v3);
      }

      MEMORY[0x29C29BFB0](v3, 0x80C40B8603338);
      v2 = *(a1 + 96);
    }

    *(a1 + 96) = 0;
    *(a1 + 16) = v2;
    sub_29922323C(a1 + 32, (a1 + 56));
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  if (v7 == 1)
  {
    std::mutex::unlock(v6);
  }

  return v4;
}

void sub_2993E163C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::mutex *a9, char a10)
{
  if (a10 == 1)
  {
    std::mutex::unlock(a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_2993E1664(uint64_t a1)
{
  sub_2993E0694(a1);

  JUMPOUT(0x29C29BFB0);
}

void sub_2993E16A0(uint64_t a1)
{
  sub_2993E0694(a1);

  JUMPOUT(0x29C29BFB0);
}

void sub_2993E1700(uint64_t a1)
{
  sub_2993E0694(a1);

  JUMPOUT(0x29C29BFB0);
}

void sub_2993E1740(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 3);
        if (v6)
        {
          *(v4 - 2) = v6;
          operator delete(v6);
        }

        v7 = *(v4 - 7);
        if (v7)
        {
          *(v4 - 6) = v7;
          operator delete(v7);
        }

        v8 = v4 - 10;
        if (*(v4 - 57) < 0)
        {
          operator delete(*v8);
        }

        v4 -= 10;
      }

      while (v8 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_2993E17FC(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    *(a1 + 32) = v3;
    operator delete(v3);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

double sub_2993E186C(uint64_t *a1, __n128 *a2, unsigned int (**a3)(uint64_t *, uint64_t *), unint64_t a4, __int128 *a5, uint64_t a6, double result)
{
  if (a4 >= 2)
  {
    v9 = a1;
    if (a4 == 2)
    {
      if ((*a3)(&a2[-5], a1))
      {

        *&result = sub_2993E28D4(v9, a2 - 5).n128_u64[0];
      }
    }

    else if (a4 <= 0)
    {
      if (a1 != a2)
      {
        v17 = a1 + 10;
        if (a1 + 10 != a2)
        {
          v18 = 0;
          v19 = a1;
          do
          {
            v20 = v17;
            if ((*a3)(v17, v19))
            {
              v21 = *v20;
              v32 = v20[1].n128_i64[0];
              *v31 = v21;
              v20->n128_u64[1] = 0;
              v20[1].n128_u64[0] = 0;
              v20->n128_u64[0] = 0;
              *v33 = *(v19 + 13);
              v34 = v19[15];
              v19[14] = 0;
              v19[15] = 0;
              v19[13] = 0;
              v35 = *(v19 + 64);
              *__p = *(v19 + 17);
              v37 = v19[19];
              v19[17] = 0;
              v19[18] = 0;
              v22 = v18;
              v19[19] = 0;
              while (1)
              {
                v23 = sub_2993E2970(&v9[5] + v22, (v9 + v22));
                if (!v22)
                {
                  break;
                }

                v24 = (*a3)(v31, &v9[-5] + v22, v23);
                v22 -= 80;
                if ((v24 & 1) == 0)
                {
                  v25 = &v9[5] + v22;
                  goto LABEL_22;
                }
              }

              v25 = v9;
LABEL_22:
              *&result = sub_2993E2970(v25, v31).n128_u64[0];
              if (__p[0])
              {
                __p[1] = __p[0];
                operator delete(__p[0]);
              }

              if (v33[0])
              {
                v33[1] = v33[0];
                operator delete(v33[0]);
              }

              if (SHIBYTE(v32) < 0)
              {
                operator delete(v31[0]);
              }
            }

            v17 = &v20[5];
            v18 += 80;
            v19 = v20;
          }

          while (&v20[5] != a2);
        }
      }
    }

    else
    {
      v12 = a5;
      v13 = a4 >> 1;
      v14 = &a1[10 * (a4 >> 1)];
      if (a4 <= a6)
      {
        v30 = 0;
        v31[0] = a5;
        v31[1] = &v30;
        sub_2993E1BE8(a1, &a1[10 * (a4 >> 1)], a3, a4 >> 1, a5);
        v30 = a4 >> 1;
        v26 = a4 - v13;
        v27 = &v12[5 * v13];
        sub_2993E1BE8(&v9[5 * (a4 >> 1)], a2, a3, v26, v27);
        v30 = a4;
        v28 = &v12[5 * a4];
        v29 = v27;
        while (v29 != v28)
        {
          if ((*a3)(v29, v12))
          {
            sub_2993E2970(v9, v29);
            v29 += 5;
          }

          else
          {
            sub_2993E2970(v9, v12);
            v12 += 5;
          }

          v9 += 5;
          if (v12 == v27)
          {
            while (v29 != v28)
            {
              sub_2993E2970(v9, v29);
              v29 += 5;
              v9 += 5;
            }

            goto LABEL_42;
          }
        }

        while (v12 != v27)
        {
          sub_2993E2970(v9, v12);
          v12 += 5;
          v9 += 5;
        }

LABEL_42:
        sub_2993E2A0C(v31);
      }

      else
      {
        sub_2993E186C(a1, &a1[10 * (a4 >> 1)], a3, a4 >> 1, a5, a6);
        v15 = a4 - v13;
        sub_2993E186C(v14, a2, a3, v15, v12, a6);

        return sub_2993E2300(v9, v14, a2, a3, v13, v15, v12, a6, v16);
      }
    }
  }

  return result;
}

void sub_2993E1BC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2993E2A0C(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_2993E1BE8(uint64_t *result, uint64_t *a2, unsigned int (**a3)(uint64_t *, uint64_t *), unint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v5 = a5;
    v9 = result;
    if (a4 == 2)
    {
      v38 = a5;
      v39 = &v40;
      v40 = 0;
      v11 = a2 - 10;
      if ((*a3)(a2 - 10, result))
      {
        v12 = *v11;
        *(v5 + 16) = *(a2 - 8);
        *v5 = v12;
        *(a2 - 9) = 0;
        *(a2 - 8) = 0;
        *v11 = 0;
        *(v5 + 24) = 0;
        *(v5 + 32) = 0;
        *(v5 + 40) = 0;
        *(v5 + 24) = *(a2 - 7);
        *(v5 + 40) = *(a2 - 5);
        *(a2 - 6) = 0;
        *(a2 - 5) = 0;
        *(a2 - 7) = 0;
        *(v5 + 48) = *(a2 - 16);
        *(v5 + 64) = 0;
        *(v5 + 72) = 0;
        *(v5 + 56) = 0;
        *(v5 + 56) = *(a2 - 3);
        *(v5 + 72) = *(a2 - 1);
        *(a2 - 3) = 0;
        *(a2 - 2) = 0;
        *(a2 - 1) = 0;
        ++v40;
        v13 = v9[2];
        *(v5 + 80) = *v9;
        *(v5 + 96) = v13;
        v9[1] = 0;
        v9[2] = 0;
        *v9 = 0;
        *(v5 + 104) = 0;
        *(v5 + 112) = 0;
        *(v5 + 120) = 0;
        *(v5 + 104) = *(v9 + 3);
        *(v5 + 120) = v9[5];
        v9[4] = 0;
        v9[5] = 0;
        v9[3] = 0;
        *(v5 + 128) = *(v9 + 24);
        *(v5 + 144) = 0;
        *(v5 + 152) = 0;
        *(v5 + 136) = 0;
        v15 = v9[7];
        v14 = v9 + 7;
        *(v5 + 136) = v15;
        v16 = v14 + 1;
        v17 = v14 + 2;
      }

      else
      {
        v29 = *v9;
        *(v5 + 16) = v9[2];
        *v5 = v29;
        v9[1] = 0;
        v9[2] = 0;
        *v9 = 0;
        *(v5 + 24) = 0;
        *(v5 + 32) = 0;
        *(v5 + 40) = 0;
        *(v5 + 24) = *(v9 + 3);
        *(v5 + 40) = v9[5];
        v9[4] = 0;
        v9[5] = 0;
        v9[3] = 0;
        *(v5 + 48) = *(v9 + 24);
        *(v5 + 64) = 0;
        *(v5 + 72) = 0;
        *(v5 + 56) = 0;
        *(v5 + 56) = *(v9 + 7);
        *(v5 + 72) = v9[9];
        v9[7] = 0;
        v9[8] = 0;
        v9[9] = 0;
        ++v40;
        v30 = *(a2 - 8);
        *(v5 + 80) = *v11;
        *(v5 + 96) = v30;
        *(a2 - 9) = 0;
        *(a2 - 8) = 0;
        *v11 = 0;
        *(v5 + 104) = 0;
        *(v5 + 112) = 0;
        *(v5 + 120) = 0;
        *(v5 + 104) = *(a2 - 7);
        *(v5 + 120) = *(a2 - 5);
        *(a2 - 6) = 0;
        *(a2 - 5) = 0;
        *(a2 - 7) = 0;
        *(v5 + 128) = *(a2 - 16);
        *(v5 + 144) = 0;
        *(v5 + 152) = 0;
        *(v5 + 136) = 0;
        v32 = *(a2 - 3);
        v31 = a2 - 3;
        *(v5 + 136) = v32;
        v16 = v31 + 1;
        v17 = v31 + 2;
        v14 = v31;
      }

      *(v5 + 144) = *v16;
      *(v5 + 152) = *v17;
      *v14 = 0;
      v14[1] = 0;
      v14[2] = 0;
    }

    else
    {
      if (a4 == 1)
      {
        v10 = *result;
        *(a5 + 16) = result[2];
        *a5 = v10;
        result[1] = 0;
        result[2] = 0;
        *result = 0;
        *(a5 + 24) = 0;
        *(a5 + 32) = 0;
        *(a5 + 40) = 0;
        *(a5 + 24) = *(result + 3);
        *(a5 + 40) = result[5];
        result[4] = 0;
        result[5] = 0;
        result[3] = 0;
        *(a5 + 48) = *(result + 24);
        *(a5 + 64) = 0;
        *(a5 + 72) = 0;
        *(a5 + 56) = 0;
        *(a5 + 56) = *(result + 7);
        *(a5 + 72) = result[9];
        result[7] = 0;
        result[8] = 0;
        result[9] = 0;
        return result;
      }

      if (a4 <= 8)
      {
        if (result == a2)
        {
          return result;
        }

        v38 = a5;
        v39 = &v40;
        v18 = *result;
        *(a5 + 16) = result[2];
        *a5 = v18;
        result[1] = 0;
        result[2] = 0;
        *result = 0;
        *(a5 + 24) = 0;
        *(a5 + 32) = 0;
        *(a5 + 40) = 0;
        *(a5 + 24) = *(result + 3);
        *(a5 + 40) = result[5];
        result[4] = 0;
        result[5] = 0;
        result[3] = 0;
        *(a5 + 48) = *(result + 24);
        *(a5 + 64) = 0;
        *(a5 + 72) = 0;
        *(a5 + 56) = 0;
        *(a5 + 56) = *(result + 7);
        *(a5 + 72) = result[9];
        result[7] = 0;
        result[8] = 0;
        result[9] = 0;
        v40 = 1;
        v19 = result + 10;
        if (result + 10 != a2)
        {
          v20 = 0;
          v21 = a5;
          do
          {
            v22 = v19;
            v23 = (v21 + 80);
            if ((*a3)(v19, v21))
            {
              *v23 = *v21;
              *(v21 + 96) = *(v21 + 16);
              *v21 = 0;
              *(v21 + 8) = 0;
              *(v21 + 104) = *(v21 + 24);
              *(v21 + 120) = *(v21 + 40);
              *(v21 + 16) = 0;
              *(v21 + 24) = 0;
              *(v21 + 32) = 0;
              *(v21 + 40) = 0;
              *(v21 + 128) = *(v21 + 48);
              *(v21 + 136) = *(v21 + 56);
              *(v21 + 152) = *(v21 + 72);
              *(v21 + 56) = 0;
              *(v21 + 64) = 0;
              ++v40;
              v24 = v5;
              *(v21 + 72) = 0;
              if (v21 != v5)
              {
                v25 = v20;
                while ((*a3)(v22, (v5 + v25 - 80)))
                {
                  sub_2993E2970(v5 + v25, (v5 + v25 - 80));
                  v25 -= 80;
                  if (!v25)
                  {
                    v24 = v5;
                    goto LABEL_19;
                  }
                }

                v24 = v5 + v25;
              }

LABEL_19:
              sub_2993E2970(v24, v22);
            }

            else
            {
              v26 = *v22;
              *(v21 + 96) = v22[2];
              *v23 = v26;
              v22[1] = 0;
              v22[2] = 0;
              *v22 = 0;
              *(v21 + 104) = 0;
              *(v21 + 112) = 0;
              *(v21 + 120) = 0;
              *(v21 + 104) = *(v9 + 13);
              *(v21 + 120) = v9[15];
              v9[14] = 0;
              v9[15] = 0;
              v9[13] = 0;
              *(v21 + 128) = *(v9 + 64);
              *(v21 + 144) = 0;
              *(v21 + 152) = 0;
              *(v21 + 136) = 0;
              *(v21 + 136) = *(v9 + 17);
              *(v21 + 152) = v9[19];
              v9[17] = 0;
              v9[18] = 0;
              v9[19] = 0;
              ++v40;
            }

            v19 = v22 + 10;
            v20 += 80;
            v21 += 80;
            v9 = v22;
          }

          while (v22 + 10 != a2);
        }

        goto LABEL_38;
      }

      v27 = &result[10 * (a4 >> 1)];
      sub_2993E186C(result, v27, a3, a4 >> 1, a5, a4 >> 1);
      sub_2993E186C(&v9[10 * (a4 >> 1)], a2, a3, a4 - (a4 >> 1), v5 + 80 * (a4 >> 1), a4 - (a4 >> 1));
      v38 = v5;
      v39 = &v40;
      v40 = 0;
      if (v27 == a2)
      {
        v28 = 0;
LABEL_32:
        if (v9 == v27)
        {
          goto LABEL_38;
        }

        do
        {
          v36 = *v9;
          *(v5 + 16) = v9[2];
          *v5 = v36;
          v9[1] = 0;
          v9[2] = 0;
          *v9 = 0;
          *(v5 + 24) = 0;
          *(v5 + 32) = 0;
          *(v5 + 40) = 0;
          *(v5 + 24) = *(v9 + 3);
          *(v5 + 40) = v9[5];
          v9[4] = 0;
          v9[5] = 0;
          v9[3] = 0;
          *(v5 + 48) = *(v9 + 24);
          *(v5 + 64) = 0;
          *(v5 + 72) = 0;
          *(v5 + 56) = 0;
          *(v5 + 56) = *(v9 + 7);
          *(v5 + 72) = v9[9];
          v9[7] = 0;
          v9[8] = 0;
          v9[9] = 0;
          v9 += 10;
          v5 += 80;
          ++v28;
        }

        while (v9 != v27);
      }

      else
      {
        v33 = &v9[10 * (a4 >> 1)];
        while (1)
        {
          if ((*a3)(v33, v9))
          {
            v34 = *v33;
            *(v5 + 16) = v33[2];
            *v5 = v34;
            v33[1] = 0;
            v33[2] = 0;
            *v33 = 0;
            *(v5 + 24) = 0;
            *(v5 + 32) = 0;
            *(v5 + 40) = 0;
            *(v5 + 24) = *(v33 + 3);
            *(v5 + 40) = v33[5];
            v33[4] = 0;
            v33[5] = 0;
            v33[3] = 0;
            *(v5 + 48) = *(v33 + 24);
            *(v5 + 64) = 0;
            *(v5 + 72) = 0;
            *(v5 + 56) = 0;
            *(v5 + 56) = *(v33 + 7);
            *(v5 + 72) = v33[9];
            v33[7] = 0;
            v33[8] = 0;
            v33[9] = 0;
            v33 += 10;
          }

          else
          {
            v35 = *v9;
            *(v5 + 16) = v9[2];
            *v5 = v35;
            v9[1] = 0;
            v9[2] = 0;
            *v9 = 0;
            *(v5 + 24) = 0;
            *(v5 + 32) = 0;
            *(v5 + 40) = 0;
            *(v5 + 24) = *(v9 + 3);
            *(v5 + 40) = v9[5];
            v9[4] = 0;
            v9[5] = 0;
            v9[3] = 0;
            *(v5 + 48) = *(v9 + 24);
            *(v5 + 64) = 0;
            *(v5 + 72) = 0;
            *(v5 + 56) = 0;
            *(v5 + 56) = *(v9 + 7);
            *(v5 + 72) = v9[9];
            v9[7] = 0;
            v9[8] = 0;
            v9[9] = 0;
            v9 += 10;
          }

          v28 = ++v40;
          v5 += 80;
          if (v9 == v27)
          {
            break;
          }

          if (v33 == a2)
          {
            goto LABEL_32;
          }
        }

        if (v33 == a2)
        {
          goto LABEL_38;
        }

        do
        {
          v37 = *v33;
          *(v5 + 16) = v33[2];
          *v5 = v37;
          v33[1] = 0;
          v33[2] = 0;
          *v33 = 0;
          *(v5 + 24) = 0;
          *(v5 + 32) = 0;
          *(v5 + 40) = 0;
          *(v5 + 24) = *(v33 + 3);
          *(v5 + 40) = v33[5];
          v33[4] = 0;
          v33[5] = 0;
          v33[3] = 0;
          *(v5 + 48) = *(v33 + 24);
          *(v5 + 64) = 0;
          *(v5 + 72) = 0;
          *(v5 + 56) = 0;
          *(v5 + 56) = *(v33 + 7);
          *(v5 + 72) = v33[9];
          v33[7] = 0;
          v33[8] = 0;
          v33[9] = 0;
          v33 += 10;
          v5 += 80;
          ++v28;
        }

        while (v33 != a2);
      }

      v40 = v28;
    }

LABEL_38:
    v38 = 0;
    return sub_2993E2A0C(&v38);
  }

  return result;
}

void sub_2993E22E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2993E2A0C(va);
  _Unwind_Resume(a1);
}

double sub_2993E2300(uint64_t a1, __n128 *a2, __n128 *a3, uint64_t (**a4)(__n128 *, __n128 *), uint64_t a5, uint64_t a6, __int128 *a7, uint64_t a8, __n128 a9)
{
  v62 = a6;
  if (a6)
  {
    while (a5 > a8 && v62 > a8)
    {
      if (!a5)
      {
        return a9.n128_f64[0];
      }

      v15 = 0;
      v16 = -a5;
      while (1)
      {
        v17 = (v15 + a1);
        if ((*a4)(a2, (v15 + a1)))
        {
          break;
        }

        v15 += 5;
        if (__CFADD__(v16++, 1))
        {
          return a9.n128_f64[0];
        }
      }

      v19 = v62;
      v59 = a3;
      v60 = a4;
      v58 = a1;
      if (-v16 >= v62)
      {
        if (v16 == -1)
        {

          a9.n128_u64[0] = sub_2993E28D4((v15 + a1), a2).n128_u64[0];
          return a9.n128_f64[0];
        }

        v24 = -v16 / 2;
        v21 = a2;
        if (a2 != a3)
        {
          v25 = a1 + 80 * v24;
          v26 = *v60;
          v27 = 0xCCCCCCCCCCCCCCCDLL * (a3 - a2);
          v21 = a2;
          do
          {
            v28 = &v21[5 * (v27 >> 1)];
            v29 = v26(v28, (v15 + v25));
            if (v29)
            {
              v27 += ~(v27 >> 1);
            }

            else
            {
              v27 >>= 1;
            }

            if (v29)
            {
              v21 = v28 + 5;
            }
          }

          while (v27);
          v24 = -v16 / 2;
          a1 = v58;
          v19 = v62;
        }

        v20 = 0xCCCCCCCCCCCCCCCDLL * (v21 - a2);
        v22 = (&v15[5 * v24] + a1);
      }

      else
      {
        v20 = v62 / 2;
        v21 = &a2[5 * (v62 / 2)];
        v22 = a2;
        if ((a2 - a1) != v15)
        {
          v23 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1 - v15) >> 4);
          v22 = (v15 + a1);
          do
          {
            if ((*v60)(v21, &v22[5 * (v23 >> 1)]))
            {
              v23 >>= 1;
            }

            else
            {
              v22 += 5 * (v23 >> 1) + 5;
              v23 += ~(v23 >> 1);
            }
          }

          while (v23);
          v20 = v62 / 2;
          v19 = v62;
        }

        v24 = 0xCCCCCCCCCCCCCCCDLL * ((v22 - a1 - v15) >> 4);
      }

      v30 = v21;
      if (v22 != a2)
      {
        v30 = v22;
        if (a2 != v21)
        {
          v57 = v20;
          v56 = v24;
          a9 = sub_2993E28D4(v22, a2);
          v30 = v22 + 5;
          for (i = a2 + 5; i != v21; i += 5)
          {
            if (v30 == a2)
            {
              a2 = i;
            }

            a9 = sub_2993E28D4(v30, i);
            v30 += 5;
          }

          if (v30 != a2)
          {
            v32 = v30;
            v33 = a2;
            do
            {
              while (1)
              {
                a9 = sub_2993E28D4(v32, v33);
                v32 += 5;
                v33 += 5;
                if (v33 == v21)
                {
                  break;
                }

                if (v32 == a2)
                {
                  a2 = v33;
                }
              }

              v33 = a2;
            }

            while (v32 != a2);
          }

          v19 = v62;
          v24 = v56;
          v20 = v57;
        }
      }

      a5 = -(v24 + v16);
      v34 = v19 - v20;
      if (v24 + v20 >= v19 - (v24 + v20) - v16)
      {
        v35 = v24;
        v36 = -(v24 + v16);
        v37 = v20;
        sub_2993E2300(v30, v21, v59, v60, v36, v19 - v20, a7, a8, a9);
        v21 = v22;
        v34 = v37;
        a5 = v35;
        a3 = v30;
      }

      else
      {
        sub_2993E2300(v15 + v58, v22, v30, v60, v24, v20, a7, a8, a9);
        v17 = v30;
        a3 = v59;
      }

      v62 = v34;
      a1 = v17;
      a2 = v21;
      a4 = v60;
      if (!v34)
      {
        return a9.n128_f64[0];
      }
    }

    v63[0] = a7;
    v63[1] = &v64;
    v64 = 0;
    if (a5 <= v62)
    {
      if (a2 != a1)
      {
        v47 = 0;
        v48 = 0;
        do
        {
          v49 = &a7[v47 / 0x10];
          v50 = (a1 + v47);
          v51 = *(a1 + v47);
          *(v49 + 2) = *(a1 + v47 + 16);
          *v49 = v51;
          v50[1] = 0;
          v50[2] = 0;
          *v50 = 0;
          *(v49 + 3) = 0;
          *(v49 + 4) = 0;
          *(v49 + 5) = 0;
          *(v49 + 24) = *(a1 + v47 + 24);
          *(v49 + 5) = *(a1 + v47 + 40);
          v50[4] = 0;
          v50[5] = 0;
          v50[3] = 0;
          *(v49 + 24) = *(a1 + v47 + 48);
          *(v49 + 8) = 0;
          *(v49 + 9) = 0;
          *(v49 + 7) = 0;
          *(v49 + 56) = *(a1 + v47 + 56);
          *(v49 + 9) = *(a1 + v47 + 72);
          v50[7] = 0;
          v50[8] = 0;
          v50[9] = 0;
          ++v48;
          v47 += 80;
        }

        while (v50 + 10 != a2);
        v64 = v48;
        v52 = &a7[v47 / 0x10];
        v53 = &a7[v47 / 0x10 - 5];
        while (a2 != a3)
        {
          if ((*a4)(a2, a7))
          {
            sub_2993E2970(a1, a2);
            a2 += 5;
          }

          else
          {
            sub_2993E2970(a1, a7);
            a7 += 5;
          }

          a1 += 80;
          if (v52 == a7)
          {
            goto LABEL_80;
          }
        }

        do
        {
          sub_2993E2970(a1, a7);
          a1 += 80;
          v54 = v53 == a7;
          a7 += 5;
        }

        while (!v54);
      }
    }

    else if (a2 != a3)
    {
      v38 = 0;
      v39 = 0;
      do
      {
        v40 = &a7[v38];
        v41 = &a2[v38];
        v42 = a2[v38];
        *(v40 + 2) = a2[v38 + 1].n128_u64[0];
        *v40 = v42;
        v41->n128_u64[1] = 0;
        v41[1].n128_u64[0] = 0;
        v41->n128_u64[0] = 0;
        *(v40 + 3) = 0;
        *(v40 + 4) = 0;
        *(v40 + 5) = 0;
        *(v40 + 24) = *(&a2[v38 + 1] + 8);
        *(v40 + 5) = a2[v38 + 2].n128_u64[1];
        v41[2].n128_u64[0] = 0;
        v41[2].n128_u64[1] = 0;
        v41[1].n128_u64[1] = 0;
        *(v40 + 24) = a2[v38 + 3].n128_u16[0];
        *(v40 + 8) = 0;
        *(v40 + 9) = 0;
        *(v40 + 7) = 0;
        *(v40 + 56) = *(&a2[v38 + 3] + 8);
        *(v40 + 9) = a2[v38 + 4].n128_u64[1];
        v41[3].n128_u64[1] = 0;
        v41[4].n128_u64[0] = 0;
        v41[4].n128_u64[1] = 0;
        ++v39;
        v38 += 5;
      }

      while (&v41[5] != a3);
      v64 = v39;
      v43 = &a3[-5];
      v44 = &a7[v38];
      while (a2 != a1)
      {
        v45 = (*a4)(v44 - 5, a2 - 5);
        if (v45)
        {
          v46 = &a2[-5];
        }

        else
        {
          v46 = v44 - 5;
        }

        if (v45)
        {
          a2 -= 5;
        }

        else
        {
          v44 -= 5;
        }

        sub_2993E2970(v43, v46);
        v43 -= 80;
        if (v44 == a7)
        {
          goto LABEL_80;
        }
      }

      while (v44 != a7)
      {
        v44 -= 5;
        sub_2993E2970(v43, v44);
        v43 -= 80;
      }
    }

LABEL_80:
    sub_2993E2A0C(v63);
  }

  return a9.n128_f64[0];
}

void sub_2993E28BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_2993E2A0C(va);
  _Unwind_Resume(a1);
}

__n128 sub_2993E28D4(__n128 *a1, __n128 *a2)
{
  v2 = a1[1].n128_u64[0];
  result = *a1;
  v4 = a2[1].n128_u64[0];
  *a1 = *a2;
  a1[1].n128_u64[0] = v4;
  *a2 = result;
  a2[1].n128_u64[0] = v2;
  v5 = a1[1].n128_u64[1];
  a1[1].n128_u64[1] = a2[1].n128_u64[1];
  a2[1].n128_u64[1] = v5;
  v6 = a1[2].n128_u64[0];
  a1[2].n128_u64[0] = a2[2].n128_u64[0];
  a2[2].n128_u64[0] = v6;
  v7 = a1[2].n128_u64[1];
  a1[2].n128_u64[1] = a2[2].n128_u64[1];
  a2[2].n128_u64[1] = v7;
  LOWORD(v7) = a1[3].n128_u16[0];
  a1[3].n128_u16[0] = a2[3].n128_u16[0];
  a2[3].n128_u16[0] = v7;
  v8 = a1[3].n128_u64[1];
  a1[3].n128_u64[1] = a2[3].n128_u64[1];
  a2[3].n128_u64[1] = v8;
  v9 = a1[4].n128_u64[0];
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[4].n128_u64[0] = v9;
  v10 = a1[4].n128_u64[1];
  a1[4].n128_u64[1] = a2[4].n128_u64[1];
  a2[4].n128_u64[1] = v10;
  return result;
}

__n128 sub_2993E2970(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 23) = 0;
  *a2 = 0;
  sub_29922323C(a1 + 24, (a2 + 24));
  v5 = *(a1 + 56);
  *(a1 + 48) = *(a2 + 24);
  if (v5)
  {
    *(a1 + 64) = v5;
    operator delete(v5);
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
  }

  result = *(a2 + 56);
  *(a1 + 56) = result;
  *(a1 + 72) = *(a2 + 9);
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  *(a2 + 9) = 0;
  return result;
}

uint64_t *sub_2993E2A0C(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = a1[1];
    if (*v3)
    {
      v4 = 0;
      v5 = (v2 + 32);
      do
      {
        v6 = v5[3];
        if (v6)
        {
          v5[4] = v6;
          operator delete(v6);
        }

        v7 = *(v5 - 1);
        if (v7)
        {
          *v5 = v7;
          operator delete(v7);
        }

        if (*(v5 - 9) < 0)
        {
          operator delete(*(v5 - 4));
        }

        ++v4;
        v5 += 10;
      }

      while (v4 < *v3);
    }
  }

  return a1;
}

uint64_t sub_2993E2A9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, CFArrayRef *a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  *a5 = &unk_2A1F65C80;
  a5[1] = 0;
  a5[2] = 0;
  a5[3] = 0;
  return sub_2993E2B30(a5, a1, a2, a3, a4);
}

void sub_2993E2B10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v13 = v12;
  *v10 = v11;
  a10 = v13;
  sub_29922CB20(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_2993E2B30(uint64_t result, uint64_t a2, uint64_t a3, CFArrayRef *a4, int a5)
{
  v14[4] = *MEMORY[0x29EDCA608];
  if (a3)
  {
    v9 = result;
    v10 = result + 8;
    v11 = (*(*result + 24))(result);
    sub_2993C9E5C(v10, v11 + a3);
    v12 = 0;
    do
    {
      v14[0] = &unk_2A1F79588;
      v14[1] = v9;
      v14[3] = v14;
      sub_2993E2E40(v11 + v12, a2, a3, v12, a4, v14, a5);
      result = sub_2993E3B04(v14);
      ++v12;
    }

    while (a3 != v12);
  }

  v13 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2993E2C50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2993E3B04(va);
  _Unwind_Resume(a1);
}

void sub_2993E2C64(CFArrayRef theArray@<X0>, int a2@<W1>, void *a3@<X8>)
{
  *a3 = &unk_2A1F65C80;
  a3[1] = 0;
  a3[2] = 0;
  a3[3] = 0;
  sub_2993E2CF0(a3, theArray, a2);
}

void sub_2993E2CD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v13 = v12;
  *v10 = v11;
  a10 = v13;
  sub_29922CB20(&a10);
  _Unwind_Resume(a1);
}

void sub_2993E2CF0(uint64_t a1, CFArrayRef theArray, int a3)
{
  v12[4] = *MEMORY[0x29EDCA608];
  Count = CFArrayGetCount(theArray);
  if (Count)
  {
    v7 = Count;
    v8 = (*(*a1 + 24))(a1);
    sub_2993C9E5C(a1 + 8, v8 + v7);
    if (v7 >= 1)
    {
      for (i = 0; i != v7; ++i)
      {
        v10 = *(CFArrayGetValueAtIndex(theArray, i) + 3);
        v12[0] = &off_2A1F79618;
        v12[1] = a1;
        v12[3] = v12;
        sub_2993E316C(v8 + i, v10, i, v12, a3);
        sub_2993E3B04(v12);
      }
    }
  }

  v11 = *MEMORY[0x29EDCA608];
}

void sub_2993E2E40(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, CFArrayRef *a5, uint64_t a6, int a7)
{
  v39 = *(a2 + 2 * a4);
  sub_2993E3850(*(a6 + 24), a1, &v39, 1, 0.0);
  if (a7)
  {
    sub_29939FE38(v39, &v37);
    v12 = v37;
    for (i = v38; v12 != i; v12 += 12)
    {
      if (*(v12 + 23) < 0)
      {
        sub_29922C89C(__p, *v12, *(v12 + 1));
      }

      else
      {
        v14 = *v12;
        v36 = *(v12 + 2);
        *__p = v14;
      }

      if (v36 >= 0)
      {
        v15 = __p;
      }

      else
      {
        v15 = __p[0];
      }

      if (v36 >= 0)
      {
        v16 = SHIBYTE(v36);
      }

      else
      {
        v16 = __p[1];
      }

      sub_2993E3850(*(a6 + 24), a1, v15, v16, 0.0);
      if (SHIBYTE(v36) < 0)
      {
        operator delete(__p[0]);
      }
    }

    __p[0] = &v37;
    sub_299212B90(__p);
  }

  else
  {
    sub_29939FBB8(v39, &v37);
    v17 = v37;
    v18 = v38;
    if (v37 != v38)
    {
      do
      {
        LOWORD(__p[0]) = *v17;
        if (v39 == LOWORD(__p[0]))
        {
          v19 = 0.0;
        }

        else
        {
          v19 = -2.7000001;
        }

        sub_2993E3850(*(a6 + 24), a1, __p, 1, v19);
        ++v17;
      }

      while (v17 != v18);
      v17 = v37;
    }

    if (v17)
    {
      v38 = v17;
      operator delete(v17);
    }
  }

  if (a5)
  {
    v20 = sub_29939F19C(v39);
    v21 = -0.2;
    if (a4 >= 0x28)
    {
      v21 = 0.0;
    }

    if (a4 >= 0x14)
    {
      v22 = v21;
    }

    else
    {
      v22 = -1.0;
    }

    v23 = sub_299308694(a5, a4);
    if (v23)
    {
      v24 = *v23;
      if (*v23)
      {
        v25 = 0;
        v26 = *(v23 + 1);
        v27 = (v23 + 8);
        do
        {
          LOWORD(v37) = v24;
          if (v20)
          {
            v28 = sub_29939F19C(v24);
          }

          else
          {
            v28 = 1;
          }

          if ((((v24 & 0xFFDF) - 65) < 0x1Au || (((v24 - 12593) < 0x33u) & v28) != 0) && v39 != v24)
          {
            v30 = *(v27 - 1) - v26;
            if (v30 >= v22)
            {
              v31 = ((v24 & 0xFFDF) - 65);
              v32 = v30 <= -0.00001 ? v30 * 4.0 + -0.3 : 0.0;
              sub_2993E3850(*(a6 + 24), a1, &v37, 1, v32);
              v33 = v25 + 1;
              if (v31 < 0x1A || (++v25, v33 > 2))
              {
                v34 = v33 <= 2 ? 0 : 6;
                if (v31 < 0x1A)
                {
                  v34 = 8;
                }

                if ((v34 | 8) != 8)
                {
                  break;
                }
              }
            }
          }

          v29 = *v27;
          v27 += 2;
          v24 = v29;
        }

        while (v29);
      }
    }
  }
}

void sub_2993E3120(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void **__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17)
{
  __p = &a16;
  sub_299212B90(&__p);
  _Unwind_Resume(a1);
}

void sub_2993E316C(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, int a5)
{
  v38 = (*(*a2 + 8))(a2);
  sub_2993E3850(*(a4 + 24), a1, &v38, 1, 0.0);
  if (a5)
  {
    sub_29939FE38(v38, &v36);
    v10 = v36;
    for (i = v37; v10 != i; v10 += 12)
    {
      if (*(v10 + 23) < 0)
      {
        sub_29922C89C(__p, *v10, *(v10 + 1));
      }

      else
      {
        v12 = *v10;
        v35 = *(v10 + 2);
        *__p = v12;
      }

      if (v35 >= 0)
      {
        v13 = __p;
      }

      else
      {
        v13 = __p[0];
      }

      if (v35 >= 0)
      {
        v14 = SHIBYTE(v35);
      }

      else
      {
        v14 = __p[1];
      }

      sub_2993E3850(*(a4 + 24), a1, v13, v14, 0.0);
      if (SHIBYTE(v35) < 0)
      {
        operator delete(__p[0]);
      }
    }

    __p[0] = &v36;
    sub_299212B90(__p);
  }

  else
  {
    sub_29939FBB8(v38, &v36);
    v15 = v36;
    v16 = v37;
    if (v36 != v37)
    {
      do
      {
        LOWORD(__p[0]) = *v15;
        if (v38 == LOWORD(__p[0]))
        {
          v17 = 0.0;
        }

        else
        {
          v17 = -2.7000001;
        }

        sub_2993E3850(*(a4 + 24), a1, __p, 1, v17);
        ++v15;
      }

      while (v15 != v16);
      v15 = v36;
    }

    if (v15)
    {
      v37 = v15;
      operator delete(v15);
    }
  }

  v19 = a2[1];
  v18 = a2[2];
  if (v19 != v18)
  {
    v20 = sub_29939F19C(v38);
    v21 = 0;
    v22 = -0.2;
    if (a3 >= 0x28)
    {
      v22 = 0.0;
    }

    if (a3 >= 0x14)
    {
      v23 = v22;
    }

    else
    {
      v23 = -1.0;
    }

    v24 = *(v19 + 4);
    v25 = v19;
    do
    {
      v26 = *v25;
      if (v20)
      {
        v27 = sub_29939F19C(*v25);
      }

      else
      {
        v27 = 1;
      }

      if ((((v26 & 0xFFDF) - 65) < 0x1Au || (((v26 - 12593) < 0x33u) & v27) != 0) && v26 != v38)
      {
        v29 = v25[1] - v24;
        if (v29 >= v23)
        {
          v30 = ((v26 & 0xFFDF) - 65);
          v31 = v29 <= -0.00001 ? v29 * 4.0 + -0.3 : 0.0;
          sub_2993E3850(*(a4 + 24), a1, v19, 1, v31);
          v32 = v21 + 1;
          if (v30 < 0x1A || (++v21, v32 >= 3))
          {
            v33 = v32 <= 2 ? 0 : 6;
            if (v30 < 0x1A)
            {
              v33 = 7;
            }

            if (v33 != 7 && v33)
            {
              break;
            }
          }
        }
      }

      v25 += 2;
      v19 += 8;
    }

    while (v25 != v18);
  }
}

void sub_2993E3460(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void **__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17)
{
  __p = &a16;
  sub_299212B90(&__p);
  _Unwind_Resume(a1);
}

uint64_t sub_2993E34AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, CFArrayRef *a3@<X2>, int a4@<W3>, uint64_t *a5@<X8>)
{
  v13[4] = *MEMORY[0x29EDCA608];
  result = LXLatticeCreateMutable();
  *a5 = result;
  if (a2)
  {
    v11 = 0;
    do
    {
      v13[0] = &unk_2A1F79698;
      v13[1] = a5;
      v13[3] = v13;
      sub_2993E2E40(v11, a1, a2, v11, a3, v13, a4);
      result = sub_2993E3B04(v13);
      ++v11;
    }

    while (a2 != v11);
  }

  v12 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2993E3598(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2993E3B04(va);
  sub_2992E3B48(v2, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_2993E35B8@<X0>(const __CFArray *a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v11[4] = *MEMORY[0x29EDCA608];
  Count = CFArrayGetCount(a1);
  result = LXLatticeCreateMutable();
  *a3 = result;
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      v9 = *(CFArrayGetValueAtIndex(a1, i) + 3);
      v11[0] = &unk_2A1F79718;
      v11[1] = a3;
      v11[3] = v11;
      sub_2993E316C(i, v9, i, v11, a2);
      result = sub_2993E3B04(v11);
    }
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

CFIndex sub_2993E36C4@<X0>(CFArrayRef theArray@<X0>, uint64_t a2@<X8>)
{
  v4 = 0;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  while (1)
  {
    result = CFArrayGetCount(theArray);
    if (v4 >= result)
    {
      return result;
    }

    v6 = *(CFArrayGetValueAtIndex(theArray, v4) + 3);
    v7 = (*(*v6 + 8))(v6);
    v8 = v7;
    if ((v7 - 12593) > 0x32 || (v9 = *(v6 + 8), v10 = *(v6 + 16), v11 = *(v6 + 8), v11 == v10))
    {
      sub_2992174C4(a2, v7);
      ++v4;
    }

    else
    {
      v12 = v11[1];
      while (1)
      {
        v13 = *v11;
        v14 = ((v13 & 0xFFDF) - 65) > 0x19u || v13 == v7;
        if (!v14 && v12 - v11[1] < 0.0001)
        {
          break;
        }

        v11 += 2;
        if (v11 == v10)
        {
          goto LABEL_15;
        }
      }

      sub_2992174C4(a2, v13);
LABEL_15:
      v15 = *(a2 + 23);
      v16 = v4 + 1;
      if ((v15 & 0x80u) != 0)
      {
        v15 = *(a2 + 8);
      }

      v4 = v15;
      if (v15 != v16)
      {
        sub_2992174C4(a2, v8);
        v4 = v16;
      }
    }
  }
}

void sub_2993E3820(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2993E3850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v9[0] = a3;
  v9[1] = a4;
  v8 = a2;
  v7 = a5;
  v6 = 1;
  if (!a1)
  {
    sub_2991A2240();
  }

  return (*(*a1 + 48))(a1, &v8, v9, &v7, &v6);
}

uint64_t sub_2993E392C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F79588;
  a2[1] = v2;
  return result;
}

uint64_t sub_2993E397C(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F795F8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2993E39C8(uint64_t a1, uint64_t a2, void *__src, unint64_t a4, uint64_t a5, double a6)
{
  v11 = a4;
  v12 = __src;
  v10 = a6;
  v9 = a5;
  v6 = a1 + 24 * a2;
  v7 = *(v6 + 8);
  if (v7 >= *(v6 + 16))
  {
    result = sub_2993910C4(v6, &v12, &v11, &v10, &v9);
  }

  else
  {
    sub_2993E3A50(*(v6 + 8), __src, a4, a5, a6);
    result = v7 + 40;
    *(v6 + 8) = v7 + 40;
  }

  *(v6 + 8) = result;
  return result;
}

double *sub_2993E3A50(double *__dst, void *__src, unint64_t a3, uint64_t a4, double a5)
{
  if (a3 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_299212A30();
  }

  v8 = __dst;
  if (a3 >= 0xB)
  {
    if ((a3 | 3) == 0xB)
    {
      v10 = 13;
    }

    else
    {
      v10 = (a3 | 3) + 1;
    }

    sub_299212A48(__dst, v10);
  }

  *(__dst + 23) = a3;
  v9 = __dst;
  if (a3)
  {
    __dst = memmove(__dst, __src, 2 * a3);
  }

  *(v9 + a3) = 0;
  v8[3] = a5;
  *(v8 + 4) = a4;
  return __dst;
}

uint64_t sub_2993E3B04(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_2993E3BF4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &off_2A1F79618;
  a2[1] = v2;
  return result;
}

uint64_t sub_2993E3C44(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F79678))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2993E3D00(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F79698;
  a2[1] = v2;
  return result;
}

void sub_2993E3D2C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v6 = *a2;
  v7 = *a4;
  v8 = *a5;
  v9 = CFStringCreateWithCharacters(0, *a3, *(a3 + 8));
  v10 = **(a1 + 8);
  LXLatticeAddNode();
  if (v9)
  {
    CFRelease(v9);
  }
}

void sub_2993E3DB0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_299219AB4(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_2993E3DC8(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F796F8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2993E3E84(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F79718;
  a2[1] = v2;
  return result;
}

void sub_2993E3EB0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v6 = *a2;
  v7 = *a4;
  v8 = *a5;
  v9 = CFStringCreateWithCharacters(0, *a3, *(a3 + 8));
  v10 = **(a1 + 8);
  LXLatticeAddNode();
  if (v9)
  {
    CFRelease(v9);
  }
}

void sub_2993E3F34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_299219AB4(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_2993E3F4C(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F79778))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_2993E3F98(void *a1, void *a2, unint64_t a3, int a4)
{
  v5 = a2;
  *a1 = 0;
  if (a4)
  {
    if (*a2 != 0x11181BE3ELL)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      sub_2993E4050(exception);
      __cxa_throw(exception, off_29EF0BC88, MEMORY[0x29EDC9360]);
    }

    v5 = (a2 + 1);
    a3 -= 8;
  }

  sub_29932265C(0, 0, v5, a3);
  *a1 = v7;
  return a1;
}

std::logic_error *sub_2993E4050(std::logic_error *a1)
{
  result = std::logic_error::logic_error(a1, "header check failed");
  result->__vftable = (MEMORY[0x29EDC95F0] + 16);
  return result;
}

uint64_t *sub_2993E408C(uint64_t *a1, uint64_t **a2, _DWORD **a3)
{
  *a1 = 0;
  v5 = malloc_type_malloc(0x48uLL, 0x108004094C1867FuLL);
  v6 = v5;
  if (v5)
  {
    v5[8] = 0;
    *(v5 + 2) = 0u;
    *(v5 + 3) = 0u;
    *v5 = 0u;
    *(v5 + 1) = 0u;
  }

  __p = 0;
  v34 = 0;
  v35 = 0;
  __src = 0;
  v31 = 0;
  v32 = 0;
  v7 = *a2;
  v8 = a2[1];
  do
  {
    v9 = v7;
    if (*(v7 + 23) < 0)
    {
      v9 = *v7;
    }

    v10 = v34;
    if (v34 >= v35)
    {
      v12 = (v34 - __p) >> 3;
      if ((v12 + 1) >> 61)
      {
        sub_299212A8C();
      }

      v13 = (v35 - __p) >> 2;
      if (v13 <= v12 + 1)
      {
        v13 = v12 + 1;
      }

      if (v35 - __p >= 0x7FFFFFFFFFFFFFF8)
      {
        v14 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v13;
      }

      if (v14)
      {
        sub_2991C1E60(&__p, v14);
      }

      v15 = (8 * v12);
      *v15 = v9;
      v11 = 8 * v12 + 8;
      v16 = v15 - (v34 - __p);
      memcpy(v16, __p, v34 - __p);
      v17 = __p;
      __p = v16;
      v34 = v11;
      v35 = 0;
      if (v17)
      {
        operator delete(v17);
      }
    }

    else
    {
      *v34 = v9;
      v11 = (v10 + 8);
    }

    v34 = v11;
    v18 = *(v7 + 23);
    if (v18 < 0)
    {
      v18 = v7[1];
    }

    v19 = v31;
    if (v31 >= v32)
    {
      v21 = __src;
      v22 = v31 - __src;
      v23 = (v31 - __src) >> 3;
      v24 = v23 + 1;
      if ((v23 + 1) >> 61)
      {
        sub_299212A8C();
      }

      v25 = v32 - __src;
      if ((v32 - __src) >> 2 > v24)
      {
        v24 = v25 >> 2;
      }

      if (v25 >= 0x7FFFFFFFFFFFFFF8)
      {
        v26 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v26 = v24;
      }

      if (v26)
      {
        sub_299236FB8(&__src, v26);
      }

      *(8 * v23) = v18;
      v20 = 8 * v23 + 8;
      memcpy(0, v21, v22);
      v27 = __src;
      __src = 0;
      v31 = v20;
      v32 = 0;
      if (v27)
      {
        operator delete(v27);
      }
    }

    else
    {
      *v31 = v18;
      v20 = (v19 + 8);
    }

    v31 = v20;
    v7 += 3;
  }

  while (v7 != v8);
  sub_2992AA48C(v6, (v34 - __p) >> 3, __p, __src, *a3);
  *a1 = v6;
  if (__src)
  {
    v31 = __src;
    operator delete(__src);
  }

  if (__p)
  {
    v34 = __p;
    operator delete(__p);
  }

  return a1;
}

void sub_2993E42DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

void **sub_2993E4318@<X0>(void *a1@<X0>, _DWORD **a2@<X1>, unsigned __int8 *a3@<X2>, unint64_t a4@<X3>, void ***a5@<X8>)
{
  if (a3 && a4)
  {
    v10 = sub_2992B0F2C();
    v11 = *(v10 + 8 * (**a2 & 3));
    result = (*(*v11 + 16))(v11, *a1, a2, *a3);
    if (a4 >= 2)
    {
      v13 = a4 - 1;
      v14 = a3 + 1;
      do
      {
        if (*a5 == 0 || (**a5 & 3) == 0)
        {
          break;
        }

        v15 = *a1;
        v16 = *v14;
        (*(**(v10 + 8 * (**a5 & 3)) + 16))(&v19);
        sub_2992B0BA8(a5, &v19);
        v17 = v20;
        v20 = 0;
        if (v17)
        {
          v18 = sub_2992A5BE8(v17);
          MEMORY[0x29C29BFB0](v18, 0x20C4093837F09);
        }

        result = v19;
        v19 = 0;
        if (result)
        {
          result = MEMORY[0x29C29BFB0](result, 0x1010C40E4C6A875);
        }

        ++v14;
        --v13;
      }

      while (v13);
    }
  }

  else
  {

    return sub_2992B0984(a5, 0);
  }

  return result;
}

uint64_t sub_2993E44C8(void *a1, _DWORD **a2)
{
  v4 = sub_2992B0F2C();
  if (!*a1)
  {
    return 0;
  }

  v5 = *(**(v4 + 8 * (**a2 & 3)) + 40);

  return v5();
}

uint64_t BurstTrieCompile(uint64_t a1, char *a2)
{
  v39[19] = *MEMORY[0x29EDCA608];
  v32[0] = &unk_2A1F68348;
  v32[1] = 0;
  sub_299257A28(v32, "UTF-8", a2);
  sub_2991C70DC(v37);
  v2 = v37[0];
  if ((v38[*(v37[0] - 24) + 16] & 5) != 0)
  {
    v3 = 1;
  }

  else
  {
    v29 = 0;
    v30 = 0;
    v31 = 0;
    memset(v28, 0, sizeof(v28));
    __src = 0;
    v26 = 0;
    v27 = 0;
    v4 = MEMORY[0x29EDC93D0];
    while (1)
    {
      std::ios_base::getloc((v37 + *(v2 - 24)));
      v5 = std::locale::use_facet(&v33, v4);
      (v5->__vftable[2].~facet_0)(v5, 10);
      std::locale::~locale(&v33);
      v6 = std::istream::getline();
      if ((*(v6 + *(*v6 - 24) + 32) & 5) != 0)
      {
        break;
      }

      sub_2992553B4(v36, &v29, 2uLL);
      if (*(v29 + 23) < 0)
      {
        sub_2991A110C(__p, *v29, *(v29 + 1));
      }

      else
      {
        v7 = *v29;
        __p[0].__r_.__value_.__r.__words[2] = *(v29 + 2);
        *&__p[0].__r_.__value_.__l.__data_ = v7;
      }

      sub_299257B30(v32, __p);
      sub_29924BA6C(v28, __p);
      v8 = v29 + 24;
      if (*(v29 + 47) < 0)
      {
        v8 = *v8;
      }

      v9 = atoi(v8);
      v10 = v26;
      if (v26 >= v27)
      {
        v12 = __src;
        v13 = v26 - __src;
        v14 = (v26 - __src) >> 2;
        v15 = v14 + 1;
        if ((v14 + 1) >> 62)
        {
          sub_299212A8C();
        }

        v16 = v27 - __src;
        if ((v27 - __src) >> 1 > v15)
        {
          v15 = v16 >> 1;
        }

        if (v16 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v17 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = v15;
        }

        if (v17)
        {
          sub_2992F86B0(&__src, v17);
        }

        *(4 * v14) = v9;
        v11 = 4 * v14 + 4;
        memcpy(0, v12, v13);
        v18 = __src;
        __src = 0;
        v26 = v11;
        v27 = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      else
      {
        *v26 = v9;
        v11 = (v10 + 4);
      }

      v26 = v11;
      v19 = v29;
      v20 = v30;
      while (v20 != v19)
      {
        v21 = *(v20 - 1);
        v20 -= 3;
        if (v21 < 0)
        {
          operator delete(*v20);
        }
      }

      v30 = v19;
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }

      v2 = v37[0];
    }

    sub_2993E408C(&v33, v28, &__src);
    sub_2991EB0E0(__p);
    if ((__p[1].__r_.__value_.__s.__data_[*(__p[0].__r_.__value_.__r.__words[0] - 24) + 8] & 5) != 0)
    {
      v3 = 1;
    }

    else
    {
      std::ostream::write();
      if (v33.__locale_)
      {
        v22 = *(v33.__locale_ + 2) - *(v33.__locale_ + 1) + *(v33.__locale_ + 3);
      }

      std::ostream::write();
      if (!std::filebuf::close())
      {
        std::ios_base::clear((__p + *(__p[0].__r_.__value_.__r.__words[0] - 24)), *(&__p[1].__r_.__value_.__r.__words[1] + *(__p[0].__r_.__value_.__r.__words[0] - 24)) | 4);
      }

      v3 = 0;
    }

    __p[0].__r_.__value_.__r.__words[0] = *MEMORY[0x29EDC9520];
    *(__p[0].__r_.__value_.__r.__words + *(__p[0].__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x29EDC9520] + 24);
    MEMORY[0x29C29BBF0](&__p[0].__r_.__value_.__r.__words[1]);
    std::ostream::~ostream();
    MEMORY[0x29C29BF00](&v35);
    if (v33.__locale_)
    {
      sub_2993226F0(v33.__locale_);
    }

    if (__src)
    {
      v26 = __src;
      operator delete(__src);
    }

    __p[0].__r_.__value_.__r.__words[0] = v28;
    sub_299212B90(__p);
    __p[0].__r_.__value_.__r.__words[0] = &v29;
    sub_299212B90(__p);
  }

  v37[0] = *MEMORY[0x29EDC9518];
  *(v37 + *(v37[0] - 24)) = *(MEMORY[0x29EDC9518] + 24);
  MEMORY[0x29C29BBF0](v38);
  std::istream::~istream();
  MEMORY[0x29C29BF00](v39);
  sub_299257C90(v32);
  v23 = *MEMORY[0x29EDCA608];
  return v3;
}

void sub_2993E4AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::locale a22, void *a23)
{
  if (a22.__locale_)
  {
    sub_2993226F0(a22.__locale_);
  }

  if (__p)
  {
    operator delete(__p);
  }

  a23 = &a14;
  sub_299212B90(&a23);
  a23 = &a17;
  sub_299212B90(&a23);
  sub_2991D64B0(&STACK[0x6B0], MEMORY[0x29EDC9518]);
  MEMORY[0x29C29BF00](&STACK[0x858]);
  sub_299257C90(&a20);
  _Unwind_Resume(a1);
}

uint64_t sub_2993E4BB0(uint64_t a1, uint64_t a2, int a3, void *a4, unsigned int a5)
{
  LODWORD(v5) = a5;
  if (*(a2 + 109) != 1)
  {
    __src = 0;
    v11 = sub_2993E4CD4(a1, a2, &__src);
    if (v11 >= v5)
    {
      v5 = v5;
    }

    else
    {
      v5 = v11;
    }

    v8 = __src;
    if (v5)
    {
      v12 = __src == 0;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      return v5;
    }

    v13 = 2 * v5;
LABEL_23:
    memcpy(a4, v8, v13);
    return v5;
  }

  v8 = *(a2 + 48);
  v9 = *(a2 + 88);
  v10 = v9 >> 1;
  if (!a3 || v9 < 2)
  {
    if (v10 >= a5)
    {
      v5 = a5;
    }

    else
    {
      v5 = v10;
    }

    v13 = (2 * v5);
    goto LABEL_23;
  }

  if (!v8)
  {
    v10 = 0;
  }

  v17[0] = v8;
  v17[1] = v10;
  sub_299216DAC(v17, 0, 0, 0, &__src);
  if (v20 < 0)
  {
    if (v19 >= v5)
    {
      v15 = v5;
    }

    else
    {
      v15 = v19;
    }

    v16 = __src;
    memcpy(a4, __src, 2 * v15);
    operator delete(v16);
    return v15;
  }

  else
  {
    if (v20 >= v5)
    {
      v5 = v5;
    }

    else
    {
      v5 = v20;
    }

    memcpy(a4, &__src, 2 * (v5 & 0x7FFF));
  }

  return v5;
}

uint64_t sub_2993E4CD4(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = 0;
  v3 = *(a2 + 56);
  if (v3)
  {
    *a3 = v3;
    LODWORD(result) = -1;
    do
    {
      v5 = *v3++;
      result = (result + 1);
    }

    while (v5);
  }

  else
  {
    v6 = 0;
    (*(*a1 + 96))(a1);
    return v6 >> 1;
  }

  return result;
}

uint64_t sub_2993E4F9C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v3 = result;
    v4 = 0;
    result = 0;
    do
    {
      if (*(v3 + 48) && *(v3 + 88))
      {
        ++v4;
        if (a2 && a3 + a2 < v4)
        {
          return result;
        }

        if (v4 > a3)
        {
          result = (result + *(v3 + 86));
        }
      }

      v3 = *(v3 + 8);
    }

    while (v3);
  }

  return result;
}

uint64_t sub_2993E4FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  (*(*a1 + 264))(a1, a4 != 0);
  if (a4)
  {
    v12 = *a4;
    v13 = 2 * a4[1];
    v14 = *(a4 + 16);
    v15 = *(a4 + 17);
    v16 = *(*a1 + 56);

    return v16(a1, v12, v13, a5, a6, v14, v15);
  }

  else
  {
    v18 = *(*a1 + 48);

    return v18(a1, a2, 2 * a3, a5, a6);
  }
}

uint64_t sub_2993E5110@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = (*(*a1 + 240))(a1);
  if (!result)
  {
    sub_2993D4C48();
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

void sub_2993E5688(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  sub_299273CA0(&a13);
  (*(*v23 + 336))(v23);
  _Unwind_Resume(a1);
}

uint64_t sub_2993E570C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1[1] - *a1) >> 6;
  v4 = v3 + 1;
  if ((v3 + 1) >> 58)
  {
    sub_299212A8C();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 5 > v4)
  {
    v4 = v6 >> 5;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFC0)
  {
    v7 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  v21[4] = a1;
  if (v7)
  {
    if (!(v7 >> 58))
    {
      operator new();
    }

    sub_29919600C();
  }

  v8 = v3 << 6;
  *v8 = *a2;
  v9 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v10 = *(a3 + 16);
  *(v8 + 24) = *a3;
  *(v8 + 16) = v9;
  *(v8 + 40) = v10;
  *(v8 + 56) = *(a3 + 32);
  v12 = *a1;
  v11 = a1[1];
  v13 = v8 + *a1 - v11;
  if (*a1 != v11)
  {
    v14 = *a1;
    v15 = v8 + *a1 - v11;
    do
    {
      v16 = *v14;
      *(v15 + 16) = *(v14 + 2);
      *v15 = v16;
      *(v14 + 1) = 0;
      *(v14 + 2) = 0;
      *v14 = 0;
      v17 = *(v14 + 24);
      v18 = *(v14 + 40);
      *(v15 + 56) = *(v14 + 7);
      *(v15 + 40) = v18;
      *(v15 + 24) = v17;
      v14 += 4;
      v15 += 64;
    }

    while (v14 != v11);
    do
    {
      if (*(v12 + 23) < 0)
      {
        operator delete(*v12);
      }

      v12 += 64;
    }

    while (v12 != v11);
    v12 = *a1;
  }

  *a1 = v13;
  a1[1] = v8 + 64;
  v19 = a1[2];
  a1[2] = 0;
  v21[2] = v12;
  v21[3] = v19;
  v21[0] = v12;
  v21[1] = v12;
  sub_2993E589C(v21);
  return v8 + 64;
}

uint64_t sub_2993E589C(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 8;
      *(a1 + 16) = v2 - 8;
      if (*(v2 - 41) < 0)
      {
        operator delete(*v4);
        v4 = *(a1 + 16);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_2993E5900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, CFArrayRef *a3@<X2>, void *a4@<X8>)
{
  *a4 = &unk_2A1F65C80;
  a4[1] = 0;
  a4[2] = 0;
  a4[3] = 0;
  return sub_2993E5990(a4, a1, a2, a3);
}

void sub_2993E5970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v13 = v12;
  *v10 = v11;
  a10 = v13;
  sub_29922CB20(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_2993E5990(uint64_t result, uint64_t a2, uint64_t a3, CFArrayRef *a4)
{
  v34 = *MEMORY[0x29EDCA608];
  if (a3)
  {
    v6 = result;
    v7 = result + 8;
    v8 = (*(*result + 24))(result);
    sub_2993C9E5C(v7, v8 + a3);
    for (i = 0; i != a3; ++i)
    {
      __src = *(a2 + 2 * i);
      result = sub_2993E5F60(v6, i + v8, &__src, 1, 1, 0.0);
      v10 = __src;
      if ((atomic_load_explicit(&qword_2A1461860, memory_order_acquire) & 1) == 0)
      {
        result = __cxa_guard_acquire(&qword_2A1461860);
        if (result)
        {
          v32 = xmmword_29942ACA0;
          v33 = 237309475;
          qword_2A1461870 = 0;
          qword_2A1461878 = 0;
          qword_2A1461868 = 0;
          sub_2993E6178();
        }
      }

      v11 = qword_2A1461868;
      if (qword_2A1461868 != qword_2A1461870)
      {
        while (*v11 != v10 && v11[1] != v10)
        {
          v11 += 2;
          if (v11 == qword_2A1461870)
          {
            goto LABEL_13;
          }
        }
      }

      if (v11 == qword_2A1461870)
      {
LABEL_13:
        v13 = 0;
      }

      else
      {
        v13 = v11[*v11 == v10];
      }

      LOWORD(v32) = v13;
      v14 = dbl_29942ACB0[__src == v13];
      v15 = v13 != 0;
      if (a4)
      {
        if (i >= 0x28)
        {
          v16 = 0.0;
        }

        else
        {
          v16 = -0.2;
        }

        if (i >= 0x14)
        {
          v17 = v16;
        }

        else
        {
          v17 = -1.0;
        }

        result = sub_299308694(a4, i);
        if (!result)
        {
LABEL_36:
          if ((v15 & 1) == 0)
          {
            continue;
          }

LABEL_39:
          result = sub_2993E5F60(v6, i + v8, &v32, 1, 1, v14);
          continue;
        }

        v18 = *result;
        if (*result)
        {
          v19 = 0;
          v20 = *(result + 4);
          v21 = (result + 8);
          while (1)
          {
            v30 = v18;
            v22 = *(v21 - 1) - v20;
            if (v18 != __src && v22 >= v17)
            {
              v24 = v22 * 4.0 + -0.3;
              v25 = v18 != v32;
              if (v24 < v14 && v18 == v32)
              {
                v24 = v14;
              }

              result = sub_2993E5F60(v6, i + v8, &v30, 1, 1, v24);
              v15 &= v25;
              if (v19 > 1)
              {
                goto LABEL_36;
              }

              ++v19;
            }

            v27 = *v21;
            v21 += 2;
            v18 = v27;
            if (!v27)
            {
              goto LABEL_36;
            }
          }
        }
      }

      if (v13)
      {
        goto LABEL_39;
      }
    }
  }

  v28 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2993E5CC4(const __CFArray *a1@<X0>, void *a2@<X8>)
{
  *a2 = &unk_2A1F65C80;
  a2[1] = 0;
  v4 = (a2 + 1);
  a2[2] = 0;
  a2[3] = 0;
  Count = CFArrayGetCount(a1);
  sub_2993C9E5C(v4, Count);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
      v8 = ValueAtIndex[3];
      v9 = v8[1];
      v10 = v8[2];
      if (v9 == v10)
      {
        __src[0] = (*(*v8 + 8))(ValueAtIndex[3]);
        sub_2993E5F60(a2, i, __src, 1, 1, 0.0);
        v9 = v8[1];
        v10 = v8[2];
      }

      while (v9 != v10)
      {
        sub_2993E5F60(a2, i, v9, 1, 1, 0.0);
        v9 += 8;
      }
    }
  }
}

void sub_2993E5DFC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *v2 = v3;
  sub_29922CB20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2993E5E20@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, void *a3@<X8>, float a4@<S0>)
{
  *a3 = &unk_2A1F65C80;
  a3[1] = 0;
  v4 = a3 + 1;
  a3[2] = 0;
  a3[3] = 0;
  if (a2)
  {
    v6 = a2;
    v7 = result;
    sub_2993C9E5C((a3 + 1), a2);
    v8 = 0;
    v9 = a4 / v6;
    do
    {
      v11 = *v7++;
      v10 = v11;
      v18 = v11;
      v17 = &v18;
      v16 = 1;
      v15 = v9;
      v14 = 1;
      v12 = *v4 + v8;
      v13 = *(v12 + 8);
      if (v13 >= *(v12 + 16))
      {
        result = sub_2993E622C(*v4 + v8, &v17, &v16, &v15, &v14);
      }

      else
      {
        *(v13 + 23) = 1;
        *v13 = v10;
        *(v13 + 2) = 0;
        *(v13 + 24) = v9;
        *(v13 + 32) = 1;
        result = v13 + 40;
        *(v12 + 8) = v13 + 40;
      }

      *(v12 + 8) = result;
      v8 += 24;
      --v6;
    }

    while (v6);
  }

  return result;
}

void sub_2993E5F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  *v4 = v5;
  sub_29922CB20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2993E5F60(uint64_t a1, uint64_t a2, void *__src, int a4, int a5, double a6)
{
  v12 = __src;
  v11 = a4;
  v10 = a6;
  v9 = a5;
  v6 = *(a1 + 8) + 24 * a2;
  v7 = *(v6 + 8);
  if (v7 >= *(v6 + 16))
  {
    result = sub_2993E5FF4(v6, &v12, &v11, &v10, &v9);
  }

  else
  {
    sub_2993C9408(*(v6 + 8), __src, a4, a5, a6);
    result = v7 + 40;
    *(v6 + 8) = v7 + 40;
  }

  *(v6 + 8) = result;
  return result;
}

uint64_t sub_2993E5FF4(uint64_t a1, void **a2, int *a3, double *a4, int *a5)
{
  v5 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 3);
  v6 = v5 + 1;
  if (v5 + 1 > 0x666666666666666)
  {
    sub_299212A8C();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3) > v6)
  {
    v6 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 3) >= 0x333333333333333)
  {
    v9 = 0x666666666666666;
  }

  else
  {
    v9 = v6;
  }

  v19 = a1;
  if (v9)
  {
    sub_299391224(a1, v9);
  }

  v16 = 0;
  v17 = 40 * v5;
  v18 = 40 * v5;
  sub_2993C9408((40 * v5), *a2, *a3, *a5, *a4);
  *&v18 = 40 * v5 + 40;
  v10 = *(a1 + 8);
  v11 = 40 * v5 + *a1 - v10;
  sub_29939127C(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_2993913B8(&v16);
  return v15;
}

void sub_2993E6130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2993913B8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2993E6144(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_2993E6208(_Unwind_Exception *exception_object)
{
  if (qword_2A1461868)
  {
    qword_2A1461870 = qword_2A1461868;
    operator delete(qword_2A1461868);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2993E622C(uint64_t a1, void **a2, int *a3, float *a4, int *a5)
{
  v5 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 3);
  v6 = v5 + 1;
  if (v5 + 1 > 0x666666666666666)
  {
    sub_299212A8C();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3) > v6)
  {
    v6 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 3) >= 0x333333333333333)
  {
    v9 = 0x666666666666666;
  }

  else
  {
    v9 = v6;
  }

  v19 = a1;
  if (v9)
  {
    sub_299391224(a1, v9);
  }

  v16 = 0;
  v17 = 40 * v5;
  v18 = 40 * v5;
  sub_2993C9408((40 * v5), *a2, *a3, *a5, *a4);
  *&v18 = 40 * v5 + 40;
  v10 = *(a1 + 8);
  v11 = 40 * v5 + *a1 - v10;
  sub_29939127C(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_2993913B8(&v16);
  return v15;
}

void sub_2993E636C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2993913B8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2993E6380(uint64_t a1, CFDictionaryRef theDict)
{
  *a1 = 0;
  Value = CFDictionaryGetValue(theDict, kMecabraCreationLearningEnabledKey[0]);
  *(a1 + 4) = sub_2992791C0(Value, 1);
  v5 = CFDictionaryGetValue(theDict, kMecabraCreationDynamicLanguageModelEnabledKey[0]);
  *(a1 + 5) = sub_2992791C0(v5, 1);
  v6 = CFDictionaryGetValue(theDict, kMecabraCreationUseSpecialSymbolKey[0]);
  *(a1 + 6) = sub_2992791C0(v6, 0);
  v7 = CFDictionaryGetValue(theDict, kMecabraCreationSyncLearningDataKey[0]);
  *(a1 + 7) = sub_2992791C0(v7, 1);
  v8 = CFDictionaryGetValue(theDict, kMecabraCreationLiteModeKey[0]);
  *(a1 + 8) = sub_2992791C0(v8, 0);
  v9 = CFDictionaryGetValue(theDict, kMecabraCreationEnableABTestingKey[0]);
  *(a1 + 9) = sub_2992791C0(v9, 0);
  v10 = CFDictionaryGetValue(theDict, kMecabraCreationEnableUnilmKey[0]);
  *(a1 + 10) = sub_2992791C0(v10, 0);
  v11 = CFDictionaryGetValue(theDict, kMecabraCreationThaiMultiKeyLayoutKey[0]);
  *(a1 + 11) = sub_2992791C0(v11, 0);
  v12 = CFDictionaryGetValue(theDict, kMecabraCreationCustomSystemDictionaryDirectoryKey[0]);
  *(a1 + 16) = sub_2992792A8(v12);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v13 = CFDictionaryGetValue(theDict, kMecabraCreationCustomStaticLanguageModelBundleKey[0]);
  *(a1 + 40) = sub_2992792A8(v13);
  v14 = CFDictionaryGetValue(theDict, kMecabraCreationCustomStaticDialectLanguageModelBundleKey[0]);
  v15 = sub_2992792A8(v14);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = v15;
  *(a1 + 72) = 0;
  valuePtr = 0;
  v16 = CFDictionaryGetValue(theDict, kMecabraCreationInputMethodTypeKey[0]);
  if (v16)
  {
    CFNumberGetValue(v16, kCFNumberCFIndexType, &valuePtr);
    *a1 = valuePtr;
  }

  if (*(a1 + 8) == 1)
  {
    *(a1 + 4) = 0;
  }

  else if (*(a1 + 4))
  {
    v17 = CFDictionaryGetValue(theDict, kMecabraCreationCustomLearningDictionaryDirectoryKey[0]);
    v18 = sub_2992792A8(v17);
    sub_29920FE30((a1 + 24), v18);
    *(a1 + 4) = *(a1 + 24) != 0;
  }

  if (*(a1 + 5) == 1)
  {
    v19 = CFDictionaryGetValue(theDict, kMecabraCreationCustomDynamicLanguageModelDirectoryKey[0]);
    v20 = sub_299279348(v19);
    sub_29920FE30((a1 + 56), v20);
  }

  v21 = CFDictionaryGetValue(theDict, kMecabraCreationCustomAdditionalDictionaryDirectoriesKey[0]);
  if (v21)
  {
    sub_299240D80((a1 + 32), v21);
  }

  v22 = CFDictionaryGetValue(theDict, kMecabraCreationSecondaryLocaleKey[0]);
  if (v22)
  {
    sub_299229BC0((a1 + 64), v22);
  }

  v23 = CFDictionaryGetValue(theDict, kMecabraCreationWubixingStandardKey[0]);
  if (v23)
  {
    CFNumberGetValue(v23, kCFNumberCFIndexType, &valuePtr);
    *(a1 + 72) = valuePtr;
  }

  return a1;
}

void sub_2993E66AC(_Unwind_Exception *a1)
{
  sub_299219AB4(v6, 0);
  sub_29920FE30(v5, 0);
  sub_29920FE30((v1 + 48), 0);
  sub_29920FE30(v2 + 3, 0);
  sub_299229F00(v4, 0);
  sub_29920FE30(v3, 0);
  sub_29920FE30(v2, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_2993E6728(uint64_t a1, const __CFString *a2)
{
  *a1 = CFLocaleCreate(0, a2);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x29EDC57F0], a2);
  CFDictionaryAddValue(Mutable, *MEMORY[0x29EDC57E8], *MEMORY[0x29EDB8F00]);
  v5 = LXLexiconCreate();
  sub_299291748((a1 + 8), v5);
  if (*(a1 + 8))
  {
    operator new();
  }

  sub_299291748((a1 + 8), 0);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return a1;
}

void sub_2993E68F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_299274AE8(va, 0);
  v5 = *(v2 + 16);
  *(v2 + 16) = 0;
  if (v5)
  {
    (*(*v5 + 72))(v5);
  }

  sub_299291748(v3, 0);
  sub_299253084(v2, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_2993E6964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[4] = *MEMORY[0x29EDCA608];
  result = *(a1 + 16);
  if (result)
  {
    v7[0] = &unk_2A1F79CA0;
    v7[1] = a1;
    v7[2] = a4;
    v7[3] = v7;
    sub_2993E8594(result, a2, v7);
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2993E69FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2993EA098(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2993E6A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[4] = *MEMORY[0x29EDCA608];
  result = *(a1 + 16);
  if (result)
  {
    v7[0] = &unk_2A1F79DA0;
    v7[1] = a1;
    v7[2] = a4;
    v7[3] = v7;
    sub_2993E6AB4(result, a2, a3, v7);
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2993E6AA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2993EA098(va);
  _Unwind_Resume(a1);
}

void sub_2993E6AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = *MEMORY[0x29EDCA608];
  v4[0] = &unk_2A1F79D20;
  v4[1] = a4;
  v4[3] = v4;
  sub_2993E98A4();
}

void sub_2993E6B38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2993E9824(va);
  _Unwind_Resume(a1);
}

BOOL sub_2993E6B4C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(a1 + 16);
  if (!v5)
  {
    return 0;
  }

  v14 = 0;
  v7 = 0;
  if ((**v5)(v5, a2, 2 * a3, &v14))
  {
    v8 = *(a1 + 8);
    v9 = LXLexiconCopyEntryForTokenID();
    v7 = v9 != 0;
    if (v9)
    {
      v10 = v9;
      MetaFlags = LXEntryGetMetaFlags();
      LXEntryGetProbability();
      *a4 = MetaFlags;
      a4[1] = v12;
      CFRelease(v10);
    }
  }

  return v7;
}

uint64_t sub_2993E6C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(*a1 + 24))(&v12);
  (*(*a1 + 40))(&v11, a1, v12, a2, a3);
  v8 = v11;
  v11 = 0;
  sub_2993E7BB0(&v12, v8);
  sub_2993E7BB0(&v11, 0);
  v9 = (*(*a1 + 48))(a1, v12, a4);
  sub_2993E7BB0(&v12, 0);
  return v9;
}

void sub_2993E6D28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2993E7BB0(va, 0);
  _Unwind_Resume(a1);
}

const void ***sub_2993E6D44(const void ***result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a2 && (a3 & 1) == 0)
  {
    v7 = result;
    v13 = 0;
    ((*result)[3])(&v12);
    v11 = 0;
    if (a3)
    {
      v8 = 0;
      do
      {
        ((*v7)[5])(&v10, v7, v12, a2 + v8, 2);
        v9 = v10;
        v10 = 0;
        sub_2993E7BB0(&v12, v9);
        sub_2993E7BB0(&v10, 0);
        if ((((*v7)[4])(v7, v12) & 1) == 0)
        {
          break;
        }

        if (((*v7)[6])(v7, v12, &v11))
        {
          sub_2993E7C14(*(a4 + 24), &v11, a2, v8 + 2);
          if (v13)
          {
            break;
          }
        }

        v8 = v8 + 2;
      }

      while (v8 < a3);
    }

    return sub_2993E7BB0(&v12, 0);
  }

  return result;
}

void sub_2993E6EBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2993E7BB0(va, 0);
  _Unwind_Resume(a1);
}

const void ***sub_2993E6ED8(const void ***result, const void *a2, size_t a3)
{
  v11[4] = *MEMORY[0x29EDCA608];
  if (a2 && (a3 & 1) == 0)
  {
    v5 = result;
    ((*result)[3])(&v10);
    ((*v5)[5])(v11, v5, v10, a2, a3);
    v6 = v11[0];
    v11[0] = 0;
    sub_2993E7BB0(&v10, v6);
    sub_2993E7BB0(v11, 0);
    if (((*v5)[4])(v5, v10))
    {
      if (a3 < 0x7FFFFFFFFFFFFFF8)
      {
        if (a3 < 0x17)
        {
          v9 = a3;
          if (a3)
          {
            memcpy(&__dst, a2, a3);
          }

          *(&__dst + a3) = 0;
          operator new();
        }

        operator new();
      }

      sub_2991A11B0();
    }

    result = sub_2993E7BB0(&v10, 0);
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2993E7120(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, const void **a16, __int16 a17, char a18, char a19)
{
  sub_2993E7E2C(&a17);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_2993E7BB0(&a16, 0);
  _Unwind_Resume(a1);
}

void sub_2993E71F4(int a1, uint64_t *a2, UniChar *chars, unint64_t a4)
{
  CFStringCreateWithCharacters(0, chars, a4 >> 1);
  v5 = *a2;
  if (LXCursorCreateByAdvancing())
  {
    operator new();
  }

  operator new();
}

void sub_2993E72B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_299235628(&a9, 0);
  sub_299219AB4(&a10, 0);
  _Unwind_Resume(a1);
}

BOOL sub_2993E72DC(uint64_t a1, uint64_t *a2, _DWORD *a3)
{
  if (!(*(*a1 + 32))(a1))
  {
    return 0;
  }

  v5 = *a2;
  Entry = LXCursorCopyFirstEntry();
  if (!Entry)
  {
    return 0;
  }

  v7 = Entry;
  TokenID = LXEntryGetTokenID();
  *a3 = TokenID;
  v9 = TokenID != 0;
  CFRelease(v7);
  return v9;
}

void sub_2993E736C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_299320950(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_2993E7384(uint64_t a1, uint64_t *a2)
{
  v8 = *MEMORY[0x29EDCA608];
  result = (*(*a1 + 32))(a1);
  if (result)
  {
    v4 = *a2;
    v7 = LXCursorCopyTraversedCharacters();
    CFStringGetLength(v7);
    v5 = *a2;
    sub_2992A3CC4(1uLL);
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2993E7A1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, int a56, __int16 a57, char a58, char a59)
{
  if (a2)
  {
    sub_2991EDA10(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2993E7B00(uint64_t a1)
{
  *a1 = &unk_2A1F79798;
  sub_299291748((a1 + 8), 0);
  return a1;
}

void sub_2993E7B48(uint64_t a1)
{
  *a1 = &unk_2A1F79798;
  sub_299291748((a1 + 8), 0);

  JUMPOUT(0x29C29BFB0);
}

const void ***sub_2993E7BB0(const void ***result, const void **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    sub_299235628(v2, 0);

    JUMPOUT(0x29C29BFB0);
  }

  return result;
}

uint64_t sub_2993E7C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  v6 = a3;
  if (!a1)
  {
    sub_2991A2240();
  }

  return (*(*a1 + 48))(a1, a2, &v6, &v5);
}

__n128 sub_2993E7CE4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F79820;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2993E7D1C(void *a1, uint64_t a2, const void **a3, size_t *a4)
{
  v6 = *a4;
  v7 = a1[3];
  v8 = v7 + *a4;
  v9 = a1[1];
  size = SHIBYTE(v9->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = v9->__r_.__value_.__l.__size_;
  }

  v11 = *a3;
  if (size < v8)
  {
    std::string::resize(v9, v7 + *a4, 0);
    v9 = a1[1];
    v7 = a1[3];
  }

  if (SHIBYTE(v9->__r_.__value_.__r.__words[2]) < 0)
  {
    v9 = v9->__r_.__value_.__r.__words[0];
  }

  memcpy(v9 + v7, v11, v6);
  v12 = a1[1];
  if (*(v12 + 23) < 0)
  {
    v12 = *v12;
  }

  v13 = *(a1[4] + 24);

  return sub_2993E7C14(v13, a2, v12, v8);
}

uint64_t sub_2993E7DE0(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F79890))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2993E7E2C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_2993E7EAC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(result + 40) = v2;
  return result;
}

uint64_t sub_2993E7EBC(uint64_t a1)
{
  result = *(a1 + 40);
  *(a1 + 40) = 0;
  if (result)
  {
    JUMPOUT(0x29C29BF70);
  }

  return result;
}

uint64_t sub_2993E7EE4(void *a1, uint64_t a2, _BYTE *a3)
{
  v5 = a1[7];
  TokenID = LXEntryGetTokenID();
  v6 = *(a1[6] + 8);
  result = sub_2993E7C14(*(v5 + 24), &TokenID, *(*(a1[4] + 8) + 40) + 2 * a1[8], 2 * (*(*(a1[5] + 8) + 24) - a1[8]));
  *a3 = *(*(a1[6] + 8) + 24);
  return result;
}

__n128 sub_2993E7F74(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void sub_2993E7FC4(uint64_t a1, const void *a2)
{
  v4 = *(a1 + 40);
  LXCursorConditionalProbability();
  v6 = v4 + v5;
  v7 = *(*(a1 + 32) + 8);
  v9 = v7[6];
  v8 = v7[7];
  if (v9 >= v8)
  {
    v11 = v7[5];
    v12 = (v9 - v11) >> 4;
    if ((v12 + 1) >> 60)
    {
      sub_299212A8C();
    }

    v13 = v8 - v11;
    v14 = v13 >> 3;
    if (v13 >> 3 <= (v12 + 1))
    {
      v14 = v12 + 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF0)
    {
      v15 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v14;
    }

    v22[4] = v7 + 5;
    if (v15)
    {
      sub_2992A3CC4(v15);
    }

    v16 = 16 * v12;
    *v16 = 0;
    *(v16 + 8) = v6;
    sub_2993E80F4(v16, a2);
    v10 = v16 + 16;
    v17 = v7[5];
    v18 = v7[6];
    v19 = (v16 + v17 - v18);
    sub_2993E8154(v17, v18, v19);
    v20 = v7[5];
    v7[5] = v19;
    v7[6] = v16 + 16;
    v21 = v7[7];
    v7[7] = 0;
    v22[2] = v20;
    v22[3] = v21;
    v22[0] = v20;
    v22[1] = v20;
    sub_2993E81C4(v22);
  }

  else
  {
    *v9 = 0;
    *(v9 + 8) = v6;
    sub_2993E80F4(v9, a2);
    v10 = v9 + 16;
  }

  v7[6] = v10;
}

void sub_2993E80F4(const void **a1, CFTypeRef cf)
{
  if (*a1 != cf)
  {
    CFRetain(cf);

    sub_299235628(a1, cf);
  }
}

void sub_2993E8154(const void **a1, const void **a2, void *a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1;
    do
    {
      v6 = *v5;
      *v5 = 0;
      *a3 = v6;
      a3[1] = v5[1];
      v5 += 2;
      a3 += 2;
    }

    while (v5 != a2);
    do
    {
      sub_299235628(v4, 0);
      v4 += 2;
    }

    while (v4 != a2);
  }
}

uint64_t sub_2993E81C4(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 16;
    sub_299235628((i - 16), 0);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2993E8218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = v3 >> 1;
    v6 = a1 + 16 * (v3 >> 1);
    v7 = *(a2 - 8);
    if (*(v6 + 8) < v7)
    {
      v8 = a2 - 16;
      v9 = *(a2 - 16);
      *(a2 - 16) = 0;
      do
      {
        v10 = v6;
        v11 = *v6;
        *v6 = 0;
        sub_299235628(v8, v11);
        *(v8 + 8) = *(v10 + 8);
        if (!v5)
        {
          break;
        }

        v5 = (v5 - 1) >> 1;
        v6 = a1 + 16 * v5;
        v8 = v10;
      }

      while (*(v6 + 8) < v7);
      sub_299235628(v10, v9);
      *(v10 + 8) = v7;
    }
  }
}

void sub_2993E82CC(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 2;
        sub_299235628(v4, 0);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_2993E83F4(uint64_t a1)
{
  *a1 = &unk_2A1F798B0;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 72))(v2);
  }

  *a1 = &unk_2A1F79798;
  sub_299291748((a1 + 8), 0);
  return a1;
}

void sub_2993E848C(uint64_t a1)
{
  *a1 = &unk_2A1F798B0;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 72))(v2);
  }

  *a1 = &unk_2A1F79798;
  sub_299291748((a1 + 8), 0);

  JUMPOUT(0x29C29BFB0);
}

void sub_2993E8594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = *MEMORY[0x29EDCA608];
  v3[0] = &unk_2A1F79B00;
  v3[1] = a3;
  v3[3] = v3;
  sub_2993E862C();
}

void sub_2993E8618(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2993E9824(va);
  _Unwind_Resume(a1);
}

void sub_2993E862C()
{
  v4 = *MEMORY[0x29EDCA608];
  v0 = off_2A1A9A2C8;
  if ((*off_2A1A9A2C8(&off_2A1A9A2C8) & 1) == 0)
  {
    v2 = off_2A1A9A2B0(&off_2A1A9A2B0);
    sub_2992A6BEC(v2, 256);
    _tlv_atexit(sub_2992A65C8, v2);
    *v0(&off_2A1A9A2C8) = 1;
  }

  v1 = off_2A1A9A2F8;
  if ((*off_2A1A9A2F8(&off_2A1A9A2F8) & 1) == 0)
  {
    v3 = off_2A1A9A2E0(&off_2A1A9A2E0);
    sub_2992A6C9C(v3, 0x100uLL);
    _tlv_atexit(sub_2992A65FC, v3);
    *v1(&off_2A1A9A2F8) = 1;
  }

  operator new();
}

void sub_2993E8878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, const void **);
  v13 = va_arg(va1, void);
  sub_2993E7BB0(va, 0);
  sub_2993E9644(va1);
  _Unwind_Resume(a1);
}

unint64_t sub_2993E88A0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned __int8 a7, _BYTE *a8, float a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned __int8 a17)
{
  v41 = result;
  v49 = *MEMORY[0x29EDCA608];
  v47 = a7;
  if ((*a8 & 1) == 0)
  {
    if (((*(**(result + 16) + 32))(*(result + 16), a4) & 1) == 0)
    {
      __assert_rtn("ambiguousDfsTraverse", "AmbiguousTrieAdapter.hpp", 141, "m_trie->isValid(curCursor)");
    }

    if (a5 && (*(*a2 + 24))(a2) != a12)
    {
      goto LABEL_33;
    }

    LODWORD(v46) = 0;
    if ((a7 & 1) != 0 || (result = (*(**(v41 + 16) + 48))(*(v41 + 16), a4, &v46), result))
    {
      result = sub_2993E8E60(*(a3 + 24), a4, a10, 2 * a11, a13, a14, a12, a8, a9);
    }

    if ((*a8 & 1) == 0)
    {
LABEL_33:
      result = (*(*a2 + 24))(a2);
      if (result > a12)
      {
        result = (*(*a2 + 16))(a2, a12);
        v20 = result;
        v46 = 0;
        if (result)
        {
          v21 = 0;
          HIDWORD(v36) = a17;
          v22 = a9;
          do
          {
            result = (*(*a2 + 72))(a2, a15, a16, a12, v21);
            if (result)
            {
              v45 = (*(*a2 + 32))(a2, a12, v46) + v22;
              v44 = (*(*a2 + 40))(a2, a12, v46) + a12;
              result = (*(*a2 + 48))(a2, a12, v46);
              v24 = result;
              v25 = v23;
              v26 = v44;
              if (v44 != a12 || (v36 & 0x100000000) == 0)
              {
                if (v23)
                {
                  (*(**(v41 + 16) + 40))(&v43);
                  if ((*(**(v41 + 16) + 32))(*(v41 + 16), v43))
                  {
                    v27 = a11;
                    v28 = 2 * a11;
                    v29 = v25;
                    do
                    {
                      v30 = *v24++;
                      *(a10 + v28) = v30;
                      v28 += 2;
                      --v29;
                    }

                    while (v29);
                    v31 = v46;
                    if (a13)
                    {
                      *(a13 + 8 * a14) = v46;
                      v27 = a11;
                    }

                    v32 = v45;
                    LOBYTE(v36) = v26 == a12;
                    sub_2993E88A0(v41, a2, a3, v43, a5, a6, v47, a8, v32, a10, v27 + v25, v44, a13, a14 + 1, a12, v31, v36);
                    if (*a8)
                    {
                      result = sub_2993E7BB0(&v43, 0);
                      break;
                    }
                  }

                  result = sub_2993E7BB0(&v43, 0);
                  if (a6)
                  {
                    v33 = v44;
                    result = (*(*a2 + 24))(a2);
                    if (v33 == result)
                    {
                      result = (*(*a2 + 56))(a2, a12, v46);
                      if (result)
                      {
                        v48 = 0;
                        operator new();
                      }
                    }
                  }
                }

                else
                {
                  v34 = v45;
                  LOBYTE(v36) = v44 == a12;
                  result = sub_2993E88A0(v41, a2, a3, a4, a5, a6, v47, a8, v34, a10, a11, v44, a13, a14, a15, a16, v36);
                }
              }
            }

            v21 = v46 + 1;
            v46 = v21;
          }

          while (v21 < v20);
        }
      }
    }
  }

  v35 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_2993E8E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9)
{
  v15 = a9;
  v13 = a4;
  v14 = a3;
  v11 = a6;
  v12 = a5;
  v10 = a7;
  if (!a1)
  {
    sub_2991A2240();
  }

  return (*(*a1 + 48))(a1, a2, &v15, &v14, &v13, &v12, &v11, &v10, a8);
}

__n128 sub_2993E8F70(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F79970;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  result = *(a1 + 40);
  v4 = *(a1 + 56);
  v5 = *(a1 + 72);
  *(a2 + 88) = *(a1 + 88);
  *(a2 + 72) = v5;
  *(a2 + 56) = v4;
  *(a2 + 40) = result;
  return result;
}

const void ***sub_2993E8FC8(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  (*(**(v8 + 16) + 40))(&v16);
  if (!(*(**(v8 + 16) + 32))(*(v8 + 16), v16))
  {
    return sub_2993E7BB0(&v16, 0);
  }

  if (v6)
  {
    v9 = (**(a1 + 24) + 2 * **(a1 + 32));
    v10 = v6;
    do
    {
      v11 = *v5++;
      *v9++ = v11;
      --v10;
    }

    while (v10);
  }

  v12 = **(a1 + 40);
  if (v12)
  {
    *(v12 + 8 * **(a1 + 48)) = **(a1 + 56);
  }

  v15 = 0;
  if ((**(a1 + 64) & 1) == 0)
  {
    if (!(*(**(v8 + 16) + 48))(*(v8 + 16), v16, &v15))
    {
      goto LABEL_11;
    }

    v12 = **(a1 + 40);
  }

  v13 = **(a1 + 80);
  sub_2993E8E60(*(*(a1 + 72) + 24), v16, **(a1 + 24), 2 * (**(a1 + 32) + v6), v12, **(a1 + 48) + 1, **(a1 + 88), *(a1 + 96), v13);
LABEL_11:
  if (**(a1 + 96) == 1)
  {
    *a3 = 1;
  }

  return sub_2993E7BB0(&v16, 0);
}

void sub_2993E9160(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2993E7BB0(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_2993E917C(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F799D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2993E9248(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F799F0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

void sub_2993E9284(uint64_t a1, uint64_t a2, int *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v16 = *MEMORY[0x29EDCA608];
  v15 = *a3;
  v13 = *a5;
  v14 = *a4;
  v11 = *a7;
  v12 = *a6;
  v10 = *a8;
  v8 = *(a1 + 16);
  v9 = *(*(a1 + 8) + 16);
  operator new();
}

void sub_2993E93BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2993E7E2C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2993E93D0(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F79AE0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2993E94B0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F79A70;
  *(a2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  return result;
}

uint64_t sub_2993E9500(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = *(a1 + 16);
  v8 = **(a1 + 8);
  v10[0] = *a2;
  v10[1] = v8;
  result = sub_2993E95DC(*(v7 + 24), v10, **(a1 + 24), **(a1 + 32), **(a1 + 40), **(a1 + 48), **(a1 + 56) - **(a1 + 64));
  **(a1 + 72) = (**(a1 + 72) | *a5) & 1;
  return result;
}

uint64_t sub_2993E9590(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F79AD0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2993E95DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = a4;
  v12 = a3;
  v9 = a6;
  v10 = a5;
  v8 = a7;
  if (!a1)
  {
    sub_2991A2240();
  }

  return (*(*a1 + 48))(a1, a2, &v12, &v11, &v10, &v9, &v8);
}

uint64_t sub_2993E9644(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_2993E9734(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F79B00;
  a2[1] = v2;
  return result;
}

uint64_t sub_2993E977C(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F79B70))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2993E97C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a3;
  v6 = a5;
  v7 = a4;
  if (!a1)
  {
    sub_2991A2240();
  }

  return (*(*a1 + 48))(a1, a2, &v8, &v7, &v6);
}

uint64_t sub_2993E9824(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void sub_2993E98A4()
{
  v4 = *MEMORY[0x29EDCA608];
  v0 = off_2A1A9A328;
  if ((*off_2A1A9A328(&off_2A1A9A328) & 1) == 0)
  {
    v2 = off_2A1A9A310(&off_2A1A9A310);
    sub_2992A6BEC(v2, 256);
    _tlv_atexit(sub_2992A65C8, v2);
    *v0(&off_2A1A9A328) = 1;
  }

  v1 = off_2A1A9A358;
  if ((*off_2A1A9A358(&off_2A1A9A358) & 1) == 0)
  {
    v3 = off_2A1A9A340(&off_2A1A9A340);
    sub_2992A6C9C(v3, 0x100uLL);
    _tlv_atexit(sub_2992A65FC, v3);
    *v1(&off_2A1A9A358) = 1;
  }

  operator new();
}

void sub_2993E9AF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, const void **);
  v13 = va_arg(va1, void);
  sub_2993E7BB0(va, 0);
  sub_2993E9644(va1);
  _Unwind_Resume(a1);
}

__n128 sub_2993E9B94(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F79B90;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_2993E9BCC(uint64_t a1, uint64_t a2, int *a3, uint64_t *a4, void **a5, void **a6, void **a7, void **a8)
{
  v19 = *MEMORY[0x29EDCA608];
  v9 = *a4;
  v10 = *a5;
  v11 = *a6;
  v12 = *a7;
  v13 = *a8;
  v18 = *a3;
  __p[5] = v11;
  __p[6] = v10;
  __p[3] = v13;
  __p[4] = v12;
  v14 = *(a1 + 8);
  if ((*(**(v14 + 16) + 32))(*(v14 + 16)))
  {
    memset(__p, 0, 24);
    sub_2992A7DFC(__p, v9, v10 + v9, v10);
    v15 = *(a1 + 16);
    v16 = *(v14 + 16);
    operator new();
  }

  __assert_rtn("operator()", "AmbiguousTrieAdapter.hpp", 44, "m_trie->isValid(cursor)");
}

void sub_2993E9D80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  sub_2993E7E2C(&a18);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2993E9DB4(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F79C70))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2993E9E94(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F79C00;
  *(a2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  return result;
}

uint64_t sub_2993E9EE4(uint64_t a1, _DWORD *a2, uint64_t *a3, uint64_t *a4, _BYTE *a5)
{
  v8 = *a3;
  v9 = *a4;
  v11 = *(a1 + 8);
  v10 = *(a1 + 16);
  v12 = *v11 + *a4;
  v13 = *(v10 + 8) - *v10;
  if (v12 > v13)
  {
    sub_29920BD1C(v10, v12 - v13);
  }

  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      *(**(a1 + 16) + **(a1 + 8) + i) = *(v8 + i);
    }
  }

  v15 = *(a1 + 40);
  v16 = **(a1 + 32);
  v18[0] = *a2;
  v18[1] = v16;
  result = sub_2993E95DC(*(*(a1 + 24) + 24), v18, **(a1 + 16), v12, *v15, **(a1 + 48), **(a1 + 56) - **(a1 + 64));
  **(a1 + 72) = (**(a1 + 72) | *a5) & 1;
  return result;
}

uint64_t sub_2993E9FDC(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F79C60))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2993EA028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13[0] = a2;
  v13[1] = a3;
  v12[0] = a4;
  v12[1] = a5;
  v10 = a8;
  v11 = a7;
  if (!a1)
  {
    sub_2991A2240();
  }

  return (*(*a1 + 48))(a1, v13, v12, a6, &v11, &v10, a9);
}

uint64_t sub_2993EA098(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

__n128 sub_2993EA18C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F79CA0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2993EA1BC(uint64_t a1, unsigned int *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v9 = *a3;
  v10 = *a4;
  v11 = *(*(a1 + 8) + 8);
  v12 = *a2;
  v13 = LXLexiconCopyEntryForTokenID();
  v21 = v13;
  if (v13)
  {
    v14 = v13;
    v15 = LXEntryCopyString();
    v20 = v15;
    sub_299276BDC(v15, &__p);
    MetaFlags = LXEntryGetMetaFlags();
    LXEntryGetProbability();
    sub_2993EA028(*(*(a1 + 16) + 24), __p, (v19 - __p) >> 1, MetaFlags, v17, a2, v9, v10, a6);
    if (__p)
    {
      v19 = __p;
      operator delete(__p);
    }

    if (v15)
    {
      CFRelease(v15);
    }

    CFRelease(v14);
  }
}

void sub_2993EA2AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, const void *a13, const void *a14)
{
  sub_299219AB4(&a13, 0);
  sub_299320950(&a14, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_2993EA2F0(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F79D00))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2993EA3AC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F79D20;
  a2[1] = v2;
  return result;
}

uint64_t sub_2993EA3F4(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F79D80))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2993EA4B4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F79DA0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2993EA4E4(uint64_t a1, unsigned int *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v9 = *a3;
  v10 = *a4;
  v11 = *(*(a1 + 8) + 8);
  v12 = *a2;
  v13 = LXLexiconCopyEntryForTokenID();
  v21 = v13;
  if (v13)
  {
    v14 = v13;
    v15 = LXEntryCopyString();
    v20 = v15;
    sub_299276BDC(v15, &__p);
    MetaFlags = LXEntryGetMetaFlags();
    LXEntryGetProbability();
    sub_2993EA028(*(*(a1 + 16) + 24), __p, (v19 - __p) >> 1, MetaFlags, v17, a2, v9, v10, a6);
    if (__p)
    {
      v19 = __p;
      operator delete(__p);
    }

    if (v15)
    {
      CFRelease(v15);
    }

    CFRelease(v14);
  }
}

void sub_2993EA5D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, const void *a13, const void *a14)
{
  sub_299219AB4(&a13, 0);
  sub_299320950(&a14, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_2993EA618(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F79E00))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2993EA664(void *a1@<X8>)
{
  sub_299278568(@"en_US", &v7);
  v2 = std::string::insert(&v7, 0, "EnglishLexicon_", 0xFuLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v6 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 0x40000000;
  v4[2] = sub_2993EA800;
  v4[3] = &unk_29EF22318;
  v4[4] = @"en_US";
  if (qword_2A1461D50 != -1)
  {
    dispatch_once(&qword_2A1461D50, &unk_2A1F65DA8);
  }

  v7.__r_.__value_.__r.__words[0] = MEMORY[0x29EDCA5F8];
  v7.__r_.__value_.__l.__size_ = 0x40000000;
  v7.__r_.__value_.__r.__words[2] = sub_2993EDAEC;
  v8 = &unk_29EF22360;
  v10 = __p;
  v11 = qword_2A1461D48;
  v12 = 0;
  v9 = v4;
  sub_2993ED278(a1, __p, &v7);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2993EA7D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2993EA800(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x29EDC57F0], *(a1 + 32));
  operator new();
}

void sub_2993EA89C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x29C29BFB0](v2, 0x1060C404B74122BLL);
  sub_299274AE8(va, 0);
  _Unwind_Resume(a1);
}

void sub_2993EA8D4(void *a1@<X8>)
{
  sub_2991C6CA8(v7, "en_US");
  std::operator+<char>();
  v2[0] = MEMORY[0x29EDCA5F8];
  v2[1] = 1174405120;
  v2[2] = sub_2993EAAA0;
  v2[3] = &unk_2A1F79E10;
  if (SHIBYTE(v8) < 0)
  {
    sub_2991A110C(&__p, v7[0], v7[1]);
  }

  else
  {
    __p = *v7;
    v4 = v8;
  }

  if (qword_2A1461D50 != -1)
  {
    dispatch_once(&qword_2A1461D50, &unk_2A1F65DA8);
  }

  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 0x40000000;
  v9[2] = sub_2993EDAEC;
  v9[3] = &unk_29EF22360;
  v9[5] = v5;
  v9[6] = qword_2A1461D48;
  v10 = 0;
  v9[4] = v2;
  sub_2993ED278(a1, v5, v9);
  if (SHIBYTE(v4) < 0)
  {
    operator delete(__p);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(v7[0]);
  }
}

void sub_2993EAA54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2993EAAA0(uint64_t a1)
{
  v43 = *MEMORY[0x29EDCA608];
  sub_2991C6CA8(&v39, "/System/Library/LinguisticData/RequiredAssets_en.bundle/AssetData/");
  if ((v41 & 0x80u) == 0)
  {
    v2 = v41;
  }

  else
  {
    v2 = v40;
  }

  v3 = &v42;
  sub_2991C1C18(&v42, v2 + 8);
  if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v3 = v42.__r_.__value_.__r.__words[0];
  }

  if (v2)
  {
    if ((v41 & 0x80u) == 0)
    {
      v4 = &v39;
    }

    else
    {
      v4 = v39;
    }

    memmove(v3, v4, v2);
  }

  strcpy(v3 + v2, "Phrases-");
  v6 = (a1 + 32);
  v5 = *(a1 + 32);
  v7 = *(a1 + 55);
  if (v7 >= 0)
  {
    v8 = (a1 + 32);
  }

  else
  {
    v8 = *(a1 + 32);
  }

  if (v7 >= 0)
  {
    v9 = *(a1 + 55);
  }

  else
  {
    v9 = *(a1 + 40);
  }

  v10 = std::string::append(&v42, v8, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v36.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v36.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v36, ".dat", 4uLL);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v38 = v12->__r_.__value_.__r.__words[2];
  *__p = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  if ((v41 & 0x80u) == 0)
  {
    v14 = v41;
  }

  else
  {
    v14 = v40;
  }

  v15 = &v35;
  sub_2991C1C18(&v35, v14 + 6);
  if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v15 = v35.__r_.__value_.__r.__words[0];
  }

  if (v14)
  {
    if ((v41 & 0x80u) == 0)
    {
      v16 = &v39;
    }

    else
    {
      v16 = v39;
    }

    memmove(v15, v16, v14);
  }

  strcpy(v15 + v14, "Delta-");
  v17 = *(a1 + 55);
  if (v17 >= 0)
  {
    v18 = (a1 + 32);
  }

  else
  {
    v18 = *(a1 + 32);
  }

  if (v17 >= 0)
  {
    v19 = *(a1 + 55);
  }

  else
  {
    v19 = *(a1 + 40);
  }

  v20 = std::string::append(&v35, v18, v19);
  v21 = *&v20->__r_.__value_.__l.__data_;
  v42.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v42.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  v22 = std::string::append(&v42, ".dat", 4uLL);
  v23 = *&v22->__r_.__value_.__l.__data_;
  v36.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
  *&v36.__r_.__value_.__l.__data_ = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (v38 >= 0)
  {
    v24 = __p;
  }

  else
  {
    v24 = __p[0];
  }

  v25 = sub_299276360(v24);
  v35.__r_.__value_.__r.__words[0] = v25;
  if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v26 = &v36;
  }

  else
  {
    v26 = v36.__r_.__value_.__r.__words[0];
  }

  filePath = sub_299276360(v26);
  v27 = CFURLCreateWithFileSystemPath(0, v25, kCFURLPOSIXPathStyle, 1u);
  v28 = CFURLCreateWithFileSystemPath(0, filePath, kCFURLPOSIXPathStyle, 1u);
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (v27 && sub_299276528(v27))
  {
    CFDictionaryAddValue(Mutable, *MEMORY[0x29EDC57D8], v25);
    if (v28 && sub_299276528(v28))
    {
      v30 = CFArrayCreate(0, &filePath, 1, MEMORY[0x29EDB9000]);
      v42.__r_.__value_.__r.__words[0] = v30;
      CFDictionaryAddValue(Mutable, *MEMORY[0x29EDC57E0], v30);
      if (v30)
      {
        CFRelease(v30);
      }
    }

    operator new();
  }

  v31 = sub_2993652F8(0);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    if (*(a1 + 55) < 0)
    {
      v6 = *v6;
    }

    LODWORD(v42.__r_.__value_.__l.__data_) = 136315138;
    *(v42.__r_.__value_.__r.__words + 4) = v6;
    _os_log_error_impl(&dword_29918C000, v31, OS_LOG_TYPE_ERROR, "Failed to find data path for locale %s", &v42, 0xCu);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  if (filePath)
  {
    CFRelease(filePath);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v38) < 0)
  {
    operator delete(__p[0]);
  }

  if (v41 < 0)
  {
    operator delete(v39);
  }

  v32 = *MEMORY[0x29EDCA608];
  return 0;
}

void sub_2993EAF3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (a2)
  {
    sub_2991EDA10(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_2993EB0B0(_BYTE *result, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    return sub_2991A110C(result + 32, *(a2 + 32), *(a2 + 40));
  }

  v2 = *(a2 + 32);
  *(result + 6) = *(a2 + 48);
  *(result + 2) = v2;
  return result;
}

void sub_2993EB0DC(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }
}

void sub_2993EB0F0(void *a1@<X8>)
{
  if ((atomic_load_explicit(&qword_2A1461880, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1461880))
  {
    sub_2991C6CA8(byte_2A14618A0, "EnglishDynamicLexicon_en_US");
    __cxa_atexit(MEMORY[0x29EDC9388], byte_2A14618A0, &dword_29918C000);
    __cxa_guard_release(&qword_2A1461880);
  }

  if (qword_2A1461D50 != -1)
  {
    dispatch_once(&qword_2A1461D50, &unk_2A1F65DA8);
  }

  v2[0] = MEMORY[0x29EDCA5F8];
  v2[1] = 0x40000000;
  v2[2] = sub_2993EDAEC;
  v2[3] = &unk_29EF22360;
  v2[5] = byte_2A14618A0;
  v2[6] = qword_2A1461D48;
  v3 = 0;
  v2[4] = &unk_2A1F79E40;
  sub_2993ED278(a1, byte_2A14618A0, v2);
}

uint64_t sub_2993EB29C(uint64_t a1, uint64_t a2, int a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xFFF0000000000000;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = a3;
  if (a3 == 2)
  {
    View = LXLexiconRepositoryCreateView();
  }

  else
  {
    View = LXLexiconCreate();
  }

  sub_299291748(a1, View);
  return a1;
}

void sub_2993EB334(_Unwind_Exception *a1)
{
  sub_2993EC474((v1 + 1));
  sub_299291748(v1, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_2993EB354(uint64_t a1, uint64_t a2)
{
  v8 = 0u;
  memset(v7, 0, sizeof(v7));
  v3 = *a1;
  if (*a1 != *(a1 + 8))
  {
    do
    {
      sub_2993EC4CC(v7, v3);
      sub_2993EDF60(*a1, *(a1 + 8), &v9, 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3));
      v5 = *(a1 + 8);
      sub_299235628((v5 - 8), 0);
      *(a1 + 8) = v5 - 24;
      v3 = *a1;
    }

    while (*a1 != v5 - 24);
  }

  v9 = 0;
  while ((v9 & 1) == 0 && *(&v8 + 1))
  {
    sub_2993EB470(a2, *(*(*(&v7[0] + 1) + 8 * ((*(&v8 + 1) + v8 - 1) / 0xAAuLL)) + 24 * ((*(&v8 + 1) + v8 - 1) % 0xAAuLL) + 16));
    sub_2993EE2A0(v7);
  }

  return sub_2993ECACC(v7);
}

uint64_t sub_2993EB470(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_2991A2240();
  }

  return (*(*v2 + 48))(v2, &v4);
}

CFIndex sub_2993EB4C4(uint64_t a1, CFStringRef theString, unint64_t a3, double a4)
{
  if (*(a1 + 8) < a3 || *(a1 + 16) + -0.000001 > a4)
  {
    return 0;
  }

  v4 = 0;
  if (theString)
  {
    v7 = *a1;
    if (*a1)
    {
      Length = CFStringGetLength(theString);
      v9 = CFStringGetLength(v7);
      if (v9 >= Length)
      {
        v10 = Length;
      }

      else
      {
        v10 = v9;
      }

      if (!v10)
      {
        return 0;
      }

      v4 = 0;
      while (1)
      {
        CharacterAtIndex = CFStringGetCharacterAtIndex(theString, v4);
        if (CharacterAtIndex != CFStringGetCharacterAtIndex(v7, v4))
        {
          break;
        }

        if (v10 == ++v4)
        {
          return v10;
        }
      }
    }
  }

  return v4;
}

void sub_2993EB58C(uint64_t a1, const __CFString *a2, unint64_t a3, double a4)
{
  v8 = sub_2993EB4C4(a1, a2, a3, a4);
  Copy = CFStringCreateCopy(*MEMORY[0x29EDB8ED8], a2);
  sub_299219AB4(a1, Copy);
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  sub_2993EB6DC((a1 + 48), v8);
  if (v8 < CFStringGetLength(a2))
  {
    v10 = v8;
    do
    {
      CharacterAtIndex = CFStringGetCharacterAtIndex(a2, v10);
      v19 = CharacterAtIndex;
      v12 = sub_29927880C(CharacterAtIndex);
      if (*v12 == v12[1])
      {
        v18 = 1;
        v17 = *(a1 + 56);
        if (v17 >= *(a1 + 64))
        {
          v16 = sub_2993ECDAC(a1 + 48, &v18);
        }

        else
        {
          sub_29927A740(*(a1 + 56), 1);
          v16 = v17 + 24;
          *(a1 + 56) = v17 + 24;
        }
      }

      else
      {
        v13 = v12;
        v14 = *(a1 + 56);
        v15 = a1 + 48;
        if (v14 >= *(a1 + 64))
        {
          v16 = sub_29933AF54(v15, v13);
        }

        else
        {
          sub_29933AF00(v15, v13);
          v16 = v14 + 24;
        }
      }

      *(a1 + 56) = v16;
      ++v10;
    }

    while (v10 < CFStringGetLength(a2));
  }

  sub_2993EB784((a1 + 24), v8);
}

void sub_2993EB6DC(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    sub_2993ECC40(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    if (v3 != v7)
    {
      v8 = a1[1];
      do
      {
        v10 = *(v8 - 24);
        v8 -= 24;
        v9 = v10;
        if (v10)
        {
          *(v3 - 16) = v9;
          operator delete(v9);
        }

        v3 = v8;
      }

      while (v8 != v7);
    }

    a1[1] = v7;
  }
}

void sub_2993EB784(uint64_t *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    sub_2993ECED4(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    if (v3 != v7)
    {
      do
      {
        v8 = v3 - 24;
        sub_29929A278(v3 - 24, *(v3 - 16));
        v3 = v8;
      }

      while (v8 != v7);
    }

    a1[1] = v7;
  }
}

void sub_2993EB828(uint64_t a1)
{
  *&v2 = 0;
  *(&v2 + 1) = 0xFFF0000000000000;
  sub_299219AB4((a1 + 8), 0);
  *(a1 + 16) = v2;
  sub_2993ED13C((a1 + 32));
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  memset(v3, 0, sizeof(v3));
  sub_2993ED1AC((a1 + 56));
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  memset(v4, 0, sizeof(v4));
  v5 = v4;
  sub_29920E060(&v5);
  v5 = v3;
  sub_29929A1EC(&v5);
}

void *sub_2993EB8DC(void *result)
{
  v3[4] = *MEMORY[0x29EDCA608];
  if (*result)
  {
    memset(v3, 0, 24);
    v2[0] = &unk_2A1F79EE8;
    v2[1] = result;
    v2[2] = v3;
    v2[3] = v2;
    sub_2993EB9C8();
  }

  v1 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2993EB99C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  a10 = &a14;
  sub_2993ED1EC(&a10);
  _Unwind_Resume(a1);
}

void sub_2993EC1C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, CFTypeRef cf, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30)
{
  v32 = *(v30 - 168);
  if (v32)
  {
    operator delete(v32);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2993EC2B4(void *result, const __CFString *a2, double a3, uint64_t a4, unint64_t a5)
{
  if (*result)
  {
    v6 = a2 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6 || a5 == 0;
  if (!v7 && a3 != 0.0)
  {
    v8 = result;
    sub_2993EB58C((result + 1), a2, a5, a3);

    return sub_2993EB8DC(v8);
  }

  return result;
}

void *sub_2993EC320(void *result, const __CFString *a2, double a3, uint64_t a4, unint64_t a5)
{
  v8 = *MEMORY[0x29EDCA608];
  if (*result)
  {
    v5 = a2 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = v5 || a5 == 0;
  if (!v6 && a3 != 0.0)
  {
    sub_2993EB58C((result + 1), a2, a5, a3);
    operator new();
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2993EC448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  a10 = &a14;
  sub_2993ED1EC(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_2993EC474(uint64_t a1)
{
  v3 = (a1 + 48);
  sub_29920E060(&v3);
  v3 = (a1 + 24);
  sub_29929A1EC(&v3);
  sub_299219AB4(a1, 0);
  return a1;
}

uint64_t sub_2993EC4CC(void *a1, uint64_t *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 170 * ((v4 - v5) >> 3) - 1;
  }

  v7 = a1[4];
  v8 = a1[5] + v7;
  if (v6 == v8)
  {
    v9 = v7 >= 0xAA;
    v10 = v7 - 170;
    if (!v9)
    {
      v11 = a1[3];
      v12 = v11 - *a1;
      if (v4 - v5 < v12)
      {
        operator new();
      }

      v13 = v12 >> 2;
      if (v11 == *a1)
      {
        v14 = 1;
      }

      else
      {
        v14 = v13;
      }

      sub_29921EA5C(v14);
    }

    a1[4] = v10;
    v24 = *v5;
    a1[1] = v5 + 8;
    sub_2993EC9C8(a1, &v24);
    v5 = a1[1];
    v4 = a1[2];
    v7 = a1[4];
    v8 = a1[5] + v7;
  }

  v15 = *a2;
  v17 = a2[1];
  v16 = a2[2];
  v18 = (*&v5[8 * (v8 / 0xAA)] + 24 * (v8 % 0xAA));
  *v18 = v15;
  v18[1] = v17;
  if (v16)
  {
    v16 = CFRetain(v16);
    v7 = a1[4];
    v5 = a1[1];
    v4 = a1[2];
  }

  v18[2] = v16;
  v19 = a1[5] + 1;
  a1[5] = v19;
  v20 = v19 + v7;
  v21 = &v5[8 * (v20 / 0xAA)];
  v22 = *v21 + 24 * (v20 % 0xAA);
  if (v4 == v5)
  {
    v22 = 0;
  }

  if (v22 == *v21)
  {
    v22 = *(v21 - 1) + 4080;
  }

  return v22 - 24;
}

void sub_2993EC99C(_Unwind_Exception *a1)
{
  operator delete(v2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void *sub_2993EC9C8(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_29921EA5C(v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

uint64_t sub_2993ECACC(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 == v3)
  {
    v4 = (a1 + 40);
    v10 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v3[v5 / 0xAA];
    v7 = *v6 + 24 * (v5 % 0xAA);
    v8 = v3[(*(a1 + 40) + v5) / 0xAA] + 24 * ((*(a1 + 40) + v5) % 0xAA);
    if (v7 != v8)
    {
      do
      {
        sub_299235628((v7 + 16), 0);
        v7 += 24;
        if (v7 - *v6 == 4080)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v3 = *(a1 + 8);
      v2 = *(a1 + 16);
    }

    v10 = v2;
  }

  *v4 = 0;
  v11 = v10 - v3;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v3);
      v2 = *(a1 + 16);
      v3 = (*(a1 + 8) + 8);
      *(a1 + 8) = v3;
      v11 = v2 - v3;
    }

    while (v11 > 2);
    v10 = v2;
  }

  if (v11 == 1)
  {
    v12 = 85;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_17;
    }

    v12 = 170;
  }

  *(a1 + 32) = v12;
LABEL_17:
  if (v3 != v10)
  {
    do
    {
      v13 = *v3++;
      operator delete(v13);
    }

    while (v3 != v10);
    v10 = *(a1 + 8);
    v2 = *(a1 + 16);
  }

  if (v2 != v10)
  {
    *(a1 + 16) = v2 + ((v10 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2993ECC40(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_299212A8C();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v18[4] = a1;
    if (v9)
    {
      sub_29920DDE0(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    sub_29920DE38(v18);
  }
}

uint64_t sub_2993ECDAC(uint64_t a1, int *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_299212A8C();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_29920DDE0(a1, v6);
  }

  v12 = 0;
  v13 = 24 * v2;
  v14 = 24 * v2;
  v15 = 0;
  sub_29927A740((24 * v2), *a2);
  v7 = *(a1 + 8) - *a1;
  v8 = (24 * v2 - v7);
  memcpy(v8, *a1, v7);
  v9 = *a1;
  *a1 = v8;
  *(a1 + 8) = 24 * v2 + 24;
  v10 = *(a1 + 16);
  *(a1 + 16) = v15;
  v14 = v9;
  v15 = v10;
  v12 = v9;
  v13 = v9;
  sub_29920DE38(&v12);
  return 24 * v2 + 24;
}

void sub_2993ECEC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29920DE38(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_2993ECED4(uint64_t *result, unint64_t a2)
{
  v2 = result;
  v3 = result[1];
  v4 = result[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 3) >= a2)
  {
    if (a2)
    {
      v9 = v3 + 24 * a2;
      v10 = 24 * a2;
      v11 = (v3 + 8);
      do
      {
        *v11 = 0;
        v11[1] = 0;
        *(v11 - 1) = v11;
        v11 += 3;
        v10 -= 24;
      }

      while (v10);
    }

    else
    {
      v9 = result[1];
    }

    result[1] = v9;
  }

  else
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *result) >> 3);
    v6 = v5 + a2;
    if (v5 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_299212A8C();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    v30 = result;
    if (v8)
    {
      if (v8 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_29919600C();
    }

    v12 = 0;
    v29 = 0;
    v13 = 24 * v5 + 24 * a2;
    v14 = 24 * a2;
    v15 = (24 * v5 + 8);
    do
    {
      *v15 = 0;
      v15[1] = 0;
      *(v15 - 1) = v15;
      v15 += 3;
      v14 -= 24;
    }

    while (v14);
    v16 = *result;
    v17 = result[1];
    v18 = 24 * v5 - (v17 - *result);
    v28 = 24 * v5 + 24 * a2;
    if (v17 != v16)
    {
      v19 = 0;
      v20 = -8 * ((v17 - v16) >> 3) + 24 * v5;
      do
      {
        v21 = (v20 + v19);
        *v21 = *(v16 + v19);
        v22 = (v16 + v19 + 8);
        v23 = *v22;
        *(v20 + v19 + 8) = *v22;
        v24 = v20 + v19 + 8;
        v25 = *(v16 + v19 + 16);
        v21[2] = v25;
        if (v25)
        {
          *(v23 + 16) = v24;
          *(v16 + v19) = v22;
          *v22 = 0;
          *(v16 + v19 + 16) = 0;
        }

        else
        {
          *v21 = v24;
        }

        v19 += 24;
      }

      while (v16 + v19 != v17);
      do
      {
        sub_29929A278(v16, *(v16 + 8));
        v16 += 24;
      }

      while (v16 != v17);
      v16 = *v2;
      v13 = v28;
      v12 = v29;
    }

    *v2 = v18;
    v2[1] = v13;
    v26 = v2[2];
    v2[2] = v12;
    v28 = v16;
    v29 = v26;
    v27[0] = v16;
    v27[1] = v16;
    return sub_2993ED0E8(v27);
  }

  return result;
}

uint64_t sub_2993ED0E8(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
    sub_29929A278(i - 24, *(i - 16));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2993ED13C(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v5 = v3 - 3;
        sub_29929A278((v3 - 3), *(v3 - 2));
        v3 = v5;
      }

      while (v5 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_2993ED1AC(uint64_t *a1)
{
  if (*a1)
  {
    sub_29920E0B4(a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_2993ED1EC(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = v4 - 3;
        sub_299235628(v4 - 1, 0);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_2993ED278(void *a1, char *a2, uint64_t a3)
{
  v26 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1461890, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1461890))
  {
    operator new();
  }

  if ((atomic_load_explicit(&qword_2A1461898, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1461898))
  {
    __cxa_atexit(MEMORY[0x29EDC93D8], &stru_2A145FB60, &dword_29918C000);
    __cxa_guard_release(&qword_2A1461898);
  }

  std::mutex::lock(&stru_2A145FB60);
  v5 = qword_2A1461888;
  v6 = sub_2991C0548(qword_2A1461888, a2);
  v7 = v5[1];
  if (!*&v7)
  {
    goto LABEL_19;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v7)
    {
      v11 = v6 % *&v7;
    }
  }

  else
  {
    v11 = (*&v7 - 1) & v6;
  }

  v12 = *(*v5 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_19:
    v15 = sub_2993652F8(0xDu);
    v16 = os_signpost_id_make_with_pointer(v15, a2);
    v17 = sub_2993652F8(0xDu);
    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v18 = v17;
      if (os_signpost_enabled(v17))
      {
        if (a2[23] >= 0)
        {
          v19 = a2;
        }

        else
        {
          v19 = *a2;
        }

        *buf = 136315138;
        *&buf[4] = v19;
        _os_signpost_emit_with_name_impl(&dword_29918C000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v16, "SingletonResourceManagerLoad", "Load resource with key: [%s]", buf, 0xCu);
      }
    }

    *buf = (*(a3 + 16))(a3);
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v8)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v7)
      {
        v14 %= *&v7;
      }
    }

    else
    {
      v14 &= *&v7 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_19;
    }

LABEL_18:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_19;
    }
  }

  if (!sub_2991C09F4(v5, v13 + 2, a2))
  {
    goto LABEL_18;
  }

  v21 = v13[6];
  if (!v21 || v21->__shared_owners_ == -1)
  {
    goto LABEL_19;
  }

  v22 = std::__shared_weak_count::lock(v21);
  if (v22)
  {
    v23 = v13[5];
  }

  else
  {
    v23 = 0;
  }

  std::mutex::unlock(&stru_2A145FB60);
  *a1 = v23;
  a1[1] = v22;
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_2991A893C(v22);
  }

  v20 = *MEMORY[0x29EDCA608];
}

void sub_2993EDBD4(_Unwind_Exception *a1)
{
  std::mutex::~mutex(v3);
  sub_2993EDEE0(v2, 0);
  MEMORY[0x29C29BFB0](v2, v1);
  _Unwind_Resume(a1);
}

uint64_t *sub_2993EDC34(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = sub_2993EDD3C(v2);
    MEMORY[0x29C29BFB0](v3, 0x10F2C40E01BBEB9);
  }

  return a1;
}

void sub_2993EDC80(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2993EDCB8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_2993EDD3C(result);

    JUMPOUT(0x29C29BFB0);
  }

  return result;
}

uint64_t sub_2993EDCFC(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F79EC0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2993EDD3C(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = atomic_load((a1 + 40));
  if (v2 == 1)
  {
    v3 = (a1 + 112);
    do
    {
      v4 = dispatch_time(0, 1000000);
      if (sub_299299E1C(a1, v4, 0))
      {
        break;
      }

      v5 = atomic_load((a1 + 40));
      if (v5 == 2)
      {
        break;
      }

      v6 = sub_2993652F8(1u);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v8 = a1 + 112;
        if (*(a1 + 135) < 0)
        {
          v8 = *v3;
        }

        *buf = 136315138;
        v12 = v8;
        _os_log_error_impl(&dword_29918C000, v6, OS_LOG_TYPE_ERROR, "Still waiting for resource [%s] to complete in background.", buf, 0xCu);
      }

      v7 = atomic_load((a1 + 40));
    }

    while (v7 == 1);
  }

  std::mutex::lock((a1 + 48));
  _Block_release(*(a1 + 32));
  dispatch_release(*(a1 + 8));
  dispatch_release(*(a1 + 16));
  std::mutex::unlock((a1 + 48));
  if (*(a1 + 144) == 1)
  {
    std::mutex::unlock(*(a1 + 136));
  }

  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  std::mutex::~mutex((a1 + 48));
  sub_2993EDEE0(a1, 0);
  v9 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_2993EDED0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_2991EDA10(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_2993EDEE0(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = (v2 + 56);
    sub_29920E060(&v3);
    v3 = (v2 + 32);
    sub_29929A1EC(&v3);
    sub_299219AB4((v2 + 8), 0);
    sub_299291748(v2, 0);
    return MEMORY[0x29C29BFB0](v2, 0x1060C404B74122BLL);
  }

  return result;
}

void sub_2993EDF60(const void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v8 = *a1;
    v9 = a1[2];
    v10 = a1[1];
    if (v9)
    {
      v11 = CFRetain(v9);
    }

    else
    {
      v11 = 0;
    }

    v12 = 0;
    v13 = v4 >> 1;
    v14 = a1;
    while (1)
    {
      v15 = v14;
      v14 += 3 * v12 + 3;
      v16 = 2 * v12;
      v12 = (2 * v12) | 1;
      v17 = v16 + 2;
      if (v17 < a4)
      {
        v18 = *v14;
        v19 = v14[1];
        v20 = *(v14 + 3);
        v21 = v14[4];
        if (v19 != v21 && vabdd_f64(v18, v20) <= 0.3)
        {
          if (v19 >= v21)
          {
            goto LABEL_11;
          }

LABEL_10:
          v14 += 3;
          v12 = v17;
          goto LABEL_11;
        }

        if (v18 > v20)
        {
          goto LABEL_10;
        }
      }

LABEL_11:
      *v15 = *v14;
      v22 = v14[2];
      v14[2] = 0;
      sub_299235628(v15 + 2, v22);
      v15[1] = v14[1];
      if (v12 > v13)
      {
        if ((a2 - 24) == v14)
        {
          *v14 = v8;
          sub_299235628(v14 + 2, v11);
          v14[1] = v10;
        }

        else
        {
          v24 = *(a2 - 8);
          v23 = (a2 - 8);
          *v14 = *(v23 - 2);
          *v23 = 0;
          sub_299235628(v14 + 2, v24);
          v14[1] = *(v23 - 1);
          *(v23 - 2) = v8;
          sub_299235628(v23, v11);
          *(v23 - 1) = v10;
          sub_2993EE134(a1, (v14 + 3), 0xAAAAAAAAAAAAAAABLL * (v14 + 3 - a1));
        }

        return;
      }
    }
  }
}

void sub_2993EE118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_299235628(va, 0);
  _Unwind_Resume(a1);
}

void sub_2993EE134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3 - 2;
  if (a3 >= 2)
  {
    v6 = v3 >> 1;
    v7 = a1 + 24 * (v3 >> 1);
    v8 = *v7;
    v9 = *(v7 + 8);
    v10 = *(a2 - 24);
    v11 = *(a2 - 16);
    if (v9 == v11 || vabdd_f64(v8, v10) > 0.3)
    {
      if (v8 <= v10)
      {
        return;
      }
    }

    else if (v9 >= v11)
    {
      return;
    }

    v12 = *(a2 - 8);
    if (v12)
    {
      v13 = CFRetain(v12);
      v8 = *v7;
    }

    else
    {
      v13 = 0;
    }

    *(a2 - 24) = v8;
    v14 = *(v7 + 16);
    *(v7 + 16) = 0;
    sub_299235628((a2 - 8), v14);
    *(a2 - 16) = *(v7 + 8);
    if (v3 >= 2)
    {
      v15 = v7;
      do
      {
        v16 = v6 - 1;
        v6 = (v6 - 1) >> 1;
        v7 = a1 + 24 * v6;
        v17 = *v7;
        v18 = *(v7 + 8);
        if (v18 == v11 || vabdd_f64(v17, v10) > 0.3)
        {
          if (v17 <= v10)
          {
            goto LABEL_19;
          }
        }

        else if (v18 >= v11)
        {
LABEL_19:
          v7 = v15;
          break;
        }

        *v15 = v17;
        v19 = *(v7 + 16);
        *(v7 + 16) = 0;
        sub_299235628((v15 + 16), v19);
        *(v15 + 8) = *(v7 + 8);
        v15 = a1 + 24 * v6;
      }

      while (v16 > 1);
    }

    *v7 = v10;
    sub_299235628((v7 + 16), v13);
    *(v7 + 8) = v11;
  }
}

uint64_t sub_2993EE2A0(void *a1)
{
  v2 = a1[5] + a1[4] - 1;
  sub_299235628((*(a1[1] + 8 * (v2 / 0xAA)) + 24 * (v2 % 0xAA) + 16), 0);
  --a1[5];

  return sub_2993EE324(a1, 1);
}

uint64_t sub_2993EE324(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 170 * ((v2 - v3) >> 3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0xAA)
  {
    a2 = 1;
  }

  if (v5 < 0x154)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

void *sub_2993EE39C(uint64_t a1, void *a2, unint64_t a3, double a4)
{
  v6 = *(a1 + 8);
  result = (a1 + 8);
  v5 = v6;
  if (v6)
  {
    while (1)
    {
      v7 = v5;
      v8 = *(v5 + 32);
      v9 = *(v5 + 40);
      if (v9 == a3)
      {
        if (v8 < a4)
        {
          goto LABEL_11;
        }

        goto LABEL_8;
      }

      if (vabdd_f64(a4, v8) <= 0.3)
      {
        if (v9 > a3)
        {
          goto LABEL_11;
        }

LABEL_7:
        if (vabdd_f64(v8, a4) <= 0.3)
        {
          if (v9 >= a3)
          {
            goto LABEL_17;
          }

          goto LABEL_14;
        }

LABEL_8:
        if (v8 <= a4)
        {
          goto LABEL_17;
        }

LABEL_14:
        result = v7 + 1;
        v5 = v7[1];
        if (!v5)
        {
          goto LABEL_17;
        }
      }

      else
      {
        if (v8 >= a4)
        {
          goto LABEL_7;
        }

LABEL_11:
        v5 = *v7;
        result = v7;
        if (!*v7)
        {
          goto LABEL_17;
        }
      }
    }
  }

  v7 = result;
LABEL_17:
  *a2 = v7;
  return result;
}

uint64_t sub_2993EE434(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_299235628(v2 + 6, 0);
    }

    operator delete(v2);
  }

  return a1;
}

__n128 sub_2993EE4F8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F79EE8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2993EE528(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 16);
  LXCursorTerminationProbability();
  v7 = v6 + *a2;
  if (v7 >= *(v4 + 24))
  {
    v8 = *(a1 + 16);
    v10 = v8[1];
    v9 = v8[2];
    if (v10 >= v9)
    {
      v14 = 0xAAAAAAAAAAAAAAABLL * ((v10 - *v8) >> 3);
      if (v14 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_299212A8C();
      }

      v15 = 0xAAAAAAAAAAAAAAABLL * ((v9 - *v8) >> 3);
      v16 = 2 * v15;
      if (2 * v15 <= v14 + 1)
      {
        v16 = v14 + 1;
      }

      if (v15 >= 0x555555555555555)
      {
        v17 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v17 = v16;
      }

      v35 = *(a1 + 16);
      if (v17)
      {
        sub_2993EE784(v17);
      }

      v18 = 24 * v14;
      v31 = 0;
      v32 = v18;
      v33 = v18;
      v34 = 0;
      v20 = *(a2 + 8);
      v19 = *(a2 + 16);
      *v18 = v7;
      *(v18 + 8) = v20;
      if (v19)
      {
        v19 = CFRetain(v19);
        v21 = v32;
        v22 = v33;
      }

      else
      {
        v21 = v18;
        v22 = v18;
      }

      *(v18 + 16) = v19;
      v33 = v22 + 24;
      v23 = v8[1];
      v24 = v21 + *v8 - v23;
      sub_2993EE7DC(*v8, v23, v24);
      v25 = *v8;
      *v8 = v24;
      v13 = v33;
      v31 = v25;
      v32 = v25;
      v8[1] = v33;
      v33 = v25;
      v26 = v8[2];
      v8[2] = v34;
      v34 = v26;
      sub_2993EE8A0(&v31);
    }

    else
    {
      v12 = *(a2 + 8);
      v11 = *(a2 + 16);
      *v10 = v7;
      *(v10 + 8) = v12;
      if (v11)
      {
        v11 = CFRetain(v11);
      }

      *(v10 + 16) = v11;
      v13 = v10 + 24;
      v8[1] = v10 + 24;
    }

    v8[1] = v13;
    sub_2993EE134(*v8, v13, 0xAAAAAAAAAAAAAAABLL * ((v13 - *v8) >> 3));
    v27 = *(a1 + 16);
    v28 = *(v27 + 8);
    v29 = 0xAAAAAAAAAAAAAAABLL * ((v28 - *v27) >> 3);
    if (v29 > *(v4 + 16))
    {
      sub_2993EDF60(*v27, v28, &v31, v29);
      v30 = *(v27 + 8);
      sub_299235628((v30 - 8), 0);
      *(v27 + 8) = v30 - 24;
    }
  }
}

uint64_t sub_2993EE738(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F79F58))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2993EE784(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_29919600C();
}

void sub_2993EE7DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    v6 = 0;
    do
    {
      v7 = (a3 + v6);
      v9 = *(v5 + v6 + 8);
      v8 = *(v5 + v6 + 16);
      *v7 = *(v5 + v6);
      v7[1] = v9;
      if (v8)
      {
        v8 = CFRetain(v8);
      }

      v7[2] = v8;
      v6 += 24;
    }

    while (v5 + v6 != a2);
    do
    {
      sub_299235628((v5 + 16), 0);
      v5 += 24;
    }

    while (v5 != a2);
  }
}

void sub_2993EE86C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = -v2;
    v5 = (v1 + v2 - 8);
    do
    {
      sub_299235628(v5, 0);
      v5 -= 3;
      v4 += 24;
    }

    while (v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2993EE8A0(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
    sub_299235628((i - 8), 0);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_2993EE8F8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

__n128 sub_2993EE9FC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F79F78;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void sub_2993EEA3C(uint64_t a1, uint64_t a2)
{
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x2000000000;
  v6 = *(a1 + 40);
  v2 = *(a1 + 24) - *a2;
  if (0xAAAAAAAAAAAAAAABLL * ((*(v6 + 8) - *v6) >> 3) == *(a1 + 8))
  {
    v2 = fmax(**v6 + -0.3 - *a2, v2);
  }

  if (v2 <= 0.0)
  {
    v3 = *(a2 + 16);
    v4 = *(a1 + 16);
    sub_299235108();
  }

  _Block_object_dispose(v5, 8);
}

uint64_t sub_2993EEB54(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F79FD8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2993EEBA0(uint64_t a1, const void *a2, uint64_t a3, double a4)
{
  if (LXCursorHasEntries())
  {
    v8 = **(a1 + 40) + a4;
    LXCursorTerminationProbability();
    v10 = v8 + v9;
    if (v10 >= *(a1 + 48))
    {
      v11 = *(*(*(a1 + 32) + 8) + 24);
      v12 = *(*(a1 + 40) + 8) + a3;
      v14 = v11[1];
      v13 = v11[2];
      if (v14 >= v13)
      {
        v16 = 0xAAAAAAAAAAAAAAABLL * ((v14 - *v11) >> 3);
        if (v16 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_299212A8C();
        }

        v17 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *v11) >> 3);
        v18 = 2 * v17;
        if (2 * v17 <= v16 + 1)
        {
          v18 = v16 + 1;
        }

        if (v17 >= 0x555555555555555)
        {
          v19 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v19 = v18;
        }

        v37 = *(*(*(a1 + 32) + 8) + 24);
        if (v19)
        {
          sub_2993EE784(v19);
        }

        v21 = 24 * v16;
        v33 = 0;
        v34 = v21;
        v35 = v21;
        v36 = 0;
        *v21 = v10;
        *(v21 + 8) = v12;
        if (a2)
        {
          v22 = CFRetain(a2);
          v23 = v34;
          v24 = v35;
        }

        else
        {
          v22 = 0;
          v23 = v21;
          v24 = v21;
        }

        *(v21 + 16) = v22;
        v35 = v24 + 24;
        v25 = v11[1];
        v26 = v23 + *v11 - v25;
        sub_2993EE7DC(*v11, v25, v26);
        v27 = *v11;
        *v11 = v26;
        v20 = v35;
        v33 = v27;
        v34 = v27;
        v11[1] = v35;
        v35 = v27;
        v28 = v11[2];
        v11[2] = v36;
        v36 = v28;
        sub_2993EE8A0(&v33);
      }

      else
      {
        *v14 = v10;
        *(v14 + 8) = v12;
        if (a2)
        {
          v15 = CFRetain(a2);
        }

        else
        {
          v15 = 0;
        }

        *(v14 + 16) = v15;
        v20 = v14 + 24;
        v11[1] = v14 + 24;
      }

      v11[1] = v20;
      sub_2993EE134(*v11, v20, 0xAAAAAAAAAAAAAAABLL * ((v20 - *v11) >> 3));
      v29 = *(*(*(a1 + 32) + 8) + 24);
      v30 = *(v29 + 8);
      v31 = 0xAAAAAAAAAAAAAAABLL * ((v30 - *v29) >> 3);
      if (v31 > *(a1 + 56))
      {
        sub_2993EDF60(*v29, v30, &v33, v31);
        v32 = *(v29 + 8);
        sub_299235628((v32 - 8), 0);
        *(v29 + 8) = v32 - 24;
      }
    }
  }
}

uint64_t sub_2993EEDEC(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  while (v2 != v3)
  {
  }

  sub_29921B8CC(a1 + 40, *(a1 + 48));
  v4 = *(a1 + 8);
  if (v4)
  {
    *(a1 + 16) = v4;
    operator delete(v4);
  }

  return a1;
}

void sub_2993EEE54(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v2 != v3)
  {
    do
    {
      v4 = *v2++;
    }

    while (v2 != v3);
    v2 = a1[1];
  }

  v6 = a1[6];
  v5 = a1 + 6;
  *(v5 - 4) = v2;
  sub_29921B8CC((v5 - 1), v6);
  *v5 = 0;
  v5[1] = 0;
  *(v5 - 2) = *(v5 - 5);
  *(v5 - 1) = v5;
}

uint64_t sub_2993EEEB8(int *a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 4);
  if (v5 == *(a1 + 2))
  {
    return 0;
  }

  v16[9] = v3;
  v16[10] = v4;
  while (1)
  {
    Surface = MecabraCandidateGetSurface(*v5, a2, a3);
    if (!Surface)
    {
      break;
    }

    v8 = Surface;
    v9 = *a1;
    if (atomic_load_explicit(&qword_2A14618C0, memory_order_acquire) != -1)
    {
      v15 = v16;
      v16[0] = &v14;
      std::__call_once(&qword_2A14618C0, &v15, sub_2993EF5F8);
    }

    v10 = v9 == 5 || v9 == 2;
    if (!v10 || (v11 = qword_2A14618B8) == 0 || (v17.length = CFArrayGetCount(qword_2A14618B8), v17.location = 0, !CFArrayContainsValue(v11, v17, v8)))
    {
      if ((sub_2992BF2E4(*(a1 + 9), v8, 2048) & 1) == 0)
      {
        break;
      }
    }

    v5 = (*(a1 + 4) + 8);
    *(a1 + 4) = v5;
    if (v5 == *(a1 + 2))
    {
      return 0;
    }
  }

  v13 = *(a1 + 4);
  *(a1 + 4) = v13 + 8;
  return *v13;
}

uint64_t sub_2993EEFE0(void *a1, void *a2, uint64_t a3)
{
  if (a1[8] > ((a1[2] - a1[1]) >> 3))
  {
    v3 = objc_msgSend_rawCandidate(a2, a2, a3);
    v4 = (*(*v3 + 32))(v3);
    sub_299276A84(v4);
  }

  return MEMORY[0x2A1C71028]();
}

void sub_2993EF14C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    MEMORY[0x29C29BF70](v1, 0x1000C80BDFB0063);
  }

  _Unwind_Resume(exception_object);
}

void sub_2993EF174(void *a1, void *a2, uint64_t a3)
{
  v5 = a2[1];
  if (v5 != a2[2])
  {
    do
    {
      v6 = *v5++;
      sub_2993EEFE0(a1, v6, a3);
    }

    while (v5 != a2[2]);
    v5 = a2[1];
  }

  v8 = a2[6];
  v7 = a2 + 6;
  *(v7 - 4) = v5;
  sub_29921B8CC((v7 - 1), v8);
  *v7 = 0;
  v7[1] = 0;
  *(v7 - 1) = v7;
  a1[4] = a1[1];
}

void sub_2993EF1E8(void *a1, uint64_t a2, unint64_t a3)
{
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  if (v5 != v6)
  {
    v7 = a1[2];
    v8 = a1 + 1;
    if ((v7 - a1[1]) >> 3 >= a3)
    {
      v9 = a3;
    }

    else
    {
      v9 = (v7 - a1[1]) >> 3;
    }

    v10 = a1 + 6;
    do
    {
      v22 = *v5;
      v11 = objc_msgSend_rawCandidate(v22, a2, a3);
      v12 = (*(*v11 + 32))(v11);
      v13 = sub_299279FBC(v12);
      v21 = v13;
      v14 = *v10;
      if (!*v10)
      {
        goto LABEL_14;
      }

      v15 = a1 + 6;
      do
      {
        v16 = *(v14 + 28);
        v17 = v16 >= v13;
        v18 = v16 < v13;
        if (v17)
        {
          v15 = v14;
        }

        v14 = *(v14 + 8 * v18);
      }

      while (v14);
      if (v15 != v10 && v13 >= *(v15 + 7))
      {
      }

      else
      {
LABEL_14:
        sub_2993EF32C(a1 + 1, (*v8 + 8 * v9), &v22);
        sub_2992BD068((a1 + 5), &v21);
        ++v9;
      }

      ++v5;
    }

    while (v5 != v6);
    v5 = *(a2 + 8);
  }

  v20 = *(a2 + 48);
  v19 = (a2 + 48);
  *(v19 - 4) = v5;
  sub_29921B8CC((v19 - 1), v20);
  *v19 = 0;
  v19[1] = 0;
  *(v19 - 1) = v19;
  a1[4] = a1[1];
}

char *sub_2993EF32C(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      sub_2993EF630();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    if (v14)
    {
      sub_2993EF648(a1, v14);
    }

    v16 = (8 * v15);
    if (!v15)
    {
      if (v12 < 1)
      {
        if (v10 == v4)
        {
          v19 = 1;
        }

        else
        {
          v19 = v12 >> 2;
        }

        sub_2993EF648(a1, v19);
      }

      v16 = (v16 - (((v12 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8));
    }

    *v16 = *a3;
    memcpy(v16 + 1, v4, a1[1] - v4);
    v20 = *a1;
    v21 = v16 + a1[1] - v4 + 8;
    a1[1] = v4;
    v22 = v4 - v20;
    v23 = v16 - (v4 - v20);
    memcpy(v23, v20, v22);
    v24 = *a1;
    *a1 = v23;
    a1[1] = v21;
    a1[2] = 0;
    if (v24)
    {
      operator delete(v24);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 8;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = a1[1];
    }

    v17 = v9 <= a3 || v4 > a3;
    v18 = 8;
    if (v17)
    {
      v18 = 0;
    }

    *v4 = *&a3[v18];
  }

  return v4;
}

void sub_2993EF50C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2993EF524(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_2993EF630();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_2993EF648(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

CFArrayRef sub_2993EF5F8()
{
  result = CFArrayCreate(0, &off_2A145FBA0, 4, MEMORY[0x29EDB9000]);
  qword_2A14618B8 = result;
  return result;
}

void sub_2993EF648(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_29919600C();
}

uint64_t sub_2993EF690(uint64_t a1, unsigned int a2)
{
  *(a1 + 16) = 850045863;
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = &unk_2A1F79FF8;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  if (!sub_2993EFD48())
  {
    return a1;
  }

  v5 = sub_299277498(a2);
  if (!v5)
  {
    return a1;
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v6 = off_2A14618D0;
  v13 = off_2A14618D0;
  if (!off_2A14618D0)
  {
    v7 = sub_2993EFEDC();
    v11[3] = dlsym(v7, "NLStringTokenizerCreate");
    off_2A14618D0 = v11[3];
    v6 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (v6)
  {
    v8 = (v6)(0, 0, 0, 0, 0, v5);
    sub_2993EF880(v4, v8);
    CFRelease(v5);
    return a1;
  }

  dlerror();
  result = abort_report_np();
  __break(1u);
  return result;
}

void sub_2993EF830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, const void *);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  sub_299253084(va, 0);
  std::mutex::~mutex(v4);
  sub_2993EF880(v3, 0);
  _Unwind_Resume(a1);
}

void sub_2993EF880(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void sub_2993EF8B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 8))
  {
    std::mutex::lock((a1 + 16));
    v8 = *(a1 + 8);
    v11 = 0;
    v12 = &v11;
    v13 = 0x2000000000;
    v9 = off_2A14618D8;
    v14 = off_2A14618D8;
    if (!off_2A14618D8)
    {
      v10 = sub_2993EFEDC();
      v12[3] = dlsym(v10, "NLStringTokenizerSetString");
      off_2A14618D8 = v12[3];
      v9 = v12[3];
    }

    _Block_object_dispose(&v11, 8);
    if (v9)
    {
      v9(v8, a2, a3, a4);
      std::mutex::unlock((a1 + 16));
    }

    else
    {
      dlerror();
      abort_report_np();
      __break(1u);
    }
  }
}

void sub_2993EF9FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  std::mutex::unlock((v7 + 16));
  _Unwind_Resume(a1);
}

BOOL sub_2993EFA24(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    return 0;
  }

  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v2 = off_2A14618E0;
  v9 = off_2A14618E0;
  if (!off_2A14618E0)
  {
    v3 = sub_2993EFEDC();
    v7[3] = dlsym(v3, "NLStringTokenizerAdvanceToNextToken");
    off_2A14618E0 = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v2)
  {
    dlerror();
    v5 = abort_report_np();
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v5);
  }

  return v2(v1) != 0;
}

uint64_t sub_2993EFB4C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    return 0;
  }

  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v2 = off_2A14618E8;
  v9 = off_2A14618E8;
  if (!off_2A14618E8)
  {
    v3 = sub_2993EFEDC();
    v7[3] = dlsym(v3, "NLStringTokenizerGetCurrentTokenRange");
    off_2A14618E8 = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v2)
  {
    dlerror();
    v5 = abort_report_np();
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v5);
  }

  return v2(v1);
}

uint64_t sub_2993EFC78(uint64_t a1)
{
  *a1 = &unk_2A1F79FF8;
  v2 = (a1 + 8);
  std::mutex::~mutex((a1 + 16));
  sub_2993EF880(v2, 0);
  return a1;
}

void sub_2993EFCD0(uint64_t a1)
{
  *a1 = &unk_2A1F79FF8;
  v1 = (a1 + 8);
  std::mutex::~mutex((a1 + 16));
  sub_2993EF880(v1, 0);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2993EFD48()
{
  v2 = *MEMORY[0x29EDCA608];
  if (!qword_2A14618C8)
  {
    qword_2A14618C8 = _sl_dlopen();
  }

  result = qword_2A14618C8;
  v1 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_2993EFE18(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_2A14618C8 = result;
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

void *sub_2993EFE8C(uint64_t a1)
{
  v2 = sub_2993EFEDC();
  result = dlsym(v2, "NLStringTokenizerCreate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_2A14618D0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_2993EFEDC()
{
  v0 = sub_2993EFD48();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

void *sub_2993EFF38(uint64_t a1)
{
  v2 = sub_2993EFEDC();
  result = dlsym(v2, "NLStringTokenizerSetString");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_2A14618D8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_2993EFF88(uint64_t a1)
{
  v2 = sub_2993EFEDC();
  result = dlsym(v2, "NLStringTokenizerAdvanceToNextToken");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_2A14618E0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_2993EFFD8(uint64_t a1)
{
  v2 = sub_2993EFEDC();
  result = dlsym(v2, "NLStringTokenizerGetCurrentTokenRange");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_2A14618E8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_2993F0028(void *a1)
{
  *a1 = &unk_2A1F719F0;
  v2 = (a1 + 1);
  sub_29921ED28((a1 + 3));
  sub_2992530BC(v2, 0);
  return a1;
}

void sub_2993F0080(void *a1)
{
  *a1 = &unk_2A1F719F0;
  v1 = (a1 + 1);
  sub_29921ED28((a1 + 3));
  sub_2992530BC(v1, 0);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2993F0120()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v63 = *MEMORY[0x29EDCA608];
  v6 = malloc_type_malloc(0x5CuLL, 0x10B00409D9B1D59uLL);
  if (v6)
  {
    v7 = v6;
    errorCode = 0;
    resourceData = 0;
    if (CFURLCreateDataAndPropertiesFromResource(*MEMORY[0x29EDB8ED8], v4, &resourceData, 0, 0, &errorCode) && (Length = CFDataGetLength(resourceData), (v9 = malloc_type_malloc(Length, 0x100004077774924uLL)) != 0))
    {
      v10 = v9;
      v64.location = 0;
      v64.length = Length;
      CFDataGetBytes(resourceData, v64, v9);
      CFRelease(resourceData);
      *v7 = *v10;
      v11 = bswap32(*(v10 + 1)) >> 16;
      *(v7 + 1) = v11;
      v12 = bswap32(*(v10 + 2)) >> 16;
      *(v7 + 2) = v12;
      *(v7 + 3) = bswap32(*(v10 + 3)) >> 16;
      *(v7 + 4) = bswap32(*(v10 + 4)) >> 16;
      *(v7 + 5) = bswap32(*(v10 + 5)) >> 16;
      *(v7 + 6) = bswap32(*(v10 + 6)) >> 16;
      *(v7 + 7) = bswap32(*(v10 + 7)) >> 16;
      *(v7 + 8) = bswap32(*(v10 + 8)) >> 16;
      *(v7 + 9) = bswap32(*(v10 + 9)) >> 16;
      v13 = malloc_type_malloc(v11 * v12 + v11, 0x100004077774924uLL);
      *(v7 + 20) = v13;
      if (v13)
      {
        v58 = v2;
        v59 = v10;
        memmove(v13, v10 + 20, *(v7 + 2) * *(v7 + 1));
        v14 = *(v7 + 2) * *(v7 + 1);
        v15 = v14 + 20;
        if (v14 >= 1)
        {
          v16 = 0;
          do
          {
            *(*(v7 + 20) + v16++) ^= *v7;
          }

          while (v16 < *(v7 + 2) * *(v7 + 1));
        }

        v17 = *(v7 + 3);
        v18 = *(v7 + 4);
        if (v17 > 0)
        {
          v19 = 0;
          v20 = __src;
          do
          {
            memmove(&__src[256 * v19], &v59[v15], v18);
            if (v18 >= 1)
            {
              v21 = *v7;
              v22 = v20;
              v23 = v18;
              do
              {
                *v22 ^= v21;
                v22 = (v22 + 1);
                --v23;
              }

              while (v23);
            }

            v15 += v18;
            *(&__src[256 * v19++] + v18) = 0;
            v20 += 256;
          }

          while (v19 != v17);
        }

        v24 = malloc_type_malloc((v18 + 2) * v17, 0x100004077774924uLL);
        *(v7 + 28) = v24;
        if (v24)
        {
          if (*(v7 + 3) >= 1)
          {
            v25 = 0;
            v26 = __src;
            do
            {
              memmove((*(v7 + 28) + (*(v7 + 4) + 2) * v25++), v26, *(v7 + 4) + 2);
              v26 += 256;
            }

            while (v25 < *(v7 + 3));
          }

          v27 = *(v7 + 5);
          v28 = *(v7 + 6);
          if (v27 > 0)
          {
            v29 = 0;
            v30 = __src;
            do
            {
              memmove(&__src[256 * v29], &v59[v15], v28);
              if (v28 >= 1)
              {
                v31 = *v7;
                v32 = v30;
                v33 = v28;
                do
                {
                  *v32 ^= v31;
                  v32 = (v32 + 1);
                  --v33;
                }

                while (v33);
              }

              v15 += v28;
              *(&__src[256 * v29++] + v28) = 0;
              v30 += 256;
            }

            while (v29 != v27);
          }

          v34 = malloc_type_malloc((v28 + 2) * v27, 0x100004077774924uLL);
          *(v7 + 36) = v34;
          if (v34)
          {
            v10 = v59;
            if (*(v7 + 5) >= 1)
            {
              v35 = 0;
              v36 = __src;
              do
              {
                memmove((*(v7 + 36) + (*(v7 + 6) + 2) * v35++), v36, *(v7 + 6) + 2);
                v36 += 256;
              }

              while (v35 < *(v7 + 5));
            }

            v37 = *(v7 + 7);
            v38 = *(v7 + 7);
            memmove(__src, &v59[v15], v38);
            if (v37 >= 1)
            {
              v39 = *v7;
              v40 = __src;
              v41 = v37;
              do
              {
                *v40 ^= v39;
                v40 = (v40 + 1);
                --v41;
              }

              while (v41);
            }

            *(__src + v38) = 0;
            v42 = malloc_type_malloc(v38 + 2, 0x100004077774924uLL);
            *(v7 + 44) = v42;
            if (v42)
            {
              v43 = v15 + v37;
              sub_29936B460(v42, __src, *(v7 + 7) + 2);
              v44 = *(v7 + 8);
              v45 = *(v7 + 8);
              memmove(__src, &v59[v43], v45);
              if (v44 >= 1)
              {
                v46 = *v7;
                v47 = __src;
                v48 = v44;
                do
                {
                  *v47 ^= v46;
                  v47 = (v47 + 1);
                  --v48;
                }

                while (v48);
              }

              *(__src + v45) = 0;
              v49 = malloc_type_malloc(v45 + 2, 0x100004077774924uLL);
              *(v7 + 52) = v49;
              v2 = v58;
              if (v49)
              {
                sub_29936B460(v49, __src, *(v7 + 8) + 2);
                v50 = *(v7 + 9);
                memmove(__src, &v59[(v43 + v44)], v50);
                if (v50 >= 1)
                {
                  v51 = *v7;
                  v52 = __src;
                  v53 = v50;
                  do
                  {
                    *v52 ^= v51;
                    v52 = (v52 + 1);
                    --v53;
                  }

                  while (v53);
                }

                *(__src + v50) = 0;
                v54 = malloc_type_malloc(v50 + 2, 0x100004077774924uLL);
                *(v7 + 60) = v54;
                if (v54)
                {
                  sub_29936B460(v54, __src, *(v7 + 9) + 2);
                  free(v59);
                  goto LABEL_54;
                }

                errorCode = -108;
                v49 = *(v7 + 52);
              }

              else
              {
                errorCode = -108;
              }

              free(v49);
              v42 = *(v7 + 44);
            }

            else
            {
              errorCode = -108;
              v2 = v58;
            }

            free(v42);
            v34 = *(v7 + 36);
          }

          else
          {
            errorCode = -108;
            v2 = v58;
            v10 = v59;
          }

          free(v34);
          v24 = *(v7 + 28);
        }

        else
        {
          errorCode = -108;
          v2 = v58;
          v10 = v59;
        }

        free(v24);
        v13 = *(v7 + 20);
      }

      else
      {
        errorCode = -108;
      }

      free(v13);
      free(v10);
      v55 = errorCode;
      if (!errorCode)
      {
LABEL_54:
        v55 = sub_299275374((v7 + 68), v2);
        if (!v55)
        {
          *v5 = v7;
          goto LABEL_56;
        }
      }
    }

    else
    {
      v55 = 4294967188;
    }

    free(v7);
    goto LABEL_56;
  }

  v55 = 4294967188;
LABEL_56:
  v56 = *MEMORY[0x29EDCA608];
  return v55;
}

void sub_2993F0780(uint64_t a1)
{
  if (a1)
  {
    free(*(a1 + 20));
    free(*(a1 + 28));
    free(*(a1 + 36));
    free(*(a1 + 44));
    free(*(a1 + 52));
    free(*(a1 + 60));
    sub_2992752C4(a1 + 68);

    free(a1);
  }
}

uint64_t sub_2993F07F4(uint64_t a1, unsigned __int16 *a2, int a3, int a4, uint64_t a5, _DWORD *a6, int *a7, int a8, __int16 a9, char a10)
{
  v15 = a3;
  v251 = *MEMORY[0x29EDCA608];
  if (a3 > 127)
  {
    v17 = (a2 + a3 - 128);
    v18 = s;
    v19 = 128;
    while (v19)
    {
      v20 = *v17++;
      *v18++ = v20;
      v19 -= 2;
      if (!v20)
      {
        if (v19)
        {
          bzero(v18, v19);
        }

        break;
      }
    }

    s[64] = 0;
    v15 = 128;
  }

  else
  {
    if ((a3 - 257) < 0xFFFFFFFFFFFFFEFDLL)
    {
LABEL_3:
      result = 4294967186;
      goto LABEL_372;
    }

    v21 = a3 + ((a3 & 0x80) >> 7);
    v22 = v21 >> 1;
    v23 = 2 * (v21 >> 1);
    v24 = s;
    while (v22)
    {
      v25 = *a2++;
      *v24++ = v25;
      v23 -= 2;
      --v22;
      if (!v25)
      {
        if (v22)
        {
          bzero(v24, v23);
        }

        break;
      }
    }

    *(s + v15) = 0;
  }

  *v234 = a4;
  v226[0] = a10;
  v26 = v15 - a4;
  if (v15 == a4)
  {
    result = 0;
    *a7 = 0;
    goto LABEL_372;
  }

  v215 = a4;
  v219 = a8;
  v214 = v15;
  v216 = a5;
  v217 = a6;
  v218 = a7;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = a9;
  *&v245[4] = 0;
  v244[0] = 0;
  v220 = v26;
  v31 = v26;
  LOWORD(a8) = 1;
  v32 = a9;
  do
  {
    v33 = sub_2993F3D88(a1, s, v31 - v27, 0, &v245[4], v244);
    if (v33)
    {
      v29 = 0;
      v34 = a8;
      v35 = v27;
      v28 = v33;
      v32 = v30;
    }

    else
    {
      v36 = sub_2993F3D88(a1, s, v31 - v27 + v28, v29, &v245[4], v244);
      if (v36)
      {
        v34 = a8 - 1;
      }

      else
      {
        v34 = a8;
      }

      if (v36)
      {
        v35 = v27 - v28;
      }

      else
      {
        v35 = v27;
      }

      if (v36)
      {
        v28 = v36;
      }

      else
      {
        v28 = 0;
      }

      if (!v36)
      {
        v32 = v30;
      }
    }

    v27 = v35 + v28;
    v37 = v32;
    if (v32 <= *&v245[4])
    {
      v37 = *&v245[4];
    }

    if (v32)
    {
      v30 = v37;
    }

    else
    {
      v30 = *&v245[4];
    }

    *&v225[2 * v34 + 1] = v30;
    v38 = v244[0];
    v226[v34 + 51] = sub_299349620(v244[0]);
    v39 = v27;
    *&v234[2 * v34] = v39;
    v226[v34] = v38;
    a8 = (v34 + 1);
    if (a8 > 49)
    {
      v34 = 0;
      goto LABEL_43;
    }

    if (!v28)
    {
      break;
    }

    ++v29;
  }

  while ((v35 + v28) != v220);
  if (v28)
  {
    goto LABEL_44;
  }

LABEL_43:
  LOWORD(a8) = v34;
LABEL_44:
  v40 = v218;
  if (a8 < 2 || !(v35 + v28))
  {
    goto LABEL_371;
  }

  if (a8 >= 0x10u)
  {
    *(v216 + 66) = v27 + v215;
    v41 = v226[a8 + 50];
    if (v41 == 1)
    {
      v42 = 2;
    }

    else
    {
      if (v41 != 4)
      {
        goto LABEL_371;
      }

      v42 = 6;
    }

    *(v216 + 68) = v41;
    *(v216 + 69) = v42;
    if (v39 + v215 <= 63)
    {
      v199 = v220 - v27;
      if ((2 * u_strlen((s + v199)) - 65) < 0xFFFFFFBD)
      {
        goto LABEL_3;
      }

      sub_29936B460(v216, (s + v199), 0x42uLL);
      if (v199 >= v214)
      {
LABEL_370:
        result = 0;
        *v217 = -1;
        *v218 = 1;
        goto LABEL_372;
      }

      v200 = s + v220 - (v35 + v28);
      while (1)
      {
        v244[0] = 0;
        if (!*(a1 + 82))
        {
          break;
        }

        sub_2993F7500(*(a1 + 84), v200, 2, &v245[4], v244);
        if (!v244[0])
        {
          break;
        }

        v199 += 2;
        v200 += 2;
        if (v199 >= v214)
        {
          goto LABEL_370;
        }
      }
    }

LABEL_371:
    result = 0;
    *v218 = 0;
    goto LABEL_372;
  }

  v43 = 0;
  v44 = 0;
  v246 = 0x100010001;
  v247 = 1;
  v248 = 0;
  v45 = *(a1 + 60);
  v46 = v45 + 36;
  v249 = 0x1000100010001;
  v250 = 0;
  v47 = &v245[4];
  do
  {
    v48 = &v228[v43];
    *&v228[v43 + 1] = *(v46 - 16);
    if (*v47++)
    {
      *v48 = 2;
      *(v48 + 3) = *v46;
      v50 = v48 + 5;
    }

    else
    {
      v50 = &v228[8 * v44 - v44 + 3];
      v228[v43] = -1;
    }

    ++v46;
    *v50 = 0;
    ++v44;
    v43 += 7;
  }

  while (v43 != 112);
  v228[112] = -1;
  v229 = v45[52];
  v230 = -1;
  v231 = v45[53];
  v232 = 0;
  *v218 = 0;
  LODWORD(v51) = *v217;
  if (!*v217)
  {
    LODWORD(v51) = a8 - 1;
    *v217 = v51;
  }

  if (v51 < 1)
  {
    goto LABEL_375;
  }

  v52 = 0;
  v51 = v51;
  v53 = v51 + 1;
  v221 = v27;
  v54 = v219;
  while (2)
  {
    if (v54 && *&v234[2 * v51] != v39)
    {
      goto LABEL_71;
    }

    v55 = v39;
    if ((2 * u_strlen(s) - 257) < 0xFFFFFEFD)
    {
      goto LABEL_62;
    }

    sub_29936B460(v237, s, 0x102uLL);
    if (*v40 >= 46)
    {
      *v40 = v52;
      goto LABEL_374;
    }

    v56 = *(a1 + 60);
    v57 = *(a1 + 44);
    v243[0] = 0;
    v241[0] = 0;
    v240[0] = 0;
    v224 = 0;
    v223 = 0;
    v58 = v226[v51];
    v59 = v58 - 200 > 3 || v58 == 201;
    v39 = v55;
    if (!v59 || (v58 & 0xFE) == 2 || *&v226[v51] / 0xAu - 13 < 3 || v58 - 112 <= 9 && ((1 << (v58 - 112)) & 0x203) != 0 || (v58 & 0xFE) == 0x72)
    {
      goto LABEL_69;
    }

    v61 = v226[v51];
    v62 = v51;
    do
    {
      v63 = v61;
      v61 = v225[v62 + 102];
      if (v63 <= 0x2C && ((1 << v63) & 0x100000804000) != 0)
      {
        goto LABEL_69;
      }

      v64 = v63 == 93 || v63 == 45;
      v65 = v64 || v63 == 73;
      v66 = v65;
      if (v61 != 100 && v66)
      {
        goto LABEL_69;
      }

      if (v63 - 30 < 3 || v63 == 210)
      {
        if (v61 - 110 <= 0xA && ((1 << (v61 - 110)) & 0x403) != 0)
        {
          goto LABEL_69;
        }
      }

      else if (v61 - 112 <= 9 && ((1 << (v61 - 112)) & 0x203) != 0)
      {
        goto LABEL_69;
      }

      if ((v61 & 0xFE) == 0x72)
      {
        if (v63 - 60 > 0x17 || ((1 << (v63 - 60)) & 0xB0000B) == 0)
        {
          goto LABEL_69;
        }
      }

      else if (v63 == 83)
      {
        if (v61 != 120 && v61 != 150)
        {
          goto LABEL_69;
        }
      }

      else
      {
        if (v63 == 63 || v61 == 45 && v63 - 110 <= 0x28 && ((1 << (v63 - 110)) & 0x10040100C3FLL) != 0)
        {
          goto LABEL_69;
        }

        v212 = v56;
        v210 = sub_299349620(v225[v62 + 102]);
        v68 = sub_299349620(v63);
        v56 = v212;
        v39 = v55;
        if (!(v210 | v68) && v61 <= 0x63 && v63 < 0x64)
        {
          goto LABEL_69;
        }
      }

      --v62;
    }

    while ((v62 + 1) > 1);
    v69 = 0;
    v70 = 0;
    v71 = 0;
    v72 = 0;
    v73 = 0;
    v74 = 0;
    v75 = 0;
    v76 = v226;
    v77 = v53;
    do
    {
      v79 = *v76++;
      v78 = v79;
      v80 = v79 - 70;
      if (v79 - 70 <= 0x3C)
      {
        if (((1 << v80) & 0x100C3F00C0000000) != 0)
        {
          goto LABEL_133;
        }

        if (((1 << v80) & 0x100401) != 0)
        {
          goto LABEL_140;
        }

        if (((1 << v80) & 0x200802) != 0)
        {
          goto LABEL_139;
        }
      }

      if (v78 <= 0x3D)
      {
        if (((1 << v78) & 0x1004010040100401) != 0)
        {
          goto LABEL_140;
        }

        if (((1 << v78) & 0x2008020080200802) != 0)
        {
          goto LABEL_139;
        }
      }

      v81 = v78 + 116;
      if (v78 - 140 > 0x3F)
      {
        goto LABEL_128;
      }

      if (((1 << v81) & 0x401) == 0)
      {
        if (((1 << v81) & 0x5000000000000000) != 0)
        {
LABEL_140:
          ++v74;
        }

        else if (((1 << v81) & 0xA000000000000000) != 0)
        {
LABEL_139:
          ++v75;
        }

        else
        {
LABEL_128:
          if (v58 < 2 || v71 || v70)
          {
            goto LABEL_69;
          }

          ++v73;
        }

        v82 = v78 & 0xFE;
        if (v82 == 200)
        {
          if (v72 | v73)
          {
            goto LABEL_69;
          }

          v73 = 0;
          v72 = 0;
          ++v70;
          v69 = v74 + v75 - v71;
        }

        else if (v82 == 202)
        {
          if (v72 | v73)
          {
            goto LABEL_69;
          }

          if (v74 + v75 == ++v71 + v69 || 0xAAAAAAAAAAAAAAABLL * (v74 + v75 - (v71 + v69)) >= 0x5555555555555556)
          {
            goto LABEL_69;
          }

          v73 = 0;
          v72 = 0;
        }

        goto LABEL_149;
      }

LABEL_133:
      if (v58 < 2 || v71 || v70)
      {
        goto LABEL_69;
      }

      v71 = 0;
      ++v72;
LABEL_149:
      --v77;
    }

    while (v77);
    if (v70 >= 2 && v71)
    {
      goto LABEL_69;
    }

    v208 = v57;
    v213 = v56;
    if (v71)
    {
      ++v226[v51 + 51];
    }

    v211 = *v234 + *&v234[2 * v51];
    if (v211 > 0x100)
    {
      goto LABEL_62;
    }

    v83 = 0;
    v84 = v211 >> 1;
    while (v211 >> 1 != v83)
    {
      v85 = *(v237 + v214 - v211 + v83 * 2);
      v236[v83++] = v85;
      if (!v85)
      {
        if (v83 != v84)
        {
          bzero(&v236[v83], 2 * v84 - v83 * 2);
        }

        break;
      }
    }

    *(v236 + v211) = 0;
    v86 = 2 * u_strlen(v236);
    if ((v86 & 0xFE) != 0)
    {
      v87 = 0;
      v88 = 0;
      v225[0] = 0;
      v89 = v86 & 0xFE;
      v90 = &v235[v89 + 38];
      v91 = v86 - 2;
      do
      {
        if (*(a1 + 82))
        {
          sub_2993F7500(*(a1 + 84), v90, 2, v244, v225);
          if (v225[0] && v244[0] == 101)
          {
            v235[v87++] = v91 - v88;
          }
        }

        else
        {
          v225[0] = 0;
        }

        v88 += 2;
        v90 -= 2;
      }

      while (v88 < v89);
      if (v87)
      {
        v92 = 0;
        *&v245[4] = 0;
        v93 = *(&v234[102] + v87 + 1);
        v94 = 2 * (v93 >> 1);
        while (v94 != v92)
        {
          v95 = v236[v92 / 2];
          *&v245[v92 + 4] = v95;
          v92 += 2;
          if (!v95)
          {
            if (v92 != 2 * (v93 >> 1))
            {
              bzero(&v245[v92 + 4], v94 - v92);
            }

            break;
          }
        }

        *&v245[v93 + 4] = 0;
        if (v87 >= 2)
        {
          v96 = v87 - 2;
          while (1)
          {
            v97 = &v235[v96];
            v98 = *v97;
            v99 = v97[1];
            if (v98 - v99 + 2 * u_strlen(&v245[4]) > 0x102)
            {
              break;
            }

            v100 = &v245[4];
            v101 = v245;
            do
            {
              v102 = v100;
              v103 = *(v101 + 2);
              v101 += 2;
              v100 += 2;
            }

            while (v103);
            v93 = v93 + v98 - 2 - v99;
            v104 = (v98 - 2 - v99 + ((v98 - 2 - v99) >> 31)) >> 1;
            v105 = (&v236[1] + v99);
            do
            {
              v106 = v102;
              if (!v104)
              {
                break;
              }

              v107 = *v105++;
              *v102++ = v107;
              --v104;
            }

            while (v107);
            *v106 = 0;
            *&v245[v93 + 4] = 0;
            v60 = v96-- <= 0;
            if (v60)
            {
              goto LABEL_184;
            }
          }

LABEL_186:
          v40 = v218;
          goto LABEL_62;
        }

LABEL_184:
        v108 = u_strlen(&v245[4]);
        v109 = u_strlen(v236);
        v110 = v235[0];
        if (2 * (v109 + v108) - v235[0] > 0x102)
        {
          goto LABEL_186;
        }

        sub_29936B4BC(&v245[4], (&v236[1] + v235[0]), 0x102uLL);
        *&v245[v93 + 2 + 2 * u_strlen(v236) - v110] = 0;
        if ((2 * u_strlen(&v245[4]) - 257) < 0xFFFFFEFD)
        {
          goto LABEL_186;
        }

        sub_29936B460(v236, &v245[4], 0x102uLL);
      }
    }

    v40 = v218;
    if (sub_2993F2230(v236, v243, a1, v228, 0, &v224))
    {
      goto LABEL_62;
    }

    v202 = v224;
    if (!v224)
    {
      v40 = v218;
      if ((2 * u_strlen(v236) - 65) < 0xFFFFFFBD)
      {
        goto LABEL_62;
      }

      sub_29936B460(v241, v236, 0x42uLL);
      v130 = u_strlen(v241);
      if (!(v130 << 17))
      {
        goto LABEL_345;
      }

      v207 = (2 * v130);
      if (v207 < 1)
      {
        v144 = 0;
        goto LABEL_273;
      }

      v131 = sub_2993F21A4(a1, v241);
      v40 = v218;
      v39 = v55;
      if (v131 == -11)
      {
        goto LABEL_69;
      }

      v132 = v131;
      v133 = 0;
      v134 = 0;
      v135 = 0;
      while (1)
      {
        if (!(v133 | v132))
        {
          v135 = 1;
        }

        if ((2 * u_strlen(v240) - 63) < 0xFFFFFFBD)
        {
          goto LABEL_62;
        }

        if (v132 == 102)
        {
          v40 = v218;
          v39 = v55;
          if (v134 == 2)
          {
            goto LABEL_69;
          }

          v136 = v238;
          if (!v133)
          {
            goto LABEL_69;
          }

          do
          {
            v137 = *(v136 + 2);
            v136 += 2;
          }

          while (v137);
          v138 = *v208;
          *(v136 + 1) = v138;
          v59 = v138 == 0;
          v134 = 2;
          v139 = 4;
          if (v59)
          {
            v139 = 2;
          }

          *&v136[v139] = 0;
          v133 += 2;
          if (v207 <= v133)
          {
            goto LABEL_69;
          }
        }

        else
        {
          v140 = v238;
          do
          {
            v141 = *(v140 + 2);
            v140 += 2;
          }

          while (v141);
          if (v134 == 2)
          {
            v134 = 1;
          }

          v142 = *(v213 + 20 + 2 * v132);
          *(v140 + 1) = v142;
          v59 = v142 == 0;
          v143 = 4;
          if (v59)
          {
            v143 = 2;
          }

          *&v140[v143] = 0;
          v133 += 2;
          if (v207 <= v133)
          {
            v144 = (v134 | v135) != 0;
LABEL_273:
            v40 = v218;
            if ((2 * u_strlen(v240) - 65) >= 0xFFFFFFBD)
            {
              sub_29936B460((v216 + 72 * *v218), v240, 0x42uLL);
              v145 = *v218;
              v146 = v216 + 72 * *v218;
              *(v146 + 69) = 6;
              LOBYTE(v127) = v226[v51 + 51];
              *(v146 + 68) = v127;
              v206 = *&v225[2 * v51 + 1];
              *(v146 + 70) = v206;
              *v218 = v145 + 1;
              if (!v144)
              {
                v40 = v218;
                if ((2 * u_strlen(v243) - 65) >= 0xFFFFFFBD)
                {
                  sub_29936B460(v241, v243, 0x42uLL);
                  v165 = 0;
                  LODWORD(v166) = *v218;
                  goto LABEL_308;
                }

                goto LABEL_62;
              }

              v240[0] = 0;
              if (v207 >= 1)
              {
                v147 = 0;
                do
                {
                  v148 = sub_2993F21A4(a1, &v241[v147]);
                  v40 = v218;
                  v39 = v55;
                  if (v148 == -11)
                  {
                    goto LABEL_69;
                  }

                  v149 = v148;
                  if ((2 * u_strlen(v240) - 63) < 0xFFFFFFBD)
                  {
                    goto LABEL_62;
                  }

                  if (v149 == 102)
                  {
                    v150 = v239;
                    do
                    {
                      v151 = v150[1];
                      ++v150;
                    }

                    while (v151);
                    v152 = v208[11];
                  }

                  else
                  {
                    v150 = v239;
                    do
                    {
                      v153 = v150[1];
                      ++v150;
                    }

                    while (v153);
                    v152 = *(v213 + 2 * v149);
                  }

                  *v150 = v152;
                  if (!v152)
                  {
                    --v150;
                  }

                  v150[1] = 0;
                  ++v147;
                }

                while (v207 > (v147 * 2));
              }

              v40 = v218;
              if ((2 * u_strlen(v240) - 65) < 0xFFFFFFBD)
              {
                goto LABEL_62;
              }

              sub_29936B460((v216 + 72 * *v218), v240, 0x42uLL);
              v154 = *v218;
              v155 = v216 + 72 * *v218;
              *(v155 + 69) = 2;
              *(v155 + 68) = v127;
              *(v155 + 70) = v206;
              v156 = v154 + 1;
              *v218 = v154 + 1;
              if (v154 >= v52)
              {
                v157 = 0;
                v158 = v156 - v52;
                v159 = (v158 + 7) & 0xFFFFFFFFFFFFFFF8;
                v160 = vdupq_n_s64(v158 - 1);
                v161 = (v216 + 72 * v52);
                do
                {
                  v162 = vdupq_n_s64(v157);
                  v163 = vmovn_s64(vcgeq_u64(v160, vorrq_s8(v162, xmmword_2993FCC00)));
                  if (vuzp1_s8(vuzp1_s16(v163, *v160.i8), *v160.i8).u8[0])
                  {
                    v161[33] = v211;
                  }

                  if (vuzp1_s8(vuzp1_s16(v163, *&v160), *&v160).i8[1])
                  {
                    v161[69] = v211;
                  }

                  if (vuzp1_s8(vuzp1_s16(*&v160, vmovn_s64(vcgeq_u64(v160, vorrq_s8(v162, xmmword_2993FCC10)))), *&v160).i8[2])
                  {
                    v161[105] = v211;
                    v161[141] = v211;
                  }

                  v164 = vmovn_s64(vcgeq_u64(v160, vorrq_s8(v162, xmmword_2993FDE70)));
                  if (vuzp1_s8(*&v160, vuzp1_s16(v164, *&v160)).i32[1])
                  {
                    v161[177] = v211;
                  }

                  if (vuzp1_s8(*&v160, vuzp1_s16(v164, *&v160)).i8[5])
                  {
                    v161[213] = v211;
                  }

                  if (vuzp1_s8(*&v160, vuzp1_s16(*&v160, vmovn_s64(vcgeq_u64(v160, vorrq_s8(v162, xmmword_2993FDE60))))).i8[6])
                  {
                    v161[249] = v211;
                    v161[285] = v211;
                  }

                  v157 += 8;
                  v161 += 288;
                }

                while (v159 != v157);
              }

LABEL_345:
              v221 = 0;
              if (v219)
              {
                *v217 = -1;
              }

              v40 = v218;
              v39 = v55;
              goto LABEL_70;
            }

LABEL_62:
            *v40 = v52;
            v39 = v55;
            if (v221 != -4)
            {
              goto LABEL_70;
            }

LABEL_374:
            *v217 = v51;
LABEL_375:
            if (!v51)
            {
              goto LABEL_377;
            }

            result = 0;
            goto LABEL_372;
          }
        }

        v132 = sub_2993F21A4(a1, v241 + v133);
        v40 = v218;
        v39 = v55;
        if (v132 == -11)
        {
          goto LABEL_69;
        }
      }
    }

    v40 = v218;
    v39 = v55;
    if ((v51 & 0x8000) != 0)
    {
      goto LABEL_69;
    }

    v204 = 0;
    v205 = 0;
    v203 = 0;
    v111 = v51 & 0x7FFF;
    v209 = v51 & 0x7FFF;
    while (2)
    {
      v112 = &v226[v209];
      v113 = v226[v209];
      if ((v113 - 120) > 9)
      {
        if ((v113 - 110) > 9)
        {
          v40 = v218;
          if ((v113 - 100) <= 9)
          {
            v39 = v55;
            if (HIDWORD(v205) == 1 || HIDWORD(v205) == 4)
            {
              goto LABEL_69;
            }
          }
        }

        else
        {
          v40 = v218;
          v39 = v55;
          if ((HIDWORD(v205) == 4 || HIDWORD(v205) == 1) && (v51 - v111 < 3 || v112[2] - 160 < 0xFFFFFFD8))
          {
            goto LABEL_69;
          }
        }
      }

      else if (HIDWORD(v205) == 4 || HIDWORD(v205) == 1)
      {
        v114 = v51 - v111 >= 3 && v112[2] - 130 < 0x1E;
        if (v209 < 2)
        {
          v40 = v218;
          v39 = v55;
          if (v209)
          {
            goto LABEL_213;
          }

          goto LABEL_214;
        }

        if (*(v112 - 2) - 110 < 0xA)
        {
          v114 = 1;
        }

        v40 = v218;
        v39 = v55;
LABEL_213:
        if (*(v112 - 1) - 110 >= 0xA)
        {
LABEL_214:
          if (!v114)
          {
            goto LABEL_69;
          }
        }
      }

      HIDWORD(v205) = sub_299349620(v226[v209]);
      if (HIDWORD(v205) == 4)
      {
        LOBYTE(v204) = v204 + 1;
      }

      else if (HIDWORD(v205) == 1)
      {
        ++v203;
      }

      v115 = (429496730 * v113) >> 32;
      v116 = HIDWORD(v204);
      if ((v115 - 10) < 6)
      {
        v117 = 1;
      }

      else
      {
        v117 = v205;
      }

      if ((v113 - 210) < 0xA)
      {
        v116 = 1;
      }

      HIDWORD(v204) = v116;
      LODWORD(v205) = v117;
      v40 = v218;
      if (v51 == v111)
      {
        v39 = v55;
        if ((v115 - 13) < 3)
        {
          goto LABEL_69;
        }
      }

      if ((2 * u_strlen(v243) - 63) < 0xFFFFFFBD)
      {
        goto LABEL_62;
      }

      if (v113 > 0x9F)
      {
        v40 = v218;
        v39 = v55;
        if ((v113 - 210) > 9)
        {
          goto LABEL_69;
        }

        v118 = v113 - 194;
      }

      else
      {
        v118 = v115;
      }

      v119 = v242;
      do
      {
        v120 = *(v119 + 2);
        v119 += 2;
      }

      while (v120);
      v121 = *&v227[8 * v118 - v118 + 3];
      *(v119 + 1) = v121;
      v59 = v121 == 0;
      v122 = 4;
      if (v59)
      {
        v122 = 2;
      }

      *&v119[v122] = 0;
      v60 = v209 <= 0;
      v111 = --v209;
      if (!v60)
      {
        continue;
      }

      break;
    }

    v40 = v218;
    v39 = v55;
    if (v203 | v204)
    {
      v123 = v203 <= v204 ? 6 : 3;
      v226[v51 + 51] = v123;
      v124 = sub_299349620(v58);
      v39 = v55;
      if (v124 != 4 && v124 != 1)
      {
        goto LABEL_69;
      }
    }

    if (!v205)
    {
      goto LABEL_69;
    }

    if ((2 * u_strlen(v243) - 65) < 0xFFFFFFBD)
    {
      goto LABEL_62;
    }

    sub_29936B460((v216 + 72 * *v218), v243, 0x42uLL);
    v125 = *v218;
    v126 = v216 + 72 * *v218;
    *(v126 + 69) = 0;
    v127 = v226[v51 + 51];
    *(v126 + 68) = v127;
    v206 = *&v225[2 * v51 + 1];
    *(v126 + 70) = v206;
    v128 = v125 + 1;
    *v218 = v125 + 1;
    if (WORD2(v204))
    {
      v129 = 0;
      goto LABEL_310;
    }

    v40 = v218;
    if (sub_2993F2C7C(a1, v243, v241, &v223))
    {
      goto LABEL_62;
    }

    v39 = v55;
    if (v223)
    {
      goto LABEL_69;
    }

    if (sub_2993F2230(v241, v240, a1, v228, 1, &v223 + 1) || (2 * u_strlen(v240) - 65) < 0xFFFFFFBD)
    {
      goto LABEL_62;
    }

    sub_29936B460((v216 + 72 * *v218), v240, 0x42uLL);
    v193 = *v218;
    v194 = v216 + 72 * v193;
    *(v194 + 69) = 1;
    *(v194 + 68) = v127;
    *(v194 + 70) = v206;
    v166 = v193 + 1;
    *v218 = v166;
    if (v127 == 6)
    {
      v195 = (v216 + 72 * v166);
      v195[34] = 2310;
      v195[70] = 1286;
      v195[35] = v206;
      v195[71] = v206;
      v196 = sub_2993F39FC(a1, v243, v195, v195 + 36);
      LODWORD(v166) = *v218;
      if (!v196)
      {
        LODWORD(v166) = v166 + 2;
        *v218 = v166;
      }

      v165 = 6;
      LOBYTE(v127) = 6;
    }

    else
    {
      v165 = 6;
    }

LABEL_308:
    v167 = v216 + 72 * v166;
    *(v167 + 69) = v165;
    *(v167 + 68) = v127;
    *(v167 + 70) = v206;
    v40 = v218;
    if ((2 * u_strlen(v241) - 65) < 0xFFFFFFBD)
    {
      goto LABEL_62;
    }

    sub_29936B460((v216 + 72 * *v218), v241, 0x42uLL);
    v128 = *v218 + 1;
    *v218 = v128;
    v129 = 1;
LABEL_310:
    if (!v202)
    {
      v40 = v218;
      if ((2 * u_strlen(v236) - 65) >= 0xFFFFFFBD)
      {
        sub_29936B460(v241, v236, 0x42uLL);
        if (!sub_2993F2230(v241, v240, a1, v228, 1, &v223 + 1) && (2 * u_strlen(v240) - 65) >= 0xFFFFFFBD)
        {
          sub_29936B460((v216 + 72 * *v218), v240, 0x42uLL);
          v197 = *v218;
          v198 = v216 + 72 * *v218;
          *(v198 + 69) = 1;
          *(v198 + 68) = v127;
          *(v198 + 70) = v206;
          v128 = v197 + 1;
          *v218 = v197 + 1;
          goto LABEL_311;
        }
      }

      goto LABEL_62;
    }

LABEL_311:
    v243[0] = 0;
    v240[0] = 0;
    if (!v129)
    {
LABEL_330:
      if (v128 > v52)
      {
        v185 = 0;
        v186 = v128 - v52;
        v187 = (v186 + 7) & 0xFFFFFFFFFFFFFFF8;
        v188 = vdupq_n_s64(v186 - 1);
        v189 = (v216 + 72 * v52);
        do
        {
          v190 = vdupq_n_s64(v185);
          v191 = vmovn_s64(vcgeq_u64(v188, vorrq_s8(v190, xmmword_2993FCC00)));
          if (vuzp1_s8(vuzp1_s16(v191, *v188.i8), *v188.i8).u8[0])
          {
            v189[33] = v211;
          }

          if (vuzp1_s8(vuzp1_s16(v191, *&v188), *&v188).i8[1])
          {
            v189[69] = v211;
          }

          if (vuzp1_s8(vuzp1_s16(*&v188, vmovn_s64(vcgeq_u64(v188, vorrq_s8(v190, xmmword_2993FCC10)))), *&v188).i8[2])
          {
            v189[105] = v211;
            v189[141] = v211;
          }

          v192 = vmovn_s64(vcgeq_u64(v188, vorrq_s8(v190, xmmword_2993FDE70)));
          if (vuzp1_s8(*&v188, vuzp1_s16(v192, *&v188)).i32[1])
          {
            v189[177] = v211;
          }

          if (vuzp1_s8(*&v188, vuzp1_s16(v192, *&v188)).i8[5])
          {
            v189[213] = v211;
          }

          if (vuzp1_s8(*&v188, vuzp1_s16(*&v188, vmovn_s64(vcgeq_u64(v188, vorrq_s8(v190, xmmword_2993FDE60))))).i8[6])
          {
            v189[249] = v211;
            v189[285] = v211;
          }

          v185 += 8;
          v189 += 288;
        }

        while (v187 != v185);
      }

      goto LABEL_345;
    }

    v168 = u_strlen(v241);
    if (!(v168 << 17))
    {
      goto LABEL_345;
    }

    v169 = (2 * v168);
    if (v169 < 1)
    {
LABEL_327:
      v40 = v218;
      if ((2 * u_strlen(v243) - 65) < 0xFFFFFFBD)
      {
        goto LABEL_62;
      }

      sub_29936B460((v216 + 72 * *v218), v243, 0x42uLL);
      v181 = *v218;
      v182 = v216 + 72 * *v218;
      *(v182 + 69) = 10;
      *(v182 + 68) = v127;
      *(v182 + 70) = v206;
      *v218 = v181 + 1;
      if ((2 * u_strlen(v240) - 65) < 0xFFFFFFBD)
      {
        goto LABEL_62;
      }

      sub_29936B460((v216 + 72 * *v218), v240, 0x42uLL);
      v183 = *v218;
      v184 = v216 + 72 * *v218;
      *(v184 + 69) = 2;
      *(v184 + 68) = v127;
      *(v184 + 70) = v206;
      v128 = v183 + 1;
      *v218 = v183 + 1;
      goto LABEL_330;
    }

    v170 = 0;
    while (1)
    {
      v171 = sub_2993F21A4(a1, &v241[v170]);
      v40 = v218;
      v39 = v55;
      if (v171 == -11)
      {
        break;
      }

      v172 = v171;
      if ((2 * u_strlen(v243) - 63) < 0xFFFFFFBD)
      {
        goto LABEL_62;
      }

      v173 = v242;
      do
      {
        v174 = *(v173 + 2);
        v173 += 2;
      }

      while (v174);
      v175 = *&v227[8 * v172 - v172 + 3];
      *(v173 + 1) = v175;
      v59 = v175 == 0;
      v176 = 4;
      if (v59)
      {
        v176 = 2;
      }

      *&v173[v176] = 0;
      v40 = v218;
      if ((2 * u_strlen(v240) - 63) < 0xFFFFFFBD)
      {
        goto LABEL_62;
      }

      v177 = v238;
      do
      {
        v178 = *(v177 + 2);
        v177 += 2;
      }

      while (v178);
      v179 = *(v213 + 2 * v172);
      *(v177 + 1) = v179;
      v59 = v179 == 0;
      v180 = 4;
      if (v59)
      {
        v180 = 2;
      }

      *&v177[v180] = 0;
      if (v169 <= (++v170 * 2))
      {
        goto LABEL_327;
      }
    }

LABEL_69:
    *v40 = v52;
    v221 = -11;
LABEL_70:
    v52 = *v40;
    v54 = v219;
LABEL_71:
    --v53;
    v60 = v51-- <= 1;
    if (!v60)
    {
      continue;
    }

    break;
  }

LABEL_377:
  result = 0;
  *v217 = -1;
LABEL_372:
  v201 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_2993F21A4(uint64_t a1, unsigned __int8 *a2)
{
  v6 = *MEMORY[0x29EDCA608];
  if (!*(a1 + 82) || ((v4 = 0, sub_2993F7500(*(a1 + 84), a2, 2, v5, &v4), v5[0] <= 9u) ? (result = v5[0]) : (result = v5[0] + 2), !v4))
  {
    result = 4294967285;
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_2993F2230(UChar *s, UChar *a2, uint64_t a3, uint64_t a4, int a5, int *a6)
{
  v10 = s;
  v11 = 0;
  v122 = *MEMORY[0x29EDCA608];
  v110 = 0x100010001;
  v111 = 1;
  v112 = 0;
  v113 = 0x1000100010001;
  v114 = 0;
  v12 = *(*(a3 + 44) + 28);
  v13 = &v117;
  v14 = vdupq_n_s64(0x19uLL);
  do
  {
    v15 = vdupq_n_s64(v11);
    v16 = vorrq_s8(v15, xmmword_2993FCC00);
    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(v14, v16)), 6), 6).u8[0])
    {
      *(v13 - 4) = v12;
    }

    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x19uLL), v16)), 6), 6).i8[1])
    {
      *(v13 - 3) = v12;
    }

    if (vuzp1_s8(vuzp1_s16(6, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x19uLL), vorrq_s8(v15, xmmword_2993FCC10)))), 6).i8[2])
    {
      *(v13 - 2) = v12;
      *(v13 - 1) = v12;
    }

    v17 = vorrq_s8(v15, xmmword_2993FDE70);
    if (vuzp1_s8(6, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x19uLL), v17)), 6)).i32[1])
    {
      *v13 = v12;
    }

    if (vuzp1_s8(6, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x19uLL), v17)), 6)).i8[5])
    {
      *(v13 + 1) = v12;
    }

    if (vuzp1_s8(6, vuzp1_s16(6, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x19uLL), vorrq_s8(v15, xmmword_2993FDE60))))).i8[6])
    {
      *(v13 + 2) = v12;
      *(v13 + 3) = v12;
    }

    v11 += 8;
    v13 += 4;
  }

  while (v11 != 32);
  v118[0] = 0;
  sa[0] = 0;
  v18 = 2 * u_strlen(s);
  if (v18 < -5)
  {
    goto LABEL_165;
  }

  v19 = 0;
  v104 = 0;
  v106 = a5;
  v107 = 0;
  v20 = 0;
  v21 = (v18 >> 1) - 1;
  if (v18 >> 1 < 1)
  {
    v21 = (v18 >> 1) + 2;
  }

  v102 = v21 >> 2;
  v22 = (v18 >> 1) & 3;
  if (v18 >> 1 <= 0)
  {
    v22 = -(-(v18 >> 1) & 3);
  }

  if (v22)
  {
    LODWORD(v23) = v22;
  }

  else
  {
    LODWORD(v23) = 4;
  }

  v91 = (a4 + 99);
  v93 = (a4 + 106);
  if (a5 == 1)
  {
    v24 = 73;
  }

  else
  {
    v24 = 71;
  }

  v25 = 78;
  if (a5 == 1)
  {
    v25 = 80;
  }

  v97 = v25;
  v98 = v24;
  v26 = 85;
  if (a5 == 1)
  {
    v26 = 87;
  }

  v96 = v26;
  if (a5 == 1)
  {
    v27 = 10;
  }

  else
  {
    v27 = 8;
  }

  v28 = 92;
  if (a5 == 1)
  {
    v28 = 94;
  }

  v92 = (a4 + v28);
  v103 = a4;
  v94 = v27;
  v95 = 1;
  v29 = 1;
  v99 = v10;
LABEL_36:
  v105 = -2;
LABEL_37:
  v30 = 2 * v23;
  if ((2 * v23 - 9) < 0xFFFFFFF5)
  {
LABEL_166:
    result = 4294967186;
    goto LABEL_169;
  }

  result = 4294967186;
  if ((v23 & 0x80000000) == 0 && (v20 & 0x80000000) == 0)
  {
    v32 = v23;
    v33 = 2 * v23;
    v34 = v120;
    v35 = (v10 + v20);
    do
    {
      if (!v33)
      {
        goto LABEL_45;
      }

      v36 = *v35++;
      *v34 = v36;
      v34 += 2;
      v33 -= 2;
    }

    while (v36);
    if (v33)
    {
      v37 = v20;
      bzero(v34, v33);
      v20 = v37;
    }

LABEL_45:
    v38 = 0;
    *&v120[v30] = 0;
    if (v23 <= 1)
    {
      v23 = 1;
    }

    else
    {
      v23 = v23;
    }

    v100 = v23 + v29;
    v101 = v20;
    while (1)
    {
      v109[0] = 0;
      if (!*(a3 + 82) || ((sub_2993F7500(*(a3 + 84), &v120[2 * v38], 2, v121, v109), v121[0] <= 9u) ? (v39 = v121[0]) : (v39 = v121[0] + 2), !v109[0]))
      {
        v89 = -v29;
        goto LABEL_168;
      }

      if (v39 == 102)
      {
        break;
      }

      if (v19)
      {
        goto LABEL_57;
      }

      if (v18 == 2 || v39)
      {
        v40 = v32 - v38;
        if (v106 == 1 || v39 != 1 || v40 == 1)
        {
          if (v106 == 1 && *&v109[2 * v39 + 1])
          {
            if ((2 * u_strlen(sa) - 255) < 0xFFFFFEFD)
            {
              goto LABEL_166;
            }

            v41 = (v103 - v39 + 8 * v39 + 3);
          }

          else
          {
            if ((2 * u_strlen(sa) - 255) < 0xFFFFFEFD)
            {
              goto LABEL_166;
            }

            v41 = (v103 - v39 + 8 * v39 + 1);
          }

          v42 = v118;
          do
          {
            v43 = v42[2];
            ++v42;
          }

          while (v43);
          v44 = *v41;
          v45 = 2;
          if (!v44)
          {
            v45 = 1;
          }

          v42[1] = v44;
          v42[v45] = 0;
          v104 = v39;
          v107 += 2;
          v105 = -1;
        }

        switch(v40)
        {
          case 2:
            if ((2 * u_strlen(sa) - 255) < 0xFFFFFEFD)
            {
              goto LABEL_166;
            }

            v56 = v118;
            do
            {
              v57 = v56[2];
              ++v56;
            }

            while (v57);
            v19 = 0;
            v58 = 2;
            if (!*(v103 + v98))
            {
              v58 = 1;
            }

            v56[1] = *(v103 + v98);
            v56[v58] = 0;
            v107 += 2;
            v55 = 10;
            goto LABEL_101;
          case 3:
            if ((2 * u_strlen(sa) - 255) < 0xFFFFFEFD)
            {
              goto LABEL_166;
            }

            v52 = v118;
            do
            {
              v53 = v52[2];
              ++v52;
            }

            while (v53);
            v19 = 0;
            v54 = 2;
            if (!*(v103 + v97))
            {
              v54 = 1;
            }

            v52[1] = *(v103 + v97);
            v52[v54] = 0;
            v107 += 2;
            v55 = 11;
LABEL_101:
            v104 = v55;
            v105 = -1;
            goto LABEL_58;
          case 4:
            if ((2 * u_strlen(sa) - 255) < 0xFFFFFEFD)
            {
              goto LABEL_166;
            }

            v46 = v118;
            do
            {
              v47 = v46[2];
              ++v46;
            }

            while (v47);
            v19 = 0;
            if (v105 == 65534)
            {
              v48 = v107;
            }

            else
            {
              v48 = -1;
            }

            v105 = v48;
            v49 = *(v103 + v96);
            v46[1] = v49;
            v50 = v49 == 0;
            v51 = 2;
            if (v50)
            {
              v51 = 1;
            }

            v46[v51] = 0;
            v107 += 2;
            v104 = 12;
            goto LABEL_58;
        }
      }

      v19 = 0;
LABEL_58:
      ++v29;
      if (++v38 == v23)
      {
        v59 = v120;
        v60 = &v116;
        v10 = v99;
        v61 = v102;
        while (1)
        {
          if (!v32)
          {
            goto LABEL_114;
          }

          v62 = *v59;
          if (v62 != *v60)
          {
            break;
          }

          --v32;
          v59 += 2;
          v60 += 2;
          if (!v62)
          {
            goto LABEL_114;
          }
        }

        if (v102 == 1)
        {
          if ((v104 - 16) > 0xFFFFFFFC)
          {
            goto LABEL_114;
          }

          v64 = v107;
          if ((v105 & 0x8000) == 0)
          {
            v115[0] = 0;
            if (v105)
            {
              if (v105 > 0x100u)
              {
                goto LABEL_166;
              }

              v75 = v105 & 0xFFFE;
              v76 = v115;
              v77 = sa;
              while (v75)
              {
                v78 = *v77++;
                *v76++ = v78;
                v75 -= 2;
                if (!v78)
                {
                  if (v75)
                  {
                    bzero(v76, v75);
                  }

                  break;
                }
              }

              *(v115 + v105) = 0;
            }

            if ((2 * u_strlen(v115) - 255) < 0xFFFFFEFD)
            {
              goto LABEL_166;
            }

            v79 = &v114;
            do
            {
              v80 = *(v79 + 2);
              v79 = (v79 + 2);
            }

            while (v80);
            v81 = *(v103 + v94);
            *(v79 + 1) = v81;
            v50 = v81 == 0;
            v82 = 4;
            if (v50)
            {
              v82 = 2;
            }

            *(v79 + v82) = 0;
            *(&v115[1] + v105) = 0;
            v83 = 2 * u_strlen(v115);
            if ((v83 - v105 + 2 * u_strlen(sa) - 257) < 0xFFFFFEFD)
            {
              goto LABEL_166;
            }

            sub_29936B4BC(v115, (sa + v105), 0x102uLL);
            v10 = v99;
            if ((2 * u_strlen(v115) - 257) < 0xFFFFFEFD)
            {
              goto LABEL_166;
            }

            sub_29936B460(sa, v115, 0x102uLL);
            v64 = v107 + 2;
          }

          v84 = u_strlen(sa);
          v63 = v92;
          v74 = v101;
          if ((2 * v84 - 255) < 0xFFFFFEFD)
          {
            goto LABEL_166;
          }
        }

        else
        {
          if (v102 != 2)
          {
            if (v102 == 3 && (v104 - 16) <= 0xFFFFFFFC)
            {
              if ((2 * u_strlen(sa) - 255) < 0xFFFFFEFD)
              {
                goto LABEL_166;
              }

              v104 = 15;
              v63 = v93;
              v64 = v107;
              goto LABEL_137;
            }

LABEL_114:
            v29 = v100;
            v20 = v30 + v101;
            LODWORD(v23) = 4;
            --v102;
            if (v61 > 0)
            {
              goto LABEL_37;
            }

            if ((v95 & 1) == 0 && 2 * u_strlen(sa) <= 2)
            {
              sa[0] = 0;
            }

LABEL_165:
            if ((2 * u_strlen(sa) - 65) < 0xFFFFFFBD)
            {
              goto LABEL_166;
            }

            sub_29936B460(a2, sa, 0x42uLL);
            v89 = 0;
LABEL_168:
            result = 0;
            *a6 = v89;
            goto LABEL_169;
          }

          if ((v104 - 16) > 0xFFFFFFFC)
          {
            goto LABEL_114;
          }

          v64 = v107;
          if ((v105 & 0x8000) == 0)
          {
            v115[0] = 0;
            if (v105)
            {
              if (v105 > 0x100u)
              {
                goto LABEL_166;
              }

              v65 = v105 & 0xFFFE;
              v66 = v115;
              v67 = sa;
              while (v65)
              {
                v68 = *v67++;
                *v66++ = v68;
                v65 -= 2;
                if (!v68)
                {
                  if (v65)
                  {
                    bzero(v66, v65);
                  }

                  break;
                }
              }

              *(v115 + v105) = 0;
            }

            if ((2 * u_strlen(v115) - 255) < 0xFFFFFEFD)
            {
              goto LABEL_166;
            }

            v69 = &v114;
            do
            {
              v70 = *(v69 + 2);
              v69 = (v69 + 2);
            }

            while (v70);
            v71 = *(v103 + v94);
            *(v69 + 1) = v71;
            v50 = v71 == 0;
            v72 = 4;
            if (v50)
            {
              v72 = 2;
            }

            *(v69 + v72) = 0;
            *(&v115[1] + v105) = 0;
            v73 = 2 * u_strlen(v115);
            if ((v73 - v105 + 2 * u_strlen(sa) - 257) < 0xFFFFFEFD)
            {
              goto LABEL_166;
            }

            sub_29936B4BC(v115, (sa + v105), 0x102uLL);
            v10 = v99;
            if ((2 * u_strlen(v115) - 257) < 0xFFFFFEFD)
            {
              goto LABEL_166;
            }

            sub_29936B460(sa, v115, 0x102uLL);
            v64 = v107 + 2;
          }

          if ((2 * u_strlen(sa) - 255) < 0xFFFFFEFD)
          {
            goto LABEL_166;
          }

          v104 = 14;
          v63 = v91;
LABEL_137:
          v74 = v101;
        }

        v85 = v118;
        do
        {
          v86 = v85[2];
          ++v85;
        }

        while (v86);
        v95 = 0;
        v87 = *v63;
        v85[1] = v87;
        v50 = v87 == 0;
        LODWORD(v23) = 4;
        v88 = 1;
        if (!v50)
        {
          v88 = 2;
        }

        v85[v88] = 0;
        v107 = v64 + 2;
        v20 = v30 + v74;
        --v102;
        v29 = v100;
        goto LABEL_36;
      }
    }

    *a2 = 0;
LABEL_57:
    v19 = 1;
    goto LABEL_58;
  }

LABEL_169:
  v90 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_2993F2C7C(uint64_t a1, const UChar *a2, UChar *a3, int *a4)
{
  v5 = a2;
  v7 = 0;
  v91 = *MEMORY[0x29EDCA608];
  v8 = *(a1 + 44) + 28;
  do
  {
    *&v87[v7 / 2] = *(v8 + dword_29942C714[v7 / 4]);
    v7 += 4;
  }

  while (v7 != 48);
  v82 = 0;
  v9 = u_strlen(a2);
  *a3 = 0;
  v10 = 2 * v9;
  s[0] = 0;
  *a4 = 0;
  if (2 * v9 < 0)
  {
    v12 = 0;
    if (v10 != -2)
    {
      goto LABEL_177;
    }

    v52 = 1;
    goto LABEL_165;
  }

  v79 = 2 * v9;
  v80 = 0;
  v76 = 0;
  v77 = 0;
  v72 = 0;
  v74 = 0;
  v75 = 0;
  v73 = 0;
  v11 = 0;
  LODWORD(v12) = 0;
  v13 = 0;
  v81 = 0;
  v71 = v5 + 1;
  v14 = 1;
  do
  {
    if (!*(a1 + 82))
    {
      v82 = 0;
      goto LABEL_22;
    }

    sub_2993F7500(*(a1 + 84), v5 + v11, 2, &v85, &v82);
    if (!v82)
    {
      goto LABEL_22;
    }

    v15 = v5;
    if (v85 - 16 >= 0xFFFFFFF9)
    {
      v16 = v85 - 9;
    }

    else
    {
      v16 = 0;
    }

    if ((v85 & 0xFE) == 0x66)
    {
      v17 = v85 - 92;
LABEL_12:
      if (v13 == 1)
      {
        v18 = 2 * u_strlen(v15);
        if (v18 >= 2)
        {
          v26 = v11 + 2;
          if (((v11 + 2) & 0x8000) == 0 && v26 + 2 <= v18)
          {
            v83[0] = 0;
            if (*(a1 + 82))
            {
              sub_2993F7500(*(a1 + 84), v15 + v26, 2, v90, v83);
              if (v83[0])
              {
                if (HIBYTE(v90[0]) == 2 && LOBYTE(v90[0]) - 10 < 3)
                {
                  goto LABEL_106;
                }
              }
            }
          }
        }
      }

      if (v11 == SWORD2(v76))
      {
        if (v13 == 1 && v81 == 1)
        {
          *a3 = 0;
          *a4 = v11;
          if (v12 < 1)
          {
            v5 = v15;
          }

          else
          {
            v5 = v15;
            if (v86 <= 1u)
            {
              v10 = v79;
              if (v85 <= 9u)
              {
                v11 -= 2;
                *a4 = v11;
              }

              goto LABEL_102;
            }
          }

          v10 = v79;
LABEL_102:
          v81 = 0;
          v13 = 0;
          v19 = v11 - 2;
          v14 = 1;
          goto LABEL_134;
        }

        goto LABEL_29;
      }

      if (v86 != 2 || v85 > 9u || (v20 = 2 * u_strlen(v15), v20 < 2) || (v19 = v11 - 2, ((v11 - 2) & 0x8000) != 0) || v19 + 2 > v20 || (v83[0] = 0, !*(a1 + 82)) || (sub_2993F7500(*(a1 + 84), v15 + v19, 2, v90, v83), !v83[0]) || HIBYTE(v90[0]) > 1u || LOBYTE(v90[0]) >= 0xAu)
      {
LABEL_29:
        if (HIDWORD(v81) == 2)
        {
          v14 = 0;
          v27 = v76;
          if (!v77)
          {
            v27 = v11;
          }

          LODWORD(v76) = v27;
          v84[v77] = v17;
          v13 = 1;
          HIDWORD(v81) = 2;
          ++v77;
        }

        else if (HIDWORD(v81) == 1)
        {
          v14 = 0;
          if (v85 <= 9u)
          {
            v21 = v85;
          }

          else
          {
            v21 = 0;
          }

          if (v85 - 16 >= 0xFFFFFFF9)
          {
            v22 = v85 - 9;
          }

          else
          {
            v22 = 0;
          }

          v73 = v22;
          v23 = v85 - 92;
          if ((v85 & 0xFE) != 0x66)
          {
            v23 = v21;
          }

          v75 = v23;
          v84[0] = v17;
          v13 = 1;
          HIDWORD(v81) = 2;
          v77 = 1;
          v72 = v11;
          LODWORD(v76) = v11;
        }

        else
        {
          v28 = u_strlen(a3);
          v29 = &v87[2 * v17];
          if ((2 * (u_strlen(v29) + v28) - 65) < 0xFFFFFFBD)
          {
            goto LABEL_176;
          }

          sub_29936B4BC(a3, v29, 0x42uLL);
          v14 = 0;
          ++v80;
          v13 = 1;
        }

        goto LABEL_63;
      }

      v81 = 0;
      v13 = 0;
      *a3 = 0;
      *a4 = v11;
      v14 = 1;
      WORD2(v76) = v11;
LABEL_132:
      v5 = v15;
      goto LABEL_133;
    }

    if (v85 != 100)
    {
      if (v85 == 101)
      {
        v81 = 0;
        v13 = 0;
        *a3 = 0;
        v11 += 2;
        *a4 = v11;
        v14 = 1;
        goto LABEL_63;
      }

      if (v85 > 9u || v75 < 0)
      {
        v17 = 0;
      }

      else
      {
        v17 = v85;
      }

      if (v85 > 9u)
      {
LABEL_63:
        if (v86 != 2 || (v85 - 10) > 5u)
        {
          goto LABEL_131;
        }

        if (v14 != 1 || (v85 - 10) > 2u)
        {
          goto LABEL_75;
        }

        if (v12 == 3 && v85 == 10)
        {
          v30 = u_strlen(a3);
          v31 = u_strlen(v87);
          if ((2 * (v31 + v30 + u_strlen(v88)) - 65) < 0xFFFFFFBD)
          {
            goto LABEL_176;
          }

          sub_29936B4BC(a3, v87, 0x42uLL);
          sub_29936B4BC(a3, v88, 0x42uLL);
          v32 = v80 + 2;
        }

        else
        {
          v33 = dword_29942C6F8[v16];
          if (v12 != v33)
          {
            v41 = u_strlen(a3);
            if ((2 * (u_strlen(v88) + v41) - 65) < 0xFFFFFFBD)
            {
              goto LABEL_176;
            }

            sub_29936B4BC(a3, v88, 0x42uLL);
            ++v80;
            if (v12 < v33)
            {
              v34 = HIDWORD(v81);
              if (v81 == 1)
              {
LABEL_106:
                v81 = 0;
                v13 = 0;
                *a3 = 0;
                *a4 = v11;
                v19 = v11 - 2;
                goto LABEL_107;
              }

LABEL_76:
              if (v34 == 2)
              {
                v35 = dword_29942C6F8[v16];
                v36 = v12 - (v35 + v77);
                if (v36 >= 1)
                {
                  do
                  {
                    sub_29936B4BC(a3, v87, 0x42uLL);
                    --v36;
                  }

                  while (v36);
                }

                if (v77)
                {
                  v37 = v77;
                  v38 = v84;
                  do
                  {
                    v39 = *v38++;
                    sub_29936B4BC(a3, &v87[2 * v39], 0x42uLL);
                    --v37;
                  }

                  while (v37);
                }

                v40 = v12 - v35 + v80;
                if (v12 - v35 >= v77)
                {
                  v80 += v12 - v35;
                  v13 = 0;
                  v77 = 0;
                  HIDWORD(v81) = 1;
                  v14 = 1;
LABEL_90:
                  LODWORD(v81) = 1;
                  LODWORD(v12) = v35;
LABEL_131:
                  v19 = v11;
                  goto LABEL_132;
                }

                v5 = v15;
                if (v85 >= 0xDu)
                {
                  if (v40 >= 5)
                  {
                    v80 += v12 - v35;
                    v81 = 0;
                    v13 = 0;
                    v77 = 0;
                    *a3 = 0;
                    v19 = v11 + 2;
                    *a4 = v11 + 2;
                    v14 = 1;
LABEL_133:
                    v10 = v79;
                    goto LABEL_134;
                  }

                  v46 = sub_2993F3B8C(a1, (v71 + v11), v35);
                  if (v46 == -11)
                  {
                    v13 = 0;
                    v77 = 0;
                    v80 = 0;
                    *a3 = 0;
                    *a4 = v11 + 2;
                    v14 = 1;
                    v81 = 1;
                    LODWORD(v12) = v35;
                    v19 = v11;
                    goto LABEL_133;
                  }

                  v49 = v35 + ~v46;
                  v50 = u_strlen(a3);
                  v51 = u_strlen(&v87[2 * v75]);
                  if ((2 * (v51 + v50 + u_strlen(v87) * v49) - 65) < 0xFFFFFFBD)
                  {
                    goto LABEL_176;
                  }

                  if (v49 < 1)
                  {
                    HIDWORD(v81) = 0;
                    v13 = 0;
                    v77 = 0;
                    v80 = 0;
                    v14 = 1;
                  }

                  else
                  {
                    do
                    {
                      sub_29936B4BC(a3, v87, 0x42uLL);
                      v14 = 1;
                      --v49;
                    }

                    while (v49);
                    HIDWORD(v81) = 0;
                    v13 = 0;
                    v77 = 0;
                    v80 = 0;
                  }

                  goto LABEL_90;
                }

                *a3 = 0;
                v42 = u_strlen(a3);
                v10 = v79;
                if ((2 * (u_strlen(&v87[2 * v75]) + v42) - 65) < 0xFFFFFFBD)
                {
                  goto LABEL_176;
                }

                sub_29936B4BC(a3, &v87[2 * v75], 0x42uLL);
                v13 = 0;
                v77 = 0;
                *a4 = v11 - 2;
                v43 = v40 + 1;
                v14 = 1;
                v80 = v43;
                v81 = 0x100000001;
                LODWORD(v12) = v35;
LABEL_22:
                v19 = v11;
                goto LABEL_134;
              }

              if (v85 < 0xDu)
              {
                v13 = 0;
                LODWORD(v12) = dword_29942C6F8[v16];
                HIDWORD(v81) = 1;
                v14 = 1;
              }

              else
              {
                if (v80 >= 5)
                {
                  v81 = 0;
                  v13 = 0;
                  *a3 = 0;
                  v19 = v11 + 2;
                  *a4 = v11 + 2;
LABEL_107:
                  v14 = 1;
                  goto LABEL_132;
                }

                if (v14)
                {
                  if (!HIDWORD(v81))
                  {
                    HIDWORD(v81) = 0;
                    v13 = 0;
                    LODWORD(v12) = 0;
                    v80 = 0;
                    *a3 = 0;
                    *a4 = v79;
                    v14 = 1;
                    v19 = v79;
                    v5 = v15;
                    v10 = v79;
                    goto LABEL_134;
                  }

                  v44 = u_strlen(a3);
                  if ((2 * (v44 + u_strlen(v87) * v12) - 65) < 0xFFFFFFBD)
                  {
                    goto LABEL_176;
                  }

                  if (v12 >= 1)
                  {
                    do
                    {
                      sub_29936B4BC(a3, v87, 0x42uLL);
                      LODWORD(v12) = v12 - 1;
                    }

                    while (v12);
                  }
                }

                LODWORD(v12) = dword_29942C6F8[v16];
                v45 = sub_2993F3B8C(a1, (v71 + v11), v12);
                if (v45 == -11)
                {
                  HIDWORD(v81) = 0;
                  v13 = 0;
                  LODWORD(v12) = 0;
                  v80 = 0;
                  *a3 = 0;
                  *a4 = v11 + 2;
                }

                else
                {
                  v47 = v12 + ~v45;
                  v48 = u_strlen(a3);
                  if ((2 * (v48 + u_strlen(v87) * v47) - 65) < 0xFFFFFFBD)
                  {
                    goto LABEL_176;
                  }

                  if (v47 >= 1)
                  {
                    do
                    {
                      sub_29936B4BC(a3, v87, 0x42uLL);
                      v14 = 1;
                      --v47;
                    }

                    while (v47);
                    HIDWORD(v81) = 0;
                    v13 = 0;
                    v80 = 0;
                    goto LABEL_130;
                  }

                  HIDWORD(v81) = 0;
                  v13 = 0;
                  v80 = 0;
                }

                v14 = 1;
              }

LABEL_130:
              LODWORD(v81) = 1;
              goto LABEL_131;
            }

LABEL_75:
            v34 = HIDWORD(v81);
            goto LABEL_76;
          }

          if ((2 * u_strlen(v88) - 65) < 0xFFFFFFBD)
          {
            goto LABEL_176;
          }

          sub_29936B460(a3, v88, 0x42uLL);
          *a4 = v11;
          v32 = v80 + 1;
        }

        v80 = v32;
        goto LABEL_75;
      }

      goto LABEL_12;
    }

    if (!v11)
    {
      v19 = 0;
      *a4 = 2;
      v74 = 1;
      goto LABEL_132;
    }

    v24 = u_strlen(s);
    if ((2 * (u_strlen((v71 + v11)) + v24) - 65) < 0xFFFFFFBD)
    {
      goto LABEL_176;
    }

    v5 = v15;
    sub_29936B4BC(s, (v71 + v11), 0x42uLL);
    v74 = 1;
    v10 = v79;
    v19 = v79;
LABEL_134:
    v11 = v19 + 2;
  }

  while (v19 + 2 <= v10);
  v52 = v74 == 0;
  if (v14 || v81 != 1 || !HIDWORD(v81))
  {
    goto LABEL_162;
  }

  if (HIDWORD(v81) != 1)
  {
    if (v72 == v76)
    {
      if (v12 < v77)
      {
        v12 = 0;
        *a4 = v72;
        goto LABEL_177;
      }

      v58 = v12 - v77;
      if (v58 >= 1)
      {
        do
        {
          sub_29936B4BC(a3, v87, 0x42uLL);
          --v58;
        }

        while (v58);
      }

      if (v77)
      {
        v59 = v77;
        v60 = v84;
        do
        {
          v61 = *v60++;
          sub_29936B4BC(a3, &v87[2 * v61], 0x42uLL);
          --v59;
        }

        while (v59);
      }
    }

    else
    {
      v57 = v12 + ~dword_29942C6F8[v73];
      if (v57 >= 1)
      {
        do
        {
          sub_29936B4BC(a3, v87, 0x42uLL);
          --v57;
        }

        while (v57);
      }

      v56 = &v87[2 * v75];
LABEL_161:
      sub_29936B4BC(a3, v56, 0x42uLL);
    }

LABEL_162:
    if (v14 != 1 || v19 != v10)
    {
      if (v52)
      {
        goto LABEL_171;
      }

      goto LABEL_175;
    }

    if (!HIDWORD(v81) && *a3)
    {
      v63 = u_strlen(a3);
      if ((2 * (u_strlen(v87) + v63) - 65) < 0xFFFFFFBD)
      {
        goto LABEL_176;
      }

      sub_29936B4BC(a3, v87, 0x42uLL);
      if (!v74)
      {
        goto LABEL_171;
      }

LABEL_175:
      v64 = *(a1 + 44);
      v90[0] = 0;
      if ((2 * u_strlen(a3) - 65) < 0xFFFFFFBD)
      {
        goto LABEL_176;
      }

      v67 = a3 - 1;
      do
      {
        v68 = v67[1];
        ++v67;
      }

      while (v68);
      v69 = *v64;
      *v67 = v69;
      if (!v69)
      {
        --v67;
      }

      v67[1] = 0;
      v12 = sub_2993F2C7C(a1, s, v90, v83);
      if (v12)
      {
        goto LABEL_177;
      }

      v70 = u_strlen(a3);
      if ((2 * (u_strlen(v90) + v70) - 65) <= 0xFFFFFFBC)
      {
        goto LABEL_176;
      }

      sub_29936B4BC(a3, v90, 0x42uLL);
LABEL_171:
      v12 = 0;
      goto LABEL_177;
    }

LABEL_165:
    v62 = u_strlen(a3);
    if ((2 * (v62 + u_strlen(v87) * v12) - 65) < 0xFFFFFFBD)
    {
      goto LABEL_176;
    }

    if (v12 >= 1)
    {
      do
      {
        sub_29936B4BC(a3, v87, 0x42uLL);
        LODWORD(v12) = v12 - 1;
      }

      while (v12);
    }

    if (v52)
    {
      goto LABEL_171;
    }

    goto LABEL_175;
  }

  v53 = u_strlen(a3);
  v54 = u_strlen(v87);
  v55 = v12 + ~dword_29942C6F8[v73];
  v56 = &v87[2 * v75];
  if ((2 * (u_strlen(v56) + v53 + v55 * v54) - 65) >= 0xFFFFFFBD)
  {
    if (v55 < 1)
    {
      v52 = v74 == 0;
    }

    else
    {
      v52 = v74 == 0;
      do
      {
        sub_29936B4BC(a3, v87, 0x42uLL);
        --v55;
      }

      while (v55);
    }

    goto LABEL_161;
  }

LABEL_176:
  v12 = 4294967186;
LABEL_177:
  v65 = *MEMORY[0x29EDCA608];
  return v12;
}

uint64_t sub_2993F39FC(uint64_t a1, UChar *s, _WORD *a3, _WORD *a4)
{
  v25 = *MEMORY[0x29EDCA608];
  v8 = *(a1 + 60);
  *a3 = 0;
  *a4 = 0;
  if (2 * u_strlen(s) < 1)
  {
    v20 = 0;
    result = 4294967285;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = v8 + 20;
    do
    {
      v13 = v11 * 2;
      v23 = 0;
      if (!*(a1 + 82))
      {
        goto LABEL_8;
      }

      sub_2993F7500(*(a1 + 84), &s[v11], 2, v24, &v23);
      v14 = v24[0];
      if (v24[0] > 9u)
      {
        v14 = v24[0] + 2;
      }

      if (v23 && v14 < 0xA)
      {
        v18 = 2 * v14;
        LOBYTE(a3[v11]) = *(v12 + v18);
        LOBYTE(a4[v11]) = *(v8 + v18);
        ++v10;
        v19 = (2 * (v14 & 0x1FF)) | 1;
        v16 = v9 | 1;
        *(a3 + v16) = *(v12 + v19);
        v17 = *(v8 + v19);
      }

      else
      {
LABEL_8:
        v15 = s[v11];
        LOBYTE(a3[v11]) = v15;
        LOBYTE(a4[v11]) = v15;
        v16 = v9 | 1;
        v17 = *(s + v16);
        *(a3 + v16) = v17;
      }

      *(a4 + v16) = v17;
      ++v11;
      v9 = (v13 + 2);
    }

    while (v9 < 2 * u_strlen(s));
    v20 = v11 * 2;
    if (v10)
    {
      result = 0;
    }

    else
    {
      result = 4294967285;
    }
  }

  *(a3 + v20) = 0;
  *(a4 + v20) = 0;
  v22 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_2993F3B8C(uint64_t a1, UChar *s, int a3)
{
  v21 = *MEMORY[0x29EDCA608];
  v6 = (2 * u_strlen(s));
  if (!v6 || !*s)
  {
    result = 0;
    goto LABEL_40;
  }

  if (v6 < 1)
  {
    if (a3 < 0)
    {
      result = 4294967285;
    }

    else
    {
      LODWORD(v9) = 0;
      v8 = 0;
LABEL_43:
      if (v8 > 0 && v9 == 0)
      {
        result = (v8 - 1);
      }

      else
      {
        result = v9;
      }
    }

    goto LABEL_40;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v19 = 0;
  while (1)
  {
    if (!*(a1 + 82))
    {
      v19 = 0;
      goto LABEL_34;
    }

    sub_2993F7500(*(a1 + 84), &s[v7 / 2], 2, v20, &v19);
    if (v19)
    {
      break;
    }

LABEL_34:
    v7 += 2;
    if (v7 >= v6)
    {
      result = 4294967285;
      if (v8 <= a3 && (v11 & 0x80000000) == 0)
      {
        if (v10 != 1)
        {
          goto LABEL_43;
        }

        v16 = dword_29942C744[v11];
        goto LABEL_51;
      }

      goto LABEL_40;
    }
  }

  if ((v20[0] & 0xFE) != 0x64)
  {
    if (v20[0] > 9u)
    {
      if (v20[0] < 0x10u)
      {
        v12 = dword_29942C744[v20[0] - 10];
        if (v20[0] >= 0xDu && v10 != 1)
        {
          v8 = 0;
          v11 = v20[0] - 10;
LABEL_21:
          if (v12 >= a3)
          {
            v11 = -1;
          }

          v10 = 1;
          goto LABEL_34;
        }

        if (v12 > v9 && v10 != 1)
        {
          v14 = v8 - 1;
          if (!v8)
          {
            v14 = 0;
          }

          v9 = (v12 + v14);
          v10 = 2;
          v8 = 0;
          goto LABEL_34;
        }

        if (v10 == 1)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v8 = v8 == 0;
      }
    }

    else
    {
      if (v8 == -1)
      {
        v8 = -1;
      }

      else
      {
        ++v8;
      }

      if (v10)
      {
        v9 = v9;
      }

      else
      {
        v9 = (v8 - 1);
      }
    }

    goto LABEL_34;
  }

  if (v11)
  {
    v16 = dword_29942C744[v11];
LABEL_51:
    result = (v16 + v9);
    goto LABEL_40;
  }

  result = v9;
LABEL_40:
  v17 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_2993F3D88(uint64_t a1, uint64_t a2, unsigned int a3, int a4, _WORD *a5, unsigned __int8 *a6)
{
  result = 0;
  v27 = *MEMORY[0x29EDCA608];
  if (a3 >= 1)
  {
    v8 = a4;
    if ((a4 & 0x80000000) == 0)
    {
      v12 = 0;
      v22 = 0;
      v13 = a3 >> 1;
      while (a3 >> 1 != v12)
      {
        v14 = *(a2 + v12 * 2);
        s[v12++] = v14;
        if (!v14)
        {
          if (v12 != v13)
          {
            bzero(&s[v12], 2 * v13 - v12 * 2);
          }

          break;
        }
      }

      *(s + a3) = 0;
      sub_29936B460(v26, s, 0x102uLL);
      v15 = u_strlen(s);
      v26[v15] = 0;
      v20 = 1;
      v21 = 0;
      if (*(a1 + 82) >= 7u)
      {
        do
        {
          sub_2993F774C(*(a1 + 84) + 192, v26, (v15 * 2), &v23, &v22, &v20);
          if (!v22)
          {
            break;
          }

          v16 = v24;
          if ((v24 & 0xFE) != 2 && v24 - 220 >= 0xA)
          {
            if (v8 <= 0)
            {
              v18 = v21;
              *a5 = bswap32(v23) >> 16;
              *a6 = v16;
              --v8;
              goto LABEL_19;
            }

            --v8;
          }
        }

        while (*(a1 + 82) > 6u);
      }

      v18 = 0;
LABEL_19:
      result = v18 & (v8 >> 31);
    }
  }

  v19 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL sub_2993F3F24(uint64_t a1)
{
  sub_29932C330(a1);
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(*a1 + 32))(a1);
  }

  return v2 != 0;
}

uint64_t sub_2993F3F80(uint64_t result)
{
  if (*(result + 96) == 1 && !*(result + 8))
  {
    if (*(result + 40))
    {
      return (*(*result + 16))();
    }
  }

  return result;
}

BOOL sub_2993F3FC4(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v11[4] = *MEMORY[0x29EDCA608];
  if (*(a1 + 128) && *(a1 + 96) == 1)
  {
    v8 = objc_msgSend_rawCandidate(a2, a2, a3);
    v11[0] = &unk_2A1F7A200;
    v11[1] = a1;
    v11[3] = v11;
    sub_29931161C(v8, v11);
    sub_29939995C(v11);
  }

  result = sub_29932CC58(a1, a2, a3, a4);
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2993F4090(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29939995C(va);
  _Unwind_Resume(a1);
}

void sub_2993F40BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[0] = 0;
  v6[1] = 0;
  v5 = v6;
  v3 = *(a3 + 8);
  sub_2991C6CA8(&__p, off_2A145F3B0[0]);
  sub_2992B7C70(&v5, v3);
}

void sub_2993F41C8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 55);
  if (v4 >= 0)
  {
    v5 = (a2 + 32);
  }

  else
  {
    v5 = *(a2 + 32);
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 55);
  }

  else
  {
    v6 = *(a2 + 40);
  }

  if (v6)
  {
    v7 = 2 * v6;
    v8 = v5;
    do
    {
      v9 = *v8;
      v10 = v9 - 48;
      v11 = v9 - 3664;
      if (v10 < 0xA || v11 < 0xA)
      {
        goto LABEL_21;
      }

      ++v8;
      v7 -= 2;
    }

    while (v7);
  }

  v13 = *v5;
  if (v13 == 3633 || (v13 & 0xFFFC) == 0xE48)
  {
LABEL_21:
    v17 = sub_2992FE060();
    v5 = *v17;
    v6 = v17[1];
    goto LABEL_22;
  }

  v14 = -1;
  v15 = &word_29940CF12;
  while (v14 != 11)
  {
    v16 = *v15++;
    ++v14;
    if (v16 == v13)
    {
      if (v14 > 0xB)
      {
        break;
      }

      goto LABEL_21;
    }
  }

LABEL_22:
  if (!v6)
  {
    return;
  }

  v18 = *MEMORY[0x29EDB8ED8];
  v19 = CFStringCreateWithCharacters(*MEMORY[0x29EDB8ED8], v5, v6);
  v23[5] = v19;
  v20 = CFStringCreateWithCharacters(v18, v5, v6);
  v21 = v20;
  v23[4] = v20;
  if (!v19)
  {
    if (!v20)
    {
      return;
    }

LABEL_27:
    CFRelease(v21);
    if (!v19)
    {
      return;
    }

    goto LABEL_28;
  }

  if (v20)
  {
    v22 = (*(*a2 + 48))(a2);
    sub_29933219C(v23, v19, v21, v22);
    v23[0] = &unk_2A1F767B8;
    (*(*a1 + 216))(a1, v23);
    sub_2993321FC(v23);
    goto LABEL_27;
  }

LABEL_28:
  CFRelease(v19);
}

void sub_2993F4394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, const void *a14)
{
  sub_2993321FC(&a9);
  sub_299219AB4(&a13, 0);
  sub_299219AB4(&a14, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_2993F43D8(uint64_t a1)
{
  sub_2993D894C(*(a1 + 128));

  return sub_29932D4B8(a1);
}

uint64_t sub_2993F4414(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x29EDCA608];
  if (!a1[1])
  {
    goto LABEL_9;
  }

  result = *(a2 + 8);
  if (!result)
  {
    goto LABEL_10;
  }

  if (!*(a2 + 16) || ((Length = CFStringGetLength(result), v6 = CFStringGetLength(*(a2 + 16)) - 1, (Length - 1) <= 0x1F) ? (v7 = v6 > 0x1F) : (v7 = 1), v7))
  {
LABEL_9:
    result = 0;
    goto LABEL_10;
  }

  v9 = sub_2993652F8(6u);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v12 = *(a2 + 8);
    v11 = *(a2 + 16);
    v13 = 138412546;
    v14 = v11;
    v15 = 2112;
    v16 = v12;
    _os_log_debug_impl(&dword_29918C000, v9, OS_LOG_TYPE_DEBUG, "[MJL::registerToLearningDictionary] Learning phrase %@ (%@)", &v13, 0x16u);
  }

  (*(*a1 + 208))(a1, a1[1], a2);
  result = 1;
LABEL_10:
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2993F4548(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_2A14618F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14618F0))
  {
    sub_2991C6CA8(&qword_2A14618F8, off_2A145F3B0[0]);
    dword_2A1461910 = 0;
    word_2A1461914 = 1;
    byte_2A1461916 = 0;
    sub_2991C6CA8(byte_2A1461918, off_2A145F3B8);
    *(&dword_2A1461930 + 3) = 0;
    dword_2A1461930 = 0;
    __cxa_atexit(sub_2993F4824, 0, &dword_29918C000);
    __cxa_guard_release(&qword_2A14618F0);
  }

  v3 = 0uLL;
  v4 = 0;
  sub_299332338(&v3, &qword_2A14618F8, &dword_2A1461938, 2uLL);
  sub_29921EF84(a2);
  *a2 = v3;
  *(a2 + 16) = v4;
  v4 = 0;
  v3 = 0uLL;
  v5 = &v3;
  sub_29921EB1C(&v5);
}

void sub_2993F465C(_Unwind_Exception *a1)
{
  if (byte_2A146190F < 0)
  {
    operator delete(qword_2A14618F8);
  }

  __cxa_guard_abort(&qword_2A14618F0);
  _Unwind_Resume(a1);
}

void sub_2993F46B0(void *a1)
{
  sub_29932C230(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2993F479C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F7A200;
  a2[1] = v2;
  return result;
}

uint64_t sub_2993F47D8(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F7A260))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2993F4824()
{
  v0 = &byte_2A146192F;
  v1 = -64;
  v2 = &byte_2A146192F;
  do
  {
    v3 = *v2;
    v2 -= 32;
    if (v3 < 0)
    {
      operator delete(*(v0 - 23));
    }

    v0 = v2;
    v1 += 32;
  }

  while (v1);
}

void MecabraContextCreateMutable()
{
  v0 = sub_2993652F8(2u);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    *v1 = 0;
    _os_log_debug_impl(&dword_29918C000, v0, OS_LOG_TYPE_DEBUG, "[MecabraContextCreateMutable]", v1, 2u);
  }

  operator new();
}

void MecabraContextRelease(void *a1)
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = sub_2993652F8(2u);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v4 = 134217984;
    v5 = a1;
    _os_log_debug_impl(&dword_29918C000, v2, OS_LOG_TYPE_DEBUG, "[MecabraContextRelease] context:%p", &v4, 0xCu);
    if (!a1)
    {
      goto LABEL_6;
    }
  }

  else if (!a1)
  {
    goto LABEL_6;
  }

  if (*a1)
  {
    (*(**a1 + 8))(*a1);
  }

  MEMORY[0x29C29BFB0](a1, 0x20C4093837F09);
LABEL_6:
  v3 = *MEMORY[0x29EDCA608];
}

const __CFString *MecabraContextAddCandidate(uint64_t *a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v4 = sub_299324150(a2);
  if (v4)
  {
    CFArrayAppendValue(*(v2 + 16), a2);
  }

  return v4;
}

void *MecabraContextRemoveCandidatesInRange(void *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    result = *result;
    if (result)
    {
      return sub_299324190(result, a2, a3);
    }
  }

  return result;
}

CFIndex MecabraContextGetCandidateCount(uint64_t a1)
{
  if (a1 && *a1 && (v1 = *(*a1 + 16)) != 0)
  {
    return CFArrayGetCount(v1);
  }

  else
  {
    return 0;
  }
}

const void *MecabraContextGetCandidateAtIndex(uint64_t *a1, CFIndex a2)
{
  if (a1 && (v2 = *a1) != 0)
  {
    return sub_299324228(v2, a2);
  }

  else
  {
    return 0;
  }
}

const __CFString *MecabraContextAddInlineCandidate(uint64_t *a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v4 = sub_299324150(a2);
  if (v4)
  {
    CFArrayAppendValue(*(v2 + 32), a2);
  }

  return v4;
}

void *MecabraContextRemoveInlineCandidatesInRange(void *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    result = *result;
    if (result)
    {
      return sub_29932428C(result, a2, a3);
    }
  }

  return result;
}

CFIndex MecabraContextGetInlineCandidateCount(uint64_t a1)
{
  if (a1 && *a1)
  {
    return CFArrayGetCount(*(*a1 + 32));
  }

  else
  {
    return 0;
  }
}

const void *MecabraContextGetInlineCandidateAtIndex(uint64_t *a1, CFIndex a2)
{
  if (a1 && (v2 = *a1) != 0)
  {
    return sub_299324314(v2, a2);
  }

  else
  {
    return 0;
  }
}

void MecabraContextSetRightContextFromString(uint64_t *a1, const void *a2)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      sub_299324374(v2, a2);
    }
  }
}

uint64_t MecabraContextSetCandidateHistoryForAnalysisString(uint64_t a1, const void *a2, const void *a3)
{
  if (!a1 || !*a1)
  {
    return 0;
  }

  if (a2)
  {
    v3 = a3 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3;
  if (!v3)
  {
    CFDictionarySetValue(*(*a1 + 40), a2, a3);
  }

  return v4;
}

void MecabraContextResetCandidateHistory(uint64_t a1)
{
  if (a1)
  {
    if (*a1)
    {
      CFDictionaryRemoveAllValues(*(*a1 + 40));
    }
  }
}

void MecabraContextSetGeometryModel(uint64_t *a1, int a2, const __CFArray *a3)
{
  if (a1)
  {
    v3 = *a1;
    if (v3)
    {
      sub_2993244A8(v3, a2, a3);
    }
  }
}

void MecabraContextSetOption(uint64_t a1, const void *a2, const void *a3)
{
  if (a1 && *a1 && a2)
  {
    v3 = *(*a1 + 56);
    if (v3)
    {
      CFDictionarySetValue(v3, a2, a3);
    }
  }
}

const void *MecabraContextGetOption(uint64_t *a1, const void *a2)
{
  if (a1 && (v2 = *a1) != 0)
  {
    return sub_299225D3C(v2, a2);
  }

  else
  {
    return 0;
  }
}

void MecabraContextSetAppContext(uint64_t *a1, const void *a2)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      sub_299324594(v2, a2);
    }
  }
}

void MecabraContextSetRecipientContext(uint64_t *a1, const void *a2)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      sub_299324AA0(v2, a2);
    }
  }
}

uint64_t MecabraContextSetTextContentType(uint64_t result, int a2)
{
  if (result)
  {
    if (*result)
    {
      *(*result + 64) = a2;
    }
  }

  return result;
}

void MecabraContextSetShuangpinType(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v4 = sub_2993652F8(2u);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = 134218240;
    v7 = a1;
    v8 = 1024;
    v9 = a2;
    _os_log_debug_impl(&dword_29918C000, v4, OS_LOG_TYPE_DEBUG, "[MecabraContextSetShuangpinType] context:%p type:%d", &v6, 0x12u);
    if (!a1)
    {
      goto LABEL_5;
    }
  }

  else if (!a1)
  {
    goto LABEL_5;
  }

  if (*a1)
  {
    *(*a1 + 68) = a2;
  }

LABEL_5:
  v5 = *MEMORY[0x29EDCA608];
}

void MecabraContextSetKeyboardLayout(uint64_t *a1, const __CFArray *a2)
{
  v8 = *MEMORY[0x29EDCA608];
  v4 = sub_2993652F8(2u);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = 134217984;
    v7 = a1;
    _os_log_debug_impl(&dword_29918C000, v4, OS_LOG_TYPE_DEBUG, "[MecabraContextSetKeyboardLayout] context:%p", &v6, 0xCu);
    if (!a1)
    {
      goto LABEL_5;
    }
  }

  else if (!a1)
  {
    goto LABEL_5;
  }

  if (*a1)
  {
    sub_299324AF8(*a1, a2);
  }

LABEL_5:
  v5 = *MEMORY[0x29EDCA608];
}

uint64_t sub_2993F4E44(uint64_t a1)
{
  *a1 = &unk_2A1F7A280;
  CFRelease(*(a1 + 8));
  return a1;
}

void sub_2993F4E94(uint64_t a1)
{
  sub_2993F4E44(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2993F4ECC(uint64_t a1, const void *a2, const void *a3, uint64_t a4, uint64_t a5, int a6)
{
  v10 = sub_299383A30(a1, 0, @"ja", a2, 0, 0, a3, 0, a6 == 1, a6 == 2, 0, 0);
  *v10 = &unk_2A1F7A2B0;
  *(v10 + 88) = 0;
  *(v10 + 96) = 0;
  *(v10 + 104) = a4;
  *(v10 + 112) = a5;
  *(v10 + 120) = 10000;
  *(v10 + 128) = v10 + 128;
  *(v10 + 136) = v10 + 128;
  *(v10 + 144) = 0u;
  *(v10 + 160) = 0u;
  *(v10 + 176) = 0;
  *(v10 + 184) = 1065353216;
  sub_2992157F8(v10 + 152, 0x2710uLL);
  *(a1 + 192) = a6;
  *(a1 + 196) = 0x3F8147AE3F800000;
  *(a1 + 204) = 1112014848;
  sub_2993F5054(a1);
  return a1;
}

void sub_2993F4FCC(_Unwind_Exception *a1)
{
  sub_2992751B4(v1 + 152);
  sub_299273F58(v2);
  v5 = *(v1 + 96);
  *(v1 + 96) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *v3;
  *v3 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  sub_299383FE4(v1);
  _Unwind_Resume(a1);
}

void sub_2993F5054(void *a1)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x4002000000;
  v13 = sub_2993F53BC;
  v14 = sub_2993F53E0;
  memset(v15, 0, sizeof(v15));
  v4 = 0;
  v5 = &v4;
  v6 = 0x4002000000;
  v7 = sub_2993F53BC;
  v8 = sub_2993F53E0;
  memset(v9, 0, sizeof(v9));
  v2 = a1[1];
  LMLanguageModelEnumerateDynamicTokensWithBlock();
  sub_2992E9E20(a1 + 11, v11 + 5, (v5 + 5), 1000);
  v3 = a1[12];
  if (!v3)
  {
    operator new();
  }

  sub_29924DE10(v3);
  sub_29924C9E4(a1[12], 1000, 0, 7);
  _Block_object_dispose(&v4, 8);
  v16 = v9;
  sub_29920E060(&v16);
  _Block_object_dispose(&v10, 8);
  v4 = v15;
  sub_29920E060(&v4);
}

void sub_2993F5234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  MEMORY[0x29C29BFB0](v8, 0x10F3C4023F7E159);
  _Block_object_dispose(va, 8);
  *(v10 - 40) = v9;
  sub_29920E060((v10 - 40));
  _Block_object_dispose((v10 - 104), 8);
  sub_29920E060(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2993F5290(void *a1)
{
  v2 = a1[1];
  LMLanguageModelResetDynamicData();
  v3 = a1[11];
  if (v3)
  {
    sub_29924DE10(v3);
  }

  result = a1[12];
  if (result)
  {

    return sub_29924DE10(result);
  }

  return result;
}

uint64_t sub_2993F52EC(uint64_t a1)
{
  v5 = 0;
  v2 = *(a1 + 8);
  LMLanguageModelGetDynamicTokenIDRange();
  v3 = *(a1 + 8);

  return MEMORY[0x2A1C67E20](v3);
}

__n128 sub_2993F53BC(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void sub_2993F540C(void *a1, uint64_t a2, _BYTE *a3)
{
  v17 = *MEMORY[0x29EDCA608];
  v5 = a1[6];
  v6 = *(a1[4] + 8);
  v7 = *(a1[5] + 8);
  v8 = sub_2993652F8(6u);
  os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
  v9 = sub_2993F52EC(v5);
  v16 = v9;
  if (v9)
  {
    v10 = v9;
    if (CFStringGetLength(v9))
    {
      v11 = sub_299327878(*(v5 + 104), v10);
      v12 = v11;
      v15 = v11;
      if (v11)
      {
        if ((CFStringGetLength(v11) - 1) <= 0x1E)
        {
          v14 = 0;
          sub_299276A84(v12);
        }

        CFRelease(v12);
      }
    }

    CFRelease(v10);
  }

  if (*(*(a1[4] + 8) + 48) - *(*(a1[4] + 8) + 40) == 6291456)
  {
    *a3 = 1;
  }

  v13 = *MEMORY[0x29EDCA608];
}

void sub_2993F5874(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, const void *a17, const void *a18)
{
  if (v18)
  {
    MEMORY[0x29C29BF70](v18, 0x1000C80BDFB0063);
  }

  if (a10)
  {
    MEMORY[0x29C29BF70](a10, 0x1000C80BDFB0063);
  }

  sub_299219AB4(&a17, 0);
  sub_299219AB4(&a18, 0);
  _Unwind_Resume(a1);
}

CFIndex sub_2993F5950(CFIndex result, CFStringRef theString, const __CFString *a3)
{
  if (theString)
  {
    v5 = result;
    result = CFStringGetLength(theString);
    if (a3)
    {
      if (result)
      {
        result = CFStringGetLength(a3);
        if (result)
        {
          v9 = 0;
          v10 = 0;
          v8 = 0;
          v6 = sub_299276EA8(theString, &v10, &v8 + 1);
          v7 = sub_299276EA8(a3, &v9, &v8);
          result = sub_29924D6E4(*(v5 + 96), v7, 2 * v9, v6, 2 * v10, 0, 0, 10000);
          if (HIBYTE(v8) == 1)
          {
            result = MEMORY[0x29C29BF70](v6, 0x1000C80BDFB0063);
          }

          if (v8 == 1)
          {
            return MEMORY[0x29C29BF70](v7, 0x1000C80BDFB0063);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_2993F5A44(uint64_t a1, unsigned __int16 *__src, unint64_t a3, int a4)
{
  if (a4 == 5 && a3)
  {
    v7 = __src;
    v8 = a3;
    while (1)
    {
      v10 = *v7++;
      v9 = v10;
      v11 = (v10 + 240);
      v12 = (v10 - 48) >= 0xA && v11 >= 0xA;
      if (v12 && !sub_299281CA8(v9) && v9 != 65292 && v9 != 44)
      {
        break;
      }

      if (!--v8)
      {
        return 3;
      }
    }
  }

  sub_29925851C(__p, __src, a3);
  if (!sub_299327FD8((a1 + 152), __p))
  {
    v15 = sub_2993F5C58(a1, __src, a3);
    sub_29927415C(a1 + 120, __p, &v15);
  }

  v13 = *sub_2993F5B7C(a1 + 120, __p);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  return v13;
}

void sub_2993F5B5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2993F5B7C(uint64_t a1, unsigned __int16 *a2)
{
  v3 = *(sub_2992742B4((a1 + 32), a2) + 5);
  if (*(a1 + 8) != v3)
  {
    sub_2993F64D8();
  }

  return v3 + 40;
}

uint64_t sub_2993F5C58(uint64_t a1, UniChar *a2, CFIndex a3)
{
  if (a2 && a3)
  {
    v6 = a3;
    v7 = a2;
    while (1)
    {
      v8 = *v7++;
      v9 = (v8 + 240);
      if ((v8 - 48) >= 0xA && v9 >= 0xA)
      {
        break;
      }

      if (!--v6)
      {
        return 3;
      }
    }
  }

  if (a3 == 3)
  {
    if (a2[1] == 12289)
    {
      v12 = *a2;
      v13 = (v12 - 48) >= 0xA && (v12 + 240) >= 0xAu;
      if (!v13 || sub_299281B98(v12))
      {
        v14 = a2[2];
        v11 = 3;
        if ((v14 - 48) < 0xA || (v14 + 240) < 0xAu || sub_299281B98(v14))
        {
          return v11;
        }
      }
    }
  }

  else if (!a3)
  {
    return 0;
  }

  v11 = (*(**(a1 + 112) + 32))(*(a1 + 112), a2, 2 * a3);
  if (!v11)
  {
    v15 = CFStringCreateWithCharactersNoCopy(*MEMORY[0x29EDB8ED8], a2, a3, *MEMORY[0x29EDB8EE8]);
    v16 = *(a1 + 8);
    TokenIDForString = LMLanguageModelGetTokenIDForString();
    v18 = *(a1 + 8);
    LMLanguageModelGetDynamicTokenIDRange();
    if (TokenIDForString)
    {
      v11 = TokenIDForString;
    }

    else
    {
      v11 = 0;
    }

    if (v15)
    {
      CFRelease(v15);
    }
  }

  return v11;
}

uint64_t sub_2993F5E08(uint64_t a1, unsigned __int16 *a2, unint64_t a3, unsigned __int16 *a4, uint64_t a5, int a6)
{
  if (a5)
  {
    v6 = 2 * a5;
    while (1)
    {
      v7 = *a4;
      v8 = &unk_29942C878;
      if (v7 != 12300)
      {
        if (v7 != 12301)
        {
          return sub_2993F5A44(a1, a2, a3, a6);
        }

        v8 = &unk_29942C87A;
      }

      if (v8 - &unk_29942C878 == -2)
      {
        break;
      }

      ++a4;
      v6 -= 2;
      if (!v6)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    if (!a3)
    {
      return 0;
    }

    v9 = 2 * a3;
    for (i = a2; ; ++i)
    {
      v11 = *i;
      v12 = &unk_29942C87E;
      if (v11 != 65288)
      {
        if (v11 != 65289)
        {
          return sub_2993F5A44(a1, a2, a3, a6);
        }

        v12 = &unk_29942C880;
      }

      if (v12 - &unk_29942C87E == -2)
      {
        break;
      }

      v9 -= 2;
      if (!v9)
      {
        return 0;
      }
    }
  }

  return sub_2993F5A44(a1, a2, a3, a6);
}

void sub_2993F5F40(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    MEMORY[0x29C29BF70](v1, 0x1000C80BDFB0063);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2993F5F68(uint64_t a1, const __CFString *a2)
{
  v4 = *(a1 + 8);
  v5 = LMLanguageModelAddTokenForString();
  if (v5 && *(a1 + 120))
  {
    v7 = 0;
    sub_299276A84(a2);
  }

  return v5;
}

void sub_2993F6044(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (v15)
  {
    MEMORY[0x29C29BF70](v15, 0x1000C80BDFB0063);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2993F6084(uint64_t a1, unsigned __int16 *a2)
{
  v3 = sub_299274688((a1 + 32), a2);
  v4 = v3[5];
  v6 = *v4;
  v5 = *(v4 + 8);
  v6[1] = v5;
  *v5 = v6;
  --*(a1 + 24);
  sub_299273FB8(a1 + 8, v4);

  return sub_299274784((a1 + 32), v3);
}

double sub_2993F60EC(uint64_t a1, int a2, _DWORD *a3, uint64_t a4)
{
  v27 = a2;
  if (*(a1 + 192) == 2)
  {
    __p = 0;
    v25 = 0;
    v7 = a4 + 1;
    v26 = 0;
    sub_2991B6CFC(&__p, a4 + 1);
    if (a4)
    {
      v8 = 4 * a4;
      do
      {
        sub_2992141C0(&__p, a3++);
        v8 -= 4;
      }

      while (v8);
    }

    sub_2992141C0(&__p, &v27);
    if (*(a1 + 32) >= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = *(a1 + 32);
    }

    if (v9)
    {
      v10 = 0;
      v11 = 0.0;
      v12 = -4;
      do
      {
        if (v10 <= 1)
        {
          v13 = 196;
        }

        else
        {
          v13 = 200;
        }

        v14 = *(a1 + v13);
        v15 = v10 + 1;
        v16 = *(a1 + 8);
        LMLanguageModelGetUsageCount();
        v18 = v17;
        if (v17 >= v14)
        {
          v19 = *(a1 + 8);
          LMLanguageModelGetUsageCount();
          if (v20 != 0.0 && (v10 != 1 || v20 > *(a1 + 204)))
          {
            v11 = v11 + (v18 / v20);
          }
        }

        v12 -= 4;
        ++v10;
      }

      while (v9 != v15);
    }

    else
    {
      v11 = 0.0;
    }

    v23 = log10(v11 / v9);
    if (__p)
    {
      v25 = __p;
      operator delete(__p);
    }

    return v23;
  }

  else
  {
    v21 = *(a1 + 8);

    LMLanguageModelConditionalProbability();
  }

  return result;
}

void sub_2993F62A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_2993F62C8(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  if (*(a1 + 192) == 2)
  {
    if (a3 < 1)
    {
      return 0.0;
    }

    v6 = 0;
    v7 = 0.0;
    do
    {
      v7 = v7 + sub_2993F60EC(a1, a2[v6], a2, v6);
      ++v6;
    }

    while (a3 != v6);
    return v7;
  }

  else
  {
    v8 = *(a1 + 8);

    LMLanguageModelJointProbability();
  }

  return result;
}

uint64_t sub_2993F637C(void *a1)
{
  sub_2992751B4((a1 + 19));
  sub_299273F58(a1 + 16);
  v2 = a1[12];
  a1[12] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[11];
  a1[11] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return sub_299383FE4(a1);
}

void sub_2993F6420(void *a1)
{
  sub_2992751B4((a1 + 19));
  sub_299273F58(a1 + 16);
  v2 = a1[12];
  a1[12] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[11];
  a1[11] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  sub_299383FE4(a1);

  JUMPOUT(0x29C29BFB0);
}

id **sub_2993F6678(id **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {

    MEMORY[0x29C29BFB0](v2, 0x80C40B8603338);
  }

  return a1;
}

uint64_t sub_2993F66CC@<X0>(void *a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v49 = *MEMORY[0x29EDCA608];
  v5 = objc_msgSend_count(a1, a2, a3);
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  if (v5)
  {
    if (v5 < 0x38E38E38E38E38FLL)
    {
      operator new();
    }

    sub_299212A8C();
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  result = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v6, &v44, v48, 16, a4);
  v10 = result;
  if (result)
  {
    v11 = 0;
    v40 = *v45;
    do
    {
      v12 = 0;
      v13 = (72 * v11 + 64);
      v41 = v10;
      do
      {
        if (*v45 != v40)
        {
          objc_enumerationMutation(a1);
        }

        v43 = v11;
        v14 = *(*(&v44 + 1) + 8 * v12);
        v15 = objc_msgSend_range(v14, v8, v9);
        if (v15 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v18 = -1;
        }

        else
        {
          v18 = v15;
        }

        if (v15 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v19 = 0;
        }

        else
        {
          v19 = v16;
        }

        v42 = v19;
        v20 = objc_msgSend_replacementString(v14, v16, v17);
        v23 = objc_msgSend_modificationType(v14, v21, v22);
        v26 = objc_msgSend_syllableRange(v14, v24, v25);
        if (v26 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v29 = -1;
        }

        else
        {
          v29 = v26;
        }

        if (v26 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v30 = 0;
        }

        else
        {
          v30 = v27;
        }

        v31 = objc_msgSend_additionalSyllableRange(v14, v27, v28);
        v33 = v32;
        objc_msgSend_modificationScore(v14, v32, v34);
        if (v31 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v36 = 0;
        }

        else
        {
          v36 = v33;
        }

        if (v31 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v37 = -1;
        }

        else
        {
          v37 = v31;
        }

        *(v13 - 8) = v18;
        *(v13 - 7) = v42;
        *(v13 - 6) = v20;
        *(v13 - 10) = v23;
        *(v13 - 4) = v29;
        *(v13 - 3) = v30;
        v11 = v43 + 1;
        ++v12;
        *(v13 - 2) = v37;
        *(v13 - 1) = v36;
        *v13 = v35;
        v13 += 9;
      }

      while (v41 != v12);
      result = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v8, &v44, v48, 16);
      v10 = result;
    }

    while (result);
  }

  v38 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2993F6930(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    *(a9 + 8) = __p;
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2993F6964@<X0>(void ***a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = objc_msgSend_correction(**a1, a2, a3);
  v8 = objc_msgSend_range(v5, v6, v7);
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = -1;
  }

  else
  {
    v11 = v8;
  }

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = 0;
  }

  else
  {
    v12 = v9;
  }

  *a4 = v11;
  *(a4 + 8) = v12;
  *(a4 + 16) = objc_msgSend_replacementString(v5, v9, v10);
  *(a4 + 24) = objc_msgSend_modificationType(v5, v13, v14);
  v17 = objc_msgSend_syllableRange(v5, v15, v16);
  if (v17 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v20 = -1;
  }

  else
  {
    v20 = v17;
  }

  if (v17 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v21 = 0;
  }

  else
  {
    v21 = v18;
  }

  *(a4 + 32) = v20;
  *(a4 + 40) = v21;
  v22 = objc_msgSend_additionalSyllableRange(v5, v18, v19);
  if (v22 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v25 = -1;
  }

  else
  {
    v25 = v22;
  }

  if (v22 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v26 = 0;
  }

  else
  {
    v26 = v23;
  }

  *(a4 + 48) = v25;
  *(a4 + 56) = v26;
  result = objc_msgSend_modificationScore(v5, v23, v24);
  *(a4 + 64) = v28;
  return result;
}

id sub_2993F6A08(int a1)
{
  v2 = sub_2992EEE98();
  v4 = objc_msgSend_classNamed_(v2, v3, @"PRAutocorrectionContext");
  v6 = 2;
  if (a1 == 2)
  {
    v6 = 4;
  }

  if (a1 == 1)
  {
    v7 = objc_msgSend_autocorrectionContextOfType_(v4, v5, 3);
  }

  else
  {
    v7 = objc_msgSend_autocorrectionContextOfType_(v4, v5, v6);
  }

  return v7;
}

void sub_2993F6AB0(_Unwind_Exception *a1, int a2)
{
  v4 = v2;
  MEMORY[0x29C29BFB0](v4, 0x1030C4059851DCDLL);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x2993F6AA0);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2993F6B00()
{
  if ((atomic_load_explicit(&qword_2A14622D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14622D0))
  {
    sub_2991C6CA8(v1, "/System/Library/LinguisticData/RequiredAssets_zh.bundle/AssetData/reading-lookup.dat");
    if (SHIBYTE(v2) < 0)
    {
      sub_2991A110C(__p, v1[0], v1[1]);
    }

    else
    {
      *__p = *v1;
      v4 = v2;
    }

    sub_2993F6A68();
  }

  return qword_2A14622C8;
}

void sub_2993F6BDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_2A14622D0);
  _Unwind_Resume(a1);
}

uint64_t sub_2993F6C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, unsigned int a7)
{
  result = sub_2993F6CC0(a1, a2, a3, a4, a5, a6, a7);
  if (!result)
  {

    return sub_2993F6D40(a1, a2, a3, a4, a5, a6, a7);
  }

  return result;
}

uint64_t sub_2993F6CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, unsigned int a7)
{
  v11 = *(a1 + 32);
  result = CFBurstTrieContainsUTF8String();
  if (result)
  {
    return sub_2993F6E0C(a1, 0, 0, 0, a5, a6, a7);
  }

  return result;
}

uint64_t sub_2993F6D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7)
{
  v12 = 0;
  v13 = 0;
  v14 = a2 + 2 * a3;
  while (a4 > v13)
  {
    v15 = v13++;
    if ((*(v14 + 2 * v15) & 0xFC00) == 0xD800 && a4 != v13 && (*(v14 + 2 * v13) & 0xFC00) == 0xDC00)
    {
      v13 = v15 + 2;
    }

    v16 = sub_2993F6CC0(a1, v14, v15, v13 - v15, a5, a6 + v12, a7 - v12);
    v12 = (v16 + v12);
    if (!v16)
    {
      return 0;
    }
  }

  return v12;
}

uint64_t sub_2993F6E0C(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, int a5, uint64_t a6, unsigned int a7)
{
  if (!a3)
  {
    return 0;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = *(a1 + 40) + 2 * a2;
  v30 = a7;
  v23 = a4;
  v24 = a3;
  v28 = 2 * a4;
  v12 = 2 * (a4 - 1);
  do
  {
    if (a4)
    {
      v13 = 0;
      v14 = 0;
      v25 = v11;
      v26 = v8;
      v15 = v11 + 2 * v8;
      do
      {
        v16 = *(v15 + v13);
        if (!v13)
        {
          v17 = v16 >> 14;
          if (a5 == 1 && v17 == 2)
          {
            break;
          }

          v16 &= 0x3FFFu;
          if (a5 == 2 && v17 == 1)
          {
            break;
          }
        }

        v18 = *(a1 + 48);
        v19 = v16 + *(a1 + 8) * v16;
        v20 = strlen((v18 + v19));
        v21 = v20 + v10;
        if (v20 + v10 > v30)
        {
          break;
        }

        strncpy((a6 + v10), (v18 + v19), v20);
        v10 = v21;
        v14 |= v12 == v13;
        v13 += 2;
      }

      while (v28 != v13);
      a4 = v23;
      v11 = v25;
      v8 = v26;
      if (v14)
      {
        break;
      }
    }

    v11 += 2 * v9++ * a4;
    v8 += a4;
  }

  while (v9 != v24);
  return v10;
}

uint64_t sub_2993F6F74(uint64_t a1, char *__s)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  sub_2992BC434(__s, "r", 1, &v11);
  v3 = v11;
  v11 = 0uLL;
  v4 = *(a1 + 24);
  *(a1 + 16) = v3;
  if (v4)
  {
    sub_2991A893C(v4);
    if (*(&v11 + 1))
    {
      sub_2991A893C(*(&v11 + 1));
    }
  }

  v5 = **(a1 + 16);
  *a1 = v5;
  if (*v5 != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_2993F7120(exception, 2);
    goto LABEL_9;
  }

  *(a1 + 8) = *(v5 + 2);
  v6 = *(v5 + 12);
  v7 = CFBurstTrieCreateFromMapBytes();
  *(a1 + 32) = v7;
  if (!v7)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_2993F7120(exception, 1);
LABEL_9:
    __cxa_throw(exception, &unk_2A1F7A308, sub_2993F71C4);
  }

  v8 = v5 + *(*a1 + 4);
  *(a1 + 40) = v5 + *(*a1 + 8);
  *(a1 + 48) = v8;
  return a1;
}

uint64_t sub_2993F7120(uint64_t a1, int a2)
{
  *(a1 + 8) = 0;
  *a1 = &unk_2A1F7A330;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v3 = a2 == 1;
  if (a2 == 1)
  {
    v4 = "Reading lookup index trie error.";
  }

  else
  {
    v4 = "Reading lookup version error.";
  }

  if (v3)
  {
    v5 = 32;
  }

  else
  {
    v5 = 29;
  }

  sub_299248CC0((a1 + 8), v4, v5);
  return a1;
}

void sub_2993F71A0(_Unwind_Exception *a1)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  std::exception::~exception(v1);
  _Unwind_Resume(a1);
}

void sub_2993F71C4(std::exception *this)
{
  this->__vftable = &unk_2A1F7A330;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);
}

uint64_t sub_2993F7224(const __CFString *a1, int a2)
{
  if ((a2 - 3) < 0xFFFFFFFE)
  {
    return 0;
  }

  v2 = sub_2993F6B00();
  if (v2)
  {
    sub_299276A84(a1);
  }

  return v2;
}

void sub_2993F7364(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x29C29BF70](a9, 0x1000C80BDFB0063);
  }

  _Unwind_Resume(exception_object);
}

void sub_2993F73A4(std::exception *this)
{
  this->__vftable = &unk_2A1F7A330;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2993F7418(uint64_t a1)
{
  result = a1 + 8;
  if (*(a1 + 31) < 0)
  {
    return *result;
  }

  return result;
}

void *sub_2993F7434(uint64_t a1, unsigned int a2, void *a3, _BYTE *a4, void *__dst, _WORD *a6)
{
  v12 = a2;
  v13 = (*(a1 + 8) + a2);
  v14 = *v13;
  *a6 = v14;
  result = memmove(__dst, v13 + 1, v14);
  if (*a6)
  {
    v16 = 0;
    do
    {
      *(__dst + v16++) ^= 0x6Cu;
      v17 = *a6;
    }

    while (v17 > v16);
  }

  else
  {
    v17 = 0;
  }

  *a4 = *(*(a1 + 8) + a2 + 1 + v17);
  *a3 = *(a1 + 8) + v12 + *a6 + 2;
  return result;
}

uint64_t sub_2993F7500(uint64_t result, unsigned __int8 *a2, int a3, _BYTE *a4, _BYTE *a5)
{
  __n_2[5] = *MEMORY[0x29EDCA608];
  __n = 0;
  __len_1 = 0;
  __len = 0;
  v9 = 0xFFFF;
  v10 = 1;
  while (1)
  {
    v11 = v9 + 1;
    v12 = (v9 + 1);
    if (v12 == a3)
    {
      break;
    }

    v13 = a2[(a3 - 2 - v9)];
    v14 = *result;
    v15 = v13 + *(*result + 8 * v10) + 2;
    if (v15 > **result || v14[2 * v15 + 1] != v10)
    {
      goto LABEL_14;
    }

    v16 = v14[2 * v15];
    v10 = v15;
    v9 = v11;
    if (v16 < 0)
    {
      result = sub_2993F7434(result, -v16, &__len_1, &__len, __n_2, &__n);
      if (v12 + __n + 1 == a3)
      {
        result = memcmp(__n_2, a2, __n);
        if (!result)
        {
          v17 = __len;
          result = memmove(a4, __len_1, __len);
          for (*a5 = v17; v17; --v17)
          {
            *a4++ ^= 0x6Cu;
          }

          goto LABEL_15;
        }
      }

LABEL_14:
      *a5 = 0;
      goto LABEL_15;
    }
  }

  v18 = *result;
  v19 = *(*result + 8 * v10);
  if (v19 >= **result)
  {
    goto LABEL_14;
  }

  v20 = 2 * v19;
  if (v18[v20 + 3] != v10)
  {
    goto LABEL_14;
  }

  v21 = v18[v20 + 2];
  if ((v21 & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

  sub_2993F7434(result, -v21, &__len_1, &__len, __n_2, &__n);
  v23 = __len;
  result = memmove(a4, __len_1, __len);
  for (*a5 = v23; v23; --v23)
  {
    *a4++ ^= 0x6Cu;
  }

LABEL_15:
  v22 = *MEMORY[0x29EDCA608];
  return result;
}

void *sub_2993F76E8(void *__src, size_t __len, _BYTE *__dst, _BYTE *a4)
{
  v5 = __dst;
  v6 = __len;
  v7 = __len;
  result = memmove(__dst, __src, __len);
  *a4 = v6;
  if (v6)
  {
    do
    {
      *v5++ ^= 0x6Cu;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_2993F774C(uint64_t result, uint64_t a2, int a3, _BYTE *a4, _BYTE *a5, uint64_t a6)
{
  v29 = *MEMORY[0x29EDCA608];
  v7 = *(a6 + 4);
  if (v7 < a3)
  {
    v9 = *a6;
    if ((*a6 & 0x80000000) == 0)
    {
      v10 = *(result + 24);
      if (v9 <= v10)
      {
        *&__n[1] = 0;
        HIBYTE(__n[0]) = 0;
        v15 = v7;
        LOWORD(__n[0]) = 0;
        while (1)
        {
          v16 = 2 * v9;
          if (v15 > v7)
          {
            v17 = *result;
            v18 = *(*result + 4 * v16);
            if (v18 >= 1 && v18 < v10 && *(v17 + 8 * v18 + 12) == v9)
            {
              v20 = *(v17 + 4 * (2 * v18 + 2));
              if (v20 < 0)
              {
                sub_2993F7434(result, -v20, &__n[1], __n + 3, __s1, __n);
                result = sub_2993F76E8(*&__n[1], HIBYTE(__n[0]), a4, a5);
                *a6 = v9;
                *(a6 + 4) = v15;
                goto LABEL_5;
              }
            }
          }

          v21 = a3 - v15;
          if (a3 <= v15)
          {
            goto LABEL_4;
          }

          v22 = *result;
          v23 = *(a2 + (v21 - 1)) + *(*result + 4 * v16) + 2;
          v24 = v23 < 1 || v23 > v10;
          if (v24 || *(v22 + 4 * ((2 * (v23 & 0x3FFFFFFF)) | 1u)) != v9)
          {
            goto LABEL_4;
          }

          v25 = *(v22 + 4 * (2 * v23));
          if (v25 < 0)
          {
            break;
          }

          ++v15;
          v9 = v23;
        }

        result = sub_2993F7434(result, -v25, &__n[1], __n + 3, __s1, __n);
        v26 = __n[0];
        if (((v21 + ~LOWORD(__n[0])) & 0x8000) == 0 && LOWORD(__n[0]) + v15 < a3)
        {
          result = memcmp(__s1, (a2 + (v21 + ~LOWORD(__n[0]))), LOWORD(__n[0]));
          if (!result)
          {
            result = sub_2993F76E8(*&__n[1], HIBYTE(__n[0]), a4, a5);
            *a6 = -1;
            *(a6 + 4) = v15 + v26 + 1;
            goto LABEL_5;
          }
        }
      }
    }
  }

LABEL_4:
  *a5 = 0;
LABEL_5:
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_2993F7954(unsigned __int16 *a1, const char *a2, unsigned int a3, unsigned int a4)
{
  v18 = *MEMORY[0x29EDCA608];
  v6 = objc_msgSend_stringWithCharacters_length_(MEMORY[0x29EDBA0F8], a2, a2, a3 >> 1);
  objc_msgSend_getCString_maxLength_encoding_(v6, v7, v17, 100, 4);
  printf("%s \n", v17);
  v8 = a4 >> 28;
  if (v8)
  {
    v9 = 0;
    v10 = (*(a1 + 1) + 2 * (a4 & 0xFFFFFF));
    v11 = 2 * (HIBYTE(a4) & 0xF);
    v12 = v11;
    do
    {
      printf("reading %d: ", v9);
      if ((a4 & 0xF000000) != 0)
      {
        v13 = 0;
        do
        {
          if (v13)
          {
            v14 = v10[v13 / 2];
          }

          else
          {
            v14 = *v10 & 0x3FFF;
          }

          printf("%s", (*(a1 + 2) + v14 + *a1 * v14));
          v13 += 2;
        }

        while (v11 != v13);
      }

      putchar(10);
      ++v9;
      v10 = (v10 + v12);
      v12 += v11;
    }

    while (v9 != v8);
  }

  result = putchar(10);
  ++dword_2A1461938;
  v16 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ReadingLookupDictionaryBuild(int a1, char *const *a2)
{
  v90 = *MEMORY[0x29EDCA608];
  v4 = objc_autoreleasePoolPush();
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = MEMORY[0x29EDCA650];
  while (1)
  {
    while (1)
    {
      v10 = getopt_long(a1, a2, "r:w:o:d:", &off_2A145FC00, 0);
      if (v10 <= 110)
      {
        break;
      }

      switch(v10)
      {
        case 'o':
          v6 = *v9;
          break;
        case 'w':
          v7 = *v9;
          break;
        case 'r':
          v8 = *v9;
          break;
        default:
          goto LABEL_9;
      }
    }

    if (v10 == -1)
    {
      break;
    }

    if (v10 == 100)
    {
      v5 = *v9;
    }

    else
    {
LABEL_9:
      sub_2993F819C(*a2);
    }
  }

  if (v5)
  {
    v11 = open(v5, 0);
    if ((v11 & 0x80000000) == 0)
    {
      v12 = v11;
      fstat(v11, &v88);
      v13 = mmap(0, v88.st_size, 1, 1, v12, 0);
      v14 = *(v13 + 3);
      if (!CFBurstTrieCreateFromMapBytes())
      {
        __assert_rtn("dumpDictionary", "BuildReadingLookupDictionary.mm", 84, "trie");
      }

      *&v85.st_dev = 0;
      LOWORD(v85.st_dev) = v13[1];
      v85.st_ino = v13 + *(v13 + 2);
      *&v85.st_uid = v13 + *(v13 + 1);
      CFBurstTrieCreateCursorForBytes();
      CFBurstTrieTraverseFromCursor();
      CFBurstTrieCursorRelease();
      CFBurstTrieRelease();
      close(v12);
      munmap(v13, v88.st_size);
      printf("%d words\n", dword_2A1461938);
      goto LABEL_40;
    }

    v71 = *MEMORY[0x29EDCA610];
LABEL_52:
    fprintf(v71, "Cannot open %s\n");
LABEL_54:
    exit(1);
  }

  if (!v8 || !v7 || !v6)
  {
    sub_2993F819C(*a2);
    goto LABEL_54;
  }

  v74 = v4;
  v15 = open(v8, 0);
  if (v15 < 0)
  {
    v71 = *MEMORY[0x29EDCA610];
    goto LABEL_52;
  }

  v16 = v15;
  fstat(v15, &v85);
  v72 = v16;
  v73 = mmap(0, v85.st_size, 1, 1, v16, 0);
  v17 = MEMORY[0x29EDBA0F8];
  v19 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x29EDBA0F8], v18, v7, 4);
  v21 = objc_msgSend_stringWithContentsOfFile_encoding_error_(v17, v20, v19, 4, 0);
  v23 = objc_msgSend_componentsSeparatedByString_(v21, v22, @"\n");
  CFBurstTrieCreate();
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v81, v86, 16);
  if (v25)
  {
    v26 = v25;
    v27 = *v82;
    do
    {
      v28 = 0;
      v75 = v26;
      do
      {
        if (*v82 != v27)
        {
          objc_enumerationMutation(v23);
        }

        v29 = *(*(&v81 + 1) + 8 * v28);
        v30 = objc_autoreleasePoolPush();
        v33 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x29EDB9F50], v31, v32);
        v35 = objc_msgSend_stringByTrimmingCharactersInSet_(v29, v34, v33);
        if (objc_msgSend_length(v35, v36, v37) && (objc_msgSend_hasPrefix_(v35, v38, @"#") & 1) == 0)
        {
          v40 = objc_msgSend_componentsSeparatedByString_(v35, v39, @",");
          v42 = objc_msgSend_objectAtIndex_(v40, v41, 0);
          if (!objc_msgSend_length(v42, v43, v44))
          {
            __assert_rtn("ReadingLookupDictionaryBuild", "BuildReadingLookupDictionary.mm", 178, "[word length] > 0");
          }

          objc_msgSend_getCString_maxLength_encoding_(v42, v45, v89, 100, 4);
          v47 = objc_msgSend_objectAtIndex_(v40, v46, 1);
          if ((objc_msgSend_isEqualToString_(v47, v48, @"*") & 1) == 0)
          {
            if (objc_msgSend_count(v40, v49, v50) != 4)
            {
              __assert_rtn("ReadingLookupDictionaryBuild", "BuildReadingLookupDictionary.mm", 183, "[components count] == 4");
            }

            v52 = objc_msgSend_objectAtIndex_(v40, v51, 1);
            objc_msgSend_getCString_maxLength_encoding_(v52, v53, v87, 100, 4);
            atoi(v87);
            v55 = objc_msgSend_objectAtIndex_(v40, v54, 2);
            objc_msgSend_getCString_maxLength_encoding_(v55, v56, v87, 100, 4);
            atoi(v87);
            v58 = objc_msgSend_objectAtIndex_(v40, v57, 3);
            objc_msgSend_getCString_maxLength_encoding_(v58, v59, v87, 100, 4);
            if (atoi(v87) >> 24)
            {
              __assert_rtn("ReadingLookupDictionaryBuild", "BuildReadingLookupDictionary.mm", 193, "offset <= 0xFFFFFF");
            }

            objc_msgSend_getCharacters_(v42, v60, &v88);
            objc_msgSend_length(v42, v61, v62);
            v26 = v75;
            if (!CFBurstTrieAddUTF8String())
            {
              __assert_rtn("ReadingLookupDictionaryBuild", "BuildReadingLookupDictionary.mm", 198, "CFBurstTrieAddUTF8String(trie, (UInt8*)utf16String, [word length] * sizeof(unichar), payload)");
            }
          }
        }

        objc_autoreleasePoolPop(v30);
        ++v28;
      }

      while (v26 != v28);
      v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v63, &v81, v86, 16);
    }

    while (v26);
  }

  v64 = *(v73 + 6);
  v65 = v64 - *(v73 + 2) + 24;
  __buf[0] = 1;
  __buf[1] = *v73;
  v77 = 24;
  v78 = v65;
  v80 = 0;
  v79 = (LODWORD(v85.st_size) - v64 + v65);
  v66 = open(v6, 1537, 384);
  if (v66 < 0)
  {
    fprintf(*MEMORY[0x29EDCA610], "Cannot create %s\n");
    goto LABEL_54;
  }

  v67 = v66;
  v4 = v74;
  if (write(v66, __buf, 0x18uLL) != 24)
  {
    __assert_rtn("ReadingLookupDictionaryBuild", "BuildReadingLookupDictionary.mm", 225, "numByteWritten == sizeof(ReadingLookupDictionaryHeader)");
  }

  v68 = write(v67, v73 + 10, v85.st_size - 10);
  if (v68 != v85.st_size - 10)
  {
    __assert_rtn("ReadingLookupDictionaryBuild", "BuildReadingLookupDictionary.mm", 227, "numByteWritten == statBuffer.st_size - sizeof(ReadingHeader)");
  }

  if (!CFBurstTrieSerializeWithFileDescriptor())
  {
    __assert_rtn("ReadingLookupDictionaryBuild", "BuildReadingLookupDictionary.mm", 228, "CFBurstTrieSerializeWithFileDescriptor(trie, outputFile, kCFBurstTrieReadOnly | kCFBurstTrieBitmapCompression | kCFBurstTrieSortByKey)");
  }

  close(v67);
  fprintf(*MEMORY[0x29EDCA610], "Created reading lookup dictioanry at %s\n", v6);
  close(v72);
LABEL_40:
  objc_autoreleasePoolPop(v4);
  v69 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t sub_2993F819C(const char *a1)
{
  v2 = MEMORY[0x29EDCA610];
  fprintf(*MEMORY[0x29EDCA610], "%s --reading-list PATH --word-index PATH --output PATH\n", a1);
  fwrite("or\n", 3uLL, 1uLL, *v2);
  return fprintf(*v2, "%s --dump PATH\n", a1);
}

uint64_t sub_2993F820C(int32x2_t *a1, uint64_t a2, char *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = sub_2993F9D38(a3, v7);
    if (!result)
    {
      return result;
    }

    v8 = result;
    v7 = v10;
  }

  else
  {
    v8 = a3 + 1;
  }

  v11 = sub_2991E2384(a1, v8, v7);
  v12 = a1[11].i32[0];
  v13 = __OFSUB__(v12--, 1);
  a1[11].i32[0] = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  v14 = v11;
  result = sub_2991DFC7C(a2, v8, a1);
  if (!result)
  {
    return result;
  }

  ++a1[11].i32[0];
  if (a1[10].i32[0])
  {
    return 0;
  }

  v15 = a1[3].i32[1] + v14;
  a1[3].i32[1] = v15;
  *a1 = (*&a1[1] + (v15 & (v15 >> 31)));
  return result;
}

uint64_t sub_2993F82D4(int32x2_t *a1, uint64_t a2, char *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = sub_2993F9D38(a3, v7);
    if (!result)
    {
      return result;
    }

    v8 = result;
    v7 = v10;
  }

  else
  {
    v8 = a3 + 1;
  }

  v11 = sub_2991E2384(a1, v8, v7);
  v12 = a1[11].i32[0];
  v13 = __OFSUB__(v12--, 1);
  a1[11].i32[0] = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  v14 = v11;
  result = sub_2991E0BDC(a2, v8, a1);
  if (!result)
  {
    return result;
  }

  ++a1[11].i32[0];
  if (a1[10].i32[0])
  {
    return 0;
  }

  v15 = a1[3].i32[1] + v14;
  a1[3].i32[1] = v15;
  *a1 = (*&a1[1] + (v15 & (v15 >> 31)));
  return result;
}

void sub_2993F839C(uint64_t a1, char *a2, int32x2_t *a3)
{
  v322 = a2;
  v5 = sub_2991E1F14(a3, &v322, a3[11].i32[1]);
  v6 = v322;
  if (v5)
  {
    return;
  }

  while (2)
  {
    v7 = v6 + 1;
    v8 = *v6;
    if ((*v6 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v8 = v8 + (*v7 << 7) - 128;
    if ((*v7 & 0x80000000) == 0)
    {
      v7 = v6 + 2;
LABEL_6:
      v322 = v7;
      goto LABEL_7;
    }

    v31 = sub_2991FC5E0(v6, v8);
    v322 = v31;
    if (!v31)
    {
      return;
    }

    v7 = v31;
LABEL_7:
    switch(v8 >> 3)
    {
      case 1u:
        if (v8 != 10)
        {
          goto LABEL_269;
        }

        v9 = v7 - 1;
        while (2)
        {
          v322 = v9 + 1;
          v10 = *(a1 + 72);
          if (!v10)
          {
            v13 = *(a1 + 68);
LABEL_16:
            sub_2992018A8(a1 + 56, v13 + 1);
            v12 = *(a1 + 72);
            v20 = *v12;
            goto LABEL_17;
          }

          v11 = *(a1 + 64);
          sub_2991EA510(v10);
          if (v14 != v15)
          {
            sub_2991EA4F8();
            *(a1 + 64) = v17;
            v19 = *(v18 + 8);
            goto LABEL_22;
          }

          if (v13 == *(a1 + 68))
          {
            goto LABEL_16;
          }

LABEL_17:
          sub_2991EA54C(v12);
          v21 = *(a1 + 56);
          if (!v21)
          {
            sub_2991EA558();
          }

          if (*(v21 + 24))
          {
            v29 = sub_2991EA4B0();
            (*(v30 + 40))(v29, &unk_2A1F638C0, 24);
          }

          v22 = sub_2991EA438();
          sub_2991EA528(v22);
          v23 = *(a1 + 72);
          v24 = *(a1 + 64);
          sub_2991EA51C();
          *(a1 + 64) = v25;
          v19 = sub_2991EA504(v26, v27);
LABEL_22:
          v322 = sub_2991FC624(v19, v16, a3);
          if (v322)
          {
            sub_2991EA4EC();
            if (!(!v257 & v28) || *v9 != 10)
            {
              goto LABEL_267;
            }

            continue;
          }

          return;
        }

      case 2u:
        if (v8 != 18)
        {
          goto LABEL_269;
        }

        sub_2991EA540(*(a1 + 40) | 1);
        if (v56)
        {
          sub_2991EA534(v127, v56);
        }

        v57 = (a1 + 152);
        goto LABEL_227;
      case 3u:
        if (v8 != 24)
        {
          goto LABEL_269;
        }

        v186 = (v7 + 1);
        v185 = *v7;
        if ((v185 & 0x8000000000000000) == 0)
        {
          goto LABEL_183;
        }

        sub_2991EA40C(v185, v186);
        if (v188 < 0)
        {
          v322 = sub_2991FC598(v187, v185);
          if (!v322)
          {
            return;
          }
        }

        else
        {
          v186 = (v187 + 2);
LABEL_183:
          v322 = v186;
        }

        if ((v185 - 1) > 3)
        {
          v316 = *(a1 + 8);
          if (v316)
          {
            v317 = ((v316 & 0xFFFFFFFFFFFFFFFELL) + 8);
          }

          else
          {
            v320 = v185;
            v321 = sub_2991E2054((a1 + 8));
            v185 = v320;
            v317 = v321;
          }

          sub_2991FC480(3, v185, v317);
        }

        else
        {
          *(a1 + 40) |= 0x800000u;
          *(a1 + 272) = v185;
        }

        goto LABEL_267;
      case 4u:
        if (v8 != 32)
        {
          goto LABEL_269;
        }

        sub_2991EA480(v7, *(a1 + 40) | 0x1000000);
        if ((v123 & 0x80) == 0)
        {
          goto LABEL_122;
        }

        sub_2991EA424(v123, v124);
        if (v126 < 0)
        {
          v284 = sub_2991FC598(v125, v123);
          v322 = v284;
          *(a1 + 276) = v285;
          if (!v284)
          {
            return;
          }
        }

        else
        {
          v124 = (v125 + 2);
LABEL_122:
          v322 = v124;
          *(a1 + 276) = v123;
        }

        goto LABEL_267;
      case 5u:
        if (v8 != 42)
        {
          goto LABEL_269;
        }

        v152 = v7 - 1;
        while (1)
        {
          v322 = v152 + 1;
          v153 = *(a1 + 96);
          if (!v153)
          {
            break;
          }

          v154 = *(a1 + 88);
          sub_2991EA510(v153);
          if (v14 == v15)
          {
            if (v156 == *(a1 + 92))
            {
LABEL_154:
              sub_2992018A8(a1 + 80, v156 + 1);
              v155 = *(a1 + 96);
              v161 = *v155;
            }

            sub_2991EA54C(v155);
            v162 = *(a1 + 80);
            if (!v162)
            {
              sub_2991EA558();
            }

            if (*(v162 + 24))
            {
              v169 = sub_2991EA4B0();
              (*(v170 + 40))(v169, &unk_2A1F638C0, 24);
            }

            v163 = sub_2991EA438();
            sub_2991EA528(v163);
            v164 = *(a1 + 96);
            v165 = *(a1 + 88);
            sub_2991EA51C();
            *(a1 + 88) = v166;
            v160 = sub_2991EA504(v167, v168);
            goto LABEL_160;
          }

          sub_2991EA4F8();
          *(a1 + 88) = v158;
          v160 = *(v159 + 8);
LABEL_160:
          v322 = sub_2991FC624(v160, v157, a3);
          if (!v322)
          {
            return;
          }

          sub_2991EA4EC();
          if (!(!v257 & v28) || *v152 != 42)
          {
            goto LABEL_267;
          }
        }

        v156 = *(a1 + 92);
        goto LABEL_154;
      case 6u:
        if (v8 != 48)
        {
          goto LABEL_269;
        }

        sub_2991EA480(v7, *(a1 + 40) | 0x200);
        if ((v181 & 0x80) == 0)
        {
          goto LABEL_178;
        }

        sub_2991EA424(v181, v182);
        if (v184 < 0)
        {
          v298 = sub_2991FC598(v183, v181);
          v322 = v298;
          *(a1 + 224) = v299;
          if (!v298)
          {
            return;
          }
        }

        else
        {
          v182 = (v183 + 2);
LABEL_178:
          v322 = v182;
          *(a1 + 224) = v181;
        }

        goto LABEL_267;
      case 7u:
        if (v8 != 58)
        {
          goto LABEL_269;
        }

        sub_2991EA540(*(a1 + 40) | 2);
        if (v56)
        {
          sub_2991EA534(v219, v56);
        }

        v57 = (a1 + 160);
        goto LABEL_227;
      case 0xAu:
        if (v8 != 85)
        {
          goto LABEL_269;
        }

        *(a1 + 40) |= 0x2000000u;
        v221 = *v7;
        v144 = v7 + 4;
        *(a1 + 280) = v221;
        goto LABEL_251;
      case 0xBu:
        if (v8 != 88)
        {
          goto LABEL_269;
        }

        sub_2991EA490(v7, *(a1 + 40) | 0x800);
        if ((v97 & 0x8000000000000000) == 0)
        {
          goto LABEL_100;
        }

        sub_2991EA40C(v97, v98);
        if (v100 < 0)
        {
          v274 = sub_2991FC598(v99, v97);
          v322 = v274;
          *(a1 + 232) = v275;
          if (!v274)
          {
            return;
          }
        }

        else
        {
          v98 = (v99 + 2);
LABEL_100:
          v322 = v98;
          *(a1 + 232) = v97;
        }

        goto LABEL_267;
      case 0xCu:
        if (v8 != 96)
        {
          goto LABEL_269;
        }

        sub_2991EA480(v7, *(a1 + 40) | 0x400);
        if ((v222 & 0x80) == 0)
        {
          goto LABEL_234;
        }

        sub_2991EA424(v222, v223);
        if (v225 < 0)
        {
          v304 = sub_2991FC598(v224, v222);
          v322 = v304;
          *(a1 + 228) = v305;
          if (!v304)
          {
            return;
          }
        }

        else
        {
          v223 = (v224 + 2);
LABEL_234:
          v322 = v223;
          *(a1 + 228) = v222;
        }

        goto LABEL_267;
      case 0xDu:
        if (v8 != 104)
        {
          goto LABEL_269;
        }

        sub_2991EA480(v7, *(a1 + 40) | 0x1000);
        if ((v113 & 0x80) == 0)
        {
          goto LABEL_113;
        }

        sub_2991EA424(v113, v114);
        if (v116 < 0)
        {
          v280 = sub_2991FC598(v115, v113);
          v322 = v280;
          *(a1 + 240) = v281;
          if (!v280)
          {
            return;
          }
        }

        else
        {
          v114 = (v115 + 2);
LABEL_113:
          v322 = v114;
          *(a1 + 240) = v113;
        }

        goto LABEL_267;
      case 0xEu:
        if (v8 != 112)
        {
          goto LABEL_269;
        }

        sub_2991EA480(v7, *(a1 + 40) | 0x4000000);
        if ((v171 & 0x80) == 0)
        {
          goto LABEL_169;
        }

        sub_2991EA424(v171, v172);
        if (v174 < 0)
        {
          v294 = sub_2991FC598(v173, v171);
          v322 = v294;
          *(a1 + 284) = v295;
          if (!v294)
          {
            return;
          }
        }

        else
        {
          v172 = (v173 + 2);
LABEL_169:
          v322 = v172;
          *(a1 + 284) = v171;
        }

        goto LABEL_267;
      case 0xFu:
        if (v8 != 125)
        {
          goto LABEL_269;
        }

        *(a1 + 40) |= 0x8000000u;
        v145 = *v7;
        v144 = v7 + 4;
        *(a1 + 288) = v145;
        goto LABEL_251;
      case 0x10u:
        if (v8 != 128)
        {
          goto LABEL_269;
        }

        sub_2991EA480(v7, *(a1 + 40) | 0x10000000);
        if ((v74 & 0x80) == 0)
        {
          goto LABEL_76;
        }

        sub_2991EA424(v74, v75);
        if (v77 < 0)
        {
          v272 = sub_2991FC598(v76, v74);
          v322 = v272;
          *(a1 + 292) = v273;
          if (!v272)
          {
            return;
          }
        }

        else
        {
          v75 = (v76 + 2);
LABEL_76:
          v322 = v75;
          *(a1 + 292) = v74;
        }

        goto LABEL_267;
      case 0x11u:
        if (v8 != 136)
        {
          goto LABEL_269;
        }

        sub_2991EA480(v7, *(a1 + 40) | 0x20000000);
        if ((v211 & 0x80) == 0)
        {
          goto LABEL_217;
        }

        sub_2991EA424(v211, v212);
        if (v214 < 0)
        {
          v300 = sub_2991FC598(v213, v211);
          v322 = v300;
          *(a1 + 296) = v301;
          if (!v300)
          {
            return;
          }
        }

        else
        {
          v212 = (v213 + 2);
LABEL_217:
          v322 = v212;
          *(a1 + 296) = v211;
        }

        goto LABEL_267;
      case 0x12u:
        if (v8 != 144)
        {
          goto LABEL_269;
        }

        sub_2991EA480(v7, *(a1 + 40) | 0x40000000);
        if ((v215 & 0x80) == 0)
        {
          goto LABEL_222;
        }

        sub_2991EA424(v215, v216);
        if (v218 < 0)
        {
          v302 = sub_2991FC598(v217, v215);
          v322 = v302;
          *(a1 + 300) = v303;
          if (!v302)
          {
            return;
          }
        }

        else
        {
          v216 = (v217 + 2);
LABEL_222:
          v322 = v216;
          *(a1 + 300) = v215;
        }

        goto LABEL_267;
      case 0x13u:
        if (v8 != 152)
        {
          goto LABEL_269;
        }

        sub_2991EA4A0(v7, *(a1 + 44) | 1);
        if (v234 < 0 && (sub_2991EA40C(v234, v235), v238 < 0))
        {
          sub_2991FC598(v237, v236);
          sub_2991EA460();
          *(a1 + 308) = v310;
          if (!v311)
          {
            return;
          }
        }

        else
        {
          sub_2991EA470();
          *(a1 + 308) = v239;
        }

        goto LABEL_267;
      case 0x14u:
        if (v8 != 160)
        {
          goto LABEL_269;
        }

        sub_2991EA480(v7, *(a1 + 40) | 0x80000000);
        if ((v230 & 0x80) == 0)
        {
          goto LABEL_244;
        }

        sub_2991EA424(v230, v231);
        if (v233 < 0)
        {
          v308 = sub_2991FC598(v232, v230);
          v322 = v308;
          *(a1 + 304) = v309;
          if (!v308)
          {
            return;
          }
        }

        else
        {
          v231 = (v232 + 2);
LABEL_244:
          v322 = v231;
          *(a1 + 304) = v230;
        }

        goto LABEL_267;
      case 0x15u:
        if (v8 != 168)
        {
          goto LABEL_269;
        }

        sub_2991EA4A0(v7, *(a1 + 44) | 2);
        if (v58 < 0 && (sub_2991EA40C(v58, v59), v62 < 0))
        {
          sub_2991FC598(v61, v60);
          sub_2991EA460();
          *(a1 + 309) = v266;
          if (!v267)
          {
            return;
          }
        }

        else
        {
          sub_2991EA470();
          *(a1 + 309) = v63;
        }

        goto LABEL_267;
      case 0x16u:
        if (v8 != 176)
        {
          goto LABEL_269;
        }

        sub_2991EA4A0(v7, *(a1 + 44) | 8);
        if (v146 < 0 && (sub_2991EA40C(v146, v147), v150 < 0))
        {
          sub_2991FC598(v149, v148);
          sub_2991EA460();
          *(a1 + 311) = v292;
          if (!v293)
          {
            return;
          }
        }

        else
        {
          sub_2991EA470();
          *(a1 + 311) = v151;
        }

        goto LABEL_267;
      case 0x17u:
        if (v8 != 184)
        {
          goto LABEL_269;
        }

        sub_2991EA4A0(v7, *(a1 + 44) | 4);
        if (v241 < 0 && (sub_2991EA40C(v241, v242), v245 < 0))
        {
          sub_2991FC598(v244, v243);
          sub_2991EA460();
          *(a1 + 310) = v312;
          if (!v313)
          {
            return;
          }
        }

        else
        {
          sub_2991EA470();
          *(a1 + 310) = v246;
        }

        goto LABEL_267;
      case 0x18u:
        if (v8 != 192)
        {
          goto LABEL_269;
        }

        sub_2991EA490(v7, *(a1 + 40) | 0x4000);
        if (v68 < 0 && (sub_2991EA40C(v68, v69), v72 < 0))
        {
          sub_2991FC598(v71, v70);
          sub_2991EA460();
          *(a1 + 245) = v270;
          if (!v271)
          {
            return;
          }
        }

        else
        {
          sub_2991EA470();
          *(a1 + 245) = v73;
        }

        goto LABEL_267;
      case 0x19u:
        if (v8 != 200)
        {
          goto LABEL_269;
        }

        sub_2991EA490(v7, *(a1 + 40) | 0x10000);
        if (v138 < 0 && (sub_2991EA40C(v138, v139), v142 < 0))
        {
          sub_2991FC598(v141, v140);
          sub_2991EA460();
          *(a1 + 247) = v290;
          if (!v291)
          {
            return;
          }
        }

        else
        {
          sub_2991EA470();
          *(a1 + 247) = v143;
        }

        goto LABEL_267;
      case 0x1Au:
        if (v8 != 208)
        {
          goto LABEL_269;
        }

        sub_2991EA490(v7, *(a1 + 40) | 0x8000);
        if (v101 < 0 && (sub_2991EA40C(v101, v102), v105 < 0))
        {
          sub_2991FC598(v104, v103);
          sub_2991EA460();
          *(a1 + 246) = v276;
          if (!v277)
          {
            return;
          }
        }

        else
        {
          sub_2991EA470();
          *(a1 + 246) = v106;
        }

        goto LABEL_267;
      case 0x1Eu:
        if (v8 != 242)
        {
          goto LABEL_269;
        }

        v189 = v7 - 2;
        while (1)
        {
          v322 = v189 + 2;
          v190 = *(a1 + 120);
          if (!v190)
          {
            break;
          }

          v191 = *(a1 + 112);
          sub_2991EA510(v190);
          if (v14 == v15)
          {
            if (v193 == *(a1 + 116))
            {
LABEL_194:
              sub_2992018A8(a1 + 104, v193 + 1);
              v192 = *(a1 + 120);
              v198 = *v192;
            }

            sub_2991EA54C(v192);
            v199 = *(a1 + 104);
            if (!v199)
            {
              sub_2991EA558();
            }

            if (*(v199 + 24))
            {
              v206 = sub_2991EA4B0();
              (*(v207 + 40))(v206, &unk_2A1F638C0, 24);
            }

            v200 = sub_2991EA438();
            sub_2991EA528(v200);
            v201 = *(a1 + 120);
            v202 = *(a1 + 112);
            sub_2991EA51C();
            *(a1 + 112) = v203;
            v197 = sub_2991EA504(v204, v205);
            goto LABEL_200;
          }

          sub_2991EA4F8();
          *(a1 + 112) = v195;
          v197 = *(v196 + 8);
LABEL_200:
          v322 = sub_2991FC624(v197, v194, a3);
          if (!v322)
          {
            return;
          }

          sub_2991EA4EC();
          if (!(!v257 & v28) || *v189 != 498)
          {
            goto LABEL_267;
          }
        }

        v193 = *(a1 + 116);
        goto LABEL_194;
      case 0x1Fu:
        if (v8 != 250)
        {
          goto LABEL_269;
        }

        v78 = v7 - 2;
        break;
      case 0x20u:
        if (v8)
        {
          goto LABEL_269;
        }

        sub_2991EA4A0(v7, *(a1 + 44) | 0x10);
        if (v49 < 0 && (sub_2991EA40C(v49, v50), v53 < 0))
        {
          sub_2991FC598(v52, v51);
          sub_2991EA460();
          *(a1 + 312) = v264;
          if (!v265)
          {
            return;
          }
        }

        else
        {
          sub_2991EA470();
          *(a1 + 312) = v54;
        }

        goto LABEL_267;
      case 0x21u:
        if (v8 != 8)
        {
          goto LABEL_269;
        }

        sub_2991EA4A0(v7, *(a1 + 44) | 0x20);
        if (v247 < 0 && (sub_2991EA40C(v247, v248), v251 < 0))
        {
          sub_2991FC598(v250, v249);
          sub_2991EA460();
          *(a1 + 313) = v314;
          if (!v315)
          {
            return;
          }
        }

        else
        {
          sub_2991EA470();
          *(a1 + 313) = v252;
        }

        goto LABEL_267;
      case 0x22u:
        if (v8 != 16)
        {
          goto LABEL_269;
        }

        sub_2991EA490(v7, *(a1 + 40) | 0x40000);
        if (v117 < 0 && (sub_2991EA40C(v117, v118), v121 < 0))
        {
          sub_2991FC598(v120, v119);
          sub_2991EA460();
          *(a1 + 249) = v282;
          if (!v283)
          {
            return;
          }
        }

        else
        {
          sub_2991EA470();
          *(a1 + 249) = v122;
        }

        goto LABEL_267;
      case 0x23u:
        if (v8 != 24)
        {
          goto LABEL_269;
        }

        sub_2991EA490(v7, *(a1 + 40) | 0x20000);
        if (v128 < 0 && (sub_2991EA40C(v128, v129), v132 < 0))
        {
          sub_2991FC598(v131, v130);
          sub_2991EA460();
          *(a1 + 248) = v286;
          if (!v287)
          {
            return;
          }
        }

        else
        {
          sub_2991EA470();
          *(a1 + 248) = v133;
        }

        goto LABEL_267;
      case 0x24u:
        if (v8 != 34)
        {
          goto LABEL_269;
        }

        sub_2991EA540(*(a1 + 40) | 4);
        if (v56)
        {
          sub_2991EA534(v210, v56);
        }

        v57 = (a1 + 168);
        goto LABEL_227;
      case 0x28u:
        if (v8 != 64)
        {
          goto LABEL_269;
        }

        sub_2991EA480(v7, *(a1 + 40) | 0x100000);
        if ((v134 & 0x80) == 0)
        {
          goto LABEL_135;
        }

        sub_2991EA424(v134, v135);
        if (v137 < 0)
        {
          v288 = sub_2991FC598(v136, v134);
          v322 = v288;
          *(a1 + 252) = v289;
          if (!v288)
          {
            return;
          }
        }

        else
        {
          v135 = (v136 + 2);
LABEL_135:
          v322 = v135;
          *(a1 + 252) = v134;
        }

        goto LABEL_267;
      case 0x29u:
        if (v8 != 72)
        {
          goto LABEL_269;
        }

        sub_2991EA4C4(v7, *(a1 + 44) | 0x40);
        if ((v36 & 0x80) == 0)
        {
          goto LABEL_38;
        }

        sub_2991EA424(v36, v37);
        if (v39 < 0)
        {
          v262 = sub_2991FC598(v38, v36);
          v322 = v262;
          *(a1 + 316) = v263;
          if (!v262)
          {
            return;
          }
        }

        else
        {
          v37 = (v38 + 2);
LABEL_38:
          v322 = v37;
          *(a1 + 316) = v36;
        }

        goto LABEL_267;
      case 0x2Au:
        if (v8 != 80)
        {
          goto LABEL_269;
        }

        sub_2991EA4C4(v7, *(a1 + 44) | 0x80);
        if ((v64 & 0x80) == 0)
        {
          goto LABEL_67;
        }

        sub_2991EA424(v64, v65);
        if (v67 < 0)
        {
          v268 = sub_2991FC598(v66, v64);
          v322 = v268;
          *(a1 + 320) = v269;
          if (!v268)
          {
            return;
          }
        }

        else
        {
          v65 = (v66 + 2);
LABEL_67:
          v322 = v65;
          *(a1 + 320) = v64;
        }

        goto LABEL_267;
      case 0x2Bu:
        if (v8 != 88)
        {
          goto LABEL_269;
        }

        sub_2991EA4C4(v7, *(a1 + 44) | 0x100);
        if ((v226 & 0x80) == 0)
        {
          goto LABEL_239;
        }

        sub_2991EA424(v226, v227);
        if (v229 < 0)
        {
          v306 = sub_2991FC598(v228, v226);
          v322 = v306;
          *(a1 + 324) = v307;
          if (!v306)
          {
            return;
          }
        }

        else
        {
          v227 = (v228 + 2);
LABEL_239:
          v322 = v227;
          *(a1 + 324) = v226;
        }

        goto LABEL_267;
      case 0x2Cu:
        if (v8 != 98)
        {
          goto LABEL_269;
        }

        sub_2991EA4D4(*(a1 + 40) | 8);
        if (v42)
        {
          sub_2991EA4E0(v253, v254, v42);
        }

        v43 = &off_2A145E1E8;
        v44 = (a1 + 176);
        goto LABEL_264;
      case 0x2Du:
        if (v8 != 106)
        {
          goto LABEL_269;
        }

        sub_2991EA4D4(*(a1 + 40) | 0x10);
        if (v42)
        {
          sub_2991EA4E0(v47, v48, v42);
        }

        v43 = &off_2A145E168;
        v44 = (a1 + 184);
        goto LABEL_264;
      case 0x2Eu:
        if (v8 != 114)
        {
          goto LABEL_269;
        }

        sub_2991EA4D4(*(a1 + 40) | 0x20);
        if (v42)
        {
          sub_2991EA4E0(v208, v209, v42);
        }

        v43 = &off_2A145E188;
        v44 = (a1 + 192);
        goto LABEL_264;
      case 0x2Fu:
        if (v8 != 122)
        {
          goto LABEL_269;
        }

        sub_2991EA4D4(*(a1 + 40) | 0x40);
        if (v42)
        {
          sub_2991EA4E0(v45, v46, v42);
        }

        v43 = &off_2A145E1A8;
        v44 = (a1 + 200);
        goto LABEL_264;
      case 0x30u:
        if (v8 != 130)
        {
          goto LABEL_269;
        }

        sub_2991EA4D4(*(a1 + 40) | 0x80);
        if (v42)
        {
          sub_2991EA4E0(v40, v41, v42);
        }

        v43 = &off_2A145E1C8;
        v44 = (a1 + 208);
LABEL_264:
        v220 = sub_2991EE614(v44, v43, v42);
        goto LABEL_265;
      case 0x31u:
        if (v8 != 136)
        {
          goto LABEL_269;
        }

        sub_2991EA490(v7, *(a1 + 40) | 0x80000);
        if (v107 < 0 && (sub_2991EA40C(v107, v108), v111 < 0))
        {
          sub_2991FC598(v110, v109);
          sub_2991EA460();
          *(a1 + 250) = v278;
          if (!v279)
          {
            return;
          }
        }

        else
        {
          sub_2991EA470();
          *(a1 + 250) = v112;
        }

        goto LABEL_267;
      case 0x32u:
        if (v8 != 144)
        {
          goto LABEL_269;
        }

        sub_2991EA490(v7, *(a1 + 40) | 0x2000);
        if (v175 < 0 && (sub_2991EA40C(v175, v176), v179 < 0))
        {
          sub_2991FC598(v178, v177);
          sub_2991EA460();
          *(a1 + 244) = v296;
          if (!v297)
          {
            return;
          }
        }

        else
        {
          sub_2991EA470();
          *(a1 + 244) = v180;
        }

        goto LABEL_267;
      case 0x33u:
        if (v8 != 157)
        {
          goto LABEL_269;
        }

        *(a1 + 40) |= 0x200000u;
        v240 = *v7;
        v144 = v7 + 4;
        *(a1 + 256) = v240;
LABEL_251:
        v322 = v144;
        goto LABEL_267;
      case 0x34u:
        if (v8 != 160)
        {
          goto LABEL_269;
        }

        sub_2991EA490(v7, *(a1 + 40) | 0x400000);
        if ((v32 & 0x8000000000000000) == 0)
        {
          goto LABEL_33;
        }

        sub_2991EA40C(v32, v33);
        if (v35 < 0)
        {
          v260 = sub_2991FC598(v34, v32);
          v322 = v260;
          *(a1 + 264) = v261;
          if (!v260)
          {
            return;
          }
        }

        else
        {
          v33 = (v34 + 2);
LABEL_33:
          v322 = v33;
          *(a1 + 264) = v32;
        }

        goto LABEL_267;
      case 0x35u:
        if (v8 != 170)
        {
          goto LABEL_269;
        }

        sub_2991EA540(*(a1 + 40) | 0x100);
        if (v56)
        {
          sub_2991EA534(v55, v56);
        }

        v57 = (a1 + 216);
LABEL_227:
        v220 = sub_2991EE508(v57, v56);
LABEL_265:
        v255 = sub_2991FC624(v220, v322, a3);
        goto LABEL_266;
      default:
LABEL_269:
        if (v8)
        {
          v257 = (v8 & 7) == 4;
        }

        else
        {
          v257 = 1;
        }

        if (v257)
        {
          a3[10].i32[0] = v8 - 1;
          return;
        }

        if (v8 < 0x640)
        {
          v258 = *(a1 + 8);
          if (v258)
          {
            v259 = (v258 & 0xFFFFFFFFFFFFFFFELL) + 8;
          }

          else
          {
            v318 = v8;
            v319 = sub_2991E2054((a1 + 8));
            v8 = v318;
            v259 = v319;
            v7 = v322;
          }

          v255 = sub_2991FCAE0(v8, v259, v7, a3);
        }

        else
        {
          v255 = sub_2991F4D18((a1 + 16), v8, v7, &unk_2A1461A18, (a1 + 8), a3);
        }

LABEL_266:
        v322 = v255;
        if (!v255)
        {
          return;
        }

LABEL_267:
        v256 = sub_2991E1F14(a3, &v322, a3[11].i32[1]);
        v6 = v322;
        if (v256)
        {
          return;
        }

        continue;
    }

    break;
  }

  while (1)
  {
    v322 = v78 + 2;
    v79 = *(a1 + 144);
    if (!v79)
    {
      break;
    }

    v80 = *(a1 + 136);
    sub_2991EA510(v79);
    if (v14 == v15)
    {
      if (v82 == *(a1 + 140))
      {
LABEL_85:
        sub_2992018A8(a1 + 128, v82 + 1);
        v81 = *(a1 + 144);
        v87 = *v81;
      }

      sub_2991EA54C(v81);
      v88 = *(a1 + 128);
      if (!v88)
      {
        sub_2991EA558();
      }

      if (*(v88 + 24))
      {
        v95 = sub_2991EA4B0();
        (*(v96 + 40))(v95, &unk_2A1F638C0, 24);
      }

      v89 = sub_2991EA438();
      sub_2991EA528(v89);
      v90 = *(a1 + 144);
      v91 = *(a1 + 136);
      sub_2991EA51C();
      *(a1 + 136) = v92;
      v86 = sub_2991EA504(v93, v94);
      goto LABEL_91;
    }

    sub_2991EA4F8();
    *(a1 + 136) = v84;
    v86 = *(v85 + 8);
LABEL_91:
    v322 = sub_2991FC624(v86, v83, a3);
    if (!v322)
    {
      return;
    }

    sub_2991EA4EC();
    if (!(!v257 & v28) || *v78 != 506)
    {
      goto LABEL_267;
    }
  }

  v82 = *(a1 + 140);
  goto LABEL_85;
}

uint64_t sub_2993F940C(int32x2_t *a1, uint64_t a2, char *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = sub_2993F9D38(a3, v7);
    if (!result)
    {
      return result;
    }

    v8 = result;
    v7 = v10;
  }

  else
  {
    v8 = a3 + 1;
  }

  v11 = sub_2991E2384(a1, v8, v7);
  v12 = a1[11].i32[0];
  v13 = __OFSUB__(v12--, 1);
  a1[11].i32[0] = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  v14 = v11;
  result = sub_2991E6308(a2, v8, a1);
  if (!result)
  {
    return result;
  }

  ++a1[11].i32[0];
  if (a1[10].i32[0])
  {
    return 0;
  }

  v15 = a1[3].i32[1] + v14;
  a1[3].i32[1] = v15;
  *a1 = (*&a1[1] + (v15 & (v15 >> 31)));
  return result;
}

uint64_t sub_2993F94D4(int32x2_t *a1, uint64_t a2, char *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = sub_2993F9D38(a3, v7);
    if (!result)
    {
      return result;
    }

    v8 = result;
    v7 = v10;
  }

  else
  {
    v8 = a3 + 1;
  }

  v11 = sub_2991E2384(a1, v8, v7);
  v12 = a1[11].i32[0];
  v13 = __OFSUB__(v12--, 1);
  a1[11].i32[0] = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  v14 = v11;
  result = sub_2991E7258(a2, v8, a1);
  if (!result)
  {
    return result;
  }

  ++a1[11].i32[0];
  if (a1[10].i32[0])
  {
    return 0;
  }

  v15 = a1[3].i32[1] + v14;
  a1[3].i32[1] = v15;
  *a1 = (*&a1[1] + (v15 & (v15 >> 31)));
  return result;
}

void sub_2993F959C(int32x2_t *a1, uint64_t a2, char *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    v9 = sub_2993F9D38(a3, v7);
    if (!v9)
    {
      return;
    }

    v8 = v9;
    v7 = v10;
  }

  else
  {
    v8 = a3 + 1;
  }

  v11 = sub_2991E2384(a1, v8, v7);
  v12 = a1[11].i32[0];
  v13 = __OFSUB__(v12--, 1);
  a1[11].i32[0] = v12;
  if (v12 < 0 == v13)
  {
    v14 = v11;
    sub_2993F839C(a2, v8, a1);
    if (v15)
    {
      ++a1[11].i32[0];
      if (!a1[10].i32[0])
      {
        v16 = a1[3].i32[1] + v14;
        a1[3].i32[1] = v16;
        *a1 = (*&a1[1] + (v16 & (v16 >> 31)));
      }
    }
  }
}

uint64_t sub_2993F9664(int32x2_t *a1, uint64_t a2, char *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = sub_2993F9D38(a3, v7);
    if (!result)
    {
      return result;
    }

    v8 = result;
    v7 = v10;
  }

  else
  {
    v8 = a3 + 1;
  }

  v11 = sub_2991E2384(a1, v8, v7);
  v12 = a1[11].i32[0];
  v13 = __OFSUB__(v12--, 1);
  a1[11].i32[0] = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  v14 = v11;
  result = sub_2991E5680(a2, v8, a1);
  if (!result)
  {
    return result;
  }

  ++a1[11].i32[0];
  if (a1[10].i32[0])
  {
    return 0;
  }

  v15 = a1[3].i32[1] + v14;
  a1[3].i32[1] = v15;
  *a1 = (*&a1[1] + (v15 & (v15 >> 31)));
  return result;
}

uint64_t sub_2993F972C(int32x2_t *a1, uint64_t a2, char *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = sub_2993F9D38(a3, v7);
    if (!result)
    {
      return result;
    }

    v8 = result;
    v7 = v10;
  }

  else
  {
    v8 = a3 + 1;
  }

  v11 = sub_2991E2384(a1, v8, v7);
  v12 = a1[11].i32[0];
  v13 = __OFSUB__(v12--, 1);
  a1[11].i32[0] = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  v14 = v11;
  result = sub_2991E6A24(a2, v8, a1);
  if (!result)
  {
    return result;
  }

  ++a1[11].i32[0];
  if (a1[10].i32[0])
  {
    return 0;
  }

  v15 = a1[3].i32[1] + v14;
  a1[3].i32[1] = v15;
  *a1 = (*&a1[1] + (v15 & (v15 >> 31)));
  return result;
}

void sub_2993F97F4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) <= 0x100u)
  {
    v4 = *(a2 + 8);
    v5 = *(a1 + 16);
    v6 = &v5[32 * *(a1 + 10)];
    v7 = *(a2 + 16);
    if (v4 > 0x100)
    {
      v12 = sub_2991F3A0C(v5, v6, *v7, (v7 + 8));
    }

    else
    {
      v8 = 0;
      v9 = v7 + 32 * *(a2 + 10);
      if (*(a1 + 10) && *(a2 + 10))
      {
        v8 = 0;
        do
        {
          if (*v5 == *v7)
          {
            v10 = v5 + 32;
          }

          else
          {
            v10 = v5;
          }

          if (*v5 < *v7)
          {
            v5 += 32;
          }

          else
          {
            v7 += 32;
            v5 = v10;
          }

          ++v8;
        }

        while (v5 != v6 && v7 != v9);
      }

      v12 = v8 + ((v9 - v7) >> 5) + ((v6 - v5) >> 5);
    }

    sub_2991F384C(a1, v12);
  }

  v13 = *(a2 + 16);
  if (*(a2 + 8) >= 0x101u)
  {
    v19 = *v13;
    v18 = v13 + 2;
    v17 = v19;

    sub_2991F99E4(v17, v18, a1);
  }

  else if (*(a2 + 10))
  {
    v14 = &v13[8 * *(a2 + 10)];
    v15 = v13;
    do
    {
      v16 = *v15;
      v15 += 8;
      sub_2991F3B14(a1, v16, v13 + 1);
      v13 = v15;
    }

    while (v15 != v14);
  }
}

uint64_t sub_2993F9928()
{
  sub_2991FBAD4();
  v13 = *MEMORY[0x29EDCA608];
  sub_2991FBAB4();
  sub_2991FBAA0();
  sub_2991F9E50(v2, v3, v4);
  sub_2991FBAC4();
  v6 = *(v5 + 88);
  v7 = sub_2991FBAF4();
  v9 = v8(v7);
  result = 0;
  if (v9)
  {
    if (v1 & 2) != 0 || (sub_2991FBAE8(), ((*(v11 + 48))(v0)))
    {
      result = 1;
    }

    else
    {
      sub_2991FB190(v0);
      result = 0;
    }
  }

  v12 = *MEMORY[0x29EDCA608];
  return result;
}

_OWORD *sub_2993F9A18()
{
  sub_2991FEC54();
  if (*(v6 + 23) < 0)
  {
    **v1 = 0;
    *(v1 + 8) = 0;
  }

  else
  {
    *v1 = 0;
    *(v1 + 23) = 0;
  }

  v7 = *(v2 + 8);
  if (v7 - v3 + *(v2 + 28) >= v0)
  {
    v8 = *(v1 + 23);
    if (v8 < 0)
    {
      v8 = *(v1 + 8);
    }

    sub_2991FEC14(v8);
    v7 = *(v2 + 8);
  }

  v9 = v7 - v3 + 16;
  while (1)
  {
    v10 = __OFSUB__(v0, v9);
    v0 -= v9;
    if ((v0 < 0) ^ v10 | (v0 == 0))
    {
      sub_2991FEC68(v4, v5);
      v11 = sub_2991EF75C(v16, "CHECK failed: size > chunk_size: ");
      sub_2991EF898(&v15, &v11->__r_.__value_.__l.__data_);
      v4 = sub_2991EF8A0(v16);
    }

    if (!*(v2 + 16))
    {
      break;
    }

    sub_2991FEC88(v4, v5, v9);
    if (*(v2 + 28) < 17)
    {
      break;
    }

    result = sub_2991FBBA8(v2);
    if (!result)
    {
      return result;
    }

    v4 = sub_2991FEC3C(result);
    if (v14 ^ v10 | v13)
    {
      sub_2991FEC88(v4, v5, v0);
      return (v3 + v0);
    }
  }

  return 0;
}

void sub_2993F9B2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

_OWORD *sub_2993F9B44()
{
  sub_2991FEC54();
  v6 = *(v4 + 8);
  if (v6 - v5 + *(v4 + 28) >= v7)
  {
    v8 = *(v1 + 23);
    if (v8 < 0)
    {
      v8 = *(v1 + 8);
    }

    sub_2991FEC14(v8);
    v6 = *(v2 + 8);
  }

  v9 = v6 - v3 + 16;
  while (1)
  {
    v10 = __OFSUB__(v0, v9);
    v0 -= v9;
    if ((v0 < 0) ^ v10 | (v0 == 0))
    {
      sub_2991FEC68(v4, v5);
      v11 = sub_2991EF75C(v16, "CHECK failed: size > chunk_size: ");
      sub_2991EF898(&v15, &v11->__r_.__value_.__l.__data_);
      v4 = sub_2991EF8A0(v16);
    }

    if (!*(v2 + 16))
    {
      break;
    }

    sub_2991FEC88(v4, v5, v9);
    if (*(v2 + 28) < 17)
    {
      break;
    }

    result = sub_2991FBBA8(v2);
    if (!result)
    {
      return result;
    }

    v4 = sub_2991FEC3C(result);
    if (v14 ^ v10 | v13)
    {
      sub_2991FEC88(v4, v5, v0);
      return (v3 + v0);
    }
  }

  return 0;
}

void sub_2993F9C38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2993F9C50(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = sub_2993F9D38(a3, v7);
    if (!result)
    {
      return result;
    }

    v8 = result;
    v7 = v15;
  }

  else
  {
    v8 = (a3 + 1);
  }

  v9 = sub_2991E2384(a1, v8, v7);
  v10 = *(a1 + 88);
  v11 = __OFSUB__(v10--, 1);
  *(a1 + 88) = v10;
  if (v10 < 0 == v11)
  {
    v12 = v9;
    result = (*(*a2 + 88))(a2, v8, a1);
    if (!result)
    {
      return result;
    }

    ++*(a1 + 88);
    if (!*(a1 + 80))
    {
      v14 = *(a1 + 28) + v12;
      *(a1 + 28) = v14;
      *a1 = *(a1 + 8) + (v14 & (v14 >> 31));
      return result;
    }
  }

  return 0;
}

uint64_t sub_2993F9D38(uint64_t a1, int a2)
{
  result = a1 + 2;
  v4 = -21;
  while (1)
  {
    a2 += (*(result - 1) - 1) << (v4 + 28);
    if ((*(result - 1) & 0x80000000) == 0)
    {
      break;
    }

    ++result;
    v4 += 7;
    if (!v4)
    {
      v5 = *(a1 + 4);
      v6 = a1 + 5;
      if (a2 + (v5 << 28) - 0x10000000 > 0x7FFFFFEF)
      {
        v6 = 0;
      }

      if (v5 <= 7)
      {
        return v6;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x2A1C594D8](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}

CFRange CFStringGetRangeOfComposedCharactersAtIndex(CFStringRef theString, CFIndex theIndex)
{
  v2 = MEMORY[0x2A1C59558](theString, theIndex);
  result.length = v3;
  result.location = v2;
  return result;
}

CFRange CFStringTokenizerGetCurrentTokenRange(CFStringTokenizerRef tokenizer)
{
  v1 = MEMORY[0x2A1C595D0](tokenizer);
  result.length = v2;
  result.location = v1;
  return result;
}

uint64_t language_modeling::v1::LanguageModel::blocklistStatus()
{
  return MEMORY[0x2A1C67FC0]();
}

{
  return MEMORY[0x2A1C67FC8]();
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__filename(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x2A1C6FAB0](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__parent_path(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x2A1C6FAC0](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const char *a2)
{
  return MEMORY[0x2A1C6FB88](this, a2);
}

{
  return MEMORY[0x2A1C6FBA0](this, a2);
}

uint64_t std::istream::operator>>()
{
  return MEMORY[0x2A1C6FD78]();
}

{
  return MEMORY[0x2A1C6FD80]();
}

{
  return MEMORY[0x2A1C6FD90]();
}

{
  return MEMORY[0x2A1C6FDA8]();
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2A1C6FE00]();
}

{
  return MEMORY[0x2A1C6FE08]();
}

{
  return MEMORY[0x2A1C6FE10]();
}

{
  return MEMORY[0x2A1C6FE18]();
}

{
  return MEMORY[0x2A1C6FE20]();
}

{
  return MEMORY[0x2A1C6FE28]();
}

{
  return MEMORY[0x2A1C6FE30]();
}

{
  return MEMORY[0x2A1C6FE40]();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete(void *__p, const std::nothrow_t *a2)
{
    ;
  }
}

void operator delete(void *__p, std::align_val_t a2)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void *__cdecl operator new[](size_t __sz)
{
    ;
  }
}

void *__cdecl operator new[](size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, std::align_val_t a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}