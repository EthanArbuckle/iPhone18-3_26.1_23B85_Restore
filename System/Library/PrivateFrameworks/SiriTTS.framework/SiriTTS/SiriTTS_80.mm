uint64_t Psola_CalculateModificationFactors(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int *a6, int *a7, _DWORD *a8)
{
  if (a3 < 1)
  {
    if (!a3)
    {
      a3 = *(a2 + 16);
    }
  }

  else
  {
    a3 = *(a2 + 16) * a3 / 1000;
  }

  *a6 = a3;
  if (a4 < 1)
  {
    if (!a4)
    {
      a4 = *(a2 + 20);
    }
  }

  else
  {
    a4 = *(a2 + 20) * a4 / 1000;
  }

  *a7 = a4;
  *a8 = a5;
  v8 = *(a1 + 1052);
  if (v8 == 100)
  {
    v9 = 1000;
  }

  else
  {
    if (v8 - 50 > 0x15E)
    {
      return 2164269071;
    }

    v9 = ((v8 >> 1) + 100000) / v8;
  }

  v10 = 10 * *(a1 + 1054);
  if (v10 && v10 != 1000)
  {
    v11 = 274877907 * (*a6 * v10 + 500);
    *a6 = (v11 >> 38) + (v11 >> 63);
    v12 = 274877907 * (*a7 * v10 + 500);
    *a7 = (v12 >> 38) + (v12 >> 63);
  }

  result = 0;
  if (v9 != 1000)
  {
    v14 = 274877907 * (*a8 * v9 + 500);
    *a8 = (v14 >> 38) + (v14 >> 63);
  }

  return result;
}

uint64_t Psola_GetUnitModif (uint64_t a1, uint64_t a2, unsigned __int16 *a3, int a4, int a5, uint64_t a6, uint64_t a7, unsigned __int16 *a8)
{
  v8 = a7;
  v11 = a3[1];
  v12 = a3[2] + v11 - 1;
  if (v11 <= v12)
  {
    v13 = 0;
    v14 = a3[1];
    do
    {
      v13 += a3[v14++ + 10004];
    }

    while (v14 <= v12);
  }

  else
  {
    v13 = 0;
  }

  v15 = a6;
  if ((a6 & 0x80000000) != 0)
  {
    v16 = (1000 * v13 + *(a1 + 1040) / 2) / *(a1 + 1040);
    v15 = (-1000 * a6 + v16 / 2) / v16;
  }

  v17 = v13;
  if (v15)
  {
    v17 = (v15 * v13 + 500) / 1000;
  }

  result = 2164269065;
  if (a4 >= 1 && a5 < 1 || a4 <= 0 && a5 > 0)
  {
    return 2164269074;
  }

  v56 = a3[2] + v11;
  *a7 = 0;
  if (v11)
  {
    for (i = 0; i != v11; *a7 = i)
    {
      *(a7 + 2 * i + 6) = i;
      *(a7 + 20006 + 2 * i) = 0;
      *(a7 + 40006 + 2 * i) = a3[i + 10004];
      ++i;
    }

    v20 = v11;
  }

  else
  {
    v20 = 0;
  }

  *(a7 + 2) = 0;
  if (v11 <= v12)
  {
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v57 = a3 + 10004;
    v58 = a5 - a4;
    v37 = a3 + 20004;
    while (1)
    {
      v38 = v57[v11];
      if (v15)
      {
        v36 += (v15 * v38 + 500) / 1000;
      }

      else
      {
        v36 = v35 + v38;
      }

      v39 = v20 <= 0x2710 ? 10000 : v20;
      v40 = v11 == v12 && v35 == 0;
      v41 = v40;
      if (v35 + (v38 >> 1) <= v36 || v41)
      {
        break;
      }

LABEL_84:
      v34 += v38;
      LOWORD(v11) = v11 + 1;
      if (v11 > v12)
      {
        goto LABEL_21;
      }
    }

    v43 = 0;
    a8 = &v8[v20];
    v44 = v39 - v20;
    while (1)
    {
      v45 = a4;
      if (v15)
      {
        if (v17)
        {
          v45 = (v17 / 2 + v35 * v58) / v17 + a4;
        }
      }

      else
      {
        v45 = (v13 / 2 + v34 * v58) / v13 + a4;
      }

      v46 = v38;
      if (v37[v11] != 1)
      {
        goto LABEL_63;
      }

      if (v45 < 1)
      {
        v46 = v38;
        if ((v45 & 0x80000000) == 0)
        {
          goto LABEL_63;
        }

        v47 = *(a1 + 1040);
        v45 = -v45;
      }

      else
      {
        v47 = 1000 * v57[v11];
      }

      v46 = (v47 + (v45 >> 1)) / v45;
LABEL_63:
      if (!v44)
      {
        return result;
      }

      if (v46 <= 0x10)
      {
        v48 = 16;
      }

      else
      {
        v48 = v46;
      }

      if (v48 >= 0x3C1)
      {
        v48 = 961;
      }

      a8[3] = v11;
      a8[20003] = v48;
      if (v37[v11])
      {
        v49 = 0;
      }

      else
      {
        v49 = v43;
      }

      v43 = 1 - v43;
      v35 += v48;
      if (!v15)
      {
        v36 = v35;
      }

      a8[10003] = v49;
      v8[1] = ++v33;
      a6 = v35 + (v38 >> 1);
      a7 = v11 == v12 && v35 == 0;
      ++v20;
      ++a8;
      --v44;
      if (a6 > v36 && (a7 & 1) == 0)
      {
        goto LABEL_84;
      }
    }
  }

LABEL_21:
  v21 = a3[2] + a3[1] + a3[3];
  v8[2] = 0;
  if (v56 >= v21)
  {
LABEL_28:
    log_OutText(*(*(a1 + 16) + 32), "PSOLA", 99, 0, "modified unit %d: f0Beg=%d, f0End=%d, dur=%d\n", a6, a7, a8, a2);
    if (v8[1] + *v8 + v8[2])
    {
      v30 = 0;
      v31 = (v8[1] + *v8 + v8[2]);
      do
      {
        if (v30 == *v8)
        {
          log_OutText(*(*(a1 + 16) + 32), "PSOLA", 100, 0, "  --- start of nominal part\n", v27, v28, v29, v51);
        }

        v32 = v8[v30 + 3];
        v54 = v8[v30 + 20003];
        v55 = v8[v30 + 10003];
        v52 = a3[v32 + 20004];
        v53 = a3[v32 + 10004];
        log_OutText(*(*(a1 + 16) + 32), "PSOLA", 100, 0, "  peri num: %d, type: %d, orig len: %d, new len: %d, rev: %d\n", v27, v28, v29, v32);
        if (v30 == *v8 + v8[1] - 1)
        {
          log_OutText(*(*(a1 + 16) + 32), "PSOLA", 100, 0, "  --- end of nominal part\n", v27, v28, v29, v51);
        }

        ++v30;
      }

      while (v31 != v30);
    }

    return 0;
  }

  else
  {
    v22 = 0;
    v23 = v56;
    if (v20 <= 0x2710)
    {
      v24 = 10000;
    }

    else
    {
      v24 = v20;
    }

    v25 = v24 - v20;
    v26 = &v8[v20];
    while (v25)
    {
      v26[3] = v23;
      v26[10003] = 0;
      v26[20003] = a3[v23 + 10004];
      v8[2] = ++v22;
      ++v23;
      --v25;
      ++v26;
      if (v23 >= v21)
      {
        goto LABEL_28;
      }
    }
  }

  return result;
}

void Psola_SynthSilence(uint64_t a1, uint64_t a2, int a3, int *a4, int a5, int *a6, uint64_t a7, uint64_t a8)
{
  log_OutText(*(*(a1 + 16) + 32), "PSOLA", 99, 0, "PMK: %d 0 %d\n", a6, a7, a8, a2);
  v17 = *(a1 + 1052);
  if (v17 == 100)
  {
    v18 = 1000;
  }

  else if (v17 - 50 > 0x15E)
  {
    v18 = 0;
  }

  else
  {
    v18 = ((v17 >> 1) + 100000) / v17;
  }

  v33 = (v18 * a5 + 500) / 1000;
  log_OutText(*(*(a1 + 16) + 32), "PSOLA", 99, 0, "synthesizing silence for unit %d, len=%d\n", v14, v15, v16, a2);
  Psola_FlushOlaBufPart(a1, a4, *a6, v19, v20, v21, v22, v23);
  Psola_DepositMarkers(a1, a3, v24, v25, v26, v27, v28, v29);
  v32 = (*a6 + v33);
  *a6 = v32;
  if (*a4 <= v32)
  {
    Psola_AddToOlaBufAux(a1, a4, v34, 0, 0, v32, v30, v31);
  }
}

uint64_t Psola_LoadUnitData(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned __int16 *a4, char *a5, int *a6, _DWORD *a7)
{
  v23 = 0;
  v21 = 0;
  v22 = 0;
  *a6 = 0;
  v10 = a4[1] + a4[2] + a4[3] - 1;
  v11 = &a4[v10];
  v12 = *a4;
  v14 = (a4 + 4);
  v13 = a4[4];
  *a7 = 0;
  if (v13 <= 0)
  {
    v15 = -v13;
  }

  else
  {
    v15 = 0;
  }

  v16 = v11[10004] + v14[v10];
  result = Psola_GetDecodedUnitData_VE(a1, a2, a3, v15, v12, (v16 - v12) & ~((v16 - v12) >> 31), 24000, a5, &v23, &v21, &v22);
  if ((result & 0x80000000) == 0)
  {
    v18 = v23;
    *a7 = v23;
    v19 = v21 + v18 + v22;
    *a6 = v19;
    if (*a7 + v16 > v19 || *a7 + *v14 < 0)
    {
      return 2164269065;
    }

    else
    {
      return result;
    }
  }

  return result;
}

uint64_t Psola_DoPeriSynth(uint64_t a1, uint64_t a2, int a3, int *a4, uint64_t a5, int *a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int16 *a10, int a11, int a12, int a13, int a14, int *a15)
{
  v15 = a8;
  v17 = a1;
  log_OutText(*(*(a1 + 16) + 32), "PSOLA", 99, 0, "synthesizing unit %d\n", a6, a7, a8, a2);
  log_OutText(*(*(v17 + 16) + 32), "PSOLA", 99, 0, "PMK: %d", v18, v19, v20, a2);
  if (a10[1])
  {
    v24 = *a10;
    do
    {
      v88 = a10[v24 + 20003];
      log_OutText(*(*(v17 + 16) + 32), "PSOLA", 99, 0, " %d %d", v21, v22, v23, *(a9 + 40008 + 2 * a10[v24++ + 3]));
    }

    while (a10[1] + *a10 > v24);
  }

  v25 = a15;
  log_OutText(*(*(v17 + 16) + 32), "PSOLA", 99, 0, "\n", v21, v22, v23, v87);
  v26 = *a10;
  v27 = a10[1];
  v28 = v27 + v26;
  v29 = a10 + 20003;
  v30 = 0;
  if (*a10)
  {
    v31 = *a10;
    v32 = (a10 + 20003);
    do
    {
      v33 = *v32++;
      v30 += v33;
      --v31;
    }

    while (v31);
  }

  v34 = 0;
  if (a10[1])
  {
    v35 = &v29[*a10];
    do
    {
      v36 = *v35++;
      v34 += v36;
      LODWORD(v27) = v27 - 1;
    }

    while (v27);
  }

  v37 = v28 + a10[2];
  v38 = a13;
  v39 = *a15;
  v102 = a12 + a11;
  if ((v102 < 0) ^ __OFADD__(a12, a11) | (v102 == 0))
  {
    v102 = (v29[v26] + (v29[v26] >> 15)) << 16 >> 17;
    v98 = *a15;
  }

  else
  {
    v98 = v39 - a11;
  }

  v101 = a14 + a13;
  if ((a14 + a13 < 0) ^ __OFADD__(a14, a13) | (a14 + a13 == 0))
  {
    v40 = v29[v28 - 1];
    v38 = (v40 + (v40 >> 15)) >> 1;
    v101 = v38;
  }

  v41 = v39 + v34;
  if (v37)
  {
    v42 = 0;
    v43 = 0;
    v93 = v41 - v38;
    v44 = v39 - v30;
    v97 = (a10 + 3);
    v95 = (a10 + 20003);
    v96 = a9 + 20008;
    v45 = a9 + 8;
    v90 = (v37 - 1);
    v91 = v37;
    v92 = (v37 + 1);
    v46 = v15;
    v47 = a5;
    v106 = a9 + 8;
    v94 = v17;
    while (1)
    {
      v107 = v43;
      v108 = v44;
      if (v42)
      {
        if (v42 == v91)
        {
          v48 = v97[v90];
          LODWORD(v49) = *(v96 + 2 * v48);
          result = Psola_CopyDataPart(*(*(v17 + 16) + 8), a7, *(v45 + 2 * v48) + v46, v49, v47);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          LODWORD(v51) = 0;
          v52 = 0;
          v53 = v90;
          v54 = a10 + 20003;
        }

        else
        {
          v56 = v97[v42];
          v57 = v56 - 1;
          if (a10[v42 + 10003])
          {
            v49 = *(v96 + 2 * v56);
            v51 = *(v96 + 2 * v57);
            v58 = *(v106 + 2 * v56);
            result = Psola_ReallocIfNeeded(*(*(v17 + 16) + 8), v47, v49);
            if (v49 >= 1 && (result & 0x80000000) == 0)
            {
              v59 = (a7 + 2 * (v58 + v15));
              v60 = (*v47 + 2 * v49 - 2);
              v61 = v49;
              do
              {
                v62 = *v59++;
                *v60-- = v62;
                --v61;
              }

              while (v61);
            }

            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            v63 = *(v106 + 2 * v57);
            result = Psola_ReallocIfNeeded(*(*(v17 + 16) + 8), (v47 + 16), v51);
            if (v51 >= 1 && (result & 0x80000000) == 0)
            {
              v64 = (a7 + 2 * (v63 + v15));
              v65 = (*(v47 + 16) + 2 * v51 - 2);
              v66 = v51;
              do
              {
                v67 = *v64++;
                *v65-- = v67;
                --v66;
              }

              while (v66);
            }
          }

          else
          {
            LODWORD(v49) = *(v96 + 2 * v57);
            LODWORD(v51) = *(v96 + 2 * v56);
            v68 = v46;
            result = Psola_CopyDataPart(*(*(v17 + 16) + 8), a7, *(v106 + 2 * v57) + v46, v49, v47);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            result = Psola_CopyDataPart(*(*(v17 + 16) + 8), a7, *(v106 + 2 * v56) + v68, v51, (v47 + 16));
          }

          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v53 = v42 - 1;
          v54 = a10 + 20003;
          v52 = v95[v42];
        }

        v69 = v54[v53];
        if (v49 <= v69)
        {
          v104 = 0;
        }

        else
        {
          memmove(*v47, (*v47 + 2 * (v49 - v54[v53])), 2 * v54[v53]);
          v104 = 0;
          LODWORD(v49) = v69;
        }
      }

      else
      {
        v55 = *v97;
        LODWORD(v51) = *(v96 + 2 * v55);
        v104 = Psola_CopyDataPart(*(*(v17 + 16) + 8), a7, *(v45 + 2 * v55) + v46, v51, (v47 + 16));
        if ((v104 & 0x80000000) != 0)
        {
          return v104;
        }

        LODWORD(v49) = 0;
        v52 = *v95;
      }

      if (v51 >= v52)
      {
        LODWORD(v51) = v52;
      }

      Psola_ApplyHanning(*(v47 + 32), a6, *v47, v49, 1);
      Psola_ApplyHanning(*(v47 + 32), a6, *(v47 + 16), v51, 0);
      Psola_ApplyFadingPart(*v47, v49, v108 - v49, v98, v102, 1);
      Psola_ApplyFadingPart(*(v47 + 16), v51, v108, v98, v102, 1);
      Psola_ApplyFadingPart(*v47, v49, v108 - v49, v93, v101, 0);
      Psola_ApplyFadingPart(*(v47 + 16), v51, v108, v93, v101, 0);
      v17 = v94;
      Psola_AddToOlaBuf(v94, a4, *v47, v49, v108 - v49, v70, v71, v72);
      Psola_AddToOlaBuf(v94, a4, *(v47 + 16), v51, v108, v73, v74, v75);
      v44 = v52 + v108;
      if (v107)
      {
        v47 = a5;
        v45 = a9 + 8;
        v43 = 1;
      }

      else
      {
        if (v44 >= *a15 + 961 || v42 == v91)
        {
          Psola_FlushOlaBufPart(v94, a4, *a15, v76, v77, v78, v79, v80);
          Psola_DepositMarkers(v94, a3, v81, v82, v83, v84, v85, v86);
          v104 = 0;
          v43 = 1;
        }

        else
        {
          v43 = 0;
        }

        v47 = a5;
        v45 = a9 + 8;
      }

      ++v42;
      v46 = v15;
      if (v42 == v92)
      {
        v25 = a15;
        v41 = *a15 + v34;
        result = v104;
        goto LABEL_54;
      }
    }
  }

  result = 0;
LABEL_54:
  *v25 = v41;
  return result;
}

void Psola_FlushOlaBufPart(uint64_t a1, _DWORD *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = a3 - *a2;
  if (v8 >= 1)
  {
    v11 = a2[1];
    v12 = a2[2];
    if (v8 >= v12)
    {
      v13 = a2[2];
    }

    else
    {
      v13 = v8;
    }

    if (v13 >= 2400 - v11)
    {
      v14 = (2400 - v11);
    }

    else
    {
      v14 = v13;
    }

    v15 = v8 - v14;
    if (v8 >= v12)
    {
      v16 = (v12 - v14);
    }

    else
    {
      v16 = v15;
    }

    if (v14 >= 1)
    {
      Psola_OutputDataPart(a1, (a2 + 3), v11, v14, a5, a6, a7, a8);
      bzero(a2 + 2 * a2[1] + 12, (2 * v14));
    }

    if (v16 >= 1)
    {
      Psola_OutputDataPart(a1, (a2 + 3), 0, v16, a5, a6, a7, a8);
      bzero(a2 + 3, (2 * v16));
    }

    v17 = v15 - v16;
    if (v17 >= 1)
    {
      v23 = 0;
      memset(v22, 0, sizeof(v22));
      do
      {
        if (v17 >= 0x64)
        {
          v18 = 100;
        }

        else
        {
          v18 = v17;
        }

        Psola_OutputDataPart(a1, v22, 0, v18, a5, a6, a7, a8);
        v19 = __OFSUB__(v17, v18);
        v17 -= v18;
      }

      while (!((v17 < 0) ^ v19 | (v17 == 0)));
    }

    v20 = a2[1] + v8;
    *a2 += v8;
    a2[1] = v20 % 2400;
    a2[2] -= v16 + v14;
  }

  v21 = *MEMORY[0x1E69E9840];
}

uint64_t Psola_DepositMarkers(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = result;
  v9 = *(*(result + 1088) + 160) + 16 * *(*(*(result + 1088) + 152) + 56 * a2 + 44);
  v10 = *(v9 + 10) + *(v9 + 8);
  if (v10 > *(result + 656))
  {
    v17 = *(result + 656);
    v16 = *(v9 + 10);
    v15 = *(v9 + 8);
    result = log_OutPublic(*(*(result + 16) + 32), "PSOLA", 45000, "%s%u%s%u%s%u", a5, a6, a7, a8, "index");
    v10 = *(v8 + 656);
  }

  v11 = *(v8 + 1080);
  if (v10 > v11)
  {
    v12 = *(v8 + 1028);
    v13 = (*(v8 + 648) + 32 * v11 + 16);
    v14 = v10 - v11;
    do
    {
      *(v13 - 1) = v12;
      *v13 = 0;
      v13 += 8;
      --v14;
    }

    while (v14);
    *(v8 + 1080) = v10;
    *(v9 + 10) = 0;
  }

  return result;
}

void Psola_AddToOlaBuf(uint64_t a1, int *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*a2 <= a5)
  {
    v19 = v8;
    v20 = v9;
    v10 = a5;
    v11 = a4;
    if (a4 < 1)
    {
      Psola_AddToOlaBufAux(a1, a2, v18, 0, 0, a5, a7, a8);
    }

    else
    {
      v15 = 0;
      do
      {
        if (v11 >= 0x960)
        {
          v16 = 2400;
        }

        else
        {
          v16 = v11;
        }

        Psola_AddToOlaBufAux(a1, a2, a3, v15, v16, v10, a7, a8);
        v15 = (v16 + v15);
        v10 = (v10 + v16);
        v17 = __OFSUB__(v11, v16);
        v11 -= v16;
      }

      while (!((v11 < 0) ^ v17 | (v11 == 0)));
    }
  }
}

void Psola_AddToOlaBufAux(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a6;
  v9 = a5;
  v10 = a4;
  v13 = a6 + a5;
  v14 = a6 + a5 - 2400;
  v15 = *a2;
  if (v14 > *a2)
  {
    Psola_FlushOlaBufPart(a1, a2, v14, a4, a5, a6, a7, a8);
    v15 = *a2;
  }

  v16 = (v8 - v15 + a2[1]) % 2400;
  if (2400 - v16 >= v9)
  {
    v17 = v9;
  }

  else
  {
    v17 = 2400 - v16;
  }

  v18 = v9 - v17;
  if (v17 >= 1)
  {
    v19 = a2 + v16 + 6;
    v20 = (a3 + 2 * v10);
    v21 = v17;
    do
    {
      v22 = *v20++;
      *v19++ += v22;
      --v21;
    }

    while (v21);
  }

  if (v18 >= 1)
  {
    v23 = v17 + v10;
    v24 = a2 + 3;
    v25 = (a3 + 2 * v23);
    do
    {
      v26 = *v25++;
      *v24++ += v26;
      --v18;
    }

    while (v18);
  }

  v27 = v13 - v15;
  if (a2[2] > v27)
  {
    v27 = a2[2];
  }

  a2[2] = v27;
}

uint64_t Psola_CopyDataPart(uint64_t *a1, uint64_t a2, int a3, unsigned int a4, uint64_t *a5)
{
  v8 = a4;
  v9 = Psola_ReallocIfNeeded(a1, a5, a4);
  if ((v9 & 0x80000000) == 0)
  {
    memcpy(*a5, (a2 + 2 * a3), 2 * v8);
  }

  return v9;
}

__int16 *Psola_ApplyHanning(__int16 *result, int *a2, __int16 *a3, int a4, int a5)
{
  if (*a2 != a4)
  {
    if (a4 >= 1)
    {
      v5 = 0;
      v6 = result;
      do
      {
        v7 = HanningTab[v5 / a4];
        *v6++ = v7 + ((HanningTab[v5 / a4 + 1] - v7) * (v5 % a4)) / a4;
        v5 += 200;
      }

      while (200 * a4 != v5);
    }

    *a2 = a4;
  }

  if (a5)
  {
    if (a4 >= 1)
    {
      v8 = a4;
      do
      {
        v9 = *result++;
        *a3 = v9 * *a3 / 0x8000;
        ++a3;
        --v8;
      }

      while (v8);
    }
  }

  else if (a4 >= 1)
  {
    v10 = a4;
    do
    {
      v11 = *result++;
      *a3 = (0x7FFF - v11) * *a3 / 0x8000;
      ++a3;
      --v10;
    }

    while (v10);
  }

  return result;
}

void Psola_ApplyFadingPart(__int16 *a1, int a2, int a3, int a4, int a5, int a6)
{
  if (a3 <= a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = a3;
  }

  v7 = a3 + a2;
  v8 = a5 + a4;
  if (a3 + a2 >= a5 + a4)
  {
    v9 = a5 + a4;
  }

  else
  {
    v9 = a3 + a2;
  }

  v10 = v9 - v6;
  if (v10 >= 1)
  {
    v11 = v10 + v6 - a3;
    v12 = v6 - a3;
    if (a6)
    {
      v13 = v6 - a4;
      do
      {
        a1[v12] = v13 * a1[v12] / a5;
        ++v13;
        ++v12;
      }

      while (v12 < v11);
    }

    else
    {
      v14 = a5 + a4 - v6;
      do
      {
        a1[v12] = v14 * a1[v12] / a5;
        ++v12;
        --v14;
      }

      while (v12 < v11);
    }
  }

  if (a4 > a3 && a6)
  {
    if (a4 - a3 >= a2)
    {
      v15 = a2;
    }

    else
    {
      v15 = a4 - a3;
    }

    if (v15 <= 0)
    {
      return;
    }

LABEL_27:
    bzero(a1, (2 * v15));
    return;
  }

  if (!a6)
  {
    v16 = __OFSUB__(v7, v8);
    v15 = v7 - v8;
    if (!((v15 < 0) ^ v16 | (v15 == 0)))
    {
      if (v15 >= a2)
      {
        v15 = a2;
      }

      if (v15 >= 1)
      {
        a1 += a2 - v15;
        goto LABEL_27;
      }
    }
  }
}

uint64_t Psola_ReallocIfNeeded(uint64_t *a1, uint64_t *a2, unint64_t a3)
{
  if (a2[1] >= a3)
  {
    return 0;
  }

  v4 = (a3 & 0xFFFFFFFFFFFFFE00) + 512;
  v5 = heap_Realloc(a1, *a2, 2 * v4);
  if (!v5)
  {
    return 2164269066;
  }

  v6 = v5;
  result = 0;
  *a2 = v6;
  a2[1] = v4;
  return result;
}

uint64_t Psola_GetSynthMode(uint64_t a1, _DWORD *a2, _BYTE *a3, _BYTE *a4, _DWORD *a5, _DWORD *a6, _DWORD *a7, _DWORD *a8)
{
  *a3 = 0;
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  *a7 = 0;
  *a8 = 0;
  if ((*(a1 + 1152) & 2) != 0)
  {
    *a2 = 1;
    *a7 = 100;
  }

  else
  {
    *a2 = 0;
  }

  return 0;
}

uint64_t Synth_RetrieveInputBlock(uint64_t a1, char *__s2, void *a3)
{
  v3 = 2164269076;
  *a3 = 0;
  if (*(a1 + 328))
  {
    v7 = 0;
    v8 = 32 * *(a1 + 328);
    v9 = 336;
    for (i = 344; ; i += 16)
    {
      v11 = *(a1 + v7 + 48);
      if (v11)
      {
        if (!*(a1 + v7 + 40) && !strcmp(v11, __s2))
        {
          break;
        }
      }

      v9 += 16;
      v7 += 32;
      if (v8 == v7)
      {
        return v3;
      }
    }

    if (*(a1 + v9))
    {
      v3 = 0;
LABEL_11:
      *a3 = a1 + v9;
      return v3;
    }

    v3 = (*(*(a1 + 32) + 88))(*(a1 + v7 + 56), *(a1 + v7 + 64), a1 + v9, a1 + i);
    if ((v3 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  return v3;
}

uint64_t Synth_SetVoicePartsAndRelativeIds(uint64_t a1, uint64_t a2)
{
  v4 = 2164269066;
  v5 = heap_Alloc(*(*(a1 + 16) + 8), 8 * *(a1 + 544));
  *(a1 + 552) = v5;
  if (v5)
  {
    v6 = heap_Alloc(*(*(a1 + 16) + 8), 4 * *(a1 + 544));
    *(a1 + 536) = v6;
    if (v6)
    {
      if (*(a1 + 544))
      {
        v7 = 0;
        v8 = 0;
        v9 = 0;
        do
        {
          synth_splitGID(a1, *(a2 + v8), (*(a1 + 552) + v7), (*(a1 + 536) + v8));
          ++v9;
          v8 += 4;
          v7 += 8;
        }

        while (v9 < *(a1 + 544));
      }

      return 0;
    }
  }

  return v4;
}

void Synth_LinkMsgLayers(uint64_t a1)
{
  v13 = 0;
  v2 = *(a1 + 616);
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 640) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 512) = *(a1 + 16);
  if ((Synth_RetrieveInputBlock(a1, "text/x-realspeak-usphonemes;charset=tts", &v13) & 0x80000000) == 0)
  {
    v3 = v13;
    v4 = *v13 + 1;
    *(a1 + 528) = **v13;
    *(a1 + 576) = v4;
    LOWORD(v3) = *(v3 + 8) - 2;
    *(a1 + 584) = v3;
    if (!*(v4 + v3) && (Synth_RetrieveInputBlock(a1, "application/x-realspeak-usids;version=4.0", &v13) & 0x80000000) == 0)
    {
      v5 = *v13;
      v6 = *(v13 + 8);
      *(a1 + 544) = v6 >> 2;
      if ((v6 >> 2) == 2 * *(a1 + 584) && (Synth_SetVoicePartsAndRelativeIds(a1, v5) & 0x80000000) == 0 && (Synth_RetrieveInputBlock(a1, "application/x-realspeak-targf0;version=4.0", &v13) & 0x80000000) == 0)
      {
        v7 = v13;
        *(a1 + 560) = *v13;
        LODWORD(v7) = *(v7 + 8);
        *(a1 + 568) = v7 >> 1;
        if ((v7 >> 1) == 4 * *(a1 + 584) && (Synth_RetrieveInputBlock(a1, "application/x-realspeak-usmarkers-u16;version=4.0", &v13) & 0x80000000) == 0)
        {
          v8 = v13;
          v9 = heap_Alloc(*(*(a1 + 16) + 8), *(v13 + 8));
          *(a1 + 592) = v9;
          if (v9)
          {
            memcpy(v9, *v8, *(v8 + 8));
            if ((Synth_RetrieveInputBlock(a1, "application/x-realspeak-usplosives;version=4.0", &v13) & 0x80000000) == 0)
            {
              *(a1 + 600) = *v13;
              if ((Synth_RetrieveInputBlock(a1, "application/x-realspeak-usdurs;version=4.0", &v13) & 0x80000000) == 0)
              {
                v10 = v13;
                v11 = heap_Alloc(*(*(a1 + 16) + 8), *(v13 + 8));
                *(a1 + 608) = v11;
                if (v11)
                {
                  memcpy(v11, *v10, *(v10 + 8));
                  if ((*(a1 + 528) & 1) == 0)
                  {
                    **(a1 + 608) = v2;
                  }

                  *(a1 + 664) = a1;
                  if ((Synth_RetrieveInputBlock(a1, "application/x-realspeak-markers-pp;version=4.0", &v13) & 0x80000000) == 0)
                  {
                    v12 = (v13 + 8);
                    Synth_SetupMarkers(a1 + 512, *v13, *(v13 + 8) >> 5, (v13 + 8));
                    *v12 *= 32;
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

__n128 Synth_SetupMarkers(uint64_t a1, int *a2, unsigned int a3, unsigned int *a4)
{
  v8 = *(a1 + 72) + a3;
  *(a1 + 144) = v8;
  if (a3)
  {
    v9 = a3;
    v10 = a2;
    do
    {
      v11 = *v10;
      v10 += 8;
      if (v11 == 8)
      {
        *(a1 + 144) = ++v8;
      }

      --v9;
    }

    while (v9);
  }

  v12 = heap_Calloc(*(*a1 + 8), v8, 32);
  *(a1 + 136) = v12;
  if (!v12)
  {
    return result;
  }

  LOWORD(v14) = *(a1 + 72);
  if (!v14)
  {
    v17 = 0;
    v25 = 0;
    goto LABEL_30;
  }

  v15 = 0;
  i = 0;
  v14 = 0;
  v17 = 0;
  do
  {
    v18 = *(*(a1 + 80) + 2 * v15);
    if (i)
    {
      v19 = (*(a1 + 136) + 32 * v14);
      *v19 = 8;
      v19[6] = 0;
      ++v14;
      ++*(*(a1 + 80) + 2 * v15);
    }

    for (i = 0; v18; --v18)
    {
      if (v17 >= a3 || v14 >= *(a1 + 144))
      {
        continue;
      }

      v20 = &a2[8 * v17];
      if (*v20 == 33)
      {
        if (v20[6] != 35)
        {
          goto LABEL_21;
        }
      }

      else if (*v20 != 8 || !v20[6])
      {
        goto LABEL_21;
      }

      i = 1;
LABEL_21:
      result = *v20;
      v21 = *(v20 + 1);
      v22 = *(a1 + 136) + 32 * v14;
      *v22 = result;
      *(v22 + 16) = v21;
      ++v17;
      ++v14;
    }

    if (v15 || (*(a1 + 16) & 1) != 0)
    {
      v23 = (*(a1 + 136) + 32 * v14);
      *v23 = 33;
      v23[6] = *(*(a1 + 64) + v15);
      ++v14;
      ++*(*(a1 + 80) + 2 * v15);
    }

    ++v15;
    v24 = *(a1 + 72);
  }

  while (v15 < v24);
  v25 = v24 > 2;
LABEL_30:
  *(a1 + 144) = v14;
  *a4 = v17;
  if (**(a1 + 64) == 35)
  {
    v26 = *(a1 + 80);
    if (!*v26)
    {
      v27 = *(v26 + 2);
      if (v25)
      {
        if (v27 >= v14)
        {
          v28 = v14;
        }

        else
        {
          v28 = *(v26 + 2);
        }

        if (v28)
        {
          v29 = 0;
          v30 = *(a1 + 136);
          v31 = 32 * v28;
          while (*(v30 + v29) != 0x4000)
          {
            v29 += 32;
            if (v31 == v29)
            {
              return result;
            }
          }

          v32 = (v30 + v29);
          result = *(v30 + 16);
          v34 = *v32;
          v33 = v32[1];
          *v32 = *v30;
          v32[1] = result;
          v35 = *(a1 + 136);
          *v35 = v34;
          v35[1] = v33;
          v36 = *(a1 + 80);
          ++*v36;
          --v36[1];
        }
      }

      else
      {
        *v26 = v27;
      }
    }
  }

  return result;
}

uint64_t Synth_UnlinkMsgLayers(void *a1)
{
  v2 = a1[69];
  if (v2)
  {
    heap_Free(*(a1[2] + 8), v2);
    a1[69] = 0;
  }

  v3 = a1[67];
  if (v3)
  {
    heap_Free(*(a1[2] + 8), v3);
    a1[67] = 0;
  }

  v4 = a1[76];
  if (v4)
  {
    heap_Free(*(a1[2] + 8), v4);
    a1[76] = 0;
  }

  v5 = a1[74];
  if (v5)
  {
    heap_Free(*(a1[2] + 8), v5);
    a1[74] = 0;
  }

  v6 = a1[81];
  if (v6)
  {
    heap_Free(*(a1[2] + 8), v6);
    a1[81] = 0;
  }

  v7 = a1[78];
  if (v7)
  {
    heap_Free(*(a1[2] + 8), v7);
    a1[78] = 0;
  }

  v8 = a1[80];
  if (v8)
  {
    heap_Free(*(a1[2] + 8), v8);
    a1[80] = 0;
  }

  return 0;
}

uint64_t Synth_Reset(uint64_t a1)
{
  *(a1 + 1084) = 0;
  *(a1 + 1032) = 0;
  *(a1 + 1016) = 0u;
  *(*(*(a1 + 1088) + 72) + 4) = 0;
  *(a1 + 1068) = 3;
  InOut__ResetOutputState(a1);
  *(a1 + 1096) = 0;
  *(a1 + 1036) = 0;
  *(a1 + 1076) = 0;
  return 0;
}

uint64_t Synth__InitForProcessing(uint64_t a1)
{
  v2 = *(a1 + 632);
  v3 = *(a1 + 1088);
  *(v3 + 168) = v2;
  v4 = *(a1 + 624);
  *(v3 + 152) = *(a1 + 640);
  *(v3 + 160) = v4;
  if ((*(a1 + 1152) & 2) != 0)
  {
    *(a1 + 1144) = (*(a1 + 528) & 4) != 0;
  }

  else
  {
    *(a1 + 1144) = 1;
    if (v2)
    {
      v5 = 0;
      do
      {
        v6 = Convert2Samples(a1, *(*(v3 + 152) + 56 * v5 + 28));
        v7 = *(*(a1 + 1088) + 152) + 56 * v5;
        *(v7 + 28) = v6;
        v8 = Convert2Samples(a1, *(v7 + 32));
        v3 = *(a1 + 1088);
        v9 = *(v3 + 152);
        *(v9 + 56 * v5 + 32) = v8;
        v10 = *(v9 + 56 * v5 + 40);
        if (v10 >= 1)
        {
          v11 = Convert2SamplesX(a1, v10);
          v3 = *(a1 + 1088);
          v9 = *(v3 + 152);
          *(v9 + 56 * v5 + 40) = v11;
        }

        v12 = v9 + 56 * v5;
        v13 = *(v12 + 46);
        if (*(v12 + 46))
        {
          v14 = 0;
          v15 = (*(v3 + 160) + 16 * *(v12 + 44) + 4);
          do
          {
            if (*v15 >= 1)
            {
              v16 = Convert2Samples(a1, *v15);
              *v15 = v16;
              v14 += v16;
            }

            v15 += 4;
            --v13;
          }

          while (v13);
          v3 = *(a1 + 1088);
          v17 = *(v3 + 152) + 56 * v5;
          v19 = *(v17 + 32);
          v18 = (v17 + 32);
          if (v14 > v19)
          {
            *v18 = v14;
          }
        }

        ++v5;
        v20 = *(v3 + 168);
      }

      while (v5 < v20);
    }

    else
    {
      LOWORD(v20) = 0;
    }

    do
    {
      if (v20 < 3u)
      {
        break;
      }

      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 1;
      do
      {
        v25 = *(v3 + 152);
        v26 = v25 + 56 * v24;
        if (!*(v26 + 32) && !*(v26 + 40))
        {
          v27 = v25 + 56 * v24;
          *(v27 - 10) += *(v26 + 46);
          *(v27 - 8) = *(v27 - 8) & 0xF | 0x40;
          *(v26 + 104) = *(v26 + 104) & 0xF0 | 4;
          if (v24 <= v20 - 2)
          {
            v28 = v21;
            v29 = v22;
            do
            {
              v30 = *(v3 + 152) + v28;
              v31 = *(v30 + 128);
              *(v30 + 56) = *(v30 + 112);
              *(v30 + 72) = v31;
              *(v30 + 88) = *(v30 + 144);
              *(v30 + 104) = *(v30 + 160);
              v3 = *(a1 + 1088);
              ++v29;
              v28 += 56;
            }

            while (v29 < *(v3 + 168) - 2);
            LOWORD(v20) = *(v3 + 168);
          }

          *(v3 + 168) = v20 - 1;
          ++v23;
        }

        ++v24;
        v20 = *(v3 + 168);
        ++v22;
        v21 += 56;
      }

      while (v24 < (v20 - 1));
    }

    while (v23 > 0);
    if (*(a1 + 618))
    {
      v32 = 56 * v20 - 56;
      v33 = *(v3 + 152) + v32;
      v34 = *(v33 + 46) - 1;
      *(a1 + 1096) = Convert2SamplesX(a1, *(*(v3 + 160) + 16 * (v34 + *(v33 + 44))));
      *(a1 + 1144) = 1;
      v35 = (*(*(a1 + 1088) + 160) + 16 * (v34 + *(*(*(a1 + 1088) + 152) + v32 + 44)));
      if ((*v35 & 0x30000) == 0x20000)
      {
        *(a1 + 1144) = 0;
      }

      *v35 = 0;
    }
  }

  return 0;
}

uint64_t Synth__SetVectPointer(uint64_t a1, uint64_t a2, int a3)
{
  if (a1)
  {
    *(a2 + 8) = a1;
    *a2 = a3;
    *(a2 + 4) = a3;
  }

  return 0;
}

uint64_t synth_CreateBrokerString(uint64_t a1, char *a2, size_t a3, int a4, int a5)
{
  v38 = *MEMORY[0x1E69E9840];
  v35 = 0;
  __s1 = 0;
  __s = 0;
  v34 = 0;
  v32 = 0;
  v31 = 0;
  *a2 = 0;
  Str = paramc_ParamGetStr(*(a1 + 40), "voiceaddon", &__s);
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_70;
  }

  if (!__s || !*__s)
  {
    goto LABEL_14;
  }

  v11 = strlen(__s);
  v12 = heap_Calloc(*(a1 + 8), 1, v11 + 19);
  if (!v12)
  {
    v22 = 2164269066;
    goto LABEL_71;
  }

  v13 = v12;
  strcpy(v12, "voiceaddonbaseuri.");
  strcat(v12, __s);
  Str = paramc_ParamGetStr(*(a1 + 40), v13, &__s1);
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_70;
  }

  heap_Free(*(a1 + 8), v13);
  if (__s1 && *__s1)
  {
    Str = strhelper_SafeCat(a2, __s1, 0xFFFFFFFFFFFFFFFFLL, a3);
    if ((Str & 0x80000000) != 0)
    {
      goto LABEL_70;
    }

    v14 = strlen(a2);
    v15 = 0;
    v16 = a2[v14 - 1];
    v17 = "_";
    if (a2[v14 - 1] && v16 != 47 && v16 != 92)
    {
      Str = strhelper_SafeCat(a2, "/", 0xFFFFFFFFFFFFFFFFLL, a3);
      if ((Str & 0x80000000) == 0)
      {
        v15 = 0;
        goto LABEL_15;
      }

LABEL_70:
      v22 = Str;
      goto LABEL_71;
    }
  }

  else
  {
LABEL_14:
    v17 = "/";
    v15 = 1;
  }

LABEL_15:
  Str = paramc_ParamGetStr(*(a1 + 40), "voice", &v34);
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_70;
  }

  if (__s && *__s)
  {
    Str = strhelper_SafeCat(a2, "synthvao", 0xFFFFFFFFFFFFFFFFLL, a3);
    if ((Str & 0x80000000) != 0)
    {
      goto LABEL_70;
    }

    Str = strhelper_SafeCat(a2, v17, 0xFFFFFFFFFFFFFFFFLL, a3);
    if ((Str & 0x80000000) != 0)
    {
      goto LABEL_70;
    }

    Str = paramc_ParamGetStr(*(a1 + 40), "voice", &v34);
    if ((Str & 0x80000000) != 0)
    {
      goto LABEL_70;
    }

    Str = strhelper_SafeCat(a2, v34, 0xFFFFFFFFFFFFFFFFLL, a3);
    if ((Str & 0x80000000) != 0)
    {
      goto LABEL_70;
    }

    Str = strhelper_SafeCat(a2, v17, 0xFFFFFFFFFFFFFFFFLL, a3);
    if ((Str & 0x80000000) != 0)
    {
      goto LABEL_70;
    }

    Str = strhelper_SafeCat(a2, __s, 0xFFFFFFFFFFFFFFFFLL, a3);
    if ((Str & 0x80000000) != 0)
    {
      goto LABEL_70;
    }

    Str = strhelper_SafeCat(a2, v17, 0xFFFFFFFFFFFFFFFFLL, a3);
    if ((Str & 0x80000000) != 0)
    {
      goto LABEL_70;
    }

    Str = strhelper_SafeCat(a2, "vao", 0xFFFFFFFFFFFFFFFFLL, a3);
    if ((Str & 0x80000000) != 0)
    {
      goto LABEL_70;
    }

    v18 = 0;
  }

  else
  {
    Str = strhelper_SafeCat(a2, "synth", 0xFFFFFFFFFFFFFFFFLL, a3);
    if ((Str & 0x80000000) != 0)
    {
      goto LABEL_70;
    }

    Str = strhelper_SafeCat(a2, v17, 0xFFFFFFFFFFFFFFFFLL, a3);
    if ((Str & 0x80000000) != 0)
    {
      goto LABEL_70;
    }

    Str = strhelper_SafeCat(a2, v34, 0xFFFFFFFFFFFFFFFFLL, a3);
    if ((Str & 0x80000000) != 0)
    {
      goto LABEL_70;
    }

    v18 = 1;
  }

  Str = strhelper_SafeCat(a2, v17, 0xFFFFFFFFFFFFFFFFLL, a3);
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_70;
  }

  if (a4 == 1)
  {
    Str = paramc_ParamGetStr(*(a1 + 40), "fecfg", &__s1);
    if ((Str & 0x80000000) != 0)
    {
      goto LABEL_70;
    }

    Str = strhelper_SafeCat(a2, __s1, 0xFFFFFFFFFFFFFFFFLL, a3);
    if ((Str & 0x80000000) != 0)
    {
      goto LABEL_70;
    }

    Str = strhelper_SafeCat(a2, v17, 0xFFFFFFFFFFFFFFFFLL, a3);
    if ((Str & 0x80000000) != 0)
    {
      goto LABEL_70;
    }
  }

  if (v18)
  {
    Str = paramc_ParamGetStr(*(a1 + 40), "reduction", &__s1);
    if ((Str & 0x80000000) != 0)
    {
      goto LABEL_70;
    }

    v19 = __s1;
    if (strstr(__s1, "dev") || strstr(v19, "DEV"))
    {
      v20 = "dev";
      v21 = a2;
    }

    else
    {
      v21 = a2;
      v20 = v19;
    }

    Str = strhelper_SafeCat(v21, v20, 0xFFFFFFFFFFFFFFFFLL, a3);
    if ((Str & 0x80000000) != 0)
    {
      goto LABEL_70;
    }

    Str = strhelper_SafeCat(a2, v17, 0xFFFFFFFFFFFFFFFFLL, a3);
    if ((Str & 0x80000000) != 0)
    {
      goto LABEL_70;
    }
  }

  Str = paramc_ParamGetStr(*(a1 + 40), "coder", &__s1);
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_70;
  }

  Str = strhelper_SafeCat(a2, __s1, 0xFFFFFFFFFFFFFFFFLL, a3);
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_70;
  }

  if ((paramc_ParamGetStr(*(a1 + 40), "bitrate", &__s1) & 0x80000000) != 0 || !*__s1 || (paramc_ParamGetStr(*(a1 + 40), "overheadframes", &v35) & 0x80000000) != 0 || !*v35)
  {
    v23 = &a2[strlen(a2)];
    while (v23 > a2)
    {
      v25 = *--v23;
      v24 = v25;
      if ((v25 - 48) >= 0xA)
      {
        if (v24 == 102)
        {
          v26 = strlen(v23);
          memmove(v23 + 1, v23, v26 + 1);
          *v23 = *v17;
          goto LABEL_63;
        }

        break;
      }
    }

    Str = strhelper_SafeCat(a2, v17, 0xFFFFFFFFFFFFFFFFLL, a3);
    if ((Str & 0x80000000) != 0)
    {
      goto LABEL_70;
    }

    Str = paramc_ParamGetInt(*(a1 + 40), "frequencyhz", &v32);
    if ((Str & 0x80000000) != 0)
    {
      goto LABEL_70;
    }

    v27 = strlen(a2);
    LH_itoa(v32 / 1000, &a2[v27], 0xAu);
  }

  else
  {
    Str = strhelper_SafeCat(a2, v17, 0xFFFFFFFFFFFFFFFFLL, a3);
    if ((Str & 0x80000000) != 0)
    {
      goto LABEL_70;
    }

    Str = strhelper_SafeCat(a2, __s1, 0xFFFFFFFFFFFFFFFFLL, a3);
    if ((Str & 0x80000000) != 0)
    {
      goto LABEL_70;
    }

    Str = strhelper_SafeCat(a2, v17, 0xFFFFFFFFFFFFFFFFLL, a3);
    if ((Str & 0x80000000) != 0)
    {
      goto LABEL_70;
    }

    Str = strhelper_SafeCat(a2, v35, 0xFFFFFFFFFFFFFFFFLL, a3);
    if ((Str & 0x80000000) != 0)
    {
      goto LABEL_70;
    }
  }

LABEL_63:
  vf_MakeLower(a2);
  if ((v15 & 1) == 0)
  {
    v28 = ".dat";
    goto LABEL_69;
  }

  v22 = paramc_ParamGetStr(*(a1 + 40), "datapackagename", &__s1);
  if ((v22 & 0x80000000) != 0)
  {
    goto LABEL_71;
  }

  if (!a5)
  {
    if (!__s1 || !*__s1)
    {
      goto LABEL_71;
    }

    Str = brokeraux_ComposeBrokerString(a1, a2, 0, 0, 0, 0, 0, v37, a3);
    if ((Str & 0x80000000) != 0)
    {
      goto LABEL_70;
    }

    *a2 = 0;
    v28 = v37;
LABEL_69:
    Str = strhelper_SafeCat(a2, v28, 0xFFFFFFFFFFFFFFFFLL, a3);
    goto LABEL_70;
  }

  if (cupreader_IsCupInTheScope(a1, &v31))
  {
    Str = cupreader_PrependCupName(a2, v31, a3);
    goto LABEL_70;
  }

LABEL_71:
  v29 = *MEMORY[0x1E69E9840];
  return v22;
}

uint64_t synth_ResetParams(uint64_t a1)
{
  result = (*(*(a1 + 984) + 48))(*(a1 + 992));
  if ((result & 0x80000000) == 0)
  {
    if ((*(a1 + 1152) & 1) == 0 || (result = (*(*(a1 + 1000) + 48))(*(a1 + 1008)), (result & 0x80000000) == 0))
    {
      result = paramc_ParamSetInt(*(*(a1 + 16) + 40), "waitfactor", 2u);
      if ((result & 0x80000000) == 0 && (*(a1 + 1152) & 2) != 0)
      {
        result = paramc_ParamSetUInt(*(*(a1 + 16) + 40), "rate", 0x64u);
        if ((result & 0x80000000) == 0)
        {
          v3 = *(*(a1 + 16) + 40);

          return paramc_ParamSetUInt(v3, "pitch", 0x64u);
        }
      }
    }
  }

  return result;
}

uint64_t synth_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2164269057;
  }

  result = 0;
  *a2 = &ISynth;
  return result;
}

uint64_t synth_ClassOpen(_WORD *a1, int a2, uint64_t a3)
{
  v5 = 0;
  if (!a3)
  {
    return 2164269063;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  result = InitRsrcFunction(a1, a2, &v5);
  if ((result & 0x80000000) == 0)
  {
    *a3 = v5;
    *(a3 + 8) = 83214;
  }

  return result;
}

uint64_t synth_ObjOpen(uint64_t a1, int a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v35 = 0;
  v36 = 0;
  v5 = 2164269066;
  v33 = 0;
  v34 = 0;
  if (!a5)
  {
    return 2164269063;
  }

  *a5 = 0;
  *(a5 + 8) = 0;
  inited = InitRsrcFunction(a3, a4, &v36);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  if ((safeh_HandleCheck(a1, a2, 83214, 408) & 0x80000000) != 0)
  {
    return 2164269064;
  }

  v12 = heap_Calloc(*(v36 + 8), 1, 1160);
  if (v12)
  {
    v13 = v12;
    *v12 = a3;
    *(v12 + 8) = a4;
    *(v12 + 1016) = 0u;
    *(v12 + 1032) = 2;
    v14 = v36;
    *(v12 + 16) = v36;
    *(v12 + 24) = a1;
    *(v12 + 1076) = 1;
    Object = objc_GetObject(*(v14 + 48), "SYNTHSTREAM", &v35);
    if ((Object & 0x80000000) == 0)
    {
      *(v13 + 32) = *(v35 + 8);
      Object = objc_GetObject(*(v36 + 48), "SYNTHOUTPUTSINK", &v35);
      if ((Object & 0x80000000) == 0)
      {
        v16 = v35;
        *(v13 + 488) = *(v35 + 8);
        *(v13 + 496) = *(v16 + 16);
        *(v13 + 960) = v13;
        *(v13 + 968) = synth_CheckChange;
        *(v13 + 976) = synth_LearnChange;
        *(v13 + 1144) = 1;
        v17 = heap_Calloc(*(v36 + 8), 1, 232);
        *(v13 + 1088) = v17;
        if (!v17)
        {
          goto LABEL_24;
        }

        v18 = (v13 + 960);
        LODWORD(v30) = 0;
        if ((paramc_ParamGetInt(*(*(v13 + 16) + 40), "waitfactor", &v30) & 0x80000000) != 0)
        {
          *(v13 + 1044) = 2;
          paramc_ParamSetInt(*(*(v13 + 16) + 40), "waitfactor", 2u);
        }

        else
        {
          v32 = 0;
          paramc_ParamGetUInt(*(*(v13 + 16) + 40), "finalsentencefound", &v32);
          if (v32 != 1)
          {
            *(v13 + 1044) = v30;
          }
        }

        paramc_ParamSetUInt(*(*(v13 + 16) + 40), "finalsentencefound", 0);
        v19 = *(*(v13 + 16) + 40);
        v30 = *v18;
        v31 = *(v13 + 976);
        Object = paramc_ListenerAdd(v19, "waitfactor", &v30);
        if ((Object & 0x80000000) == 0)
        {
          v20 = *(*(v13 + 16) + 40);
          v30 = *v18;
          v31 = *(v13 + 976);
          Object = paramc_ListenerAdd(v20, "finalsentencefound", &v30);
          if ((Object & 0x80000000) == 0)
          {
            v21 = *(*(v13 + 16) + 40);
            v30 = *v18;
            v31 = *(v13 + 976);
            Object = paramc_ListenerAdd(v21, "pitch", &v30);
            if ((Object & 0x80000000) == 0)
            {
              v22 = *(*(v13 + 16) + 40);
              v30 = *v18;
              v31 = *(v13 + 976);
              Object = paramc_ListenerAdd(v22, "pitch_baseline", &v30);
              if ((Object & 0x80000000) == 0)
              {
                Object = vol_GetInterface(1u, (v13 + 984));
                if ((Object & 0x80000000) == 0)
                {
                  v33 = v13;
                  v34 = PushOutput;
                  v23 = (*(*(v13 + 984) + 32))(a3, a4, &v33, v13 + 992);
                  if ((v23 & 0x80000000) != 0)
                  {
                    v5 = v23;
                    *(v13 + 992) = 0;
                  }

                  else
                  {
                    *a5 = v13;
                    *(a5 + 8) = 83213;
                    v5 = synth_ObjReopen(v13, *(a5 + 8));
                    if ((v5 & 0x80000000) == 0)
                    {
                      log_OutEvent(*(v36 + 32), 21, "", v24, v25, v26, v27, v28, v30);
                      return v5;
                    }
                  }

LABEL_24:
                  synth_loc_ObjClose(v13, 0);
                  *a5 = 0;
                  *(a5 + 8) = 0;
                  return v5;
                }
              }
            }
          }
        }
      }
    }

    v5 = Object;
    goto LABEL_24;
  }

  return v5;
}

uint64_t synth_ObjClose(uint64_t a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 83213, 1160) & 0x80000000) != 0)
  {
    return 2164269064;
  }

  return synth_loc_ObjClose(a1, 0);
}

uint64_t synth_ObjReopen(_WORD **a1, int a2)
{
  v56 = *MEMORY[0x1E69E9840];
  v3 = 2164269066;
  memset(v55, 0, sizeof(v55));
  v53 = 0;
  __s1 = 0;
  v52 = 0;
  v50 = 0;
  v48 = 0;
  __s2 = 0;
  __s = 0;
  if ((safeh_HandleCheck(a1, a2, 83213, 1160) & 0x80000000) != 0)
  {
    v3 = 2164269064;
    goto LABEL_85;
  }

  v51 = 0;
  v49 = 0;
  v47 = 0;
  v4 = a1[2];
  paramc_ParamSetStr(*(v4 + 5), "voiceaddon", "");
  BrokerString = synth_CreateBrokerString(a1[2], v55, 0x100uLL, 0, 0);
  if ((BrokerString & 0x80000000) == 0)
  {
    v6 = BrokerString;
    if (!LH_stricmp(v55, a1 + 672))
    {
      goto LABEL_12;
    }
  }

  v7 = synth_CreateBrokerString(a1[2], v55, 0x100uLL, 1, 0);
  if ((v7 & 0x80000000) != 0)
  {
    goto LABEL_13;
  }

  v6 = v7;
  if (!LH_stricmp(v55, a1 + 672))
  {
LABEL_12:
    v3 = v6;
    goto LABEL_85;
  }

  if ((Lookup_CheckForDataFile(*a1, a1[1], v55, &v50) & 0x80000000) != 0)
  {
    LOBYTE(v55[0]) = 0;
  }

  if (v50)
  {
    if (LOBYTE(v55[0]))
    {
      goto LABEL_21;
    }

    goto LABEL_14;
  }

LABEL_13:
  LOBYTE(v55[0]) = 0;
LABEL_14:
  Int = synth_CreateBrokerString(a1[2], v55, 0x100uLL, 0, 0);
  if ((Int & 0x80000000) != 0)
  {
    goto LABEL_84;
  }

  Int = Lookup_CheckForDataFile(*a1, a1[1], v55, &v50);
  if ((Int & 0x80000000) != 0)
  {
    goto LABEL_84;
  }

  if (v50)
  {
    if (LOBYTE(v55[0]))
    {
      goto LABEL_21;
    }
  }

  else
  {
    LOBYTE(v55[0]) = 0;
  }

  Int = synth_CreateBrokerString(a1[2], v55, 0x100uLL, 0, 1);
  if ((Int & 0x80000000) != 0)
  {
    goto LABEL_84;
  }

LABEL_21:
  Int = synth_loc_ObjClose(a1, 1);
  if ((Int & 0x80000000) != 0)
  {
    goto LABEL_84;
  }

  __strcpy_chk();
  Int = paramc_ParamGetInt(*(a1[2] + 5), "frequencyhz", a1 + 260);
  if ((Int & 0x80000000) != 0)
  {
    goto LABEL_84;
  }

  Psola_GetToolSynthMode(&v51);
  if (v51 == 1)
  {
    v9 = 2;
    goto LABEL_29;
  }

  if (!v51)
  {
    v9 = 1;
LABEL_29:
    *(a1 + 1152) = v9;
    goto LABEL_30;
  }

  if (v51 >= 2)
  {
    v9 = 6;
    goto LABEL_29;
  }

  *(a1 + 1152) = 1;
  if ((paramc_ParamGetStr(*(v4 + 5), "typeofsynthesis", &__s1) & 0x80000000) == 0)
  {
    if (!strcmp(__s1, "psola"))
    {
      *(a1 + 1152) = 2;
    }

    paramc_ParamRelease(*(v4 + 5));
  }

LABEL_30:
  if ((a1[144] & 2) != 0)
  {
    v44 = 0;
    if ((paramc_ParamGetUInt(*(a1[2] + 5), "rate_baseline", &v44 + 1) & 0x80000000) != 0)
    {
      *(a1 + 264) = 100;
      paramc_ParamSetUInt(*(a1[2] + 5), "rate_baseline", 0x64u);
    }

    else
    {
      *(a1 + 264) = WORD2(v44);
    }

    if ((paramc_ParamGetUInt(*(a1[2] + 5), "rate", &v44 + 1) & 0x80000000) != 0)
    {
      *(a1 + 526) = 100;
      paramc_ParamSetUInt(*(a1[2] + 5), "rate", 0x64u);
      v11 = *(a1 + 526);
    }

    else
    {
      v11 = WORD2(v44);
      *(a1 + 526) = WORD2(v44);
    }

    *(a1 + 526) = MapProsodyValue_Scaling(50, 100, 400, *(a1 + 264), v11);
    if ((paramc_ParamGetUInt(*(a1[2] + 5), "pitch_baseline", &v44) & 0x80000000) != 0)
    {
      *(a1 + 265) = 100;
      paramc_ParamSetUInt(*(a1[2] + 5), "pitch_baseline", 0x64u);
    }

    else
    {
      *(a1 + 265) = v44;
    }

    if ((paramc_ParamGetUInt(*(a1[2] + 5), "pitch", &v44) & 0x80000000) != 0)
    {
      *(a1 + 527) = 100;
      paramc_ParamSetUInt(*(a1[2] + 5), "pitch", 0x64u);
      v12 = *(a1 + 527);
    }

    else
    {
      v12 = v44;
      *(a1 + 527) = v44;
    }

    *(a1 + 527) = MapProsodyValue_Scaling(50, 100, 200, *(a1 + 265), v12);
    v13 = *(a1[2] + 5);
    v42 = *(a1 + 60);
    v43 = a1[122];
    Int = paramc_ListenerAdd(v13, "rate_baseline", &v42);
    if ((Int & 0x80000000) != 0)
    {
      goto LABEL_84;
    }

    v14 = *(a1[2] + 5);
    v42 = *(a1 + 60);
    v43 = a1[122];
    Int = paramc_ListenerAdd(v14, "rate", &v42);
    if ((Int & 0x80000000) != 0)
    {
      goto LABEL_84;
    }

    if (a1[126])
    {
      (*(a1[125] + 5))();
      a1[126] = 0;
    }
  }

  else if ((a1[144] & 1) != 0 && !a1[126])
  {
    Int = tsm_GetInterface(1u, a1 + 125);
    if ((Int & 0x80000000) == 0)
    {
      v10 = *(a1[123] + 7);
      *&v42 = a1[124];
      *(&v42 + 1) = v10;
      Int = (*(a1[125] + 4))(*a1, a1[1], &v42, a1 + 126);
      if ((Int & 0x80000000) != 0)
      {
        a1[126] = 0;
        goto LABEL_84;
      }

      goto LABEL_52;
    }

LABEL_84:
    v3 = Int;
    goto LABEL_85;
  }

LABEL_52:
  synth_Wsola__Wsola(a1);
  v15 = a1[136];
  v16 = *(v15 + 3);
  v17 = heap_Alloc(*(v4 + 1), 4 * v16);
  a1[138] = v17;
  if (v17)
  {
    Synth__SetVectPointer(v17, *(v15 + 6), v16);
    v18 = *(v15 + 3);
    v19 = heap_Alloc(*(v4 + 1), 4 * v18);
    a1[139] = v19;
    if (v19)
    {
      Synth__SetVectPointer(v19, *(v15 + 8), v18);
      v20 = (*(v15 + 2) + *(v15 + 3));
      v21 = heap_Alloc(*(v4 + 1), 4 * v20);
      a1[140] = v21;
      if (v21)
      {
        Synth__SetVectPointer(v21, *(v15 + 9), v20);
        v22 = heap_Alloc(*(v4 + 1), 2 * *(v15 + 3));
        a1[142] = v22;
        if (v22)
        {
          *(v15 + 5) = v22;
          synth_SetWaitPeriod(a1, *(a1 + 522));
          Int = synth_GetDataHandles(a1, v55, &v49, &v48, &v47);
          if ((Int & 0x80000000) != 0)
          {
            goto LABEL_84;
          }

          *(a1 + 232) = 1;
          v23 = heap_Calloc(*(v4 + 1), 1, 40);
          a1[117] = v23;
          if (v23)
          {
            v24 = v48;
            v25 = v23 + 40 * (*(a1 + 232) - 1);
            *v25 = v49;
            *(v25 + 8) = v24;
            *(v25 + 16) = v47;
            *(v25 + 24) = 0;
            v26 = heap_Calloc(*(v4 + 1), 1, 1);
            *&a1[117][20 * (*(a1 + 232) - 1) + 16] = v26;
            if (v26)
            {
              Int = paramc_ParamGetStr(*(v4 + 5), "voice", &v53);
              if ((Int & 0x80000000) != 0)
              {
                goto LABEL_84;
              }

              if ((paramc_ParamGetStr(*(v4 + 5), "voiceoperatingpoint", &__s) & 0x80000000) != 0)
              {
                v27 = 0;
              }

              else
              {
                v27 = strlen(__s) + 1;
              }

              if ((paramc_ParamGetStr(*(v4 + 5), "vopversion", &__s2) & 0x80000000) != 0 || (v28 = __s2, !strcmp(__s2, "0.0.0")))
              {
                v29 = 0;
              }

              else
              {
                v29 = strlen(v28) + 1;
              }

              v30 = strlen(v53);
              v31 = heap_Calloc(*(v4 + 1), 1, (v27 + v29 + v30 + 14));
              a1[118] = v31;
              if (v31)
              {
                strcpy(v31, "voiceaddons.");
                v32 = strlen(a1[118]);
                v33 = v53;
                if (*v53)
                {
                  v34 = v32;
                  v35 = 0;
                  v36 = 1;
                  do
                  {
                    *(a1[118] + v34) = __tolower(v33[v35]);
                    v35 = v36;
                    v33 = v53;
                    ++v34;
                  }

                  while (strlen(v53) > v36++);
                }

                if (v27)
                {
                  *(a1[118] + strlen(a1[118])) = 46;
                  strcat(a1[118], __s);
                }

                if (v29)
                {
                  *(a1[118] + strlen(a1[118])) = 46;
                  strcat(a1[118], __s2);
                }

                paramc_ParamRelease(*(v4 + 5));
                if ((paramc_ParamGetStr(*(v4 + 5), a1[118], &v52) & 0x80000000) == 0 || (Int = paramc_ParamSetStr(*(v4 + 5), a1[118], ""), (Int & 0x80000000) == 0) && (Int = paramc_ParamGetStr(*(v4 + 5), a1[118], &v52), (Int & 0x80000000) == 0))
                {
                  Int = synth_UpdateAddons(a1, v52);
                  if ((Int & 0x80000000) == 0)
                  {
                    paramc_ParamRelease(*(v4 + 5));
                    v38 = *(v4 + 5);
                    v39 = a1[118];
                    v42 = *(a1 + 60);
                    v43 = a1[122];
                    Int = paramc_ListenerAdd(v38, v39, &v42);
                  }
                }

                goto LABEL_84;
              }
            }
          }
        }
      }
    }
  }

LABEL_85:
  v40 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t synth_ProcessStart(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = 2164269065;
  if ((safeh_HandleCheck(a1, a2, 83213, 1160) & 0x80000000) != 0)
  {
    result = 2164269064;
  }

  else
  {
    *(a1 + 328) = 0;
    v8 = a1 + 40;
    v9 = "text/x-realspeak-usphonemes;charset=tts";
    v10 = 1u;
    do
    {
      v11 = *(a1 + 328);
      if (v11 > 8)
      {
        goto LABEL_17;
      }

      result = (*(*(a1 + 32) + 64))(a3, a4, 16, v9, 0, 0, v8 + 32 * v11 + 16);
      if ((result & 0x80000000) != 0)
      {
        goto LABEL_10;
      }

      v13 = *(a1 + 328);
      v14 = v8 + 32 * v13;
      *v14 = 0;
      *(v14 + 8) = v9;
      *(a1 + 328) = v13 + 1;
      v9 = synth_ProcessStart_szINPUT_STREAMS[v10++];
    }

    while (v10 != 7);
    v11 = *(a1 + 328);
    if (v11 > 8)
    {
      goto LABEL_17;
    }

    result = (*(*(a1 + 32) + 64))(a3, a4, 16, "application/x-realspeak-markers-pp;version=4.0", 0, 0, v8 + 32 * v11 + 16);
    if ((result & 0x80000000) == 0)
    {
      v15 = *(a1 + 328);
      v16 = v8 + 32 * v15;
      *v16 = 0;
      *(v16 + 8) = "application/x-realspeak-markers-pp;version=4.0";
      LOWORD(v15) = v15 + 1;
      *(a1 + 328) = v15;
      result = (*(*(a1 + 32) + 64))(a3, a4, 16, "application/x-realspeak-markers-pp;version=4.0", 0, 1, v8 + 32 * v15 + 16);
      if ((result & 0x80000000) == 0)
      {
        v17 = *(a1 + 328);
        v18 = v8 + 32 * v17;
        *v18 = 1;
        *(v18 + 8) = "application/x-realspeak-markers-pp;version=4.0";
        *(a1 + 480) = v17;
        *(a1 + 328) = v17 + 1;
      }
    }

LABEL_10:
    LODWORD(v11) = *(a1 + 328);
    if (v11 > 8)
    {
LABEL_17:
      v21 = 0;
      v22 = (a1 + 64);
      do
      {
        v23 = *(v22 - 1);
        if (v23)
        {
          (*(*(a1 + 32) + 72))(v23, *v22);
          LOWORD(v11) = *(a1 + 328);
        }

        ++v21;
        v22 += 4;
      }

      while (v21 < v11);
      LOWORD(v11) = 0;
      result = v7;
      goto LABEL_22;
    }

    if ((result & 0x80000000) == 0)
    {
      strcpy(v25, "audio/L16;rate=");
      v19 = strlen(v25);
      LH_itoa(*(a1 + 1040), &v25[v19], 0xAu);
      result = (*(*(a1 + 32) + 64))(a3, a4, 16, v25, 0, 1, v8 + 32 * *(a1 + 328) + 16);
      v11 = *(a1 + 328);
      if ((result & 0x80000000) == 0)
      {
        v20 = v8 + 32 * v11;
        *v20 = 1;
        *(v20 + 8) = 0;
        *(a1 + 482) = v11;
        LOWORD(v11) = v11 + 1;
        goto LABEL_22;
      }
    }

    if (v11)
    {
      v7 = result;
      goto LABEL_17;
    }

LABEL_22:
    *(a1 + 328) = v11;
  }

  v24 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t synth_Process(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v39 = 0;
  if ((safeh_HandleCheck(a1, a2, 83213, 1160) & 0x80000000) != 0)
  {
    return 2164269064;
  }

  *a5 = 1;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 336) = 0u;
  v7 = (*(*(a1 + 32) + 144))(*(a1 + 56), *(a1 + 64), &v39 + 4, &v39);
  if ((v7 & 0x80000000) != 0)
  {
    return v7;
  }

  if (HIDWORD(v39))
  {
    synth_doWsolaSynthesis(a1);
    v9 = v8;
    goto LABEL_5;
  }

  v40 = 0;
  v9 = Synth_RetrieveInputBlock(a1, "application/x-realspeak-markers-pp;version=4.0", &v40);
  if ((v9 & 0x80000000) != 0)
  {
    goto LABEL_61;
  }

  v13 = *(v40 + 8);
  if (v13 < 0x20)
  {
    goto LABEL_61;
  }

  v14 = heap_Alloc(*(*(a1 + 16) + 8), v13);
  *(a1 + 648) = v14;
  if (!v14)
  {
    v9 = 2164269066;
    goto LABEL_61;
  }

  memcpy(v14, *v40, *(v40 + 8));
  v15 = 0;
  v16 = 0;
  *(a1 + 656) = *(v40 + 8) >> 5;
  v17 = (a1 + 1016);
  v18 = (a1 + 1024);
  while (1)
  {
    v19 = *(a1 + 656);
    if (v15 >= v19)
    {
      break;
    }

    v20 = (*(a1 + 648) + 32 * v15);
    v20[3] = 0;
    v20[4] = 0;
    v21 = *v20;
    if (*v20 == 8)
    {
      v23 = Convert2SamplesX(a1, v20[6]);
      if (v23)
      {
        v24 = v23;
        if (*v17)
        {
          goto LABEL_34;
        }

        *(a1 + 1024) = 0;
        *(a1 + 1032) = 0;
        if (*(a1 + 1152))
        {
          v9 = (*(*(a1 + 1000) + 56))(*(a1 + 1008), 0, a1 + 1016, a1 + 1024, 0, 0);
          if ((v9 & 0x80000000) == 0 && *v17)
          {
            goto LABEL_34;
          }
        }

        else
        {
          if ((*(a1 + 1152) & 2) != 0)
          {
            v9 = (*(*(a1 + 984) + 56))(*(a1 + 1008), 0, a1 + 1016, a1 + 1024, 0, 0);
          }

LABEL_34:
          while (1)
          {
            v25 = *v18;
            if (v24 >= *v18)
            {
              v24 -= v25;
            }

            else
            {
              *v18 = v24;
              v25 = v24;
              v24 = 0;
            }

            *(a1 + 1032) = 2;
            bzero(*(a1 + 1016), 2 * v25);
            if (*(a1 + 1152))
            {
              v9 = (*(*(a1 + 1000) + 56))(*(a1 + 1008), *(a1 + 1032), a1 + 1016, a1 + 1024, *(a1 + 648) + 32 * v16, v15 + 1 - v16);
              if ((v9 & 0x80000000) != 0 || !*v17)
              {
                break;
              }
            }

            v16 = v15 + 1;
            if (!v24)
            {
              v16 = v15 + 1;
              goto LABEL_25;
            }
          }
        }

        goto LABEL_58;
      }

      goto LABEL_25;
    }

    if (v21 == 25)
    {
      v22 = paramc_ParamSetUInt(*(*(a1 + 16) + 40), "waitfactor", v20[6]);
      goto LABEL_24;
    }

    if (v21 == 13)
    {
      v22 = synth_ResetParams(a1);
LABEL_24:
      v9 = v22;
    }

LABEL_25:
    ++v15;
    if ((v9 & 0x80000000) != 0)
    {
      LODWORD(v19) = *(a1 + 656);
      break;
    }
  }

  if (v16 >= v19)
  {
    goto LABEL_58;
  }

  if (!*v17)
  {
    *(a1 + 1024) = 0;
    *(a1 + 1032) = 0;
    if (*(a1 + 1152))
    {
      v9 = (*(*(a1 + 1000) + 56))(*(a1 + 1008), 0, a1 + 1016, a1 + 1024, 0, 0);
      if ((v9 & 0x80000000) != 0 || !*v17)
      {
        goto LABEL_58;
      }
    }

    else if ((*(a1 + 1152) & 2) != 0)
    {
      v9 = (*(*(a1 + 984) + 56))(*(a1 + 1008), 0, a1 + 1016, a1 + 1024, 0, 0);
    }
  }

  *(a1 + 1024) = 0;
  *(a1 + 1032) = 3;
  if (*(a1 + 1152))
  {
    v31 = 1000;
  }

  else
  {
    if ((*(a1 + 1152) & 2) == 0)
    {
      goto LABEL_58;
    }

    v31 = 984;
  }

  v9 = (*(*(a1 + v31) + 56))(*(a1 + 1008), 3, a1 + 1016, a1 + 1024, *(a1 + 648) + 32 * v16, *(a1 + 656) - v16);
LABEL_58:
  v32 = *(a1 + 648);
  if (v32)
  {
    heap_Free(*(*(a1 + 16) + 8), v32);
    *(a1 + 648) = 0;
  }

  *(a1 + 656) = 0;
  *(a1 + 1024) = 0;
  *(a1 + 1016) = 0;
LABEL_61:
  if (v39)
  {
    v33 = *(a1 + 328);
    if (*(a1 + 328))
    {
      v34 = 0;
      v35 = (a1 + 64);
      do
      {
        if (*(v35 - 1) && *(v35 - 6) == 1)
        {
          v36 = *v35;
          v37 = (*(*(a1 + 32) + 72))();
          if (v37 >= 0)
          {
            v9 = v9;
          }

          else
          {
            v9 = v37;
          }

          *(v35 - 1) = safeh_GetNullHandle();
          *v35 = v38;
          v33 = *(a1 + 328);
        }

        ++v34;
        v35 += 4;
      }

      while (v34 < v33);
    }
  }

LABEL_5:
  if ((v9 & 0x80000000) != 0)
  {
    goto LABEL_43;
  }

  v10 = (a1 + 64);
  v11 = -1;
  v12 = 344;
  while (++v11 < *(a1 + 328))
  {
    if (!*(v10 - 6))
    {
      v9 = (*(*(a1 + 32) + 96))(*(v10 - 1), *v10, *(a1 + v12));
    }

    v10 += 4;
    v12 += 16;
    if ((v9 & 0x80000000) != 0)
    {
      goto LABEL_43;
    }
  }

  if (InOut__IsEndState(a1))
  {
LABEL_43:
    v26 = *(a1 + 928);
    if (v26)
    {
      v27 = 0;
      for (i = 0; i < v26; ++i)
      {
        v29 = *(*(a1 + 936) + v27);
        if (v29)
        {
          Lookup_DeInit(v29);
          v26 = *(a1 + 928);
        }

        v27 += 40;
      }
    }

    *(a1 + 1076) = 1;
  }

  return v9;
}

uint64_t synth_ProcessEnd(uint64_t a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 83213, 1160);
  if ((v3 & 0x80000000) != 0)
  {
    return 2164269064;
  }

  v4 = v3;
  v5 = *(a1 + 328);
  if (*(a1 + 328))
  {
    v6 = 0;
    v7 = (a1 + 64);
    do
    {
      v8 = *(v7 - 1);
      if (v8)
      {
        v9 = (*(*(a1 + 32) + 72))(v8, *v7);
        if (v9 >= 0)
        {
          v4 = v4;
        }

        else
        {
          v4 = v9;
        }

        *(v7 - 1) = safeh_GetNullHandle();
        *v7 = v10;
        v5 = *(a1 + 328);
      }

      ++v6;
      v7 += 4;
    }

    while (v6 < v5);
  }

  *(a1 + 328) = 0;
  return v4;
}

uint64_t synth_CheckChange(uint64_t a1, char *__s1, const char *a3, _DWORD *a4)
{
  *a4 = 1;
  if (!strcmp(__s1, "waitfactor"))
  {
    if (atoi(a3) >= 0xA)
    {
      v8 = 2164269071;
      goto LABEL_10;
    }
  }

  else
  {
    if (!strcmp(__s1, *(a1 + 944)) || !strcmp(__s1, "finalsentencefound"))
    {
      return 0;
    }

    v8 = 2164269071;
    v9 = *(a1 + 1152);
    if ((v9 & 2) == 0)
    {
      goto LABEL_5;
    }

    if (!strcmp(__s1, "rate"))
    {
      goto LABEL_16;
    }

    if (!strcmp(__s1, "pitch") || !strcmp(__s1, "pitch_baseline"))
    {
LABEL_22:
      if ((atoi(a3) - 50) >= 0x97)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if (!strcmp(__s1, "rate_baseline"))
    {
LABEL_16:
      if ((atoi(a3) - 50) >= 0x15F)
      {
        goto LABEL_10;
      }
    }

    else
    {
LABEL_5:
      if ((v9 & 1) == 0)
      {
LABEL_6:
        v8 = 2164269063;
LABEL_10:
        *a4 = 0;
        return v8;
      }

      if (strcmp(__s1, "pitch"))
      {
        if (strcmp(__s1, "pitch_baseline"))
        {
          if (!*(a1 + 1076))
          {
            v8 = 2164269073;
            goto LABEL_10;
          }

          goto LABEL_6;
        }

        goto LABEL_22;
      }

      if (atoi(a3) != 100)
      {
        v8 = 2164269057;
        goto LABEL_10;
      }
    }
  }

  return 0;
}

uint64_t synth_LearnChange(uint64_t a1, char *__s1, char *a3)
{
  if (!strcmp(__s1, "waitfactor"))
  {
    v18 = 0;
    paramc_ParamGetUInt(*(*(a1 + 16) + 40), "finalsentencefound", &v18);
    if (v18 == 1)
    {
      goto LABEL_8;
    }

    v9 = LH_atou(a3);
    updated = synth_SetWaitPeriod(a1, v9);
LABEL_11:
    v7 = updated;
    if ((updated & 0x80000000) != 0)
    {
      return v7;
    }

    goto LABEL_12;
  }

  if (!strcmp(__s1, *(a1 + 944)))
  {
    updated = synth_UpdateAddons(a1, a3);
    goto LABEL_11;
  }

  if (!strcmp(__s1, "finalsentencefound"))
  {
    if (LH_atou(a3) == 1)
    {
      v17 = 0;
      WaitPeriod = synth_GetWaitPeriod(a1, &v17);
      if ((WaitPeriod & 0x80000000) != 0)
      {
        return WaitPeriod;
      }

      paramc_ParamSetUInt(*(*(a1 + 16) + 40), "waitfactorbackup", v17);
      v7 = synth_SetWaitPeriod(a1, 0);
    }

    else
    {
      v16 = 0;
      paramc_ParamGetUInt(*(*(a1 + 16) + 40), "waitfactorbackup", &v16);
      v15 = synth_SetWaitPeriod(a1, v16);
      v7 = v15 & (v15 >> 31);
      if (v15 < 0)
      {
        return v7;
      }
    }

    if ((v7 & 0x80000000) != 0)
    {
      return v7;
    }

    goto LABEL_12;
  }

LABEL_8:
  v7 = 2164269063;
LABEL_12:
  if ((*(a1 + 1152) & 2) != 0)
  {
    if (strcmp(__s1, "pitch") || (v10 = LH_atou(a3), v7 = synth_SetPitch(a1, v10), (v7 & 0x80000000) == 0))
    {
      if (!strcmp(__s1, "pitch_baseline"))
      {
        v12 = LH_atoi(a3);
        return synth_SetPitchBaseline(a1, v12);
      }

      if (!strcmp(__s1, "rate"))
      {
        v13 = LH_atou(a3);
        return synth_SetRate(a1, v13);
      }

      if (!strcmp(__s1, "rate_baseline"))
      {
        v11 = LH_atou(a3);
        return synth_SetRateBaseline(a1, v11);
      }
    }
  }

  return v7;
}

uint64_t PushOutput(uint64_t a1, int a2, void *a3, int *a4, uint64_t a5, unsigned int a6)
{
  v24 = 0;
  v25 = a6;
  result = 2164269062;
  if (a1 && a3 && a4)
  {
    result = 0;
    if (a5)
    {
      v13 = 0;
      if (a6)
      {
        v14 = a1 + 40 + 32 * *(a1 + 482);
        result = (*(*(a1 + 32) + 136))(*(v14 + 16), *(v14 + 24), &v24);
        v15 = v24 >> 1;
        v24 >>= 1;
        if ((result & 0x80000000) != 0)
        {
          v13 = 0;
        }

        else
        {
          v16 = a6;
          v17 = 12;
          do
          {
            *(a5 + v17) += v15;
            v17 += 32;
            --v16;
          }

          while (v16);
          v18 = a1 + 40 + 32 * *(a1 + 480);
          result = (*(*(a1 + 32) + 104))(*(v18 + 16), *(v18 + 24), a5, 32 * a6);
          v13 = 1;
        }
      }
    }

    else
    {
      v13 = 0;
    }

    if (*a3 && *a4)
    {
      v19 = a1 + 32 * *(a1 + 482);
      result = (*(*(a1 + 32) + 120))(*(v19 + 56), *(v19 + 64), (2 * *a4));
      *a3 = 0;
      v13 = 1;
    }

    if ((result & 0x80000000) != 0)
    {
      goto LABEL_26;
    }

    v20 = 2 * v13;
    v21 = a2 == 3 ? 1 : v20;
    result = (**(a1 + 488))(*(a1 + 496), *(a1 + 504), v21, a4, &v25);
    if ((result & 0x80000000) != 0)
    {
      goto LABEL_26;
    }

    v22 = *a4;
    if (a2 != 3 && v22)
    {
      v23 = a1 + 32 * *(a1 + 482);
      result = (*(*(a1 + 32) + 112))(*(v23 + 56), *(v23 + 64), a3, (2 * v22));
      if ((result & 0x80000000) != 0)
      {
LABEL_26:
        *a3 = 0;
        *a4 = 0;
        return result;
      }

      v22 = *a4;
    }

    if (a2 == 3 || !v22)
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t synth_loc_ObjClose(uint64_t a1, int a2)
{
  *(a1 + 672) = 0;
  v4 = *(a1 + 944);
  if (v4)
  {
    v5 = *(*(a1 + 16) + 40);
    v38 = *(a1 + 960);
    v39 = *(a1 + 976);
    v6 = paramc_ListenerRemove(v5, v4, &v38);
    paramc_ParamSetStr(*(*(a1 + 16) + 40), "voiceaddon", "");
    v7 = v6 & (v6 >> 31);
    v8 = *(a1 + 944);
    if (v8)
    {
      heap_Free(*(*(a1 + 16) + 8), v8);
      *(a1 + 944) = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  if (*(a1 + 928))
  {
    v9 = 0;
    v10 = 0;
    v11 = *(a1 + 936);
    v12 = v11;
    do
    {
      if (v12)
      {
        if (*(v12 + v9))
        {
          v7 = Lookup_ObjClose((v12 + v9));
          v11 = *(a1 + 936);
        }

        if (*(v11 + v9 + 16))
        {
          v7 = Pmk_Lookup_ObjClose(v11 + v9 + 16);
          v11 = *(a1 + 936);
        }

        if (*(v11 + v9 + 32))
        {
          heap_Free(*(*(a1 + 16) + 8), *(v11 + v9 + 32));
          v11 = *(a1 + 936);
          *(v11 + v9 + 32) = 0;
        }

        v12 = v11;
      }

      ++v10;
      v9 += 40;
    }

    while (v10 < *(a1 + 928));
    if (v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = *(a1 + 936);
    if (v11)
    {
LABEL_17:
      heap_Free(*(*(a1 + 16) + 8), v11);
      *(a1 + 936) = 0;
    }
  }

  *(a1 + 928) = 0;
  v13 = *(a1 + 1104);
  if (v13)
  {
    heap_Free(*(*(a1 + 16) + 8), v13);
    *(a1 + 1104) = 0;
  }

  v14 = *(a1 + 1112);
  if (v14)
  {
    heap_Free(*(*(a1 + 16) + 8), v14);
    *(a1 + 1112) = 0;
  }

  v15 = *(a1 + 1120);
  if (v15)
  {
    heap_Free(*(*(a1 + 16) + 8), v15);
    *(a1 + 1120) = 0;
  }

  v16 = *(a1 + 1136);
  if (v16)
  {
    heap_Free(*(*(a1 + 16) + 8), v16);
    *(a1 + 1136) = 0;
  }

  if ((*(a1 + 1152) & 2) != 0)
  {
    v17 = *(*(a1 + 16) + 40);
    v38 = *(a1 + 960);
    v39 = *(a1 + 976);
    v18 = paramc_ListenerRemove(v17, "rate", &v38);
    if (v7 > -1 && v18 < 0)
    {
      LODWORD(v7) = v18;
    }

    v20 = *(*(a1 + 16) + 40);
    v38 = *(a1 + 960);
    v39 = *(a1 + 976);
    v21 = paramc_ListenerRemove(v20, "rate_baseline", &v38);
    if (v7 > -1 && v21 < 0)
    {
      v7 = v21;
    }

    else
    {
      v7 = v7;
    }
  }

  if (a2)
  {
    v23 = *(a1 + 1088);
    *(v23 + 224) = 0;
    *(v23 + 192) = 0u;
    *(v23 + 208) = 0u;
    *(v23 + 160) = 0u;
    *(v23 + 176) = 0u;
    *(v23 + 128) = 0u;
    *(v23 + 144) = 0u;
    *(v23 + 96) = 0u;
    *(v23 + 112) = 0u;
    *(v23 + 64) = 0u;
    *(v23 + 80) = 0u;
    *(v23 + 32) = 0u;
    *(v23 + 48) = 0u;
    *v23 = 0u;
    *(v23 + 16) = 0u;
  }

  else
  {
    if (*(a1 + 1008))
    {
      (*(*(a1 + 1000) + 40))();
      *(a1 + 1008) = 0;
    }

    if (*(a1 + 992))
    {
      (*(*(a1 + 984) + 40))();
      *(a1 + 992) = 0;
    }

    v24 = *(*(a1 + 16) + 40);
    v38 = *(a1 + 960);
    v39 = *(a1 + 976);
    v25 = paramc_ListenerRemove(v24, "waitfactor", &v38);
    if (v7 > -1 && v25 < 0)
    {
      LODWORD(v7) = v25;
    }

    v27 = *(*(a1 + 16) + 40);
    v38 = *(a1 + 960);
    v39 = *(a1 + 976);
    v28 = paramc_ListenerRemove(v27, "finalsentencefound", &v38);
    if (v7 > -1 && v28 < 0)
    {
      LODWORD(v7) = v28;
    }

    v30 = *(*(a1 + 16) + 40);
    v38 = *(a1 + 960);
    v39 = *(a1 + 976);
    v31 = paramc_ListenerRemove(v30, "pitch", &v38);
    if (v7 > -1 && v31 < 0)
    {
      LODWORD(v7) = v31;
    }

    v33 = *(*(a1 + 16) + 40);
    v38 = *(a1 + 960);
    v39 = *(a1 + 976);
    v34 = paramc_ListenerRemove(v33, "pitch_baseline", &v38);
    if (v7 > -1 && v34 < 0)
    {
      v7 = v34;
    }

    else
    {
      v7 = v7;
    }

    v36 = *(a1 + 1088);
    if (v36)
    {
      heap_Free(*(*(a1 + 16) + 8), v36);
      *(a1 + 1088) = 0;
    }

    if (*(a1 + 488))
    {
      objc_ReleaseObject(*(*(a1 + 16) + 48), "SYNTHOUTPUTSINK");
    }

    if (*(a1 + 32))
    {
      objc_ReleaseObject(*(*(a1 + 16) + 48), "SYNTHSTREAM");
    }

    heap_Free(*(*(a1 + 16) + 8), a1);
  }

  return v7;
}

uint64_t synth_UpdateAddons(uint64_t a1, char *__s)
{
  v56 = *MEMORY[0x1E69E9840];
  v4 = 2164269066;
  v5 = *(*(a1 + 16) + 8);
  v6 = strlen(__s);
  v7 = heap_Calloc(v5, 1, (v6 + 1));
  if (v7)
  {
    v8 = v7;
    strcpy(v7, __s);
    if (*(a1 + 928) >= 2u)
    {
      v9 = 0;
      v10 = 0;
      v11 = 1;
      while (1)
      {
        v12 = strchr(v8, 59);
        if (!v12)
        {
          goto LABEL_64;
        }

        v13 = v12;
        v14 = v8;
        do
        {
          *v13 = 0;
          v15 = strcmp(v14, *(*(a1 + 936) + 40 * v11 + 32));
          *v13 = 59;
          v14 = v13 + 1;
          v16 = strchr(v13 + 1, 59);
          v13 = v16;
          if (v15)
          {
            v17 = v16 == 0;
          }

          else
          {
            v17 = 1;
          }
        }

        while (!v17);
        if (v15)
        {
LABEL_64:
          v10 = 0;
          *v55 = 0;
          if (v11 < *(a1 + 928))
          {
            v18 = *(a1 + 936);
            v19 = *(v18 + 40 * v11);
            if (v19)
            {
              v20 = Lookup_NrUnits(v19, v55);
              if ((v20 & 0x80000000) != 0)
              {
                v10 = v20;
                goto LABEL_59;
              }

              v10 = Lookup_ObjClose((*(a1 + 936) + 40 * v11));
              if ((v10 & 0x80000000) != 0)
              {
                goto LABEL_59;
              }

              v18 = *(a1 + 936);
            }

            else
            {
              v10 = 0;
            }

            v21 = v18 + 40 * v11;
            v23 = *(v21 + 16);
            v22 = v21 + 16;
            if (v23)
            {
              v10 = Pmk_Lookup_ObjClose(v22);
              if ((v10 & 0x80000000) != 0)
              {
                goto LABEL_59;
              }

              v18 = *(a1 + 936);
            }

            v24 = *(v18 + 40 * v11 + 32);
            if (v24)
            {
              heap_Free(*(*(a1 + 16) + 8), v24);
              v18 = *(a1 + 936);
              *(v18 + 40 * v11 + 32) = 0;
            }

            v25 = v11 + 1;
            v26 = *(a1 + 928);
            if (v11 + 1 < v26)
            {
              v27 = v9;
              do
              {
                v28 = v18 + v27;
                v29 = *(v28 + 96);
                *(v28 + 40) = *(v28 + 80);
                *(v28 + 56) = v29;
                *(v28 + 72) = *(v28 + 112);
                v18 = *(a1 + 936);
                *(v18 + v27 + 64) -= *v55;
                ++v25;
                v26 = *(a1 + 928);
                v27 += 40;
              }

              while (v25 < v26);
            }

            *(a1 + 928) = v26 - 1;
          }
        }

        ++v11;
        v9 += 40;
        if (v11 >= *(a1 + 928))
        {
          goto LABEL_30;
        }
      }
    }

    v10 = 0;
LABEL_30:
    v30 = strchr(v8, 59);
    if (!v30)
    {
      goto LABEL_59;
    }

    v31 = v30;
    v32 = v8;
    while (2)
    {
      *v31 = 0;
      v33 = *(a1 + 928);
      if (v33 <= 1)
      {
        v34 = 1;
      }

      else
      {
        v34 = v33;
      }

      v35 = 72;
      while (--v34)
      {
        v36 = v35 + 40;
        v37 = strcmp(v32, *(*(a1 + 936) + v35));
        v35 = v36;
        if (!v37)
        {
          goto LABEL_54;
        }
      }

      v51 = 0;
      if (!*v32)
      {
        v10 = 0;
        goto LABEL_54;
      }

      v53 = 0;
      v54 = 0;
      v52 = 0;
      paramc_ParamSetStr(*(*(a1 + 16) + 40), "voiceaddon", v32);
      v10 = CheckAndGetData(a1, v55, 0, &v51, &v54, &v53, &v52);
      if ((v10 & 0x80000000) == 0)
      {
        if (!v51)
        {
          v10 = CheckAndGetData(a1, v55, 1, &v51, &v54, &v53, &v52);
          if ((v10 & 0x80000000) != 0)
          {
            break;
          }

          if (!v51)
          {
            v10 = 2164269076;
            break;
          }
        }

        v38 = *(a1 + 928) + 1;
        *(a1 + 928) = v38;
        v39 = heap_Realloc(*(*(a1 + 16) + 8), *(a1 + 936), 40 * v38);
        if (!v39)
        {
LABEL_56:
          v10 = 2164269066;
          break;
        }

        *(a1 + 936) = v39;
        v40 = v53;
        v41 = *(a1 + 928);
        v42 = v41 - 1;
        v43 = (v39 + 40 * (v41 - 1));
        *v43 = v54;
        v43[1] = v40;
        v43[2] = v52;
        if (v41 <= 1)
        {
          *(v39 + 40 * v42 + 24) = 0;
          goto LABEL_52;
        }

        v44 = v41 - 2;
        v45 = *(v39 + 40 * (v41 - 2));
        if (!v45)
        {
LABEL_51:
          *(v39 + 40 * v42 + 24) = *(v39 + 40 * v44 + 24) + v45;
LABEL_52:
          v47 = strlen(v32);
          v48 = heap_Calloc(*(*(a1 + 16) + 8), (v47 + 1), 1);
          *(*(a1 + 936) + 40 * (*(a1 + 928) - 1) + 32) = v48;
          if (v48)
          {
            strcpy(v48, v32);
LABEL_54:
            *v31 = 59;
            v32 = v31 + 1;
            v31 = strchr(v31 + 1, 59);
            if (v31)
            {
              continue;
            }

LABEL_59:
            heap_Free(*(*(a1 + 16) + 8), v8);
            v4 = v10;
            goto LABEL_60;
          }

          goto LABEL_56;
        }

        v10 = Lookup_NrUnits(*(v39 + 40 * v44), &v51 + 1);
        if ((v10 & 0x80000000) == 0)
        {
          v39 = *(a1 + 936);
          v46 = *(a1 + 928);
          LODWORD(v45) = HIDWORD(v51);
          v44 = v46 - 2;
          v42 = v46 - 1;
          goto LABEL_51;
        }
      }

      break;
    }

    --*(a1 + 928);
    goto LABEL_59;
  }

LABEL_60:
  v49 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t CheckAndGetData(uint64_t a1, char *a2, int a3, _DWORD *a4, uint64_t *a5, void *a6, uint64_t *a7)
{
  v20 = 0;
  BrokerString = synth_CreateBrokerString(*(a1 + 16), a2, 0x100uLL, 0, a3);
  if ((BrokerString & 0x80000000) != 0)
  {
    DataHandles = BrokerString;
  }

  else
  {
    DataHandles = Lookup_CheckForDataFile(*a1, *(a1 + 8), a2, &v20);
    if ((DataHandles & 0x80000000) == 0)
    {
      if (v20)
      {
        DataHandles = synth_GetDataHandles(a1, a2, a5, a6, a7);
        if ((DataHandles & 0x80000000) != 0)
        {
          log_OutPublic(*(*(a1 + 16) + 32), "SYNTH", 45003, "%s%s", v15, v16, v17, v18, "brokerStr");
        }
      }
    }
  }

  *a4 = v20;
  return DataHandles;
}

uint64_t synth_GetDataHandles(_WORD **a1, char *a2, uint64_t *a3, void *a4, uint64_t *a5)
{
  v26 = *MEMORY[0x1E69E9840];
  v9 = a1[2];
  __s1 = 0;
  v23 = 0;
  *a3 = 0;
  *a4 = 0;
  *a5 = 0;
  Str = paramc_ParamGetStr(*(v9 + 5), "coder", &__s1);
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_27;
  }

  if (!strcmp(__s1, "1175mrf22"))
  {
    v11 = 2164269057;
LABEL_28:
    if (!*a3)
    {
      goto LABEL_31;
    }

    Lookup_ObjClose(a3);
LABEL_30:
    *a3 = 0;
LABEL_31:
    if (*a5)
    {
      Pmk_Lookup_ObjClose(a5);
      *a5 = 0;
    }

    goto LABEL_33;
  }

  v11 = Lookup_ObjOpen(*a1, a1[1], a1[3], a2, a3);
  if ((v11 & 0x80000000) != 0)
  {
    goto LABEL_30;
  }

  if ((a1[144] & 2) == 0)
  {
    goto LABEL_33;
  }

  if (!a2)
  {
    v11 = 2164269063;
    goto LABEL_28;
  }

  v12 = strlen(a2);
  v25[0] = 0;
  if (v12 >= 5 && (v13 = v12, !strcmp(&a2[v12 - 4], ".dat")))
  {
    Str = strhelper_SafeCat(v25, a2, v13 - 4, 0x100uLL);
    if ((Str & 0x80000000) != 0)
    {
      goto LABEL_27;
    }

    v15 = 0;
    v14 = "_";
  }

  else
  {
    Str = strhelper_SafeCat(v25, a2, 0xFFFFFFFFFFFFFFFFLL, 0x100uLL);
    if ((Str & 0x80000000) != 0)
    {
      goto LABEL_27;
    }

    v14 = "/";
    v15 = 1;
  }

  Str = strhelper_SafeCat(v25, v14, 0xFFFFFFFFFFFFFFFFLL, 0x100uLL);
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_27;
  }

  v11 = strhelper_SafeCat(v25, "pmk", 0xFFFFFFFFFFFFFFFFLL, 0x100uLL);
  if (v11 < 0)
  {
    v16 = 1;
  }

  else
  {
    v16 = v15;
  }

  if ((v16 & 1) == 0)
  {
    v11 = strhelper_SafeCat(v25, ".dat", 0xFFFFFFFFFFFFFFFFLL, 0x100uLL);
  }

  if ((v11 & 0x80000000) != 0)
  {
    goto LABEL_28;
  }

  Str = Pmk_Lookup_ObjOpen(*a1, a1[1], a1[3], v25, a5);
  if ((Str & 0x80000000) != 0)
  {
    v17 = *(a1 + 1152);
    *a5 = 0;
    if ((v17 & 4) != 0)
    {
      v11 = 0;
      goto LABEL_33;
    }

    goto LABEL_27;
  }

  Str = Pmk_Lookup_Fingerprint(*a5, &v23);
  if ((Str & 0x80000000) != 0)
  {
LABEL_27:
    v11 = Str;
    goto LABEL_28;
  }

  if (*a3)
  {
    Str = Lookup_Fingerprint(*a3, __s2, 0x100u);
    if ((Str & 0x80000000) != 0)
    {
      goto LABEL_27;
    }
  }

  else
  {
    __s2[0] = 0;
  }

  if (strcmp(v23, __s2))
  {
    v11 = 2164269081;
    goto LABEL_28;
  }

  v21 = 0;
  Int = paramc_ParamGetInt(*(v9 + 5), "pmksync", &v21);
  if (Int >= 0 && v21 != 0)
  {
    v11 = Int;
  }

  else
  {
    v11 = 0;
  }

  *(a1 + 287) = Int >= 0 && v21 != 0;
LABEL_33:
  v18 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t TenthOfMsToSamples(int a1, unsigned int a2)
{
  result = 0;
  if (a1 > 15999)
  {
    if (a1 == 16000)
    {
      v4 = HIWORD(a2);
      v5 = 62676 * HIWORD(a2) + 19779 * a2 + ((62676 * a2 + 0x8000) >> 16) + 0x4000;
      v6 = 39558;
      goto LABEL_11;
    }

    if (a1 == 22050)
    {
      v5 = 28836 * HIWORD(a2) + 6717 * a2 + ((28836 * a2 + 0x8000) >> 16) + 0x4000;
      v7 = 13434 * HIWORD(a2) + 2 * a2;
      return v7 + (v5 >> 15);
    }
  }

  else if (a1 == 8000)
  {
    return 2 * (26272 * HIWORD(a2) + ((64821 * HIWORD(a2) + 13136 * a2 + ((64821 * a2 + 0x8000) >> 16) + 0x4000) >> 15));
  }

  else if (a1 == 11025)
  {
    v4 = HIWORD(a2);
    v5 = 47186 * HIWORD(a2) + 3358 * a2 + ((47186 * a2 + 0x8000) >> 16) + 0x4000;
    v6 = 6716;
LABEL_11:
    v7 = a2 + v4 * v6;
    return v7 + (v5 >> 15);
  }

  return result;
}

uint64_t vf_MakeLower(const char *a1)
{
  if (!a1)
  {
    return 2164269063;
  }

  if (*a1)
  {
    v2 = 0;
    v3 = 1;
    do
    {
      a1[v2] = __tolower(a1[v2]);
      v2 = v3;
    }

    while (strlen(a1) > v3++);
  }

  return 0;
}

uint64_t tsm_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2164269057;
  }

  result = 0;
  *a2 = &ITsm;
  return result;
}

uint64_t tsm_ObjOpen(_WORD *a1, uint64_t a2, _OWORD *a3, uint64_t *a4)
{
  v23 = 0;
  v22 = 0;
  v4 = 2164269066;
  if (!a4)
  {
    return 2164269062;
  }

  *a4 = 0;
  inited = InitRsrcFunction(a1, a2, &v23);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  if (!a3)
  {
    return 2164269063;
  }

  v10 = heap_Calloc(*(v23 + 8), 1, 744);
  if (v10)
  {
    v11 = v10;
    v12 = v23;
    *v10 = v23;
    *(v10 + 8) = a1;
    *(v10 + 16) = a2;
    *(v10 + 48) = *(v12 + 40);
    *(v10 + 24) = *a3;
    UInt = critsec_ObjOpen(*(v12 + 16), *(v12 + 8), (v10 + 728));
    if ((UInt & 0x80000000) != 0)
    {
      goto LABEL_27;
    }

    UInt = critsec_ObjOpen(*(v23 + 16), *(v23 + 8), (v11 + 736));
    if ((UInt & 0x80000000) != 0)
    {
      goto LABEL_27;
    }

    *(v11 + 80) = 100;
    *(v11 + 40) = 1;
    *(v11 + 720) = 0;
    UInt = paramc_ParamSetStr(*(v11 + 48), "pausestatus", "0");
    if ((UInt & 0x80000000) != 0)
    {
      goto LABEL_27;
    }

    *(v11 + 684) = 0;
    SetRateLevelBeforePause(v11, 100);
    UInt = paramc_ParamGetUInt(*(v23 + 40), "frequencyhz", &v22);
    if ((UInt & 0x80000000) != 0)
    {
      goto LABEL_27;
    }

    *(v11 + 712) = v22;
    if ((paramc_ParamGetUInt(*(v23 + 40), "wordspermin", &v22) & 0x80000000) != 0)
    {
      v22 = 200;
      paramc_ParamSetUInt(*(v23 + 40), "wordspermin", 0xC8u);
    }

    *(v11 + 716) = v22;
    v14 = WSOLA__Create(*v11, *(v11 + 712));
    *(v11 + 704) = v14;
    if (!v14)
    {
      goto LABEL_28;
    }

    UInt = paramc_ParamSetStr(*(v11 + 48), "pausestatus", "0");
    if ((UInt & 0x80000000) != 0)
    {
      goto LABEL_27;
    }

    if ((paramc_ParamGetUInt(*(v11 + 48), "rate", &v22) & 0x80000000) != 0)
    {
      v22 = 100;
      SetRate(v11, 0x64u);
      UInt = paramc_ParamSetUInt(*(v11 + 48), "rate", v22);
      if ((UInt & 0x80000000) != 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      SetRate(v11, v22);
    }

    v15 = v22;
    if (v22 <= 0x32)
    {
      v15 = 50;
    }

    if (v15 >= 0x190)
    {
      v15 = 400;
    }

    paramc_ParamSetUInt(*(v11 + 48), "ratewpm", (v15 * *(v11 + 716) + 50) / 0x64);
    *(v11 + 56) = v11;
    *(v11 + 64) = acceptor_TsmCheckRange;
    *(v11 + 72) = acceptor_TsmLearnChange;
    v16 = *(v11 + 48);
    v20 = *(v11 + 56);
    v21 = acceptor_TsmLearnChange;
    UInt = paramc_ListenerAdd(v16, "wordspermin", &v20);
    if ((UInt & 0x80000000) == 0)
    {
      v17 = *(v11 + 48);
      v20 = *(v11 + 56);
      v21 = *(v11 + 72);
      UInt = paramc_ListenerAdd(v17, "rate", &v20);
      if ((UInt & 0x80000000) == 0)
      {
        v18 = *(v11 + 48);
        v20 = *(v11 + 56);
        v21 = *(v11 + 72);
        v4 = paramc_ListenerAdd(v18, "ratewpm", &v20);
        if ((v4 & 0x80000000) == 0)
        {
LABEL_29:
          *a4 = v11;
          return v4;
        }

LABEL_28:
        tsm_ObjClose(v11);
        v11 = 0;
        goto LABEL_29;
      }
    }

LABEL_27:
    v4 = UInt;
    goto LABEL_28;
  }

  return v4;
}

uint64_t tsm_ObjClose(uint64_t a1)
{
  if (!a1)
  {
    return 2164269062;
  }

  if (*(a1 + 40) != 1)
  {
    FreeTask(a1);
  }

  v2 = *(a1 + 136);
  if (v2)
  {
    heap_Free(*(*a1 + 8), v2);
  }

  *(a1 + 136) = 0;
  if (*(a1 + 704))
  {
    WSOLA__Remove((a1 + 704));
  }

  v3 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 72);
  paramc_ListenerRemove(v3, "wordspermin", &v9);
  v4 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 72);
  paramc_ListenerRemove(v4, "rate", &v9);
  v5 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 72);
  paramc_ListenerRemove(v5, "ratewpm", &v9);
  v6 = *(a1 + 728);
  if (v6)
  {
    critsec_ObjClose(v6);
  }

  v7 = *(a1 + 736);
  if (v7)
  {
    critsec_ObjClose(v7);
  }

  heap_Free(*(*a1 + 8), a1);
  return 0;
}

uint64_t tsm_ResetParams(uint64_t a1)
{
  if (a1)
  {
    return paramc_ParamSetUInt(*(a1 + 48), "rate", 0x64u);
  }

  else
  {
    return 2164269062;
  }
}

uint64_t tsm_Process(uint64_t a1, int a2, uint64_t *a3, unsigned int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 2164269066;
  v9 = 2164269062;
  if (!a1)
  {
    return v9;
  }

  v10 = a3;
  if (!a3)
  {
    return v9;
  }

  v11 = a4;
  if (!a4)
  {
    return v9;
  }

  v13 = *(a1 + 40);
  if (v13 == -1)
  {
    return 2164269073;
  }

  v15 = *a3;
  if (a5 | *a3)
  {
    if (v13 == 1)
    {
      goto LABEL_199;
    }

    LOBYTE(v16) = a2;
    v17 = *a4;
    v128[0] = 0;
    v127 = 0;
    v126 = -1;
    v123 = (a1 + 88);
    if (!*(a1 + 88) || !*(a1 + 96))
    {
      FreeTask(a1);
      v9 = 0;
LABEL_208:
      v98 = *(a1 + 40);
      if (v98 == 1 || v98 == -1)
      {
        *v10 = 0;
      }

      else if (v16)
      {
        v104 = *(a1 + 136);
        if (v104)
        {
          heap_Free(*(*a1 + 8), v104);
          *(a1 + 136) = 0;
        }

        *v10 = 0;
        if ((v16 & 2) != 0)
        {
          FreeTask(a1);
          v105 = 1;
        }

        else
        {
          v105 = 4;
        }

        *(a1 + 40) = v105;
      }

      else
      {
        if ((v16 & 2) != 0)
        {
          *v11 = *(a1 + 144);
        }

        else
        {
          *v11 = 0;
        }

        *v10 = *(a1 + 136);
      }

LABEL_217:
      v8 = v9;
      if ((v9 & 0x1FFF) == 0x807)
      {
        goto LABEL_242;
      }

      return v9;
    }

    v18 = a6;
    v113 = v15;
    if (v15)
    {
      v19 = v17;
    }

    else
    {
      v19 = 0;
    }

    if (v19)
    {
      *(a1 + 696) = 1;
    }

    LODWORD(v20) = 0;
    v21 = 0;
    v22 = 0;
    v116 = 0;
    v120 = a2 & 2;
    if (a2)
    {
      v23 = 2;
    }

    else
    {
      v23 = 1;
    }

    v114 = v23;
    v108 = a5 + 24;
    v109 = a6;
    v117 = a1 + 152;
LABEL_21:
    v118 = v20;
    v121 = v22;
    if (v22 == v21)
    {
      while (1)
      {
        while (1)
        {
          HIDWORD(v127) = 0;
          v24 = SearchNextMarker(a5, v18, TSM_MARKER_INTEREST, 3u, &v127, &v126, &v127 + 1);
          v25 = v19;
          if (v127 < v18)
          {
            v25 = *(a5 + 32 * v127 + 12);
            if (v25 >= v19)
            {
              if (v25 | v19)
              {
                v107 = *(a5 + 32 * v127 + 12);
                log_OutText(*(*a1 + 32), &ModuleInfoTsm, 3, 0, "ERROR: Mrk[%d] (tot:%d) with posCur %lu > %lu", a6, a7, a8, v127);
                *(a5 + 32 * v127 + 12) = (__PAIR64__(v19, v21) - v19) >> 32;
                v25 = (__PAIR64__(v19, v21) - v19) >> 32;
              }

              else
              {
                v25 = 0;
              }
            }
          }

          if (HIDWORD(v127))
          {
            break;
          }

LABEL_46:
          v116 = v24;
          if (v25 < v19 && !*(a1 + 684) && *(a5 + 32 * v126) != 8)
          {
            LOWORD(i) = 0;
            Rate = GetRate(a1, &i);
            if ((Rate & 0x80000000) != 0)
            {
LABEL_234:
              v9 = Rate;
              goto LABEL_241;
            }

            v28 = (a5 + 32 * v126);
            if (*v28 == 19)
            {
              v29 = (100 * v28[6]) / *(a1 + 716);
              if (v29 <= 0x32)
              {
                v29 = 50;
              }

              if (v29 >= 0x190)
              {
                v29 = 400;
              }
            }

            else
            {
              v29 = *v28 == 18 ? *(v28 + 12) : i;
            }

            if (v29 == i)
            {
              continue;
            }
          }

          goto LABEL_88;
        }

        if ((v24 - 16) < 4)
        {
          goto LABEL_29;
        }

        if (v24 != 8)
        {
          break;
        }

        if (!*(a1 + 684))
        {
          LOWORD(i) = 0;
          v30 = *(a5 + 32 * v126 + 24);
          if (v30)
          {
            *(a1 + 688) = v30 * ((8389 * (*(a1 + 712) >> 3)) >> 20);
            GetRate(a1, &i);
            LOWORD(v31) = i;
            v32 = (v127 + 1);
            if (v32 < v18)
            {
              v33 = (v108 + 32 * v32);
              v34 = v109 - v32;
              do
              {
                if (*(v33 - 3) != v25)
                {
                  break;
                }

                v35 = *(v33 - 6);
                if (v35 == 19)
                {
                  v31 = 100 * *v33 / *(a1 + 716);
                  if (v31 <= 0x32)
                  {
                    v31 = 50;
                  }

                  if (v31 >= 0x190)
                  {
                    LOWORD(v31) = 400;
                  }
                }

                else if (v35 == 18)
                {
                  v31 = *v33;
                }

                v33 += 8;
                --v34;
              }

              while (v34);
            }

            SetRateLevelBeforePause(a1, v31);
            SetRate(a1, 0x64u);
            paramc_ParamSetStr(*(a1 + 48), "pausestatus", "1");
            *(a1 + 684) = 1;
            if (!*(a5 + 32 * v126 + 24))
            {
              v36 = (v127 + 1);
              if (v36 >= v18)
              {
LABEL_86:
                SetRate(a1, *(a1 + 692));
                paramc_ParamSetStr(*(a1 + 48), "pausestatus", "0");
                *(a1 + 684) = 0;
                v24 = 8;
                goto LABEL_41;
              }

              v37 = (v108 + 32 * v36);
              v38 = v109 - v36;
              while (2)
              {
                if (*(v37 - 3) != v25)
                {
                  goto LABEL_86;
                }

                v39 = *(v37 - 6);
                if (v39 == 19)
                {
                  v40 = 100 * *v37 / *(a1 + 716);
                  if (v40 <= 0x32)
                  {
                    v40 = 50;
                  }

                  if (v40 >= 0x190)
                  {
                    LOWORD(v40) = 400;
                  }

LABEL_84:
                  SetRateLevelBeforePause(a1, v40);
                }

                else if (v39 == 18)
                {
                  v40 = *v37;
                  goto LABEL_84;
                }

                v37 += 8;
                if (!--v38)
                {
                  goto LABEL_86;
                }

                continue;
              }
            }
          }
        }

LABEL_41:
        v126 = v127;
        if (v25 != v21)
        {
          if (v127 < v18)
          {
            LODWORD(v127) = v127 + 1;
          }

          goto LABEL_46;
        }

        if (v127 < v18)
        {
          LODWORD(v127) = v127 + 1;
        }
      }

      if (v24 != 24)
      {
        goto LABEL_41;
      }

LABEL_29:
      v26 = (a5 + 32 * v126);
      if (*v26 == 19)
      {
        LODWORD(v26) = (100 * v26[6]) / *(a1 + 716);
        if (v26 <= 0x32)
        {
          LODWORD(v26) = 50;
        }

        if (v26 >= 0x190)
        {
          LOWORD(v26) = 400;
        }
      }

      else if (*v26 == 18)
      {
        LOWORD(v26) = *(v26 + 12);
      }

      else
      {
        LOWORD(v26) = 0;
      }

      paramc_ParamSetUInt(*(a1 + 48), "rate", v26);
      goto LABEL_41;
    }

    v25 = v21;
LABEL_88:
    v41 = v121;
    v20 = v20;
    while (v20 < v18)
    {
      v42 = a5 + 32 * v20;
      v44 = *(v42 + 12);
      v43 = (v42 + 12);
      v22 = v44;
      if (v44 >= v19)
      {
        if (v22 | v19)
        {
          log_OutText(*(*a1 + 32), &ModuleInfoTsm, 3, 0, "ERROR: Mrk %d/%d with posCur %lu > %lu", a6, a7, a8, v20);
          v41 = v121;
          *v43 = (__PAIR64__(v19, v121) - v19) >> 32;
          v22 = (__PAIR64__(v19, v121) - v19) >> 32;
        }

        else
        {
          v22 = 0;
        }
      }

      if (v22 > v41)
      {
        v20 = v20;
      }

      else
      {
        v20 = (v20 + 1);
      }

      if (v22 > v41)
      {
        goto LABEL_100;
      }
    }

    v22 = v19;
LABEL_100:
    v45 = *(a1 + 684);
    if (v16)
    {
      if (v45)
      {
        v46 = *(a1 + 688);
        if (v46)
        {
          if (v127 >= v18 && (v116 - 16) >= 4)
          {
            v41 = v121;
            if (v116 != 24)
            {
              v25 = v46 + v121;
              if (v46 + v121 >= v19)
              {
                if (v19 < v22)
                {
                  v22 = v19;
                }

                v25 = v19;
              }

              else if (v25 < v22)
              {
                v22 = v46 + v121;
              }
            }
          }

          else
          {
            v41 = v121;
          }
        }

        goto LABEL_108;
      }
    }

    else if (v45)
    {
      v46 = *(a1 + 688);
LABEL_108:
      v47 = v22 - v41;
      v48 = v46 >= v47;
      v49 = v46 - v47;
      if (!v48)
      {
        v49 = 0;
      }

      *(a1 + 688) = v49;
    }

    v110 = v25;
    v50 = *(a1 + 112);
    if (v50)
    {
      v51 = v20 - v118;
      if (v20 > v118)
      {
        v52 = *(a1 + 128);
        v53 = a5 + 32 * v118;
        do
        {
          v54 = *(v53 + 12);
          v55 = *(a1 + 668);
          if (v52 >= *(a1 + 120))
          {
            v56 = heap_Realloc(*(*a1 + 8), v50, 32 * (v52 + 8));
            if (!v56)
            {
              v9 = 2164269066;
              goto LABEL_241;
            }

            v50 = v56;
            *(a1 + 112) = v56;
            v52 = *(a1 + 128);
            *(a1 + 120) = v52 + 8;
          }

          v57 = (v50 + 32 * v52);
          v58 = *v53;
          v59 = *(v53 + 16);
          v53 += 32;
          *v57 = v58;
          v57[1] = v59;
          v50 = *(a1 + 112);
          v60 = *(a1 + 128);
          *(v50 + 32 * v60 + 12) = v55 + v54;
          v52 = v60 + 1;
          *(a1 + 128) = v52;
          --v51;
        }

        while (v51);
      }
    }

    v119 = v22 - v121;
    v16 = a2;
    if (v22 == v19)
    {
      v61 = a2;
    }

    else
    {
      v61 = 0;
    }

    v122 = (v113 + 2 * v121);
    v62 = v128[0];
    while (1)
    {
      v63 = *(a1 + 148);
      v125 = *(a1 + 148);
      if (!v62)
      {
        *(v117 + 4 * v63) += v119;
      }

      if (!*(a1 + 696))
      {
        break;
      }

      v128[0] = 0;
      *(a1 + 100) = *(a1 + 96);
      Rate = critsec_Enter(*(a1 + 728));
      if ((Rate & 0x80000000) != 0)
      {
        goto LABEL_234;
      }

      v64 = *(a1 + 80);
      Rate = critsec_Leave(*(a1 + 728));
      if ((Rate & 0x80000000) != 0)
      {
        goto LABEL_234;
      }

      v9 = WSOLA__TimeScaleInputBuffer(*(a1 + 704), v61, v122, v119, *(a1 + 88), (a1 + 100), (v64 - 100), &v125, v128);
      if ((v9 & 0x80000000) != 0)
      {
        goto LABEL_241;
      }

      v62 = v128[0];
      if (v128[0] - 1 <= 1)
      {
        v65 = *(a1 + 696);
        i = 0;
        if (v65)
        {
          LOBYTE(v66) = *(a1 + 664);
          goto LABEL_143;
        }

        goto LABEL_132;
      }

      if (!v128[0])
      {
        v95 = (*(a1 + 148) - 127 * ((((*(a1 + 148) - ((3 * *(a1 + 148)) >> 8)) >> 1) + ((3 * *(a1 + 148)) >> 8)) >> 6) + 1);
        *(a1 + 148) = v95;
        *(v117 + 4 * v95) = 0;
LABEL_188:
        if (*(a1 + 684))
        {
          v21 = v110;
          if (!*(a1 + 688))
          {
            SetRate(a1, *(a1 + 692));
            v9 = paramc_ParamSetStr(*(a1 + 48), "pausestatus", "0");
            *(a1 + 684) = 0;
            if ((v9 & 0x80000000) != 0)
            {
LABEL_241:
              v8 = v9;
              v10 = a3;
              v11 = a4;
              goto LABEL_242;
            }
          }
        }

        else
        {
          v21 = v110;
        }

        if (v22 < v19)
        {
          goto LABEL_21;
        }

        *(a1 + 668) += v19;
        goto LABEL_249;
      }

LABEL_180:
      if ((v62 & 0xFFFFFFFD) == 0 || !*(a1 + 696))
      {
        goto LABEL_188;
      }
    }

    v128[0] = v114;
LABEL_132:
    OutputLength = 0;
    for (i = 1; ; OutputLength = WSOLA__GetOutputLength(*(a1 + 704), v66, &i))
    {
      v68 = *(a1 + 112);
      if (v68)
      {
        v70 = *(a1 + 124);
        v69 = *(a1 + 128);
        if (v70 < v69)
        {
          v71 = *(a1 + 672);
          v72 = v69 - v70;
          v73 = v70 + 1;
          v74 = (v68 + 32 * v70 + 12);
          do
          {
            if (*v74 > v71)
            {
              break;
            }

            *v74 = *(a1 + 680) - *(a1 + 676);
            v74 += 8;
            *(a1 + 124) = v73++;
            --v72;
          }

          while (v72);
        }
      }

      if (!i || !*(a1 + 696))
      {
        break;
      }

      *(a1 + 680) += OutputLength;
      v75 = *(a1 + 664);
      *(a1 + 672) += *(v117 + 4 * *(a1 + 664));
      v66 = v75 - 127 * ((((v75 - ((3 * v75) >> 8)) >> 1) + ((3 * v75) >> 8)) >> 6) + 1;
      *(a1 + 664) = v66;
LABEL_143:
      ;
    }

    v76 = *(a1 + 100);
    *(a1 + 676) += v76;
    v77 = v128[0];
    v78 = *(a1 + 124);
    if (v68 && v120)
    {
      v79 = *(a1 + 128);
      if (v79 != v78 && v128[0] == 2)
      {
        if (v78 < v79)
        {
          v81 = 0;
          v82 = v76 - 1;
          if (!v76)
          {
            v82 = 0;
          }

          v83 = vdupq_n_s64(v79 - v78 - 1);
          v84 = (v68 + 32 * v78 + 76);
          do
          {
            v85 = vdupq_n_s64(v81);
            v86 = vmovn_s64(vcgeq_u64(v83, vorrq_s8(v85, xmmword_1C378AF00)));
            if (vuzp1_s16(v86, *v83.i8).u8[0])
            {
              *(v84 - 16) = v82;
            }

            if (vuzp1_s16(v86, *&v83).i8[2])
            {
              *(v84 - 8) = v82;
            }

            if (vuzp1_s16(*&v83, vmovn_s64(vcgeq_u64(v83, vorrq_s8(v85, xmmword_1C378AEF0)))).i32[1])
            {
              *v84 = v82;
              v84[8] = v82;
            }

            v81 += 4;
            v84 += 32;
          }

          while (((v79 - v78 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v81);
        }

        *(a1 + 124) = v79;
        LODWORD(v78) = v79;
      }
    }

    if (v77 == 2)
    {
      v87 = v16;
    }

    else
    {
      v87 = 0;
    }

    v88 = v87 | v120;
    v89 = v87 & 0xFFFFFFFD;
    if (v78)
    {
      v90 = v89;
    }

    else
    {
      v90 = v88;
    }

    *(a1 + 104) += v76;
    v9 = (*(a1 + 32))(*(a1 + 24), v90, v123, a1 + 100);
    if ((v9 & 0x80000000) != 0)
    {
      *(a1 + 88) = 0;
      *(a1 + 96) = 0;
      goto LABEL_241;
    }

    v91 = *(a1 + 112);
    v92 = *(a1 + 124);
    v93 = *(a1 + 128);
    if (v91 && v93 > v92)
    {
      memmove(v91, &v91[32 * v92], 32 * (v93 - v92));
      LODWORD(v92) = *(a1 + 124);
      v93 = *(a1 + 128);
    }

    *(a1 + 124) = 0;
    *(a1 + 128) = v93 - v92;
    if (v90)
    {
      v94 = 0;
      *v123 = 0;
    }

    else
    {
      v94 = *(a1 + 100);
    }

    *(a1 + 96) = v94;
    *(a1 + 100) = 0;
    v62 = v128[0];
    v16 = a2;
    if (v128[0] != 2 && (!*v123 || !v94))
    {
      FreeTask(a1);
LABEL_249:
      v10 = a3;
      v11 = a4;
      goto LABEL_208;
    }

    *(a1 + 104) = 0;
    goto LABEL_180;
  }

  if (v13 == 1)
  {
    v15 = 0;
  }

  else
  {
    FreeTask(a1);
    v15 = *v10;
  }

  *(a1 + 40) = 1;
LABEL_199:
  if (a5 | v15)
  {
    return 2164269073;
  }

  *(a1 + 40) = 3;
  *(a1 + 696) = 0;
  *(a1 + 148) = 1;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 648) = 0u;
  *(a1 + 88) = 0u;
  v96 = (a1 + 88);
  *(a1 + 664) = 1;
  *(a1 + 124) = 0;
  *(a1 + 128) = 0;
  *(a1 + 104) = 0;
  *(a1 + 668) = 0u;
  if (*(a1 + 684))
  {
    SetRate(a1, *(a1 + 692));
  }

  paramc_ParamSetStr(*(a1 + 48), "pausestatus", "0");
  *(a1 + 684) = 0;
  SetRateLevelBeforePause(a1, 100);
  v97 = WSOLA__Initialise(*(a1 + 704));
  *(a1 + 96) = 0;
  v9 = (*(a1 + 32))(*(a1 + 24), 0, a1 + 88, a1 + 96, 0, 0, v97);
  *(a1 + 100) = 0;
  *(a1 + 124) = 0;
  *(a1 + 128) = 0;
  if ((v9 & 0x80000000) != 0)
  {
    *v96 = 0;
    *(a1 + 96) = 0;
LABEL_212:
    FreeTask(a1);
    goto LABEL_213;
  }

  if (!*v96 || !*(a1 + 96))
  {
    goto LABEL_212;
  }

LABEL_213:
  if (!*(a1 + 112) && *v96 && (v99 = *(a1 + 96)) != 0)
  {
    if (v99 >= 0x400)
    {
      v100 = (v99 >> 7) & 0x1FFFFF8;
    }

    else
    {
      v100 = 8;
    }

    *(a1 + 120) = v100;
    v101 = heap_Calloc(*(*a1 + 8), v100, 32);
    *(a1 + 112) = v101;
    if (!v101)
    {
      FreeTask(a1);
      goto LABEL_242;
    }
  }

  else
  {
    *(a1 + 96) = 0;
    *v96 = 0;
  }

  if ((v9 & 0x80000000) != 0)
  {
    v8 = v9;
    goto LABEL_242;
  }

  if (*(a1 + 40) == 1)
  {
    goto LABEL_217;
  }

  v102 = *(a1 + 96);
  if (v102 <= ((8589935 * (*(a1 + 712) << 7)) >> 32) >> 1)
  {
    v102 = ((8589935 * (*(a1 + 712) << 7)) >> 32) >> 1;
  }

  *(a1 + 144) = v102;
  *v11 = v102;
  v103 = heap_Alloc(*(*a1 + 8), 2 * v102);
  *(a1 + 136) = v103;
  *v10 = v103;
  if (!v103)
  {
LABEL_242:
    FreeTask(a1);
    *(a1 + 40) = 1;
    *v10 = 0;
    *v11 = 0;
    return v8;
  }

  return v9;
}

uint64_t tsm_Break(uint64_t a1, int a2)
{
  result = 2164269062;
  if (a1)
  {
    if (*(a1 + 40) == 1)
    {
      return 2164269073;
    }

    else
    {
      result = 0;
      if (a2)
      {
        *(a1 + 720) = 1;
      }
    }
  }

  return result;
}

uint64_t SetRateLevelBeforePause(uint64_t a1, __int16 a2)
{
  v4 = critsec_Enter(*(a1 + 736));
  if ((v4 & 0x80000000) == 0)
  {
    *(a1 + 692) = a2;
    critsec_Leave(*(a1 + 736));
  }

  return v4;
}

uint64_t SetRate(uint64_t result, unsigned int a2)
{
  if (a2)
  {
    v3 = result;
    result = critsec_Enter(*(result + 736));
    if ((result & 0x80000000) == 0)
    {
      if ((critsec_Enter(*(v3 + 728)) & 0x80000000) == 0)
      {
        *(v3 + 720) = 0;
        if (a2 <= 0x32)
        {
          v4 = 50;
        }

        else
        {
          v4 = a2;
        }

        if (v4 >= 0x190)
        {
          LOWORD(v4) = 400;
        }

        *(v3 + 80) = v4;
        critsec_Leave(*(v3 + 728));
      }

      v5 = *(v3 + 736);

      return critsec_Leave(v5);
    }
  }

  return result;
}

uint64_t acceptor_TsmCheckRange(uint64_t a1, char *__s1, const char *a3, _DWORD *a4)
{
  *a4 = 1;
  if (!strcmp(__s1, "wordspermin"))
  {
    return 0;
  }

  v8 = 2164269071;
  if (!strcmp(__s1, "rate"))
  {
    if ((atoi(a3) - 401) <= 0xFFFFFEA0)
    {
      goto LABEL_5;
    }

    return 0;
  }

  v8 = 2164269063;
LABEL_5:
  if (!strcmp(__s1, "ratewpm"))
  {
    v9 = LH_atou(a3);
    v10 = *(a1 + 716);
    v11 = (50 * v10 + 50) / 0x64u;
    v12 = (400 * v10 + 50) / 0x64u;
    v13 = v11 > v9 || v9 > v12;
    v8 = 2164269071;
    if (!v13)
    {
      return 0;
    }
  }

  *a4 = 0;
  return v8;
}

uint64_t acceptor_TsmLearnChange(uint64_t a1, const char *a2, const char *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v6 = paramc_ParamGet(*(a1 + 48), "pausestatus", &v18, 0);
  if ((v6 & 0x80000000) == 0)
  {
    if (!strcmp(a2, "wordspermin"))
    {
      v6 = 0;
      *(a1 + 716) = LH_atou(a3);
    }

    if (!strcmp(a2, "rate"))
    {
      v7 = LH_atou(a3);
      v8 = *v18;
      if (v8 == 48)
      {
        v9 = -v18[1];
      }

      else
      {
        v9 = 48 - v8;
      }

      if (v9)
      {
        v10 = SetRateLevelBeforePause(a1, v7);
      }

      else
      {
        v10 = SetRateLevel(a1, v7);
      }

      v6 = v10;
    }

    if (!strcmp(a2, "ratewpm"))
    {
      v11 = 100 * LH_atou(a3) / *(a1 + 716);
      if (v11 <= 0x32)
      {
        v11 = 50;
      }

      if (v11 >= 0x190)
      {
        v12 = 400;
      }

      else
      {
        v12 = v11;
      }

      v13 = *v18;
      if (v13 == 48)
      {
        v14 = -v18[1];
      }

      else
      {
        v14 = 48 - v13;
      }

      if (v14)
      {
        SetRateLevelBeforePause(a1, v12);
      }

      else
      {
        SetRateLevel(a1, v12);
      }

      LH_utoa(v12, __s, 0xAu);
      v15 = strlen(__s);
      v6 = paramc_ParamRipple(*(a1 + 48), "rate", __s, (v15 + 1));
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t SetRateLevel(uint64_t a1, unsigned int a2)
{
  v4 = critsec_Enter(*(a1 + 736));
  if ((v4 & 0x80000000) == 0)
  {
    if (a2 <= 0x32)
    {
      v5 = 50;
    }

    else
    {
      v5 = a2;
    }

    if (v5 >= 0x190)
    {
      LOWORD(v5) = 400;
    }

    *(a1 + 80) = v5;
    critsec_Leave(*(a1 + 736));
  }

  return v4;
}

void *FreeTask(void *result)
{
  v1 = result;
  *(result + 10) = 1;
  v2 = result[17];
  if (v2)
  {
    result = heap_Free(*(*result + 8), v2);
    v1[17] = 0;
  }

  v3 = v1[11];
  *(v1 + 36) = 0;
  if (v3 || v1[14])
  {
    *(v1 + 25) = 0;
    result = (v1[4])(v1[3], 3, v1 + 11, v1 + 100, 0, 0);
    v4 = v1[14];
    v1[11] = 0;
    v1[12] = 0;
    if (v4)
    {
      result = heap_Free(*(*v1 + 8), v4);
    }

    v1[14] = 0;
    v1[15] = 0;
    *(v1 + 32) = 0;
  }

  return result;
}

uint64_t GetRate(uint64_t a1, _WORD *a2)
{
  result = critsec_Enter(*(a1 + 728));
  if ((result & 0x80000000) == 0)
  {
    *a2 = *(a1 + 80);
    v5 = *(a1 + 728);

    return critsec_Leave(v5);
  }

  return result;
}

uint64_t vol_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2164269057;
  }

  result = 0;
  *a2 = &IVol;
  return result;
}

uint64_t vol_ObjOpen(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v24 = 0;
  v23 = 0;
  v4 = 2164269063;
  if (!a4)
  {
    return 2164269062;
  }

  *a4 = 0;
  inited = InitRsrcFunction(a1, a2, &v24);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  if (a3 && *(a3 + 8))
  {
    v10 = heap_Calloc(*(v24 + 8), 1, 128);
    if (v10)
    {
      v11 = v10;
      *(v10 + 112) = 0;
      *(v10 + 40) = 0x100000001;
      *(v10 + 82) = 0;
      *(v10 + 92) = 0x7FFF;
      *(v10 + 96) = 0;
      v12 = (v10 + 96);
      *(v10 + 86) = 5275647;
      *(v10 + 104) = 0;
      v13 = v24;
      *v10 = v24;
      *(v10 + 8) = a1;
      *(v10 + 16) = a2;
      *(v10 + 48) = *(v13 + 40);
      *(v10 + 24) = *a3;
      UInt = critsec_ObjOpen(*(v13 + 16), *(v13 + 8), (v10 + 120));
      if ((UInt & 0x80000000) == 0)
      {
        if ((paramc_ParamGetUInt(*(v11 + 48), "volume", &v23) & 0x80000000) != 0)
        {
          SetVolume(v11, 0x50u);
          UInt = paramc_ParamSetUInt(*(v11 + 48), "volume", 0x50u);
          if ((UInt & 0x80000000) != 0)
          {
            goto LABEL_18;
          }
        }

        else
        {
          SetVolume(v11, v23);
        }

        *(v11 + 56) = v11;
        *(v11 + 64) = acceptor_VolCheckRange;
        *(v11 + 72) = acceptor_VolLearnChange;
        v15 = *(v11 + 48);
        v21 = *(v11 + 56);
        v22 = acceptor_VolLearnChange;
        UInt = paramc_ListenerAdd(v15, "volume", &v21);
        if ((UInt & 0x80000000) == 0)
        {
          UInt = paramc_ParamGetUInt(*(v24 + 40), "frequencyhz", &v23);
          if ((UInt & 0x80000000) == 0)
          {
            v16 = v23;
            if (*(v11 + 80) == v23 && *v12)
            {
              v4 = 0;
LABEL_20:
              *a4 = v11;
              return v4;
            }

            *(v11 + 80) = v23;
            v4 = 2164269071;
            if (v16 > 15999)
            {
              if (v16 == 16000)
              {
                v18 = &as16FadeOut_16;
                v19 = 495;
                v20 = &as16FadeIn_16;
                goto LABEL_31;
              }

              if (v16 == 22050)
              {
                v18 = &as16FadeOut_22;
                v19 = 676;
                v20 = &as16FadeIn_22;
                goto LABEL_31;
              }
            }

            else
            {
              if (v16 == 8000)
              {
                v18 = &as16FadeOut_8;
                v19 = 255;
                v20 = &as16FadeIn_8;
                goto LABEL_31;
              }

              if (v16 == 11025)
              {
                v18 = &as16FadeOut_11;
                v19 = 345;
                v20 = &as16FadeIn_11;
LABEL_31:
                v4 = 0;
                *(v11 + 84) = v19;
                *(v11 + 96) = v20;
                *(v11 + 104) = v18;
                goto LABEL_20;
              }
            }

LABEL_19:
            vol_ObjClose(v11);
            v11 = 0;
            goto LABEL_20;
          }
        }
      }

LABEL_18:
      v4 = UInt;
      goto LABEL_19;
    }

    return 2164269066;
  }

  return v4;
}

uint64_t vol_ObjClose(uint64_t a1)
{
  if (!a1)
  {
    return 2164269062;
  }

  v2 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 72);
  v3 = paramc_ListenerRemove(v2, "volume", &v6);
  v4 = *(a1 + 120);
  if (v4)
  {
    critsec_ObjClose(v4);
  }

  heap_Free(*(*a1 + 8), a1);
  return v3;
}

uint64_t vol_ResetParams(uint64_t a1)
{
  if (a1)
  {
    return paramc_ParamSetUInt(*(a1 + 48), "volume", 0x50u);
  }

  else
  {
    return 2164269062;
  }
}

uint64_t vol_Process(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4, uint64_t a5, unsigned int a6)
{
  v53 = *MEMORY[0x1E69E9840];
  result = 2164269062;
  if (!a1)
  {
    goto LABEL_92;
  }

  v8 = a3;
  if (!a3 || !a4)
  {
    goto LABEL_92;
  }

  v10 = a5;
  v12 = *a3;
  if (!(a5 | *a3))
  {
    *(a1 + 40) = 1;
    goto LABEL_7;
  }

  if (*(a1 + 40) == 1)
  {
LABEL_7:
    if (*(a1 + 112))
    {
      *(a1 + 112) = 0;
      *(a1 + 44) = 1;
      *(a1 + 82) = 0;
      result = paramc_ParamSetUInt(*(a1 + 48), "volume", 0x50u);
      if ((result & 0x80000000) != 0)
      {
        goto LABEL_92;
      }
    }

    *(a1 + 40) = 3;
    result = (*(a1 + 32))(*(a1 + 24), a2, v8, a4, 0, 0);
    goto LABEL_10;
  }

  v13 = *a4;
  v51 = 0;
  result = critsec_Enter(*(a1 + 120));
  if ((result & 0x80000000) != 0)
  {
    goto LABEL_92;
  }

  if (*(a1 + 40) == 3)
  {
    *(a1 + 44) = 1;
    *(a1 + 82) = 0;
    LOWORD(v14) = *(a1 + 86);
    *(a1 + 90) = v14;
  }

  else
  {
    LOWORD(v14) = *(a1 + 92);
  }

  v45 = a2;
  v46 = v8;
  v49 = -1;
  v50 = 0;
  v15 = 0;
  if (v13)
  {
    v16 = 0;
    v17 = 0;
    v47 = v10;
    do
    {
      if (v17 == v16)
      {
        v18 = v13;
        SearchNextMarkerOfRTCSubType(v10, a6, VOL_RTC_INTEREST, 1u, &v50, &v49, &v51);
        v15 = v50;
        if (v50 >= a6)
        {
          v19 = -1;
        }

        else
        {
          v19 = *(v10 + 32 * v50 + 12);
        }

        if (v51)
        {
          v20 = v10 + 32 * v49;
          if (*v20 == 24)
          {
            v21 = *(v20 + 24);
            *(a1 + 88) = v21;
          }

          else
          {
            v21 = *(a1 + 88);
          }

          LH_itoa(v21, __s, 0xAu);
          v22 = strlen(__s);
          paramc_ParamSet(*(a1 + 48), "volume", __s, (v22 + 1));
          v23 = *(a1 + 88);
          if (v23 >= 0x64)
          {
            v23 = 100;
          }

          v24 = aVolPar2Amplif[v23];
          *(a1 + 86) = v24;
          if (v16 || *(a1 + 40) != 3)
          {
            v25 = v24 == v14;
            if (v24 > v14)
            {
              v26 = 2;
            }

            else
            {
              v26 = 3;
            }

            *(a1 + 44) = v26;
            *(a1 + 90) = v14;
            if (v25)
            {
              *(a1 + 44) = 1;
              *(a1 + 82) = 0;
            }

            else
            {
              *(a1 + 82) = *(a1 + 84);
            }
          }

          else
          {
            *(a1 + 82) = 0;
            *(a1 + 44) = 1;
            LOWORD(v14) = v24;
          }

          v10 = v47;
          v15 = v50;
          v49 = v50;
          if (v50 < a6)
          {
            v15 = ++v50;
          }
        }

        v16 = v19;
        v13 = v18;
      }

      v27 = *(a1 + 82);
      if (*(a1 + 82))
      {
        if (*(a1 + 84) >= v27)
        {
          v33 = 104;
          if (*(a1 + 44) == 2)
          {
            v33 = 96;
          }

          v28 = *(*(a1 + v33) + 2 * v27);
        }

        else
        {
          v28 = 0;
        }

        v14 = *(a1 + 86);
        v34 = *(a1 + 90) + ((v28 * (v14 - *(a1 + 90))) >> 15);
        v35 = v27 - 1;
        *(a1 + 82) = v27 - 1;
        v36 = *(v12 + 2 * v17);
        if (v35)
        {
          LOWORD(v14) = v34;
        }

        else
        {
          *(a1 + 44) = 1;
        }

        v37 = (v34 * v36) >> 15;
        if (v37 <= -32767)
        {
          v37 = -32767;
        }

        if (v37 >= 0x7FFF)
        {
          LOWORD(v37) = 0x7FFF;
        }

        *(v12 + 2 * v17) = v37;
        v29 = (v17 + 1);
      }

      else
      {
        if (v16 >= v13)
        {
          v29 = v13;
        }

        else
        {
          v29 = v16;
        }

        if (*(a1 + 88) != 80)
        {
          if (v17 >= v29)
          {
            v29 = v17;
          }

          else
          {
            v30 = v29 - v17;
            v31 = (v12 + 2 * v17);
            do
            {
              v32 = (*v31 * v14) >> 15;
              if (v32 <= -32767)
              {
                v32 = -32767;
              }

              if (v32 >= 0x7FFF)
              {
                LOWORD(v32) = 0x7FFF;
              }

              *v31++ = v32;
              --v30;
            }

            while (v30);
          }
        }
      }

      v17 = v29;
    }

    while (v29 < v13);
  }

  if (a6)
  {
    v8 = v46;
    v38 = v45;
    if (!v13)
    {
      v39 = a6;
      if (v15 < a6)
      {
        do
        {
          SearchNextMarkerOfRTCSubType(v10, a6, VOL_RTC_INTEREST, 1u, &v50, &v49, &v51);
        }

        while (v50 < a6);
      }

      if (v51)
      {
        v40 = (v10 + 32 * v49);
        if (*v40 == 24)
        {
          v41 = v40[6];
          *(a1 + 88) = v41;
        }

        else
        {
          LOWORD(v41) = *(a1 + 88);
        }

        v41 = v41;
        if (v41 >= 0x64u)
        {
          v41 = 100;
        }

        LOWORD(v14) = aVolPar2Amplif[v41];
        *(a1 + 86) = v14;
        *(a1 + 90) = *(a1 + 92);
      }

      goto LABEL_83;
    }
  }

  else
  {
    v8 = v46;
    v38 = v45;
  }

  v39 = a6;
LABEL_83:
  *(a1 + 92) = v14;
  critsec_Leave(*(a1 + 120));
  if ((v38 & 2) != 0)
  {
    v42 = 1;
  }

  else
  {
    v42 = 5;
  }

  if ((v38 & 1) == 0)
  {
    v42 = 4;
  }

  *(a1 + 40) = v42;
  result = (*(a1 + 32))(*(a1 + 24), v38, v8, a4, v10, v39);
  v43 = *(a1 + 40);
  if (v43 == 5)
  {
    goto LABEL_91;
  }

  if (v43 != 4)
  {
    goto LABEL_92;
  }

LABEL_10:
  if (!*v8 || !*a4)
  {
LABEL_91:
    *(a1 + 40) = 1;
  }

LABEL_92:
  v44 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t vol_Break(uint64_t a1, int a2)
{
  result = 2164269062;
  if (a1)
  {
    if (*(a1 + 40) == 1)
    {
      return 2164269073;
    }

    else
    {
      result = 0;
      if (a2)
      {
        *(a1 + 112) = 1;
      }
    }
  }

  return result;
}

uint64_t SetVolume(uint64_t a1, unsigned int a2)
{
  v4 = critsec_Enter(*(a1 + 120));
  if ((v4 & 0x80000000) == 0)
  {
    if (a2 >= 0x64)
    {
      v5 = 100;
    }

    else
    {
      v5 = a2;
    }

    *(a1 + 112) = 0;
    *(a1 + 88) = v5;
    v6 = aVolPar2Amplif[v5];
    *(a1 + 86) = v6;
    v7 = *(a1 + 92);
    *(a1 + 90) = v7;
    v8 = v6 == v7;
    if (v6 > v7)
    {
      v9 = 2;
    }

    else
    {
      v9 = 3;
    }

    *(a1 + 44) = v9;
    if (v8)
    {
      v10 = 0;
      *(a1 + 44) = 1;
    }

    else
    {
      v10 = *(a1 + 84);
    }

    *(a1 + 82) = v10;
    critsec_Leave(*(a1 + 120));
  }

  return v4;
}

uint64_t acceptor_VolCheckRange(int a1, char *__s1, const char *a3, _DWORD *a4)
{
  v6 = 2164269063;
  *a4 = 1;
  if (!strcmp(__s1, "volume"))
  {
    if (atoi(a3) < 0x65)
    {
      return 0;
    }

    v6 = 2164269071;
  }

  *a4 = 0;
  return v6;
}

uint64_t acceptor_VolLearnChange(uint64_t a1, char *__s1, const char *a3)
{
  v5 = 2164269063;
  if (strcmp(__s1, "volume"))
  {
    return v5;
  }

  v6 = atoi(a3);
  if (v6 > 0x64)
  {
    return 2164269071;
  }

  return SetVolume(a1, v6);
}

uint64_t psi_lookup_ReadStream(unsigned __int8 *a1, int a2, _DWORD *a3, int a4, _WORD *a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = 2164269056;
  if (a1 && a2 <= 50)
  {
    if (a2 >= 1)
    {
      v6 = a2;
      v7 = v17;
      do
      {
        v8 = *a1++;
        v9 = vdupq_n_s32(v8);
        *v7++ = vand_s8(vmovn_s16(vuzp1q_s16(vshlq_u32(v9, xmmword_1C3827A00), vshlq_u32(v9, xmmword_1C38279F0))), 0x101010101010101);
        --v6;
      }

      while (v6);
    }

    if (a4 >= 1)
    {
      v10 = 0;
      v11 = v17;
      do
      {
        v12 = *a5;
        if (*a5)
        {
          v13 = 0;
          v14 = 0;
          do
          {
            v14 += v11[v13] << v13;
            ++v13;
          }

          while (v12 != v13);
          v11 += v12;
        }

        else
        {
          v14 = 0;
        }

        *a3++ = v14;
        ++a5;
        ++v10;
      }

      while (v10 != a4);
    }

    v5 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t chi_DecodePolyphone__Create(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, __int128 *a5)
{
  v8 = 0;
  v9 = 0;
  v42 = *MEMORY[0x1E69E9840];
  *v41 = xmmword_1C3827A10;
  *&v41[12] = *(&xmmword_1C3827A10 + 12);
  *(a1 + 80) = 0;
  v10 = a1 + 80;
  *(a1 + 32) = 0;
  *(a1 + 28) = 0;
  *(a1 + 336) = 5;
  *(a1 + 40) = 0u;
  v11 = (a1 + 40);
  *(a1 + 160) = 0;
  *(a1 + 208) = 0;
  *(a1 + 184) = 0;
  *(a1 + 224) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 132) = 0;
  *(a1 + 138) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  v12 = *a5;
  *(a1 + 252) = a5[1];
  *(a1 + 352) = a2;
  *(a1 + 236) = v12;
  do
  {
    v9 += *&v41[v8];
    v8 += 2;
  }

  while (v8 != 12);
  if ((v9 & 7) != 0)
  {
    v13 = (v9 >> 3) + 1;
  }

  else
  {
    v13 = v9 >> 3;
  }

  Stream = psi_lookup_ReadStream(a4, v13, v37, 6, v41);
  if (Stream || (v15 = v39, *(a1 + 32) = v38, v16 = v40, *(a1 + 28) = v40, Stream = psi_lookup_ReadStream(&a4[v13], v13, v37, v16, (v41 | 0xC)), Stream))
  {
LABEL_8:
    v17 = Stream;
    goto LABEL_9;
  }

  v20 = *(a1 + 28);
  if (v20 >= 1)
  {
    v21 = (a1 + 56);
    memcpy((a1 + 56), v37, 4 * v20);
    v22 = 0;
    v23 = (v41 | 0xC);
    v24 = v20;
    do
    {
      v25 = *v23++;
      v22 += v25;
      --v24;
    }

    while (v24);
    v26 = 0;
    v27 = (v22 & 7) == 0;
    LODWORD(v28) = v13 + ((v22 & 0xFFF8) >> 3);
    if (v27)
    {
      v28 = v28;
    }

    else
    {
      v28 = (v28 + 1);
    }

    v29 = &a4[v28];
    do
    {
      *v11++ = &v29[v26];
      v30 = *v21++;
      v26 += v30;
      --v20;
    }

    while (v20);
  }

  v17 = 2164269066;
  v31 = *(a1 + 32);
  *(a1 + 348) = v31;
  if (smc1175mrf22spi_GetInfo(v31, v15, 0, a1 + 96) || (v32 = heap_Calloc(*(a3 + 8), *(a1 + 126), 1), (*(a1 + 64) = v32) == 0) || smc1175mrf22spi_DecoderOpen(*(a1 + 348), v15, &a4[v13 - 4], v32, v10))
  {
    v17 = 2164269056;
    goto LABEL_9;
  }

  v33 = heap_Calloc(*(a3 + 8), *(a1 + 116), 1);
  *a1 = v33;
  if (v33)
  {
    v34 = heap_Calloc(*(a3 + 8), *(a1 + 120), 1);
    *(a1 + 8) = v34;
    if (v34)
    {
      v35 = heap_Calloc(*(a3 + 8), *(a1 + 120), 1);
      *(a1 + 16) = v35;
      if (v35)
      {
        v36 = heap_Calloc(*(a3 + 8), *(a1 + 128), 1);
        *(a1 + 72) = v36;
        if (v36)
        {
          *(a1 + 232) = 1;
          *(a1 + 24) = *(a1 + 104);
          *(a1 + 132) = 0;
          *(a1 + 134) = *(a1 + 120);
          Stream = vect_s_t__createVect(*(a3 + 8), a1 + 200, *(a1 + 236));
          if (!Stream)
          {
            Stream = vect_s_t__createVect(*(a3 + 8), a1 + 176, *(a1 + 236));
            if (!Stream)
            {
              Stream = vect_s_t__createVect(*(a3 + 8), a1 + 152, *(a1 + 236));
              if (!Stream)
              {
                Stream = vect_i_t__createVect(*(a3 + 8), a1 + 288, 0x1Eu);
                if (!Stream)
                {
                  Stream = vect_i_t__createVect(*(a3 + 8), a1 + 312, 0x1Eu);
                }
              }
            }
          }

          goto LABEL_8;
        }
      }
    }
  }

LABEL_9:
  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

uint64_t chi_DecodePolyphone__Delete(uint64_t *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = a1[9];
  if (v4)
  {
    heap_Free(*(a2 + 8), v4);
    a1[9] = 0;
  }

  v5 = a1[8];
  if (v5)
  {
    heap_Free(*(a2 + 8), v5);
    a1[8] = 0;
  }

  v6 = a1[1];
  if (v6)
  {
    heap_Free(*(a2 + 8), v6);
    a1[1] = 0;
  }

  v7 = a1[2];
  if (v7)
  {
    heap_Free(*(a2 + 8), v7);
    a1[2] = 0;
  }

  if (*a1)
  {
    heap_Free(*(a2 + 8), *a1);
    *a1 = 0;
  }

  vect_i_t__deleteVect((a1 + 36));
  vect_i_t__deleteVect((a1 + 39));
  vect_i_t__deleteVect((a1 + 25));
  vect_i_t__deleteVect((a1 + 22));
  vect_i_t__deleteVect((a1 + 19));
  v8 = a1[10];
  if (!v8)
  {
    return 0;
  }

  v9 = a1[11];

  return smc1175mrf22spi_DecoderClose(v8, v9);
}

uint64_t chi_DecodePolyphone__DeinitPoly(void *a1)
{
  v2 = 2164269056;
  v3 = a1[10];
  if (v3 && !smc1175mrf22spi_DecoderResetMemory(v3, a1[11]))
  {
    v2 = 0;
    a1[28] = 0;
  }

  return v2;
}

uint64_t chi_DecodePolyphone__InitPoly(uint64_t a1)
{
  *(a1 + 146) = 2 * *(a1 + 236);
  *(a1 + 232) = 1;
  *(a1 + 24) = *(a1 + 104);
  *(a1 + 224) = 0;
  *(a1 + 340) = 0;
  *(a1 + 276) = 0;
  *(a1 + 268) = 0;
  return 0;
}

uint64_t chi_DecodePolyphone__OneFrame(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = *(a1 + 146);
  v37 = *(a1 + 134);
  v38 = v4;
  if (*(a1 + 268) >= *(a1 + 272))
  {
    return 2164269056;
  }

  v36 = 0;
  if (*(a2 + 124) == *(a2 + 56))
  {
    v9 = *(a2 + 120);
    switch(v9)
    {
      case 3:
        v10 = 480;
        break;
      case 2:
        v10 = 320;
        break;
      case 1:
        v10 = 160;
        break;
      default:
        v10 = 640;
        break;
    }

    v38 = v10;
    v36 = v9;
  }

  v12 = *(a2 + 144);
  smc1175mrf22spi_getDecoderBufferSize(*(a1 + 80), *(a1 + 88), *(a2 + 112), &v37, &v38, *(a1 + 232), &v36);
  if (*(a1 + 268) + v37 + 5 > *(a1 + 272) || (v13 = *(a2 + 124), v14 = *(a2 + 56), v13 == v14) && v12 == 1 || v13 >= v14 && !*(a1 + 232))
  {
    v_equ_i_t(*(a1 + 320), *(a1 + 296), *(a1 + 336));
    *(a1 + 340) = *(a1 + 344);
  }

  else
  {
    result = smc1175mrf22spi_getSpectrum(*(a1 + 80), *(a1 + 88), (*(a2 + 112) + v37), *(a1 + 320), (a1 + 340));
    if (result)
    {
      return result;
    }
  }

  v15 = v37;
  if (v37)
  {
    v16 = 0;
    v17 = *(a1 + 268);
    while (v17 < *(a1 + 272))
    {
      v18 = *(a2 + 112);
      *(a2 + 112) = v18 + 1;
      *(*(a1 + 8) + *(a1 + 132) + v16++) = *v18;
      v17 = *(a1 + 268) + 1;
      *(a1 + 268) = v17;
      if (v37 <= v16)
      {
        v15 = 0;
        goto LABEL_25;
      }
    }

    memcpy(*(a1 + 8), *(a1 + 16), *(a1 + 142));
    v15 = 1;
  }

  else
  {
    v16 = 0;
  }

LABEL_25:
  v19 = *(a1 + 132) + v16;
  *(a1 + 140) = v19;
  *(a1 + 136) = v16;
  *(a1 + 134) = v16;
  *(a1 + 276) += v16;
  *(a1 + 138) = v19;
  if ((v15 & 1) == 0)
  {
    memcpy(*(a1 + 16), *(a1 + 8), v19);
    *(a1 + 142) = *(a1 + 140);
  }

  v20 = *(a1 + 72);
  v22 = *a1;
  v21 = *(a1 + 8);
  v23 = *(a1 + 320);
  if (*(a1 + 232))
  {
    result = smc1175mrf22spi_DecoderProcess_F1(*(a1 + 80), *(a1 + 88), v21, (a1 + 140), v20, v22, (a1 + 144), v23, *(a1 + 340), a3);
    if (result)
    {
      return result;
    }

    *(a1 + 232) = 0;
  }

  else
  {
    result = smc1175mrf22spi_DecoderProcess(*(a1 + 80), *(a1 + 88), v21, (a1 + 140), v20, v22, (a1 + 144), v23, *(a1 + 340), v36, a3, a4);
    if (result)
    {
      return result;
    }
  }

  v24 = *(a1 + 146);
  v25 = v38;
  if (v38 != v24)
  {
    *(a1 + 146) = v38;
    LOWORD(v24) = v25;
  }

  v26 = v24 >> 1;
  *(a2 + 8) += v26;
  v27 = *(a1 + 24);
  v28 = *(a1 + 144);
  if (v27 <= v28 >> 1)
  {
    v29 = *(a1 + 160);
    v30 = *a1;
    if (v27)
    {
      v_equ_s_t(v29, &v30[v27], (v24 - ((2 * v27) & 0xFFFE)) >> 1);
      v31 = *(a1 + 24);
      *(a1 + 168) = (*(a1 + 146) - 2 * (v31 & 0x7FFF)) >> 1;
      *(a2 + 8) -= v31;
      *(a1 + 24) = 0;
    }

    else
    {
      v_equ_s_t(v29, v30, v26);
      *(a1 + 168) = *(a1 + 146) >> 1;
    }
  }

  else
  {
    *(a1 + 24) = v27 - (v28 >> 1);
    *(a1 + 168) = 0;
  }

  v32 = *(a1 + 140);
  v33 = *(a1 + 138);
  if (v33 <= v32)
  {
    *(a1 + 132) = 0;
    v35 = *(a1 + 120);
  }

  else
  {
    v34 = v33 - v32;
    *(a1 + 132) = v34;
    memmove(*(a1 + 8), (*(a1 + 8) + v32), v34);
    v35 = *(a1 + 120) - *(a1 + 132);
  }

  *(a1 + 134) = v35;
  v_equ_i_t(*(a1 + 296), *(a1 + 320), *(a1 + 336));
  result = 0;
  *(a1 + 344) = *(a1 + 340);
  return result;
}

uint64_t chi_DecodePolyphone__SmpRequested(uint64_t a1, int *a2, int *a3, uint64_t a4)
{
  v4 = *a3;
  if (*a3 < 1)
  {
    return 0;
  }

  v9 = 0;
  v10 = 0;
  v11 = *(a1 + 236);
  if (v4 < v11)
  {
    v11 = *a3;
  }

  v17 = v11;
  do
  {
    if (v10 >= v4)
    {
      break;
    }

    result = chi_DecodePolyphone__OneFrameX(a1, a2, &v17, a1 + 176);
    if (result)
    {
      return result;
    }

    v13 = *(a1 + 192);
    v10 += v13;
    v14 = v4 - v10;
    if (v4 - v10 >= *(a1 + 236))
    {
      v14 = *(a1 + 236);
    }

    v17 = v14;
    v_equ_s_t((*(a4 + 8) + 2 * v9), *(a1 + 184), v13);
    v15 = *(a1 + 192);
    v16 = *(a1 + 280) + v15;
    *(a1 + 280) = v16;
    if (v16 >= a2[32])
    {
      break;
    }

    v9 += v15;
  }

  while (*(a1 + 276) < *(a1 + 272));
  result = 0;
  *a3 = v10;
  return result;
}

uint64_t chi_DecodePolyphone__OneFrameX(uint64_t a1, int *a2, int *a3, uint64_t a4)
{
  result = 2164269056;
  *(a4 + 16) = 0;
  v8 = *(a1 + 236);
  v9 = a2[31];
  if (*a3 > v8)
  {
    return result;
  }

  v10 = *(a1 + 228);
  if (v10 < 1)
  {
    if (v9 > a2[14])
    {
      return result;
    }

    result = chi_DecodePolyphone__OneFrame(a1, a2, v9 >= a2[13] - 3, v9 >= a2[13] - 18);
    if (result)
    {
      return result;
    }

    v16 = a2[31];
    v17 = a2[13];
    v18 = v16 == v17;
    if (v16 < v17)
    {
      result = 0;
LABEL_28:
      a2[31] = v16 + 1;
      return result;
    }

    v20 = a2[14];
    if (!v18)
    {
      if (v16 == v20)
      {
        v23 = a2[12];
        v8 = v23 + 1;
        v24 = *a3;
        if (*a3 <= v23)
        {
          v25 = v8 - v24;
          v_equ_s_t(*(a4 + 8), *(a1 + 160), v24);
          *(a4 + 16) += *a3;
          v26 = (*(a1 + 208) + 2 * *(a1 + 224));
          v27 = (*(a1 + 160) + 2 * *a3);
LABEL_22:
          v_equ_s_t(v26, v27, v25);
          result = 0;
          *(a1 + 228) = v25;
LABEL_27:
          v16 = a2[31];
          goto LABEL_28;
        }
      }

      else
      {
        v28 = v8 - *a3;
        if (v8 > *a3)
        {
          v_equ_s_t(*(a4 + 8), *(a1 + 160), *a3);
          *(a4 + 16) += *a3;
          v_equ_s_t((*(a1 + 208) + 2 * *(a1 + 224)), (*(a1 + 160) + 2 * *a3), v28);
          result = 0;
          *(a1 + 228) = v28;
          goto LABEL_27;
        }
      }

      v_equ_s_t(*(a4 + 8), *(a1 + 160), v8);
      result = 0;
      *(a4 + 16) += v8;
      *a3 = v8;
      goto LABEL_27;
    }

    if (v16 == v20)
    {
      v21 = a2[11];
      v22 = a2[12] - v21 + 1;
    }

    else
    {
      v21 = a2[11];
      v22 = v8 - v21;
    }

    v25 = v22 - *a3;
    if (v22 <= *a3)
    {
      v_equ_s_t(*(a4 + 8), (*(a1 + 160) + 2 * v21), v22);
      result = 0;
      *(a4 + 16) += v22;
      *a3 = v22;
      goto LABEL_27;
    }

    v_equ_s_t(*(a4 + 8), (*(a1 + 160) + 2 * v21), *a3);
    *(a4 + 16) += *a3;
    v26 = (*(a1 + 208) + 2 * *(a1 + 224));
    v27 = (*(a1 + 160) + 2 * (a2[11] + *a3));
    goto LABEL_22;
  }

  v11 = *(a4 + 8);
  v12 = (*(a1 + 208) + 2 * *(a1 + 224));
  if (v10 >= *a3)
  {
    v_equ_s_t(v11, v12, *a3);
    v13 = *a3;
    *(a4 + 16) = *a3;
    v19 = *(a1 + 228);
    *(a1 + 224) += v13;
    *(a1 + 228) = v19 - *a3;
  }

  else
  {
    v_equ_s_t(v11, v12, *(a1 + 228));
    v14 = *(a1 + 224);
    v13 = *(a1 + 228);
    *(a4 + 16) = v13;
    *(a1 + 224) = (v14 + v13);
  }

  *a3 = v13;
  result = 0;
  if (!*(a1 + 228))
  {
    *(a1 + 224) = 0;
  }

  return result;
}

uint64_t xi_figureOutSomething(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 132);
  v3 = *(a1 + 92);
  v4 = *(a1 + 100);
  v5 = *(a1 + 4);
  v6 = *a1 + v3;
  v7 = v6 + *(a1 + 96);
  v8 = v5 + v7;
  v9 = *(a1 + 104) + v4;
  *(a1 + 12) = 0;
  *(a1 + 16) = v9 + v5 + v7;
  *(a1 + 20) = v7;
  *(a1 + 24) = v5;
  v10 = v5 + v7 - 1;
  if ((v5 + v7 < 0) ^ __OFADD__(v5, v7) | (v5 + v7 == 0))
  {
    v10 = 0;
  }

  *(a1 + 28) = v10;
  *(a1 + 80) = v5;
  *(a1 + 84) = 0;
  if ((a2 & 0xF) != 0)
  {
    if ((a2 & 4) != 0)
    {
      v11 = 0;
      *(a1 + 60) = v7;
    }

    else
    {
      *(a1 + 60) = v6;
      v11 = *(a1 + 156);
      v5 += v11;
      *(a1 + 80) = v5;
      *(a1 + 84) = v11;
      v7 = v6;
    }
  }

  else
  {
    v11 = *(a1 + 152);
    v7 -= v11;
    *(a1 + 60) = v7;
    v5 += v11;
    *(a1 + 80) = v5;
    *(a1 + 84) = v11;
  }

  *(a1 + 72) = v11;
  *(a1 + 88) = v5;
  if (a2 <= 0xF)
  {
    v12 = *(a1 + 152);
    v10 += v12;
    *(a1 + 64) = v10;
  }

  else
  {
    if ((a2 & 0x40) != 0)
    {
      *(a1 + 64) = v10;
      goto LABEL_15;
    }

    v10 = v9 + v8 - 1;
    *(a1 + 64) = v10;
    v12 = *(a1 + 160);
  }

  *(a1 + 80) = v12 + v5;
LABEL_15:
  *(a1 + 68) = v10 - v7 + 1;
  v13 = v7 - v3;
  v14 = v10 + v4;
  *(a1 + 32) = v7 - v3;
  *(a1 + 36) = v14;
  v15 = 4;
  if (a2 >= 0x10 && (a2 & 0x40) == 0)
  {
    v16 = v14 % v2;
    if (v14 % v2 <= 239)
    {
      if (v16 <= 159)
      {
        if (v16 <= 79)
        {
          if (v16 < 0)
          {
            goto LABEL_26;
          }

          v15 = 1;
        }

        else
        {
          v15 = 2;
        }
      }

      else
      {
        v15 = 3;
      }
    }

    else
    {
      v15 = 4;
    }
  }

  *(a1 + 120) = v15;
LABEL_26:
  if (v7 != v3)
  {
    v13 = v13 / v2 * v2;
    *(a1 + 32) = v13;
  }

  if (v14 <= v13)
  {
    v19 = v14;
  }

  else
  {
    v17 = v2 + ~(v14 % v2);
    if (v14 % v2)
    {
      v18 = v17 == 0;
    }

    else
    {
      v18 = 1;
    }

    v19 = v14;
    if (!v18)
    {
      v19 = v17 + v14;
      *(a1 + 36) = v17 + v14;
    }
  }

  v20 = v7 / v2;
  v21 = v10 / v2;
  *(a1 + 52) = v7 / v2;
  *(a1 + 56) = v10 / v2;
  v22 = v7 % v2;
  *(a1 + 40) = v19 - v13 + 1;
  *(a1 + 44) = v22;
  v23 = v10 % v2;
  *(a1 + 48) = v23;
  v24 = v21 - v20;
  v25 = v23 - v22;
  v26 = v2 - v22 + v23;
  v27 = v26 + 1;
  if (v24 != 1)
  {
    v27 = v25 + 1;
  }

  v28 = v26 + (v24 - 1) * v2;
  if (v24 >= 2)
  {
    v29 = v28 + 1;
  }

  else
  {
    v29 = v27;
  }

  *(a1 + 128) = v29;
  v30 = v19 - v14;
  if (v19 - v14 < 0)
  {
    v30 = v14 - v19;
  }

  if (v30 >= v2)
  {
    return 2164269056;
  }

  v31 = 0;
  *(a1 + 76) = 0;
  return v31;
}

uint64_t xi_Segment__InitPoly_withDur(uint64_t a1, uint64_t a2, unsigned int a3, int a4, uint64_t a5, int a6)
{
  *(a1 + 148) = a4;
  v6 = *(a2 + 25);
  v7 = *(a2 + 24);
  *(a1 + 8) = 0;
  *a1 = *a2;
  v8 = a3;
  if (!a6)
  {
    v8 = 0;
  }

  *(a1 + 112) = a5 + v8;
  *(a1 + 124) = 0;
  *(a1 + 144) = (v6 & 0x10) != 0;
  xi_figureOutSomething(a1, v7);
  return 0;
}

uint64_t xi_Segment__DeinitPoly(void *a1)
{
  *a1 = 0;
  a1[14] = 0;
  return 0;
}

uint64_t xi_Segment__Init_for_psola(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 132) = *a3;
  *(a1 + 140) = *(a3 + 8);
  *(a1 + 152) = *(a3 + 16);
  *(a1 + 160) = *(a3 + 24);
  *(a1 + 100) = 0;
  *(a1 + 92) = 0;
  *(a1 + 168) = a2;
  return 0;
}

uint64_t xi_Segment__Init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 132) = *a3;
  *(a1 + 140) = *(a3 + 8);
  v3 = *(a3 + 20);
  *(a1 + 152) = *(a3 + 16);
  *(a1 + 156) = v3;
  v4 = *(a3 + 24);
  *(a1 + 160) = v4;
  *(a1 + 92) = 640;
  *(a1 + 96) = v3;
  *(a1 + 104) = v4;
  *(a1 + 168) = a2;
  return 0;
}

uint64_t rho_Concat__findbestmatch_fixed(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[4];
  v4 = v3;
  v5 = *(a2 + 8);
  v6 = *(a3 + 8);
  v7 = a1[2];
  v8 = v7;
  if (v7 < 1)
  {
    LOBYTE(v10) = 0;
    v16 = 0;
    v15 = 0;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = v6[v9] >> v10;
      v13 = v11 + v12 * v12;
      if (v13 < 0x1FFFFFF)
      {
        v11 = v13;
      }

      else
      {
        do
        {
          if ((v10 + 1) > 1)
          {
            ++v10;
          }

          else
          {
            v10 = 1;
          }

          v11 = v13 >> 2;
          v31 = v13 > 0x7FFFFFB;
          v13 >>= 2;
        }

        while (v31);
      }

      v9 += v3;
    }

    while (v9 < v7);
    v14 = 0;
    v15 = 0;
    v16 = 0;
    do
    {
      v17 = v6[v14] >> v10;
      v15 += v17 * v17;
      v16 += (*(v5 + 2 * v14) >> v10) * v17;
      v14 += v3;
    }

    while (v14 < v7);
  }

  v18 = a1[1];
  if (v3 <= v18)
  {
    v45 = a1[1];
    if (v15 <= 125 << (2 * v10))
    {
      v20 = 125 << (2 * v10);
    }

    else
    {
      v20 = v15;
    }

    v46 = v3;
    v21 = rho_Concat__sqrt(v20);
    LODWORD(v19) = 0;
    v22 = &v6[v4];
    v23 = v6;
    LODWORD(v8) = v7;
    v24 = v46;
    v25 = v16 / v21;
    do
    {
      v48 = v6;
      v47 = v19;
      if (v8 < 1)
      {
        v27 = 0;
      }

      else
      {
        v26 = 0;
        v27 = 0;
        do
        {
          v27 += (*(v5 + 2 * v26) >> v10) * (v22[v26] >> v10);
          v26 += v4;
        }

        while (v26 < v7);
      }

      v28 = v23[v7] >> v10;
      v15 = v15 - (*v23 >> v10) * (*v23 >> v10) + v28 * v28;
      v23 += v4;
      if (v15 <= 125 << (2 * v10))
      {
        v29 = 125 << (2 * v10);
      }

      else
      {
        v29 = v15;
      }

      v30 = v27 / rho_Concat__sqrt(v29);
      v31 = v30 <= v25;
      if (v30 <= v25)
      {
        v19 = v47;
      }

      else
      {
        v19 = v24;
      }

      if (v30 > v25)
      {
        v25 = v30;
      }

      v6 = v48;
      if (!v31)
      {
        v6 = v23;
      }

      v3 = v46;
      v8 = v7;
      v24 += v46;
      v22 += v4;
      v18 = v45;
    }

    while (v24 <= v45);
  }

  else
  {
    v19 = 0;
  }

  v32 = v3 - 1;
  v33 = v19 + v3 - 1;
  v34 = v19 - (v3 - 1);
  v35 = v18 - 1;
  v36 = v34 & ~(v34 >> 31);
  if (v33 < v18)
  {
    v35 = v19 + v3 - 1;
  }

  else
  {
    v36 = v19 - (v3 - 1);
  }

  if (v36 <= v35)
  {
    v37 = 0;
    if (v34 < 0 && v33 < v18)
    {
      v32 = v19;
    }

    v39 = &v6[-v32];
    v40 = 2 * v8;
    do
    {
      if (v7 < 1)
      {
        v42 = 0;
      }

      else
      {
        v41 = 0;
        v42 = 0;
        do
        {
          v42 += (*(v5 + v41) >> v10) * (v39[v41 / 2] >> v10);
          v41 += 2;
        }

        while (v40 != v41);
      }

      if (v42 <= v37)
      {
        v19 = v19;
      }

      else
      {
        v19 = v36;
      }

      if (v42 > v37)
      {
        v37 = v42;
      }

      ++v39;
    }

    while (v36++ != v35);
  }

  return v19;
}

uint64_t rho_Concat__sqrt(unsigned int a1)
{
  if (a1 < 2)
  {
    return 1;
  }

  v2 = a1 - 0x40000000;
  if (!(a1 >> 30))
  {
    v2 = a1;
  }

  v3 = a1 >> 30 != 0;
  v4 = v3 << 15;
  v5 = (v3 << 30) | 0x10000000;
  if (v2 >= v5)
  {
    v6 = (v3 << 30) | 0x10000000;
  }

  else
  {
    v6 = 0;
  }

  if (v2 >= v5)
  {
    v4 = ((a1 >> 30 != 0) << 15) | 0x4000;
  }

  v7 = v2 - v6;
  v8 = (v4 >> 14 << 28) | 0x4000000;
  v9 = v4 | 0x2000;
  if (v7 < v8)
  {
    v8 = 0;
    v9 = v4;
  }

  v10 = v7 - v8;
  v11 = (((v9 >> 13) & 0x1F) << 26) | 0x1000000;
  if (v10 >= v11)
  {
    v9 |= 0x1000u;
  }

  else
  {
    v11 = 0;
  }

  v12 = v10 - v11;
  v13 = (v9 << 12) + 0x400000;
  if (v12 >= v13)
  {
    v9 += 2048;
  }

  else
  {
    v13 = 0;
  }

  v14 = v12 - v13;
  v15 = (v9 << 11) + 0x100000;
  if (v14 >= v15)
  {
    v9 += 1024;
  }

  else
  {
    v15 = 0;
  }

  v16 = v14 - v15;
  v17 = (v9 << 10) + 0x40000;
  if (v16 >= v17)
  {
    v9 += 512;
  }

  else
  {
    v17 = 0;
  }

  v18 = v16 - v17;
  v19 = (v9 << 9) + 0x10000;
  if (v18 >= v19)
  {
    v9 += 256;
  }

  else
  {
    v19 = 0;
  }

  v20 = v18 - v19;
  v21 = (v9 << 8) + 0x4000;
  if (v20 >= v21)
  {
    v9 += 128;
  }

  else
  {
    v21 = 0;
  }

  v22 = v20 - v21;
  v23 = (v9 << 7) + 4096;
  if (v22 >= v23)
  {
    v9 += 64;
  }

  else
  {
    v23 = 0;
  }

  v24 = v22 - v23;
  v25 = (v9 << 6) + 1024;
  if (v24 >= v25)
  {
    v9 += 32;
  }

  else
  {
    v25 = 0;
  }

  v26 = v24 - v25;
  v27 = 32 * v9 + 256;
  if (v26 >= v27)
  {
    v9 += 16;
  }

  else
  {
    v27 = 0;
  }

  v28 = v26 - v27;
  v29 = 16 * v9 + 64;
  if (v28 >= v29)
  {
    v9 += 8;
  }

  else
  {
    v29 = 0;
  }

  v30 = v28 - v29;
  v31 = 8 * v9 + 16;
  if (v30 >= v31)
  {
    v9 += 4;
  }

  else
  {
    v31 = 0;
  }

  v32 = v30 - v31;
  v33 = 4 * v9 + 4;
  if (v32 >= v33)
  {
    v9 += 2;
  }

  else
  {
    v33 = 0;
  }

  if (v32 - v33 <= 2 * v9)
  {
    return v9;
  }

  else
  {
    return v9 + 1;
  }
}

uint64_t mu_Reset(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 12) = 0;
  *(a1 + 28) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  return 0;
}

uint64_t psi_Lookup_AvgSpeed(uint64_t a1, _WORD *a2)
{
  v2 = *(a1 + 72);
  *a2 = v2;
  if (v2)
  {
    return 0;
  }

  else
  {
    return 2164269057;
  }
}

uint64_t psi_VFDat__unloadData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  if (!a1 || !a2 || !a3 || !a4)
  {
    return v4;
  }

  if (*(a2 + 44) == 1)
  {
    vect_i_t__deleteVect(a2);
    v4 = 0;
  }

  else
  {
    v16 = *(a1 + 64);
    if (!v16)
    {
      return 0;
    }

    v17 = *(v16 + 24);
    if (!v17)
    {
      return 0;
    }

    v4 = brk_DataClose(v17, *(a2 + 32));
    if ((v4 & 0x80000000) != 0)
    {
      return v4;
    }

    *(a2 + 32) = 0;
  }

  if (*(a3 + 44) == 1)
  {
    vect_i_t__deleteVect(a3);
  }

  else
  {
    v18 = *(a3 + 24);
    if (v18)
    {
      v4 = ssftriff_reader_ReleaseChunkData(v18, v9, v10, v11, v12, v13, v14, v15);
      *(a3 + 24) = 0;
    }
  }

  if (*(a4 + 44) == 1)
  {
    vect_i_t__deleteVect(a4);
    return v4;
  }

  v19 = *(a1 + 64);
  if (!v19)
  {
    return 0;
  }

  v20 = *(v19 + 24);
  if (!v20)
  {
    return 0;
  }

  v21 = *(a4 + 32);

  return brk_DataClose(v20, v21);
}

uint64_t psi_VFDat__loadData(uint64_t a1, _WORD *a2, uint64_t a3, const char *a4, uint64_t a5, int a6, uint64_t a7, int a8, uint64_t a9, char a10)
{
  v51 = *MEMORY[0x1E69E9840];
  *v44 = 0;
  v45 = 0;
  v43 = 0;
  v42 = 0;
  *v41 = 0;
  v40 = 0;
  memset(v50, 0, 64);
  inited = InitRsrcFunction(a2, a3, &v45);
  if ((inited & 0x80000000) != 0)
  {
    v28 = inited;
    goto LABEL_63;
  }

  *(a1 + 64) = v45;
  ChunkData = ssftriff_reader_ObjOpen(a2, a3, 0, a4, "VFNT", 131333, v44);
  if ((ChunkData & 0x80000000) != 0)
  {
    goto LABEL_60;
  }

  v27 = ssftriff_reader_OpenChunk(*v44, &v42, &v40, 0, v23, v24, v25, v26);
  if ((v27 & 0x80000000) != 0)
  {
LABEL_56:
    v28 = v27;
    if ((v27 & 0x1FFF) != 0x14)
    {
      goto LABEL_61;
    }

    v28 = ssftriff_reader_ObjClose(*v44, v20, v21, v22, v23, v24, v25, v26);
    if ((v28 & 0x80000000) != 0)
    {
      goto LABEL_61;
    }

    goto LABEL_63;
  }

  v38 = a4;
  v28 = 2164269066;
  while (v42 ^ 0x464E4956 | v43)
  {
    if (!(v42 ^ 0x52444F43 | v43))
    {
      *(a1 + 56) = a9;
      if (!a10)
      {
        *(a9 + 44) = 0;
        goto LABEL_54;
      }

      *(a9 + 44) = 1;
      ChunkData = ssftriff_reader_GetChunkData(*v44, v40, v41, v22, v23, v24, v25, v26);
      if ((ChunkData & 0x80000000) != 0)
      {
        goto LABEL_60;
      }

      if ((vect_uc_t__createVect(*(*(a1 + 64) + 8), a9, v40) & 0x80000000) != 0)
      {
        goto LABEL_61;
      }

      v34 = *(a9 + 8);
      goto LABEL_44;
    }

    if (v42 ^ 0x4E555443 | v43)
    {
      if (v42 ^ 0x54494E55 | v43)
      {
        if (v42 ^ 0x48435053 | v43)
        {
          log_OutText(*(v45 + 32), "SYNTH", 3, 0, "Unknown data: %s for %s", v24, v25, v26, &v42);
        }

        else
        {
          *(a1 + 40) = a5;
          if (a6)
          {
            *(a5 + 44) = 1;
            ChunkData = ssftriff_reader_GetChunkData(*v44, v40, v41, v22, v23, v24, v25, v26);
            if ((ChunkData & 0x80000000) != 0)
            {
              goto LABEL_60;
            }

            if ((vect_uc_t__createVect(*(*(a1 + 64) + 8), a5, v40) & 0x80000000) != 0)
            {
              goto LABEL_61;
            }

            *(a5 + 40) = 0;
            v_equ_uc_t(*(a5 + 8), *v41, v40);
            *(a5 + 32) = 0;
            *(a1 + 24) = *(a5 + 8) + *(a5 + 40);
          }

          else
          {
            *(a5 + 44) = 0;
            *(a5 + 8) = 0;
            v35 = v40;
            *(a9 + 16) = v40;
            *(a5 + 20) = v35;
            *(a5 + 40) = ssftriff_reader_GetPosition(*v44);
            ChunkData = brk_DataOpen(*(*(a1 + 64) + 24));
            if ((ChunkData & 0x80000000) != 0)
            {
              goto LABEL_60;
            }

            *(a1 + 24) = 0;
          }
        }

        goto LABEL_54;
      }

      *(a1 + 48) = a7;
      if (!a8)
      {
        *(a7 + 44) = 0;
        ChunkData = ssftriff_reader_DetachChunkData(*v44, (a7 + 24), (a7 + 8), v22, v23, v24, v25, v26);
        if ((ChunkData & 0x80000000) != 0)
        {
          goto LABEL_60;
        }

        goto LABEL_54;
      }

      *(a7 + 44) = 1;
      ChunkData = ssftriff_reader_GetChunkData(*v44, v40, v41, v22, v23, v24, v25, v26);
      if ((ChunkData & 0x80000000) != 0)
      {
        goto LABEL_60;
      }

      if ((vect_uc_t__createVect(*(*(a1 + 64) + 8), a7, v40) & 0x80000000) != 0)
      {
        goto LABEL_61;
      }

      v34 = *(a7 + 8);
LABEL_44:
      v_equ_uc_t(v34, *v41, v40);
    }

LABEL_54:
    ChunkData = ssftriff_reader_CloseChunk(*v44);
    if ((ChunkData & 0x80000000) != 0)
    {
      goto LABEL_60;
    }

    v27 = ssftriff_reader_OpenChunk(*v44, &v42, &v40, 0, v23, v24, v25, v26);
    if ((v27 & 0x80000000) != 0)
    {
      goto LABEL_56;
    }
  }

  v39 = 0;
  ChunkData = ssftriff_reader_GetChunkData(*v44, v40, v41, v22, v23, v24, v25, v26);
  if ((ChunkData & 0x80000000) != 0)
  {
    goto LABEL_60;
  }

  v29 = v40;
  if (!v40)
  {
    goto LABEL_54;
  }

  v30 = 0;
  while (1)
  {
    v46[0] = 0;
    LOBYTE(__dst) = 0;
    v39 = 64;
    ChunkData = ssftriff_reader_ReadStringZ(*v44, *v41, v29, v30, &__dst, &v39);
    if ((ChunkData & 0x80000000) == 0)
    {
      v21 = v40;
      if (v30 < v40)
      {
        v30 += v39;
        v39 = 64;
        ChunkData = ssftriff_reader_ReadStringZ(*v44, *v41, v40, v30, v46, &v39);
      }
    }

    if ((ChunkData & 0x80000000) != 0)
    {
      break;
    }

    v31 = v39;
    if (__dst ^ 0x71657246 | BYTE4(__dst))
    {
      if (__dst ^ 0x6465657053677641 | v49)
      {
        if (__dst == 1701080899 && WORD2(__dst) == 114)
        {
          if (v46[0])
          {
            if (*v46 != 0x3266726D35373131 || v47 != 50)
            {
              log_OutText(*(*(a1 + 64) + 32), "SYNTH", 0, 0, "Incompatible encoding of %s: %s", v24, v25, v26, v38);
              ChunkData = 2164269081;
              break;
            }
          }

          strcpy(v50, "decoder/");
          __strcat_chk();
        }
      }

      else
      {
        *(a1 + 72) = atoi(v46);
      }
    }

    else
    {
      *(a1 + 74) = atoi(v46);
    }

    v30 += v31;
    log_OutText(*(*(a1 + 64) + 32), "SYNTH", 3, 0, "VF attribute %s=%s", v24, v25, v26, &__dst);
    v29 = v40;
    if (v30 >= v40)
    {
      goto LABEL_54;
    }
  }

LABEL_60:
  v28 = ChunkData;
LABEL_61:
  if (*v44)
  {
    ssftriff_reader_ObjClose(*v44, v20, v21, v22, v23, v24, v25, v26);
  }

LABEL_63:
  v36 = *MEMORY[0x1E69E9840];
  return v28;
}

uint64_t psi_mapCodedData(uint64_t a1, uint64_t a2, int a3, unsigned int *a4)
{
  v4 = *a4;
  if (v4)
  {
    return brk_DataMap(*(*(a1 + 64) + 24), *(a2 + 32), (*(a2 + 40) + a3), v4, a1 + 24);
  }

  else
  {
    return 0;
  }
}

uint64_t psi_unMapCodedData(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    return 16785425;
  }

  result = brk_DataUnmap(*(*(a1 + 64) + 24), *(a2 + 32), v2);
  if ((result & 0x80000000) == 0)
  {
    *(a1 + 24) = 0;
  }

  return result;
}

uint64_t psi_DataMapSegment__InitPoly(uint64_t a1, _DWORD *a2, unsigned int *a3)
{
  v3 = *(a1 + 40);
  if (*(v3 + 44))
  {
    return 0;
  }

  v5 = *a3;
  if (!v5)
  {
    return 0;
  }

  else
  {
    return brk_DataMap(*(*(a1 + 64) + 24), *(v3 + 32), (*(v3 + 40) + *a2), v5, a1 + 24);
  }
}

uint64_t psi_DataMapSegment__DeinitPoly(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (*(v1 + 44))
  {
    return 0;
  }

  else
  {
    return psi_unMapCodedData(a1, v1);
  }
}

uint64_t convertFromMsecToTp(int a1)
{
  if (a1 < 1)
  {
    return 0;
  }

  else
  {
    return 22 * a1 + 3276 * HIWORD(a1) + ((-107321754 * HIWORD(a1) + 1638 * a1 + ((26214 * a1 + 0x8000) >> 16) + 0x4000) >> 15);
  }
}

uint64_t vu__UnitVector_t__Delete(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 2164269066;
  }

  if (*a1)
  {
    heap_Free(*(a2 + 8), *a1);
    *a1 = 0;
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    heap_Free(*(a2 + 8), v4);
    *(a1 + 8) = 0;
  }

  result = 0;
  *(a1 + 16) = 0;
  return result;
}

uint64_t vu__fillUnitAndSubUnit__Init(uint64_t *a1, uint64_t a2)
{
  v2 = 2164269066;
  if (a1)
  {
    v4 = heap_Calloc(*(a2 + 8), 1, 40);
    *a1 = v4;
    if (v4)
    {
      v2 = 0;
      *(v4 + 24) = 0;
      *(v4 + 32) = 0;
      *v4 = 0;
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
    }
  }

  return v2;
}

uint64_t vu__fillUnitAndSubUnit__Denit(uint64_t *a1, uint64_t a2)
{
  v2 = 2164269066;
  if (a1)
  {
    v4 = *a1;
    if (*a1)
    {
      if (!vu__UnitVector_t__Delete(*a1, a2))
      {
        heap_Free(*(a2 + 8), v4);
        v2 = 0;
        *a1 = 0;
      }
    }
  }

  return v2;
}

uint64_t vu__fillUnitAndSubUnit__Begin(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 32);
  if (!v5)
  {
    return 0;
  }

  v9 = *(a4 + 8);
  v95 = 0;
  v96[0] = 0;
  v93 = 0;
  v94 = 0;
  v91 = 0;
  v92 = 0;
  v89 = 0;
  v90 = 0;
  v87 = 0;
  v88 = 0;
  v85 = 0;
  v86 = 0;
  v83 = 0;
  v84 = 0;
  v80 = 0;
  v81 = 0;
  v82 = 0;
  v77 = 0;
  v78 = 0;
  v79 = 0;
  v76 = 0;
  v75 = 0;
  Vect = vect_c_t__createVect(*(a2 + 8), &v80, v5);
  if (Vect)
  {
    return Vect;
  }

  Vect = vect_c_t__createVect(*(a2 + 8), &v77, *(a4 + 32));
  if (Vect)
  {
    return Vect;
  }

  Vect = vect_i_t__createVect(*(a2 + 8), &v89, *(a4 + 32));
  if (Vect)
  {
    return Vect;
  }

  Vect = vect_i_t__createVect(*(a2 + 8), &v92, *(a4 + 32));
  if (Vect)
  {
    return Vect;
  }

  Vect = vect_i_t__createVect(*(a2 + 8), &v86, *(a4 + 32));
  if (Vect)
  {
    return Vect;
  }

  Vect = vect_i_t__createVect(*(a2 + 8), &v83, *(a4 + 32));
  if (Vect)
  {
    return Vect;
  }

  v12 = *(a4 + 32);
  if (v12 < 1)
  {
    goto LABEL_21;
  }

  v13 = 0;
  for (i = 0; i < v12; i += 2)
  {
    v15 = *(a4 + 48);
    if (*(v15 + v13) == 35 && *(v15 + v13 + 1) == 35)
    {
      *(*(a4 + 96) + v13) = 80;
      *(*(a4 + 96) + v13 + 1) = 80;
      v12 = *(a4 + 32);
    }

    ++v13;
  }

  if (v12 < 2)
  {
LABEL_21:
    *v81 = 0;
    psi_Lookup__getPreviousDemiID(a3, **(a4 + 24), &v75, &v76 + 1, v96 + 1, v96, &v95 + 1, &v76, &v95);
    *v90 = v96[0];
    *v93 = HIDWORD(v96[0]);
    *v87 = HIDWORD(v95);
    *v84 = v95;
    *v78 = HIBYTE(v76) != 0;
    if (**(a4 + 48) != 35)
    {
      *v78 = 0;
      if (*(a4 + 32) >= 2)
      {
        v81[1] = 0;
      }
    }

    v18 = *(a4 + 32);
    if (*(*(a4 + 48) + (v18 >> 1) - 1) != 35)
    {
      v81[v18 - 1] = 0;
      v19 = *(a4 + 32);
      if (v19 < 1)
      {
        goto LABEL_33;
      }

      v78[v19 - 2] = 0;
      v18 = *(a4 + 32);
    }

    if (v18 >= 1)
    {
      v20 = 0;
      v21 = 0;
      v22 = -1;
      do
      {
        if (!v81[v20])
        {
          ++v22;
        }

        v21 += (v20++ & 1) == 0;
      }

      while (v18 != v20);
      goto LABEL_34;
    }

LABEL_33:
    v21 = 0;
    v22 = -1;
LABEL_34:
    v11 = 2164269056;
    v23 = heap_Calloc(*(a2 + 8), (v22 + 1), 28);
    if (!v23)
    {
      return 2164269066;
    }

    v24 = v23;
    v25 = heap_Calloc(*(a2 + 8), v21, 16);
    if (!v25)
    {
      return 2164269066;
    }

    *a1 = v24;
    *(a1 + 8) = v25;
    v69 = v25;
    *(a1 + 16) = v22 + 1;
    *(a1 + 18) = v21;
    v71 = v24;
    if (*(a4 + 32) >= 1)
    {
      v29 = 0;
      v30 = 0;
      v74 = 0;
      v72 = 0;
      v70 = 0;
      LODWORD(v31) = -1;
      while (1)
      {
        v32 = v93[v29];
        HIDWORD(v96[0]) = v32;
        v33 = v81;
        v34 = v81[v29] ? v74 : 0;
        v35 = v29 >> 1;
        if (!*(*(a4 + 120) + 2 * v35))
        {
          break;
        }

        if (v32 >= 206)
        {
          goto LABEL_46;
        }

        v36 = 1;
LABEL_47:
        if ((v29 & 1) == 0)
        {
          if (v29 > 1)
          {
            v37 = v70;
          }

          else
          {
            v37 = v70;
            if (*(*(a4 + 48) + v35) != 35)
            {
              v38 = *(a4 + 72);
              v37 = v70 + *(v38 + v35);
              *(v38 + v35) = 0;
              v33 = v81;
            }
          }

          v39 = *(*(a4 + 72) + v35);
          v40 = v69 + 16 * v72;
          *(v40 + 14) = v39;
          *(v40 + 12) = v37;
          *v40 = v34;
          *(v40 + 4) = HIDWORD(v96[0]) + v30;
          v70 = v37 + v39;
          v32 = HIDWORD(v96[0]);
          v30 = 0;
        }

        v73 = v30;
        v74 = v32 + v34;
        if (v33[v29])
        {
          v41 = v24 + 28 * v31;
          vu__PadUnit(a4 + 88, a4 + 112, v41, v29);
          *(v41 + 4) += HIDWORD(v96[0]);
        }

        else
        {
          LODWORD(v96[0]) = v90[v29];
          HIDWORD(v95) = v87[v29];
          v31 = v31 + 1;
          LODWORD(v95) = v84[v29];
          v42 = v24 + 28 * v31;
          *v42 = HIDWORD(v95);
          *(v42 + 4) = HIDWORD(v96[0]);
          if ((v36 & 1) == 0)
          {
            *v42 = v74;
            *(v42 + 4) = HIDWORD(v96[0]);
          }

          *(v42 + 16) = v72;
          *(v42 + 18) = 0;
          *(v42 + 24) = 0;
          vu__FillUnit(a4 + 40, a4 + 88, a4 + 112, v42, v29, *(a4 + 32), v9);
          *(v42 + 12) = v96[0];
          *(v42 + 20) = v95;
        }

        v24 = v71;
        if (v78[v29])
        {
          *(v71 + 28 * v31 + 25) |= 0x10u;
        }

        v43 = v73;
        if (v29 == *(a4 + 32) - 1)
        {
          *(v71 + 28 * v31 + 25) |= (v9 & 4) >> 1;
          if ((v9 & 4) != 0)
          {
            log_OutText(*(a2 + 32), "SYNTH", 3, 0, "Last phrase in sentence reached\n", v26, v27, v28, v68);
            v43 = v73;
            v24 = v71;
          }
        }

        if ((v29 & 1) == 0)
        {
          ++*(v24 + 28 * v31 + 18);
          ++v72;
        }

        v30 = v32 + v43;
        if (++v29 >= *(a4 + 32))
        {
          goto LABEL_71;
        }
      }

      v36 = 1;
      if (*(*(a4 + 48) + v35) != 35 || v32 <= 205)
      {
        goto LABEL_47;
      }

LABEL_46:
      v36 = 0;
      v34 = (v32 - 5) >> 1;
      v32 = 5;
      HIDWORD(v96[0]) = 5;
      goto LABEL_47;
    }

    LODWORD(v31) = -1;
LABEL_71:
    if (v31 != v22)
    {
      log_OutText(*(a2 + 32), "SYNTH", 3, 0, "error in synth_fx. Number of Units do not match!", v26, v27, v28, v68);
      return v11;
    }

    v44 = (v22 + 1);
    if ((v22 & 0x80000000) == 0)
    {
      v45 = 0;
      do
      {
        v46 = v24 + 28 * v45;
        v47 = *(v46 + 4);
        HIDWORD(v96[0]) = v47;
        v48 = *(v46 + 18);
        if (*(v46 + 18))
        {
          v49 = *(v46 + 16);
          v50 = v48 + v49;
          v51 = (v69 + 4 + 16 * (v50 - 1));
          do
          {
            v52 = (v47 - *(v51 - 1)) & ~((v47 - *(v51 - 1)) >> 31);
            *v51 = v52;
            v51 -= 4;
            v47 = HIDWORD(v96[0]) - v52;
            HIDWORD(v96[0]) = v47;
            --v50;
          }

          while (v50 > v49);
        }

        ++v45;
      }

      while (v45 != v22 + 1);
    }

    vect_i_t__deleteVect(&v80);
    vect_i_t__deleteVect(&v77);
    *(a1 + 20) = 0;
    if ((v22 & 0x80000000) == 0)
    {
      v56 = 0;
      v57 = 0;
      v58 = v24;
      do
      {
        if (v57)
        {
          v59 = v24 + 28 * v57;
          if (*(v59 + 4))
          {
            v60 = v44;
          }

          else
          {
            v60 = v44;
            v61 = (v44 - 1);
            if (v57 < v61)
            {
              v62 = *(v59 + 24);
              if ((v62 & 0xF) != 4 && (v62 & 0xF0) != 0x40)
              {
                log_OutText(*(a2 + 32), "SYNTH", 3, 0, "synth_fx: reducing number of fx units !", v53, v54, v55, v68);
                v63 = *(v59 - 12);
                v64 = *(v59 + 16);
                v24 = v71;
                if (v64 != v63)
                {
                  *(v69 + 16 * v63 + 14) += *(v69 + 16 * v64 + 14);
                  v65 = v56 + v61;
                  v66 = v58;
                  do
                  {
                    *v66 = *(v66 + 28);
                    *(v66 + 12) = *(v66 + 40);
                    v66 = (v66 + 28);
                    --v65;
                  }

                  while (v65);
                  *(a1 + 16) = v61;
                  v60 = v61;
                }

                goto LABEL_92;
              }
            }
          }

          v24 = v71;
        }

        else
        {
          v60 = v44;
        }

LABEL_92:
        ++v57;
        v58 = (v58 + 28);
        --v56;
        v44 = v60;
      }

      while (v57 < v60);
    }

    vect_i_t__deleteVect(&v89);
    vect_i_t__deleteVect(&v92);
    vect_i_t__deleteVect(&v86);
    vect_i_t__deleteVect(&v83);
    return 0;
  }

  v16 = v12;
  while (!psi_Lookup__getPreviousDemiID(a3, *(*(a4 + 24) + 4 * v16 - 4), &v75, &v76 + 1, v96 + 1, v96, &v95 + 1, &v76, &v95))
  {
    v17 = v16 - 1;
    v90[v16 - 1] = v96[0];
    v93[v16 - 1] = HIDWORD(v96[0]);
    v87[v16 - 1] = HIDWORD(v95);
    v84[v16 - 1] = v95;
    v81[v16 - 1] = *(*(a4 + 24) + 4 * v16 - 8) == v75;
    v78[v16 - 1] = HIBYTE(v76) != 0;
    if (*(*(a4 + 48) + ((v16 - 1) >> 1)) == 35)
    {
      v81[v16 - 1] = 0;
      v78[v16 - 1] = 1;
    }

    --v16;
    if ((v17 + 1) <= 2)
    {
      goto LABEL_21;
    }
  }

  return 2164269056;
}

uint64_t vu__FillUnit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, char a7)
{
  v9 = a5 >> 1;
  result = *(*(a3 + 8) + 2 * (a5 >> 1));
  *(a4 + 24) = 34;
  if ((a5 & 1) == 0)
  {
    *(a4 + 8) = 0;
    if (result)
    {
      v11 = 2;
    }

    else
    {
      if (*(*(a2 + 8) + v9) != 80)
      {
        return result;
      }

      v11 = 66;
    }

LABEL_18:
    *(a4 + 24) = v11;
    return result;
  }

  if (!result)
  {
    *(a4 + 8) = 0;
    if (*(*(a2 + 8) + v9) != 80)
    {
      return result;
    }

    v11 = 36;
    goto LABEL_18;
  }

  v13 = a6 >> 1;
  result = convertFromMsecToTp(result);
  if (result <= 0xA)
  {
    v14 = 10;
  }

  else
  {
    v14 = result;
  }

  *(a4 + 8) = v14;
  *(a4 + 24) = 32;
  if (v13 >= 3 && *(*(a1 + 8) + v9) == 35 && (!(a7 & 1 | v9) || v13 - 1 == v9 && (a7 & 4) == 0))
  {
    *(a4 + 8) = v14 >> 1;
  }

  return result;
}

uint64_t vu__PadUnit(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  if (a4)
  {
    *(a3 + 24) = *(a3 + 24) & 0xF | 0x20;
  }

  else
  {
    v4 = a4 >> 1;
    v5 = *(*(a2 + 8) + 2 * v4);
    v6 = *(a3 + 24) & 0xF;
    *(a3 + 24) = v6 | 0x20;
    if (!v5)
    {
      if (*(*(result + 8) + v4) != 80)
      {
        return result;
      }

      v6 |= 0x40u;
    }

    *(a3 + 24) = v6;
  }

  return result;
}

uint64_t vu__fillUnitAndSubUnit__End(uint64_t a1, uint64_t a2)
{
  if (vu__UnitVector_t__Delete(a1, a2))
  {
    return 2164269066;
  }

  else
  {
    return 0;
  }
}

uint64_t rho_InOut__PutVectorInBuffer(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a4 < 1)
  {
    a4 = 0;
  }

  else
  {
    v4 = *(a1 + 88);
    v5 = a4;
    v6 = (*(a2 + 8) + 2 * a3);
    do
    {
      v7 = *v6++;
      *v4++ = v7;
      --v5;
    }

    while (v5);
  }

  *(a1 + 96) = a4;
  return a4;
}

uint64_t rho_purgeBufferToVector(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  LODWORD(v3) = *a2;
  if (*a2 < 1 || (v4 = *(a1 + 96), v4 < 1))
  {
    LODWORD(v3) = 0;
  }

  else
  {
    if (v3 >= v4)
    {
      v3 = v4;
    }

    else
    {
      v3 = v3;
    }

    v5 = *(a1 + 88);
    v6 = *(a3 + 8);
    v7 = v3;
    do
    {
      v8 = *v5++;
      *v6++ = v8;
      --v7;
    }

    while (v7);
    v9 = __OFSUB__(v4, v3);
    v10 = (v4 - v3);
    if ((v10 < 0) ^ v9 | (v10 == 0))
    {
      LODWORD(v10) = 0;
    }

    else
    {
      v11 = *(a1 + 88);
      v12 = v10;
      do
      {
        *v11 = v11[v3];
        ++v11;
        --v12;
      }

      while (v12);
    }

    *(a1 + 96) = v10;
  }

  *a2 = v3;
  return 0;
}

uint64_t rho_InOut__DecodeToVector(uint64_t a1, uint64_t a2, int *a3, int a4, uint64_t a5)
{
  *(a5 + 16) = 0;
  if (a4 < 1)
  {
    return 0;
  }

  v26 = v5;
  v27 = v6;
  v25 = a4;
  v12 = *(a1 + 96);
  if (v12 < 1)
  {
    v18 = 0;
    if (v12)
    {
      return 0;
    }

    goto LABEL_9;
  }

  rho_purgeBufferToVector(a1, &v25, a1 + 104);
  v13 = v25;
  if (v25 >= 1)
  {
    v14 = *(a1 + 112);
    v15 = *(a5 + 8);
    v16 = v25;
    do
    {
      v17 = *v14++;
      *v15++ = v17;
      --v16;
    }

    while (v16);
  }

  *(a5 + 16) += v13;
  v25 = a4 - v13;
  v18 = v13;
  if (!*(a1 + 96))
  {
LABEL_9:
    chi_DecodePolyphone__SmpRequested(a2, a3, &v25, a1 + 104);
    v19 = v25;
    if (v25 >= 1)
    {
      v20 = *(a1 + 112);
      v21 = (*(a5 + 8) + 2 * v18);
      v22 = v25;
      do
      {
        v23 = *v20++;
        *v21++ = v23;
        --v22;
      }

      while (v22);
    }

    *(a5 + 16) += v19;
  }

  return 0;
}

uint64_t rho_synthDecodeToClient(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, int a5, uint64_t a6)
{
  v12 = *(a2 + 352);
  v13 = *(a1 + 96);
  if (v13 >= 1)
  {
    while (1)
    {
      v14 = *(a4 + 16);
      if (v14 >= a5)
      {
        v14 = a5;
      }

      v20 = v14;
      rho_purgeBufferToVector(a1, &v20, a6);
      v15 = v20;
      if (!v20)
      {
        break;
      }

      *(a4 + 16) = v20;
      v_equ_s_t(*(a4 + 8), *(a6 + 8), v15);
      result = rho_InOut__ApplyVolume(v12, a1, a4);
      if (result)
      {
        return result;
      }

      result = eta_PushSamplesOut(v12, 2, (a4 + 8), (a4 + 16));
      if (result)
      {
        return result;
      }

      a5 -= v15;
      v13 = *(a1 + 96);
      if (v13 <= 0)
      {
        goto LABEL_10;
      }
    }

    v13 = *(a1 + 96);
  }

LABEL_10:
  if (v13)
  {
    v17 = 1;
  }

  else
  {
    v17 = a5 == 0;
  }

  if (!v17)
  {
    do
    {
      v18 = *(a4 + 16);
      if (v18 >= a5)
      {
        v18 = a5;
      }

      v20 = v18;
      chi_DecodePolyphone__SmpRequested(a2, a3, &v20, a6);
      v19 = v20;
      if (!v20)
      {
        break;
      }

      *(a4 + 16) = v20;
      v_equ_s_t(*(a4 + 8), *(a6 + 8), v19);
      result = rho_InOut__ApplyVolume(v12, a1, a4);
      if (result)
      {
        return result;
      }

      result = eta_PushSamplesOut(v12, 2, (a4 + 8), (a4 + 16));
      if (result)
      {
        return result;
      }

      a5 -= v20;
    }

    while (a5);
  }

  return 0;
}

uint64_t rho_InOut__AudioWriteToClient__No_Subunits(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, int a5)
{
  if (a5 < 1)
  {
    return 0;
  }

  v5 = a5;
  do
  {
    if (v5 >= *(a1 + 120))
    {
      v10 = *(a1 + 120);
    }

    else
    {
      v10 = v5;
    }

    *(a4 + 36) += v10;
    result = rho_synthDecodeToClient(a1, a2, a3, a4, v10, a1 + 104);
    if (result)
    {
      break;
    }

    IsEndState = eta_InOut__IsEndState(a4 + 8);
    result = 0;
    if (IsEndState)
    {
      break;
    }

    v13 = __OFSUB__(v5, v10);
    v5 -= v10;
  }

  while (!((v5 < 0) ^ v13 | (v5 == 0)));
  return result;
}

uint64_t rho_InOut__AudioWriteToClientWithMarkers(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v42 = a8;
  v8 = *(a2 + 352);
  v50 = 0;
  if (a6 < 1)
  {
    return 0;
  }

  if (*(*a4 + 18))
  {
    v10 = a7;
    v45 = 0;
    v11 = a5;
    v48 = a7;
    while (1)
    {
      v12 = *(a1 + 120);
      if (a6 >= v12)
      {
        v13 = *(a1 + 120);
      }

      else
      {
        v13 = a6;
      }

      v46 = a6;
      if (v42 && v12 >= a6 && *(v8 + 2036))
      {
        v14 = v45;
        if (*(v8 + 2040))
        {
          v14 = 1;
        }

        v45 = v14;
      }

      v15 = *a4;
      v16 = **a4;
      if (*(v16 + 28 * v11 + 18))
      {
        break;
      }

LABEL_46:
      if (*(v8 + 2020))
      {
        if (v13 >= *(v8 + 2028) - *(a4 + 36))
        {
          v39 = *(v8 + 2028) - *(a4 + 36);
        }

        else
        {
          v39 = v13;
        }
      }

      else
      {
        v39 = v13;
      }

      if (v45)
      {
        *(v8 + 2016) = 1;
        result = rho_synthDecodeToClient(a1, a2, a3, a4, v39, a1 + 104);
        if (result)
        {
          return result;
        }

        *(v8 + 2016) = 0;
      }

      else
      {
        result = rho_synthDecodeToClient(a1, a2, a3, a4, v39, a1 + 104);
        if (result)
        {
          return result;
        }
      }

      if (*(v8 + 2020))
      {
        *(v8 + 2020) = 0;
        if (v13 != v39)
        {
          result = rho_synthDecodeToClient(a1, a2, a3, a4, v13 - v39, a1 + 104);
          if (result)
          {
            return result;
          }
        }
      }

      if (!eta_InOut__IsEndState(a4 + 8))
      {
        *(a4 + 36) += v13;
        a6 = (v46 - v13);
        if (v46 > v13)
        {
          continue;
        }
      }

      return 0;
    }

    v17 = 0;
    v49 = v13;
    while (1)
    {
      v18 = v15[1];
      v19 = *(v16 + 28 * v11 + 16);
      if (v10 == 1)
      {
        v20 = (v17 + v19);
        v21 = *(a4 + 36);
        if (*(v18 + 16 * v20 + 14))
        {
          v22 = v21 + v13;
          goto LABEL_22;
        }
      }

      else
      {
        v21 = *(a4 + 36);
        v20 = (v17 + v19);
      }

      v23 = v18 + 16 * v20;
      v22 = v21 + v13;
      if (*v23 <= v22 && *(v23 + 14))
      {
        if (v10 == 1)
        {
LABEL_22:
          *(v18 + 16 * v20) = v22;
        }

        v24 = v18 + 16 * v20;
        v25 = *(v24 + 12);
        v26 = *(v24 + 14);
        if (v26 + v25 > *(v8 + 608))
        {
          v41 = *(v8 + 608);
          log_OutPublic(*(*(v8 + 16) + 32), "SYNTH", 45000, "%s%u%s%u%s%u", a5, a6, a7, a8, "index");
          v27 = *(v8 + 608);
          if (v27 <= v25)
          {
            LOWORD(v25) = v27 - 1;
          }

          LOWORD(v26) = v27 - v25;
        }

        eta_synth_GetRate(v8, &v50);
        if (*(v8 + 2032) == 1)
        {
          *(v8 + 2032) = 0;
          v50 = 100;
        }

        if (v26)
        {
          v28 = (*(v8 + 600) + 32 * v25);
          v29 = v26;
          v30 = v26;
          do
          {
            if (*v28 == 8)
            {
              if (v28[6])
              {
                *(v8 + 2020) = 1;
                *(v8 + 2032) = 1;
              }
            }

            else if (*v28 == 18)
            {
              *(v8 + 2020) = 1;
            }

            v28 += 8;
            --v30;
          }

          while (v30);
          v31 = 32 * v25;
          do
          {
            v32 = *(*a4 + 8);
            v33 = v17 + *(**a4 + 28 * v11 + 16);
            if (v33)
            {
              v34 = &v32[4 * v33];
              v35 = *(v34 - 2) + 100 * (*v34 - *(v34 - 4)) / v50;
            }

            else
            {
              v34 = *(*a4 + 8);
              v35 = 100 * *v32 / v50;
            }

            v34[2] = v35;
            v36 = *(v8 + 1968);
            v37 = (*(v8 + 600) + v31);
            v37[4] = 0;
            if (*(v8 + 2020))
            {
              *(v8 + 2028) = v32[4 * v33];
            }

            eta_synth_ProcessThisMarker(v8, v37, v36 + v35);
            v38 = v8 + 40 + 32 * *(v8 + 432);
            (*(*(v8 + 32) + 104))(*(v38 + 16), *(v38 + 24), *(v8 + 600) + v31, 32);
            v31 += 32;
            --v29;
          }

          while (v29);
        }

        v15 = *a4;
        v16 = **a4;
        *(*(*a4 + 8) + 16 * (v17 + *(v16 + 28 * v11 + 16)) + 14) = 0;
        *(v8 + 1956) = v26 + v25;
        *(v8 + 1958) = v26 + v25;
        v10 = v48;
        v13 = v49;
      }

      if (++v17 >= *(v16 + 28 * v11 + 18))
      {
        goto LABEL_46;
      }
    }
  }

  return rho_InOut__AudioWriteToClient__No_Subunits(a1, a2, a3, a4, a6);
}

uint64_t rho_InOut__InsertSilence(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, unsigned int a5, int a6)
{
  v11 = *(a2 + 352);
  v25 = 0;
  v12 = *(a1 + 100);
  v13 = *(a1 + 52);
  if (v12 >= v13)
  {
    v14 = *(a1 + 52);
  }

  else
  {
    v14 = *(a1 + 100);
  }

  v_zap_s_t(*(a1 + 40), v14);
  eta_synth_GetRate(v11, &v25);
  if (*(v11 + 2032))
  {
    eta_synth_SetRate(v11, 0x64u);
  }

  if (a6 >= 1)
  {
    while (1)
    {
      v15 = a6;
      if (v13 >= v12)
      {
        LODWORD(v16) = v12;
      }

      else
      {
        LODWORD(v16) = v13;
      }

      if (v16 >= a6)
      {
        v16 = a6;
      }

      else
      {
        v16 = v16;
      }

      v17 = __OFSUB__(a6, v14);
      a6 -= v14;
      if (a6 < 0 != v17)
      {
        v18 = v15;
      }

      else
      {
        v18 = v14;
      }

      if ((a6 < 0) ^ v17 | (a6 == 0))
      {
        *(v11 + 2016) = 1;
      }

      if (v14 < 1)
      {
        break;
      }

      v19 = *(a1 + 40);
      v20 = *(a1 + 88);
      do
      {
        v21 = *v19++;
        *v20++ = v21;
        --v16;
      }

      while (v16);
      *(a1 + 96) = v18;
      v22 = rho_InOut__AudioWriteToClientWithMarkers(a1, a2, a3, a4, a5, v18, 0, 0);
      if (*(v11 + 2016) == 1)
      {
        *(v11 + 2044) = 0;
        *(v11 + 2016) = 0;
      }

      if (a6 <= 0)
      {
        goto LABEL_27;
      }
    }
  }

  v22 = 0;
LABEL_27:
  eta_synth_SetRate(v11, v25);
  return v22;
}

uint64_t rho_InOut__ApplyVolume(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = 0;
  eta_synth_GetVolume(a1, &v9);
  if (v9 != 80)
  {
    v4 = *(a3 + 16);
    if (v4 >= 1)
    {
      v5 = aVolPar2Amplif_0[v9];
      v6 = *(a3 + 8);
      do
      {
        v7 = (*v6 * v5) >> 15;
        if (v7 <= -32767)
        {
          v7 = -32767;
        }

        if (v7 >= 0x7FFF)
        {
          LOWORD(v7) = 0x7FFF;
        }

        *v6++ = v7;
        --v4;
      }

      while (v4);
    }
  }

  return 0;
}

uint64_t __psi_Lookup__getOffsetAndByteLength(uint64_t a1, int a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, _BYTE *a6, unsigned int *a7)
{
  v31 = *MEMORY[0x1E69E9840];
  v13 = *(a1 + 160);
  v14 = 6 * a2;
  v15 = 5 * a2;
  v16 = v13 * a2;
  if (v13 == 4)
  {
    v16 = 4 * a2;
  }

  if (v13 != 5)
  {
    v15 = v16;
  }

  if (v13 != 6)
  {
    v14 = v15;
  }

  Stream = psi_lookup_ReadStream((*(a1 + 16) + v14), v13, &v28, *(a1 + 80), (a1 + 136));
  if (!Stream)
  {
    v18 = 2164269056;
    v21 = v28;
    *a6 = v29;
    v22 = v30;
    *a5 = v30;
    if (!v21)
    {
      goto LABEL_9;
    }

    v23 = *(a1 + 40);
    if (*(v23 + 44) == 1)
    {
      v24 = (*(a1 + 24) + v22);
    }

    else
    {
      v27[0] = *(a1 + 156);
      psi_mapCodedData(a1, v23, v22 & 0x7FFFFFFF, v27);
      v24 = *(a1 + 24);
      if (!v24)
      {
        goto LABEL_9;
      }
    }

    Stream = psi_lookup_ReadStream(v24, *(a1 + 156), v27, *(a1 + 84), (a1 + 96));
    if (!Stream)
    {
      *a3 = -1;
      v25 = v27[1];
      *a4 = v27[0];
      *a7 = v25;
      v26 = *(a1 + 40);
      if (*(v26 + 44) == 1)
      {
        v18 = 0;
        goto LABEL_9;
      }

      Stream = psi_unMapCodedData(a1, v26);
    }
  }

  v18 = Stream;
LABEL_9:
  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

uint64_t __psi_Lookup__getPrevDemiIDAndSmpDur(uint64_t a1, int a2, _DWORD *a3, _DWORD *a4, _BYTE *a5, _BYTE *a6)
{
  v22 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 160);
  v11 = 6 * a2;
  v12 = 5 * a2;
  v13 = v10 * a2;
  if (v10 == 4)
  {
    v13 = 4 * a2;
  }

  if (v10 != 5)
  {
    v12 = v13;
  }

  if (v10 != 6)
  {
    v11 = v12;
  }

  result = psi_lookup_ReadStream((*(a1 + 16) + v11), v10, &v18, *(a1 + 76), (a1 + 116));
  if (!result)
  {
    v15 = v19;
    *a5 = v18;
    *a6 = v15;
    v16 = v21;
    *a4 = v20;
    *a3 = v16;
  }

  v17 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t psi_Lookup__getPreviousDemiID(uint64_t a1, int a2, _DWORD *a3, _BYTE *a4, _DWORD *a5, _DWORD *a6, int *a7, _BYTE *a8, unsigned int *a9)
{
  v30 = 0;
  v29 = 0;
  __psi_Lookup__getPrevDemiIDAndSmpDur(a1, a2, a3, a5, &v30, a4);
  if (v30)
  {
    __psi_Lookup__getOffsetAndByteLength(a1, a2, a3, a5, &v29, a4, a9);
    result = 0;
    *a6 = *(a1 + 156) + v29;
    *a7 = 0;
    *a8 = 1;
  }

  else
  {
    v24 = a6;
    v26 = 0;
    v27 = 0;
    *a8 = 1;
    __psi_Lookup__getPrevDemiIDAndSmpDur(a1, a2, &v27, a5, &v30, &v25);
    v18 = 0;
    v19 = 0;
    v20 = v30;
    while (!v20)
    {
      *a8 = 0;
      v21 = v27;
      __psi_Lookup__getPrevDemiIDAndSmpDur(a1, v27, &v27, a7, &v30, &v28);
      if (v18)
      {
        v22 = v26;
      }

      else
      {
        v22 = 0;
      }

      v20 = v30;
      if (v30)
      {
        __psi_Lookup__getOffsetAndByteLength(a1, v21, &v27, &v26, &v29, &v28, a9);
      }

      else
      {
        v26 = *a7;
      }

      v19 += v22;
      if (--v18 == -10001)
      {
        return 2164269056;
      }
    }

    result = 0;
    v23 = v26;
    if (!v18)
    {
      v23 = 0;
    }

    *v24 = *(a1 + 156) + v29;
    *a7 = v23 + v19;
  }

  return result;
}

uint64_t psi_Lookup__InitFromDatFiles(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = 2164269056;
  v7 = *(a3 + 8);
  if (v7)
  {
    if (*(a4 + 8))
    {
      *(a1 + 76) = xmmword_1C3827B00;
      *(a1 + 92) = 13;
      result = psi_lookup_ReadStream(v7, 19, v40, 13, bitHeaderAlloca);
      if (!result)
      {
        v16 = v40[0];
        v17 = v40[1];
        *a1 = v40[0];
        *(a1 + 4) = v17;
        *(a1 + 156) = vrev64_s32(v41);
        v18 = *(a1 + 76);
        if (v18 < 1)
        {
          v18 = 0;
          LODWORD(v20) = 4;
        }

        else
        {
          v19 = (a1 + 116);
          v20 = 4;
          v21 = *(a1 + 76);
          do
          {
            v22 = v40[v20++];
            *v19++ = v22;
            --v21;
          }

          while (v21);
        }

        *(a1 + 116 + 2 * (v18 + 2)) = 0;
        *(a1 + 116 + 2 * (v18 + 1)) = 0;
        *(a1 + 116 + 2 * v18) = 0;
        v23 = *(a1 + 80);
        if (v23 < 1)
        {
          v23 = 0;
        }

        else
        {
          v24 = (a1 + 136);
          v25 = *(a1 + 80);
          v20 = v20;
          do
          {
            v26 = v40[v20++];
            *v24++ = v26;
            --v25;
          }

          while (v25);
        }

        *(a1 + 136 + 2 * (v23 + 2)) = 0;
        *(a1 + 136 + 2 * (v23 + 1)) = 0;
        *(a1 + 136 + 2 * v23) = 0;
        v27 = *(a1 + 84);
        if (v27 < 1)
        {
          v27 = 0;
        }

        else
        {
          v28 = (a1 + 96);
          v29 = &v40[v20];
          v30 = *(a1 + 84);
          do
          {
            v31 = *v29++;
            *v28++ = v31;
            --v30;
          }

          while (v30);
        }

        *(a1 + 96 + 2 * (v27 + 2)) = 0;
        *(a1 + 96 + 2 * (v27 + 1)) = 0;
        *(a1 + 96 + 2 * v27) = 0;
        *(a1 + 16) = *(a3 + 8) + 19;
        *(a1 + 32) = *(a4 + 8);
        if (*(a2 + 44) == 1)
        {
          *(a2 + 40) = 0;
        }

        if (a5)
        {
          v32 = 0;
          if (v17)
          {
            v33 = 0;
            while (1)
            {
              v37 = 0;
              if (__psi_Lookup__getPrevDemiIDAndSmpDur(a1, v33, &v39, &v38, &v37, &v36))
              {
                break;
              }

              if (v37)
              {
                ++v32;
              }

              if (v17 == ++v33)
              {
                v16 = *a1;
                goto LABEL_31;
              }
            }

            log_OutText(*(*(a1 + 64) + 32), "LOOKUP", 3, 0, "Fatal Error: Number of counted polyphones don't match. Wrong speechbase? ", v13, v14, v15, v35);
            result = 2164269056;
          }

          else
          {
LABEL_31:
            if (v32 == v16)
            {
              v6 = 0;
            }

            else
            {
              log_OutText(*(*(a1 + 64) + 32), "LOOKUP", 3, 0, "Fatal Error: Number of counted polyphones don't match. Wrong speechbase? ", v13, v14, v15, v35);
            }

            result = v6;
          }
        }

        else
        {
          result = 0;
        }
      }
    }

    else
    {
      result = 2164269062;
    }
  }

  else
  {
    result = 2164269062;
  }

  v34 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t rho_Concat__Create(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 2164269066;
  *(a1 + 112) = 0;
  *(a1 + 88) = 0;
  *(a1 + 64) = 0;
  *(a1 + 40) = 0;
  if (*(a3 + 12) != 22050)
  {
    return 2164269074;
  }

  *(a1 + 24) = 44;
  *a1 = xmmword_1C3827BB0;
  *(a1 + 16) = 0xDC00000004;
  *(a3 + 16) = xmmword_1C3827BB0;
  if (!vect_s_t__createVect(*(a2 + 8), a1 + 32, 0x294u) && !vect_s_t__createVect(*(a2 + 8), a1 + 56, *(a1 + 12)) && !vect_s_t__createVect(*(a2 + 8), a1 + 80, *(a1 + 8) + *(a1 + 12)))
  {
    *(a1 + 96) = 0;
    if (*a3 <= *(a1 + 12))
    {
      v7 = *(a1 + 12);
    }

    else
    {
      v7 = *a3;
    }

    if (!vect_s_t__createVect(*(a2 + 8), a1 + 104, v7))
    {
      if (rho_Concat__OverlapWindow__Init(a1, *(a3 + 12)))
      {
        return 2164269066;
      }

      else
      {
        return 0;
      }
    }
  }

  return v3;
}

uint64_t rho_Concat__Delete(uint64_t a1)
{
  result = vect_i_t__deleteVect(a1 + 32);
  if (!result)
  {
    result = vect_i_t__deleteVect(a1 + 56);
    if (!result)
    {
      result = vect_i_t__deleteVect(a1 + 80);
      if (!result)
      {
        result = vect_i_t__deleteVect(a1 + 104);
        if (!result)
        {

          return rho_Concat__OverlapWindow__Denit(a1);
        }
      }
    }
  }

  return result;
}

_DWORD *rho__updateSubunits(_DWORD *result, uint64_t a2, uint64_t a3, uint64_t **a4, int a5, int a6, int a7)
{
  v7 = *a4;
  v8 = **a4;
  v9 = *(v8 + 28 * a5 + 18);
  if (*(v8 + 28 * a5 + 18))
  {
    if (a6 < 1)
    {
      if (a6 < 0)
      {
        v13 = 0;
        v14 = 0;
        v15 = (v7[1] + 16 * *(v8 + 28 * a5 + 16));
        do
        {
          if (v13 * 4)
          {
            v16 = v15[v13] + a6;
            if (v16 <= v14)
            {
              v16 = v14;
            }
          }

          else
          {
            v16 = *v15;
            v14 = *v15;
          }

          v15[v13] = v16;
          v13 += 4;
        }

        while (4 * v9 != v13);
      }
    }

    else
    {
      v10 = 0;
      v11 = (v7[1] + 16 * *(v8 + 28 * a5 + 16));
      do
      {
        if (v10 * 4)
        {
          v12 = v11[v10] + a6;
        }

        else
        {
          v12 = *v11;
        }

        v11[v10] = v12;
        v10 += 4;
      }

      while (4 * v9 != v10);
    }

    v17 = 0;
    v18 = v8 + 28 * a5;
    v19 = *(v18 + 4);
    do
    {
      if (v19 >= 1)
      {
        v20 = (v7[1] + 16 * (v17 + *(v18 + 16)));
        if (*v20 > v19)
        {
          *v20 = v19;
        }
      }

      if (a7 == 1 && v17 - v9 == -1)
      {
        v21 = *(v18 + 16);
        v22 = v7[1];
        v23 = v22 + 16 * (v21 + v9);
        if (*(v23 - 12) < result[1])
        {
          *(v23 - 16) = (*(v23 - 16) - *result) & ~((*(v23 - 16) - *result) >> 31);
        }

        *(v22 + 16 * (v9 - 1 + v21)) += *(a4 + 9);
        v24 = *(v23 - 32);
        if (*(v23 - 16) < v24)
        {
          *(v23 - 16) = v24 + 1;
        }
      }

      else
      {
        v25 = 16 * (v17 + *(v18 + 16));
        *(v7[1] + v25) += *(a4 + 9);
      }

      ++v17;
    }

    while (v17 != v9);
  }

  return result;
}