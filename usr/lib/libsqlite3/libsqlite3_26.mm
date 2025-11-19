void sub_181999DC4(void *a1, int a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v31 = *MEMORY[0x1E69E9840];
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  if (sub_1818F50DC(a1, a2, a3, &v26, a5, a6, a7, a8))
  {
    return;
  }

  if (!BYTE9(v28))
  {
    if (BYTE8(v28))
    {
      if (v26 >= 0x1A6401072FE00)
      {
        v9 = 0;
        v27 = 0u;
        v28 = 0u;
        v26 = 0u;
        BYTE12(v28) = 2;
        goto LABEL_18;
      }

      v12 = (v26 + 43200000) / 0x5265C00uLL;
      v13 = ((v12 + 32044.75) / 36524.25);
      v14 = v13 + 48;
      if (v13 < -48)
      {
        v14 = v13 + 51;
      }

      v15 = v12 + v13 - (v14 >> 2) + 1498;
      v16 = ((v15 + -122.1) / 365.25);
      v17 = v15 - 36525 * (v16 & 0x7FFFu) / 0x64;
      v18 = (v17 / 30.6001);
      v10 = &v26 + 2;
      v19 = v17 - (v18 * 30.6001);
      if (v18 < 14)
      {
        v20 = -1;
      }

      else
      {
        v20 = -13;
      }

      v9 = v20 + v18;
      HIDWORD(v26) = v9;
      LODWORD(v27) = v19;
      if (v9 > 2)
      {
        v21 = -4716;
      }

      else
      {
        v21 = -4715;
      }

      v11 = v21 + v16;
    }

    else
    {
      v10 = &v27;
      *(&v26 + 1) = 0x1000007D0;
      v9 = 1;
      v11 = 1;
    }

    *v10 = v11;
    BYTE9(v28) = 1;
    goto LABEL_18;
  }

  v9 = HIDWORD(v26);
LABEL_18:
  if ((SDWORD2(v26) & 0x80000000) == 0)
  {
    v22 = DWORD2(v26);
  }

  else
  {
    v22 = -DWORD2(v26);
  }

  v30[0] = (v22 / 0x3E8 - 10 * ((429496730 * (v22 / 0x3E8)) >> 32)) | 0x30;
  v30[1] = (v22 / 0x64 - 10 * ((429496730 * (v22 / 0x64)) >> 32)) | 0x30;
  v30[2] = (v22 / 0xA - 10 * ((429496730 * (v22 / 0xA)) >> 32)) | 0x30;
  v30[3] = (v22 % 0xA) | 0x30;
  v30[4] = 45;
  v30[5] = v9 / 10 % 10 + 48;
  v30[6] = v9 % 10 + 48;
  v30[7] = 45;
  v30[8] = v27 / 10 % 10 + 48;
  v30[9] = v27 % 10 + 48;
  v30[10] = 0;
  if ((DWORD2(v26) & 0x80000000) != 0)
  {
    v29 = 45;
    if (!a1)
    {
      return;
    }

    v23 = &v29;
    v24 = a1;
    v25 = 11;
  }

  else
  {
    if (!a1)
    {
      return;
    }

    v23 = v30;
    v24 = a1;
    v25 = 10;
  }

  sub_18190B23C(v24, v23, v25, 1u, 0xFFFFFFFFFFFFFFFFLL);
}

void sub_18199A0F8(void *a1, int a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  if (!sub_1818F50DC(a1, a2, a3, &v19, a5, a6, a7, a8))
  {
    if (BYTE10(v21))
    {
      v10 = DWORD1(v20);
      v9 = DWORD2(v20);
      v11 = BYTE12(v21);
    }

    else
    {
      sub_18199C28C(&v19);
      v12 = (v19 + 43200000) % 86400000;
      *&v21 = (v12 % 60000) / 1000.0;
      v13 = (34953 * (v12 / 60000)) >> 16;
      v9 = (v12 / 60000 - 60 * ((v13 >> 5) + ((v13 & 0x8000) >> 15)));
      v10 = v12 / 3600000;
      DWORD1(v20) = v12 / 3600000;
      DWORD2(v20) = v9;
      v11 = BYTE12(v21) & 0xFE;
      BYTE12(v21) &= ~1u;
      BYTE10(v21) = 1;
    }

    v22[0] = v10 / 10 - 10 * (((1717986919 * (v10 / 10)) >> 34) + (1717986919 * (v10 / 10) < 0)) + 48;
    v22[1] = v10 % 10 + 48;
    v22[2] = 58;
    v22[3] = v9 / 10 % 10 + 48;
    v22[4] = v9 % 10 + 48;
    v22[5] = 58;
    if ((v11 & 4) != 0)
    {
      v18 = *&v21 * 1000.0 + 0.5;
      v16 = v18 / 10000;
      v15 = v18 / 1000;
      v22[9] = v18 / 100 - 10 * (((1717986919 * (v18 / 100)) >> 34) + (1717986919 * (v18 / 100) < 0)) + 48;
      v22[10] = v18 / 10 - 10 * (((1717986919 * (v18 / 10)) >> 34) + (1717986919 * (v18 / 10) < 0)) + 48;
      v22[11] = v18 % 10 + 48;
      v22[12] = 0;
      v17 = 12;
      v14 = 46;
    }

    else
    {
      v14 = 0;
      v15 = *&v21;
      v16 = *&v21 / 10;
      v17 = 8;
    }

    v22[6] = v16 - 10 * (((1717986919 * v16) >> 34) + (1717986919 * v16 < 0)) + 48;
    v22[7] = v15 % 10 + 48;
    v22[8] = v14;
    if (a1)
    {
      sub_18190B23C(a1, v22, v17, 1u, 0xFFFFFFFFFFFFFFFFLL);
    }
  }
}

void sub_18199A41C(void *a1, int a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v38 = *MEMORY[0x1E69E9840];
  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  if (sub_1818F50DC(a1, a2, a3, &v33, a5, a6, a7, a8))
  {
    return;
  }

  if (!BYTE9(v35))
  {
    if (BYTE8(v35))
    {
      if (v33 >= 0x1A6401072FE00)
      {
        v34 = 0u;
        v35 = 0u;
        v33 = 0u;
        BYTE12(v35) = 2;
        goto LABEL_17;
      }

      v11 = (v33 + 43200000) / 0x5265C00uLL;
      v12 = ((v11 + 32044.75) / 36524.25);
      v13 = v12 + 48;
      if (v12 < -48)
      {
        v13 = v12 + 51;
      }

      v14 = v11 + v12 - (v13 >> 2) + 1498;
      v15 = ((v14 + -122.1) / 365.25);
      v16 = v14 - 36525 * (v15 & 0x7FFFu) / 0x64;
      v17 = (v16 / 30.6001);
      v9 = &v33 + 2;
      v18 = v16 - (v17 * 30.6001);
      if (v17 < 14)
      {
        v19 = -1;
      }

      else
      {
        v19 = -13;
      }

      HIDWORD(v33) = v19 + v17;
      LODWORD(v34) = v18;
      if (v19 + v17 > 2)
      {
        v20 = -4716;
      }

      else
      {
        v20 = -4715;
      }

      v10 = v20 + v15;
    }

    else
    {
      v9 = &v34;
      *(&v33 + 1) = 0x1000007D0;
      v10 = 1;
    }

    *v9 = v10;
    BYTE9(v35) = 1;
  }

LABEL_17:
  if (BYTE10(v35))
  {
    v22 = DWORD1(v34);
    v21 = DWORD2(v34);
    v23 = BYTE12(v35);
  }

  else
  {
    sub_18199C28C(&v33);
    v24 = (v33 + 43200000) % 86400000;
    *&v35 = (v24 % 60000) / 1000.0;
    v25 = (34953 * (v24 / 60000)) >> 16;
    v21 = (v24 / 60000 - 60 * ((v25 >> 5) + ((v25 & 0x8000) >> 15)));
    v22 = v24 / 3600000;
    DWORD1(v34) = v24 / 3600000;
    DWORD2(v34) = v21;
    v23 = BYTE12(v35) & 0xFE;
    BYTE12(v35) &= ~1u;
    BYTE10(v35) = 1;
  }

  if ((SDWORD2(v33) & 0x80000000) == 0)
  {
    v26 = DWORD2(v33);
  }

  else
  {
    v26 = -DWORD2(v33);
  }

  v37[0] = (v26 / 0x3E8 - 10 * ((429496730 * (v26 / 0x3E8)) >> 32)) | 0x30;
  v37[1] = (v26 / 0x64 - 10 * ((429496730 * (v26 / 0x64)) >> 32)) | 0x30;
  v37[2] = (v26 / 0xA - 10 * ((429496730 * (v26 / 0xA)) >> 32)) | 0x30;
  v37[3] = (v26 % 0xA) | 0x30;
  v37[4] = 45;
  v37[5] = SHIDWORD(v33) / 10 - 10 * (((1717986919 * (SHIDWORD(v33) / 10)) >> 34) + (1717986919 * (SHIDWORD(v33) / 10) < 0)) + 48;
  v37[6] = SHIDWORD(v33) % 10 + 48;
  v37[7] = 45;
  v37[8] = v34 / 10 - 10 * (((1717986919 * (v34 / 10)) >> 34) + (1717986919 * (v34 / 10) < 0)) + 48;
  v37[9] = v34 % 10 + 48;
  v37[10] = 32;
  v37[11] = v22 / 10 - 10 * (((1717986919 * (v22 / 10)) >> 34) + (1717986919 * (v22 / 10) < 0)) + 48;
  v37[12] = v22 % 10 + 48;
  v37[13] = 58;
  v37[14] = v21 / 10 % 10 + 48;
  v37[15] = v21 % 10 + 48;
  v37[16] = 58;
  if ((v23 & 4) != 0)
  {
    v31 = *&v35 * 1000.0 + 0.5;
    v29 = v31 / 10000;
    v28 = v31 / 1000;
    v37[20] = v31 / 100 - 10 * (((1717986919 * (v31 / 100)) >> 34) + (1717986919 * (v31 / 100) < 0)) + 48;
    v37[21] = v31 / 10 % 10 + 48;
    v37[22] = v31 % 10 + 48;
    v37[23] = 0;
    v30 = 24;
    v27 = 46;
  }

  else
  {
    v27 = 0;
    v28 = *&v35;
    v29 = *&v35 / 10;
    v30 = 20;
  }

  v37[17] = v29 % 10 + 48;
  v37[18] = v28 % 10 + 48;
  v37[19] = v27;
  if ((DWORD2(v33) & 0x80000000) != 0)
  {
    v36 = 45;
    if (!a1)
    {
      return;
    }

    v32 = &v36;
  }

  else
  {
    if (!a1)
    {
      return;
    }

    --v30;
    v32 = v37;
  }

  sub_18190B23C(a1, v32, v30, 1u, 0xFFFFFFFFFFFFFFFFLL);
}

void sub_18199A9C4(uint64_t a1, int a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v99 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return;
  }

  v9 = *a3;
  if (!*a3)
  {
    return;
  }

  memset(v95, 0, sizeof(v95));
  *v93 = 0u;
  v94 = 0u;
  *v92 = 0u;
  v10 = *(v9 + 20);
  if ((~v10 & 0x202) != 0 || *(v9 + 22) != 1)
  {
    if (v10)
    {
      return;
    }

    v12 = a2;
    v13 = a3;
    v14 = sub_18193CB70(v9, 1);
    a2 = v12;
    a3 = v13;
    v11 = v14;
    if (!v14)
    {
      return;
    }
  }

  else
  {
    v11 = *(v9 + 8);
    if (!v11)
    {
      return;
    }
  }

  if (sub_1818F50DC(a1, a2 - 1, a3 + 1, &v94, a5, a6, a7, a8))
  {
    return;
  }

  v15 = *(*(*a1 + 24) + 136);
  v92[0] = 0;
  v92[1] = 0;
  v93[0] = 0;
  v93[1] = v15;
  v93[2] = 0;
  LOWORD(v93[3]) = 0;
  sub_18199C28C(&v94);
  if (!BYTE9(v95[1]))
  {
    if (BYTE8(v95[1]))
    {
      if (v94 > 0x1A6401072FDFFLL)
      {
        memset(v95, 0, sizeof(v95));
        v94 = 0u;
        BYTE12(v95[1]) = 2;
        goto LABEL_26;
      }

      v18 = (v94 + 43200000) / 0x5265C00uLL;
      v19 = ((v18 + 32044.75) / 36524.25);
      v20 = v19 + 48;
      if (v19 < -48)
      {
        v20 = v19 + 51;
      }

      v21 = v18 + v19 - (v20 >> 2) + 1498;
      v22 = ((v21 + -122.1) / 365.25);
      v23 = v21 - 36525 * (v22 & 0x7FFFu) / 0x64;
      v24 = (v23 / 30.6001);
      v16 = &v94 + 2;
      v25 = v23 - (v24 * 30.6001);
      if (v24 < 14)
      {
        v26 = -1;
      }

      else
      {
        v26 = -13;
      }

      HIDWORD(v94) = v26 + v24;
      LODWORD(v95[0]) = v25;
      if (v26 + v24 > 2)
      {
        v27 = -4716;
      }

      else
      {
        v27 = -4715;
      }

      v17 = v27 + v22;
    }

    else
    {
      v16 = v95;
      *(&v94 + 1) = 0x1000007D0;
      v17 = 1;
    }

    *v16 = v17;
    BYTE9(v95[1]) = 1;
  }

LABEL_26:
  if (!BYTE10(v95[1]))
  {
    sub_18199C28C(&v94);
    v28 = (v94 + 43200000) % 86400000;
    *&v95[1] = (v28 % 60000) / 1000.0;
    v29 = (34953 * (v28 / 60000)) >> 16;
    DWORD1(v95[0]) = v28 / 3600000;
    DWORD2(v95[0]) = (v28 / 60000 - 60 * ((v29 >> 5) + ((v29 & 0x8000) >> 15)));
    BYTE12(v95[1]) &= ~1u;
    BYTE10(v95[1]) = 1;
  }

  v30 = 0;
  for (i = 0; ; ++i)
  {
    while (*(v11 + i) == 37)
    {
      v32 = i - v30;
      if (i > v30)
      {
        if (v32 <= 0)
        {
          if (v32)
          {
            sub_1819012D0(34353);
          }
        }

        else
        {
          v33 = v93[2];
          if ((v93[2] + v32) >= v93[0])
          {
            sub_181906814(v92, (v11 + v30), v32);
          }

          else
          {
            v93[2] += v32;
            memcpy(&v92[1][v33], (v11 + v30), v32 & 0x7FFFFFFF);
          }
        }
      }

      v34 = *(v11 + i + 1);
      v30 = i + 2;
      switch(*(v11 + i + 1))
      {
        case '%':
          if (v93[2] + 1 >= v93[0])
          {
            v51 = sub_181906424(v92, 1);
            if (v51 < 1)
            {
              goto LABEL_129;
            }
          }

          else
          {
            v51 = 1;
          }

          v68 = v51 + 1;
          do
          {
            v69 = v93[2]++;
            v92[1][v69] = 37;
            --v68;
          }

          while (v68 > 1);
          goto LABEL_129;
        case 'F':
          sqlite3_str_appendf(v92, "%04d-%02d-%02d", v32);
          goto LABEL_129;
        case 'G':
        case 'g':
          *v96 = DWORD2(v94);
          if (BYTE8(v95[1]))
          {
            v35 = v94 + 86400000 * (7 * ((v94 + 43200000) / 86400000 / 7) - (v94 + 43200000) / 86400000 + 3);
            if (v35 > 0x1A6401072FDFFLL)
            {
              *v96 = 0;
              goto LABEL_108;
            }

            v60 = (v35 + 43200000) / 0x5265C00;
            v61 = ((v60 + 32044.75) / 36524.25);
            v62 = v61 + 48;
            if (v61 < -48)
            {
              v62 = v61 + 51;
            }

            v63 = v60 + v61 - (v62 >> 2) + 1498;
            v64 = ((v63 + -122.1) / 365.25);
            v65 = ((v63 - 36525 * (v64 & 0x7FFFu) / 0x64) / 30.6001);
            if (v65 < 14)
            {
              v66 = -1;
            }

            else
            {
              v66 = -13;
            }

            if (v66 + v65 > 2)
            {
              v67 = -4716;
            }

            else
            {
              v67 = -4715;
            }

            v58 = v67 + v64;
            v59 = v96;
          }

          else
          {
            *v96 = 2000;
            v58 = 1;
            v59 = &v97;
          }

          *v59 = v58;
LABEL_108:
          if (v34 == 103)
          {
            goto LABEL_128;
          }

LABEL_109:
          sqlite3_str_appendf(v92, "%04d", v32);
          goto LABEL_129;
        case 'H':
        case 'k':
          if (v34 == 72)
          {
            v36 = "%02d";
          }

          else
          {
            v36 = "%2d";
          }

          v37 = DWORD1(v95[0]);
          goto LABEL_71;
        case 'I':
        case 'l':
          LODWORD(v38) = DWORD1(v95[0]);
          if (SDWORD1(v95[0]) > 12)
          {
            LODWORD(v38) = DWORD1(v95[0]) - 12;
          }

          if (v38)
          {
            v38 = v38;
          }

          else
          {
            v38 = 12;
          }

          if (v34 == 73)
          {
            v39 = "%02d";
          }

          else
          {
            v39 = "%2d";
          }

          sqlite3_str_appendf(v92, v39, v32, v38, v86, v87);
          goto LABEL_129;
        case 'J':
          sqlite3_str_appendf(v92, "%.16g", v32);
          goto LABEL_129;
        case 'M':
        case 'S':
        case 'm':
          goto LABEL_128;
        case 'P':
        case 'p':
          v44 = v93[2];
          v45 = v34 == 112;
          if (SDWORD1(v95[0]) < 12)
          {
            v46 = "am";
            v47 = "AM";
          }

          else
          {
            v46 = "pm";
            v47 = "PM";
          }

          if (v45)
          {
            v50 = v47;
          }

          else
          {
            v50 = v46;
          }

          if ((v93[2] + 2) >= v93[0])
          {
            sub_181906814(v92, v50, 2u);
          }

          else
          {
            v93[2] += 2;
            *&v92[1][v44] = *v50;
          }

          i += 2;
          continue;
        case 'R':
          sqlite3_str_appendf(v92, "%02d:%02d", v32);
          goto LABEL_129;
        case 'T':
          sqlite3_str_appendf(v92, "%02d:%02d:%02d", v32);
          goto LABEL_129;
        case 'U':
        case 'W':
          *&v96[32] = v95[1];
          *v96 = v94;
          *&v96[16] = v95[0];
          v96[40] = 0;
          *&v96[12] = 0x100000001;
          sub_18199C28C(v96);
          goto LABEL_128;
        case 'V':
          v90 = 0;
          v91 = DWORD2(v94);
          v97 = *(v95 + 4);
          v98 = DWORD1(v95[1]);
          v53 = WORD5(v95[1]);
          v54 = BYTE12(v95[1]);
          v88 = *(&v95[1] + 13);
          v89 = HIBYTE(v95[1]);
          v55 = v94 + 86400000 * (7 * ((v94 + 43200000) / 86400000 / 7) - (v94 + 43200000) / 86400000 + 3);
          if (BYTE8(v95[1]))
          {
            if (v55 > 0x1A6401072FDFFLL)
            {
              v53 = 0;
              v56 = 0;
              v55 = 0;
              v57 = 0;
              v97 = 0uLL;
              v98 = 0;
              v88 = 0;
              v54 = 2;
              v89 = 0;
              goto LABEL_127;
            }

            v72 = (v55 + 43200000) / 0x5265C00;
            v73 = ((v72 + 32044.75) / 36524.25);
            v74 = v73 + 48;
            if (v73 < -48)
            {
              v74 = v73 + 51;
            }

            v75 = v72 + v73 - (v74 >> 2) + 1498;
            v76 = ((v75 + -122.1) / 365.25);
            v77 = ((v75 - 36525 * (v76 & 0x7FFFu) / 0x64) / 30.6001);
            if (v77 < 14)
            {
              v78 = -1;
            }

            else
            {
              v78 = -13;
            }

            if (v78 + v77 > 2)
            {
              v79 = -4716;
            }

            else
            {
              v79 = -4715;
            }

            v70 = v79 + v76;
            v71 = &v91;
          }

          else
          {
            v91 = 2000;
            v70 = 1;
            v71 = &v90;
          }

          *v71 = v70;
          v57 = 1;
          v56 = v91;
LABEL_127:
          *v96 = v55;
          *&v96[8] = v56;
          *&v96[20] = v97;
          *&v96[36] = v98;
          v96[41] = v57;
          *&v96[42] = v53;
          v96[44] = v54;
          *&v96[45] = v88;
          v96[47] = v89;
          v96[40] = 0;
          *&v96[12] = 0x100000001;
          sub_18199C28C(v96);
LABEL_128:
          sqlite3_str_appendf(v92, "%02d", v32);
LABEL_129:
          i += 2;
          continue;
        case 'Y':
          goto LABEL_109;
        case 'd':
        case 'e':
          if (v34 == 100)
          {
            v36 = "%02d";
          }

          else
          {
            v36 = "%2d";
          }

          v37 = LODWORD(v95[0]);
LABEL_71:
          sqlite3_str_appendf(v92, v36, v32, v37, v86, v87);
          goto LABEL_129;
        case 'f':
          sqlite3_str_appendf(v92, "%06.3f", v32);
          goto LABEL_129;
        case 'j':
          *&v96[32] = v95[1];
          *v96 = v94;
          *&v96[16] = v95[0];
          v96[40] = 0;
          *&v96[12] = 0x100000001;
          sub_18199C28C(v96);
          sqlite3_str_appendf(v92, "%03d", v52);
          goto LABEL_129;
        case 's':
          if ((BYTE12(v95[1]) & 4) != 0)
          {
            sqlite3_str_appendf(v92, "%.3f", v32);
          }

          else
          {
            sqlite3_str_appendf(v92, "%lld", v32);
          }

          goto LABEL_129;
        case 'u':
        case 'w':
          v40 = (v94 + 129600000) / 86400000 % 7;
          if (v40)
          {
            v41 = 0;
          }

          else
          {
            v41 = v34 == 117;
          }

          if (v41)
          {
            v42 = 55;
          }

          else
          {
            v42 = v40 + 48;
          }

          if (v93[2] + 1 >= v93[0])
          {
            v43 = sub_181906424(v92, 1);
            if (v43 < 1)
            {
              i += 2;
              continue;
            }
          }

          else
          {
            v43 = 1;
          }

          v48 = v43 + 1;
          do
          {
            v49 = v93[2]++;
            v92[1][v49] = v42;
            --v48;
          }

          while (v48 > 1);
          i += 2;
          break;
        default:
          goto LABEL_152;
      }
    }

    if (!*(v11 + i))
    {
      break;
    }
  }

  v80 = i - v30;
  if (i > v30)
  {
    if (v80 <= 0)
    {
      if (v80)
      {
        sub_1819012D0(34353);
      }
    }

    else
    {
      v81 = v93[2];
      if ((v93[2] + v80) >= v93[0])
      {
        sub_181906814(v92, (v11 + v30), v80);
      }

      else
      {
        v93[2] += v80;
        memcpy(&v92[1][v81], (v11 + v30), v80 & 0x7FFFFFFF);
      }
    }
  }

  v82 = LOBYTE(v93[3]);
  if (LOBYTE(v93[3]))
  {
    *(a1 + 36) = LOBYTE(v93[3]);
    if ((*(*a1 + 20) & 1) == 0)
    {
      goto LABEL_152;
    }

    if (v82 == 100)
    {
      v83 = "another row available";
    }

    else if (v82 == 101)
    {
      v83 = "no more rows available";
    }

    else if (v82 > 0x1C || ((0x1410004uLL >> v82) & 1) != 0)
    {
      v83 = "unknown error";
    }

    else
    {
      v83 = off_1E6A27DD8[v82];
    }

    v84 = a1;
    v85 = -1;
  }

  else
  {
    if ((v93[3] & 0x400) != 0)
    {
      sqlite3_result_text(a1, v92[1], v93[2], sub_181916CE4);
      return;
    }

    v83 = &byte_181A2878D;
    v84 = a1;
    v85 = 0;
  }

  sub_18190B23C(v84, v83, v85, 1u, 0);
LABEL_152:
  if ((v93[3] & 0x400) != 0)
  {
    if (v92[1])
    {
      sub_181929C84(v92[0], v92[1]);
    }
  }
}

void sub_18199B858(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  if (sub_1818F50DC(a1, 1, a3, &v81, a5, a6, a7, a8) || sub_1818F50DC(a1, 1, a3 + 1, &v78, v10, v11, v12, v13))
  {
    return;
  }

  v14 = &v82;
  if (!BYTE9(v83))
  {
    if (BYTE8(v83))
    {
      if (v81 > 0x1A6401072FDFFLL)
      {
        v82 = 0u;
        v83 = 0u;
        v81 = 0u;
        BYTE12(v83) = 2;
        goto LABEL_19;
      }

      v17 = (v81 + 43200000) / 0x5265C00uLL;
      v18 = ((v17 + 32044.75) / 36524.25);
      v19 = v18 + 48;
      if (v18 < -48)
      {
        v19 = v18 + 51;
      }

      v20 = v17 + v18 - (v19 >> 2) + 1498;
      v21 = ((v20 + -122.1) / 365.25);
      v22 = v20 - 36525 * (v21 & 0x7FFFu) / 0x64;
      v23 = (v22 / 30.6001);
      v24 = v22 - (v23 * 30.6001);
      if (v23 < 14)
      {
        v25 = -1;
      }

      else
      {
        v25 = -13;
      }

      HIDWORD(v81) = v25 + v23;
      LODWORD(v82) = v24;
      if (v25 + v23 > 2)
      {
        v26 = -4716;
      }

      else
      {
        v26 = -4715;
      }

      v15 = v26 + v21;
      v16 = &v81 + 2;
    }

    else
    {
      *(&v81 + 1) = 0x1000007D0;
      v15 = 1;
      v16 = &v82;
    }

    *v16 = v15;
    BYTE9(v83) = 1;
  }

LABEL_19:
  if (BYTE10(v83))
  {
    if (BYTE9(v80))
    {
      goto LABEL_21;
    }
  }

  else
  {
    sub_18199C28C(&v81);
    v28 = (v81 + 43200000) % 86400000;
    *&v83 = (v28 % 60000) / 1000.0;
    v29 = (34953 * (v28 / 60000)) >> 16;
    DWORD1(v82) = v28 / 3600000;
    DWORD2(v82) = (v28 / 60000 - 60 * ((v29 >> 5) + ((v29 & 0x8000) >> 15)));
    BYTE12(v83) &= ~1u;
    BYTE10(v83) = 1;
    if (BYTE9(v80))
    {
LABEL_21:
      if (BYTE10(v80))
      {
LABEL_22:
        v27 = v78;
        goto LABEL_39;
      }

      goto LABEL_38;
    }
  }

  if (BYTE8(v80))
  {
    if (v78 > 0x1A6401072FDFFLL)
    {
      v79 = 0u;
      v80 = 0u;
      v78 = 0u;
      BYTE12(v80) = 2;
      goto LABEL_38;
    }

    v32 = (v78 + 43200000) / 0x5265C00uLL;
    v33 = ((v32 + 32044.75) / 36524.25);
    v34 = v33 + 48;
    if (v33 < -48)
    {
      v34 = v33 + 51;
    }

    v35 = v32 + v33 - (v34 >> 2) + 1498;
    v36 = ((v35 + -122.1) / 365.25);
    v37 = v35 - 36525 * (v36 & 0x7FFFu) / 0x64;
    v38 = (v37 / 30.6001);
    v30 = &v78 + 2;
    v39 = v37 - (v38 * 30.6001);
    if (v38 < 14)
    {
      v40 = -1;
    }

    else
    {
      v40 = -13;
    }

    HIDWORD(v78) = v40 + v38;
    LODWORD(v79) = v39;
    if (v40 + v38 > 2)
    {
      v41 = -4716;
    }

    else
    {
      v41 = -4715;
    }

    v31 = v41 + v36;
  }

  else
  {
    v30 = &v79;
    *(&v78 + 1) = 0x1000007D0;
    v31 = 1;
  }

  *v30 = v31;
  BYTE9(v80) = 1;
  if (BYTE10(v80))
  {
    goto LABEL_22;
  }

LABEL_38:
  sub_18199C28C(&v78);
  v27 = v78;
  v42 = (v78 + 43200000) % 86400000;
  *&v80 = (v42 % 60000) / 1000.0;
  v43 = (34953 * (v42 / 60000)) >> 16;
  DWORD1(v79) = v42 / 3600000;
  DWORD2(v79) = (v42 / 60000 - 60 * ((v43 >> 5) + ((v43 & 0x8000) >> 15)));
  BYTE12(v80) &= ~1u;
  BYTE10(v80) = 1;
LABEL_39:
  v44 = v81;
  if (v81 >= v27)
  {
    v51 = DWORD2(v81) - DWORD2(v78);
    if (DWORD2(v81) != DWORD2(v78))
    {
      DWORD2(v78) = DWORD2(v81);
      BYTE8(v80) = 0;
      sub_18199C28C(&v78);
    }

    v46 = v51 + ((HIDWORD(v81) - HIDWORD(v78)) >> 31);
    if (SHIDWORD(v81) >= SHIDWORD(v78))
    {
      v47 = HIDWORD(v81) - HIDWORD(v78);
    }

    else
    {
      v47 = HIDWORD(v81) - HIDWORD(v78) + 12;
    }

    if (v47)
    {
      HIDWORD(v78) = HIDWORD(v81);
      BYTE8(v80) = 0;
      sub_18199C28C(&v78);
    }

    for (i = v78; v44 < v78; i = v78)
    {
      v53 = v47 < 1;
      if (v47 >= 1)
      {
        --v47;
      }

      else
      {
        v47 = 11;
      }

      if (HIDWORD(v78)-- <= 1)
      {
        --DWORD2(v78);
        HIDWORD(v78) = 12;
      }

      v46 -= v53;
      BYTE8(v80) = 0;
      sub_18199C28C(&v78);
    }

    v55 = v44 - i;
    v56 = 43;
  }

  else
  {
    v45 = DWORD2(v78) - DWORD2(v81);
    if (DWORD2(v78) != DWORD2(v81))
    {
      DWORD2(v78) = DWORD2(v81);
      BYTE8(v80) = 0;
      sub_18199C28C(&v78);
    }

    v46 = v45 + ((HIDWORD(v78) - HIDWORD(v81)) >> 31);
    if (SHIDWORD(v78) >= SHIDWORD(v81))
    {
      v47 = HIDWORD(v78) - HIDWORD(v81);
    }

    else
    {
      v47 = HIDWORD(v78) - HIDWORD(v81) + 12;
    }

    if (v47)
    {
      HIDWORD(v78) = HIDWORD(v81);
      BYTE8(v80) = 0;
      sub_18199C28C(&v78);
    }

    for (j = v78; v44 > v78; j = v78)
    {
      v49 = v47 < 1;
      if (v47 >= 1)
      {
        --v47;
      }

      else
      {
        v47 = 11;
      }

      v50 = HIDWORD(v78)++;
      if (v50 >= 12)
      {
        ++DWORD2(v78);
        HIDWORD(v78) = 1;
      }

      v46 -= v49;
      BYTE8(v80) = 0;
      sub_18199C28C(&v78);
    }

    v55 = j - v44;
    v56 = 45;
  }

  *&v81 = v55 + 148699540800000;
  BYTE10(v83) = 0;
  HIDWORD(v82) = 0;
  if (BYTE8(v83))
  {
    if ((v55 + 148699540800000) > 0x1A6401072FDFFLL)
    {
      v82 = 0u;
      v83 = 0u;
      v81 = 0u;
      BYTE12(v83) = 2;
      goto LABEL_87;
    }

    v58 = (v55 + 148699584000000) / 0x5265C00uLL;
    v59 = ((v58 + 32044.75) / 36524.25);
    v60 = v59 + 48;
    if (v59 < -48)
    {
      v60 = v59 + 51;
    }

    v61 = v58 + v59 - (v60 >> 2) + 1498;
    v62 = ((v61 + -122.1) / 365.25);
    v63 = v61 - 36525 * (v62 & 0x7FFFu) / 0x64;
    v64 = (v63 / 30.6001);
    v65 = v63 - (v64 * 30.6001);
    if (v64 < 14)
    {
      v66 = -1;
    }

    else
    {
      v66 = -13;
    }

    HIDWORD(v81) = v66 + v64;
    LODWORD(v82) = v65;
    if (v66 + v64 > 2)
    {
      v67 = -4716;
    }

    else
    {
      v67 = -4715;
    }

    v57 = v67 + v62;
    v14 = &v81 + 2;
  }

  else
  {
    *(&v81 + 1) = 0x1000007D0;
    v57 = 1;
  }

  *v14 = v57;
  BYTE9(v83) = 1;
LABEL_87:
  sub_18199C28C(&v81);
  v68 = (v81 + 43200000) % 86400000;
  *&v83 = (v68 % 60000) / 1000.0;
  DWORD1(v82) = v68 / 3600000;
  DWORD2(v82) = (v68 / 60000 - 60 * ((((34953 * (v68 / 60000)) >> 16) >> 5) + (((v68 / 60000 + ((-30583 * (v68 / 60000)) >> 16)) & 0x8000) >> 15)));
  BYTE12(v83) &= ~1u;
  BYTE10(v83) = 1;
  LODWORD(v77) = 0;
  v76 = 0u;
  *(&v77 + 4) = 100;
  WORD6(v77) = 0;
  sqlite3_str_appendf(&v76, "%c%04d-%02d-%02d %02d:%02d:%06.3f", v56, v46, v47, v82 - 1, v68 / 3600000, DWORD2(v82), *&v83);
  v69 = BYTE12(v77);
  if (BYTE12(v77))
  {
    if (!a1 || (*(a1 + 36) = BYTE12(v77), (*(*a1 + 20) & 1) == 0))
    {
LABEL_110:
      if ((BYTE13(v77) & 4) != 0)
      {
        if (*(&v76 + 1))
        {
          sub_181929C84(v76, *(&v76 + 1));
        }
      }

      return;
    }

    if (v69 == 100)
    {
      v70 = "another row available";
    }

    else if (v69 == 101)
    {
      v70 = "no more rows available";
    }

    else if (v69 > 0x1C || ((0x1410004uLL >> v69) & 1) != 0)
    {
      v70 = "unknown error";
    }

    else
    {
      v70 = off_1E6A27DD8[v69];
    }

    v71 = a1;
    v72 = -1;
LABEL_109:
    sub_18190B23C(v71, v70, v72, 1u, 0);
    goto LABEL_110;
  }

  if ((BYTE13(v77) & 4) == 0)
  {
    if (!a1)
    {
      return;
    }

    v70 = &byte_181A2878D;
    v71 = a1;
    v72 = 0;
    goto LABEL_109;
  }

  v73 = *(&v76 + 1);
  if (a1)
  {
    sub_18190B23C(a1, *(&v76 + 1), SDWORD2(v77), 1u, sub_181916CE4);
  }

  else if (*(*(&v76 + 1) + 103))
  {
    v74 = *(*(&v76 + 1) + 220);
    if (!v74)
    {
      *(*(&v76 + 1) + 103) = 0;
      *(v73 + 424) = 0;
      v75 = *(v73 + 432) - 1;
      *(v73 + 432) = v75;
      if (!v75)
      {
        LOWORD(v74) = *(v73 + 438);
      }

      *(v73 + 436) = v74;
    }
  }
}

uint64_t sub_18199C28C(uint64_t result)
{
  if (*(result + 40))
  {
    return result;
  }

  if (*(result + 41))
  {
    v1 = *(result + 8);
    if ((v1 - 10000) < 0xFFFFC687)
    {
      goto LABEL_6;
    }

    v3 = *(result + 12);
    v2 = *(result + 16);
    v4 = *(result + 44);
    if (v4)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v1 = 2000;
    v2 = 1;
    v3 = 1;
    v4 = *(result + 44);
    if (v4)
    {
LABEL_6:
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 44) |= 2u;
      return result;
    }
  }

  v5 = v3 < 3;
  if (v3 < 3)
  {
    v3 += 12;
  }

  v6 = (((v2 + (306001 * v3 + 306001) / 10000 + (36525 * (v1 - v5) + 172251900) / 0x64u - (v1 - v5 + 4800) / 0x64u + (v1 - v5 + 4800) / 0x190u + 38) + -1524.5) * 86400000.0);
  *result = v6;
  *(result + 40) = 1;
  if (*(result + 42))
  {
    v7 = (*(result + 32) * 1000.0 + 0.5) + 3600000 * *(result + 20) + 60000 * *(result + 24) + v6;
    *result = v7;
    v8 = *(result + 28);
    if (v8)
    {
      *result = v7 - 60000 * v8;
      *(result + 41) = 0;
      *(result + 28) = 0;
      *(result + 44) = v4 & 0xE6 | 8;
    }
  }

  return result;
}

uint64_t sub_18199C428(uint64_t a1)
{
  v1 = *(*(a1 + 24) + 136) + 40 * *(a1 + 32);
  v2 = 1;
  if (*v1 == 65)
  {
    v3 = *(v1 + 2);
    v4 = "a generated column";
    if ((v3 & 8) == 0)
    {
      v4 = "an index";
    }

    if ((v3 & 4) != 0)
    {
      v5 = "a CHECK constraint";
    }

    else
    {
      v5 = v4;
    }

    v7 = sqlite3_mprintf("non-deterministic use of %s() in %s", *(*(a1 + 8) + 56), v5);
    *(a1 + 36) = 1;
    sub_1818900D0(*a1, v7, -1, 1u, 0xFFFFFFFFFFFFFFFFLL);
    if (!v7)
    {
      return 0;
    }

    v8 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48 -= xmmword_1ED452EC0(v7);
      --qword_1ED456A90;
      off_1ED452EB0(v7);
      v7 = xmmword_1ED456AF0;
      if (!xmmword_1ED456AF0)
      {
        return 0;
      }

      v8 = &xmmword_1ED452F28;
    }

    (*v8)(v7);
    return 0;
  }

  return v2;
}

BOOL sub_18199C570(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = 0;
  v33 = 0;
  if (sub_18199C770(a1, "20c:20e", a3, a4, a5, a6, a7, a8, &v34 + 4) != 2)
  {
    return 1;
  }

  v16 = a1 + 5;
  if (a1[5] == 58)
  {
    if (sub_18199C770(a1 + 6, "20e", v10, v11, v12, v13, v14, v15, &v33) != 1)
    {
      return 1;
    }

    v16 = a1 + 8;
    v17 = 0.0;
    if (a1[8] == 46)
    {
      v20 = a1[9];
      v19 = a1 + 9;
      v18 = v20;
      if (v20 - 58 >= 0xFFFFFFFFFFFFFFF6)
      {
        v21 = 0.0;
        v22 = 1.0;
        v16 = v19;
        do
        {
          v21 = v18 + v21 * 10.0 + -48.0;
          v22 = v22 * 10.0;
          v23 = *++v16;
          v18 = v23;
        }

        while (v23 - 58 > 0xFFFFFFFFFFFFFFF5);
        v17 = v21 / v22;
        if (v17 > 0.999)
        {
          v17 = 0.999;
        }
      }
    }
  }

  else
  {
    v33 = 0;
    v17 = 0.0;
  }

  *(a2 + 40) = 0;
  v24 = *(a2 + 44);
  *(a2 + 44) = v24 & 0xFE;
  *(a2 + 42) = 1;
  v25 = v34;
  *(a2 + 20) = HIDWORD(v34);
  *(a2 + 24) = v25;
  *(a2 + 32) = v17 + v33;
  do
  {
    v26 = *v16++;
  }

  while ((byte_181A204C8[v26] & 1) != 0);
  v36 = 0;
  v35 = 0;
  *(a2 + 28) = 0;
  v27 = *(v16 - 1);
  if (v27 == 45)
  {
    v28 = -1;
LABEL_18:
    if (sub_18199C770(v16, "20b:20e", v10, v11, v12, v13, v14, v15, &v36) == 2)
    {
      v16 += 5;
      *(a2 + 28) = (v35 + 60 * v36) * v28;
      do
      {
LABEL_23:
        v31 = *v16++;
        v30 = v31;
      }

      while ((byte_181A204C8[v31] & 1) != 0);
      v32 = v30 == 0;
      return !v32;
    }

    return 1;
  }

  if (v27 == 43)
  {
    v28 = 1;
    goto LABEL_18;
  }

  if ((v27 & 0xFFFFFFDF) == 0x5A)
  {
    *(a2 + 44) = v24 & 0xE6 | 8;
    goto LABEL_23;
  }

  v32 = v27 == 0;
  return !v32;
}

uint64_t sub_18199C770(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  result = 0;
  v19 = &a9;
  while (1)
  {
    v11 = *a2;
    if (v11 != 48)
    {
      break;
    }

    v12 = 0;
LABEL_9:
    if (v12 < (a2[1] - 48) || v12 > word_181A24A18[a2[2] - 97])
    {
      return result;
    }

    if (!a2[3])
    {
      **v19 = v12;
      return (result + 1);
    }

    if (a2[3] != *a1)
    {
      return result;
    }

    v18 = v19++;
    **v18 = v12;
    ++a1;
    result = (result + 1);
    a2 += 4;
  }

  v12 = 0;
  v13 = v11 - 49;
  v14 = &a1[v13 + 1];
  while (1)
  {
    v15 = *a1;
    if ((v15 - 58) < 0xFFFFFFFFFFFFFFF6)
    {
      return result;
    }

    v12 = v15 + 10 * v12 - 48;
    ++a1;
    if (v13-- == 0)
    {
      a1 = v14;
      goto LABEL_9;
    }
  }
}

uint64_t sub_18199C860(uint64_t result)
{
  v1 = *(result + 16);
  v2 = v1 - 29;
  if (v1 >= 29)
  {
    v3 = *(result + 12);
    if (((1 << v3) & 0x15AA) != 0)
    {
      *(result + 43) = 0;
    }

    else if (v3 == 2)
    {
      v4 = *(result + 8);
      if ((v4 & 3) != 0 || ((HIDWORD(v5) = -1030792151 * v4 + 85899344, LODWORD(v5) = HIDWORD(v5), (v5 >> 2) <= 0x28F5C28) ? (v6 = v4 % 400 == 0) : (v6 = 1), !v6))
      {
        v2 = v1 - 28;
      }

      *(result + 43) = v2;
    }

    else
    {
      *(result + 43) = v1 == 31;
    }
  }

  else
  {
    *(result + 43) = 0;
  }

  return result;
}

uint64_t sub_18199C910(uint64_t a1, uint64_t a2)
{
  memset(&v31, 0, sizeof(v31));
  sub_18199C28C(a1);
  if ((*a1 - 0xC1BC387B0A01) > 0xFFFFFE0C05D817FELL)
  {
    v32 = *a1 / 0x3E8uLL - 210866760000;
    v5 = 1900;
    goto LABEL_24;
  }

  v4 = *(a1 + 32);
  v29 = *(a1 + 16);
  v30 = v4;
  v28 = *a1;
  if (!BYTE9(v4))
  {
    if (BYTE8(v30))
    {
      if (v28 >= 0x1A6401072FE00)
      {
        v29 = 0u;
        v30 = 0u;
        v28 = 0u;
        BYTE12(v30) = 2;
        goto LABEL_18;
      }

      v8 = (v28 + 43200000) / 0x5265C00uLL;
      v9 = ((v8 + 32044.75) / 36524.25);
      v10 = v9 + 48;
      if (v9 < -48)
      {
        v10 = v9 + 51;
      }

      v11 = v8 + v9 - (v10 >> 2) + 1498;
      v12 = ((v11 + -122.1) / 365.25);
      v13 = v11 - 36525 * (v12 & 0x7FFFu) / 0x64;
      v14 = (v13 / 30.6001);
      v6 = &v28 + 2;
      v15 = v13 - (v14 * 30.6001);
      if (v14 < 14)
      {
        v16 = -1;
      }

      else
      {
        v16 = -13;
      }

      HIDWORD(v28) = v16 + v14;
      LODWORD(v29) = v15;
      if (v16 + v14 > 2)
      {
        v17 = -4716;
      }

      else
      {
        v17 = -4715;
      }

      v7 = v17 + v12;
    }

    else
    {
      v6 = &v29;
      *(&v28 + 1) = 0x1000007D0;
      v7 = 1;
    }

    *v6 = v7;
    BYTE9(v30) = 1;
  }

LABEL_18:
  if (!BYTE10(v30))
  {
    sub_18199C28C(&v28);
    v18 = (v28 + 43200000) % 86400000;
    *&v30 = (v18 % 60000) / 1000.0;
    v19 = (34953 * (v18 / 60000)) >> 16;
    DWORD1(v29) = v18 / 3600000;
    DWORD2(v29) = (v18 / 60000 - 60 * ((v19 >> 5) + ((v19 & 0x8000) >> 15)));
    BYTE12(v30) &= ~1u;
    BYTE10(v30) = 1;
  }

  if (SDWORD2(v28) <= 0)
  {
    v20 = -(-DWORD2(v28) & 3);
  }

  else
  {
    v20 = BYTE8(v28) & 3;
  }

  v21 = v20 + 2000;
  v22 = DWORD2(v28) - v21;
  DWORD2(v28) = v21;
  BYTE8(v30) = 0;
  sub_18199C28C(&v28);
  v32 = v28 / 1000 - 210866760000;
  v5 = v22 + 1900;
LABEL_24:
  if (!dword_1ED453040)
  {
    if (!localtime_r(&v32, &v31))
    {
      goto LABEL_27;
    }

LABEL_30:
    v23 = 0;
    v24 = *a1 % 1000;
    v25 = v31.tm_mon + 1;
    *(a1 + 8) = v5 + v31.tm_year;
    *(a1 + 12) = v25;
    *(a1 + 16) = vrev64_s32(*&v31.tm_hour);
    tm_min = v31.tm_min;
    *(a1 + 32) = v31.tm_sec + v24 * 0.001;
    *(a1 + 42) = 1;
    *(a1 + 40) = 256;
    LOBYTE(v24) = *(a1 + 44);
    *(a1 + 24) = tm_min;
    *(a1 + 44) = v24 & 0xFC;
    return v23;
  }

  if (off_1ED453048 && !off_1ED453048(&v32, &v31))
  {
    goto LABEL_30;
  }

LABEL_27:
  v23 = 1;
  if (a2)
  {
    *(a2 + 36) = 1;
    sub_1818900D0(*a2, "local time unavailable", -1, 1u, 0xFFFFFFFFFFFFFFFFLL);
  }

  return v23;
}

double sub_18199CD54(uint64_t a1)
{
  if (!*(a1 + 42))
  {
    sub_18199C28C(a1);
    v2 = (*a1 + 43200000) % 86400000;
    result = (v2 % 60000) / 1000.0;
    *(a1 + 32) = result;
    v4 = (34953 * (v2 / 60000)) >> 16;
    *(a1 + 20) = v2 / 3600000;
    *(a1 + 24) = (v2 / 60000 - 60 * ((v4 >> 5) + ((v4 & 0x8000) >> 15)));
    *(a1 + 44) &= ~1u;
    *(a1 + 42) = 1;
  }

  return result;
}

void sub_18199CE54(_DWORD *a1, int a2, uint64_t *a3)
{
  v3 = a2 == 1;
  if (a2 >= 1)
  {
    v7 = *a3;
    v8 = !v3;
    v9 = sub_18199F1EC(a1, v7, v8);
    if (v9)
    {
      v10 = v9;
      if (a2 == 1)
      {
LABEL_7:
        sub_1819A0070(a1, v10);
      }

      else
      {
        v12 = a2;
        v13 = a3 + 1;
        v14 = v12 - 1;
        while (1)
        {
          v15 = *v13;
          if (!*v13)
          {
            break;
          }

          v16 = *(v15 + 20);
          if ((~v16 & 0x202) != 0 || *(v15 + 22) != 1)
          {
            if (v16)
            {
              break;
            }

            v17 = sub_18193CB70(v15, 1);
          }

          else
          {
            v17 = *(v15 + 8);
          }

          if (!v17)
          {
            break;
          }

          if (*v17 != 36)
          {
            goto LABEL_25;
          }

          if (!v17[1])
          {
            break;
          }

          *(v10 + 51) = 1;
          *(v10 + 52) = 0;
          v18 = sub_18199F840(v10, 0, v17 + 1, 0);
          if (v18 >= 0xFFFFFFFD && v18 != -2)
          {
            if (v18 == -3)
            {
LABEL_25:
              sub_18199FF3C(a1, v17);
              break;
            }

            if (a1)
            {
              a1[9] = 1;
              sub_1818900D0(*a1, "malformed JSON", -1, 1u, 0xFFFFFFFFFFFFFFFFLL);
            }

            break;
          }

          ++v13;
          if (!--v14)
          {
            goto LABEL_7;
          }
        }
      }

      v11 = *(v10 + 36);
      if (v11 < 2)
      {
        sub_1819A24BC(v10);
        v19 = *(v10 + 24);

        sub_181929C84(v19, v10);
      }

      else
      {
        *(v10 + 36) = v11 - 1;
      }
    }
  }
}

void sub_18199CFF4(void *a1, int a2, uint64_t *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v4 = 0.0;
  memset(v14, 0, sizeof(v14));
  v10 = a1;
  v11 = v14 + 2;
  v5 = 1;
  LOBYTE(v14[0]) = 1;
  v12 = 100;
  v13 = 1;
  BYTE2(v14[0]) = 91;
  if (a2 < 1)
  {
    goto LABEL_10;
  }

  v7 = a2;
  v5 = 1;
  do
  {
    if (v5 && (v11[v5 - 1] & 0xDF) != 0x5B)
    {
      if (v5 < v12)
      {
        v13 = v5 + 1;
        v11[v5] = 44;
      }

      else
      {
        sub_1819A4770(&v10, 44);
      }
    }

    v8 = *a3++;
    v4 = sub_1819A4A18(&v10, v8, v4);
    v5 = v13;
    --v7;
  }

  while (v7);
  if (v13 >= v12)
  {
    sub_1819A4770(&v10, 93);
  }

  else
  {
LABEL_10:
    v13 = v5 + 1;
    v11[v5] = 93;
  }

  sub_1819A3DCC(&v10, 0, 0);
  if (a1)
  {
    v9 = *a1;
    *(v9 + 23) = 74;
    *(v9 + 20) |= 0x800u;
  }
}

void sub_18199D15C(_DWORD *a1, int a2, uint64_t *a3)
{
  v6 = sub_18199F1EC(a1, *a3, 0);
  if (!v6)
  {
    return;
  }

  v7 = v6;
  if (a2 != 2)
  {
    v11 = 0;
    goto LABEL_8;
  }

  v8 = a3[1];
  if (v8)
  {
    v9 = *(v8 + 20);
    if ((~v9 & 0x202) != 0 || *(v8 + 22) != 1)
    {
      if (v9)
      {
        goto LABEL_37;
      }

      v10 = sub_18193CB70(v8, 1);
    }

    else
    {
      v10 = *(v8 + 8);
    }

    if (v10)
    {
      if (*v10 == 36)
      {
        v19 = v10 + 1;
      }

      else
      {
        v19 = "@";
      }

      v20 = sub_18199F840(v7, 0, v19, 0);
      v11 = v20;
      if (v20 >= 0xFFFFFFFD)
      {
        if (v20 != -2)
        {
          if (v20 != -3)
          {
            v12 = 1;
            if (a1)
            {
              a1[9] = 1;
              sub_1818900D0(*a1, "malformed JSON", -1, 1u, 0xFFFFFFFFFFFFFFFFLL);
            }

            v11 = 0;
            goto LABEL_9;
          }

          sub_18199FF3C(a1, v10);
        }

        v11 = 0;
        v12 = 1;
LABEL_9:
        if ((*(*v7 + v11) & 0xF) != 0xB || ((v25 = 0, v13 = sub_1819A0760(v7, v11, &v25), v14 = v13 + v11, v15 = v13 + v11 + v25, v13) ? (v16 = v14 >= v15) : (v16 = 1), v16))
        {
          v21 = 0;
        }

        else
        {
          LODWORD(v21) = 0;
          do
          {
            v22 = sub_1819A0760(v7, v14, &v25);
            v21 = (v21 + 1);
            if (!v22)
            {
              break;
            }

            v14 += v22 + v25;
          }

          while (v14 < v15);
        }

        if (a1)
        {
          v17 = v12;
        }

        else
        {
          v17 = 1;
        }

        if ((v17 & 1) == 0)
        {
          v18 = *a1;
          if ((*(*a1 + 20) & 0x9000) != 0)
          {
            sub_18193D288(v18, v21);
          }

          else
          {
            *v18 = v21;
            *(v18 + 20) = 4;
          }
        }

        goto LABEL_37;
      }

LABEL_8:
      v12 = 0;
      goto LABEL_9;
    }
  }

LABEL_37:
  v23 = *(v7 + 36);
  if (v23 < 2)
  {
    sub_1819A24BC(v7);
    v24 = *(v7 + 24);

    sub_181929C84(v24, v7);
  }

  else
  {
    *(v7 + 36) = v23 - 1;
  }
}

void sub_18199D388(sqlite3_context *a1, uint64_t a2, uint64_t *a3)
{
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  if (a1)
  {
    v5 = *(*a1 + 24);
  }

  else
  {
    v5 = 0;
  }

  *(&v31 + 1) = v5;
  if (sub_1819A02D4(*a3, &v30))
  {
    v6 = sub_1819A08C0(&v30, 0, DWORD2(v30), 1u);
    goto LABEL_6;
  }

  v9 = *a3;
  if (!*a3)
  {
    return;
  }

  v10 = *(v9 + 20);
  if ((~v10 & 0x202) != 0 || *(v9 + 22) != 1)
  {
    if (v10)
    {
      return;
    }

    *&v31 = sub_18193CB70(v9, 1);
    if (!v31)
    {
      return;
    }
  }

  else
  {
    *&v31 = *(v9 + 8);
    if (!v31)
    {
      return;
    }
  }

  v13 = *a3;
  if (!*a3)
  {
    sub_1819012D0(93690);
    goto LABEL_42;
  }

  v14 = *(v13 + 20);
  if ((v14 & 2) != 0 && *(v13 + 22) == 1)
  {
    v15 = *(v13 + 16);
    goto LABEL_43;
  }

  if ((v14 & 0x10) == 0)
  {
    if ((v14 & 1) == 0)
    {
      v15 = sub_18193CB44(v13, 1);
      goto LABEL_43;
    }

LABEL_42:
    v15 = 0;
    goto LABEL_43;
  }

  v15 = *(v13 + 16);
  if ((*(v13 + 20) & 0x400) != 0)
  {
    v15 += *v13;
  }

LABEL_43:
  LODWORD(v32) = v15;
  v16 = v31;
  v17 = sub_1819A13A0(&v30, 0);
  if (!HIBYTE(v32))
  {
    v18 = v17 - 1;
    if (v17 >= 1)
    {
      v19 = v16 + v17 - 1;
      do
      {
        v21 = *++v19;
        v20 = v21;
        ++v18;
      }

      while (byte_181A24B89[v21]);
      if (v20)
      {
        v18 += sub_1819A22A8(v19);
        if (*(v16 + v18))
        {
          goto LABEL_52;
        }

        BYTE1(v33) = 1;
      }

      if (v18 > 0)
      {
        v6 = 0;
        goto LABEL_6;
      }
    }
  }

LABEL_52:
  if (v33)
  {
    v23 = (v31 - 8);
    v22 = *(v31 - 8);
    if (v22 < 2)
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
          goto LABEL_61;
        }

        v24 = &xmmword_1ED452F28;
      }

      (*v24)(v23);
    }

    else
    {
      *v23 = v22 - 1;
    }

LABEL_61:
    *&v31 = 0;
    LODWORD(v32) = 0;
    LOBYTE(v33) = 0;
  }

  if (HIDWORD(v30))
  {
    if (v30)
    {
      sub_181929C84(*(&v31 + 1), v30);
    }

    v30 = 0uLL;
  }

  if (HIBYTE(v32))
  {
    v6 = -1;
  }

  else
  {
    v25 = DWORD2(v32);
    if (DWORD2(v32))
    {
      v26 = 0;
      v27 = v31;
      do
      {
        v29 = *v27++;
        v28 = v29;
        if (!v29)
        {
          break;
        }

        if ((v28 & 0xC0) != 0x80)
        {
          ++v26;
        }

        --v25;
      }

      while (v25);
      v6 = v26 + 1;
    }

    else
    {
      v6 = 1;
    }
  }

LABEL_6:
  if (v33)
  {
    v8 = (v31 - 8);
    v7 = *(v31 - 8);
    if (v7 < 2)
    {
      v11 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v8);
        --qword_1ED456A90;
        off_1ED452EB0(v8);
        v8 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
          goto LABEL_20;
        }

        v11 = &xmmword_1ED452F28;
      }

      (*v11)(v8);
    }

    else
    {
      *v8 = v7 - 1;
    }

LABEL_20:
    *&v31 = 0;
    LODWORD(v32) = 0;
    LOBYTE(v33) = 0;
  }

  if (HIDWORD(v30))
  {
    if (v30)
    {
      sub_181929C84(*(&v31 + 1), v30);
    }

    v30 = 0uLL;
  }

  if (v6 < 0)
  {
    sqlite3_result_error_nomem(a1);
  }

  else if (a1)
  {
    v12 = *a1;
    if ((*(*a1 + 20) & 0x9000) != 0)
    {
      sub_18193D288(v12, v6);
    }

    else
    {
      *v12 = v6;
      *(v12 + 20) = 4;
    }
  }
}

void sub_18199D750(uint64_t a1, int a2, uint64_t *a3)
{
  v55 = *MEMORY[0x1E69E9840];
  if (a2 < 2)
  {
    return;
  }

  v6 = sub_18199F1EC(a1, *a3, 0);
  if (!v6)
  {
    return;
  }

  v7 = v6;
  v54 = 0;
  memset(v53, 0, sizeof(v53));
  v51 = 0u;
  v52 = 0u;
  if (a1)
  {
    v50 = *(*(a1 + 8) + 8);
  }

  else
  {
    LOBYTE(v50) = 0;
  }

  v8 = v53 + 2;
  *&v51 = a1;
  *(&v51 + 1) = v53 + 2;
  v9 = xmmword_181A201B0;
  v52 = xmmword_181A201B0;
  LOWORD(v53[0]) = 1;
  if (a2 != 2)
  {
    *(&v52 + 1) = 1;
    BYTE2(v53[0]) = 91;
  }

  v10 = 1;
  while (1)
  {
    v11 = a3[v10];
    if (!v11)
    {
      break;
    }

    v12 = *(v11 + 20);
    if ((~v12 & 0x202) != 0 || *(v11 + 22) != 1)
    {
      if (v12)
      {
        break;
      }

      v14 = sub_18193CB70(v11, 1);
      v9 = xmmword_181A201B0;
      v13 = v14;
    }

    else
    {
      v13 = *(v11 + 8);
    }

    if (!v13)
    {
      break;
    }

    v15 = strlen(v13);
    if (*v13 == 36)
    {
      v16 = sub_18199F840(v7, 0, (v13 + 1), 0);
      v9 = xmmword_181A201B0;
      goto LABEL_87;
    }

    if ((v50 & 3) == 0)
    {
      goto LABEL_125;
    }

    v17 = v15;
    v18 = v15 & 0x3FFFFFFF;
    *&v51 = a1;
    *(&v51 + 1) = v8;
    v52 = xmmword_181A201B0;
    LOWORD(v53[0]) = 1;
    v19 = a3[v10];
    if (v19)
    {
      if ((0x50505050uLL >> *(v19 + 20)))
      {
        BYTE2(v53[0]) = 91;
        *(&v52 + 1) = 1;
        v20 = 1;
        if (*v13 == 45)
        {
          BYTE3(v53[0]) = 35;
          v20 = ++*(&v52 + 1);
        }

        if (v18)
        {
          v21 = v15 & 0x3FFFFFFF;
          if (v20 + v21 >= v52)
          {
            sub_1819A470C(&v51, v13, v18);
            v20 = *(&v52 + 1);
          }

          else
          {
            memcpy((*(&v51 + 1) + v20), v13, v21);
            v20 = *(&v52 + 1) + v21;
            *(&v52 + 1) += v21;
          }
        }

        if (v20 + 2 >= v52)
        {
          sub_1819A470C(&v51, "]", 2u);
          goto LABEL_72;
        }

        *(*(&v51 + 1) + v20) = 93;
        v29 = *(&v52 + 1) + 2;
        goto LABEL_71;
      }
    }

    else
    {
      sub_1819012D0(99877);
    }

    if (v18)
    {
      v22 = 0;
      while (1)
      {
        v23 = *(v13 + v22);
        if (v23 != 95 && (byte_181A204C8[v23] & 6) == 0)
        {
          break;
        }

        if ((v17 & 0x3FFFFFFF) == ++v22)
        {
          goto LABEL_41;
        }
      }
    }

    else
    {
      LODWORD(v22) = 0;
    }

    if (v22 == v18)
    {
LABEL_41:
      if (*(&v52 + 1) + 1 >= v52)
      {
        sub_1819A470C(&v51, ".", 1u);
        if (!v18)
        {
          goto LABEL_72;
        }

LABEL_50:
        v28 = v17 & 0x3FFFFFFF;
        if (*(&v52 + 1) + v28 >= v52)
        {
          sub_1819A470C(&v51, v13, v18);
          goto LABEL_72;
        }

        memcpy((*(&v51 + 1) + *(&v52 + 1)), v13, v28);
        v29 = *(&v52 + 1) + v28;
LABEL_71:
        *(&v52 + 1) = v29;
        goto LABEL_72;
      }

      *(*(&v51 + 1) + (*(&v52 + 1))++) = 46;
      if (v18)
      {
        goto LABEL_50;
      }

      goto LABEL_72;
    }

    if (*v13 == 91 && v18 > 2)
    {
      v49 = v8;
      v30 = v17 & 0x3FFFFFFF;
      v26 = *(&v52 + 1);
      v27 = v52;
      if (*(v13 + v30 - 1) == 93)
      {
        if (*(&v52 + 1) + v30 >= v52)
        {
          sub_1819A470C(&v51, v13, v18);
        }

        else
        {
          memcpy((*(&v51 + 1) + *(&v52 + 1)), v13, v17 & 0x3FFFFFFF);
          *(&v52 + 1) += v30;
        }

        v8 = v49;
        goto LABEL_72;
      }

      v8 = v49;
    }

    else
    {
      v26 = *(&v52 + 1);
      v27 = v52;
    }

    if (v26 + 2 >= v27)
    {
      sub_1819A470C(&v51, ".", 2u);
      v31 = *(&v52 + 1);
      if (v18)
      {
LABEL_66:
        v32 = v17 & 0x3FFFFFFF;
        if (v31 + v32 >= v52)
        {
          sub_1819A470C(&v51, v13, v18);
          v31 = *(&v52 + 1);
        }

        else
        {
          memcpy((*(&v51 + 1) + v31), v13, v32);
          v31 = *(&v52 + 1) + v32;
          *(&v52 + 1) += v32;
        }
      }
    }

    else
    {
      *(*(&v51 + 1) + v26) = 8750;
      v31 = *(&v52 + 1) + 2;
      *(&v52 + 1) += 2;
      if (v18)
      {
        goto LABEL_66;
      }
    }

    if (v31 + 1 < v52)
    {
      *(*(&v51 + 1) + v31) = 34;
      v29 = *(&v52 + 1) + 1;
      goto LABEL_71;
    }

    sub_1819A470C(&v51, "", 1u);
LABEL_72:
    v33 = *(&v52 + 1);
    if (*(&v52 + 1) >= v52)
    {
      sub_1819A4770(&v51, 0);
      if (BYTE1(v53[0]))
      {
        goto LABEL_77;
      }
    }

    else
    {
      ++*(&v52 + 1);
      *(*(&v51 + 1) + v33) = 0;
      if (BYTE1(v53[0]))
      {
        goto LABEL_77;
      }
    }

    --*(&v52 + 1);
LABEL_77:
    v16 = sub_18199F840(v7, 0, *(&v51 + 1), 0);
    v9 = xmmword_181A201B0;
    if (!LOBYTE(v53[0]))
    {
      v35 = (*(&v51 + 1) - 8);
      v34 = *(*(&v51 + 1) - 8);
      if (v34 < 2)
      {
        v36 = &off_1ED452EB0;
        if (dword_1ED452E80)
        {
          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48[0] -= xmmword_1ED452EC0(v35);
          --qword_1ED456A90;
          off_1ED452EB0(v35);
          v35 = xmmword_1ED456AF0;
          v9 = xmmword_181A201B0;
          if (!xmmword_1ED456AF0)
          {
            goto LABEL_86;
          }

          v36 = &xmmword_1ED452F28;
        }

        (*v36)(v35, v9);
        v9 = xmmword_181A201B0;
      }

      else
      {
        *v35 = v34 - 1;
      }
    }

LABEL_86:
    *(&v51 + 1) = v8;
    v52 = v9;
    LOBYTE(v53[0]) = 1;
LABEL_87:
    if (v16 >= *(v7 + 8))
    {
      if (v16 != -2)
      {
        if (v16 != -1)
        {
LABEL_125:
          sub_18199FF3C(a1, v13);
          v9 = xmmword_181A201B0;
          break;
        }

        if (a1)
        {
          *(a1 + 36) = 1;
          sub_1818900D0(*a1, "malformed JSON", -1, 1u, 0xFFFFFFFFFFFFFFFFLL);
          v9 = xmmword_181A201B0;
        }

        break;
      }

      if (a2 == 2)
      {
        break;
      }

      if (*(&v52 + 1))
      {
        v37 = (*(&v51 + 1) + *(&v52 + 1));
        if ((*(*(&v51 + 1) + *(&v52 + 1) - 1) & 0xDF) != 0x5B)
        {
          if (*(&v52 + 1) >= v52)
          {
            sub_1819A4770(&v51, 44);
            v9 = xmmword_181A201B0;
          }

          else
          {
            ++*(&v52 + 1);
            *v37 = 44;
          }
        }
      }

      if (*(&v52 + 1) + 4 < v52)
      {
        *(*(&v51 + 1) + *(&v52 + 1)) = 1819047278;
        *(&v52 + 1) += 4;
        goto LABEL_12;
      }

      sub_1819A470C(&v51, "null", 4u);
      goto LABEL_11;
    }

    if (a2 != 2)
    {
      if (*(&v52 + 1))
      {
        v38 = (*(&v51 + 1) + *(&v52 + 1));
        if ((*(*(&v51 + 1) + *(&v52 + 1) - 1) & 0xDF) != 0x5B)
        {
          if (*(&v52 + 1) < v52)
          {
            ++*(&v52 + 1);
            *v38 = 44;
          }

          else
          {
            sub_1819A4770(&v51, 44);
          }
        }
      }

      sub_1819A3204(v7, v16, &v51);
LABEL_11:
      v9 = xmmword_181A201B0;
      goto LABEL_12;
    }

    if ((v50 & 1) == 0)
    {
      sub_1819A4E40(v7, v16, a1, 0);
      v9 = xmmword_181A201B0;
      if ((v50 & 0xA) != 0 || !a1 || (*(*v7 + v16) & 0xFu) < 0xB)
      {
        goto LABEL_12;
      }

LABEL_120:
      v42 = *a1;
      *(v42 + 23) = 74;
      *(v42 + 20) |= 0x800u;
      goto LABEL_12;
    }

    *&v51 = a1;
    *(&v51 + 1) = v8;
    v52 = v9;
    LOWORD(v53[0]) = 1;
    sub_1819A3204(v7, v16, &v51);
    sub_1819A3DCC(&v51, 0, 0);
    v9 = xmmword_181A201B0;
    if (!LOBYTE(v53[0]))
    {
      v40 = (*(&v51 + 1) - 8);
      v39 = *(*(&v51 + 1) - 8);
      if (v39 >= 2)
      {
        *v40 = v39 - 1;
        goto LABEL_118;
      }

      v41 = &off_1ED452EB0;
      if (!dword_1ED452E80)
      {
        goto LABEL_117;
      }

      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v40);
      --qword_1ED456A90;
      off_1ED452EB0(v40);
      v40 = xmmword_1ED456AF0;
      v9 = xmmword_181A201B0;
      if (xmmword_1ED456AF0)
      {
        v41 = &xmmword_1ED452F28;
LABEL_117:
        (*v41)(v40, v9);
LABEL_118:
        v9 = xmmword_181A201B0;
      }
    }

    *(&v51 + 1) = v8;
    v52 = v9;
    LOBYTE(v53[0]) = 1;
    if (a1)
    {
      goto LABEL_120;
    }

LABEL_12:
    if (++v10 == a2)
    {
      if (a2 != 2)
      {
        v43 = *(&v52 + 1);
        if (*(&v52 + 1) >= v52)
        {
          sub_1819A4770(&v51, 93);
        }

        else
        {
          ++*(&v52 + 1);
          *(*(&v51 + 1) + v43) = 93;
        }

        sub_1819A3DCC(&v51, 0, 0);
        v9 = xmmword_181A201B0;
        if (a1)
        {
          if ((v50 & 8) == 0)
          {
            v44 = *a1;
            *(v44 + 23) = 74;
            *(v44 + 20) |= 0x800u;
          }
        }
      }

      break;
    }
  }

  if (!LOBYTE(v53[0]))
  {
    v46 = (*(&v51 + 1) - 8);
    v45 = *(*(&v51 + 1) - 8);
    if (v45 >= 2)
    {
      *v46 = v45 - 1;
      goto LABEL_142;
    }

    v47 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_141:
      (*v47)(v46);
      v9 = xmmword_181A201B0;
      goto LABEL_142;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v46);
    --qword_1ED456A90;
    off_1ED452EB0(v46);
    v46 = xmmword_1ED456AF0;
    v9 = xmmword_181A201B0;
    if (xmmword_1ED456AF0)
    {
      v47 = &xmmword_1ED452F28;
      goto LABEL_141;
    }
  }

LABEL_142:
  *(&v51 + 1) = v8;
  v52 = v9;
  LOBYTE(v53[0]) = 1;
  v48 = *(v7 + 36);
  if (v48 < 2)
  {
    sub_1819A24BC(v7);
    sub_181929C84(*(v7 + 24), v7);
  }

  else
  {
    *(v7 + 36) = v48 - 1;
  }
}

void sub_18199E1A8(sqlite3_context *a1, int a2, uint64_t *a3)
{
  if (a1)
  {
    v3 = (*(*(a1 + 1) + 8) & 4) == 0;
    if (a2 < 1)
    {
      return;
    }
  }

  else
  {
    v3 = 1;
    if (a2 < 1)
    {
      return;
    }
  }

  if (a2)
  {
    if (v3)
    {
      v5 = 3;
    }

    else
    {
      v5 = 4;
    }

    sub_1819A5738(a1, a2, a3, v5);
  }

  else
  {
    if (v3)
    {
      v4 = "insert";
    }

    else
    {
      v4 = "set";
    }

    sub_1819A562C(a1, v4);
  }
}

void sub_18199E204(uint64_t a1, int a2, uint64_t *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (a1)
    {
      *(a1 + 36) = 1;
      v16 = *a1;

      sub_1818900D0(v16, "json_object() requires an even number of arguments", -1, 1u, 0xFFFFFFFFFFFFFFFFLL);
    }

    return;
  }

  v26 = 0;
  memset(v25, 0, sizeof(v25));
  v21 = a1;
  v22 = v25 + 2;
  v5 = 1;
  LOBYTE(v25[0]) = 1;
  v23 = 100;
  v24 = 1;
  BYTE2(v25[0]) = 123;
  if (a2 < 1)
  {
LABEL_46:
    v24 = v5 + 1;
    v22[v5] = 125;
    goto LABEL_47;
  }

  v7 = 0;
  while (*a3)
  {
    if (((0x4000000040004uLL >> *(*a3 + 20)) & 1) == 0)
    {
      goto LABEL_40;
    }

    if (!v24)
    {
      goto LABEL_12;
    }

    v8 = &v22[v24];
    if ((v22[v24 - 1] & 0xDF) == 0x5B)
    {
      goto LABEL_12;
    }

    if (v24 < v23)
    {
      ++v24;
      *v8 = 44;
LABEL_12:
      v9 = *a3;
      if (!*a3)
      {
        goto LABEL_30;
      }

      goto LABEL_13;
    }

    sub_1819A4770(&v21, 44);
    v9 = *a3;
    if (!*a3)
    {
LABEL_30:
      v11 = 0;
LABEL_31:
      sub_1819012D0(93690);
LABEL_32:
      v13 = 0;
      goto LABEL_33;
    }

LABEL_13:
    v10 = *(v9 + 20);
    if ((~v10 & 0x202) != 0 || *(v9 + 22) != 1)
    {
      if (v10)
      {
        v11 = 0;
        v12 = *(v9 + 20);
        if ((v12 & 2) == 0)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v11 = sub_18193CB70(v9, 1);
        v9 = *a3;
        if (!*a3)
        {
          goto LABEL_31;
        }

        v12 = *(v9 + 20);
        if ((v12 & 2) == 0)
        {
          goto LABEL_24;
        }
      }
    }

    else
    {
      v11 = *(v9 + 8);
      v12 = *(v9 + 20);
      if ((v12 & 2) == 0)
      {
        goto LABEL_24;
      }
    }

    if (*(v9 + 22) == 1)
    {
      v13 = *(v9 + 16);
      goto LABEL_33;
    }

LABEL_24:
    if ((v12 & 0x10) != 0)
    {
      v13 = *(v9 + 16);
      if ((v12 & 0x400) != 0)
      {
        v13 += *v9;
      }

      goto LABEL_33;
    }

    if (v12)
    {
      goto LABEL_32;
    }

    v13 = sub_18193CB44(v9, 1);
LABEL_33:
    sub_1819A43DC(&v21, v11, v13);
    v15 = v24;
    if (v24 < v23)
    {
      ++v24;
      v22[v15] = 58;
    }

    else
    {
      sub_1819A4770(&v21, 58);
    }

    sub_1819A4A18(&v21, a3[1], v14);
    a3 += 2;
    v7 += 2;
    if (v7 >= a2)
    {
      v5 = v24;
      if (v24 < v23)
      {
        goto LABEL_46;
      }

      sub_1819A4770(&v21, 125);
LABEL_47:
      sub_1819A3DCC(&v21, 0, 0);
      if (a1)
      {
        v19 = *a1;
        *(v19 + 23) = 74;
        *(v19 + 20) |= 0x800u;
      }

      return;
    }
  }

  sub_1819012D0(99877);
LABEL_40:
  if (a1)
  {
    *(a1 + 36) = 1;
    sub_1818900D0(*a1, "json_object() labels must be TEXT", -1, 1u, 0xFFFFFFFFFFFFFFFFLL);
  }

  if (!LOBYTE(v25[0]))
  {
    v18 = v22 - 8;
    v17 = *(v22 - 1);
    if (v17 >= 2)
    {
      *v18 = v17 - 1;
      return;
    }

    v20 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v18);
      --qword_1ED456A90;
      off_1ED452EB0(v18);
      v18 = xmmword_1ED456AF0;
      if (!xmmword_1ED456AF0)
      {
        return;
      }

      v20 = &xmmword_1ED452F28;
    }

    (*v20)(v18);
  }
}

void sub_18199E5EC(sqlite3_context *a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_18199F1EC(a1, *a3, 1);
  if (v5)
  {
    v6 = v5;
    v7 = sub_18199F1EC(a1, a3[1], 0);
    if (v7)
    {
      v8 = v7;
      v9 = sub_1819A6088(v6, 0, v7, 0);
      if (v9 == 3)
      {
        sqlite3_result_error_nomem(a1);
      }

      else if (v9)
      {
        if (a1)
        {
          *(a1 + 9) = 1;
          sub_1818900D0(*a1, "malformed JSON", -1, 1u, 0xFFFFFFFFFFFFFFFFLL);
        }
      }

      else
      {
        sub_1819A0070(a1, v6);
      }

      v10 = *(v8 + 9);
      if (v10 < 2)
      {
        sub_1819A24BC(v8);
        sub_181929C84(v8[3], v8);
      }

      else
      {
        *(v8 + 9) = v10 - 1;
      }
    }

    v11 = *(v6 + 36);
    if (v11 < 2)
    {
      sub_1819A24BC(v6);
      v12 = *(v6 + 24);

      sub_181929C84(v12, v6);
    }

    else
    {
      *(v6 + 36) = v11 - 1;
    }
  }
}

void sub_18199E718(_DWORD *a1, int a2, uint64_t *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v14 = 0;
  v12[0] = sub_18199F1EC(a1, *a3, 0);
  if (!v12[0])
  {
    return;
  }

  v18 = 0;
  memset(v17, 0, sizeof(v17));
  v12[1] = v15;
  v15[0] = a1;
  v15[1] = v17 + 2;
  v16 = xmmword_181A201B0;
  LOWORD(v17[0]) = 1;
  if (a2 == 1)
  {
    goto LABEL_11;
  }

  v6 = a3[1];
  if (!v6)
  {
    goto LABEL_11;
  }

  v7 = *(v6 + 20);
  if ((~v7 & 0x202) != 0 || *(v6 + 22) != 1)
  {
    if (v7)
    {
      goto LABEL_11;
    }

    v8 = sub_18193CB70(v6, 1);
    v13 = v8;
    if (!v8)
    {
      goto LABEL_11;
    }

LABEL_10:
    v9 = strlen(v8);
    goto LABEL_12;
  }

  v8 = *(v6 + 8);
  v13 = v8;
  if (v8)
  {
    goto LABEL_10;
  }

LABEL_11:
  v13 = "    ";
  v9 = 4;
LABEL_12:
  LODWORD(v14) = v9;
  sub_1819A6558(v12, 0);
  sub_1819A3DCC(v15, 0, 0);
  v10 = v12[0];
  if (v12[0])
  {
    v11 = *(v12[0] + 9);
    if (v11 < 2)
    {
      sub_1819A24BC(v12[0]);
      sub_181929C84(v10[3], v10);
    }

    else
    {
      *(v12[0] + 9) = v11 - 1;
    }
  }
}

void sub_18199E888(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  v5[0] = a1;
  v5[1] = v7 + 2;
  v6 = xmmword_181A201B0;
  LOBYTE(v7[0]) = 1;
  sub_1819A4A18(v5, *a3, 0.0);
  sub_1819A3DCC(v5, 0, 0);
  if (a1)
  {
    v4 = *a1;
    *(v4 + 23) = 74;
    *(v4 + 20) |= 0x800u;
  }
}

void sub_18199E948(sqlite3_context *a1, int a2, uint64_t *a3)
{
  if (a2 >= 1)
  {
    if (a2)
    {
      sub_1819A5738(a1, a2, a3, 2);
    }

    else
    {
      sub_1819A562C(a1, "replace");
    }
  }
}

void sub_18199E96C(_DWORD *a1, int a2, uint64_t *a3)
{
  v6 = sub_18199F1EC(a1, *a3, 0);
  if (!v6)
  {
    return;
  }

  v7 = v6;
  if (a2 != 2)
  {
    v11 = 0;
    goto LABEL_8;
  }

  v8 = a3[1];
  if (!v8)
  {
    goto LABEL_18;
  }

  v9 = *(v8 + 20);
  if ((~v9 & 0x202) != 0 || *(v8 + 22) != 1)
  {
    if (v9)
    {
      goto LABEL_18;
    }

    v10 = sub_18193CB70(v8, 1);
  }

  else
  {
    v10 = *(v8 + 8);
  }

  if (v10)
  {
    if (*v10 != 36)
    {
LABEL_17:
      sub_18199FF3C(a1, v10);
      goto LABEL_18;
    }

    v11 = sub_18199F840(v7, 0, v10 + 1, 0);
    if (v11 >= 0xFFFFFFFD)
    {
      if (v11 == -2)
      {
        goto LABEL_18;
      }

      if (v11 != -3)
      {
        if (a1)
        {
          a1[9] = 1;
          sub_1818900D0(*a1, "malformed JSON", -1, 1u, 0xFFFFFFFFFFFFFFFFLL);
        }

        goto LABEL_18;
      }

      goto LABEL_17;
    }

LABEL_8:
    if (a1)
    {
      sub_18190B23C(a1, off_1E6A27D50[*(*v7 + v11) & 0xF], -1, 1u, 0);
    }
  }

LABEL_18:
  v12 = *(v7 + 36);
  if (v12 < 2)
  {
    sub_1819A24BC(v7);
    v13 = *(v7 + 24);

    sub_181929C84(v13, v7);
  }

  else
  {
    *(v7 + 36) = v12 - 1;
  }
}

void sub_18199EAE4(sqlite3_context *a1, int a2, uint64_t *a3)
{
  if (a2 != 2)
  {
    LOBYTE(v6) = 1;
    v7 = *a3;
    if (*a3)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  v4 = a3[1];
  if (!v4)
  {
    sub_1819012D0(92237);
    goto LABEL_22;
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
      goto LABEL_22;
    }

    *&v6 = *v4;
  }

  else
  {
    if ((v5 & 0x12) == 0 || !*(v4 + 8))
    {
      goto LABEL_22;
    }

    v14 = a3;
    v15 = sub_18193CFCC(v4);
    a3 = v14;
    v6 = *&v15;
  }

  if ((*&v6 - 1) < 0xF)
  {
    v7 = *a3;
    if (*a3)
    {
LABEL_7:
      v8 = byte_181A203AA[*(v7 + 20) & 0x3F];
      if (v8 == 5)
      {
        return;
      }

      if (v8 != 4)
      {
LABEL_17:
        if ((LOBYTE(v6) & 3) != 0)
        {
          v11 = sub_18199F1EC(a1, *a3, 2);
          if (v11)
          {
            v12 = v11;
            if (v11[47])
            {
              sqlite3_result_error_nomem(a1);
              v10 = 0;
            }

            else
            {
              v10 = !v11[46] && ((LOBYTE(v6) & 2) != 0 || !v11[49]);
            }

            v16 = *(v12 + 9);
            if (v16 < 2)
            {
              sub_1819A24BC(v12);
              sub_181929C84(*(v12 + 3), v12);
              if (!a1)
              {
                return;
              }
            }

            else
            {
              *(v12 + 9) = v16 - 1;
              if (!a1)
              {
                return;
              }
            }

            goto LABEL_46;
          }

          sqlite3_result_error_nomem(a1);
        }

        goto LABEL_31;
      }

      v9 = a3;
      v19 = 0;
      memset(v18, 0, sizeof(v18));
      if (sub_1819A02D4(v7, v18))
      {
        if ((LOBYTE(v6) & 4) != 0)
        {
          v10 = 1;
          if (!a1)
          {
            return;
          }

          goto LABEL_46;
        }

        if ((LOBYTE(v6) & 8) != 0)
        {
          v10 = sub_1819A08C0(v18, 0, DWORD2(v18[0]), 1u) == 0;
          if (!a1)
          {
            return;
          }

LABEL_46:
          v17 = *a1;
          if ((*(*a1 + 20) & 0x9000) != 0)
          {
            sub_18193D288(v17, v10);
          }

          else
          {
            *v17 = v10;
            *(v17 + 20) = 4;
          }

          return;
        }

LABEL_31:
        v10 = 0;
        if (!a1)
        {
          return;
        }

        goto LABEL_46;
      }

LABEL_16:
      a3 = v9;
      goto LABEL_17;
    }

LABEL_15:
    v9 = a3;
    sub_1819012D0(99877);
    goto LABEL_16;
  }

LABEL_22:
  if (a1)
  {
    *(a1 + 9) = 1;
    v13 = *a1;

    sub_1818900D0(v13, "FLAGS parameter to json_valid() must be between 1 and 15", -1, 1u, 0xFFFFFFFFFFFFFFFFLL);
  }
}

double sub_18199ED54(uint64_t a1, double result, uint64_t a3, uint64_t *a4)
{
  if (a1)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      if (*(v4 + 32))
      {
        v6 = *(a1 + 16);
        if (*(v6 + 20) < 0)
        {
          v7 = a1;
          v8 = *(v6 + 8);
          if (!v8)
          {
            return result;
          }
        }

        else
        {
          v7 = a1;
          v8 = sub_18190C2E0(a1, 136);
          if (!v8)
          {
            return result;
          }
        }

        v9 = *(v8 + 8);
        if (v9)
        {
          v10 = *(v8 + 24);
          v11 = a4;
          if (v10 < 2)
          {
LABEL_18:
            *v8 = v7;
            v14 = *v11;

            return sub_1819A4A18(v8, v14, result);
          }

          if (v10 < *(v8 + 16))
          {
            *(v8 + 24) = v10 + 1;
            *(v9 + v10) = 44;
            goto LABEL_18;
          }

          v12 = v7;
          v13 = v8;
          sub_1819A4770(v8, 44);
          v8 = v13;
          v7 = v12;
        }

        else
        {
          *(v8 + 33) = 23296;
          *(v8 + 8) = v8 + 34;
          *(v8 + 16) = 100;
          *(v8 + 32) = 1;
          *(v8 + 24) = 1;
        }

        v11 = a4;
        goto LABEL_18;
      }
    }
  }

  sub_1819012D0(100772);
  return result;
}

uint64_t sub_18199EE90(uint64_t a1)
{
  if (a1 && (v2 = *(a1 + 8)) != 0 && *(v2 + 32))
  {
    v3 = *(a1 + 16);
    if (*(v3 + 20) < 0)
    {
      result = *(v3 + 8);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = sub_18190C2E0(a1, 0);
      if (!result)
      {
        return result;
      }
    }

    v5 = *(result + 24);
    if (v5 < 2)
    {
LABEL_31:
      *(result + 24) = 1;
    }

    else
    {
      v6 = 0;
      v7 = 0;
      v8 = *(result + 8);
      v9 = 1;
      v10 = 1;
      while (1)
      {
        v11 = *(v8 + v9);
        v12 = v11 == 44 && !v7;
        if (v12 && v6 == 0)
        {
          break;
        }

        if ((v11 & 0xFFFFFFDF) == 0x5B)
        {
          v14 = v6 + 1;
        }

        else
        {
          v14 = v6;
        }

        v15 = v14 - ((v11 & 0xFFFFFFDF) == 93);
        v16 = v7;
        if (v7)
        {
          v15 = v6;
        }

        if (v11 == 34)
        {
          v16 = !v7;
          v15 = v6;
        }

        if (v11 == 92)
        {
          ++v10;
        }

        else
        {
          v7 = v16;
          v6 = v15;
        }

        v9 = ++v10;
        if (v5 <= v10)
        {
          goto LABEL_31;
        }
      }

      v17 = v5 - v9;
      *(result + 24) = v17;
      v18 = result;
      result = memmove((v8 + 1), (v8 + v10 + 1), v17 - 1);
      *(v8 + *(v18 + 24)) = 0;
    }
  }

  else
  {

    return sub_1819012D0(100772);
  }

  return result;
}

double sub_18199EFC0(uint64_t a1, double result, uint64_t a3, void *a4)
{
  if (a1)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      if (*(v4 + 32))
      {
        v5 = *(a1 + 16);
        v6 = a4;
        if (*(v5 + 20) < 0)
        {
          v7 = a1;
          v9 = *(v5 + 8);
          if (!v9)
          {
            return result;
          }
        }

        else
        {
          v7 = a1;
          v8 = sub_18190C2E0(a1, 136);
          a4 = v6;
          v9 = v8;
          if (!v8)
          {
            return result;
          }
        }

        v10 = *a4;
        if (*a4)
        {
          v11 = *(v10 + 20);
          v12 = v7;
          if ((~v11 & 0x202) != 0 || *(v10 + 22) != 1)
          {
            if (v11)
            {
              v13 = 0;
              LODWORD(v15) = 0;
              v14 = 1;
              v16 = *(v9 + 8);
              if (v16)
              {
                goto LABEL_22;
              }

              goto LABEL_28;
            }

            v13 = sub_18193CB70(v10, 1);
          }

          else
          {
            v13 = *(v10 + 8);
          }

          if (v13)
          {
            v14 = 0;
            v15 = strlen(v13) & 0x3FFFFFFF;
            goto LABEL_21;
          }
        }

        else
        {
          v13 = 0;
        }

        LODWORD(v15) = 0;
        v14 = 1;
LABEL_21:
        v12 = v7;
        v16 = *(v9 + 8);
        if (v16)
        {
LABEL_22:
          if (v13)
          {
            v17 = *(v9 + 24);
            if (v17 >= 2)
            {
              if (v17 >= *(v9 + 16))
              {
                v18 = v12;
                v19 = v15;
                sub_1819A4770(v9, 44);
                LODWORD(v15) = v19;
                *v9 = v18;
                if (v14)
                {
                  return result;
                }
              }

              else
              {
                *(v9 + 24) = v17 + 1;
                *(v16 + v17) = 44;
                *v9 = v12;
                if (v14)
                {
                  return result;
                }
              }

              goto LABEL_32;
            }
          }

LABEL_29:
          *v9 = v12;
          if (v14)
          {
            return result;
          }

LABEL_32:
          sub_1819A43DC(v9, v13, v15);
          v21 = *(v9 + 24);
          if (v21 >= *(v9 + 16))
          {
            sub_1819A4770(v9, 58);
          }

          else
          {
            v22 = *(v9 + 8);
            *(v9 + 24) = v21 + 1;
            *(v22 + v21) = 58;
          }

          v23 = v6[1];

          return sub_1819A4A18(v9, v23, v20);
        }

LABEL_28:
        *(v9 + 33) = 31488;
        *(v9 + 8) = v9 + 34;
        *(v9 + 16) = 100;
        *(v9 + 32) = 1;
        *(v9 + 24) = 1;
        goto LABEL_29;
      }
    }
  }

  sub_1819012D0(100772);
  return result;
}

uint64_t sub_18199F1EC(_DWORD *a1, uint64_t a2, char a3)
{
  if (!a2)
  {
    sub_1819012D0(99877);
    sub_1819012D0(99877);
    v9 = 0;
    v7 = 0;
    goto LABEL_42;
  }

  v6 = *(a2 + 20);
  if ((0xAAAAAAAAAAAAAAAALL >> v6))
  {
    return 0;
  }

  v7 = byte_181A203AA[v6 & 0x3F];
  if (((0x4000000040004uLL >> (v6 & 0x3F)) & 1) == 0)
  {
    goto LABEL_41;
  }

  if ((~v6 & 0x202) != 0 || *(a2 + 22) != 1)
  {
    if (v6)
    {
      goto LABEL_41;
    }

    v8 = sub_18193CB70(a2, 1);
    if (!v8)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v8 = *(a2 + 8);
    if (!v8)
    {
LABEL_41:
      v9 = 0;
      goto LABEL_42;
    }
  }

  v10 = *(a2 + 20);
  if ((v10 & 2) != 0 && *(a2 + 22) == 1)
  {
    v11 = *(a2 + 16);
  }

  else if ((v10 & 0x10) != 0)
  {
    v11 = *(a2 + 16);
    if ((*(a2 + 20) & 0x400) != 0)
    {
      v11 += *a2;
    }
  }

  else if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = sub_18193CB44(a2, 1);
  }

  if (!a1)
  {
    sub_1819012D0(100800);
    v9 = 0;
    goto LABEL_44;
  }

  v12 = *(*(a1 + 3) + 384);
  if (!v12)
  {
    v9 = 0;
LABEL_43:
    v39 = 0;
    v21 = *(*a1 + 24);
    goto LABEL_45;
  }

  while (*(v12 + 4) != -429938)
  {
    v12 = *(v12 + 24);
    if (!v12)
    {
      goto LABEL_41;
    }
  }

  v13 = *(v12 + 8);
  if (!v13)
  {
    goto LABEL_41;
  }

  v14 = *(v13 + 8);
  if (v14 < 1)
  {
    LODWORD(v15) = 0;
  }

  else
  {
    v15 = 0;
    v16 = v13 + 16;
    while (*(*(v16 + 8 * v15) + 16) != v8)
    {
      if (v14 == ++v15)
      {
        v17 = 0;
        while (1)
        {
          v18 = *(v16 + 8 * v17);
          if (*(v18 + 32) == v11 && !memcmp(*(v18 + 16), v8, v11))
          {
            break;
          }

          if (v14 == ++v17)
          {
            goto LABEL_41;
          }
        }

        LODWORD(v15) = v17;
        break;
      }
    }
  }

  if (v15 >= v14)
  {
    goto LABEL_41;
  }

  if (v15 >= v14 - 1)
  {
    v15 = v15;
  }

  else
  {
    v19 = (v13 + 16 + 8 * v15);
    v20 = *v19;
    memmove(v19, (v13 + 16 + 8 * (v15 + 1)), 8 * (v14 + ~v15));
    v15 = *(v13 + 8) - 1;
    *(v13 + 16 + 8 * v15) = v20;
  }

  v9 = *(v13 + 8 * v15 + 16);
  if (v9)
  {
    ++*(v9 + 36);
    v23 = v9;
    if ((a3 & 1) == 0)
    {
      return v23;
    }
  }

LABEL_42:
  if (a1)
  {
    goto LABEL_43;
  }

LABEL_44:
  v21 = 0;
  v39 = 1;
LABEL_45:
  if ((a3 & 2) != 0)
  {
    v22 = 0;
  }

  else
  {
    v22 = a1;
  }

  while (1)
  {
    if (v21)
    {
      v23 = sub_181929E8C(v21, 0x48uLL, 0x1030040A7E192DCLL);
      if (!v23)
      {
        goto LABEL_86;
      }
    }

    else
    {
      v23 = sub_181902484(72, 0x1030040A7E192DCLL);
      if (!v23)
      {
LABEL_86:
        if (!v9)
        {
LABEL_110:
          sqlite3_result_error_nomem(a1);
          return 0;
        }

        goto LABEL_103;
      }
    }

    *(v23 + 64) = 0;
    *(v23 + 32) = 0u;
    *(v23 + 48) = 0u;
    *v23 = 0u;
    *(v23 + 16) = 0u;
    *(v23 + 24) = v21;
    *(v23 + 36) = 1;
    if (v9)
    {
      v31 = *(v9 + 8);
      if (v21)
      {
        v32 = sub_181929E8C(v21, *(v9 + 8), 207679884);
        *v23 = v32;
        if (v32)
        {
          goto LABEL_90;
        }
      }

      else
      {
        v32 = sub_181902484(*(v9 + 8), 207679884);
        *v23 = v32;
        if (v32)
        {
LABEL_90:
          memcpy(v32, *v9, v31);
          *(v23 + 8) = v31;
          *(v23 + 12) = v31;
          *(v23 + 49) = *(v9 + 49);
          v33 = *(v9 + 36);
          if (v33 < 2)
          {
            sub_1819A24BC(v9);
            sub_181929C84(*(v9 + 24), v9);
          }

          else
          {
            *(v9 + 36) = v33 - 1;
          }

          return v23;
        }
      }

LABEL_103:
      v36 = *(v9 + 36);
      if (v36 < 2)
      {
        sub_1819A24BC(v9);
        sub_181929C84(*(v9 + 24), v9);
      }

      else
      {
        *(v9 + 36) = v36 - 1;
      }

      if (!v23)
      {
        goto LABEL_110;
      }

      goto LABEL_107;
    }

    if (v7 == 4 && sub_1819A02D4(a2, v23))
    {
      if ((a3 & 1) == 0 || sub_1819A0430(v23, 0))
      {
        return v23;
      }

LABEL_107:
      v37 = *(v23 + 36);
      if (v37 < 2)
      {
        sub_1819A24BC(v23);
        sub_181929C84(*(v23 + 24), v23);
      }

      else
      {
        *(v23 + 36) = v37 - 1;
      }

      goto LABEL_110;
    }

    if (!a2)
    {
      *(v23 + 16) = 0;
      v26 = (v23 + 16);
      sub_1819012D0(93690);
LABEL_69:
      v27 = 0;
      goto LABEL_70;
    }

    v24 = *(a2 + 20);
    if ((~v24 & 0x202) != 0 || *(a2 + 22) != 1)
    {
      if (v24)
      {
        v25 = 0;
      }

      else
      {
        v25 = sub_18193CB70(a2, 1);
        LOWORD(v24) = *(a2 + 20);
      }
    }

    else
    {
      v25 = *(a2 + 8);
    }

    *(v23 + 16) = v25;
    v26 = (v23 + 16);
    if ((v24 & 2) != 0 && *(a2 + 22) == 1)
    {
      v27 = *(a2 + 16);
      goto LABEL_70;
    }

    if ((v24 & 0x10) == 0)
    {
      if ((v24 & 1) == 0)
      {
        v27 = sub_18193CB44(a2, 1);
        goto LABEL_70;
      }

      goto LABEL_69;
    }

    v27 = *(a2 + 16);
    if ((v24 & 0x400) != 0)
    {
      v27 += *a2;
    }

LABEL_70:
    *(v23 + 32) = v27;
    if (*(v21 + 103))
    {
      goto LABEL_107;
    }

    if (!v27)
    {
      break;
    }

    if (sub_1819A04A8(v23, v22))
    {
      if ((a3 & 2) == 0)
      {
        v35 = *(v23 + 36);
        if (v35 < 2)
        {
          sub_1819A24BC(v23);
          sub_181929C84(*(v23 + 24), v23);
        }

        else
        {
          *(v23 + 36) = v35 - 1;
        }

        return 0;
      }

LABEL_98:
      *(v23 + 46) = 1;
      return v23;
    }

    if (a2 && (*(a2 + 20) & 0x12) != 0 && (*(a2 + 20) & 0x1000) != 0 && *(a2 + 48) == sub_18193AB78)
    {
      ++*(*v26 - 8);
    }

    else
    {
      v28 = *(v23 + 32);
      if (sqlite3_initialize())
      {
        goto LABEL_107;
      }

      v29 = sub_181902484(v28 + 9, 0x100004000313F17);
      if (!v29)
      {
        goto LABEL_107;
      }

      *v29 = 1;
      v30 = v29 + 1;
      memcpy(v29 + 1, *(v23 + 16), *(v23 + 32));
      *(v23 + 16) = v30;
      *(v30 + *(v23 + 32)) = 0;
    }

    *(v23 + 48) = 1;
    if (sub_1819A0590(a1, v23) == 7)
    {
      goto LABEL_107;
    }

    v9 = v23;
    if ((a3 & 1) == 0)
    {
      return v23;
    }
  }

  if ((a3 & 2) != 0)
  {
    goto LABEL_98;
  }

  v34 = *(v23 + 36);
  if (v34 < 2)
  {
    sub_1819A24BC(v23);
    sub_181929C84(*(v23 + 24), v23);
  }

  else
  {
    *(v23 + 36) = v34 - 1;
  }

  if ((v39 & 1) == 0)
  {
    a1[9] = 1;
    sub_1818900D0(*a1, "malformed JSON", -1, 1u, 0xFFFFFFFFFFFFFFFFLL);
  }

  return 0;
}

uint64_t sub_18199F840(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unsigned int a4)
{
  v5 = a2;
  v79[0] = 0;
  v7 = *a3;
  if (v7 != 91)
  {
    if (v7 != 46)
    {
      if (!*a3)
      {
        v8 = *(a1 + 51);
        if (!*(a1 + 51) || *(a1 + 47))
        {
          goto LABEL_95;
        }

        v9 = a4;
        if (!*(a1 + 12))
        {
          v10 = *a1;
          v11 = *(a1 + 8) + *(a1 + 56);
          *a1 = 0;
          if (v11 <= 0x64)
          {
            v12 = 100;
          }

          else
          {
            v12 = v11 + 100;
          }

          v13 = sub_181929E8C(*(a1 + 24), v12, 840256482);
          if (!v13)
          {
            *(a1 + 47) = 1;
LABEL_94:
            a4 = v9;
LABEL_95:
            *(a1 + 60) = a4;
            return v5;
          }

          *a1 = v13;
          *(a1 + 12) = v12;
          memcpy(v13, v10, *(a1 + 8));
          v8 = *(a1 + 51);
        }

        v14 = sub_1819A0760(a1, v5, v79);
        if (v8 != 3)
        {
          v15 = v79[0] + v14;
          if (v8 == 1)
          {
            v16 = v5 - v9;
            if (v9)
            {
              v5 = v9;
            }

            else
            {
              v16 = 0;
              v5 = v5;
            }

            v15 += v16;
            v17 = a1;
            v18 = v5;
            v19 = 0;
            v20 = 0;
          }

          else
          {
            v19 = *(a1 + 64);
            v20 = *(a1 + 56);
            v17 = a1;
            v18 = v5;
          }

          sub_1819A2BD8(v17, v18, v15, v19, v20);
        }

        goto LABEL_94;
      }

      return 4294967293;
    }

    v21 = *a1;
    v22 = *(*a1 + a2);
    v24 = a3 + 1;
    v23 = a3[1];
    if (v23 == 34)
    {
      v25 = a3 + 2;
      for (i = 1; ; ++i)
      {
        v27 = v24[i];
        if (v27 == 92)
        {
          if (v24[i + 1])
          {
            ++i;
          }
        }

        else
        {
          if (!v24[i])
          {
            return 4294967293;
          }

          if (v27 == 34)
          {
            v28 = i - 1;
            LODWORD(v29) = i + 1;
            v68 = memchr(v25, 92, v28) == 0;
            goto LABEL_47;
          }
        }
      }
    }

    v29 = 0;
    if (a3[1])
    {
      do
      {
        if (v23 == 46)
        {
          break;
        }

        if (v23 == 91)
        {
          break;
        }

        v29 = (v29 + 1);
        v23 = v24[v29];
      }

      while (v24[v29]);
    }

    if (!v29)
    {
      return 4294967293;
    }

    v68 = 1;
    v28 = v29;
    v25 = a3 + 1;
LABEL_47:
    if ((v22 & 0xF) != 0xC)
    {
      return 4294967294;
    }

    v67 = v25;
    v41 = sub_1819A0760(a1, v5, v79) + v5;
    v42 = v41 + v79[0];
    while (v41 < v42)
    {
      v43 = *(v21 + v41) & 0xF;
      if ((v43 - 11) < 0xFFFFFFFC)
      {
        return 0xFFFFFFFFLL;
      }

      v44 = sub_1819A0760(a1, v41, v79);
      if (!v44)
      {
        return 0xFFFFFFFFLL;
      }

      v45 = v79[0] + v44 + v41;
      if (v45 >= v42)
      {
        return 0xFFFFFFFFLL;
      }

      v46 = (v21 + v44 + v41);
      v48 = v43 == 7 || v43 == 10;
      if (v68 && v48)
      {
        if (v28 != v79[0])
        {
          goto LABEL_64;
        }

        v49 = memcmp(v67, v46, v28) == 0;
      }

      else
      {
        v49 = sub_1819A2F90(v67, v28, v68, v46, v79[0], v48);
        v21 = *a1;
      }

      if (v49)
      {
        if ((*(v21 + v45) & 0xFu) <= 0xC)
        {
          v66 = sub_1819A0760(a1, v45, v79);
          if (v66)
          {
            if (v66 + v45 + v79[0] <= v42)
            {
              v63 = a1;
              v64 = v45;
              goto LABEL_108;
            }
          }
        }

        return 0xFFFFFFFFLL;
      }

LABEL_64:
      if ((*(v21 + v45) & 0xFu) > 0xC)
      {
        return 0xFFFFFFFFLL;
      }

      v50 = sub_1819A0760(a1, v45, v79);
      if (!v50)
      {
        return 0xFFFFFFFFLL;
      }

      v41 = v50 + v45 + v79[0];
    }

    if (v41 <= v42)
    {
      if (*(a1 + 51) >= 3u)
      {
        v78 = 0;
        v76 = 0u;
        v77 = 0u;
        *__n = 0u;
        v75 = 0u;
        v73 = 0;
        v71 = 0u;
        v72 = 0u;
        *__src = 0u;
        v70 = 0u;
        if (v68)
        {
          v51 = 10;
        }

        else
        {
          v51 = 9;
        }

        *(&v70 + 1) = *(a1 + 24);
        sub_1819A25B0(__src, v51, v28, 0);
        *(a1 + 47) |= HIBYTE(v71);
        v52 = sub_1819A2EDC(a1, __n, &v24[v29]);
        if (v52 <= 0xFFFFFFFC)
        {
          v53 = v28;
          v54 = LODWORD(__src[1]);
          v55 = LODWORD(__src[1]) + v53;
          if (sub_1819A0430(a1, LODWORD(__src[1]) + v53 + LODWORD(__n[1])))
          {
            sub_1819A2BD8(a1, v41, 0, 0, LODWORD(__n[1]) + v55);
            if (!*(a1 + 47))
            {
              memcpy((*a1 + v41), __src[0], v54);
              v56 = v54 + v41;
              memcpy((*a1 + v56), v67, v53);
              memcpy((*a1 + v56 + v53), __n[0], LODWORD(__n[1]));
              if (*(a1 + 52))
              {
                sub_1819A2E6C(a1, v5);
              }
            }
          }
        }

        sub_1819A24BC(__n);
        sub_1819A24BC(__src);
        return v52;
      }

      return 4294967294;
    }

    return 0xFFFFFFFFLL;
  }

  if ((*(*a1 + a2) & 0xF) != 0xB)
  {
    return 4294967294;
  }

  v30 = sub_1819A0760(a1, a2, v79);
  v31 = a3[1];
  if ((v31 - 58) < 0xFFFFFFFFFFFFFFF6)
  {
    goto LABEL_29;
  }

  v33 = 0;
  v39 = 1;
  LOBYTE(v58) = a3[1];
  do
  {
    v33 = 10 * v33 + v58 - 48;
    v58 = a3[++v39];
  }

  while ((v58 - 58) > 0xFFFFFFFFFFFFFFF5);
  if (v39 < 2 || v58 != 93)
  {
LABEL_29:
    if (v31 != 35)
    {
      return 4294967293;
    }

    LODWORD(__n[0]) = 0;
    v32 = sub_1819A0760(a1, v5, __n);
    v33 = 0;
    if (v32)
    {
      v34 = v32 + v5;
      v35 = v32 + v5 + LODWORD(__n[0]);
      if (v32 + v5 < v35)
      {
        v33 = 0;
        do
        {
          v36 = sub_1819A0760(a1, v34, __n);
          ++v33;
          if (!v36)
          {
            break;
          }

          v34 += v36 + LODWORD(__n[0]);
        }

        while (v34 < v35);
      }
    }

    LODWORD(v37) = a3[2];
    if (v37 == 45)
    {
      v37 = a3[3];
      if ((v37 - 58) < 0xFFFFFFFFFFFFFFF6)
      {
        return 4294967293;
      }

      v38 = 0;
      v39 = 3;
      do
      {
        v38 = 10 * v38 + v37 - 48;
        v37 = a3[++v39];
      }

      while ((v37 - 58) > 0xFFFFFFFFFFFFFFF5);
      v40 = v33 >= v38;
      v33 -= v38;
      if (!v40)
      {
        return 4294967294;
      }
    }

    else
    {
      v39 = 2;
    }

    if (v37 != 93)
    {
      return 4294967293;
    }
  }

  v59 = (v30 + v5);
  v60 = v79[0] + v59;
  if (v59 >= v79[0] + v59)
  {
LABEL_89:
    if (v59 > v60)
    {
      return 0xFFFFFFFFLL;
    }

    if (v33 || *(a1 + 51) < 3u)
    {
      return 4294967294;
    }

    v78 = 0;
    v76 = 0u;
    v77 = 0u;
    *__n = 0u;
    v75 = 0u;
    v62 = sub_1819A2EDC(a1, __n, &a3[v39 + 1]);
    if (v62 <= 0xFFFFFFFC && sub_1819A0430(a1, __n[1]))
    {
      sub_1819A2BD8(a1, v59, 0, __n[0], LODWORD(__n[1]));
    }

    sub_1819A24BC(__n);
    if (*(a1 + 52))
    {
      sub_1819A2E6C(a1, v5);
    }

    return v62;
  }

  else
  {
    while (v33)
    {
      v61 = sub_1819A0760(a1, v59, v79);
      if (!v61)
      {
        return 0xFFFFFFFFLL;
      }

      --v33;
      v59 = (v61 + v59 + v79[0]);
      if (v59 >= v60)
      {
        goto LABEL_89;
      }
    }

    v63 = a1;
    v64 = v59;
LABEL_108:
    result = sub_18199F840(v63, v64);
    if (*(a1 + 52))
    {
      v65 = result;
      sub_1819A2E6C(a1, v5);
      return v65;
    }
  }

  return result;
}

void sub_18199FF3C(uint64_t a1, uint64_t a2)
{
  v3 = sqlite3_mprintf("bad JSON path: %Q", a2);
  if (!a1)
  {
    return;
  }

  v4 = v3;
  if (v3)
  {
    *(a1 + 36) = 1;
    sub_1818900D0(*a1, v3, -1, 1u, 0xFFFFFFFFFFFFFFFFLL);
    v5 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_8:
      v6 = *v5;

      v6(v4);
      return;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v4);
    --qword_1ED456A90;
    off_1ED452EB0(v4);
    v4 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v5 = &xmmword_1ED452F28;
      goto LABEL_8;
    }
  }

  else
  {

    sqlite3_result_error_nomem(a1);
  }
}

void sub_1819A0070(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*(a2 + 47))
  {

    sqlite3_result_error_nomem(a1);
  }

  else if (a1 && (*(*(a1 + 8) + 8) & 8) != 0)
  {
    if (*(a2 + 12) && !*(a2 + 50))
    {
      v8 = *a2;
      v9 = *(a2 + 8);
      if (v9 < 0)
      {
        if (v8[103])
        {
          v12 = *(v8 + 55);
          if (!v12)
          {
            v8[103] = 0;
            *(v8 + 106) = 0;
            v13 = *(v8 + 108) - 1;
            *(v8 + 108) = v13;
            if (!v13)
            {
              LOWORD(v12) = *(v8 + 219);
            }

            *(v8 + 218) = v12;
          }
        }

        *(a1 + 36) = 18;
        sub_1818900D0(*a1, "string or blob too big", -1, 1u, 0);
        *(a2 + 12) = 0;
      }

      else
      {
        sub_18190B23C(a1, *a2, v9, 0, sub_181916CE4);
        *(a2 + 12) = 0;
      }
    }

    else
    {
      v5 = *(a2 + 8);
      if (v5 < 0)
      {
        *(a1 + 36) = 18;
        v7 = *a1;

        sub_1818900D0(v7, "string or blob too big", -1, 1u, 0);
      }

      else
      {
        v6 = *a2;

        sub_18190B23C(a1, v6, v5, 0, 0xFFFFFFFFFFFFFFFFLL);
      }
    }
  }

  else
  {
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    v14[0] = a1;
    v14[1] = v16 + 2;
    v15 = xmmword_181A201B0;
    LOBYTE(v16[0]) = 1;
    *(a2 + 52) = 0;
    sub_1819A3204(a2, 0, v14);
    sub_1819A3DCC(v14, a2, a1);
    if (a1)
    {
      v4 = *a1;
      *(v4 + 23) = 74;
      *(v4 + 20) |= 0x800u;
    }
  }
}

uint64_t sub_1819A02D4(uint64_t a1, unsigned __int8 **a2)
{
  v11 = 0;
  if (!a1)
  {
    sub_1819012D0(99877);
    return 0;
  }

  if (((0x1000000010001uLL >> *(a1 + 20)) & 1) == 0)
  {
    return 0;
  }

  v5 = sqlite3_value_blob(a1);
  v6 = a1;
  *a2 = v5;
  v7 = *(a1 + 20);
  if ((v7 & 2) != 0 && *(a1 + 22) == 1)
  {
    v8 = *(a1 + 16);
  }

  else if ((v7 & 0x10) != 0)
  {
    v8 = *(a1 + 16);
    if ((v7 & 0x400) != 0)
    {
      v8 = (*v6 + v8);
    }
  }

  else
  {
    if (v7)
    {
      goto LABEL_20;
    }

    v8 = sub_18193CB44(a1, 1);
  }

  *(a2 + 2) = v8;
  if (v8)
  {
    if (*a2)
    {
      v9 = **a2;
      if ((v9 & 0xFu) <= 0xC)
      {
        v10 = sub_1819A0760(a2, 0, &v11);
        if (v10)
        {
          if (v11 + v10 == v8 && ((v9 & 0xFu) > 2 || !v11) && (v11 > 7 || (v9 & 0xFFFFFFDF) != 0x5B && (v9 - 58) < 0xFFFFFFFFFFFFFFF6 || !sub_1819A08C0(a2, 0, v8, 1u)))
          {
            return 1;
          }
        }
      }
    }
  }

LABEL_20:
  result = 0;
  *a2 = 0;
  *(a2 + 2) = 0;
  return result;
}

uint64_t sub_1819A0430(uint64_t a1, int a2)
{
  if (*(a1 + 47))
  {
    return 0;
  }

  if (*(a1 + 12))
  {
    return 1;
  }

  v3 = *a1;
  v4 = *(a1 + 8);
  *a1 = 0;
  if (sub_1819A12CC(a1, v4 + a2))
  {
    return 0;
  }

  memcpy(*a1, v3, *(a1 + 8));
  return 1;
}

uint64_t sub_1819A04A8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = sub_1819A13A0(a1, 0);
  v6 = *(a1 + 47);
  if (*(a1 + 47))
  {
    v7 = 1;
  }

  else
  {
    v7 = v5 < 1;
  }

  if (v7)
  {
    goto LABEL_6;
  }

  v8 = v5 - 1;
  v9 = v4 + v5 - 1;
  do
  {
    v11 = *++v9;
    v10 = v11;
    ++v8;
  }

  while (byte_181A24B89[v11]);
  if (v10)
  {
    v8 += sub_1819A22A8(v9);
    if (*(v4 + v8))
    {
      if (a2)
      {
        goto LABEL_13;
      }

      goto LABEL_14;
    }

    *(a1 + 49) = 1;
  }

  if (v8 <= 0)
  {
LABEL_6:
    if (a2)
    {
      if (!v6)
      {
LABEL_13:
        *(a2 + 36) = 1;
        sub_1818900D0(*a2, "malformed JSON", -1, 1u, 0xFFFFFFFFFFFFFFFFLL);
        goto LABEL_14;
      }

      sqlite3_result_error_nomem(a2);
    }

LABEL_14:
    sub_1819A24BC(a1);
    return 1;
  }

  return 0;
}

uint64_t sub_1819A0590(sqlite3_context *a1, uint64_t a2)
{
  if (!a1)
  {
    sub_1819012D0(100800);
LABEL_11:
    v7 = sub_181902484(48, 0x1020040BFAE4A01);
    v6 = 0;
    if (!v7)
    {
      return 7;
    }

    goto LABEL_12;
  }

  v4 = *(*(a1 + 3) + 384);
  if (v4)
  {
    while (*(v4 + 4) != -429938)
    {
      v4 = *(v4 + 24);
      if (!v4)
      {
        goto LABEL_8;
      }
    }

    v5 = *(v4 + 8);
    if (v5)
    {
      goto LABEL_19;
    }
  }

LABEL_8:
  v6 = *(*a1 + 24);
  if (!v6)
  {
    goto LABEL_11;
  }

  v7 = sub_181929E8C(*(*a1 + 24), 0x30uLL, 0x1020040BFAE4A01);
  if (!v7)
  {
    return 7;
  }

LABEL_12:
  v7[1] = 0u;
  v7[2] = 0u;
  *v7 = 0u;
  *v7 = v6;
  sqlite3_set_auxdata(a1, -429938, v7, sub_1819A2B3C);
  if (!a1)
  {
    sub_1819012D0(100800);
    return 7;
  }

  v8 = *(*(a1 + 3) + 384);
  if (!v8)
  {
    return 7;
  }

  while (*(v8 + 4) != -429938)
  {
    v8 = *(v8 + 24);
    if (!v8)
    {
      return 7;
    }
  }

  v5 = *(v8 + 8);
  if (!v5)
  {
    return 7;
  }

LABEL_19:
  v10 = *(v5 + 8);
  if (v10 >= 4)
  {
    v11 = *(v5 + 16);
    if (v11)
    {
      v12 = *(v11 + 36);
      if (v12 < 2)
      {
        sub_1819A24BC(*(v5 + 16));
        sub_181929C84(*(v11 + 24), v11);
      }

      else
      {
        *(v11 + 36) = v12 - 1;
      }
    }

    v13 = *(v5 + 24);
    *(v5 + 32) = *(v5 + 40);
    *(v5 + 16) = v13;
    v10 = 3;
  }

  result = 0;
  ++*(a2 + 36);
  *(a2 + 50) = 1;
  *(v5 + 8 * v10 + 16) = a2;
  *(v5 + 8) = v10 + 1;
  return result;
}

uint64_t sub_1819A0760(uint64_t *a1, unsigned int a2, unsigned int *a3)
{
  v3 = *a1;
  v4 = *(*a1 + a2);
  v5 = v4 >> 4;
  if (v4 <= 0xBF)
  {
    v6 = *(a1 + 2);
    v7 = 1;
    goto LABEL_3;
  }

  v6 = *(a1 + 2);
  switch(v5)
  {
    case 0xEu:
      if (a2 + 4 < v6)
      {
        v5 = (*(v3 + a2 + 1) << 24) | (*(v3 + a2 + 2) << 16) | (*(v3 + a2 + 3) << 8) | *(v3 + a2 + 4);
        v7 = 5;
        goto LABEL_3;
      }

      goto LABEL_20;
    case 0xDu:
      if (a2 + 2 < v6)
      {
        v5 = *(v3 + a2 + 2) | (*(v3 + a2 + 1) << 8);
        v7 = 3;
        goto LABEL_3;
      }

      goto LABEL_20;
    case 0xCu:
      if (a2 + 1 < v6)
      {
        v5 = *(v3 + a2 + 1);
        v7 = 2;
        goto LABEL_3;
      }

LABEL_20:
      v5 = 0;
      v7 = 0;
      goto LABEL_21;
  }

  if (a2 + 8 >= v6 || *(v3 + a2 + 1) || *(v3 + a2 + 2) || *(v3 + a2 + 3) || *(v3 + a2 + 4))
  {
    goto LABEL_20;
  }

  v5 = (*(v3 + a2 + 5) << 24) | (*(v3 + a2 + 6) << 16) | (*(v3 + a2 + 7) << 8) | *(v3 + a2 + 8);
  v7 = 9;
LABEL_3:
  v8 = a2 + v5 + v7;
  if (v8 > v6 && v8 > v6 - *(a1 + 13))
  {
    goto LABEL_20;
  }

LABEL_21:
  *a3 = v5;
  return v7;
}

uint64_t sub_1819A08C0(uint64_t *a1, unsigned int a2, uint64_t a3, unsigned int a4)
{
  LODWORD(v4) = a2;
  if (a4 >= 0x321)
  {
    return (v4 + 1);
  }

  v40 = 0;
  v8 = sub_1819A0760(a1, a2, &v40);
  if (!v8)
  {
    return (v4 + 1);
  }

  v9 = (v8 + v4);
  if (v40 + v9 != a3)
  {
    return (v4 + 1);
  }

  v10 = *a1;
  v11 = *(*a1 + v4) & 0xF;
  if (v11 > 6)
  {
    if ((*(*a1 + v4) & 0xFu) > 9)
    {
      if (v11 == 10)
      {
        return 0;
      }

      if (v11 != 11)
      {
        if (v11 == 12)
        {
          if (a3 <= v9)
          {
            return 0;
          }

          v22 = 0;
          do
          {
            v23 = v22;
            v40 = 0;
            v24 = sub_1819A0760(a1, v9, &v40);
            if (!v24)
            {
              return (v9 + 1);
            }

            v4 = v24 + v9 + v40;
            if (v4 > a3 || (v23 & 1) == 0 && (*(v10 + v9) & 0xFu) - 11 <= 0xFFFFFFFB)
            {
              return (v9 + 1);
            }

            result = sub_1819A08C0(a1, v9, v4, a4 + 1);
            if (result)
            {
              return result;
            }

            v22 = v23 + 1;
            v9 = v4;
          }

          while (v4 < a3);
          if (v23)
          {
            return 0;
          }
        }

        return (v4 + 1);
      }

      if (a3 <= v9)
      {
        return 0;
      }

      while (1)
      {
        v40 = 0;
        v32 = sub_1819A0760(a1, v9, &v40);
        if (!v32)
        {
          break;
        }

        v33 = v32 + v9 + v40;
        if (v33 > a3)
        {
          break;
        }

        result = sub_1819A08C0(a1, v9, v32 + v9 + v40, a4 + 1);
        if (!result)
        {
          v9 = v33;
          if (v33 < a3)
          {
            continue;
          }
        }

        return result;
      }
    }

    else
    {
      if (v11 - 8 < 2)
      {
        if (a3 <= v9)
        {
          return 0;
        }

        while (1)
        {
          v13 = (v10 + v9);
          v14 = *v13;
          if (v14 == 39 || byte_181A24A84[*v13] != 0)
          {
            goto LABEL_15;
          }

          if (v14 == 34 || v14 <= 0x1F)
          {
            break;
          }

          result = (v9 + 1);
          if (v14 != 92 || result >= a3)
          {
            return result;
          }

          v17 = *(v10 + result);
          if (memchr("\\/bfnrt", v17, 9uLL))
          {
            LODWORD(result) = v9 + 1;
          }

          else if (v17 == 117)
          {
            if (v9 + 5 >= a3)
            {
              return (v9 + 1);
            }

            v18 = sub_1819A0E60((v10 + (v9 + 2)));
            result = (v9 + 1);
            if (!v18)
            {
              return result;
            }
          }

          else
          {
            if (v11 != 9)
            {
              return (v9 + 1);
            }

            v39 = 0;
            v19 = sub_1819A0EB4((v10 + v9), a3 - v9, &v39);
            result = (v9 + 1);
            if (v39 == 629145)
            {
              return result;
            }

            LODWORD(result) = v9 + v19 - 1;
          }

LABEL_16:
          LODWORD(v9) = result + 1;
          result = 0;
          if (v9 >= a3)
          {
            return result;
          }
        }

        if (v11 == 8)
        {
          return (v9 + 1);
        }

LABEL_15:
        LODWORD(result) = v9;
        goto LABEL_16;
      }

      if (v11 != 7)
      {
        return (v4 + 1);
      }

      v29 = a3 - v9;
      if (a3 <= v9)
      {
        return 0;
      }

      while (1)
      {
        v30 = *(v10 + v9);
        if (v30 != 39 && byte_181A24A84[v30] == 0)
        {
          break;
        }

        result = 0;
        ++v9;
        if (!--v29)
        {
          return result;
        }
      }
    }

    return (v9 + 1);
  }

  if ((*(*a1 + v4) & 0xFu) <= 3)
  {
    if (v11 < 3)
    {
      if (v40 + v8 == 1)
      {
        return 0;
      }

      else
      {
        return (v4 + 1);
      }
    }

    if (v40)
    {
      if (*(v10 + v9) != 45)
      {
        goto LABEL_63;
      }

      if (v40 != 1)
      {
        LODWORD(v9) = v9 + 1;
LABEL_63:
        if (v9 < a3)
        {
          v25 = v9;
          while (*(v10 + v25) - 58 >= 0xFFFFFFFFFFFFFFF6)
          {
            result = 0;
            if (++v25 >= a3)
            {
              return result;
            }
          }

          return (v25 + 1);
        }

        return 0;
      }
    }

    return (v4 + 1);
  }

  if (v11 - 5 >= 2)
  {
    if (v11 != 4 || v40 <= 2)
    {
      return (v4 + 1);
    }

    v26 = *(v10 + v9);
    if (v26 == 45)
    {
      if (v40 == 3)
      {
        return (v4 + 1);
      }

      LODWORD(v9) = v9 + 1;
      v26 = *(v10 + v9);
    }

    if (v26 != 48)
    {
      return (v4 + 1);
    }

    if ((*(v10 + (v9 + 1)) | 0x20) != 0x78)
    {
      return (v9 + 2);
    }

    v27 = (v9 + 2);
    if (v27 >= a3)
    {
      return 0;
    }

    v28 = (v9 + 3);
    do
    {
      if ((byte_181A204C8[*(v10 + v27)] & 8) == 0)
      {
        return v28;
      }

      result = 0;
      ++v27;
      v28 = (v28 + 1);
    }

    while (v27 < a3);
  }

  else
  {
    if (v40 <= 1)
    {
      return (v4 + 1);
    }

    v20 = *(v10 + v9);
    if (v20 == 45)
    {
      if (v40 == 2)
      {
        return (v4 + 1);
      }

      LODWORD(v9) = v9 + 1;
      v20 = *(v10 + v9);
    }

    if (v20 == 46)
    {
      result = (v9 + 1);
      if (v11 == 5 || *(v10 + result) - 58 < 0xFFFFFFFFFFFFFFF6)
      {
        return result;
      }

      LODWORD(v9) = v9 + 2;
      v21 = 1;
    }

    else
    {
      v21 = 0;
      if (v11 == 5 && v20 == 48)
      {
        v34 = v9 + 3;
        v9 = (v9 + 1);
        if (v34 > a3)
        {
          return v9;
        }

        v35 = *(v10 + v9) - 46;
        if (v35 > 0x37 || ((1 << v35) & 0x80000000800001) == 0)
        {
          return v9;
        }

        v21 = 0;
      }
    }

    if (v9 < a3)
    {
      v36 = a3 - 1;
      do
      {
        v37 = *(v10 + v9);
        if ((v37 - 58) <= 0xFFFFFFFFFFFFFFF5)
        {
          if (v37 == 101 || v37 == 69)
          {
            if (v21 == 2)
            {
              return (v9 + 1);
            }

            if (v9 == v36)
            {
              return a3;
            }

            v38 = *(v10 + (v9 + 1));
            if (v38 == 45 || v38 == 43)
            {
              if (v9 + 1 == v36)
              {
                return (v9 + 2);
              }

              v21 = 2;
              LODWORD(v9) = v9 + 1;
            }

            else
            {
              v21 = 2;
            }
          }

          else
          {
            if (v37 != 46 || v21)
            {
              return (v9 + 1);
            }

            if (v11 == 5)
            {
              if (v9 == v36)
              {
                return a3;
              }

              result = (v9 + 1);
              if (*(v10 + result) - 58 < 0xFFFFFFFFFFFFFFF6)
              {
                return result;
              }
            }

            v21 = 1;
          }
        }

        LODWORD(v9) = v9 + 1;
      }

      while (v9 < a3);
    }

    if (v21)
    {
      return 0;
    }

    else
    {
      return (v4 + 1);
    }
  }

  return result;
}

uint64_t sub_1819A0E60(unsigned __int8 *a1)
{
  if ((byte_181A204C8[*a1] & 8) == 0)
  {
    return 0;
  }

  if ((byte_181A204C8[a1[1]] & 8) == 0)
  {
    return 0;
  }

  if ((byte_181A204C8[a1[2]] & 8) != 0)
  {
    return (byte_181A204C8[a1[3]] >> 3) & 1;
  }

  return 0;
}

uint64_t sub_1819A0EB4(unsigned __int8 *a1, unsigned int a2, _DWORD *a3)
{
  if (a2 >= 2)
  {
    v3 = 0;
    v4 = a2;
    while (1)
    {
      v5 = a1[1];
      switch(a1[1])
      {
        case 0xAu:
        case 0xDu:
          goto LABEL_7;
        case 0xBu:
        case 0xCu:
        case 0xEu:
        case 0xFu:
        case 0x10u:
        case 0x11u:
        case 0x12u:
        case 0x13u:
        case 0x14u:
        case 0x15u:
        case 0x16u:
        case 0x17u:
        case 0x18u:
        case 0x19u:
        case 0x1Au:
        case 0x1Bu:
        case 0x1Cu:
        case 0x1Du:
        case 0x1Eu:
        case 0x1Fu:
        case 0x20u:
        case 0x21u:
        case 0x23u:
        case 0x24u:
        case 0x25u:
        case 0x26u:
        case 0x28u:
        case 0x29u:
        case 0x2Au:
        case 0x2Bu:
        case 0x2Cu:
        case 0x2Du:
        case 0x2Eu:
        case 0x31u:
        case 0x32u:
        case 0x33u:
        case 0x34u:
        case 0x35u:
        case 0x36u:
        case 0x37u:
        case 0x38u:
        case 0x39u:
        case 0x3Au:
        case 0x3Bu:
        case 0x3Cu:
        case 0x3Du:
        case 0x3Eu:
        case 0x3Fu:
        case 0x40u:
        case 0x41u:
        case 0x42u:
        case 0x43u:
        case 0x44u:
        case 0x45u:
        case 0x46u:
        case 0x47u:
        case 0x48u:
        case 0x49u:
        case 0x4Au:
        case 0x4Bu:
        case 0x4Cu:
        case 0x4Du:
        case 0x4Eu:
        case 0x4Fu:
        case 0x50u:
        case 0x51u:
        case 0x52u:
        case 0x53u:
        case 0x54u:
        case 0x55u:
        case 0x56u:
        case 0x57u:
        case 0x58u:
        case 0x59u:
        case 0x5Au:
        case 0x5Bu:
        case 0x5Du:
        case 0x5Eu:
        case 0x5Fu:
        case 0x60u:
        case 0x61u:
        case 0x63u:
        case 0x64u:
        case 0x65u:
        case 0x67u:
        case 0x68u:
        case 0x69u:
        case 0x6Au:
        case 0x6Bu:
        case 0x6Cu:
        case 0x6Du:
        case 0x6Fu:
        case 0x70u:
        case 0x71u:
        case 0x73u:
        case 0x77u:
          goto LABEL_30;
        case 0x22u:
        case 0x27u:
        case 0x2Fu:
        case 0x5Cu:
          goto LABEL_51;
        case 0x30u:
          if (v4 == 2)
          {
            v5 = 0;
          }

          else if (a1[2] - 48 >= 0xA)
          {
            v5 = 0;
          }

          else
          {
            v5 = 629145;
          }

          goto LABEL_51;
        case 0x62u:
          v5 = 8;
          goto LABEL_51;
        case 0x66u:
          v5 = 12;
          goto LABEL_51;
        case 0x6Eu:
          v5 = 10;
          goto LABEL_51;
        case 0x72u:
          v5 = 13;
          goto LABEL_51;
        case 0x74u:
          v5 = 9;
          goto LABEL_51;
        case 0x75u:
          if (v4 <= 5)
          {
            goto LABEL_45;
          }

          v12 = a1;
          v13 = sub_1819A1180(a1 + 2);
          if (v4 >= 0xC && (v13 & 0xFC00) == 0xD800 && v12[6] == 92 && v12[7] == 117 && (v14 = v13, v15 = sub_1819A1180(v12 + 8), v13 = v14, (v15 & 0xFC00) == 0xDC00))
          {
            *a3 = (v15 & 0x3FF | ((v14 & 0x3FF) << 10)) + 0x10000;
            v4 = 12;
          }

          else
          {
            *a3 = v13;
            v4 = 6;
          }

          return v4 + v3;
        case 0x76u:
          v5 = 11;
          goto LABEL_51;
        case 0x78u:
          if (v4 <= 3)
          {
            goto LABEL_45;
          }

          *a3 = ((((2 * a1[3]) >> 7) & 0xF9) + a1[3]) & 0xF | (16 * ((((2 * a1[2]) >> 7) & 0xF9) + a1[2]));
          v4 = 4;
          return v4 + v3;
        default:
          if (v5 != 226)
          {
LABEL_30:
            v5 = 629145;
LABEL_51:
            *a3 = v5;
            v4 = 2;
            return v4 + v3;
          }

LABEL_7:
          v6 = 0;
          v7 = 1;
          while (a1[v6] == 92)
          {
            v8 = a1[v7];
            switch(v8)
            {
              case 226:
                if (v6 + 3 >= v4 || a1[v6 + 2] != 128 || (a1[v6 + 3] & 0xFE) != 0xA8)
                {
                  goto LABEL_22;
                }

                v9 = v6 + 4;
                break;
              case 13:
                v9 = v6 + 2;
                if (v6 + 2 < v4)
                {
                  v10 = v6 + 3;
                  if (a1[v9] == 10)
                  {
                    v9 = v10;
                  }
                }

                break;
              case 10:
                v9 = v6 + 2;
                break;
              default:
                goto LABEL_22;
            }

            v7 = v9 + 1;
            v6 = v9;
            if (v9 + 1 >= v4)
            {
              goto LABEL_23;
            }
          }

LABEL_22:
          v9 = v6;
LABEL_23:
          if (!v9)
          {
LABEL_45:
            *a3 = 629145;
            return v4 + v3;
          }

          a2 = v4 - v9;
          if (v4 == v9)
          {
            *a3 = 0;
            return v4 + v3;
          }

          a1 += v9;
          if (*a1 != 92)
          {
            v4 = sub_1819A1210(a1, a2, a3) + v9;
            return v4 + v3;
          }

          v3 += v9;
          v4 -= v9;
          if (a2 < 2)
          {
            goto LABEL_3;
          }

          break;
      }
    }
  }

  v3 = 0;
LABEL_3:
  *a3 = 629145;
  v4 = a2;
  return v4 + v3;
}

uint64_t sub_1819A1180(unsigned __int8 *a1)
{
  v1.i32[0] = *a1;
  v1.i32[1] = a1[1];
  v2 = vshl_u32(vand_s8(vadd_s32(vbic_s8(0x900000009, vceqz_s32((*&v1 & 0xFFFFFF40FFFFFF40))), v1), 0xF0000000FLL), 0x80000000CLL);
  return (v2.i16[2] | v2.i16[0] | (16 * (((((2 * a1[2]) >> 7) & 0xF9) + a1[2]) & 0xF)) | ((((2 * a1[3]) >> 7) & 0xF9) + a1[3]) & 0xF);
}

uint64_t sub_1819A1210(unsigned __int8 *a1, int a2, _DWORD *a3)
{
  v3 = *a1;
  if (v3 >= 0xC0 && ((v3 = byte_181A20D3A[v3 - 192], a2 >= 4) ? (result = 4) : (result = a2), a2 >= 2 && (v6 = a1[1], (v6 & 0xC0) == 0x80)))
  {
    v7 = v6 & 0x3F | (v3 << 6);
    if (a2 == 2)
    {
LABEL_8:
      *a3 = v7;
      return result;
    }

    v8 = a1[2];
    if ((v8 & 0xC0) == 0x80)
    {
      v7 = v8 & 0x3F | (v7 << 6);
      if (a2 == 3)
      {
        goto LABEL_8;
      }

      v9 = a1[3];
      if ((v9 & 0xC0) == 0x80)
      {
        *a3 = v9 & 0x3F | (v7 << 6);
      }

      else
      {
        result = 3;
        *a3 = v7;
      }
    }

    else
    {
      result = 2;
      *a3 = v7;
    }
  }

  else
  {
    result = 1;
    *a3 = v3;
  }

  return result;
}

uint64_t sub_1819A12CC(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = 2 * v3;
  }

  else
  {
    v4 = 100;
  }

  if (v4 >= a2)
  {
    v5 = v4;
  }

  else
  {
    v5 = a2 + 100;
  }

  v6 = *(a1 + 24);
  v7 = *a1;
  if (!*a1)
  {
    v7 = sub_181929E8C(v6, v5, 840256482);
    if (!v7)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (*(v6 + 512) <= v7)
  {
    goto LABEL_16;
  }

  if (*(v6 + 496) <= v7)
  {
    if (v5 >= 0x81)
    {
      goto LABEL_16;
    }

LABEL_17:
    result = 0;
    *a1 = v7;
    *(a1 + 12) = v5;
    return result;
  }

  if (*(v6 + 504) <= v7 && v5 <= *(v6 + 438))
  {
    goto LABEL_17;
  }

LABEL_16:
  v7 = sub_181929F38(v6, v7, v5, 840256482);
  if (v7)
  {
    goto LABEL_17;
  }

LABEL_18:
  result = 1;
  *(a1 + 47) = 1;
  return result;
}

uint64_t sub_1819A13A0(uint64_t a1, int a2)
{
  LODWORD(v2) = a2;
  v4 = *(a1 + 16);
  while (2)
  {
    v5 = (v4 + v2);
    v6 = *v5;
    switch(*v5)
    {
      case 0:
        return 0;
      case 9:
      case 0xA:
      case 0xD:
      case 0x20:
        LODWORD(v2) = v2 + 1 + strspn((v4 + (v2 + 1)), "\t\n\r ");
        continue;
      case 0xB:
      case 0xC:
      case 0x2F:
      case 0xC2:
      case 0xE1:
      case 0xE2:
      case 0xE3:
      case 0xEF:
        v7 = sub_1819A22A8(v5);
        if (!v7)
        {
          goto LABEL_205;
        }

        LODWORD(v2) = v7 + v2;
        *(a1 + 49) = 1;
        continue;
      case 0x22:
        goto LABEL_79;
      case 0x27:
        *(a1 + 49) = 1;
        v6 = *v5;
LABEL_79:
        v38 = 7;
        LODWORD(v39) = v2 + 1;
        while (2)
        {
          while (2)
          {
            while (2)
            {
              v40 = *(v4 + v39);
              if (byte_181A24A84[*(v4 + v39)])
              {
                v41 = v39 + 1;
                v40 = *(v4 + (v39 + 1));
                if (byte_181A24A84[*(v4 + (v39 + 1))])
                {
                  v41 = v39 + 2;
                  v40 = *(v4 + (v39 + 2));
                  if (byte_181A24A84[*(v4 + (v39 + 2))])
                  {
                    LODWORD(v39) = v39 + 3;
                    continue;
                  }
                }

                LODWORD(v39) = v41;
              }

              break;
            }

            if (v40 == v6)
            {
              sub_1819A25B0(a1, v38, (v39 + ~v2), (v4 + (v2 + 1)));
              return (v39 + 1);
            }

            if (v40 != 92)
            {
              if (v40 > 31)
              {
                if (v40 == 34)
                {
                  v38 = 9;
                }
              }

              else
              {
                if (!v40)
                {
                  goto LABEL_260;
                }

                *(a1 + 49) = 1;
                v38 = 9;
              }

              LODWORD(v39) = v39 + 1;
              continue;
            }

            break;
          }

          v42 = v39 + 1;
          switch(*(v4 + (v39 + 1)))
          {
            case 0xA:
            case 0x27:
            case 0x76:
              goto LABEL_113;
            case 0xB:
            case 0xC:
            case 0xE:
            case 0xF:
            case 0x10:
            case 0x11:
            case 0x12:
            case 0x13:
            case 0x14:
            case 0x15:
            case 0x16:
            case 0x17:
            case 0x18:
            case 0x19:
            case 0x1A:
            case 0x1B:
            case 0x1C:
            case 0x1D:
            case 0x1E:
            case 0x1F:
            case 0x20:
            case 0x21:
            case 0x23:
            case 0x24:
            case 0x25:
            case 0x26:
            case 0x28:
            case 0x29:
            case 0x2A:
            case 0x2B:
            case 0x2C:
            case 0x2D:
            case 0x2E:
            case 0x31:
            case 0x32:
            case 0x33:
            case 0x34:
            case 0x35:
            case 0x36:
            case 0x37:
            case 0x38:
            case 0x39:
            case 0x3A:
            case 0x3B:
            case 0x3C:
            case 0x3D:
            case 0x3E:
            case 0x3F:
            case 0x40:
            case 0x41:
            case 0x42:
            case 0x43:
            case 0x44:
            case 0x45:
            case 0x46:
            case 0x47:
            case 0x48:
            case 0x49:
            case 0x4A:
            case 0x4B:
            case 0x4C:
            case 0x4D:
            case 0x4E:
            case 0x4F:
            case 0x50:
            case 0x51:
            case 0x52:
            case 0x53:
            case 0x54:
            case 0x55:
            case 0x56:
            case 0x57:
            case 0x58:
            case 0x59:
            case 0x5A:
            case 0x5B:
            case 0x5D:
            case 0x5E:
            case 0x5F:
            case 0x60:
            case 0x61:
            case 0x63:
            case 0x64:
            case 0x65:
            case 0x67:
            case 0x68:
            case 0x69:
            case 0x6A:
            case 0x6B:
            case 0x6C:
            case 0x6D:
            case 0x6F:
            case 0x70:
            case 0x71:
            case 0x73:
            case 0x77:
              goto LABEL_146;
            case 0xD:
              if (*(v4 + (v39 + 2)) == 10)
              {
                v42 = v39 + 2;
              }

              goto LABEL_113;
            case 0x22:
            case 0x2F:
            case 0x5C:
            case 0x62:
            case 0x66:
            case 0x6E:
            case 0x72:
            case 0x74:
              goto LABEL_91;
            case 0x30:
              if (*(v4 + (v39 + 2)) - 58 >= 0xFFFFFFFFFFFFFFF6)
              {
                goto LABEL_146;
              }

              goto LABEL_113;
            case 0x75:
              v43 = (v4 + (v39 + 2));
              if ((byte_181A204C8[*v43] & 8) == 0 || (byte_181A204C8[v43[1]] & 8) == 0 || (byte_181A204C8[v43[2]] & 8) == 0 || (byte_181A204C8[v43[3]] & 8) == 0)
              {
                goto LABEL_146;
              }

LABEL_91:
              if (v38 == 7)
              {
                v38 = 8;
              }

              LODWORD(v39) = v39 + 2;
              continue;
            case 0x78:
              v44 = (v4 + (v39 + 2));
              if ((byte_181A204C8[*v44] & 8) != 0 && (byte_181A204C8[v44[1]] & 8) != 0)
              {
                goto LABEL_113;
              }

              goto LABEL_146;
            default:
              if (*(v4 + (v39 + 1)) == 226 && *(v4 + (v39 + 2)) == 128 && (*(v4 + (v39 + 3)) & 0xFE) == 0xA8)
              {
LABEL_113:
                *(a1 + 49) = 1;
                v38 = 9;
                LODWORD(v39) = v42 + 1;
                continue;
              }

LABEL_146:
              *(a1 + 40) = v42;
              break;
          }

          return 0xFFFFFFFFLL;
        }

      case 0x2B:
        *(a1 + 49) = 1;
        v6 = *v5;
        goto LABEL_9;
      case 0x2C:
        *(a1 + 40) = v2;
        return 4294967292;
      case 0x2D:
      case 0x30:
      case 0x31:
      case 0x32:
      case 0x33:
      case 0x34:
      case 0x35:
      case 0x36:
      case 0x37:
      case 0x38:
      case 0x39:
LABEL_9:
        if (v6 > 48)
        {
          goto LABEL_28;
        }

        v11 = (v2 + 1);
        v12 = v4 + v11;
        v13 = *(v4 + v11);
        if (v6 == 48)
        {
          if ((v13 | 0x20) != 0x78 || (LODWORD(v14) = v2 + 2, (byte_181A204C8[*(v4 + (v2 + 2))] & 8) == 0))
          {
            if ((v13 - 58) < 0xFFFFFFFFFFFFFFF6)
            {
              goto LABEL_28;
            }

            goto LABEL_59;
          }

          *(a1 + 49) = 1;
          do
          {
            v14 = (v14 + 1);
          }

          while ((byte_181A204C8[*(v4 + v14)] & 8) != 0);
          goto LABEL_69;
        }

        if ((v13 - 58) > 0xFFFFFFFFFFFFFFF5)
        {
          if (v13 != 48)
          {
LABEL_28:
            v20 = 0;
LABEL_29:
            v21 = v20 | 2;
            LODWORD(v14) = v2;
            while (1)
            {
              v22 = v20;
              do
              {
                v14 = (v14 + 1);
                v23 = *(v4 + v14);
              }

              while ((v23 - 58) > 0xFFFFFFFFFFFFFFF5);
              if (v23 != 46)
              {
                break;
              }

              v20 = v21;
              if ((v22 & 2) != 0)
              {
                goto LABEL_34;
              }
            }

            v24 = v23 & 0xFFFFFFDF;
            v25 = v14 - 1;
            v26 = *(v4 + (v14 - 1));
            v27 = *(v4 + (v14 - 1)) < 48;
            if (v24 == 69)
            {
              if (v26 <= 47)
              {
                if (v26 != 46 || v14 - 2 < v2 || *(v4 + (v14 - 2)) - 58 < 0xFFFFFFFFFFFFFFF6)
                {
                  goto LABEL_34;
                }

                *(a1 + 49) = 1;
                v22 |= 1u;
              }

              v28 = *(v4 + (v14 + 1));
              if (v28 == 45 || v28 == 43)
              {
                v28 = *(v4 + (v14 + 2));
                LODWORD(v14) = v14 + 1;
              }

              if ((v28 - 58) < 0xFFFFFFF6)
              {
                goto LABEL_34;
              }

              v22 |= 2u;
              do
              {
                v14 = (v14 + 1);
                v29 = *(v4 + v14);
              }

              while ((v29 - 58) > 0xFFFFFFFFFFFFFFF5);
              if (v29 == 46)
              {
                goto LABEL_34;
              }

              v25 = v14 - 1;
              v30 = v29 & 0xFFFFFFDF;
              v26 = *(v4 + (v14 - 1));
              v27 = *(v4 + (v14 - 1)) < 48;
              if (v30 == 69)
              {
                if (v26 <= 47 && v26 == 46 && v14 - 2 >= v2 && *(v4 + (v14 - 2)) - 58 >= 0xFFFFFFFFFFFFFFF6)
                {
                  *(a1 + 49) = 1;
                }

                goto LABEL_34;
              }
            }

            if (!v27)
            {
LABEL_70:
              if (*v5 == 43)
              {
                v34 = (v2 + 1);
              }

              else
              {
                v34 = v2;
              }

              v35 = v14;
              sub_1819A25B0(a1, v22 + 3, (v14 - v34), (v4 + v34));
              return v35;
            }

            if (v26 == 46 && v25 - 1 >= v2 && *(v4 + (v25 - 1)) - 58 >= 0xFFFFFFFFFFFFFFF6)
            {
              *(a1 + 49) = 1;
              v22 |= 1u;
              goto LABEL_70;
            }

LABEL_34:
            *(a1 + 40) = v14;
            return 0xFFFFFFFFLL;
          }

          v19 = *(v4 + (v2 + 2));
          if ((v19 - 58) >= 0xFFFFFFFFFFFFFFF6)
          {
LABEL_59:
            *(a1 + 40) = v11;
            return 0xFFFFFFFFLL;
          }

          if ((v19 | 0x20) != 0x78)
          {
            goto LABEL_28;
          }

          LODWORD(v14) = v2 + 3;
          if ((byte_181A204C8[*(v4 + (v2 + 3))] & 8) == 0)
          {
            goto LABEL_28;
          }

          *(a1 + 49) = 1;
          do
          {
            v14 = (v14 + 1);
          }

          while ((byte_181A204C8[*(v4 + v14)] & 8) != 0);
LABEL_69:
          v22 = 1;
          goto LABEL_70;
        }

        if (v13 == 46)
        {
          v20 = 1;
LABEL_148:
          *(a1 + 49) = 1;
          goto LABEL_29;
        }

        if (v13 != 105 && v13 != 73)
        {
          goto LABEL_205;
        }

        v15 = *(v12 + 1);
        if (!*(v12 + 1))
        {
          v64 = 0;
          v18 = "nf";
          goto LABEL_170;
        }

        if ((v15 & 0xFFFFFFDF) == 0x4E)
        {
          v16 = *(v12 + 2);
          if (!*(v12 + 2))
          {
            v64 = 0;
            v18 = "f";
LABEL_170:
            if (v64 == byte_181A20298[*v18])
            {
              goto LABEL_171;
            }

LABEL_205:
            *(a1 + 40) = v2;
            return 0xFFFFFFFFLL;
          }

          if ((v16 & 0xFFFFFFDF) == 0x46)
          {
LABEL_171:
            *(a1 + 49) = 1;
            if (*v5 == 45)
            {
              v67 = "-9e999";
              v68 = a1;
              v69 = 6;
            }

            else
            {
              v67 = "9e999";
              v68 = a1;
              v69 = 5;
            }

            sub_1819A25B0(v68, 5, v69, v67);
            if (sqlite3_strnicmp((v4 + (v2 + 4)), "inity", 5))
            {
              v70 = 4;
            }

            else
            {
              v70 = 9;
            }

            return (v70 + v2);
          }

          v17 = &byte_181A20298[v16];
          v18 = "f";
        }

        else
        {
          v17 = &byte_181A20298[v15];
          v18 = "nf";
        }

        v64 = *v17;
        goto LABEL_170;
      case 0x2E:
        if (*(v4 + (v2 + 1)) - 58 <= 0xFFFFFFFFFFFFFFF5)
        {
          goto LABEL_205;
        }

        v20 = 3;
        goto LABEL_148;
      case 0x3A:
        *(a1 + 40) = v2;
        return 4294967291;
      case 0x5B:
        v8 = (*(a1 + 32) - v2);
        v9 = *(a1 + 8);
        if ((v9 + v8 + 9) <= *(a1 + 12))
        {
          v58 = (*a1 + v9);
          if (v8 > 0xB)
          {
            if (v8 > 0xFF)
            {
              if (WORD1(v8))
              {
                *v58 = -21;
                v58[1] = BYTE3(v8);
                v58[2] = BYTE2(v8);
                v58[3] = BYTE1(v8);
                v59 = 5;
                v58[4] = v8;
              }

              else
              {
                *v58 = -37;
                v58[1] = BYTE1(v8);
                v58[2] = v8;
                v59 = 3;
              }
            }

            else
            {
              *v58 = -53;
              v58[1] = v8;
              v59 = 2;
            }
          }

          else
          {
            *v58 = (16 * (*(a1 + 32) - v2)) | 0xB;
            v59 = 1;
          }

          v10 = *(a1 + 8) + v59;
          *(a1 + 8) = v10;
        }

        else
        {
          sub_1819A291C(a1, 11, v8, 0);
          v10 = *(a1 + 8);
        }

        if (*(a1 + 47))
        {
          return 0xFFFFFFFFLL;
        }

        v74 = ++*(a1 + 44);
        if (v74 > 0x320)
        {
          goto LABEL_205;
        }

        LODWORD(v39) = v2 + 1;
        result = sub_1819A13A0(a1, (v2 + 1));
        if (result < 1)
        {
          goto LABEL_198;
        }

        do
        {
          v75 = *(v4 + result);
          if (v75 == 44)
          {
            goto LABEL_188;
          }

          if (v75 == 93)
          {
            LODWORD(v39) = result;
LABEL_262:
            sub_1819A2680(a1, v9, *(a1 + 8) - v10);
            --*(a1 + 44);
            return (v39 + 1);
          }

          if (byte_181A24B89[*(v4 + result)])
          {
            result = result + 1 + strspn((v4 + (result + 1)), "\t\n\r ");
            v76 = *(v4 + result);
            if (v76 == 44)
            {
              goto LABEL_188;
            }

            v39 = result;
            if (v76 == 93)
            {
              goto LABEL_262;
            }
          }

          else
          {
            v39 = result;
          }

          v77 = sub_1819A13A0(a1, v39);
          if (v77 != -4)
          {
            if (v77 != -3)
            {
              goto LABEL_260;
            }

            LODWORD(v39) = *(a1 + 40);
            goto LABEL_262;
          }

          LODWORD(result) = *(a1 + 40);
LABEL_188:
          v39 = (result + 1);
          result = sub_1819A13A0(a1, v39);
        }

        while (result >= 1);
LABEL_198:
        if (result == -1)
        {
          return result;
        }

        if (result == -3)
        {
          LODWORD(v39) = *(a1 + 40);
          if (*(a1 + 8) != v10)
          {
            *(a1 + 49) = 1;
          }

          goto LABEL_262;
        }

LABEL_260:
        *(a1 + 40) = v39;
        return 0xFFFFFFFFLL;
      case 0x5D:
        *(a1 + 40) = v2;
        return 4294967293;
      case 0x66:
        if (strncmp(v5, "false", 5uLL))
        {
          goto LABEL_205;
        }

        result = (v2 + 5);
        if ((byte_181A204C8[*(v4 + result)] & 6) != 0)
        {
          goto LABEL_205;
        }

        v36 = *(a1 + 8);
        if (v36 < *(a1 + 12))
        {
          v37 = *a1;
          *(a1 + 8) = v36 + 1;
          *(v37 + v36) = 2;
          return result;
        }

        v71 = (v2 + 5);
        v72 = a1;
        v73 = 2;
        goto LABEL_181;
      case 0x6E:
        v47 = strncmp(v5, "null", 4uLL);
        v5 = (v4 + v2);
        if (v47 || (byte_181A204C8[*(v4 + (v2 + 4))] & 6) != 0)
        {
          goto LABEL_123;
        }

        v65 = *(a1 + 8);
        if (v65 < *(a1 + 12))
        {
          v66 = *a1;
          *(a1 + 8) = v65 + 1;
          *(v66 + v65) = 0;
          return (v2 + 4);
        }

        v71 = (v2 + 4);
        v72 = a1;
        v73 = 0;
        goto LABEL_181;
      case 0x74:
        if (strncmp(v5, "true", 4uLL))
        {
          goto LABEL_205;
        }

        result = (v2 + 4);
        if ((byte_181A204C8[*(v4 + result)] & 6) != 0)
        {
          goto LABEL_205;
        }

        v32 = *(a1 + 8);
        if (v32 >= *(a1 + 12))
        {
          v71 = (v2 + 4);
          v72 = a1;
          v73 = 1;
LABEL_181:
          sub_1819A2A40(v72, v73);
          return v71;
        }

        else
        {
          v33 = *a1;
          *(a1 + 8) = v32 + 1;
          *(v33 + v32) = 1;
        }

        return result;
      case 0x7B:
        v45 = (*(a1 + 32) - v2);
        v46 = *(a1 + 8);
        if ((v46 + v45 + 9) <= *(a1 + 12))
        {
          v60 = (*a1 + v46);
          if (v45 > 0xB)
          {
            if (v45 > 0xFF)
            {
              if (WORD1(v45))
              {
                *v60 = -20;
                v60[1] = BYTE3(v45);
                v60[2] = BYTE2(v45);
                v60[3] = BYTE1(v45);
                v61 = 5;
                v60[4] = v45;
              }

              else
              {
                *v60 = -36;
                v60[1] = BYTE1(v45);
                v60[2] = v45;
                v61 = 3;
              }
            }

            else
            {
              *v60 = -52;
              v60[1] = v45;
              v61 = 2;
            }
          }

          else
          {
            *v60 = (16 * (*(a1 + 32) - v2)) | 0xC;
            v61 = 1;
          }

          *(a1 + 8) += v61;
        }

        else
        {
          sub_1819A291C(a1, 12, v45, 0);
        }

        v78 = ++*(a1 + 44);
        if (v78 >= 0x321)
        {
          goto LABEL_205;
        }

        v101 = v46;
        v102 = *(a1 + 8);
        v79 = v102;
        while (2)
        {
          LODWORD(v80) = v2 + 1;
          v81 = sub_1819A13A0(a1, (v2 + 1));
          v82 = v81;
          if (v81 > 0)
          {
            goto LABEL_229;
          }

          if (v81 == -2)
          {
            LODWORD(v2) = *(a1 + 40);
            if (*(a1 + 8) != v102)
            {
              *(a1 + 49) = 1;
            }

            goto LABEL_257;
          }

          v83 = sub_1819A22A8(v4 + v80);
          v80 = (v83 + v80);
          v84 = *(v4 + v80);
          v103 = v83;
          v104 = v79;
          if ((byte_181A204C8[v84] & 0x42) != 0)
          {
            v85 = 7;
          }

          else
          {
            if (v84 != 92 || (v86 = (v4 + (v80 + 1)), *v86 != 117) || !sub_1819A0E60(v86 + 1))
            {
              if (v82 == -1)
              {
                return 0xFFFFFFFFLL;
              }

              break;
            }

            v85 = 8;
          }

          v87 = v80;
          do
          {
            v88 = v85;
            do
            {
              v89 = v87++;
              v90 = (v4 + v87);
              v91 = *v90;
            }

            while ((byte_181A204C8[v91] & 0x46) != 0 && !sub_1819A22A8(v90));
            if (v91 != 92)
            {
              break;
            }

            v92 = (v4 + v89 + 2);
            if (*v92 != 117)
            {
              break;
            }

            if ((byte_181A204C8[v92[1]] & 8) == 0)
            {
              break;
            }

            if ((byte_181A204C8[v92[2]] & 8) == 0)
            {
              break;
            }

            if ((byte_181A204C8[v92[3]] & 8) == 0)
            {
              break;
            }

            v93 = byte_181A204C8[v92[4]];
            v85 = 8;
          }

          while ((v93 & 8) != 0);
          sub_1819A25B0(a1, v88, (v89 - (v103 + v2)), (v4 + v80));
          *(a1 + 49) = 1;
          v82 = (v89 + 1);
          v79 = v104;
LABEL_229:
          if (*(a1 + 47))
          {
            return 0xFFFFFFFFLL;
          }

          if ((*(*a1 + v79) & 0xFu) - 11 > 0xFFFFFFFB)
          {
            v94 = *(v4 + v82);
            if (v94 == 58)
            {
              goto LABEL_235;
            }

            if (!byte_181A24B89[v94])
            {
              goto LABEL_236;
            }

            do
            {
              v82 = (v82 + 1);
              v95 = *(v4 + v82);
            }

            while (byte_181A24B89[v95]);
            if (v95 == 58)
            {
LABEL_235:
              v96 = (v82 + 1);
            }

            else
            {
LABEL_236:
              result = sub_1819A13A0(a1, v82);
              if (result != -5)
              {
                if (result != -1)
                {
                  *(a1 + 40) = v82;
                  return 0xFFFFFFFFLL;
                }

                return result;
              }

              v96 = (*(a1 + 40) + 1);
            }

            v97 = sub_1819A13A0(a1, v96);
            v2 = v97;
            if (v97 <= 0)
            {
              if (v97 != -1)
              {
                *(a1 + 40) = v96;
              }

              return 0xFFFFFFFFLL;
            }

            v98 = *(v4 + v97);
            if (v98 != 44)
            {
              if (v98 == 125)
              {
                goto LABEL_257;
              }

              if (!byte_181A24B89[*(v4 + v97)])
              {
LABEL_244:
                v100 = sub_1819A13A0(a1, v2);
                if (v100 == -4)
                {
                  LODWORD(v2) = *(a1 + 40);
                  goto LABEL_209;
                }

                if (v100 != -2)
                {
                  goto LABEL_205;
                }

                LODWORD(v2) = *(a1 + 40);
LABEL_257:
                sub_1819A2680(a1, v101, *(a1 + 8) - v102);
                --*(a1 + 44);
                return (v2 + 1);
              }

              v2 = v97 + 1 + strspn((v4 + (v97 + 1)), "\t\n\r ");
              v99 = *(v4 + v2);
              if (v99 != 44)
              {
                if (v99 == 125)
                {
                  goto LABEL_257;
                }

                goto LABEL_244;
              }
            }

LABEL_209:
            v79 = *(a1 + 8);
            continue;
          }

          break;
        }

        *(a1 + 40) = v80;
        return 0xFFFFFFFFLL;
      case 0x7D:
        *(a1 + 40) = v2;
        return 4294967294;
      default:
LABEL_123:
        v48 = 0;
        break;
    }

    break;
  }

  while (1)
  {
    v50 = &unk_1E6A27CD8 + 24 * v48;
    if (v6 == *v50 || v6 == v50[1])
    {
      v51 = v50[2];
      if (v51 < 0)
      {
        v49 = v5;
        sub_1819012D0(37608);
        v5 = v49;
      }

      else
      {
        v52 = *(v50 + 1);
        if (!v52)
        {
          goto LABEL_126;
        }

        if (v50[2])
        {
          v53 = v51 + 1;
          v54 = v5;
          while (1)
          {
            v55 = *v54;
            if (!*v54)
            {
              break;
            }

            LODWORD(v55) = byte_181A20298[v55];
            v56 = byte_181A20298[*v52];
            if (v55 != v56)
            {
              goto LABEL_138;
            }

            ++v54;
            ++v52;
            if (--v53 <= 1)
            {
              goto LABEL_125;
            }
          }

          v56 = byte_181A20298[*v52];
LABEL_138:
          if (v55 != v56)
          {
            goto LABEL_126;
          }
        }
      }

LABEL_125:
      if ((byte_181A204C8[*(v4 + (v2 + v51))] & 6) == 0)
      {
        if (v50[3] == 5)
        {
          v57 = (v2 + v51);
          sub_1819A25B0(a1, 5, 5uLL, "9e999");
          goto LABEL_156;
        }

        v62 = *(a1 + 8);
        result = (v2 + v51);
        if (v62 >= *(a1 + 12))
        {
          v57 = (v2 + v51);
          sub_1819A2A40(a1, 0);
LABEL_156:
          result = v57;
        }

        else
        {
          v63 = *a1;
          *(a1 + 8) = v62 + 1;
          *(v63 + v62) = 0;
        }

        *(a1 + 49) = 1;
        return result;
      }
    }

LABEL_126:
    if (++v48 == 5)
    {
      goto LABEL_205;
    }
  }
}

uint64_t sub_1819A22A8(uint64_t a1)
{
  v1 = 0;
  while (1)
  {
LABEL_4:
    v2 = (a1 + v1);
    v3 = *v2;
    if (v3 <= 0x2E)
    {
      if (v3 - 9 < 5 || v3 == 32)
      {
        v1 = (v1 + 1);
        continue;
      }

      return v1;
    }

    if (*v2 > 0xE1u)
    {
      if (v3 == 226)
      {
        v7 = v2[1];
        if (v7 == 129)
        {
          if (v2[2] == 159)
          {
            v1 = (v1 + 3);
            continue;
          }
        }

        else if (v7 == 128)
        {
          v8 = v2[2];
          if ((v8 & 0x80) != 0)
          {
            if (v8 < 0x8Bu || ((v9 = v8 - 168, v10 = v9 > 7, v11 = (1 << v9) & 0x83, !v10) ? (v12 = v11 == 0) : (v12 = 1), !v12))
            {
              v1 = (v1 + 3);
              continue;
            }
          }
        }
      }

      else if (v3 == 227)
      {
        if (v2[1] == 128 && v2[2] == 128)
        {
          v1 = (v1 + 3);
          continue;
        }
      }

      else if (v3 == 239 && v2[1] == 187 && v2[2] == 191)
      {
        v1 = (v1 + 3);
        continue;
      }

      return v1;
    }

    if (v3 != 47)
    {
      if (v3 == 194)
      {
        if (v2[1] == 160)
        {
          v1 = (v1 + 2);
          continue;
        }
      }

      else if (v3 == 225 && v2[1] == 154 && v2[2] == 128)
      {
        v1 = (v1 + 3);
        continue;
      }

      return v1;
    }

    v4 = v2[1];
    if (v4 != 47)
    {
      break;
    }

    LODWORD(v1) = v1 + 2;
    for (i = (a1 + 1 + v1); ; ++i)
    {
      v16 = *(i - 1);
      if (v16 == 226)
      {
        break;
      }

      v10 = v16 > 0xD;
      v14 = (1 << v16) & 0x2401;
      if (!v10 && v14 != 0)
      {
        goto LABEL_54;
      }

LABEL_49:
      LODWORD(v1) = v1 + 1;
    }

    if (*i != 128 || (i[1] & 0xFE) != 0xA8)
    {
      goto LABEL_49;
    }

    LODWORD(v1) = v1 + 2;
LABEL_54:
    if (*(a1 + v1))
    {
      v1 = (v1 + 1);
    }

    else
    {
      v1 = v1;
    }
  }

  if (v4 == 42 && v2[2])
  {
    v5 = (v1 + 4);
    for (j = (a1 + v1 + 3); ; ++j)
    {
      if (*j == 47)
      {
        if (*(j - 1) == 42)
        {
          v1 = v5;
          goto LABEL_4;
        }
      }

      else if (!*j)
      {
        return v1;
      }

      v5 = (v5 + 1);
    }
  }

  return v1;
}

void *sub_1819A24BC(void *result)
{
  v1 = result;
  if (*(result + 48))
  {
    v2 = result[2];
    v5 = *(v2 - 8);
    v4 = (v2 - 8);
    v3 = v5;
    if (v5 < 2)
    {
      v6 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v4);
        --qword_1ED456A90;
        result = off_1ED452EB0(v4);
        v4 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
          goto LABEL_10;
        }

        v6 = &xmmword_1ED452F28;
      }

      result = (*v6)(v4);
    }

    else
    {
      *v4 = v3 - 1;
    }

LABEL_10:
    v1[2] = 0;
    *(v1 + 8) = 0;
    *(v1 + 48) = 0;
  }

  if (*(v1 + 3))
  {
    if (*v1)
    {
      result = sub_181929C84(v1[3], *v1);
    }

    *v1 = 0;
    v1[1] = 0;
  }

  return result;
}

void *sub_1819A25B0(void *result, char a2, size_t __n, void *__src)
{
  v4 = *(result + 2);
  if ((__n + v4 + 9) > *(result + 3))
  {
    return sub_1819A291C(result, a2, __n, __src);
  }

  v5 = (*result + v4);
  if (__n > 0xB)
  {
    if (__n > 0xFF)
    {
      if (WORD1(__n))
      {
        *v5 = a2 | 0xE0;
        v5[1] = BYTE3(__n);
        v5[2] = BYTE2(__n);
        v5[3] = BYTE1(__n);
        v6 = 5;
        v5[4] = __n;
      }

      else
      {
        *v5 = a2 | 0xD0;
        v5[1] = BYTE1(__n);
        v5[2] = __n;
        v6 = 3;
      }
    }

    else
    {
      *v5 = a2 | 0xC0;
      v5[1] = __n;
      v6 = 2;
    }
  }

  else
  {
    *v5 = a2 | (16 * __n);
    v6 = 1;
  }

  v7 = *(result + 2) + v6;
  *(result + 2) = v7;
  if (__src)
  {
    *(result + 2) = v7 + __n;
    return memcpy((*result + v7), __src, __n);
  }

  return result;
}

unint64_t sub_1819A2680(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (*(a1 + 47))
  {
    return 0;
  }

  v4 = a1;
  v5 = *a1;
  v6 = a2;
  v7 = (*a1 + a2);
  v8 = *v7;
  if (v8 >= 0xC0)
  {
    v10 = (v8 >> 4) - 12;
    if (v10 > 2)
    {
      v9 = -8;
    }

    else
    {
      v9 = dword_181A27B20[v10];
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = a3 < 0x10000;
  if (a3 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (a3 >= 0x100)
  {
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 1;
  }

  v14 = a3 >= 0xC && a3 < 0x100;
  v15 = a3 >= 0xC && v11;
  if (a3 < 0xC)
  {
    v13 = 0;
  }

  result = (v13 + v9);
  if (!(v13 + v9))
  {
    goto LABEL_43;
  }

  v16 = *(v4 + 8);
  v17 = v16 + result;
  if (result < 1)
  {
    v23 = result;
    v24 = v4;
    v25 = a3;
    memmove(v7 + 1, &v7[(1 - result)], result + ~a2 + v16);
    result = v23;
    a3 = v25;
    *(v24 + 8) = v17;
    goto LABEL_43;
  }

  v18 = *(v4 + 12);
  if (v17 > v18)
  {
    if (v18)
    {
      v19 = 2 * v18;
    }

    else
    {
      v19 = 100;
    }

    if (v19 >= v17)
    {
      v20 = v19;
    }

    else
    {
      v20 = v17 + 100;
    }

    v21 = *(v4 + 24);
    if (*(v21 + 512) > v5)
    {
      if (*(v21 + 496) <= v5)
      {
        if (v20 < 0x81)
        {
LABEL_35:
          v22 = a3;
LABEL_41:
          *v4 = v5;
          v26 = v4;
          *(v4 + 12) = v20;
          goto LABEL_42;
        }
      }

      else if (*(v21 + 504) <= v5 && v20 <= *(v21 + 438))
      {
        goto LABEL_35;
      }
    }

    v27 = a2;
    v28 = v4;
    v29 = result;
    v22 = a3;
    result = sub_181929F38(*(v4 + 24), v5, v20, 840256482);
    if (!result)
    {
      *(v28 + 47) = 1;
      return result;
    }

    v5 = result;
    v4 = v28;
    v16 = *(v28 + 8);
    result = v29;
    a2 = v27;
    goto LABEL_41;
  }

  v26 = v4;
  v22 = a3;
LABEL_42:
  v7 = v5 + v6;
  v30 = v5 + v6 + 1;
  v31 = result;
  memmove(&v30[result], v30, v16 + ~a2);
  result = v31;
  *(v26 + 8) = v17;
  a3 = v22;
LABEL_43:
  v32 = *v7 & 0xF;
  if (a3 > 0xB)
  {
    if (v14)
    {
      *v7 = v32 | 0xC0;
      v7[1] = a3;
    }

    else if (v15)
    {
      *v7 = v32 | 0xD0;
      v7[1] = BYTE1(a3);
      v7[2] = a3;
    }

    else
    {
      *v7 = v32 | 0xE0;
      v7[1] = HIBYTE(a3);
      v7[2] = BYTE2(a3);
      v7[3] = BYTE1(a3);
      v7[4] = a3;
    }
  }

  else
  {
    *v7 = v32 | (16 * a3);
  }

  return result;
}

void *sub_1819A291C(uint64_t a1, int a2, size_t __n, void *__src)
{
  v8 = *(a1 + 12);
  v9 = *(a1 + 8) + __n;
  v10 = v9 + 9;
  if (v8)
  {
    v11 = 2 * v8;
  }

  else
  {
    v11 = 100;
  }

  v12 = v9 + 109;
  if (v11 >= v10)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(a1 + 24);
  v15 = *a1;
  if (!*a1)
  {
    result = sub_181929E8C(v14, v13, 840256482);
    v15 = result;
    if (result)
    {
      goto LABEL_17;
    }

LABEL_20:
    *(a1 + 47) = 1;
    return result;
  }

  if (*(v14 + 512) <= v15)
  {
    goto LABEL_16;
  }

  if (*(v14 + 496) <= v15)
  {
    if (v13 < 0x81)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (*(v14 + 504) > v15 || v13 > *(v14 + 438))
  {
LABEL_16:
    result = sub_181929F38(v14, v15, v13, 840256482);
    v15 = result;
    if (result)
    {
      goto LABEL_17;
    }

    goto LABEL_20;
  }

LABEL_17:
  *a1 = v15;
  *(a1 + 12) = v13;

  return sub_1819A25B0(a1, a2, __n, __src);
}

uint64_t sub_1819A2A40(uint64_t a1, char a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 12);
  v6 = v4 + 1;
  if (v5)
  {
    v7 = 2 * v5;
  }

  else
  {
    v7 = 100;
  }

  v8 = v4 + 101;
  if (v7 >= v6)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  result = *(a1 + 24);
  v11 = *a1;
  if (!*a1)
  {
    result = sub_181929E8C(result, v9, 840256482);
    v11 = result;
    if (result)
    {
      goto LABEL_17;
    }

    goto LABEL_19;
  }

  if (*(result + 512) > v11)
  {
    if (*(result + 496) <= v11)
    {
      if (v9 < 0x81)
      {
        goto LABEL_17;
      }
    }

    else if (*(result + 504) <= v11 && v9 <= *(result + 438))
    {
      goto LABEL_17;
    }
  }

  result = sub_181929F38(result, v11, v9, 840256482);
  v11 = result;
  if (!result)
  {
LABEL_19:
    *(a1 + 47) = 1;
    return result;
  }

LABEL_17:
  *a1 = v11;
  *(a1 + 12) = v9;
  if (!*(a1 + 47))
  {
    v12 = *a1;
    v13 = *(a1 + 8);
    *(a1 + 8) = v13 + 1;
    *(v12 + v13) = a2;
  }

  return result;
}

void *sub_1819A2B3C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(a1 + 16 + 8 * i);
      if (v4)
      {
        v5 = *(v4 + 36);
        if (v5 < 2)
        {
          sub_1819A24BC(*(a1 + 16 + 8 * i));
          sub_181929C84(*(v4 + 24), v4);
          v2 = *(a1 + 8);
        }

        else
        {
          *(v4 + 36) = v5 - 1;
        }
      }
    }
  }

  v6 = *a1;

  return sub_181929C84(v6, a1);
}

unsigned int *sub_1819A2BD8(unsigned int *result, unsigned int a2, unsigned int a3, unsigned __int8 *__src, size_t __n)
{
  v5 = __n;
  v8 = result;
  v9 = __n;
  v10 = __n - a3;
  if (__src)
  {
    if (v10 >= 0xFFFFFFFFFFFFFFF8)
    {
      v11 = *__src;
      if ((v11 & 0xF) >= 3)
      {
        v18 = a3 - __n;
        v19 = v11 >> 4;
        if (v11 >> 4 > 0xD)
        {
          if (v19 != 14)
          {
            if (v19 == 15)
            {
              goto LABEL_4;
            }

LABEL_24:
            v20 = 1;
            if (((1 << v18) & 0x116) == 0)
            {
              goto LABEL_4;
            }

            v21 = 1 - v10;
            goto LABEL_31;
          }

          if (v10 != -4)
          {
            goto LABEL_4;
          }

          v20 = 5;
          v21 = 9;
        }

        else
        {
          if (v19 != 12)
          {
            if (v19 == 13)
            {
              if ((v18 & 0xB) != 2)
              {
                goto LABEL_4;
              }

              v20 = 3;
              v21 = 3 - v10;
              goto LABEL_31;
            }

            goto LABEL_24;
          }

          if (((1 << v18) & 0x8A) == 0)
          {
            goto LABEL_4;
          }

          v20 = 2;
          v21 = 2 - v10;
        }

LABEL_31:
        v23 = (*result + a2);
        *v23 = byte_181A24C89[v21 - 2] | v11 & 0xF;
        v24 = __n - v20;
        result = memcpy(&v23[v21], &__src[v20], __n - v20);
        v25 = v21 - 1;
        do
        {
          v23[v25] = v24;
          v24 >>= 8;
          --v25;
        }

        while (v25);
        return result;
      }
    }
  }

LABEL_4:
  if (__n != a3)
  {
    v12 = result[2];
    v13 = result[3];
    v14 = v10 + v12;
    v15 = *result;
    if ((v10 + v12) <= v13)
    {
LABEL_39:
      result = memmove(v15 + v5 + a2, v15 + a3 + a2, v12 - (a3 + a2));
      v8[2] += v10;
      v8[13] += v10;
      goto LABEL_40;
    }

    v16 = 2 * v13;
    if (!v13)
    {
      v16 = 100;
    }

    if (v16 >= v14)
    {
      v17 = v16;
    }

    else
    {
      v17 = v14 + 100;
    }

    result = *(result + 3);
    if (v15)
    {
      if (*(result + 64) > v15)
      {
        if (*(result + 62) <= v15)
        {
          if (v17 < 0x81)
          {
LABEL_37:
            *v8 = v15;
            v8[3] = v17;
            if (*(v8 + 47))
            {
              return result;
            }

            v15 = *v8;
            LODWORD(v12) = v8[2];
            goto LABEL_39;
          }
        }

        else if (*(result + 63) <= v15 && v17 <= *(result + 219))
        {
          goto LABEL_37;
        }
      }

      v22 = a3;
      result = sub_181929F38(result, v15, v17, 840256482);
    }

    else
    {
      v22 = a3;
      result = sub_181929E8C(result, v17, 840256482);
    }

    v15 = result;
    a3 = v22;
    if (!result)
    {
      *(v8 + 47) = 1;
      return result;
    }

    goto LABEL_37;
  }

LABEL_40:
  if (__src && v5)
  {
    v26 = (*v8 + a2);

    return memcpy(v26, __src, v9);
  }

  return result;
}

unint64_t sub_1819A2E6C(uint64_t a1, unsigned int a2)
{
  v6 = 0;
  v4 = *(a1 + 8);
  *(a1 + 8) = *(a1 + 12);
  sub_1819A0760(a1, a2, &v6);
  *(a1 + 8) = v4;
  result = sub_1819A2680(a1, a2, v6 + *(a1 + 52));
  *(a1 + 52) += result;
  return result;
}

uint64_t sub_1819A2EDC(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(a2 + 64) = 0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 24) = *(a1 + 24);
  if (*a3)
  {
    *(a2 + 8) = 1;
    v3 = &unk_181A24C91;
    if (*a3 == 46)
    {
      v3 = &unk_181A24C92;
    }

    *a2 = v3;
    *(a2 + 51) = *(a1 + 51);
    *(a2 + 56) = *(a1 + 56);
    *(a2 + 64) = *(a1 + 64);
    result = sub_18199F840(a2, 0);
    *(a1 + 47) |= *(a2 + 47);
  }

  else
  {
    *a2 = *(a1 + 64);
    *(a2 + 8) = *(a1 + 56);
    return 0;
  }

  return result;
}

uint64_t sub_1819A2F90(unsigned __int8 *a1, signed int a2, int a3, unsigned __int8 *a4, signed int a5, int a6)
{
  v26 = 0;
  while (1)
  {
    if (a2)
    {
      v12 = *a1;
      if (a3 || v12 != 92)
      {
        HIDWORD(v26) = *a1;
        if (v12 < 0xC0)
        {
          ++a1;
          --a2;
          if (!a5)
          {
            return HIDWORD(v26) == 0;
          }
        }

        else
        {
          v14 = *a1;
          if (v14 >= 0xC0 && ((v14 = byte_181A20D3A[v14 - 192], a2 >= 4) ? (v15 = 4) : (v15 = a2), a2 >= 2 && (v16 = a1[1], (v16 & 0xC0) == 0x80)))
          {
            v14 = v16 & 0x3F | (v14 << 6);
            if (a2 != 2)
            {
              v17 = a1[2];
              if ((v17 & 0xC0) == 0x80)
              {
                v14 = v17 & 0x3F | (v14 << 6);
                if (a2 != 3)
                {
                  v18 = a1[3];
                  if ((v18 & 0xC0) == 0x80)
                  {
                    v14 = v18 & 0x3F | (v14 << 6);
                  }

                  else
                  {
                    v15 = 3;
                  }
                }
              }

              else
              {
                v15 = 2;
              }
            }
          }

          else
          {
            v15 = 1;
          }

          HIDWORD(v26) = v14;
          a1 += v15;
          a2 -= v15;
          if (!a5)
          {
            return HIDWORD(v26) == 0;
          }
        }
      }

      else
      {
        v13 = sub_1819A0EB4(a1, a2, &v26 + 1);
        a1 += v13;
        a2 -= v13;
        if (!a5)
        {
          return HIDWORD(v26) == 0;
        }
      }
    }

    else
    {
      HIDWORD(v26) = 0;
      if (!a5)
      {
        return HIDWORD(v26) == 0;
      }
    }

    v19 = *a4;
    if (a6 || v19 != 92)
    {
      LODWORD(v26) = *a4;
      if (v19 < 0xC0)
      {
        ++a4;
        --a5;
      }

      else
      {
        v19 = *a4;
        if (v19 >= 0xC0 && ((v19 = byte_181A20D3A[v19 - 192], a5 >= 4) ? (v21 = 4) : (v21 = a5), a5 >= 2 && (v22 = a4[1], (v22 & 0xC0) == 0x80)))
        {
          v19 = v22 & 0x3F | (v19 << 6);
          if (a5 != 2)
          {
            v23 = a4[2];
            if ((v23 & 0xC0) == 0x80)
            {
              v19 = v23 & 0x3F | (v19 << 6);
              if (a5 != 3)
              {
                v24 = a4[3];
                if ((v24 & 0xC0) == 0x80)
                {
                  v19 = v24 & 0x3F | (v19 << 6);
                }

                else
                {
                  v21 = 3;
                }
              }
            }

            else
            {
              v21 = 2;
            }
          }
        }

        else
        {
          v21 = 1;
        }

        LODWORD(v26) = v19;
        a4 += v21;
        a5 -= v21;
      }
    }

    else
    {
      v20 = sub_1819A0EB4(a4, a5, &v26);
      a4 += v20;
      a5 -= v20;
      v19 = v26;
    }

    if (HIDWORD(v26) != v19)
    {
      break;
    }

    if (!v19)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1819A3204(uint64_t a1, unsigned int a2, uint64_t a3)
{
  LODWORD(__n) = 0;
  v6 = sub_1819A0760(a1, a2, &__n);
  if (!v6)
  {
    *(a3 + 33) |= 2u;
    return (*(a1 + 8) + 1);
  }

  v7 = v6;
  v8 = *a1;
  v9 = *(*a1 + a2) & 0xF;
  if (v9 <= 6)
  {
    if ((*(*a1 + a2) & 0xFu) > 2)
    {
      if ((*(*a1 + a2) & 0xFu) <= 4)
      {
        if (v9 != 3)
        {
          LODWORD(v10) = __n;
          if (__n)
          {
            v11 = v6 + a2;
            v12 = *(v8 + v11);
            if (v12 != 43)
            {
              if (v12 != 45)
              {
                v87 = 2;
LABEL_193:
                v98 = v10 - v87;
                if (v10 <= v87)
                {
                  goto LABEL_204;
                }

                v99 = 0;
                v100 = 0;
                v101 = (v8 + v11 + v87);
                while (1)
                {
                  v103 = *v101++;
                  v102 = v103;
                  if ((byte_181A204C8[v103] & 8) == 0)
                  {
                    break;
                  }

                  if (v100 >> 60)
                  {
                    v99 = 1;
                    if (!--v98)
                    {
                      goto LABEL_202;
                    }
                  }

                  else
                  {
                    v100 = ((((2 * v102) >> 7) & 0xF9) + v102) & 0xF | (16 * v100);
                    if (!--v98)
                    {
                      goto LABEL_202;
                    }
                  }
                }

                *(a3 + 33) |= 2u;
LABEL_202:
                if (v99)
                {
                  sub_1819A40A0(100, a3, "9.0e999");
                }

                else
                {
LABEL_204:
                  sub_1819A40A0(100, a3, "%llu");
                }

                return v7 + a2 + v10;
              }

              v13 = *(a3 + 24);
              if (v13 >= *(a3 + 16))
              {
                sub_1819A4770(a3, 45);
              }

              else
              {
                v14 = *(a3 + 8);
                *(a3 + 24) = v13 + 1;
                *(v14 + v13) = 45;
              }
            }

            v87 = 3;
            goto LABEL_193;
          }

          goto LABEL_49;
        }

LABEL_33:
        v10 = __n;
        if (__n)
        {
          v27 = v6 + a2;
          v28 = *(a3 + 24);
          if (v28 + __n >= *(a3 + 16))
          {
            sub_1819A470C(a3, (v8 + v27), __n);
          }

          else
          {
            memcpy((*(a3 + 8) + v28), (v8 + v27), __n);
            *(a3 + 24) += v10;
          }

          return v7 + a2 + v10;
        }

        goto LABEL_49;
      }

      if (v9 == 5)
      {
        goto LABEL_33;
      }

      if (v9 == 6)
      {
        v10 = __n;
        if (__n)
        {
          v24 = v6 + a2;
          if (*(v8 + v24) == 45)
          {
            v25 = *(a3 + 24);
            if (v25 >= *(a3 + 16))
            {
              sub_1819A4770(a3, 45);
            }

            else
            {
              v26 = *(a3 + 8);
              *(a3 + 24) = v25 + 1;
              *(v26 + v25) = 45;
            }

            v86 = 1;
          }

          else
          {
            v86 = 0;
          }

          v88 = v86;
          if (*(v8 + v24 + v86) == 46)
          {
            v89 = *(a3 + 24);
            if (v89 >= *(a3 + 16))
            {
              sub_1819A4770(a3, 48);
            }

            else
            {
              v90 = *(a3 + 8);
              *(a3 + 24) = v89 + 1;
              *(v90 + v89) = 48;
            }
          }

          if (v88 >= v10)
          {
            LODWORD(v10) = 1;
          }

          else
          {
            v91 = v10 - v88;
            v92 = v8 + v88 + v24;
            do
            {
              v94 = *v92;
              v95 = *(a3 + 24);
              if (v95 >= *(a3 + 16))
              {
                sub_1819A4770(a3, v94);
              }

              else
              {
                v96 = *(a3 + 8);
                *(a3 + 24) = v95 + 1;
                *(v96 + v95) = v94;
              }

              if (*v92 == 46 && (v91 == 1 || *(v92 + 1) - 58 <= 0xFFFFFFFFFFFFFFF5))
              {
                v97 = *(a3 + 24);
                if (v97 < *(a3 + 16))
                {
                  v93 = *(a3 + 8);
                  *(a3 + 24) = v97 + 1;
                  *(v93 + v97) = 48;
                }

                else
                {
                  sub_1819A4770(a3, 48);
                }
              }

              ++v92;
              --v91;
            }

            while (v91);
          }

          return v7 + a2 + v10;
        }

        goto LABEL_49;
      }

LABEL_48:
      LODWORD(v10) = __n;
LABEL_49:
      *(a3 + 33) |= 2u;
      return v7 + a2 + v10;
    }

    if ((*(*a1 + a2) & 0xF) != 0)
    {
      if (v9 != 1)
      {
        v19 = *(a3 + 24);
        if ((v19 + 5) < *(a3 + 16))
        {
          v20 = *(a3 + 8) + v19;
          *(v20 + 4) = 101;
          *v20 = 1936482662;
          v21 = *(a3 + 24) + 5;
LABEL_44:
          *(a3 + 24) = v21;
          return a2 + 1;
        }

        v66 = "false";
        v67 = a3;
        v68 = 5;
LABEL_141:
        sub_1819A470C(v67, v66, v68);
        return a2 + 1;
      }

      v31 = *(a3 + 24);
      if ((v31 + 4) < *(a3 + 16))
      {
        v32 = *(a3 + 8);
        v33 = 1702195828;
        goto LABEL_43;
      }

      v66 = "true";
    }

    else
    {
      v31 = *(a3 + 24);
      if ((v31 + 4) < *(a3 + 16))
      {
        v32 = *(a3 + 8);
        v33 = 1819047278;
LABEL_43:
        *(v32 + v31) = v33;
        v21 = *(a3 + 24) + 4;
        goto LABEL_44;
      }

      v66 = "null";
    }

    v67 = a3;
    v68 = 4;
    goto LABEL_141;
  }

  if ((*(*a1 + a2) & 0xFu) > 9)
  {
    switch(v9)
    {
      case 0xAu:
        LODWORD(v10) = __n;
        sub_1819A43DC(a3, (v8 + v6 + a2), __n);
        return v7 + a2 + v10;
      case 0xBu:
        v34 = *(a3 + 24);
        if (v34 >= *(a3 + 16))
        {
          sub_1819A4770(a3, 91);
        }

        else
        {
          v35 = *(a3 + 8);
          *(a3 + 24) = v34 + 1;
          *(v35 + v34) = 91;
        }

        v69 = v7 + a2;
        LODWORD(v10) = __n;
        v70 = __n + v69;
        if (v69 < __n + v69)
        {
          while (!*(a3 + 33))
          {
            v72 = sub_1819A3204(a1, v69, a3);
            v69 = v72;
            v73 = *(a3 + 24);
            if (v73 < *(a3 + 16))
            {
              v71 = *(a3 + 8);
              *(a3 + 24) = v73 + 1;
              *(v71 + v73) = 44;
              if (v72 >= v70)
              {
                break;
              }
            }

            else
            {
              sub_1819A4770(a3, 44);
              if (v69 >= v70)
              {
                break;
              }
            }
          }
        }

        if (v69 > v70)
        {
          *(a3 + 33) |= 2u;
        }

        if (v10)
        {
          v74 = *(a3 + 24);
          if (!*(a3 + 33))
          {
            *(a3 + 24) = --v74;
          }
        }

        else
        {
          v74 = *(a3 + 24);
        }

        if (v74 >= *(a3 + 16))
        {
          v84 = a3;
          v85 = 93;
          goto LABEL_210;
        }

        v82 = *(a3 + 8);
        *(a3 + 24) = v74 + 1;
        v83 = 93;
        break;
      case 0xCu:
        v22 = *(a3 + 24);
        if (v22 >= *(a3 + 16))
        {
          sub_1819A4770(a3, 123);
        }

        else
        {
          v23 = *(a3 + 8);
          *(a3 + 24) = v22 + 1;
          *(v23 + v22) = 123;
        }

        v75 = v7 + a2;
        LODWORD(v10) = __n;
        v76 = __n + v75;
        if (v75 >= __n + v75)
        {
          v81 = 0;
        }

        else
        {
          v77 = 0;
          do
          {
            if (*(a3 + 33))
            {
              break;
            }

            v75 = sub_1819A3204(a1, v75, a3);
            v79 = (v77 & 1) != 0 ? 44 : 58;
            v80 = *(a3 + 24);
            if (v80 < *(a3 + 16))
            {
              v78 = *(a3 + 8);
              *(a3 + 24) = v80 + 1;
              *(v78 + v80) = v79;
            }

            else
            {
              sub_1819A4770(a3, v79);
            }

            ++v77;
          }

          while (v75 < v76);
          v81 = v77 & 1;
        }

        if (v75 > v76 || v81)
        {
          *(a3 + 33) |= 2u;
        }

        if (v10)
        {
          v74 = *(a3 + 24);
          if (!*(a3 + 33))
          {
            *(a3 + 24) = --v74;
          }
        }

        else
        {
          v74 = *(a3 + 24);
        }

        if (v74 >= *(a3 + 16))
        {
          v84 = a3;
          v85 = 125;
          goto LABEL_210;
        }

        v82 = *(a3 + 8);
        *(a3 + 24) = v74 + 1;
        v83 = 125;
        break;
      default:
        goto LABEL_48;
    }

LABEL_208:
    *(v82 + v74) = v83;
    return v7 + a2 + v10;
  }

  if (v9 - 7 >= 2)
  {
    if (v9 != 9)
    {
      goto LABEL_48;
    }

    LODWORD(v10) = __n;
    v29 = *(a3 + 24);
    if (v29 >= *(a3 + 16))
    {
      sub_1819A4770(a3, 34);
    }

    else
    {
      v30 = *(a3 + 8);
      *(a3 + 24) = v29 + 1;
      *(v30 + v29) = 34;
    }

    if (v10)
    {
      v36 = (v8 + v7 + a2);
      for (i = v10; i; i -= 2)
      {
        while (1)
        {
          v38 = *v36;
          v39 = byte_181A24A84[v38];
          v41 = v38 == 39;
          v40 = 0;
          v41 = !v41 && v39 == 0;
          if (!v41)
          {
            do
            {
              if (i - 1 == v40)
              {
                v44 = 0;
                LODWORD(v40) = i;
                goto LABEL_70;
              }

              v42 = v36[++v40];
            }

            while (v42 == 39 || byte_181A24A84[v42] != 0);
            v44 = v40 < i;
            if (!v40)
            {
              goto LABEL_75;
            }

LABEL_70:
            v45 = v40;
            v46 = *(a3 + 24);
            if (v46 + v45 >= *(a3 + 16))
            {
              sub_1819A470C(a3, v36, v45);
            }

            else
            {
              memcpy((*(a3 + 8) + v46), v36, v45);
              *(a3 + 24) += v45;
            }

            if (!v44)
            {
              goto LABEL_206;
            }

            v36 += v45;
            i -= v45;
          }

LABEL_75:
          v47 = *v36;
          if (v47 != 34)
          {
            break;
          }

          v48 = *(a3 + 24);
          if ((v48 + 2) < *(a3 + 16))
          {
            *(*(a3 + 8) + v48) = 8796;
            v49 = *(a3 + 24) + 2;
LABEL_98:
            *(a3 + 24) = v49;
            goto LABEL_55;
          }

          sub_1819A470C(a3, "\\"", 2u);
LABEL_55:
          ++v36;
          if (!--i)
          {
            goto LABEL_206;
          }
        }

        if (v47 <= 31)
        {
          v50 = *(a3 + 24);
          if ((v50 + 7) > *(a3 + 16))
          {
            if (sub_1819A417C(a3, 7u))
            {
              break;
            }

            LOBYTE(v47) = *v36;
            v50 = *(a3 + 24);
          }

          v51 = byte_181A24C93[v47];
          *(*(a3 + 8) + v50) = 92;
          v52 = *(a3 + 8) + *(a3 + 24);
          if (v51)
          {
            *(v52 + 1) = v51;
            v53 = 2;
          }

          else
          {
            *(v52 + 1) = 117;
            *(*(a3 + 8) + *(a3 + 24) + 2) = 48;
            *(*(a3 + 8) + *(a3 + 24) + 3) = 48;
            *(*(a3 + 8) + *(a3 + 24) + 4) = a0123456789abcd[v47 >> 4];
            *(*(a3 + 8) + *(a3 + 24) + 5) = a0123456789abcd[v47 & 0xF];
            v53 = 6;
          }

          v49 = *(a3 + 24) + v53;
          goto LABEL_98;
        }

        if (i <= 1)
        {
          *(a3 + 33) |= 2u;
          break;
        }

        v54 = v36[1];
        if (v54 <= 0x2F)
        {
          if (v54 != 10)
          {
            if (v54 == 13)
            {
              if (i != 2)
              {
                v63 = v36[2] == 10;
                if (v36[2] == 10)
                {
                  ++v36;
                }

                i -= v63;
              }

              goto LABEL_123;
            }

            if (v54 == 39)
            {
              v58 = *(a3 + 24);
              if (v58 >= *(a3 + 16))
              {
                sub_1819A4770(a3, 39);
              }

              else
              {
                v59 = *(a3 + 8);
                *(a3 + 24) = v58 + 1;
                *(v59 + v58) = 39;
              }

              goto LABEL_123;
            }

LABEL_105:
            v60 = *(a3 + 24);
            if ((v60 + 2) >= *(a3 + 16))
            {
              sub_1819A470C(a3, v36, 2u);
              goto LABEL_123;
            }

            *(*(a3 + 8) + v60) = *v36;
            v61 = *(a3 + 24) + 2;
            goto LABEL_110;
          }
        }

        else
        {
          if (v36[1] <= 0x77u)
          {
            if (v54 == 48)
            {
              v62 = *(a3 + 24);
              if ((v62 + 6) >= *(a3 + 16))
              {
                v64 = a3;
                v65 = "\\u0000";
LABEL_121:
                sub_1819A470C(v64, v65, 6u);
                goto LABEL_123;
              }

              v56 = *(a3 + 8) + v62;
              v57 = 12336;
            }

            else
            {
              if (v54 != 118)
              {
                goto LABEL_105;
              }

              v55 = *(a3 + 24);
              if ((v55 + 6) >= *(a3 + 16))
              {
                v64 = a3;
                v65 = "\\u0009";
                goto LABEL_121;
              }

              v56 = *(a3 + 8) + v55;
              v57 = 14640;
            }

            *(v56 + 4) = v57;
            *v56 = 808482140;
            v61 = *(a3 + 24) + 6;
LABEL_110:
            *(a3 + 24) = v61;
            goto LABEL_123;
          }

          if (v54 == 120)
          {
            if (i > 3)
            {
              sub_1819A4034(a3, "\\u00", 4uLL);
              v36 += 2;
              sub_1819A4034(a3, v36, 2uLL);
              i -= 2;
              goto LABEL_123;
            }

LABEL_112:
            *(a3 + 33) |= 2u;
            i = 2;
            goto LABEL_123;
          }

          if (v54 != 226)
          {
            goto LABEL_105;
          }

          if (i < 4 || v36[2] != 128 || (v36[3] & 0xFE) != 0xA8)
          {
            goto LABEL_112;
          }

          i -= 2;
          v36 += 2;
        }

LABEL_123:
        v36 += 2;
      }
    }

LABEL_206:
    v74 = *(a3 + 24);
    if (v74 < *(a3 + 16))
    {
      v82 = *(a3 + 8);
      *(a3 + 24) = v74 + 1;
      v83 = 34;
      goto LABEL_208;
    }

    v84 = a3;
    v85 = 34;
LABEL_210:
    sub_1819A4770(v84, v85);
    return v7 + a2 + v10;
  }

  v16 = __n;
  LODWORD(v10) = __n;
  v17 = *(a3 + 24);
  v18 = __n + 2;
  if (v17 + __n + 2 <= *(a3 + 16))
  {
LABEL_17:
    *(*(a3 + 8) + v17) = 34;
    memcpy((*(a3 + 8) + *(a3 + 24) + 1), (*a1 + v7 + a2), v16);
    *(*(a3 + 8) + *(a3 + 24) + v16 + 1) = 34;
    *(a3 + 24) += v18;
    return v7 + a2 + v10;
  }

  if (!sub_1819A417C(a3, __n + 2))
  {
    v17 = *(a3 + 24);
    goto LABEL_17;
  }

  return v7 + a2 + v10;
}

double sub_1819A3DCC(uint64_t a1, uint64_t a2, sqlite3_context *a3)
{
  if (*(a1 + 33))
  {
    if ((*(a1 + 33) & 1) == 0)
    {
      if ((*(a1 + 33) & 2) != 0)
      {
        v4 = *a1;
        if (*a1)
        {
          *(v4 + 9) = 1;
          sub_1818900D0(*v4, "malformed JSON", -1, 1u, 0xFFFFFFFFFFFFFFFFLL);
        }
      }

LABEL_15:
      if (!*(a1 + 32))
      {
        v11 = *(a1 + 8);
        v14 = *(v11 - 8);
        v13 = (v11 - 8);
        v12 = v14;
        if (v14 < 2)
        {
          v15 = &off_1ED452EB0;
          if (dword_1ED452E80)
          {
            if (xmmword_1ED456AF0)
            {
              xmmword_1ED452F18(xmmword_1ED456AF0);
            }

            qword_1ED456A48[0] -= xmmword_1ED452EC0(v13);
            --qword_1ED456A90;
            off_1ED452EB0(v13);
            v13 = xmmword_1ED456AF0;
            if (!xmmword_1ED456AF0)
            {
              goto LABEL_24;
            }

            v15 = &xmmword_1ED452F28;
          }

          (*v15)(v13);
        }

        else
        {
          *v13 = v12 - 1;
        }
      }

LABEL_24:
      *(a1 + 8) = a1 + 34;
      *&result = 100;
      *(a1 + 16) = xmmword_181A201B0;
      *(a1 + 32) = 1;
      return result;
    }

LABEL_14:
    sqlite3_result_error_nomem(*a1);
    goto LABEL_15;
  }

  v5 = *a1;
  if (*a1 && (*(*(v5 + 1) + 8) & 8) != 0)
  {
    sub_1819A48A4(a1);
    goto LABEL_15;
  }

  if (*(a1 + 32))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 24);
    v8 = -1;
LABEL_10:
    sqlite3_result_text64(v5, v6, v7, v8, 1u);
    goto LABEL_15;
  }

  v9 = *(a1 + 24);
  if (v9 >= *(a1 + 16))
  {
    v17 = a2;
    v18 = a3;
    sub_1819A4770(a1, 0);
    a2 = v17;
    a3 = v18;
    if (*(a1 + 33))
    {
      goto LABEL_14;
    }
  }

  else
  {
    v10 = *(a1 + 8);
    *(a1 + 24) = v9 + 1;
    *(v10 + v9) = 0;
    if (*(a1 + 33))
    {
      goto LABEL_14;
    }
  }

  v19 = *(a1 + 24) - 1;
  *(a1 + 24) = v19;
  if (!a2 || *(a2 + 48) || !*(a2 + 12))
  {
LABEL_28:
    v5 = *a1;
    v6 = *(a1 + 8);
    ++*(v6 - 1);
    v8 = sub_18193AB78;
    v7 = v19;
    goto LABEL_10;
  }

  v20 = *(a1 + 8);
  ++*(v20 - 8);
  *(a2 + 16) = v20;
  *(a2 + 32) = v19;
  *(a2 + 48) = 1;
  v21 = a3;
  if (sub_1819A0590(a3, a2) != 7)
  {
    v19 = *(a1 + 24);
    goto LABEL_28;
  }

  sqlite3_result_error_nomem(v21);

  return sub_1819A47B4(a1);
}

void *sub_1819A4034(void *a1, const void *a2, size_t __n)
{
  v3 = __n;
  v4 = a1[3];
  if (v4 + __n >= a1[2])
  {

    return sub_1819A470C(a1, a2, __n);
  }

  else
  {
    result = memcpy((a1[1] + v4), a2, __n);
    a1[3] += v3;
  }

  return result;
}

uint64_t sub_1819A40A0(signed int a1, void *a2, char *zFormat, ...)
{
  va_start(va, zFormat);
  if ((a2[3] + a1) < a2[2] || (result = sub_1819A417C(a2, a1), !result))
  {
    if (a1 >= 1)
    {
      v7 = a2[1];
      v8 = a2[3];
      v9 = (v7 + v8);
      if (zFormat && v7)
      {
        v11[0] = 0;
        v11[1] = v7 + v8;
        v12 = a1;
        v13 = 0;
        v14 = 0;
        sqlite3_str_vappendf(v11, zFormat, va);
        v9 += HIDWORD(v13);
LABEL_8:
        *v9 = 0;
        goto LABEL_9;
      }

      sub_1819012D0(34608);
      if (v7)
      {
        goto LABEL_8;
      }
    }

LABEL_9:
    v10 = a2[3];
    result = strlen((a2[1] + v10));
    a2[3] = v10 + result;
  }

  return result;
}

uint64_t sub_1819A417C(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 16);
  if (v3 <= a2)
  {
    v4 = a2 + v3 + 10;
  }

  else
  {
    v4 = 2 * v3;
  }

  if (!*(a1 + 32))
  {
    v6 = *(a1 + 8) - 8;
    v7 = sqlite3_initialize();
    if (v4 != -9 && v7 == 0)
    {
      v9 = sub_18190287C(v6, v4 + 9, 0x100004000313F17);
      if (v9)
      {
        *(a1 + 8) = v9 + 8;
LABEL_29:
        result = 0;
        *(a1 + 16) = v4;
        return result;
      }
    }

    v10 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v6);
      --qword_1ED456A90;
      off_1ED452EB0(v6);
      v6 = xmmword_1ED456AF0;
      if (!xmmword_1ED456AF0)
      {
        goto LABEL_20;
      }

      v10 = &xmmword_1ED452F28;
    }

    (*v10)(v6);
LABEL_20:
    *(a1 + 33) |= 1u;
    goto LABEL_36;
  }

  if (*(a1 + 33))
  {
    return 1;
  }

  if (!sqlite3_initialize())
  {
    v15 = sub_181902484(v4 + 9, 0x100004000313F17);
    if (v15)
    {
      *v15 = 1;
      v16 = v15 + 1;
      memcpy(v15 + 1, *(a1 + 8), *(a1 + 24));
      *(a1 + 8) = v16;
      *(a1 + 32) = 0;
      goto LABEL_29;
    }
  }

  *(a1 + 33) |= 1u;
  if (*a1)
  {
    sqlite3_result_error_nomem(*a1);
  }

  if (!*(a1 + 32))
  {
    v11 = *(a1 + 8);
    v14 = *(v11 - 8);
    v13 = (v11 - 8);
    v12 = v14;
    if (v14 < 2)
    {
      v17 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v13);
        --qword_1ED456A90;
        off_1ED452EB0(v13);
        v13 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
          goto LABEL_36;
        }

        v17 = &xmmword_1ED452F28;
      }

      (*v17)(v13);
    }

    else
    {
      *v13 = v12 - 1;
    }
  }

LABEL_36:
  *(a1 + 8) = a1 + 34;
  *(a1 + 16) = xmmword_181A201B0;
  *(a1 + 32) = 1;
  return 7;
}