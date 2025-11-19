unsigned __int8 *sub_277979938(unsigned __int8 *result, unsigned __int8 *a2, _BYTE *a3, _BYTE *a4, _BYTE *a5, int *a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, __int16 a10)
{
  if ((*(result + 167) & 0x80) != 0 || result[16] >= 1)
  {
    v10 = a2[1];
    v11 = result + 16;
    if (v10 == 255)
    {
      v12 = 0;
      v13 = *a2;
      v14 = 1;
      do
      {
        v15 = v14;
        if (v11[v12] == v13)
        {
          v16 = *(a9 + 36 * v13 + 32);
          v17 = *result;
          v18 = byte_277C3CAFE[v17];
          v19 = byte_277C3CAE8[v17];
          v20 = result[2];
          if (v18 >= v19)
          {
            LOBYTE(v18) = v19;
          }

          v23 = (v20 == 23 || v20 == 15) && v16 >= 2 && v18 >= 8u;
          v24 = &result[4 * v12 + 8];
          if (v23)
          {
            v24 = a8;
          }

          v25 = *v24;
          v26 = *a3;
          if (*a3)
          {
            v27 = 0;
            v28 = a6;
            while (1)
            {
              v29 = *v28;
              v28 += 2;
              if (v29 == v25)
              {
                break;
              }

              if (v26 == ++v27)
              {
                LODWORD(v27) = *a3;
                goto LABEL_27;
              }
            }

            *(a7 + 2 * v27) += a10;
            LODWORD(v26) = *a3;
          }

          else
          {
            LODWORD(v27) = 0;
          }

LABEL_27:
          if (v26 <= 7 && v27 == v26)
          {
            a6[2 * v27] = v25;
            *(a7 + 2 * v27) = a10;
            ++*a3;
            v20 = result[2];
          }

          if (v20 <= 0x18 && ((1 << v20) & 0x1790000) != 0)
          {
            ++*a5;
          }

          ++*a4;
          v13 = *a2;
        }

        v14 = 0;
        v12 = 1;
      }

      while ((v15 & 1) != 0);
    }

    else if (*v11 == *a2 && result[17] == v10)
    {
      v30 = 0;
      v31 = result[2];
      v32 = *result;
      v33 = byte_277C3CAFE[v32];
      v34 = byte_277C3CAE8[v32];
      if (v33 >= v34)
      {
        v35 = v34;
      }

      else
      {
        v35 = v33;
      }

      v37 = v31 != 15 && v31 != 23;
      v38 = &v46;
      v39 = 1;
      do
      {
        v40 = v39;
        v41 = *(a9 + 36 * a2[v30] + 32) < 2u || v37;
        if (v35 < 8u)
        {
          v41 = 1;
        }

        if (v41)
        {
          v42 = result + 8;
        }

        else
        {
          v42 = a8;
        }

        *v38 = *&v42[4 * v30];
        v38 = (&v46 + 4);
        v30 = 1;
        v39 = 0;
      }

      while ((v40 & 1) != 0);
      v43 = *a3;
      if (*a3)
      {
        v44 = 0;
        v45 = a6 + 1;
        while (*(v45 - 1) != v46)
        {
          ++v44;
          v45 += 2;
          if (v43 == v44)
          {
            LODWORD(v44) = *a3;
            goto LABEL_64;
          }
        }

        *(a7 + 2 * v44) += a10;
        LODWORD(v43) = *a3;
      }

      else
      {
        LODWORD(v44) = 0;
      }

LABEL_64:
      if (v43 <= 7 && v44 == v43)
      {
        *&a6[2 * v44] = v46;
        *(a7 + 2 * v44) = a10;
        ++*a3;
        v31 = result[2];
      }

      if (v31 <= 0x18 && ((1 << v31) & 0x1790000) != 0)
      {
        ++*a5;
      }

      ++*a4;
    }
  }

  return result;
}

uint64_t sub_277979C2C(uint64_t a1, _DWORD *a2, int a3, int a4, int a5, int a6, int a7, __int16 *a8, _BYTE *a9, int *a10, uint64_t a11, uint64_t a12)
{
  v12 = (a3 | 1) + a6;
  if (v12 < a2[1960])
  {
    return 0;
  }

  v13 = ((a4 & 1) == 0) + a7 + a4;
  if (v13 < a2[1962] || v12 >= a2[1961] || v13 >= a2[1963])
  {
    return 0;
  }

  v14 = *(a1 + 25416) + 8 * (*(a1 + 580) >> 1) * (v12 >> 1) + 8 * (v13 >> 1);
  v15 = *v14;
  if (*v14 == -2147450880)
  {
    return 0;
  }

  if (a5 < 8)
  {
    v19 = 255;
    v18 = a5;
  }

  else
  {
    v17 = &unk_277C31E18 + 2 * a5 - 16;
    v18 = *v17;
    v19 = v17[1];
  }

  v20 = *(*(a1 + 232) + 4);
  v21 = a1 + 240;
  v22 = *(a1 + 24696);
  v23 = *(v22 + 40);
  if (v23)
  {
    v24 = v20 - *(*(a1 + 8 * *(v21 + 4 * (v18 - 1)) + 416) + 4);
    v25 = (((1 << *(v22 + 44)) - 1) & v24) - ((1 << *(v22 + 44)) & v24);
  }

  else
  {
    v25 = 0;
  }

  v26 = *(a1 + 493);
  v27 = *(a1 + 494);
  v28 = *(v14 + 4);
  if (v28 >= 0x1F)
  {
    v28 = 31;
  }

  if (v25 <= -31)
  {
    v29 = -31;
  }

  else
  {
    v29 = v25;
  }

  if (v25 >= 0x1F)
  {
    v30 = 31;
  }

  else
  {
    v30 = v25;
  }

  if (v25 <= 0)
  {
    v31 = v29;
  }

  else
  {
    v31 = v30;
  }

  v32 = v15;
  v33 = dword_277BB8118[v28];
  v34 = v33 * v31;
  v35 = v34 * v15;
  if (v35 < 0)
  {
    v36 = -((0x2000 - v35) >> 14);
  }

  else
  {
    v36 = (v35 + 0x2000) >> 14;
  }

  v37 = v15 >> 16;
  v38 = v34 * (v15 >> 16);
  v39 = -((0x2000 - v38) >> 14);
  if (v38 >= 0)
  {
    v39 = (v38 + 0x2000) >> 14;
  }

  if (v36 >= 0x3FFF)
  {
    v40 = 0x3FFF;
  }

  else
  {
    v40 = v36;
  }

  if (v40 <= -16383)
  {
    v40 = -16383;
  }

  if (v39 >= 0x3FFF)
  {
    v41 = 0x3FFF;
  }

  else
  {
    v41 = v39;
  }

  if (v41 <= -16383)
  {
    v41 = -16383;
  }

  if (*(a1 + 494))
  {
    v42 = v40 - ((v40 + ((v40 >> 28) & 7)) & 0xFFFFFFF8);
    if (v40 != ((v40 + ((v40 >> 28) & 7)) & 0xFFF8))
    {
      v42 = v42;
      LOWORD(v40) = (v40 + ((v40 >> 28) & 7)) & 0xFFF8;
      v43 = v42 <= 0;
      if ((v42 & 0x8000u) != 0)
      {
        v42 = -v42;
      }

      if (v43)
      {
        v44 = -8;
      }

      else
      {
        v44 = 8;
      }

      v45 = v44 + v40;
      if (v42 >= 5)
      {
        LOWORD(v40) = v45;
      }
    }

    v46 = v41 - ((v41 + ((v41 >> 28) & 7)) & 0xFFFFFFF8);
    if (v41 != ((v41 + ((v41 >> 28) & 7)) & 0xFFF8))
    {
      v46 = v46;
      LOWORD(v41) = (v41 + ((v41 >> 28) & 7)) & 0xFFF8;
      v47 = v46 <= 0;
      if ((v46 & 0x8000u) != 0)
      {
        v46 = -v46;
      }

      if (v47)
      {
        v48 = -8;
      }

      else
      {
        v48 = 8;
      }

      v49 = v48 + v41;
      if (v46 >= 5)
      {
        LOWORD(v41) = v49;
      }
    }
  }

  else
  {
    if (v36 < 1)
    {
      v50 = 1;
    }

    else
    {
      v50 = -1;
    }

    v51 = (((v40 << 15) >> 15) & v50) + v40;
    if (v39 < 1)
    {
      v52 = v41 + 1;
    }

    else
    {
      v52 = v41 - 1;
    }

    if ((v41 & 1) == 0)
    {
      v52 = v41;
    }

    if (!*(a1 + 493))
    {
      LOWORD(v41) = v52;
      LOWORD(v40) = v51;
    }
  }

  if (v19 == 255)
  {
    if (!(a7 | a6))
    {
      v53 = v40 - *a8;
      if (v53 < 0)
      {
        v53 = *a8 - v40;
      }

      if (v53 > 0xF)
      {
        goto LABEL_75;
      }

      v54 = v41 - a8[1];
      if (v54 < 0)
      {
        v54 = a8[1] - v41;
      }

      if (v54 >= 0x10)
      {
LABEL_75:
        *(a12 + 2 * a5) |= 8u;
      }
    }

    v55 = *a9;
    if (*a9)
    {
      v56 = 0;
      v57 = a10;
      while (1)
      {
        v58 = *v57;
        v57 += 2;
        if ((v40 | (v41 << 16)) == v58)
        {
          break;
        }

        if (v55 == ++v56)
        {
          LODWORD(v56) = *a9;
          goto LABEL_156;
        }
      }

      *(a11 + 2 * v56) += 2;
      LODWORD(v55) = *a9;
    }

    else
    {
      LODWORD(v56) = 0;
    }

LABEL_156:
    result = 1;
    if (v55 <= 7 && v56 == v55)
    {
      v90 = v56;
      a10[2 * v56] = v40 | (v41 << 16);
LABEL_163:
      *(a11 + 2 * v90) = 2;
      ++*a9;
    }
  }

  else
  {
    if (v23)
    {
      v59 = v20 - *(*(a1 + 8 * *(v21 + 4 * (v19 - 1)) + 416) + 4);
      v60 = (((1 << *(v22 + 44)) - 1) & v59) - ((1 << *(v22 + 44)) & v59);
      if (v60 >= 0x1F)
      {
        v61 = 31;
      }

      else
      {
        v61 = v60;
      }

      if (v60 <= -31)
      {
        v62 = -31;
      }

      else
      {
        v62 = v60;
      }

      if (v60 <= 0)
      {
        v63 = v62;
      }

      else
      {
        v63 = v61;
      }
    }

    else
    {
      v63 = 0;
    }

    v64 = v63 * v33;
    v65 = (v64 * v32 + 0x2000) >> 14;
    if (v64 * v32 < 0)
    {
      v65 = -((0x2000 - v64 * v32) >> 14);
    }

    v66 = v64 * v37;
    v67 = -((0x2000 - v66) >> 14);
    if (v66 >= 0)
    {
      v67 = (v66 + 0x2000) >> 14;
    }

    if (v65 >= 0x3FFF)
    {
      v68 = 0x3FFF;
    }

    else
    {
      v68 = v65;
    }

    if (v68 <= -16383)
    {
      v68 = -16383;
    }

    if (v67 >= 0x3FFF)
    {
      v69 = 0x3FFF;
    }

    else
    {
      v69 = v67;
    }

    if (v69 <= -16383)
    {
      v69 = -16383;
    }

    if (v27)
    {
      v70 = v68 - ((v68 + ((v68 >> 28) & 7)) & 0xFFFFFFF8);
      if (v68 != ((v68 + ((v68 >> 28) & 7)) & 0xFFF8))
      {
        v70 = v70;
        v71 = (v68 + ((v68 >> 28) & 7)) & 0xFFF8;
        v72 = v70 <= 0;
        if ((v70 & 0x8000u) != 0)
        {
          v70 = -v70;
        }

        if (v72)
        {
          v73 = -8;
        }

        else
        {
          v73 = 8;
        }

        LOWORD(v68) = v73 + v71;
        if (v70 < 5)
        {
          LOWORD(v68) = v71;
        }
      }

      v74 = v69 - ((v69 + ((v69 >> 28) & 7)) & 0xFFFFFFF8);
      if (v69 != ((v69 + ((v69 >> 28) & 7)) & 0xFFF8))
      {
        v74 = v74;
        v75 = (v69 + ((v69 >> 28) & 7)) & 0xFFF8;
        v76 = v74 <= 0;
        if ((v74 & 0x8000u) != 0)
        {
          v74 = -v74;
        }

        if (v76)
        {
          v77 = -8;
        }

        else
        {
          v77 = 8;
        }

        LOWORD(v69) = v77 + v75;
        if (v74 < 5)
        {
          LOWORD(v69) = v75;
        }
      }
    }

    else
    {
      if (v65 < 1)
      {
        v78 = 1;
      }

      else
      {
        v78 = -1;
      }

      v79 = (((v68 << 15) >> 15) & v78) + v68;
      v80 = v69 - 1;
      if (v67 < 1)
      {
        v80 = v69 + 1;
      }

      if ((v69 & 1) == 0)
      {
        v80 = v69;
      }

      if (!v26)
      {
        LOWORD(v69) = v80;
        LOWORD(v68) = v79;
      }
    }

    if (!(a7 | a6))
    {
      v81 = v40 - *a8;
      if (v81 < 0)
      {
        v81 = *a8 - v40;
      }

      if (v81 > 0xF)
      {
        goto LABEL_147;
      }

      v82 = v41 - a8[1];
      if (v82 < 0)
      {
        v82 = a8[1] - v41;
      }

      if (v82 > 0xF)
      {
        goto LABEL_147;
      }

      v83 = v68 - a8[2];
      if (v83 < 0)
      {
        v83 = a8[2] - v68;
      }

      if (v83 > 0xF)
      {
        goto LABEL_147;
      }

      v84 = v69 - a8[3];
      if (v84 < 0)
      {
        v84 = a8[3] - v69;
      }

      if (v84 >= 0x10)
      {
LABEL_147:
        *(a12 + 2 * a5) |= 8u;
      }
    }

    v85 = *a9;
    v86 = v40 | (v41 << 16);
    v87 = v68 | (v69 << 16);
    if (*a9)
    {
      v88 = 0;
      v89 = a10 + 1;
      while (v86 != *(v89 - 1) || v87 != *v89)
      {
        ++v88;
        v89 += 2;
        if (v85 == v88)
        {
          LODWORD(v88) = *a9;
          goto LABEL_160;
        }
      }

      *(a11 + 2 * v88) += 2;
      LODWORD(v85) = *a9;
    }

    else
    {
      LODWORD(v88) = 0;
    }

LABEL_160:
    result = 1;
    if (v85 <= 7 && v88 == v85)
    {
      v90 = v88;
      v91 = &a10[2 * v88];
      *v91 = v86;
      v91[1] = v87;
      goto LABEL_163;
    }
  }

  return result;
}

uint64_t sub_27797A228(uint64_t a1, unsigned __int8 a2, int a3)
{
  v57 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 25416);
  memset(v56, 0, sizeof(v56));
  v4 = *(a1 + 4 * (a2 - 1) + 240);
  if (v4 == -1)
  {
    return 0;
  }

  v5 = *(a1 + 8 * v4 + 416);
  if (!v5)
  {
    return v5;
  }

  if ((*(v5 + 1464) | 2) == 2)
  {
    return 0;
  }

  v7 = *(v5 + 260);
  if (v7 != *(a1 + 532))
  {
    return 0;
  }

  v8 = *(v5 + 264);
  if (v8 != *(a1 + 536))
  {
    return 0;
  }

  v9 = *(v5 + 4);
  v10 = *(a1 + 24696);
  v11 = *(v10 + 40);
  if (v11)
  {
    v12 = v9 - *(*(a1 + 232) + 4);
    v13 = (((1 << *(v10 + 44)) - 1) & v12) - ((1 << *(v10 + 44)) & v12);
  }

  else
  {
    v13 = 0;
  }

  for (i = 0; i != 28; i += 4)
  {
    if (v11)
    {
      v15 = (((1 << *(v10 + 44)) - 1) & (v9 - *(v5 + 8 + i))) - ((1 << *(v10 + 44)) & (v9 - *(v5 + 8 + i)));
    }

    else
    {
      v15 = 0;
    }

    *(v56 + i + 4) = v15;
  }

  v16 = ((v7 + 1) >> 1);
  if (v16 < 1)
  {
    return 1;
  }

  v17 = 0;
  v18 = *(v5 + 72);
  v19 = ((v8 + 1) >> 1);
  if (a3 == 2)
  {
    v20 = -v13;
  }

  else
  {
    v20 = v13;
  }

  if (v13 >= 0)
  {
    v21 = v13;
  }

  else
  {
    v21 = -v13;
  }

  if (v20 >= 0x1F)
  {
    v22 = 31;
  }

  else
  {
    v22 = v20;
  }

  if (v20 <= -31)
  {
    v23 = -31;
  }

  else
  {
    v23 = v20;
  }

  if (v20 <= 0)
  {
    v22 = v23;
  }

  v24 = a3 & 0xFFFFFFFE;
  v25 = (v18 + 4);
  do
  {
    if (v19 >= 1)
    {
      v26 = 0;
      v27 = v25;
      do
      {
        v28 = *v27;
        if (v28 >= 1)
        {
          v29 = *(v56 + v28);
          v30 = v29 >= 0 ? v29 : -v29;
          v31 = v29 < 1 || v30 > 0x1F;
          if (!v31 && v21 <= 0x1F)
          {
            v33 = *(v27 - 2);
            v34 = *(v27 - 1);
            if (v29 >= 0x1F)
            {
              v35 = 31;
            }

            else
            {
              v35 = v29;
            }

            v36 = dword_277BB8118[v35] * v22;
            if (v36 * v33 < 0)
            {
              v37 = -((0x2000 - v36 * v33) >> 14);
            }

            else
            {
              v37 = (v36 * v33 + 0x2000) >> 14;
            }

            v38 = v36 * v34;
            if (v38 < 0)
            {
              v39 = -((0x2000 - v38) >> 14);
            }

            else
            {
              v39 = (v38 + 0x2000) >> 14;
            }

            if (v37 >= 0x3FFF)
            {
              v40 = 0x3FFF;
            }

            else
            {
              v40 = v37;
            }

            if (v40 <= -16383)
            {
              v40 = -16383;
            }

            if (v39 >= 0x3FFF)
            {
              v41 = 0x3FFF;
            }

            else
            {
              v41 = v39;
            }

            if (v41 <= -16383)
            {
              v41 = -16383;
            }

            v42 = v40 >> 6;
            v43 = -v40 >> 6;
            if (v37 < 0)
            {
              v44 = -v43;
            }

            else
            {
              v44 = v42;
            }

            v45 = v41 >> 6;
            v46 = -v41 >> 6;
            if (v39 < 0)
            {
              v47 = -v46;
            }

            else
            {
              v47 = v45;
            }

            if (v24 == 2)
            {
              v48 = -v44;
            }

            else
            {
              v48 = v44;
            }

            v49 = v48 + v17;
            if (v24 == 2)
            {
              v50 = -v47;
            }

            else
            {
              v50 = v47;
            }

            if ((v49 & 0x80000000) == 0 && v49 < *(a1 + 532) >> 1)
            {
              v51 = v26 + v50;
              if (((v26 + v50) & 0x80000000) == 0 && v51 < *(a1 + 536) >> 1 && v49 >= (v17 & 0x7FFFFFF8) && v49 < ((v17 & 0x7FFFFFF8) + 8) && v51 >= ((v26 & 0x7FFFFFF8) - 8) && v51 < (v26 & 0x7FFFFFF8) + 16)
              {
                v55 = v3 + 8 * (v26 + v50 + (*(a1 + 580) >> 1) * (v17 + v48));
                *v55 = v33;
                *(v55 + 2) = v34;
                *(v55 + 4) = v29;
              }
            }
          }
        }

        v27 += 8;
        ++v26;
      }

      while (v19 != v26);
    }

    ++v17;
    v25 += 8 * v19;
    v5 = 1;
  }

  while (v17 != v16);
  return v5;
}

uint64_t sub_27797A58C(__int16 *a1, uint64_t a2, int32x2_t *a3, int a4, int a5, int32x2_t a6)
{
  v6 = 0;
  v7 = 0;
  v8 = byte_277C3CAFE[a5];
  if (v8 <= byte_277C3CAE8[a5])
  {
    v8 = byte_277C3CAE8[a5];
  }

  if (v8 >= 0x70)
  {
    v8 = 112;
  }

  if (v8 <= 0x10)
  {
    v8 = 16;
  }

  a6.i16[0] = *a1;
  a6.i16[2] = a1[1];
  v9 = a3;
  do
  {
    v10 = *(a2 + 8 * v6);
    v11 = vabs_s32(vsub_s32(*v9, vadd_s32(v10, vrev64_s32(vshr_n_s32(vshl_n_s32(a6, 0x10uLL), 0x10uLL)))));
    if (vadd_s32(vdup_lane_s32(v11, 1), v11).u32[0] <= v8)
    {
      if (v6 != v7)
      {
        *(a2 + 8 * v7) = v10;
        a3[v7] = *v9;
        a6.i16[0] = *a1;
        a6.i16[2] = a1[1];
      }

      ++v7;
    }

    ++v6;
    ++v9;
  }

  while (a4 != v6);
  if ((v7 & 0xFE) != 0)
  {
    return v7;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_27797A65C(uint64_t a1, uint64_t a2, int *a3, _DWORD *a4)
{
  v4 = a4;
  v5 = a3;
  v7 = a2 + 7872;
  v8 = *(a2 + 7864);
  v9 = *(*v8 + 16);
  v10 = *(a2 + 7872);
  v11 = *(a2 + 7873);
  v12 = *(a2 + 4);
  v13 = *(a2 + 8);
  v14 = *a2;
  if (v10 != 1)
  {
    goto LABEL_13;
  }

  v15 = *(v8 + 8 * -v13);
  v16 = *v15;
  v17 = byte_277C3F990[v16];
  v18 = *(a2 + 8308);
  if (v18 > v17)
  {
    v19 = *(a1 + 536);
    if (v19 > v12)
    {
      v20 = 0;
      v21 = 0;
      do
      {
        v22 = *(v8 + 8 * (v21 - v13));
        v23 = *v22;
        v24 = byte_277C3F990[v23];
        if (v22[16] == v9 && v22[17] == 255)
        {
          v25 = ((4 * byte_277C3CAFE[v23]) & 0x3F8) + 32 * v21 - 8;
          v26 = 8 * ~(byte_277C3CAE8[v23] >> 1);
          *v5 = v25;
          v5[1] = v26;
          *v4 = v25 + *(v22 + 5);
          v4[1] = v5[1] + *(v22 + 4);
          if (++v20 > 7u)
          {
            return 8;
          }

          v4 += 2;
          v5 += 2;
          v19 = *(a1 + 536);
        }

        v21 += v24;
        v27 = v19 - v12;
        if (v19 - v12 >= v18)
        {
          v27 = v18;
        }
      }

      while (v21 < v27);
LABEL_14:
      v28 = 1;
      v29 = 1;
      if (!v11)
      {
        goto LABEL_45;
      }

      goto LABEL_19;
    }

LABEL_13:
    v20 = 0;
    goto LABEL_14;
  }

  v29 = v12 % v17 < 1;
  v28 = v17 - v12 % v17 <= v18;
  if (v15[16] == v9 && v15[17] == 255)
  {
    v47 = ((4 * byte_277C3CAFE[v16]) & 0x3F8) - 32 * (v12 % v17) - 8;
    v48 = 8 * ~(byte_277C3CAE8[v16] >> 1);
    *a3 = v47;
    a3[1] = v48;
    *a4 = v47 + *(v15 + 5);
    a4[1] = a3[1] + *(v15 + 4);
    v5 = a3 + 2;
    v4 = a4 + 2;
    v20 = 1;
    if (!v11)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v20 = 0;
    if (!*(a2 + 7873))
    {
      goto LABEL_45;
    }
  }

LABEL_19:
  v30 = *(v8 - 8);
  v31 = *v30;
  v32 = byte_277C36D60[v31];
  v33 = *(v7 + 437);
  if (v33 <= v32)
  {
    if (v14 % v32 > 0)
    {
      v29 = 0;
    }

    if (v30[16] == v9 && v30[17] == 255)
    {
      v42 = byte_277C3CAE8[v31];
      v43 = ~(byte_277C3CAFE[v31] >> 1);
      *v5 = 8 * v43;
      v5[1] = ((4 * v42) & 0x3F8) - 32 * (v14 % v32) - 8;
      *v4 = *(v30 + 5) + 8 * v43;
      v4[1] = v5[1] + *(v30 + 4);
      if (++v20 > 7u)
      {
        return 8;
      }

      v5 += 2;
      v4 += 2;
    }
  }

  else
  {
    v34 = *(a1 + 532);
    if (v34 > v14)
    {
      v35 = 0;
      do
      {
        v36 = *(v8 - 8 + 8 * v35 * v13);
        v37 = *v36;
        v38 = byte_277C36D60[v37];
        if (v36[16] == v9 && v36[17] == 255)
        {
          v39 = ~(byte_277C3CAFE[v37] >> 1);
          v40 = ((4 * byte_277C3CAE8[v37]) & 0x3F8) + 32 * v35 - 8;
          *v5 = 8 * v39;
          v5[1] = v40;
          *v4 = *(v36 + 5) + 8 * v39;
          v4[1] = v5[1] + *(v36 + 4);
          if (++v20 > 7u)
          {
            return 8;
          }

          v4 += 2;
          v5 += 2;
          v34 = *(a1 + 532);
        }

        v35 += v38;
        v41 = v34 - v14;
        if (v34 - v14 >= v33)
        {
          v41 = v33;
        }
      }

      while (v35 < v41);
    }
  }

  if (!v29)
  {
    goto LABEL_45;
  }

  if (!v10)
  {
    goto LABEL_45;
  }

  v44 = *(v8 + 8 * ~v13);
  if (v44[16] != v9 || v44[17] != 255)
  {
    goto LABEL_45;
  }

  v45 = *v44;
  v46 = ~(byte_277C3CAFE[v45] >> 1);
  LODWORD(v45) = 8 * ~(byte_277C3CAE8[v45] >> 1);
  *v5 = 8 * v46;
  v5[1] = v45;
  *v4 = *(v44 + 5) + 8 * v46;
  v4[1] = v5[1] + *(v44 + 4);
  if (++v20 > 7u)
  {
    return 8;
  }

  v5 += 2;
  v4 += 2;
LABEL_45:
  if (v28)
  {
    v49 = *(v7 + 436);
    v50 = *(v7 + 437);
    v51 = v49 <= v50 ? v50 : v49;
    if (sub_277979874(*(*(a1 + 24696) + 28), a2, v14, v12, v51))
    {
      if (v14 > *(a2 + 7840) && (v12 + v49) >= *(a2 + 7848) && v14 <= *(a2 + 7844) && (v12 + v49) < *(a2 + 7852))
      {
        v52 = *(v8 + 8 * (v49 - v13));
        if (v52[16] == v9 && v52[17] == 255)
        {
          sub_27797AB30(v52, v5, v4, v49);
          if (++v20 > 7u)
          {
            return 8;
          }
        }
      }
    }
  }

  return v20;
}

unsigned __int8 *sub_27797AB30(unsigned __int8 *result, int *a2, _DWORD *a3, int a4)
{
  v4 = *result;
  v5 = ((4 * byte_277C3CAFE[v4]) & 0x3F8) + 32 * a4 - 8;
  LODWORD(v4) = 8 * ~(byte_277C3CAE8[v4] >> 1);
  *a2 = v5;
  a2[1] = v4;
  *a3 = v5 + *(result + 5);
  a3[1] = a2[1] + *(result + 4);
  return result;
}

uint64_t sub_27797AB8C(_DWORD *a1, _DWORD *a2)
{
  v3 = a1[4];
  v4 = a2[4];
  result = (v3 - v4);
  if (v3 == v4)
  {
    return (*a1 - *a2);
  }

  return result;
}

double sub_27797ABB4(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 120))
    {
      v2 = *(a1 + 112);
      if (v2)
      {
        free(*(v2 - 8));
      }
    }

    v3 = *(a1 + 96);
    if (v3)
    {
      sub_277A9FCA8(v3);
    }

    v4 = *(a1 + 104);
    if (v4)
    {
      pthread_mutex_destroy(*(a1 + 104));
      free(*(v4 - 8));
    }

    v5 = *(a1 + 200);
    if (v5)
    {
      sub_277A4C810(v5);
    }

    result = 0.0;
    *(a1 + 176) = 0u;
    *(a1 + 192) = 0u;
    *(a1 + 144) = 0u;
    *(a1 + 160) = 0u;
    *(a1 + 112) = 0u;
    *(a1 + 128) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }

  return result;
}

uint64_t sub_27797AC44(uint64_t a1, signed int a2, signed int a3, int a4, int a5, unsigned int a6, int a7, signed int a8, double a9, double a10, double a11, int32x2_t a12, unsigned __int8 a13, int a14)
{
  if (!a1)
  {
    return 2;
  }

  if ((a7 & 0x1F) != 0)
  {
    return 2;
  }

  v21 = a14;
  v22 = a13;
  v23 = (a2 + 7) & 0xFFFFFFF8;
  v24 = (a3 + 7) & 0xFFFFFFF8;
  v25 = v24 >> a5;
  v26 = (v23 + 2 * a7 + 31) & 0xFFFFFFE0;
  v27 = a8 + v26 * (v24 + 2 * a7);
  v28 = a7 >> a5;
  if (a14)
  {
    v29 = 0;
  }

  else
  {
    v29 = v26 >> a4;
  }

  if (a14)
  {
    v30 = 0;
  }

  else
  {
    v30 = a8 + (v26 >> a4) * ((v24 >> a5) + 2 * (a7 >> a5));
  }

  if (a8 <= 1)
  {
    v31 = 1;
  }

  else
  {
    v31 = a8;
  }

  v32 = (v27 + 2 * v30) * (a6 + 1);
  v33 = v32;
  if (a13)
  {
    v34 = a6 == 0;
    if (a2 >= a3)
    {
      v35 = a3;
    }

    else
    {
      v35 = a2;
    }

    v36 = __clz(v35) ^ 0x1F;
    if (v36 <= 4)
    {
      v36 = 4;
    }

    v37 = v36 - 3;
    v38 = (__PAIR64__(v37, a6) - 1) >> 32;
    if (v37 <= v34)
    {
      v49 = 16;
    }

    else
    {
      v39 = (v38 + 1) & 0xFFFFFFFE;
      v40 = v38 - 1;
      v41 = vadd_s32(vdup_n_s32(v34), 0x100000000);
      v42 = vdup_n_s32(a2);
      v43 = vdup_n_s32(a3);
      a12.i32[0] = v40;
      v44 = xmmword_277BB7030;
      do
      {
        v45 = v44;
        v46 = vneg_s32(v41);
        v44 = vaddw_s32(v45, vmul_s32((*&vadd_s32(vshl_s32(v42, v46), 0x3F0000003FLL) & 0xFFFFFFE0FFFFFFE0), vadd_s32(vshl_s32(v43, v46), 0x2000000020)));
        v41 = vadd_s32(v41, 0x200000002);
        v39 -= 2;
      }

      while (v39);
      v47 = vcgt_u32(vorr_s8(vdup_n_s32(v40 & 0xFFFFFFFE), 0x100000000), vdup_lane_s32(a12, 0));
      v48.i64[0] = v47.i32[0];
      v48.i64[1] = v47.i32[1];
      v49 = vaddvq_s64(vbslq_s8(v48, v45, v44));
    }

    v33 = v49 + 24 * v37 + 88 + v32 + 32840;
  }

  if (v33 > 0x40000000)
  {
    return 2;
  }

  if (v32 > *(a1 + 120))
  {
    v92 = v24;
    v93 = v23;
    v94 = v29;
    v95 = a7 >> a5;
    v96 = v30;
    v97 = a8 + v26 * (v24 + 2 * a7);
    v52 = (a1 + 112);
    v51 = *(a1 + 112);
    v90 = v31;
    v91 = v24 >> a5;
    if (v51)
    {
      free(*(v51 - 8));
    }

    *v52 = 0;
    *(a1 + 120) = 0;
    if (v32 <= 0x1FFFFFFD9 && (v53 = malloc_type_malloc(v32 + 39, 0x5F484EBFuLL)) != 0)
    {
      v54 = v53;
      v55 = ((v53 + 39) & 0xFFFFFFFFFFFFFFE0);
      *(v55 - 1) = v54;
      *v52 = v55;
      if (v55)
      {
        *(a1 + 120) = v32;
        bzero(v55, v32);
        v31 = v90;
        v25 = v91;
        v21 = a14;
        v22 = a13;
        v30 = v96;
        v27 = v97;
        v29 = v94;
        v28 = v95;
        v24 = v92;
        v23 = v93;
        goto LABEL_33;
      }
    }

    else
    {
      *v52 = 0;
    }

    return 2;
  }

LABEL_33:
  *(a1 + 16) = a2;
  *(a1 + 20) = (a4 + a2) >> a4;
  *(a1 + 24) = a3;
  *(a1 + 28) = (a5 + a3) >> a5;
  *a1 = v23;
  *(a1 + 4) = v23 >> a4;
  *(a1 + 8) = v24;
  *(a1 + 12) = v25;
  *(a1 + 32) = v26;
  *(a1 + 36) = v29;
  *(a1 + 128) = a7;
  *(a1 + 136) = v32;
  *(a1 + 144) = a4;
  *(a1 + 148) = a5;
  v56 = *(a1 + 112);
  if (a6)
  {
    v56 >>= 1;
  }

  *(a1 + 192) = 8 * (a6 != 0);
  *(a1 + 40) = (v56 + v26 * a7 + a7 + v31 - 1) & ~(v31 - 1);
  if (v21)
  {
    v57 = 0;
    v58 = 0;
  }

  else
  {
    v59 = ~(v31 - 1);
    v60 = v56 + v27 + v29 * v28 + (a7 >> a4) + v31 - 1;
    v57 = v60 & v59;
    v58 = (v60 + v30) & v59;
  }

  *(a1 + 48) = v57;
  *(a1 + 56) = v58;
  *(a1 + 64) = 0;
  v61 = *(a1 + 96);
  if (v61)
  {
    sub_277A9FCA8(v61);
    *(a1 + 96) = 0;
  }

  v62 = *(a1 + 104);
  if (v62)
  {
    pthread_mutex_destroy(*(a1 + 104));
    free(*(v62 - 8));
    *(a1 + 104) = 0;
  }

  if (!v22)
  {
    goto LABEL_80;
  }

  if (a2 >= a3)
  {
    v63 = a3;
  }

  else
  {
    v63 = a2;
  }

  v64 = __clz(v63) ^ 0x1F;
  if (v64 <= 4)
  {
    v65 = 4;
  }

  else
  {
    v65 = v64;
  }

  v66 = malloc_type_malloc(0x6FuLL, 0x5F484EBFuLL);
  if (!v66 || (v67 = (v66 + 23) & 0xFFFFFFFFFFFFFFF0, *(v67 - 8) = v66, !v67))
  {
    *(a1 + 96) = 0;
    return 2;
  }

  v68 = (v65 - 3);
  *(((v66 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x50) = 0;
  *(((v66 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x30) = 0u;
  *(((v66 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x40) = 0u;
  *(((v66 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x10) = 0u;
  *(((v66 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x20) = 0u;
  *v67 = 0u;
  v69 = sub_2779724A8(v68, 0x18uLL);
  *(v67 + 80) = v69;
  if (v69)
  {
    *(v67 + 64) = v68;
    v70 = sub_2779724A8((v65 - 3), 8uLL);
    if (v70)
    {
      v71 = v70;
      if (v68 <= (a6 == 0))
      {
        v85 = malloc_type_malloc(0x37uLL, 0x5F484EBFuLL);
        if (v85)
        {
          v86 = (v85 + 39) & 0xFFFFFFFFFFFFFFE0;
          *(v86 - 8) = v85;
          *(v67 + 72) = v86;
          if (v86)
          {
LABEL_70:
            pthread_mutex_init(v67, 0);
            goto LABEL_76;
          }

          goto LABEL_72;
        }
      }

      else
      {
        v72 = a6 == 0;
        v73 = (*(v67 + 80) + 24 * v72 + 16);
        v74 = 16;
        v75 = v72;
        do
        {
          v76 = ((a2 >> v75) + 63) & 0xFFFFFFE0;
          v77 = v74 + (16 * v76) + 16;
          v74 += (v76 * ((a3 >> v75) + 32));
          *(v70 + 8 * v75) = v77;
          *(v73 - 2) = a2 >> v75;
          *(v73 - 1) = a3 >> v75;
          *v73 = v76;
          v73 += 6;
          ++v75;
        }

        while (v68 != v75);
        if (v74 <= 0x1FFFFFFD9)
        {
          v78 = malloc_type_malloc(v74 + 39, 0x5F484EBFuLL);
          if (v78)
          {
            v79 = (v78 + 39) & 0xFFFFFFFFFFFFFFE0;
            *(v79 - 8) = v78;
            *(v67 + 72) = v79;
            if (v79)
            {
              v80 = v68 - v72;
              v81 = (v71 + 8 * v72);
              v82 = (*(v67 + 80) + 24 * v72);
              do
              {
                v83 = *v81++;
                *v82 = v79 + v83;
                v82 += 3;
                --v80;
              }

              while (v80);
              goto LABEL_70;
            }

            goto LABEL_72;
          }
        }
      }

      *(v67 + 72) = 0;
LABEL_72:
      v87 = *(v67 + 80);
      if (v87)
      {
        free(*(v87 - 8));
      }

      free(*(v67 - 8));
      goto LABEL_75;
    }

    v84 = *(v67 + 80);
    if (v84)
    {
      free(*(v84 - 8));
    }
  }

  v71 = v67;
LABEL_75:
  v67 = 0;
LABEL_76:
  free(*(v71 - 8));
  *(a1 + 96) = v67;
  if (!v67)
  {
    return 2;
  }

  v88 = malloc_type_malloc(0x805FuLL, 0x5F484EBFuLL);
  if (!v88 || (v89 = ((v88 + 23) & 0xFFFFFFFFFFFFFFF0), *&v89[-1].__opaque[48] = v88, !v89))
  {
    *(a1 + 104) = 0;
    return 2;
  }

  bzero(((v88 + 23) & 0xFFFFFFFFFFFFFFF0), 0x8048uLL);
  pthread_mutex_init(v89, 0);
  *(a1 + 104) = v89;
LABEL_80:
  result = 0;
  *(a1 + 188) = 0;
  return result;
}

uint64_t sub_27797B1CC(uint64_t a1, size_t *a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a2[1])
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *(a1 + 200);
  if (v4 == a2)
  {
    return 0;
  }

  if (v4)
  {
    sub_277A4C810(v4);
    *(a1 + 200) = 0;
  }

  v5 = *a2;
  v6 = malloc_type_calloc(1uLL, 0x10uLL, 0x108004057E67DB5uLL);
  if (!v6)
  {
LABEL_28:
    *(a1 + 200) = 0;
    return 0xFFFFFFFFLL;
  }

  v7 = v6;
  if (v5)
  {
    v8 = malloc_type_calloc(v5, 8uLL, 0x2004093837F09uLL);
    v7[1] = v8;
    if (v8)
    {
      *v7 = v5;
      *(a1 + 200) = v7;
LABEL_13:
      v11 = 0;
      while (1)
      {
        v12 = *(a2[1] + 8 * v11);
        v14 = *(v12 + 1);
        v13 = *(v12 + 2);
        if (v14)
        {
          v15 = v13 == 0;
        }

        else
        {
          v15 = 1;
        }

        if (!v15)
        {
          v17 = *v12;
          v18 = v12[6];
          v19 = malloc_type_malloc(0x20uLL, 0x10100406DE72A83uLL);
          v16 = v19;
          if (!v19)
          {
            goto LABEL_23;
          }

          *v19 = v17;
          v20 = malloc_type_malloc(v13, 0x100004077774924uLL);
          *(v16 + 1) = v20;
          if (v20)
          {
            memcpy(v20, v14, v13);
            *(v16 + 2) = v13;
            v16[6] = v18;
            goto LABEL_23;
          }

          free(v16);
        }

        v16 = 0;
LABEL_23:
        *(*(*(a1 + 200) + 8) + 8 * v11) = v16;
        v7 = *(a1 + 200);
        if (!*(v7[1] + 8 * v11))
        {
          break;
        }

        if (++v11 >= *v7)
        {
          goto LABEL_30;
        }
      }
    }

    sub_277A4C810(v7);
    goto LABEL_28;
  }

  v10 = *v6;
  *(a1 + 200) = v6;
  if (v10)
  {
    goto LABEL_13;
  }

LABEL_30:
  result = 0;
  *v7 = *a2;
  return result;
}

int16x8_t *sub_27797B398(int16x8_t *result, uint64_t a2, int a3, int a4, int a5, int16x4_t *a6, int a7, int a8, int a9, int a10, int a11, char a12, __int16 a13, char a14, int a15, int *a16, __int16 a17, __int16 a18, __int16 a19, __int16 a20)
{
  v435 = result;
  v450[22] = *MEMORY[0x277D85DE8];
  if (a10 >= 1)
  {
    v20 = 0;
    v23 = a18;
    v426 = a8 + 4;
    if (a15 == 12)
    {
      v24 = -5;
    }

    else
    {
      v24 = -3;
    }

    if (a15 == 12)
    {
      v25 = 5;
    }

    else
    {
      v25 = 3;
    }

    v26 = a4 - 1;
    v27 = 1 << (a15 + ~v25 + 7);
    v28 = v25 ^ 7;
    v29 = 4 * a17;
    v30 = vdupq_n_s32(1 << (a15 + 6));
    v31 = vdupq_n_s32(v24);
    v32 = 4;
    if (a10 > 4)
    {
      v32 = 8;
    }

    v434 = v32;
    v33 = a15 + v24;
    v34 = vdupq_n_s32(1 << (v33 + 14));
    v22 = (a16 + 10);
    v35 = vld1q_dup_f32(v22);
    v21 = (a16 + 11);
    v36 = vld1q_dup_f32(v21);
    LOBYTE(v21) = v33 + 7;
    v37 = -1 << (v33 + 7);
    v33 += 6;
    v448 = vdupq_n_s32(v37 + (-1 << v33));
    v38 = vdupq_n_s32(v25 - 7);
    v39 = vdupq_n_s32(~(-1 << a15));
    v431 = *(a16 + 1);
    v40 = *a16;
    v41 = vdupq_n_s32(v25 - 14);
    v42 = a16[4];
    v447 = vdupq_n_s32((-1 << (a15 - 1)) + (-1 << a15));
    LODWORD(v21) = (1 << v21) + (1 << v33);
    result = (1 << (a15 - 1));
    v43 = vmul_s32(vdup_n_s32(a19), 0x700000006);
    v44 = vdupq_n_s32(v21);
    v432 = 512 - 3 * a18;
    v45 = 2 * v42;
    v427 = 16 * v42;
    v46 = vdupq_n_s32(result + (1 << a15));
    v47 = a16[8];
    v48 = a16[9];
    v440 = a2 - 2;
    v445 = 2 * a17;
    v438 = 3 * a17;
    v428 = v438 + 512;
    v429 = v445 + 512;
    v425 = v29 + 512;
    v424 = v29 + 512 + a17;
    v49 = 2 * a19;
    v50 = 3 * a19;
    v430 = a6;
    do
    {
      if (a9 < 1)
      {
        goto LABEL_243;
      }

      v51 = 0;
      v437 = (v426 + v20) << a14;
      v441 = v430;
      v444 = v431;
      do
      {
        v443 = v51;
        v52 = (a7 + 4 + v51) << a12;
        v53 = (v435[3] * v437 + v435[2] * v52 + *v435) >> a12;
        v54 = v53 >> 16;
        v439 = (v435[5] * v437 + v435[4] * v52 + v435[1]) >> a14;
        v55 = v439 >> 16;
        if ((v53 >> 16) > -7)
        {
          if (a3 + 6 <= v54)
          {
            v88 = 0;
            v55 = v55;
            v89 = v55 - 7;
            do
            {
              if (v89 >= v26)
              {
                v90 = v26;
              }

              else
              {
                v90 = v89;
              }

              if (v55 < 7)
              {
                v90 = 0;
              }

              *&v449[v88] = vdupq_n_s16((*(a2 + 2 * (a3 - 1 + v90 * a5)) << v28) + v27);
              v88 += 16;
              ++v89;
              ++v55;
            }

            while (v88 != 240);
          }

          else
          {
            v60 = (v53 & 0xFFFC) - 4 * (a18 + a17);
            v61 = v60 & 0xFFFFFFC0;
            v62 = 6 - v54;
            v446 = v54 - a3 + 8;
            v64 = v54 < 7 || v54 - a3 + 8 >= 0;
            if (a9 == 4)
            {
              if (v23)
              {
                if (a17)
                {
                  if (v64)
                  {
                    v65 = 0;
                    v66 = v54;
                    v67 = vdupq_n_s16(v62);
                    v68 = vdupq_n_s16(7 - (v54 - a3));
                    v69 = v55;
                    v70 = v432 + v61;
                    v71 = v55 - 7;
                    do
                    {
                      if (v71 >= v26)
                      {
                        v72 = v26;
                      }

                      else
                      {
                        v72 = v71;
                      }

                      if (v69 < 7)
                      {
                        v72 = 0;
                      }

                      v73 = v72 * a5;
                      v74 = (a2 + 2 * v72 * a5);
                      v75 = *&v74[v66 - 7];
                      v76 = *&v74[v66 + 1];
                      if (v54 <= 6)
                      {
                        v77 = vld1q_dup_s16(v74);
                        v75 = vbslq_s8(vcgtq_u16(xmmword_277BB7050, v67), v75, v77);
                        v76 = vbslq_s8(vcgtq_u16(xmmword_277BB7040, v67), v76, v77);
                      }

                      if ((v446 & 0x80000000) == 0)
                      {
                        v78 = (v440 + 2 * (v73 + a3));
                        v79 = vld1q_dup_s16(v78);
                        v75 = vbslq_s8(vcgtq_u16(v68, xmmword_277BB7050), v75, v79);
                        v76 = vbslq_s8(vcgtq_u16(v68, xmmword_277BB7040), v76, v79);
                      }

                      v80 = vextq_s8(v75, v76, 2uLL);
                      v81 = vextq_s8(v75, v76, 4uLL);
                      v82 = vextq_s8(v75, v76, 6uLL);
                      v83 = *(&unk_277C399F8 + 2 * ((v70 >> 7) & 0xFFFFFFF8));
                      v84 = *(&unk_277C399F8 + 2 * (((a17 + v70) >> 7) & 0xFFFFFFF8));
                      v85 = *(&unk_277C399F8 + 2 * (((v445 + v70) >> 7) & 0xFFFFFFF8));
                      v86 = *(&unk_277C399F8 + 2 * (((v438 + v70) >> 7) & 0xFFFFFFF8));
                      v87 = vrshlq_s32(vaddq_s32(vpaddq_s32(vpaddq_s32(vmlal_high_s16(vmull_s16(*v83.i8, *v75.i8), v83, v75), vmlal_high_s16(vmull_s16(*v84.i8, *v80.i8), v84, v80)), vpaddq_s32(vmlal_high_s16(vmull_s16(*v85.i8, *v81.i8), v85, v81), vmlal_high_s16(vmull_s16(*v86.i8, *v82.i8), v86, v82))), v30), v31);
                      *v87.i8 = vmovn_s32(v87);
                      *&v449[v65] = v87;
                      v65 += 16;
                      v23 = a18;
                      v70 += a18;
                      ++v71;
                      ++v69;
                    }

                    while (v65 != 240);
                  }

                  else
                  {
                    v311 = 0;
                    v312 = a2 + 2 * ((v53 >> 16) & 0x7FFFFFFF);
                    v313 = v55;
                    v314 = v432 + v61;
                    v315 = v55 - 7;
                    do
                    {
                      if (v315 >= v26)
                      {
                        v316 = v26;
                      }

                      else
                      {
                        v316 = v315;
                      }

                      if (v313 < 7)
                      {
                        v316 = 0;
                      }

                      v317 = v312 + 2 * v316 * a5;
                      v318 = *(&unk_277C399F8 + 2 * ((v314 >> 7) & 0xFFFFFFF8));
                      v319 = *(&unk_277C399F8 + 2 * (((a17 + v314) >> 7) & 0xFFFFFFF8));
                      v320 = *(&unk_277C399F8 + 2 * (((v445 + v314) >> 7) & 0xFFFFFFF8));
                      v23 = a18;
                      v321 = *(&unk_277C399F8 + 2 * (((v438 + v314) >> 7) & 0xFFFFFFF8));
                      v322 = vrshlq_s32(vaddq_s32(vpaddq_s32(vpaddq_s32(vmlal_high_s16(vmull_s16(*v318.i8, *(v317 - 14)), v318, *(v317 - 14)), vmlal_high_s16(vmull_s16(*v319.i8, *(v317 - 12)), v319, *(v317 - 12))), vpaddq_s32(vmlal_high_s16(vmull_s16(*v320.i8, *(v317 - 10)), v320, *(v317 - 10)), vmlal_high_s16(vmull_s16(*v321.i8, *(v317 - 8)), v321, *(v317 - 8)))), v30), v31);
                      *v322.i8 = vmovn_s32(v322);
                      *&v449[v311] = v322;
                      v311 += 16;
                      v314 += a18;
                      ++v315;
                      ++v313;
                    }

                    while (v311 != 240);
                  }
                }

                else if (v64)
                {
                  v270 = 0;
                  v433 = v54;
                  v271 = vdupq_n_s16(v62);
                  v272 = vdupq_n_s16(7 - (v54 - a3));
                  v273 = v55;
                  v274 = v432 + v61;
                  v275 = v55 - 7;
                  do
                  {
                    if (v275 >= v26)
                    {
                      v276 = v26;
                    }

                    else
                    {
                      v276 = v275;
                    }

                    if (v273 < 7)
                    {
                      v276 = 0;
                    }

                    v277 = v276 * a5;
                    v278 = (a2 + 2 * v276 * a5);
                    v279 = *&v278[v433 - 7];
                    v280 = *&v278[v433 + 1];
                    if (v54 <= 6)
                    {
                      v281 = vld1q_dup_s16(v278);
                      v279 = vbslq_s8(vcgtq_u16(xmmword_277BB7050, v271), v279, v281);
                      v280 = vbslq_s8(vcgtq_u16(xmmword_277BB7040, v271), v280, v281);
                    }

                    if ((v446 & 0x80000000) == 0)
                    {
                      v282 = (v440 + 2 * (v277 + a3));
                      v283 = vld1q_dup_s16(v282);
                      v279 = vbslq_s8(vcgtq_u16(v272, xmmword_277BB7050), v279, v283);
                      v280 = vbslq_s8(vcgtq_u16(v272, xmmword_277BB7040), v280, v283);
                    }

                    v284 = vextq_s8(v279, v280, 2uLL);
                    v285 = vextq_s8(v279, v280, 4uLL);
                    v286 = vextq_s8(v279, v280, 6uLL);
                    v287 = *(&unk_277C395F8 + 2 * ((v274 >> 7) & 0xFFFFFFF8) + 1024);
                    v288 = vrshlq_s32(vaddq_s32(vpaddq_s32(vpaddq_s32(vmlal_high_s16(vmull_s16(*v287.i8, *v279.i8), v287, v279), vmlal_high_s16(vmull_s16(*v287.i8, *v284.i8), v287, v284)), vpaddq_s32(vmlal_high_s16(vmull_s16(*v287.i8, *v285.i8), v287, v285), vmlal_high_s16(vmull_s16(*v287.i8, *v286.i8), v287, v286))), v30), v31);
                    *v288.i8 = vmovn_s32(v288);
                    *&v449[v270] = v288;
                    v270 += 16;
                    v274 += v23;
                    ++v275;
                    ++v273;
                  }

                  while (v270 != 240);
                }

                else
                {
                  v394 = 0;
                  v395 = a2 + 2 * ((v53 >> 16) & 0x7FFFFFFF);
                  v396 = v55;
                  v397 = v432 + v61;
                  v398 = v55 - 7;
                  do
                  {
                    if (v398 >= v26)
                    {
                      v399 = v26;
                    }

                    else
                    {
                      v399 = v398;
                    }

                    if (v396 < 7)
                    {
                      v399 = 0;
                    }

                    v400 = v395 + 2 * v399 * a5;
                    v401 = *(&unk_277C395F8 + 2 * ((v397 >> 7) & 0xFFFFFFF8) + 1024);
                    v402 = vrshlq_s32(vaddq_s32(vpaddq_s32(vpaddq_s32(vmlal_high_s16(vmull_s16(*v401.i8, *(v400 - 14)), v401, *(v400 - 14)), vmlal_high_s16(vmull_s16(*v401.i8, *(v400 - 12)), v401, *(v400 - 12))), vpaddq_s32(vmlal_high_s16(vmull_s16(*v401.i8, *(v400 - 10)), v401, *(v400 - 10)), vmlal_high_s16(vmull_s16(*v401.i8, *(v400 - 8)), v401, *(v400 - 8)))), v30), v31);
                    *v402.i8 = vmovn_s32(v402);
                    *&v449[v394] = v402;
                    v394 += 16;
                    v397 += v23;
                    ++v398;
                    ++v396;
                  }

                  while (v394 != 240);
                }
              }

              else
              {
                v218 = v60 + 512;
                if (a17)
                {
                  v219 = *(&unk_277C399F8 + 2 * ((v218 >> 7) & 0xFFFFFFF8));
                  v220 = *(&unk_277C399F8 + 2 * (((v61 + a17 + 512) >> 7) & 0xFFFFFFF8));
                  v221 = *(&unk_277C399F8 + 2 * (((v429 + v61) >> 7) & 0xFFFFFFF8));
                  v222 = *(&unk_277C399F8 + 2 * (((v428 + v61) >> 7) & 0xFFFFFFF8));
                  if (v64)
                  {
                    v223 = 0;
                    v224 = vdupq_n_s16(v62);
                    v225 = v54;
                    v226 = vdupq_n_s16(7 - (v54 - a3));
                    v227 = v55;
                    v228 = v55 - 7;
                    do
                    {
                      if (v228 >= v26)
                      {
                        v229 = v26;
                      }

                      else
                      {
                        v229 = v228;
                      }

                      if (v227 < 7)
                      {
                        v229 = 0;
                      }

                      v230 = v229 * a5;
                      v231 = (a2 + 2 * v229 * a5);
                      v232 = *&v231[v225 - 7];
                      v233 = *&v231[v225 + 1];
                      if (v54 <= 6)
                      {
                        v234 = vld1q_dup_s16(v231);
                        v232 = vbslq_s8(vcgtq_u16(xmmword_277BB7050, v224), v232, v234);
                        v233 = vbslq_s8(vcgtq_u16(xmmword_277BB7040, v224), v233, v234);
                      }

                      if ((v446 & 0x80000000) == 0)
                      {
                        v235 = (v440 + 2 * (v230 + a3));
                        v236 = vld1q_dup_s16(v235);
                        v232 = vbslq_s8(vcgtq_u16(v226, xmmword_277BB7050), v232, v236);
                        v233 = vbslq_s8(vcgtq_u16(v226, xmmword_277BB7040), v233, v236);
                      }

                      v237 = vextq_s8(v232, v233, 2uLL);
                      v238 = vextq_s8(v232, v233, 4uLL);
                      v239 = vextq_s8(v232, v233, 6uLL);
                      v240 = vrshlq_s32(vaddq_s32(vpaddq_s32(vpaddq_s32(vmlal_high_s16(vmull_s16(*v219.i8, *v232.i8), v219, v232), vmlal_high_s16(vmull_s16(*v220.i8, *v237.i8), v220, v237)), vpaddq_s32(vmlal_high_s16(vmull_s16(*v221.i8, *v238.i8), v221, v238), vmlal_high_s16(vmull_s16(*v222.i8, *v239.i8), v222, v239))), v30), v31);
                      *v240.i8 = vmovn_s32(v240);
                      *&v449[v223] = v240;
                      v223 += 16;
                      ++v228;
                      ++v227;
                    }

                    while (v223 != 240);
                  }

                  else
                  {
                    v381 = 0;
                    v382 = a2 + 2 * ((v53 >> 16) & 0x7FFFFFFF);
                    v383 = v55;
                    v384 = v55 - 7;
                    do
                    {
                      if (v384 >= v26)
                      {
                        v385 = v26;
                      }

                      else
                      {
                        v385 = v384;
                      }

                      if (v383 < 7)
                      {
                        v385 = 0;
                      }

                      v386 = v382 + 2 * v385 * a5;
                      v387 = vrshlq_s32(vaddq_s32(vpaddq_s32(vpaddq_s32(vmlal_high_s16(vmull_s16(*v219.i8, *(v386 - 14)), v219, *(v386 - 14)), vmlal_high_s16(vmull_s16(*v220.i8, *(v386 - 12)), v220, *(v386 - 12))), vpaddq_s32(vmlal_high_s16(vmull_s16(*v221.i8, *(v386 - 10)), v221, *(v386 - 10)), vmlal_high_s16(vmull_s16(*v222.i8, *(v386 - 8)), v222, *(v386 - 8)))), v30), v31);
                      *v387.i8 = vmovn_s32(v387);
                      *&v449[v381] = v387;
                      v381 += 16;
                      ++v384;
                      ++v383;
                    }

                    while (v381 != 240);
                  }
                }

                else
                {
                  v341 = *(&unk_277C395F8 + 2 * ((v218 >> 7) & 0x1FFFFF8) + 1024);
                  if (v64)
                  {
                    v342 = 0;
                    v343 = vdupq_n_s16(v62);
                    v344 = v54;
                    v345 = vdupq_n_s16(7 - (v54 - a3));
                    v346 = v55;
                    v347 = v55 - 7;
                    do
                    {
                      if (v347 >= v26)
                      {
                        v348 = v26;
                      }

                      else
                      {
                        v348 = v347;
                      }

                      if (v346 < 7)
                      {
                        v348 = 0;
                      }

                      v349 = v348 * a5;
                      v350 = (a2 + 2 * v348 * a5);
                      v351 = *&v350[v344 - 7];
                      v352 = *&v350[v344 + 1];
                      if (v54 <= 6)
                      {
                        v353 = vld1q_dup_s16(v350);
                        v351 = vbslq_s8(vcgtq_u16(xmmword_277BB7050, v343), v351, v353);
                        v352 = vbslq_s8(vcgtq_u16(xmmword_277BB7040, v343), v352, v353);
                      }

                      if ((v446 & 0x80000000) == 0)
                      {
                        v354 = (v440 + 2 * (v349 + a3));
                        v355 = vld1q_dup_s16(v354);
                        v351 = vbslq_s8(vcgtq_u16(v345, xmmword_277BB7050), v351, v355);
                        v352 = vbslq_s8(vcgtq_u16(v345, xmmword_277BB7040), v352, v355);
                      }

                      v356 = vextq_s8(v351, v352, 2uLL);
                      v357 = vextq_s8(v351, v352, 4uLL);
                      v358 = vextq_s8(v351, v352, 6uLL);
                      v359 = vrshlq_s32(vaddq_s32(vpaddq_s32(vpaddq_s32(vmlal_high_s16(vmull_s16(*v341.i8, *v351.i8), v341, v351), vmlal_high_s16(vmull_s16(*v341.i8, *v356.i8), v341, v356)), vpaddq_s32(vmlal_high_s16(vmull_s16(*v341.i8, *v357.i8), v341, v357), vmlal_high_s16(vmull_s16(*v341.i8, *v358.i8), v341, v358))), v30), v31);
                      *v359.i8 = vmovn_s32(v359);
                      *&v449[v342] = v359;
                      v342 += 16;
                      ++v347;
                      ++v346;
                    }

                    while (v342 != 240);
                  }

                  else
                  {
                    v411 = 0;
                    v412 = a2 + 2 * ((v53 >> 16) & 0x7FFFFFFF);
                    v413 = v55;
                    v414 = v55 - 7;
                    do
                    {
                      if (v414 >= v26)
                      {
                        v415 = v26;
                      }

                      else
                      {
                        v415 = v414;
                      }

                      if (v413 < 7)
                      {
                        v415 = 0;
                      }

                      v416 = v412 + 2 * v415 * a5;
                      v417 = vrshlq_s32(vaddq_s32(vpaddq_s32(vpaddq_s32(vmlal_high_s16(vmull_s16(*v341.i8, *(v416 - 14)), v341, *(v416 - 14)), vmlal_high_s16(vmull_s16(*v341.i8, *(v416 - 12)), v341, *(v416 - 12))), vpaddq_s32(vmlal_high_s16(vmull_s16(*v341.i8, *(v416 - 10)), v341, *(v416 - 10)), vmlal_high_s16(vmull_s16(*v341.i8, *(v416 - 8)), v341, *(v416 - 8)))), v30), v31);
                      *v417.i8 = vmovn_s32(v417);
                      *&v449[v411] = v417;
                      v411 += 16;
                      ++v414;
                      ++v413;
                    }

                    while (v411 != 240);
                  }
                }
              }
            }

            else if (v23)
            {
              if (a17)
              {
                if (v64)
                {
                  v186 = 0;
                  v187 = v54;
                  v188 = vdupq_n_s16(v62);
                  v189 = vdupq_n_s16(7 - (v54 - a3));
                  v55 = v55;
                  v190 = v432 + v61;
                  v191 = v55 - 7;
                  do
                  {
                    if (v191 >= v26)
                    {
                      v192 = v26;
                    }

                    else
                    {
                      v192 = v191;
                    }

                    if (v55 < 7)
                    {
                      v192 = 0;
                    }

                    v193 = (a2 + 2 * v192 * a5);
                    v194 = *&v193[v187 - 7];
                    v195 = *&v193[v187 + 1];
                    if (v54 <= 6)
                    {
                      v196 = vld1q_dup_s16(v193);
                      v194 = vbslq_s8(vcgtq_u16(xmmword_277BB7050, v188), v194, v196);
                      v195 = vbslq_s8(vcgtq_u16(xmmword_277BB7040, v188), v195, v196);
                    }

                    if ((v446 & 0x80000000) == 0)
                    {
                      v197 = (v440 + 2 * (v192 * a5 + a3));
                      v198 = vld1q_dup_s16(v197);
                      v194 = vbslq_s8(vcgtq_u16(v189, xmmword_277BB7050), v194, v198);
                      v195 = vbslq_s8(vcgtq_u16(v189, xmmword_277BB7040), v195, v198);
                    }

                    v199 = vextq_s8(v194, v195, 2uLL);
                    v200 = vextq_s8(v194, v195, 4uLL);
                    v201 = vextq_s8(v194, v195, 6uLL);
                    v202 = vextq_s8(v194, v195, 8uLL);
                    v203 = vextq_s8(v194, v195, 0xAuLL);
                    v204 = vextq_s8(v194, v195, 0xCuLL);
                    v205 = *(&unk_277C399F8 + 2 * ((v190 >> 7) & 0xFFFFFFF8));
                    v206 = *(&unk_277C399F8 + 2 * (((a17 + v190) >> 7) & 0xFFFFFFF8));
                    v207 = *(&unk_277C399F8 + 2 * (((v445 + v190) >> 7) & 0xFFFFFFF8));
                    v208 = a17 + v445 + v190;
                    v209 = *(&unk_277C399F8 + 2 * ((v208 >> 7) & 0xFFFFFFF8));
                    v210 = a17 + v208;
                    v211 = *(&unk_277C399F8 + 2 * ((v210 >> 7) & 0xFFFFFFF8));
                    v212 = a17 + v210;
                    v213 = *(&unk_277C399F8 + 2 * ((v212 >> 7) & 0xFFFFFFF8));
                    v214 = a17 + v212;
                    v215 = *(&unk_277C399F8 + 2 * ((v214 >> 7) & 0xFFFFFFF8));
                    v216 = *(&unk_277C399F8 + 2 * (((a17 + v214) >> 7) & 0xFFFFFFF8));
                    v217 = vextq_s8(v194, v195, 0xEuLL);
                    *&v449[v186] = vuzp1q_s16(vrshlq_s32(vaddq_s32(vpaddq_s32(vpaddq_s32(vmlal_high_s16(vmull_s16(*v205.i8, *v194.i8), v205, v194), vmlal_high_s16(vmull_s16(*v206.i8, *v199.i8), v206, v199)), vpaddq_s32(vmlal_high_s16(vmull_s16(*v207.i8, *v200.i8), v207, v200), vmlal_high_s16(vmull_s16(*v209.i8, *v201.i8), v209, v201))), v30), v31), vrshlq_s32(vaddq_s32(vpaddq_s32(vpaddq_s32(vmlal_high_s16(vmull_s16(*v211.i8, *v202.i8), v211, v202), vmlal_high_s16(vmull_s16(*v213.i8, *v203.i8), v213, v203)), vpaddq_s32(vmlal_high_s16(vmull_s16(*v215.i8, *v204.i8), v215, v204), vmlal_high_s16(vmull_s16(*v216.i8, *v217.i8), v216, v217))), v30), v31));
                    v186 += 16;
                    v190 += v23;
                    ++v191;
                    ++v55;
                  }

                  while (v186 != 240);
                }

                else
                {
                  v323 = 0;
                  v324 = a2 + 2 * ((v53 >> 16) & 0x7FFFFFFF);
                  v55 = v55;
                  v325 = v432 + v61;
                  v326 = v55 - 7;
                  do
                  {
                    v330 = a17 + v445 + v325;
                    v331 = *(&unk_277C399F8 + 2 * ((v330 >> 7) & 0xFFFFFFF8));
                    v332 = a17 + v330;
                    v333 = *(&unk_277C399F8 + 2 * ((v332 >> 7) & 0xFFFFFFF8));
                    v334 = a17 + v332;
                    v335 = *(&unk_277C399F8 + 2 * ((v334 >> 7) & 0xFFFFFFF8));
                    v336 = a17 + v334;
                    if (v326 >= v26)
                    {
                      v338 = v26;
                    }

                    else
                    {
                      v338 = v326;
                    }

                    if (v55 < 7)
                    {
                      v338 = 0;
                    }

                    v339 = (v324 + 2 * v338 * a5);
                    v340 = *(&unk_277C399F8 + 2 * (((a17 + v336) >> 7) & 0xFFFFFFF8));
                    v327 = *(&unk_277C399F8 + 2 * ((v325 >> 7) & 0xFFFFFFF8));
                    v328 = *(&unk_277C399F8 + 2 * (((a17 + v325) >> 7) & 0xFFFFFFF8));
                    v329 = *(&unk_277C399F8 + 2 * (((v445 + v325) >> 7) & 0xFFFFFFF8));
                    v337 = *(&unk_277C399F8 + 2 * ((v336 >> 7) & 0xFFFFFFF8));
                    *&v449[v323] = vuzp1q_s16(vrshlq_s32(vaddq_s32(vpaddq_s32(vpaddq_s32(vmlal_high_s16(vmull_s16(*v327.i8, *(v339 - 14)), v327, *&v339[-2].i16[1]), vmlal_high_s16(vmull_s16(*v328.i8, *(v339 - 12)), v328, *&v339[-2].u8[4])), vpaddq_s32(vmlal_high_s16(vmull_s16(*v329.i8, *(v339 - 10)), v329, *(&v339[-2].u32[1] + 2)), vmlal_high_s16(vmull_s16(*v331.i8, v339[-1]), v331, *v339[-1].i8))), v30), v31), vrshlq_s32(vaddq_s32(vpaddq_s32(vpaddq_s32(vmlal_high_s16(vmull_s16(*v333.i8, *(v339 - 6)), v333, *&v339[-1].i16[1]), vmlal_high_s16(vmull_s16(*v335.i8, *(v339 - 4)), v335, *&v339[-1].u8[4])), vpaddq_s32(vmlal_high_s16(vmull_s16(*v337.i8, *(v339 - 2)), v337, *(&v339[-1].u32[1] + 2)), vmlal_high_s16(vmull_s16(*v340.i8, *v339), v340, *v339->i8))), v30), v31));
                    v323 += 16;
                    v325 += v23;
                    ++v326;
                    ++v55;
                  }

                  while (v323 != 240);
                }
              }

              else if (v64)
              {
                v289 = 0;
                v290 = v54;
                v291 = vdupq_n_s16(v62);
                v292 = vdupq_n_s16(7 - (v54 - a3));
                v293 = v55;
                v294 = v432 + v61;
                v295 = v55 - 7;
                do
                {
                  if (v295 >= v26)
                  {
                    v296 = v26;
                  }

                  else
                  {
                    v296 = v295;
                  }

                  if (v293 < 7)
                  {
                    v296 = 0;
                  }

                  v297 = (a2 + 2 * v296 * a5);
                  v298 = *&v297[v290 - 7];
                  v299 = *&v297[v290 + 1];
                  if (v54 <= 6)
                  {
                    v300 = vld1q_dup_s16(v297);
                    v298 = vbslq_s8(vcgtq_u16(xmmword_277BB7050, v291), v298, v300);
                    v299 = vbslq_s8(vcgtq_u16(xmmword_277BB7040, v291), v299, v300);
                  }

                  if ((v446 & 0x80000000) == 0)
                  {
                    v301 = (v440 + 2 * (v296 * a5 + a3));
                    v302 = vld1q_dup_s16(v301);
                    v298 = vbslq_s8(vcgtq_u16(v292, xmmword_277BB7050), v298, v302);
                    v299 = vbslq_s8(vcgtq_u16(v292, xmmword_277BB7040), v299, v302);
                  }

                  v303 = vextq_s8(v298, v299, 2uLL);
                  v304 = vextq_s8(v298, v299, 4uLL);
                  v305 = vextq_s8(v298, v299, 6uLL);
                  v306 = vextq_s8(v298, v299, 8uLL);
                  v307 = vextq_s8(v298, v299, 0xAuLL);
                  v308 = vextq_s8(v298, v299, 0xCuLL);
                  v309 = vextq_s8(v298, v299, 0xEuLL);
                  v310 = *(&unk_277C395F8 + 2 * ((v294 >> 7) & 0xFFFFFFF8) + 1024);
                  *&v449[v289] = vuzp1q_s16(vrshlq_s32(vaddq_s32(vpaddq_s32(vpaddq_s32(vmlal_high_s16(vmull_s16(*v310.i8, *v298.i8), v310, v298), vmlal_high_s16(vmull_s16(*v310.i8, *v303.i8), v310, v303)), vpaddq_s32(vmlal_high_s16(vmull_s16(*v310.i8, *v304.i8), v310, v304), vmlal_high_s16(vmull_s16(*v310.i8, *v305.i8), v310, v305))), v30), v31), vrshlq_s32(vaddq_s32(vpaddq_s32(vpaddq_s32(vmlal_high_s16(vmull_s16(*v310.i8, *v306.i8), v310, v306), vmlal_high_s16(vmull_s16(*v310.i8, *v307.i8), v310, v307)), vpaddq_s32(vmlal_high_s16(vmull_s16(*v310.i8, *v308.i8), v310, v308), vmlal_high_s16(vmull_s16(*v310.i8, *v309.i8), v310, v309))), v30), v31));
                  v289 += 16;
                  v294 += v23;
                  ++v295;
                  ++v293;
                }

                while (v289 != 240);
              }

              else
              {
                v403 = 0;
                v404 = a2 + 2 * ((v53 >> 16) & 0x7FFFFFFF);
                v405 = v55;
                v406 = v432 + v61;
                v407 = v55 - 7;
                do
                {
                  if (v407 >= v26)
                  {
                    v408 = v26;
                  }

                  else
                  {
                    v408 = v407;
                  }

                  if (v405 < 7)
                  {
                    v408 = 0;
                  }

                  v409 = (v404 + 2 * v408 * a5);
                  v410 = *(&unk_277C395F8 + 2 * ((v406 >> 7) & 0xFFFFFFF8) + 1024);
                  *&v449[v403] = vuzp1q_s16(vrshlq_s32(vaddq_s32(vpaddq_s32(vpaddq_s32(vmlal_high_s16(vmull_s16(*v410.i8, *(v409 - 14)), v410, *&v409[-2].i16[1]), vmlal_high_s16(vmull_s16(*v410.i8, *(v409 - 12)), v410, *&v409[-2].u8[4])), vpaddq_s32(vmlal_high_s16(vmull_s16(*v410.i8, *(v409 - 10)), v410, *(&v409[-2].u32[1] + 2)), vmlal_high_s16(vmull_s16(*v410.i8, v409[-1]), v410, *v409[-1].i8))), v30), v31), vrshlq_s32(vaddq_s32(vpaddq_s32(vpaddq_s32(vmlal_high_s16(vmull_s16(*v410.i8, *(v409 - 6)), v410, *&v409[-1].i16[1]), vmlal_high_s16(vmull_s16(*v410.i8, *(v409 - 4)), v410, *&v409[-1].u8[4])), vpaddq_s32(vmlal_high_s16(vmull_s16(*v410.i8, *(v409 - 2)), v410, *(&v409[-1].u32[1] + 2)), vmlal_high_s16(vmull_s16(*v410.i8, *v409), v410, *v409->i8))), v30), v31));
                  v403 += 16;
                  v406 += v23;
                  ++v407;
                  ++v405;
                }

                while (v403 != 240);
              }
            }

            else
            {
              v241 = v60 + 512;
              if (a17)
              {
                v242 = *(&unk_277C399F8 + 2 * ((v241 >> 7) & 0xFFFFFFF8));
                v243 = *(&unk_277C399F8 + 2 * (((v61 + a17 + 512) >> 7) & 0xFFFFFFF8));
                v244 = *(&unk_277C399F8 + 2 * (((v429 + v61) >> 7) & 0xFFFFFFF8));
                v245 = *(&unk_277C399F8 + 2 * (((v428 + v61) >> 7) & 0xFFFFFFF8));
                v246 = *(&unk_277C399F8 + 2 * (((v425 + v61) >> 7) & 0xFFFFFFF8));
                v247 = *(&unk_277C399F8 + 2 * (((v424 + v61) >> 7) & 0xFFFFFFF8));
                v248 = *(&unk_277C399F8 + 2 * (((6 * a17 + 512 + v61) >> 7) & 0xFFFFFFF8));
                v249 = *(&unk_277C399F8 + 2 * (((7 * a17 + 512 + v61) >> 7) & 0xFFFFFFF8));
                if (v64)
                {
                  v250 = 0;
                  v251 = vdupq_n_s16(v62);
                  v252 = v54;
                  v253 = vdupq_n_s16(7 - (v54 - a3));
                  v254 = v55;
                  v255 = v55 - 7;
                  do
                  {
                    if (v255 >= v26)
                    {
                      v256 = v26;
                    }

                    else
                    {
                      v256 = v255;
                    }

                    if (v254 < 7)
                    {
                      v256 = 0;
                    }

                    v257 = (a2 + 2 * v256 * a5);
                    v258 = *&v257[v252 - 7];
                    v259 = *&v257[v252 + 1];
                    if (v54 <= 6)
                    {
                      v260 = vld1q_dup_s16(v257);
                      v258 = vbslq_s8(vcgtq_u16(xmmword_277BB7050, v251), v258, v260);
                      v259 = vbslq_s8(vcgtq_u16(xmmword_277BB7040, v251), v259, v260);
                    }

                    if ((v446 & 0x80000000) == 0)
                    {
                      v261 = (v440 + 2 * (v256 * a5 + a3));
                      v262 = vld1q_dup_s16(v261);
                      v258 = vbslq_s8(vcgtq_u16(v253, xmmword_277BB7050), v258, v262);
                      v259 = vbslq_s8(vcgtq_u16(v253, xmmword_277BB7040), v259, v262);
                    }

                    v263 = vextq_s8(v258, v259, 2uLL);
                    v264 = vextq_s8(v258, v259, 4uLL);
                    v265 = vextq_s8(v258, v259, 6uLL);
                    v266 = vextq_s8(v258, v259, 8uLL);
                    v267 = vextq_s8(v258, v259, 0xAuLL);
                    v268 = vextq_s8(v258, v259, 0xCuLL);
                    v269 = vextq_s8(v258, v259, 0xEuLL);
                    *&v449[v250] = vuzp1q_s16(vrshlq_s32(vaddq_s32(vpaddq_s32(vpaddq_s32(vmlal_high_s16(vmull_s16(*v242.i8, *v258.i8), v242, v258), vmlal_high_s16(vmull_s16(*v243.i8, *v263.i8), v243, v263)), vpaddq_s32(vmlal_high_s16(vmull_s16(*v244.i8, *v264.i8), v244, v264), vmlal_high_s16(vmull_s16(*v245.i8, *v265.i8), v245, v265))), v30), v31), vrshlq_s32(vaddq_s32(vpaddq_s32(vpaddq_s32(vmlal_high_s16(vmull_s16(*v246.i8, *v266.i8), v246, v266), vmlal_high_s16(vmull_s16(*v247.i8, *v267.i8), v247, v267)), vpaddq_s32(vmlal_high_s16(vmull_s16(*v248.i8, *v268.i8), v248, v268), vmlal_high_s16(vmull_s16(*v249.i8, *v269.i8), v249, v269))), v30), v31));
                    v250 += 16;
                    ++v255;
                    ++v254;
                  }

                  while (v250 != 240);
                }

                else
                {
                  v388 = 0;
                  v389 = a2 + 2 * ((v53 >> 16) & 0x7FFFFFFF);
                  v390 = v55;
                  v391 = v55 - 7;
                  do
                  {
                    if (v391 >= v26)
                    {
                      v392 = v26;
                    }

                    else
                    {
                      v392 = v391;
                    }

                    if (v390 < 7)
                    {
                      v392 = 0;
                    }

                    v393 = (v389 + 2 * v392 * a5);
                    *&v449[v388] = vuzp1q_s16(vrshlq_s32(vaddq_s32(vpaddq_s32(vpaddq_s32(vmlal_high_s16(vmull_s16(*v242.i8, *(v393 - 14)), v242, *&v393[-2].i16[1]), vmlal_high_s16(vmull_s16(*v243.i8, *(v393 - 12)), v243, *&v393[-2].u8[4])), vpaddq_s32(vmlal_high_s16(vmull_s16(*v244.i8, *(v393 - 10)), v244, *(&v393[-2].u32[1] + 2)), vmlal_high_s16(vmull_s16(*v245.i8, v393[-1]), v245, *v393[-1].i8))), v30), v31), vrshlq_s32(vaddq_s32(vpaddq_s32(vpaddq_s32(vmlal_high_s16(vmull_s16(*v246.i8, *(v393 - 6)), v246, *&v393[-1].i16[1]), vmlal_high_s16(vmull_s16(*v247.i8, *(v393 - 4)), v247, *&v393[-1].u8[4])), vpaddq_s32(vmlal_high_s16(vmull_s16(*v248.i8, *(v393 - 2)), v248, *(&v393[-1].u32[1] + 2)), vmlal_high_s16(vmull_s16(*v249.i8, *v393), v249, *v393->i8))), v30), v31));
                    v388 += 16;
                    ++v391;
                    ++v390;
                  }

                  while (v388 != 240);
                }
              }

              else
              {
                v360 = *(&unk_277C395F8 + 2 * ((v241 >> 7) & 0x1FFFFF8) + 1024);
                if (v64)
                {
                  v361 = 0;
                  v362 = vdupq_n_s16(v62);
                  v363 = v54;
                  v364 = vdupq_n_s16(7 - (v54 - a3));
                  v365 = v55;
                  v366 = v55 - 7;
                  do
                  {
                    if (v366 >= v26)
                    {
                      v367 = v26;
                    }

                    else
                    {
                      v367 = v366;
                    }

                    if (v365 < 7)
                    {
                      v367 = 0;
                    }

                    v368 = (a2 + 2 * v367 * a5);
                    v369 = *&v368[v363 - 7];
                    v370 = *&v368[v363 + 1];
                    if (v54 <= 6)
                    {
                      v371 = vld1q_dup_s16(v368);
                      v369 = vbslq_s8(vcgtq_u16(xmmword_277BB7050, v362), v369, v371);
                      v370 = vbslq_s8(vcgtq_u16(xmmword_277BB7040, v362), v370, v371);
                    }

                    if ((v446 & 0x80000000) == 0)
                    {
                      v372 = (v440 + 2 * (v367 * a5 + a3));
                      v373 = vld1q_dup_s16(v372);
                      v369 = vbslq_s8(vcgtq_u16(v364, xmmword_277BB7050), v369, v373);
                      v370 = vbslq_s8(vcgtq_u16(v364, xmmword_277BB7040), v370, v373);
                    }

                    v374 = vextq_s8(v369, v370, 2uLL);
                    v375 = vextq_s8(v369, v370, 4uLL);
                    v376 = vextq_s8(v369, v370, 6uLL);
                    v377 = vextq_s8(v369, v370, 8uLL);
                    v378 = vextq_s8(v369, v370, 0xAuLL);
                    v379 = vextq_s8(v369, v370, 0xCuLL);
                    v380 = vextq_s8(v369, v370, 0xEuLL);
                    *&v449[v361] = vuzp1q_s16(vrshlq_s32(vaddq_s32(vpaddq_s32(vpaddq_s32(vmlal_high_s16(vmull_s16(*v360.i8, *v369.i8), v360, v369), vmlal_high_s16(vmull_s16(*v360.i8, *v374.i8), v360, v374)), vpaddq_s32(vmlal_high_s16(vmull_s16(*v360.i8, *v375.i8), v360, v375), vmlal_high_s16(vmull_s16(*v360.i8, *v376.i8), v360, v376))), v30), v31), vrshlq_s32(vaddq_s32(vpaddq_s32(vpaddq_s32(vmlal_high_s16(vmull_s16(*v360.i8, *v377.i8), v360, v377), vmlal_high_s16(vmull_s16(*v360.i8, *v378.i8), v360, v378)), vpaddq_s32(vmlal_high_s16(vmull_s16(*v360.i8, *v379.i8), v360, v379), vmlal_high_s16(vmull_s16(*v360.i8, *v380.i8), v360, v380))), v30), v31));
                    v361 += 16;
                    ++v366;
                    ++v365;
                  }

                  while (v361 != 240);
                }

                else
                {
                  v418 = 0;
                  v419 = a2 + 2 * ((v53 >> 16) & 0x7FFFFFFF);
                  v420 = v55;
                  v421 = v55 - 7;
                  do
                  {
                    if (v421 >= v26)
                    {
                      v422 = v26;
                    }

                    else
                    {
                      v422 = v421;
                    }

                    if (v420 < 7)
                    {
                      v422 = 0;
                    }

                    v423 = (v419 + 2 * v422 * a5);
                    *&v449[v418] = vuzp1q_s16(vrshlq_s32(vaddq_s32(vpaddq_s32(vpaddq_s32(vmlal_high_s16(vmull_s16(*v360.i8, *(v423 - 14)), v360, *&v423[-2].i16[1]), vmlal_high_s16(vmull_s16(*v360.i8, *(v423 - 12)), v360, *&v423[-2].u8[4])), vpaddq_s32(vmlal_high_s16(vmull_s16(*v360.i8, *(v423 - 10)), v360, *(&v423[-2].u32[1] + 2)), vmlal_high_s16(vmull_s16(*v360.i8, v423[-1]), v360, *v423[-1].i8))), v30), v31), vrshlq_s32(vaddq_s32(vpaddq_s32(vpaddq_s32(vmlal_high_s16(vmull_s16(*v360.i8, *(v423 - 6)), v360, *&v423[-1].i16[1]), vmlal_high_s16(vmull_s16(*v360.i8, *(v423 - 4)), v360, *&v423[-1].u8[4])), vpaddq_s32(vmlal_high_s16(vmull_s16(*v360.i8, *(v423 - 2)), v360, *(&v423[-1].u32[1] + 2)), vmlal_high_s16(vmull_s16(*v360.i8, *v423), v360, *v423->i8))), v30), v31));
                    v418 += 16;
                    ++v421;
                    ++v420;
                  }

                  while (v418 != 240);
                }
              }
            }
          }
        }

        else
        {
          v56 = 0;
          v57 = v55;
          v58 = v55 - 7;
          do
          {
            if (v58 >= v26)
            {
              v59 = v26;
            }

            else
            {
              v59 = v58;
            }

            if (v57 < 7)
            {
              v59 = 0;
            }

            *&v449[v56] = vdupq_n_s16((*(a2 + 2 * v59 * a5) << v28) + v27);
            v56 += 16;
            ++v58;
            ++v57;
          }

          while (v56 != 240);
        }

        v91 = (v439 & 0xFFFC) - 4 * (a20 + a19);
        v92 = a6 + 2 * v443;
        if (a9 > 4)
        {
          v93 = 0;
          v94 = (v91 & 0xFFFFFFC0) + 512;
          result = v450;
          v95 = v441;
          v96 = v444;
          v97 = v434;
          while (1)
          {
            v98 = v94 >> 7;
            if (a19)
            {
              v99 = result[-4];
              v100 = result[-3];
              v101 = result[-2];
              v102 = result[-1];
              v103 = result[1];
              v104 = result[2];
              v105 = result[3];
              v106 = vtrn1q_s16(v99, v100);
              v107 = vtrn2q_s16(v99, v100);
              v108 = vtrn1q_s16(v101, v102);
              v109 = vtrn2q_s16(v101, v102);
              v110 = vtrn1q_s16(*result, v103);
              v111 = vtrn2q_s16(*result, v103);
              v112 = vtrn1q_s16(v104, v105);
              v113 = vtrn2q_s16(v104, v105);
              v114 = vtrn1q_s32(v106, v108);
              v115 = vtrn2q_s32(v106, v108);
              v116 = vtrn1q_s32(v107, v109);
              v117 = vtrn2q_s32(v107, v109);
              v118 = vtrn1q_s32(v110, v112);
              v119 = vtrn2q_s32(v110, v112);
              v120 = vtrn1q_s32(v111, v113);
              v121 = vtrn2q_s32(v111, v113);
              v122 = vzip2q_s64(v114, v118);
              v123 = vzip2q_s64(v116, v120);
              v124 = *(&unk_277C399F8 + 2 * (v98 & 0xFFFFFFF8));
              v125 = *(&unk_277C399F8 + 2 * (((a19 + v94) >> 7) & 0xFFFFFFF8));
              v126 = *(&unk_277C399F8 + 2 * (((v49 + v94) >> 7) & 0xFFFFFFF8));
              v127 = *(&unk_277C399F8 + 2 * (((v50 + v94) >> 7) & 0xFFFFFFF8));
              v128 = *(&unk_277C399F8 + 2 * (((4 * a19 + v94) >> 7) & 0xFFFFFFF8));
              v129 = *(&unk_277C399F8 + 2 * (((5 * a19 + v94) >> 7) & 0xFFFFFFF8));
              v130 = vzip2q_s64(v115, v119);
              v131 = vshr_n_s32(vadd_s32(vdup_n_s32(v94), v43), 7uLL);
              v132 = v131.i32[1] & 0xFFFFFFF8;
              v133 = *(&unk_277C399F8 + 2 * (v131.i32[0] & 0xFFFFFFF8));
              v134 = vzip2q_s64(v117, v121);
              v135 = vpaddq_s32(vpaddq_s32(vmlal_s16(vmull_s16(*v118.i8, *&vextq_s8(v124, v124, 8uLL)), *v114.i8, *v124.i8), vmlal_s16(vmull_s16(*v120.i8, *&vextq_s8(v125, v125, 8uLL)), *v116.i8, *v125.i8)), vpaddq_s32(vmlal_s16(vmull_s16(*v119.i8, *&vextq_s8(v126, v126, 8uLL)), *v115.i8, *v126.i8), vmlal_s16(vmull_s16(*v121.i8, *&vextq_s8(v127, v127, 8uLL)), *v117.i8, *v127.i8)));
              v136 = vpaddq_s32(vpaddq_s32(vmlal_high_s16(vmull_s16(*v122.i8, *v128.i8), v122, v128), vmlal_high_s16(vmull_s16(*v123.i8, *v129.i8), v123, v129)), vpaddq_s32(vmlal_high_s16(vmull_s16(*v130.i8, *v133.i8), v130, v133), vmlal_high_s16(vmull_s16(*v134.i8, *(&unk_277C399F8 + 2 * v132)), v134, *(&unk_277C399F8 + 2 * v132))));
            }

            else
            {
              v137 = *(&unk_277C395F8 + 2 * (v98 & 0xFFFFFFF8) + 1024);
              v139 = result[-4];
              v138 = result[-3];
              v140 = result[-2];
              v141 = result[-1];
              v142 = result[1];
              v143 = result[2];
              v144 = result[3];
              v135 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v138.i8, *v137.i8, 1), *v139.i8, *v137.i8, 0), *v140.i8, *v137.i8, 2), *v141.i8, *v137.i8, 3), *result->i8, v137, 4), *v142.i8, v137, 5), *v143.i8, v137, 6), *v144.i8, v137, 7);
              v136 = vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v138, *v137.i8, 1), v139, *v137.i8, 0), v140, *v137.i8, 2), v141, *v137.i8, 3), *result, v137, 4), v142, v137, 5), v143, v137, 6), v144, v137, 7);
            }

            v145 = vaddq_s32(v135, v34);
            v146 = vaddq_s32(v136, v34);
            v147 = (v92 + 2 * (v93 + v20) * a11);
            if (!v47)
            {
              break;
            }

            v148 = vrshrq_n_s32(v145, 7uLL);
            v149 = vrshrq_n_s32(v146, 7uLL);
            if (v40)
            {
              v150 = vmovl_u16(*v96);
              v151 = vmovl_high_u16(*v96->i8);
              if (v48)
              {
                v152 = vshrq_n_s32(vmlaq_s32(vmulq_s32(v148, v36), v35, v150), 4uLL);
                v153 = vshrq_n_s32(vmlaq_s32(vmulq_s32(v149, v36), v35, v151), 4uLL);
              }

              else
              {
                v152 = vhaddq_s32(v150, v148);
                v153 = vhaddq_s32(v151, v149);
              }

              v154 = vrshlq_s32(vsubq_s32(v152, v44), v38);
              v155 = vrshlq_s32(vsubq_s32(v153, v44), v38);
              goto LABEL_65;
            }

            *v96 = vqmovun_s32(v148);
            v156 = vqmovun_s32(v149);
            v147 = v96;
LABEL_66:
            ++v93;
            v96 = (v96 + v45);
            v147[1] = v156;
            v95 = (v95 + 2 * a11);
            v94 += a20;
            ++result;
            if (!--v97)
            {
              goto LABEL_82;
            }
          }

          v154 = vsubq_s32(vrshlq_s32(v145, v41), v46);
          v155 = vsubq_s32(vrshlq_s32(v146, v41), v46);
LABEL_65:
          v156 = vqmovun_s32(vminq_s32(v155, v39));
          *v95 = vqmovun_s32(vminq_s32(v154, v39));
          goto LABEL_66;
        }

        v157 = 0;
        v158 = (v91 & 0xFFFFFFC0) + 512;
        result = v450;
        v159 = v444;
        v160 = v434;
        do
        {
          v161 = v158 >> 7;
          if (a19)
          {
            v162.i64[0] = result[-4].i64[0];
            v162.i64[1] = result->i64[0];
            v163.i64[0] = result[-3].i64[0];
            v163.i64[1] = result[1].i64[0];
            v164.i64[0] = result[-2].i64[0];
            v164.i64[1] = result[2].i64[0];
            v165.i64[0] = result[-1].i64[0];
            v165.i64[1] = result[3].i64[0];
            v166 = vtrn1q_s16(v162, v163);
            v167 = vtrn2q_s16(v162, v163);
            v168 = vtrn1q_s16(v164, v165);
            v169 = vtrn2q_s16(v164, v165);
            v170 = vtrn1q_s32(v166, v168);
            v171 = vtrn2q_s32(v166, v168);
            v172 = vtrn1q_s32(v167, v169);
            v173 = *(&unk_277C399F8 + 2 * (v161 & 0xFFFFFFF8));
            v174 = *(&unk_277C399F8 + 2 * (((a19 + v158) >> 7) & 0xFFFFFFF8));
            v175 = *(&unk_277C399F8 + 2 * (((v49 + v158) >> 7) & 0xFFFFFFF8));
            v176 = *(&unk_277C399F8 + 2 * (((v50 + v158) >> 7) & 0xFFFFFFF8));
            v177 = vtrn2q_s32(v167, v169);
            v178 = vpaddq_s32(vpaddq_s32(vmlal_high_s16(vmull_s16(*v170.i8, *v173.i8), v170, v173), vmlal_high_s16(vmull_s16(*v172.i8, *v174.i8), v172, v174)), vpaddq_s32(vmlal_high_s16(vmull_s16(*v171.i8, *v175.i8), v171, v175), vmlal_high_s16(vmull_s16(*v177.i8, *v176.i8), v177, v176)));
          }

          else
          {
            v179 = *(&unk_277C395F8 + 2 * (v161 & 0xFFFFFFF8) + 1024);
            v178 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*result[-3].i8, *v179.i8, 1), *result[-4].i8, *v179.i8, 0), *result[-2].i8, *v179.i8, 2), *result[-1].i8, *v179.i8, 3), *result->i8, v179, 4), *result[1].i8, v179, 5), *result[2].i8, v179, 6), *result[3].i8, v179, 7);
          }

          v180 = vaddq_s32(v178, v34);
          if (v47)
          {
            v181 = vrshrq_n_s32(v180, 7uLL);
            if (!v40)
            {
              v185 = v159;
              goto LABEL_81;
            }

            v182 = vmovl_u16(*v159);
            if (v48)
            {
              v183 = vshrq_n_s32(vmlaq_s32(vmulq_s32(v181, v36), v35, v182), 4uLL);
            }

            else
            {
              v183 = vhaddq_s32(v182, v181);
            }

            v184 = vrshlq_s32(vaddq_s32(v183, v448), v38);
          }

          else
          {
            v184 = vaddq_s32(vrshlq_s32(v180, v41), v447);
          }

          v185 = (v92 + 2 * (v157 + v20) * a11);
          v181 = vminq_s32(v184, v39);
LABEL_81:
          ++v157;
          *v185 = vqmovun_s32(v181);
          v159 = (v159 + v45);
          v158 += a20;
          ++result;
          --v160;
        }

        while (v160);
LABEL_82:
        v51 = v443 + 8;
        v444 += 2;
        v441 += 2;
      }

      while (v443 + 8 < a9);
LABEL_243:
      v20 += 8;
      v431 = (v431 + v427);
      v430 += 2 * a11;
    }

    while (v20 < a10);
  }

  return result;
}

uint64_t sub_27797D04C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, __int16 a10, char a11, uint64_t a12)
{
  result = MEMORY[0x28223BE20]();
  v55 = v19;
  v57 = *MEMORY[0x277D85DE8];
  v20 = *(v18 + 8);
  v21 = (v16 + v20 - 1);
  v22 = v20 >> 1;
  v23 = (v20 >> 1) - 1;
  v24 = *(a12 + 20);
  if (v21 >= 1)
  {
    v25 = 0;
    v26 = *(v17 + 8);
    v27 = *v17 + 2 * (a9 & 0xF) * v26;
    result -= v23 * v13;
    v28 = 1 - (v26 >> 1);
    do
    {
      if (v15 >= 1)
      {
        v29 = 0;
        v30 = v28;
        do
        {
          v31 = 0x4000;
          if (v26)
          {
            v32 = v27;
            v33 = v26;
            v34 = (result + v30);
            do
            {
              v36 = *v32++;
              v35 = v36;
              v37 = *v34++;
              v31 += v37 * v35;
              --v33;
            }

            while (v33);
          }

          v56[v29 + v25 * v15] = (v31 + (1 << v24 >> 1)) >> v24;
          ++v29;
          ++v30;
        }

        while (v29 != v15);
      }

      ++v25;
      v28 += v13;
    }

    while (v25 != v21);
  }

  if (v16 >= 1)
  {
    v38 = 0;
    v39 = 14 - (v24 + *(a12 + 24));
    v40 = *v18 + 2 * (a11 & 0xF) * v20;
    v41 = 22 - v24;
    result = v16;
    v42 = &v56[v15 - v22 * v15 + v23 * v15];
    v43 = 2 * v15;
    do
    {
      if (v15 >= 1)
      {
        v44 = 0;
        v45 = v42;
        do
        {
          v46 = *(v18 + 8);
          v47 = 1 << v41;
          v48 = v40;
          v49 = v45;
          if (*(v18 + 8))
          {
            do
            {
              v50 = *v48++;
              v47 += *v49 * v50;
              v49 = (v49 + v43);
              --v46;
            }

            while (v46);
          }

          v51 = *(a12 + 24);
          v52 = (v47 + (1 << v51 >> 1)) >> v51;
          v53 = (-1 << (v41 - v51 - 1)) + (-1 << (v41 - v51));
          v54 = (((1 << v39 >> 1) + (v53 + v52)) >> v39) & ~(((1 << v39 >> 1) + (v53 + v52)) >> v39 >> 31);
          if (v54 >= 255)
          {
            LOBYTE(v54) = -1;
          }

          *(v14 + v38 * v55 + v44++) = v54;
          ++v45;
        }

        while (v44 != v15);
      }

      ++v38;
      v42 = (v42 + v43);
    }

    while (v38 != v16);
  }

  return result;
}

unsigned __int8 *sub_27797D2DC(unsigned __int8 *result, int a2, uint64_t a3, int a4, int a5, int a6, uint64_t a7, char a8)
{
  if (a6 >= 1)
  {
    v8 = 0;
    v9 = *(a7 + 8);
    v10 = *a7 + 2 * (a8 & 0xF) * v9;
    v11 = v9 >> 1;
    v12 = a2;
    v13 = a4;
    v14 = a6;
    v15 = &result[a2 - v11 * a2];
    do
    {
      if (a5 >= 1)
      {
        v16 = 0;
        result = v15;
        do
        {
          v17 = *(a7 + 8);
          if (*(a7 + 8))
          {
            v18 = 0;
            v19 = v10;
            v20 = result;
            do
            {
              v21 = *v19++;
              v18 += *v20 * v21;
              v20 += v12;
              --v17;
            }

            while (v17);
            LODWORD(v17) = (v18 + 64) >> 7;
          }

          v22 = v17 & ~(v17 >> 31);
          if (v22 >= 255)
          {
            LOBYTE(v22) = -1;
          }

          *(a3 + v8 * v13 + v16++) = v22;
          ++result;
        }

        while (v16 != a5);
      }

      ++v8;
      v15 += v12;
    }

    while (v8 != v14);
  }

  return result;
}

uint64_t sub_27797D3A0(uint64_t result, int a2, uint64_t a3, int a4, int a5, int a6, uint64_t a7, char a8, uint64_t a9)
{
  if (a6 >= 1)
  {
    v9 = 0;
    v10 = *(a7 + 8);
    v11 = *a7 + 2 * (a8 & 0xF) * v10;
    v12 = 7 - *(a9 + 20);
    v13 = 1 << (7 - *(a9 + 20)) >> 1;
    v14 = a6;
    v15 = 1 - (v10 >> 1);
    do
    {
      if (a5 >= 1)
      {
        v16 = 0;
        v17 = v15;
        do
        {
          v18 = *(a7 + 8);
          if (*(a7 + 8))
          {
            v19 = 0;
            v20 = (result + v17);
            v21 = v11;
            do
            {
              v23 = *v21++;
              v22 = v23;
              v24 = *v20++;
              v19 += v24 * v22;
              --v18;
            }

            while (v18);
          }

          else
          {
            v19 = 0;
          }

          v25 = (((v19 + (1 << *(a9 + 20) >> 1)) >> *(a9 + 20)) + v13) >> v12;
          v26 = v25 & ~(v25 >> 31);
          if (v26 >= 255)
          {
            LOBYTE(v26) = -1;
          }

          *(a3 + v9 * a4 + v16++) = v26;
          ++v17;
        }

        while (v16 != a5);
      }

      ++v9;
      v15 += a2;
    }

    while (v9 != v14);
  }

  return result;
}

unint64_t sub_27797D4A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, int a11, int a12, uint64_t a13)
{
  result = MEMORY[0x28223BE20]();
  v58 = v19;
  v61 = *MEMORY[0x277D85DE8];
  v59 = v20;
  v21 = *(v18 + 8);
  v22 = (v21 + ((a11 + (v20 - 1) * a12) >> 10));
  v23 = *(a13 + 20);
  v24 = (v21 >> 1) - 1;
  if (v22 >= 1)
  {
    v25 = 0;
    v26 = result - (v24 * v14);
    result = *(v17 + 4);
    do
    {
      if (v16 >= 1)
      {
        v27 = 0;
        v28 = *v17;
        v29 = a9;
        do
        {
          if (result)
          {
            v30 = (v28 + 2 * result * ((v29 >> 6) & 0xF));
            v31 = 1 - (result >> 1) + (v29 >> 10);
            v32 = 0x4000;
            v33 = result;
            do
            {
              v34 = *v30++;
              v32 += *(v26 + v31++) * v34;
              --v33;
            }

            while (v33);
          }

          else
          {
            v32 = 0x4000;
          }

          v60[v27 + v25 * v16] = (v32 + (1 << v23 >> 1)) >> v23;
          ++v27;
          v29 += a10;
        }

        while (v27 != v16);
      }

      v26 += v14;
      ++v25;
    }

    while (v25 != v22);
  }

  if (v16 >= 1)
  {
    v35 = 0;
    v57 = *(a13 + 8);
    v36 = 14 - (v23 + *(a13 + 24));
    v37 = 22 - v23;
    v38 = &v60[v24 * v16];
    result = (1 << v36 >> 1);
    v39 = v16 - (v21 >> 1) * v16;
    v40 = *(a13 + 16);
    v41 = 2 * v39;
    while (v59 < 1)
    {
LABEL_31:
      ++v38;
      if (++v35 == v16)
      {
        return result;
      }
    }

    v42 = 0;
    v43 = a11;
    v44 = v57 + 2 * v35;
    while (1)
    {
      v45 = *(v18 + 8);
      v46 = 1 << v37;
      if (*(v18 + 8))
      {
        v47 = v41 + 2 * (v43 >> 10) * v16;
        v48 = (*v18 + 2 * v45 * ((v43 >> 6) & 0xF));
        v46 = 1 << v37;
        do
        {
          v49 = *v48++;
          v46 += *(v38 + v47) * v49;
          v47 += 2 * v16;
          --v45;
        }

        while (v45);
      }

      v50 = *(a13 + 24);
      v51 = (v46 + (1 << v50 >> 1)) >> v50;
      if (!*(a13 + 32))
      {
        break;
      }

      v52 = v42 * v40;
      if (*a13)
      {
        v53 = *(v44 + 2 * v52);
        if (*(a13 + 36))
        {
          v54 = (*(a13 + 40) * v53 + *(a13 + 44) * ((v46 + (1 << v50 >> 1)) >> v50)) >> 4;
        }

        else
        {
          v54 = (v53 + v51) >> 1;
        }

        v55 = (-1 << (v37 - v50)) + result + (-1 << (v37 - v50 - 1)) + v54;
        goto LABEL_27;
      }

      *(v44 + 2 * v52) = v51;
LABEL_30:
      ++v42;
      v43 += a12;
      if (v42 == v59)
      {
        goto LABEL_31;
      }
    }

    v55 = (-1 << (v37 - v50)) + result + (-1 << (v37 - v50 - 1)) + v51;
LABEL_27:
    v56 = (v55 >> v36) & ~(v55 >> v36 >> 31);
    if (v56 >= 255)
    {
      LOBYTE(v56) = -1;
    }

    *(v58 + v35 + v42 * v15) = v56;
    goto LABEL_30;
  }

  return result;
}

uint8x8_t *sub_27797D7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, int a11, int a12, int a13, uint64_t a14)
{
  result = MEMORY[0x28223BE20]();
  v109 = *MEMORY[0x277D85DE8];
  if (*(v29 + 8) == 2 || *(v20 + 8) == 2)
  {
    if (a9)
    {
      v30 = a11 == 0;
    }

    else
    {
      v30 = 1;
    }

    if (!v30)
    {
      if ((v19 & 0x80000000) == 0)
      {
        v33 = 0;
        v34 = v108;
        do
        {
          if (v18 >= 1)
          {
            v35 = 0;
            v36 = result->u8[0];
            do
            {
              v37 = result->u8[v35 + 1];
              v34[v35] = v37 + v36 + 256;
              v36 = v37;
              ++v35;
            }

            while (v18 != v35);
          }

          result = (result + v15);
          v34 += v18;
          v30 = v33++ == v19;
        }

        while (!v30);
        if (v19)
        {
          v38 = 0;
          v39 = v108;
          v40 = &v108[v18];
          v41 = 2 * v18;
          do
          {
            if (v18 >= 1)
            {
              for (i = 0; i != v18; *(v16 + i++) = v44)
              {
                v43 = ((v39[i] + v40[i]) << 14) - 8355840;
                v44 = (v43 >> 16) & ~(v43 >> 31);
                if (v44 >= 255)
                {
                  LOBYTE(v44) = -1;
                }
              }
            }

            v16 = (v16 + v17);
            ++v38;
            v40 = (v40 + v41);
            v39 = (v39 + v41);
          }

          while (v38 != v19);
        }
      }

      return result;
    }

    if (a9)
    {
      if (v19 >= 1)
      {
        for (j = 0; j != v19; ++j)
        {
          if (v18 >= 1)
          {
            for (k = 0; k != v18; ++k)
            {
              *(v16 + k) = (result->u8[k] + result->u8[k + 1] + 1) >> 1;
            }
          }

          result = (result + v15);
          v16 = (v16 + v17);
        }
      }

      return result;
    }

    if (a11)
    {
      if (v19 >= 1)
      {
        v45 = 0;
        v46 = result + v15;
        do
        {
          if (v18 >= 1)
          {
            for (m = 0; m != v18; ++m)
            {
              *(v16 + m) = (result->u8[m] + v46[m] + 1) >> 1;
            }
          }

          result = (result + v15);
          v16 = (v16 + v17);
          ++v45;
          v46 += v15;
        }

        while (v45 != v19);
      }

      return result;
    }
  }

  if (a13)
  {
    v48 = off_280AB5FB0;

    return v48(result);
  }

  if (*(a14 + 32))
  {
    if (a9 | a11)
    {
      if (a9 && !a11)
      {
        v49 = off_280AB5FD8;
LABEL_53:

        return v49(result);
      }

      if (!a9 && a11)
      {
        v63 = *v20;
        v64 = *(v20 + 8);

        return sub_277A725C8(result, v15, v16, v17, v18, v19, v63, v64, v21, *v22.i64, *v23.i64, *v24.i64, *v25.i64, *v26.i64, *v27.i8, v28, a11, a14);
      }

      v90 = off_280AB5FD0;
      goto LABEL_90;
    }

    if (*a14)
    {
      if (*(a14 + 36))
      {

        return sub_277A70F14(result, v15, v16, v17, v18, v19, a14, *&v21, *v22.i8, *v23.i64, *v24.i64, v25, v26, v27);
      }

      else
      {
        v50 = *(a14 + 8);
        v51 = *(a14 + 16);
        if (v18 == 4)
        {
          v52 = v17;
          v53 = 2 * v17;
          v54 = 4 * v17;
          v55 = v17 + v53;
          v56.i64[0] = 0x1800180018001800;
          v56.i64[1] = 0x1800180018001800;
          v57.i64[0] = 0xE800E800E800E800;
          v57.i64[1] = 0xE800E800E800E800;
          do
          {
            v58.i64[0] = vmull_u8(*result, 0x1010101010101010).u64[0];
            v59.i64[0] = vmull_u8(*(result + 2 * v15), 0x1010101010101010).u64[0];
            v60.i64[0] = *(v50 + 4 * v51);
            v61.i64[0] = *v50;
            v61.i64[1] = *(v50 + 2 * v51);
            v58.i64[1] = vmull_u8(*(result + v15), 0x1010101010101010).u64[0];
            v60.i64[1] = *(v50 + 6 * v51);
            v59.i64[1] = vmull_u8(*(result + 3 * v15), 0x1010101010101010).u64[0];
            *v58.i8 = vqrshrun_n_s16(vaddq_s16(vhaddq_u16(v61, vaddq_s16(v58, v56)), v57), 4uLL);
            v62 = vqrshrun_n_s16(vaddq_s16(vhaddq_u16(v60, vaddq_s16(v59, v56)), v57), 4uLL);
            *v16 = v58.i32[0];
            *(v16 + v52) = v58.i32[1];
            *(v16 + v53) = v62.i32[0];
            *(v16 + v55) = v62.i32[1];
            result = (result + 4 * v15);
            v16 = (v16 + v54);
            v50 += v51;
            v19 -= 4;
          }

          while (v19);
        }

        else
        {
          v69 = 4 * v15;
          v70 = 4 * v17;
          v71 = result + 3 * v15;
          v72 = result + 2 * v15;
          v73 = result + v15;
          v74 = v50 + 6 * v51;
          v75 = 8 * v51;
          v76 = v50 + 4 * v51;
          v77 = v50 + 2 * v51;
          v78 = v16 + 3 * v17;
          v79 = v16 + 2 * v17;
          v80 = v16 + v17;
          v81.i64[0] = 0xE800E800E800E800;
          v81.i64[1] = 0xE800E800E800E800;
          do
          {
            v82 = 0;
            v83 = 0;
            do
            {
              v84.i64[0] = 0x1800180018001800;
              v84.i64[1] = 0x1800180018001800;
              v85.i64[0] = 0x1800180018001800;
              v85.i64[1] = 0x1800180018001800;
              v86.i64[0] = 0x1800180018001800;
              v86.i64[1] = 0x1800180018001800;
              v87.i64[0] = 0x1800180018001800;
              v87.i64[1] = 0x1800180018001800;
              v88 = vaddq_s16(vhaddq_u16(*&v74[v82], vmlal_u8(v87, *&v71[v83], 0x1010101010101010)), v81);
              *v85.i8 = vqrshrun_n_s16(vaddq_s16(vhaddq_u16(*&v77[v82], vmlal_u8(v85, *&v73[v83], 0x1010101010101010)), v81), 4uLL);
              *v86.i8 = vqrshrun_n_s16(vaddq_s16(vhaddq_u16(*&v76[v82], vmlal_u8(v86, *&v72[v83], 0x1010101010101010)), v81), 4uLL);
              *&v16[v83 / 4] = vqrshrun_n_s16(vaddq_s16(vhaddq_u16(*&v50[v82 / 8], vmlal_u8(v84, result[v83 / 8], 0x1010101010101010)), v81), 4uLL);
              *&v80[v83] = v85.i64[0];
              *&v79[v83] = v86.i64[0];
              *&v78[v83] = vqrshrun_n_s16(v88, 4uLL);
              v83 += 8;
              v82 += 16;
            }

            while (v18 != v83);
            result = (result + v69);
            v16 = (v16 + v70);
            v71 += v69;
            v72 += v69;
            v73 += v69;
            v74 += v75;
            v76 += v75;
            v77 += v75;
            v50 = (v50 + v75);
            v78 += v70;
            v79 += v70;
            v80 += v70;
            v19 -= 4;
          }

          while (v19);
        }
      }
    }

    else
    {
      v65 = *(a14 + 8);
      v66 = *(a14 + 16);
      v67 = 4 * v66;
      if (v18 == 4)
      {
        do
        {
          v68 = *(result + 3 * v15);
          v26.i64[0] = 0x1800180018001800;
          v26 = vmlal_u8(v26, *result, 0x1010101010101010);
          v22.i64[0] = 0x1800180018001800;
          v22 = vmlal_u8(v22, *(result + v15), 0x1010101010101010);
          v23.i64[0] = 0x1800180018001800;
          v23 = vmlal_u8(v23, *(result + 2 * v15), 0x1010101010101010);
          v24.i64[0] = 0x1800180018001800;
          *v65 = v26.i64[0];
          *(v65 + 2 * v66) = v22.i64[0];
          *(v65 + 4 * v66) = v23.i64[0];
          v24 = vmlal_u8(v24, v68, 0x1010101010101010);
          *(v65 + 6 * v66) = v24.i64[0];
          result = (result + 4 * v15);
          v65 = (v65 + 2 * v67);
          v19 -= 4;
        }

        while (v19);
      }

      else
      {
        v91 = 4 * v15;
        v92 = result + 3 * v15;
        v93 = result + 2 * v15;
        v94 = result + v15;
        v95 = v65 + 6 * v66;
        v96 = 2 * v67;
        v97 = v65 + 4 * v66;
        v98 = v65 + 2 * v66;
        do
        {
          v99 = 0;
          v100 = 0;
          do
          {
            v101 = *&v92[v100];
            v102.i64[0] = 0x1800180018001800;
            v102.i64[1] = 0x1800180018001800;
            v103.i64[0] = 0x1800180018001800;
            v103.i64[1] = 0x1800180018001800;
            v104 = vmlal_u8(v103, *&v94[v100], 0x1010101010101010);
            v105.i64[0] = 0x1800180018001800;
            v105.i64[1] = 0x1800180018001800;
            v106 = vmlal_u8(v105, *&v93[v100], 0x1010101010101010);
            v107.i64[0] = 0x1800180018001800;
            v107.i64[1] = 0x1800180018001800;
            *&v65[v99 / 8] = vmlal_u8(v102, result[v100 / 8], 0x1010101010101010);
            *&v98[v99] = v104;
            *&v97[v99] = v106;
            *&v95[v99] = vmlal_u8(v107, v101, 0x1010101010101010);
            v100 += 8;
            v99 += 16;
          }

          while (v18 != v100);
          result = (result + v91);
          v92 += v91;
          v93 += v91;
          v94 += v91;
          v95 += v96;
          v97 += v96;
          v98 += v96;
          v65 = (v65 + v96);
          v19 -= 4;
        }

        while (v19);
      }
    }
  }

  else if (a9 | a11)
  {
    if (a9 && !a11)
    {
      v49 = qword_280AB5FC0;
      goto LABEL_53;
    }

    if (a9 || !a11)
    {
      v90 = qword_280AB5FB8;
LABEL_90:

      return v90(result);
    }

    v89 = off_280AB5FC8;

    return v89(result);
  }

  else
  {

    return sub_277BB3A8C(result, v15, v16, v17, v18, v19);
  }

  return result;
}

void sub_27797E014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, unsigned int a10, int a11, int a12, int a13, uint64_t a14, int a15)
{
  v15 = MEMORY[0x28223BE20]();
  v27 = v26;
  v28 = v21;
  v29 = v20;
  v30 = v19;
  v358 = *MEMORY[0x277D85DE8];
  v31 = (2 * v15);
  v32 = (2 * v17);
  v33 = *(v21 + 8);
  if (v33 != 2 && *(v27 + 8) != 2)
  {
    goto LABEL_79;
  }

  if (a9 && a11)
  {
    if ((v20 & 0x80000000) == 0)
    {
      v34 = 0;
      v36 = *(a14 + 20);
      v35 = *(a14 + 24);
      v37 = 14 - (v36 + v35);
      v38 = 2 * v16;
      v39 = v357;
      do
      {
        if (v30 >= 1)
        {
          v40 = 0;
          v41 = v31->u16[0];
          do
          {
            v42 = v31->u16[v40 + 1];
            *&v39[v40 * 2] = ((1 << (a15 + 6)) + (1 << v36 >> 1) + ((v42 + v41) << 6)) >> v36;
            ++v40;
            v41 = v42;
          }

          while (v30 != v40);
        }

        v31 = (v31 + v38);
        v39 += 2 * v30;
      }

      while (v34++ != v20);
      if (v20)
      {
        v44 = 0;
        v45 = a15 - v36 + 14;
        v46 = (1 << v45) + (1 << v35 >> 1);
        v47 = (-1 << (v45 - v35 - 1)) + (-1 << (v45 - v35)) + (1 << v37 >> 1);
        v48 = 2 * v30;
        v49 = v357;
        do
        {
          if (v30 >= 1)
          {
            v50 = 0;
            do
            {
              v51 = (v47 + ((v46 + ((*&v49[v48 + v50] + *&v49[v50]) << 6)) >> v35)) >> v37;
              if (v51 >= 0x3FF)
              {
                v52 = 1023;
              }

              else
              {
                v52 = (v47 + ((v46 + ((*&v49[v48 + v50] + *&v49[v50]) << 6)) >> v35)) >> v37;
              }

              if (v51 >= 0xFFF)
              {
                LOWORD(v53) = 4095;
              }

              else
              {
                v53 = (v47 + ((v46 + ((*&v49[v48 + v50] + *&v49[v50]) << 6)) >> v35)) >> v37;
              }

              if (v51 >= 0xFF)
              {
                LOWORD(v54) = 255;
              }

              else
              {
                v54 = (v47 + ((v46 + ((*&v49[v48 + v50] + *&v49[v50]) << 6)) >> v35)) >> v37;
              }

              if (a15 != 12)
              {
                LOWORD(v53) = v54;
              }

              if (a15 != 10)
              {
                v52 = v53;
              }

              if ((v51 & 0x80000000) == 0)
              {
                v55 = v52;
              }

              else
              {
                v55 = 0;
              }

              v32->i16[v50 / 2] = v55;
              v50 += 2;
            }

            while (v48 != v50);
          }

          ++v44;
          v32 = (v32 + 2 * v18);
          v49 += 2 * v30;
        }

        while (v44 != v29);
      }
    }

    return;
  }

  if (a9)
  {
    if (v20 >= 1)
    {
      v56 = 0;
      v57 = *(a14 + 20);
      v61 = 2 * v18;
      v62 = 2 * v16;
      do
      {
        if (v30 >= 1)
        {
          for (i = 0; i != v30; ++i)
          {
            v58 = 7 - v57;
            v59 = 1 << v57 >> 1;
            v60 = 1 << (7 - v57) >> 1;
            v64 = (((v59 + ((v31->u16[i + 1] + v31->u16[i]) << 6)) >> v57) + v60) >> (7 - v57);
            if (v64 >= 0x3FF)
            {
              v65 = 1023;
            }

            else
            {
              v65 = (((v59 + ((v31->u16[i + 1] + v31->u16[i]) << 6)) >> v57) + v60) >> (7 - v57);
            }

            if (v64 >= 0xFFF)
            {
              LOWORD(v66) = 4095;
            }

            else
            {
              v66 = (((v59 + ((v31->u16[i + 1] + v31->u16[i]) << 6)) >> v57) + v60) >> v58;
            }

            if (v64 >= 0xFF)
            {
              LOWORD(v67) = 255;
            }

            else
            {
              v67 = (((v59 + ((v31->u16[i + 1] + v31->u16[i]) << 6)) >> v57) + v60) >> v58;
            }

            if (a15 != 12)
            {
              LOWORD(v66) = v67;
            }

            if (a15 != 10)
            {
              v65 = v66;
            }

            if ((v64 & 0x80000000) == 0)
            {
              v68 = v65;
            }

            else
            {
              v68 = 0;
            }

            v32->i16[i] = v68;
          }
        }

        ++v56;
        v32 = (v32 + v61);
        v31 = (v31 + v62);
      }

      while (v56 != v29);
    }

    return;
  }

  if (a11)
  {
    if (v20 >= 1)
    {
      v69 = 0;
      v70 = 2 * v16;
      v71 = v31 + v70;
      do
      {
        if (v19 >= 1)
        {
          v72 = 0;
          do
          {
            v73 = (v31->u16[v72] + *&v71[v72 * 2] + 1) >> 1;
            if (v73 >= 0x3FF)
            {
              v74 = 1023;
            }

            else
            {
              v74 = (v31->u16[v72] + *&v71[v72 * 2] + 1) >> 1;
            }

            if (v73 >= 0xFFF)
            {
              LOWORD(v75) = 4095;
            }

            else
            {
              v75 = (v31->u16[v72] + *&v71[v72 * 2] + 1) >> 1;
            }

            if (v73 >= 0xFF)
            {
              LOWORD(v73) = 255;
            }

            if (a15 == 12)
            {
              LOWORD(v73) = v75;
            }

            if (a15 == 10)
            {
              LOWORD(v73) = v74;
            }

            v32->i16[v72++] = v73;
          }

          while (v19 != v72);
        }

        ++v69;
        v32 = (v32 + 2 * v18);
        v71 += v70;
        v31 = (v31 + v70);
      }

      while (v69 != v20);
    }
  }

  else
  {
LABEL_79:
    if (a13)
    {
      v356 = v18;
      v355 = v16;
      v76 = malloc_type_malloc(0x11817uLL, 0x5F484EBFuLL);
      if (v76)
      {
        *(((v76 + 23) & 0xFFFFFFFFFFFFFFF0) - 8) = v76;
        if (((v76 + 23) & 0xFFFFFFFFFFFFFFF0) != 0)
        {
          v354 = (v76 + 23) & 0xFFFFFFFFFFFFFFF0;
          v77 = malloc_type_malloc(0x11817uLL, 0x5F484EBFuLL);
          if (v77)
          {
            *(((v77 + 23) & 0xFFFFFFFFFFFFFFF0) - 8) = v77;
            if (((v77 + 23) & 0xFFFFFFFFFFFFFFF0) != 0)
            {
              v78 = (v77 + 23) & 0xFFFFFFFFFFFFFFF0;
              v79 = a11;
              v80 = a11 + (v29 - 1) * a12;
              v81 = *(v27 + 8);
              v82 = *(a14 + 20);
              v352 = *(a14 + 16);
              v83 = *(a14 + 24);
              v84 = *(v28 + 8);
              v85 = a15 - v82 + 14;
              v353 = v85 - v83 - 1;
              v86 = *(a14 + 8);
              v87 = ((v81 >> 1) - 1) * v355;
              v88 = vdupq_n_s32(-v82);
              v89 = vdupq_n_s32(1 << (a15 + 6));
              v90 = vdupq_n_s32(a10);
              if (v30 >= 5)
              {
                v158 = v81 + (v80 >> 10);
                v159 = v31 + 2 * (1 - (v84 >> 1)) + -2 * v87;
                v160 = vmulq_s32(v90, xmmword_277BB7060);
                v161.i64[0] = 0xF0000000FLL;
                v161.i64[1] = 0xF0000000FLL;
                v162 = v354;
                do
                {
                  v163 = vdupq_n_s64(v159);
                  v164 = v30 + 4;
                  v165 = v162;
                  v166 = a9;
                  do
                  {
                    v167 = vaddq_s32(vdupq_n_s32(v166), v160);
                    v168 = *&vshrq_n_u32(v167, 9uLL) & __PAIR128__(0xFFFFFFFEFFFFFFFELL, 0xFFFFFFFEFFFFFFFELL);
                    v169 = vaddw_u32(v163, *&v168);
                    v170 = vaddw_high_u32(v163, v168);
                    v171 = vmovn_s32(vandq_s8(vshrq_n_u32(v167, 6uLL), v161));
                    v172 = *v169.i64[0];
                    v173 = *v170.i64[0];
                    v174 = (v28 + 8);
                    *v170.i8 = vld1_dup_s16(v174);
                    v175 = *v169.i64[1];
                    v176 = vmull_u16(v171, *v170.i8);
                    v177 = *v170.i64[1];
                    v178 = 2 * v176.u32[1];
                    v179 = 2 * v176.u32[2];
                    v180 = 2 * v176.u32[3];
                    v181 = *(*v28 + 2 * v176.u32[0]);
                    v182 = *(*v28 + v178);
                    v183 = *(*v28 + v179);
                    v184 = *(*v28 + v180);
                    v185 = vextq_s8(v181, v181, 8uLL).u64[0];
                    v186 = vextq_s8(v182, v182, 8uLL).u64[0];
                    v187 = vextq_s8(v183, v183, 8uLL).u64[0];
                    v188 = vextq_s8(v184, v184, 8uLL).u64[0];
                    v189 = vtrn1_s16(*v181.i8, *v182.i8);
                    *v181.i8 = vtrn2_s16(*v181.i8, *v182.i8);
                    *v182.i8 = vtrn1_s16(*v183.i8, *v184.i8);
                    *v183.i8 = vtrn2_s16(*v183.i8, *v184.i8);
                    *v184.i8 = vzip1_s32(v189, *v182.i8);
                    *v182.i8 = vzip2_s32(v189, *v182.i8);
                    v190 = vzip1_s32(*v181.i8, *v183.i8);
                    *v181.i8 = vzip2_s32(*v181.i8, *v183.i8);
                    *v183.i8 = vtrn1_s16(*v172.i8, *v175.i8);
                    v191 = vtrn1_s16(v185, v186);
                    v192 = vtrn2_s16(*v172.i8, *v175.i8);
                    v193 = vtrn1_s16(*v173.i8, *v177.i8);
                    v194 = vzip1_s32(*v183.i8, v193);
                    *v183.i8 = vzip2_s32(*v183.i8, v193);
                    v195 = vtrn2_s16(*v173.i8, *v177.i8);
                    v196 = vtrn2_s16(v185, v186);
                    v197 = vzip1_s32(v192, v195);
                    v198 = vzip2_s32(v192, v195);
                    v199 = vtrn1_s16(v187, v188);
                    v172.i64[0] = vextq_s8(v172, v172, 8uLL).u64[0];
                    v175.i64[0] = vextq_s8(v175, v175, 8uLL).u64[0];
                    v200 = vtrn2_s16(v187, v188);
                    v201 = vtrn1_s16(*v172.i8, *v175.i8);
                    *v172.i8 = vtrn2_s16(*v172.i8, *v175.i8);
                    *v175.i8 = vzip1_s32(v191, v199);
                    v173.i64[0] = vextq_s8(v173, v173, 8uLL).u64[0];
                    v177.i64[0] = vextq_s8(v177, v177, 8uLL).u64[0];
                    v202 = vzip2_s32(v191, v199);
                    v203 = vtrn1_s16(*v173.i8, *v177.i8);
                    *v173.i8 = vtrn2_s16(*v173.i8, *v177.i8);
                    *v165++ = vqmovun_s32(vqrshlq_s32(vmlal_s16(vmlal_s16(vmlal_s16(vmlal_s16(vmlal_s16(vmlal_s16(vmlal_s16(vmlal_s16(v89, v194, *v184.i8), v197, v190), *v183.i8, *v182.i8), v198, *v181.i8), vzip1_s32(v201, v203), *v175.i8), vzip1_s32(*v172.i8, *v173.i8), vzip1_s32(v196, v200)), vzip2_s32(v201, v203), v202), vzip2_s32(*v172.i8, *v173.i8), vzip2_s32(v196, v200)), v88));
                    v166 += 4 * a10;
                    v164 -= 4;
                  }

                  while (v164 > 4);
                  v159 += 2 * v355;
                  v162 += 32;
                  v204 = __OFSUB__(v158--, 1);
                  v79 = a11;
                }

                while (!((v158 < 0) ^ v204 | (v158 == 0)));
              }

              else
              {
                v91 = vmlaq_s32(vdupq_n_s32(a9), v90, xmmword_277BB7060);
                v92 = vshrq_n_u32(v91, 9uLL);
                v93.i64[0] = v92.i32[0] & 0xFFFFFFFE;
                v93.i64[1] = v92.i32[1] & 0xFFFFFFFE;
                v94 = v93;
                v93.i64[0] = v92.i32[2] & 0xFFFFFFFE;
                v93.i64[1] = v92.i32[3] & 0xFFFFFFFE;
                v95 = v93;
                v96.i64[0] = 0xF0000000FLL;
                v96.i64[1] = 0xF0000000FLL;
                v97 = vandq_s8(vshrq_n_u32(v91, 6uLL), v96);
                v98 = (v80 >> 10) + v81 + 1;
                v99 = v31 + -2 * v87 + -2 * (v84 >> 1) + 2;
                v100 = v354;
                do
                {
                  v101 = vdupq_n_s64(v99);
                  v102 = vaddq_s64(v101, v94);
                  v103 = vaddq_s64(v101, v95);
                  v104 = *v102.i64[0];
                  v105 = *v102.i64[1];
                  v106 = v103.i64[1];
                  v107 = *v103.i64[0];
                  v108 = *v106;
                  v109 = (v28 + 8);
                  v110 = vld1_dup_s16(v109);
                  v111 = vmulq_s32(v97, vmovl_u16(v110));
                  v112 = 2 * v111.u32[1];
                  v113 = 2 * v111.u32[2];
                  v114 = 2 * v111.u32[3];
                  v115 = *(*v28 + 2 * v111.u32[0]);
                  v116 = *(*v28 + v112);
                  v117 = *(*v28 + v113);
                  v118 = *(*v28 + v114);
                  v119 = vextq_s8(v115, v115, 8uLL).u64[0];
                  v120 = vextq_s8(v116, v116, 8uLL).u64[0];
                  v121 = vextq_s8(v117, v117, 8uLL).u64[0];
                  v122 = vextq_s8(v118, v118, 8uLL).u64[0];
                  v123 = vtrn1_s16(*v115.i8, *v116.i8);
                  *v115.i8 = vtrn2_s16(*v115.i8, *v116.i8);
                  *v116.i8 = vtrn1_s16(*v117.i8, *v118.i8);
                  *v117.i8 = vtrn2_s16(*v117.i8, *v118.i8);
                  *v118.i8 = vzip1_s32(v123, *v116.i8);
                  *v116.i8 = vzip2_s32(v123, *v116.i8);
                  v124 = vzip1_s32(*v115.i8, *v117.i8);
                  *v115.i8 = vzip2_s32(*v115.i8, *v117.i8);
                  *v117.i8 = vtrn1_s16(v119, v120);
                  v125 = vtrn2_s16(v119, v120);
                  v126 = vtrn1_s16(v121, v122);
                  v127 = vtrn2_s16(v121, v122);
                  v128 = vzip1_s32(*v117.i8, v126);
                  *v117.i8 = vzip2_s32(*v117.i8, v126);
                  v129 = vzip1_s32(v125, v127);
                  v130 = vzip2_s32(v125, v127);
                  v131 = vextq_s8(v104, v104, 8uLL).u64[0];
                  v132 = vextq_s8(v105, v105, 8uLL).u64[0];
                  v133 = vextq_s8(v107, v107, 8uLL).u64[0];
                  v134 = vextq_s8(v108, v108, 8uLL).u64[0];
                  v135 = vtrn1_s16(*v104.i8, *v105.i8);
                  *v104.i8 = vtrn2_s16(*v104.i8, *v105.i8);
                  *v105.i8 = vtrn1_s16(*v107.i8, *v108.i8);
                  *v107.i8 = vtrn2_s16(*v107.i8, *v108.i8);
                  *v108.i8 = vzip1_s32(v135, *v105.i8);
                  *v105.i8 = vzip2_s32(v135, *v105.i8);
                  v136 = vzip1_s32(*v104.i8, *v107.i8);
                  *v104.i8 = vzip2_s32(*v104.i8, *v107.i8);
                  *v107.i8 = vtrn1_s16(v131, v132);
                  v137 = vtrn2_s16(v131, v132);
                  v138 = vtrn1_s16(v133, v134);
                  v139 = vtrn2_s16(v133, v134);
                  v140 = vqmovun_s32(vqrshlq_s32(vmlal_s16(vmlal_s16(vmlal_s16(vmlal_s16(vmlal_s16(vmlal_s16(vmlal_s16(vmlal_s16(v89, *v108.i8, *v118.i8), v136, v124), *v105.i8, *v116.i8), *v104.i8, *v115.i8), vzip1_s32(*v107.i8, v138), v128), vzip1_s32(v137, v139), v129), vzip2_s32(*v107.i8, v138), *v117.i8), vzip2_s32(v137, v139), v130), v88));
                  if (v30 == 2)
                  {
                    v100->i32[0] = v140.i32[0];
                  }

                  else
                  {
                    *v100 = v140;
                  }

                  v100 += 32;
                  --v98;
                  v99 += 2 * v355;
                }

                while (v98 > 1);
              }

              v205 = v83 + v82;
              v206 = 1 << (v85 - v83);
              if (*(a14 + 32) && !*a14)
              {
                v246 = vdupq_n_s32(1 << v85);
                v247 = vdupq_n_s32(-*(a14 + 24));
                v248 = 2 * v352;
                v209 = v356;
                v210 = v354;
                v151 = v78;
                v249 = v29 + 1;
                if (v30 >= 5)
                {
                  v291 = v30;
                  v292 = v354;
                  do
                  {
                    v293 = v86;
                    v294 = v29 + 1;
                    v295 = v79;
                    do
                    {
                      v296 = (v292 + 2 * ((v295 >> 3) & 0xFFFFFF80));
                      v215 = v296[16];
                      v297 = v296[32];
                      v298 = v296[48];
                      v299 = v296[64];
                      v300 = v296[80];
                      v301 = v296[96];
                      v302 = v296[112];
                      v303 = *(*v27 + 2 * ((v295 >> 6) & 0xF) * *(v27 + 8));
                      v214 = vqrshlq_s32(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(v246, *v296, *v303.i8, 0), v215, *v303.i8, 1), v297, *v303.i8, 2), v298, *v303.i8, 3), v299, v303, 4), v300, v303, 5), v301, v303, 6), v302, v303, 7), v247);
                      v217 = vqmovun_high_s32(vqmovun_s32(vqrshlq_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(v246, *v296->i8, *v303.i8, 0), *v215.i8, *v303.i8, 1), *v297.i8, *v303.i8, 2), *v298.i8, *v303.i8, 3), *v299.i8, v303, 4), *v300.i8, v303, 5), *v301.i8, v303, 6), *v302.i8, v303, 7), v247)), v214);
                      *v293 = v217;
                      v295 += a12;
                      --v294;
                      v293 = (v293 + v248);
                    }

                    while (v294 > 1);
                    v292 += 16;
                    ++v86;
                    v204 = __OFSUB__(v291, 8);
                    v291 -= 8;
                  }

                  while (!((v291 < 0) ^ v204 | (v291 == 0)));
                }

                else
                {
                  do
                  {
                    v250 = (v354 + 2 * ((v79 >> 3) & 0xFFFFFF80));
                    *v214.i8 = v250[32];
                    *v215.i8 = v250[64];
                    v251 = *(*v27 + 2 * ((v79 >> 6) & 0xF) * *(v27 + 8));
                    *v217.i8 = vqmovun_s32(vqrshlq_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(v246, *v250, *v251.i8, 0), *v214.i8, *v251.i8, 1), *v215.i8, *v251.i8, 2), v250[96], *v251.i8, 3), v250[128], v251, 4), v250[160], v251, 5), v250[192], v251, 6), v250[224], v251, 7), v247));
                    if (v30 == 2)
                    {
                      v86->i32[0] = v217.i32[0];
                    }

                    else
                    {
                      v86->i64[0] = v217.i64[0];
                    }

                    v79 += a12;
                    v86 = (v86 + v248);
                    --v249;
                  }

                  while (v249 > 1);
                }
              }

              else
              {
                v207 = vdupq_n_s32(1 << v85);
                v208 = vdupq_n_s32(-*(a14 + 24));
                v209 = v356;
                v210 = v354;
                v151 = v78;
                v211 = v29 + 1;
                if (v30 >= 5)
                {
                  v227 = v30;
                  v228 = v78;
                  v229 = v354;
                  do
                  {
                    v230 = v29 + 1;
                    v231 = v79;
                    v232 = v228;
                    do
                    {
                      v233 = (v229 + 2 * ((v231 >> 3) & 0xFFFFFF80));
                      v215 = v233[16];
                      v234 = v233[32];
                      v235 = v233[48];
                      v236 = v233[64];
                      v237 = v233[80];
                      v238 = v233[96];
                      v239 = v233[112];
                      v240 = *(*v27 + 2 * ((v231 >> 6) & 0xF) * *(v27 + 8));
                      v214 = vqrshlq_s32(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(v207, *v233, *v240.i8, 0), v215, *v240.i8, 1), v234, *v240.i8, 2), v235, *v240.i8, 3), v236, v240, 4), v237, v240, 5), v238, v240, 6), v239, v240, 7), v208);
                      v217 = vqmovun_high_s32(vqmovun_s32(vqrshlq_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(v207, *v233->i8, *v240.i8, 0), *v215.i8, *v240.i8, 1), *v234.i8, *v240.i8, 2), *v235.i8, *v240.i8, 3), *v236.i8, v240, 4), *v237.i8, v240, 5), *v238.i8, v240, 6), *v239.i8, v240, 7), v208)), v214);
                      *v232 = v217;
                      v231 += a12;
                      v232 += 16;
                      --v230;
                    }

                    while (v230 > 1);
                    v229 += 16;
                    ++v228;
                    v204 = __OFSUB__(v227, 8);
                    v227 -= 8;
                  }

                  while (!((v227 < 0) ^ v204 | (v227 == 0)));
                }

                else
                {
                  v212 = v78;
                  do
                  {
                    v213 = (v354 + 2 * ((v79 >> 3) & 0xFFFFFF80));
                    *v214.i8 = v213[32];
                    *v215.i8 = v213[64];
                    v216 = *(*v27 + 2 * ((v79 >> 6) & 0xF) * *(v27 + 8));
                    *v217.i8 = vqmovun_s32(vqrshlq_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(v207, *v213, *v216.i8, 0), *v214.i8, *v216.i8, 1), *v215.i8, *v216.i8, 2), v213[96], *v216.i8, 3), v213[128], v216, 4), v213[160], v216, 5), v213[192], v216, 6), v213[224], v216, 7), v208));
                    if (v30 == 2)
                    {
                      *v212 = v217.i32[0];
                    }

                    else
                    {
                      *v212 = v217.i64[0];
                    }

                    v79 += a12;
                    v212 += 64;
                    --v211;
                  }

                  while (v211 > 1);
                }
              }

              v304 = v205 - 14;
              v305 = (1 << v353) + v206;
              if (*(a14 + 32))
              {
                if (*a14)
                {
                  v306 = *(a14 + 8);
                  v307 = *(a14 + 16);
                  v308 = vdupq_n_s32(v304);
                  if (*(a14 + 36))
                  {
                    v309 = vdupq_n_s32(v305);
                    v217.i16[0] = *(a14 + 40);
                    v214.i16[0] = *(a14 + 44);
                    if (v30 >= 5)
                    {
                      v327 = vdupq_n_s16(~(-1 << a15));
                      v328 = 2 * v307;
                      v329 = v151;
                      do
                      {
                        v330 = 0;
                        v331 = v30;
                        do
                        {
                          v32[v330 / 2] = vminq_u16(vqmovun_high_s32(vqmovun_s32(vqrshlq_s32(vsubq_s32(vshrq_n_u32(vmlal_lane_u16(vmull_lane_u16(v329[v330], *v214.i8, 0), v306[v330], *v217.i8, 0), 4uLL), v309), v308)), vqrshlq_s32(vsubq_s32(vshrq_n_u32(vmlal_high_lane_u16(vmull_high_lane_u16(*v329[v330].i8, *v214.i8, 0), *v306[v330].i8, *v217.i8, 0), 4uLL), v309), v308)), v327);
                          v330 += 2;
                          v331 -= 8;
                        }

                        while (v331);
                        v329 += 32;
                        v32 = (v32 + 2 * v209);
                        v306 = (v306 + v328);
                        --v29;
                      }

                      while (v29);
                    }

                    else
                    {
                      v215.i32[0] = ~(-1 << a15);
                      *v215.i8 = vdup_lane_s16(*v215.i8, 0);
                      v310 = v151;
                      do
                      {
                        v311 = vmin_u16(vqmovun_s32(vqrshlq_s32(vsubq_s32(vshrq_n_u32(vmlal_lane_u16(vmull_lane_u16(*v310, *v214.i8, 0), *v306, *v217.i8, 0), 4uLL), v309), v308)), *v215.i8);
                        if (v30 == 2)
                        {
                          v32->i32[0] = v311.i32[0];
                        }

                        else
                        {
                          *v32->i8 = v311;
                        }

                        v310 += 32;
                        v306 = (v306 + 2 * v307);
                        v32 = (v32 + 2 * v209);
                        --v29;
                      }

                      while (v29);
                    }
                  }

                  else
                  {
                    v324 = vdup_n_s16(v305);
                    if (v30 >= 5)
                    {
                      v332 = vdupq_n_s16(~(-1 << a15));
                      v333 = 2 * v307;
                      v334 = v151;
                      do
                      {
                        v335 = 0;
                        v336 = v30;
                        do
                        {
                          v337 = vhaddq_u16(*v334[v335 / 8].i8, *v306[v335 / 8].i8);
                          v32[v335 / 0x10] = vminq_u16(vqmovun_high_s32(vqmovun_s32(vqrshlq_s32(vsubl_u16(*v337.i8, v324), v308)), vqrshlq_s32(vsubl_u16(*&vextq_s8(v337, v337, 8uLL), v324), v308)), v332);
                          v335 += 16;
                          v336 -= 8;
                        }

                        while (v336);
                        v334 += 32;
                        v32 = (v32 + 2 * v209);
                        v306 = (v306 + v333);
                        --v29;
                      }

                      while (v29);
                    }

                    else
                    {
                      v217.i32[0] = ~(-1 << a15);
                      *v217.i8 = vdup_lane_s16(*v217.i8, 0);
                      v325 = v151;
                      do
                      {
                        v326 = vmin_u16(vqmovun_s32(vqrshlq_s32(vsubl_u16(vhadd_u16(*v325, *v306), v324), v308)), *v217.i8);
                        if (v30 == 2)
                        {
                          v32->i32[0] = v326.i32[0];
                        }

                        else
                        {
                          *v32->i8 = v326;
                        }

                        v325 += 32;
                        v306 = (v306 + 2 * v307);
                        v32 = (v32 + 2 * v209);
                        --v29;
                      }

                      while (v29);
                    }
                  }
                }
              }

              else
              {
                v312 = vdupq_n_s32(v304);
                v313 = vdup_n_s16(v305);
                if (v30 >= 5)
                {
                  if (v29 >= 1)
                  {
                    v317 = 0;
                    v318 = vdupq_n_s16(~(-1 << a15));
                    v319 = v151;
                    do
                    {
                      v320 = 0;
                      v321 = v319;
                      v322 = v32;
                      do
                      {
                        v323 = *v321++;
                        *v322++ = vminq_u16(vqmovun_high_s32(vqmovun_s32(vqrshlq_s32(vsubl_s16(*v323.i8, v313), v312)), vqrshlq_s32(vsubl_s16(*&vextq_s8(v323, v323, 8uLL), v313), v312)), v318);
                        v320 += 8;
                      }

                      while (v320 < v30);
                      ++v317;
                      v32 = (v32 + 2 * v209);
                      v319 += 16;
                    }

                    while (v317 != v29);
                  }
                }

                else if (v29 >= 1)
                {
                  v217.i32[0] = ~(-1 << a15);
                  *v217.i8 = vdup_lane_s16(*v217.i8, 0);
                  v314 = v29;
                  v315 = v151;
                  do
                  {
                    v316 = vmin_u16(vqmovun_s32(vqrshlq_s32(vsubl_s16(*v315, v313), v312)), *v217.i8);
                    if (v30 == 2)
                    {
                      v32->i32[0] = v316.i32[0];
                    }

                    else
                    {
                      *v32->i8 = v316;
                    }

                    v32 = (v32 + 2 * v209);
                    v315 += 32;
                    --v314;
                  }

                  while (v314);
                }
              }

              free(*(v210 - 8));
            }

            else
            {
              v151 = v354;
            }
          }

          else
          {
            v151 = v354;
          }

          v338 = v151[-1];

          free(v338);
        }
      }
    }

    else if (*(a14 + 32))
    {
      if (a9 | a11)
      {
        if (!a9 || a11)
        {
          if (a9 || !a11)
          {
            v243 = *v21;
            v244 = 2 * v15;
            v245 = 2 * v17;

            sub_277A6A2FC(v244, v16, v245, v18, v19, v20, v243, v33, v27, a9, SHIWORD(a9), a11, a14, a15);
          }

          else
          {
            v154 = *v27;
            v155 = *(v27 + 8);
            v156 = 2 * v15;
            v157 = 2 * v17;

            sub_277A68378(v156, v16, v157, v18, v19, v20, v154, v155, a11, a14, a15);
          }
        }

        else
        {
          v141 = *v21;
          v142 = 2 * v15;
          v143 = 2 * v17;

          sub_277A671DC(v142, v16, v143, v18, v19, v20, v141, v33, a9, a14, a15);
        }
      }

      else
      {
        v146 = *(a14 + 24) + *(a14 + 20);
        v147 = (1 << (a15 - v146 + 13)) + (1 << (a15 - v146 + 14));
        v148 = 14 - v146;
        if (*a14)
        {
          if (v19 > 4)
          {
            if (v20 >= 1)
            {
              v221 = 0;
              v22 = vdupq_n_s16(v148);
              v23 = vdupq_n_s16(v147);
              v222 = v357;
              do
              {
                v223 = 0;
                v224 = v31;
                v225 = v222;
                do
                {
                  v226 = *v224++;
                  v24 = vaddq_s16(vshlq_u16(v226, v22), v23);
                  *v225++ = v24;
                  v223 += 8;
                }

                while (v223 < v19);
                ++v221;
                v222 += 16;
                v31 = (v31 + 2 * v16);
              }

              while (v221 != v20);
            }
          }

          else if (v20 >= 1)
          {
            *v22.i8 = vdup_n_s16(v148);
            *v23.i8 = vdup_n_s16(v147);
            v149 = v20;
            v150 = v357;
            do
            {
              *v24.i8 = vadd_s16(vshl_u16(*v31, *v22.i8), *v23.i8);
              if (v19 == 2)
              {
                *v150 = v24.i32[0];
              }

              else
              {
                *v150 = v24.i64[0];
              }

              v150 += 64;
              v31 = (v31 + 2 * v16);
              --v149;
            }

            while (v149);
          }
        }

        else
        {
          v218 = *(a14 + 16);
          v219 = *(a14 + 8);
          if (v19 > 4)
          {
            if (v20 >= 1)
            {
              v252 = 0;
              v22 = vdupq_n_s16(v148);
              v23 = vdupq_n_s16(v147);
              do
              {
                v253 = 0;
                v254 = v31;
                v255 = v219;
                do
                {
                  v256 = *v254++;
                  v24 = vaddq_s16(vshlq_u16(v256, v22), v23);
                  *v255++ = v24;
                  v253 += 8;
                }

                while (v253 < v19);
                ++v252;
                v219 = (v219 + 2 * v218);
                v31 = (v31 + 2 * v16);
              }

              while (v252 != v20);
            }
          }

          else if (v20 >= 1)
          {
            *v22.i8 = vdup_n_s16(v148);
            *v23.i8 = vdup_n_s16(v147);
            v220 = v20;
            do
            {
              *v24.i8 = vadd_s16(vshl_u16(*v31, *v22.i8), *v23.i8);
              if (v19 == 2)
              {
                v219->i32[0] = v24.i32[0];
              }

              else
              {
                v219->i64[0] = v24.i64[0];
              }

              v219 = (v219 + 2 * v218);
              v31 = (v31 + 2 * v16);
              --v220;
            }

            while (v220);
          }
        }

        if (*a14)
        {
          if (*(a14 + 36))
          {
            if (a15 == 12)
            {
              v257 = *(a14 + 8);
              v258 = *(a14 + 16);
              v22.i16[0] = *(a14 + 40);
              v23.i16[0] = *(a14 + 44);
              if (v19 == 4)
              {
                v259 = v357;
                do
                {
                  v260.i64[0] = 0x5F0000005FLL;
                  v260.i64[1] = 0x5F0000005FLL;
                  *v32->i8 = vmin_u16(vqrshrun_n_s32(vsraq_n_u32(v260, vmlal_lane_u16(vmull_lane_u16(*v259, *v23.i8, 0), *v257, *v22.i8, 0), 4uLL), 2uLL), 0xF000F000F000F000);
                  v259 += 32;
                  v257 = (v257 + 2 * v258);
                  v32 = (v32 + 2 * v18);
                  --v29;
                }

                while (v29);
              }

              else
              {
                v276 = 2 * v258;
                v277 = v357;
                v278.i64[0] = 0xF000F000F000F000;
                v278.i64[1] = 0xF000F000F000F000;
                do
                {
                  v279 = 0;
                  v280 = v19;
                  do
                  {
                    v281 = *&v277[v279];
                    v282 = *v257[v279 / 8].i8;
                    v283.i64[0] = 0x5F0000005FLL;
                    v283.i64[1] = 0x5F0000005FLL;
                    v284 = vsraq_n_u32(v283, vmlal_lane_u16(vmull_lane_u16(*v281.i8, *v23.i8, 0), *v282.i8, *v22.i8, 0), 4uLL);
                    v285 = vmlal_high_lane_u16(vmull_high_lane_u16(v281, *v23.i8, 0), v282, *v22.i8, 0);
                    v282.i64[0] = 0x5F0000005FLL;
                    v282.i64[1] = 0x5F0000005FLL;
                    v32[v279 / 0x10] = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(v284, 2uLL), vsraq_n_u32(v282, v285, 4uLL), 2uLL), v278);
                    v279 += 16;
                    v280 -= 8;
                  }

                  while (v280);
                  v277 += 256;
                  v32 = (v32 + 2 * v18);
                  v257 = (v257 + v276);
                  --v29;
                }

                while (v29);
              }
            }

            else
            {
              v265 = *(a14 + 8);
              v266 = *(a14 + 16);
              v267 = vdupq_n_s32((1 << (a15 + 4)) + (1 << (a15 + 3)));
              v23.i16[0] = *(a14 + 40);
              v24.i16[0] = *(a14 + 44);
              if (v19 == 4)
              {
                v25.i32[0] = ~(-1 << a15);
                v268 = vdup_lane_s16(v25, 0);
                v269 = v357;
                do
                {
                  *v32->i8 = vmin_u16(vqrshrun_n_s32(vsubq_s32(vshrq_n_u32(vmlal_lane_u16(vmull_lane_u16(*v269, *v24.i8, 0), *v265, *v23.i8, 0), 4uLL), v267), 4uLL), v268);
                  v269 += 32;
                  v265 = (v265 + 2 * v266);
                  v32 = (v32 + 2 * v18);
                  --v29;
                }

                while (v29);
              }

              else
              {
                v286 = vdupq_n_s16(~(-1 << a15));
                v287 = 2 * v266;
                v288 = v357;
                do
                {
                  v289 = 0;
                  v290 = v19;
                  do
                  {
                    v32[v289 / 2] = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vsubq_s32(vshrq_n_u32(vmlal_lane_u16(vmull_lane_u16(*&v288[v289 * 8], *v24.i8, 0), v265[v289], *v23.i8, 0), 4uLL), v267), 4uLL), vsubq_s32(vshrq_n_u32(vmlal_high_lane_u16(vmull_high_lane_u16(*&v288[v289 * 8], *v24.i8, 0), *v265[v289].i8, *v23.i8, 0), 4uLL), v267), 4uLL), v286);
                    v289 += 2;
                    v290 -= 8;
                  }

                  while (v290);
                  v288 += 256;
                  v32 = (v32 + 2 * v18);
                  v265 = (v265 + v287);
                  --v29;
                }

                while (v29);
              }
            }
          }

          else if (a15 == 12)
          {
            v261 = *(a14 + 8);
            v262 = *(a14 + 16);
            if (v19 == 4)
            {
              v263 = v357;
              v264.i64[0] = 0x5F0000005FLL;
              v264.i64[1] = 0x5F0000005FLL;
              do
              {
                *v32->i8 = vmin_u16(vqrshrun_n_s32(vaddw_u16(v264, vhadd_u16(*v263, *v261)), 2uLL), 0xF000F000F000F000);
                v263 += 32;
                v261 = (v261 + 2 * v262);
                v32 = (v32 + 2 * v18);
                --v29;
              }

              while (v29);
            }

            else
            {
              v339 = 2 * v262;
              v340 = v357;
              v341.i64[0] = 0x5F0000005FLL;
              v341.i64[1] = 0x5F0000005FLL;
              v342.i64[0] = 0xF000F000F000F000;
              v342.i64[1] = 0xF000F000F000F000;
              do
              {
                v343 = 0;
                v344 = v19;
                do
                {
                  v345 = vhaddq_u16(*&v340[v343], *v261[v343 / 8].i8);
                  v32[v343 / 0x10] = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vaddw_u16(v341, *v345.i8), 2uLL), vaddw_high_u16(v341, v345), 2uLL), v342);
                  v343 += 16;
                  v344 -= 8;
                }

                while (v344);
                v340 += 256;
                v32 = (v32 + 2 * v18);
                v261 = (v261 + v339);
                --v29;
              }

              while (v29);
            }
          }

          else
          {
            v272 = *(a14 + 8);
            v273 = *(a14 + 16);
            v274 = vdup_n_s16((1 << (a15 + 4)) + (1 << (a15 + 3)));
            if (v19 == 4)
            {
              v23.i32[0] = ~(-1 << a15);
              *v23.i8 = vdup_lane_s16(*v23.i8, 0);
              v275 = v357;
              do
              {
                *v32->i8 = vmin_u16(vqrshrun_n_s32(vsubl_u16(vhadd_u16(*v275, *v272), v274), 4uLL), *v23.i8);
                v275 += 32;
                v272 = (v272 + 2 * v273);
                v32 = (v32 + 2 * v18);
                --v29;
              }

              while (v29);
            }

            else
            {
              v346 = vdupq_n_s16(~(-1 << a15));
              v347 = 2 * v273;
              v348 = v357;
              do
              {
                v349 = 0;
                v350 = v19;
                do
                {
                  v351 = vhaddq_u16(*&v348[v349], *v272[v349 / 8].i8);
                  v32[v349 / 0x10] = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vsubl_u16(*v351.i8, v274), 4uLL), vsubl_u16(*&vextq_s8(v351, v351, 8uLL), v274), 4uLL), v346);
                  v349 += 16;
                  v350 -= 8;
                }

                while (v350);
                v348 += 256;
                v32 = (v32 + 2 * v18);
                v272 = (v272 + v347);
                --v29;
              }

              while (v29);
            }
          }
        }
      }
    }

    else if (a9 | a11)
    {
      if (!a9 || a11)
      {
        if (a9 || !a11)
        {
          v270 = 2 * v15;
          v271 = 2 * v17;

          sub_277AE1360(v270, v16, v271, v18, v19, v20, v21, v27, a9, SHIWORD(a9), a11, a14, a15);
        }

        else
        {
          v241 = 2 * v15;
          v242 = (2 * v17);

          sub_277ADF858(v241, v16, v242, v18, v19, v20, v27, a11, a15);
        }
      }

      else
      {
        v144 = 2 * v15;
        v145 = (2 * v17);

        sub_277AE0628(v144, v16, v145, v18, v19, v20, v21, a9, a14, a15);
      }
    }

    else
    {
      v152 = 2 * v15;
      v153 = 2 * v17;

      sub_277BB3B5C(v152, v16, v153, v18, v19, v20);
    }
  }
}

__n128 sub_27797F824(_DWORD *a1, __n128 *a2, int a3)
{
  v3 = a1[3] + *a1;
  a2->n128_u32[0] = v3;
  v4 = a1[2] + a1[1];
  a2->n128_u32[1] = v4;
  v5 = a1[1] - a1[2];
  a2->n128_u32[2] = v5;
  v6 = *a1 - a1[3];
  v7 = dword_277C42240[64 * a3 - 608];
  v8 = 1 << (a3 - 1);
  v9 = v8 + v3 * v7;
  v10 = (v9 + v4 * v7) >> a3;
  v11 = (v9 + -(v4 * v7)) >> a3;
  v12 = dword_277C42240[64 * a3 - 592];
  v13 = dword_277C42240[64 * a3 - 624];
  result.n128_u32[0] = v10;
  result.n128_u32[1] = (v8 + v5 * v12 + v6 * v13) >> a3;
  result.n128_u64[1] = __PAIR64__((v8 + -(v5 * v13) + v6 * v12) >> a3, v11);
  *a2 = result;
  return result;
}

int64x2_t sub_27797F8E8(_DWORD *a1, int32x4_t *a2, unsigned int a3, double a4, double a5, double a6, int32x4_t a7)
{
  a2->i32[0] = a1[7] + *a1;
  a2->i32[1] = a1[6] + a1[1];
  a2->i32[2] = a1[5] + a1[2];
  a2->i32[3] = a1[4] + a1[3];
  v7 = a1[3] - a1[4];
  a2[1].i32[0] = v7;
  v8 = a1[2] - a1[5];
  a2[1].i32[1] = v8;
  v9 = a1[1] - a1[6];
  a2[1].i32[2] = v9;
  v10 = vrev64q_s32(*a2);
  v11 = vextq_s8(v10, v10, 8uLL);
  v12.i64[0] = vaddq_s32(v11, *a2).u64[0];
  v13 = dword_277C42240[64 * a3 - 608];
  v14 = v9 * v13;
  v15 = 1 << (a3 - 1);
  v16 = v15 + v14;
  a7.i32[0] = v7;
  a7.i32[1] = (v16 + -(v13 * v8)) >> a3;
  a7.i32[2] = (v16 + v8 * v13) >> a3;
  v17 = vsubq_s32(v11, *a2);
  v18 = a7;
  v18.i32[3] = *a1 - a1[7];
  v19 = v15 + v12.i32[0] * v13;
  a2->i32[0] = (v19 + v12.i32[1] * v13) >> a3;
  a2->i32[1] = (v19 + -(v13 * v12.i32[1])) >> a3;
  v20 = dword_277C42240[64 * a3 - 592];
  v21 = dword_277C42240[64 * a3 - 624];
  a2->i32[2] = (v15 + v17.i32[2] * v20 + v17.i32[3] * v21) >> a3;
  a2->i32[3] = (v15 + -(v17.i32[2] * v21) + v17.i32[3] * v20) >> a3;
  v22 = vrev64q_s32(v18);
  v23 = vaddq_s32(v22, v18);
  v24 = vsubq_s32(v22, a7);
  v24.i32[0] = v23.i32[0];
  v12.i32[0] = dword_277C42240[64 * a3 - 632];
  v25.i32[0] = v12.i32[0];
  v25.i32[1] = dword_277C42240[64 * a3 - 600];
  v26 = vmul_s32(*v24.i8, v25);
  v12.i32[1] = dword_277C42240[64 * a3 - 600];
  v12.i32[2] = dword_277C42240[64 * a3 - 616];
  v12.i32[3] = dword_277C42240[64 * a3 - 584];
  v27 = vmul_s32(*v24.i8, *&vextq_s8(v12, vextq_s8(v12, v12, 8uLL), 0xCuLL));
  v24.i32[3] = v23.i32[3];
  v28 = *a2;
  v29 = vdupq_laneq_s64(v24, 1);
  v30 = vmulq_s32(vzip1q_s32(vrev64q_s32(v29), v29), v12);
  v31 = vdupq_n_s64(v15);
  v32 = vaddw_high_s32(vaddw_s32(v31, vrev64_s32(vneg_s32(v26))), v30);
  v33 = vaddw_s32(vaddw_s32(v31, v27), *v30.i8);
  v34 = vnegq_s64(vdupq_n_s64(a3));
  result = vshlq_s64(v33, v34);
  v36 = vmovn_s64(vshlq_s64(v32, v34));
  v37 = vmovn_s64(result);
  v38 = vextq_s8(v28, v28, 8uLL).u64[0];
  vst4_f32(a2->i32, *v28.i8);
  return result;
}

int32x2_t sub_27797FAD8(_DWORD *a1, int32x2_t *a2, unsigned int a3, double a4, double a5, double a6, double a7, int32x4_t a8, double a9, int32x4_t a10)
{
  v83 = *MEMORY[0x277D85DE8];
  v10 = a1[15] + *a1;
  a2->i32[0] = v10;
  v11 = a1[14] + a1[1];
  a2->i32[1] = v11;
  a2[1].i32[0] = a1[13] + a1[2];
  a2[1].i32[1] = a1[12] + a1[3];
  a2[2].i32[0] = a1[11] + a1[4];
  a2[2].i32[1] = a1[10] + a1[5];
  v12 = a1[9] + a1[6];
  a2[3].i32[0] = v12;
  v13 = a1[8] + a1[7];
  a2[3].i32[1] = v13;
  a2[4].i32[0] = a1[7] - a1[8];
  a2[4].i32[1] = a1[6] - a1[9];
  a2[5].i32[0] = a1[5] - a1[10];
  a2[5].i32[1] = a1[4] - a1[11];
  a2[6].i32[0] = a1[3] - a1[12];
  a2[6].i32[1] = a1[2] - a1[13];
  a2[7].i32[0] = a1[1] - a1[14];
  a2[7].i32[1] = *a1 - a1[15];
  *v80 = v13 + v10;
  *&v80[4] = v12 + v11;
  v14 = *a2[1].i8;
  v15 = vrev64q_s32(v14);
  v16 = vextq_s8(v15, v15, 8uLL);
  *&v17 = vaddq_s32(v16, v14).u64[0];
  v18 = vsubq_s32(v16, v14);
  *(&v17 + 1) = v18.i64[1];
  *&v80[8] = v17;
  v19 = v11 - v12;
  v20 = v10 - v13;
  v21 = dword_277C42240[64 * a3 - 608];
  v22 = 1 << (a3 - 1);
  *v16.i8 = a2[5];
  v16.i64[1] = v16.i64[0];
  *a8.i8 = vdup_n_s32(v21);
  *a10.i8 = a2[7];
  v23 = vdupq_n_s64(v22);
  v24 = vaddw_s32(v23, vmul_s32(a2[6], *a8.i8));
  v25 = vextq_s8(v24, v24, 8uLL);
  a8.i32[1] = -v21;
  v26 = vrev64q_s32(a8);
  v27 = vmulq_s32(v16, vzip1q_s32(v26, v26));
  v28 = vaddw_s32(v25, *v27.i8);
  v29 = vaddw_high_s32(v25, v27);
  v30 = vnegq_s64(vdupq_n_s64(a3));
  v31 = vuzp1q_s32(vshlq_s64(v28, v30), vshlq_s64(v29, v30));
  v32 = vrev64q_s32(v31);
  v32.i64[0] = v31.i64[0];
  *v76 = a2[4];
  *&v76[8] = v31.i64[0];
  v33 = vrev64q_s32(*v80);
  v34 = vextq_s8(v33, v33, 8uLL);
  v35 = vaddq_s32(v34, *v80);
  v36 = vsubq_s32(v34, *v80);
  a2[2].i32[0] = v18.i32[2];
  v37 = v22 + (v19 * v21);
  v38 = (v37 + -(v21 * v18.i32[3])) >> a3;
  v39 = (v37 + (v18.i32[3] * v21)) >> a3;
  v40 = vrev64q_s32(*v76);
  v41 = vextq_s8(v40, v40, 8uLL);
  v40.i64[0] = vaddq_s32(v41, *v76).u64[0];
  v42 = vsubq_s32(v41, *v76);
  v41.i64[0] = v40.i64[0];
  v41.i64[1] = v42.i64[1];
  v43 = vdupq_laneq_s64(v32, 1);
  a2[2].i32[1] = v38;
  a2[3].i32[0] = v39;
  v44 = vzip1q_s32(v43, vrev64q_s32(v43));
  v45 = vzip1q_s32(vrev64q_s32(a10), a10);
  *&v46 = vsubq_s32(v45, v44).u64[0];
  LODWORD(v39) = DWORD1(v46);
  *(&v46 + 1) = vaddq_s32(v45, *&v44).i64[1];
  a2[3].i32[1] = v20;
  *a2[4].i8 = v41;
  *a2[6].i8 = v46;
  LODWORD(v37) = dword_277C42240[64 * a3 - 624];
  v47 = v35;
  v47.i32[3] = v36.i32[3];
  v44.val[0] = __PAIR64__(v37, v21);
  v44.val[1].i32[0] = -v21;
  v44.val[1].i32[1] = dword_277C42240[64 * a3 - 592];
  v48 = vmulq_s32(vuzp2q_s32(v47, v47), v44);
  v35.i32[2] = v36.i32[2];
  v49 = vextq_s8(v44, v44, 8uLL);
  v49.i32[0] = v21;
  v49.i32[3] = -v37;
  v50 = vmulq_s32(vuzp1q_s32(v35, v35), v49);
  *&v46 = vmovn_s64(vshlq_s64(vaddw_high_s32(vaddw_high_s32(v23, v50), v48), v30));
  v44.val[0] = vmovn_s64(vshlq_s64(vaddw_s32(vaddw_s32(v23, *v50.i8), *v48.i8), v30));
  v51 = v80;
  vst2_f32(v51, v44);
  v51 += 4;
  v52 = *a2[2].i8;
  v53 = vrev64q_s32(v52);
  v54 = vaddq_s32(v53, v52);
  v55 = vsubq_s32(v53, v52);
  *v76 = v40.i32[0];
  *&v76[4] = (v22 + -(v37 * v40.i32[1]) + DWORD2(v46) * v44.val[1].i32[1]) >> a3;
  *&v76[8] = (v22 + -(v44.val[1].i32[1] * v42.i32[2]) + -(v37 * v39)) >> a3;
  *&v76[12] = *(a2 + 44);
  v77 = (v22 + -(v37 * v42.i32[2]) + v39 * v44.val[1].i32[1]) >> a3;
  v78 = (v22 + v40.i32[1] * v44.val[1].i32[1] + DWORD2(v46) * v37) >> a3;
  v79 = a2[7].i32[1];
  v56 = dword_277C42240[64 * a3 - 584];
  LODWORD(v37) = dword_277C42240[64 * a3 - 632];
  a2[2].i32[0] = (v22 + v56 * v54.i32[0] + v54.i32[3] * v37) >> a3;
  LODWORD(v38) = dword_277C42240[64 * a3 - 616];
  v57 = dword_277C42240[64 * a3 - 600];
  a2[2].i32[1] = (v22 + v55.i32[1] * v38 + v55.i32[2] * v57) >> a3;
  a2[3].i32[0] = (v22 + -(v55.i32[1] * v57) + v55.i32[2] * v38) >> a3;
  a2[3].i32[1] = (v22 + -(v54.i32[0] * v37) + v54.i32[3] * v56) >> a3;
  v58 = vrev64q_s32(*v76);
  v59 = vaddq_s32(v58, *v76);
  v60 = vsubq_s32(v58, *v76);
  LODWORD(v39) = v59.i32[0];
  v59.i32[2] = v60.i32[2];
  v61 = vrev64q_s32(*&v76[16]);
  v62 = vaddq_s32(v61, *&v76[16]);
  v63 = vsubq_s32(v61, *&v76[16]);
  *v51 = *a2[2].i8;
  LODWORD(v37) = dword_277C42240[64 * a3 - 580];
  v62.i32[1] = v63.i32[1];
  v64 = dword_277C42240[64 * a3 - 636];
  v65 = (v22 + v37 * v59.i32[0] + v62.i32[3] * v64) >> a3;
  v66 = dword_277C42240[64 * a3 - 612];
  v67 = v60.i32[1];
  v68 = dword_277C42240[64 * a3 - 604];
  v69 = v63.i32[2];
  v70 = (v22 + v60.i32[1] * v66 + v63.i32[2] * v68) >> a3;
  v60.i64[0] = v59.i64[1];
  v63.i32[0] = dword_277C42240[64 * a3 - 620];
  v61.i32[0] = v63.i32[0];
  v61.i32[1] = dword_277C42240[64 * a3 - 588];
  *v61.i8 = vmul_s32(*v61.i8, v59.u64[1]);
  v63.i32[1] = dword_277C42240[64 * a3 - 588];
  v63.i32[2] = dword_277C42240[64 * a3 - 628];
  v63.i32[3] = dword_277C42240[64 * a3 - 596];
  v71 = vmulq_s32(vzip1q_s32(vrev64q_s32(v62), v62), v63);
  *v60.i8 = vmul_s32(*v60.i8, *&vextq_s8(v63, vextq_s8(v63, v63, 8uLL), 0xCuLL));
  v72 = vaddw_s32(v23, vrev64_s32(vneg_s32(*v61.i8)));
  result = vmovn_s64(vshlq_s64(vaddw_s32(vaddw_s32(v23, *v60.i8), *v71.i8), v30));
  *v30.i8 = vmovn_s64(vshlq_s64(vaddw_high_s32(v72, v71), v30));
  v74 = (v22 + -(v67 * v68) + v69 * v66) >> a3;
  v75 = (v22 + -(v39 * v64) + v62.i32[3] * v37) >> a3;
  LODWORD(v37) = *&v80[4];
  a2->i32[0] = *v80;
  a2->i32[1] = v65;
  a2[1].i32[0] = *v51;
  a2[1].i32[1] = v30.i32[0];
  LODWORD(v65) = *&v80[12];
  a2[2].i32[0] = *&v80[8];
  a2[2].i32[1] = result.i32[0];
  LODWORD(v39) = *&v80[20];
  a2[3].i32[0] = v81;
  a2[3].i32[1] = v74;
  a2[4].i32[0] = v37;
  a2[4].i32[1] = v70;
  a2[5].i32[0] = v39;
  a2[5].i32[1] = v30.i32[1];
  a2[6].i32[0] = v65;
  a2[6].i32[1] = result.i32[1];
  a2[7].i32[0] = v82;
  a2[7].i32[1] = v75;
  return result;
}

int32x2_t sub_27798003C(_DWORD *a1, int32x4_t *a2, unsigned int a3)
{
  v194 = *MEMORY[0x277D85DE8];
  a2->i32[0] = a1[31] + *a1;
  a2->i32[1] = a1[30] + a1[1];
  a2->i32[2] = a1[29] + a1[2];
  a2->i32[3] = a1[28] + a1[3];
  a2[1].i32[0] = a1[27] + a1[4];
  a2[1].i32[1] = a1[26] + a1[5];
  a2[1].i32[2] = a1[25] + a1[6];
  a2[1].i32[3] = a1[24] + a1[7];
  a2[2].i32[0] = a1[23] + a1[8];
  a2[2].i32[1] = a1[22] + a1[9];
  a2[2].i32[2] = a1[21] + a1[10];
  a2[2].i32[3] = a1[20] + a1[11];
  a2[3].i32[0] = a1[19] + a1[12];
  a2[3].i32[1] = a1[18] + a1[13];
  v5 = a1[17] + a1[14];
  a2[3].i32[2] = v5;
  v6 = a1[16] + a1[15];
  a2[3].i32[3] = v6;
  a2[4].i32[0] = a1[15] - a1[16];
  a2[4].i32[1] = a1[14] - a1[17];
  a2[4].i32[2] = a1[13] - a1[18];
  a2[4].i32[3] = a1[12] - a1[19];
  a2[5].i32[0] = a1[11] - a1[20];
  a2[5].i32[1] = a1[10] - a1[21];
  a2[5].i32[2] = a1[9] - a1[22];
  a2[5].i32[3] = a1[8] - a1[23];
  a2[6].i32[0] = a1[7] - a1[24];
  a2[6].i32[1] = a1[6] - a1[25];
  a2[6].i32[2] = a1[5] - a1[26];
  a2[6].i32[3] = a1[4] - a1[27];
  a2[7].i32[0] = a1[3] - a1[28];
  a2[7].i32[1] = a1[2] - a1[29];
  a2[7].i32[2] = a1[1] - a1[30];
  a2[7].i32[3] = *a1 - a1[31];
  v7 = &dword_277C42240[64 * a3 - 640];
  v8 = a2->i32[0];
  v9 = a2->i32[1];
  v10 = v6 + a2->i32[0];
  v11 = v5 + v9;
  *v193 = v10;
  *&v193[4] = v5 + v9;
  v12 = a2->i32[2];
  v13 = a2->i32[3];
  v15 = a2[3].i32[0];
  v14 = a2[3].i32[1];
  *&v193[8] = v14 + v12;
  *&v193[12] = v15 + v13;
  v16 = a2[1].i32[0];
  v17 = a2[1].i32[1];
  v19 = a2[2].i32[2];
  v18 = a2[2].i32[3];
  v20 = *(a2 + 24);
  v21 = vrev64q_s32(v20);
  v22 = vextq_s8(v21, v21, 8uLL);
  v21.i64[0] = vaddq_s32(v22, v20).u64[0];
  v23 = v21.i32[1];
  v24 = vsubq_s32(v22, v20);
  v25 = v21.i32[0];
  v21.i64[1] = v24.i64[1];
  *&v193[16] = v18 + v16;
  *&v193[20] = v19 + v17;
  *&v193[24] = v21;
  *&v193[40] = v17 - v19;
  *&v193[44] = v16 - v18;
  *&v193[48] = v13 - v15;
  *&v193[52] = v12 - v14;
  *&v193[56] = v9 - v5;
  *&v193[60] = v8 - v6;
  v26 = v7[32];
  v27 = 1 << (a3 - 1);
  v28 = a2[5];
  v29 = vmulq_s32(v28, vdupq_n_s32(-v26));
  v30 = vdupq_n_s32(v26);
  v31 = vmulq_s32(a2[6], v30);
  v32 = vdupq_n_s64(v27);
  v33 = vaddw_s32(v32, *v31.i8);
  v34 = vaddw_high_s32(v32, v31);
  v35 = vextq_s8(v34, v34, 8uLL);
  v36 = vextq_s8(v33, v33, 8uLL);
  v37 = vaddw_high_s32(v36, v29);
  v38 = vaddw_s32(v35, *v29.i8);
  v39 = vnegq_s64(vdupq_n_s64(a3));
  v40 = vshlq_s64(v37, v39);
  v38.i64[0] = vuzp1q_s32(vshlq_s64(v38, v39), v40).u64[0];
  *v40.i8 = vmovn_s64(v40);
  *v189 = a2[4];
  v22.i64[0] = a2[4].i64[0];
  v190 = v38.i64[0];
  v41 = vmulq_s32(v28, v30);
  v42 = vaddw_high_s32(v36, v41);
  v43 = vshlq_s64(vaddw_s32(v35, *v41.i8), v39);
  v44 = vshlq_s64(v42, v39);
  v45 = vrev64q_s32(vuzp1q_s32(v43, v44));
  v46 = vextq_s8(v45, v45, 8uLL);
  *&v192[4] = HIDWORD(v46);
  *&v192[8] = a2[7];
  a2->i32[0] = v23 + v10;
  a2->i32[1] = v11 + v25;
  v47 = vrev64q_s32(*&v193[8]);
  v48 = vextq_s8(v47, v47, 8uLL);
  v49.i64[0] = vaddq_s32(v48, *&v193[8]).u64[0];
  v49.i64[1] = vsubq_s32(v48, *(v193 + 8)).i64[1];
  *(a2 + 8) = v49;
  v50 = v11 - v25;
  a2[1].i32[2] = v50;
  a2[1].i32[3] = v10 - v23;
  a2[2].i64[0] = v24.i64[1];
  v24.i64[0] = *&v193[40];
  v24.i64[1] = *&v193[40];
  v51 = vaddw_s32(v32, vmul_s32(*&v193[48], *v30.i8));
  v30.i32[1] = -v26;
  v52 = vextq_s8(v51, v51, 8uLL);
  v53 = vrev64q_s32(v30);
  v54 = vmulq_s32(v24, vzip1q_s32(v53, v53));
  v55 = vuzp1q_s32(vshlq_s64(vaddw_s32(v52, *v54.i8), v39), vshlq_s64(vaddw_high_s32(v52, v54), v39));
  v56 = vrev64q_s32(v55);
  v56.i64[0] = v55.i64[0];
  *(a2 + 40) = v56;
  v55.i64[0] = *&v193[56];
  v57 = v22.i32[1];
  v58 = v22.i32[0];
  v59 = v40.i32[1] + v22.i32[0];
  v60 = v40.i32[0] + v22.i32[1];
  v61 = vrev64q_s32(*&v189[8]);
  v62 = vextq_s8(v61, v61, 8uLL);
  v61.i64[0] = vaddq_s32(v62, *&v189[8]).u64[0];
  v61.i64[1] = vsubq_s32(v62, *(v189 + 8)).i64[1];
  a2[4].i32[0] = v59;
  a2[4].i32[1] = v60;
  *(a2 + 72) = v61;
  a2[5].i32[2] = v57 - v40.i32[0];
  a2[5].i32[3] = v58 - v40.i32[1];
  v63 = vmovn_s64(*&v44).i32[1];
  v64 = vrev64q_s32(*&v192[4]);
  v65 = vextq_s8(v64, v64, 8uLL);
  *&v46 = v46 >> 32;
  *(&v46 + 1) = *&v192[4];
  a2[6].i32[0] = *&v192[20] - v63;
  v66 = vsubq_s32(v65, v46);
  v66.i32[3] = vaddq_s32(v65, v46).i32[3];
  *(a2 + 100) = v66;
  *(a2[7].i64 + 4) = vrev64_s32(vadd_s32(*v65.i8, *&v46));
  a2[7].i32[3] = *&v192[20] + v63;
  v67 = vrev64q_s32(*a2);
  v68 = vextq_s8(v67, v67, 8uLL);
  v67.i64[0] = vaddq_s32(v68, *a2).u64[0];
  v69 = vsubq_s32(v68, *a2);
  v68.i64[0] = v67.i64[0];
  v68.i64[1] = v69.i64[1];
  *v193 = v68;
  *&v193[16] = v49.i32[2];
  v70 = a2[1].i32[1];
  v71 = -(v26 * v70);
  v72 = v50 * v26;
  v73 = v70 * v26;
  v74 = a2[2];
  v75 = vrev64q_s32(v74);
  v76 = vextq_s8(v75, v75, 8uLL);
  v68.i64[0] = vaddq_s32(v76, v74).u64[0];
  v68.i64[1] = vsubq_s32(v76, v74).i64[1];
  v77 = vdupq_laneq_s64(v56, 1);
  v78 = vzip1q_s32(v77, vrev64q_s32(v77));
  v79 = vzip1q_s32(vrev64q_s32(v55), v55);
  v76.i64[0] = vsubq_s32(v79, v77).u64[0];
  v80 = vaddq_s32(v79, v78);
  v76.i64[1] = v80.i64[1];
  *&v193[32] = v68;
  *&v193[48] = v76;
  v81 = v7[48];
  v76.i32[0] = v81;
  v76.i32[1] = v7[16];
  v68.i64[0] = __PAIR64__(v76.u32[1], v26);
  v78.i64[0] = __PAIR64__(v76.u32[1], v81);
  v40.i32[0] = v81;
  *v189 = a2[4].i64[0];
  *v3.i8 = vneg_s32(__PAIR64__(v81, v76.u32[1]));
  v82 = *(a2 + 104);
  v83 = vdupq_lane_s32(*v3.i8, 0);
  v84 = vmulq_s32(v61, vzip1q_s32(v3, v3));
  v85.i64[0] = v83.i64[0];
  v85.u64[1] = vdup_n_s32(v81);
  v86 = vmulq_s32(v82, v85);
  v87.i64[0] = v86.i32[0];
  v87.i64[1] = v86.i32[1];
  v88 = vaddq_s64(vaddw_high_s32(v32, v84), vextq_s8(v87, v87, 8uLL));
  v87.i64[0] = v86.i32[2];
  v87.i64[1] = v86.i32[3];
  *&v189[8] = vuzp1q_s32(vshlq_s64(vaddq_s64(vaddw_s32(v32, *v84.i8), vextq_s8(v87, v87, 8uLL)), v39), vshlq_s64(v88, v39));
  v191 = *(&a2[5] + 8);
  v89 = vmulq_s32(v82, vzip1q_s32(v76, v76));
  v76.i64[0] = *&v193[36];
  *v84.i8 = vmul_s32(*&v193[36], *v3.i8);
  *v82.i8 = vzip1_s32(*&vextq_s8(v80, v80, 8uLL), *v3.i8);
  v3.i32[1] = v81;
  v90 = vrev64q_s32(v3);
  v91 = vmulq_s32(v61, vzip1q_s32(v90, v90));
  v92 = vaddw_high_s32(v32, v91);
  v93 = vaddw_s32(v32, *v91.i8);
  *v192 = vuzp1q_s32(vshlq_s64(vaddw_s32(vextq_s8(v92, v92, 8uLL), *v89.i8), v39), vshlq_s64(vaddw_high_s32(vextq_s8(v93, v93, 8uLL), v89), v39));
  *&v192[16] = a2[7].i64[1];
  v93.i32[0] = vdup_lane_s32(*v67.i8, 1).u32[0];
  v93.i32[1] = *(v193 | 0xC);
  v93.i64[1] = v93.i64[0];
  v68.i32[2] = -v26;
  v68.i32[3] = v81;
  v94 = vmulq_s32(v93, v68);
  v95 = v83;
  v95.i32[2] = v81;
  v96 = v27 + v72;
  v97 = a2[1].i32[3];
  *&v193[20] = (v96 + v71) >> a3;
  *&v193[24] = (v96 + v73) >> a3;
  *&v193[28] = v97;
  v67.i32[1] = *&v193[8];
  v67.i64[1] = v67.i64[0];
  v98 = vmulq_s32(v67, vzip2q_s32(vdupq_lane_s32(*v68.i8, 0), v95));
  *v89.i8 = vmovn_s64(vshlq_s64(vaddw_high_s32(vaddw_high_s32(v32, v98), v94), v39));
  *v95.i8 = vmovn_s64(vshlq_s64(vaddw_s32(vaddw_s32(v32, *v98.i8), *v94.i8), v39));
  vst2_f32(a2->i32, *(&v89 - 8));
  v99 = vrev64q_s32(*&v193[16]);
  v100 = vaddq_s32(v99, *&v193[16]);
  v101 = vsubq_s32(v99, *&v193[16]);
  v101.i32[0] = v100.i32[0];
  v101.i32[3] = v100.i32[3];
  a2[2].i32[0] = *&v193[32];
  LODWORD(v96) = *&v193[60];
  v40.i32[1] = *&v193[52];
  *(a2[2].i64 + 4) = vmovn_s64(vshlq_s64(vaddw_s32(vaddw_s32(v32, *v84.i8), vmul_s32(*v82.i8, *v40.i8)), v39));
  *(&a2[2].i64[1] + 4) = *&v193[44];
  *v80.i8 = vdup_laneq_s32(v80, 2);
  v80.i32[0] = v40.i32[1];
  v83.i32[0] = v81;
  v102 = vaddw_s32(v32, vmul_s32(*v76.i8, *v83.i8));
  *(a2[3].i64 + 4) = vmovn_s64(vshlq_s64(vaddw_s32(vextq_s8(v102, v102, 8uLL), vmul_s32(*v80.i8, *v78.i8)), v39));
  a2[3].i32[3] = v96;
  v103 = vrev64q_s32(*v189);
  v104 = vextq_s8(v103, v103, 8uLL);
  v103.i64[0] = vaddq_s32(v104, *v189).u64[0];
  v105 = vsubq_s32(v104, *v189);
  v106 = v103.i32[1];
  *v189 = v103.i32[0];
  v103.i64[1] = v105.i64[1];
  v78.i64[0] = v191;
  v104.i64[0] = *&v189[16];
  v107 = vzip1q_s32(v104, vrev64q_s32(v104));
  v108 = vzip1q_s32(vrev64q_s32(v78), v78);
  v104.i64[0] = vsubq_s32(v108, v104).u64[0];
  v104.i64[1] = vaddq_s32(v108, v107).i64[1];
  a2[4] = v103;
  a2[5] = v104;
  v109 = vrev64q_s32(*&v192[-8]);
  v110 = vextq_s8(v109, v109, 8uLL);
  v108.i64[0] = vaddq_s32(v110, *&v192[-8]).u64[0];
  v111 = vsubq_s32(v110, *&v192[-8]);
  v108.i64[1] = v111.i64[1];
  v107.i64[0] = *&v192[16];
  v110.i64[0] = *&v192[8];
  v112 = vzip1q_s32(v110, vrev64q_s32(v110));
  v113 = vzip1q_s32(vrev64q_s32(v107), v107);
  v100.i64[0] = vsubq_s32(v113, v112).u64[0];
  v100.i64[1] = vaddq_s32(v113, v112).i64[1];
  a2[6] = v108;
  a2[7] = v100;
  v114 = v7[56];
  v115 = v7[8];
  v116 = v7[24];
  v117 = v7[40];
  v118 = vzip1q_s32(v101, vrev64q_s32(v101));
  v119 = vdupq_laneq_s64(v101, 1);
  v120 = v105.i32[2];
  v121 = -(v115 * v105.i32[2]);
  v105.i64[0] = __PAIR64__(v117, v115);
  v105.i64[1] = __PAIR64__(v114, v116);
  v122 = vmulq_s32(vzip1q_s32(vrev64q_s32(v119), v119), v105);
  v105.i64[0] = vextq_s8(v105, vextq_s8(v105, v105, 8uLL), 0xCuLL).u64[0];
  v105.i32[2] = -v117;
  v105.i32[3] = -v115;
  v123 = vmulq_s32(v118, v105);
  v124 = vuzp1q_s32(vshlq_s64(vaddw_s32(vaddw_s32(v32, *v123.i8), *v122.i8), v39), vshlq_s64(vaddw_high_s32(vaddw_high_s32(v32, v123), v122), v39));
  v125 = a2[2];
  v126 = a2[3];
  v127 = vrev64q_s32(v126);
  v128 = vaddq_s32(v127, v126);
  v129 = vsubq_s32(v127, v126);
  v129.i32[0] = v128.i32[0];
  v129.i32[3] = v128.i32[3];
  *&v193[16] = v124;
  a2[1] = v124;
  v130 = a2[1];
  *v193 = *a2;
  v131 = vrev64q_s32(v125);
  v132 = vaddq_s32(v131, v125);
  v133 = vsubq_s32(v131, v125);
  v133.i32[0] = v132.i32[0];
  v133.i32[3] = v132.i32[3];
  *a2 = *v193;
  v134 = *a2;
  *&v193[32] = v133;
  *&v193[48] = v129;
  *&v189[4] = (v27 + -(v115 * v106) + (v100.i32[2] * v114)) >> a3;
  *&v189[8] = (v27 + -(v114 * v120) + -(v115 * v100.i32[1])) >> a3;
  *&v189[12] = *(&a2[4].i64[1] + 4);
  v135 = a2[5].i32[1];
  v136 = a2[5].i32[2];
  v137 = a2[6].i32[1];
  *&v189[20] = (v27 + -(v117 * v135) + (v111.i32[2] * v116)) >> a3;
  LODWORD(v191) = (v27 + -(v116 * v136) + -(v117 * v137)) >> a3;
  *(&v191 + 4) = *(&a2[5].i64[1] + 4);
  HIDWORD(v191) = (v27 + -(v117 * v136) + (v137 * v116)) >> a3;
  *v192 = (v27 + (v135 * v116) + (v111.i32[2] * v117)) >> a3;
  *&v192[4] = *(&a2[6].i64[1] + 4);
  *&v192[12] = (v27 + v121 + (v100.i32[1] * v114)) >> a3;
  *&v192[16] = (v27 + (v106 * v114) + (v100.i32[2] * v115)) >> a3;
  *&v192[20] = a2[7].i32[3];
  v138 = v7[60];
  LODWORD(v96) = v7[4];
  a2[2].i32[0] = (v27 + v132.i32[0] * v138 + v129.i32[3] * v96) >> a3;
  v139 = v7[28];
  v140 = v7[36];
  a2[2].i32[1] = (v27 + v133.i32[1] * v139 + v129.i32[2] * v140) >> a3;
  v141 = v7[44];
  v142 = v7[20];
  v143 = *&v193[40];
  v144 = *&v193[44];
  v146 = *&v193[48];
  v145 = *&v193[52];
  a2[2].i32[2] = (v27 + *&v193[40] * v141 + *&v193[52] * v142) >> a3;
  v147 = v7[12];
  v148 = v7[52];
  a2[2].i32[3] = (v27 + v144 * v147 + v146 * v148) >> a3;
  a2[3].i32[0] = (v27 + -(v144 * v148) + v146 * v147) >> a3;
  a2[3].i32[1] = (v27 + -(v143 * v142) + v145 * v141) >> a3;
  a2[3].i32[2] = (v27 + -(v133.i32[1] * v140) + v129.i32[2] * v139) >> a3;
  a2[3].i32[3] = (v27 + -(v132.i32[0] * v96) + v129.i32[3] * v138) >> a3;
  v149 = vrev64q_s32(*v189);
  v150 = vrev64q_s32(*&v189[16]);
  v151 = vaddq_s32(v150, *&v189[16]);
  v152 = vsubq_s32(v150, *&v189[16]);
  v153 = vrev64q_s32(*&v192[-8]);
  v154 = vaddq_s32(v153, *&v192[-8]);
  v155 = vsubq_s32(v153, *&v192[-8]);
  v156 = vaddq_s32(v149, *v189);
  v152.i32[0] = v151.i32[0];
  v152.i32[3] = v151.i32[3];
  v155.i32[0] = v154.i32[0];
  v157 = vsubq_s32(v149, *v189);
  v155.i32[3] = v154.i32[3];
  a2[5] = v152;
  a2[6] = v155;
  v158 = vrev64q_s32(*&v192[8]);
  v159 = vaddq_s32(v158, *&v192[8]);
  v160 = vsubq_s32(v158, *&v192[8]);
  v188 = v7[62];
  v161 = v7[2];
  v162 = v7[30];
  v163 = v7[34];
  v164 = v7[46];
  v165 = v7[18];
  v166 = v7[14];
  v167 = v7[50];
  *&v189[12] = (v27 + v156.i32[3] * v166 + v159.i32[0] * v167) >> a3;
  v168 = v7[54];
  v169 = v151.i32[0];
  LODWORD(v96) = v7[10];
  v170 = v27 + v151.i32[0] * v168 + v154.i32[3] * v96;
  v171 = v7[22];
  v172 = a2[5].i32[1];
  v173 = v7[42];
  v174 = a2[6].i32[2];
  v151.i32[0] = v7[26];
  v154.i32[0] = v151.i32[0];
  v154.i32[1] = v7[58];
  v151.i32[1] = v154.i32[1];
  v151.i32[2] = v7[6];
  v151.i32[3] = v7[38];
  *&v189[20] = (v27 + v172 * v171 + v174 * v173) >> a3;
  *v193 = v134;
  *&v193[16] = v130;
  v175 = a2[3];
  *&v193[32] = a2[2];
  *&v193[48] = v175;
  v176 = (v27 + -(v172 * v173) + v174 * v171) >> a3;
  v177 = (v27 + -(v169 * v96) + v154.i32[3] * v168) >> a3;
  v178 = (v27 + -(v157.i32[2] * v165) + v160.i32[1] * v164) >> a3;
  LODWORD(v96) = *&v193[4];
  a2->i32[0] = *v193;
  a2->i32[1] = (v27 + v188 * v156.i32[0] + v159.i32[3] * v161) >> a3;
  v179 = *&v193[36];
  a2->i32[2] = *&v193[32];
  v180 = *&v193[20];
  a2[1].i32[0] = *&v193[16];
  a2[1].i32[1] = v170 >> a3;
  v181 = *&v193[52];
  a2[1].i32[2] = *&v193[48];
  a2[1].i32[3] = (v27 + -(v156.i32[3] * v167) + v159.i32[0] * v166) >> a3;
  v182 = *&v193[12];
  a2[2].i32[0] = *&v193[8];
  a2[2].i32[1] = (v27 + v157.i32[2] * v164 + v160.i32[1] * v165) >> a3;
  LODWORD(v7) = *&v193[44];
  a2[2].i32[2] = *&v193[40];
  a2[2].i32[3] = v176;
  LODWORD(v176) = *&v193[28];
  a2[3].i32[0] = *&v193[24];
  v183 = *&v193[60];
  a2[3].i32[2] = *&v193[56];
  a2[3].i32[3] = (v27 + -(v157.i32[1] * v163) + v160.i32[2] * v162) >> a3;
  a2[4].i32[0] = v96;
  a2[4].i32[1] = (v27 + v157.i32[1] * v162 + v160.i32[2] * v163) >> a3;
  v130.i64[0] = a2[5].i64[1];
  v175.i64[0] = a2[6].i64[0];
  v184 = vmulq_s32(vzip1q_s32(vrev64q_s32(v175), v175), v151);
  v185 = vshlq_s64(vaddw_high_s32(vaddw_s32(v32, vrev64_s32(vneg_s32(vmul_s32(*v130.i8, *v154.i8)))), v184), v39);
  *v159.i8 = vmovn_s64(v185);
  a2[4].i32[3] = v159.i32[1];
  a2[4].i32[2] = v179;
  a2[5].i32[0] = v180;
  a2[5].i32[1] = *&v189[20];
  a2[5].i32[2] = v181;
  a2[5].i32[3] = v178;
  a2[6].i32[0] = v182;
  a2[6].i32[1] = *&v189[12];
  a2[6].i32[2] = v7;
  a2[6].i32[3] = v177;
  v186 = vshlq_s64(vaddw_s32(vaddw_s32(v32, vmul_s32(*v130.i8, *&vextq_s8(v151, vextq_s8(v151, v151, 8uLL), 0xCuLL))), *v184.i8), v39);
  a2[7].i32[0] = v176;
  a2[7].i32[1] = vuzp1q_s32(v186, v185).i32[1];
  a2[7].i32[2] = v183;
  a2[7].i32[3] = (v27 + -(v156.i32[0] * v161) + v159.i32[3] * v188) >> a3;
  result = vmovn_s64(v186);
  a2->i32[3] = v159.i32[0];
  a2[3].i32[1] = result.i32[0];
  return result;
}

int *sub_277980D1C(int *result, _DWORD *a2, int a3)
{
  v4 = *result;
  v3 = result[1];
  v6 = result[2];
  v5 = result[3];
  if (v3 | *result | v6 | v5)
  {
    v7 = &unk_277C42640 + 20 * a3;
    v8 = *(v7 - 49);
    v9 = *(v7 - 48);
    v10 = v8 * v4;
    v12 = v7 - 188;
    LODWORD(v7) = *(v7 - 47);
    v11 = *(v12 + 1);
    v13 = v11 * v4;
    v14 = v7 * v6;
    v15 = v7 * (v3 + v4 - v5);
    LODWORD(v7) = v13 - v8 * v3;
    v16 = v10 + v11 * v5 + v9 * v3;
    v17 = 1 << (a3 - 1);
    v18 = v7 + v9 * v5;
    *a2 = (v17 + v16 + v14) >> a3;
    a2[1] = (v17 + v15) >> a3;
    a2[2] = (v17 + v18 - v14) >> a3;
    a2[3] = (v17 + v14 + v18 - v16) >> a3;
  }

  else
  {
    *a2 = 0;
    *(a2 + 1) = 0;
  }

  return result;
}

int8x16_t sub_277980DC4(_DWORD *a1, _DWORD *a2, int a3)
{
  *a2 = *a1;
  a2[1] = -a1[7];
  v3 = a1[3];
  a2[2] = -v3;
  v4 = a1[4];
  a2[3] = v4;
  a2[4] = -a1[1];
  a2[5] = a1[6];
  v5 = a1[2];
  a2[6] = v5;
  v6 = a1[5];
  v28.i64[0] = *a2;
  v7 = dword_277C42240[64 * a3 - 608];
  v8 = -(v3 * v7);
  v9 = 1 << (a3 - 1);
  v10 = v9 + v8;
  v28.i32[2] = (v10 + v4 * v7) >> a3;
  v28.i32[3] = (v10 + -(v4 * v7)) >> a3;
  v29.i64[0] = *(a2 + 2);
  v11 = v9 + v5 * v7;
  v29.i32[2] = (v11 + -(v6 * v7)) >> a3;
  v29.i32[3] = (v11 + v6 * v7) >> a3;
  v12 = vextq_s8(v28, v28, 8uLL);
  v13 = vaddq_s32(v12, v28).u64[0];
  v14 = vextq_s8(v29, v29, 8uLL);
  v15 = vaddq_s32(v14, v29).u64[0];
  v16 = vsubq_s32(v14, v29);
  v28.i64[1] = vsubq_s32(v12, v28).i64[1];
  LODWORD(v11) = dword_277C42240[64 * a3 - 624];
  LODWORD(v7) = dword_277C42240[64 * a3 - 592];
  v29.i32[0] = (v9 + v11 * v15 + HIDWORD(v15) * v7) >> a3;
  v29.i32[1] = (v9 + v7 * v15 + -(v11 * HIDWORD(v15))) >> a3;
  v29.i32[2] = (v9 + -(v7 * v16.i32[2]) + v16.i32[3] * v11) >> a3;
  v29.i32[3] = (v9 + v16.i32[2] * v11 + v16.i32[3] * v7) >> a3;
  *v12.i8 = vadd_s32(*&vextq_s8(*(&v28 + 8), *(&v28 + 8), 8uLL), v13);
  v17.i64[0] = v29.i64[1];
  *v16.i8 = vsub_s32(v28.u64[1], v29.u64[1]);
  v17.u64[1] = v13;
  v18 = vaddq_s32(v17, *(&v28 + 8)).u64[0];
  v19 = vsubq_s32(v17, *(&v28 + 8));
  v20 = dword_277C42240[64 * a3 - 636];
  LODWORD(v10) = dword_277C42240[64 * a3 - 580];
  v21 = (v9 + v12.i32[0] * v20 + v12.i32[1] * v10) >> a3;
  v22 = (v9 + v10 * v12.i32[0] + -(v20 * v12.i32[1])) >> a3;
  v23 = dword_277C42240[64 * a3 - 620];
  v24 = dword_277C42240[64 * a3 - 596];
  v28.i32[3] = (v9 + v24 * v18 + -(v23 * HIDWORD(v18))) >> a3;
  LODWORD(v7) = dword_277C42240[64 * a3 - 604];
  LODWORD(v10) = dword_277C42240[64 * a3 - 612];
  v29.i32[0] = (v9 + v19.i32[2] * v7 + v19.i32[3] * v10) >> a3;
  v29.i32[1] = (v9 + v10 * v19.i32[2] + -(v7 * v19.i32[3])) >> a3;
  LODWORD(v7) = dword_277C42240[64 * a3 - 588];
  v25 = dword_277C42240[64 * a3 - 628];
  v29.i32[2] = (v9 + v16.i32[0] * v7 + v16.i32[1] * v25) >> a3;
  v26 = (v9 + v25 * v16.i32[0] + -(v7 * v16.i32[1])) >> a3;
  *a2 = v22;
  result = vextq_s8(*(&v28 + 12), *(&v28 + 12), 0xCuLL);
  *(a2 + 1) = result;
  a2[5] = (v9 + v23 * v18 + HIDWORD(v18) * v24) >> a3;
  a2[6] = v26;
  a2[7] = v21;
  return result;
}

int8x16_t sub_277981094(__int32 *a1, int32x2_t *a2, unsigned int a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, int32x4_t a11)
{
  a2->i32[0] = *a1;
  a2->i32[1] = -a1[15];
  v11 = a1[7];
  a2[1].i32[0] = -v11;
  v12 = a1[8];
  a2[1].i32[1] = v12;
  a2[2].i32[0] = -a1[3];
  a2[2].i32[1] = a1[12];
  v13 = a1[4];
  a2[3].i32[0] = v13;
  v14 = a1[11];
  a2[3].i32[1] = -v14;
  a2[4].i32[0] = -a1[1];
  a2[4].i32[1] = a1[14];
  v15 = a1[6];
  a2[5].i32[0] = v15;
  v16 = a1[9];
  a2[5].i32[1] = -v16;
  a2[6].i32[0] = a1[2];
  a2[6].i32[1] = -a1[13];
  v17 = a1[5];
  a2[7].i32[0] = -v17;
  v18 = a1[10];
  *v66.i8 = *a2;
  v19 = dword_277C42240[64 * a3 - 608];
  v20 = -(v11 * v19);
  v21 = 1 << (a3 - 1);
  v66.i32[2] = (v21 + v20 + v12 * v19) >> a3;
  v66.i32[3] = (v21 + v20 + -(v19 * v12)) >> a3;
  *v69.i8 = a2[2];
  v22 = v21 + v13 * v19;
  v69.i32[2] = (v22 + -(v14 * v19)) >> a3;
  v69.i32[3] = (v22 + v14 * v19) >> a3;
  *v72.i8 = a2[4];
  v23 = v21 + v15 * v19;
  v72.i32[2] = (v23 + -(v16 * v19)) >> a3;
  v72.i32[3] = (v23 + v16 * v19) >> a3;
  *v74.i8 = a2[6];
  v24 = v21 - v17 * v19;
  v25 = vextq_s8(v66, v66, 8uLL);
  *&v26 = vaddq_s32(v25, v66).u64[0];
  *(&v26 + 1) = vsubq_s32(v25, v66).i64[1];
  v74.i32[2] = (v24 + v18 * v19) >> a3;
  v74.i32[3] = (v24 + -(v19 * v18)) >> a3;
  v27 = vextq_s8(v69, v69, 8uLL);
  v28 = vaddq_s32(v27, v69);
  v29 = vsubq_s32(v27, v69);
  v30 = vextq_s8(v72, v72, 8uLL);
  v27.i64[0] = vaddq_s32(v30, v72).u64[0];
  v27.i64[1] = vsubq_s32(v30, v72).i64[1];
  v31 = vextq_s8(v74, v74, 8uLL);
  v32 = vaddq_s32(v31, v74);
  v33 = vsubq_s32(v31, v74);
  v34 = v28;
  v34.i32[2] = v29.i32[2];
  a11.i32[0] = dword_277C42240[64 * a3 - 624];
  a11.i32[1] = -dword_277C42240[64 * a3 - 592];
  a11.i32[2] = dword_277C42240[64 * a3 - 592];
  v35 = vzip2q_s32(a11, vuzp1q_s32(a11, a11));
  a11.i32[3] = a11.i32[0];
  v36 = vmulq_s32(vuzp1q_s32(v34, v34), a11);
  v28.i32[3] = v29.i32[3];
  v35.i32[2] = -a11.i32[0];
  v37 = vmulq_s32(vuzp2q_s32(v28, v28), v35);
  v38 = vdupq_n_s64(v21);
  v39 = vaddw_high_s32(v38, v36);
  v40 = vaddw_s32(vaddw_s32(v38, *v36.i8), *v37.i8);
  v41 = vaddw_high_s32(v39, v37);
  v42 = vnegq_s64(vdupq_n_s64(a3));
  v43 = vuzp1q_s32(vshlq_s64(v40, v42), vshlq_s64(v41, v42));
  v67 = v26;
  v70 = vuzp1q_s32(v43, vrev64q_s32(v43));
  v44 = v32;
  v44.i32[2] = v33.i32[2];
  v45 = vmulq_s32(vuzp1q_s32(v44, v44), a11);
  v32.i32[3] = v33.i32[3];
  v46 = vmulq_s32(vuzp2q_s32(v32, v32), v35);
  v47 = vuzp1q_s32(vshlq_s64(vaddw_s32(vaddw_s32(v38, *v45.i8), *v46.i8), v42), vshlq_s64(vaddw_high_s32(vaddw_high_s32(v38, v45), v46), v42));
  v73 = v27;
  v75 = vuzp1q_s32(v47, vrev64q_s32(v47));
  v27.i64[0] = *(&v67 + 1);
  v47.i64[0] = v67;
  *a2 = vadd_s32(*&vextq_s8(*(&v67 + 8), *(&v67 + 8), 8uLL), *&v67);
  v47.i64[1] = v67;
  v38.i64[0] = vaddq_s32(*(&v70 + 8), *(&v67 + 8)).u64[0];
  v38.i64[1] = vsubq_s32(v47, *(&v67 + 8)).i64[1];
  *a2[1].i8 = v38;
  v38.i64[0] = vsubq_s32(*(&v67 + 8), *(&v70 + 8)).u64[0];
  v27.i64[1] = v75.i64[0];
  v38.i64[1] = vaddq_s32(v27, *(&v70 + 8)).i64[1];
  *a2[3].i8 = v38;
  v27.i64[0] = v75.i64[1];
  v38.i64[0] = vaddq_s32(v27, *(&v73 + 8)).u64[0];
  v48 = vsubq_s32(*(&v70 + 8), *(&v73 + 8));
  *v27.i8 = vsub_s32(v73.u64[1], v75.u64[1]);
  v68 = *a2->i8;
  v71 = *a2[2].i8;
  v49 = dword_277C42240[64 * a3 - 632];
  LODWORD(v24) = dword_277C42240[64 * a3 - 584];
  v73.i32[0] = (v21 + v38.i32[2] * v49 + v38.i32[3] * v24) >> a3;
  v73.i32[1] = (v21 + v24 * v38.i32[2] + -(v49 * v38.i32[3])) >> a3;
  LODWORD(v17) = dword_277C42240[64 * a3 - 600];
  LODWORD(v19) = dword_277C42240[64 * a3 - 616];
  v73.i32[3] = (v21 + v19 * v38.i32[0] + -(v17 * v38.i32[1])) >> a3;
  v75.i32[0] = (v21 + -(v24 * v48.i32[2]) + v48.i32[3] * v49) >> a3;
  v75.i32[1] = (v21 + v48.i32[2] * v49 + v48.i32[3] * v24) >> a3;
  v75.i32[2] = (v21 + -(v19 * v27.i32[0]) + v27.i32[1] * v17) >> a3;
  *v47.i8 = vadd_s32(*&vextq_s8(*(&v73 - 8), *(&v73 - 8), 8uLL), *a2);
  *v33.i8 = vdup_lane_s32(*(&v73.u64[1] + 4), 0);
  v33.i32[0] = (v21 + v17 * v38.i32[0] + v38.i32[1] * v19) >> a3;
  v50 = vdupq_lane_s32(*(&v71 + 8), 0);
  *v33.i8 = vadd_s32(*v33.i8, a2[1]);
  v50.i32[0] = HIDWORD(*a2->i8);
  LODWORD(v20) = *&a2[1] - ((v21 + v17 * v38.i32[0] + v38.i32[1] * v19) >> a3);
  a2[5].i32[0] = v20;
  *v38.i8 = vadd_s32(*&vextq_s8(*(&v73 + 12), *(&v73 + 12), 4uLL), *&v71);
  a2[2] = *v38.i8;
  v35.i32[0] = vdupq_laneq_s32(*(&v73 + 12), 3).u32[0];
  v35.i32[1] = (v21 + v27.i32[0] * v17 + v27.i32[1] * v19) >> a3;
  v35.i64[1] = v68;
  *&v51 = vaddq_s32(v35, *(&v73 - 8)).u64[0];
  *(&v51 + 1) = vsubq_s32(v35, *(&v73 + -8)).i64[1];
  v50.i32[1] = v71;
  *a2[3].i8 = v51;
  v50.i32[2] = DWORD1(v71);
  *&a2[5].u8[4] = vsubq_s32(v50, *(&v73 + 12));
  v52 = HIDWORD(v71) - v35.i32[1];
  a2[7].i32[1] = HIDWORD(v71) - v35.i32[1];
  LODWORD(v24) = dword_277C42240[64 * a3 - 638];
  LODWORD(v22) = dword_277C42240[64 * a3 - 578];
  v53 = dword_277C42240[64 * a3 - 630];
  v54 = dword_277C42240[64 * a3 - 586];
  v55 = v21 + v33.i32[0] * v53 + v33.i32[1] * v54;
  v56 = v21 + v54 * v33.i32[0] + -(v53 * v33.i32[1]);
  v57 = dword_277C42240[64 * a3 - 622];
  v58 = dword_277C42240[64 * a3 - 594];
  LODWORD(v68) = (v21 + v47.i32[0] * v24 + v47.i32[1] * v22) >> a3;
  DWORD1(v68) = (v21 + v22 * v47.i32[0] + -(v24 * v47.i32[1])) >> a3;
  DWORD2(v68) = v55 >> a3;
  HIDWORD(v68) = v56 >> a3;
  LODWORD(v71) = (v21 + v38.i32[0] * v57 + v38.i32[1] * v58) >> a3;
  DWORD1(v71) = (v21 + v58 * v38.i32[0] + -(v57 * v38.i32[1])) >> a3;
  LODWORD(v56) = dword_277C42240[64 * a3 - 614];
  v59 = dword_277C42240[64 * a3 - 602];
  LODWORD(v22) = a2[3].i32[1];
  LODWORD(v55) = a2[4].i32[0];
  DWORD2(v71) = (v21 + v51 * v56 + v22 * v59) >> a3;
  HIDWORD(v71) = (v21 + v59 * v51 + -(v56 * v22)) >> a3;
  LODWORD(v17) = dword_277C42240[64 * a3 - 606];
  LODWORD(v56) = dword_277C42240[64 * a3 - 610];
  v60 = a2[4].i32[1];
  v73.i32[0] = (v21 + v55 * v17 + v60 * v56) >> a3;
  v73.i32[1] = (v21 + v56 * v55 + -(v17 * v60)) >> a3;
  LODWORD(v17) = dword_277C42240[64 * a3 - 598];
  LODWORD(v56) = dword_277C42240[64 * a3 - 618];
  LODWORD(v19) = a2[5].i32[1];
  LODWORD(v22) = a2[6].i32[0];
  v73.i32[2] = (v21 + v20 * v17 + v19 * v56) >> a3;
  v61 = (v21 + v56 * v20 + -(v17 * v19)) >> a3;
  LODWORD(v17) = dword_277C42240[64 * a3 - 590];
  LODWORD(v56) = dword_277C42240[64 * a3 - 626];
  LODWORD(v19) = a2[6].i32[1];
  LODWORD(v55) = a2[7].i32[0];
  v62 = (v21 + v22 * v17 + v19 * v56) >> a3;
  v63 = (v21 + v56 * v22 + -(v17 * v19)) >> a3;
  LODWORD(v56) = dword_277C42240[64 * a3 - 582];
  v64 = dword_277C42240[64 * a3 - 634];
  a2->i32[0] = DWORD1(v68);
  a2->i32[1] = (v21 + v55 * v56 + v52 * v64) >> a3;
  a2[1].i32[0] = HIDWORD(v68);
  a2[1].i32[1] = v62;
  a2[2].i32[0] = DWORD1(v71);
  result = vextq_s8(*(&v73 - 4), *(&v73 - 4), 0xCuLL);
  *&a2[2].u8[4] = result;
  a2[4].i32[1] = DWORD2(v71);
  a2[5].i32[0] = v61;
  a2[5].i32[1] = v71;
  a2[6].i32[0] = v63;
  a2[6].i32[1] = DWORD2(v68);
  a2[7].i32[0] = (v21 + v64 * v55 + -(v56 * v52)) >> a3;
  a2[7].i32[1] = v68;
  return result;
}

uint64_t sub_277981704(uint64_t result, uint64_t a2)
{
  for (i = 0; i != 16; i += 4)
  {
    *(a2 + i) = (5793 * *(result + i) + 2048) >> 12;
  }

  return result;
}

uint64_t sub_277981730(uint64_t result, uint64_t a2)
{
  for (i = 0; i != 32; i += 4)
  {
    *(a2 + i) = 2 * *(result + i);
  }

  return result;
}

uint64_t sub_277981750(uint64_t result, uint64_t a2)
{
  for (i = 0; i != 64; i += 4)
  {
    *(a2 + i) = (11586 * *(result + i) + 2048) >> 12;
  }

  return result;
}

uint64_t sub_27798177C(uint64_t result, uint64_t a2)
{
  for (i = 0; i != 128; i += 4)
  {
    *(a2 + i) = 4 * *(result + i);
  }

  return result;
}

int32x2_t sub_27798179C(_DWORD *a1, int *a2, unsigned int a3)
{
  *a2 = a1[63] + *a1;
  a2[1] = a1[62] + a1[1];
  a2[2] = a1[61] + a1[2];
  a2[3] = a1[60] + a1[3];
  a2[4] = a1[59] + a1[4];
  a2[5] = a1[58] + a1[5];
  a2[6] = a1[57] + a1[6];
  a2[7] = a1[56] + a1[7];
  a2[8] = a1[55] + a1[8];
  a2[9] = a1[54] + a1[9];
  a2[10] = a1[53] + a1[10];
  a2[11] = a1[52] + a1[11];
  a2[12] = a1[51] + a1[12];
  a2[13] = a1[50] + a1[13];
  a2[14] = a1[49] + a1[14];
  a2[15] = a1[48] + a1[15];
  a2[16] = a1[47] + a1[16];
  a2[17] = a1[46] + a1[17];
  a2[18] = a1[45] + a1[18];
  a2[19] = a1[44] + a1[19];
  a2[20] = a1[43] + a1[20];
  a2[21] = a1[42] + a1[21];
  a2[22] = a1[41] + a1[22];
  a2[23] = a1[40] + a1[23];
  a2[24] = a1[39] + a1[24];
  a2[25] = a1[38] + a1[25];
  a2[26] = a1[37] + a1[26];
  a2[27] = a1[36] + a1[27];
  a2[28] = a1[35] + a1[28];
  a2[29] = a1[34] + a1[29];
  a2[30] = a1[33] + a1[30];
  a2[31] = a1[32] + a1[31];
  a2[32] = a1[31] - a1[32];
  a2[33] = a1[30] - a1[33];
  a2[34] = a1[29] - a1[34];
  a2[35] = a1[28] - a1[35];
  a2[36] = a1[27] - a1[36];
  a2[37] = a1[26] - a1[37];
  a2[38] = a1[25] - a1[38];
  a2[39] = a1[24] - a1[39];
  a2[40] = a1[23] - a1[40];
  a2[41] = a1[22] - a1[41];
  a2[42] = a1[21] - a1[42];
  a2[43] = a1[20] - a1[43];
  a2[44] = a1[19] - a1[44];
  a2[45] = a1[18] - a1[45];
  a2[46] = a1[17] - a1[46];
  a2[47] = a1[16] - a1[47];
  a2[48] = a1[15] - a1[48];
  a2[49] = a1[14] - a1[49];
  a2[50] = a1[13] - a1[50];
  a2[51] = a1[12] - a1[51];
  a2[52] = a1[11] - a1[52];
  a2[53] = a1[10] - a1[53];
  a2[54] = a1[9] - a1[54];
  a2[55] = a1[8] - a1[55];
  a2[56] = a1[7] - a1[56];
  a2[57] = a1[6] - a1[57];
  a2[58] = a1[5] - a1[58];
  a2[59] = a1[4] - a1[59];
  a2[60] = a1[3] - a1[60];
  a2[61] = a1[2] - a1[61];
  a2[62] = a1[1] - a1[62];
  a2[63] = *a1 - a1[63];
  v336 = &dword_277C42240[64 * a3];
  v5 = a2[1];
  v6 = a2[30];
  v337 = a2[31];
  v349 = v6 + v5;
  v7 = a2[2];
  v8 = a2[3];
  v10 = a2[28];
  v9 = a2[29];
  v11 = a2[4];
  v12 = a2[5];
  v14 = a2[26];
  v13 = a2[27];
  v15 = a2[6];
  v16 = a2[7];
  v18 = a2[24];
  v17 = a2[25];
  *&v350[8] = v17 + v15;
  *&v350[12] = v18 + v16;
  v19 = a2[8];
  v20 = a2[9];
  v22 = a2[22];
  v21 = a2[23];
  *&v350[16] = v21 + v19;
  *&v350[20] = v22 + v20;
  v23 = a2[10];
  v24 = a2[11];
  v26 = a2[20];
  v25 = a2[21];
  v28 = a2[12];
  v27 = a2[13];
  v29 = a2[18];
  v30 = a2[19];
  v351 = v30 + v28;
  v352 = v29 + v27;
  *&v350[56] = v27 - v29;
  *&v350[60] = v28 - v30;
  v31 = *(a2 + 14);
  v32 = vrev64q_s32(v31);
  v33 = vextq_s8(v32, v32, 8uLL);
  *&v34 = vaddq_s32(v33, v31).u64[0];
  *(&v34 + 1) = vsubq_s32(v33, v31).i64[1];
  *&v350[40] = v34;
  *&v350[64] = v24 - v26;
  *&v350[68] = v23 - v25;
  *&v350[72] = v20 - v22;
  *&v350[76] = v19 - v21;
  *&v350[80] = v16 - v18;
  *&v350[84] = v15 - v17;
  *&v350[88] = v12 - v14;
  *&v350[92] = v11 - v13;
  *&v350[96] = v8 - v10;
  *&v350[100] = v7 - v9;
  *&v350[104] = v5 - v6;
  *&v350[108] = *a2 - v337;
  v339 = *(a2 + 8);
  v341 = *(a2 + 9);
  v35 = *(v336 - 608);
  v36 = 1 << (a3 - 1);
  v37 = *(a2 + 10);
  v38 = *(a2 + 11);
  v39 = vdupq_n_s32(-v35);
  v40 = vmulq_s32(v37, v39);
  v41 = vdupq_n_s32(v35);
  v42 = vmulq_s32(*(a2 + 13), v41);
  v43 = vdupq_n_s64(v36);
  v44 = vaddw_s32(v43, *v42.i8);
  v45 = vaddw_high_s32(v43, v42);
  v46 = vextq_s8(v45, v45, 8uLL);
  v47 = vextq_s8(v44, v44, 8uLL);
  v48 = vaddw_high_s32(v47, v40);
  v49 = vaddw_s32(v46, *v40.i8);
  v50 = vnegq_s64(vdupq_n_s64(a3));
  v51 = vuzp1q_s32(vshlq_s64(v49, v50), vshlq_s64(v48, v50));
  v52 = vmulq_s32(v38, v39);
  v53 = vmulq_s32(*(a2 + 12), v41);
  v54 = vaddw_s32(v43, *v53.i8);
  v55 = vaddw_high_s32(v43, v53);
  v56 = vextq_s8(v55, v55, 8uLL);
  v57 = vextq_s8(v54, v54, 8uLL);
  v58 = vshlq_s64(vaddw_high_s32(v57, v52), v50);
  v59 = vuzp1q_s32(vshlq_s64(vaddw_s32(v56, *v52.i8), v50), v58);
  v342 = v51;
  v60 = vmulq_s32(v38, v41);
  v61 = vrev64q_s32(vuzp1q_s32(vshlq_s64(vaddw_s32(v56, *v60.i8), v50), vshlq_s64(vaddw_high_s32(v57, v60), v50)));
  v62 = vmulq_s32(v37, v41);
  v63 = vrev64q_s32(vuzp1q_s32(vshlq_s64(vaddw_s32(v46, *v62.i8), v50), vshlq_s64(vaddw_high_s32(v47, v62), v50)));
  v343 = vextq_s8(v61, v61, 8uLL);
  v344 = vextq_s8(v63, v63, 8uLL);
  v345 = *(a2 + 14);
  v346 = *(a2 + 15);
  v64 = v337 + *a2;
  *a2 = *&v350[44] + v64;
  a2[1] = *&v350[40] + v349;
  a2[2] = v352 + v9 + v7;
  a2[3] = v351 + v10 + v8;
  a2[4] = v26 + v24 + v13 + v11;
  a2[5] = v25 + v23 + v14 + v12;
  v65 = vrev64q_s32(*&v350[8]);
  v66 = vextq_s8(v65, v65, 8uLL);
  v46.i64[0] = vaddq_s32(v66, *&v350[8]).u64[0];
  v46.i64[1] = vsubq_s32(v66, *(v350 + 8)).i64[1];
  *(a2 + 6) = v46;
  a2[10] = v14 + v12 - (v25 + v23);
  a2[11] = v13 + v11 - (v26 + v24);
  a2[12] = v10 + v8 - v351;
  a2[13] = v9 + v7 - v352;
  a2[14] = v349 - *&v350[40];
  a2[15] = v64 - *&v350[44];
  v67 = vmulq_s32(*&v350[64], v39);
  v68 = vmulq_s32(*&v350[80], v41);
  v69 = vaddw_s32(v43, *v68.i8);
  v70 = vaddw_high_s32(v43, v68);
  v71 = vextq_s8(v70, v70, 8uLL);
  v72 = vextq_s8(v69, v69, 8uLL);
  *(a2 + 4) = *&v350[48];
  *(a2 + 5) = vuzp1q_s32(vshlq_s64(vaddw_s32(v71, *v67.i8), v50), vshlq_s64(vaddw_high_s32(v72, v67), v50));
  v73 = vmulq_s32(*&v350[64], v41);
  v74 = vrev64q_s32(vuzp1q_s32(vshlq_s64(vaddw_s32(v71, *v73.i8), v50), vshlq_s64(vaddw_high_s32(v72, v73), v50)));
  *(a2 + 6) = vextq_s8(v74, v74, 8uLL);
  *(a2 + 7) = *&v350[96];
  v75 = vmovn_s64(*&v58).i32[1];
  a2[32] = v75 + v339;
  a2[33] = v59.i32[2] + DWORD1(v339);
  a2[34] = v59.i32[1] + DWORD2(v339);
  a2[35] = v59.i32[0] + HIDWORD(v339);
  a2[36] = v342.i32[3] + v341;
  a2[37] = v342.i32[2] + DWORD1(v341);
  v76 = vrev64q_s32(*(&v341 + 8));
  v77 = vextq_s8(v76, v76, 8uLL);
  v63.i64[0] = vaddq_s32(v77, *(&v341 + 8)).u64[0];
  v63.i64[1] = vsubq_s32(v77, *(&v341 + 8)).i64[1];
  *(a2 + 38) = v63;
  a2[42] = DWORD1(v341) - v342.i32[2];
  a2[43] = v341 - v342.i32[3];
  a2[44] = HIDWORD(v339) - v59.i32[0];
  a2[45] = DWORD2(v339) - v59.i32[1];
  a2[46] = DWORD1(v339) - v59.i32[2];
  a2[47] = v339 - v75;
  v78 = vrev64q_s32(*(&v344 + 12));
  v79 = vextq_s8(v78, v78, 8uLL);
  a2[52] = HIDWORD(v345) - v344.i32[0];
  v80 = vextq_s8(*(&v343 + 12), *(&v344 + 12), 8uLL);
  v81 = vsubq_s32(v79, v80);
  v81.i32[3] = vaddq_s32(v79, v80).i32[3];
  v80.i64[0] = __PAIR64__(HIDWORD(v345), v346);
  v80.i64[1] = v79.i64[0];
  *(a2 + 53) = v81;
  v82 = vrev64q_s32(vaddq_s32(v80, *(&v343 + 12)));
  *(a2 + 57) = vextq_s8(v82, v82, 8uLL);
  *(a2 + 24) = vrev64_s32(vsub_s32(*(&v346 + 8), __PAIR64__(v343.u32[0], v343.u32[1])));
  *(a2 + 25) = vsub_s32(vrev64_s32(*&v346), vext_s8(*(v343.i64 + 4), *(&v343.u64[1] + 4), 4uLL));
  *(a2 + 61) = vadd_s32(vext_s8(*&v346, *(&v346 + 8), 4uLL), vrev64_s32(*(v343.i64 + 4)));
  a2[63] = HIDWORD(v346) + v343.i32[0];
  v83 = a2[1];
  v85 = a2[6];
  v84 = a2[7];
  v86 = *(a2 + 2);
  v87 = vrev64q_s32(v86);
  v88 = vextq_s8(v87, v87, 8uLL);
  v63.i64[1] = vsubq_s32(v88, v86).i64[1];
  v347.i32[0] = v84 + *a2;
  v347.i32[1] = v85 + v83;
  v347.i64[1] = vaddq_s32(v88, v86).u64[0];
  *&v350[8] = v83 - v85;
  *&v350[12] = *a2 - v84;
  v86.i64[0] = *(a2 + 5);
  *&v350[16] = *(a2 + 4);
  v86.i64[1] = v86.i64[0];
  v89 = vaddw_s32(v43, vmul_s32(*(a2 + 12), *v41.i8));
  v90 = vextq_s8(v89, v89, 8uLL);
  v41.i32[1] = -v35;
  v91 = vrev64q_s32(v41);
  v92 = vmulq_s32(v86, vzip1q_s32(v91, v91));
  v93 = vuzp1q_s32(vshlq_s64(vaddw_s32(v90, *v92.i8), v50), vshlq_s64(vaddw_high_s32(v90, v92), v50));
  v94 = vrev64q_s32(v93);
  v94.i64[0] = v93.i64[0];
  *&v350[24] = v94;
  *&v350[40] = *(a2 + 7);
  v95 = a2[16];
  v96 = a2[17];
  v98 = a2[22];
  v97 = a2[23];
  *&v350[48] = v97 + v95;
  *&v350[52] = v98 + v96;
  v99 = *(a2 + 18);
  v100 = vrev64q_s32(v99);
  v101 = vextq_s8(v100, v100, 8uLL);
  v90.i64[0] = vaddq_s32(v101, v99).u64[0];
  v90.i64[1] = vsubq_s32(v101, v99).i64[1];
  *&v350[56] = v90;
  *&v350[72] = v96 - v98;
  *&v350[76] = v95 - v97;
  v102 = a2[24];
  v103 = a2[31];
  v104 = vrev64q_s32(*(a2 + 27));
  v105 = vextq_s8(v104, v104, 8uLL);
  v106 = *(a2 + 25);
  v107 = vsubq_s32(v105, v106);
  v107.i32[3] = vaddq_s32(v105, v106).i32[3];
  *&v350[80] = v103 - v102;
  *&v350[84] = v107;
  *&v350[100] = vrev64_s32(vadd_s32(*v105.i8, *v106.i8));
  *&v350[108] = v103 + v102;
  v108 = *(a2 + 9);
  v109 = *(v336 - 624);
  v110 = *(v336 - 592);
  v111 = *(a2 + 14);
  v112 = vdupq_n_s32(v110);
  *v107.i8 = vneg_s32(__PAIR64__(v110, v109));
  v113 = vmulq_s32(v111, v112);
  v114.i64[0] = v113.i32[0];
  v114.i64[1] = v113.i32[1];
  v115 = v114;
  v114.i64[0] = v113.i32[2];
  v114.i64[1] = v113.i32[3];
  v116 = vmulq_s32(v111, vdupq_n_s32(v109));
  v117 = vmulq_s32(v112, v108);
  v118 = vaddw_s32(v43, *v117.i8);
  v119 = vaddw_high_s32(v43, v117);
  *&v340[96] = vuzp1q_s32(vshlq_s64(vaddw_s32(vextq_s8(v119, v119, 8uLL), *v116.i8), v50), vshlq_s64(vaddw_high_s32(vextq_s8(v118, v118, 8uLL), v116), v50));
  *&v340[112] = *(a2 + 15);
  v120 = vdupq_lane_s32(*v107.i8, 0);
  v121 = vmulq_n_s32(v108, v107.i32[0]);
  *v340 = *(a2 + 8);
  *&v340[16] = vuzp1q_s32(vshlq_s64(vaddq_s64(vaddw_s32(v43, *v121.i8), vextq_s8(v114, v114, 8uLL)), v50), vshlq_s64(vaddq_s64(vaddw_high_s32(v43, v121), vextq_s8(v115, v115, 8uLL)), v50));
  v122 = *(a2 + 10);
  v123 = *(a2 + 13);
  v124 = vmulq_lane_s32(v122, *v107.i8, 1);
  v125 = vmulq_n_s32(v123, v107.i32[0]);
  v114.i64[0] = v125.i32[0];
  v114.i64[1] = v125.i32[1];
  v126 = v114;
  v114.i64[0] = v125.i32[2];
  v114.i64[1] = v125.i32[3];
  v127 = vaddw_s32(v43, *v124.i8);
  *&v340[32] = vuzp1q_s32(vshlq_s64(vaddq_s64(v127, vextq_s8(v114, v114, 8uLL)), v50), vshlq_s64(vaddq_s64(vaddw_high_s32(v43, v124), vextq_s8(v126, v126, 8uLL)), v50));
  *&v340[48] = *(a2 + 11);
  v128 = vmulq_s32(v123, v112);
  v129 = vmulq_n_s32(v122, v107.i32[0]);
  v130 = vaddw_s32(v43, *v129.i8);
  v131 = vaddw_high_s32(v43, v129);
  v132 = vaddw_high_s32(vextq_s8(v130, v130, 8uLL), v128);
  *&v340[64] = *(a2 + 12);
  *&v340[80] = vuzp1q_s32(vshlq_s64(vaddw_s32(vextq_s8(v131, v131, 8uLL), *v128.i8), v50), vshlq_s64(v132, v50));
  v133 = vrev64q_s32(v347);
  v134 = vextq_s8(v133, v133, 8uLL);
  v131.i64[0] = vaddq_s32(v134, v347).u64[0];
  v131.i64[1] = vsubq_s32(v134, v347).i64[1];
  *a2 = v131;
  v135 = v36 + *&v350[8] * v35;
  a2[4] = v63.i32[2];
  a2[5] = (v135 + -(v35 * v63.i32[3])) >> a3;
  a2[6] = (v135 + v63.i32[3] * v35) >> a3;
  a2[7] = *&v350[12];
  v136 = vrev64q_s32(*&v350[16]);
  v137 = vextq_s8(v136, v136, 8uLL);
  v131.i64[0] = vaddq_s32(v137, *&v350[16]).u64[0];
  v138 = vsubq_s32(v137, *&v350[16]);
  v131.i64[1] = v138.i64[1];
  v132.i64[0] = *&v350[40];
  v138.i64[0] = *&v350[32];
  v139 = vzip1q_s32(v138, vrev64q_s32(v138));
  v140 = vzip1q_s32(vrev64q_s32(v132), v132);
  v138.i64[0] = vsubq_s32(v140, v138).u64[0];
  v138.i64[1] = vaddq_s32(v140, v139).i64[1];
  *(a2 + 2) = v131;
  *(a2 + 3) = v138;
  *v125.i8 = vmul_s32(*&v350[96], *v112.i8);
  v114.i64[0] = v125.i32[0];
  v114.i64[1] = v125.i32[1];
  *(a2 + 8) = *&v350[48];
  *(a2 + 9) = vmovn_s64(vshlq_s64(vaddq_s64(vaddw_s32(v43, vmul_n_s32(*&v350[56], v107.i32[0])), vextq_s8(v114, v114, 8uLL)), v50));
  v139.i64[0] = __PAIR64__(*&v350[64], *&v350[88]);
  *v125.i8 = vmul_n_s32(*&v350[88], v107.i32[0]);
  v114.i64[0] = v125.i32[0];
  v114.i64[1] = v125.i32[1];
  *(a2 + 10) = vmovn_s64(vshlq_s64(vaddq_s64(vaddw_s32(v43, vmul_lane_s32(*&v350[64], *v107.i8, 1)), vextq_s8(v114, v114, 8uLL)), v50));
  *(a2 + 22) = *&v350[72];
  v124.i32[0] = vdup_lane_s32(*&v350[64], 1).u32[0];
  v124.i64[1] = *&v350[96];
  v124.i32[1] = *&v350[92];
  v141 = v120;
  v141.i32[1] = v110;
  v142 = vzip1q_s32(vdupq_lane_s32(*v141.i8, 1), v141);
  v141.i32[2] = v109;
  v141.i32[3] = v109;
  v143 = vmulq_s32(v124, v141);
  v139.i64[1] = __PAIR64__(*&v350[56], *&v350[60]);
  v144 = vmulq_s32(v139, v142);
  *(a2 + 26) = vuzp1q_s32(vshlq_s64(vaddw_s32(vaddw_s32(v43, *v143.i8), *v144.i8), v50), vshlq_s64(vaddw_high_s32(vaddw_high_s32(v43, v143), v144), v50));
  *(a2 + 15) = *&v350[104];
  a2[32] = *&v340[28] + *v340;
  a2[33] = *&v340[24] + *&v340[4];
  v145 = vrev64q_s32(*&v340[8]);
  v146 = vextq_s8(v145, v145, 8uLL);
  v143.i64[0] = vaddq_s32(v146, *&v340[8]).u64[0];
  v143.i64[1] = vsubq_s32(v146, *(v340 + 8)).i64[1];
  *(a2 + 34) = v143;
  a2[38] = *&v340[4] - *&v340[24];
  a2[39] = *v340 - *&v340[28];
  v147 = vrev64q_s32(*&v340[44]);
  v148 = vextq_s8(v147, v147, 8uLL);
  a2[40] = *&v340[60] - *&v340[32];
  v149 = vsubq_s32(v148, *&v340[36]);
  v149.i32[3] = vaddq_s32(v148, *(v340 + 36)).i32[3];
  *(a2 + 41) = v149;
  *(a2 + 45) = vrev64_s32(vadd_s32(*&v340[36], *v148.i8));
  a2[47] = *&v340[32] + *&v340[60];
  a2[48] = *&v340[92] + *&v340[64];
  v150 = vrev64q_s32(*&v340[72]);
  v151 = vextq_s8(v150, v150, 8uLL);
  v143.i64[0] = vaddq_s32(v151, *&v340[72]).u64[0];
  v143.i64[1] = vsubq_s32(v151, *(v340 + 72)).i64[1];
  a2[49] = *&v340[88] + *&v340[68];
  *(a2 + 50) = v143;
  a2[54] = *&v340[68] - *&v340[88];
  a2[55] = *&v340[64] - *&v340[92];
  a2[56] = *&v340[124] - *&v340[96];
  v152 = vrev64q_s32(*&v340[108]);
  v153 = vextq_s8(v152, v152, 8uLL);
  v154 = vsubq_s32(v153, *&v340[100]);
  v154.i32[3] = vaddq_s32(v153, *(v340 + 100)).i32[3];
  *(a2 + 57) = v154;
  *(a2 + 61) = vrev64_s32(vadd_s32(*&v340[100], *v153.i8));
  a2[63] = *&v340[96] + *&v340[124];
  v154.i64[0] = *(a2 + 1);
  *v112.i8 = vmul_s32(*v154.i8, *v112.i8);
  *v154.i8 = vmul_s32(*v154.i8, __PAIR64__(v109, v107.u32[0]));
  v114.i64[0] = v154.i32[0];
  v114.i64[1] = v154.i32[1];
  v347.u64[1] = vmovn_s64(vshlq_s64(vaddq_s64(vaddw_s32(v43, *v112.i8), vextq_s8(v114, v114, 8uLL)), v50));
  v155 = *(a2 + 1);
  v156 = vrev64q_s32(v155);
  v157 = vaddq_s32(v156, v155);
  v158 = vsubq_s32(v156, v155);
  v158.i32[0] = v157.i32[0];
  v158.i32[3] = v157.i32[3];
  *v350 = v158;
  v158.i64[0] = *(a2 + 9);
  v156.i64[0] = *(a2 + 13);
  *v157.i8 = vmul_s32(*v158.i8, *v107.i8);
  v107.i32[1] = v110;
  *v107.i8 = vmul_s32(*v156.i8, *v107.i8);
  v114.i64[0] = v107.i32[0];
  v114.i64[1] = v107.i32[1];
  *&v350[20] = vmovn_s64(vshlq_s64(vaddq_s64(vaddw_s32(v43, *v157.i8), vextq_s8(v114, v114, 8uLL)), v50));
  *&v350[28] = *(a2 + 11);
  v120.i32[0] = v110;
  *v120.i8 = vmul_s32(*v158.i8, *v120.i8);
  v114.i64[0] = v120.i32[0];
  v114.i64[1] = v120.i32[1];
  *v107.i8 = vmovn_s64(vshlq_s64(vaddq_s64(vaddw_s32(v43, vmul_s32(*v156.i8, __PAIR64__(v109, v110))), vextq_s8(v114, v114, 8uLL)), v50));
  v159 = *(a2 + 4);
  v160 = vrev64q_s32(v159);
  v161 = vextq_s8(v160, v160, 8uLL);
  v156.i64[0] = vaddq_s32(v161, v159).u64[0];
  v156.i64[1] = vsubq_s32(v161, v159).i64[1];
  *&v350[36] = v107.i64[0];
  v162 = *(a2 + 5);
  v163 = vrev64q_s32(v162);
  v164 = vextq_s8(v163, v163, 8uLL);
  v161.i64[0] = vsubq_s32(v164, v162).u64[0];
  v161.i64[1] = vaddq_s32(v164, v162).i64[1];
  *&v350[48] = v156;
  *&v350[64] = v161;
  v165 = *(a2 + 6);
  v166 = vrev64q_s32(v165);
  v167 = vextq_s8(v166, v166, 8uLL);
  v161.i64[0] = vaddq_s32(v167, v165).u64[0];
  v161.i64[1] = vsubq_s32(v167, v165).i64[1];
  v168 = *(a2 + 7);
  v169 = vrev64q_s32(v168);
  v170 = vextq_s8(v169, v169, 8uLL);
  v156.i64[0] = vsubq_s32(v170, v168).u64[0];
  v156.i64[1] = vaddq_s32(v170, v168).i64[1];
  *&v350[80] = v161;
  *&v350[96] = v156;
  *v340 = *(a2 + 16);
  v171 = *(v336 - 632);
  v172 = *(v336 - 584);
  *v156.i8 = vneg_s32(__PAIR64__(v172, v171));
  v173 = *(a2 + 34);
  v174 = *(a2 + 58);
  v175 = vmulq_s32(v173, vzip1q_s32(v156, v156));
  *v157.i8 = vdup_lane_s32(*v156.i8, 0);
  v157.u64[1] = vdup_n_s32(v172);
  v176 = vmulq_s32(v174, v157);
  v114.i64[0] = v176.i32[0];
  v114.i64[1] = v176.i32[1];
  v177 = v114;
  v114.i64[0] = v176.i32[2];
  v114.i64[1] = v176.i32[3];
  *&v340[8] = vuzp1q_s32(vshlq_s64(vaddq_s64(vaddw_s32(v43, *v175.i8), vextq_s8(v114, v114, 8uLL)), v50), vshlq_s64(vaddq_s64(vaddw_high_s32(v43, v175), vextq_s8(v177, v177, 8uLL)), v50));
  *&v340[24] = *(a2 + 38);
  v178 = *(v336 - 600);
  v179 = *(v336 - 616);
  *v127.i8 = vneg_s32(__PAIR64__(v179, v178));
  v180 = *(a2 + 42);
  v181 = *(a2 + 50);
  *v175.i8 = vdup_lane_s32(*v127.i8, 0);
  v182 = vmulq_s32(v180, vzip1q_s32(v127, v127));
  v142.i64[0] = v175.i64[0];
  v142.u64[1] = vdup_n_s32(v179);
  v183 = vmulq_s32(v181, v142);
  v114.i64[0] = v183.i32[0];
  v114.i64[1] = v183.i32[1];
  v184 = v114;
  v114.i64[0] = v183.i32[2];
  v114.i64[1] = v183.i32[3];
  *&v340[40] = vuzp1q_s32(vshlq_s64(vaddq_s64(vaddw_s32(v43, *v182.i8), vextq_s8(v114, v114, 8uLL)), v50), vshlq_s64(vaddq_s64(vaddw_high_s32(v43, v182), vextq_s8(v184, v184, 8uLL)), v50));
  *v183.i8 = vzip1_s32(*v156.i8, *v127.i8);
  *v126.i8 = vmul_s32(*&v350[68], *v127.i8);
  v127.i32[1] = v179;
  *v118.i8 = vmul_s32(*&v350[52], *v156.i8);
  v185 = vmul_lane_s32(*v156.i8, *&v350[52], 1).u32[0];
  v186 = v156;
  v186.i32[1] = v172;
  v187 = vmul_s32(*&v350[100], *v186.i8);
  v188 = *&v350[100] * v172;
  v189 = *&v350[52] * v172;
  v3.i64[0] = __PAIR64__(*&v350[56], v172);
  v190 = v3;
  v3.i32[1] = v179;
  v156.i64[0] = __PAIR64__(v178, v179);
  v175.i32[0] = v179;
  v4.i64[0] = __PAIR64__(v178, v179);
  *&v340[56] = *(a2 + 46);
  v191 = vmulq_s32(v181, vzip1q_s32(v4, v4));
  v192 = vrev64q_s32(v127);
  v193 = vmulq_s32(v180, vzip1q_s32(v192, v192));
  v114.i64[0] = v193.i32[0];
  v114.i64[1] = v193.i32[1];
  v194 = vaddq_s64(vaddw_high_s32(v43, v191), vextq_s8(v114, v114, 8uLL));
  v114.i64[0] = v193.i32[2];
  v114.i64[1] = v193.i32[3];
  *&v340[72] = vuzp1q_s32(vshlq_s64(vaddq_s64(vaddw_s32(v43, *v191.i8), vextq_s8(v114, v114, 8uLL)), v50), vshlq_s64(v194, v50));
  *&v340[88] = *(a2 + 54);
  v190.i32[1] = v171;
  v195 = vmulq_s32(v174, vzip1q_s32(v190, v190));
  v196 = vrev64q_s32(v186);
  v197 = vmulq_s32(v173, vzip1q_s32(v196, v196));
  v114.i64[0] = v197.i32[0];
  v114.i64[1] = v197.i32[1];
  v198 = vaddq_s64(vaddw_high_s32(v43, v195), vextq_s8(v114, v114, 8uLL));
  v114.i64[0] = v197.i32[2];
  v114.i64[1] = v197.i32[3];
  v199 = a2[1];
  v200 = v36 + *a2 * v35;
  v347.i32[0] = (v200 + v199 * v35) >> a3;
  v347.i32[1] = (v200 + -(v35 * v199)) >> a3;
  *&v350[16] = a2[8];
  *&v350[44] = a2[15];
  *&v340[104] = vuzp1q_s32(vshlq_s64(vaddq_s64(vaddw_s32(v43, *v195.i8), vextq_s8(v114, v114, 8uLL)), v50), vshlq_s64(v198, v50));
  *&v340[120] = *(a2 + 31);
  v201 = vmulq_s32(*v350, vzip1q_s32(v3, vrev64q_s32(v3)));
  v183.i64[1] = __PAIR64__(v171, v178);
  v202 = vmulq_s32(*v350, v183);
  v114.i64[0] = v202.i32[0];
  v114.i64[1] = v202.i32[1];
  v203 = v114;
  v114.i64[0] = v202.i32[2];
  v114.i64[1] = v202.i32[3];
  v204 = vuzp1q_s32(vshlq_s64(vaddq_s64(vaddw_s32(v43, *v201.i8), vextq_s8(v114, v114, 8uLL)), v50), vshlq_s64(vaddq_s64(vaddw_high_s32(v43, v201), vextq_s8(v203, v203, 8uLL)), v50));
  v205 = vrev64q_s32(*&v350[16]);
  v206 = vaddq_s32(v205, *&v350[16]);
  v207 = vsubq_s32(v205, *&v350[16]);
  v207.i32[0] = v206.i32[0];
  *a2 = v347;
  *(a2 + 1) = v204;
  v207.i32[3] = v206.i32[3];
  v208 = vrev64q_s32(*&v350[32]);
  v209 = vaddq_s32(v208, *&v350[32]);
  v210 = vsubq_s32(v208, *&v350[32]);
  v210.i32[0] = v209.i32[0];
  v210.i32[3] = v209.i32[3];
  *(a2 + 2) = v207;
  *(a2 + 3) = v210;
  a2[16] = *&v350[48];
  v114.i64[0] = v187.i32[0];
  v114.i64[1] = v187.i32[1];
  *(a2 + 17) = vmovn_s64(vshlq_s64(vaddq_s64(vaddw_s32(v43, *v118.i8), vextq_s8(v114, v114, 8uLL)), v50));
  *(a2 + 19) = *&v350[60];
  *v207.i8 = vmul_s32(*&v350[84], *v127.i8);
  v114.i64[0] = v207.i32[0];
  v114.i64[1] = v207.i32[1];
  *(a2 + 21) = vmovn_s64(vshlq_s64(vaddq_s64(vaddw_s32(v43, *v126.i8), vextq_s8(v114, v114, 8uLL)), v50));
  *(a2 + 23) = *&v350[76];
  *v175.i8 = vmul_s32(*&v350[68], *v175.i8);
  v114.i64[0] = v175.i32[0];
  v114.i64[1] = v175.i32[1];
  *(a2 + 25) = vmovn_s64(vshlq_s64(vaddq_s64(vaddw_s32(v43, vmul_s32(*&v350[84], *v156.i8)), vextq_s8(v114, v114, 8uLL)), v50));
  *(a2 + 27) = *&v350[92];
  a2[29] = (v36 + v188 + v185) >> a3;
  a2[30] = (v36 + *&v350[104] * v171 + v189) >> a3;
  v211 = vrev64q_s32(*v340);
  v212 = vextq_s8(v211, v211, 8uLL);
  v207.i64[0] = vaddq_s32(v212, *v340).u64[0];
  v207.i64[1] = vsubq_s32(v212, *v340).i64[1];
  a2[31] = *&v350[108];
  v213 = vrev64q_s32(*&v340[16]);
  v214 = vextq_s8(v213, v213, 8uLL);
  v156.i64[0] = vsubq_s32(v214, *&v340[16]).u64[0];
  v156.i64[1] = vaddq_s32(v214, *(v340 + 16)).i64[1];
  *(a2 + 8) = v207;
  *(a2 + 9) = v156;
  v215 = vrev64q_s32(*&v340[32]);
  v216 = vextq_s8(v215, v215, 8uLL);
  v207.i64[0] = vaddq_s32(v216, *&v340[32]).u64[0];
  v207.i64[1] = vsubq_s32(v216, *(v340 + 32)).i64[1];
  v217 = vrev64q_s32(*&v340[48]);
  v218 = vextq_s8(v217, v217, 8uLL);
  v156.i64[0] = vsubq_s32(v218, *&v340[48]).u64[0];
  v156.i64[1] = vaddq_s32(v218, *(v340 + 48)).i64[1];
  *(a2 + 10) = v207;
  *(a2 + 11) = v156;
  v219 = vrev64q_s32(*&v340[64]);
  v220 = vextq_s8(v219, v219, 8uLL);
  v207.i64[0] = vaddq_s32(v220, *&v340[64]).u64[0];
  v207.i64[1] = vsubq_s32(v220, *(v340 + 64)).i64[1];
  v221 = vrev64q_s32(*&v340[80]);
  v222 = vextq_s8(v221, v221, 8uLL);
  v156.i64[0] = vsubq_s32(v222, *&v340[80]).u64[0];
  v156.i64[1] = vaddq_s32(v222, *(v340 + 80)).i64[1];
  v223 = vrev64q_s32(*&v340[96]);
  v224 = vextq_s8(v223, v223, 8uLL);
  v208.i64[0] = vaddq_s32(v224, *&v340[96]).u64[0];
  v208.i64[1] = vsubq_s32(v224, *(v340 + 96)).i64[1];
  *(a2 + 12) = v207;
  *(a2 + 13) = v156;
  v225 = vrev64q_s32(*&v340[112]);
  v226 = vextq_s8(v225, v225, 8uLL);
  v207.i64[0] = vsubq_s32(v226, *&v340[112]).u64[0];
  v207.i64[1] = vaddq_s32(v226, *(v340 + 112)).i64[1];
  *(a2 + 14) = v208;
  *(a2 + 15) = v207;
  v227 = *(v336 - 580);
  v228 = a2[8];
  v229 = *(v336 - 636);
  v230 = a2[15];
  LODWORD(v200) = *(v336 - 596);
  v231 = *(v336 - 628);
  LODWORD(v135) = *(v336 - 588);
  v232 = *(a2 + 9);
  v226.i32[0] = -v135;
  v226.i32[1] = v135;
  v226.i32[2] = *(v336 - 620);
  v233 = a2[53];
  v234 = a2[54];
  v235 = v234 * v226.i32[2];
  v207.i32[0] = v226.i32[2];
  v207.i32[1] = *(v336 - 604);
  *v207.i8 = vneg_s32(*v207.i8);
  v208.i32[0] = v200;
  v208.i32[1] = *(v336 - 612);
  *v209.i8 = vmul_s32(vrev64_s32(*v232.i8), *v207.i8);
  v236 = v36 + a2[37] * v207.i32[1] + a2[58] * v208.i32[1];
  v237 = -(v208.i32[1] * a2[38]);
  v238 = v207.i32[0];
  v156.i32[0] = v208.i32[1];
  v207.i32[0] = v208.i32[1];
  v194.i64[0] = __PAIR64__(v200, v208.u32[1]);
  v194.i32[2] = v231;
  v194.i32[3] = v231;
  v239 = vmulq_s32(v232, v194);
  v226.i32[3] = *(v336 - 604);
  v232.i64[0] = vextq_s8(v232, v232, 8uLL).u64[0];
  v232.i64[1] = *(a2 + 13);
  v240 = vmulq_s32(v232, v226);
  v114.i64[0] = v240.i32[0];
  v114.i64[1] = v240.i32[1];
  v241 = v114;
  v114.i64[0] = v240.i32[2];
  v114.i64[1] = v240.i32[3];
  *&v350[20] = vuzp1q_s32(vshlq_s64(vaddq_s64(vaddw_s32(v43, *v239.i8), vextq_s8(v114, v114, 8uLL)), v50), vshlq_s64(vaddq_s64(vaddw_high_s32(v43, v239), vextq_s8(v241, v241, 8uLL)), v50));
  *&v350[36] = vmovn_s64(vshlq_s64(vaddw_s32(vaddw_s32(v43, vmul_s32(*(a2 + 13), *v208.i8)), *v209.i8), v50));
  v242 = *(a2 + 4);
  v243 = vrev64q_s32(v242);
  v244 = vaddq_s32(v243, v242);
  v245 = vsubq_s32(v243, v242);
  v245.i32[0] = v244.i32[0];
  v245.i32[3] = v244.i32[3];
  v246 = *(a2 + 5);
  v247 = vrev64q_s32(v246);
  v248 = vaddq_s32(v247, v246);
  v249 = vsubq_s32(v247, v246);
  v249.i32[0] = v248.i32[0];
  *&v350[16] = (v36 + v228 * v227 + v230 * v229) >> a3;
  *&v350[44] = (v36 + v230 * v227 + v228 * -v229) >> a3;
  v249.i32[3] = v248.i32[3];
  v250 = *(a2 + 6);
  v251 = vrev64q_s32(v250);
  v252 = vaddq_s32(v251, v250);
  v253 = vsubq_s32(v251, v250);
  v253.i32[0] = v252.i32[0];
  v253.i32[3] = v252.i32[3];
  v254 = *(a2 + 7);
  v255 = vrev64q_s32(v254);
  v256 = vaddq_s32(v255, v254);
  v257 = vsubq_s32(v255, v254);
  v257.i32[0] = v256.i32[0];
  *&v350[48] = v245;
  *&v350[64] = v249;
  v257.i32[3] = v256.i32[3];
  *&v350[88] = v253.i64[1];
  *&v350[96] = v257.i64[0];
  *v340 = a2[32];
  *&v340[4] = (v36 - v229 * a2[33] + a2[62] * v227) >> a3;
  *&v340[8] = (v36 + -(v227 * a2[34]) + a2[61] * -v229) >> a3;
  *&v340[12] = *(a2 + 35);
  *&v340[20] = v236 >> a3;
  *&v340[24] = (v36 + v237 + a2[57] * v207.i32[1]) >> a3;
  *&v340[28] = *(a2 + 39);
  v258 = a2[41];
  v259 = a2[42];
  *&v340[36] = (v36 + v258 * v238 + v234 * v200) >> a3;
  *&v340[40] = (v36 + -(v200 * v259) + v233 * v238) >> a3;
  *&v340[44] = *(a2 + 43);
  v260 = a2[45];
  v261 = a2[46];
  v262 = a2[49];
  LODWORD(v236) = a2[50];
  *&v340[52] = (v36 + -(v135 * v260) + v236 * v231) >> a3;
  *&v340[56] = (v36 + -(v231 * v261) + -(v135 * v262)) >> a3;
  *&v340[60] = *(a2 + 47);
  *&v340[68] = (v36 + v262 * v231 + -(v135 * v261)) >> a3;
  *&v340[72] = (v36 + v236 * v135 + v260 * v231) >> a3;
  *&v340[76] = *(a2 + 51);
  *&v340[84] = (v36 + v233 * v200 + v259 * v238) >> a3;
  *&v340[88] = (v36 + v235 + v258 * v200) >> a3;
  *&v340[92] = *(a2 + 55);
  v156.i32[1] = *(v336 - 604);
  *v249.i8 = vmul_s32(*(a2 + 37), *v207.i8);
  v114.i64[0] = v249.i32[0];
  v114.i64[1] = v249.i32[1];
  *&v340[100] = vmovn_s64(vshlq_s64(vaddq_s64(vaddw_s32(v43, vmul_s32(*(a2 + 57), *v156.i8)), vextq_s8(v114, v114, 8uLL)), v50));
  *&v340[108] = *(a2 + 59);
  v207.i32[0] = v227;
  v207.i32[1] = -v229;
  *v249.i8 = vmul_s32(*(a2 + 33), *v207.i8);
  v114.i64[0] = v249.i32[0];
  v114.i64[1] = v249.i32[1];
  *&v340[116] = vmovn_s64(vshlq_s64(vaddq_s64(vaddw_s32(v43, vmul_s32(*(a2 + 61), __PAIR64__(v229, v227))), vextq_s8(v114, v114, 8uLL)), v50));
  *&v340[124] = a2[63];
  v263 = *(a2 + 1);
  *a2 = *a2;
  *(a2 + 1) = v263;
  *(a2 + 2) = *&v350[16];
  *(a2 + 3) = *&v350[32];
  v264 = *(v336 - 578);
  LODWORD(v229) = *(v336 - 638);
  a2[16] = (v36 + v245.i32[0] * v264 + v256.i32[3] * v229) >> a3;
  LODWORD(v200) = *(v336 - 610);
  v265 = *(v336 - 606);
  a2[17] = (v36 + v245.i32[1] * v200 + v257.i32[2] * v265) >> a3;
  v266 = *(v336 - 594);
  v267 = *(v336 - 622);
  a2[18] = (v36 + v245.i32[2] * v266 + v257.i32[1] * v267) >> a3;
  v268 = *(v336 - 626);
  LODWORD(v135) = *(v336 - 590);
  a2[19] = (v36 + v245.i32[3] * v268 + v256.i32[0] * v135) >> a3;
  v269 = *(v336 - 586);
  v270 = *(v336 - 630);
  a2[20] = (v36 + *&v350[64] * v269 + (v253.i32[3] * v270)) >> a3;
  v271 = *(v336 - 598);
  v207.i32[0] = *(v336 - 618);
  v207.i32[1] = v269;
  v207.i64[1] = __PAIR64__(v266, v268);
  v272 = vmulq_s32(*&v350[88], v207);
  a2[21] = (v36 + *&v350[68] * *(v336 - 618) + (v253.i32[2] * v271)) >> a3;
  v273 = *(v336 - 602);
  v274 = *(v336 - 614);
  a2[22] = (v36 + *&v350[72] * v273 + v253.i32[1] * v274) >> a3;
  v275 = *(v336 - 634);
  v276 = *(v336 - 582);
  a2[23] = (v36 + *&v350[76] * v275 + v253.i32[0] * v276) >> a3;
  a2[24] = (v36 + v253.i32[0] * v275 + -(v276 * *&v350[76])) >> a3;
  a2[25] = (v36 + v253.i32[1] * v273 + -(v274 * *&v350[72])) >> a3;
  v263.i64[0] = __PAIR64__(v135, v267);
  v263.i64[1] = __PAIR64__(v271, v270);
  v277 = vnegq_s32(vmulq_s32(v263, *&v350[56]));
  v114.i64[0] = v277.i32[0];
  v114.i64[1] = v277.i32[1];
  v278 = v114;
  v114.i64[0] = v277.i32[2];
  v114.i64[1] = v277.i32[3];
  *(a2 + 26) = vuzp1q_s32(vshlq_s64(vaddq_s64(vaddw_s32(v43, *v272.i8), vextq_s8(v114, v114, 8uLL)), v50), vshlq_s64(vaddq_s64(vaddw_high_s32(v43, v272), vextq_s8(v278, v278, 8uLL)), v50));
  *v278.i8 = vneg_s32(vmul_s32(__PAIR64__(v265, v229), *&v350[48]));
  v114.i64[0] = v278.i32[0];
  v114.i64[1] = v278.i32[1];
  *(a2 + 15) = vmovn_s64(vshlq_s64(vaddq_s64(vaddw_s32(v43, vmul_s32(v257.u64[1], __PAIR64__(v264, v200))), vextq_s8(v114, v114, 8uLL)), v50));
  v279 = vrev64q_s32(*v340);
  v280 = vaddq_s32(v279, *v340);
  v281 = vsubq_s32(v279, *v340);
  v281.i32[0] = v280.i32[0];
  v281.i32[3] = v280.i32[3];
  v282 = vrev64q_s32(*&v340[16]);
  v283 = vaddq_s32(v282, *&v340[16]);
  v284 = vsubq_s32(v282, *&v340[16]);
  v284.i32[0] = v283.i32[0];
  v284.i32[3] = v283.i32[3];
  *(a2 + 8) = v281;
  *(a2 + 9) = v284;
  v285 = vrev64q_s32(*&v340[32]);
  v286 = vaddq_s32(v285, *&v340[32]);
  v287 = vsubq_s32(v285, *&v340[32]);
  v287.i32[0] = v286.i32[0];
  v287.i32[3] = v286.i32[3];
  v288 = vrev64q_s32(*&v340[48]);
  v289 = vaddq_s32(v288, *&v340[48]);
  v290 = vsubq_s32(v288, *&v340[48]);
  v290.i32[0] = v289.i32[0];
  v290.i32[3] = v289.i32[3];
  *(a2 + 10) = v287;
  *(a2 + 11) = v290;
  v291 = vrev64q_s32(*&v340[64]);
  v292 = vaddq_s32(v291, *&v340[64]);
  v293 = vsubq_s32(v291, *&v340[64]);
  v293.i32[0] = v292.i32[0];
  v293.i32[3] = v292.i32[3];
  v294 = vrev64q_s32(*&v340[80]);
  v295 = vaddq_s32(v294, *&v340[80]);
  v296 = vsubq_s32(v294, *&v340[80]);
  v296.i32[0] = v295.i32[0];
  v296.i32[3] = v295.i32[3];
  *(a2 + 12) = v293;
  *(a2 + 13) = v296;
  v297 = vrev64q_s32(*&v340[96]);
  v298 = vaddq_s32(v297, *&v340[96]);
  v299 = vsubq_s32(v297, *&v340[96]);
  v299.i32[0] = v298.i32[0];
  v299.i32[3] = v298.i32[3];
  v300 = vrev64q_s32(*&v340[112]);
  v301 = vaddq_s32(v300, *&v340[112]);
  v302 = vsubq_s32(v300, *&v340[112]);
  v302.i32[0] = v301.i32[0];
  v302.i32[3] = v301.i32[3];
  *(a2 + 14) = v299;
  *(a2 + 15) = v302;
  v348 = *a2;
  *v350 = *(a2 + 1);
  *&v350[16] = *(a2 + 2);
  *&v350[32] = *(a2 + 3);
  *&v350[48] = *(a2 + 4);
  *&v350[64] = *(a2 + 5);
  *&v350[80] = *(a2 + 6);
  *&v350[96] = *(a2 + 7);
  v293.i32[0] = *(v336 - 609);
  v293.i32[1] = *(v336 - 577);
  v301.i64[0] = __PAIR64__(v293.u32[0], v293.u32[1]);
  v301.i32[2] = *(v336 - 593);
  v301.i32[3] = *(v336 - 625);
  v300.i32[0] = *(v336 - 623);
  v300.i32[1] = *(v336 - 591);
  v255.i64[0] = __PAIR64__(v300.u32[0], v300.u32[1]);
  v255.i32[2] = *(v336 - 607);
  v303 = vmulq_s32(v281, v301);
  v255.i32[3] = *(v336 - 639);
  v304 = vmulq_s32(v302, v255);
  v114.i64[0] = v304.i32[0];
  v114.i64[1] = v304.i32[1];
  v305 = v114;
  v114.i64[0] = v304.i32[2];
  v114.i64[1] = v304.i32[3];
  v306 = vuzp1q_s32(vshlq_s64(vaddq_s64(vaddw_s32(v43, *v303.i8), vextq_s8(v114, v114, 8uLL)), v50), vshlq_s64(vaddq_s64(vaddw_high_s32(v43, v303), vextq_s8(v305, v305, 8uLL)), v50));
  v303.i32[0] = *(v336 - 617);
  v303.i32[1] = *(v336 - 585);
  v255.i64[0] = __PAIR64__(v303.u32[0], v303.u32[1]);
  v255.i32[2] = *(v336 - 601);
  v255.i32[3] = *(v336 - 633);
  v304.i32[0] = *(v336 - 615);
  v304.i32[1] = *(v336 - 583);
  v184.i64[0] = __PAIR64__(v304.u32[0], v304.u32[1]);
  v184.i32[2] = *(v336 - 599);
  v307 = vmulq_s32(*(a2 + 9), v255);
  v184.i32[3] = *(v336 - 631);
  v308 = vmulq_s32(v299, v184);
  v114.i64[0] = v308.i32[2];
  v114.i64[1] = v308.i32[3];
  v309 = v114;
  v114.i64[0] = v308.i32[0];
  v114.i64[1] = v308.i32[1];
  *v340 = v306;
  *&v340[16] = vuzp1q_s32(vshlq_s64(vaddq_s64(vaddw_s32(v43, *v307.i8), vextq_s8(v309, v309, 8uLL)), v50), vshlq_s64(vaddq_s64(vaddw_high_s32(v43, v307), vextq_s8(v114, v114, 8uLL)), v50));
  v306.i32[0] = *(v336 - 613);
  v306.i32[1] = *(v336 - 581);
  v307.i64[0] = __PAIR64__(v306.u32[0], v306.u32[1]);
  v307.i32[2] = *(v336 - 597);
  v307.i32[3] = *(v336 - 629);
  v310 = vmulq_s32(*(a2 + 10), v307);
  v308.i32[0] = *(v336 - 619);
  v308.i32[1] = *(v336 - 587);
  v184.i64[0] = __PAIR64__(v308.u32[0], v308.u32[1]);
  v184.i32[2] = *(v336 - 603);
  v184.i32[3] = *(v336 - 635);
  v311 = vmulq_s32(*(a2 + 13), v184);
  v114.i64[0] = v311.i32[0];
  v114.i64[1] = v311.i32[1];
  v312 = v114;
  v114.i64[0] = v311.i32[2];
  v114.i64[1] = v311.i32[3];
  v313 = vshlq_s64(vaddq_s64(vaddw_s32(v43, *v310.i8), vextq_s8(v114, v114, 8uLL)), v50);
  *&v340[32] = vuzp1q_s32(v313, vshlq_s64(vaddq_s64(vaddw_high_s32(v43, v310), vextq_s8(v312, v312, 8uLL)), v50));
  v314 = *(v336 - 627);
  v315 = *(v336 - 595);
  v316 = *(a2 + 46);
  v313.i32[0] = *(v336 - 605);
  v313.i32[1] = *(v336 - 637);
  v317 = vmulq_s32(v316, vzip1q_s32(v313, vrev64q_s32(v313)));
  v312.i32[0] = *(v336 - 611);
  v312.i32[1] = *(v336 - 579);
  *&v340[56] = vuzp1q_s32(vshlq_s64(vaddw_s32(vaddw_s32(v43, *v317.i8), vmul_s32(*&vextq_s8(v316, vextq_s8(v316, v316, 8uLL), 0xCuLL), *v312.i8)), v50), vshlq_s64(vaddw_s32(vaddw_high_s32(v43, v317), vneg_s32(vrev64_s32(vmul_s32(*v312.i8, *v316.i8)))), v50));
  v318 = *(a2 + 42);
  v319 = *(a2 + 50);
  v312.i32[0] = *(v336 - 621);
  v312.i32[1] = *(v336 - 589);
  v308.i64[1] = __PAIR64__(v315, v314);
  *v127.i8 = vmul_s32(*v319.i8, __PAIR64__(v314, v315));
  v114.i64[0] = v127.i32[0];
  v114.i64[1] = v127.i32[1];
  *&v340[48] = vmovn_s64(vshlq_s64(vaddq_s64(vaddw_s32(v43, vmul_s32(*&vextq_s8(v318, v318, 8uLL), __PAIR64__(v312.u32[0], v312.u32[1]))), vextq_s8(v114, v114, 8uLL)), v50));
  v312.i64[1] = __PAIR64__(*(v336 - 597), *(v336 - 629));
  v320 = vmulq_s32(v319, v312);
  v321 = vnegq_s32(vmulq_s32(v308, v318));
  v114.i64[0] = v321.i32[0];
  v114.i64[1] = v321.i32[1];
  v322 = v114;
  v114.i64[0] = v321.i32[2];
  v114.i64[1] = v321.i32[3];
  v323 = vshlq_s64(vaddq_s64(vaddw_high_s32(v43, v320), vextq_s8(v322, v322, 8uLL)), v50);
  *&v340[72] = vuzp1q_s32(vshlq_s64(vaddq_s64(vaddw_s32(v43, *v320.i8), vextq_s8(v114, v114, 8uLL)), v50), v323);
  v306.i64[1] = __PAIR64__(*(v336 - 601), *(v336 - 633));
  v324 = vmulq_s32(*(a2 + 54), v306);
  v304.i64[1] = __PAIR64__(*(v336 - 603), *(v336 - 635));
  v325 = vnegq_s32(vmulq_s32(v304, *(a2 + 38)));
  v114.i64[0] = v325.i32[0];
  v114.i64[1] = v325.i32[1];
  v326 = v114;
  v114.i64[0] = v325.i32[2];
  v114.i64[1] = v325.i32[3];
  v327 = vshlq_s64(vaddq_s64(vaddw_high_s32(v43, v324), vextq_s8(v326, v326, 8uLL)), v50);
  *&v340[88] = vuzp1q_s32(vshlq_s64(vaddq_s64(vaddw_s32(v43, *v324.i8), vextq_s8(v114, v114, 8uLL)), v50), v327);
  v303.i32[2] = *(v336 - 625);
  v303.i32[3] = *(v336 - 593);
  v300.i32[2] = *(v336 - 631);
  v300.i32[3] = *(v336 - 599);
  v324.i64[0] = __PAIR64__(*(v336 - 607), *(v336 - 639));
  v328 = HIDWORD(*a2);
  *a2 = *a2;
  a2[1] = *v340;
  a2[2] = *&v350[48];
  a2[3] = *&v340[64];
  a2[4] = *&v350[16];
  a2[5] = *&v340[32];
  a2[6] = *&v350[80];
  a2[8] = *v350;
  a2[9] = *&v340[16];
  a2[10] = *&v350[64];
  a2[12] = *&v350[32];
  a2[13] = *&v340[48];
  a2[14] = *&v350[96];
  a2[16] = DWORD2(v348);
  a2[17] = *&v340[8];
  a2[18] = *&v350[56];
  a2[19] = *&v340[72];
  a2[20] = *&v350[24];
  a2[21] = *&v340[40];
  a2[22] = *&v350[88];
  a2[24] = *&v350[8];
  a2[25] = *&v340[24];
  a2[26] = *&v350[72];
  a2[27] = *&v340[88];
  a2[28] = *&v350[40];
  a2[29] = *&v340[56];
  a2[30] = *&v350[104];
  v326.i64[0] = *(a2 + 16);
  a2[32] = v328;
  a2[33] = *&v340[4];
  v329 = *(a2 + 34);
  a2[34] = *&v350[52];
  a2[35] = *&v340[68];
  a2[36] = *&v350[20];
  a2[37] = *&v340[36];
  a2[38] = *&v350[84];
  a2[39] = *&v340[100];
  a2[40] = *&v350[4];
  a2[41] = *&v340[20];
  a2[42] = *&v350[68];
  a2[43] = *&v340[84];
  v330 = vmulq_s32(*(a2 + 58), v303);
  v331 = vnegq_s32(vmulq_s32(v300, v329));
  v114.i64[0] = v331.i32[0];
  v114.i64[1] = v331.i32[1];
  v332 = v114;
  v114.i64[0] = v331.i32[2];
  v114.i64[1] = v331.i32[3];
  v333 = vshlq_s64(vaddq_s64(vaddw_s32(v43, *v330.i8), vextq_s8(v114, v114, 8uLL)), v50);
  v334 = vshlq_s64(vaddq_s64(vaddw_high_s32(v43, v330), vextq_s8(v332, v332, 8uLL)), v50);
  *&v340[104] = vuzp1q_s32(v333, v334);
  a2[44] = *&v350[36];
  a2[45] = *&v340[52];
  a2[46] = *&v350[100];
  a2[47] = *&v340[116];
  a2[48] = HIDWORD(v348);
  a2[49] = *&v340[12];
  a2[50] = *&v350[60];
  a2[51] = *&v340[76];
  a2[52] = *&v350[28];
  a2[53] = *&v340[44];
  a2[54] = *&v350[92];
  a2[55] = *&v340[108];
  a2[56] = *&v350[12];
  a2[57] = *&v340[28];
  a2[58] = *&v350[76];
  a2[59] = *&v340[92];
  a2[60] = *&v350[44];
  a2[61] = *&v340[60];
  *v324.i8 = vneg_s32(vmul_s32(*v324.i8, *v326.i8));
  v114.i64[0] = v324.i32[0];
  v114.i64[1] = v324.i32[1];
  result = vmovn_s64(vshlq_s64(vaddq_s64(vaddw_s32(v43, vmul_s32(*(a2 + 62), *v293.i8)), vextq_s8(v114, v114, 8uLL)), v50));
  a2[62] = *&v350[108];
  a2[63] = result.i32[1];
  a2[7] = vmovn_s64(v327).u32[0];
  a2[11] = vmovn_s64(v323).u32[0];
  a2[15] = vmovn_s64(v334).u32[0];
  a2[23] = vmovn_s64(v333).u32[0];
  a2[31] = result.i32[0];
  return result;
}

int32x4_t sub_2779834A4(uint64_t a1, uint64_t a2, unsigned int a3, int32x4_t result, double a5, double a6, int32x2_t a7)
{
  v37 = *MEMORY[0x277D85DE8];
  v10 = (a2 + 395112);
  v11 = a2 + 268640;
  v12 = (a2 + 245616);
  v13 = *(a2 + 270312);
  v14 = *(v13 + 77);
  *(a2 + 268656) = 0;
  v15 = *(a2 + 271996);
  if (v15 == 1 && *(a2 + 271328) == 3 && (v16 = *(a2 + 396628)) != 0 && ((v17 = *(a2 + 463432), v18 = *(a2 + 246232), *(a2 + 463440)) && *(a2 + 395280) > *(a2 + 396632) || *v10 >= 31 && *v17 >= 1 && v17[28] > (0x12Cu / *v17) && *(a2 + 395152) <= 0x3E7uLL && v18 < ((*(a2 + 395240) & 0xFFFFFFF8) - (*(a2 + 395240) >> 3)) || v16 > 1 && !*(a2 + 395128) && *(a2 + 395152) >> 4 <= 0xC34uLL && v18 < *(a2 + 395240)) || (v19 = *(a2 + 271172)) == 0 || v19 == 2 && *(*a2 + 85780) || a3 == 4)
  {
LABEL_19:
    *v11 = 0;
    return result;
  }

  if (a3 < 3)
  {
    v36 = 0uLL;
    if ((*v12 & 0xFD) != 0)
    {
      result = *(*a2 + 332);
      v36 = result;
    }

    if (sub_27797AC44(a2 + 273776, *(a2 + 245672), *(a2 + 245676), *(v13 + 96), *(v13 + 100), *(v13 + 76), *(a2 + 272132), *(a2 + 246128), *result.i64, a5, a6, a7, 0, 0))
    {
      sub_2779F5C10(*(v12 + 6), 2, "Failed to allocate last frame buffer");
    }

    v26 = sub_277983980(a1, a2, a3 == 2, &v36, 0, 2u);
    *v11 = v26;
    *(v11 + 4) = v26;
    if (a3 != 1)
    {
      *v11 = sub_277983980(a1, a2, a3 == 2, &v36, 0, 0);
      *(v11 + 4) = sub_277983980(a1, a2, a3 == 2, &v36, 0, 1u);
    }

    if (!v14)
    {
      *(v11 + 8) = sub_277983980(a1, a2, a3 == 2, &v36, 1, 0);
      *(v11 + 12) = sub_277983980(a1, a2, a3 == 2, &v36, 2, 0);
    }

    return result;
  }

  v20 = 63;
  if (*(a2 + 272180) >= 2u)
  {
    if (*(*a2 + 23480) <= 8u)
    {
      v20 = 63;
    }

    else
    {
      v20 = 47;
    }
  }

  v21 = *(a2 + 246232);
  v22 = *(v13 + 72);
  if (v21 >= 0xFF)
  {
    v23 = 255;
  }

  else
  {
    v23 = *(a2 + 246232);
  }

  if (v21 >= 0)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  switch(v22)
  {
    case 8:
      v25 = word_277BFE1FA;
      break;
    case 12:
      v25 = &unk_277BFE5FA;
      break;
    case 10:
      v25 = &unk_277BFE3FA;
      break;
    default:
      v27 = -1;
LABEL_49:
      v28 = 6017;
      if (*(a2 + 396384))
      {
        if (*(a2 + 245676) * *(a2 + 245672) <= 101376)
        {
          v28 = 6017;
        }

        else
        {
          v28 = 12034;
        }
      }

      goto LABEL_53;
  }

  v27 = v25[v24];
  if (v27 < 1)
  {
    goto LABEL_49;
  }

  v28 = 12034;
LABEL_53:
  if (*(a2 + 643804) <= 1 || *(a2 + 643796) || *(a2 + 245676) * *(a2 + 245672) >= 101377 || !*(a2 + 396384))
  {
    v28 <<= *(a2 + 396556) != 0;
  }

  else
  {
    v29 = *(a2 + 395152);
    if (v29 < 0x186A1)
    {
      if (v29 >= 0xC351)
      {
        v28 = 3 * (v28 >> 1);
      }
    }

    else
    {
      v28 *= 2;
    }
  }

  if (v22 == 8)
  {
    v33 = *v12;
    v34 = 17563 * v27 - 290502;
    v35 = v28 * v27 + 781779;
    if (!*v12)
    {
      v35 = v34;
    }

    v32 = v35 >> 18;
  }

  else
  {
    if (v22 == 10)
    {
      v30 = 20;
      v31 = 4584920;
    }

    else
    {
      if (v22 != 12)
      {
        return result;
      }

      v30 = 22;
      v31 = 18339678;
    }

    v32 = (v31 + 20723 * v27) >> v30;
    v33 = *v12;
    if (!*v12)
    {
      v32 -= 4;
    }
  }

  if (v32 < v20)
  {
    v20 = v32;
  }

  if (v32 < 0)
  {
    v20 = 0;
  }

  result = vdupq_n_s32(v20);
  *v11 = result;
  if (v19 == 3 && (v33 & 0xFFFFFFFD) != 0 && !*(a2 + 395128) && (v15 == 1 || 100 * *(a2 + 240736) / ((*(a2 + 245676) >> 2) * (*(a2 + 245672) >> 2)) <= 6 && *v10 >= 6))
  {
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_277983980(uint64_t a1, uint64_t a2, int a3, _DWORD *a4, int a5, unsigned int a6)
{
  v39 = *MEMORY[0x277D85DE8];
  v9 = 63;
  if (*(a2 + 272180) >= 2u)
  {
    if (*(*a2 + 23480) <= 8u)
    {
      v9 = 63;
    }

    else
    {
      v9 = 47;
    }
  }

  if (a5 == 2)
  {
    v10 = a4[3];
  }

  else if (a5 == 1)
  {
    v10 = a4[2];
  }

  else if (a6 == 2)
  {
    v10 = (*a4 + a4[1] + 1) >> 1;
  }

  else
  {
    v10 = a4[a6];
  }

  v11 = dword_277BC0E40[*(a2 + 396304)];
  if (v10 >= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = v10;
  }

  *&v13 = -1;
  *(&v13 + 1) = -1;
  v38[0] = v13;
  v38[1] = v13;
  if (v10 >= 0)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  v38[2] = v13;
  v38[3] = v13;
  if (v14 >= 0x10)
  {
    v15 = v14 >> 2;
  }

  else
  {
    v15 = 4;
  }

  v38[4] = v13;
  v38[5] = v13;
  v38[6] = v13;
  v38[7] = v13;
  v38[8] = v13;
  v38[9] = v13;
  v38[10] = v13;
  v38[11] = v13;
  v38[12] = v13;
  v38[13] = v13;
  v38[14] = v13;
  v38[15] = v13;
  v38[16] = v13;
  v38[17] = v13;
  v38[18] = v13;
  v38[19] = v13;
  v38[20] = v13;
  v38[21] = v13;
  v38[22] = v13;
  v38[23] = v13;
  v38[24] = v13;
  v38[25] = v13;
  v38[26] = v13;
  v38[27] = v13;
  v38[28] = v13;
  v38[29] = v13;
  v38[30] = v13;
  v38[31] = v13;
  v35 = a2 + 245848;
  sub_277983CCC((*(a2 + 245848) + 1248), a2 + 273776, a5);
  v16 = sub_277983CF4(a1, a2, v14, a3, a5, a6);
  *(v38 + v14) = v16;
  if (v15 > v11)
  {
    v17 = v16;
    v33 = a5;
    v34 = a6;
    v18 = 0;
    v19 = v35;
    while (1)
    {
      if ((v15 + v14) >= v9)
      {
        v20 = v9;
      }

      else
      {
        v20 = v15 + v14;
      }

      v21 = (v17 >> (15 - (v14 / 8))) * v15;
      if (*(a2 + 272180) >= 2u)
      {
        v22 = *(*a2 + 23480);
        if (v22 <= 0x13)
        {
          v23 = (v21 * v22 * 0x6666666666666667) >> 64;
          v21 = (v23 >> 3) + (v23 >> 63);
        }
      }

      v24 = v21 >> (*(v19 + 272) != 0);
      if (v18 <= 0)
      {
        v25 = v14 - v15;
        LODWORD(v26) = v25 & ~(v25 >> 31);
        if (v26 != v14)
        {
          break;
        }
      }

      v26 = v14;
      if ((v18 & 0x80000000) == 0)
      {
        goto LABEL_44;
      }

LABEL_52:
      if (v26 < v14)
      {
        v31 = -1;
      }

      else
      {
        v31 = 1;
      }

      v15 >>= v26 == v14;
      if (v26 == v14)
      {
        v18 = 0;
      }

      else
      {
        v18 = v31;
      }

      v14 = v26;
      if (v15 <= v11)
      {
        return v26;
      }
    }

    v27 = *(v38 + v26);
    if (v27 < 0)
    {
      v27 = sub_277983CF4(a1, a2, v25 & ~(v25 >> 31), a3, v33, v34);
      v19 = v35;
      *(v38 + v26) = v27;
    }

    v28 = v24 + v17;
    if (v27 >= v17)
    {
      v29 = v17;
    }

    else
    {
      v29 = v27;
    }

    if (v27 >= v28)
    {
      v26 = v14;
    }

    else
    {
      v26 = v26;
    }

    if (v27 < v28)
    {
      v17 = v29;
    }

    if (v18 < 0)
    {
      goto LABEL_52;
    }

LABEL_44:
    if (v20 != v14)
    {
      v30 = *(v38 + v20);
      if (v30 < 0)
      {
        v30 = sub_277983CF4(a1, a2, v20, a3, v33, v34);
        v19 = v35;
        *(v38 + v20) = v30;
      }

      if (v30 >= v17 - v24)
      {
        v26 = v26;
      }

      else
      {
        v26 = v20;
      }

      if (v30 < v17 - v24)
      {
        v17 = v30;
      }
    }

    goto LABEL_52;
  }

  return v14;
}

int *sub_277983CCC(int *a1, uint64_t a2, int a3)
{
  if (a3 == 2)
  {
    return sub_277A48F50(a1, a2, 0);
  }

  if (a3 == 1)
  {
    return sub_277A48E78(a1, a2, 0);
  }

  return sub_277A48DA4(a1, a2, 0);
}

uint64_t sub_277983CF4(uint64_t a1, uint64_t a2, int a3, int a4, signed int a5, int a6)
{
  v9 = (a2 + 268640);
  v10 = a3;
  if (!(a6 | a5))
  {
    v10 = *(a2 + 268644);
  }

  v11 = *(a2 + 634368);
  if (!a5 && a6 == 1)
  {
    a3 = *v9;
LABEL_9:
    *v9 = a3;
    *(a2 + 268644) = v10;
    goto LABEL_10;
  }

  if (a5 != 2)
  {
    if (a5 == 1)
    {
      *(a2 + 268648) = a3;
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  *(a2 + 268652) = a3;
LABEL_10:
  v12 = *(a2 + 396160) >= 1 && *(a2 + 396156) > 0;
  sub_2779D132C(*(a2 + 245848) + 1248, (a2 + 245616), a2 + 86480, a5, a5 + 1, a4, *(a2 + 634400), v11, a2 + 634808, v12);
  v18 = *(a2 + 245848);
  if (!*(*(v9 + 209) + 76))
  {
    if (a5 == 2)
    {
      v22 = *(a1 + 56);
      v23 = *(a1 + 36);
      v24 = *(v18 + 1304);
    }

    else
    {
      if (a5 != 1)
      {
        v22 = *(a1 + 40);
        v23 = *(a1 + 32);
        v24 = *(v18 + 1288);
        v29 = *(v18 + 1280);
        v30 = *(a1 + 16);
        v31 = *(a1 + 24);
        goto LABEL_28;
      }

      v22 = *(a1 + 48);
      v23 = *(a1 + 36);
      v24 = *(v18 + 1296);
    }

    v29 = *(v18 + 1284);
    v30 = *(a1 + 20);
    v31 = *(a1 + 28);
LABEL_28:
    v28 = sub_277A2B70C(v22, v23, v24, v29, v30, v31);
    goto LABEL_29;
  }

  if (a5 == 2)
  {
    v19 = *(a1 + 56);
    v20 = *(a1 + 36);
    v21 = *(v18 + 1304);
  }

  else
  {
    if (a5 != 1)
    {
      v19 = *(a1 + 40);
      v20 = *(a1 + 32);
      v21 = *(v18 + 1288);
      v25 = *(v18 + 1280);
      v26 = *(a1 + 16);
      v27 = *(a1 + 24);
      goto LABEL_23;
    }

    v19 = *(a1 + 48);
    v20 = *(a1 + 36);
    v21 = *(v18 + 1296);
  }

  v25 = *(v18 + 1284);
  v26 = *(a1 + 20);
  v27 = *(a1 + 28);
LABEL_23:
  v28 = sub_277A2BAE0(v19, v20, v21, v25, v26, v27, v13, v14, v15, v16, v17);
LABEL_29:
  v32 = v28;
  sub_277983CCC((a2 + 273776), *(a2 + 245848) + 1248, a5);
  return v32;
}

uint64_t sub_277983EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, int *a7, int *a8, uint64_t a9, uint64_t a10)
{
  v11 = a1;
  v250 = *MEMORY[0x277D85DE8];
  v12 = a2 + 396024;
  v13 = (a2 + 245632);
  v14 = *(a1 + 8280);
  v15 = *v14;
  v16 = *(*v14 + 167);
  v230 = *v14;
  if ((v16 & 0x40) != 0 || v15[24] == 2)
  {
    v17 = 0;
    v18 = 1;
  }

  else
  {
    v59 = v15[2];
    if (v59 != 23 && v59 != 15)
    {
      goto LABEL_50;
    }

    v61 = *v15;
    v62 = byte_277C3F990[v61];
    v63 = byte_277C36D60[v61];
    if (v62 < v63)
    {
      v63 = v62;
    }

    if (v63 >= 2)
    {
      v165 = 0;
      v166 = 0;
      v167 = v15[17];
      v168 = v15 + 16;
      do
      {
        v169 = *(*(v11 + 11160) + 36 * v168[v166] + 32);
        v17 = v169 == 1;
        v170 = v169 == 1 || v167 < 1;
        if (v170)
        {
          break;
        }

        v171 = v165;
        v165 = 1;
        v166 = 1;
      }

      while ((v171 & 1) == 0);
      v18 = v169 != 1;
      v15 = v230;
    }

    else
    {
LABEL_50:
      v18 = 0;
      v17 = 1;
    }
  }

  v19 = v15 + 16;
  v229 = v15[16];
  v226 = *(*(a2 + 270312) + 77);
  memset(v242, 0, sizeof(v242));
  v243 = 0;
  LODWORD(v238) = 0;
  v240 = 0;
  v241 = 1;
  v239 = 0uLL;
  v20 = *(a2 + 246121);
  v21 = a9 + 144;
  v22 = *(a9 + 5288);
  if (v22 < 1)
  {
    goto LABEL_30;
  }

  if (!v17)
  {
    goto LABEL_30;
  }

  v23 = *(a2 + 396032);
  if (!v23)
  {
    goto LABEL_30;
  }

  v24 = 0;
  v25 = v15[17];
  v26 = v23 == 1;
  v170 = v25 <= 0;
  v27 = v25 > 0;
  v28 = 1;
  if (v170)
  {
    v26 = 0;
  }

  else
  {
    v28 = 2;
  }

  v29 = (&unk_277BB7BB0 + 8 * v23 + 4 * v27 - 8);
  v30 = (v16 >> 9) & 1;
  v31 = a9 + 156;
  v32 = v15 + 10;
  v33 = (a9 + 150);
  v34 = -1;
  v35 = 0x7FFFFFFF;
  while (1)
  {
    v36 = 0;
    v37 = v21 + 40 * v24;
    do
    {
      if (*(v31 + v36) != v19[v36])
      {
        goto LABEL_27;
      }

      ++v36;
    }

    while (v28 != v36);
    if (v26 && (*(v37 + 14) != v230[83] || *(v37 + 16) != v30))
    {
      goto LABEL_27;
    }

    v38 = 0;
    v39 = v33;
    v40 = v32;
    v41 = v28;
    do
    {
      v42 = *(v39 - 1) - *(v40 - 1);
      if (v42 < 0)
      {
        v42 = *(v40 - 1) - *(v39 - 1);
      }

      v43 = *v39 - *v40;
      if (v43 < 0)
      {
        v43 = *v40 - *v39;
      }

      v38 += v42 + v43;
      v40 += 4;
      v39 += 2;
      --v41;
    }

    while (v41);
    if (!v38)
    {
      break;
    }

    if (v38 < v35 && v38 <= *v29)
    {
      v34 = v24;
      v35 = v38;
    }

LABEL_27:
    ++v24;
    v31 += 40;
    v33 += 20;
    if (v24 == v22)
    {
      v15 = v230;
      if (v34 != -1)
      {
        v44 = v34;
        goto LABEL_111;
      }

LABEL_30:
      v225 = a6;
      v228 = v12;
      if (v20 == 4)
      {
        v45 = 0;
      }

      else
      {
        v45 = v20;
      }

      v46 = v45 | (v45 << 16);
      *(v15 + 5) = v46;
      v249[0] = sub_277B1FAF0(v11 + 416, 0);
      v47 = sub_277B1FAF0(v11 + 416, 1);
      v249[1] = v47;
      v48 = a2;
      v49 = *(v11 + 35776 + 12 * v249[0] + 4 * v46);
      if (*(*(a2 + 270312) + 64))
      {
        v49 += *(v11 + 35776 + 12 * v47 + ((v46 >> 14) & 0x3FC));
      }

      v223 = v13;
      *a7 = v49;
      v50 = *a8;
      v246 = 1;
      v244 = 0u;
      v245 = 0u;
      if (!v50)
      {
        sub_2779CCAB4();
        v48 = a2;
      }

      off_28866CE48[*(v12 + 404) == 0](v48, a3, v11, v11 + 416, 0, 0, &v244, &v244 + 8, &v246, &v245 + 8, 0, 0, 0);
      v51 = v244;
      if (v244 == 0x7FFFFFFF)
      {
        *&v242[0] = 0x7FFFFFFFLL;
        v52.f64[0] = NAN;
        v52.f64[1] = NAN;
        *(v242 + 8) = vnegq_f64(v52);
        v53 = 0x7FFFFFFFFFFFFFFFLL;
        *(&v242[1] + 1) = 0x7FFFFFFFFFFFFFFFLL;
        LOBYTE(v243) = 0;
        v54 = a6;
        if (v226)
        {
          v55 = v20;
          v56 = 0x7FFFFFFFFFFFFFFFLL;
          v57 = a2;
LABEL_64:
          *a8 = 1;
LABEL_65:
          v68 = 0x7FFFFFFF;
          v238 = 0x7FFFFFFFLL;
          v73.f64[0] = NAN;
          v73.f64[1] = NAN;
          v239 = vnegq_f64(v73);
          v240 = 0x7FFFFFFFFFFFFFFFLL;
          LOBYTE(v241) = 0;
          v70 = -128;
LABEL_66:
          v74 = v70 + (((*a7 + v68) * *(v11 + 16920) + 256) >> 9);
          *v54 = v74;
          *(v11 + 153176 + 4 * v229) = v56 >> 4;
          v75 = v18;
          if (v55 != 4)
          {
            v75 = 1;
          }

          if (v75)
          {
            return 0;
          }

          v76 = *(a9 + 104);
          if (v76)
          {
            v77 = v230[17];
            if (v77 >= 1)
            {
              v78 = (*(v230 + 167) >> 4) & 3;
              v79 = v230[2];
              v80 = *(v76 + 192 * byte_277C39484[v79] + (v78 << 6) + 8 * v230[16]);
              v81 = *(v76 + 192 * byte_277C3949D[v79] + (v78 << 6) + 8 * v77);
              if (v80 < v81)
              {
                v81 = v80;
              }

              result = 0x7FFFFFFFFFFFFFFFLL;
              if (a10 != 0x7FFFFFFFFFFFFFFFLL && v74 >> 1 > v81)
              {
                return result;
              }
            }
          }

          v83 = 0;
          *(v11 + 126548) = 0;
          v220 = v11 + 153176;
          v222 = (v57 + 643728);
          v84 = *(v57 + 643728);
          v217 = *(v11 + 8280);
          v219 = *(v57 + 270312);
          v233 = *(*v217 + 17);
          v216 = *v217;
          v85 = v11 + 432;
          v86 = v84;
          v218 = v84;
          v87 = 1;
          while (1)
          {
            v88 = *(*v217 + 16 + v83);
            v89 = a5;
            if ((v88 - 1) > 7 || (v90 = *(v57 + 245856 + 4 * (v88 - 1)), v90 == -1))
            {
              v91 = 0;
            }

            else
            {
              v91 = (v57 + 245904 + 16 * v90);
            }

            v92 = *v91;
            if (*v91 != -1)
            {
              v93 = v91[1];
              if (v93 != -1)
              {
                v94 = 0;
                v95 = 1;
                v96 = 0;
                if (v92 != 0x4000 || v93 != 0x4000)
                {
                  break;
                }
              }
            }

            v97 = 0;
            v98 = 0;
            v99 = 0;
            v100 = *(*v217 + 8 + 4 * v83);
            v101 = *(v11 + 8340);
            v102 = *(v11 + 8344);
            v103 = *(v11 + 8348);
            v104 = v11;
            v105 = *(v11 + 8352);
            v106 = 1;
            do
            {
              v107 = v106;
              v108 = v85 + 2608 * v97;
              v109 = *(v108 + 168);
              v110 = *(v108 + 169);
              v111 = 1 - *(v108 + 4);
              v112 = (v102 << v111) + 16 * v109;
              LOBYTE(v108) = 1 - *(v108 + 8);
              v113 = (v105 << v108) + 16 * v110;
              v114 = v100 << v108;
              v115 = HIWORD(v100) << v111;
              v116 = v101 << v111;
              v117 = v116 - 16 * v109 - 64;
              v118 = v112 + 48;
              v119 = v103 << v108;
              v120 = v119 - 16 * v110 - 64;
              v121 = v113 + 48;
              v122 = v115;
              if (v115 >= v118)
              {
                v122 = v118;
              }

              if (v117 <= v115)
              {
                LOBYTE(v116) = v122;
              }

              v123 = v114;
              if (v114 >= v121)
              {
                v123 = v121;
              }

              if (v120 > v114)
              {
                v123 = v119;
              }

              v98 |= ((v116 & 0xF) == 0) << v97;
              v99 |= ((v123 & 0xF) == 0) << v97;
              if (*(v219 + 77))
              {
                break;
              }

              v106 = 0;
              v97 = 1;
            }

            while ((v107 & 1) != 0);
            v84 &= v98;
            v86 &= v99;
            v124 = (v233 > 0) & v87;
            v83 = 1;
            v87 = 0;
            v11 = v104;
            if ((v124 & 1) == 0)
            {
              v95 = v86 != 1;
              v94 = v86;
              v96 = v84;
              v89 = a5;
              break;
            }
          }

          if (v233 < 1)
          {
            v127 = a4;
            v130 = v225;
            v125 = v228;
            v126 = a2;
          }

          else
          {
            v125 = v228;
            v126 = a2;
            v127 = a4;
            if ((*(v216 + 167) & 0x200) != 0)
            {
              v128 = *(v216 + 83) == 3 && v96 == 0;
              v129 = !v128;
              if (!v129 && !v95)
              {
                v94 = 0;
              }
            }

            v130 = v225;
          }

          v133 = 0;
          v134 = *(v127 + 16);
          v244 = *v127;
          v245 = v134;
          v246 = *(v127 + 32);
          if (v226)
          {
            v135 = 1;
          }

          else
          {
            v135 = 3;
          }

          v136 = (v11 + 472);
          do
          {
            *(v136 - 3) = *(&v244 + v133);
            *v136 = *(&v245 + v133++ + 2);
            v136 += 652;
          }

          while (v135 != v133);
          v247 = v127;
          v248 = v89;
          if (*(v219 + 64))
          {
            if (*v125)
            {
              v137 = *(*v217 + 2);
              v170 = v137 > 0x18;
              v138 = (1 << v137) & 0x1790000;
              if (!v170 && v138 != 0)
              {
                goto LABEL_124;
              }

              v175 = *(v11 + 8304);
              v176 = *(v11 + 8296);
              if (v175 && ((*(v175 + 167) & 0x80) != 0 || *(v175 + 16) >= 1))
              {
                v177 = *(v175 + 20);
                v178 = v177;
                v179 = HIWORD(v177);
              }

              else
              {
                v179 = 255;
                v178 = 255;
              }

              if (v176 && ((*(v176 + 167) & 0x80) != 0 || *(v176 + 16) >= 1))
              {
                v180 = *(v176 + 20);
                v181 = v180;
                v182 = HIWORD(v180);
              }

              else
              {
                v182 = 255;
                v181 = 255;
              }

              v184 = v179 != 255 && v179 == v182;
              v186 = v178 != 255 && v178 == v181;
              v187 = v125[4];
              if (v187)
              {
                v187 = (((*(v11 + 416) + *(v11 + 420)) >> byte_277C42228[a3]) + *v223) & 1;
              }

              v188 = v186 ? 2 : 0;
              v189 = v188 | v184;
              v190 = v184 || v186 ? v187 : 0;
              v191 = v190 * v189;
              if (v190 * v189)
              {
                if (v191 == 2)
                {
                  LOWORD(v179) = word_277BB8198[v178 + 3];
                }

                else if (v191 == 1)
                {
                  LOWORD(v179) = word_277BB8198[v179];
                }

                else
                {
                  v179 = 1 << (3 * v178 + v179);
                }

                sub_2779850CC(v11, a2, a3, v89, v130, v242, &v238, a7, &v247, v249, v94 & v96, v179 & 0x1FE, 0);
              }

              else
              {
LABEL_124:
                v140 = 0;
                v141 = v218;
                if (((0x10003uLL >> a3) & 1) == 0)
                {
                  v141 = v96;
                }

                v142 = 3;
                do
                {
                  if (sub_2779851A0(v11, a2, a3, v89, v130, v242, &v238, a7, &v247, --v142, v249, v141))
                  {
                    v140 = v142;
                  }

                  v141 = v96;
                }

                while (v142 > 1);
                v143 = v94;
                if ((0x20005uLL >> a3))
                {
                  v143 = *v222;
                }

                v144 = v140 + 6;
                v145 = v140 + 3;
                do
                {
                  sub_2779851A0(v11, a2, a3, v89, v130, v242, &v238, a7, &v247, v144, v249, v143);
                  v144 -= 3;
                  v143 = v94;
                }

                while (v144 >= v145);
              }
            }

            else
            {
              for (i = 8; i != -1; --i)
              {
                if (((1 << i) & 0x1FE) != 0)
                {
                  sub_2779851A0(v11, a2, a3, v89, v130, v242, &v238, a7, &v247, i, v249, v94 & v96);
                }
              }
            }

            goto LABEL_240;
          }

          v146 = *v217;
          v147 = *(v57 + 643732);
          v148 = v125[5];
          if (v148 == 2)
          {
            v149 = *v126;
            v150 = *(*v126 + *(v126 + 463456) + 400);
            v234 = sub_277B1FAF0(v11 + 416, 0);
            v151 = sub_277B1FAF0(v11 + 416, 1);
            v148 = 2;
            v152 = 0;
            v153 = v149 + 192 * v150;
            v89 = a5;
            v154 = v153 + 84316;
            v155 = v153 + 84316 + 12 * v234;
            v156 = v154 + 12 * v151;
            v157 = dword_277BB81C8[v150];
            do
            {
              if (*(v155 + v152) < v157 && *(v156 + v152) < v157)
              {
                v147 &= (1 << v152) & 0x111 ^ 0x1FF;
              }

              v152 += 4;
            }

            while (v152 != 12);
          }

          v158 = v94 & v96;
          if ((v94 & v96) != v218)
          {
            v159 = *(v11 + 8304);
            v160 = *(v11 + 8296);
            if (v159)
            {
              v161 = v228;
              if ((*(v159 + 167) & 0x80) != 0 || *(v159 + 16) >= 1)
              {
                v162 = *(v159 + 20);
                v163 = v162;
                v164 = HIWORD(v162);
              }

              else
              {
                v164 = 255;
                v163 = 255;
              }
            }

            else
            {
              v164 = 255;
              v163 = 255;
              v161 = v228;
            }

            if (v160 && ((*(v160 + 167) & 0x80) != 0 || *(v160 + 16) >= 1))
            {
              v192 = *(v160 + 20);
              v193 = v192;
              v194 = HIWORD(v192);
            }

            else
            {
              v194 = 255;
              v193 = 255;
            }

            v196 = v164 != 255 && v164 == v194;
            v198 = v163 != 255 && v163 == v193;
            v199 = v161[4];
            if (v199)
            {
              v199 = (((*(v11 + 416) + *(v11 + 420)) >> byte_277C42228[a3]) + *v223) & 1;
            }

            v200 = v198 ? 2 : 0;
            v201 = v200 | v196;
            v202 = v196 || v198 ? v199 : 0;
            if (v202 * v201)
            {
              if (!v148 || ((v147 >> (4 * v164))) && v164)
              {
                sub_2779851A0(v11, a2, a3, v89, v130, v242, &v238, a7, &v247, 4 * v164, v249, v158);
              }

              goto LABEL_240;
            }
          }

          if (!a3 || ((0x10003uLL >> a3) & 1) != 0 && v218 == v94 || ((0x20005uLL >> a3) & 1) != 0 && v218 == v96)
          {
            if (v148)
            {
              v203 = v147 & 0x110;
            }

            else
            {
              v203 = 272;
            }

            sub_2779850CC(v11, a2, a3, v89, v130, v242, &v238, a7, &v247, v249, v158, v203, 1);
LABEL_240:
            v204 = 0;
            v244 = *v248;
            v245 = *(v248 + 16);
            v246 = *(v248 + 32);
            v205 = (v11 + 472);
            do
            {
              *(v205 - 3) = *(&v244 + v204);
              *v205 = *(&v245 + v204++ + 2);
              v205 += 652;
            }

            while (v135 != v204);
            if (*(v11 + 126548) == 1)
            {
              sub_2779CCAB4();
            }

            v206 = *(&v242[1] + 1) >> 4;
            *(v220 + 4 * v229) = *(&v242[1] + 1) >> 4;
            if (v228[2])
            {
              v207 = *(a9 + 5288);
              if (v207 <= 127)
              {
                v208 = *v130;
                v209 = *(v230 + 8);
                v210 = v230[83];
                v211 = (*(v230 + 167) >> 9) & 1;
                v212 = a9 + 144 + 40 * v207;
                v213 = *(v230 + 1);
                *v212 = *(v230 + 5);
                *(v212 + 4) = v213;
                *(v212 + 12) = v209;
                *(v212 + 14) = v210;
                *(v212 + 16) = v211;
                *(v212 + 24) = v208;
                ++v207;
                *(v212 + 32) = v206;
                *(v212 + 36) = 0;
              }

              *(a9 + 5288) = v207;
            }

            return 0;
          }

          v214 = 4;
          v215 = v228;
          if (!v148)
          {
            goto LABEL_256;
          }

LABEL_255:
          if ((v147 >> v214))
          {
LABEL_256:
            while (1)
            {
              sub_2779851A0(v11, a2, a3, a5, v130, v242, &v238, a7, &v247, v214, v249, v158);
              if (!v215[3] || v158 == *v222)
              {
                break;
              }

              if (*(v146 + 20) == 65537 || v214 > 4)
              {
                goto LABEL_240;
              }

LABEL_254:
              v214 += 4;
              v215 = v228;
              if (v228[5])
              {
                goto LABEL_255;
              }
            }
          }

          if (v214 >= 5)
          {
            goto LABEL_240;
          }

          goto LABEL_254;
        }

        v227 = 0;
        v221 = 0;
        v56 = 0x7FFFFFFFFFFFFFFFLL;
        v57 = a2;
      }

      else
      {
        v58 = DWORD1(v244);
        v242[0] = v244;
        v53 = *(&v244 + 1);
        v56 = *(&v245 + 1);
        v54 = v225;
        v55 = v20;
        if (*(&v245 + 1) == 0x7FFFFFFFFFFFFFFFLL)
        {
          v56 = 0;
        }

        else
        {
          *(&v242[1] + 1) = *(&v245 + 1);
        }

        v57 = a2;
        v64 = v246 & 1;
        LOBYTE(v243) = v246 & 1;
        if (v226)
        {
          v65 = 0;
          v66 = 0;
          v67 = 1;
          *a8 = 1;
          LODWORD(v238) = v51;
          goto LABEL_54;
        }

        v221 = v246 & 1;
        v227 = DWORD1(v244);
      }

      v71 = *a8;
      v246 = 1;
      v244 = 0u;
      v245 = 0u;
      if (!v71)
      {
        sub_2779CCAB4();
        v57 = a2;
      }

      off_28866CE48[*(v12 + 404) == 0](v57, a3, v11, v11 + 416, 1, 2, &v244, &v244 + 8, &v246, &v245 + 8, 0, 0, 0);
      v72 = v244;
      if (v244 == 0x7FFFFFFF)
      {
        v57 = a2;
        v54 = v225;
        v55 = v20;
        goto LABEL_64;
      }

      v131 = DWORD1(v244);
      HIDWORD(v238) = DWORD1(v244);
      v66 = *(&v245 + 1);
      v54 = v225;
      v55 = v20;
      if (*(&v245 + 1) == 0x7FFFFFFFFFFFFFFFLL)
      {
        v66 = 0;
      }

      else
      {
        v240 = *(&v245 + 1);
      }

      v57 = a2;
      v65 = *(&v244 + 1);
      v173 = v246;
      *a8 = 1;
      if (v51 == 0x7FFFFFFF)
      {
        goto LABEL_65;
      }

      v67 = v173 & 1;
      v174 = v72 + v51;
      if (v174 >= 0x7FFFFFFF)
      {
        v51 = 0x7FFFFFFF;
      }

      else
      {
        v51 = v174;
      }

      LODWORD(v238) = v51;
      v68 = v51;
      v58 = v227;
      v64 = v221;
      if (v131)
      {
LABEL_55:
        *&v69 = v65 + v53;
        v239.f64[0] = v69;
        if (v56 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v240 = v56 + v66;
        }

        LOBYTE(v241) = v67 & v64;
        v70 = *&v69 << 7;
        goto LABEL_66;
      }

LABEL_54:
      HIDWORD(v238) = v58;
      v68 = v51;
      goto LABEL_55;
    }
  }

  v44 = v24;
LABEL_111:
  result = 0;
  v132 = v21 + 40 * v44;
  *(v230 + 5) = *v132;
  *a6 = *(v132 + 24);
  *(v11 + 4 * v229 + 153176) = *(v132 + 32);
  *a8 = 0;
  return result;
}

uint64_t sub_2779850CC(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, _DWORD *a8, uint64_t *a9, int *a10, int a11, unsigned __int16 a12, int a13)
{
  if (a12)
  {
    v17 = result;
    v18 = a11;
    if (a13)
    {
      v18 = *(a2 + 643728);
    }

    for (i = 8; i != -1; --i)
    {
      if ((a12 >> i))
      {
        result = sub_2779851A0(v17, a2, a3, a4, a5, a6, a7, a8, a9, i, a10, v18);
      }

      v18 = a11;
    }
  }

  return result;
}

uint64_t sub_2779851A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, _DWORD *a8, uint64_t *a9, unsigned int a10, int *a11, int a12)
{
  v15 = *(*(a2 + 270312) + 77);
  v16 = **(a1 + 8280);
  v17 = *a6;
  v18 = *(a6 + 4);
  v20 = *(a6 + 8);
  v19 = *(a6 + 16);
  v21 = *(a6 + 24);
  v22 = *(a6 + 32);
  v47 = (a6 + 33);
  v56[0] = *(a6 + 33);
  *(v56 + 3) = *(a6 + 36);
  v49 = *(v16 + 20);
  v23 = dword_277BB81A4[a10];
  v50 = v16;
  *(v16 + 20) = v23;
  v24 = *(a1 + 35776 + 12 * *a11 + 4 * v23);
  if (*(*(a2 + 270312) + 64))
  {
    v24 += *(a1 + 35776 + 12 * a11[1] + 4 * BYTE2(v23));
  }

  if (*a5 < (*(a1 + 16920) * v24 + 256) >> 9)
  {
    goto LABEL_43;
  }

  v25 = *(a2 + 643728) == a12 ? 3 : a12;
  if (v25 == 3)
  {
    v43 = 0;
    v44 = 0;
    v46 = 0;
    v41 = 0;
    v42 = 0;
    v17 = *a7;
    v18 = *(a7 + 4);
    v20 = *(a7 + 8);
    v19 = *(a7 + 16);
    v21 = *(a7 + 24);
    v22 = *(a7 + 32);
    v56[0] = *(a7 + 33);
    *(v56 + 3) = *(a7 + 36);
    v40 = 1;
  }

  else
  {
    v46 = 0;
    if (v25 == 1)
    {
      v43 = 0;
      v44 = 0;
      v40 = 1;
      v41 = 0;
      v42 = 0;
      if (!v15)
      {
LABEL_20:
        v38 = a7;
        v39 = v15;
        v27 = 0;
        v28 = 1;
        while (1)
        {
          v29 = v27;
          if (((*(a1 + 16920) * (v17 + v24) + 256) >> 9) + (v20 << 7) >= *a5)
          {
            goto LABEL_43;
          }

          v51 = v21;
          v52 = v19;
          v53 = v22;
          v59[0] = 1;
          v57 = 0u;
          v58 = 0u;
          sub_2779CCAB4();
          off_28866CE48[*(a2 + 396428) == 0](a2, a3, a1, a1 + 416, v28, v28, &v57, &v57 + 8, v59, &v58 + 8, 0, 0, 0);
          if (v17 == 0x7FFFFFFF || v57 == 0x7FFFFFFF)
          {
            v18 = 0;
            v22 = 0;
            v20 = 0x7FFFFFFFFFFFFFFFLL;
            v17 = 0x7FFFFFFF;
            v19 = 0x7FFFFFFFFFFFFFFFLL;
            v21 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            if (v57 + v17 >= 0x7FFFFFFF)
            {
              v17 = 0x7FFFFFFF;
            }

            else
            {
              v17 += v57;
            }

            if (!v18)
            {
              v18 = DWORD1(v57);
            }

            v20 += *(&v57 + 1);
            if (*(&v58 + 1) == 0x7FFFFFFFFFFFFFFFLL)
            {
              v30 = 0;
            }

            else
            {
              v30 = *(&v58 + 1);
            }

            v21 = v51;
            v19 = v52;
            v31 = v30 + v51;
            if (v51 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v21 = v31;
            }

            v22 = v59[0] & v53;
          }

          v28 = 2;
          v27 = 1;
          if (v29)
          {
            v15 = v39;
            a7 = v38;
            break;
          }
        }
      }
    }

    else
    {
      result = 0;
      if (v25)
      {
        return result;
      }

      v59[0] = 1;
      v57 = 0u;
      v58 = 0u;
      sub_2779CCAB4();
      off_28866CE48[*(a2 + 396428) == 0](a2, a3, a1, a1 + 416, 0, 0, &v57, &v57 + 8, v59, &v58 + 8, 0, 0, 0);
      if (v57 == 0x7FFFFFFF)
      {
        v18 = 0;
        v22 = 0;
        v19 = 0x7FFFFFFFFFFFFFFFLL;
        v21 = 0x7FFFFFFFFFFFFFFFLL;
        v20 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v19 = 0;
        v18 = DWORD1(v57);
        v20 = *(&v57 + 1);
        if (*(&v58 + 1) == 0x7FFFFFFFFFFFFFFFLL)
        {
          v21 = 0;
        }

        else
        {
          v21 = *(&v58 + 1);
        }

        v22 = v59[0] & 1;
      }

      v43 = v18;
      v44 = v57;
      v17 = v57;
      memset(v56, 0, 7);
      v46 = v20;
      v41 = v21;
      v42 = v19;
      v40 = v22;
      if (!v15)
      {
        goto LABEL_20;
      }
    }
  }

  v32 = ((*(a1 + 16920) * (v17 + v24) + 256) >> 9) + (v20 << 7);
  if (v32 >= *a5)
  {
LABEL_43:
    result = 0;
    *(v50 + 20) = v49;
    return result;
  }

  *a5 = v32;
  *a8 = v24;
  if (*(a2 + 643728) != a12)
  {
    if (a12 == 1)
    {
      *a7 = v17;
      *(a7 + 4) = v18;
      *(a7 + 8) = v20;
      *(a7 + 16) = v19;
      *(a7 + 24) = v21;
      *(a7 + 32) = v22;
      *(a7 + 33) = v56[0];
      *(a7 + 36) = *(v56 + 3);
      *(a1 + 126548) ^= 1u;
    }

    else if (!a12)
    {
      *a6 = v44;
      *(a6 + 4) = v43;
      *(a6 + 8) = v46;
      *(a6 + 16) = v42;
      *(a6 + 24) = v41;
      *(a6 + 32) = v40;
      *v47 = 0;
      *(v47 + 3) = 0;
      *a7 = v17;
      *(a7 + 4) = v18;
      *(a7 + 8) = v20;
      *(a7 + 16) = v19;
      *(a7 + 24) = v21;
      *(a7 + 32) = v22;
      *(a7 + 33) = v56[0];
      *(a7 + 36) = *(v56 + 3);
      *(a1 + 126548) = 0;
    }

    v33 = 0;
    v34 = *a9;
    v35 = a9[1];
    *a9 = v35;
    a9[1] = v34;
    v57 = *v35;
    v58 = v35[1];
    v59[0] = *(v35 + 4);
    v36 = 3;
    if (v15)
    {
      v36 = 1;
    }

    v37 = (a1 + 472);
    do
    {
      *(v37 - 3) = *(&v57 + v33);
      *v37 = *(&v59[-1] + v33++);
      v37 += 652;
    }

    while (v36 != v33);
  }

  return 1;
}

void sub_277985770(double a1, double a2, double a3, double a4, int32x4_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, int a10, int a11, _DWORD *a12, void *a13, BOOL *a14, uint64_t *a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v19 = a14;
  v18 = a15;
  if (a10 > a11)
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    if (a14)
    {
      goto LABEL_37;
    }

    goto LABEL_38;
  }

  v53 = a12;
  v54 = a13;
  v23 = 0;
  v56 = a8 + 153176;
  v24 = a9 + 2608 * a10;
  v61 = a11 - a10 + 1;
  v55 = *(**(a9 + 7864) + 16);
  v58 = a17 + 8 * a10;
  v59 = a18 + 8 * a10;
  v57 = a16 + 4 * a10;
  v63 = a9;
  v25 = a8 + 136 * a10;
  v26 = -a10;
  v60 = &byte_277C3BCDE[4 * a7];
  v27 = 0;
  v22 = 0;
  v21 = 0;
  v62 = v26;
  while (v26 == v27 || *(a9 + 12) == 1)
  {
    _X8 = v24 + 5236;
    __asm { PRFM            #0, [X8] }

    v34 = *(v24 + 20);
    v35 = *(v24 + 24);
    v36 = v60[2 * v34 + v35];
    v37 = byte_277C3CAE8[v36];
    v38 = *(a9 + 7936);
    if (v38 < 0)
    {
      v37 = ((v38 >> (v35 + 3)) + v37) & ~(((v38 >> (v35 + 3)) + v37) >> 31);
    }

    v39 = byte_277C3CAFE[v36];
    v40 = *(a9 + 7928);
    if (v40 < 0)
    {
      v39 = ((v40 >> (v34 + 3)) + v39) & ~(((v40 >> (v34 + 3)) + v39) >> 31);
    }

    v41 = sub_277985AA0(*(*(a9 + 7960) + 192), *(a9 + 10656), v25, v24 + 16, v39, v37, a1, a2, a3, a4, a5);
    v42 = v41;
    if ((*(*(a8 + 8376) + 192) & 8) != 0)
    {
      v43 = *(a8 + 11072) - 5;
      if (v41)
      {
LABEL_13:
        v44 = *(*(v25 + 128) + 2) >> v43;
        if (v44 <= 1)
        {
          v44 = 1;
        }

        v45 = (v39 * v37);
        v46 = v41 / v45;
        v47 = log2(v46 / (v44 * v44));
        v65 = 0.0;
        v66[0] = 0.0;
        sub_277A8B128(v36, v66, &v65, v46, v47);
        v48 = v66[0] * v45;
        if (v66[0] * v45 < 0.0)
        {
          v48 = 0.0;
        }

        a1 = v48 + 0.5;
        v49 = a1;
        v50 = 16 * v42;
        if (a1)
        {
          v51 = v46 * v65 * v45;
          if (v51 < 0.0)
          {
            v51 = 0.0;
          }

          a1 = v51 + 0.5;
          if ((a1 << 7) + ((*(a8 + 16920) * v49 + 256) >> 9) < v42 << 11)
          {
            v50 = a1;
          }

          else
          {
            v49 = 0;
          }
        }

        goto LABEL_25;
      }
    }

    else
    {
      LOBYTE(v43) = 3;
      if (v41)
      {
        goto LABEL_13;
      }
    }

    v50 = 0;
    v49 = 0;
LABEL_25:
    v26 = v62;
    a9 = v63;
    if (v62 == v27)
    {
      v52 = -1;
      if (v42 < 0xFFFFFFFFLL)
      {
        v52 = v42;
      }

      *(v56 + 4 * v55) = v52;
    }

    if (a16)
    {
      *(v57 + 4 * v27) = v49;
    }

    if (a17)
    {
      *(v58 + 8 * v27) = v42;
    }

    if (a18)
    {
      *(v59 + 8 * v27) = v50;
    }

    v23 += v42;
    v22 += v49;
    v21 += v50;
    ++v27;
    v24 += 2608;
    v25 += 136;
    if (v61 == v27)
    {
      break;
    }
  }

  v20 = 16 * v23;
  a12 = v53;
  a13 = v54;
  v19 = a14;
  v18 = a15;
  if (a14)
  {
LABEL_37:
    *v19 = v22 == 0;
  }

LABEL_38:
  if (v18)
  {
    *v18 = v20;
  }

  *a12 = v22;
  *a13 = v21;
}

uint64_t sub_277985AA0(char a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8, double a9, double a10, int32x4_t a11)
{
  if ((a1 & 8) != 0)
  {
    sub_277B2F1E0(*(a3 + 48), *(a3 + 72), *(a4 + 16), *(a4 + 40), a5, a6, a7, a8, a9, a10, a11);
  }

  else
  {
    v12 = off_280ABCBE0(*(a3 + 48), *(a3 + 72), *(a4 + 16), *(a4 + 40), a5, a6);
  }

  return (v12 + ((1 << (2 * a2 - 16)) >> 1)) >> (2 * a2 - 16);
}

uint64_t sub_277985B14(uint64_t result, int a2, uint64_t a3, uint64_t a4, int a5, int a6, int *a7, void *a8, double a9, double a10, double a11, double a12, int32x4_t a13, BOOL *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v54 = result;
  if (a5 <= a6)
  {
    v18 = 0;
    v47 = a3 + 153176;
    v22 = a4 + 2608 * a5;
    v52 = a6 - a5 + 1;
    v46 = *(**(a4 + 7864) + 16);
    v49 = a17 + 8 * a5;
    v50 = a18 + 8 * a5;
    v48 = a16 + 4 * a5;
    v23 = a3 + 136 * a5;
    v24 = -a5;
    v51 = &byte_277C3BCDE[4 * a2];
    v25 = 0;
    v20 = 0;
    v19 = 0;
    do
    {
      if (v24 != v25 && *(a4 + 12) != 1)
      {
        break;
      }

      _X8 = v22 + 7844;
      __asm { PRFM            #0, [X8] }

      v32 = v51[2 * *(v22 + 20) + *(v22 + 24)];
      v33 = byte_277C3CAFE[v32];
      v34 = byte_277C3CAE8[v32];
      v56[0] = 0;
      v55 = 0;
      result = sub_277985AA0(*(*(a4 + 7960) + 192), *(a4 + 10656), v23, v22 + 16, v33, v34, a9, a10, a11, a12, a13);
      v35 = result;
      if ((*(*(a3 + 8376) + 192) & 8) != 0)
      {
        v36 = *(a3 + 11072) - 5;
      }

      else
      {
        LOBYTE(v36) = 3;
      }

      if (*(v54 + 396240))
      {
        v37 = *(*(v23 + 128) + 2) >> v36;
        v38 = (result * (280 - v37)) >> 7;
        if (v38 >= 0x7FFFFFFF)
        {
          LODWORD(v38) = 0x7FFFFFFF;
        }

        if (v37 > 119)
        {
          LODWORD(v38) = 0;
        }

        v56[0] = v38;
        v39 = (result * v37) >> 8;
      }

      else
      {
        result = sub_277A8B04C(result, byte_277C3BCB6[v32], *(*(v23 + 128) + 2) >> v36, v56, &v55);
        v39 = v55;
      }

      if (v24 == v25)
      {
        v40 = -1;
        if (v35 < 0xFFFFFFFFLL)
        {
          v40 = v35;
        }

        *(v47 + 4 * v46) = v40;
      }

      v41 = v56[0];
      if (a16)
      {
        *(v48 + 4 * v25) = v56[0];
      }

      if (a17)
      {
        *(v49 + 8 * v25) = v35;
      }

      v42 = 16 * v39;
      if (a18)
      {
        *(v50 + 8 * v25) = v42;
      }

      v18 += v35;
      v20 += v41;
      v19 += v42;
      ++v25;
      v22 += 2608;
      v23 += 136;
    }

    while (v52 != v25);
  }

  else
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
  }

  if (a14)
  {
    *a14 = v18 == 0;
  }

  if (a15)
  {
    *a15 = 16 * v18;
  }

  v43 = 0x7FFFFFFF;
  if (v20 < 0x7FFFFFFF)
  {
    v43 = v20;
  }

  *a7 = v43;
  *a8 = v19;
  return result;
}

void sub_277985DDC(_DWORD *a1)
{
  if (*a1)
  {
    sub_277985E48(a1, 0);
    pthread_join(*(*a1 + 112), 0);
    pthread_mutex_destroy(*a1);
    pthread_cond_destroy((*a1 + 64));
    if (*a1)
    {
      free(*(*a1 - 8));
    }

    *a1 = 0;
  }
}

pthread_mutex_t *sub_277985E48(_DWORD *a1, int a2)
{
  result = *a1;
  if (result)
  {
    pthread_mutex_lock(result);
    v5 = a1[2];
    if (v5)
    {
      while (v5 != 1)
      {
        pthread_cond_wait((*a1 + 64), *a1);
        v5 = a1[2];
      }

      if (a2 != 1)
      {
        a1[2] = a2;
        pthread_cond_signal((*a1 + 64));
      }
    }

    v6 = *a1;

    return pthread_mutex_unlock(v6);
  }

  return result;
}

void *sub_277985ED4(void *result)
{
  v1 = result[3];
  if (v1)
  {
    v2 = result;
    result = v1(result[4], result[5]);
    *(v2 + 12) |= result == 0;
  }

  return result;
}

BOOL sub_277985F5C(_DWORD *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  a1[12] = 0;
  v1 = a1[2];
  if (v1 != 1)
  {
    if (v1)
    {
      sub_277985E48(a1, 1);
      return a1[12] == 0;
    }

    else
    {
      v3 = malloc_type_malloc(0x8FuLL, 0x5F484EBFuLL);
      if (v3)
      {
        v4 = v3;
        v5 = (v3 + 23) & 0xFFFFFFFFFFFFFFF0;
        *(v5 - 8) = v4;
        if (v5)
        {
          *(v5 + 112) = 0;
          *(v5 + 80) = 0u;
          *(v5 + 96) = 0u;
          *(v5 + 48) = 0u;
          *(v5 + 64) = 0u;
          *(v5 + 16) = 0u;
          *(v5 + 32) = 0u;
          *v5 = 0u;
          *a1 = v5;
          if (!pthread_mutex_init(v5, 0))
          {
            if (pthread_cond_init((*a1 + 64), 0))
            {
              pthread_mutex_destroy(*a1);
            }

            else
            {
              memset(&v8, 0, sizeof(v8));
              if (!pthread_attr_init(&v8))
              {
                v7 = 0;
                if (pthread_attr_getstacksize(&v8, &v7) || v7 >> 18 || !pthread_attr_setstacksize(&v8, 0x40000uLL))
                {
                  pthread_mutex_lock(*a1);
                  if (!pthread_create((*a1 + 112), &v8, sub_277986124, a1))
                  {
                    v1 = 1;
                    a1[2] = 1;
                    pthread_mutex_unlock(*a1);
                    pthread_attr_destroy(&v8);
                    return v1;
                  }

                  pthread_mutex_unlock(*a1);
                }

                pthread_attr_destroy(&v8);
              }

              pthread_mutex_destroy(*a1);
              pthread_cond_destroy((*a1 + 64));
            }
          }

          if (*a1)
          {
            free(*(*a1 - 8));
          }
        }
      }

      v1 = 0;
      *a1 = 0;
    }
  }

  return v1;
}

uint64_t sub_277986124(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2)
  {
    strncpy(__dst, v2, 0x3FuLL);
    __dst[63] = 0;
    pthread_setname_np(__dst);
  }

  pthread_mutex_lock(*a1);
  while (1)
  {
    while (1)
    {
      v3 = *(a1 + 8);
      if (v3 != 2)
      {
        break;
      }

      pthread_mutex_unlock(*a1);
      v4 = *(a1 + 24);
      if (v4)
      {
        *(a1 + 48) |= v4(*(a1 + 32), *(a1 + 40)) == 0;
      }

      pthread_mutex_lock(*a1);
      *(a1 + 8) = 1;
      pthread_cond_signal((*a1 + 64));
    }

    if (v3 != 1)
    {
      break;
    }

    pthread_cond_wait((*a1 + 64), *a1);
  }

  pthread_mutex_unlock(*a1);
  return 0;
}

double sub_27798621C(uint64_t a1)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_277986230(uint64_t result, int a2, uint64_t a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10)
{
  *&v46[8] = 0;
  v49 = 2 * a3;
  __src = (2 * a3 - 2 * a8);
  *v46 = (a6 - 1);
  if (a6 >= 1)
  {
    v11 = 0;
    v12 = (2 * result);
    v13 = (2 * result + 2 * a5 - 2);
    v53 = a2;
    v54 = 2 * a5;
    v14 = (a8 + 7) & 0xFFFFFFFFFFFFFFF8;
    v15 = vdupq_n_s64(a8 - 1);
    v16 = v49 - 2 * a8 + 8;
    v17 = xmmword_277BB7070;
    v18 = 2 * a4;
    v19 = xmmword_277BB7080;
    v20 = xmmword_277BB7090;
    v21 = v49 + v54 + 8;
    v22 = xmmword_277BB70A0;
    v23 = 2 * a3 - 2 * a8;
    v51 = vdupq_n_s64(a10 - 1);
    v52 = v15;
    do
    {
      if (a8)
      {
        v24 = 0;
        v25 = *v12;
        v26 = v16;
        do
        {
          v27 = vdupq_n_s64(v24);
          v28 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v27, v22)));
          if (vuzp1_s8(vuzp1_s16(v28, *v27.i8), *v27.i8).u8[0])
          {
            *(v26 - 4) = v25;
          }

          if (vuzp1_s8(vuzp1_s16(v28, *&v27), *&v27).i8[1])
          {
            *(v26 - 3) = v25;
          }

          if (vuzp1_s8(vuzp1_s16(*&v27, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v27, v20)))), *&v27).i8[2])
          {
            *(v26 - 2) = v25;
            *(v26 - 1) = v25;
          }

          v29 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v27, v19)));
          if (vuzp1_s8(*&v27, vuzp1_s16(v29, *&v27)).i32[1])
          {
            *v26 = v25;
          }

          if (vuzp1_s8(*&v27, vuzp1_s16(v29, *&v27)).i8[5])
          {
            v26[1] = v25;
          }

          v30 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v27, v17)));
          if (vuzp1_s8(*&v30, vuzp1_s16(v30, v30)).i8[6])
          {
            v26[2] = v25;
          }

          v31 = vuzp1_s16(v30, v30);
          if (vuzp1_s8(v31, v31).i8[7])
          {
            v26[3] = v25;
          }

          v24 += 8;
          v26 += 8;
        }

        while (v14 != v24);
      }

      result = memcpy((v23 + 2 * a8), v12, v54);
      v22 = xmmword_277BB70A0;
      v20 = xmmword_277BB7090;
      v19 = xmmword_277BB7080;
      v17 = xmmword_277BB7070;
      if (a10)
      {
        v32 = 0;
        v33 = *v13;
        v34 = v21;
        do
        {
          v35 = vdupq_n_s64(v32);
          v36 = vmovn_s64(vcgeq_u64(v51, vorrq_s8(v35, xmmword_277BB70A0)));
          if (vuzp1_s8(vuzp1_s16(v36, *v35.i8), *v35.i8).u8[0])
          {
            *(v34 - 4) = v33;
          }

          if (vuzp1_s8(vuzp1_s16(v36, *&v35), *&v35).i8[1])
          {
            *(v34 - 3) = v33;
          }

          if (vuzp1_s8(vuzp1_s16(*&v35, vmovn_s64(vcgeq_u64(v51, vorrq_s8(v35, xmmword_277BB7090)))), *&v35).i8[2])
          {
            *(v34 - 2) = v33;
            *(v34 - 1) = v33;
          }

          v37 = vmovn_s64(vcgeq_u64(v51, vorrq_s8(v35, xmmword_277BB7080)));
          if (vuzp1_s8(*&v35, vuzp1_s16(v37, *&v35)).i32[1])
          {
            *v34 = v33;
          }

          if (vuzp1_s8(*&v35, vuzp1_s16(v37, *&v35)).i8[5])
          {
            v34[1] = v33;
          }

          v38 = vmovn_s64(vcgeq_u64(v51, vorrq_s8(v35, xmmword_277BB7070)));
          if (vuzp1_s8(*&v38, vuzp1_s16(v38, v38)).i8[6])
          {
            v34[2] = v33;
          }

          v39 = vuzp1_s16(v38, v38);
          if (vuzp1_s8(v39, v39).i8[7])
          {
            v34[3] = v33;
          }

          v32 += 8;
          v34 += 8;
        }

        while (((a10 + 7) & 0xFFFFFFFFFFFFFFF8) != v32);
      }

      v12 += v53;
      v13 += v53;
      ++v11;
      v16 += v18;
      v21 += v18;
      v23 += 2 * a4;
      v15 = v52;
    }

    while (v11 != a6);
  }

  v40 = *&v46[4] - a8;
  v41 = a9;
  v42 = a8 + a5 + a10;
  if (a7 >= 1)
  {
    v43 = (v49 + 2 * -(a4 * a7) + 2 * v40);
    do
    {
      result = memcpy(v43, __src, 2 * v42);
      v43 += 2 * a4;
      --a7;
    }

    while (a7);
  }

  if (a9 >= 1)
  {
    v44 = (v49 + 2 * a6 * a4 + 2 * v40);
    v45 = 2 * v42;
    do
    {
      result = memcpy(v44, (v49 + 2 * *v46 * a4 + 2 * v40), v45);
      v44 += 2 * a4;
      --v41;
    }

    while (v41);
  }

  return result;
}

unsigned __int8 *sub_277986644(unsigned __int8 *result, int a2, _BYTE *a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10, int a11)
{
  v27 = &a3[-a8];
  if (a6 >= 1)
  {
    v12 = result;
    v13 = 0;
    v14 = &a3[-a8];
    v15 = a8;
    v16 = a3;
    v17 = &a3[a5];
    v18 = &result[(a5 - 1) * a11];
    v31 = a2;
    v19 = 2 * a5;
    do
    {
      memset(v14, *v12, v15);
      if (a11 == 1)
      {
        memcpy(&v14[v15], v12, a5);
      }

      else if (a5 >= 1)
      {
        v20 = 0;
        v21 = v16;
        do
        {
          *v21++ = v12[v20];
          v20 += 2;
        }

        while (v19 != v20);
      }

      result = memset(v17, *v18, a10);
      v12 += v31;
      v18 += v31;
      v14 += a4;
      v17 += a4;
      ++v13;
      v16 += a4;
      v15 = a8;
    }

    while (v13 != a6);
  }

  v22 = a9;
  v23 = a8 + a5 + a10;
  if (a7 >= 1)
  {
    v24 = &a3[-(a4 * a7) - a8];
    do
    {
      result = memcpy(v24, v27, v23);
      v24 += a4;
      --a7;
    }

    while (a7);
  }

  if (a9 >= 1)
  {
    v25 = &a3[a6 * a4 - a8];
    do
    {
      result = memcpy(v25, &a3[(a6 - 1) * a4 - a8], v23);
      v25 += a4;
      --v22;
    }

    while (v22);
  }

  return result;
}

uint64_t sub_277986848(__int32 *a1, int a2, __int32 *a3, int a4, uint64_t a5, __int32 *a6, int a7, int a8)
{
  v8 = 2 * a2;
  v9 = 2 * a4;
  v10 = 2 * a7;
  v11 = 0;
  v12 = 0;
  if (a8)
  {
    do
    {
      v13.i32[0] = *a6;
      v13.i32[1] = *(a6 + a7);
      v14.i32[0] = *a3;
      v14.i32[1] = *(a3 + a4);
      v15.i32[0] = *a1;
      v15.i32[1] = *(a1 + a2);
      v12 = vpadal_u8(v12, vabd_u8(vrshrn_n_s16(vmlal_u8(vmull_u8(vsub_s8(0x4040404040404040, v13), v14), v13, *(a5 + v11)), 6uLL), v15));
      a1 = (a1 + v8);
      a3 = (a3 + v9);
      a6 = (a6 + v10);
      v11 += 8;
    }

    while (v11 != 16);
  }

  else
  {
    do
    {
      v16.i32[0] = *a6;
      v16.i32[1] = *(a6 + a7);
      v17.i32[0] = *a3;
      v17.i32[1] = *(a3 + a4);
      v18.i32[0] = *a1;
      v18.i32[1] = *(a1 + a2);
      v12 = vpadal_u8(v12, vabd_u8(vrshrn_n_s16(vmlal_u8(vmull_u8(vsub_s8(0x4040404040404040, v16), *(a5 + v11)), v16, v17), 6uLL), v18));
      a1 = (a1 + v8);
      a3 = (a3 + v9);
      a6 = (a6 + v10);
      v11 += 8;
    }

    while (v11 != 16);
  }

  return vaddlv_u16(v12);
}

uint64_t sub_277986930(__int32 *a1, int a2, __int32 *a3, int a4, uint64_t a5, __int32 *a6, int a7, int a8)
{
  v8 = 2 * a2;
  v9 = 2 * a4;
  v10 = 2 * a7;
  v11 = 0;
  v12 = 0;
  if (a8)
  {
    do
    {
      v13.i32[0] = *a6;
      v13.i32[1] = *(a6 + a7);
      v14.i32[0] = *a3;
      v14.i32[1] = *(a3 + a4);
      v15.i32[0] = *a1;
      v15.i32[1] = *(a1 + a2);
      v12 = vpadal_u8(v12, vabd_u8(vrshrn_n_s16(vmlal_u8(vmull_u8(vsub_s8(0x4040404040404040, v13), v14), v13, *(a5 + v11)), 6uLL), v15));
      a1 = (a1 + v8);
      a3 = (a3 + v9);
      a6 = (a6 + v10);
      v11 += 8;
    }

    while (v11 != 32);
  }

  else
  {
    do
    {
      v16.i32[0] = *a6;
      v16.i32[1] = *(a6 + a7);
      v17.i32[0] = *a3;
      v17.i32[1] = *(a3 + a4);
      v18.i32[0] = *a1;
      v18.i32[1] = *(a1 + a2);
      v12 = vpadal_u8(v12, vabd_u8(vrshrn_n_s16(vmlal_u8(vmull_u8(vsub_s8(0x4040404040404040, v16), *(a5 + v11)), v16, v17), 6uLL), v18));
      a1 = (a1 + v8);
      a3 = (a3 + v9);
      a6 = (a6 + v10);
      v11 += 8;
    }

    while (v11 != 32);
  }

  return vaddlv_u16(v12);
}