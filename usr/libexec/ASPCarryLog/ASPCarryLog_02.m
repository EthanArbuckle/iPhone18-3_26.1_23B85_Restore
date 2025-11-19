uint64_t print_band_stats_v2(char *a1, int a2)
{
  LODWORD(outputStruct) = 0;
  v4 = sub_10003E0A8(0, 299, 0, &outputStruct);
  v5 = outputStruct & 0xF;
  if (!v4)
  {
    v5 = 1;
  }

  v13 = 0;
  outputStruct = 0;
  if (v5 != 2)
  {
    if (v5 == 3)
    {
      v6 = sub_10003DDFC(0, 297, &v13, 0, 1);
      outputStruct = v6;
      if (v6)
      {
        v7 = v6;
        sub_10003B5C4(a1, v6, v13);
LABEL_12:
        free(v7);
        return 1;
      }

      v10 = __stderrp;
      v11 = "Error: Cannot Extract Band Stats for ASP3\n";
      v12 = 42;
      goto LABEL_16;
    }

LABEL_10:
    if (sub_10002E538(7u, &outputStruct, &v13))
    {
      sub_10003B9F4(a1, outputStruct, v13, a2);
      v7 = outputStruct;
      goto LABEL_12;
    }

    v10 = __stderrp;
    v11 = "Error: IO NVMe Smart cmd failed to extract ASP excport stats!\n";
    v12 = 62;
    goto LABEL_16;
  }

  if (!a2)
  {
    goto LABEL_10;
  }

  v8 = sub_10003DDFC(0, 262, &v13, 0, 1);
  outputStruct = v8;
  if (v8)
  {
    v7 = v8;
    sub_10003B9F4(a1, v8, v13, 1);
    goto LABEL_12;
  }

  v10 = __stderrp;
  v11 = "Error: Cannot Extract Band Stats and Validity\n";
  v12 = 46;
LABEL_16:
  fwrite(v11, v12, 1uLL, v10);
  return 0;
}

void sub_10003B5C4(char *__filename, unsigned int *a2, unsigned int a3)
{
  v35 = 0;
  v34 = 0;
  v33 = -1;
  v32 = -1;
  v31 = 0;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v26 = 0;
  v23 = 0;
  if (__filename)
  {
    v6 = fopen(__filename, "a");
    if (!v6)
    {
      fprintf(__stderrp, "Unable to open %s\n", __filename);
      return;
    }
  }

  else
  {
    v6 = __stdoutp;
  }

  if (a2[2] != 1)
  {
    v21 = a2[2];
    fprintf(__stderrp, "Version mismatch, expected 1 got %d\n");
LABEL_9:
    if (__filename)
    {

      fclose(v6);
    }

    return;
  }

  if (*a2 > a3)
  {
    v20 = *a2;
    fprintf(__stderrp, "Insufficient size, expected %d got %d\n");
    goto LABEL_9;
  }

  v7 = a2[1];
  v8 = sub_10003DDFC(0, 264, &v23, 0, 1);
  if (v8)
  {
    v9 = v8;
    if (v23 >= 2 && 22 * *v8 + 2 <= v23)
    {
      v11 = &xmmword_1000D82F0;
      strcpy(&xmmword_1000D82F0, "USER PARTITION");
      strcpy(qword_1000D830E, "INTERMEDIATE PARTITION");
      strcpy(byte_1000D832C, "SKINNY PARTITION");
      fwrite("Band stats:\n", 0xCuLL, 1uLL, v6);
      fwrite("Flags: Bits/Cell (1/3/4), r: retrace, C: GCcan, M: GCmust, S: Special, R: GCrd, E: erased, I: toInvalidate\n", 0x6BuLL, 1uLL, v6);
      v12 = *(a2 + 3);
      v25 = v12.i32[0];
      v24 = vrev64_s32(v12);
      v22 = v9;
      v13 = (v9 + 1);
      v14 = sub_10003C69C(v6, a2 + 5, v7, 1u, &v24, &v26, &v34, &v32, &v30, &v28, v13);
      v15 = sub_10003C69C(v6, v14, v7, 0, &v24, &v26, &v34, &v32, &v30, &v28, v13);
      sub_10003C69C(v6, v15, v7, 2u, &v24, &v26, &v34, &v32, &v30, &v28, v13);
      for (i = 0; i != 12; i += 4)
      {
        v17 = *(&v28 + i);
        if (v17)
        {
          v18 = *(&v30 + i) / v17;
          *(&v30 + i) = v18;
          v19 = v24.u32[i / 4];
          fprintf(v6, "%-23s: Erase Cycles: Max(%d, %d%% of EoL) Min(%d, %d%% of EoL) Avg(%d, %d%% of EoL)\n", v11, *(&v34 + i), 100 * *(&v34 + i) / v19, *(&v32 + i), 100 * *(&v32 + i) / v19, v18, 100 * v18 / v19);
          fprintf(v6, "%24s Max band age:    (%d)\n", " ", *(&v26 + i));
          fprintf(v6, "%24s EoL erase cycles:(%d)\n", " ", v19);
        }

        v11 += 30;
      }

      if (__filename)
      {
        fclose(v6);
      }

      v10 = v22;
    }

    else
    {
      fwrite("Flow list too small", 0x13uLL, 1uLL, __stderrp);
      if (__filename)
      {
        fclose(v6);
      }

      v10 = v9;
    }

    free(v10);
  }

  else
  {
    fwrite("Can't get flow list", 0x13uLL, 1uLL, __stderrp);
    if (__filename)
    {
      fclose(v6);
    }
  }
}

void sub_10003B9F4(char *__filename, unsigned int *a2, unsigned int a3, int a4)
{
  v103 = 0;
  v102 = 0;
  v101 = -1;
  v100 = -1;
  v99 = 0;
  v98 = 0;
  v97 = 0;
  v96 = 0;
  memset(v91, 0, sizeof(v91));
  v92 = 0;
  if (__filename)
  {
    v7 = fopen(__filename, "a");
    if (!v7)
    {
      fprintf(__stderrp, "Unable to open %s\n", __filename);
      return;
    }
  }

  else
  {
    v7 = __stdoutp;
  }

  fwrite("Band stats:\n", 0xCuLL, 1uLL, v7);
  fwrite("===========\n", 0xCuLL, 1uLL, v7);
  v9 = *a2;
  v8 = a2[1];
  fprintf(v7, "numBands: %d\n", *a2);
  if (a4)
  {
    v10 = 8;
  }

  else
  {
    v10 = 5;
  }

  if (v9)
  {
    v11 = v9 * v10 + 2 * v8 + 2;
    if (v11 <= a3)
    {
      v12 = v11 + v8;
      v13 = a3 >> 2;
      v14 = &a2[v11 + 2];
      v15 = &a2[v11];
      if (a3 >> 2 == v12)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v8 == 2)
      {
        v18 = a2[2];
        v20 = a2[3];
        v95[0] = v18;
        v94[0] = v20;
        if (v13 == v12)
        {
          v21 = *v15;
        }

        else
        {
          v21 = 30000;
        }

        LODWORD(v93[0]) = v21;
        strcpy(&xmmword_1000D82F0, "INTERMEDIATE PARTITION");
        v22 = a2[5];
        v95[1] = a2[4];
        v19 = a2 + 6;
        v94[1] = v22;
        if (v13 == v12)
        {
          v23 = *(v14 - 4);
        }

        else
        {
          v23 = 750;
        }

        HIDWORD(v93[0]) = v23;
        strcpy(qword_1000D830E, "USER PARTITION");
        if (!v21 || !v23)
        {
          v16 = 0;
          v93[0] = 0x2EE00007530;
        }
      }

      else
      {
        if (v8 != 1)
        {
          fprintf(v7, "ASP returned %d partitions, the tool does not know how to handle this many partitions\n");
          goto LABEL_69;
        }

        v18 = a2[2];
        v17 = a2[3];
        v95[0] = v18;
        v19 = a2 + 4;
        v94[0] = v17;
        if (v13 == v12)
        {
          LODWORD(v93[0]) = *v15;
          strcpy(&xmmword_1000D82F0, "USER PARTITION");
          if (LODWORD(v93[0]))
          {
            v16 = v15;
          }

          else
          {
            v16 = 0;
            LODWORD(v93[0]) = 3000;
          }
        }

        else
        {
          v16 = 0;
          LODWORD(v93[0]) = 3000;
          strcpy(&xmmword_1000D82F0, "USER PARTITION");
        }
      }

      v86 = malloc_type_malloc(4 * v9, 0x100004052888210uLL);
      if (v86)
      {
        v75 = v16;
        v76 = __filename;
        __stream = v7;
        v24 = 0;
        v81 = 0;
        v82 = 0;
        v83 = 0;
        v84 = v9;
        while (1)
        {
          if (a4)
          {
            v83 = v19[5];
            v82 = v19[6];
            v90 = v19 + 8;
            v81 = v19[7];
          }

          else
          {
            v90 = v19 + 5;
          }

          v25 = 0;
          v26 = *v19;
          v27 = v19[1];
          v29 = v19[2];
          v28 = v19[3];
          v30 = (*v19 >> 1) & 1;
          v31 = (*v19 >> 2) & 1;
          v32 = (*v19 >> 3) & 1;
          v33 = v19[4];
          v34 = v26 & 1;
          v35 = (v26 >> 4) & 1;
          v86[v24] = v28;
          v36 = &xmmword_1000D82F0;
          do
          {
            v37 = v95[v25];
            if (v24 >= v37 && v24 <= v94[v25])
            {
              if (v24 == v37)
              {
                v78 = v27;
                v79 = v31;
                v80 = v34;
                v77 = v35;
                fprintf(__stream, "\n%s:\n", v36);
                v35 = v77;
                v27 = v78;
                v31 = v79;
                v34 = v80;
              }

              if (v24 >= v18)
              {
                v40 = *(&v96 + v25);
                if (v40 <= v33)
                {
                  v40 = v33;
                }

                *(&v96 + v25) = v40;
                v41 = *(&v102 + v25);
                if (v41 <= v28)
                {
                  v41 = v28;
                }

                *(&v102 + v25) = v41;
                v42 = *(&v100 + v25);
                if (v42 >= v28)
                {
                  v42 = v28;
                }

                *(&v100 + v25) = v42;
                v38 = v25;
                *(&v98 + v25) += v28;
                goto LABEL_52;
              }

LABEL_44:
              fprintf(__stream, "band: %4d\tUtility Band\n", v24);
              v39 = v84;
              goto LABEL_58;
            }

            ++v25;
            v36 += 30;
          }

          while (v8 != v25);
          if (v24 < v18)
          {
            goto LABEL_44;
          }

          v38 = 0;
LABEL_52:
          v43 = 100 * v28;
          if (v29 == -1)
          {
            v44 = __stream;
            fprintf(__stream, "band:%4d\tflow:%2d\tvalid:    NA\terases:%5d [%3d%%] \tage:%5d\tGCcan:%d GCmust:%d GCrd: %d Special: %d mode:%d ", v24, v27, v28, v43 / *(v93 + v38), v33, v34, v30, v31, v32, v35);
            v39 = v84;
            if (a4)
            {
              fwrite("Valid Sectors: NA Parity Sectors: NA Total Sectors: NA", 0x36uLL, 1uLL, __stream);
            }
          }

          else
          {
            v44 = __stream;
            fprintf(__stream, "band:%4d\tflow:%2d\tvalid:%6.1f\terases:%5d [%3d%%] \tage:%5d\tGCcan:%d GCmust:%d GCrd: %d Special: %d mode:%d ", v24, v27, v29 / 10.0, v28, v43 / *(v93 + v38), v33, v34, v30, v31, v32, v35);
            v39 = v84;
            if (a4)
            {
              fprintf(__stream, "Valid Sectors: %d Parity Sectors: %d Total Sectors: %d", v82, v81, v83);
            }
          }

          fputc(10, v44);
LABEL_58:
          ++v24;
          v19 = v90;
          if (v24 == v39)
          {
            v45 = "";
            if (!v75)
            {
              v45 = "*using kASPNand constants!";
            }

            v85 = v45;
            v46 = v94;
            v47 = v95;
            v48 = &v98;
            v49 = &xmmword_1000D82F0;
            v50 = &v102;
            v51 = v93;
            v52 = &v100;
            v53 = &v96;
            v54 = v8;
            do
            {
              v56 = *v46++;
              v55 = v56;
              v57 = *v47++;
              v58 = v55 >= v57;
              v59 = v55 - v57;
              if (v58)
              {
                v60 = *v48 / (v59 + 1);
                *v48 = v60;
                v61 = *v50;
                v89 = v47;
                v90 = v46;
                v62 = *v51;
                fprintf(__stream, "%-23s: Erase Cycles: Max(%d, %d%% of EoL) Min(%d, %d%% of EoL) Avg(%d, %d%% of EoL)\n", v49, v61, 100 * v61 / v62, *v52, 100 * *v52 / v62, v60, 100 * v60 / v62);
                fprintf(__stream, "%24s Max band age:    (%d)\n", " ", *v53);
                fprintf(__stream, "%24s EoL erase cycles:(%d) %s\n", " ", v62, v85);
                v47 = v89;
                v46 = v90;
              }

              ++v48;
              v49 += 30;
              ++v50;
              ++v51;
              v52 = (v52 + 4);
              v53 = (v53 + 4);
              --v54;
            }

            while (v54);
            v63 = v8 != 1;
            v64 = v95[v63];
            v65 = v94[v63];
            if (v64 <= v65)
            {
              v69 = *(&v102 | (4 * v63));
              v67 = v76;
              v68 = __stream;
              do
              {
                v70 = &dword_100000018;
                while ((*(&unk_1000D7740 + v70) * v69) > v86[v64])
                {
                  v70 -= 4;
                  if (v70 == -4)
                  {
                    goto LABEL_80;
                  }
                }

                ++*(v91 + v70);
LABEL_80:
                ++v64;
              }

              while (v64 <= v65);
              v66 = v92;
            }

            else
            {
              v66 = 0;
              v67 = v76;
              v68 = __stream;
            }

            fwrite("USER PARTITION:\n", 0x10uLL, 1uLL, v68);
            v71 = &v92;
            v72 = -7;
            v73 = &unk_1000D775C;
            v74 = (&v102 | (4 * v63));
            do
            {
              if (v72 == -7)
              {
                fprintf(v68, "Erase Quantile [  %3.2f (%.2f - %.2f erases) ] = %d bands\n", *&dword_1000D7758 * 100.0, (*&dword_1000D7758 * *v74), (*&dword_1000D7758 * *v74), v66);
              }

              else
              {
                fprintf(v68, "Erase Quantile [  %3.2f (%.2f - %.2f erases) ] = %d bands\n", *(v73 - 1) * 100.0, (*(v73 - 1) * *v74), (*v73 * *v74), *v71);
              }

              --v71;
              --v73;
              v58 = __CFADD__(v72++, 1);
            }

            while (!v58);
            if (v67)
            {
              fclose(v68);
            }

            free(v86);
            return;
          }
        }
      }

      fprintf(v7, "could not allocate %d bytes\n");
LABEL_69:
      if (__filename)
      {

        fclose(v7);
      }
    }
  }
}

uint64_t sub_10003C2B0(char *a1, int a2, _DWORD *a3, uint64_t a4)
{
  v9 = 0;
  v10 = 0;
  if (sub_10002E538(8u, &v10, &v9))
  {
    if (a2)
    {
      *a3 = sub_10003C364(a1, v10, 1, a4);
    }

    else
    {
      sub_10003C364(a1, v10, 0, a4);
    }

    free(v10);
    return 1;
  }

  else
  {
    fwrite("Error: IO NVMe Smart cmd failed to extract ASP NAND defects!\n", 0x3DuLL, 1uLL, __stderrp);
    return 0;
  }
}

uint64_t sub_10003C364(char *__filename, uint64_t a2, char a3, uint64_t a4)
{
  strcpy(v30, "InvalidPage");
  strcpy(v29, "InvalidTemp");
  strcpy(v27, "Unknown");
  v28 = 0;
  if (__filename)
  {
    __stream = fopen(__filename, "a");
    if (!__stream)
    {
      fprintf(__stderrp, "Unable to open %s\n", __filename);
      return 0;
    }
  }

  else
  {
    __stream = __stdoutp;
  }

  v8 = *(a2 + 8);
  if (a3)
  {
    goto LABEL_10;
  }

  v9 = (a2 + 12);
  if (a4)
  {
    if (v8)
    {
      v10 = (a4 + 16);
      v11 = *(a2 + 8);
      do
      {
        *(v10 - 4) = *v9;
        *(v10 - 3) = *(v9 + 1);
        *(v10 - 2) = *(v9 + 2);
        *(v10 - 1) = *(v9 + 3);
        *v10 = *(v9 + 4);
        v10[1] = *(v9 + 5);
        v10[2] = *(v9 + 6);
        v10[3] = *(v9 + 7);
        v10 += 8;
        v9 += 16;
        --v11;
      }

      while (v11);
    }

LABEL_10:
    if (!__filename)
    {
      return v8;
    }

LABEL_11:
    fclose(__stream);
    return v8;
  }

  v23 = *(a2 + 4);
  v24 = __filename;
  fwrite("===Grown Bad Blocks===\n", 0x17uLL, 1uLL, __stream);
  v25 = v8;
  if (v8)
  {
    v13 = v8;
    do
    {
      v14 = *v9;
      v15 = v9[1];
      v17 = *(v9 + 1);
      v16 = *(v9 + 2);
      v18 = *(v9 + 6);
      v19 = *(v9 + 7);
      v21 = *(v9 + 3);
      v20 = *(v9 + 4);
      if (*(v9 + 5) == 4095)
      {
        __sprintf_chk(v30, 0, 0xCuLL, "%s");
      }

      else
      {
        v22 = *(v9 + 5);
        __sprintf_chk(v30, 0, 0xCuLL, "%u");
      }

      if (v18 << 24 == -2130706432)
      {
        __sprintf_chk(v29, 0, 0xCuLL, "%s");
      }

      else
      {
        __sprintf_chk(v29, 0, 0xCuLL, "%d");
      }

      if (v19 <= 3)
      {
        __sprintf_chk(v27, 0, 0xCuLL, "%s", off_10009CB18[v19]);
      }

      v9 += 16;
      fprintf(__stream, "Bus: %u CE: %u CAU: %u Block: %u Cycles: %u Reason: %u Page: %s Temp: %s mode: %s\n", v14, v15, v17, v16, v21, v20, v30, v29, v27);
      --v13;
    }

    while (v13);
  }

  v8 = v25;
  fprintf(__stream, "Grown Bad Blocks Count: %u\n", v25);
  fprintf(__stream, "Factory Bad Blocks Count: %u\n", v23);
  if (v24)
  {
    goto LABEL_11;
  }

  return v8;
}

unsigned int *sub_10003C69C(FILE *__stream, unsigned int *a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a2;
  v12 = __stream;
  v13 = *a2;
  if (a4 != HIBYTE(*a2))
  {
    fwrite("Error parsing! missing header", 0x1DuLL, 1uLL, __stream);
    return v11;
  }

  v11 = a2 + 1;
  v14 = v13 & 0xFFFFFF;
  if ((v13 & 0xFFFFFF) != 0)
  {
    v18 = a11;
    fprintf(__stream, "==== %s ====\n", &xmmword_1000D82F0 + 30 * a4);
    fprintf(v12, "\t%d bands\n", v14);
    v19 = 0;
    v49 = v14;
    v54 = v12;
    while (1)
    {
      v53 = v19;
      v52 = v11[3];
      v21 = v11[4];
      v20 = v11[5];
      v22 = v11[1];
      if ((v22 & 0x40) != 0)
      {
        v23 = 73;
      }

      else
      {
        v23 = 45;
      }

      v24 = 69;
      if ((v22 & 0x20) == 0)
      {
        v24 = 45;
      }

      v25 = 83;
      if ((v22 & 8) == 0)
      {
        v25 = 45;
      }

      v48 = v24;
      v47 = v25;
      v26 = 82;
      if ((v22 & 4) == 0)
      {
        v26 = 45;
      }

      v27 = 77;
      if ((v22 & 2) == 0)
      {
        v27 = 45;
      }

      v45 = v27;
      v46 = v26;
      v28 = 67;
      if ((v22 & 1) == 0)
      {
        v28 = 45;
      }

      v29 = 114;
      if ((v22 & 0x100) == 0)
      {
        v29 = 45;
      }

      fprintf(v12, "Band:%4d  Flow:%s [%d]  Flags:%1u%c%c%c%c%c%c%c  ", *v11, (v18 + 22 * v11[2]), v11[2], (v22 >> 9) & 7, v29, v28, v45, v46, v47, v48, v23);
      if (v52 == -1 || !v21)
      {
        fwrite("Valid Sectors: NA   Total Sectors: NA  ", 0x27uLL, 1uLL, v12);
      }

      else
      {
        fprintf(v12, "Valid Sectors: %5d  Total Sectors: %5d [%d%%]  ", v20, v21, 100 * v20 / v21);
      }

      v30 = v11[6];
      if ((v22 & 0x80) != 0)
      {
        v11 += 7;
        if (v30)
        {
          do
          {
            v36 = *v11;
            v37 = v11[1];
            v38 = v11[2];
            v39 = *(a6 + 4 * a4);
            if (v39 <= v38)
            {
              v39 = v11[2];
            }

            *(a6 + 4 * a4) = v39;
            v40 = *(a7 + 4 * a4);
            if (v40 <= v37)
            {
              v40 = v37;
            }

            *(a7 + 4 * a4) = v40;
            v41 = *(a8 + 4 * a4);
            if (v41 >= v37)
            {
              v41 = v37;
            }

            *(a8 + 4 * a4) = v41;
            *(a9 + 4 * a4) += v37;
            v42 = v11 + 3;
            ++*(a10 + 4 * a4);
            fprintf(v54, "\n\tBlock:%4d [Bork:%4d Dip: %4d Age:%5d Cycles:%5d EOL%%:%3d]", v36, v36 / a3, v36 % a3, v38, v37, 100 * v37 / *(a5 + 4 * a4));
            v11 += 3;
            --v30;
          }

          while (v30);
          v11 = v42;
          v18 = a11;
          v14 = v49;
          v43 = v53;
          v12 = v54;
          goto LABEL_41;
        }
      }

      else
      {
        v31 = v11 + 8;
        v32 = v11[7];
        fprintf(v12, "Age:%5d Cycles:%5d EOL%%:%3d\n", v32, v30, 100 * v30 / *(a5 + 4 * a4));
        v33 = *(a6 + 4 * a4);
        if (v33 <= v32)
        {
          v33 = v32;
        }

        *(a6 + 4 * a4) = v33;
        v34 = *(a7 + 4 * a4);
        if (v34 <= v30)
        {
          v34 = v30;
        }

        *(a7 + 4 * a4) = v34;
        v35 = *(a8 + 4 * a4);
        if (v35 >= v30)
        {
          v35 = v30;
        }

        *(a8 + 4 * a4) = v35;
        *(a9 + 4 * a4) += v30;
        ++*(a10 + 4 * a4);
        v11 = v31;
      }

      v43 = v53;
LABEL_41:
      fputc(10, v12);
      v19 = v43 + 1;
      if (v43 + 1 == v14)
      {
        fputc(10, v12);
        return v11;
      }
    }
  }

  return v11;
}

BOOL sub_10003CA04(char **a1, int a2, void *a3, size_t a4, char a5)
{
  v10 = 0;
  v7 = sub_10003DA48(a1, a2, 0, 0, &v10, 0, a5);
  if (v7)
  {
    bzero(a3, a4);
    if (v10 >= a4)
    {
      v8 = a4;
    }

    else
    {
      v8 = v10;
    }

    memcpy(a3, v7, v8);
    free(v7);
  }

  return v7 != 0;
}

BOOL sub_10003CA90(char **a1, uint64_t a2)
{
  v4 = 1;
  if (!sub_10003CA04(a1, 186, a2, 0x190uLL, 1))
  {
    *__c = 0u;
    memset(v56, 0, 56);
    v4 = sub_10003CA04(a1, 55, __c, 0x48uLL, 0);
    if (v4)
    {
      *(a2 + 368) = 0u;
      *(a2 + 384) = 0u;
      *(a2 + 336) = 0u;
      *(a2 + 352) = 0u;
      *(a2 + 304) = 0u;
      *(a2 + 320) = 0u;
      *(a2 + 272) = 0u;
      *(a2 + 288) = 0u;
      *(a2 + 240) = 0u;
      *(a2 + 256) = 0u;
      *(a2 + 208) = 0u;
      *(a2 + 224) = 0u;
      *(a2 + 176) = 0u;
      *(a2 + 192) = 0u;
      *(a2 + 144) = 0u;
      *(a2 + 160) = 0u;
      *(a2 + 112) = 0u;
      *(a2 + 128) = 0u;
      *(a2 + 80) = 0u;
      *(a2 + 96) = 0u;
      *(a2 + 48) = 0u;
      *(a2 + 64) = 0u;
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0u;
      *a2 = 0u;
      *a2 = 1;
      v5 = *&__c[1];
      v6 = v56[0];
      *&v7 = *&__c[1];
      *(&v7 + 1) = *&v56[0];
      *(a2 + 4) = v7;
      *(a2 + 20) = *(v56 + 8);
      *(a2 + 36) = *(&v56[1] + 8);
      *(a2 + 52) = *(&v56[2] + 8);
      *(a2 + 72) = 0;
      *(a2 + 68) = 0;
      v8 = HIDWORD(v5);
      if (HIDWORD(v5) >= 2)
      {
        v9 = HIDWORD(v5) >> 1;
        v10 = vdupq_n_s64(v9 - 1);
        v11 = -((v9 + 15) & 0xFFFFFFF0);
        v12 = xmmword_100094410;
        v13 = xmmword_100094420;
        v14 = xmmword_100094430;
        v15 = xmmword_100094440;
        v16 = xmmword_100094450;
        v17 = xmmword_100094460;
        v18 = xmmword_1000943F0;
        v19 = (a2 + 95);
        v20 = 95;
        v21 = xmmword_100094400;
        v22 = vdupq_n_s64(0x10uLL);
        do
        {
          v23 = v20 - 95;
          v24 = vmovn_s64(vcgeq_u64(v10, v21));
          if (vuzp1_s8(vuzp1_s16(v24, *v10.i8), *v10.i8).u8[0])
          {
            *(v19 - 15) = 2 * v23;
          }

          if (vuzp1_s8(vuzp1_s16(v24, *&v10), *&v10).i8[1])
          {
            *(v19 - 14) = (2 * v23) | 2;
          }

          if (vuzp1_s8(vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, *&v18))), *&v10).i8[2])
          {
            *(v19 - 13) = (2 * v23) | 4;
            *(v19 - 12) = (2 * v23) | 6;
          }

          v25 = vmovn_s64(vcgeq_u64(v10, v17));
          if (vuzp1_s8(*&v10, vuzp1_s16(v25, *&v10)).i32[1])
          {
            *(v19 - 11) = (2 * v23) | 8;
          }

          if (vuzp1_s8(*&v10, vuzp1_s16(v25, *&v10)).i8[5])
          {
            *(v19 - 10) = (2 * v23) | 0xA;
          }

          if (vuzp1_s8(*&v10, vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, *&v16)))).i8[6])
          {
            *(v19 - 9) = (2 * v23) | 0xC;
            *(v19 - 8) = (2 * v23) | 0xE;
          }

          v26 = vmovn_s64(vcgeq_u64(v10, v15));
          if (vuzp1_s8(vuzp1_s16(v26, *v10.i8), *v10.i8).u8[0])
          {
            *(v19 - 7) = (2 * v23) | 0x10;
          }

          if (vuzp1_s8(vuzp1_s16(v26, *&v10), *&v10).i8[1])
          {
            *(v19 - 6) = (2 * v23) | 0x12;
          }

          if (vuzp1_s8(vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, *&v14))), *&v10).i8[2])
          {
            *(v19 - 5) = (2 * v23) | 0x14;
            *(v19 - 4) = (2 * v23) | 0x16;
          }

          v27 = vmovn_s64(vcgeq_u64(v10, v13));
          if (vuzp1_s8(*&v10, vuzp1_s16(v27, *&v10)).i32[1])
          {
            *(v19 - 3) = (2 * v23) | 0x18;
          }

          if (vuzp1_s8(*&v10, vuzp1_s16(v27, *&v10)).i8[5])
          {
            *(v19 - 2) = (2 * v23) | 0x1A;
          }

          if (vuzp1_s8(*&v10, vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, *&v12)))).i8[6])
          {
            *(v19 - 1) = (2 * v23) | 0x1C;
            *v19 = (2 * v23) | 0x1E;
          }

          v17 = vaddq_s64(v17, v22);
          v18 = vaddq_s64(v18, v22);
          v21 = vaddq_s64(v21, v22);
          v16 = vaddq_s64(v16, v22);
          v15 = vaddq_s64(v15, v22);
          v14 = vaddq_s64(v14, v22);
          v13 = vaddq_s64(v13, v22);
          v12 = vaddq_s64(v12, v22);
          v20 += 16;
          v19 += 16;
        }

        while (v11 + v20 != 95);
        v28 = vdupq_n_s64(HIDWORD(v5) - 1);
        v29 = (HIDWORD(v5) + 15) & 0x1FFFFFFF0;
        v30 = xmmword_100094410;
        v31 = xmmword_100094420;
        v32 = xmmword_100094430;
        v33 = xmmword_100094440;
        v34 = xmmword_100094450;
        v35 = xmmword_100094460;
        v36 = xmmword_1000943F0;
        v37 = (a2 + 127);
        v38 = 7;
        v39 = xmmword_100094400;
        do
        {
          v40 = vmovn_s64(vcgeq_u64(v28, v39));
          if (vuzp1_s8(vuzp1_s16(v40, *v28.i8), *v28.i8).u8[0])
          {
            *(v37 - 15) = v38 - 7;
          }

          if (vuzp1_s8(vuzp1_s16(v40, *&v28), *&v28).i8[1])
          {
            *(v37 - 14) = v38 - 7;
          }

          if (vuzp1_s8(vuzp1_s16(*&v28, vmovn_s64(vcgeq_u64(v28, *&v36))), *&v28).i8[2])
          {
            *(v37 - 13) = v38 - 6;
            *(v37 - 12) = v38 - 6;
          }

          v41 = vmovn_s64(vcgeq_u64(v28, v35));
          if (vuzp1_s8(*&v28, vuzp1_s16(v41, *&v28)).i32[1])
          {
            *(v37 - 11) = v38 - 5;
          }

          if (vuzp1_s8(*&v28, vuzp1_s16(v41, *&v28)).i8[5])
          {
            *(v37 - 10) = v38 - 5;
          }

          if (vuzp1_s8(*&v28, vuzp1_s16(*&v28, vmovn_s64(vcgeq_u64(v28, *&v34)))).i8[6])
          {
            *(v37 - 9) = v38 - 4;
            *(v37 - 8) = v38 - 4;
          }

          v42 = vmovn_s64(vcgeq_u64(v28, v33));
          if (vuzp1_s8(vuzp1_s16(v42, *v28.i8), *v28.i8).u8[0])
          {
            *(v37 - 7) = v38 - 3;
          }

          if (vuzp1_s8(vuzp1_s16(v42, *&v28), *&v28).i8[1])
          {
            *(v37 - 6) = v38 - 3;
          }

          if (vuzp1_s8(vuzp1_s16(*&v28, vmovn_s64(vcgeq_u64(v28, *&v32))), *&v28).i8[2])
          {
            *(v37 - 5) = v38 - 2;
            *(v37 - 4) = v38 - 2;
          }

          v43 = vmovn_s64(vcgeq_u64(v28, v31));
          if (vuzp1_s8(*&v28, vuzp1_s16(v43, *&v28)).i32[1])
          {
            *(v37 - 3) = v38 - 1;
          }

          if (vuzp1_s8(*&v28, vuzp1_s16(v43, *&v28)).i8[5])
          {
            *(v37 - 2) = v38 - 1;
          }

          if (vuzp1_s8(*&v28, vuzp1_s16(*&v28, vmovn_s64(vcgeq_u64(v28, *&v30)))).i8[6])
          {
            *(v37 - 1) = v38;
            *v37 = v38;
          }

          v44 = vdupq_n_s64(0x10uLL);
          v35 = vaddq_s64(v35, v44);
          v36 = vaddq_s64(v36, v44);
          v39 = vaddq_s64(v39, v44);
          v34 = vaddq_s64(v34, v44);
          v33 = vaddq_s64(v33, v44);
          v32 = vaddq_s64(v32, v44);
          v31 = vaddq_s64(v31, v44);
          v30 = vaddq_s64(v30, v44);
          v38 += 8;
          v37 += 16;
          v29 -= 16;
        }

        while (v29);
      }

      if (HIDWORD(v5))
      {
        v53 = v5;
        v54 = v6;
        memset((a2 + 96), __c[3], HIDWORD(v5));
        LODWORD(v5) = v53;
        v6 = v54;
      }

      if (v5 <= v6)
      {
        v45 = 0;
        v46 = 0;
        v47 = (a2 + 128);
        do
        {
          v48 = v8;
          v49 = v47;
          v50 = (a2 + 96);
          if (v8)
          {
            do
            {
              v51 = *v50++;
              if (v45 < v51)
              {
                *v49 = v46++;
              }

              v49 += 16;
              --v48;
            }

            while (v48);
          }

          ++v45;
          ++v47;
        }

        while (v45 < v6 / v5);
      }
    }
  }

  return v4;
}

BOOL sub_10003D0D8(char **a1, char *a2, uint64_t a3)
{
  v6 = 1;
  if (!sub_10003CA04(a1, 187, a2, 0x28uLL, 1))
  {
    v10 = 0u;
    v11 = 0u;
    v6 = sub_10003CA04(a1, 158, &v10, 0x20uLL, 0);
    if (v6)
    {
      *a2 = 0u;
      *(a2 + 1) = 0u;
      *(a2 + 4) = 0;
      *a2 = 1;
      *(a2 + 4) = v10;
      *(a2 + 20) = v11;
      *(a2 + 7) = HIDWORD(v11);
      v7 = *(a3 + 96);
      v8 = *(a3 + 8) > 1u;
      *(a2 + 8) = v7;
      *(a2 + 9) = v7 << v8;
    }
  }

  return v6;
}

BOOL print_geometry(char *__filename)
{
  if (__filename)
  {
    v2 = fopen(__filename, "a");
    if (!v2)
    {
      fprintf(__stderrp, "Unable to open %s\n", __filename);
      return 0;
    }
  }

  else
  {
    v2 = __stdoutp;
  }

  v18 = 0u;
  memset(v19, 0, sizeof(v19));
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  result = sub_10003CA90(0, &v13);
  if (result)
  {
    result = sub_10003D0D8(0, &v10, &v13);
    if (result)
    {
      fwrite("===NAND Geometry===\n", 0x14uLL, 1uLL, v2);
      fprintf(v2, "cau_per_die: %d\n", DWORD1(v13));
      fprintf(v2, "num_bus: %d\n", DWORD2(v13));
      v4 = 0;
      v5 = v19;
      v6 = -1;
      v7 = 16;
      do
      {
        v8 = *v5;
        if (!*v5)
        {
          break;
        }

        v9 = v5[16];
        if (v6 != v9)
        {
          fprintf(v2, "MSP %d:\n", v5[16]);
          v4 = 0;
          v8 = *v5;
          v6 = v9;
        }

        fprintf(v2, "   Dies in Ch %d: %d\n", v4++, v8);
        ++v5;
        --v7;
      }

      while (v7);
      fprintf(v2, "num_dip: %d\n", HIDWORD(v13));
      fprintf(v2, "num_bands: %d\n", v14);
      fprintf(v2, "sec_per_page: %d\n", DWORD1(v14));
      fprintf(v2, "sec_per_full_band: %d\n", DWORD2(v14));
      fprintf(v2, "sec_per_full_band_slc: %d\n", HIDWORD(v14));
      fprintf(v2, "bytes_per_sec_meta: %d\n", v15);
      fprintf(v2, "pages_per_block: %d\n", DWORD1(v15));
      fprintf(v2, "pages_per_block_slc: %d\n", DWORD2(v15));
      fprintf(v2, "pages_per_block0: %d\n", HIDWORD(v15));
      fprintf(v2, "cell_type: %d\n", v16);
      fprintf(v2, "pages_in_read_verify: %d\n", DWORD1(v16));
      fprintf(v2, "eol_blocks: %d\n", DWORD2(v16));
      fprintf(v2, "block_pairing_scheme: %d\n", HIDWORD(v16));
      fprintf(v2, "sec_per_die_multiplane : %d\n", DWORD2(v10));
      fprintf(v2, "num_die : %d\n", v11);
      fprintf(v2, "sol_eol_per_die : %d\n", DWORD1(v11));
      fprintf(v2, "technology : %d\n", HIDWORD(v11));
      fprintf(v2, "max_tlc_gbb : %d\n", DWORD2(v11));
      if (__filename)
      {
        fclose(v2);
      }

      return 1;
    }
  }

  return result;
}

uint64_t sub_10003D53C(const char *a1)
{
  v15 = 0;
  v21[0] = unk_1000944B4;
  strcpy(v21 + 11, "_ERR_PAYLOAD   ");
  strcpy(v20, "NAND_GEOM_ERR_BLOCK_INFO");
  qmemcpy(&v20[25], "NAND_GEOM_ERR_HEADER   ", 23);
  strcpy(v18, "NAND_GEOM_ERR_UNC     ");
  strcpy(v19, "NAND_GEOM_ERR_REFRESH ");
  strcpy(v16, "NAND_GEOM_ERR_NO_ERROR");
  strcpy(v17, "NAND_GEOM_ERR_BLANK   ");
  result = sub_10003DDFC(0, 255, &v15, 0, 1);
  if (result)
  {
    v3 = result;
    if (a1)
    {
      v4 = fopen(a1, "a");
      if (!v4)
      {
        fprintf(__stderrp, "Unable to open %s\n", a1);
        return 0;
      }
    }

    else
    {
      v4 = __stdoutp;
    }

    v13 = v3;
    v5 = *v3;
    fprintf(v4, "num of errors in log: %d\n", v5);
    fwrite("======================\n", 0x17uLL, 1uLL, v4);
    if (v5)
    {
      v6 = v13 + 2;
      do
      {
        fprintf(v4, "type: %s, length: %d\n", &v20[25 * *v6], v6[1]);
        fprintf(v4, "type: %s, length: %d\n", &v20[25 * v6[2]], v6[3]);
        fwrite("===========new error==============\n", 0x23uLL, 1uLL, v4);
        fprintf(v4, "MSP: %d\n", *(v6 + 2) & 0xF);
        fprintf(v4, "channel: %d\n", (*(v6 + 2) >> 4) & 1);
        fprintf(v4, "die: %d\n", (*(v6 + 2) >> 5) & 0xF);
        fprintf(v4, "plane: %d\n", (*(v6 + 2) >> 9) & 7);
        fprintf(v4, "block: %d\n", (*(v6 + 2) >> 12) & 0x7FFF);
        fprintf(v4, "reason: %d\n", *(v6 + 2) >> 27);
        fprintf(v4, "failPage: %d\n", *(v6 + 13));
        fprintf(v4, "numOfPages: %d\n", *(v6 + 15));
        fprintf(v4, "blockMode: %d\n", *(v6 + 17));
        fprintf(v4, "isReliabilty: %d\n", (*(v6 + 12) >> 1) & 1);
        v7 = *(v6 + 12);
        if (v7 >= 0x10)
        {
          fprintf(v4, "cycles: %d\n", *(v6 + 25));
          fprintf(v4, "age: %d\n", *(v6 + 29));
          fprintf(v4, "timeStamp: %d\n", *(v6 + 33));
          fprintf(v4, "readDisturbCounter: %d\n", *(v6 + 69));
          fprintf(v4, "flow: %d\n", *(v6 + 71));
          fprintf(v4, "minTemp: %d\n", *(v6 + 72));
          fprintf(v4, "maxTemp: %d\n", *(v6 + 73));
          v7 = *(v6 + 12);
        }

        v14 = v5;
        if (v7 >= 0xC)
        {
          fprintf(v4, "numScannedPages: %d\n", v6[10]);
          fprintf(v4, "numFailures: %d\n", v6[11]);
        }

        v8 = *(v6 + 15);
        v9 = (v6 + v6[3] + 8);
        fprintf(v4, "type: %s, length: %d\n", &v20[25 * *v9], v9[1]);
        fwrite("============page status===========\n", 0x23uLL, 1uLL, v4);
        if (v8)
        {
          v10 = 0;
          v11 = 0;
          v12 = v9 + 2;
          do
          {
            fprintf(v4, "page: %d, status: 0x%x, (%s)\n", v11, (*(v12 + (v11 >> 2)) & (3 << (v10 & 6))) >> (v10 & 6), &v16[23 * ((*(v12 + (v11 >> 2)) & (3 << (v10 & 6))) >> (v10 & 6))]);
            ++v11;
            v10 += 2;
          }

          while (v8 != v11);
        }

        v6 = (v6 + v6[1] + 4);
        v5 = v14 - 1;
        fwrite("======================\n", 0x17uLL, 1uLL, v4);
        fwrite("======================\n", 0x17uLL, 1uLL, v4);
      }

      while (v14 != 1);
    }

    free(v13);
    if (__stdoutp != v4)
    {
      fclose(v4);
    }

    return 1;
  }

  return result;
}

uint64_t sub_10003DA34(int a1)
{
  if ((a1 - 1) >= 3)
  {
    return 3;
  }

  else
  {
    return (a1 - 1);
  }
}

void *sub_10003DA48(char **a1, int a2, int a3, int a4, void *a5, char a6, char a7)
{
  v13 = a1;
  v21 = 0;
  *a5 = 0;
  if (!a1 && (!sub_10003E22C(&v21) || (v13 = v21) == 0 || !*(v21 + 4)))
  {
    fwrite("Err: Finding internal NAND exporter failed for fetch tunnel buffer.\n", 0x44uLL, 1uLL, __stderrp);
LABEL_11:
    v19 = 0;
    goto LABEL_14;
  }

  v14 = a3;
  v15 = sub_10003DBF8(v13, a2, a3, a4, a7);
  if (!v15)
  {
    fprintf(__stderrp, "failed to get data size for cmd option %d\n", a2);
    goto LABEL_11;
  }

  v16 = v15;
  v17 = (vm_page_size + v15 - 1) / vm_page_size * vm_page_size;
  v18 = malloc_type_valloc(v17, 0x100004077774924uLL);
  v19 = v18;
  if (v18)
  {
    bzero(v18, v17);
    if (sub_10003DCC0(v13, a2, v14, a4, v19, v17, a6, a7))
    {
      *a5 = v16;
    }

    else
    {
      free(v19);
      v19 = 0;
      *a5 = 0;
    }
  }

  else
  {
    fwrite("can't allocate buffer!\n", 0x17uLL, 1uLL, __stderrp);
  }

LABEL_14:
  if (v21)
  {
    sub_10003E378(v21);
  }

  return v19;
}

uint64_t sub_10003DBF8(uint64_t a1, int a2, int a3, int a4, char a5)
{
  v13 = 0;
  v12 = 0;
  outputStruct = 0;
  inputStruct[0] = a2;
  outputStructCnt = 4;
  inputStruct[2] = a4;
  inputStruct[1] = a3 | 1;
  v7 = IOConnectCallStructMethod(*(a1 + 16), *(a1 + 28), inputStruct, 0x18uLL, &outputStruct, &outputStructCnt);
  if (v7)
  {
    if ((a5 & 1) == 0)
    {
      fprintf(__stderrp, "Error calling CoreDebugTunnel method! - 0x%X\n", v7);
    }

    return 0;
  }

  else
  {
    result = outputStruct;
    if (!outputStruct && (a5 & 1) == 0)
    {
      fprintf(__stderrp, "SizeOnly for tunnel command 0x%x returned 0\n", a2);
      return outputStruct;
    }
  }

  return result;
}

uint64_t sub_10003DCC0(uint64_t a1, int a2, int a3, int a4, void *outputStruct, size_t a6, char a7, char a8)
{
  LOBYTE(v9) = a7;
  outputStructCnt = a6;
  v20 = 0;
  v19 = 0;
  while (1)
  {
    inputStruct[0] = a2;
    inputStruct[1] = a3;
    inputStruct[2] = a4;
    v15 = IOConnectCallStructMethod(*(a1 + 16), *(a1 + 28), inputStruct, 0x18uLL, outputStruct, &outputStructCnt);
    if (v15 != -536870211)
    {
      break;
    }

    if ((v9 & 1) == 0)
    {
      goto LABEL_10;
    }

    if ((a8 & 1) == 0)
    {
      fprintf(__stderrp, "CoreDebugTunnel 0x%x returned kIOReturnNoMemory\n", a2);
    }

    v16 = outputStructCnt;
    outputStructCnt = vm_page_size;
    v9 = 1;
    if (vm_page_size == v16)
    {
      return v9;
    }
  }

  if (!v15)
  {
    return 1;
  }

LABEL_10:
  if ((a8 & 1) == 0)
  {
    fprintf(__stderrp, "Error calling CoreDebugTunnel method! - 0x%X\n", v15);
  }

  return 0;
}

uint64_t sub_10003DE34(uint64_t a1, void *a2, void *a3, int a4, int a5, int a6, char a7, char a8)
{
  if (!a1)
  {
    v18 = __stderrp;
    v19 = "Err: Need a valid nand exporter here.\n";
    v20 = 38;
    goto LABEL_10;
  }

  if (!a2 || !a3)
  {
    v18 = __stderrp;
    v19 = "Err: Need a valid outputbuffer and bufferSize";
    v20 = 45;
    goto LABEL_10;
  }

  v16 = sub_10003DBF8(a1, a4, a5, a6, a8);
  if (!v16)
  {
    v21 = 0;
    goto LABEL_16;
  }

  v17 = v16;
  if (!*a3 || v16 <= *a3)
  {
    v23 = (vm_page_size + v16 - 1) / vm_page_size * vm_page_size;
    bzero(a2, v23);
    if ((sub_10003DCC0(a1, a4, a5, a6, a2, v23, a7, a8) & 1) == 0)
    {
      goto LABEL_11;
    }

    v21 = v17;
LABEL_16:
    result = 1;
    goto LABEL_12;
  }

  v18 = __stderrp;
  v19 = "Err: Allocated buffer not large enough for the command.\n";
  v20 = 56;
LABEL_10:
  fwrite(v19, v20, 1uLL, v18);
LABEL_11:
  v21 = 0;
  result = 0;
LABEL_12:
  *a3 = v21;
  return result;
}

uint64_t sub_10003DF90(char **a1, int a2, int a3, int a4, void *outputStruct, size_t a6, char a7, char a8)
{
  v17 = 0;
  if (a1 || sub_10003E22C(&v17) && (a1 = v17) != 0 && *(v17 + 4))
  {
    if (sub_10003DCC0(a1, a2, a3, a4, outputStruct, a6, a7, a8))
    {
      v15 = 1;
      goto LABEL_10;
    }

    fprintf(__stderrp, "Error fetching the tunnel output buffer for opcode [%d]\n", a2);
  }

  else
  {
    fwrite("Err: Finding internal NAND exporter failed.\n", 0x2CuLL, 1uLL, __stderrp);
  }

  v15 = 0;
LABEL_10:
  if (v17)
  {
    sub_10003E378(v17);
  }

  return v15;
}

uint64_t sub_10003E0A8(char **a1, int a2, int a3, void *outputStruct)
{
  v15 = 0;
  v14 = 0;
  v16 = 0;
  outputStructCnt = 4;
  v11 = 0;
  inputStruct = a2;
  v13 = 1;
  *(&v14 + 2) = a3;
  if (!outputStruct)
  {
    syslog(3, "Error: must provide valid pointer for output value");
    goto LABEL_11;
  }

  if (a1)
  {
    v6 = *(a1 + 4);
  }

  else if (!sub_10003E22C(&v11) || (a1 = v11) == 0 || (v6 = *(v11 + 4)) == 0)
  {
    fwrite("Err: Finding internal NAND exporter failed.\n", 0x2CuLL, 1uLL, __stderrp);
    goto LABEL_11;
  }

  v7 = IOConnectCallStructMethod(v6, *(a1 + 8), &inputStruct, 0x18uLL, outputStruct, &outputStructCnt);
  if (v7)
  {
    fprintf(__stderrp, "Error fetching the tunnel output buffer for opcode [%d], Result [0x%X]\n", a2, v7);
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  v8 = 1;
LABEL_12:
  if (v11)
  {
    sub_10003E378(v11);
  }

  return v8;
}

char *sub_10003E22C(char ***a1)
{
  connect = 0;
  *a1 = 0;
  v2 = pthread_mutex_trylock(&stru_1000D77B0);
  if (v2)
  {
    if (v2 != 16 || (syslog(4, "Warning: NANDInfo: NANDExporter: serializeAccess already locked. waiting for lock !\n"), pthread_mutex_lock(&stru_1000D77B0)))
    {
      v3 = __error();
      syslog(3, "Error: NANDInfo: NANDExporter: pthread_mutex_trylock() (%d) failed \n", *v3);
      return 0;
    }
  }

  syslog(5, "NANDInfo: NANDExporter object locked ! \n");
  v5 = &off_1000D77F0;
  result = off_1000D77F0;
  if (!off_1000D77F0)
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  while (1)
  {
    v6 = IOServiceMatching(result);
    if (!v6)
    {
      goto LABEL_10;
    }

    MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v6);
    if (!MatchingService)
    {
      goto LABEL_10;
    }

    v8 = MatchingService;
    if (!IOServiceOpen(MatchingService, mach_task_self_, 0, &connect))
    {
      break;
    }

    IOServiceClose(connect);
    connect = 0;
    IOObjectRelease(v8);
LABEL_10:
    v9 = v5[21];
    v5 += 21;
    result = v9;
    if (!v9)
    {
      goto LABEL_11;
    }
  }

  syslog(5, "NANDInfo: findNandExporter_tunnel: Controller found: %s\n", *v5);
  result = 1;
LABEL_12:
  *(v5 + 4) = connect;
  *(v5 + 5) = v8;
  *a1 = v5;
  return result;
}

uint64_t sub_10003E378(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    IOServiceClose(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 20);
  if (v3)
  {
    IOObjectRelease(v3);
    *(a1 + 20) = 0;
  }

  syslog(5, "NANDInfo: NANDExporter object unlocked ! \n");

  return pthread_mutex_unlock(&stru_1000D77B0);
}

void sub_10003E3E0(const __CFDictionary *a1, void *a2)
{
  v3 = a2;
  v4 = 0;
  valuePtr = 0;
  do
  {
    v5 = CFStringCreateWithCString(0, off_1000D7B38[v4], 0);
    if (!v5)
    {
      NSLog(@"%@: Failed to create string for key %s", off_1000D7FE0[0], off_1000D7B38[v4]);
      goto LABEL_12;
    }

    v6 = v5;
    v7 = off_1000D7B38[v4];
    if (!strncmp(v7, "USBVendorString", 0xFuLL) || !strncmp(v7, "USBProductString", 0x10uLL))
    {
      Value = CFDictionaryGetValue(a1, v6);
      if (!Value)
      {
LABEL_10:
        NSLog(@"%@: %s property not found", off_1000D7FE0[0], off_1000D7B38[v4]);
        goto LABEL_11;
      }

      v12 = Value;
      v13 = [NSString stringWithUTF8String:off_1000D7B38[v4]];
      [v3 setObject:v12 forKey:v13];
    }

    else
    {
      v8 = CFDictionaryGetValue(a1, v6);
      if (!v8)
      {
        goto LABEL_10;
      }

      CFNumberGetValue(v8, kCFNumberLongType, &valuePtr);
      v9 = [NSNumber numberWithUnsignedLongLong:valuePtr];
      v10 = [NSString stringWithUTF8String:off_1000D7B38[v4]];
      [v3 setObject:v9 forKey:v10];
    }

LABEL_11:
    CFRelease(v6);
LABEL_12:
    ++v4;
  }

  while (v4 != 149);
}

id sub_10003E5A0()
{
  *connect = 0;
  v0 = objc_alloc_init(NSMutableArray);
  v1 = IOServiceMatching("IOUSBMassStorageResource");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v1);
  if (MatchingService)
  {
    v3 = MatchingService;
    v4 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"Device Stats", kCFAllocatorDefault, 0);
    if (v4)
    {
      v5 = v4;
      Count = CFDictionaryGetCount(v4);
      if (Count <= 0)
      {
        sub_10003E818();
      }

      else
      {
        v7 = Count;
        v8 = IOServiceOpen(v3, mach_task_self_, 1u, &connect[1]);
        if (v8)
        {
          NSLog(@"%@: IOServiceOpen error 0x%x", off_1000D7FE0[0], v8);
        }

        else
        {
          v9 = IOConnectCallScalarMethod(connect[1], 0x55534201u, 0, 0, 0, connect);
          if (v9)
          {
            NSLog(@"%@: IOConnectCallScalarMethod error 0x%x", off_1000D7FE0[0], v9);
          }

          else
          {
            v10 = malloc_type_malloc(8 * v7, 0x6004044C4A2DFuLL);
            if (v10)
            {
              v11 = v10;
              CFDictionaryGetKeysAndValues(v5, v10, 0);
              for (i = 0; i != v7; ++i)
              {
                v13 = [NSMutableDictionary dictionaryWithCapacity:8];
                if (v13)
                {
                  Value = CFDictionaryGetValue(v5, v11[i]);
                  if (Value)
                  {
                    sub_10003E3E0(Value, v13);
                    [v0 addObject:v13];
                  }
                }

                else
                {
                  NSLog(@"%@: Failed to create properties dictionary", off_1000D7FE0[0]);
                }
              }

              free(v11);
              NSLog(@"%@: Successfully collected stats for %ld devices", off_1000D7FE0[0], v7);
            }

            else
            {
              sub_10003E7E4();
            }
          }

          IOServiceClose(connect[1]);
        }
      }

      CFRelease(v5);
    }

    else
    {
      sub_10003E84C();
    }

    IOObjectRelease(v3);
  }

  else
  {
    sub_10003E880();
  }

  return v0;
}

id sub_10003E8B4()
{
  v0 = [NSMutableDictionary dictionaryWithCapacity:4];
  v1 = IOServiceMatching("IODTNVRAMDiags");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v1);
  if (MatchingService)
  {
    v3 = MatchingService;
    v4 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"CommonUsed", kCFAllocatorDefault, 1u);
    v5 = v4 != 0;
    if (v4)
    {
      v6 = v4;
      [v0 setObject:v4 forKey:@"commonused"];
      CFRelease(v6);
    }

    v7 = IORegistryEntrySearchCFProperty(v3, "IOService", @"SystemUsed", kCFAllocatorDefault, 1u);
    if (v7)
    {
      v8 = v7;
      [v0 setObject:v7 forKey:@"systemused"];
      CFRelease(v8);
      v5 = 1;
    }

    v9 = IORegistryEntrySearchCFProperty(v3, "IOService", @"Generation", kCFAllocatorDefault, 1u);
    if (v9)
    {
      v10 = v9;
      [v0 setObject:v9 forKey:@"norwrites"];
      CFRelease(v10);
      v5 = 1;
    }

    v11 = IORegistryEntrySearchCFProperty(v3, "IOService", @"Version", kCFAllocatorDefault, 1u);
    if (v11)
    {
      v12 = v11;
      [v0 setObject:v11 forKey:@"version"];
      CFRelease(v12);
      v5 = 1;
    }

    IOObjectRelease(v3);
    if (v5 && v0 != 0)
    {
      v15 = v0;
      AnalyticsSendEventLazy();
    }
  }

  return v0;
}

id NandInfoExtractToCA_runAllSteps(int a1)
{
  if (a1)
  {
    v2 = objc_alloc_init(NSMutableDictionary);
  }

  else
  {
    v2 = 0;
  }

  if (sub_10003E22C(&qword_1000D82C8))
  {
    for (i = 0; i != 10; ++i)
    {
      v11 = objc_autoreleasePoolPush();
      v12 = sub_10003EC54(i);
      if (v12 && v2)
      {
        v13 = [&off_1000D2F78 objectAtIndexedSubscript:i];
        [v2 setObject:v12 forKeyedSubscript:v13];
      }

      objc_autoreleasePoolPop(v11);
    }

    v14 = qword_1000D82B8;
    qword_1000D82B8 = 0;

    v15 = qword_1000D82C0;
    qword_1000D82C0 = 0;

    if (qword_1000D82C8)
    {
      sub_10003E378(qword_1000D82C8);
      qword_1000D82C8 = 0;
    }

    if (!a1)
    {
      v17 = 0;
      goto LABEL_17;
    }

    v16 = [NSString stringWithUTF8String:sub_100012818()];
    [v2 setObject:v16 forKeyedSubscript:@"com.apple.NANDInfo.ErrorMessage"];
  }

  else
  {
    sub_100012748("NandInfoExtractToCA_runAllSteps: Could not get nand_exporter_t", v3, v4, v5, v6, v7, v8, v9, v19);
  }

  v17 = v2;
LABEL_17:

  return v17;
}

id sub_10003EC54(uint64_t a1)
{
  if (!&_AnalyticsSendEventLazy)
  {
    v251 = @"com.apple.NANDInfo.ErrorMessage";
    v252 = @"Unable call CA API AnalyticsSendEventLazy";
    v13 = [NSDictionary dictionaryWithObjects:&v252 forKeys:&v251 count:1];
    goto LABEL_197;
  }

  if ([&off_1000D2F78 count] <= a1)
  {
    v24 = [NSNumber numberWithUnsignedInt:a1];
    NSLog(@"Invalid extraction step %@", v24);

    v13 = 0;
    goto LABEL_197;
  }

  v2 = [@"/Library/Caches/com.apple.xbs/Sources/EmbeddedStorageReporting_libs/NANDInfo/NANDInfo.m" lastPathComponent];
  v3 = [NSString stringWithUTF8String:"NandInfoExtractToCA_runStep"];
  v209 = a1;
  v4 = [&off_1000D2F78 objectAtIndexedSubscript:a1];
  NSLog(@"%@: %@: logging %@\n", v2, v3, v4);

  if (a1 <= 3)
  {
    if (a1 > 1)
    {
      v12 = a1;
      if (a1 != 2)
      {
        v13 = sub_10003E8B4();
        if (!v13)
        {
          goto LABEL_195;
        }

        goto LABEL_191;
      }

      v13 = objc_alloc_init(NSMutableDictionary);
      v132 = CopyWhitelistedStorageStats();
      v133 = off_1000D8068[0];
      if (v132)
      {
        IsEventUsed = AnalyticsIsEventUsed();
        NSLog(@"NANDInfo: %@ enabled=%d\n", v133, IsEventUsed);
        v135 = off_1000D8068[0];
        v262 = _NSConcreteStackBlock;
        v263 = 3221225472;
        v264 = sub_100044FBC;
        v265 = &unk_10009CB40;
        v266 = v132;
        v136 = sub_100044010(v135, &v262);
        v137 = v136 == 0;
        if (v136)
        {
          v138 = @"NANDInfo: SUCCESS in logging massStorage_NANDInfo_StorageStats_1 using AnalyticsSendEventLazy\n";
        }

        else
        {
          v138 = @"NANDInfo: FAILED to log massStorage_NANDInfo_StorageStats_1 using AnalyticsSendEventLazy\n";
        }

        if (v137)
        {
          v139 = &__kCFBooleanFalse;
        }

        else
        {
          v139 = &__kCFBooleanTrue;
        }

        NSLog(&v138->isa);
        [v13 setObject:v139 forKeyedSubscript:off_1000D8068[0]];

        goto LABEL_183;
      }

      v191 = v13;
      v190 = off_1000D8068[0];
      goto LABEL_182;
    }

    v12 = a1;
    if (!a1)
    {
      v13 = objc_alloc_init(NSMutableDictionary);
      v14 = CopyWhitelistedNANDFTLInfo(0, v102, v103, v104, v105, v106, v107, v108);
      v109 = off_1000D7FE8[0];
      if (v14)
      {
        v110 = AnalyticsIsEventUsed();
        NSLog(@"NANDInfo: %@ enabled=%d\n", v109, v110);
        v111 = off_1000D7FE8[0];
        v262 = _NSConcreteStackBlock;
        v263 = 3221225472;
        v264 = sub_100044F9C;
        v265 = &unk_10009CB40;
        v112 = v14;
        v266 = v112;
        v113 = sub_100044010(v111, &v262);
        v114 = v113 == 0;
        if (v113)
        {
          v115 = @"NANDInfo: SUCCESS in logging massStorage_NANDInfo_FTLCounters_1 using AnalyticsSendEventLazy\n";
        }

        else
        {
          v115 = @"NANDInfo: FAILED to log massStorage_NANDInfo_FTLCounters_1 using AnalyticsSendEventLazy\n";
        }

        if (v114)
        {
          v116 = &__kCFBooleanFalse;
        }

        else
        {
          v116 = &__kCFBooleanTrue;
        }

        NSLog(&v115->isa);
        [v13 setObject:v116 forKeyedSubscript:off_1000D7FE8[0]];

        v117 = off_1000D7FF0[0];
        v118 = AnalyticsIsEventUsed();
        NSLog(@"NANDInfo: %@ enabled=%d\n", v117, v118);
        v119 = off_1000D7FF0[0];
        *&v253 = _NSConcreteStackBlock;
        *(&v253 + 1) = 3221225472;
        *&v254 = sub_100044FA4;
        *(&v254 + 1) = &unk_10009CB40;
        v120 = v112;
        *&v255 = v120;
        v121 = sub_100044010(v119, &v253);
        v122 = v121 == 0;
        if (v121)
        {
          v123 = @"NANDInfo: SUCCESS in logging massStorage_NANDInfo_FTLHistograms_1 using AnalyticsSendEventLazy\n";
        }

        else
        {
          v123 = @"NANDInfo: FAILED to log massStorage_NANDInfo_FTLHistograms_1 using AnalyticsSendEventLazy\n";
        }

        if (v122)
        {
          v124 = &__kCFBooleanFalse;
        }

        else
        {
          v124 = &__kCFBooleanTrue;
        }

        NSLog(&v123->isa);
        [v13 setObject:v124 forKeyedSubscript:off_1000D7FF0[0]];

        v125 = off_1000D7FF8[0];
        v126 = AnalyticsIsEventUsed();
        NSLog(@"NANDInfo: %@ enabled=%d\n", v125, v126);
        v127 = off_1000D7FF8[0];
        *&v247 = _NSConcreteStackBlock;
        *(&v247 + 1) = 3221225472;
        *&v248 = sub_100044FAC;
        *(&v248 + 1) = &unk_10009CB40;
        v12 = v209;
        *&v249 = v120;
        v128 = sub_100044010(v127, &v247);
        v129 = v128 == 0;
        if (v128)
        {
          v130 = @"NANDInfo: SUCCESS in logging kEventName_massStorage_NANDInfo_FTLHistograms_2 using AnalyticsSendEventLazy\n";
        }

        else
        {
          v130 = @"NANDInfo: FAILED to log kEventName_massStorage_NANDInfo_FTLHistograms_2 using AnalyticsSendEventLazy\n";
        }

        if (v129)
        {
          v131 = &__kCFBooleanFalse;
        }

        else
        {
          v131 = &__kCFBooleanTrue;
        }

        NSLog(&v130->isa);
        [v13 setObject:v131 forKeyedSubscript:off_1000D7FF8[0]];

        goto LABEL_194;
      }

      [v13 setObject:&__kCFBooleanFalse forKeyedSubscript:off_1000D7FE8[0]];
      [v13 setObject:&__kCFBooleanFalse forKeyedSubscript:off_1000D7FF0[0]];
      v15 = off_1000D7FF8[0];
      v193 = v13;
LABEL_186:
      [v193 setObject:&__kCFBooleanFalse forKeyedSubscript:v15];
      goto LABEL_194;
    }

    if (a1 != 1)
    {
      goto LABEL_173;
    }

    v13 = objc_alloc_init(NSMutableDictionary);
    v257 = off_1000D8058[0];
    v258 = off_1000D8060[0];
    v223 = [NSArray arrayWithObjects:&v257 count:2];
    v25 = CopyWhitelistedNANDMSPInfo();
    v26 = v25;
    if (v25)
    {
      v27 = [v25 objectForKey:off_1000D80B0[0]];

      if (v27)
      {
        [v26 removeObjectForKey:off_1000D80B0[0]];
      }

      v220 = [v26 count];
      v247 = 0u;
      v248 = 0u;
      v249 = 0u;
      v250 = 0u;
      v214 = v26;
      obj = v26;
      v226 = [obj countByEnumeratingWithState:&v247 objects:&v262 count:16];
      v28 = 0;
      if (v226)
      {
        context = *v248;
        do
        {
          v29 = 0;
          v30 = v28;
          do
          {
            if (*v248 != context)
            {
              objc_enumerationMutation(obj);
            }

            v231 = v29;
            v31 = *(*(&v247 + 1) + 8 * v29);
            v28 = [obj objectForKeyedSubscript:v31];

            [v28 setObject:v31 forKeyedSubscript:off_1000D81D8];
            v32 = [NSNumber numberWithUnsignedInteger:v220];
            [v28 setObject:v32 forKeyedSubscript:off_1000D81E0];

            v245 = 0u;
            v246 = 0u;
            v243 = 0u;
            v244 = 0u;
            v234 = v223;
            v33 = [v234 countByEnumeratingWithState:&v243 objects:&v253 count:16];
            if (v33)
            {
              v34 = v33;
              v35 = *v244;
              do
              {
                for (i = 0; i != v34; i = i + 1)
                {
                  if (*v244 != v35)
                  {
                    objc_enumerationMutation(v234);
                  }

                  v37 = *(*(&v243 + 1) + 8 * i);
                  v38 = AnalyticsIsEventUsed();
                  NSLog(@"NANDInfo: %@ enabled=%d\n", v37, v38);
                  v237 = _NSConcreteStackBlock;
                  v238 = 3221225472;
                  v239 = sub_100044FB4;
                  v240 = &unk_10009CB40;
                  v241 = v28;
                  if (sub_100044010(v37, &v237))
                  {
                    NSLog(@"NANDInfo: SUCCESS in logging %@ using AnalyticsSendEventLazy\n", v37);
                    [v13 objectForKey:v37];
                    v40 = v39 = v13;

                    v41 = &__kCFBooleanTrue;
                    if (v40)
                    {
                      goto LABEL_43;
                    }
                  }

                  else
                  {
                    NSLog(@"NANDInfo: FAILED to log %@ using AnalyticsSendEventLazy\n", v37);
                    [v13 objectForKey:v37];
                    v42 = v39 = v13;

                    v41 = &__kCFBooleanFalse;
                    if (v42)
                    {
                      goto LABEL_43;
                    }
                  }

                  v43 = objc_alloc_init(NSMutableDictionary);
                  [v39 setObject:v43 forKeyedSubscript:v37];

LABEL_43:
                  v44 = [v39 objectForKeyedSubscript:v37];
                  [v44 setObject:v41 forKeyedSubscript:v31];

                  v13 = v39;
                }

                v34 = [v234 countByEnumeratingWithState:&v243 objects:&v253 count:16];
              }

              while (v34);
            }

            v29 = v231 + 1;
            v30 = v28;
          }

          while ((v231 + 1) != v226);
          v226 = [obj countByEnumeratingWithState:&v247 objects:&v262 count:16];
        }

        while (v226);
      }

      NSLog(@"NANDInfo: %@ completed (total_nof_msps:%lu)\n", off_1000D8058[0], v220);
      NSLog(@"NANDInfo: %@ completed (total_nof_msps:%lu)\n", off_1000D8060[0], v220);

      v12 = v209;
      v26 = v214;
    }

    else
    {
      [v13 setObject:&__kCFBooleanFalse forKeyedSubscript:off_1000D8058[0]];
      [v13 setObject:&__kCFBooleanFalse forKeyedSubscript:off_1000D8060[0]];
    }

    if (!v13)
    {
      goto LABEL_195;
    }

    goto LABEL_191;
  }

  if (a1 <= 5)
  {
    v12 = a1;
    if (a1 != 4)
    {
      obja = objc_alloc_init(NSMutableDictionary);
      v45 = objc_alloc_init(NSMutableDictionary);
      [v45 setObject:&off_1000D3218 forKeyedSubscript:@"current"];
      v46 = 0;
      v47 = 0;
      v48 = 0xFFFFFFFFLL;
      do
      {
        v49 = v47;
        v50 = [NSNumber numberWithInt:v48];
        v47 = [NSString stringWithFormat:@"%@ 2-months", v50];

        v51 = [NSNumber numberWithInt:v46];
        v261[0] = v51;
        v46 = (v46 + 1440);
        v52 = [NSNumber numberWithInt:v46];
        v261[1] = v52;
        v53 = [NSArray arrayWithObjects:v261 count:2];
        [v45 setObject:v53 forKeyedSubscript:v47];

        v48 = (v48 - 1);
      }

      while (v48 != -7);
      v54 = 0;
      v55 = 0xFFFFFFFFLL;
      do
      {
        v56 = v47;
        v57 = [NSNumber numberWithInt:v55];
        v47 = [NSString stringWithFormat:@"%@ 6-months", v57];

        v58 = [NSNumber numberWithInt:v54];
        v260[0] = v58;
        v54 = (v54 + 4320);
        v59 = [NSNumber numberWithInt:v54];
        v260[1] = v59;
        v60 = [NSArray arrayWithObjects:v260 count:2];
        [v45 setObject:v60 forKeyedSubscript:v47];

        v55 = (v55 - 1);
      }

      while (v55 != -8);
      v208 = v47;
      v257 = off_1000D8038[0];
      v258 = off_1000D8040[0];
      v259 = off_1000D8048[0];
      v211 = [NSArray arrayWithObjects:&v257 count:3];
      v247 = 0u;
      v248 = 0u;
      v249 = 0u;
      v250 = 0u;
      v215 = v45;
      v13 = obja;
      v212 = [v215 countByEnumeratingWithState:&v247 objects:&v262 count:16];
      if (!v212)
      {
LABEL_176:

        goto LABEL_190;
      }

      v61 = 0;
      v210 = *v248;
      v62 = @"/Library/Caches/com.apple.xbs/Sources/EmbeddedStorageReporting_libs/NANDInfo/NANDInfo.m";
LABEL_58:
      v63 = 0;
      v64 = v61;
LABEL_59:
      if (*v248 != v210)
      {
        objc_enumerationMutation(v215);
      }

      v65 = *(*(&v247 + 1) + 8 * v63);
      v66 = [v215 objectForKeyedSubscript:v65];
      v67 = [v66 objectAtIndexedSubscript:0];
      v68 = [v67 unsignedIntValue];

      v69 = [v215 objectForKeyedSubscript:v65];
      v70 = [v69 objectAtIndexedSubscript:1];
      v71 = [v70 unsignedIntValue];

      v72 = objc_autoreleasePoolPush();
      v61 = CopySMagHistoryNANDFTLInfo(v68, v71, 2);

      if (v61)
      {
        v73 = [v61 objectForKey:@"com.apple.NANDInfo.IsStatMagSupported"];

        if (v73)
        {
          v74 = [v61 objectForKey:@"com.apple.NANDInfo.IsStatMagSupported"];
          v75 = [v74 unsignedLongLongValue];

          if (!v75)
          {
            objc_autoreleasePoolPop(v72);
            goto LABEL_175;
          }
        }
      }

      contexta = v72;
      v221 = v63;
      v245 = 0u;
      v246 = 0u;
      v243 = 0u;
      v244 = 0u;
      v224 = v211;
      v76 = &MSURetrievePreviousRestoreDate_ptr;
      v235 = [v224 countByEnumeratingWithState:&v243 objects:&v253 count:16];
      if (!v235)
      {
        goto LABEL_85;
      }

      v232 = *v244;
LABEL_66:
      v77 = 0;
      while (1)
      {
        if (*v244 != v232)
        {
          objc_enumerationMutation(v224);
        }

        v78 = *(*(&v243 + 1) + 8 * v77);
        v79 = [(__CFString *)v62 lastPathComponent];
        v80 = [v76[211] stringWithUTF8String:"createAndLogSMagHistoryFTLFieldsToCoreAnalyticsForEvent"];
        v81 = AnalyticsIsEventUsed();
        NSLog(@"%@: %@: %@ enabled=%d\n", v79, v80, v78, v81);

        if (!v61)
        {
          v82 = [0 objectForKey:@"com.apple.NANDInfo.IsStatMagSupported"];
          if ([v82 intValue])
          {

            v76 = &MSURetrievePreviousRestoreDate_ptr;
          }

          else
          {
            v83 = [v65 isEqualToString:@"current"];

            v76 = &MSURetrievePreviousRestoreDate_ptr;
            if ((v83 & 1) == 0)
            {
              v98 = [v13 objectForKey:v78];

              if (!v98)
              {
                v99 = objc_alloc_init(NSMutableDictionary);
                [v13 setObject:v99 forKeyedSubscript:v78];
              }

              v100 = [v13 objectForKeyedSubscript:v78];
              [v100 setObject:&__kCFBooleanFalse forKeyedSubscript:v65];

              goto LABEL_79;
            }
          }
        }

        [v61 setObject:v65 forKeyedSubscript:@"ESR_Cadence"];
        v84 = objc_autoreleasePoolPush();
        v237 = _NSConcreteStackBlock;
        v238 = 3221225472;
        v239 = sub_100045340;
        v240 = &unk_10009CB90;
        v241 = v78;
        v242 = v61;
        v85 = sub_100044010(v78, &v237);
        v86 = v62;
        v87 = v85;
        v88 = v86;
        v89 = [(__CFString *)v86 lastPathComponent];
        v90 = [v76[211] stringWithUTF8String:"createAndLogSMagHistoryFTLFieldsToCoreAnalyticsForEvent"];
        v91 = v90;
        if (v87)
        {
          NSLog(@"%@: %@: SUCCESS in logging (%@) %@ using AnalyticsSendEventLazy\n", v89, v90, v65, v78);

          v92 = obja;
          v93 = [obja objectForKey:v78];

          v94 = &__kCFBooleanTrue;
          if (!v93)
          {
            goto LABEL_77;
          }
        }

        else
        {
          NSLog(@"%@: %@: FAILED in logging (%@) %@ using AnalyticsSendEventLazy\n", v89, v90, v65, v78);

          v92 = obja;
          v95 = [obja objectForKey:v78];

          v94 = &__kCFBooleanFalse;
          if (!v95)
          {
LABEL_77:
            v96 = objc_alloc_init(NSMutableDictionary);
            [v92 setObject:v96 forKeyedSubscript:v78];
          }
        }

        v97 = [v92 objectForKeyedSubscript:v78];
        [v97 setObject:v94 forKeyedSubscript:v65];

        objc_autoreleasePoolPop(v84);
        v13 = v92;
        v62 = v88;
        v76 = &MSURetrievePreviousRestoreDate_ptr;
LABEL_79:
        if (v235 == ++v77)
        {
          v101 = [v224 countByEnumeratingWithState:&v243 objects:&v253 count:16];
          v235 = v101;
          if (!v101)
          {
LABEL_85:

            objc_autoreleasePoolPop(contexta);
            v63 = v221 + 1;
            v64 = v61;
            if ((v221 + 1) == v212)
            {
              v212 = [v215 countByEnumeratingWithState:&v247 objects:&v262 count:16];
              if (!v212)
              {
LABEL_175:

                goto LABEL_176;
              }

              goto LABEL_58;
            }

            goto LABEL_59;
          }

          goto LABEL_66;
        }
      }
    }

    v13 = objc_alloc_init(NSMutableDictionary);
    has_internal_content = os_variant_has_internal_content();
    v222 = [NSMutableArray arrayWithObjects:off_1000D8000[0], off_1000D8008[0], off_1000D8010[0], off_1000D8018[0], off_1000D8020[0], off_1000D8028[0], off_1000D8030[0], 0];
    if (has_internal_content)
    {
      [v222 addObject:off_1000D8050[0]];
    }

    v157 = objc_autoreleasePoolPush();
    v158 = CopySMagNANDFTLCustomHistoryInfo(0);
    v247 = 0u;
    v248 = 0u;
    v249 = 0u;
    v250 = 0u;
    contextb = [&off_1000D2ED8 countByEnumeratingWithState:&v247 objects:&v262 count:16];
    if (contextb)
    {
      v159 = 0;
      v213 = v157;
      v216 = *v248;
LABEL_135:
      v160 = 0;
      v161 = v159;
LABEL_136:
      if (*v248 != v216)
      {
        objc_enumerationMutation(&off_1000D2ED8);
      }

      v162 = *(*(&v247 + 1) + 8 * v160);
      v163 = [&off_1000D2ED8 objectForKeyedSubscript:v162];
      v164 = [v163 intValue];

      v159 = CopySMagHistoryNANDFTLInfo(0, v164, 2);
      if (!v159 || ([v159 objectForKey:@"com.apple.NANDInfo.IsStatMagSupported"], v165 = objc_claimAutoreleasedReturnValue(), v165, !v165) || (objc_msgSend(v159, "objectForKey:", @"com.apple.NANDInfo.IsStatMagSupported"), v166 = objc_claimAutoreleasedReturnValue(), v167 = objc_msgSend(v166, "unsignedLongLongValue"), v166, v167))
      {
        v225 = v160;
        v245 = 0u;
        v246 = 0u;
        v243 = 0u;
        v244 = 0u;
        v227 = v222;
        v236 = [v227 countByEnumeratingWithState:&v243 objects:&v253 count:16];
        if (!v236)
        {
          goto LABEL_164;
        }

        v233 = *v244;
        while (1)
        {
          v168 = 0;
          do
          {
            if (*v244 != v233)
            {
              objc_enumerationMutation(v227);
            }

            v169 = *(*(&v243 + 1) + 8 * v168);
            v170 = [@"/Library/Caches/com.apple.xbs/Sources/EmbeddedStorageReporting_libs/NANDInfo/NANDInfo.m" lastPathComponent];
            v171 = [NSString stringWithUTF8String:"createAndLogSMagFTLFieldsToCoreAnalyticsForEvent"];
            v172 = AnalyticsIsEventUsed();
            NSLog(@"%@: %@: %@ enabled=%d\n", v170, v171, v169, v172);

            if (v159)
            {
              goto LABEL_150;
            }

            v173 = [0 objectForKey:@"com.apple.NANDInfo.IsStatMagSupported"];
            if ([v173 intValue])
            {

LABEL_150:
              if (v158)
              {
                [v159 addEntriesFromDictionary:v158];
              }

              [v159 setObject:v162 forKeyedSubscript:@"ESR_Cadence"];
              v175 = objc_autoreleasePoolPush();
              v237 = _NSConcreteStackBlock;
              v238 = 3221225472;
              v239 = sub_100044FC4;
              v240 = &unk_10009CB90;
              v241 = v169;
              v242 = v159;
              v176 = sub_100044010(v169, &v237);
              v177 = [@"/Library/Caches/com.apple.xbs/Sources/EmbeddedStorageReporting_libs/NANDInfo/NANDInfo.m" lastPathComponent];
              v178 = [NSString stringWithUTF8String:"createAndLogSMagFTLFieldsToCoreAnalyticsForEvent"];
              v179 = v178;
              if (v176)
              {
                NSLog(@"%@: %@: SUCCESS in logging (%@) %@ using AnalyticsSendEventLazy\n", v177, v178, v162, v169);

                v180 = [v13 objectForKey:v169];

                v181 = &__kCFBooleanTrue;
                if (!v180)
                {
LABEL_156:
                  v183 = objc_alloc_init(NSMutableDictionary);
                  [v13 setObject:v183 forKeyedSubscript:v169];
                }
              }

              else
              {
                NSLog(@"%@: %@: FAILED to log (%@) %@ using AnalyticsSendEventLazy\n", v177, v178, v162, v169);

                v182 = [v13 objectForKey:v169];

                v181 = &__kCFBooleanFalse;
                if (!v182)
                {
                  goto LABEL_156;
                }
              }

              v184 = [v13 objectForKeyedSubscript:v169];
              [v184 setObject:v181 forKeyedSubscript:v162];

              objc_autoreleasePoolPop(v175);
              goto LABEL_158;
            }

            v174 = [v162 isEqualToString:@"current"];

            if (v174)
            {
              goto LABEL_150;
            }

            v185 = [v13 objectForKey:v169];

            if (!v185)
            {
              v186 = objc_alloc_init(NSMutableDictionary);
              [v13 setObject:v186 forKeyedSubscript:v169];
            }

            v187 = [v13 objectForKeyedSubscript:v169];
            [v187 setObject:&__kCFBooleanFalse forKeyedSubscript:v162];

LABEL_158:
            v168 = v168 + 1;
          }

          while (v236 != v168);
          v188 = [v227 countByEnumeratingWithState:&v243 objects:&v253 count:16];
          v236 = v188;
          if (!v188)
          {
LABEL_164:

            v160 = v225 + 1;
            v161 = v159;
            if (v225 + 1 == contextb)
            {
              contextb = [&off_1000D2ED8 countByEnumeratingWithState:&v247 objects:&v262 count:16];
              if (!contextb)
              {
                break;
              }

              goto LABEL_135;
            }

            goto LABEL_136;
          }
        }
      }

      v12 = v209;
      v157 = v213;
    }

    objc_autoreleasePoolPop(v157);
    if (!v13)
    {
      goto LABEL_195;
    }

    goto LABEL_191;
  }

  v12 = a1;
  if (a1 == 6)
  {
    v140 = objc_alloc_init(NSMutableDictionary);
    v13 = objc_alloc_init(NSMutableDictionary);
    v141 = sub_1000440D4();
    if (v141)
    {
      objb = v13;
      v142 = AnalyticsIsEventUsed();
      NSLog(@"NANDInfo: kEventName_massStorage_NANDInfo_XNUStats_NANDViews_1 enabled=%d\n", v142);
      v255 = 0u;
      v256 = 0u;
      v253 = 0u;
      v254 = 0u;
      v143 = v141;
      v144 = [v143 countByEnumeratingWithState:&v253 objects:&v262 count:16];
      if (v144)
      {
        v145 = v144;
        v146 = 0;
        v147 = *v254;
        do
        {
          for (j = 0; j != v145; j = j + 1)
          {
            if (*v254 != v147)
            {
              objc_enumerationMutation(v143);
            }

            v149 = *(*(&v253 + 1) + 8 * j);
            v150 = [v143 objectForKey:v149];

            v151 = off_1000D8070[0];
            *&v247 = _NSConcreteStackBlock;
            *(&v247 + 1) = 3221225472;
            *&v248 = sub_10004534C;
            *(&v248 + 1) = &unk_10009CB40;
            v146 = v150;
            *&v249 = v146;
            v152 = sub_100044010(v151, &v247);
            v153 = v152 == 0;
            if (v152)
            {
              v154 = @"NANDInfo: SUCCESS in logging kEventName_massStorage_NANDInfo_XNUStats_NANDViews_1 using AnalyticsSendEventLazy\n";
            }

            else
            {
              v154 = @"NANDInfo: FAILED to log kEventName_massStorage_NANDInfo_XNUStats_NANDViews_1 using AnalyticsSendEventLazy\n";
            }

            if (v153)
            {
              v155 = &__kCFBooleanFalse;
            }

            else
            {
              v155 = &__kCFBooleanTrue;
            }

            NSLog(&v154->isa);
            [v140 setObject:v155 forKeyedSubscript:v149];
          }

          v145 = [v143 countByEnumeratingWithState:&v253 objects:&v262 count:16];
        }

        while (v145);
      }

      else
      {
        v146 = 0;
      }

      v13 = objb;
      [objb setObject:v140 forKeyedSubscript:off_1000D8070[0]];
    }

    else
    {
      [v140 setObject:&__kCFBooleanFalse forKeyedSubscript:@"current"];
      [v13 setObject:v140 forKeyedSubscript:off_1000D8070[0]];
    }

LABEL_190:
    v12 = v209;
    if (v13)
    {
      goto LABEL_191;
    }

LABEL_195:
    v196 = [&off_1000D2F78 objectAtIndexedSubscript:v12];
    [v196 UTF8String];
    sub_100012748("%s: unable to log %s to CA", v197, v198, v199, v200, v201, v202, v203, "/Library/Caches/com.apple.xbs/Sources/EmbeddedStorageReporting_libs/NANDInfo/NANDInfo.m");

    v13 = 0;
    v194 = @"%@: %@: unable to log %@\n";
    goto LABEL_196;
  }

  if (a1 == 7)
  {
    v132 = sub_100040740(dword_1000D82D0, v5, v6, v7, v8, v9, v10, v11);
    v13 = objc_alloc_init(NSMutableDictionary);
    if (v132)
    {
      if ([v132 hasNewErrors])
      {
        dword_1000D82D0 = [v132 curNumErrorsInPayload];
        v189 = AnalyticsIsEventUsed();
        NSLog(@"NANDInfo: kEventName_massStorage_NANDInfo_GeomErrorPayload enabled=%d\n", v189);
        [v13 setObject:&__kCFBooleanTrue forKeyedSubscript:off_1000D8080[0]];
        if ([v132 iteratePerPageDictsForMaxPagesWithStatus:12 iteratorCallBack:&stru_10009CBD0])
        {
          goto LABEL_183;
        }
      }
    }

    v190 = off_1000D8080[0];
    v191 = v13;
LABEL_182:
    [v191 setObject:&__kCFBooleanFalse forKeyedSubscript:v190];
LABEL_183:

    goto LABEL_190;
  }

  if (a1 != 8)
  {
LABEL_173:
    v192 = [&off_1000D2F78 objectAtIndexedSubscript:v12];
    NSLog(@"Unexpected step %@", v192);

    goto LABEL_195;
  }

  v13 = objc_alloc_init(NSMutableDictionary);
  v14 = sub_10003E5A0();
  v15 = off_1000D8088;
  if (!v14)
  {
    v193 = v13;
    goto LABEL_186;
  }

  v16 = AnalyticsIsEventUsed();
  NSLog(@"NANDInfo: createAndLogUSBStorageTelemetryToCoreAnalyticsForEvent: kEventName_massStorage_USBStorageInfo_Counters_1 enabled=%d\n", v16);
  v255 = 0u;
  v256 = 0u;
  v253 = 0u;
  v254 = 0u;
  v17 = v14;
  v18 = [v17 countByEnumeratingWithState:&v253 objects:&v262 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v254;
    do
    {
      for (k = 0; k != v19; k = k + 1)
      {
        if (*v254 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v253 + 1) + 8 * k);
        *&v247 = _NSConcreteStackBlock;
        *(&v247 + 1) = 3221225472;
        *&v248 = sub_1000453FC;
        *(&v248 + 1) = &unk_10009CB40;
        *&v249 = v22;
        v23 = sub_100044010(off_1000D8088, &v247);
        if (v23)
        {
          NSLog(@"NANDInfo: SUCCESS in logging kEventName_massStorage_USBStorageInfo_Counters using AnalyticsSendEventLazy\n");
        }

        else
        {
          NSLog(@"NANDInfo: FAILED to log kEventName_massStorage_USBStorageInfo_Counters using AnalyticsSendEventLazy\n");
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v253 objects:&v262 count:16];
    }

    while (v19);
    v12 = v209;
  }

  else
  {
    v23 = 1;
  }

  v195 = [NSNumber numberWithBool:v23];
  [v13 setObject:v195 forKeyedSubscript:off_1000D8088];

LABEL_194:
  if (!v13)
  {
    goto LABEL_195;
  }

LABEL_191:
  v194 = @"%@: %@: successfully logged %@\n";
LABEL_196:
  v204 = [@"/Library/Caches/com.apple.xbs/Sources/EmbeddedStorageReporting_libs/NANDInfo/NANDInfo.m" lastPathComponent];
  v205 = [NSString stringWithUTF8String:"NandInfoExtractToCA_runStep"];
  v206 = [&off_1000D2F78 objectAtIndexedSubscript:v12];
  NSLog(&v194->isa, v204, v205, v206);

LABEL_197:

  return v13;
}

NANDInfo_GeomErrorPayloadManager *sub_100040740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v31 = 0;
  v32 = 0;
  v9 = qword_1000D82C8;
  if (qword_1000D82C8)
  {
    v32 = qword_1000D82C8;
  }

  else
  {
    if (!sub_10003E22C(&v32))
    {
      v21 = "_getGeomErrorPayloadBuffer: Could not get nand_exporter_t";
      goto LABEL_11;
    }

    v9 = v32;
  }

  if (!*(v9 + 4))
  {
    v21 = "_getGeomErrorPayloadBuffer: No io_connection exist";
LABEL_11:
    sub_100012748(v21, a2, a3, a4, a5, a6, a7, a8, v31);
    v20 = 0;
    v19 = 0;
    goto LABEL_12;
  }

  v10 = v9[14];
  if (!v10)
  {
    v21 = "_getGeomErrorPayloadBuffer: No getGeomErrPayloadSelectors exist";
    goto LABEL_11;
  }

  v11 = v10();
  v19 = sub_10003DA48(v9, *(v11 + 4), 0, 0, &v31, 0, 1);
  v20 = v31;
LABEL_12:
  if (v32 && !qword_1000D82C8)
  {
    sub_10003E378(v32);
  }

  if (v19 && v20)
  {
    v22 = [[NANDInfo_GeomErrorPayloadManager alloc] initWithPayloadBuf:v19 bufSize:v20 prevNumErrors:a1];
    v23 = v22;
    if (v22 && [(NANDInfo_GeomErrorPayloadManager *)v22 hasNewErrors])
    {
      [(NANDInfo_GeomErrorPayloadManager *)v23 parseErrorPayloadBuf:v19 bufSize:v20];
      v29 = sub_100040A40(0, 1, 0, v24, v25, v26, v27, v28);
      [(NANDInfo_GeomErrorPayloadManager *)v23 populateOtherStats:v29];
    }
  }

  else
  {
    sub_100012748("gatherGeomErrorPayloadData: invalid geom error payload buffer", v12, v13, v14, v15, v16, v17, v18, v31);
    v23 = 0;
    if (!v19)
    {
      goto LABEL_22;
    }
  }

  free(v19);
LABEL_22:

  return v23;
}

void *CopyWhitelistedNANDFTLInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = sub_100040A40(0, 1, 0, a4, a5, a6, a7, a8);
  if (v15)
  {
    v23 = sub_100040CD8();
    if (v23)
    {
      [v15 addEntriesFromDictionary:v23];
    }

    else
    {
      sub_100012748("CopyWhitelistedNANDFTLInfo: Unable to gather ESR FTL fields", v16, v17, v18, v19, v20, v21, v22, v37);
    }

    v24 = sub_100040EE4(v15);

    if (v24)
    {
      [v15 addEntriesFromDictionary:v24];
    }

    v25 = objc_autoreleasePoolPush();
    v31 = sub_100040A40(0, 0, 0, v26, v27, v28, v29, v30);
    v32 = v31;
    if (v31 && ([v31 objectForKey:@"com.apple.NANDInfo.IsStatMagSupported"], v33 = objc_claimAutoreleasedReturnValue(), v33, v33))
    {
      v34 = [v32 objectForKey:@"com.apple.NANDInfo.IsStatMagSupported"];
      [v15 setObject:v34 forKeyedSubscript:@"com.apple.NANDInfo.IsStatMagSupported"];
    }

    else
    {
      [v15 setObject:&off_1000C0DB8 forKeyedSubscript:@"com.apple.NANDInfo.IsStatMagSupported"];
    }

    objc_autoreleasePoolPop(v25);
  }

  else
  {
    sub_100012748("CopyWhitelistedNANDFTLInfo: Unable to gather other FTL fields", v8, v9, v10, v11, v12, v13, v14, v37);
  }

  v35 = [NSString stringWithUTF8String:sub_100012818()];
  [v15 setObject:v35 forKeyedSubscript:off_1000D80B0[0]];

  return v15;
}

id sub_100040A40(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  v9 = a2;
  v51 = 0;
  v52 = 0;
  v11 = qword_1000D82C8;
  if (qword_1000D82C8)
  {
    v51 = qword_1000D82C8;
  }

  else
  {
    if (!sub_10003E22C(&v51))
    {
      v13 = "gatherASPFTLData: Could not get nand_exporter_t";
      goto LABEL_19;
    }

    v11 = v51;
  }

  if (!*(v11 + 4))
  {
    v13 = "gatherASPFTLData: No io_connection exist";
LABEL_19:
    sub_100012748(v13, a2, a3, a4, a5, a6, a7, a8, v51);
    v18 = 0;
    goto LABEL_42;
  }

  v52 = 0;
  if (!v9)
  {
    v12 = v11[6];
    if (v12)
    {
      goto LABEL_11;
    }

    v36 = "gatherASPFTLData: No getReadStatsSelectors exist";
LABEL_25:
    sub_100012748(v36, a2, a3, a4, a5, a6, a7, a8, v51);
    v18 = 0;
    goto LABEL_45;
  }

  v12 = v11[5];
  if (!v12)
  {
    v36 = "gatherASPFTLData: No getStatsSelectors exist";
    goto LABEL_25;
  }

  v8 = 0;
LABEL_11:
  v14 = v12();
  v15 = sub_10003DA48(v51, *(v14 + 4), 0, v8, &v52, 0, 0);
  v16 = v15;
  if (v15)
  {
    v17 = v52 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    v18 = 0;
    if (!v15)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v19 = malloc_type_calloc(1uLL, 0x20uLL, 0x20040DC1BFBCFuLL);
    if (v19)
    {
      v27 = v19;
      if (a1)
      {
        v28 = (v51[19])(v19, v16, v52);
      }

      else
      {
        v28 = (v51[18])(v19, v16, v52);
      }

      if (v28)
      {
        v18 = sub_1000475C8(v27, 0);
        v37 = [NSString stringWithUTF8String:*v51];
        v38 = [v37 isEqualToString:@"ASPStorage"];

        if (v38)
        {
          v39 = &off_1000C0DD0;
        }

        else
        {
          v39 = &off_1000C0DB8;
        }

        [v18 setObject:v39 forKeyedSubscript:{@"com.apple.NANDInfo.IsANS1Controller", v51}];
        if (v18 && ([v18 objectForKey:@"magazineFWVersion_1"], v47 = objc_claimAutoreleasedReturnValue(), v47, v47))
        {
          v48 = &off_1000C0DD0;
        }

        else
        {
          sub_100012748("Stat Magazine not supported", v40, v41, v42, v43, v44, v45, v46, v51);
          v48 = &off_1000C0DB8;
        }

        [v18 setObject:v48 forKeyedSubscript:@"com.apple.NANDInfo.IsStatMagSupported"];
      }

      else
      {
        sub_100012748("gatherASPFTLData: parseFTL failed", v29, v30, v31, v32, v33, v34, v35, v51);
        v18 = 0;
      }

      v49 = v51[20];
      if (v49)
      {
        (v49)(v27);
      }

      free(v27);
    }

    else
    {
      sub_100012748("gatherASPFTLData: Could not allocate memory for pcxt.ftlData", v20, v21, v22, v23, v24, v25, v26, v51);
      v18 = 0;
    }
  }

  free(v16);
LABEL_42:
  if (!qword_1000D82C8 && v51)
  {
    sub_10003E378(v51);
  }

LABEL_45:

  return v18;
}

id sub_100040CD8()
{
  v0 = objc_alloc_init(NSMutableDictionary);
  if (qword_1000D82B8)
  {
    v1 = [NSDictionary dictionaryWithDictionary:?];
  }

  else
  {
    v1 = objc_alloc_init(NSMutableDictionary);
    if (&_CacheDeleteCopyItemizedPurgeableSpaceWithInfo)
    {
      v2 = objc_autoreleasePoolPush();
      v3 = CacheDeleteCopyItemizedPurgeableSpaceWithInfo();
      if (v3)
      {
        v11 = v3;
        if (!CFDictionaryGetValue(v3, @"com.apple.NANDInfo.CacheDelete.Error"))
        {
          v12 = v11;
          v13 = [(__CFDictionary *)v12 objectForKey:@"CACHE_DELETE_TOTAL_AVAILABLE"];

          if (v13)
          {
            v14 = [(__CFDictionary *)v12 objectForKeyedSubscript:@"CACHE_DELETE_TOTAL_AVAILABLE"];
            [v1 setObject:v14 forKeyedSubscript:off_1000D80E8[0]];
          }

          v15 = [(__CFDictionary *)v12 objectForKey:@"CACHE_DELETE_NONPURGEABLE_AMOUNT"];

          if (v15)
          {
            v16 = [(__CFDictionary *)v12 objectForKeyedSubscript:@"CACHE_DELETE_NONPURGEABLE_AMOUNT"];
            [v1 setObject:v16 forKeyedSubscript:off_1000D80F0[0]];
          }
        }

        CFRelease(v11);
      }

      else
      {
        sub_100012748("getCacheDeleteInfo: unable to get output from CacheDeleteCopyItemizedPurgeableSpaceWithInfo", v4, v5, v6, v7, v8, v9, v10, v22);
      }

      objc_autoreleasePoolPop(v2);
      v17 = qword_1000D82B8;
      qword_1000D82B8 = v1;
      v18 = v1;

      v1 = [NSDictionary dictionaryWithDictionary:qword_1000D82B8];
    }
  }

  if (v1)
  {
    [v0 addEntriesFromDictionary:v1];
  }

  v19 = sub_100043B60();

  if (v19)
  {
    [v0 addEntriesFromDictionary:v19];
  }

  v20 = sub_1000456EC();

  if (v20)
  {
    [v0 addEntriesFromDictionary:v20];
  }

  return v0;
}

id sub_100040EE4(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(NSMutableDictionary);
  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(@"StoreDemoMode", @"com.apple.demo-settings", &keyExistsAndHasValidFormat))
  {
    v3 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3;
  v5 = [NSNumber numberWithInt:v4];
  [v2 setObject:v5 forKeyedSubscript:off_1000D80A8[0]];

  if (v1)
  {
    v13 = [v1 objectForKey:@"nandDesc"];

    if (v13)
    {
      v14 = [v1 objectForKey:@"nandDesc"];
      v15 = [v14 unsignedLongLongValue];

      v16 = [NSNumber numberWithUnsignedLongLong:v15];
      v17 = [off_1000D8180 objectAtIndexedSubscript:0];
      [v2 setObject:v16 forKeyedSubscript:v17];

      v18 = [NSNumber numberWithUnsignedLongLong:WORD1(v15)];
      v19 = [off_1000D8180 objectAtIndexedSubscript:1];
      [v2 setObject:v18 forKeyedSubscript:v19];

      v20 = [NSNumber numberWithUnsignedLongLong:WORD2(v15)];
      v21 = [off_1000D8180 objectAtIndexedSubscript:2];
      [v2 setObject:v20 forKeyedSubscript:v21];

      v22 = [NSNumber numberWithUnsignedLongLong:HIWORD(v15)];
      v23 = [off_1000D8180 objectAtIndexedSubscript:3];
      [v2 setObject:v22 forKeyedSubscript:v23];

      v24 = [v1 objectForKeyedSubscript:@"nandDesc"];
      [v2 setObject:v24 forKeyedSubscript:@"nandDesc"];
    }

    v25 = [v1 objectForKey:@"userPartitionStart"];
    if (v25)
    {
      v26 = v25;
      v27 = [v1 objectForKey:@"intermediatePartitionStart"];

      if (v27)
      {
        v28 = [v1 objectForKey:@"userPartitionStart"];
        v29 = [v28 intValue];

        v30 = [v1 objectForKey:@"intermediatePartitionStart"];
        v31 = [v30 intValue];

        v32 = [NSNumber numberWithUnsignedLongLong:v29 - v31];
        [v2 setObject:v32 forKeyedSubscript:off_1000D8130[0]];
      }
    }

    v33 = [v1 objectForKey:@"utilFormatTime"];

    if (v33)
    {
      v34 = [v1 objectForKey:@"utilFormatTime"];
      v35 = [v34 intValue];

      if (v35 >= 0x386D4381)
      {
        v36 = (v35 - 946684800) / 0x93A80uLL;
      }

      else
      {
        v36 = 0;
      }

      v37 = [NSNumber numberWithUnsignedLongLong:v36];
      [v2 setObject:v37 forKeyedSubscript:off_1000D80E0[0]];
    }

    v38 = [v1 objectForKey:@"averageSLCPECycles"];

    if (v38)
    {
      v39 = [v1 objectForKeyedSubscript:@"averageSLCPECycles"];
      [v2 setObject:v39 forKeyedSubscript:off_1000D80D0[0]];
    }

    v40 = [v1 objectForKey:@"averageTLCPECycles"];

    if (v40)
    {
      v41 = [v1 objectForKeyedSubscript:@"averageTLCPECycles"];
      [v2 setObject:v41 forKeyedSubscript:off_1000D80C8[0]];
    }

    v42 = [v1 objectForKey:@"hostWrites"];

    if (v42)
    {
      v43 = [v1 objectForKeyedSubscript:@"hostWrites"];
      [v2 setObject:v43 forKeyedSubscript:off_1000D80D8[0]];
    }

    v44 = [v1 objectForKey:@"powerOnHours"];

    if (v44)
    {
      v45 = [v1 objectForKeyedSubscript:@"powerOnHours"];
      [v2 setObject:v45 forKeyedSubscript:off_1000D8140[0]];
    }

    v46 = [v1 objectForKey:@"powerOnSeconds"];

    if (v46)
    {
      v47 = [v1 objectForKeyedSubscript:@"powerOnSeconds"];
      [v2 setObject:v47 forKeyedSubscript:off_1000D8148[0]];
    }

    v48 = [v1 objectForKey:@"IND_pool_free"];

    if (v48)
    {
      v49 = [v1 objectForKeyedSubscript:@"IND_pool_free"];
      [v2 setObject:v49 forKeyedSubscript:off_1000D8170];
    }

    v50 = [v1 objectForKey:@"IND_pool_count"];

    if (v50)
    {
      v51 = [v1 objectForKeyedSubscript:@"IND_pool_count"];
      [v2 setObject:v51 forKeyedSubscript:off_1000D8168[0]];
    }

    v52 = 0;
    v53 = 0;
    do
    {
      v54 = [NSString stringWithFormat:@"numBootBlockRefreshSuccess_%d", v53];
      v55 = [v1 objectForKey:v54];

      if (v55)
      {
        v56 = [NSString stringWithFormat:@"numBootBlockRefreshSuccess_%d", v53];
        v57 = [v1 objectForKey:v56];
        v58 = [v57 intValue];
      }

      else
      {
        v58 = 0;
      }

      v59 = [NSString stringWithFormat:@"numBootBlockRefreshFail_%d", v53];
      v60 = [v1 objectForKey:v59];

      if (v60)
      {
        v61 = [NSString stringWithFormat:@"numBootBlockRefreshFail_%d", v53];
        v62 = [v1 objectForKey:v61];
        v58 += [v62 intValue];
      }

      if (v58 > v52)
      {
        v52 = v58;
      }

      v53 = (v53 + 1);
    }

    while (v53 != 8);
    v63 = [NSNumber numberWithUnsignedLongLong:v52];
    [v2 setObject:v63 forKeyedSubscript:off_1000D8128[0]];

    v64 = [v1 objectForKey:@"mspBootBlockCountPerMsp"];

    if (v64)
    {
      v65 = [v1 objectForKey:@"mspBootBlockCountPerMsp"];
      v66 = [v65 intValue];

      v67 = 0;
      v68 = 0;
      v69 = 8;
      do
      {
        v70 = [NSString stringWithFormat:@"mspBootBlockReadFails_%llu", v67];
        v71 = [v1 objectForKey:v70];

        if (v71)
        {
          v72 = [NSString stringWithFormat:@"mspBootBlockReadFails_%llu", v67];
          v73 = [v1 objectForKey:v72];
          v68 += [v73 intValue];
        }

        v67 += v66;
        --v69;
      }

      while (v69);
      v74 = [NSNumber numberWithUnsignedLongLong:v68];
      [v2 setObject:v74 forKeyedSubscript:off_1000D80F8[0]];

      v75 = 0;
      v76 = 8;
      do
      {
        v77 = [NSString stringWithFormat:@"mspBootBlockReadFails_%llu", v69 + 1];
        v78 = [v1 objectForKey:v77];

        if (v78)
        {
          v79 = [NSString stringWithFormat:@"mspBootBlockReadFails_%llu", v69];
          v80 = [v1 objectForKey:v79];
          v75 += [v80 intValue];
        }

        v81 = [NSString stringWithFormat:@"mspBootBlockReadFails_%llu", v69 + 2];
        v82 = [v1 objectForKey:v81];

        if (v82)
        {
          v83 = [NSString stringWithFormat:@"mspBootBlockReadFails_%llu", v69];
          v84 = [v1 objectForKey:v83];
          v75 += [v84 intValue];
        }

        v85 = [NSString stringWithFormat:@"mspBootBlockReadFails_%llu", v69 + 3];
        v86 = [v1 objectForKey:v85];

        if (v86)
        {
          v87 = [NSString stringWithFormat:@"mspBootBlockReadFails_%llu", v69];
          v88 = [v1 objectForKey:v87];
          v75 += [v88 intValue];
        }

        v69 += v66;
        --v76;
      }

      while (v76);
      v89 = [NSNumber numberWithUnsignedLongLong:v75];
      [v2 setObject:v89 forKeyedSubscript:off_1000D8100[0]];

      v90 = 0;
      v91 = 8;
      do
      {
        v92 = [NSString stringWithFormat:@"mspBootBlockProgFails_%llu", v76];
        v93 = [v1 objectForKey:v92];

        if (v93)
        {
          v94 = [NSString stringWithFormat:@"mspBootBlockProgFails_%llu", v76];
          v95 = [v1 objectForKey:v94];
          v90 += [v95 intValue];
        }

        v76 += v66;
        --v91;
      }

      while (v91);
      v96 = [NSNumber numberWithUnsignedLongLong:v90];
      [v2 setObject:v96 forKeyedSubscript:off_1000D8108[0]];

      v97 = 0;
      v98 = 8;
      do
      {
        v99 = [NSString stringWithFormat:@"mspBootBlockProgFails_%llu", v91 + 1];
        v100 = [v1 objectForKey:v99];

        if (v100)
        {
          v101 = [NSString stringWithFormat:@"mspBootBlockProgFails_%llu", v91];
          v102 = [v1 objectForKey:v101];
          v97 += [v102 intValue];
        }

        v103 = [NSString stringWithFormat:@"mspBootBlockProgFails_%llu", v91 + 2];
        v104 = [v1 objectForKey:v103];

        if (v104)
        {
          v105 = [NSString stringWithFormat:@"mspBootBlockProgFails_%llu", v91];
          v106 = [v1 objectForKey:v105];
          v97 += [v106 intValue];
        }

        v107 = [NSString stringWithFormat:@"mspBootBlockProgFails_%llu", v91 + 3];
        v108 = [v1 objectForKey:v107];

        if (v108)
        {
          v109 = [NSString stringWithFormat:@"mspBootBlockProgFails_%llu", v91];
          v110 = [v1 objectForKey:v109];
          v97 += [v110 intValue];
        }

        v91 += v66;
        --v98;
      }

      while (v98);
      v111 = [NSNumber numberWithUnsignedLongLong:v97];
      [v2 setObject:v111 forKeyedSubscript:off_1000D8110[0]];

      v112 = 0;
      v113 = 8;
      do
      {
        v114 = [NSString stringWithFormat:@"mspBootBlockEraseFails_%llu", v98];
        v115 = [v1 objectForKey:v114];

        if (v115)
        {
          v116 = [NSString stringWithFormat:@"mspBootBlockEraseFails_%llu", v98];
          v117 = [v1 objectForKey:v116];
          v112 += [v117 intValue];
        }

        v98 += v66;
        --v113;
      }

      while (v113);
      v118 = [NSNumber numberWithUnsignedLongLong:v112];
      [v2 setObject:v118 forKeyedSubscript:off_1000D8118[0]];

      v119 = 0;
      v120 = 8;
      do
      {
        v121 = [NSString stringWithFormat:@"mspBootBlockEraseFails_%llu", v113 + 1];
        v122 = [v1 objectForKey:v121];

        if (v122)
        {
          v123 = [NSString stringWithFormat:@"mspBootBlockEraseFails_%llu", v113];
          v124 = [v1 objectForKey:v123];
          v119 += [v124 intValue];
        }

        v125 = [NSString stringWithFormat:@"mspBootBlockEraseFails_%llu", v113 + 2];
        v126 = [v1 objectForKey:v125];

        if (v126)
        {
          v127 = [NSString stringWithFormat:@"mspBootBlockEraseFails_%llu", v113];
          v128 = [v1 objectForKey:v127];
          v119 += [v128 intValue];
        }

        v129 = [NSString stringWithFormat:@"mspBootBlockEraseFails_%llu", v113 + 3];
        v130 = [v1 objectForKey:v129];

        if (v130)
        {
          v131 = [NSString stringWithFormat:@"mspBootBlockEraseFails_%llu", v113];
          v132 = [v1 objectForKey:v131];
          v119 += [v132 intValue];
        }

        v113 += v66;
        --v120;
      }

      while (v120);
      v133 = [NSNumber numberWithUnsignedLongLong:v119];
      [v2 setObject:v133 forKeyedSubscript:off_1000D8120[0]];
    }
  }

  else
  {
    sub_100012748("gatherASPFTLOtherData_Stats: ftlDict is NULL", v6, v7, v8, v9, v10, v11, v12, v135);
  }

  return v2;
}

id CopySMagHistoryNANDFTLInfo(uint64_t a1, uint64_t a2, int a3)
{
  v6 = &MSURetrievePreviousRestoreDate_ptr;
  v7 = objc_alloc_init(NSMutableDictionary);
  [v7 setObject:&off_1000C0DB8 forKeyedSubscript:@"com.apple.NANDInfo.IsStatMagSupported"];
  [v7 setObject:@"NA" forKeyedSubscript:@"BuildInSM"];
  v13 = sub_100040A40(0, 1, 0, v8, v9, v10, v11, v12);
  v19 = v13;
  if (a2 | a1)
  {
    v20 = sub_100040A40(0, 0, a1, v14, v15, v16, v17, v18);
  }

  else
  {
    v20 = v13;
  }

  v28 = v20;
  v138 = v7;
  if (a1 >= a2)
  {
    sub_100012748("CopySMagHistoryNANDFTLInfo: parameters must satisfy lookBackTimeHours1 < lookBackTimeHours2 for deltas", v21, v22, v23, v24, v25, v26, v27, v134);
    v81 = v28;
  }

  else
  {
    v29 = sub_100040A40(0, 0, a2, v23, v24, v25, v26, v27);
    v30 = v29;
    v136 = v19;
    if (v29)
    {
      v31 = [v29 objectForKey:@"osBuildStr"];

      if (v31)
      {
        v32 = [v30 objectForKey:@"osBuildStr"];
        v33 = sub_100046274([v32 unsignedLongLongValue]);
        [v7 setObject:v33 forKeyedSubscript:@"BuildInSM"];
      }

      v34 = [v30 objectForKey:@"magazineInstanceMeta"];

      if (v34)
      {
        v35 = [v30 objectForKey:@"magazineInstanceMeta"];
        v36 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", ([v35 unsignedLongLongValue] >> 24));
        [v30 setObject:v36 forKeyedSubscript:@"ESR_magazineTimeStamp"];
      }
    }

    if (!v28)
    {
      goto LABEL_46;
    }

    v37 = [v28 objectForKey:@"magazineInstanceMeta"];

    if (v37)
    {
      v38 = [v28 objectForKey:@"magazineInstanceMeta"];
      v39 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", ([v38 unsignedLongLongValue] >> 24));
      [v28 setObject:v39 forKeyedSubscript:@"ESR_magazineTimeStamp"];

      v40 = [v28 objectForKey:@"com.apple.NANDInfo.IsStatMagSupported"];

      if (v40)
      {
        v41 = [v28 objectForKey:@"com.apple.NANDInfo.IsStatMagSupported"];
        [v7 setObject:v41 forKeyedSubscript:@"com.apple.NANDInfo.IsStatMagSupported"];
      }
    }

    if (v30)
    {
      v42 = [v28 objectForKey:@"ESR_magazineTimeStamp"];
      if (v42)
      {
        v50 = v42;
        v51 = [v30 objectForKey:@"ESR_magazineTimeStamp"];

        if (v51)
        {
          v52 = [v28 objectForKey:@"ESR_magazineTimeStamp"];
          v53 = [v52 unsignedLongLongValue];
          v54 = [v30 objectForKey:@"ESR_magazineTimeStamp"];
          v55 = (v53 - [v54 unsignedLongLongValue]) / 86400.0;

          v56 = [NSNumber numberWithDouble:v55];
          [v7 setObject:v56 forKeyedSubscript:off_1000D8138[0]];

          v142 = 0u;
          v143 = 0u;
          v140 = 0u;
          v141 = 0u;
          v135 = v28;
          v57 = v28;
          v58 = [v57 countByEnumeratingWithState:&v140 objects:v144 count:16];
          if (!v58)
          {
            goto LABEL_44;
          }

          v59 = v58;
          v60 = *v141;
          v137 = a3 & 0xFFFFFFFD;
          v139 = a3 - 1;
          while (1)
          {
            for (i = 0; i != v59; i = i + 1)
            {
              if (*v141 != v60)
              {
                objc_enumerationMutation(v57);
              }

              v62 = *(*(&v140 + 1) + 8 * i);
              v63 = [v30 objectForKey:v62];
              if (v63)
              {
                goto LABEL_25;
              }

              v64 = [v57 objectForKey:v62];
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();

              if (isKindOfClass)
              {
                v63 = [v57 objectForKey:v62];
                [v7 setObject:v63 forKeyedSubscript:v62];
LABEL_25:
              }

              v66 = [v30 objectForKey:v62];
              if (v66)
              {
                v67 = v66;
                v68 = [off_1000D80A0 objectForKey:v62];
                if (!v68)
                {
                  goto LABEL_34;
                }

                v69 = v68;
                v70 = [v30 objectForKey:v62];
                objc_opt_class();
                v71 = objc_opt_isKindOfClass();

                v7 = v138;
                if (v71)
                {
                  if (v55 <= 0.0)
                  {
                    v72 = [v30 objectForKey:v62];
                    v75 = [v72 unsignedLongLongValue];
                  }

                  else
                  {
                    v72 = [v57 objectForKey:v62];
                    v73 = [v72 unsignedLongLongValue];
                    v74 = [v30 objectForKey:v62];
                    v75 = (v73 - [v74 unsignedLongLongValue]);

                    v7 = v138;
                  }

                  if (!v137)
                  {
                    v67 = [NSNumber numberWithDouble:v75];
                    [v7 setObject:v67 forKeyedSubscript:v62];
LABEL_34:
                  }
                }
              }

              v76 = [off_1000D8098[0] objectForKey:v62];
              if (v76)
              {

                if (v139 <= 1)
                {
                  v77 = [v30 objectForKey:v62];

                  if (v77)
                  {
                    v78 = v30;
                  }

                  else
                  {
                    v79 = [v57 objectForKey:v62];

                    if (!v79)
                    {
                      continue;
                    }

                    v78 = v57;
                  }

                  v80 = [v78 objectForKey:v62];
                  [v7 setObject:v80 forKeyedSubscript:v62];
                }
              }
            }

            v59 = [v57 countByEnumeratingWithState:&v140 objects:v144 count:16];
            if (!v59)
            {
LABEL_44:

              v28 = v135;
              v6 = &MSURetrievePreviousRestoreDate_ptr;
              goto LABEL_48;
            }
          }
        }
      }

      sub_100012748("CopySMagHistoryNANDFTLInfo: Unable to gather other stats magazine deltas", v43, v44, v45, v46, v47, v48, v49, v134);
    }

    else
    {
LABEL_46:
      [v7 addEntriesFromDictionary:v30];
    }

LABEL_48:
    v81 = v7;

    v19 = v136;
  }

  v89 = sub_100040CD8();
  if (v89)
  {
    [v81 addEntriesFromDictionary:v89];
  }

  else
  {
    sub_100012748("CopySMagHistoryNANDFTLInfo: Unable to gather ESR FTL fields", v82, v83, v84, v85, v86, v87, v88, v134);
  }

  v90 = sub_100040EE4(v19);

  if (v90)
  {
    [v81 addEntriesFromDictionary:v90];
  }

  else
  {
    sub_100012748("CopySMagHistoryNANDFTLInfo: Unable to gather ESR FTL fields", v91, v92, v93, v94, v95, v96, v97, v134);
  }

  v98 = v81;
  v99 = v19;
  v100 = objc_alloc_init(v6[244]);
  if ((!v98 || [v98 count]) && (!v99 || objc_msgSend(v99, "count")))
  {
    v101 = [v98 objectForKey:@"bandErases"];
    if (!v101)
    {
      goto LABEL_66;
    }

    v102 = v101;
    v103 = [v99 objectForKey:@"numVirtualBlocks"];
    if (v103)
    {
      v104 = v103;
      v105 = [v99 objectForKey:@"userPartitionStart"];

      if (!v105)
      {
        goto LABEL_66;
      }

      v106 = [v99 objectForKey:@"numVirtualBlocks"];
      v107 = [v106 unsignedLongLongValue];
      v108 = [v99 objectForKey:@"userPartitionStart"];
      v109 = [v108 unsignedLongLongValue];

      v110 = 0.0;
      if (v107 != v109)
      {
        v111 = [v98 objectForKey:@"bandErases"];
        v110 = [v111 unsignedLongLongValue] / (v107 - v109);
      }

      v102 = [NSNumber numberWithDouble:v110];
      [v100 setObject:v102 forKeyedSubscript:@"averageTLCPECycles"];
      v7 = v138;
    }

LABEL_66:
    v112 = [v98 objectForKey:@"intermediateBandErases"];
    if (v112)
    {
      v113 = v112;
      v114 = [v99 objectForKey:@"userPartitionStart"];
      if (!v114)
      {
LABEL_72:

        goto LABEL_73;
      }

      v115 = v114;
      v116 = [v99 objectForKey:@"intermediatePartitionStart"];

      if (v116)
      {
        v117 = [v99 objectForKey:@"userPartitionStart"];
        v118 = [v117 unsignedLongLongValue];
        v119 = [v99 objectForKey:@"intermediatePartitionStart"];
        v120 = [v119 unsignedLongLongValue];

        v121 = 0.0;
        if (v118 != v120)
        {
          v122 = [v98 objectForKey:@"intermediateBandErases"];
          v121 = [v122 unsignedLongLongValue] / (v118 - v120);
        }

        v113 = [NSNumber numberWithDouble:v121];
        [v100 setObject:v113 forKeyedSubscript:@"averageSLCPECycles"];
        v7 = v138;
        goto LABEL_72;
      }
    }

LABEL_73:
    v123 = v100;
    goto LABEL_75;
  }

  v123 = 0;
LABEL_75:

  if (v123)
  {
    [v98 addEntriesFromDictionary:v123];
  }

  else
  {
    sub_100012748("CopySMagHistoryNANDFTLInfo: Unable to gather new delta fields", v124, v125, v126, v127, v128, v129, v130, v134);
  }

  v131 = [NSString stringWithUTF8String:sub_100012818()];
  [v98 setObject:v131 forKeyedSubscript:off_1000D80B0[0]];

  v132 = v98;
  return v132;
}

id CopySMagNANDFTLCustomHistoryInfo(int a1)
{
  v2 = objc_alloc_init(NSMutableDictionary);
  v8 = sub_100040A40(0, 0, 0, v3, v4, v5, v6, v7);
  v9 = [v8 objectForKey:@"com.apple.NANDInfo.IsStatMagSupported"];

  if (v9)
  {
    v10 = [v8 objectForKey:@"com.apple.NANDInfo.IsStatMagSupported"];
    v11 = [v10 unsignedLongLongValue];

    if (!v11)
    {
      v12 = [NSString stringWithUTF8String:sub_100012818()];
      [v2 setObject:v12 forKeyedSubscript:@"com.apple.NANDInfo.ErrorMessage"];
      goto LABEL_50;
    }
  }

  if (a1 || ![off_1000D8178[0] count])
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    goto LABEL_48;
  }

  v15 = 0;
  v16 = 0;
  v14 = 0;
  v13 = 0;
  v12 = 0;
  v65 = v2;
  do
  {
    v68 = v13;
    v69 = [off_1000D8178[0] objectAtIndexedSubscript:v15];

    v22 = sub_100040A40(0, 0, (4 * ++v15), v17, v18, v19, v20, v21);

    v23 = v8;
    v24 = v22;
    v13 = objc_alloc_init(NSMutableDictionary);
    [v13 setObject:&off_1000C0DB8 forKeyedSubscript:@"com.apple.NANDInfo.IsStatMagSupported"];
    v70 = v23;
    v71 = v24;
    if (!v23)
    {
      v16 = v69;
      if (!v24)
      {
        goto LABEL_36;
      }

LABEL_13:
      v26 = [v24 objectForKey:@"magazineInstanceMeta"];

      if (!v26)
      {
        goto LABEL_36;
      }

      goto LABEL_14;
    }

    v25 = [v23 objectForKey:@"magazineInstanceMeta"];
    if (!v25)
    {
      v16 = v69;
      if (!v24)
      {
        goto LABEL_36;
      }

      goto LABEL_13;
    }

LABEL_14:
    v66 = v15;
    v27 = [v70 objectForKey:@"com.apple.NANDInfo.IsStatMagSupported"];

    if (v27)
    {
      v28 = [v70 objectForKey:@"com.apple.NANDInfo.IsStatMagSupported"];
      [v13 setObject:v28 forKeyedSubscript:@"com.apple.NANDInfo.IsStatMagSupported"];
    }

    v29 = v70;
    v30 = v24;
    if (v70 && ([v29 objectForKey:@"magazineInstanceMeta"], v31 = objc_claimAutoreleasedReturnValue(), v31, v31))
    {
      v32 = [v29 objectForKey:@"magazineInstanceMeta"];
      v33 = ([v32 unsignedLongLongValue] >> 24);
    }

    else
    {
      v33 = 0;
    }

    v34 = 0.0;
    v67 = v14;
    if (v30)
    {
      v35 = [v30 objectForKey:@"magazineInstanceMeta"];

      if (v35)
      {
        v36 = [v30 objectForKey:@"magazineInstanceMeta"];
        v37 = [v36 unsignedLongLongValue] >> 24;

        v34 = (v33 - v37) / 86400.0;
      }
    }

    v38 = [NSNumber numberWithDouble:v34];
    [v13 setObject:v38 forKeyedSubscript:off_1000D8138[0]];

    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v39 = v30;
    v40 = [v39 countByEnumeratingWithState:&v72 objects:v76 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v73;
      do
      {
        for (i = 0; i != v41; i = i + 1)
        {
          if (*v73 != v42)
          {
            objc_enumerationMutation(v39);
          }

          v44 = *(*(&v72 + 1) + 8 * i);
          v45 = [v29 objectForKey:v44];

          if (v45)
          {
            v46 = 0.0;
            if (v34 > 0.0)
            {
              v47 = [v29 objectForKey:v44];
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();

              if (isKindOfClass)
              {
                v49 = [v29 objectForKey:v44];
                v50 = [v49 unsignedLongLongValue];
                v51 = [v39 objectForKey:v44];
                v46 = (v50 - [v51 unsignedLongLongValue]);
              }
            }

            v52 = [NSNumber numberWithDouble:v46];
            [v13 setObject:v52 forKeyedSubscript:v44];
          }
        }

        v41 = [v39 countByEnumeratingWithState:&v72 objects:v76 count:16];
      }

      while (v41);
    }

    v53 = [NSString stringWithUTF8String:sub_100012818()];
    [v13 setObject:v53 forKeyedSubscript:off_1000D80B0[0]];

    v2 = v65;
    v15 = v66;
    v14 = v67;
    v16 = v69;
LABEL_36:

    [v2 setObject:&off_1000C0DB8 forKeyedSubscript:v16];
    v54 = [v13 objectForKey:@"gcWrites"];

    if (v54)
    {
      v55 = [v13 objectForKey:@"gcWrites"];
      v56 = [v55 unsignedLongLongValue];

      if (v56)
      {
        v57 = 1.0;
        v58 = 1;
        while (1)
        {
          v59 = v14;
          v14 = [NSString stringWithFormat:@"vcurve_%d", v58];

          v60 = [v71 objectForKey:v14];

          if (v60)
          {
            v61 = [v71 objectForKey:v14];
            v62 = [v61 unsignedLongLongValue];

            if (v14)
            {
              v57 = v57 - v62 * (v58 * -0.033 + 1.0);
            }
          }

          if (v57 <= 0.0)
          {
            break;
          }

          v58 = (v58 + 1);
          if (v58 == 32)
          {
            LODWORD(v58) = 32;
            break;
          }
        }

        v63 = [NSNumber numberWithDouble:1.0 / (v58 * -0.033 + 1.0)];
        [v2 setObject:v63 forKeyedSubscript:v16];
      }
    }

    v12 = v71;

    v8 = v12;
  }

  while ([off_1000D8178[0] count] > v15);

  v8 = v12;
LABEL_48:

LABEL_50:
  return v2;
}

id CopyWhitelistedNANDMSPInfo()
{
  v0 = &MSURetrievePreviousRestoreDate_ptr;
  v116 = objc_alloc_init(NSMutableDictionary);
  v121 = 0;
  v122 = 0;
  v8 = off_1000D8000;
  v9 = qword_1000D82C8;
  v10 = &MSURetrievePreviousRestoreDate_ptr;
  if (qword_1000D82C8)
  {
    v121 = qword_1000D82C8;
  }

  else
  {
    if (!sub_10003E22C(&v121))
    {
      v33 = "gatherASPMSPData: Could not get nand_exporter_t";
      goto LABEL_16;
    }

    v9 = v121;
  }

  v11 = v9[7];
  if (!v11 || !v9[17])
  {
    v33 = "gatherASPMSPData: Controller does not support MSP data";
LABEL_16:
    sub_100012748(v33, v1, v2, v3, v4, v5, v6, v7, v112);
    v14 = 0;
    goto LABEL_17;
  }

  v12 = v11();
  if (!*(v121 + 4))
  {
    v33 = "gatherASPMSPData: No io_connection exist";
    goto LABEL_16;
  }

  v13 = v12;
  v14 = objc_alloc_init(NSMutableDictionary);
  v15 = malloc_type_calloc(1uLL, 0x10uLL, 0x10200405F07FB98uLL);
  if (!v15)
  {
    sub_100012748("gatherASPMSPData: Memory allocation issue!", v16, v17, v18, v19, v20, v21, v22, v112);
    goto LABEL_17;
  }

  v23 = v15;
  v24 = 0;
  v15[8] = 0;
  while (1)
  {
    v122 = 0;
    v25 = sub_10003DA48(v121, *(v13 + 4), 0, v24, &v122, 0, 1);
    if (!v25)
    {
      break;
    }

    free(v25);
    if (++v24 == 9)
    {
      v23[8] = 9;
      goto LABEL_48;
    }
  }

  v23[8] = v24;
  if (v24)
  {
LABEL_48:
    v82 = malloc_type_calloc(v24, 0x20uLL, 0x20040DC1BFBCFuLL);
    if (v82)
    {
      v83 = v82;
      *v23 = v82;
      if (!v23[8])
      {
        v104 = 0;
LABEL_72:
        free(v83);
        goto LABEL_73;
      }

      v114 = v14;
      v84 = 0;
      v85 = 0;
      v86 = 0;
      while (1)
      {
        v122 = 0;
        v87 = sub_10003DA48(v121, *(v13 + 4), 0, v85, &v122, 0, 0);
        if (!v87)
        {
          sub_100012748("gatherASPMSPData: getNANDMSPBuffer tunnel command failed !", v88, v89, v90, v91, v92, v93, v94, v112);
          goto LABEL_63;
        }

        v95 = v87;
        if (!(v121[17])(v83, v87, v122))
        {
          break;
        }

        v103 = v85 < v23[8];
        v104 = sub_1000475C8((*v23 + v84), 0);

        v112 = v85;
        v105 = [NSString stringWithFormat:@"%d"];
        [v114 setObject:v104 forKeyedSubscript:v105];

        v106 = v121[20];
        if (v106)
        {
          (v106)(*v23 + v84);
        }

        v83 += 32 * v103;
        free(v95);
        ++v85;
        v107 = v23[8];
        v84 += 32;
        v86 = v104;
        v0 = &MSURetrievePreviousRestoreDate_ptr;
        if (v85 >= v107)
        {
          v8 = off_1000D8000;
          goto LABEL_65;
        }
      }

      sub_100012748("gatherASPMSPData: parseMSP failed !", v96, v97, v98, v99, v100, v101, v102, v112);
      free(v95);
LABEL_63:
      v8 = off_1000D8000;
      goto LABEL_64;
    }

    v114 = v14;
    v108 = "gatherASPMSPData: Could not allocate memory for genericPCxt";
  }

  else
  {
    v114 = v14;
    v108 = "gatherASPMSPData: Unable to gather any NAND MSP fields";
  }

  sub_100012748(v108, v26, v27, v28, v29, v30, v31, v32, v112);
  v86 = 0;
LABEL_64:
  LODWORD(v107) = v23[8];
  v104 = v86;
LABEL_65:
  v14 = v114;
  if (v107)
  {
    v109 = 0;
    v110 = 0;
    do
    {
      if (*v23)
      {
        v111 = v121[20];
        if (v111)
        {
          (v111)(*v23 + v109);
          LODWORD(v107) = v23[8];
        }
      }

      ++v110;
      v109 += 32;
    }

    while (v110 < v107);
  }

  v83 = *v23;
  v10 = &MSURetrievePreviousRestoreDate_ptr;
  if (*v23)
  {
    goto LABEL_72;
  }

LABEL_73:
  free(v23);

LABEL_17:
  if (!v8[89] && v121)
  {
    sub_10003E378(v121);
  }

  if (v14)
  {
    v48 = sub_100043550();
    if (!v48)
    {
      sub_100012748("CopyWhitelistedNANDMSPInfo: Unable to gather ESR MSP fields", v41, v42, v43, v44, v45, v46, v47, v112);
    }

    v119 = 0u;
    v120 = 0u;
    v117 = 0u;
    v118 = 0u;
    v113 = v14;
    v49 = v14;
    v50 = [v49 countByEnumeratingWithState:&v117 objects:v123 count:16];
    if (v50)
    {
      v51 = v50;
      v52 = 0;
      v53 = *v118;
      v115 = v48;
      do
      {
        for (i = 0; i != v51; i = i + 1)
        {
          if (*v118 != v53)
          {
            objc_enumerationMutation(v49);
          }

          v55 = *(*(&v117 + 1) + 8 * i);
          v56 = [v49 objectForKey:v55];
          v57 = v0[244];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v58 = [v49 objectForKey:v55];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            v0 = &MSURetrievePreviousRestoreDate_ptr;
            if (isKindOfClass)
            {
              v60 = [NSMutableDictionary alloc];
              v61 = [v49 objectForKey:v55];
              v62 = [v60 initWithDictionary:v61];

              v52 = v62;
              v70 = objc_alloc_init(NSMutableDictionary);
              if (v52)
              {
                v71 = [v52 objectForKey:off_1000D81E8];

                if (v71)
                {
                  v72 = [v52 objectForKey:off_1000D81E8];
                  v73 = [v72 unsignedLongLongValue];

                  v74 = [NSNumber numberWithUnsignedLongLong:v73];
                  [v70 setObject:v74 forKeyedSubscript:off_1000D81F0];

                  v75 = [NSNumber numberWithUnsignedLongLong:WORD1(v73)];
                  [v70 setObject:v75 forKeyedSubscript:off_1000D81F8];

                  v76 = [NSNumber numberWithUnsignedLongLong:WORD2(v73)];
                  [v70 setObject:v76 forKeyedSubscript:off_1000D8200];

                  v48 = v115;
                  v77 = HIWORD(v73);
                  v0 = &MSURetrievePreviousRestoreDate_ptr;
                  v78 = [NSNumber numberWithUnsignedLongLong:v77];
                  [v70 setObject:v78 forKeyedSubscript:off_1000D8208];
                }
              }

              else
              {
                sub_100012748("gatherMSPOtherData: Unable to gather other MSP data", v63, v64, v65, v66, v67, v68, v69, v112);
              }

              [v52 addEntriesFromDictionary:v70];
              if (v48 && v52)
              {
                [v52 addEntriesFromDictionary:v48];
              }

              [v116 setObject:v52 forKeyedSubscript:v55];
            }
          }

          else
          {
          }
        }

        v51 = [v49 countByEnumeratingWithState:&v117 objects:v123 count:16];
      }

      while (v51);
    }

    else
    {
      v52 = 0;
    }

    v10 = &MSURetrievePreviousRestoreDate_ptr;
    v14 = v113;
  }

  else
  {
    sub_100012748("CopyWhitelistedNANDMSPInfo: Unable to gather MSP fields", v34, v35, v36, v37, v38, v39, v40, v112);
    v52 = 0;
  }

  v79 = [v10[211] stringWithUTF8String:sub_100012818()];
  [v116 setObject:v79 forKeyedSubscript:off_1000D80B0[0]];

  v80 = v116;
  return v80;
}

id sub_100043550()
{
  v0 = objc_alloc_init(NSMutableDictionary);
  v6 = sub_100040A40(0, 1, 0, v1, v2, v3, v4, v5);
  v14 = v6;
  if (v6)
  {
    v15 = sub_100040EE4(v6);
    if (v15)
    {
      v16 = v15;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v17 = off_1000D81D0;
      v18 = [v17 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v27;
        do
        {
          for (i = 0; i != v19; i = i + 1)
          {
            if (*v27 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v26 + 1) + 8 * i);
            v23 = [v16 objectForKey:{v22, v26}];

            if (v23)
            {
              v24 = [v16 objectForKeyedSubscript:v22];
              [v0 setObject:v24 forKeyedSubscript:v22];
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v26 objects:v30 count:16];
        }

        while (v19);
      }
    }
  }

  else
  {
    sub_100012748("gatherASPOtherData: Unable to get FTL stats", v7, v8, v9, v10, v11, v12, v13, v26);
  }

  return v0;
}

id CopyWhitelistedStorageStats()
{
  v0 = objc_alloc_init(NSMutableDictionary);
  v1 = sub_100043550();
  v2 = v1;
  if (v1)
  {
    v3 = [v1 objectForKey:off_1000D80E0[0]];

    if (v3)
    {
      v4 = [v2 objectForKeyedSubscript:off_1000D80E0[0]];
      [v0 setObject:v4 forKeyedSubscript:off_1000D80E0[0]];
    }

    v5 = [v2 objectForKey:off_1000D80C0[0]];

    if (v5)
    {
      v6 = [v2 objectForKeyedSubscript:off_1000D80C0[0]];
      [v0 setObject:v6 forKeyedSubscript:off_1000D80C0[0]];
    }

    v7 = [v2 objectForKey:off_1000D80D0[0]];

    if (v7)
    {
      v8 = [v2 objectForKeyedSubscript:off_1000D80D0[0]];
      [v0 setObject:v8 forKeyedSubscript:off_1000D80D0[0]];
    }

    v9 = [v2 objectForKey:off_1000D80C8[0]];

    if (v9)
    {
      v10 = [v2 objectForKeyedSubscript:off_1000D80C8[0]];
      [v0 setObject:v10 forKeyedSubscript:off_1000D80C8[0]];
    }

    v11 = [v2 objectForKey:off_1000D80D8[0]];

    if (v11)
    {
      v12 = [v2 objectForKeyedSubscript:off_1000D80D8[0]];
      [v0 setObject:v12 forKeyedSubscript:off_1000D80D8[0]];
    }

    v13 = [v2 objectForKey:off_1000D80B8[0]];

    if (v13)
    {
      v14 = [v2 objectForKeyedSubscript:off_1000D80B8[0]];
      [v0 setObject:v14 forKeyedSubscript:off_1000D80B8[0]];
    }
  }

  v15 = [NSNumber numberWithUnsignedLongLong:sub_100045404(1682065731)];
  [v0 setObject:v15 forKeyedSubscript:off_1000D8188[0]];

  v16 = [NSNumber numberWithUnsignedLongLong:sub_100045404(1682723912)];
  [v0 setObject:v16 forKeyedSubscript:off_1000D8190[0]];

  v17 = [NSNumber numberWithUnsignedLongLong:sub_1000455C4(1768322865)];
  [v0 setObject:v17 forKeyedSubscript:off_1000D81B0[0]];

  v18 = [NSNumber numberWithUnsignedLongLong:sub_1000455C4(1682065731)];
  [v0 setObject:v18 forKeyedSubscript:off_1000D8198[0]];

  v19 = [NSNumber numberWithUnsignedLongLong:sub_1000455C4(1682723912)];
  [v0 setObject:v19 forKeyedSubscript:off_1000D81C0[0]];

  v20 = [NSNumber numberWithUnsignedLongLong:sub_1000455C4(1682138727)];
  [v0 setObject:v20 forKeyedSubscript:off_1000D81A0[0]];

  v21 = [NSNumber numberWithUnsignedLongLong:sub_1000455C4(1715693159)];
  [v0 setObject:v21 forKeyedSubscript:off_1000D81A8[0]];

  v22 = [NSNumber numberWithUnsignedLongLong:sub_1000455C4(1852139127)];
  [v0 setObject:v22 forKeyedSubscript:off_1000D81C8];

  v23 = [NSNumber numberWithUnsignedLongLong:sub_1000455C4(1280329037)];
  [v0 setObject:v23 forKeyedSubscript:off_1000D81B8[0]];

  if (!v0)
  {
    sub_100012748("CopyWhitelistedNANDFTLInfo: Unable to gather other FTL fields", v24, v25, v26, v27, v28, v29, v30, v33);
  }

  v31 = [NSString stringWithUTF8String:sub_100012818()];
  [v0 setObject:v31 forKeyedSubscript:off_1000D80B0[0]];

  return v0;
}

id sub_100043B60()
{
  if (qword_1000D82C0)
  {
    v0 = [NSDictionary dictionaryWithDictionary:?];
  }

  else
  {
    v1 = sub_100045E70();
    v2 = [v1 objectForKey:@"swapins"];
    if (v2)
    {
      v3 = v2;
      v4 = [v1 objectForKey:@"vm.pagesize"];

      if (v4)
      {
        v5 = [v1 objectForKey:@"swapins"];
        v6 = [v5 longLongValue];
        v7 = [v1 objectForKey:@"vm.pagesize"];
        v8 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v7 longLongValue] * v6);
        [v1 setObject:v8 forKeyedSubscript:off_1000D8150[0]];
      }
    }

    v9 = [v1 objectForKey:@"swapouts"];
    if (v9)
    {
      v10 = v9;
      v11 = [v1 objectForKey:@"vm.pagesize"];

      if (v11)
      {
        v12 = [v1 objectForKey:@"swapouts"];
        v13 = [v12 longLongValue];
        v14 = [v1 objectForKey:@"vm.pagesize"];
        v15 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v14 longLongValue] * v13);
        [v1 setObject:v15 forKeyedSubscript:off_1000D8158[0]];
      }
    }

    v16 = sub_100045C64();
    v17 = [NSNumber numberWithUnsignedInt:v16];
    [v1 setObject:v17 forKeyedSubscript:@"ESR_DaysSinceLastSWUpdate"];

    if (v16 <= 0xD)
    {
      v18 = &off_1000C0DB8;
    }

    else
    {
      v18 = &off_1000C0DD0;
    }

    [v1 setObject:v18 forKeyedSubscript:@"ESR_Gt2WeeksSinceSWUpdate"];
    sub_100045D24();
    v19 = [NSNumber numberWithInt:sub_100045D24()];
    [v1 setObject:v19 forKeyedSubscript:@"ESR_WeeksSinceLastSWRestore"];

    v20 = qword_1000D82C0;
    qword_1000D82C0 = v1;
    v21 = v1;

    v0 = [NSDictionary dictionaryWithDictionary:qword_1000D82C0];
  }

  return v0;
}

id LogStorageUIDatatoCA(void *a1, int a2)
{
  v2 = sub_1000462EC(a1);
  v14 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_1000440CC;
        v16[3] = &unk_10009CB40;
        v16[4] = v8;
        if (sub_100044010(off_1000D8078[0], v16))
        {
          if (a2)
          {
            [v14 addObject:v8];
          }
        }

        else
        {
          v9 = [@"/Library/Caches/com.apple.xbs/Sources/EmbeddedStorageReporting_libs/NANDInfo/NANDInfo.m" lastPathComponent];
          v10 = [NSString stringWithUTF8String:"LogStorageUIDatatoCA"];
          NSLog(@"%@: %@: FAILED to log %@ using AnalyticsSendEventLazy\n", v9, v10, off_1000D8078[0]);
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  if (a2)
  {
    v11 = v14;
    v12 = v14;
  }

  else
  {
    v12 = 0;
    v11 = v14;
  }

  return v12;
}

uint64_t sub_100044010(uint64_t a1, void *a2)
{
  v2 = a2;
  v10 = v2;
  if (&_AnalyticsSendEventLazy)
  {
    v14 = v2;
    v11 = AnalyticsSendEventLazy();
  }

  else
  {
    sub_100012748("AnalyticsSendEventLazy SPI does not exist", v3, v4, v5, v6, v7, v8, v9, v13);
    v11 = 0;
  }

  return v11;
}

id sub_1000440D4()
{
  v0 = +[NSUserDefaults standardUserDefaults];
  v1 = objc_alloc_init(NSMutableDictionary);
  context = objc_autoreleasePoolPush();
  v2 = objc_alloc_init(NSMutableDictionary);
  v114 = objc_alloc_init(NSMutableDictionary);
  v3 = sub_100045E70();
  v4 = [v0 objectForKey:@"previous_xnustats_dict"];

  if (v4)
  {
    v116 = [v0 objectForKey:@"previous_xnustats_dict"];
  }

  else
  {
    [v0 setObject:v3 forKey:@"previous_xnustats_dict"];
    [v0 synchronize];
    v116 = 0;
  }

  v115 = v2;
  if (!v3)
  {
    v7 = 0;
    goto LABEL_88;
  }

  v109 = v1;
  v110 = v0;
  [v2 setObject:@"current" forKeyedSubscript:@"ESR_Cadence"];
  v139 = 0u;
  v140 = 0u;
  v137 = 0u;
  v138 = 0u;
  v5 = [&off_1000D2FC0 countByEnumeratingWithState:&v137 objects:v146 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v138;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v138 != v8)
        {
          objc_enumerationMutation(&off_1000D2FC0);
        }

        v10 = *(*(&v137 + 1) + 8 * i);
        v11 = [v3 objectForKey:v10];
        if (v11)
        {
          v12 = v11;
          v13 = [v3 objectForKey:v10];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v15 = [v10 stringByReplacingOccurrencesOfString:@"." withString:@"_"];
            v16 = [NSString stringWithFormat:@"host_vm_info64_%@", v15];

            v17 = [v3 objectForKey:v10];
            [v115 setObject:v17 forKeyedSubscript:v16];

            v7 = v16;
          }
        }
      }

      v6 = [&off_1000D2FC0 countByEnumeratingWithState:&v137 objects:v146 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v135 = 0u;
  v136 = 0u;
  v133 = 0u;
  v134 = 0u;
  v18 = [&off_1000D2FA8 countByEnumeratingWithState:&v133 objects:v145 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v134;
    do
    {
      for (j = 0; j != v19; j = j + 1)
      {
        if (*v134 != v20)
        {
          objc_enumerationMutation(&off_1000D2FA8);
        }

        v22 = *(*(&v133 + 1) + 8 * j);
        v23 = [v3 objectForKey:v22];
        objc_opt_class();
        v24 = objc_opt_isKindOfClass();

        if (v24)
        {
          v25 = [v22 stringByReplacingOccurrencesOfString:@"." withString:@"_"];
          v26 = [NSString stringWithFormat:@"sysctl_%@", v25];

          v27 = [v3 objectForKey:v22];
          [v115 setObject:v27 forKeyedSubscript:v26];

          v7 = v26;
        }
      }

      v19 = [&off_1000D2FA8 countByEnumeratingWithState:&v133 objects:v145 count:16];
    }

    while (v19);
  }

  v131 = 0u;
  v132 = 0u;
  v129 = 0u;
  v130 = 0u;
  v28 = [&off_1000D2F90 countByEnumeratingWithState:&v129 objects:v144 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v130;
    do
    {
      for (k = 0; k != v29; k = k + 1)
      {
        if (*v130 != v30)
        {
          objc_enumerationMutation(&off_1000D2F90);
        }

        v32 = *(*(&v129 + 1) + 8 * k);
        v33 = [v3 objectForKey:v32];

        if (v33)
        {
          v34 = [v32 stringByReplacingOccurrencesOfString:@"." withString:@"_"];
          v35 = [NSString stringWithFormat:@"sysctl_%@", v34];

          v36 = [v3 objectForKey:v32];
          [v115 setObject:v36 forKeyedSubscript:v35];

          v7 = v35;
        }
      }

      v29 = [&off_1000D2F90 countByEnumeratingWithState:&v129 objects:v144 count:16];
    }

    while (v29);
  }

  [v115 setObject:&off_1000C0DB8 forKeyedSubscript:@"ESR_deltaDays"];
  if (!v116)
  {
    v1 = v109;
    goto LABEL_64;
  }

  v112 = v7;
  [v114 setObject:@"daily" forKeyedSubscript:@"ESR_Cadence"];
  v127 = 0u;
  v128 = 0u;
  v125 = 0u;
  v126 = 0u;
  v37 = [&off_1000D2FC0 countByEnumeratingWithState:&v125 objects:v143 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v126;
    do
    {
      for (m = 0; m != v38; m = m + 1)
      {
        if (*v126 != v39)
        {
          objc_enumerationMutation(&off_1000D2FC0);
        }

        v41 = *(*(&v125 + 1) + 8 * m);
        v42 = [v116 objectForKey:v41];
        if (v42)
        {
          v43 = v42;
          v44 = [v3 objectForKey:v41];
          if (v44)
          {
            v45 = v44;
            v46 = [v3 objectForKey:v41];
            objc_opt_class();
            v47 = objc_opt_isKindOfClass();

            if ((v47 & 1) == 0)
            {
              continue;
            }

            v48 = [v41 stringByReplacingOccurrencesOfString:@"." withString:@"_"];
            v49 = [NSString stringWithFormat:@"host_vm_info64_%@", v48];

            v43 = [v3 objectForKey:v41];
            v50 = [v43 unsignedLongLongValue];
            v51 = [v116 objectForKey:v41];
            v52 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", v50 - [v51 unsignedLongLongValue]);
            [v114 setObject:v52 forKeyedSubscript:v49];

            v112 = v49;
          }
        }
      }

      v38 = [&off_1000D2FC0 countByEnumeratingWithState:&v125 objects:v143 count:16];
    }

    while (v38);
  }

  v123 = 0u;
  v124 = 0u;
  v121 = 0u;
  v122 = 0u;
  v53 = [&off_1000D2FA8 countByEnumeratingWithState:&v121 objects:v142 count:16];
  if (!v53)
  {
    v7 = v112;
    goto LABEL_66;
  }

  v54 = v53;
  v55 = *v122;
  v7 = v112;
  do
  {
    v56 = 0;
    v113 = v54;
    do
    {
      if (*v122 != v55)
      {
        objc_enumerationMutation(&off_1000D2FA8);
      }

      v57 = *(*(&v121 + 1) + 8 * v56);
      v58 = [v116 objectForKey:v57];
      if (v58)
      {
        v59 = v58;
        v60 = [v3 objectForKey:v57];
        if (!v60)
        {
          goto LABEL_58;
        }

        v61 = v60;
        v62 = [v3 objectForKey:v57];
        objc_opt_class();
        v63 = objc_opt_isKindOfClass();

        if (v63)
        {
          v64 = [v57 stringByReplacingOccurrencesOfString:@"." withString:@"_"];
          v65 = [NSString stringWithFormat:@"sysctl_%@", v64];

          v59 = [v3 objectForKey:v57];
          v66 = [v59 unsignedLongLongValue];
          v67 = [v116 objectForKey:v57];
          v68 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", v66 - [v67 unsignedLongLongValue]);
          [v114 setObject:v68 forKeyedSubscript:v65];

          v7 = v65;
          v54 = v113;
LABEL_58:

          goto LABEL_60;
        }

        v54 = v113;
      }

LABEL_60:
      v56 = v56 + 1;
    }

    while (v54 != v56);
    v54 = [&off_1000D2FA8 countByEnumeratingWithState:&v121 objects:v142 count:16];
  }

  while (v54);
LABEL_66:
  v119 = 0u;
  v120 = 0u;
  v117 = 0u;
  v118 = 0u;
  v69 = [&off_1000D2F90 countByEnumeratingWithState:&v117 objects:v141 count:16];
  if (v69)
  {
    v70 = v69;
    v71 = *v118;
    do
    {
      for (n = 0; n != v70; n = n + 1)
      {
        if (*v118 != v71)
        {
          objc_enumerationMutation(&off_1000D2F90);
        }

        v73 = *(*(&v117 + 1) + 8 * n);
        v74 = [v3 objectForKey:v73];

        if (v74)
        {
          v75 = [v73 stringByReplacingOccurrencesOfString:@"." withString:@"_"];
          v76 = [NSString stringWithFormat:@"sysctl_%@", v75];

          v77 = [v3 objectForKey:v73];
          [v114 setObject:v77 forKeyedSubscript:v76];

          v7 = v76;
        }
      }

      v70 = [&off_1000D2F90 countByEnumeratingWithState:&v117 objects:v141 count:16];
    }

    while (v70);
  }

  [v114 setObject:&off_1000C0DB8 forKeyedSubscript:@"ESR_onSameBuild"];
  v78 = [v116 objectForKey:@"kern.osrevision"];
  if (v78)
  {
    v79 = v78;
    v80 = [v3 objectForKey:@"kern.osrevision"];

    if (v80)
    {
      v81 = [v116 objectForKey:@"kern.osrevision"];
      v82 = [v3 objectForKey:@"kern.osrevision"];

      if (v81 == v82)
      {
        [v114 setObject:&off_1000C0DD0 forKeyedSubscript:@"ESR_onSameBuild"];
      }
    }
  }

  [v114 setObject:&off_1000C0DB8 forKeyedSubscript:@"ESR_didReset"];
  v83 = [v116 objectForKey:@"unix_epoch"];
  v1 = v109;
  v0 = v110;
  if (v83)
  {
    v84 = v83;
    v85 = [v3 objectForKey:@"unix_epoch"];

    if (v85)
    {
      v86 = [v3 objectForKey:@"unix_epoch"];
      v87 = [v86 unsignedLongLongValue];
      v88 = [v116 objectForKey:@"unix_epoch"];
      v89 = +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", (v87 - [v88 unsignedLongLongValue]) / 86400.0);
      [v114 setObject:v89 forKeyedSubscript:@"ESR_deltaDays"];

      v90 = [v114 objectForKeyedSubscript:@"ESR_deltaDays"];
      LODWORD(v88) = [v90 intValue];

      if (v88 >= 3)
      {
        [v114 setObject:&off_1000C0DE8 forKeyedSubscript:@"ESR_deltaDays"];
      }

      v91 = [v3 objectForKey:@"bootTime"];

      if (v91)
      {
        v92 = [v3 objectForKey:@"bootTime"];
        v93 = [v92 unsignedLongLongValue];
        v94 = [v116 objectForKey:@"unix_epoch"];
        if (v93 <= [v94 unsignedLongLongValue])
        {
        }

        else
        {
          v95 = [v3 objectForKey:@"bootTime"];
          v96 = [v95 unsignedLongLongValue];
          v97 = [v3 objectForKey:@"unix_epoch"];
          v98 = [v97 unsignedLongLongValue];

          if (v96 < v98)
          {
            [v114 setObject:&off_1000C0DD0 forKeyedSubscript:@"ESR_didReset"];
          }

LABEL_64:
          v0 = v110;
        }
      }
    }
  }

LABEL_88:
  v99 = objc_alloc_init(NSMutableDictionary);
  v100 = sub_100045C64();
  v101 = [NSNumber numberWithUnsignedInt:v100];
  [v99 setObject:v101 forKeyedSubscript:@"ESR_DaysSinceLastSWUpdate"];

  if (v100 <= 0xD)
  {
    v102 = &off_1000C0DB8;
  }

  else
  {
    v102 = &off_1000C0DD0;
  }

  [v99 setObject:v102 forKeyedSubscript:@"ESR_Gt2WeeksSinceSWUpdate"];
  sub_100045D24();
  v103 = [NSNumber numberWithInt:sub_100045D24()];
  [v99 setObject:v103 forKeyedSubscript:@"ESR_WeeksSinceLastSWRestore"];

  if (v114)
  {
    if (v99)
    {
      [v114 addEntriesFromDictionary:v99];
      [v1 setObject:v114 forKeyedSubscript:@"daily"];
      v104 = [v3 objectForKey:off_1000D8160[0]];

      if (v104)
      {
        v105 = [v3 objectForKey:off_1000D8160[0]];
        [v114 setObject:v105 forKeyedSubscript:off_1000D8160[0]];
      }
    }
  }

  if (v115)
  {
    if (v99)
    {
      [v115 addEntriesFromDictionary:v99];
      [v1 setObject:v115 forKeyedSubscript:@"current"];
      v106 = [v3 objectForKey:off_1000D8160[0]];

      if (v106)
      {
        v107 = [v3 objectForKey:off_1000D8160[0]];
        [v115 setObject:v107 forKeyedSubscript:off_1000D8160[0]];
      }
    }
  }

  [v0 setObject:v3 forKey:@"previous_xnustats_dict"];
  [v0 synchronize];
  objc_autoreleasePoolPop(context);

  return v1;
}

id sub_100044FC4(uint64_t a1)
{
  if ([*(a1 + 32) isEqualToString:off_1000D8050[0]])
  {
    v2 = *(a1 + 40);
  }

  else
  {
    v2 = sub_100045020(*(a1 + 32), *(a1 + 40));
  }

  return v2;
}

id sub_100045020(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v43[0] = off_1000D8098[0];
  v43[1] = off_1000D80A0;
  v31 = [NSArray arrayWithObjects:v43 count:2];
  v5 = objc_alloc_init(NSMutableDictionary);
  v6 = [off_1000D8090[0] objectForKeyedSubscript:v3];

  if (v6)
  {
    v7 = [off_1000D8090[0] objectForKeyedSubscript:v3];
    v8 = [v7 unsignedLongLongValue];

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = v4;
    v32 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v32)
    {
      v27 = v3;
      v28 = v5;
      v26 = v4;
      v9 = 0;
      v10 = 0;
      v11 = 1 << v8;
      v30 = *v38;
      do
      {
        v12 = 0;
        v13 = v9;
        do
        {
          if (*v38 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v37 + 1) + 8 * v12);

          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v14 = v31;
          v15 = [v14 countByEnumeratingWithState:&v33 objects:v41 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v34;
LABEL_9:
            v18 = 0;
            v19 = v10;
            while (1)
            {
              if (*v34 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v10 = *(*(&v33 + 1) + 8 * v18);

              v20 = [v10 objectForKeyedSubscript:v9];

              if (v20)
              {
                v21 = [v10 objectForKeyedSubscript:v9];
                v22 = [v21 unsignedLongLongValue];

                if ((v22 & v11) == 0)
                {
                  break;
                }
              }

              v18 = v18 + 1;
              v19 = v10;
              if (v16 == v18)
              {
                v16 = [v14 countByEnumeratingWithState:&v33 objects:v41 count:16];
                if (v16)
                {
                  goto LABEL_9;
                }

                goto LABEL_16;
              }
            }
          }

          else
          {
LABEL_16:

            v14 = [obj objectForKeyedSubscript:v9];
            [v28 setObject:v14 forKeyedSubscript:v9];
            v10 = 0;
          }

          v12 = v12 + 1;
          v13 = v9;
        }

        while (v12 != v32);
        v32 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v32);

      v4 = v26;
      v3 = v27;
      v5 = v28;
    }

    v23 = [v5 copy];
  }

  else
  {
    v23 = v4;
  }

  v24 = v23;

  return v24;
}

BOOL sub_100045354(id a1, NSDictionary *a2)
{
  v2 = a2;
  v3 = off_1000D8080[0];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000453F4;
  v6[3] = &unk_10009CB40;
  v7 = v2;
  v4 = v2;
  LOBYTE(v3) = sub_100044010(v3, v6);

  return v3;
}

uint64_t sub_100045404(uint64_t a1)
{
  output = 0;
  outputCnt = 1;
  *connection = 0;
  v6 = 0;
  if (sub_10004552C(connection))
  {
    input = a1;
    v2 = IOConnectCallMethod(connection[1], 3u, &input, 1u, 0, 0, &output, &outputCnt, 0, 0);
    if (v2)
    {
      NSLog(@"GetImageSize: IOConnectCallMethod failed (key (%u): %c%c%c%c) kernResult:%x\n", a1, BYTE3(a1), BYTE2(a1), BYTE1(a1), a1, v2);
      v3 = 0;
    }

    else
    {
      v3 = output;
    }

    if (connection[1])
    {
      IOServiceClose(connection[1]);
      connection[1] = 0;
    }

    if (connection[0])
    {
      IOObjectRelease(connection[0]);
    }
  }

  else
  {
    NSLog(@"GetEANImageSize: Unable to get EAN Io service connection for key (%u): %c%c%c%c\n", a1, BYTE3(a1), BYTE2(a1), BYTE1(a1), a1);
    return 0;
  }

  return v3;
}

uint64_t sub_10004552C(io_service_t *a1)
{
  v2 = IOServiceMatching("AppleNVMeEAN");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v2);
  *a1 = MatchingService;
  if (!MatchingService)
  {
    NSLog(@"getEANConnection: Couldn't find AppleNVMeEAN object\n");
    return 0;
  }

  v4 = IOServiceOpen(MatchingService, mach_task_self_, 0, a1 + 1);
  if (v4)
  {
    NSLog(@"getEANConnection: IOServiceOpen on AppleNVMeEAN failed kernResult:%x\n", v4);
    return 0;
  }

  return 1;
}

uint64_t sub_1000455C4(uint64_t a1)
{
  output = 0;
  outputCnt = 1;
  *connection = 0;
  v6 = 0;
  if (sub_10004552C(connection))
  {
    input = a1;
    v2 = IOConnectCallMethod(connection[1], 7u, &input, 1u, 0, 0, &output, &outputCnt, 0, 0);
    if (v2)
    {
      NSLog(@"GetUpdateCount: IOConnectCallMethod failed (key (%u): %c%c%c%c) kernResult:%x\n", a1, BYTE3(a1), BYTE2(a1), BYTE1(a1), a1, v2);
      v3 = 0;
    }

    else
    {
      v3 = output;
    }

    if (connection[1])
    {
      IOServiceClose(connection[1]);
      connection[1] = 0;
    }

    if (connection[0])
    {
      IOObjectRelease(connection[0]);
    }
  }

  else
  {
    NSLog(@"GetEANUpdateCount: Unable to get EAN Io service connection for key (%u): %c%c%c%c\n", a1, BYTE3(a1), BYTE2(a1), BYTE1(a1), a1);
    return 0;
  }

  return v3;
}

id sub_1000456EC()
{
  v0 = objc_alloc_init(NSMutableDictionary);
  memset(&v48, 0, 512);
  if (statfs("/private/var", &v48))
  {
    v1 = 0;
    LODWORD(v2) = 0;
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v5 = v48.f_bavail * v48.f_bsize;
    v6 = v48.f_blocks * v48.f_bsize;
    v4 = v6 >> 20;
    v1 = 10000 * (v6 - v5) / v6;
    v3 = v5 >> 20;
    v2 = v6 >> 30;
  }

  v7 = [NSNumber numberWithUnsignedLongLong:v3];
  [v0 setObject:v7 forKeyedSubscript:off_1000D8220];

  v8 = [NSNumber numberWithUnsignedLongLong:v1];
  [v0 setObject:v8 forKeyedSubscript:off_1000D8218];

  v9 = 1 << -__clz(v2 - 1);
  if (v2 == 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9;
  }

  v11 = [NSNumber numberWithUnsignedInt:v10];
  [v0 setObject:v11 forKeyedSubscript:off_1000D8210];

  v12 = [NSNumber numberWithUnsignedInt:v10];
  [v0 setObject:v12 forKeyedSubscript:off_1000D8228];

  v13 = [NSNumber numberWithUnsignedLongLong:v1];
  [v0 setObject:v13 forKeyedSubscript:off_1000D8230];

  v14 = [NSNumber numberWithUnsignedLongLong:v4];
  [v0 setObject:v14 forKeyedSubscript:off_1000D8238];

  v15 = [v0 objectForKey:off_1000D8210];
  if (!v15)
  {
    goto LABEL_14;
  }

  v16 = v15;
  v17 = [v0 objectForKey:off_1000D8218];
  if (!v17)
  {
    goto LABEL_13;
  }

  v18 = v17;
  v19 = [v0 objectForKey:off_1000D8210];
  if ([v19 intValue] <= 0)
  {

LABEL_13:
    goto LABEL_14;
  }

  v20 = [v0 objectForKey:off_1000D8218];
  v21 = [v20 intValue];

  if (v21 >= 1)
  {
    v22 = v0;
    goto LABEL_32;
  }

LABEL_14:
  v22 = objc_alloc_init(NSMutableDictionary);
  v23 = MGCopyAnswer();
  v24 = v23;
  if (v23)
  {
    v25 = kMGQDiskUsageTotalDiskCapacity;
    v26 = [v23 objectForKeyedSubscript:kMGQDiskUsageTotalDiskCapacity];

    if (v26)
    {
      v27 = [v24 objectForKeyedSubscript:v25];
      v28 = [v27 longLongValue];

      v29 = v28 >> 20;
    }

    else
    {
      v28 = 0;
      v29 = 0;
    }

    v31 = kMGQDiskUsageTotalDataAvailable;
    v32 = [v24 objectForKeyedSubscript:kMGQDiskUsageTotalDataAvailable];

    if (v32)
    {
      v33 = [v24 objectForKeyedSubscript:v31];
      v47 = [v33 longLongValue] >> 20;
    }

    else
    {
      v47 = 0;
    }

    v34 = kMGQDiskUsageAmountDataAvailable;
    v35 = [v24 objectForKeyedSubscript:kMGQDiskUsageAmountDataAvailable];

    if (v35)
    {
      v36 = [v24 objectForKeyedSubscript:v34];
      v30 = [v36 longLongValue] >> 20;
    }

    else
    {
      v30 = 0;
    }
  }

  else
  {
    v30 = 0;
    v28 = 0;
    v29 = 0;
    v47 = 0;
  }

  v37 = 1 << -__clz((v28 >> 30) - 1);
  if ((v28 >> 30) == 1)
  {
    v38 = 1;
  }

  else
  {
    v38 = v37;
  }

  v39 = [NSNumber numberWithUnsignedInt:v38];
  [v22 setObject:v39 forKeyedSubscript:off_1000D8210];

  v40 = [NSNumber numberWithUnsignedInt:v38];
  [v22 setObject:v40 forKeyedSubscript:off_1000D8228];

  [v22 setObject:&off_1000C1028 forKeyedSubscript:off_1000D8238];
  if (v29 < 1)
  {
    v41 = 0;
  }

  else
  {
    v41 = 10000 * (v29 - v47) / v29;
    v42 = [NSNumber numberWithLongLong:v29];
    [v22 setObject:v42 forKeyedSubscript:off_1000D8238];
  }

  v43 = [NSNumber numberWithUnsignedLongLong:v41];
  [v22 setObject:v43 forKeyedSubscript:off_1000D8218];

  v44 = [NSNumber numberWithLongLong:v30];
  [v22 setObject:v44 forKeyedSubscript:off_1000D8220];

  v45 = [NSNumber numberWithUnsignedLongLong:v41];
  [v22 setObject:v45 forKeyedSubscript:off_1000D8230];

LABEL_32:

  return v22;
}

uint64_t sub_100045C64()
{
  if (&_MSURetrievePreviousUpdateDate)
  {
    v0 = objc_autoreleasePoolPush();
    if (MSURetrievePreviousUpdateDate())
    {
      v1 = 0;
      v2 = +[NSDate date];
      [v2 timeIntervalSinceDate:v1];
      v4 = (v3 / 86400.0);
    }

    else
    {
      v1 = 0;
      v4 = 0xFFFFFFFFLL;
    }

    objc_autoreleasePoolPop(v0);
  }

  else
  {
    v1 = 0;
    v4 = 0xFFFFFFFFLL;
  }

  return v4;
}

uint64_t sub_100045D24()
{
  if (&_MSURetrievePreviousRestoreDate)
  {
    v0 = objc_autoreleasePoolPush();
    if (MSURetrievePreviousRestoreDate())
    {
      v1 = 0;
      v2 = +[NSDate date];
      [v2 timeIntervalSinceDate:v1];
      v4 = (v3 / 604800.0);
    }

    else
    {
      v1 = 0;
      v4 = 0xFFFFFFFFLL;
    }

    objc_autoreleasePoolPop(v0);
  }

  else
  {
    v1 = 0;
    v4 = 0xFFFFFFFFLL;
  }

  return v4;
}

uint64_t sub_100045DE4()
{
  v3[0] = 0;
  v3[1] = 0;
  v1 = 0;
  time(&v1);
  *v4 = 0x1500000001;
  v2 = 16;
  sysctl(v4, 2u, v3, &v2, 0, 0);
  return v3[0];
}

id sub_100045E70()
{
  v0 = objc_alloc_init(NSMutableDictionary);
  v42 = 0;
  v43 = 0;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  *host_info64_out = 0u;
  v33 = 0u;
  host_info64_outCnt = 40;
  v1 = mach_host_self();
  v30 = 0;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v2 = [&off_1000D3278 countByEnumeratingWithState:&v26 objects:v46 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v27;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v27 != v4)
        {
          objc_enumerationMutation(&off_1000D3278);
        }

        v6 = *(*(&v26 + 1) + 8 * i);
        v42 = 8;
        v43 = 0;
        if (!sysctlbyname([v6 UTF8String], &v43, &v42, 0, 0))
        {
          v7 = [NSNumber numberWithUnsignedLongLong:v43];
          [v0 setObject:v7 forKeyedSubscript:v6];
        }
      }

      v3 = [&off_1000D3278 countByEnumeratingWithState:&v26 objects:v46 count:16];
    }

    while (v3);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = [&off_1000D3260 countByEnumeratingWithState:&v22 objects:v45 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      for (j = 0; j != v9; j = j + 1)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(&off_1000D3260);
        }

        v12 = *(*(&v22 + 1) + 8 * j);
        v42 = 8;
        v43 = 0;
        if (!sysctlbyname([v12 UTF8String], &v43, &v42, 0, 0))
        {
          v13 = [NSNumber numberWithUnsignedLongLong:v43];
          [v0 setObject:v13 forKeyedSubscript:v12];
        }
      }

      v9 = [&off_1000D3260 countByEnumeratingWithState:&v22 objects:v45 count:16];
    }

    while (v9);
  }

  if (!host_statistics64(v1, 4, host_info64_out, &host_info64_outCnt))
  {
    v14 = [NSNumber numberWithUnsignedLongLong:v39];
    [v0 setObject:v14 forKeyedSubscript:@"swapins"];

    v15 = [NSNumber numberWithUnsignedLongLong:*(&v39 + 1)];
    [v0 setObject:v15 forKeyedSubscript:@"swapouts"];

    v16 = [NSNumber numberWithUnsignedLongLong:v38];
    [v0 setObject:v16 forKeyedSubscript:@"decompressions"];

    v17 = [NSNumber numberWithUnsignedLongLong:*(&v38 + 1)];
    [v0 setObject:v17 forKeyedSubscript:@"compressions"];
  }

  time(&v30);
  v18 = [NSNumber numberWithLong:v30];
  [v0 setObject:v18 forKeyedSubscript:@"unix_epoch"];

  v44 = 0;
  time(&v44);
  v19 = [NSNumber numberWithDouble:(v44 - sub_100045DE4()) / 3600.0];
  [v0 setObject:v19 forKeyedSubscript:@"ESR_UptimeInHrs"];

  v20 = [NSNumber numberWithLong:sub_100045DE4()];
  [v0 setObject:v20 forKeyedSubscript:@"bootTime"];

  return v0;
}

id sub_100046274(uint64_t a1)
{
  v4 = a1;
  v1 = [NSData dataWithBytes:&v4 length:8];
  v2 = [[NSString alloc] initWithData:v1 encoding:1];

  return v2;
}

void *sub_1000462EC(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(NSMutableDictionary);
  v3 = objc_opt_new();
  v115 = objc_opt_new();
  v4 = [v1 objectForKeyedSubscript:@"icloudPlanSize"];
  [v2 setObject:@"device" forKeyedSubscript:@"s_type"];
  v131 = v4;
  [v2 setObject:v4 forKeyedSubscript:@"icloud_plan"];
  v5 = [v1 objectForKey:@"execMilliseconds"];

  if (v5)
  {
    v6 = [v1 objectForKeyedSubscript:@"execMilliseconds"];
    [v2 setObject:v6 forKeyedSubscript:@"time_to_complete"];
  }

  v7 = [v1 objectForKey:@"numDefers"];

  if (v7)
  {
    v8 = [v1 objectForKeyedSubscript:@"numDefers"];
    [v2 setObject:v8 forKeyedSubscript:@"nof_deferred"];
  }

  v9 = [v1 objectForKey:@"finished"];

  if (v9)
  {
    v10 = [v1 objectForKeyedSubscript:@"finished"];
    [v2 setObject:v10 forKeyedSubscript:@"is_finished"];
  }

  v11 = [v1 objectForKey:@"device-purgeable"];

  if (v11)
  {
    v12 = [v1 objectForKeyedSubscript:@"device-purgeable"];
    [v2 setObject:v12 forKeyedSubscript:@"purgeable_space"];
  }

  v13 = [v1 objectForKey:@"device-used"];

  if (v13)
  {
    v14 = [v1 objectForKeyedSubscript:@"device-used"];
    [v2 setObject:v14 forKeyedSubscript:@"used_space"];
  }

  v15 = [v1 objectForKey:@"inconsistent"];

  v132 = v3;
  if (v15)
  {
    v16 = [v1 objectForKeyedSubscript:@"inconsistent"];
    [v2 setObject:v16 forKeyedSubscript:@"inconsistent"];

    v3 = v132;
  }

  [v3 addObject:v2];
  v159 = 0u;
  v160 = 0u;
  v157 = 0u;
  v158 = 0u;
  v17 = v1;
  obj = v17;
  v111 = [v17 countByEnumeratingWithState:&v157 objects:v168 count:16];
  if (!v111)
  {
    v96 = 0;
    v98 = v17;
    goto LABEL_139;
  }

  v119 = 0;
  v124 = 0;
  v125 = 0;
  v126 = 0;
  v127 = 0;
  v128 = 0;
  v136 = 0;
  v109 = *v158;
  v110 = 0;
  do
  {
    v18 = 0;
    do
    {
      if (*v158 != v109)
      {
        v19 = v18;
        objc_enumerationMutation(obj);
        v18 = v19;
      }

      v112 = v18;
      v20 = *(*(&v157 + 1) + 8 * v18);
      v133 = v20;
      if (([v20 isEqualToString:@"apps"] & 1) != 0 || objc_msgSend(v20, "isEqualToString:", @"categories"))
      {
        v134 = [v20 isEqualToString:@"apps"];
        v153 = 0u;
        v154 = 0u;
        v155 = 0u;
        v156 = 0u;
        v117 = [obj objectForKeyedSubscript:v20];
        v122 = [v117 countByEnumeratingWithState:&v153 objects:v167 count:16];
        if (!v122)
        {
          goto LABEL_93;
        }

        v120 = *v154;
        while (1)
        {
          v21 = 0;
          do
          {
            v22 = v2;
            if (*v154 != v120)
            {
              objc_enumerationMutation(v117);
            }

            v129 = v21;
            v23 = *(*(&v153 + 1) + 8 * v21);
            if (v134)
            {
              v24 = [v23 objectForKeyedSubscript:@"vendor"];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v25 = [v23 objectForKeyedSubscript:@"vendor"];
                v26 = [v25 isEqualToString:@"Apple Inc."] ^ 1;
              }

              else
              {
                v26 = 1;
              }
            }

            else
            {
              v26 = 0;
            }

            v2 = objc_alloc_init(NSMutableDictionary);

            [v2 setObject:v131 forKeyedSubscript:@"icloud_plan"];
            [v2 setObject:v133 forKeyedSubscript:@"s_type"];
            v27 = [v23 objectForKey:@"vendor"];

            if (v27)
            {
              v28 = [v23 objectForKeyedSubscript:@"vendor"];
              [v2 setObject:v28 forKeyedSubscript:@"vendor"];
            }

            v29 = [v23 objectForKey:@"name"];

            if (v29)
            {
              v30 = [v23 objectForKeyedSubscript:@"name"];
              [v2 setObject:v30 forKeyedSubscript:@"s_name"];
            }

            v31 = [v23 objectForKey:@"bundleID"];

            if (v31)
            {
              v32 = [v23 objectForKeyedSubscript:@"bundleID"];
              [v2 setObject:v32 forKeyedSubscript:@"s_id"];
            }

            v33 = [v23 objectForKey:@"id"];

            if (v33)
            {
              v34 = [v23 objectForKeyedSubscript:@"id"];
              [v2 setObject:v34 forKeyedSubscript:@"s_id"];
            }

            v35 = [v23 objectForKey:@"isAppClip"];

            if (v35)
            {
              v36 = [v23 objectForKeyedSubscript:@"isAppClip"];
              [v2 setObject:v36 forKeyedSubscript:@"is_app_clip"];
            }

            v37 = [v23 objectForKey:@"total"];

            if (v37)
            {
              v38 = [v23 objectForKeyedSubscript:@"total"];
              [v2 setObject:v38 forKeyedSubscript:@"total_space"];
            }

            v39 = [v23 objectForKey:@"has-error"];
            v40 = (v39 == 0) | v134;

            if ((v40 & 1) == 0)
            {
              v41 = [v23 objectForKeyedSubscript:@"has-error"];
              v42 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v41 BOOLValue] ^ 1);
              [v2 setObject:v42 forKeyedSubscript:@"is_finished"];
            }

            v43 = [v23 objectForKey:@"sizes"];

            if (v43)
            {
              v44 = [v23 objectForKeyedSubscript:@"sizes"];
              v149 = 0u;
              v150 = 0u;
              v151 = 0u;
              v152 = 0u;
              v45 = v44;
              v46 = [v45 countByEnumeratingWithState:&v149 objects:v166 count:16];
              if (!v46)
              {
                v48 = 0;
                goto LABEL_86;
              }

              v47 = v46;
              v48 = 0;
              v49 = *v150;
              while (1)
              {
                v50 = 0;
                do
                {
                  if (*v150 != v49)
                  {
                    objc_enumerationMutation(v45);
                  }

                  v51 = *(*(&v149 + 1) + 8 * v50);
                  if (([v51 isEqualToString:@"app"] & 1) != 0 || objc_msgSend(v51, "isEqualToString:", @"fixed"))
                  {
                    if (v26)
                    {
                      v52 = [v45 objectForKeyedSubscript:v51];
                      v136 += [v52 unsignedLongLongValue];
                    }

                    v53 = [v45 objectForKeyedSubscript:v51];
                    v48 += [v53 unsignedLongLongValue];
                    v54 = @"app_space";
                    goto LABEL_56;
                  }

                  if (([v51 isEqualToString:@"data"] & 1) != 0 || objc_msgSend(v51, "isEqualToString:", @"dynamic"))
                  {
                    if (v26)
                    {
                      v56 = [v45 objectForKeyedSubscript:v51];
                      v128 += [v56 unsignedLongLongValue];
                    }

                    v53 = [v45 objectForKeyedSubscript:v51];
                    v48 += [v53 unsignedLongLongValue];
                    v54 = @"data_space";
LABEL_56:

LABEL_57:
                    v55 = [v45 objectForKeyedSubscript:v51];
                    [v2 setObject:v55 forKeyedSubscript:v54];

                    goto LABEL_58;
                  }

                  if ([v51 isEqualToString:@"purgeable"])
                  {
                    if (v26)
                    {
                      v53 = [v45 objectForKeyedSubscript:v51];
                      v127 += [v53 unsignedLongLongValue];
                      v54 = @"purgeable_space";
                      goto LABEL_56;
                    }

                    v54 = @"purgeable_space";
                    goto LABEL_57;
                  }

                  if ([v51 isEqualToString:@"total"])
                  {
                    if (v26)
                    {
                      v53 = [v45 objectForKeyedSubscript:v51];
                      v126 += [v53 unsignedLongLongValue];
                      v54 = @"total_space";
                      goto LABEL_56;
                    }

                    v54 = @"total_space";
                    goto LABEL_57;
                  }

                  if ([v51 isEqualToString:@"extPurgeable"])
                  {
                    if (v26)
                    {
                      v53 = [v45 objectForKeyedSubscript:v51];
                      v125 += [v53 unsignedLongLongValue];
                      v54 = @"ext_purgeable_space";
                      goto LABEL_56;
                    }

                    v54 = @"ext_purgeable_space";
                    goto LABEL_57;
                  }

                  if ([v51 isEqualToString:@"external"])
                  {
                    if (v26)
                    {
                      v53 = [v45 objectForKeyedSubscript:v51];
                      v124 += [v53 unsignedLongLongValue];
                      v54 = @"ext_total_space";
                      goto LABEL_56;
                    }

                    v54 = @"ext_total_space";
                    goto LABEL_57;
                  }

LABEL_58:
                  v50 = v50 + 1;
                }

                while (v47 != v50);
                v57 = [v45 countByEnumeratingWithState:&v149 objects:v166 count:16];
                v47 = v57;
                if (!v57)
                {
LABEL_86:

                  v3 = v132;
                  if (v26)
                  {
LABEL_87:
                    ++v119;
                    v58 = [NSNumber numberWithLong:v48];
                    [v2 setObject:v58 forKeyedSubscript:@"third_party_sorting_key"];

                    v59 = v115;
                  }

                  else
                  {
                    v59 = v132;
                  }

                  goto LABEL_89;
                }
              }
            }

            if (v26)
            {
              v48 = 0;
              v3 = v132;
              goto LABEL_87;
            }

            v3 = v132;
            v59 = v132;
LABEL_89:
            [v59 addObject:v2];
            v21 = v129 + 1;
          }

          while (v129 + 1 != v122);
          v60 = [v117 countByEnumeratingWithState:&v153 objects:v167 count:16];
          v122 = v60;
          if (!v60)
          {
LABEL_93:

            break;
          }
        }
      }

      if ([v133 isEqualToString:@"device-disks"])
      {
        v147 = 0u;
        v148 = 0u;
        v145 = 0u;
        v146 = 0u;
        v114 = [obj objectForKeyedSubscript:v133];
        v118 = [v114 countByEnumeratingWithState:&v145 objects:v165 count:16];
        if (v118)
        {
          v61 = v133;
          v135 = 0;
          v116 = *v146;
          v62 = v110;
          do
          {
            for (i = 0; i != v118; i = i + 1)
            {
              if (*v146 != v116)
              {
                objc_enumerationMutation(v114);
              }

              v64 = *(*(&v145 + 1) + 8 * i);
              v65 = [v64 objectForKey:@"device-volumes"];

              if (v65)
              {
                v123 = i;
                v66 = [[NSSortDescriptor alloc] initWithKey:@"device-used" ascending:0];

                v143 = 0u;
                v144 = 0u;
                v141 = 0u;
                v142 = 0u;
                v67 = [v64 objectForKeyedSubscript:@"device-volumes"];
                v121 = v66;
                v163 = v66;
                v68 = [NSArray arrayWithObjects:&v163 count:1];
                v69 = [v67 sortedArrayUsingDescriptors:v68];

                v130 = v69;
                v70 = [v69 countByEnumeratingWithState:&v141 objects:v164 count:16];
                if (v70)
                {
                  v71 = v70;
                  v72 = 0;
                  v73 = *v142;
                  do
                  {
                    v74 = 0;
                    v75 = v2;
                    do
                    {
                      if (*v142 != v73)
                      {
                        objc_enumerationMutation(v130);
                      }

                      v76 = *(*(&v141 + 1) + 8 * v74);
                      v2 = objc_alloc_init(NSMutableDictionary);

                      v77 = [v64 objectForKey:@"device-disk-internal"];

                      if (v77)
                      {
                        v78 = [v64 objectForKeyedSubscript:@"device-disk-internal"];
                        [v2 setObject:v78 forKeyedSubscript:@"is_app_clip"];
                      }

                      else
                      {
                        [v2 setObject:&off_1000C1028 forKeyedSubscript:@"is_app_clip"];
                      }

                      [v2 setObject:v61 forKeyedSubscript:@"s_type"];
                      v79 = [NSNumber numberWithInt:v135];
                      [v2 setObject:v79 forKeyedSubscript:@"s_name"];

                      v80 = [NSNumber numberWithInt:v72];
                      [v2 setObject:v80 forKeyedSubscript:@"s_id"];

                      [v2 setObject:v131 forKeyedSubscript:@"icloud_plan"];
                      v81 = [v76 objectForKey:@"device-used"];

                      if (v81)
                      {
                        v82 = [v76 objectForKeyedSubscript:@"device-used"];
                        [v2 setObject:v82 forKeyedSubscript:@"used_space"];
                      }

                      v83 = [v76 objectForKey:@"device-available"];

                      if (v83)
                      {
                        v84 = [v76 objectForKeyedSubscript:@"device-available"];
                        [v2 setObject:v84 forKeyedSubscript:@"available_space"];
                      }

                      v85 = [v76 objectForKey:@"device-available"];

                      if (v85)
                      {
                        v86 = [v76 objectForKeyedSubscript:@"device-purgeable"];
                        [v2 setObject:v86 forKeyedSubscript:@"purgeable_space"];
                      }

                      [v132 addObject:v2];
                      v72 = (v72 + 1);
                      v74 = v74 + 1;
                      v75 = v2;
                      v61 = v133;
                    }

                    while (v71 != v74);
                    v71 = [v130 countByEnumeratingWithState:&v141 objects:v164 count:16];
                  }

                  while (v71);
                }

                v62 = v121;
                i = v123;
              }

              ++v135;
            }

            v118 = [v114 countByEnumeratingWithState:&v145 objects:v165 count:16];
          }

          while (v118);
        }

        else
        {
          v62 = v110;
        }

        v110 = v62;

        v3 = v132;
      }

      v18 = v112 + 1;
    }

    while ((v112 + 1) != v111);
    v111 = [obj countByEnumeratingWithState:&v157 objects:v168 count:16];
  }

  while (v111);

  if (v119)
  {
    v87 = objc_alloc_init(NSMutableDictionary);

    [v87 setObject:@"categories" forKeyedSubscript:@"s_type"];
    v88 = v3;
    [v87 setObject:@"third_party_sum" forKeyedSubscript:@"s_name"];
    [v87 setObject:@"third_party_sum" forKeyedSubscript:@"s_id"];
    [v87 setObject:@"third_party_sum" forKeyedSubscript:@"vendor"];
    v89 = [NSNumber numberWithUnsignedLongLong:v136];
    [v87 setObject:v89 forKeyedSubscript:@"app_space"];

    v90 = [NSNumber numberWithUnsignedLongLong:v128];
    [v87 setObject:v90 forKeyedSubscript:@"data_space"];

    v91 = [NSNumber numberWithUnsignedLongLong:v127];
    [v87 setObject:v91 forKeyedSubscript:@"purgeable_space"];

    v92 = [NSNumber numberWithUnsignedLongLong:v126];
    [v87 setObject:v92 forKeyedSubscript:@"total_space"];

    v93 = [NSNumber numberWithUnsignedLongLong:v125];
    [v87 setObject:v93 forKeyedSubscript:@"ext_purgeable_space"];

    v94 = [NSNumber numberWithUnsignedLongLong:v124];
    [v87 setObject:v94 forKeyedSubscript:@"ext_total_space"];

    v95 = [NSNumber numberWithUnsignedInt:v119];
    [v87 setObject:v95 forKeyedSubscript:@"nof_deferred"];

    [v88 addObject:v87];
    v96 = [[NSSortDescriptor alloc] initWithKey:@"third_party_sorting_key" ascending:0];

    v139 = 0u;
    v140 = 0u;
    v137 = 0u;
    v138 = 0u;
    v161 = v96;
    v97 = [NSArray arrayWithObjects:&v161 count:1];
    v98 = [v115 sortedArrayUsingDescriptors:v97];

    v99 = [v98 countByEnumeratingWithState:&v137 objects:v162 count:16];
    if (v99)
    {
      v100 = v99;
      v101 = 0;
      v102 = *v138;
LABEL_128:
      v103 = 0;
      if (v101 <= 10)
      {
        v104 = 10;
      }

      else
      {
        v104 = v101;
      }

      v105 = (v104 - v101);
      while (1)
      {
        if (*v138 != v102)
        {
          objc_enumerationMutation(v98);
        }

        if (v105 == v103)
        {
          break;
        }

        ++v101;
        v106 = *(*(&v137 + 1) + 8 * v103);
        [v106 removeObjectForKey:@"third_party_sorting_key"];
        [v132 addObject:v106];
        if (v100 == ++v103)
        {
          v100 = [v98 countByEnumeratingWithState:&v137 objects:v162 count:16];
          if (v100)
          {
            goto LABEL_128;
          }

          break;
        }
      }
    }

    v2 = v87;
LABEL_139:

    v3 = v132;
  }

  else
  {
    v96 = v110;
  }

  v107 = v3;

  return v3;
}

id sub_1000475C8(uint64_t *a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = *a1;
  v6 = a1[2];
  if (*a1)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    do
    {
      if (!v3 || (+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v5), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v3 containsObject:v8], v8, v9))
      {
        v10 = [NSNumber numberWithUnsignedLongLong:*(v6 + 104)];
        v11 = [NSString stringWithUTF8String:v5];
        [v4 setObject:v10 forKeyedSubscript:v11];
      }

      v5 = *(v5 + 112);
      if (!v5)
      {
        break;
      }

      v6 = *(v6 + 112);
    }

    while (v6);
  }

  return v4;
}

void sub_100048ADC(void *a1)
{
  v1 = __cxa_begin_catch(a1);
  printf("Failed connecting to the passthrough driver. Error=0x%x\n", *v1);

  __cxa_end_catch();
}

void sub_100048B20(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 plistPath];
  v5 = 136315138;
  v6 = [v4 UTF8String];
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Cannot load plist from %s! Deleting it.", &v5, 0xCu);
}

void sub_100048BD0(void *a1)
{
  v1 = a1;
  v2 = 136315138;
  v3 = [@"/private/var/db/NANDTelemetryServices" UTF8String];
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Error: plist directory %s exists but is a file! Deleting it.", &v2, 0xCu);
}

void sub_100048C6C(void *a1, void *a2)
{
  v3 = a1;
  v4 = [@"/private/var/db/NANDTelemetryServices" UTF8String];
  v5 = [a2 localizedFailureReason];
  v6 = 136315394;
  v7 = v4;
  v8 = 2080;
  v9 = [v5 UTF8String];
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Creating NAND telemetry plist directory %s failed for %s", &v6, 0x16u);
}

void sub_100048F14(void *a1, void *a2)
{
  v3 = a1;
  v4[0] = 67109120;
  v4[1] = [a2 spdState];
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Invalid SPD state %u", v4, 8u);
}

void sub_100048FE4(int *a1, NSObject *a2)
{
  v2 = *a1;
  v3[0] = 67109376;
  v3[1] = v2;
  v4 = 1024;
  v5 = 209715200;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Estimated SPD size (%u bytes) larger than allowed (%u bytes)", v3, 0xEu);
}

void sub_100049070(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 spdFilePath];
  v5 = 136315138;
  v6 = [v4 UTF8String];
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to open file path %s", &v5, 0xCu);
}

void sub_10004919C(uint64_t a1, NSObject *a2)
{
  v2 = 136315138;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Upload error: %s", &v2, 0xCu);
}

void sub_100049258(void *a1, void *a2)
{
  v4 = a1;
  v5 = a2;
  v6 = 136315138;
  v7 = [a1 UTF8String];
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to exclude user defaults %s from backup.", &v6, 0xCu);
}

void sub_1000494B4(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 134218240;
  v4 = a2;
  v5 = 2048;
  v6 = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "ERROR: Unexpected state %ld for XPC activity %p", &v3, 0x16u);
}

void sub_100049614(void *a1)
{
  v2 = a1;
  v3 = [sub_100008A78() xpcActivity];
  sub_100008A30();
  sub_100008A3C(&_mh_execute_header, v4, v5, "xpc_activity %p cannot be deferred", v6, v7, v8, v9, v10);
}

void sub_1000496A4(void *a1)
{
  v2 = a1;
  v3 = [sub_100008A78() xpcActivity];
  sub_100008A30();
  sub_100008A3C(&_mh_execute_header, v4, v5, "xpc_activity %p deferred!", v6, v7, v8, v9, v10);
}

void sub_100049734(void *a1)
{
  v2 = a1;
  v3 = [sub_100008A78() xpcActivity];
  sub_100008A30();
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "xpc_activity %p already deferred", v4, 0xCu);
}

void sub_1000497D4(void *a1)
{
  v2 = a1;
  v3 = [sub_100008A78() xpcActivity];
  sub_100008A30();
  sub_100008A3C(&_mh_execute_header, v4, v5, "xpc_activity %p cannot be force deferred", v6, v7, v8, v9, v10);
}

void sub_100049BCC(void *a1, void *a2)
{
  v4 = a1;
  v5 = a2;
  v6 = 136315138;
  v7 = [a1 UTF8String];
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to open Directory at %s", &v6, 0xCu);
}

void sub_100049C70(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 blockPath];
  [v4 UTF8String];
  sub_10000B264();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_100049D18(void *a1, void *a2)
{
  v3 = a1;
  [a2 sweepError];
  sub_10000B264();
  _os_log_error_impl(v4, v5, v6, v7, v8, 8u);
}

void sub_100049EB0(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [NSString stringWithFormat:@"%@", a2];
  *buf = 136315138;
  v6 = [v4 UTF8String];
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "ERROR: tasking info validation failed! info details:\n%s", buf, 0xCu);
}

void sub_100049F7C(char a1, char a2, os_log_t log)
{
  v3 = "True";
  if (a1)
  {
    v4 = "False";
  }

  else
  {
    v4 = "True";
  }

  if ((a2 & 1) == 0)
  {
    v3 = "False";
  }

  v5 = 136315394;
  v6 = v4;
  v7 = 2080;
  v8 = v3;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Device tasked: %s taskingId in Hist:%s.\n", &v5, 0x16u);
}

void sub_10004A024(uint64_t a1, int a2, os_log_t log)
{
  v3 = 136315394;
  v4 = a1;
  v5 = 1024;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "DA taskingId %s unexpected decision server reply %d", &v3, 0x12u);
}

void sub_10004A0AC(os_log_t log)
{
  v1[0] = 67109120;
  v1[1] = dword_1000D82A4;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%d defers for app space dict extraction! No more today...", v1, 8u);
}

void sub_10004A174(void *a1, void *a2)
{
  v4 = a1;
  v5 = a2;
  [a1 UTF8String];
  sub_100008A30();
  sub_10000F718(&_mh_execute_header, v6, v7, "Raw dict inconsistency: %s", v8, v9, v10, v11, v12);
}

void sub_10004A204(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 localizedDescription];
  [v4 UTF8String];
  sub_100008A30();
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Error creating radar draft: %s", v5, 0xCu);
}

void sub_10004A2B0(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 localizedDescription];
  [v4 UTF8String];
  sub_100008A3C(&_mh_execute_header, v5, v6, "DP tasking payload fetch error %s", v7, v8, v9, v10, 2u);
}

void sub_10004A394(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 localizedDescription];
  [v4 UTF8String];
  sub_100008A3C(&_mh_execute_header, v5, v6, "DP tasking mark complete error %s", v7, v8, v9, v10, 2u);
}

void sub_10004A434(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 myTaskingDict];
  v5 = [v4 description];
  v6 = 136315138;
  v7 = [v5 UTF8String];
  _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Tasking Dict: %s", &v6, 0xCu);
}

uint64_t sub_10004A4FC(FILE *a1, unint64_t a2, unint64_t a3)
{
  v3 = 0;
  __ptr = 0;
  v26 = a3;
  v23 = 0;
  *v24 = 0;
  v22 = 0;
  if (!a1 || a2 > 0xFFFFFFFE)
  {
    goto LABEL_27;
  }

  v7 = sub_10003E22C(v24);
  v3 = 0;
  v8 = *v24;
  if (v7 && *v24)
  {
    if (*(*v24 + 16))
    {
      __ptr = malloc_type_calloc(1uLL, 0x80000uLL, 0x20965468uLL);
      if (__ptr)
      {
        v9 = 0;
        v10 = 0;
LABEL_8:
        if (v9 >= a2)
        {
LABEL_25:
          v3 = 1;
LABEL_27:
          v8 = *v24;
          goto LABEL_28;
        }

        v23 = 0x80000;
        bzero(__ptr, 0x80000uLL);
        v11 = sub_10002EA50(*v24, &__ptr, &v23, 2, v9);
        v3 = 0;
        if (!v11 || !v23)
        {
          goto LABEL_27;
        }

        v12 = (__ptr + v23);
        v13 = __ptr;
        while (1)
        {
          v14 = (v13 + 2);
          if (v13 + 2 > v12)
          {
            break;
          }

          v15 = *(v13 + 6);
          v16 = *v13;
          v17 = *v13 * *(v13 + 6);
          if (v17 >= v23)
          {
            break;
          }

          v18 = v14 + v17;
          if (v18 > v12)
          {
            break;
          }

          v19 = *(v13 + 2);
          v13 = v18;
          if (v19 == 9)
          {
            if (v15 != 8 || v16 != 1)
            {
              break;
            }

            v9 = *v14;
            v23 = v18 - __ptr;
            if (!fwrite(__ptr, v18 - __ptr, 1uLL, a1))
            {
              break;
            }

            v10 += v23;
            if (v10 <= a3)
            {
              goto LABEL_8;
            }

            v22 = 0x8FC0000000001;
            if (!fwrite(&v22, 8uLL, 1uLL, a1) || !fwrite(&v26, 8uLL, 1uLL, a1))
            {
              break;
            }

            goto LABEL_25;
          }
        }
      }
    }

    v3 = 0;
    goto LABEL_27;
  }

LABEL_28:
  if (v8)
  {
    sub_10003E378(v8);
    *v24 = 0;
  }

  if (__ptr)
  {
    free(__ptr);
  }

  return v3;
}