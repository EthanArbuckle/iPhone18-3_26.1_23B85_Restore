uint64_t plc03_01CodecUInt(uint64_t result, uint64_t *a2, size_t __n, unsigned int *a4, uint64_t *a5, uint64_t a6, unsigned int *a7)
{
  v10 = result;
  v34 = *MEMORY[0x29EDCA608];
  __dst = 0;
  *a6 = 0;
  v11 = *(a2 + 4);
  *(a6 + 6) = v11;
  v12 = *(a5 + 4);
  v13 = *(a5 + 5);
  v14 = v13 - v12;
  if (v13 < v12 || v14 < __n)
  {
    if (result == 1)
    {
      v15 = 59;
    }

    else
    {
      v15 = 57;
    }

    goto LABEL_6;
  }

  v20 = *a2;
  v21 = *a5;
  if (__n == 2)
  {
    v32 = 2;
    memcpy_s("plc03_01CodecUInt", 158, (v21 + v12), v14, (v20 + v11), 2uLL);
    p_dst = &__dst;
    v23 = (v20 + v11);
    v24 = 159;
    v25 = 4;
    v26 = 2;
  }

  else if (__n == 1)
  {
    v32 = 1;
    memcpy_s("plc03_01CodecUInt", 151, (v21 + v12), v14, (v20 + v11), 1uLL);
    p_dst = &__dst;
    v23 = (v20 + v11);
    v24 = 152;
    v25 = 4;
    v26 = 1;
  }

  else
  {
    if ((__n - 3) > 1u)
    {
      v15 = 55;
LABEL_6:
      *a6 = v15;
LABEL_7:
      if (*(a6 + 144) == 1)
      {
        result = snprintf((a6 + 16), 0x80uLL, "%c UINT B %d [%u %u] V %u", g_CodecChar[v10], __n, *a4, a4[1], __dst);
      }

      goto LABEL_9;
    }

    v31 = *a5;
    v32 = 4;
    if (result == 1)
    {
      memcpy_s("plc03_01CodecUInt", 174, &__dst, 4u, (v20 + v11), __n);
      v25 = *(a5 + 5) - *(a5 + 4);
      p_dst = (v31 + v12);
      v23 = &__dst;
      v24 = 175;
      v26 = 4;
    }

    else
    {
      memcpy_s("plc03_01CodecUInt", 183, &__dst, 4u, (v20 + v11), 4uLL);
      v25 = *(a5 + 5) - *(a5 + 4);
      p_dst = (v31 + v12);
      v23 = &__dst;
      v24 = 186;
      v26 = __n;
    }
  }

  result = memcpy_s("plc03_01CodecUInt", v24, p_dst, v25, v23, v26);
  if (*a6)
  {
    goto LABEL_7;
  }

  v27 = __dst;
  if (__dst >= *a4 && __dst <= a4[1])
  {
    v28 = 1;
  }

  else
  {
    v28 = 0;
    *a6 = 24;
  }

  v29 = v32;
  if (v10 == 1)
  {
    v30 = __n;
  }

  else
  {
    v30 = v32;
  }

  if (v10 != 1)
  {
    v29 = __n;
  }

  *(a2 + 4) += v30;
  *(a5 + 4) += v29;
  if (a7)
  {
    *a7 = v27;
  }

  if ((v28 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_9:
  v16 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t plc03_06CodecFields(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v11 = result;
  v104 = *MEMORY[0x29EDCA608];
  v12 = *(a6 + 148);
  if (v12 >= 9)
  {
    *a6 = 54;
  }

  v13 = *(a6 + 4);
  *(a6 + 4) = 0;
  *(a6 + 148) = v12 + 1;
  if (a4)
  {
    if (result == 1)
    {
      v14 = 59;
    }

    else
    {
      v14 = 57;
    }

    v101 = v14;
    if (result == 1)
    {
      v15 = a5;
    }

    else
    {
      v15 = a2;
    }

    v102 = a6 + 8;
    while (1)
    {
      if (*a6)
      {
        goto LABEL_172;
      }

      v16 = *(a6 + 4);
      *(a6 + 4) = v16 + 1;
      if (v11 == 1)
      {
        v17 = *(a2 + 8);
        v18 = *a3;
        if (*(a2 + 10) - v17 >= *(a3 + 4) || (*a3 - 7) < 3)
        {
          goto LABEL_24;
        }

        *a6 = 20;
        *(a6 + 6) = v17;
        goto LABEL_141;
      }

      if (v11)
      {
        break;
      }

      v20 = *(a3 + 4);
      v21 = *(a5 + 8);
      v18 = *a3;
      if (*(a5 + 10) - v21 >= v20)
      {
        goto LABEL_24;
      }

      if (v18 == 7)
      {
        *(a6 + 4) = v16;
        goto LABEL_76;
      }

      *a6 = 57;
      *(a6 + 6) = v21;
LABEL_141:
      if (!--v8)
      {
        goto LABEL_171;
      }
    }

    v18 = *a3;
LABEL_24:
    if (v18 > 3)
    {
      if (v18 > 5)
      {
        if (v18 == 6)
        {
          v47 = *(v15 + 8);
          result = plc03_06CodecFields(v11, a2, *(a3 + 16), *(a3 + 11), a5, a6);
          if (!*a6 && *(v15 + 8) - v47 != *(a3 + 8) >> 4)
          {
            *a6 = 56;
            if (*(a6 + 144) == 1)
            {
              v90 = *(a3 + 8) >> 4;
              v85 = g_CodecChar[v11];
              result = snprintf((a6 + 16), 0x80uLL, "%c S T %d != S %d\n", a4);
            }
          }

          goto LABEL_140;
        }

        if (v18 != 7)
        {
          if (v18 == 8)
          {
            v22 = *(a3 + 8);
            __n[2] = *(a3 + 10);
            __n[0] = 0;
            __n[1] = v22;
            if (v11 == 1)
            {
              v23 = *(a2 + 10) - *(a2 + 8);
              __n[0] = v23;
              result = plc01_02PutUInt32(v23, &__n[1], a5, a6);
              v24 = a5;
            }

            else
            {
              result = plc02_02GetUInt32(a2, &__n[1], __n, a6);
              v23 = __n[0];
              v24 = a2;
            }

            v57 = *(v24 + 8);
            if (v23 < *(a3 + 8) || v23 > *(a3 + 10))
            {
              *a6 = 24;
              if (*(a6 + 144) == 1)
              {
                result = snprintf((a6 + 16), 0x80uLL, "%c PLBS B 4 [%d %d] V %d", g_CodecChar[v11], *(a3 + 8), *(a3 + 10), v23);
                goto LABEL_94;
              }

LABEL_140:
              a3 += 24;
              goto LABEL_141;
            }

LABEL_94:
            if (*a6)
            {
              goto LABEL_140;
            }

            ++*(a6 + 4);
            v58 = *(a5 + 8);
            a4 = *(a5 + 10) - v58;
            if (a4 < LOWORD(__n[0]))
            {
LABEL_96:
              *a6 = v101;
              if (*(a6 + 144) == 1)
              {
                v59 = g_CodecChar[v11];
                result = snprintf((a6 + 16), 0x80uLL, "%c PLBS SPACE %d < %d", a4);
              }

              goto LABEL_140;
            }

            result = memcpy_s("plc03_08CodecPayLoadByteStream", 1094, (*a5 + v58), a4, (*a2 + *(a2 + 8)), __n[0]);
            v71 = __n[0];
            *(a5 + 8) += LOWORD(__n[0]);
            *(a2 + 8) += v71;
            v35 = *(a3 + 10) + v57;
            if (v11 != 1)
            {
LABEL_77:
              *(a2 + 8) = v35;
              goto LABEL_140;
            }

LABEL_75:
            *(a5 + 8) = v35;
            goto LABEL_140;
          }

LABEL_78:
          *a6 = 52;
          if (*(a6 + 144) == 1)
          {
            v86 = g_CodecChar[v11];
            result = snprintf((a6 + 16), 0x80uLL, "%c TYPE %d ERR\n", a4);
          }

          goto LABEL_140;
        }

        *(a6 + 4) = v16;
        LOWORD(v20) = *(a3 + 4);
        if (v11 != 1)
        {
LABEL_76:
          v35 = *(a2 + 8) + v20;
          goto LABEL_77;
        }

LABEL_74:
        v35 = *(a5 + 8) + v20;
        goto LABEL_75;
      }

      if (v18 == 4)
      {
        __n[0] = 0;
        *&__n[1] = 0xFFFFFFFF00000000;
        ++*(a6 + 148);
        result = plc03_01CodecUInt(v11, a2, *(a3 + 4), &__n[1], a5, a6, __n);
        if (!*a6)
        {
          v95 = v13;
          v48 = *(a3 + 11);
          v49 = *(v15 + 8);
          if (*(a3 + 11))
          {
            v50 = 0;
            v51 = __n[0];
            v52 = (*(a3 + 16) + 4);
            while (__n[0] != *(v52 - 2))
            {
              --v48;
              ++v50;
              v52 += 8;
              if (!v48)
              {
                goto LABEL_70;
              }
            }

            ++*(a6 + 4);
            v70 = *(v52 + 2);
            if (v70)
            {
              *a6 = 0;
              v94 = v49;
              result = plc03_06CodecFields(v11, a2, v70, *(v52 - 2), a5, a6);
              v49 = v94;
              if (*a6 || (v76 = *v52, v77 = (*(v15 + 8) - v94), v77 != v76) && ((*a6 = 56, (*(a6 + 144) & 1) == 0) || (result = snprintf((a6 + 16), 0x80uLL, "%c U %d T %d != S %d\n", g_CodecChar[v11], v51, v77, v76), v49 = v94, *a6)))
              {
                *(*(a6 + 148) + v102 - 1) = *(*(a6 + 148) + v102 - 1) & 0x3F | 0x80;
                *(*(a6 + 148) + v102 - 1) = *(*(a6 + 148) + v102 - 1) & 0xC0 | v50 & 0x3F;
              }
            }
          }

          else
          {
LABEL_70:
            *a6 = 24;
            if (*(a6 + 144) == 1)
            {
              v53 = v49;
              v54 = g_CodecChar[v11];
              if (*(a3 + 4) == 1)
              {
                result = snprintf((a6 + 16), 0x80uLL, "%c UNION CHOICE %u('%c') INV");
              }

              else
              {
                v88 = g_CodecChar[v11];
                result = snprintf((a6 + 16), 0x80uLL, "%c UNION CHOICE %u INV");
              }

              v49 = v53;
            }
          }

          *(v15 + 8) = v49 + (*(a3 + 8) >> 4);
          v13 = v95;
        }

        goto LABEL_139;
      }

      __n[0] = 0;
      ++*(a6 + 148);
      v36 = *(a3 + 10);
      v37 = *(a3 + 4);
      if ((*(a3 + 8) & 0xF) == v36 && !*(a3 + 4))
      {
        __n[0] = *(a3 + 10);
        goto LABEL_106;
      }

      if ((v37 - 1) <= 1)
      {
        __n[1] = *(a3 + 8) & 0xF;
        __n[2] = v36;
        result = plc03_01CodecUInt(v11, a2, v37, &__n[1], a5, a6, __n);
        goto LABEL_106;
      }

      *a6 = 55;
      if (*(a6 + 144) == 1)
      {
        result = snprintf((a6 + 16), 0x80uLL, "%c ARR B %d L [%d %d]", g_CodecChar[v11], v37, *(a3 + 8) & 0xF, *(a3 + 10));
LABEL_106:
        if (!*a6)
        {
          v97 = v13;
          if ((*(a3 + 8) & 0xF) != *(a3 + 10))
          {
            ++*(a6 + 4);
          }

          v93 = *(v15 + 8);
          if (__n[0])
          {
            v64 = 0;
            v65 = 0;
            v66 = *(a3 + 16);
            do
            {
              if (v64)
              {
                break;
              }

              v67 = *(v15 + 8);
              result = plc03_06CodecFields(v11, a2, v66, *(a3 + 11), a5, a6);
              v64 = *a6;
              if (!*a6)
              {
                v68 = *(v15 + 8) - v67;
                if (v68 == *(a3 + 8) >> 4)
                {
                  v64 = 0;
                  goto LABEL_114;
                }

                v64 = 56;
                *a6 = 56;
                if (*(a6 + 144) == 1)
                {
                  result = snprintf((a6 + 16), 0x80uLL, "%c A %d T %d != S %d\n", g_CodecChar[v11], v65, v68, *(a3 + 8) >> 4);
                  v64 = *a6;
                  if (!*a6)
                  {
                    goto LABEL_114;
                  }
                }
              }

              *(*(a6 + 148) + v102 - 1) = *(*(a6 + 148) + v102 - 1) & 0x3F | 0x40;
              *(*(a6 + 148) + v102 - 1) = *(*(a6 + 148) + v102 - 1) & 0xC0 | v65 & 0x3F;
LABEL_114:
              ++v65;
            }

            while (v65 < __n[0]);
          }

          v69 = v93 + ((*(a3 + 8) >> 4) * *(a3 + 10));
          if (v11 == 1)
          {
            v13 = v97;
            if (v69 >= *(a5 + 8))
            {
              *(a5 + 8) = v69;
              goto LABEL_139;
            }
          }

          else
          {
            v13 = v97;
            if (v69 >= *(a2 + 8))
            {
              *(a2 + 8) = v69;
              goto LABEL_139;
            }
          }

          *a6 = 50;
        }
      }

LABEL_139:
      --*(a6 + 148);
      goto LABEL_140;
    }

    if (v18 <= 1)
    {
      if (!v18)
      {
        result = plc03_01CodecUInt(v11, a2, *(a3 + 4), (a3 + 8), a5, a6, 0);
        goto LABEL_140;
      }

      if (v18 != 1)
      {
        goto LABEL_78;
      }

      v25 = *(a3 + 4);
      __n[1] = 0;
      *a6 = 0;
      v26 = *(a2 + 8);
      *(a6 + 6) = v26;
      v27 = *(a5 + 8);
      v28 = *(a5 + 10);
      v29 = v101;
      a4 = v28 - v27;
      if (v28 < v27)
      {
        goto LABEL_36;
      }

      v29 = v101;
      if (a4 < v25)
      {
        goto LABEL_36;
      }

      v61 = *a2;
      v62 = *a5;
      v29 = 55;
      if (v25 > 2)
      {
        if (v25 == 3)
        {
          v100 = *a5;
          if (v11 == 1)
          {
            memcpy_s("plc03_02CodecInt", 328, &__n[1], 4u, (v61 + v26), 3uLL);
            if ((__n[1] & 0x800000) != 0)
            {
              __n[1] |= 0xFF000000;
            }

            v72 = *(a5 + 10) - *(a5 + 8);
            v92 = 4;
            v73 = (v100 + v27);
            v74 = 334;
            v75 = 4;
          }

          else
          {
            v92 = 4;
            memcpy_s("plc03_02CodecInt", 339, &__n[1], 4u, (v61 + v26), 4uLL);
            v72 = *(a5 + 10) - *(a5 + 8);
            v73 = (v100 + v27);
            v74 = 340;
            v75 = 3;
          }

          result = memcpy_s("plc03_02CodecInt", v74, v73, v72, &__n[1], v75);
LABEL_156:
          if (!*a6)
          {
            if (__n[1] >= *(a3 + 8) && __n[1] <= *(a3 + 12))
            {
              LOWORD(v20) = v92;
              if (v11 == 1)
              {
                v80 = v25;
              }

              else
              {
                v80 = v92;
              }

              if (v11 != 1)
              {
                LOWORD(v20) = v25;
              }

              *(a2 + 8) += v80;
              goto LABEL_74;
            }

            *a6 = 24;
            v78 = v92;
            if (v11 == 1)
            {
              v79 = v25;
            }

            else
            {
              v79 = v92;
            }

            if (v11 != 1)
            {
              v78 = v25;
            }

            *(a2 + 8) += v79;
            *(a5 + 8) += v78;
          }

LABEL_37:
          if (*(a6 + 144) == 1)
          {
            v30 = g_CodecChar[v11];
            v91 = *(a3 + 12);
            v89 = *(a3 + 8);
            result = snprintf((a6 + 16), 0x80uLL, "%c INT B %d [%d %d] V %d", a4);
          }

          goto LABEL_140;
        }

        if (v25 == 4)
        {
          v92 = 4;
          v98 = *a5;
          result = memcpy_s("plc03_02CodecInt", 347, (v62 + v27), a4, (v61 + v26), 4uLL);
          v63 = *(v98 + v27);
          goto LABEL_144;
        }
      }

      else
      {
        if (v25 == 1)
        {
          v92 = 1;
          v99 = *a5;
          result = memcpy_s("plc03_02CodecInt", 306, (v62 + v27), a4, (v61 + v26), 1uLL);
          v63 = *(v99 + v27);
          goto LABEL_144;
        }

        if (v25 == 2)
        {
          v92 = 2;
          v96 = *a5;
          result = memcpy_s("plc03_02CodecInt", 313, (v62 + v27), a4, (v61 + v26), 2uLL);
          v63 = *(v96 + v27);
LABEL_144:
          __n[1] = v63;
          goto LABEL_156;
        }
      }

LABEL_36:
      *a6 = v29;
      goto LABEL_37;
    }

    if (v18 == 2)
    {
      v38 = *(a3 + 4);
      *a6 = 0;
      v39 = *(a2 + 8);
      *(a6 + 6) = v39;
      if (v38 != 1)
      {
        *a6 = 55;
        if (*(a6 + 144) == 1)
        {
          v87 = g_CodecChar[v11];
          result = snprintf((a6 + 16), 0x80uLL, "%c UINT LIST B %d != 1", a4);
        }

        goto LABEL_140;
      }

      v40 = *a5;
      v41 = *(a5 + 8);
      v42 = *(*a2 + v39);
      LOBYTE(__n[1]) = v42;
      if (!*(a3 + 8))
      {
        goto LABEL_98;
      }

      v43 = 0;
      do
      {
        v44 = *(*(a3 + 16) + v43++);
      }

      while (v43 < *(a3 + 8) && v42 != v44);
      if (v42 != v44)
      {
LABEL_98:
        *a6 = 24;
        if (*(a6 + 144) == 1)
        {
          v60 = g_CodecChar[v11];
          result = snprintf((a6 + 16), 0x80uLL, "%c UINT LIST %u INV", a4);
        }

        goto LABEL_140;
      }

      v46 = *(a5 + 10);
      a4 = v46 - v41;
      if (v46 < v41 || a4 <= 0)
      {
        *a6 = v101;
        goto LABEL_140;
      }

      result = memcpy_s("plc03_10CodecUIntList", 1289, (v40 + v41), a4, &__n[1], 1uLL);
      ++*(a2 + 8);
      v35 = *(a5 + 8) + 1;
      goto LABEL_75;
    }

    v31 = *(a3 + 10);
    v32 = *(a3 + 8);
    if (v31 == v32)
    {
      result = memcpy_s("plc03_05CodecByteStream", 785, (*a5 + *(a5 + 8)), *(a5 + 10) - *(a5 + 8), (*a2 + *(a2 + 8)), v31);
      v33 = *(a5 + 8) + *(a3 + 10);
    }

    else
    {
      __n[0] = 0;
      *&__n[1] = __PAIR64__(v31, v32);
      result = plc03_01CodecUInt(v11, a2, *(a3 + 4), &__n[1], a5, a6, __n);
      if (*a6)
      {
        goto LABEL_140;
      }

      ++*(a6 + 4);
      v55 = *(a5 + 8);
      a4 = *(a5 + 10) - v55;
      if (a4 < LOWORD(__n[0]))
      {
        goto LABEL_96;
      }

      result = memcpy_s("plc03_05CodecByteStream", 822, (*a5 + v55), a4, (*a2 + *(a2 + 8)), __n[0]);
      v56 = *(a5 + 8);
      if (v11 == 1)
      {
        *(a5 + 8) = *(a3 + 10) + v56;
        v34 = __n[0];
        goto LABEL_43;
      }

      v33 = v56 + LOWORD(__n[0]);
    }

    *(a5 + 8) = v33;
    v34 = *(a3 + 10);
LABEL_43:
    v35 = *(a2 + 8) + v34;
    goto LABEL_77;
  }

LABEL_171:
  if (*a6)
  {
LABEL_172:
    v81 = *(a6 + 4) - 1;
    v82 = *(a6 + 148) + a6 + 8;
    *(v82 - 1) |= 0xC0u;
    v83 = *(a6 + 148) + a6 + 8;
    *(v83 - 1) = *(v83 - 1) & 0xC0 | v81 & 0x3F;
  }

  --*(a6 + 148);
  *(a6 + 4) = v13;
  v84 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Get_Constell_Prn(unsigned int a1)
{
  v3 = *MEMORY[0x29EDCA608];
  if (a1 >= 0x20)
  {
    if (a1 >= 0x38)
    {
      if (a1 >= 0x5C)
      {
        if (a1 >= 0x81)
        {
          if (a1 >= 0x8B)
          {
            if (a1 >= 0xB2)
            {
              gn_report_assertion_failure("Get_Constell_Prn:");
              result = 0;
            }

            else
            {
              result = 6;
            }
          }

          else
          {
            result = 5;
          }
        }

        else
        {
          result = 4;
        }
      }

      else
      {
        result = 3;
      }
    }

    else
    {
      result = 2;
    }
  }

  else
  {
    result = 1;
  }

  v2 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Get_Constell_Pos(unsigned int a1)
{
  v3 = *MEMORY[0x29EDCA608];
  if (a1 >= 0x20)
  {
    if (a1 >= 0x38)
    {
      if (a1 >= 0x5C)
      {
        if (a1 >= 0x81)
        {
          if (a1 >= 0x8B)
          {
            if (a1 >= 0x95)
            {
              gn_report_assertion_failure("Get_Constell_Pos:");
              result = 0;
            }

            else
            {
              result = 6;
            }
          }

          else
          {
            result = 5;
          }
        }

        else
        {
          result = 4;
        }
      }

      else
      {
        result = 3;
      }
    }

    else
    {
      result = 2;
    }
  }

  else
  {
    result = 1;
  }

  v2 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t LongPrnIdx_To_Prn(unsigned int a1, int *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  v3 = __OFSUB__(a1, 31);
  result = a1 - 31;
  if ((result < 0) ^ v3 | (result == 0))
  {
    if (a2)
    {
      *a2 = 1;
    }

    result = a1 + 1;
  }

  else if (a1 > 0x37)
  {
    result = a1 - 91;
    if (a1 > 0x5B)
    {
      if (a1 <= 0x80)
      {
        if (!a2)
        {
          goto LABEL_14;
        }

        v5 = 4;
        goto LABEL_9;
      }

      if (a1 > 0x8A)
      {
        if (a1 > 0xB1)
        {
          if (a2)
          {
            *a2 = 0;
          }

          gn_report_assertion_failure("LPrn_2_Prn:");
          result = 0;
        }

        else
        {
          if (a2)
          {
            *a2 = 6;
          }

          result = a1 - 19;
        }
      }

      else
      {
        if (a2)
        {
          *a2 = 5;
        }

        result = a1 + 64;
      }
    }

    else
    {
      if (a2)
      {
        *a2 = 3;
      }

      result = a1 - 55;
    }
  }

  else if (a2)
  {
    v5 = 2;
LABEL_9:
    *a2 = v5;
  }

LABEL_14:
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t LongPrnIdx_To_ShortPrnIdx(uint64_t result, _DWORD *a2)
{
  v3 = *MEMORY[0x29EDCA608];
  if ((result & 0x80000000) != 0)
  {
    if (a2)
    {
      result = 0;
      *a2 = 0;
      goto LABEL_31;
    }

LABEL_30:
    result = 0;
    goto LABEL_31;
  }

  if (result <= 0x1F)
  {
    if (a2)
    {
      *a2 = 1;
    }

    goto LABEL_31;
  }

  if (result <= 0x37)
  {
    if (a2)
    {
      *a2 = 2;
    }

    result = (result - 32);
    goto LABEL_31;
  }

  if (result <= 0x5B)
  {
    if (a2)
    {
      *a2 = 3;
    }

    result = (result - 56);
    goto LABEL_31;
  }

  if (result <= 0x80)
  {
    if (a2)
    {
      *a2 = 4;
    }

    result = (result - 92);
    goto LABEL_31;
  }

  if (result <= 0x8A)
  {
    if (a2)
    {
      *a2 = 5;
    }

    result = (result - 129);
    goto LABEL_31;
  }

  if (result > 0xB1)
  {
    if (a2)
    {
      *a2 = 0;
    }

    gn_report_assertion_failure("LPrn_2_SPrn:");
    goto LABEL_30;
  }

  if (a2)
  {
    *a2 = 6;
  }

  result = (result - 139);
LABEL_31:
  v2 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GNSS_Id_To_Num_Prn_Idx(int a1)
{
  v1 = a1;
  v10 = *MEMORY[0x29EDCA608];
  v2 = a1;
  v3 = BYTE2(a1);
  if (!BYTE2(a1))
  {
    gn_report_assertion_failure("Id_2_NPrn: 0");
  }

  if ((v2 - 1) > 5)
  {
    v6 = 0;
    v7 = "Id_2_NPrn: 1";
    goto LABEL_9;
  }

  v4 = v3 - Prn_Offset[v1];
  v5 = Num_Prn[v2 - 1];
  v6 = (v4 + v5);
  if (v4 + v5 < 0)
  {
    v6 = 0;
    v7 = "Id_2_NPrn: 2";
    goto LABEL_9;
  }

  if (v6 >= 0xB2)
  {
    v6 = 177;
    v7 = "Id_2_NPrn: 3";
LABEL_9:
    gn_report_assertion_failure(v7);
  }

  v8 = *MEMORY[0x29EDCA608];
  return v6;
}

uint64_t Num_Prn_Idx_To_GNSS_Id(int a1)
{
  v9 = *MEMORY[0x29EDCA608];
  Constell_Prn = Get_Constell_Prn(a1);
  if (!Constell_Prn)
  {
    v5 = 0;
    v6 = "NPrn_2_Id: 1";
    goto LABEL_7;
  }

  v3 = Prn_Offset[Constell_Prn] + a1;
  v4 = Num_Prn[Constell_Prn - 1];
  v5 = (v3 - v4);
  if (v3 - v4 < 0)
  {
    v5 = 0;
    v6 = "NPrn_2_Id: 2";
    goto LABEL_7;
  }

  if (v5 >= 0x100)
  {
    v5 = 255;
    v6 = "NPrn_2_Id: 3";
LABEL_7:
    gn_report_assertion_failure(v6);
  }

  v7 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t GNSS_Id_To_Num_Pos_Idx(int a1)
{
  v1 = a1;
  v10 = *MEMORY[0x29EDCA608];
  v2 = a1;
  v3 = BYTE2(a1);
  if (!BYTE2(a1))
  {
    gn_report_assertion_failure("Id_2_NPos: 0");
  }

  if ((v2 - 1) > 5)
  {
    v6 = 0;
    v7 = "Id_2_NPos: 1";
    goto LABEL_9;
  }

  v4 = v3 - Prn_Offset[v1];
  v5 = Num_Pos[v2 - 1];
  v6 = (v4 + v5);
  if (v4 + v5 < 0)
  {
    v6 = 0;
    v7 = "Id_2_NPos: 2";
    goto LABEL_9;
  }

  if (v6 >= 0x95)
  {
    v6 = 148;
    v7 = "Id_2_NPos: 3";
LABEL_9:
    gn_report_assertion_failure(v7);
  }

  v8 = *MEMORY[0x29EDCA608];
  return v6;
}

uint64_t Num_Pos_Idx_To_GNSS_Id(int a1)
{
  v9 = *MEMORY[0x29EDCA608];
  Constell_Pos = Get_Constell_Pos(a1);
  if (!Constell_Pos)
  {
    v5 = 0;
    v6 = "NPos_2_Id: 1";
    goto LABEL_7;
  }

  v3 = Prn_Offset[Constell_Pos] + a1;
  v4 = Num_Pos[Constell_Pos - 1];
  v5 = (v3 - v4);
  if (v3 - v4 < 0)
  {
    v5 = 0;
    v6 = "NPos_2_Id: 2";
    goto LABEL_7;
  }

  if (v5 >= 0x100)
  {
    v5 = 255;
    v6 = "NPos_2_Id: 3";
LABEL_7:
    gn_report_assertion_failure(v6);
  }

  v7 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t GNSS_SVId_Constell_To_Num_Pos_Idx(int a1, int a2)
{
  v8 = *MEMORY[0x29EDCA608];
  if ((a2 - 1) > 5)
  {
    v4 = 0;
    v5 = "Id&C_2_NPos: 1";
    goto LABEL_7;
  }

  v2 = a1 - Prn_Offset[a2];
  v3 = Num_Pos[a2 - 1];
  v4 = (v2 + v3);
  if (v2 + v3 < 0)
  {
    v4 = 0;
    v5 = "Id&C_2_NPos: 2";
    goto LABEL_7;
  }

  if (v4 >= 0x95)
  {
    v4 = 148;
    v5 = "Id&C_2_NPos: 3";
LABEL_7:
    gn_report_assertion_failure(v5);
  }

  v6 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t Num_Pos_Idx_To_Num_Prn_Idx(int a1)
{
  v9 = *MEMORY[0x29EDCA608];
  Constell_Pos = Get_Constell_Pos(a1);
  if (!Constell_Pos)
  {
    v5 = 0;
    v6 = "NPos_2_NPrn: 1";
    goto LABEL_7;
  }

  v3 = a1 - Num_Pos[Constell_Pos - 1];
  v4 = Num_Prn[Constell_Pos - 1];
  v5 = (v3 + v4);
  if (v3 + v4 < 0)
  {
    v5 = 0;
    v6 = "NPos_2_NPrn: 2";
    goto LABEL_7;
  }

  if (v5 >= 0xB2)
  {
    v5 = 177;
    v6 = "NPos_2_NPrn: 3";
LABEL_7:
    gn_report_assertion_failure(v6);
  }

  v7 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t Num_Prn_Idx_To_Num_Pos_Idx(int a1)
{
  v9 = *MEMORY[0x29EDCA608];
  Constell_Prn = Get_Constell_Prn(a1);
  if (!Constell_Prn)
  {
    v5 = 0;
    v6 = "NPrn_2_NPos: 1";
    goto LABEL_7;
  }

  v3 = a1 - Num_Prn[Constell_Prn - 1];
  v4 = Num_Pos[Constell_Prn - 1];
  v5 = (v3 + v4);
  if (v3 + v4 < 0)
  {
    v5 = 0;
    v6 = "NPrn_2_NPos: 2";
    goto LABEL_7;
  }

  if (v5 >= 0x95)
  {
    v5 = 148;
    v6 = "NPrn_2_NPos: 3";
LABEL_7:
    gn_report_assertion_failure(v6);
  }

  v7 = *MEMORY[0x29EDCA608];
  return v5;
}

char **STEU_Encode(char **a1, char a2, unsigned __int8 *a3, unint64_t *a4)
{
  v18 = *MEMORY[0x29EDCA608];
  v5 = *a4;
  v6 = (*a4 - a3) % 3;
  if (v6)
  {
    if (v6 == 1)
    {
      *v5 = 0;
      v5 = (*a4 + 1);
      *a4 = v5;
    }

    *v5 = 0;
    ++*a4;
  }

  v7 = (*a1)++;
  *v7 = 123;
  v8 = *a1;
  if (*a1 >= a1[3])
  {
    v8 = a1[2];
  }

  *a1 = v8 + 1;
  *v8 = a2;
  v9 = *a1;
  if (*a1 >= a1[3])
  {
    v9 = a1[2];
    *a1 = v9;
  }

  v17[4] = 0;
  v10 = *a4;
  do
  {
    v11 = *a3;
    v12 = (v11 >> 2) + 48;
    v13 = a3[1];
    v17[1] = ((v13 >> 4) & 0xCF | (16 * (v11 & 3))) + 48;
    LOBYTE(v11) = a3[2];
    v17[2] = ((v11 >> 6) & 0xC3 | (4 * (v13 & 0xF))) + 48;
    v17[3] = (v11 & 0x3F) + 48;
    v14 = 1;
    do
    {
      *a1 = v9 + 1;
      *v9 = v12;
      v9 = *a1;
      if (*a1 >= a1[3])
      {
        v9 = a1[2];
        *a1 = v9;
      }

      v12 = v17[v14++];
    }

    while (v12);
    a3 += 3;
  }

  while (a3 < v10);
  *a4 = a3;
  v15 = *MEMORY[0x29EDCA608];

  return STEU_Add_Checksum_LF(a1, v8);
}

char **STEU_Add_Checksum_LF(uint64_t a1, char *a2)
{
  v11 = *MEMORY[0x29EDCA608];
  v3 = *a1;
  if (*a1 == a2)
  {
    v7 = 0;
  }

  else
  {
    v4 = 0;
    do
    {
      v6 = *a2++;
      v5 = v6;
      if (a2 >= *(a1 + 24))
      {
        a2 = *(a1 + 16);
      }

      v4 += v5;
    }

    while (a2 != v3);
    v7 = v4;
  }

  *a1 = v3 + 1;
  *v3 = 125;
  if (*a1 >= *(a1 + 24))
  {
    *a1 = *(a1 + 16);
  }

  result = sprintf_02x(a1, v7);
  v9 = (*a1)++;
  *v9 = 10;
  if (*a1 >= *(a1 + 24))
  {
    *a1 = *(a1 + 16);
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

char **STEU_Encode_c(char **a1, char a2, int a3, unsigned __int8 *a4)
{
  v17 = *MEMORY[0x29EDCA608];
  v5 = (*a1)++;
  *v5 = 123;
  v6 = *a1;
  if (*a1 >= a1[3])
  {
    v6 = a1[2];
  }

  *a1 = v6 + 1;
  *v6 = 99;
  v7 = *a1;
  if (*a1 >= a1[3])
  {
    v7 = a1[2];
  }

  *a1 = v7 + 1;
  *v7 = a2;
  v8 = *a1;
  if (*a1 >= a1[3])
  {
    v8 = a1[2];
    *a1 = v8;
  }

  v16[4] = 0;
  v9 = &a4[a3];
  do
  {
    v10 = *a4;
    v11 = (v10 >> 2) + 48;
    v12 = a4[1];
    v16[1] = ((v12 >> 4) & 0xCF | (16 * (v10 & 3))) + 48;
    LOBYTE(v10) = a4[2];
    v16[2] = ((v10 >> 6) & 0xC3 | (4 * (v12 & 0xF))) + 48;
    v16[3] = (v10 & 0x3F) + 48;
    v13 = 1;
    do
    {
      *a1 = v8 + 1;
      *v8 = v11;
      v8 = *a1;
      if (*a1 >= a1[3])
      {
        v8 = a1[2];
        *a1 = v8;
      }

      v11 = v16[v13++];
    }

    while (v11);
    a4 += 3;
  }

  while (a4 < v9);
  v14 = *MEMORY[0x29EDCA608];

  return STEU_Add_Checksum_LF(a1, v6);
}

char **STEU_Encode_X(char **a1, char a2, unsigned __int8 *a3, unint64_t *a4)
{
  v19 = *MEMORY[0x29EDCA608];
  v5 = *a4;
  v6 = (*a4 - a3) % 3;
  if (v6)
  {
    if (v6 == 1)
    {
      *v5 = 0;
      v5 = (*a4 + 1);
      *a4 = v5;
    }

    *v5 = 0;
    ++*a4;
  }

  v7 = (*a1)++;
  *v7 = 123;
  v8 = *a1;
  if (*a1 >= a1[3])
  {
    v8 = a1[2];
  }

  *a1 = v8 + 1;
  *v8 = 88;
  v9 = *a1;
  if (*a1 >= a1[3])
  {
    v9 = a1[2];
  }

  *a1 = v9 + 1;
  *v9 = a2;
  v10 = *a1;
  if (*a1 >= a1[3])
  {
    v10 = a1[2];
    *a1 = v10;
  }

  v18[4] = 0;
  v11 = *a4;
  do
  {
    v12 = *a3;
    v13 = (v12 >> 2) + 48;
    v14 = a3[1];
    v18[1] = ((v14 >> 4) & 0xCF | (16 * (v12 & 3))) + 48;
    LOBYTE(v12) = a3[2];
    v18[2] = ((v12 >> 6) & 0xC3 | (4 * (v14 & 0xF))) + 48;
    v18[3] = (v12 & 0x3F) + 48;
    v15 = 1;
    do
    {
      *a1 = v10 + 1;
      *v10 = v13;
      v10 = *a1;
      if (*a1 >= a1[3])
      {
        v10 = a1[2];
        *a1 = v10;
      }

      v13 = v18[v15++];
    }

    while (v13);
    a3 += 3;
  }

  while (a3 < v11);
  *a4 = a3;
  v16 = *MEMORY[0x29EDCA608];

  return STEU_Add_Checksum_LF(a1, v8);
}

uint64_t Hal04_ComputeChecksum(unsigned __int8 *a1, unsigned int a2)
{
  v9 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx data\n");
LABEL_10:
      LbsOsaTrace_WriteLog(0xDu, __str, v5, 0, 1);
    }

LABEL_11:
    v2 = 0;
    goto LABEL_12;
  }

  if (!a2)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx len\n");
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v2 = 0;
  v3 = a2;
  do
  {
    v4 = *a1++;
    v2 += v4;
    --v3;
  }

  while (v3);
LABEL_12:
  v6 = *MEMORY[0x29EDCA608];
  return v2;
}

char *SUPL_Message_Init(void)
{
  v2 = *MEMORY[0x29EDCA608];
  result = operator new(0x90uLL, MEMORY[0x29EDC9418]);
  if (result)
  {
    *result = 0;
    *(result + 1) = 0;
    result[16] = -1;
    *(result + 5) = -1;
    *(result + 12) = -1;
    *(result + 7) = 1;
    result[32] = -1;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 104) = 0u;
    *(result + 120) = 0u;
    result[136] = -1;
  }

  v1 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t SUPL_Message_Free(void *a1)
{
  v25 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    v2 = a1[15];
    if (v2)
    {
      v3 = *v2;
      if (*v2)
      {
        v4 = v3[5];
        if (v4)
        {
          v3[6] = v4;
          operator delete(v4);
        }

        v5 = v3[2];
        if (v5)
        {
          v3[3] = v5;
          operator delete(v5);
        }

        MEMORY[0x29C29EB20](v3, 0x1010C409FCE3EA6);
        v2 = a1[15];
      }

      *v2 = 0;
      v6 = v2[1];
      if (v6)
      {
        v7 = *(v6 + 192);
        if (v7)
        {
          *(v6 + 200) = v7;
          operator delete(v7);
        }

        MEMORY[0x29C29EB20](v6, 0x1020C40D4F58230);
        v2 = a1[15];
      }

      v2[1] = 0;
      MEMORY[0x29C29EB20]();
      a1[15] = 0;
    }

    v8 = a1[16];
    if (v8)
    {
      ASN1T_CellInfo::~ASN1T_CellInfo(v8);
      MEMORY[0x29C29EB20]();
    }

    a1[16] = 0;
    v9 = a1[11];
    if (v9)
    {
      v10 = *(v9 + 8);
      if (v10)
      {
        *(v9 + 16) = v10;
        operator delete(v10);
      }

      MEMORY[0x29C29EB20](v9, 0x1010C4039DDA56CLL);
    }

    a1[11] = 0;
    v11 = a1[13];
    if (v11)
    {
      v12 = *(v11 + 8);
      if (v12)
      {
        *(v11 + 16) = v12;
        operator delete(v12);
      }

      MEMORY[0x29C29EB20](v11, 0x1010C40D464F2E8);
    }

    a1[13] = 0;
    v13 = a1[12];
    if (v13)
    {
      v14 = *v13;
      if (*v13)
      {
        *(v13 + 8) = v14;
        operator delete(v14);
      }

      MEMORY[0x29C29EB20](v13, 0x1010C4005AEBDE9);
    }

    a1[12] = 0;
    v15 = a1[14];
    if (v15)
    {
      v16 = *v15;
      if (*v15)
      {
        *(v15 + 8) = v16;
        operator delete(v16);
      }

      MEMORY[0x29C29EB20](v15, 0x1010C407D6C095DLL);
    }

    a1[14] = 0;
    v17 = a1[8];
    if (v17)
    {
      a1[9] = v17;
      operator delete(v17);
    }

    v18 = a1[5];
    if (v18)
    {
      a1[6] = v18;
      operator delete(v18);
    }

    v19 = *MEMORY[0x29EDCA608];

    JUMPOUT(0x29C29EB20);
  }

  result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v21 = mach_continuous_time();
    v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v21), "SPL", 69, "SUPL_Message_Free", 513);
    result = LbsOsaTrace_WriteLog(0x12u, __str, v22, 0, 1);
  }

  v23 = *MEMORY[0x29EDCA608];
  return result;
}

void *GNSS_Write_NMEA(void *result)
{
  v11 = *MEMORY[0x29EDCA608];
  if (result)
  {
    v1 = result;
    v3 = *result;
    v2 = result[1];
    if (v2 != *result)
    {
      if (v2 > *result)
      {
        v3 = result[3];
      }

      v4 = v3 - v2;
      result = GN_GPS_Write_NMEA((v3 - v2), v2);
      v5 = result;
      if (g_Enable_Nav_Debug >= 0x101u)
      {
        result = GN_GPS_Write_Nav_Debug(result, v1[1]);
      }

      v6 = (v1[1] + v5);
      v1[1] = v6;
      if (v6 >= v1[3])
      {
        v6 = v1[2];
        v1[1] = v6;
        if (v5 == v4)
        {
          v7 = (*v1 - v6);
          result = GN_GPS_Write_NMEA((*v1 - v6), v6);
          v8 = result;
          if (g_Enable_Nav_Debug >= 0x101u)
          {
            result = GN_GPS_Write_Nav_Debug(result, v1[1]);
          }

          v6 = (v1[1] + v8);
          v1[1] = v6;
        }
      }

      if (v6 == *v1)
      {
        v9 = v1[2];
        *v1 = v9;
        v1[1] = v9;
      }
    }
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

char **NMEA_Encode(char **result, __int16 *a2, uint64_t a3, uint64_t a4)
{
  v951 = *MEMORY[0x29EDCA608];
  if (!a2)
  {
    goto LABEL_1805;
  }

  v4 = result;
  if (!result || !a3)
  {
    goto LABEL_1805;
  }

  v5 = a4;
  v6 = a2;
  v7 = *a2;
  v948 = a3;
  if (v7 >= 1 && v7 <= ++_MergedGlobals_3)
  {
    v8 = (*result)++;
    *v8 = 36;
    v9 = *result;
    if (*result >= result[3])
    {
      v9 = result[2];
    }

    v10 = 71;
    v11 = 1u;
    v12 = v9;
    do
    {
      *result = v12 + 1;
      *v12 = v10;
      v12 = *result;
      if (*result >= result[3])
      {
        v12 = result[2];
        *result = v12;
      }

      v10 = aGpgga[v11++];
    }

    while (v11 != 7);
    sprintf_HHMMSS(result, a3);
    v13 = *(v948 + 296);
    v14 = *(v948 + 318) != 1 || v13 == 0;
    if (v14)
    {
      v15 = 0;
      v16 = *v4;
      v17 = 44;
      v5 = a4;
      do
      {
        *v4 = v16 + 1;
        *v16 = v17;
        v16 = *v4;
        if (*v4 >= *(v4 + 24))
        {
          v16 = *(v4 + 16);
          *v4 = v16;
        }

        v17 = a00MM[++v15];
      }

      while (v15 != 16);
    }

    else
    {
      sprintf_LatLon(v4, *(v948 + 96), *(v948 + 104));
      v18 = 0x323132313630uLL >> (8 * v13);
      if (v13 >= 6)
      {
        LOBYTE(v18) = 48;
      }

      v19 = (*v4)++;
      *v19 = v18;
      v20 = *v4;
      if (*v4 >= *(v4 + 24))
      {
        v20 = *(v4 + 16);
      }

      *v4 = v20 + 1;
      *v20 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      sprintf1da(v4, *(v948 + 320), __dst, 0, 0);
      v21 = (*v4)++;
      *v21 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      sprintf_DOP(v4, *(v948 + 264));
      v22 = (*v4)++;
      *v22 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      v23 = *(v948 + 120) * 1000.0;
      v24 = -0.5;
      if (v23 > 0.0)
      {
        v24 = 0.5;
      }

      v25 = v23 + v24;
      if (v25 <= 2147483650.0)
      {
        if (v25 >= -2147483650.0)
        {
          v26 = v25;
        }

        else
        {
          v26 = 0x80000000;
        }
      }

      else
      {
        v26 = 0x7FFFFFFF;
      }

      sprintf_4f(v4, v26, 4);
      v27 = *v4;
      v28 = 44;
      v29 = 1u;
      do
      {
        *v4 = v27 + 1;
        *v27 = v28;
        v27 = *v4;
        if (*v4 >= *(v4 + 24))
        {
          v27 = *(v4 + 16);
          *v4 = v27;
        }

        v28 = aM[v29++];
      }

      while (v29 != 4);
      v30 = (*(v948 + 112) - *(v948 + 120)) * 1000.0;
      v31 = -0.5;
      if (v30 > 0.0)
      {
        v31 = 0.5;
      }

      v32 = v30 + v31;
      if (v32 <= 2147483650.0)
      {
        if (v32 >= -2147483650.0)
        {
          v33 = v32;
        }

        else
        {
          v33 = 0x80000000;
        }
      }

      else
      {
        v33 = 0x7FFFFFFF;
      }

      sprintf_4f(v4, v33, 4);
      v34 = *v4;
      v35 = 44;
      v36 = 1u;
      do
      {
        *v4 = v34 + 1;
        *v34 = v35;
        v34 = *v4;
        if (*v4 >= *(v4 + 24))
        {
          v34 = *(v4 + 16);
          *v4 = v34;
        }

        v35 = aM[v36++];
      }

      while (v36 != 4);
      *v4 = v34 + 1;
      *v34 = 44;
      v5 = a4;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }
    }

    result = NMEA_Add_checksum(v4, v9);
    a3 = v948;
    _MergedGlobals_3 = 0;
  }

  v37 = v6[1];
  if (v37 >= 1 && v37 <= ++word_2A197178A)
  {
    v38 = (*v4)++;
    *v38 = 36;
    v39 = *v4;
    if (*v4 >= *(v4 + 24))
    {
      v39 = *(v4 + 16);
    }

    v40 = 71;
    v41 = 1u;
    v42 = v39;
    do
    {
      *v4 = v42 + 1;
      *v42 = v40;
      v42 = *v4;
      if (*v4 >= *(v4 + 24))
      {
        v42 = *(v4 + 16);
        *v4 = v42;
      }

      v40 = aGpgll[v41++];
    }

    while (v41 != 7);
    v43 = *(a3 + 296);
    if (*(a3 + 318) != 1 || v43 == 0)
    {
      v45 = 0;
      v46 = 44;
      v5 = a4;
      do
      {
        *v4 = v42 + 1;
        *v42 = v46;
        v42 = *v4;
        if (*v4 >= *(v4 + 24))
        {
          v42 = *(v4 + 16);
          *v4 = v42;
        }

        v46 = asc_29979FFDD[++v45];
      }

      while (v45 != 4);
      sprintf_HHMMSS(v4, a3);
      v47 = "V,N";
    }

    else
    {
      v48 = a3;
      sprintf_LatLon(v4, *(a3 + 96), *(a3 + 104));
      sprintf_HHMMSS(v4, v48);
      if (v43 > 5)
      {
        v47 = "V,N";
      }

      else
      {
        v47 = off_29EF51AF8[v43 - 1];
      }

      v5 = a4;
    }

    v49 = *v47;
    if (*v47)
    {
      v50 = *v4;
      v51 = (v47 + 1);
      do
      {
        *v4 = v50 + 1;
        *v50 = v49;
        v50 = *v4;
        if (*v4 >= *(v4 + 24))
        {
          v50 = *(v4 + 16);
          *v4 = v50;
        }

        v52 = *v51++;
        v49 = v52;
      }

      while (v52);
    }

    result = NMEA_Add_checksum(v4, v39);
    word_2A197178A = 0;
    a3 = v948;
  }

  v53 = v6[2];
  if (v53 >= 1 && v53 <= ++word_2A197178C)
  {
    v54 = *(a3 + 319);
    v929 = v6;
    if (*(a3 + 319))
    {
      v55 = 0;
      v56 = 0;
      v57 = 0;
      v58 = 0;
      v59 = 0;
      v60 = 0;
      v61 = a3 + 6088;
      while (1)
      {
        if (*(v61 + v55) != 1 || !*(a3 + v55 + 1732))
        {
          goto LABEL_104;
        }

        v62 = *(a3 + 4 * v55 + 324);
        if (v62 > 3)
        {
          switch(v62)
          {
            case 4:
              ++v58;
              break;
            case 5:
              ++v57;
              break;
            case 6:
              ++v56;
              break;
            default:
              goto LABEL_101;
          }
        }

        else if (v62 >= 2)
        {
          if (v62 == 2)
          {
            ++v60;
            goto LABEL_104;
          }

          if (v62 != 3)
          {
LABEL_101:
            result = EvCrt_Illegal_Default("NMEA_Encode_GSA", 0x292u);
            a3 = v948;
            v54 = *(v948 + 319);
            goto LABEL_104;
          }

          ++v59;
        }

LABEL_104:
        if (++v55 >= v54)
        {
          v944 = v58 > 0;
          v939 = v60 > 0;
          BYTE4(v934) = v56 > 0;
          v937 = v59 > 0;
          LOBYTE(v934) = v57 > 0;
          goto LABEL_107;
        }
      }
    }

    v939 = 0;
    v937 = 0;
    v944 = 0;
    v934 = 0;
LABEL_107:
    v63 = 0;
    if (*(a3 + 316) == 1)
    {
      v64 = 77;
    }

    else
    {
      v64 = 65;
    }

    v946 = v64;
    v65 = *(a3 + 296);
    if (!*(a3 + 318))
    {
      v65 = 0;
    }

    v945 = v65;
    v66 = v65 & 0xFFFFFFFE;
    if (v66 == 2)
    {
      v67 = 50;
    }

    else
    {
      v67 = 49;
    }

    if (v66 == 4)
    {
      v68 = 51;
    }

    else
    {
      v68 = v67;
    }

    v69 = a3 + 6088;
    v70 = 1;
LABEL_119:
    v943 = v70;
    v71 = 1;
    while (v71 == 1 || v71 == 4 && v944)
    {
      v74 = (*v4)++;
      *v74 = 36;
      v73 = *v4;
      if (*v4 >= *(v4 + 24))
      {
        v73 = *(v4 + 16);
      }

      v75 = "GP";
      if ((v943 & 1) == 0)
      {
        goto LABEL_131;
      }

LABEL_132:
      v76 = *v75;
      v77 = v73;
      if (*v75)
      {
        v78 = (v75 + 1);
        v77 = v73;
        do
        {
          *v4 = v77 + 1;
          *v77 = v76;
          v77 = *v4;
          if (*v4 >= *(v4 + 24))
          {
            v77 = *(v4 + 16);
            *v4 = v77;
          }

          v79 = *v78++;
          v76 = v79;
        }

        while (v79);
      }

      v80 = 0;
      v81 = 71;
      do
      {
        *v4 = v77 + 1;
        *v77 = v81;
        v77 = *v4;
        if (*v4 >= *(v4 + 24))
        {
          v77 = *(v4 + 16);
          *v4 = v77;
        }

        v81 = aGsa[++v80];
      }

      while (v80 != 4);
      *v4 = v77 + 1;
      *v77 = v946;
      v82 = *v4;
      if (*v4 >= *(v4 + 24))
      {
        v82 = *(v4 + 16);
      }

      *v4 = v82 + 1;
      *v82 = 44;
      v83 = *v4;
      if (*v4 >= *(v4 + 24))
      {
        v83 = *(v4 + 16);
      }

      *v4 = v83 + 1;
      *v83 = v68;
      v84 = *v4;
      if (*v4 >= *(v4 + 24))
      {
        v84 = *(v4 + 16);
      }

      *v4 = v84 + 1;
      *v84 = 44;
      v85 = *v4;
      if (*v4 >= *(v4 + 24))
      {
        v85 = *(v4 + 16);
        *v4 = v85;
      }

      if (v945)
      {
        v86 = 0;
        v87 = 0;
        do
        {
          if (*(v69 + v86) == 1 && *(a3 + v86 + 1732) && v71 == *(a3 + 4 * v86 + 324))
          {
            ++v87;
            v88 = Encode_Nmea_Id(*(a3 + v86 + 1732), v71);
            sprintf_02d(v4, v88);
            v89 = (*v4)++;
            *v89 = 44;
            v85 = *v4;
            if (*v4 >= *(v4 + 24))
            {
              v85 = *(v4 + 16);
              *v4 = v85;
            }

            a3 = v948;
          }

          if (v86 > 0x7E)
          {
            break;
          }

          ++v86;
        }

        while (v87 != 12);
        if (v87 <= 11)
        {
          v90 = v87 - 12;
          do
          {
            *v4 = v85 + 1;
            *v85 = 44;
            v85 = *v4;
            if (*v4 >= *(v4 + 24))
            {
              v85 = *(v4 + 16);
              *v4 = v85;
            }

            v91 = __CFADD__(v90++, 1);
          }

          while (!v91);
        }

        sprintf_DOP(v4, *(a3 + 280));
        v92 = (*v4)++;
        *v92 = 44;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }

        sprintf_DOP(v4, *(v948 + 264));
        v93 = (*v4)++;
        *v93 = 44;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }

        sprintf_DOP(v4, *(v948 + 272));
      }

      else
      {
        for (i = 15; i > 1; --i)
        {
          *v4 = v85 + 1;
          *v85 = 44;
          v85 = *v4;
          if (*v4 >= *(v4 + 24))
          {
            v85 = *(v4 + 16);
            *v4 = v85;
          }
        }
      }

      if ((v63 & 1) == 0)
      {
        goto LABEL_196;
      }

      v95 = (*v4)++;
      *v95 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      if (v71 <= 2)
      {
        if (!v71)
        {
          goto LABEL_190;
        }

        if (v71 != 1 && v71 != 2)
        {
LABEL_189:
          EvCrt_Illegal_Default("NMEA_Encode_GSA", 0x2FEu);
LABEL_190:
          v97 = -1;
          v96 = 1;
          goto LABEL_192;
        }

LABEL_188:
        v96 = 0;
        v97 = v71;
        goto LABEL_192;
      }

      if (v71 > 4)
      {
        if (v71 == 5)
        {
          goto LABEL_188;
        }

        if (v71 != 6)
        {
          goto LABEL_189;
        }

        v96 = 0;
        v97 = 3;
      }

      else
      {
        v96 = 0;
        if (v71 == 3)
        {
          v97 = 4;
        }

        else
        {
          v97 = 1;
        }
      }

LABEL_192:
      if (v97 >= 0)
      {
        v98 = v97;
      }

      else
      {
        v98 = -v97;
      }

      sprintf1da(v4, v98, __dst, 0, v96);
LABEL_196:
      result = NMEA_Add_checksum(v4, v73);
      a3 = v948;
LABEL_197:
      if (++v71 == 7)
      {
        v70 = 0;
        v63 = 1;
        if ((v943 & 1) == 0)
        {
          word_2A197178C = 0;
          v6 = v929;
          v5 = a4;
          goto LABEL_200;
        }

        goto LABEL_119;
      }
    }

    if ((v63 & v939 & (v71 == 2)) == 0 && (v63 & v937 & (v71 == 3)) == 0 && ((v63 & BYTE4(v934)) & (v71 == 6)) == 0 && ((v63 & v934) & (v71 == 5)) != 1)
    {
      goto LABEL_197;
    }

    v72 = (*v4)++;
    *v72 = 36;
    v73 = *v4;
    if (*v4 >= *(v4 + 24))
    {
      v73 = *(v4 + 16);
    }

LABEL_131:
    v75 = "GN";
    goto LABEL_132;
  }

LABEL_200:
  v99 = v6[3];
  if (v99 >= 1 && v99 <= ++word_2A197178E)
  {
    v100 = (*v4)++;
    *v100 = 36;
    v101 = *v4;
    if (*v4 >= *(v4 + 24))
    {
      v101 = *(v4 + 16);
    }

    v102 = 0;
    v103 = 71;
    v104 = v101;
    do
    {
      *v4 = v104 + 1;
      *v104 = v103;
      v104 = *v4;
      if (*v4 >= *(v4 + 24))
      {
        v104 = *(v4 + 16);
        *v4 = v104;
      }

      v103 = aGn[++v102];
    }

    while (v102 != 2);
    v105 = 0;
    v106 = 71;
    do
    {
      *v4 = v104 + 1;
      *v104 = v106;
      v104 = *v4;
      if (*v4 >= *(v4 + 24))
      {
        v104 = *(v4 + 16);
        *v4 = v104;
      }

      v106 = aGst[++v105];
    }

    while (v105 != 4);
    sprintf_HHMMSS(v4, a3);
    v107 = v948;
    if (*(v948 + 320))
    {
      sprintf_AccEst(v4, *(v948 + 248));
      v107 = v948;
    }

    v108 = (*v4)++;
    *v108 = 44;
    if (*v4 >= *(v4 + 24))
    {
      *v4 = *(v4 + 16);
    }

    sprintf_AccEst(v4, *(v107 + 200));
    v109 = (*v4)++;
    *v109 = 44;
    if (*v4 >= *(v4 + 24))
    {
      *v4 = *(v4 + 16);
    }

    sprintf_AccEst(v4, *(v948 + 208));
    v110 = (*v4)++;
    *v110 = 44;
    if (*v4 >= *(v4 + 24))
    {
      *v4 = *(v4 + 16);
    }

    v111 = *(v948 + 216);
    if (v111 >= 0)
    {
      v112 = *(v948 + 216);
    }

    else
    {
      v112 = -v111;
    }

    sprintf1da(v4, v112, __dst, 0, v111 >> 31);
    v113 = (*v4)++;
    *v113 = 44;
    if (*v4 >= *(v4 + 24))
    {
      *v4 = *(v4 + 16);
    }

    sprintf_AccEst(v4, *(v948 + 176));
    v114 = (*v4)++;
    *v114 = 44;
    if (*v4 >= *(v4 + 24))
    {
      *v4 = *(v4 + 16);
    }

    sprintf_AccEst(v4, *(v948 + 184));
    v115 = (*v4)++;
    *v115 = 44;
    if (*v4 >= *(v4 + 24))
    {
      *v4 = *(v4 + 16);
    }

    sprintf_AccEst(v4, *(v948 + 192));
    result = NMEA_Add_checksum(v4, v101);
    a3 = v948;
    word_2A197178E = 0;
    v5 = a4;
  }

  v116 = v6[4];
  if (v116 >= 1 && v116 <= ++word_2A1971790)
  {
    v947 = a3 + 324;
    result = memcpy(__dst, (a3 + 324), sizeof(__dst));
    a3 = v948;
    v117 = *(v948 + 319);
    v930 = v6;
    if (*(v948 + 319))
    {
      v932 = 0;
      v933 = 0;
      v935 = 0;
      v118 = (v948 + 1732);
      v119 = __dst;
      do
      {
        if (*v118++)
        {
          v121 = *v119;
          if (*v119 > 3)
          {
            if (v121 == 4)
            {
              *v119 = 1;
              ++v935;
            }

            else
            {
              v128 = HIDWORD(v932);
              if (v121 == 6)
              {
                v129 = HIDWORD(v932) + 1;
              }

              else
              {
                v129 = HIDWORD(v932);
              }

              v14 = v121 == 5;
              v130 = v932;
              if (v14)
              {
                v130 = v932 + 1;
              }

              else
              {
                v128 = v129;
              }

              v932 = __PAIR64__(v128, v130);
            }
          }

          else
          {
            v123 = v933;
            v122 = HIDWORD(v933);
            if (v121 == 3)
            {
              v124 = HIDWORD(v933) + 1;
            }

            else
            {
              v124 = HIDWORD(v933);
            }

            if (v121 == 2)
            {
              v125 = v933 + 1;
            }

            else
            {
              v125 = v933;
            }

            if (v121 == 2)
            {
              v124 = HIDWORD(v933);
            }

            v126 = v121 == 1;
            v127 = v935;
            if (v126)
            {
              v127 = v935 + 1;
            }

            else
            {
              v123 = v125;
            }

            LODWORD(v933) = v123;
            if (!v126)
            {
              v122 = v124;
            }

            HIDWORD(v933) = v122;
            v935 = v127;
          }
        }

        ++v119;
        --v117;
      }

      while (v117);
    }

    else
    {
      v935 = 0;
      v932 = 0;
      v933 = 0;
    }

    v131 = 0;
    v132 = v948 + 1732;
    while (1)
    {
      v133 = HIDWORD(v932);
      if (v131 == 3)
      {
        v134 = 6;
      }

      else
      {
        v133 = v932;
        v134 = 5;
      }

      if (v131 == 2)
      {
        v133 = HIDWORD(v933);
        v134 = 3;
      }

      v135 = v933;
      if (v131)
      {
        v136 = 2;
      }

      else
      {
        v135 = v935;
        v136 = 1;
      }

      if (v131 > 1)
      {
        v137 = v134;
      }

      else
      {
        v133 = v135;
        v137 = v136;
      }

      v940 = v133;
      v138 = __OFSUB__(v133, 1);
      v139 = v133 - 1;
      if (v139 < 0 == v138)
      {
        break;
      }

LABEL_386:
      if (++v131 == 5)
      {
        word_2A1971790 = 0;
        v6 = v930;
        v5 = a4;
        goto LABEL_388;
      }
    }

    v140 = 0;
    v141 = 0;
    v142 = (v139 >> 2) + 1;
    v143 = 1;
    v938 = v131;
    v936 = v142;
    while (1)
    {
      v144 = (*v4)++;
      *v144 = 36;
      v145 = *v4;
      if (*v4 >= *(v4 + 24))
      {
        v145 = *(v4 + 16);
      }

      v146 = "GN";
      if (v131 <= 4)
      {
        v146 = off_29EF51B20[v131];
      }

      v147 = *v146;
      v148 = v145;
      if (*v146)
      {
        v149 = (v146 + 1);
        v148 = v145;
        do
        {
          *v4 = v148 + 1;
          *v148 = v147;
          v148 = *v4;
          if (*v4 >= *(v4 + 24))
          {
            v148 = *(v4 + 16);
            *v4 = v148;
          }

          v150 = *v149++;
          v147 = v150;
        }

        while (v150);
      }

      v151 = 0;
      v152 = 71;
      do
      {
        *v4 = v148 + 1;
        *v148 = v152;
        v148 = *v4;
        if (*v4 >= *(v4 + 24))
        {
          v148 = *(v4 + 16);
          *v4 = v148;
        }

        v152 = aGsv[++v151];
      }

      while (v151 != 4);
      v941 = v145;
      sprintf1da(v4, v142, v950, 0, 0);
      v153 = (*v4)++;
      *v153 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      sprintf1da(v4, v143, v950, 0, 0);
      v154 = (*v4)++;
      *v154 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      v942 = v143;
      sprintf_02d(v4, v940);
      if (v141 <= 127)
      {
        v155 = 0;
        v156 = v141 - 128;
        do
        {
          if (!*(v132 + v141) || __dst[v141] != v137)
          {
            ++v141;
            goto LABEL_339;
          }

          v140 = *(v948 + 836 + 4 * v141);
          v157 = (*v4)++;
          *v157 = 44;
          if (*v4 >= *(v4 + 24))
          {
            *v4 = *(v4 + 16);
          }

          v158 = Encode_Nmea_Id(*(v132 + v141), *(v947 + 4 * v141));
          sprintf_02d(v4, v158);
          v159 = (*v4)++;
          *v159 = 44;
          v160 = *v4;
          if (*v4 >= *(v4 + 24))
          {
            v160 = *(v4 + 16);
            *v4 = v160;
          }

          v161 = *(v948 + 5064 + 8 * v141);
          if (v161 >= -5.0)
          {
            v164 = v161 * 10.0;
            if (v164 <= 0.0)
            {
              v165 = -0.5;
            }

            else
            {
              v165 = 0.5;
            }

            v166 = v164 + v165;
            if (v166 <= 2147483650.0)
            {
              if (v166 >= -2147483650.0)
              {
                v167 = v166;
              }

              else
              {
                v167 = 0x80000000;
              }
            }

            else
            {
              v167 = 0x7FFFFFFF;
            }

            sprintf_2f(v4, v167);
            v168 = (*v4)++;
            *v168 = 44;
            if (*v4 >= *(v4 + 24))
            {
              *v4 = *(v4 + 16);
            }

            v169 = *(v948 + 4040 + 8 * v141) * 10.0;
            if (v169 <= 0.0)
            {
              v170 = -0.5;
            }

            else
            {
              v170 = 0.5;
            }

            v171 = v169 + v170;
            if (v171 <= 2147483650.0)
            {
              if (v171 >= -2147483650.0)
              {
                v172 = v171;
              }

              else
              {
                v172 = 0x80000000;
              }
            }

            else
            {
              v172 = 0x7FFFFFFF;
            }

            sprintf_2f(v4, v172);
            v163 = v4;
          }

          else
          {
            *v4 = v160 + 1;
            *v160 = 44;
            v162 = *v4;
            v163 = (v4 + 16);
            if (*v4 < *(v4 + 24))
            {
              goto LABEL_325;
            }
          }

          v162 = *v163;
LABEL_325:
          *v4 = v162 + 1;
          *v162 = 44;
          if (*v4 >= *(v4 + 24))
          {
            *v4 = *(v4 + 16);
          }

          v173 = *(v948 + 1992 + 8 * v141);
          if (v173 > 0.0)
          {
            v174 = v173 * 10.0;
            if (v174 <= 0.0)
            {
              v175 = -0.5;
            }

            else
            {
              v175 = 0.5;
            }

            v176 = v174 + v175;
            if (v176 <= 2147483650.0)
            {
              if (v176 >= -2147483650.0)
              {
                v177 = v176;
              }

              else
              {
                v177 = 0x80000000;
              }
            }

            else
            {
              v177 = 0x7FFFFFFF;
            }

            sprintf_2f(v4, v177);
          }

          ++v141;
          if (v155 > 2)
          {
            break;
          }

          ++v155;
LABEL_339:
          v91 = __CFADD__(v156++, 1);
        }

        while (!v91);
      }

      v178 = (*v4)++;
      *v178 = 44;
      v179 = *v4;
      if (*v4 >= *(v4 + 24))
      {
        v179 = *(v4 + 16);
        *v4 = v179;
      }

      v180 = 49;
      if (v140 > 50)
      {
        break;
      }

      if (v140 > 32)
      {
        v181 = v942;
        if (v140 > 35)
        {
          if (v140 != 36)
          {
            if (v140 == 49)
            {
              goto LABEL_382;
            }

            if (v140 != 50)
            {
              goto LABEL_381;
            }
          }
        }

        else if (v140 != 34)
        {
          goto LABEL_382;
        }

        goto LABEL_372;
      }

      v181 = v942;
      if (v140 > 17)
      {
        if (v140 != 18)
        {
          if (v140 != 19)
          {
            if (v140 != 20)
            {
              goto LABEL_381;
            }

            goto LABEL_378;
          }

LABEL_379:
          v180 = 53;
          goto LABEL_382;
        }

LABEL_372:
        v180 = 51;
        goto LABEL_382;
      }

      if (v140)
      {
        if (v140 != 17)
        {
LABEL_381:
          EvCrt_Illegal_Default("NMEA_Encode_GSV", 0x402u);
          v179 = *v4;
          v180 = 48;
        }

LABEL_382:
        *v4 = v179 + 1;
        *v179 = v180;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }
      }

      result = NMEA_Add_checksum(v4, v941);
      v142 = v936;
      v14 = v181 == v936;
      v143 = v181 + 1;
      a3 = v948;
      v131 = v938;
      if (v14)
      {
        goto LABEL_386;
      }
    }

    if (v140 <= 82)
    {
      v181 = v942;
      if (v140 <= 64)
      {
        if (v140 == 51)
        {
          goto LABEL_379;
        }

        if (v140 != 52)
        {
          goto LABEL_381;
        }

        goto LABEL_378;
      }

      if (v140 == 65 || v140 == 81)
      {
        goto LABEL_382;
      }

      if (v140 != 82)
      {
        goto LABEL_381;
      }
    }

    else
    {
      v181 = v942;
      if (v140 <= 98)
      {
        if (v140 == 83)
        {
          goto LABEL_372;
        }

        if (v140 != 97)
        {
          if (v140 != 98)
          {
            goto LABEL_381;
          }

          goto LABEL_382;
        }

LABEL_378:
        v180 = 55;
        goto LABEL_382;
      }

      if (v140 != 99)
      {
        if (v140 != 100)
        {
          if (v140 != 101)
          {
            goto LABEL_381;
          }

          goto LABEL_379;
        }

        goto LABEL_372;
      }
    }

    v180 = 50;
    goto LABEL_382;
  }

LABEL_388:
  v182 = v6[5];
  if (v182 >= 1 && v182 <= ++word_2A1971792)
  {
    v183 = (*v4)++;
    *v183 = 36;
    v184 = *v4;
    if (*v4 >= *(v4 + 24))
    {
      v184 = *(v4 + 16);
    }

    v185 = 71;
    v186 = 1u;
    v187 = v184;
    do
    {
      *v4 = v187 + 1;
      *v187 = v185;
      v187 = *v4;
      if (*v4 >= *(v4 + 24))
      {
        v187 = *(v4 + 16);
        *v4 = v187;
      }

      v185 = aGprmc[v186++];
    }

    while (v186 != 7);
    sprintf_HHMMSS(v4, a3);
    v188 = v948;
    if (*(v948 + 318))
    {
      v189 = *(v948 + 296);
    }

    else
    {
      v189 = 0;
    }

    if (v189)
    {
      if (v189 <= 0)
      {
        v190 = 86;
      }

      else
      {
        v190 = 65;
      }

      v191 = (*v4)++;
      *v191 = v190;
      v192 = *v4;
      if (*v4 >= *(v4 + 24))
      {
        v192 = *(v4 + 16);
      }

      *v4 = v192 + 1;
      *v192 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      sprintf_LatLon(v4, *(v948 + 96), *(v948 + 104));
      v193 = *(v948 + 128) * 1.94279547 * 1000.0;
      v194 = -0.5;
      if (v193 > 0.0)
      {
        v194 = 0.5;
      }

      v195 = v193 + v194;
      if (v195 <= 2147483650.0)
      {
        if (v195 >= -2147483650.0)
        {
          v196 = v195;
        }

        else
        {
          v196 = 0x80000000;
        }
      }

      else
      {
        v196 = 0x7FFFFFFF;
      }

      sprintf_4f(v4, v196, 4);
      v200 = (*v4)++;
      *v200 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      v201 = *(v948 + 136) * 10.0;
      v202 = -0.5;
      if (v201 > 0.0)
      {
        v202 = 0.5;
      }

      v203 = v201 + v202;
      if (v203 <= 2147483650.0)
      {
        if (v203 >= -2147483650.0)
        {
          v204 = v203;
        }

        else
        {
          v204 = 0x80000000;
        }
      }

      else
      {
        v204 = 0x7FFFFFFF;
      }

      sprintf_2f(v4, v204);
      v205 = (*v4)++;
      *v205 = 44;
      v198 = *v4;
      v188 = v948;
      if (*v4 >= *(v4 + 24))
      {
        v198 = *(v4 + 16);
        *v4 = v198;
      }
    }

    else
    {
      v197 = 0;
      v198 = *v4;
      v199 = 86;
      do
      {
        *v4 = v198 + 1;
        *v198 = v199;
        v198 = *v4;
        if (*v4 >= *(v4 + 24))
        {
          v198 = *(v4 + 16);
          *v4 = v198;
        }

        v199 = aV[++v197];
      }

      while (v197 != 8);
    }

    if (*(v188 + 9) == 1)
    {
      sprintf_02d(v4, *(v188 + 14));
      sprintf_02d(v4, *(v948 + 12));
      sprintf_02d(v4, *(v948 + 10) - 2000);
      v198 = *v4;
    }

    *v4 = v198 + 1;
    *v198 = 44;
    v206 = *v4;
    if (*v4 >= *(v4 + 24))
    {
      v206 = *(v4 + 16);
    }

    *v4 = v206 + 1;
    *v206 = 44;
    v207 = *v4;
    if (*v4 >= *(v4 + 24))
    {
      v207 = *(v4 + 16);
    }

    *v4 = v207 + 1;
    *v207 = 44;
    v208 = *v4;
    if (*v4 >= *(v4 + 24))
    {
      v208 = *(v4 + 16);
    }

    v209 = 0x44414441454EuLL >> (8 * v189);
    if (v189 >= 6)
    {
      LOBYTE(v209) = 78;
    }

    *v4 = v208 + 1;
    *v208 = v209;
    v210 = *v4;
    if (*v4 >= *(v4 + 24))
    {
      v210 = *(v4 + 16);
    }

    v211 = 0;
    v212 = 44;
    v5 = a4;
    do
    {
      *v4 = v210 + 1;
      *v210 = v212;
      v210 = *v4;
      if (*v4 >= *(v4 + 24))
      {
        v210 = *(v4 + 16);
        *v4 = v210;
      }

      v212 = aV_0[++v211];
    }

    while (v211 != 2);
    result = NMEA_Add_checksum(v4, v184);
    word_2A1971792 = 0;
    a3 = v948;
  }

  v213 = v6[6];
  if (v213 >= 1 && v213 <= ++word_2A1971794)
  {
    v214 = (*v4)++;
    *v214 = 36;
    v215 = *v4;
    if (*v4 >= *(v4 + 24))
    {
      v215 = *(v4 + 16);
    }

    v216 = 71;
    v217 = 1u;
    v218 = v215;
    do
    {
      *v4 = v218 + 1;
      *v218 = v216;
      v218 = *v4;
      if (*v4 >= *(v4 + 24))
      {
        v218 = *(v4 + 16);
        *v4 = v218;
      }

      v216 = aGpvtg[v217++];
    }

    while (v217 != 7);
    v219 = *(a3 + 296);
    if (*(a3 + 318) != 1 || v219 == 0)
    {
      v221 = 44;
      v222 = 1u;
      v5 = a4;
      do
      {
        *v4 = v218 + 1;
        *v218 = v221;
        v218 = *v4;
        if (*v4 >= *(v4 + 24))
        {
          v218 = *(v4 + 16);
          *v4 = v218;
        }

        v221 = aTMNKN[v222++];
      }

      while (v222 != 14);
      goto LABEL_514;
    }

    v223 = *(a3 + 136) * 10.0;
    v224 = -0.5;
    if (v223 > 0.0)
    {
      v224 = 0.5;
    }

    v225 = v223 + v224;
    if (v225 <= 2147483650.0)
    {
      if (v225 >= -2147483650.0)
      {
        v226 = v225;
      }

      else
      {
        v226 = 0x80000000;
      }
    }

    else
    {
      v226 = 0x7FFFFFFF;
    }

    sprintf_2f(v4, v226);
    v227 = *v4;
    v228 = 44;
    v229 = 1u;
    do
    {
      *v4 = v227 + 1;
      *v227 = v228;
      v227 = *v4;
      if (*v4 >= *(v4 + 24))
      {
        v227 = *(v4 + 16);
        *v4 = v227;
      }

      v228 = aT_1[v229++];
    }

    while (v229 != 4);
    v230 = 44;
    v231 = 1u;
    do
    {
      *v4 = v227 + 1;
      *v227 = v230;
      v227 = *v4;
      if (*v4 >= *(v4 + 24))
      {
        v227 = *(v4 + 16);
        *v4 = v227;
      }

      v230 = aM[v231++];
    }

    while (v231 != 4);
    v232 = *(v948 + 128) * 1.94279547 * 1000.0;
    v233 = -0.5;
    if (v232 > 0.0)
    {
      v233 = 0.5;
    }

    v234 = v232 + v233;
    if (v234 <= 2147483650.0)
    {
      if (v234 >= -2147483650.0)
      {
        v235 = v234;
      }

      else
      {
        v235 = 0x80000000;
      }
    }

    else
    {
      v235 = 0x7FFFFFFF;
    }

    sprintf_4f(v4, v235, 4);
    v236 = *v4;
    v237 = 44;
    v238 = 1u;
    do
    {
      *v4 = v236 + 1;
      *v236 = v237;
      v236 = *v4;
      if (*v4 >= *(v4 + 24))
      {
        v236 = *(v4 + 16);
        *v4 = v236;
      }

      v237 = aN_0[v238++];
    }

    while (v238 != 4);
    v239 = *(v948 + 128) * 3.6 * 1000.0;
    v240 = -0.5;
    if (v239 > 0.0)
    {
      v240 = 0.5;
    }

    v241 = v239 + v240;
    if (v241 <= 2147483650.0)
    {
      if (v241 >= -2147483650.0)
      {
        v242 = v241;
      }

      else
      {
        v242 = 0x80000000;
      }
    }

    else
    {
      v242 = 0x7FFFFFFF;
    }

    sprintf_4f(v4, v242, 4);
    v243 = *v4;
    v244 = 44;
    v245 = 1u;
    do
    {
      *v4 = v243 + 1;
      *v243 = v244;
      v243 = *v4;
      if (*v4 >= *(v4 + 24))
      {
        v243 = *(v4 + 16);
        *v4 = v243;
      }

      v244 = aK[v245++];
    }

    while (v245 != 4);
    if (v219 <= 2)
    {
      if (v219 != 1)
      {
        if (v219 == 2)
        {
          goto LABEL_506;
        }

LABEL_509:
        *v4 = v243 + 1;
        v246 = 78;
        goto LABEL_512;
      }

      *v4 = v243 + 1;
      v246 = 69;
    }

    else
    {
      if (v219 != 3 && v219 != 5)
      {
        if (v219 == 4)
        {
LABEL_506:
          *v4 = v243 + 1;
          v246 = 65;
          goto LABEL_512;
        }

        goto LABEL_509;
      }

      *v4 = v243 + 1;
      v246 = 68;
    }

LABEL_512:
    *v243 = v246;
    v5 = a4;
    if (*v4 >= *(v4 + 24))
    {
      *v4 = *(v4 + 16);
    }

LABEL_514:
    result = NMEA_Add_checksum(v4, v215);
    a3 = v948;
    word_2A1971794 = 0;
  }

  v247 = v6[7];
  if (v247 >= 1 && v247 <= ++word_2A1971796)
  {
    v248 = (*v4)++;
    *v248 = 36;
    v249 = *v4;
    if (*v4 >= *(v4 + 24))
    {
      v249 = *(v4 + 16);
    }

    v250 = 0;
    v251 = 71;
    v252 = v249;
    do
    {
      *v4 = v252 + 1;
      *v252 = v251;
      v252 = *v4;
      if (*v4 >= *(v4 + 24))
      {
        v252 = *(v4 + 16);
        *v4 = v252;
      }

      v251 = aGn[++v250];
    }

    while (v250 != 2);
    v253 = 0;
    v254 = 90;
    do
    {
      *v4 = v252 + 1;
      *v252 = v254;
      v252 = *v4;
      if (*v4 >= *(v4 + 24))
      {
        v252 = *(v4 + 16);
        *v4 = v252;
      }

      v254 = aZcd[++v253];
    }

    while (v253 != 4);
    v255 = v6;
    v256 = *(a3 + 4);
    v257 = v256 % 0x3E8;
    sprintf1da(v4, v256 / 0x3E8, __dst, 0, 0);
    v258 = (*v4)++;
    *v258 = 46;
    if (*v4 >= *(v4 + 24))
    {
      *v4 = *(v4 + 16);
    }

    sprintf_03d(v4, v257);
    v259 = 0;
    v260 = *v4;
    v261 = 44;
    v6 = v255;
    do
    {
      *v4 = v260 + 1;
      *v260 = v261;
      v260 = *v4;
      if (*v4 >= *(v4 + 24))
      {
        v260 = *(v4 + 16);
        *v4 = v260;
      }

      v261 = asc_2997A0088[++v259];
    }

    while (v259 != 2);
    result = NMEA_Add_checksum(v4, v249);
    word_2A1971796 = 0;
    a3 = v948;
  }

  v262 = v6[8];
  if (v262 >= 1 && v262 <= ++word_2A1971798)
  {
    v263 = (*v4)++;
    *v263 = 36;
    v264 = *v4;
    if (*v4 >= *(v4 + 24))
    {
      v264 = *(v4 + 16);
    }

    v265 = 0;
    v266 = 71;
    v267 = v264;
    do
    {
      *v4 = v267 + 1;
      *v267 = v266;
      v267 = *v4;
      if (*v4 >= *(v4 + 24))
      {
        v267 = *(v4 + 16);
        *v4 = v267;
      }

      v266 = aGn[++v265];
    }

    while (v265 != 2);
    v268 = 0;
    v269 = 90;
    do
    {
      *v4 = v267 + 1;
      *v267 = v269;
      v267 = *v4;
      if (*v4 >= *(v4 + 24))
      {
        v267 = *(v4 + 16);
        *v4 = v267;
      }

      v269 = aZda[++v268];
    }

    while (v268 != 4);
    sprintf_HHMMSS(v4, a3);
    if (*(v948 + 9) == 1)
    {
      sprintf_02d(v4, *(v948 + 14));
      v270 = (*v4)++;
      *v270 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      sprintf_02d(v4, *(v948 + 12));
      v271 = (*v4)++;
      *v271 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      sprintf_02d(v4, *(v948 + 10));
      v272 = *v4;
      v5 = a4;
    }

    else
    {
      v273 = 0;
      v272 = *v4;
      v274 = 44;
      do
      {
        *v4 = v272 + 1;
        *v272 = v274;
        v272 = *v4;
        if (*v4 >= *(v4 + 24))
        {
          v272 = *(v4 + 16);
          *v4 = v272;
        }

        v274 = asc_2997A0090[++v273];
      }

      while (v273 != 2);
    }

    v275 = 0;
    v276 = 44;
    do
    {
      *v4 = v272 + 1;
      *v272 = v276;
      v272 = *v4;
      if (*v4 >= *(v4 + 24))
      {
        v272 = *(v4 + 16);
        *v4 = v272;
      }

      v276 = asc_2997A0090[++v275];
    }

    while (v275 != 2);
    result = NMEA_Add_checksum(v4, v264);
    word_2A1971798 = 0;
    a3 = v948;
  }

  v277 = v6[9];
  if (v277 >= 1 && v277 <= ++word_2A197179A)
  {
    v278 = (*v4)++;
    *v278 = 36;
    v279 = *v4;
    if (*v4 >= *(v4 + 24))
    {
      v279 = *(v4 + 16);
    }

    v280 = 80;
    v281 = 1u;
    v282 = v279;
    do
    {
      *v4 = v282 + 1;
      *v282 = v280;
      v282 = *v4;
      if (*v4 >= *(v4 + 24))
      {
        v282 = *(v4 + 16);
        *v4 = v282;
      }

      v280 = aPdbga[v281++];
    }

    while (v281 != 7);
    v283 = a3;
    sprintf_HHMMSS(v4, a3);
    v284 = *(v283 + 292);
    if (v284 >= 0)
    {
      v285 = *(v283 + 292);
    }

    else
    {
      v285 = -v284;
    }

    sprintf1da(v4, v285, __dst, 0, v284 >> 31);
    v286 = (*v4)++;
    *v286 = 44;
    v287 = *v4;
    if (*v4 >= *(v4 + 24))
    {
      v287 = *(v4 + 16);
      *v4 = v287;
    }

    v288 = *(v948 + 296);
    if (v288)
    {
      if (v288 >= 0)
      {
        v289 = *(v948 + 296);
      }

      else
      {
        v289 = -v288;
      }

      sprintf1da(v4, v289, __dst, 0, v288 >> 31);
      v290 = (*v4)++;
      *v290 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      sprintf1da(v4, *(v948 + 317), __dst, 0, 0);
      v291 = (*v4)++;
      *v291 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      sprintf1da(v4, *(v948 + 318), __dst, 0, 0);
      v292 = (*v4)++;
      *v292 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      sprintf_AccEst(v4, *(v948 + 200));
      v293 = (*v4)++;
      *v293 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      sprintf_AccEst(v4, *(v948 + 208));
      v294 = (*v4)++;
      *v294 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      v295 = *(v948 + 216);
      if (v295 >= 0)
      {
        v296 = *(v948 + 216);
      }

      else
      {
        v296 = -v295;
      }

      sprintf1da(v4, v296, __dst, 0, v295 >> 31);
      v297 = (*v4)++;
      *v297 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      sprintf_AccEst(v4, *(v948 + 192));
      v298 = (*v4)++;
      *v298 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      sprintf_AccEst(v4, *(v948 + 224));
      v299 = (*v4)++;
      *v299 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      sprintf_AccEst(v4, *(v948 + 232));
      v300 = (*v4)++;
      *v300 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      sprintf_AccEst(v4, *(v948 + 240));
      v301 = (*v4)++;
      *v301 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      sprintf_AccEst(v4, *(v948 + 152) * 1000.0);
      v302 = (*v4)++;
      *v302 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      sprintf_AccEst(v4, *(v948 + 160) * 1000000000.0);
      v303 = (*v4)++;
      *v303 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      sprintf_AccEst(v4, *(v948 + 168) * 1000000000.0);
      v304 = (*v4)++;
      *v304 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      v305 = *(v948 + 144) * 1000.0;
      v306 = -0.5;
      if (v305 > 0.0)
      {
        v306 = 0.5;
      }

      v307 = v305 + v306;
      if (v307 <= 2147483650.0)
      {
        if (v307 >= -2147483650.0)
        {
          v308 = v307;
        }

        else
        {
          v308 = 0x80000000;
        }
      }

      else
      {
        v308 = 0x7FFFFFFF;
      }

      sprintf_4f(v4, v308, 4);
      v311 = (*v4)++;
      *v311 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      v312 = *(v948 + 300);
      if (v312 >= 0)
      {
        v313 = *(v948 + 300);
      }

      else
      {
        v313 = -v312;
      }

      sprintf1da(v4, v313, __dst, 0, v312 >> 31);
      v314 = (*v4)++;
      *v314 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      v315 = *(v948 + 304);
      if (v315 >= 0)
      {
        v316 = *(v948 + 304);
      }

      else
      {
        v316 = -v315;
      }

      sprintf1da(v4, v316, __dst, 0, v315 >> 31);
      v317 = (*v4)++;
      *v317 = 44;
      v318 = *v4;
      if (*v4 >= *(v4 + 24))
      {
        v318 = *(v4 + 16);
      }

      v319 = 0;
      v320 = 48;
      do
      {
        *v4 = v318 + 1;
        *v318 = v320;
        v318 = *v4;
        if (*v4 >= *(v4 + 24))
        {
          v318 = *(v4 + 16);
          *v4 = v318;
        }

        v320 = a0x_0[++v319];
      }

      while (v319 != 2);
      sprintf_08x(v4, *(v948 + 312));
      v321 = (*v4)++;
      *v321 = 44;
      v322 = *v4;
      if (*v4 >= *(v4 + 24))
      {
        v322 = *(v4 + 16);
      }

      v323 = 0;
      v324 = 48;
      do
      {
        *v4 = v322 + 1;
        *v322 = v324;
        v322 = *v4;
        if (*v4 >= *(v4 + 24))
        {
          v322 = *(v4 + 16);
          *v4 = v322;
        }

        v324 = a0x_0[++v323];
      }

      while (v323 != 2);
      sprintf_03x(v4, *(v948 + 288));
      v325 = (*v4)++;
      *v325 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      v326 = *(v948 + 308);
      if (v326 >= 0)
      {
        v327 = *(v948 + 308);
      }

      else
      {
        v327 = -v326;
      }

      sprintf1da(v4, v327, __dst, 0, v326 >> 31);
    }

    else
    {
      v309 = 48;
      v310 = 1u;
      do
      {
        *v4 = v287 + 1;
        *v287 = v309;
        v287 = *v4;
        if (*v4 >= *(v4 + 24))
        {
          v287 = *(v4 + 16);
          *v4 = v287;
        }

        v309 = a0_1[v310++];
      }

      while (v310 != 15);
    }

    result = NMEA_Add_checksum(v4, v279);
    if (v5 && *v5 == *v948 && *(v5 + 4) == *(v948 + 4))
    {
      v328 = (*v4)++;
      *v328 = 36;
      v329 = *v4;
      if (*v4 >= *(v4 + 24))
      {
        v329 = *(v4 + 16);
      }

      v330 = 80;
      v331 = 1u;
      v332 = v329;
      do
      {
        *v4 = v332 + 1;
        *v332 = v330;
        v332 = *v4;
        if (*v4 >= *(v4 + 24))
        {
          v332 = *(v4 + 16);
          *v4 = v332;
        }

        v330 = aPdbgc[v331++];
      }

      while (v331 != 7);
      sprintf_HHMMSS(v4, v948);
      v333 = *v4;
      if (*(v5 + 8))
      {
        *v4 = v333 + 1;
        *v333 = 65;
        v334 = *v4;
        if (*v4 >= *(v4 + 24))
        {
          v334 = *(v4 + 16);
        }

        *v4 = v334 + 1;
        *v334 = 44;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }

        sprintf1da(v4, *(v5 + 9), __dst, 0, 0);
        v335 = (*v4)++;
        *v335 = 44;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }

        sprintf1da(v4, *(v5 + 10), __dst, 0, 0);
        v336 = (*v4)++;
        *v336 = 44;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }

        sprintf_3f(v4, *(v5 + 12) / 10, 3);
        v337 = (*v4)++;
        *v337 = 44;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }

        sprintf1da(v4, *(v5 + 16), __dst, 0, 0);
        v338 = (*v4)++;
        *v338 = 44;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }

        sprintf1da(v4, *(v5 + 17), __dst, 0, 0);
        v339 = (*v4)++;
        *v339 = 44;
        v333 = *v4;
        if (*v4 >= *(v4 + 24))
        {
          v333 = *(v4 + 16);
        }
      }

      else
      {
        v340 = 78;
        v341 = 1u;
        do
        {
          *v4 = v333 + 1;
          *v333 = v340;
          v333 = *v4;
          if (*v4 >= *(v4 + 24))
          {
            v333 = *(v4 + 16);
            *v4 = v333;
          }

          v340 = aN_1[v341++];
        }

        while (v341 != 8);
      }

      if (*(v5 + 18))
      {
        *v4 = v333 + 1;
        *v333 = 65;
        v342 = *v4;
        if (*v4 >= *(v4 + 24))
        {
          v342 = *(v4 + 16);
        }

        *v4 = v342 + 1;
        *v342 = 44;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }

        sprintf1da(v4, *(v5 + 19), __dst, 0, 0);
        v343 = (*v4)++;
        *v343 = 44;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }

        sprintf1da(v4, *(v5 + 20), __dst, 0, 0);
        v344 = (*v4)++;
        *v344 = 44;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }

        sprintf_3f(v4, *(v5 + 24) / 10, 3);
        v345 = (*v4)++;
        *v345 = 44;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }

        sprintf1da(v4, *(v5 + 28), __dst, 0, 0);
        v346 = (*v4)++;
        *v346 = 44;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }

        sprintf1da(v4, *(v5 + 29), __dst, 0, 0);
        v347 = (*v4)++;
        *v347 = 44;
        v333 = *v4;
        if (*v4 >= *(v4 + 24))
        {
          v333 = *(v4 + 16);
        }
      }

      else
      {
        v348 = 78;
        v349 = 1u;
        do
        {
          *v4 = v333 + 1;
          *v333 = v348;
          v333 = *v4;
          if (*v4 >= *(v4 + 24))
          {
            v333 = *(v4 + 16);
            *v4 = v333;
          }

          v348 = aN_1[v349++];
        }

        while (v349 != 8);
      }

      if (*(v5 + 30))
      {
        *v4 = v333 + 1;
        *v333 = 65;
        v350 = *v4;
        if (*v4 >= *(v4 + 24))
        {
          v350 = *(v4 + 16);
        }

        *v4 = v350 + 1;
        *v350 = 44;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }

        sprintf1da(v4, *(v5 + 31), __dst, 0, 0);
        v351 = (*v4)++;
        *v351 = 44;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }

        sprintf1da(v4, *(v5 + 32), __dst, 0, 0);
        v352 = (*v4)++;
        *v352 = 44;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }

        sprintf_3f(v4, *(v5 + 36) / 10, 3);
        v353 = (*v4)++;
        *v353 = 44;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }

        sprintf1da(v4, *(v5 + 40), __dst, 0, 0);
        v354 = (*v4)++;
        *v354 = 44;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }

        sprintf1da(v4, *(v5 + 41), __dst, 0, 0);
      }

      else
      {
        v355 = 78;
        v356 = 1u;
        do
        {
          *v4 = v333 + 1;
          *v333 = v355;
          v333 = *v4;
          if (*v4 >= *(v4 + 24))
          {
            v333 = *(v4 + 16);
            *v4 = v333;
          }

          v355 = aN_2[v356++];
        }

        while (v356 != 7);
      }

      NMEA_Add_checksum(v4, v329);
      v357 = (*v4)++;
      *v357 = 36;
      v358 = *v4;
      if (*v4 >= *(v4 + 24))
      {
        v358 = *(v4 + 16);
      }

      v359 = 80;
      v360 = 1u;
      v361 = v358;
      do
      {
        *v4 = v361 + 1;
        *v361 = v359;
        v361 = *v4;
        if (*v4 >= *(v4 + 24))
        {
          v361 = *(v4 + 16);
          *v4 = v361;
        }

        v359 = aPdbgd[v360++];
      }

      while (v360 != 7);
      sprintf_HHMMSS(v4, v948);
      v362 = *v4;
      if (*(v5 + 42))
      {
        *v4 = v362 + 1;
        *v362 = 65;
        v363 = *v4;
        if (*v4 >= *(v4 + 24))
        {
          v363 = *(v4 + 16);
        }

        *v4 = v363 + 1;
        *v363 = 44;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }

        sprintf1da(v4, *(v5 + 43), __dst, 0, 0);
        v364 = (*v4)++;
        *v364 = 44;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }

        sprintf1da(v4, *(v5 + 44), __dst, 0, 0);
        v365 = (*v4)++;
        *v365 = 44;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }

        sprintf_3f(v4, *(v5 + 48) / 10, 3);
        v366 = (*v4)++;
        *v366 = 44;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }

        v367 = *(v5 + 56) * 100.0;
        v368 = -0.5;
        if (v367 > 0.0)
        {
          v368 = 0.5;
        }

        v369 = v367 + v368;
        if (v369 <= 2147483650.0)
        {
          if (v369 >= -2147483650.0)
          {
            v370 = v369;
          }

          else
          {
            v370 = 0x80000000;
          }
        }

        else
        {
          v370 = 0x7FFFFFFF;
        }

        sprintf_3f(v4, v370, 3);
        v373 = (*v4)++;
        *v373 = 44;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }

        v374 = *(v5 + 64) * 100.0;
        v375 = -0.5;
        if (v374 > 0.0)
        {
          v375 = 0.5;
        }

        v376 = v374 + v375;
        if (v376 <= 2147483650.0)
        {
          if (v376 >= -2147483650.0)
          {
            v377 = v376;
          }

          else
          {
            v377 = 0x80000000;
          }
        }

        else
        {
          v377 = 0x7FFFFFFF;
        }

        sprintf_3f(v4, v377, 3);
        v378 = (*v4)++;
        *v378 = 44;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }

        sprintf1da(v4, *(v5 + 72), __dst, 0, 0);
      }

      else
      {
        v371 = 78;
        v372 = 1u;
        do
        {
          *v4 = v362 + 1;
          *v362 = v371;
          v362 = *v4;
          if (*v4 >= *(v4 + 24))
          {
            v362 = *(v4 + 16);
            *v4 = v362;
          }

          v371 = aN_1[v372++];
        }

        while (v372 != 8);
      }

      NMEA_Add_checksum(v4, v358);
      v379 = (*v4)++;
      *v379 = 36;
      v380 = *v4;
      if (*v4 >= *(v4 + 24))
      {
        v380 = *(v4 + 16);
      }

      v381 = 80;
      v382 = 1u;
      v383 = v380;
      do
      {
        *v4 = v383 + 1;
        *v383 = v381;
        v383 = *v4;
        if (*v4 >= *(v4 + 24))
        {
          v383 = *(v4 + 16);
          *v4 = v383;
        }

        v381 = aPdbge[v382++];
      }

      while (v382 != 7);
      sprintf_HHMMSS(v4, v948);
      v384 = 0;
      v385 = *v4;
      v386 = 65;
      do
      {
        *v4 = v385 + 1;
        *v385 = v386;
        v385 = *v4;
        if (*v4 >= *(v4 + 24))
        {
          v385 = *(v4 + 16);
          *v4 = v385;
        }

        v386 = aA[++v384];
      }

      while (v384 != 2);
      sprintf1da(v4, *(v5 + 73), __dst, 0, 0);
      v387 = (*v4)++;
      *v387 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      sprintf1da(v4, *(v5 + 74), __dst, 0, 0);
      v388 = (*v4)++;
      *v388 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      sprintf1da(v4, *(v5 + 75), __dst, 0, 0);
      v389 = (*v4)++;
      *v389 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      sprintf1da(v4, *(v5 + 76), __dst, 0, 0);
      v390 = (*v4)++;
      *v390 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      sprintf1da(v4, *(v5 + 78), __dst, 0, 0);
      v391 = (*v4)++;
      *v391 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      sprintf1da(v4, *(v5 + 80), __dst, 0, 0);
      v392 = (*v4)++;
      *v392 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      sprintf1da(v4, *(v5 + 82), __dst, 0, 0);
      v393 = (*v4)++;
      *v393 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      sprintf1da(v4, *(v5 + 83), __dst, 0, 0);
      v394 = (*v4)++;
      *v394 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      sprintf1da(v4, *(v5 + 84), __dst, 0, 0);
      v395 = (*v4)++;
      *v395 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      sprintf1da(v4, *(v5 + 85), __dst, 0, 0);
      v396 = (*v4)++;
      *v396 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      v397 = *(v5 + 86);
      if (v397 >= 0)
      {
        v398 = *(v5 + 86);
      }

      else
      {
        v398 = -v397;
      }

      sprintf1da(v4, v398, __dst, 0, (v397 >> 7) & 1);
      v399 = (*v4)++;
      *v399 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      sprintf1da(v4, *(v5 + 87), __dst, 0, 0);
      v400 = (*v4)++;
      *v400 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      sprintf1da(v4, *(v5 + 88), __dst, 0, 0);
      v401 = (*v4)++;
      *v401 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      sprintf1da(v4, *(v5 + 89), __dst, 0, 0);
      v402 = (*v4)++;
      *v402 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      sprintf1da(v4, *(v5 + 90), __dst, 0, 0);
      v403 = (*v4)++;
      *v403 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      sprintf1da(v4, *(v5 + 92), __dst, 0, 0);
      v404 = (*v4)++;
      *v404 = 44;
      v405 = *v4;
      if (*v4 >= *(v4 + 24))
      {
        v405 = *(v4 + 16);
      }

      v406 = 0;
      v407 = 82;
      do
      {
        *v4 = v405 + 1;
        *v405 = v407;
        v405 = *v4;
        if (*v4 >= *(v4 + 24))
        {
          v405 = *(v4 + 16);
          *v4 = v405;
        }

        v407 = aR[++v406];
      }

      while (v406 != 2);
      sprintf1da(v4, *(v5 + 94), __dst, 0, 0);
      v408 = (*v4)++;
      *v408 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      sprintf1da(v4, *(v5 + 96), __dst, 0, 0);
      v409 = (*v4)++;
      *v409 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      sprintf1da(v4, *(v5 + 98), __dst, 0, 0);
      v410 = (*v4)++;
      *v410 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      sprintf1da(v4, *(v5 + 100), __dst, 0, 0);
      v411 = (*v4)++;
      *v411 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      sprintf1da(v4, *(v5 + 101), __dst, 0, 0);
      v412 = (*v4)++;
      *v412 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      sprintf1da(v4, *(v5 + 102), __dst, 0, 0);
      v413 = (*v4)++;
      *v413 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      sprintf1da(v4, *(v5 + 103), __dst, 0, 0);
      v414 = (*v4)++;
      *v414 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      sprintf1da(v4, *(v5 + 104), __dst, 0, 0);
      v415 = (*v4)++;
      *v415 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      v416 = *(v5 + 112) * 10.0;
      v417 = -0.5;
      if (v416 > 0.0)
      {
        v417 = 0.5;
      }

      v418 = v416 + v417;
      if (v418 <= 2147483650.0)
      {
        if (v418 >= -2147483650.0)
        {
          v419 = v418;
        }

        else
        {
          v419 = 0x80000000;
        }
      }

      else
      {
        v419 = 0x7FFFFFFF;
      }

      sprintf_2f(v4, v419);
      v420 = (*v4)++;
      *v420 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      v421 = *(v5 + 120) * 10.0;
      v422 = -0.5;
      if (v421 > 0.0)
      {
        v422 = 0.5;
      }

      v423 = v421 + v422;
      if (v423 <= 2147483650.0)
      {
        if (v423 >= -2147483650.0)
        {
          v424 = v423;
        }

        else
        {
          v424 = 0x80000000;
        }
      }

      else
      {
        v424 = 0x7FFFFFFF;
      }

      sprintf_2f(v4, v424);
      v425 = (*v4)++;
      *v425 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      v426 = *(v5 + 128) * 10.0;
      v427 = -0.5;
      if (v426 > 0.0)
      {
        v427 = 0.5;
      }

      v428 = v426 + v427;
      if (v428 <= 2147483650.0)
      {
        if (v428 >= -2147483650.0)
        {
          v429 = v428;
        }

        else
        {
          v429 = 0x80000000;
        }
      }

      else
      {
        v429 = 0x7FFFFFFF;
      }

      sprintf_2f(v4, v429);
      v430 = (*v4)++;
      *v430 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      v431 = *(v5 + 136) * 10.0;
      v432 = -0.5;
      if (v431 > 0.0)
      {
        v432 = 0.5;
      }

      v433 = v431 + v432;
      if (v433 <= 2147483650.0)
      {
        if (v433 >= -2147483650.0)
        {
          v434 = v433;
        }

        else
        {
          v434 = 0x80000000;
        }
      }

      else
      {
        v434 = 0x7FFFFFFF;
      }

      sprintf_2f(v4, v434);
      v435 = (*v4)++;
      *v435 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      sprintf1da(v4, *(v5 + 144), __dst, 0, 0);
      v436 = (*v4)++;
      *v436 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      sprintf1da(v4, *(v5 + 145), __dst, 0, 0);
      v437 = (*v4)++;
      *v437 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      sprintf1da(v4, *(v5 + 146), __dst, 0, 0);
      v438 = (*v4)++;
      *v438 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      sprintf1da(v4, *(v5 + 147), __dst, 0, 0);
      v439 = (*v4)++;
      *v439 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      sprintf1da(v4, *(v5 + 148), __dst, 0, 0);
      v440 = (*v4)++;
      *v440 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      sprintf1da(v4, *(v5 + 149), __dst, 0, 0);
      v441 = (*v4)++;
      *v441 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      sprintf1da(v4, *(v5 + 150), __dst, 0, 0);
      v442 = (*v4)++;
      *v442 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      sprintf1da(v4, *(v5 + 151), __dst, 0, 0);
      NMEA_Add_checksum(v4, v380);
      if (*(v5 + 152) == 1)
      {
        NMEA_Encode_PDBGE_Constell(v4, 1, v948, v5);
      }

      v443 = v948;
      if (*(v5 + 192) == 1)
      {
        NMEA_Encode_PDBGE_Constell(v4, 5, v948, v5);
        v443 = v948;
      }

      if (*(v5 + 232) == 1)
      {
        NMEA_Encode_PDBGE_Constell(v4, 2, v948, v5);
        v443 = v948;
      }

      if (*(v5 + 272) == 1)
      {
        NMEA_Encode_PDBGE_Constell(v4, 3, v948, v5);
        v443 = v948;
      }

      if (*(v5 + 312) == 1)
      {
        NMEA_Encode_PDBGE_Constell(v4, 4, v948, v5);
        v443 = v948;
      }

      if (*(v5 + 352) == 1)
      {
        NMEA_Encode_PDBGE_Constell(v4, 6, v948, v5);
        v443 = v948;
      }

      v444 = (*v4)++;
      *v444 = 36;
      v445 = *v4;
      if (*v4 >= *(v4 + 24))
      {
        v445 = *(v4 + 16);
      }

      v446 = 80;
      v447 = 1u;
      v448 = v445;
      do
      {
        *v4 = v448 + 1;
        *v448 = v446;
        v448 = *v4;
        if (*v4 >= *(v4 + 24))
        {
          v448 = *(v4 + 16);
          *v4 = v448;
        }

        v446 = aPdbgi[v447++];
      }

      while (v447 != 7);
      sprintf_HHMMSS(v4, v443);
      v449 = 0;
      v450 = *v4;
      v451 = 65;
      do
      {
        *v4 = v450 + 1;
        *v450 = v451;
        v450 = *v4;
        if (*v4 >= *(v4 + 24))
        {
          v450 = *(v4 + 16);
          *v4 = v450;
        }

        v451 = aA[++v449];
      }

      while (v449 != 2);
      v452 = *(v5 + 392);
      if (v452 >= 0)
      {
        v453 = *(v5 + 392);
      }

      else
      {
        v453 = -v452;
      }

      sprintf1da(v4, v453, __dst, 0, v452 >> 31);
      v454 = (*v4)++;
      *v454 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      sprintf1da(v4, *(v5 + 396), __dst, 0, 0);
      v455 = (*v4)++;
      *v455 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      sprintf1da(v4, *(v5 + 398), __dst, 0, 0);
      v456 = (*v4)++;
      *v456 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      sprintf_2d(v4, *(v5 + 400));
      v457 = (*v4)++;
      *v457 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      for (j = 404; j != 410; ++j)
      {
        sprintf1da(v4, *(v5 + j), __dst, 0, 0);
      }

      v459 = (*v4)++;
      *v459 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      sprintf1da(v4, *(v5 + 410), __dst, 0, 0);
      v460 = (*v4)++;
      *v460 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      v461 = *(v5 + 416) * 10.0;
      v462 = -0.5;
      if (v461 > 0.0)
      {
        v462 = 0.5;
      }

      v463 = v461 + v462;
      if (v463 <= 2147483650.0)
      {
        if (v463 >= -2147483650.0)
        {
          v464 = v463;
        }

        else
        {
          v464 = 0x80000000;
        }
      }

      else
      {
        v464 = 0x7FFFFFFF;
      }

      sprintf_2f(v4, v464);
      v465 = (*v4)++;
      *v465 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      sprintf_AccEst(v4, *(v5 + 424));
      v466 = (*v4)++;
      *v466 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      sprintf_AccEst(v4, *(v5 + 432));
      v467 = (*v4)++;
      *v467 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      sprintf_AccEst(v4, *(v5 + 440));
      v468 = (*v4)++;
      *v468 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      sprintf1da(v4, *(v5 + 448), __dst, 0, 0);
      v469 = (*v4)++;
      *v469 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      sprintf1da(v4, *(v5 + 449), __dst, 0, 0);
      NMEA_Add_checksum(v4, v445);
      if (*(v5 + 456) == 1)
      {
        NMEA_Encode_PDBGI_Constell(v4, 1, v948, v5);
      }

      v470 = v948;
      if (*(v5 + 576) == 1)
      {
        NMEA_Encode_PDBGI_Constell(v4, 5, v948, v5);
        v470 = v948;
      }

      if (*(v5 + 696) == 1)
      {
        NMEA_Encode_PDBGI_Constell(v4, 2, v948, v5);
        v470 = v948;
      }

      if (*(v5 + 816) == 1)
      {
        NMEA_Encode_PDBGI_Constell(v4, 3, v948, v5);
        v470 = v948;
      }

      if (*(v5 + 936) == 1)
      {
        NMEA_Encode_PDBGI_Constell(v4, 4, v948, v5);
        v470 = v948;
      }

      if (*(v5 + 1056) == 1)
      {
        NMEA_Encode_PDBGI_Constell(v4, 6, v948, v5);
        v470 = v948;
      }

      v471 = (*v4)++;
      *v471 = 36;
      v472 = *v4;
      if (*v4 >= *(v4 + 24))
      {
        v472 = *(v4 + 16);
      }

      v473 = 80;
      v474 = 1u;
      v475 = v472;
      do
      {
        *v4 = v475 + 1;
        *v475 = v473;
        v475 = *v4;
        if (*v4 >= *(v4 + 24))
        {
          v475 = *(v4 + 16);
          *v4 = v475;
        }

        v473 = aPdbgm[v474++];
      }

      while (v474 != 7);
      sprintf_HHMMSS(v4, v470);
      v476 = *v4;
      if (*(v5 + 1176))
      {
        *v4 = v476 + 1;
        *v476 = 65;
        v477 = *v4;
        if (*v4 >= *(v4 + 24))
        {
          v477 = *(v4 + 16);
        }

        *v4 = v477 + 1;
        *v477 = 44;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }

        sprintf1da(v4, *(v5 + 1177), __dst, 0, 0);
        v478 = (*v4)++;
        *v478 = 44;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }

        sprintf1da(v4, *(v5 + 1178), __dst, 0, 0);
        v479 = (*v4)++;
        *v479 = 44;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }

        sprintf_3f(v4, *(v5 + 1180) / 10, 3);
        v480 = (*v4)++;
        *v480 = 44;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }

        sprintf1da(v4, *(v5 + 1184), __dst, 0, 0);
        v481 = (*v4)++;
        *v481 = 44;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }

        v482 = *(v5 + 1192) * 10.0;
        v483 = -0.5;
        if (v482 > 0.0)
        {
          v483 = 0.5;
        }

        v484 = v482 + v483;
        if (v484 <= 2147483650.0)
        {
          if (v484 >= -2147483650.0)
          {
            v485 = v484;
          }

          else
          {
            v485 = 0x80000000;
          }
        }

        else
        {
          v485 = 0x7FFFFFFF;
        }

        sprintf_2f(v4, v485);
        v488 = (*v4)++;
        *v488 = 44;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }

        v489 = *(v5 + 1200) * 10.0;
        v490 = -0.5;
        if (v489 > 0.0)
        {
          v490 = 0.5;
        }

        v491 = v489 + v490;
        if (v491 <= 2147483650.0)
        {
          if (v491 >= -2147483650.0)
          {
            v492 = v491;
          }

          else
          {
            v492 = 0x80000000;
          }
        }

        else
        {
          v492 = 0x7FFFFFFF;
        }

        sprintf_2f(v4, v492);
        v493 = (*v4)++;
        *v493 = 44;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }

        v494 = *(v5 + 1208) * 10.0;
        v495 = -0.5;
        if (v494 > 0.0)
        {
          v495 = 0.5;
        }

        v496 = v494 + v495;
        if (v496 <= 2147483650.0)
        {
          if (v496 >= -2147483650.0)
          {
            v497 = v496;
          }

          else
          {
            v497 = 0x80000000;
          }
        }

        else
        {
          v497 = 0x7FFFFFFF;
        }

        sprintf_2f(v4, v497);
        v498 = (*v4)++;
        *v498 = 44;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }

        sprintf1da(v4, *(v5 + 1216), __dst, 0, 0);
        v499 = (*v4)++;
        *v499 = 44;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }

        sprintf1da(v4, *(v5 + 1218), __dst, 0, 0);
        v500 = (*v4)++;
        *v500 = 44;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }

        sprintf1da(v4, *(v5 + 1220), __dst, 0, 0);
        v501 = (*v4)++;
        *v501 = 44;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }

        sprintf1da(v4, *(v5 + 1221), __dst, 0, 0);
        v502 = (*v4)++;
        *v502 = 44;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }

        sprintf1da(v4, *(v5 + 1222), __dst, 0, 0);
        v503 = (*v4)++;
        *v503 = 44;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }

        sprintf1da(v4, *(v5 + 1223), __dst, 0, 0);
        v504 = (*v4)++;
        *v504 = 44;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }

        sprintf1da(v4, *(v5 + 1224), __dst, 0, 0);
        v505 = (*v4)++;
        *v505 = 44;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }

        sprintf1da(v4, *(v5 + 1225), __dst, 0, 0);
      }

      else
      {
        v486 = 78;
        v487 = 1u;
        do
        {
          *v4 = v476 + 1;
          *v476 = v486;
          v476 = *v4;
          if (*v4 >= *(v4 + 24))
          {
            v476 = *(v4 + 16);
            *v4 = v476;
          }

          v486 = aN_3[v487++];
        }

        while (v487 != 15);
      }

      NMEA_Add_checksum(v4, v472);
      if (*(v5 + 1232) == 1)
      {
        NMEA_Encode_PDBGO(v4, 1, v948, v5);
      }

      v506 = v948;
      if (*(v5 + 1280) == 1)
      {
        NMEA_Encode_PDBGO(v4, 5, v948, v5);
        v506 = v948;
      }

      if (*(v5 + 1328) == 1)
      {
        NMEA_Encode_PDBGO(v4, 2, v948, v5);
        v506 = v948;
      }

      if (*(v5 + 1376) == 1)
      {
        NMEA_Encode_PDBGO(v4, 3, v948, v5);
        v506 = v948;
      }

      if (*(v5 + 1424) == 1)
      {
        NMEA_Encode_PDBGO(v4, 4, v948, v5);
        v506 = v948;
      }

      if (*(v5 + 1472) == 1)
      {
        NMEA_Encode_PDBGO(v4, 6, v948, v5);
        v506 = v948;
      }

      v507 = (*v4)++;
      *v507 = 36;
      v508 = *v4;
      if (*v4 >= *(v4 + 24))
      {
        v508 = *(v4 + 16);
      }

      v509 = 80;
      v510 = 1u;
      v511 = v508;
      do
      {
        *v4 = v511 + 1;
        *v511 = v509;
        v511 = *v4;
        if (*v4 >= *(v4 + 24))
        {
          v511 = *(v4 + 16);
          *v4 = v511;
        }

        v509 = aPdbgp[v510++];
      }

      while (v510 != 7);
      sprintf_HHMMSS(v4, v506);
      v512 = *v4;
      if (*(v5 + 1520))
      {
        *v4 = v512 + 1;
        *v512 = 65;
        v513 = *v4;
        if (*v4 >= *(v4 + 24))
        {
          v513 = *(v4 + 16);
        }

        *v4 = v513 + 1;
        *v513 = 44;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }

        sprintf1da(v4, *(v5 + 1521), __dst, 0, 0);
        v514 = (*v4)++;
        *v514 = 44;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }

        sprintf1da(v4, *(v5 + 1523), __dst, 0, 0);
        v515 = (*v4)++;
        *v515 = 44;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }

        sprintf_3f(v4, *(v5 + 1524) / 10, 3);
        v516 = (*v4)++;
        *v516 = 44;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }

        sprintf1da(v4, *(v5 + 1528), __dst, 0, 0);
        v517 = (*v4)++;
        *v517 = 44;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }

        sprintf1da(v4, *(v5 + 1529), __dst, 0, 0);
        v518 = (*v4)++;
        *v518 = 44;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }

        sprintf1da(v4, *(v5 + 1530), __dst, 0, 0);
        v519 = (*v4)++;
        *v519 = 44;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }

        v520 = *(v5 + 1536) * 10.0;
        v521 = -0.5;
        if (v520 > 0.0)
        {
          v521 = 0.5;
        }

        v522 = v520 + v521;
        if (v522 <= 2147483650.0)
        {
          if (v522 >= -2147483650.0)
          {
            v523 = v522;
          }

          else
          {
            v523 = 0x80000000;
          }
        }

        else
        {
          v523 = 0x7FFFFFFF;
        }

        sprintf_2f(v4, v523);
        v526 = (*v4)++;
        *v526 = 44;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }

        v527 = *(v5 + 1544) * 10.0;
        v528 = -0.5;
        if (v527 > 0.0)
        {
          v528 = 0.5;
        }

        v529 = v527 + v528;
        if (v529 <= 2147483650.0)
        {
          if (v529 >= -2147483650.0)
          {
            v530 = v529;
          }

          else
          {
            v530 = 0x80000000;
          }
        }

        else
        {
          v530 = 0x7FFFFFFF;
        }

        sprintf_2f(v4, v530);
        v531 = (*v4)++;
        *v531 = 44;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }

        v532 = *(v5 + 1552) * 10.0;
        v533 = -0.5;
        if (v532 > 0.0)
        {
          v533 = 0.5;
        }

        v534 = v532 + v533;
        if (v534 <= 2147483650.0)
        {
          if (v534 >= -2147483650.0)
          {
            v535 = v534;
          }

          else
          {
            v535 = 0x80000000;
          }
        }

        else
        {
          v535 = 0x7FFFFFFF;
        }

        sprintf_2f(v4, v535);
        v536 = (*v4)++;
        *v536 = 44;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }

        v537 = *(v5 + 1560);
        if (v537 >= 0)
        {
          v538 = *(v5 + 1560);
        }

        else
        {
          v538 = -v537;
        }

        sprintf1da(v4, v538, __dst, 0, v537 >> 31);
        v539 = (*v4)++;
        *v539 = 44;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }

        v540 = *(v5 + 1564);
        if (v540 >= 0)
        {
          v541 = *(v5 + 1564);
        }

        else
        {
          v541 = -v540;
        }

        sprintf1da(v4, v541, __dst, 0, v540 >> 31);
        v542 = (*v4)++;
        *v542 = 44;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }

        sprintf1da(v4, *(v5 + 1568), __dst, 0, 0);
        v543 = (*v4)++;
        *v543 = 44;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }

        sprintf1da(v4, *(v5 + 1570), __dst, 0, 0);
        v544 = (*v4)++;
        *v544 = 44;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }

        sprintf1da(v4, *(v5 + 1522), __dst, 0, 0);
      }

      else
      {
        v524 = 78;
        v525 = 1u;
        do
        {
          *v4 = v512 + 1;
          *v512 = v524;
          v512 = *v4;
          if (*v4 >= *(v4 + 24))
          {
            v512 = *(v4 + 16);
            *v4 = v512;
          }

          v524 = aN_3[v525++];
        }

        while (v525 != 15);
      }

      NMEA_Add_checksum(v4, v508);
      v545 = (*v4)++;
      *v545 = 36;
      v546 = *v4;
      if (*v4 >= *(v4 + 24))
      {
        v546 = *(v4 + 16);
      }

      v547 = 80;
      v548 = 1u;
      v549 = v546;
      do
      {
        *v4 = v549 + 1;
        *v549 = v547;
        v549 = *v4;
        if (*v4 >= *(v4 + 24))
        {
          v549 = *(v4 + 16);
          *v4 = v549;
        }

        v547 = aPdbgs[v548++];
      }

      while (v548 != 7);
      sprintf_HHMMSS(v4, v948);
      v550 = *v4;
      if (*(v5 + 1572))
      {
        *v4 = v550 + 1;
        *v550 = 65;
        v551 = *v4;
        if (*v4 >= *(v4 + 24))
        {
          v551 = *(v4 + 16);
        }

        *v4 = v551 + 1;
        *v551 = 44;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }

        sprintf1da(v4, *(v5 + 1573), __dst, 0, 0);
        v552 = (*v4)++;
        *v552 = 44;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }

        sprintf1da(v4, *(v5 + 1574), __dst, 0, 0);
        v553 = (*v4)++;
        *v553 = 44;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }

        sprintf1da(v4, *(v5 + 1575), __dst, 0, 0);
      }

      else
      {
        v554 = 0;
        v555 = 78;
        do
        {
          *v4 = v550 + 1;
          *v550 = v555;
          v550 = *v4;
          if (*v4 >= *(v4 + 24))
          {
            v550 = *(v4 + 16);
            *v4 = v550;
          }

          v555 = aN_4[++v554];
        }

        while (v554 != 4);
      }

      NMEA_Add_checksum(v4, v546);
      v556 = (*v4)++;
      *v556 = 36;
      v557 = *v4;
      if (*v4 >= *(v4 + 24))
      {
        v557 = *(v4 + 16);
      }

      v558 = 80;
      v559 = 1u;
      v560 = v557;
      do
      {
        *v4 = v560 + 1;
        *v560 = v558;
        v560 = *v4;
        if (*v4 >= *(v4 + 24))
        {
          v560 = *(v4 + 16);
          *v4 = v560;
        }

        v558 = aPdbgf[v559++];
      }

      while (v559 != 7);
      sprintf_HHMMSS(v4, v948);
      v561 = *v4;
      if (*(v5 + 1576))
      {
        *v4 = v561 + 1;
        *v561 = 65;
        v562 = *v4;
        if (*v4 >= *(v4 + 24))
        {
          v562 = *(v4 + 16);
        }

        *v4 = v562 + 1;
        *v562 = 44;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }

        sprintf1da(v4, *(v5 + 1577), __dst, 0, 0);
        v563 = (*v4)++;
        *v563 = 44;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }

        sprintf1da(v4, *(v5 + 1578), __dst, 0, 0);
        v564 = (*v4)++;
        *v564 = 44;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }

        v565 = *(v5 + 1580);
        if (v565 >= 0)
        {
          v566 = *(v5 + 1580);
        }

        else
        {
          v566 = -v565;
        }

        sprintf1da(v4, v566, __dst, 0, v565 >> 31);
        v567 = (*v4)++;
        *v567 = 44;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }

        v568 = *(v5 + 1584) * 100.0;
        v569 = -0.5;
        if (v568 > 0.0)
        {
          v569 = 0.5;
        }

        v570 = v568 + v569;
        if (v570 <= 2147483650.0)
        {
          if (v570 >= -2147483650.0)
          {
            v571 = v570;
          }

          else
          {
            v571 = 0x80000000;
          }
        }

        else
        {
          v571 = 0x7FFFFFFF;
        }

        sprintf_3f(v4, v571, 3);
        v574 = (*v4)++;
        *v574 = 44;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }

        v575 = *(v5 + 1592) * 100.0;
        v576 = -0.5;
        if (v575 > 0.0)
        {
          v576 = 0.5;
        }

        v577 = v575 + v576;
        if (v577 <= 2147483650.0)
        {
          if (v577 >= -2147483650.0)
          {
            v578 = v577;
          }

          else
          {
            v578 = 0x80000000;
          }
        }

        else
        {
          v578 = 0x7FFFFFFF;
        }

        sprintf_3f(v4, v578, 3);
      }

      else
      {
        v572 = 78;
        v573 = 1u;
        do
        {
          *v4 = v561 + 1;
          *v561 = v572;
          v561 = *v4;
          if (*v4 >= *(v4 + 24))
          {
            v561 = *(v4 + 16);
            *v4 = v561;
          }

          v572 = aN_2[v573++];
        }

        while (v573 != 7);
      }

      NMEA_Add_checksum(v4, v557);
      v579 = (*v4)++;
      *v579 = 36;
      v580 = *v4;
      if (*v4 >= *(v4 + 24))
      {
        v580 = *(v4 + 16);
      }

      v581 = 80;
      v582 = 1u;
      v583 = v580;
      do
      {
        *v4 = v583 + 1;
        *v583 = v581;
        v583 = *v4;
        if (*v4 >= *(v4 + 24))
        {
          v583 = *(v4 + 16);
          *v4 = v583;
        }

        v581 = aPdbgt[v582++];
      }

      while (v582 != 7);
      sprintf_HHMMSS(v4, v948);
      sprintf_1u(v4, *(v5 + 1672));
      v584 = (*v4)++;
      *v584 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      sprintf_1u(v4, *(v5 + 1676));
      v585 = (*v4)++;
      *v585 = 44;
      v586 = *v4;
      if (*v4 >= *(v4 + 24))
      {
        v586 = *(v4 + 16);
        *v4 = v586;
      }

      if (*(v5 + 1680))
      {
        v587 = *(v5 + 1682);
        if (v587 >= 0)
        {
          v588 = *(v5 + 1682);
        }

        else
        {
          v588 = -v587;
        }

        sprintf1da(v4, v588, __dst, 0, (v587 >> 15) & 1);
        v589 = (*v4)++;
        *v589 = 44;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }

        v590 = *(v5 + 1688) * 1000.0;
        v591 = -0.5;
        if (v590 > 0.0)
        {
          v591 = 0.5;
        }

        v592 = v590 + v591;
        if (v592 <= 2147483650.0)
        {
          if (v592 >= -2147483650.0)
          {
            v593 = v592;
          }

          else
          {
            v593 = 0x80000000;
          }
        }

        else
        {
          v593 = 0x7FFFFFFF;
        }

        sprintf_4f(v4, v593, 4);
        v596 = (*v4)++;
        *v596 = 44;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }

        v597 = *(v5 + 1696) * 1000.0;
        v598 = -0.5;
        if (v597 > 0.0)
        {
          v598 = 0.5;
        }

        v599 = v597 + v598;
        if (v599 <= 2147483650.0)
        {
          if (v599 >= -2147483650.0)
          {
            v600 = v599;
          }

          else
          {
            v600 = 0x80000000;
          }
        }

        else
        {
          v600 = 0x7FFFFFFF;
        }

        sprintf_4f(v4, v600, 4);
        v601 = (*v4)++;
        *v601 = 44;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }

        sprintf_1u(v4, *(v5 + 1704));
        v602 = (*v4)++;
        *v602 = 44;
        v586 = *v4;
        if (*v4 >= *(v4 + 24))
        {
          v586 = *(v4 + 16);
          *v4 = v586;
        }
      }

      else
      {
        v594 = 0;
        v595 = 44;
        do
        {
          *v4 = v586 + 1;
          *v586 = v595;
          v586 = *v4;
          if (*v4 >= *(v4 + 24))
          {
            v586 = *(v4 + 16);
            *v4 = v586;
          }

          v595 = asc_29979FFDD[++v594];
        }

        while (v594 != 4);
      }

      if (*(v5 + 1708))
      {
        v603 = *(v5 + 1712);
        if (v603 >= 0)
        {
          v604 = *(v5 + 1712);
        }

        else
        {
          v604 = -v603;
        }

        sprintf1da(v4, v604, __dst, 0, v603 >> 31);
        v605 = (*v4)++;
        *v605 = 44;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }

        sprintf_1u(v4, *(v5 + 1716));
        v606 = (*v4)++;
        *v606 = 44;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }
      }

      else
      {
        v607 = 0;
        v608 = 44;
        do
        {
          *v4 = v586 + 1;
          *v586 = v608;
          v586 = *v4;
          if (*v4 >= *(v4 + 24))
          {
            v586 = *(v4 + 16);
            *v4 = v586;
          }

          v608 = asc_2997A0090[++v607];
        }

        while (v607 != 2);
      }

      sprintf1da(v4, *(v5 + 1720), __dst, 0, 0);
      v609 = (*v4)++;
      *v609 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      sprintf1da(v4, *(v5 + 1721), __dst, 0, 0);
      v610 = (*v4)++;
      *v610 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      v611 = *(v5 + 1728) * 1000.0;
      v612 = -0.5;
      if (v611 > 0.0)
      {
        v612 = 0.5;
      }

      v613 = v611 + v612;
      if (v613 <= 2147483650.0)
      {
        if (v613 >= -2147483650.0)
        {
          v614 = v613;
        }

        else
        {
          v614 = 0x80000000;
        }
      }

      else
      {
        v614 = 0x7FFFFFFF;
      }

      sprintf_4f(v4, v614, 4);
      v615 = (*v4)++;
      *v615 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      v616 = *(v5 + 1736);
      if (v616 >= 0)
      {
        v617 = *(v5 + 1736);
      }

      else
      {
        v617 = -v616;
      }

      sprintf1da(v4, v617, __dst, 0, (v616 >> 15) & 1);
      v618 = (*v4)++;
      *v618 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      sprintf1da(v4, *(v5 + 1738), __dst, 0, 0);
      v619 = (*v4)++;
      *v619 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      v620 = *(v5 + 1744) * 1000.0;
      v621 = -0.5;
      if (v620 > 0.0)
      {
        v621 = 0.5;
      }

      v622 = v620 + v621;
      if (v622 <= 2147483650.0)
      {
        if (v622 >= -2147483650.0)
        {
          v623 = v622;
        }

        else
        {
          v623 = 0x80000000;
        }
      }

      else
      {
        v623 = 0x7FFFFFFF;
      }

      sprintf_4f(v4, v623, 4);
      v624 = (*v4)++;
      *v624 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      v625 = *(v5 + 1752);
      if (v625 >= 0)
      {
        v626 = *(v5 + 1752);
      }

      else
      {
        v626 = -v625;
      }

      sprintf1da(v4, v626, __dst, 0, (v625 >> 15) & 1);
      v627 = (*v4)++;
      *v627 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      v628 = *(v5 + 1754);
      if (v628 >= 0)
      {
        v629 = *(v5 + 1754);
      }

      else
      {
        v629 = -v628;
      }

      sprintf1da(v4, v629, __dst, 0, (v628 >> 15) & 1);
      v630 = (*v4)++;
      *v630 = 44;
      v631 = *v4;
      if (*v4 >= *(v4 + 24))
      {
        v631 = *(v4 + 16);
        *v4 = v631;
      }

      if (*(v5 + 1756))
      {
        v632 = *(v5 + 1757);
        if (v632 >= 0)
        {
          v633 = *(v5 + 1757);
        }

        else
        {
          v633 = -v632;
        }

        sprintf1da(v4, v633, __dst, 0, (v632 >> 7) & 1);
        v634 = (*v4)++;
        *v634 = 44;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }

        v635 = *(v5 + 1758);
        if (v635 >= 0)
        {
          v636 = *(v5 + 1758);
        }

        else
        {
          v636 = -v635;
        }

        sprintf1da(v4, v636, __dst, 0, (v635 >> 7) & 1);
        v637 = (*v4)++;
        *v637 = 44;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }

        v638 = *(v5 + 1760);
        if (v638 >= 0)
        {
          v639 = *(v5 + 1760);
        }

        else
        {
          v639 = -v638;
        }

        sprintf1da(v4, v639, __dst, 0, (v638 >> 15) & 1);
        v640 = (*v4)++;
        *v640 = 44;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }

        v641 = *(v5 + 1762);
        if (v641 >= 0)
        {
          v642 = *(v5 + 1762);
        }

        else
        {
          v642 = -v641;
        }

        sprintf1da(v4, v642, __dst, 0, (v641 >> 7) & 1);
        v643 = (*v4)++;
        *v643 = 44;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }

        v644 = *(v5 + 1763);
        if (v644 >= 0)
        {
          v645 = *(v5 + 1763);
        }

        else
        {
          v645 = -v644;
        }

        sprintf1da(v4, v645, __dst, 0, (v644 >> 7) & 1);
        v646 = (*v4)++;
        *v646 = 44;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }

        v647 = *(v5 + 1764);
        if (v647 >= 0)
        {
          v648 = *(v5 + 1764);
        }

        else
        {
          v648 = -v647;
        }

        sprintf1da(v4, v648, __dst, 0, (v647 >> 15) & 1);
        v649 = (*v4)++;
        *v649 = 44;
        v631 = *v4;
        if (*v4 >= *(v4 + 24))
        {
          v631 = *(v4 + 16);
          *v4 = v631;
        }
      }

      else
      {
        v650 = 44;
        v651 = 1u;
        do
        {
          *v4 = v631 + 1;
          *v631 = v650;
          v631 = *v4;
          if (*v4 >= *(v4 + 24))
          {
            v631 = *(v4 + 16);
            *v4 = v631;
          }

          v650 = asc_2997A00DD[v651++];
        }

        while (v651 != 7);
      }

      v652 = *(v5 + 1766);
      if (*(v5 + 1766))
      {
        if (v652 >= 0)
        {
          v653 = *(v5 + 1766);
        }

        else
        {
          v653 = -v652;
        }

        sprintf1da(v4, v653, __dst, 0, (v652 >> 15) & 1);
        v631 = *v4;
      }

      *v4 = v631 + 1;
      *v631 = 44;
      v654 = *v4;
      if (*v4 >= *(v4 + 24))
      {
        v654 = *(v4 + 16);
        *v4 = v654;
      }

      v655 = *(v5 + 1768);
      if (*(v5 + 1768))
      {
        if (v655 >= 0)
        {
          v656 = *(v5 + 1768);
        }

        else
        {
          v656 = -v655;
        }

        sprintf1da(v4, v656, __dst, 0, (v655 >> 15) & 1);
        v654 = *v4;
      }

      *v4 = v654 + 1;
      *v654 = 44;
      v657 = *v4;
      if (*v4 >= *(v4 + 24))
      {
        v657 = *(v4 + 16);
        *v4 = v657;
      }

      v658 = *(v5 + 1770);
      if (*(v5 + 1770))
      {
        if (v658 >= 0)
        {
          v659 = *(v5 + 1770);
        }

        else
        {
          v659 = -v658;
        }

        sprintf1da(v4, v659, __dst, 0, (v658 >> 15) & 1);
        v657 = *v4;
      }

      *v4 = v657 + 1;
      *v657 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      v660 = *(v5 + 1772);
      if (*(v5 + 1772))
      {
        if (v660 >= 0)
        {
          v661 = *(v5 + 1772);
        }

        else
        {
          v661 = -v660;
        }

        sprintf1da(v4, v661, __dst, 0, (v660 >> 15) & 1);
      }

      NMEA_Add_checksum(v4, v580);
      v662 = (*v4)++;
      *v662 = 36;
      v663 = *v4;
      if (*v4 >= *(v4 + 24))
      {
        v663 = *(v4 + 16);
      }

      v664 = 80;
      v665 = 1u;
      v666 = v663;
      do
      {
        *v4 = v666 + 1;
        *v666 = v664;
        v666 = *v4;
        if (*v4 >= *(v4 + 24))
        {
          v666 = *(v4 + 16);
          *v4 = v666;
        }

        v664 = aPdbgv[v665++];
      }

      while (v665 != 7);
      sprintf_HHMMSS(v4, v948);
      v667 = *v4;
      if (*(v5 + 1600))
      {
        *v4 = v667 + 1;
        *v667 = 65;
        v668 = *v4;
        if (*v4 >= *(v4 + 24))
        {
          v668 = *(v4 + 16);
        }

        *v4 = v668 + 1;
        *v668 = 44;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }

        sprintf1da(v4, *(v5 + 1601), __dst, 0, 0);
        v669 = (*v4)++;
        *v669 = 44;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }

        sprintf1da(v4, *(v5 + 1602), __dst, 0, 0);
        v670 = (*v4)++;
        *v670 = 44;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }

        v671 = *(v5 + 1608) * 100.0;
        v672 = -0.5;
        if (v671 > 0.0)
        {
          v672 = 0.5;
        }

        v673 = v671 + v672;
        if (v673 <= 2147483650.0)
        {
          if (v673 >= -2147483650.0)
          {
            v674 = v673;
          }

          else
          {
            v674 = 0x80000000;
          }
        }

        else
        {
          v674 = 0x7FFFFFFF;
        }

        sprintf_3f(v4, v674, 3);
        v677 = (*v4)++;
        *v677 = 44;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }

        v678 = *(v5 + 1616) * 100.0;
        v679 = -0.5;
        if (v678 > 0.0)
        {
          v679 = 0.5;
        }

        v680 = v678 + v679;
        if (v680 <= 2147483650.0)
        {
          if (v680 >= -2147483650.0)
          {
            v681 = v680;
          }

          else
          {
            v681 = 0x80000000;
          }
        }

        else
        {
          v681 = 0x7FFFFFFF;
        }

        sprintf_3f(v4, v681, 3);
        v682 = (*v4)++;
        *v682 = 44;
        v667 = *v4;
        if (*v4 >= *(v4 + 24))
        {
          v667 = *(v4 + 16);
        }
      }

      else
      {
        v675 = 78;
        v676 = 1u;
        do
        {
          *v4 = v667 + 1;
          *v667 = v675;
          v667 = *v4;
          if (*v4 >= *(v4 + 24))
          {
            v667 = *(v4 + 16);
            *v4 = v667;
          }

          v675 = aN_2[v676++];
        }

        while (v676 != 7);
      }

      if (*(v5 + 1624))
      {
        *v4 = v667 + 1;
        *v667 = 65;
        v683 = *v4;
        if (*v4 >= *(v4 + 24))
        {
          v683 = *(v4 + 16);
        }

        *v4 = v683 + 1;
        *v683 = 44;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }

        sprintf1da(v4, *(v5 + 1625), __dst, 0, 0);
        v684 = (*v4)++;
        *v684 = 44;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }

        sprintf1da(v4, *(v5 + 1626), __dst, 0, 0);
        v685 = (*v4)++;
        *v685 = 44;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }

        v686 = *(v5 + 1632) * 100.0;
        v687 = -0.5;
        if (v686 > 0.0)
        {
          v687 = 0.5;
        }

        v688 = v686 + v687;
        if (v688 <= 2147483650.0)
        {
          if (v688 >= -2147483650.0)
          {
            v689 = v688;
          }

          else
          {
            v689 = 0x80000000;
          }
        }

        else
        {
          v689 = 0x7FFFFFFF;
        }

        sprintf_3f(v4, v689, 3);
        v692 = (*v4)++;
        *v692 = 44;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }

        v693 = *(v5 + 1640) * 100.0;
        v694 = -0.5;
        if (v693 > 0.0)
        {
          v694 = 0.5;
        }

        v695 = v693 + v694;
        if (v695 <= 2147483650.0)
        {
          if (v695 >= -2147483650.0)
          {
            v696 = v695;
          }

          else
          {
            v696 = 0x80000000;
          }
        }

        else
        {
          v696 = 0x7FFFFFFF;
        }

        sprintf_3f(v4, v696, 3);
        v697 = (*v4)++;
        *v697 = 44;
        v667 = *v4;
        if (*v4 >= *(v4 + 24))
        {
          v667 = *(v4 + 16);
        }
      }

      else
      {
        v690 = 78;
        v691 = 1u;
        do
        {
          *v4 = v667 + 1;
          *v667 = v690;
          v667 = *v4;
          if (*v4 >= *(v4 + 24))
          {
            v667 = *(v4 + 16);
            *v4 = v667;
          }

          v690 = aN_2[v691++];
        }

        while (v691 != 7);
      }

      if (*(v5 + 1648))
      {
        *v4 = v667 + 1;
        *v667 = 65;
        v698 = *v4;
        if (*v4 >= *(v4 + 24))
        {
          v698 = *(v4 + 16);
        }

        *v4 = v698 + 1;
        *v698 = 44;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }

        sprintf1da(v4, *(v5 + 1649), __dst, 0, 0);
        v699 = (*v4)++;
        *v699 = 44;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }

        sprintf1da(v4, *(v5 + 1650), __dst, 0, 0);
        v700 = (*v4)++;
        *v700 = 44;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }

        v701 = *(v5 + 1656) * 100.0;
        v702 = -0.5;
        if (v701 > 0.0)
        {
          v702 = 0.5;
        }

        v703 = v701 + v702;
        if (v703 <= 2147483650.0)
        {
          if (v703 >= -2147483650.0)
          {
            v704 = v703;
          }

          else
          {
            v704 = 0x80000000;
          }
        }

        else
        {
          v704 = 0x7FFFFFFF;
        }

        sprintf_3f(v4, v704, 3);
        v707 = (*v4)++;
        *v707 = 44;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }

        v708 = *(v5 + 1664) * 100.0;
        v709 = -0.5;
        if (v708 > 0.0)
        {
          v709 = 0.5;
        }

        v710 = v708 + v709;
        if (v710 <= 2147483650.0)
        {
          if (v710 >= -2147483650.0)
          {
            v711 = v710;
          }

          else
          {
            v711 = 0x80000000;
          }
        }

        else
        {
          v711 = 0x7FFFFFFF;
        }

        sprintf_3f(v4, v711, 3);
        v712 = (*v4)++;
        *v712 = 44;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }
      }

      else
      {
        v705 = 78;
        v706 = 1u;
        do
        {
          *v4 = v667 + 1;
          *v667 = v705;
          v667 = *v4;
          if (*v4 >= *(v4 + 24))
          {
            v667 = *(v4 + 16);
            *v4 = v667;
          }

          v705 = aN_5[v706++];
        }

        while (v706 != 6);
      }

      NMEA_Add_checksum(v4, v663);
      v713 = (*v4)++;
      *v713 = 36;
      v714 = *v4;
      if (*v4 >= *(v4 + 24))
      {
        v714 = *(v4 + 16);
      }

      v715 = 80;
      v716 = 1u;
      v717 = v714;
      do
      {
        *v4 = v717 + 1;
        *v717 = v715;
        v717 = *v4;
        if (*v4 >= *(v4 + 24))
        {
          v717 = *(v4 + 16);
          *v4 = v717;
        }

        v715 = aPdbgx[v716++];
      }

      while (v716 != 7);
      sprintf_HHMMSS(v4, v948);
      v718 = *(v5 + 1776) * 100.0;
      v719 = -0.5;
      if (v718 > 0.0)
      {
        v719 = 0.5;
      }

      v720 = v718 + v719;
      if (v720 <= 2147483650.0)
      {
        if (v720 >= -2147483650.0)
        {
          v721 = v720;
        }

        else
        {
          v721 = 0x80000000;
        }
      }

      else
      {
        v721 = 0x7FFFFFFF;
      }

      sprintf_3f(v4, v721, 3);
      v722 = (*v4)++;
      *v722 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      v723 = *(v5 + 1784) * 100.0;
      v724 = -0.5;
      if (v723 > 0.0)
      {
        v724 = 0.5;
      }

      v725 = v723 + v724;
      if (v725 <= 2147483650.0)
      {
        if (v725 >= -2147483650.0)
        {
          v726 = v725;
        }

        else
        {
          v726 = 0x80000000;
        }
      }

      else
      {
        v726 = 0x7FFFFFFF;
      }

      sprintf_3f(v4, v726, 3);
      v727 = (*v4)++;
      *v727 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      v728 = *(v5 + 1792) * 100.0;
      v729 = -0.5;
      if (v728 > 0.0)
      {
        v729 = 0.5;
      }

      v730 = v728 + v729;
      if (v730 <= 2147483650.0)
      {
        if (v730 >= -2147483650.0)
        {
          v731 = v730;
        }

        else
        {
          v731 = 0x80000000;
        }
      }

      else
      {
        v731 = 0x7FFFFFFF;
      }

      sprintf_3f(v4, v731, 3);
      v732 = (*v4)++;
      *v732 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      v733 = *(v5 + 1800) * 100.0;
      v734 = -0.5;
      if (v733 > 0.0)
      {
        v734 = 0.5;
      }

      v735 = v733 + v734;
      if (v735 <= 2147483650.0)
      {
        if (v735 >= -2147483650.0)
        {
          v736 = v735;
        }

        else
        {
          v736 = 0x80000000;
        }
      }

      else
      {
        v736 = 0x7FFFFFFF;
      }

      sprintf_3f(v4, v736, 3);
      v737 = (*v4)++;
      *v737 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      v738 = *(v5 + 1808) * 1000.0;
      v739 = -0.5;
      if (v738 > 0.0)
      {
        v739 = 0.5;
      }

      v740 = v738 + v739;
      if (v740 <= 2147483650.0)
      {
        if (v740 >= -2147483650.0)
        {
          v741 = v740;
        }

        else
        {
          v741 = 0x80000000;
        }
      }

      else
      {
        v741 = 0x7FFFFFFF;
      }

      sprintf_4f(v4, v741, 4);
      v742 = (*v4)++;
      *v742 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      v743 = *(v5 + 1816) * 1000.0;
      v744 = -0.5;
      if (v743 > 0.0)
      {
        v744 = 0.5;
      }

      v745 = v743 + v744;
      if (v745 <= 2147483650.0)
      {
        if (v745 >= -2147483650.0)
        {
          v746 = v745;
        }

        else
        {
          v746 = 0x80000000;
        }
      }

      else
      {
        v746 = 0x7FFFFFFF;
      }

      sprintf_4f(v4, v746, 4);
      v747 = (*v4)++;
      *v747 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      v748 = *(v5 + 1824) * 1000.0;
      v749 = -0.5;
      if (v748 > 0.0)
      {
        v749 = 0.5;
      }

      v750 = v748 + v749;
      if (v750 <= 2147483650.0)
      {
        if (v750 >= -2147483650.0)
        {
          v751 = v750;
        }

        else
        {
          v751 = 0x80000000;
        }
      }

      else
      {
        v751 = 0x7FFFFFFF;
      }

      sprintf_4f(v4, v751, 4);
      v752 = (*v4)++;
      *v752 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      v753 = *(v5 + 1832) * 1000.0;
      v754 = -0.5;
      if (v753 > 0.0)
      {
        v754 = 0.5;
      }

      v755 = v753 + v754;
      if (v755 <= 2147483650.0)
      {
        if (v755 >= -2147483650.0)
        {
          v756 = v755;
        }

        else
        {
          v756 = 0x80000000;
        }
      }

      else
      {
        v756 = 0x7FFFFFFF;
      }

      sprintf_4f(v4, v756, 4);
      v757 = (*v4)++;
      *v757 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      v758 = *(v5 + 1840) * 1000.0;
      v759 = -0.5;
      if (v758 > 0.0)
      {
        v759 = 0.5;
      }

      v760 = v758 + v759;
      if (v760 <= 2147483650.0)
      {
        if (v760 >= -2147483650.0)
        {
          v761 = v760;
        }

        else
        {
          v761 = 0x80000000;
        }
      }

      else
      {
        v761 = 0x7FFFFFFF;
      }

      sprintf_4f(v4, v761, 4);
      v762 = (*v4)++;
      *v762 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      v763 = *(v5 + 1848) * 10.0;
      v764 = -0.5;
      if (v763 > 0.0)
      {
        v764 = 0.5;
      }

      v765 = v763 + v764;
      if (v765 <= 2147483650.0)
      {
        if (v765 >= -2147483650.0)
        {
          v766 = v765;
        }

        else
        {
          v766 = 0x80000000;
        }
      }

      else
      {
        v766 = 0x7FFFFFFF;
      }

      sprintf_2f(v4, v766);
      v767 = (*v4)++;
      *v767 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      v768 = *(v5 + 1856) * 10.0;
      v769 = -0.5;
      if (v768 > 0.0)
      {
        v769 = 0.5;
      }

      v770 = v768 + v769;
      if (v770 <= 2147483650.0)
      {
        if (v770 >= -2147483650.0)
        {
          v771 = v770;
        }

        else
        {
          v771 = 0x80000000;
        }
      }

      else
      {
        v771 = 0x7FFFFFFF;
      }

      sprintf_2f(v4, v771);
      v772 = (*v4)++;
      *v772 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      v773 = *(v5 + 1864) * 10.0;
      v774 = -0.5;
      if (v773 > 0.0)
      {
        v774 = 0.5;
      }

      v775 = v773 + v774;
      if (v775 <= 2147483650.0)
      {
        if (v775 >= -2147483650.0)
        {
          v776 = v775;
        }

        else
        {
          v776 = 0x80000000;
        }
      }

      else
      {
        v776 = 0x7FFFFFFF;
      }

      sprintf_2f(v4, v776);
      v777 = (*v4)++;
      *v777 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      v778 = *(v5 + 1872) * 10.0;
      v779 = -0.5;
      if (v778 > 0.0)
      {
        v779 = 0.5;
      }

      v780 = v778 + v779;
      if (v780 <= 2147483650.0)
      {
        if (v780 >= -2147483650.0)
        {
          v781 = v780;
        }

        else
        {
          v781 = 0x80000000;
        }
      }

      else
      {
        v781 = 0x7FFFFFFF;
      }

      sprintf_2f(v4, v781);
      v782 = (*v4)++;
      *v782 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      v783 = *(v5 + 1880) * 10.0;
      v784 = -0.5;
      if (v783 > 0.0)
      {
        v784 = 0.5;
      }

      v785 = v783 + v784;
      if (v785 <= 2147483650.0)
      {
        if (v785 >= -2147483650.0)
        {
          v786 = v785;
        }

        else
        {
          v786 = 0x80000000;
        }
      }

      else
      {
        v786 = 0x7FFFFFFF;
      }

      sprintf_2f(v4, v786);
      v787 = (*v4)++;
      *v787 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      v788 = *(v5 + 1888) * 10.0;
      v789 = -0.5;
      if (v788 > 0.0)
      {
        v789 = 0.5;
      }

      v790 = v788 + v789;
      if (v790 <= 2147483650.0)
      {
        if (v790 >= -2147483650.0)
        {
          v791 = v790;
        }

        else
        {
          v791 = 0x80000000;
        }
      }

      else
      {
        v791 = 0x7FFFFFFF;
      }

      sprintf_2f(v4, v791);
      v792 = (*v4)++;
      *v792 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      v793 = *(v5 + 1896) * 10.0;
      v794 = -0.5;
      if (v793 > 0.0)
      {
        v794 = 0.5;
      }

      v795 = v793 + v794;
      if (v795 <= 2147483650.0)
      {
        if (v795 >= -2147483650.0)
        {
          v796 = v795;
        }

        else
        {
          v796 = 0x80000000;
        }
      }

      else
      {
        v796 = 0x7FFFFFFF;
      }

      sprintf_2f(v4, v796);
      v797 = (*v4)++;
      *v797 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      sprintf1da(v4, *(v5 + 1904), __dst, 0, 0);
      v798 = (*v4)++;
      *v798 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      v799 = *(v5 + 1912) * 10.0;
      v800 = -0.5;
      if (v799 > 0.0)
      {
        v800 = 0.5;
      }

      v801 = v799 + v800;
      if (v801 <= 2147483650.0)
      {
        if (v801 >= -2147483650.0)
        {
          v802 = v801;
        }

        else
        {
          v802 = 0x80000000;
        }
      }

      else
      {
        v802 = 0x7FFFFFFF;
      }

      sprintf_2f(v4, v802);
      v803 = (*v4)++;
      *v803 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      v804 = *(v5 + 1920) * 10.0;
      v805 = -0.5;
      if (v804 > 0.0)
      {
        v805 = 0.5;
      }

      v806 = v804 + v805;
      if (v806 <= 2147483650.0)
      {
        if (v806 >= -2147483650.0)
        {
          v807 = v806;
        }

        else
        {
          v807 = 0x80000000;
        }
      }

      else
      {
        v807 = 0x7FFFFFFF;
      }

      sprintf_2f(v4, v807);
      v808 = (*v4)++;
      *v808 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      v809 = *(v5 + 1928) * 10.0;
      v810 = -0.5;
      if (v809 > 0.0)
      {
        v810 = 0.5;
      }

      v811 = v809 + v810;
      if (v811 <= 2147483650.0)
      {
        if (v811 >= -2147483650.0)
        {
          v812 = v811;
        }

        else
        {
          v812 = 0x80000000;
        }
      }

      else
      {
        v812 = 0x7FFFFFFF;
      }

      sprintf_2f(v4, v812);
      v813 = (*v4)++;
      *v813 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      v814 = *(v5 + 1936) * 10.0;
      v815 = -0.5;
      if (v814 > 0.0)
      {
        v815 = 0.5;
      }

      v816 = v814 + v815;
      if (v816 <= 2147483650.0)
      {
        if (v816 >= -2147483650.0)
        {
          v817 = v816;
        }

        else
        {
          v817 = 0x80000000;
        }
      }

      else
      {
        v817 = 0x7FFFFFFF;
      }

      sprintf_2f(v4, v817);
      v818 = (*v4)++;
      *v818 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      v819 = *(v948 + 48) * 1000000000.0 * 10.0;
      v820 = -0.5;
      if (v819 > 0.0)
      {
        v820 = 0.5;
      }

      v821 = v819 + v820;
      if (v821 <= 2147483650.0)
      {
        if (v821 >= -2147483650.0)
        {
          v822 = v821;
        }

        else
        {
          v822 = 0x80000000;
        }
      }

      else
      {
        v822 = 0x7FFFFFFF;
      }

      sprintf_2f(v4, v822);
      v823 = (*v4)++;
      *v823 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      sprintf_AccEst(v4, *(v948 + 160) * 1000000000.0);
      v824 = (*v4)++;
      *v824 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      v825 = *(v948 + 56) * 1000000000.0 * 10.0;
      v826 = -0.5;
      if (v825 > 0.0)
      {
        v826 = 0.5;
      }

      v827 = v825 + v826;
      if (v827 <= 2147483650.0)
      {
        if (v827 >= -2147483650.0)
        {
          v828 = v827;
        }

        else
        {
          v828 = 0x80000000;
        }
      }

      else
      {
        v828 = 0x7FFFFFFF;
      }

      sprintf_2f(v4, v828);
      v829 = (*v4)++;
      *v829 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      sprintf_AccEst(v4, *(v948 + 168) * 1000000000.0);
      NMEA_Add_checksum(v4, v714);
      v830 = (*v4)++;
      *v830 = 36;
      v831 = *v4;
      if (*v4 >= *(v4 + 24))
      {
        v831 = *(v4 + 16);
      }

      v832 = 80;
      v833 = 1u;
      v834 = v831;
      do
      {
        *v4 = v834 + 1;
        *v834 = v832;
        v834 = *v4;
        if (*v4 >= *(v4 + 24))
        {
          v834 = *(v4 + 16);
          *v4 = v834;
        }

        v832 = aPdbgy[v833++];
      }

      while (v833 != 7);
      sprintf_HHMMSS(v4, v948);
      sprintf1da(v4, *(v5 + 1944), __dst, 0, 0);
      v835 = (*v4)++;
      *v835 = 46;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      sprintf1da(v4, *(v5 + 1946), __dst, 0, 0);
      v836 = (*v4)++;
      *v836 = 46;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      sprintf_2d(v4, *(v5 + 1947));
      v837 = (*v4)++;
      *v837 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      sprintf1da(v4, *(v5 + 1948), __dst, 0, 0);
      v838 = (*v4)++;
      *v838 = 46;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      sprintf_2d(v4, *(v5 + 1950));
      v839 = (*v4)++;
      *v839 = 46;
      v840 = *v4;
      if (*v4 >= *(v4 + 24))
      {
        v840 = *(v4 + 16);
      }

      v841 = *(v5 + 1951);
      *v4 = v840 + 1;
      *v840 = v841;
      v842 = *v4;
      if (*v4 >= *(v4 + 24))
      {
        v842 = *(v4 + 16);
      }

      *v4 = v842 + 1;
      *v842 = 46;
      v843 = *v4;
      if (*v4 >= *(v4 + 24))
      {
        v843 = *(v4 + 16);
        *v4 = v843;
      }

      v844 = *(v5 + 1952);
      if (v844)
      {
        v845 = (v5 + 1953);
        do
        {
          *v4 = v843 + 1;
          *v843 = v844;
          v843 = *v4;
          if (*v4 >= *(v4 + 24))
          {
            v843 = *(v4 + 16);
            *v4 = v843;
          }

          v846 = *v845++;
          v844 = v846;
        }

        while (v846);
      }

      *v4 = v843 + 1;
      *v843 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      v847 = *(v5 + 1960);
      if (v847 >= 0)
      {
        v848 = *(v5 + 1960);
      }

      else
      {
        v848 = -v847;
      }

      sprintf1da(v4, v848, __dst, 0, v847 >> 31);
      v849 = (*v4)++;
      *v849 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      v850 = *(v5 + 1964);
      if (v850 >= 0)
      {
        v851 = *(v5 + 1964);
      }

      else
      {
        v851 = -v850;
      }

      sprintf1da(v4, v851, __dst, 0, v850 >> 31);
      v852 = (*v4)++;
      *v852 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      sprintf1da(v4, *(v5 + 1968), __dst, 0, 0);
      v853 = (*v4)++;
      *v853 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      sprintf1da(v4, *(v5 + 1969), __dst, 0, 0);
      v854 = (*v4)++;
      *v854 = 44;
      v855 = *v4;
      if (*v4 >= *(v4 + 24))
      {
        v855 = *(v4 + 16);
      }

      v856 = 0;
      v857 = 48;
      do
      {
        *v4 = v855 + 1;
        *v855 = v857;
        v855 = *v4;
        if (*v4 >= *(v4 + 24))
        {
          v855 = *(v4 + 16);
          *v4 = v855;
        }

        v857 = a0x_0[++v856];
      }

      while (v856 != 2);
      sprintf_1X(v4, *(v5 + 1970));
      v858 = (*v4)++;
      *v858 = 44;
      v859 = *v4;
      if (*v4 >= *(v4 + 24))
      {
        v859 = *(v4 + 16);
      }

      v860 = 0;
      v861 = 48;
      do
      {
        *v4 = v859 + 1;
        *v859 = v861;
        v859 = *v4;
        if (*v4 >= *(v4 + 24))
        {
          v859 = *(v4 + 16);
          *v4 = v859;
        }

        v861 = a0x_0[++v860];
      }

      while (v860 != 2);
      sprintf_1X(v4, *(v5 + 1971));
      v862 = (*v4)++;
      *v862 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      sprintf1da(v4, *(v5 + 1972), __dst, 0, 0);
      v863 = (*v4)++;
      *v863 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      nzet(v4, 0xAu, __dst, 0, 0, 0);
      v864 = (*v4)++;
      *v864 = 44;
      if (*v4 >= *(v4 + 24))
      {
        *v4 = *(v4 + 16);
      }

      v865 = *(v5 + 1980) - *(v5 + 1976);
      if (v865 >= 0)
      {
        v866 = *(v5 + 1980) - *(v5 + 1976);
      }

      else
      {
        v866 = *(v5 + 1976) - *(v5 + 1980);
      }

      sprintf1da(v4, v866, __dst, 0, v865 >> 31);
      for (k = 1984; k != 2020; k += 4)
      {
        v868 = (*v4)++;
        *v868 = 44;
        if (*v4 >= *(v4 + 24))
        {
          *v4 = *(v4 + 16);
        }

        v869 = *(a4 + k) - *(a4 + 1976);
        if (v869 >= 0)
        {
          v870 = *(a4 + k) - *(a4 + 1976);
        }

        else
        {
          v870 = *(a4 + 1976) - *(a4 + k);
        }

        sprintf1da(v4, v870, __dst, 0, v869 >> 31);
      }

      result = NMEA_Add_checksum(v4, v831);
      v871 = a4;
      if ((*(a4 + 2023) & 1) != 0 || (*(a4 + 2076) & 1) != 0 || *(a4 + 2089) == 1)
      {
        v872 = (*v4)++;
        *v872 = 36;
        v873 = *v4;
        if (*v4 >= *(v4 + 24))
        {
          v873 = *(v4 + 16);
        }

        v874 = 80;
        v875 = 1u;
        v876 = v873;
        do
        {
          *v4 = v876 + 1;
          *v876 = v874;
          v876 = *v4;
          if (*v4 >= *(v4 + 24))
          {
            v876 = *(v4 + 16);
            *v4 = v876;
          }

          v874 = aPdbgg[v875++];
        }

        while (v875 != 7);
        sprintf_HHMMSS(v4, v948);
        if (*(a4 + 2089) == 1)
        {
          sprintf1da(v4, *(a4 + 2078), __dst, 0, 0);
          if (*(a4 + 2080) >= 0x63u)
          {
            v877 = 99;
          }

          else
          {
            v877 = *(a4 + 2080);
          }

          sprintf_02d(v4, v877);
          v878 = (*v4)++;
          *v878 = 44;
          if (*v4 >= *(v4 + 24))
          {
            *v4 = *(v4 + 16);
          }

          sprintf1da(v4, *(a4 + 2082), __dst, 0, 0);
          if (*(a4 + 2084) >= 0x63u)
          {
            v879 = 99;
          }

          else
          {
            v879 = *(a4 + 2084);
          }

          sprintf_02d(v4, v879);
          v880 = (*v4)++;
          *v880 = 44;
          if (*v4 >= *(v4 + 24))
          {
            *v4 = *(v4 + 16);
          }

          v871 = a4;
          sprintf1da(v4, *(a4 + 2086), __dst, 0, 0);
          if (*(a4 + 2086) >= 0x63u)
          {
            v881 = 99;
          }

          else
          {
            v881 = *(a4 + 2086);
          }

          sprintf_02d(v4, v881);
          v882 = (*v4)++;
          *v882 = 44;
          v883 = *v4;
          if (*v4 >= *(v4 + 24))
          {
            v883 = *(v4 + 16);
            *v4 = v883;
          }
        }

        else
        {
          v883 = *v4;
          v884 = 44;
          v885 = 1u;
          do
          {
            *v4 = v883 + 1;
            *v883 = v884;
            v883 = *v4;
            if (*v4 >= *(v4 + 24))
            {
              v883 = *(v4 + 16);
              *v4 = v883;
            }

            v884 = asc_2997A0153[v885++];
          }

          while (v885 != 4);
        }

        if (*(v871 + 2023) == 1)
        {
          v886 = 0;
          v887 = 66;
          do
          {
            *v4 = v883 + 1;
            *v883 = v887;
            v883 = *v4;
            if (*v4 >= *(v4 + 24))
            {
              v883 = *(v4 + 16);
              *v4 = v883;
            }

            v887 = aB[++v886];
          }

          while (v886 != 2);
          sprintf1da(v4, *(v871 + 2020), __dst, 0, 0);
          if (*(v871 + 2022) >= 0x63u)
          {
            v888 = 99;
          }

          else
          {
            v888 = *(v871 + 2022);
          }

          sprintf_02d(v4, v888);
        }

        else if (*(v871 + 2076) == 1)
        {
          v889 = 0;
          v890 = 69;
          do
          {
            *v4 = v883 + 1;
            *v883 = v890;
            v883 = *v4;
            if (*v4 >= *(v4 + 24))
            {
              v883 = *(v4 + 16);
              *v4 = v883;
            }

            v890 = aE_0[++v889];
          }

          while (v889 != 2);
          sprintf1da(v4, *(v871 + 2024), __dst, 0, 0);
          v891 = (*v4)++;
          *v891 = 44;
          if (*v4 >= *(v4 + 24))
          {
            *v4 = *(v4 + 16);
          }

          sprintf1da(v4, *(v871 + 2025), __dst, 0, 0);
          v892 = (*v4)++;
          *v892 = 44;
          if (*v4 >= *(v4 + 24))
          {
            *v4 = *(v4 + 16);
          }

          sprintf1da(v4, *(v871 + 2026), __dst, 0, 0);
          v893 = (*v4)++;
          *v893 = 44;
          if (*v4 >= *(v4 + 24))
          {
            *v4 = *(v4 + 16);
          }

          sprintf1da(v4, *(v871 + 2028), __dst, 0, 0);
          v894 = (*v4)++;
          *v894 = 44;
          if (*v4 >= *(v4 + 24))
          {
            *v4 = *(v4 + 16);
          }

          sprintf1da(v4, *(v871 + 2030), __dst, 0, 0);
          v895 = (*v4)++;
          *v895 = 44;
          if (*v4 >= *(v4 + 24))
          {
            *v4 = *(v4 + 16);
          }

          sprintf1da(v4, *(v871 + 2032), __dst, 0, 0);
          v896 = (*v4)++;
          *v896 = 44;
          if (*v4 >= *(v4 + 24))
          {
            *v4 = *(v4 + 16);
          }

          sprintf1da(v4, *(v871 + 2034), __dst, 0, 0);
          v897 = (*v4)++;
          *v897 = 44;
          if (*v4 >= *(v4 + 24))
          {
            *v4 = *(v4 + 16);
          }

          if (*(v871 + 2056) >= 0x63u)
          {
            v898 = 99;
          }

          else
          {
            v898 = *(v871 + 2056);
          }

          sprintf_02d(v4, v898);
          if (*(v871 + 2057) >= 0x63u)
          {
            v899 = 99;
          }

          else
          {
            v899 = *(v871 + 2057);
          }

          sprintf_02d(v4, v899);
          if (*(v871 + 2058) >= 0x63u)
          {
            v900 = 99;
          }

          else
          {
            v900 = *(v871 + 2058);
          }

          sprintf_02d(v4, v900);
          if (*(v871 + 2059) >= 0x63u)
          {
            v901 = 99;
          }

          else
          {
            v901 = *(v871 + 2059);
          }

          sprintf_02d(v4, v901);
          if (*(v871 + 2060) >= 0x63u)
          {
            v902 = 99;
          }

          else
          {
            v902 = *(v871 + 2060);
          }

          sprintf_02d(v4, v902);
          v903 = (*v4)++;
          *v903 = 44;
          if (*v4 >= *(v4 + 24))
          {
            *v4 = *(v4 + 16);
          }

          sprintf1da(v4, *(a4 + 2038), __dst, 0, 0);
          v904 = (*v4)++;
          *v904 = 44;
          if (*v4 >= *(v4 + 24))
          {
            *v4 = *(v4 + 16);
          }

          sprintf1da(v4, *(a4 + 2042), __dst, 0, 0);
          v905 = (*v4)++;
          *v905 = 44;
          if (*v4 >= *(v4 + 24))
          {
            *v4 = *(v4 + 16);
          }

          sprintf1da(v4, *(a4 + 2044), __dst, 0, 0);
          v906 = (*v4)++;
          *v906 = 44;
          if (*v4 >= *(v4 + 24))
          {
            *v4 = *(v4 + 16);
          }

          if (*(a4 + 2062) >= 0x63u)
          {
            v907 = 99;
          }

          else
          {
            v907 = *(a4 + 2062);
          }

          sprintf_02d(v4, v907);
          if (*(a4 + 2064) >= 0x63u)
          {
            v908 = 99;
          }

          else
          {
            v908 = *(a4 + 2064);
          }

          sprintf_02d(v4, v908);
          if (*(a4 + 2065) >= 0x63u)
          {
            v909 = 99;
          }

          else
          {
            v909 = *(a4 + 2065);
          }

          sprintf_02d(v4, v909);
          v910 = (*v4)++;
          *v910 = 44;
          if (*v4 >= *(v4 + 24))
          {
            *v4 = *(v4 + 16);
          }

          v871 = a4;
          sprintf1da(v4, *(a4 + 2048), __dst, 0, 0);
          v911 = (*v4)++;
          *v911 = 44;
          if (*v4 >= *(v4 + 24))
          {
            *v4 = *(v4 + 16);
          }

          sprintf1da(v4, *(a4 + 2050), __dst, 0, 0);
          v912 = (*v4)++;
          *v912 = 44;
          if (*v4 >= *(v4 + 24))
          {
            *v4 = *(v4 + 16);
          }

          sprintf1da(v4, *(a4 + 2052), __dst, 0, 0);
          v913 = (*v4)++;
          *v913 = 44;
          if (*v4 >= *(v4 + 24))
          {
            *v4 = *(v4 + 16);
          }

          sprintf1da(v4, *(a4 + 2054), __dst, 0, 0);
          v914 = (*v4)++;
          *v914 = 44;
          if (*v4 >= *(v4 + 24))
          {
            *v4 = *(v4 + 16);
          }

          if (*(a4 + 2067) >= 0x63u)
          {
            v915 = 99;
          }

          else
          {
            v915 = *(a4 + 2067);
          }

          sprintf_02d(v4, v915);
          if (*(a4 + 2068) >= 0x63u)
          {
            v916 = 99;
          }

          else
          {
            v916 = *(a4 + 2068);
          }

          sprintf_02d(v4, v916);
          if (*(a4 + 2069) >= 0x63u)
          {
            v917 = 99;
          }

          else
          {
            v917 = *(a4 + 2069);
          }

          sprintf_02d(v4, v917);
          if (*(a4 + 2070) >= 0x63u)
          {
            v918 = 99;
          }

          else
          {
            v918 = *(a4 + 2070);
          }

          sprintf_02d(v4, v918);
          v919 = (*v4)++;
          *v919 = 44;
          v920 = *v4;
          if (*v4 >= *(v4 + 24))
          {
            v920 = *(v4 + 16);
          }

          v921 = 0;
          v922 = 48;
          do
          {
            *v4 = v920 + 1;
            *v920 = v922;
            v920 = *v4;
            if (*v4 >= *(v4 + 24))
            {
              v920 = *(v4 + 16);
              *v4 = v920;
            }

            v922 = a0x_0[++v921];
          }

          while (v921 != 2);
          sprintf_08x(v4, *(a4 + 2072));
        }

        result = NMEA_Add_checksum(v4, v873);
      }

      v923 = v948;
      if (*(v871 + 2208) == 1)
      {
        result = NMEA_Encode_PDBGR(v4, v948, v871);
        v923 = v948;
      }

      if (*(v871 + 2106) == 1)
      {
        result = NMEA_Encode_PDBGN(v4, v923, v871);
      }

      v924 = *(v871 + 2212);
      if (v924)
      {
        v925 = *v4;
        v926 = (v871 + 2213);
        do
        {
          *v4 = v925 + 1;
          *v925 = v924;
          v925 = *v4;
          if (*v4 >= *(v4 + 24))
          {
            v925 = *(v4 + 16);
            *v4 = v925;
          }

          v927 = *v926++;
          v924 = v927;
        }

        while (v927);
      }
    }

    word_2A197179A = 0;
  }

LABEL_1805:
  v928 = *MEMORY[0x29EDCA608];
  return result;
}

char **NMEA_Encode_PDBGE_Constell(char **a1, int a2, uint64_t a3, uint64_t a4)
{
  v58 = *MEMORY[0x29EDCA608];
  v7 = (*a1)++;
  *v7 = 36;
  v8 = *a1;
  if (*a1 >= a1[3])
  {
    v8 = a1[2];
  }

  v9 = 80;
  v10 = 1u;
  v11 = v8;
  do
  {
    *a1 = v11 + 1;
    *v11 = v9;
    v11 = *a1;
    if (*a1 >= a1[3])
    {
      v11 = a1[2];
      *a1 = v11;
    }

    v9 = aPdbge[v10++];
  }

  while (v10 != 7);
  sprintf_HHMMSS(a1, a3);
  v12 = a2 - 1;
  v13 = qword_29972B030[v12];
  v14 = qword_29972B060[v12];
  v15 = qword_29972B090[v12];
  v16 = qword_29972B0C0[v12];
  v17 = qword_29972B0F0[v12];
  v18 = qword_29972B120[v12];
  v19 = qword_29972B150[v12];
  v20 = qword_29972B180[v12];
  v21 = qword_29972B1B0[v12];
  v22 = qword_29972B1E0[v12];
  v23 = off_29EF51B48[v12];
  v24 = *(a4 + qword_29972B000[v12]);
  v25 = *v23;
  v26 = *(a4 + v13);
  v27 = *(a4 + v14);
  v28 = *(a4 + v15);
  v29 = *(a4 + v16);
  v30 = *(a4 + v17);
  v31 = *(a4 + v18);
  v32 = *(a4 + v19);
  v56 = *(a4 + v20);
  v33 = *(a4 + v21);
  v34 = *(a4 + v22);
  if (*v23)
  {
    v35 = *a1;
    v36 = (v23 + 1);
    do
    {
      *a1 = v35 + 1;
      *v35 = v25;
      v35 = *a1;
      if (*a1 >= a1[3])
      {
        v35 = a1[2];
        *a1 = v35;
      }

      v37 = *v36++;
      v25 = v37;
    }

    while (v37);
  }

  sprintf1da(a1, v24, v57, 0, 0);
  v38 = (*a1)++;
  *v38 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf1da(a1, v26, v57, 0, 0);
  v39 = (*a1)++;
  *v39 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf1da(a1, v27, v57, 0, 0);
  v40 = (*a1)++;
  *v40 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf1da(a1, v28, v57, 0, 0);
  v41 = (*a1)++;
  *v41 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf1da(a1, v29, v57, 0, 0);
  v42 = (*a1)++;
  *v42 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf1da(a1, v30, v57, 0, 0);
  v43 = (*a1)++;
  *v43 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf1da(a1, v31, v57, 0, 0);
  v44 = (*a1)++;
  *v44 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf1da(a1, v32, v57, 0, 0);
  v45 = (*a1)++;
  *v45 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf1da(a1, v56, v57, 0, 0);
  v46 = (*a1)++;
  *v46 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  v47 = -0.5;
  if (v33 * 100.0 > 0.0)
  {
    v47 = 0.5;
  }

  v48 = v33 * 100.0 + v47;
  if (v48 <= 2147483650.0)
  {
    if (v48 >= -2147483650.0)
    {
      v49 = v48;
    }

    else
    {
      v49 = 0x80000000;
    }
  }

  else
  {
    v49 = 0x7FFFFFFF;
  }

  sprintf_3f(a1, v49, 3);
  v50 = (*a1)++;
  *v50 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  v51 = -0.5;
  if (v34 * 100.0 > 0.0)
  {
    v51 = 0.5;
  }

  v52 = v34 * 100.0 + v51;
  if (v52 <= 2147483650.0)
  {
    if (v52 >= -2147483650.0)
    {
      v53 = v52;
    }

    else
    {
      v53 = 0x80000000;
    }
  }

  else
  {
    v53 = 0x7FFFFFFF;
  }

  sprintf_3f(a1, v53, 3);
  v54 = *MEMORY[0x29EDCA608];

  return NMEA_Add_checksum(a1, v8);
}

char **NMEA_Encode_PDBGI_Constell(char **a1, int a2, uint64_t a3, uint64_t a4)
{
  v74 = *MEMORY[0x29EDCA608];
  v7 = (*a1)++;
  *v7 = 36;
  v8 = *a1;
  if (*a1 >= a1[3])
  {
    v8 = a1[2];
  }

  v9 = 80;
  v10 = 1u;
  v11 = v8;
  do
  {
    *a1 = v11 + 1;
    *v11 = v9;
    v11 = *a1;
    if (*a1 >= a1[3])
    {
      v11 = a1[2];
      *a1 = v11;
    }

    v9 = aPdbgi[v10++];
  }

  while (v10 != 7);
  sprintf_HHMMSS(a1, a3);
  v12 = a2 - 1;
  v13 = qword_29972B210[v12];
  v14 = off_29EF51B48[v12];
  v15 = a4 + v13;
  v16 = *(v15 + 80);
  v69 = *(v15 + 64);
  v70 = v16;
  v71 = *(v15 + 96);
  v72 = *(v15 + 112);
  v17 = *(v15 + 16);
  v68[0] = *v15;
  v68[1] = v17;
  v18 = *(v15 + 48);
  v68[2] = *(v15 + 32);
  v68[3] = v18;
  v19 = *v14;
  if (*v14)
  {
    v20 = *a1;
    v21 = (v14 + 1);
    do
    {
      *a1 = v20 + 1;
      *v20 = v19;
      v20 = *a1;
      if (*a1 >= a1[3])
      {
        v20 = a1[2];
        *a1 = v20;
      }

      v22 = *v21++;
      v19 = v22;
    }

    while (v22);
  }

  sprintf1da(a1, BYTE1(v68[0]), v73, 0, 0);
  v23 = (*a1)++;
  *v23 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf1da(a1, BYTE2(v68[0]), v73, 0, 0);
  v24 = (*a1)++;
  *v24 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf1da(a1, BYTE3(v68[0]), v73, 0, 0);
  v25 = (*a1)++;
  *v25 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf1da(a1, BYTE4(v68[0]), v73, 0, 0);
  v26 = (*a1)++;
  *v26 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf1da(a1, BYTE6(v68[0]), v73, 0, 0);
  v27 = (*a1)++;
  *v27 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf1da(a1, BYTE7(v68[0]), v73, 0, 0);
  v28 = (*a1)++;
  *v28 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf1da(a1, BYTE8(v68[0]), v73, 0, 0);
  v29 = (*a1)++;
  *v29 = 44;
  v30 = *a1;
  if (*a1 >= a1[3])
  {
    v30 = a1[2];
  }

  for (i = 9; i != 25; ++i)
  {
    v32 = *(v68 + i);
    if (v32)
    {
      *a1 = v30 + 1;
      *v30 = v32;
      v30 = *a1;
      if (*a1 >= a1[3])
      {
        v30 = a1[2];
        *a1 = v30;
      }
    }
  }

  *a1 = v30 + 1;
  *v30 = 44;
  v33 = *a1;
  if (*a1 >= a1[3])
  {
    v33 = a1[2];
  }

  for (j = 25; j != 41; ++j)
  {
    v35 = *(v68 + j);
    if (v35)
    {
      *a1 = v33 + 1;
      *v33 = v35;
      v33 = *a1;
      if (*a1 >= a1[3])
      {
        v33 = a1[2];
        *a1 = v33;
      }
    }
  }

  *a1 = v33 + 1;
  *v33 = 44;
  v36 = *a1;
  if (*a1 >= a1[3])
  {
    v36 = a1[2];
  }

  for (k = 41; k != 57; ++k)
  {
    v38 = *(v68 + k);
    if (v38)
    {
      *a1 = v36 + 1;
      *v36 = v38;
      v36 = *a1;
      if (*a1 >= a1[3])
      {
        v36 = a1[2];
        *a1 = v36;
      }
    }
  }

  *a1 = v36 + 1;
  *v36 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  v39 = -0.5;
  if (*&v69 * 10.0 > 0.0)
  {
    v39 = 0.5;
  }

  v40 = *&v69 * 10.0 + v39;
  if (v40 <= 2147483650.0)
  {
    if (v40 >= -2147483650.0)
    {
      v41 = v40;
    }

    else
    {
      v41 = 0x80000000;
    }
  }

  else
  {
    v41 = 0x7FFFFFFF;
  }

  sprintf_2f(a1, v41);
  v42 = (*a1)++;
  *v42 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  v43 = -0.5;
  if (*(&v69 + 1) * 10.0 > 0.0)
  {
    v43 = 0.5;
  }

  v44 = *(&v69 + 1) * 10.0 + v43;
  if (v44 <= 2147483650.0)
  {
    if (v44 >= -2147483650.0)
    {
      v45 = v44;
    }

    else
    {
      v45 = 0x80000000;
    }
  }

  else
  {
    v45 = 0x7FFFFFFF;
  }

  sprintf_2f(a1, v45);
  v46 = (*a1)++;
  *v46 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  v47 = -0.5;
  if (*&v70 * 10.0 > 0.0)
  {
    v47 = 0.5;
  }

  v48 = *&v70 * 10.0 + v47;
  if (v48 <= 2147483650.0)
  {
    if (v48 >= -2147483650.0)
    {
      v49 = v48;
    }

    else
    {
      v49 = 0x80000000;
    }
  }

  else
  {
    v49 = 0x7FFFFFFF;
  }

  sprintf_2f(a1, v49);
  v50 = (*a1)++;
  *v50 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  v51 = -0.5;
  if (*(&v70 + 1) * 10.0 > 0.0)
  {
    v51 = 0.5;
  }

  v52 = *(&v70 + 1) * 10.0 + v51;
  if (v52 <= 2147483650.0)
  {
    if (v52 >= -2147483650.0)
    {
      v53 = v52;
    }

    else
    {
      v53 = 0x80000000;
    }
  }

  else
  {
    v53 = 0x7FFFFFFF;
  }

  sprintf_2f(a1, v53);
  v54 = (*a1)++;
  *v54 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  v55 = -0.5;
  if (*&v71 * 10.0 > 0.0)
  {
    v55 = 0.5;
  }

  v56 = *&v71 * 10.0 + v55;
  if (v56 <= 2147483650.0)
  {
    if (v56 >= -2147483650.0)
    {
      v57 = v56;
    }

    else
    {
      v57 = 0x80000000;
    }
  }

  else
  {
    v57 = 0x7FFFFFFF;
  }

  sprintf_2f(a1, v57);
  v58 = (*a1)++;
  *v58 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  v59 = -0.5;
  if (*(&v71 + 1) * 10.0 > 0.0)
  {
    v59 = 0.5;
  }

  v60 = *(&v71 + 1) * 10.0 + v59;
  if (v60 <= 2147483650.0)
  {
    if (v60 >= -2147483650.0)
    {
      v61 = v60;
    }

    else
    {
      v61 = 0x80000000;
    }
  }

  else
  {
    v61 = 0x7FFFFFFF;
  }

  sprintf_2f(a1, v61);
  v62 = (*a1)++;
  *v62 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf1da(a1, v72, v73, 0, 0);
  v63 = (*a1)++;
  *v63 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf1da(a1, BYTE1(v72), v73, 0, 0);
  v64 = (*a1)++;
  *v64 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf1da(a1, BYTE2(v72), v73, 0, 0);
  v65 = (*a1)++;
  *v65 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  v66 = *MEMORY[0x29EDCA608];

  return NMEA_Add_checksum(a1, v8);
}

char **NMEA_Encode_PDBGO(char **a1, int a2, uint64_t a3, uint64_t a4)
{
  v45 = *MEMORY[0x29EDCA608];
  v7 = (*a1)++;
  *v7 = 36;
  v8 = *a1;
  if (*a1 >= a1[3])
  {
    v8 = a1[2];
  }

  v9 = 80;
  v10 = 1u;
  v11 = v8;
  do
  {
    *a1 = v11 + 1;
    *v11 = v9;
    v11 = *a1;
    if (*a1 >= a1[3])
    {
      v11 = a1[2];
      *a1 = v11;
    }

    v9 = aPdbgo[v10++];
  }

  while (v10 != 7);
  sprintf_HHMMSS(a1, a3);
  v12 = a2 - 1;
  v13 = off_29EF51B48[v12];
  v14 = *(a4 + qword_29972B240[v12]);
  v15 = *(a4 + qword_29972B270[v12]);
  v16 = *(a4 + qword_29972B2A0[v12]);
  v17 = *(a4 + qword_29972B2D0[v12]);
  v18 = *(a4 + qword_29972B300[v12]);
  v19 = *v13;
  v20 = *a1;
  if (*v13)
  {
    v21 = (v13 + 1);
    do
    {
      *a1 = v20 + 1;
      *v20 = v19;
      v20 = *a1;
      if (*a1 >= a1[3])
      {
        v20 = a1[2];
        *a1 = v20;
      }

      v22 = *v21++;
      v19 = v22;
    }

    while (v22);
  }

  v23 = 0;
  v24 = 66;
  do
  {
    *a1 = v20 + 1;
    *v20 = v24;
    v20 = *a1;
    if (*a1 >= a1[3])
    {
      v20 = a1[2];
      *a1 = v20;
    }

    v24 = aB[++v23];
  }

  while (v23 != 2);
  if (v14)
  {
    v25 = 0;
    v26 = 48;
    do
    {
      *a1 = v20 + 1;
      *v20 = v26;
      v20 = *a1;
      if (*a1 >= a1[3])
      {
        v20 = a1[2];
        *a1 = v20;
      }

      v26 = a0x_0[++v25];
    }

    while (v25 != 2);
    sprintf_1X(a1, v14);
    v20 = *a1;
  }

  *a1 = v20 + 1;
  *v20 = 44;
  v27 = *a1;
  if (*a1 >= a1[3])
  {
    v27 = a1[2];
  }

  if (v16)
  {
    v28 = 0;
    v29 = 48;
    do
    {
      *a1 = v27 + 1;
      *v27 = v29;
      v27 = *a1;
      if (*a1 >= a1[3])
      {
        v27 = a1[2];
        *a1 = v27;
      }

      v29 = a0x_0[++v28];
    }

    while (v28 != 2);
    sprintf_1X(a1, v16);
    v27 = *a1;
  }

  *a1 = v27 + 1;
  *v27 = 44;
  v30 = *a1;
  if (*a1 >= a1[3])
  {
    v30 = a1[2];
  }

  if (v17)
  {
    v31 = 0;
    v32 = 48;
    do
    {
      *a1 = v30 + 1;
      *v30 = v32;
      v30 = *a1;
      if (*a1 >= a1[3])
      {
        v30 = a1[2];
        *a1 = v30;
      }

      v32 = a0x_0[++v31];
    }

    while (v31 != 2);
    sprintf_1X(a1, v17);
    v30 = *a1;
  }

  *a1 = v30 + 1;
  *v30 = 44;
  v33 = *a1;
  if (*a1 >= a1[3])
  {
    v33 = a1[2];
  }

  v34 = 0;
  v35 = 69;
  do
  {
    *a1 = v33 + 1;
    *v33 = v35;
    v33 = *a1;
    if (*a1 >= a1[3])
    {
      v33 = a1[2];
      *a1 = v33;
    }

    v35 = aE_0[++v34];
  }

  while (v34 != 2);
  if (v15)
  {
    v36 = 0;
    v37 = 48;
    do
    {
      *a1 = v33 + 1;
      *v33 = v37;
      v33 = *a1;
      if (*a1 >= a1[3])
      {
        v33 = a1[2];
        *a1 = v33;
      }

      v37 = a0x_0[++v36];
    }

    while (v36 != 2);
    sprintf_1X(a1, v15);
    v33 = *a1;
  }

  *a1 = v33 + 1;
  *v33 = 44;
  v38 = *a1;
  if (*a1 >= a1[3])
  {
    v38 = a1[2];
  }

  v39 = 0;
  v40 = 82;
  do
  {
    *a1 = v38 + 1;
    *v38 = v40;
    v38 = *a1;
    if (*a1 >= a1[3])
    {
      v38 = a1[2];
      *a1 = v38;
    }

    v40 = aR[++v39];
  }

  while (v39 != 2);
  if (v18)
  {
    v41 = 0;
    v42 = 48;
    do
    {
      *a1 = v38 + 1;
      *v38 = v42;
      v38 = *a1;
      if (*a1 >= a1[3])
      {
        v38 = a1[2];
        *a1 = v38;
      }

      v42 = a0x_0[++v41];
    }

    while (v41 != 2);
    sprintf_1X(a1, v18);
  }

  v43 = *MEMORY[0x29EDCA608];

  return NMEA_Add_checksum(a1, v8);
}

char **NMEA_Encode_PDBGR(char **a1, uint64_t a2, uint64_t a3)
{
  v44 = *MEMORY[0x29EDCA608];
  v5 = (*a1)++;
  *v5 = 36;
  v6 = *a1;
  if (*a1 >= a1[3])
  {
    v6 = a1[2];
  }

  v7 = 80;
  v8 = 1u;
  v9 = v6;
  do
  {
    *a1 = v9 + 1;
    *v9 = v7;
    v9 = *a1;
    if (*a1 >= a1[3])
    {
      v9 = a1[2];
      *a1 = v9;
    }

    v7 = aPdbgr[v8++];
  }

  while (v8 != 7);
  sprintf_HHMMSS(a1, a2);
  sprintf_1u(a1, *(a3 + 2108));
  v10 = (*a1)++;
  *v10 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf_1u(a1, *(a3 + 2112));
  v11 = (*a1)++;
  *v11 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf1da(a1, *(a3 + 2116), v43, 0, 0);
  v12 = (*a1)++;
  *v12 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf1da(a1, *(a3 + 2118), v43, 0, 0);
  v13 = (*a1)++;
  *v13 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf1da(a1, *(a3 + 2120), v43, 0, 0);
  v14 = (*a1)++;
  *v14 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf1da(a1, *(a3 + 2122), v43, 0, 0);
  v15 = (*a1)++;
  *v15 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf1da(a1, *(a3 + 2124), v43, 0, 0);
  v16 = (*a1)++;
  *v16 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf1da(a1, *(a3 + 2128), v43, 0, 0);
  v17 = (*a1)++;
  *v17 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf1da(a1, *(a3 + 2126), v43, 0, 0);
  v18 = (*a1)++;
  *v18 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf1da(a1, *(a3 + 2130), v43, 0, 0);
  v19 = (*a1)++;
  *v19 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf1da(a1, *(a3 + 2132), v43, 0, 0);
  v20 = (*a1)++;
  *v20 = 44;
  v21 = *a1;
  if (*a1 >= a1[3])
  {
    v21 = a1[2];
  }

  v22 = 0;
  v23 = 1;
  do
  {
    *a1 = v21 + 1;
    *v21 = 82;
    if (*a1 >= a1[3])
    {
      *a1 = a1[2];
    }

    sprintf1da(a1, v23, v43, 0, 0);
    v24 = (*a1)++;
    *v24 = 44;
    if (*a1 >= a1[3])
    {
      *a1 = a1[2];
    }

    sprintf_1u(a1, *(a3 + v22 + 2136));
    v25 = (*a1)++;
    *v25 = 44;
    if (*a1 >= a1[3])
    {
      *a1 = a1[2];
    }

    sprintf1da(a1, *(a3 + v22 + 2140), v43, 0, 0);
    v26 = (*a1)++;
    *v26 = 44;
    if (*a1 >= a1[3])
    {
      *a1 = a1[2];
    }

    sprintf1da(a1, *(a3 + v22 + 2142), v43, 0, 0);
    v27 = (*a1)++;
    *v27 = 44;
    if (*a1 >= a1[3])
    {
      *a1 = a1[2];
    }

    sprintf1da(a1, *(a3 + v22 + 2144), v43, 0, 0);
    v28 = (*a1)++;
    *v28 = 44;
    if (*a1 >= a1[3])
    {
      *a1 = a1[2];
    }

    sprintf1da(a1, *(a3 + v22 + 2145), v43, 0, 0);
    v29 = (*a1)++;
    *v29 = 44;
    if (*a1 >= a1[3])
    {
      *a1 = a1[2];
    }

    sprintf1da(a1, *(a3 + v22 + 2146), v43, 0, 0);
    v30 = (*a1)++;
    *v30 = 44;
    if (*a1 >= a1[3])
    {
      *a1 = a1[2];
    }

    sprintf1da(a1, *(a3 + v22 + 2147), v43, 0, 0);
    v31 = (*a1)++;
    *v31 = 44;
    if (*a1 >= a1[3])
    {
      *a1 = a1[2];
    }

    sprintf1da(a1, *(a3 + v22 + 2148), v43, 0, 0);
    v32 = (*a1)++;
    *v32 = 44;
    if (*a1 >= a1[3])
    {
      *a1 = a1[2];
    }

    sprintf1da(a1, *(a3 + v22 + 2150), v43, 0, 0);
    v33 = (*a1)++;
    *v33 = 44;
    if (*a1 >= a1[3])
    {
      *a1 = a1[2];
    }

    sprintf1da(a1, *(a3 + v22 + 2151), v43, 0, 0);
    v34 = (*a1)++;
    *v34 = 44;
    if (*a1 >= a1[3])
    {
      *a1 = a1[2];
    }

    sprintf1da(a1, *(a3 + v22 + 2152), v43, 0, 0);
    v35 = (*a1)++;
    *v35 = 44;
    if (*a1 >= a1[3])
    {
      *a1 = a1[2];
    }

    sprintf1da(a1, *(a3 + v22 + 2153), v43, 0, 0);
    v36 = (*a1)++;
    *v36 = 44;
    if (*a1 >= a1[3])
    {
      *a1 = a1[2];
    }

    sprintf1da(a1, *(a3 + v22 + 2154), v43, 0, 0);
    v37 = (*a1)++;
    *v37 = 44;
    if (*a1 >= a1[3])
    {
      *a1 = a1[2];
    }

    sprintf1da(a1, *(a3 + v22 + 2156), v43, 0, 0);
    v38 = (*a1)++;
    *v38 = 44;
    if (*a1 >= a1[3])
    {
      *a1 = a1[2];
    }

    sprintf1da(a1, *(a3 + v22 + 2157), v43, 0, 0);
    v39 = (*a1)++;
    *v39 = 44;
    if (*a1 >= a1[3])
    {
      *a1 = a1[2];
    }

    sprintf1da(a1, *(a3 + v22 + 2158), v43, 0, 0);
    v40 = (*a1)++;
    *v40 = 44;
    v21 = *a1;
    if (*a1 >= a1[3])
    {
      v21 = a1[2];
      *a1 = v21;
    }

    v22 += 24;
    ++v23;
  }

  while (v22 != 72);
  v41 = *MEMORY[0x29EDCA608];

  return NMEA_Add_checksum(a1, v6);
}