BOOL _os_feature_enabled_impl(const char *a1, const char *a2)
{
  v77 = *MEMORY[0x277D85DE8];
  if (qword_280AC06D8 != -1)
  {
    _os_feature_enabled_impl_cold_1();
  }

  v4 = _os_feature_table();
  if (!v4 || _MergedGlobals == 1)
  {
    v75 = *MEMORY[0x277D85DE8];

    return _os_feature_enabled_SLOWPATH(a1, a2);
  }

  v5 = v4;
  v6 = strlen(a1);
  v7 = strlen(a2);
  v8 = v6 + v7 + 1;
  v9 = (0xC6A4A7935BD1E995 * v8) ^ *(v5 + 24);
  if (v8 < v6)
  {
    v10 = v6 + v7 + 1;
  }

  else
  {
    v10 = v6;
  }

  v11 = &a1[v10];
  if (v10 >= 16)
  {
    v13 = a1;
    do
    {
      v9 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *v13) ^ ((0xC6A4A7935BD1E995 * *v13) >> 47))) ^ v9)) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *(v13 + 1)) ^ ((0xC6A4A7935BD1E995 * *(v13 + 1)) >> 47))));
      v12 = v13 + 16;
      v14 = v13 + 32;
      v13 += 16;
    }

    while (v14 <= v11);
  }

  else
  {
    v12 = a1;
  }

  if ((v12 + 8) <= v11)
  {
    do
    {
      v15 = v12 + 8;
      v9 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *v12) ^ ((0xC6A4A7935BD1E995 * *v12) >> 47))) ^ v9);
      v16 = (v12 + 16) > v11;
      v12 += 8;
    }

    while (!v16);
  }

  else
  {
    v15 = v12;
  }

  if (v15 >= v11)
  {
    v18 = 0;
    v21 = v8 - v10;
    v22 = v21 != 0;
    if (v21)
    {
      v23 = (&sep + 1);
    }

    else
    {
      v23 = &sep;
    }

    goto LABEL_33;
  }

  LODWORD(v17) = 0;
  v18 = 0;
  v19 = &a1[v10] - v15;
  do
  {
    v20 = *v15++;
    v18 |= v20 << v17;
    v17 = (v17 + 8);
    --v19;
  }

  while (v19);
  v21 = v8 - v10;
  v22 = v21 != 0;
  if (v21)
  {
    v23 = (&sep + 1);
  }

  else
  {
    v23 = &sep;
  }

  if (!v17)
  {
LABEL_33:
    v24 = &sep;
    goto LABEL_34;
  }

  if (v21 && v17 <= 0x3F)
  {
    v24 = &sep;
    do
    {
      v25 = v17;
      v26 = *v24;
      v24 = (v24 + 1);
      v18 |= v26 << v17;
      v17 += 8;
    }

    while (v24 < v23 && v25 < 0x38);
    if (v25 >= 0x38)
    {
      goto LABEL_150;
    }

LABEL_54:
    v32 = v21 - v22;
    if (v21 - v22 >= v7)
    {
      v33 = v7;
    }

    else
    {
      v33 = v21 - v22;
    }

    v34 = &a2[v33];
    goto LABEL_58;
  }

  if (v17 < 0x40)
  {
    goto LABEL_54;
  }

  v24 = &sep;
LABEL_150:
  v74 = 0xC6A4A7935BD1E995 * v18;
  v18 = 0;
  v9 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * (v74 ^ (v74 >> 47))) ^ v9);
LABEL_34:
  if (v24 + 2 <= v23)
  {
    do
    {
      v9 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *v24) ^ ((0xC6A4A7935BD1E995 * *v24) >> 47))) ^ v9)) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v24[1]) ^ ((0xC6A4A7935BD1E995 * v24[1]) >> 47))));
      v27 = v24 + 2;
      v28 = v24 + 4;
      v24 += 2;
    }

    while (v28 <= v23);
  }

  else
  {
    v27 = v24;
  }

  if (v27 + 1 <= v23)
  {
    do
    {
      v29 = (v27 + 1);
      v9 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *v27) ^ ((0xC6A4A7935BD1E995 * *v27) >> 47))) ^ v9);
      v16 = v27 + 2 > v23;
      ++v27;
    }

    while (!v16);
  }

  else
  {
    v29 = v27;
  }

  if (v29 >= v23)
  {
    v32 = v21 - v22;
    if (v21 - v22 >= v7)
    {
      v33 = v7;
    }

    else
    {
      v33 = v21 - v22;
    }

    v34 = &a2[v33];
    v35 = a2;
    goto LABEL_68;
  }

  LODWORD(v17) = 0;
  v30 = (&sep + v22 - v29);
  do
  {
    v31 = *v29++;
    v18 |= v31 << v17;
    LODWORD(v17) = v17 + 8;
    --v30;
  }

  while (v30);
  v32 = v21 - v22;
  if (v21 - v22 >= v7)
  {
    v33 = v7;
  }

  else
  {
    v33 = v21 - v22;
  }

  v34 = &a2[v33];
  v35 = a2;
  if (!v17)
  {
LABEL_68:
    if ((v35 + 16) <= v34)
    {
      do
      {
        v9 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *v35) ^ ((0xC6A4A7935BD1E995 * *v35) >> 47))) ^ v9)) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *(v35 + 1)) ^ ((0xC6A4A7935BD1E995 * *(v35 + 1)) >> 47))));
        v40 = v35 + 16;
        v41 = v35 + 32;
        v35 += 16;
      }

      while (v41 <= v34);
    }

    else
    {
      v40 = v35;
    }

    if ((v40 + 8) <= v34)
    {
      do
      {
        v42 = v40 + 8;
        v9 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *v40) ^ ((0xC6A4A7935BD1E995 * *v40) >> 47))) ^ v9);
        v16 = (v40 + 16) > v34;
        v40 += 8;
      }

      while (!v16);
    }

    else
    {
      v42 = v40;
    }

    if (v42 >= v34)
    {
      LODWORD(v36) = 0;
    }

    else
    {
      LODWORD(v36) = 0;
      v43 = &a2[v33] - v42;
      do
      {
        v44 = *v42++;
        v18 |= v44 << v36;
        LODWORD(v36) = v36 + 8;
        --v43;
      }

      while (v43);
    }

    goto LABEL_80;
  }

LABEL_58:
  if (v33 < 1 || v17 > 0x3F)
  {
    v35 = a2;
    if (v17 < 0x40)
    {
      LODWORD(v36) = v17;
      goto LABEL_80;
    }

    goto LABEL_67;
  }

  v36 = v17;
  v35 = a2;
  do
  {
    v37 = v36;
    v38 = *v35++;
    v18 |= v38 << v36;
    v36 += 8;
  }

  while (v35 < v34 && v37 < 0x38);
  if (v37 >= 0x38)
  {
LABEL_67:
    v39 = 0xC6A4A7935BD1E995 * v18;
    v18 = 0;
    v9 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * (v39 ^ (v39 >> 47))) ^ v9);
    goto LABEL_68;
  }

LABEL_80:
  v45 = v32 - v33;
  if (v45)
  {
    memset(v76, 0, sizeof(v76));
    if (v45 >= 0x20)
    {
      v46 = v45;
      while (1)
      {
        v47 = v45 >= 0x20 ? 32 : v45;
        v48 = v76 + v47;
        if (!v36)
        {
          break;
        }

        if (v45 && v36 <= 0x3F)
        {
          v36 = v36;
          v49 = v76;
          do
          {
            v50 = v36;
            v51 = *v49++;
            v18 |= v51 << v36;
            v36 += 8;
          }

          while (v49 < v48 && v50 < 0x38);
          if (v50 >= 0x38)
          {
            goto LABEL_97;
          }
        }

        else if (v36 >= 0x40)
        {
          v49 = v76;
LABEL_97:
          v52 = 0xC6A4A7935BD1E995 * v18;
          v18 = 0;
          v9 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * (v52 ^ (v52 >> 47))) ^ v9);
LABEL_98:
          v53 = v49 + 16;
          while (v53 <= v48)
          {
            v9 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *v49) ^ ((0xC6A4A7935BD1E995 * *v49) >> 47))) ^ v9)) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *(v49 + 1)) ^ ((0xC6A4A7935BD1E995 * *(v49 + 1)) >> 47))));
            v53 = v49 + 32;
            v49 += 16;
          }

          if (v49 + 8 <= v48)
          {
            do
            {
              v9 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *v49) ^ ((0xC6A4A7935BD1E995 * *v49) >> 47))) ^ v9);
              v16 = v49 + 16 > v48;
              v49 += 8;
            }

            while (!v16);
          }

          if (v49 >= v48)
          {
            LODWORD(v36) = 0;
          }

          else
          {
            LODWORD(v36) = 0;
            v54 = (v76 + v47 - v49);
            do
            {
              v55 = *v49++;
              v18 |= v55 << v36;
              LODWORD(v36) = v36 + 8;
              --v54;
            }

            while (v54);
          }
        }

        v45 -= v47;
        v46 -= 32;
        if (v46 <= 0x1F)
        {
          goto LABEL_112;
        }
      }

      v49 = v76;
      goto LABEL_98;
    }

    v46 = v45;
LABEL_112:
    if (v45 >= v46)
    {
      v45 = v46;
    }

    v56 = v76;
    v57 = v76 + v45;
    if (!v36)
    {
      goto LABEL_125;
    }

    if (v36 <= 0x3F && v45)
    {
      v36 = v36;
      v56 = v76;
      do
      {
        v58 = v36;
        v59 = *v56++;
        v18 |= v59 << v36;
        v36 += 8;
      }

      while (v56 < v57 && v58 < 0x38);
      if (v58 < 0x38)
      {
        goto LABEL_137;
      }

      goto LABEL_124;
    }

    if (v36 >= 0x40)
    {
      v56 = v76;
LABEL_124:
      v60 = 0xC6A4A7935BD1E995 * v18;
      v18 = 0;
      v9 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * (v60 ^ (v60 >> 47))) ^ v9);
LABEL_125:
      if (v56 + 16 <= v57)
      {
        do
        {
          v9 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *v56) ^ ((0xC6A4A7935BD1E995 * *v56) >> 47))) ^ v9)) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *(v56 + 1)) ^ ((0xC6A4A7935BD1E995 * *(v56 + 1)) >> 47))));
          v61 = (v56 + 16);
          v62 = v56 + 32;
          v56 += 16;
        }

        while (v62 <= v57);
      }

      else
      {
        v61 = v56;
      }

      if (v61 + 8 <= v57)
      {
        do
        {
          v63 = v61 + 8;
          v9 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *v61) ^ ((0xC6A4A7935BD1E995 * *v61) >> 47))) ^ v9);
          v16 = v61 + 16 > v57;
          v61 += 8;
        }

        while (!v16);
      }

      else
      {
        v63 = v61;
      }

      if (v63 >= v57)
      {
        LODWORD(v36) = 0;
      }

      else
      {
        LODWORD(v36) = 0;
        v64 = (v76 + v45 - v63);
        do
        {
          v65 = *v63++;
          v18 |= v65 << v36;
          LODWORD(v36) = v36 + 8;
          --v64;
        }

        while (v64);
      }
    }
  }

LABEL_137:
  v66 = 0xC6A4A7935BD1E995 * (v18 ^ v9);
  if (!v36)
  {
    v66 = v9;
  }

  v67 = *(v5 + 16);
  if (v67)
  {
    v68 = 0;
    v69 = (0xC6A4A7935BD1E995 * (v66 ^ (v66 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v66 ^ (v66 >> 47))) >> 47);
    while (1)
    {
      v70 = v67 - 1;
      result = v68 <= v67 - 1;
      if (v68 > v67 - 1)
      {
        break;
      }

      while (1)
      {
        v67 = (v68 + v70) >> 1;
        v72 = *(v5 + 32 + 8 * v67);
        if (v72 >= v69)
        {
          break;
        }

        v68 = v67 + 1;
        if (v67 >= v70)
        {
          goto LABEL_147;
        }
      }

      if (v72 <= v69)
      {
        goto LABEL_148;
      }
    }
  }

LABEL_147:
  result = 0;
LABEL_148:
  v73 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _os_feature_table()
{
  if (_MergedGlobals_0 != -1)
  {
    _os_feature_table_cold_1();
  }

  return qword_280AC06E8;
}

BOOL _os_feature_enabled_simple_impl(const char *a1, const char *a2, _BOOL8 a3)
{
  v88 = *MEMORY[0x277D85DE8];
  v6 = _os_feature_table();
  if (!v6)
  {
    goto LABEL_136;
  }

  v7 = v6;
  v8 = strlen(a1);
  v9 = strlen(a2);
  v10 = v8 + v9 + 1;
  v11 = (0xC6A4A7935BD1E995 * v10) ^ *(v7 + 24);
  if (v10 < v8)
  {
    v12 = v8 + v9 + 1;
  }

  else
  {
    v12 = v8;
  }

  v13 = &a1[v12];
  if (v12 >= 16)
  {
    v15 = a1;
    do
    {
      v11 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *v15) ^ ((0xC6A4A7935BD1E995 * *v15) >> 47))) ^ v11)) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *(v15 + 1)) ^ ((0xC6A4A7935BD1E995 * *(v15 + 1)) >> 47))));
      v14 = v15 + 16;
      v16 = v15 + 32;
      v15 += 16;
    }

    while (v16 <= v13);
  }

  else
  {
    v14 = a1;
  }

  if ((v14 + 8) <= v13)
  {
    do
    {
      v18 = *v14;
      OUTLINED_FUNCTION_0();
      v20 = v19 > v13;
      v14 = v17;
    }

    while (!v20);
  }

  else
  {
    v17 = v14;
  }

  v21 = &sep;
  if (v17 >= v13)
  {
    v23 = 0;
    v32 = v10 - v12;
    v27 = v32 != 0;
    if (v32)
    {
      v28 = (&sep + 1);
    }

    else
    {
      v28 = &sep;
    }
  }

  else
  {
    LODWORD(v22) = 0;
    v23 = 0;
    v24 = &a1[v12] - v17;
    do
    {
      v25 = *v17++;
      v23 |= v25 << v22;
      v22 = (v22 + 8);
      --v24;
    }

    while (v24);
    v26 = v10 - v12;
    v27 = v26 != 0;
    if (v26)
    {
      v28 = (&sep + 1);
    }

    else
    {
      v28 = &sep;
    }

    if (v22)
    {
      if (v26 && v22 <= 0x3F)
      {
        v29 = &sep;
        do
        {
          v30 = v22;
          v31 = *v29;
          v29 = (v29 + 1);
          v23 |= v31 << v22;
          v22 += 8;
        }

        while (v29 < v28 && v30 < 0x38);
        if (v30 >= 0x38)
        {
          goto LABEL_137;
        }
      }

      else if (v22 >= 0x40)
      {
LABEL_137:
        OUTLINED_FUNCTION_0();
        goto LABEL_31;
      }

      OUTLINED_FUNCTION_1();
      goto LABEL_46;
    }
  }

  v33 = &sep;
LABEL_31:
  if (v33 + 2 <= v28)
  {
    do
    {
      v11 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *v33) ^ ((0xC6A4A7935BD1E995 * *v33) >> 47))) ^ v11)) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v33[1]) ^ ((0xC6A4A7935BD1E995 * v33[1]) >> 47))));
      v34 = v33 + 2;
      v35 = v33 + 4;
      v33 += 2;
    }

    while (v35 <= v28);
  }

  else
  {
    v34 = v33;
  }

  if (v34 + 1 <= v28)
  {
    do
    {
      v36 = (v34 + 1);
      v11 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *v34) ^ ((0xC6A4A7935BD1E995 * *v34) >> 47))) ^ v11);
      v20 = v34 + 2 > v28;
      ++v34;
    }

    while (!v20);
  }

  else
  {
    v36 = v34;
  }

  if (v36 >= v28)
  {
    OUTLINED_FUNCTION_1();
    v46 = a2;
    goto LABEL_56;
  }

  v37 = 0;
  v38 = v21 + v27 - v36;
  do
  {
    v39 = *v36++;
    v23 |= v39 << v37;
    v37 += 8;
    --v38;
  }

  while (v38);
  OUTLINED_FUNCTION_1();
  v46 = a2;
  if (!v45)
  {
LABEL_56:
    if ((v46 + 16) <= v44)
    {
      do
      {
        v40 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *v46) ^ ((0xC6A4A7935BD1E995 * *v46) >> 47))) ^ v40)) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *(v46 + 1)) ^ ((0xC6A4A7935BD1E995 * *(v46 + 1)) >> 47))));
        v51 = v46 + 16;
        v52 = v46 + 32;
        v46 += 16;
      }

      while (v52 <= v44);
    }

    else
    {
      v51 = v46;
    }

    if ((v51 + 8) <= v44)
    {
      do
      {
        v53 = v51 + 8;
        v40 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *v51) ^ ((0xC6A4A7935BD1E995 * *v51) >> 47))) ^ v40);
        v20 = (v51 + 16) > v44;
        v51 += 8;
      }

      while (!v20);
    }

    else
    {
      v53 = v51;
    }

    if (v53 >= v44)
    {
      LODWORD(v47) = 0;
    }

    else
    {
      LODWORD(v47) = 0;
      v54 = &a2[v43] - v53;
      do
      {
        v55 = *v53++;
        v41 |= v55 << v47;
        LODWORD(v47) = v47 + 8;
        --v54;
      }

      while (v54);
    }

    goto LABEL_68;
  }

LABEL_46:
  if (v43 < 1 || v45 > 0x3F)
  {
    if (v45 < 0x40)
    {
      LODWORD(v47) = v45;
      goto LABEL_68;
    }

    goto LABEL_55;
  }

  v47 = v45;
  v48 = a2;
  do
  {
    v49 = v47;
    v50 = *v48++;
    v41 |= v50 << v47;
    v47 += 8;
  }

  while (v48 < v44 && v49 < 0x38);
  if (v49 >= 0x38)
  {
LABEL_55:
    OUTLINED_FUNCTION_0();
    goto LABEL_56;
  }

LABEL_68:
  v56 = v42 - v43;
  if (!v56)
  {
    goto LABEL_125;
  }

  memset(v87, 0, sizeof(v87));
  if (v56 >= 0x20)
  {
    v57 = v56;
    while (1)
    {
      v58 = v56 >= 0x20 ? 32 : v56;
      v59 = v87 + v58;
      if (!v47)
      {
        break;
      }

      if (v56 && v47 <= 0x3F)
      {
        v47 = v47;
        v60 = v87;
        do
        {
          v61 = v47;
          v62 = *v60++;
          v41 |= v62 << v47;
          v47 += 8;
        }

        while (v60 < v59 && v61 < 0x38);
        if (v61 >= 0x38)
        {
          goto LABEL_85;
        }
      }

      else if (v47 >= 0x40)
      {
        v60 = v87;
LABEL_85:
        v63 = 0xC6A4A7935BD1E995 * v41;
        v41 = 0;
        v40 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * (v63 ^ (v63 >> 47))) ^ v40);
LABEL_86:
        v64 = v60 + 16;
        while (v64 <= v59)
        {
          v40 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *v60) ^ ((0xC6A4A7935BD1E995 * *v60) >> 47))) ^ v40)) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *(v60 + 1)) ^ ((0xC6A4A7935BD1E995 * *(v60 + 1)) >> 47))));
          v64 = v60 + 32;
          v60 += 16;
        }

        if (v60 + 8 <= v59)
        {
          do
          {
            v40 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *v60) ^ ((0xC6A4A7935BD1E995 * *v60) >> 47))) ^ v40);
            v20 = v60 + 16 > v59;
            v60 += 8;
          }

          while (!v20);
        }

        if (v60 >= v59)
        {
          LODWORD(v47) = 0;
        }

        else
        {
          LODWORD(v47) = 0;
          v65 = (v87 + v58 - v60);
          do
          {
            v66 = *v60++;
            v41 |= v66 << v47;
            LODWORD(v47) = v47 + 8;
            --v65;
          }

          while (v65);
        }
      }

      v56 -= v58;
      v57 -= 32;
      if (v57 <= 0x1F)
      {
        goto LABEL_100;
      }
    }

    v60 = v87;
    goto LABEL_86;
  }

  v57 = v56;
LABEL_100:
  if (v56 >= v57)
  {
    v56 = v57;
  }

  v67 = v87;
  v68 = v87 + v56;
  if (!v47)
  {
    goto LABEL_113;
  }

  if (v47 > 0x3F || !v56)
  {
    if (v47 < 0x40)
    {
      goto LABEL_125;
    }

    v67 = v87;
    goto LABEL_112;
  }

  v47 = v47;
  v67 = v87;
  do
  {
    v69 = v47;
    v70 = *v67++;
    v41 |= v70 << v47;
    v47 += 8;
  }

  while (v67 < v68 && v69 < 0x38);
  if (v69 >= 0x38)
  {
LABEL_112:
    v71 = 0xC6A4A7935BD1E995 * v41;
    v41 = 0;
    v40 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * (v71 ^ (v71 >> 47))) ^ v40);
LABEL_113:
    if (v67 + 16 <= v68)
    {
      do
      {
        v40 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *v67) ^ ((0xC6A4A7935BD1E995 * *v67) >> 47))) ^ v40)) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *(v67 + 1)) ^ ((0xC6A4A7935BD1E995 * *(v67 + 1)) >> 47))));
        v72 = v67 + 16;
        v73 = v67 + 32;
        v67 += 16;
      }

      while (v73 <= v68);
    }

    else
    {
      v72 = v67;
    }

    if (v72 + 8 <= v68)
    {
      do
      {
        v75 = *v72;
        OUTLINED_FUNCTION_0();
        v20 = v76 > v68;
        v72 = v74;
      }

      while (!v20);
    }

    else
    {
      v74 = v72;
    }

    if (v74 >= v68)
    {
      LODWORD(v47) = 0;
    }

    else
    {
      LODWORD(v47) = 0;
      v77 = (v87 + v56 - v74);
      do
      {
        v78 = *v74++;
        v41 |= v78 << v47;
        LODWORD(v47) = v47 + 8;
        --v77;
      }

      while (v77);
    }
  }

LABEL_125:
  v79 = 0xC6A4A7935BD1E995 * (v41 ^ v40);
  if (!v47)
  {
    v79 = v40;
  }

  v80 = *(v7 + 16);
  if (v80)
  {
    v81 = 0;
    v82 = (0xC6A4A7935BD1E995 * (v79 ^ (v79 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v79 ^ (v79 >> 47))) >> 47);
    while (1)
    {
      v83 = v80 - 1;
      a3 = v81 <= v80 - 1;
      if (v81 > v80 - 1)
      {
        break;
      }

      while (1)
      {
        v80 = (v81 + v83) >> 1;
        v84 = *(v7 + 32 + 8 * v80);
        if (v84 >= v82)
        {
          break;
        }

        v81 = v80 + 1;
        if (v80 >= v83)
        {
          goto LABEL_135;
        }
      }

      if (v84 <= v82)
      {
        goto LABEL_136;
      }
    }
  }

LABEL_135:
  a3 = 0;
LABEL_136:
  v85 = *MEMORY[0x277D85DE8];
  return a3;
}

uint64_t _os_feature_table_once(void *a1)
{
  result = shm_open("com.apple.featureflags.shm", 0);
  if ((result & 0x80000000) == 0)
  {
    v3 = result;
    memset(&v5, 0, sizeof(v5));
    if ((fstat(result, &v5) & 0x80000000) == 0)
    {
      v4 = mmap(0, v5.st_size, 1, 1, v3, 0);
      if (v4 != -1)
      {
        if (v5.st_size >= 0x20uLL && *v4 == 0x47414C4654414546 && (8 * v4[2] + 32) <= v5.st_size)
        {
          *a1 = v4;
        }

        else
        {
          munmap(v4, v5.st_size);
        }
      }
    }

    return close(v3);
  }

  return result;
}

char *_os_feature_enabled_envvar_check_once(_BYTE *a1)
{
  result = getenv("FEATUREFLAGS_ENABLED");
  if (result || (result = getenv("FEATUREFLAGS_DISABLED")) != 0)
  {
    *a1 = 1;
  }

  return result;
}

BOOL _os_feature_enabled_SLOWPATH(const char *a1, const char *a2)
{
  v86 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&_slow_cache_lock);
  v3 = 0x27D9EE000uLL;
  if (_slow_cache)
  {
    v4 = xpc_dictionary_get_value(_slow_cache, a1);
    v5 = v4;
    if (v4)
    {
      if (MEMORY[0x2318C1080](v4) != MEMORY[0x277D86468])
      {
        goto LABEL_19;
      }

      v6 = xpc_dictionary_get_value(v5, a2);
      v7 = v6;
      v8 = v6 == MEMORY[0x277D863E8];
      if (v6 == MEMORY[0x277D863E8] || v6 == MEMORY[0x277D863E0])
      {
        os_unfair_lock_unlock(&_slow_cache_lock);

        goto LABEL_22;
      }
    }
  }

  os_unfair_lock_unlock(&_slow_cache_lock);
  v10 = _os_feature_search_paths();
  if (__strlcpy_chk() <= 0x3FF && __strlcat_chk() <= 0x3FF && __strlcat_chk() <= 0x3FF)
  {
    empty = xpc_dictionary_create_empty();
    __stringp[0] = MEMORY[0x277D85DD0];
    __stringp[1] = 3221225472;
    __stringp[2] = ___os_featureenabled_slow_load_disclosures_block_invoke;
    __stringp[3] = &unk_278743940;
    v18 = empty;
    v85 = v18;
    applier = MEMORY[0x2318C0EC0](__stringp);
    v82[0] = MEMORY[0x277D85DD0];
    v82[1] = 3221225472;
    v82[2] = ___os_featureenabled_slow_load_disclosures_block_invoke_2;
    v82[3] = &unk_278743940;
    v75 = v18;
    v83 = v75;
    v76 = MEMORY[0x2318C0EC0](v82);
    v19 = _os_feature_search_paths();
    if (*v19)
    {
      v20 = MEMORY[0x277D86468];
      do
      {
        v21 = _os_feature_enabled_load();
        v22 = v21;
        if (v21 && MEMORY[0x2318C1080](v21) == v20)
        {
          xpc_dictionary_apply(v22, applier);
        }

        _os_feature_internal_search_path();
        v23 = _os_feature_enabled_load();
        v24 = v23;
        if (v23 && MEMORY[0x2318C1080](v23) == v20)
        {
          xpc_dictionary_apply(v24, v76);
        }

        if ((_os_feature_enabled_is_safe_mode() & 1) == 0)
        {
          v25 = *v19;
          v26 = _os_feature_enabled_load();
          v27 = v26;
          if (v26 && MEMORY[0x2318C1080](v26) == v20)
          {
            xpc_dictionary_apply(v27, applier);
          }

          v28 = *v19;
          v29 = _os_feature_enabled_load();
          v30 = v29;
          if (v29 && MEMORY[0x2318C1080](v29) == v20)
          {
            xpc_dictionary_apply(v30, applier);
          }
        }

        v31 = v19[1];
        ++v19;
      }

      while (v31);
    }

    v32 = v75;

    if (*v10)
    {
      LOBYTE(v8) = 0;
      v33 = "/Global.plist";
      do
      {
        v34 = _os_feature_enabled_load();
        v35 = v32;
        if (v34 && MEMORY[0x2318C1080](v34) == MEMORY[0x277D86468])
        {
          v36 = xpc_dictionary_get_value(v34, a2);
          v37 = v36;
          if (v36 && MEMORY[0x2318C1080](v36) == MEMORY[0x277D86468])
          {
            v38 = xpc_dictionary_get_value(v37, "DisclosureRequired");
            v39 = v38;
            if (!v38 || MEMORY[0x2318C1080](v38) != MEMORY[0x277D864C0] || (v40 = xpc_string_get_string_ptr(v39), xpc_dictionary_get_BOOL(v35, v40)))
            {
              appliera = v35;
              v41 = xpc_dictionary_get_value(v37, "Enabled");
              v42 = xpc_dictionary_get_value(v37, "DevelopmentPhase");
              v43 = v42;
              if (!v41 || !v42)
              {
                if (v41 && MEMORY[0x2318C1080](v41) == MEMORY[0x277D86448])
                {
                  LOBYTE(v8) = xpc_BOOL_get_value(v41);
                }

                else if (v43 && MEMORY[0x2318C1080](v43) == MEMORY[0x277D864C0])
                {
                  string_ptr = xpc_string_get_string_ptr(v43);
                  LOBYTE(v8) = strcmp(string_ptr, "FeatureComplete") == 0;
                }
              }

              v35 = appliera;
            }
          }
        }

        v45 = *v10;
        v46 = _os_feature_enabled_load();
        v47 = _os_feature_enabled_extract_domain(v46, a1);
        v8 = _os_feature_enabled_extract(v47, a2, v8, v35);

        if ((_os_feature_enabled_is_safe_mode() & 1) == 0)
        {
          v48 = *v10;
          applierb = _os_feature_enabled_load();
          v49 = _os_feature_enabled_extract_domain(applierb, a1);
          v50 = v8;
          v51 = v35;
          v52 = v49;
          v77 = _os_feature_enabled_extract(v49, a2, v50, v51);

          v53 = *v10;
          v54 = _os_feature_enabled_load();
          _os_feature_enabled_extract_domain(v54, a1);
          v55 = v34;
          v56 = v33;
          v57 = v10;
          v58 = a1;
          v60 = v59 = v32;
          v8 = _os_feature_enabled_extract(v60, a2, v77, v51);

          v32 = v59;
          a1 = v58;
          v10 = v57;
          v33 = v56;
          v34 = v55;
        }

        v61 = v10[1];
        ++v10;
      }

      while (v61);
    }

    else
    {
      v8 = 0;
    }

    v62 = xpc_dictionary_create_empty();
    v63 = getenv("FEATUREFLAGS_ENABLED");
    v64 = getenv("FEATUREFLAGS_DISABLED");
    if (v63)
    {
      v65 = strdup(v63);
      __stringp[0] = v65;
      v66 = strsep(__stringp, ":");
      if (v66)
      {
        v67 = v66;
        v68 = MEMORY[0x277D863E8];
        do
        {
          _os_feature_enabled_write_nested_value_into_plist(v62, v67, v68);
          v67 = strsep(__stringp, ":");
        }

        while (v67);
      }

      free(v65);
    }

    if (v64)
    {
      v69 = strdup(v64);
      __stringp[0] = v69;
      v70 = strsep(__stringp, ":");
      if (v70)
      {
        v71 = v70;
        v72 = MEMORY[0x277D863E0];
        do
        {
          _os_feature_enabled_write_nested_value_into_plist(v62, v71, v72);
          v71 = strsep(__stringp, ":");
        }

        while (v71);
      }

      free(v69);
    }

    if (v62)
    {
      v73 = xpc_dictionary_get_dictionary(v62, a1);
      v74 = v73;
      v3 = 0x27D9EE000;
      if (v73)
      {
        v8 = _os_feature_enabled_extract(v73, a2, v8, v32);
      }
    }

    else
    {
      v3 = 0x27D9EE000;
    }
  }

  else
  {
    v8 = 0;
  }

  os_unfair_lock_lock(&_slow_cache_lock);
  v11 = *(v3 + 2824);
  if (!v11)
  {
    v12 = xpc_dictionary_create(0, 0, 0);
    v13 = *(v3 + 2824);
    *(v3 + 2824) = v12;

    v11 = *(v3 + 2824);
  }

  v14 = xpc_dictionary_get_value(v11, a1);
  if (v14)
  {
    v5 = v14;
    if (MEMORY[0x2318C1080]() != MEMORY[0x277D86468])
    {
LABEL_19:
      abort();
    }
  }

  else
  {
    v5 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_value(*(v3 + 2824), a1, v5);
  }

  xpc_dictionary_set_BOOL(v5, a2, v8);
  os_unfair_lock_unlock(&_slow_cache_lock);
LABEL_22:

  v15 = *MEMORY[0x277D85DE8];
  return v8;
}

id _os_feature_enabled_load()
{
  v12 = *MEMORY[0x277D85DE8];
  if (__strlcpy_chk() > 0x3FF || __strlcat_chk() > 0x3FF)
  {
    v0 = 0;
    goto LABEL_4;
  }

  v3 = open(v11, 16777476);
  if (v3 < 0)
  {
    v0 = 0;
    v9 = *__error();
    if (v9)
    {
LABEL_26:
      *__error() = v9;
    }
  }

  else
  {
    v4 = v3;
    v5 = lseek(v3, 0, 2);
    if ((v5 & 0x8000000000000000) != 0)
    {
      v0 = 0;
      v9 = *__error();
    }

    else
    {
      v6 = v5;
      v7 = malloc_type_malloc(v5, 0x73682183uLL);
      if (v6)
      {
        v8 = 0;
        v9 = 0;
        while (1)
        {
          v10 = pread(v4, &v7[v8], v6 - v8, v8);
          if (v10 < 0)
          {
            v9 = *__error();
            if (v9 != 4)
            {
              v0 = 0;
              goto LABEL_24;
            }
          }

          else
          {
            if (!v10)
            {
              v0 = 0;
              v9 = 70;
              goto LABEL_24;
            }

            v8 += v10;
          }

          if (v8 >= v6)
          {
            goto LABEL_21;
          }
        }
      }

      v9 = 0;
LABEL_21:
      v0 = xpc_create_from_plist();
LABEL_24:
      free(v7);
    }

    close(v4);
    if (v9)
    {
      goto LABEL_26;
    }
  }

LABEL_4:
  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

BOOL _os_feature_enabled_extract(void *a1, const char *a2, _BOOL8 value, void *a4)
{
  v7 = a1;
  v8 = a4;
  if (v7)
  {
    v9 = MEMORY[0x2318C1080](v7);
    v10 = MEMORY[0x277D86468];
    if (v9 == MEMORY[0x277D86468])
    {
      v11 = xpc_dictionary_get_value(v7, a2);
      v12 = v11;
      if (v11 && MEMORY[0x2318C1080](v11) == v10)
      {
        v13 = xpc_dictionary_get_value(v12, "DisclosureRequired");
        v14 = v13;
        if (!v13 || MEMORY[0x2318C1080](v13) != MEMORY[0x277D864C0] || (string_ptr = xpc_string_get_string_ptr(v14), xpc_dictionary_get_BOOL(v8, string_ptr)))
        {
          v16 = xpc_dictionary_get_value(v12, "Enabled");
          v17 = v16;
          if (v16 && MEMORY[0x2318C1080](v16) == MEMORY[0x277D86448])
          {
            value = xpc_BOOL_get_value(v17);
          }
        }
      }
    }
  }

  return value;
}

id _os_feature_enabled_extract_domain(void *a1, const char *a2)
{
  if (a1)
  {
    v2 = xpc_dictionary_get_value(a1, a2);
    v3 = v2;
    if (v2 && MEMORY[0x2318C1080](v2) == MEMORY[0x277D86468])
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t ___os_featureenabled_slow_load_disclosures_block_invoke(uint64_t a1, const char *a2, void *a3)
{
  v5 = a3;
  if (MEMORY[0x2318C1080]() == MEMORY[0x277D86468] && xpc_dictionary_get_BOOL(v5, "Disclosed"))
  {
    xpc_dictionary_set_BOOL(*(a1 + 32), a2, 1);
  }

  return 1;
}

uint64_t ___os_featureenabled_slow_load_disclosures_block_invoke_2(uint64_t a1, const char *a2, void *a3)
{
  v5 = a3;
  if (MEMORY[0x2318C1080]() == MEMORY[0x277D86468])
  {
    v6 = xpc_dictionary_get_value(v5, "Disclosed");

    if (v6)
    {
      v7 = xpc_dictionary_get_BOOL(v5, "Disclosed");
      xpc_dictionary_set_BOOL(*(a1 + 32), a2, v7);
    }
  }

  return 1;
}

void _os_feature_enabled_write_nested_value_into_plist(void *a1, const char *a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = strdup(a2);
  __stringp = v7;
  v8 = strsep(&__stringp, "/");
  if (v8 && (v9 = v8, (v10 = strsep(&__stringp, "/")) != 0) && (v11 = v10, !strsep(&__stringp, "/")))
  {
    empty = xpc_dictionary_get_dictionary(v5, v9);
    if (!empty)
    {
      empty = xpc_dictionary_create_empty();
      xpc_dictionary_set_value(v5, v9, empty);
    }

    v13 = xpc_dictionary_get_value(empty, v11);

    if (v13)
    {
      _os_feature_enabled_write_nested_value_into_plist_cold_1();
    }

    v14 = xpc_dictionary_create_empty();
    xpc_dictionary_set_value(v14, "Enabled", v6);
    xpc_dictionary_set_value(empty, v11, v14);
    free(v7);
  }

  else
  {
    free(v7);
  }
}

void _os_feature_enabled_write_nested_value_into_plist_cold_1()
{
  _os_crash();
  __break(1u);
  __error();
}