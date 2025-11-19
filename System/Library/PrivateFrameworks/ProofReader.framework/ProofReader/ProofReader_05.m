uint64_t PDSFcor8qd(const char *a1, void *a2, uint64_t a3)
{
  v96 = *MEMORY[0x1E69E9840];
  v6 = a2[148];
  v7 = *(a3 + 2126);
  v8 = *(a3 + 2130) - 1;
  v9 = *(a3 + 2132);
  v74 = *(a3 + 2128);
  v10 = v74 + v7;
  v73 = v8;
  v11 = v8 + v7;
  v12 = strlen(a1);
  memset(v95, 0, 256);
  memset(v80, 0, sizeof(v80));
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v13 = *(a1 + 1);
  *(v80 + v13) = 1;
  v14 = *a1;
  v95[v14] = 1;
  *(v80 + *(a1 + 2)) = 1;
  v95[v13] = 1;
  BYTE14(v81) = 1;
  v15 = (a3 + 2164);
  v16 = *(a3 + 2164);
  if (v16 != 255)
  {
    v17 = 0;
    do
    {
      if (v16 == v12)
      {
        v18 = v15[v17 + 1];
        v19 = *(a2[21] + v18);
        v20 = *(a2[22] + v18);
        v21 = *(a2[19] + 8 * v18);
        v95[*v21] = 1;
        if (v19 == 1)
        {
          v22 = &a1[v20];
        }

        else
        {
          v22 = v21 + 1;
        }
      }

      else
      {
        if ((v12 - v16) != 1)
        {
          break;
        }

        v95[v14] = 1;
        v22 = *(a2[19] + 8 * v15[v17 + 1]);
      }

      *(v80 + *v22) = 1;
      v17 += 2;
      v16 = v15[v17];
    }

    while (v16 != 255);
  }

  v79 = 0;
  v23 = (v6 + v10);
  v24 = *v23;
  v25 = (v6 + v74);
  v26 = *v25;
  v27 = v23[1];
  v28 = v25[1];
  v29 = *(v6 + v73 + 1);
  v30 = *(v6 + v11 + 1);
  v75 = *(v6 + v73 + 1);
  v76 = v30;
  if (v7 < 2)
  {
    goto LABEL_80;
  }

  v72 = v10;
  v31 = (v27 | (v28 << 8)) - 1;
  v32 = (v24 | (v26 << 8)) - 1;
  v71 = v11;
  v33 = 32;
  LOWORD(v34) = 1;
  v35 = 32;
  while (1)
  {
    if (v32 >= v31)
    {
      v34 = v34 + 1;
      v29 = *(v6 + v34 + v73);
      v30 = *(v6 + v34 + v71);
      v75 = *(v6 + v34 + v73);
      v36 = *(v6 + v72 + v34);
      v37 = *(v6 + v34 + v74);
      v76 = v30;
      v32 = v31;
      v31 = (v36 | (v37 << 8)) - 1;
    }

    v38 = *(v6 - 1 + (v32 + 1));
    v39 = v6 + (v32 + 3);
    v40 = (v39 - 2);
    v41 = (v39 - 1);
    v42 = (v6 + v38 + (v9 - 1));
    v43 = v38 == 255;
    if (v38 == 255)
    {
      v44 = v32 + 3;
    }

    else
    {
      v44 = v32 + 1;
    }

    if (v38 == 255)
    {
      v45 = v41;
    }

    else
    {
      v45 = (v6 + v38 + (v9 + 255));
    }

    if (v43)
    {
      v46 = v40;
    }

    else
    {
      v46 = v42;
    }

    v47 = *v46;
    v48 = *v45;
    if (v47)
    {
      v33 = v47;
    }

    v77 = v33;
    if (v48)
    {
      v35 = v48;
    }

    v78 = v35;
    if (v35 == 32)
    {
      if (v33 == 32)
      {
        v49 = v30 == 32 ? 1 : 2;
      }

      else
      {
        v49 = 3;
      }
    }

    else
    {
      v49 = 4;
    }

    v32 = v31;
    if (v95[v29])
    {
      v32 = v31;
      if (*(v80 + v30))
      {
        break;
      }
    }

LABEL_56:
    if (v7 <= v34)
    {
      goto LABEL_80;
    }
  }

  v50 = *v15;
  if (v50 == 255)
  {
LABEL_37:
    if (v49 + 1 == v12)
    {
      v51 = 0;
      for (i = 0; ; ++i)
      {
        if (a1[i] == *(&v75 + v51))
        {
          ++v51;
        }

        else
        {
          if (v49 == v51)
          {
            goto LABEL_52;
          }

          if (i != v51)
          {
            break;
          }
        }
      }
    }

    v53 = 0;
    v54 = 0;
    while (1)
    {
      v55 = a1[v53];
      v56 = *(&v75 + v54);
      if (v55 == v56)
      {
        break;
      }

      if (v55 != 46)
      {
        if (v56 != 46)
        {
          v32 = v44;
          goto LABEL_56;
        }

        goto LABEL_50;
      }

      ++v53;
LABEL_51:
      if (v49 == v54)
      {
        goto LABEL_52;
      }
    }

    ++v53;
LABEL_50:
    ++v54;
    goto LABEL_51;
  }

  v59 = 0;
  while (1)
  {
    v60 = (v12 - v50);
    if (v60 > 1 || v60 == 1 && *a1 != v29)
    {
      goto LABEL_37;
    }

    v61 = v15[v59 + 1];
    v62 = a2[21];
    v63 = *(v62 + v61);
    v64 = *(a2[22] + v61);
    if (!*(v62 + v61))
    {
      break;
    }

    v65 = 0;
    v66 = 0;
    do
    {
      if (v65 + v60 >= v49)
      {
        break;
      }

      if (*(&v75 + v65 + v60) != *(*(a2[19] + 8 * v61) + v66))
      {
        break;
      }

      v65 = ++v66;
    }

    while (v66 < v63);
    if (v65 + v60 == v49)
    {
      goto LABEL_52;
    }

    if (v65 == v63)
    {
      goto LABEL_72;
    }

LABEL_77:
    v59 += 2;
    v50 = v15[v59];
    if (v50 == 255)
    {
      goto LABEL_37;
    }
  }

  if (v49 == v60)
  {
    goto LABEL_52;
  }

  v66 = 0;
LABEL_72:
  v67 = v60 + v66;
  if (v67 < v49)
  {
    v68 = v64 - v63;
    do
    {
      if (*(&v75 + v67) != a1[v68 + v67])
      {
        break;
      }

      v67 = v60 + ++v66;
    }

    while (v67 < v49);
  }

  if (v67 != v49)
  {
    goto LABEL_77;
  }

LABEL_52:
  if (*(a3 + 2124) <= 499)
  {
    v57 = 0;
    v58 = a3 + 120;
    do
    {
      *(v58 + 4 * *(a3 + 2124)) = *(&v75 + v57++);
      ++v58;
    }

    while (v57 != 4);
    ++*(a3 + 2124);
    v32 = v44;
    goto LABEL_56;
  }

LABEL_80:
  v69 = *MEMORY[0x1E69E9840];
  return 10;
}

uint64_t PDSFcorsrt(char *__src, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  v65 = *MEMORY[0x1E69E9840];
  if (*(a5 + 3194) == 1)
  {
    v10 = *MEMORY[0x1E69E9840];

    return PDcorsrt(__src, a2, a3, a4, a5);
  }

  else
  {
    v12 = *(a5 + 3168);
    v13 = *(*(a5 + 32) + 32);
    v14 = *(a5 + 104);
    if (v14 && (v16 = *(v14 + 34), v15 = (v14 + 34), v16))
    {
      v17 = strcpy(v13, v15);
      strcat(v17, __src);
    }

    else
    {
      strcpy(v13, __src);
    }

    v18 = *(a5 + 104);
    if (v18)
    {
      v20 = *(v18 + 44);
      v19 = (v18 + 44);
      if (v20)
      {
        strcat(v13, v19);
      }
    }

    v60 = a2;
    if (a2 <= v7)
    {
      v62 = *(a5 + 64);
      v61 = *(a5 + 48);
      LOWORD(v21) = a2;
      v22 = *(a4 + 56);
      do
      {
        v23 = v7;
        v24 = v21;
        v25 = (v61 + *(v62 + 2 * v21));
        v26 = strlen(v13);
        v27 = strlen(v25);
        memset(v64, 0, sizeof(v64));
        memset(v63, 0, sizeof(v63));
        if (v26 >= 1)
        {
          v28 = 0;
          do
          {
            v29 = &v13[v28];
            v30 = *v29;
            if (v30 != v29[1])
            {
              v31 = (((*(v22 + 4 * v30) >> 25) & 0x20) + v30);
              ++*(v64 + v31);
            }

            ++v28;
          }

          while (v26 > v28);
        }

        if (v27 >= 1)
        {
          v32 = 0;
          do
          {
            v33 = &v25[v32];
            v34 = *v33;
            if (v34 != *(v33 + 1))
            {
              v35 = (((*(v22 + 4 * v34) >> 25) & 0x20) + v34);
              ++*(v63 + v35);
            }

            ++v32;
          }

          while (v27 > v32);
        }

        v36 = 0;
        v37 = 0;
        do
        {
          v38 = *(v64 + v36) - *(v63 + v36);
          if (v38)
          {
            if (v38 < 0)
            {
              v38 = *(v63 + v36) - *(v64 + v36);
            }

            if ((*(v22 + 4 * v36) & 0x10000000) != 0)
            {
              v37 += 2 * v38;
            }

            else
            {
              v37 += 3 * v38;
            }
          }

          ++v36;
        }

        while (v36 != 256);
        if (v26 < 1)
        {
          v50 = 0;
        }

        else
        {
          v39 = 0;
          v40 = 0;
          v41 = 0;
          do
          {
            if (v27 >= 1)
            {
              v42 = 0;
              v43 = 0;
              do
              {
                v44 = 0;
                do
                {
                  v45 = v44;
                  v46 = v39 + v44;
                  v47 = v42 + v44++;
                }

                while (v47 < v27 && v13[v46] == v25[v47] && v46 < v26);
                if (v45 > v41)
                {
                  v41 = v45;
                }

                v42 = ++v43;
              }

              while (v27 > v43);
            }

            v39 = ++v40;
          }

          while (v26 > v40);
          v50 = v41;
        }

        v51 = v26 - v27;
        if (v51 < 0)
        {
          LOWORD(v51) = v27 - v26;
        }

        *(v12 + 2 * v24) = 2 * v37 + 4 * v51 - v50 + 16 * (v13[v26 - 1] != v25[v27 - 1]);
        v21 = (v24 + 1);
        v7 = v23;
      }

      while (v21 <= v23);
    }

    if (v60 < v7)
    {
      v52 = v7 + v60;
      v53 = v60;
      do
      {
        if (v52 - v53 > v60)
        {
          v54 = v60;
          LOWORD(v55) = v60;
          do
          {
            v55 = v55;
            v56 = v54 + 1;
            if (*(v12 + 2 * v55) > *(v12 + 2 * v56))
            {
              v57 = *(a5 + 64);
              v58 = *(v57 + 2 * v55);
              *(v57 + 2 * v55) = *(v57 + 2 * v56);
              *(v57 + 2 * v56) = v58;
              LOWORD(v57) = *(v12 + 2 * v55);
              *(v12 + 2 * v55) = *(v12 + 2 * v56);
              *(v12 + 2 * v56) = v57;
            }

            LOWORD(v55) = v55 + 1;
            v54 = v55;
          }

          while (v52 - v53 > v55);
        }

        ++v53;
      }

      while (v53 != v7);
    }

    v59 = *MEMORY[0x1E69E9840];
    return 10;
  }
}

uint64_t PDhypins(char *a1, uint64_t *a2, int a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v11 = *a2;
  v3 = *a1;
  if (*a1)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    do
    {
      if (v3 != a3)
      {
        v7 = v6 + 1;
        __src[v6] = v3;
        v8 = *&__src[4 * v5 - 1];
        if (v8 < 0)
        {
          __src[(v6 + 1)] = a3;
          v7 = v6 + 2;
        }

        *&__src[4 * v5 - 1] = 2 * v8;
        if (v4 == 31)
        {
          ++v5;
        }

        v6 = v7;
      }

      if (v4 > 0x3E)
      {
        break;
      }

      v3 = a1[++v4];
    }

    while (v3);
  }

  else
  {
    LOWORD(v6) = 0;
  }

  __src[v6] = 0;
  strcpy(a1, __src);
  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t PDhypstrip(_BYTE *a1, void *a2, int a3)
{
  *a2 = 0;
  v3 = *a1;
  if (*a1)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0x80000000;
    do
    {
      if (v3 == a3)
      {
        if (v6 == 32)
        {
          *a2 |= 1u;
          v6 = 32;
        }

        else
        {
          *(a2 + v5) |= 2 * v7;
        }
      }

      else
      {
        v8 = v6++;
        a1[v8] = v3;
        v7 >>= 1;
        if (v6 == 32)
        {
          ++v5;
          v7 = 0x80000000;
        }
      }

      if (v4 > 0x3E)
      {
        break;
      }

      v3 = a1[++v4];
    }

    while (v3);
  }

  else
  {
    v6 = 0;
  }

  a1[v6] = 0;
  return v6;
}

_WORD *OpenOutputBuffer(unsigned int a1)
{
  v2 = malloc_type_calloc(1uLL, 0x10uLL, 0x10100401D138D4BuLL);
  if (v2)
  {
    *v2 = malloc_type_calloc(a1 + 64, 1uLL, 0x100004077774924uLL);
    v2[4] = 0;
    v2[6] = 0;
    *(v2 + 10) = 0x80;
  }

  return v2;
}

uint64_t build_tree(unsigned __int16 *a1)
{
  a1[2052] = -1;
  v1 = 257;
  while (2)
  {
    v2 = 0;
    v3 = 513;
    v4 = a1;
    v5 = 513;
    do
    {
      v6 = v5;
      v8 = *v4;
      v4 += 4;
      v7 = v8;
      if (v8)
      {
        if (v7 < a1[4 * v6])
        {
          v5 = v2;
          v3 = v6;
          goto LABEL_9;
        }

        if (v7 < a1[4 * v3])
        {
          v3 = v2;
        }
      }

      v5 = v6;
LABEL_9:
      ++v2;
    }

    while (v1 != v2);
    if (v3 != 513)
    {
      v9 = &a1[4 * v5];
      v10 = &a1[4 * v3];
      v11 = &a1[4 * v1];
      *v11 = *v10 + *v9;
      v9[1] = *v9;
      *v9 = 0;
      v10[1] = *v10;
      *v10 = 0;
      v11[2] = v5;
      v11[3] = v3;
      v12 = v1 + 1;
      if (v1++ >= 0x7FFFu)
      {
        LOWORD(v1) = v12;
        break;
      }

      continue;
    }

    break;
  }

  v14 = v1 - 1;
  a1[4 * v14 + 1] = a1[4 * v14];
  return v14;
}

uint64_t PDreverse(uint64_t result, __int16 a2)
{
  if (a2 != 1)
  {
    v2 = 0;
    v3 = (a2 - 1);
    do
    {
      v4 = *(result + v2);
      *(result + v2) = *(result + v3);
      *(result + v3) = v4;
      ++v2;
      --v3;
    }

    while (v2 < v3);
  }

  return result;
}

uint64_t PDitoa(unsigned int a1, uint64_t a2)
{
  v2 = 0;
  do
  {
    v3 = v2;
    *(a2 + v2) = (a1 % 0xAu) | 0x30;
    v4 = ++v2;
    v5 = a1 > 9;
    a1 /= 0xAu;
  }

  while (v5);
  result = v4;
  *(a2 + v4) = 0;
  if (v4 >= 2u)
  {
    v7 = 0;
    do
    {
      v8 = *(a2 + v7);
      *(a2 + v7) = *(a2 + v3);
      *(a2 + v3) = v8;
      ++v7;
      --v3;
    }

    while (v7 < v3);
  }

  return result;
}

uint64_t PDasparse(_BYTE *a1, uint64_t a2, _BYTE *a3, _BYTE *a4, uint64_t a5, _WORD *a6, int a7, uint64_t a8)
{
  *a3 = 0;
  *a4 = 0;
  if (*a1 != 35)
  {
    return 8;
  }

  v8 = 0;
  for (i = 1; ; ++i)
  {
    v10 = a1[i];
    v11 = v10 > 0x23 || ((1 << v10) & 0x800002001) == 0;
    v12 = !v11 || v10 == 10;
    if (v12 || v8 > 0x3F)
    {
      break;
    }

    *(a2 + v8++) = v10;
  }

  *(a2 + v8) = 0;
  v14 = a1[i];
  v15 = v14 > 0xD;
  v16 = (1 << v14) & 0x2401;
  if (!v15 && v16 != 0)
  {
    return 0;
  }

  if (a1[(i + 1)] == 49)
  {
    *a4 = 1;
  }

  if (a1[(i + 2)] != 35)
  {
    return 0;
  }

  LOWORD(v18) = i + 3;
  if (!a7)
  {
    goto LABEL_32;
  }

  v19 = 0;
  while (1)
  {
    v18 = v18;
    v20 = a1[v18];
    v21 = v20 > 0x23 || ((1 << v20) & 0x800002401) == 0;
    if (!v21 || 2 * a7 <= v19)
    {
      break;
    }

    v22 = v19++;
    *(a8 + v22) = v20;
    LOWORD(v18) = v18 + 1;
  }

  *(a8 + v19) = 0;
  if (a1[v18] != 35)
  {
    return 0;
  }

  LOWORD(v18) = v18 + 1;
LABEL_32:
  v23 = 0;
  *a3 = 1;
  while (1)
  {
    v24 = a1[v18];
    v25 = v24 > 0x23 || ((1 << v24) & 0x800002001) == 0;
    v26 = !v25 || v24 == 10;
    if (v26 || v23 > 0x7FF)
    {
      break;
    }

    *(a5 + v23++) = v24;
    LOWORD(v18) = v18 + 1;
  }

  result = 0;
  *(a5 + v23) = 0;
  *a6 = v23;
  return result;
}

uint64_t PDword(unsigned __int16 *a1, int a2, int a3)
{
  v117 = 0;
  v116 = 0;
  v115 = 0;
  v114 = 0;
  v113 = 0;
  v112 = 0;
  v111 = 0;
  v110 = 0;
  v109 = 0;
  if (!a1)
  {
    return 8;
  }

  *(a1 + 28) = 0;
  a1[58] = 0;
  *(a1 + 30) = 0;
  a1[68] = 0;
  *(a1 + 18) = 0;
  v4 = pMCPbuff;
  if (!pMCPbuff)
  {
    goto LABEL_104;
  }

  v5 = a1[1];
  if (**(pMCPbuff + 24) <= (v5 - 1))
  {
    goto LABEL_218;
  }

  if (**(*(pMCPbuff + 40) + 8 * v5) != v5 || *(*(pMCPbuff + 32) + 2 * v5) != 9090)
  {
LABEL_104:
    result = 8;
    *(a1 + 28) = 8;
    v60 = 5104;
    goto LABEL_219;
  }

  v6 = *(pMCPbuff + 8);
  if (!*v6)
  {
    goto LABEL_218;
  }

  v8 = *a1;
  if (a3 == 5)
  {
    if (a2 != 8)
    {
      if (a2 == 10)
      {
        a1[25] = 0;
        v62 = v8;
        if (v8)
        {
          goto LABEL_112;
        }

        LODWORD(v8) = *v6;
        if (*v6)
        {
          v62 = 1;
          while (1)
          {
LABEL_112:
            if (a1[25] >= a1[24])
            {
              return 0;
            }

            v63 = *(*v4 + 8 * v62);
            if (v63 && a1[1] == *(v63 + 1080) && *(*(v4 + 16) + 2 * v62) == 9090 && v63[2062] != 1)
            {
              if (**(v4 + 8) < v62 || *(v63 + 1081) != v62)
              {
LABEL_216:
                if (!a1[58] || *(a1 + 28) <= 7)
                {
LABEL_218:
                  result = 8;
                  *(a1 + 28) = 8;
                  v60 = 5105;
                  goto LABEL_219;
                }

                return 8;
              }

              v64 = *(a1 + 9);
              if (v64 == 0xFFFF || (v63[2069] ? (v65 = 1 << (v63[2069] - 1)) : (v65 = 0xFFFFFFFFLL), *(a1 + 9), (v65 & v64) != 0))
              {
                if ((*(a1 + 42) != 1 || *(v63 + 1047)) && (v63[2084] & a1[20]) == 0 && (v63[2085] & *(a1 + 41)) == 0 && (*v63 | 2) == 7)
                {
                  if (!v63[2063])
                  {
                    if (!a1[58] || *(a1 + 28) <= 7)
                    {
                      result = 8;
                      *(a1 + 28) = 8;
                      v60 = 5051;
                      goto LABEL_219;
                    }

                    return 8;
                  }

                  v66 = strcpy(*(v63 + 267), *(a1 + 1));
                  v67 = *(*pMCPbuff + 8 * v62);
                  v68 = *(v67 + 2192);
                  *(v68 + 40) = 0;
                  *(v68 + 3194) = 1;
                  v69 = PDSFcorrec(v66, 3u, *(v67 + 2184), v68);
                  v4 = pMCPbuff;
                  *(*(*(*pMCPbuff + 8 * v62) + 2192) + 3194) = 0;
                  if (!v69 && (!a1[58] || *(a1 + 28) <= 3))
                  {
                    *(a1 + 28) = 4;
                    a1[58] = 5159;
                  }
                }
              }
            }

            result = 0;
            if (v8 < ++v62)
            {
              return result;
            }
          }
        }
      }

      return 0;
    }

    v74 = malloc_type_malloc(0xDuLL, 0x100004077774924uLL);
    if (!v74)
    {
      goto LABEL_213;
    }

    v75 = v74;
    v76 = pMCPbuff;
    v77 = *(*pMCPbuff + 8 * *a1);
    if (v77[2062] != 1)
    {
      if (!a1[58] || *(a1 + 28) <= 7)
      {
        *(a1 + 28) = 8;
        a1[58] = 5114;
      }

      free(v75);
      return 8;
    }

    v78 = *(v77 + 269);
    v79 = *(v77 + 267);
    a1[25] = 0;
    if ((*v77 | 2) == 7)
    {
      v80 = PDgetword(v77);
      if (v80 == 11)
      {
        if (a1[58] && *(a1 + 28) > 7)
        {
          goto LABEL_239;
        }

        *(a1 + 28) = 8;
        v81 = 5112;
LABEL_231:
        a1[58] = v81;
        goto LABEL_239;
      }

      if (v80 == 8)
      {
        if (a1[58] && *(a1 + 28) > 7)
        {
          goto LABEL_239;
        }

        *(a1 + 28) = 8;
        v81 = 5113;
        goto LABEL_231;
      }
    }

    else if (a1[24])
    {
      v101 = 0;
      while (PDgetrdwrd(*(*v76 + 8 * *a1), v79, &v114, &v111, &v112, &v117, &v113, v75) != 8)
      {
        v102 = SLLngToA(*(*(*pMCPbuff + 8 * *a1) + 2069));
        PDhypstrip(v79, (*(*(a1 + 13) + 8 * a1[25]) + 88), *(a1 + 16));
        v117 = strlen(v79);
        *(*(*(a1 + 13) + 8 * a1[25]) + 71) = SLcap(v79, 0, v117, (*(*(a1 + 13) + 8 * a1[25]) + 80), v102);
        v103 = strlen(v79);
        if (v103)
        {
          v104 = 0;
          do
          {
            *(v78 + v104) = ((*(v102 + 4 * v79[v104]) >> 25) & 0x20) + v79[v104];
            ++v104;
            v103 = strlen(v79);
          }

          while (v103 > v104);
        }

        *(v78 + v103) = 0;
        v105 = *(*(a1 + 13) + 8 * a1[25]);
        __strcpy_chk();
        v106 = *(*(a1 + 13) + 8 * a1[25]);
        *(v106 + 70) = v114 == 1;
        *(v106 + 96) = v112;
        *(v106 + 100) = v113;
        v76 = pMCPbuff;
        *(v106 + 66) = *(*(*pMCPbuff + 8 * *a1) + 2162);
        v107 = *v75;
        *(v106 + 110) = v75[2];
        *(v106 + 102) = v107;
        ++a1[25];
        if (++v101 >= a1[24])
        {
          goto LABEL_238;
        }
      }

      if (!a1[58] || *(a1 + 28) <= 7)
      {
        *(a1 + 28) = 8;
        a1[58] = 5113;
      }

      free(v75);
    }

LABEL_238:
    if (*(a1 + 28) == 8)
    {
      return 0;
    }

LABEL_239:
    free(v75);
    return 0;
  }

  if (a3 == 2)
  {
    v61 = *(*pMCPbuff + 8 * v8);
    if (a2 == 10)
    {
      result = 0;
      v61[2063] = 0;
      return result;
    }

    if (v61[2062] != 1)
    {
      goto LABEL_141;
    }

    if (a2 != 8 || (*v61 | 2) == 7)
    {
LABEL_140:
      result = 0;
      v61[2062] = 0;
      return result;
    }

    if (PDsavsort(*a1, 0) != 8)
    {
      v61 = *(*pMCPbuff + 8 * *a1);
      goto LABEL_140;
    }

LABEL_213:
    if (a1[58] && *(a1 + 28) > 7)
    {
      return 8;
    }

    result = 8;
    *(a1 + 28) = 8;
    v60 = 1030;
LABEL_219:
    a1[58] = v60;
    return result;
  }

  if (a3 != 1)
  {
    result = 8;
    *(a1 + 28) = 8;
    v60 = 1101;
    goto LABEL_219;
  }

  if (*a1)
  {
    v9 = *(*pMCPbuff + 8 * v8);
    if (v9)
    {
      if (*(v9 + 2062) == 1)
      {
LABEL_141:
        result = 8;
        *(a1 + 28) = 8;
        v60 = 5114;
        goto LABEL_219;
      }
    }
  }

  if (a2 > 0xB)
  {
    goto LABEL_203;
  }

  if (((1 << a2) & 0x470) != 0)
  {
    if (*a1)
    {
      v10 = *a1;
    }

    else
    {
      v10 = *v6;
    }

    a1[25] = 0;
    if (v8 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v8;
    }

    if (v11 <= v10)
    {
      while (1)
      {
        if (a1[25] >= a1[24])
        {
          return 0;
        }

        v12 = *(*pMCPbuff + 8 * v11);
        if (v12 && a1[1] == *(v12 + 2160) && *(*(pMCPbuff + 16) + 2 * v11) == 9090 && *(v12 + 2062) != 1)
        {
          if (**(pMCPbuff + 8) < v11 || *(v12 + 2162) != v11)
          {
            goto LABEL_216;
          }

          v14 = *(a1 + 9);
          if (v14 == 0xFFFF || (*(v12 + 2069) ? (v15 = 1 << (*(v12 + 2069) - 1)) : (v15 = 0xFFFFFFFFLL), *(a1 + 9), (v15 & v14) != 0))
          {
            if ((*(a1 + 42) != 1 || *(v12 + 2094)) && (!*(a1 + 43) || *(a1 + 43) == *(v12 + 2091)) && (!a1[22] || a1[22] == *(v12 + 2086)) && (!a1[23] || *(v12 + 2086) >= a1[23]) && (*(v12 + 2084) & a1[20]) == 0 && (*(v12 + 2085) & *(a1 + 41)) == 0)
            {
              v16 = *(v12 + 2136);
              strcpy(v16, *(a1 + 1));
              v17 = *pMCPbuff;
              *(*(*(v17 + 8 * v11) + 2192) + 3184) = a1;
              v18 = *(v17 + 8 * v11);
              v19 = *(v18 + 2192);
              *(v19 + 3192) = v11;
              *(v19 + 40) = 0;
              if (a1[28])
              {
                v20 = *(v19 + 104);
                v21 = *(a1 + 8);
                v22 = v21[5];
                v24 = v21[2];
                v23 = v21[3];
                v20[4] = v21[4];
                v20[5] = v22;
                v20[2] = v24;
                v20[3] = v23;
                v25 = v21[1];
                *v20 = *v21;
                v20[1] = v25;
                if (a1[28])
                {
                  v26 = 0;
                  do
                  {
                    *(*(*(*pMCPbuff + 8 * v11) + 2096) + v26) = *(*(*(a1 + 8) + 8) + v26);
                    ++v26;
                  }

                  while (v26 < a1[28]);
                }

                v17 = *pMCPbuff;
                *(*(*(*(*pMCPbuff + 8 * v11) + 2192) + 104) + 8) = *(*(*pMCPbuff + 8 * v11) + 2096);
                v18 = *(v17 + 8 * v11);
              }

              v27 = *(v18 + 2184);
              v28 = *(v27 + 104);
              v29 = a1[40];
              if (v28 != v29)
              {
                if (v28 < v29)
                {
                  free(*(v27 + 112));
                  v30 = malloc_type_calloc(a1[40], 1uLL, 0x100004077774924uLL);
                  v17 = *pMCPbuff;
                  *(*(*(*pMCPbuff + 8 * v11) + 2184) + 112) = v30;
                  if (!v30)
                  {
                    goto LABEL_213;
                  }

                  v29 = a1[40];
                  v18 = *(v17 + 8 * v11);
                  v27 = *(v18 + 2184);
                }

                *(v27 + 104) = v29;
                *(*(v18 + 2192) + 2162) = v29 >> 3;
                if (v29)
                {
                  v31 = 0;
                  do
                  {
                    *(*(*(*(*pMCPbuff + 8 * v11) + 2184) + 112) + v31) = *(*(a1 + 9) + v31);
                    ++v31;
                  }

                  while (v31 < a1[40]);
                  v17 = *pMCPbuff;
                  v18 = *(*pMCPbuff + 8 * v11);
                  if (*(*(v18 + 2192) + 2162))
                  {
                    v32 = 0;
                    v33 = 0;
                    do
                    {
                      v34 = v32 + 4;
                      *(*(*(v18 + 2184) + 160) + 8 * v33) = *(*(v18 + 2184) + 112) + 8 * (v33 & 0x1F);
                      v35 = *(*(*pMCPbuff + 8 * v11) + 2184);
                      *(*(v35 + 152) + 8 * v33) = *(v35 + 112) + ((8 * (v33 & 0x1F)) | 4);
                      *(*(*(*(*pMCPbuff + 8 * v11) + 2184) + 168) + v33) = 0;
                      *(*(*(*(*pMCPbuff + 8 * v11) + 2184) + 176) + v33) = 0;
                      v36 = 4;
                      v37 = v32;
                      do
                      {
                        v38 = *(*(*pMCPbuff + 8 * v11) + 2184);
                        if (*(*(v38 + 112) + v37) == 32)
                        {
                          break;
                        }

                        ++*(*(v38 + 176) + v33);
                        ++v37;
                        --v36;
                      }

                      while (v36);
                      v39 = 4;
                      while (1)
                      {
                        v17 = *pMCPbuff;
                        v18 = *(*pMCPbuff + 8 * v11);
                        v40 = *(v18 + 2184);
                        if (*(*(v40 + 112) + v34) == 32)
                        {
                          break;
                        }

                        ++*(*(v40 + 168) + v33);
                        ++v34;
                        if (!--v39)
                        {
                          v17 = *pMCPbuff;
                          v18 = *(*pMCPbuff + 8 * v11);
                          break;
                        }
                      }

                      ++v33;
                      v32 += 8;
                    }

                    while (v33 < *(*(v18 + 2192) + 2162));
                  }
                }
              }

              v41 = *(v18 + 2184);
              LODWORD(v42) = *(v41 + 120);
              v43 = a1[48];
              if (v42 != v43)
              {
                if (v42 < v43)
                {
                  free(*(v41 + 128));
                  v44 = malloc_type_calloc(a1[48], 1uLL, 0x100004077774924uLL);
                  v17 = *pMCPbuff;
                  *(*(*(*pMCPbuff + 8 * v11) + 2184) + 128) = v44;
                  if (!v44)
                  {
                    goto LABEL_213;
                  }

                  v43 = a1[48];
                  v18 = *(v17 + 8 * v11);
                  v41 = *(v18 + 2184);
                }

                *(v41 + 120) = v43;
                if (v43)
                {
                  v45 = 0;
                  do
                  {
                    *(*(*(*(*pMCPbuff + 8 * v11) + 2184) + 128) + v45) = *(*(a1 + 11) + v45);
                    ++v45;
                    v42 = a1[48];
                  }

                  while (v45 < v42);
                  v17 = *pMCPbuff;
                  v18 = *(*pMCPbuff + 8 * v11);
                  v41 = *(v18 + 2184);
                }

                else
                {
                  LODWORD(v42) = 0;
                }
              }

              *(v41 + 68) = 64;
              *(*(v18 + 2192) + 3184) = a1;
              v46 = *(v17 + 8 * v11);
              v47 = *(v46 + 274);
              *(v47 + 3192) = v11;
              *(v47 + 42) = a1[24];
              *(v47 + 44) = 0;
              *(v47 + 56) = 240;
              *(v47 + 88) = *(a1 + 17);
              *(v47 + 92) = *(a1 + 5);
              *(v47 + 96) = *(a1 + 6);
              *(v47 + 40) = 0;
              if (a2 > 5)
              {
                if (a2 == 6)
                {
                  *v47 = 6;
                  *(v47 + 3456) = a1[49];
                  if ((*v46 | 2) == 7)
                  {
                    *(v47 + 3194) = 1;
                    v53 = strlen(*(a1 + 1));
                    PDSFanagrm(*(a1 + 1), v53, v47, *(v46 + 273));
                    goto LABEL_92;
                  }

                  PDanagrm(*(a1 + 1), v47);
                  v55 = *(a1 + 1);
                  v56 = strlen(v55);
                  v59 = *(*pMCPbuff + 8 * v11);
                  v57 = *(v59 + 2184);
                  v58 = *(v59 + 2192);
                  goto LABEL_102;
                }

                v48 = a2 == 10;
              }

              else
              {
                if (a2 == 4)
                {
                  *v47 = 5;
                  SLwldpro(v16, (v47 + 3458), (v47 + 3460), 64);
                  v50 = *(*pMCPbuff + 8 * v11);
                  if ((*v50 | 2) == 7)
                  {
                    v51 = *(v50 + 274);
                    *(v51 + 3194) = 1;
                    v52 = strlen(v16);
                    PDSFwild(v16, v52, *(v50 + 273), v51);
LABEL_92:
                    *(*(*(*pMCPbuff + 8 * v11) + 2192) + 3194) = 0;
                    goto LABEL_27;
                  }

                  v55 = *(a1 + 1);
                  v56 = strlen(v55);
                  v57 = *(v50 + 273);
                  v58 = *(v50 + 274);
LABEL_102:
                  result = PDdecode(v55, v56, v57, v58);
                  if (result == 8)
                  {
                    return result;
                  }

                  goto LABEL_27;
                }

                v48 = a2 == 5;
              }

              if (!v48)
              {
                goto LABEL_27;
              }

              v46[2063] = 0;
              v49 = *(v46 + 273);
              *(v49 + 6) = 0;
              *(v49 + 136) = (330382100 * v42) >> 32;
              *v47 = 100;
              *(v47 + 2148) = -1;
              if ((*v46 | 2) == 7)
              {
                if (a2 == 10)
                {
                  v46[2063] = 1;
                  *(v47 + 3194) = 1;
                  v54 = PDSFcorrec(v16, 3u, v49, v47);
                  *(*(*(*pMCPbuff + 8 * v11) + 2192) + 3194) = 0;
                  if (v54)
                  {
                    goto LABEL_27;
                  }
                }

                else
                {
                  if (a2 != 5)
                  {
                    goto LABEL_27;
                  }

                  *(v47 + 3194) = 1;
                  PDSFcorrec(v16, 2u, v49, v47);
                  *(*(*(*pMCPbuff + 8 * v11) + 2192) + 3194) = 0;
                }

                if (!a1[58])
                {
                  goto LABEL_99;
                }
              }

              else
              {
                result = PDcorrec(*(a1 + 1), 0, v49, v47);
                if (result == 8)
                {
                  return result;
                }

                if (!a1[58])
                {
LABEL_99:
                  *(a1 + 28) = 4;
                  a1[58] = 5159;
                  goto LABEL_27;
                }
              }

              if (*(a1 + 28) <= 3)
              {
                goto LABEL_99;
              }
            }
          }
        }

LABEL_27:
        result = 0;
        LOWORD(v11) = v11 + 1;
        if (v10 < v11)
        {
          return result;
        }
      }
    }

    return 0;
  }

  if (((1 << a2) & 0x900) != 0)
  {
    v70 = *pMCPbuff;
    v71 = *(*pMCPbuff + 8 * v8);
    v71[2062] = 1;
    if ((*v71 | 2) == 7)
    {
      result = 0;
      *(*(v71 + 274) + 3184) = a1;
      v72 = *(v70 + 8 * v8);
      v73 = *(v72 + 2192);
      *(v73 + 3192) = v8;
      *(v73 + 40) = 0;
      *(*(v72 + 2176) + 114) = 0;
      return result;
    }

    if (a2 == 11)
    {
      goto LABEL_207;
    }

    if (PDsavsort(v8, 1) != 8)
    {
      PDsort(*(*pMCPbuff + 8 * *a1));
      v71 = *(*pMCPbuff + 8 * *a1);
LABEL_207:
      result = 0;
      *(*(v71 + 271) + 18) = 0;
      return result;
    }

    goto LABEL_213;
  }

  if (a2 != 1)
  {
LABEL_203:
    result = 8;
    *(a1 + 28) = 8;
    v60 = 1100;
    goto LABEL_219;
  }

  a1[25] = 0;
  if (!*v6)
  {
    goto LABEL_209;
  }

  v82 = 0;
  v83 = 1;
  while (a1[25] < a1[24])
  {
    if (v8 && v8 != v83)
    {
      goto LABEL_195;
    }

    v84 = *(*v4 + 8 * v83);
    if (!v84 || a1[1] != *(v84 + 2160) || *(*(v4 + 16) + 2 * v83) != 9090 || *(v84 + 2062) == 1)
    {
      goto LABEL_195;
    }

    if (*(v84 + 2162) != v83)
    {
      goto LABEL_216;
    }

    if (*(a1 + 42) == 1 && !*(v84 + 2094))
    {
      goto LABEL_195;
    }

    v85 = *(a1 + 9);
    if (v85 != 0xFFFF)
    {
      v86 = *(v84 + 2069);
      v87 = v86 == 0;
      v88 = 1 << (v86 - 1);
      if (v87)
      {
        v88 = 0xFFFFFFFFLL;
      }

      v89 = v88 & v85;
      v90 = !v87 || v85 >= 3;
      if (!v90 || v89 == 0)
      {
        goto LABEL_195;
      }
    }

    if (*(a1 + 43) && *(a1 + 43) != *(v84 + 2091) || a1[22] && a1[22] != *(v84 + 2086) || a1[23] && *(v84 + 2088) < a1[23] || (*(v84 + 2084) & a1[20]) != 0 || (*(v84 + 2085) & *(a1 + 41)) != 0)
    {
      goto LABEL_195;
    }

    v92 = *(v84 + 2136);
    strcpy(v92, *(a1 + 1));
    v93 = *pMCPbuff;
    v94 = *(*pMCPbuff + 8 * v83);
    *(*(v94 + 2184) + 6) = 0;
    *(*(v94 + 2192) + 3184) = a1;
    v95 = *(v93 + 8 * v83);
    v96 = *(v95 + 274);
    *(v96 + 3192) = v83;
    *(v96 + 40) = 0;
    v95[2118] = 1;
    if ((*v95 | 2) == 7)
    {
      v108 = strlen(v92);
      if (*(a1 + 42) == 1)
      {
        SLfun(v92, 0, v108 - 1, &v110, &v109);
        v95 = *(*pMCPbuff + 8 * v83);
        v97 = *(v95 + 272);
        v98 = (*(v97 + 112) - 1) & v109;
        v109 &= *(v97 + 112) - 1;
        if (((*(*(v97 + 104) + (v98 >> 3)) >> (v98 & 7)) & 1) == 0)
        {
          goto LABEL_195;
        }
      }

      v99 = PDget(v92, v108, v95);
    }

    else
    {
      v99 = PDsearch(v95, v92, &v116, &v115, 1, a1, 0);
    }

    if (v99 != 11 && v99 != 5112)
    {
      if (v99 == 5113)
      {
        break;
      }

      v82 = 1;
    }

LABEL_195:
    ++v83;
    v4 = pMCPbuff;
    if (**(pMCPbuff + 8) < v83)
    {
      break;
    }
  }

  if (v82)
  {
    return 0;
  }

LABEL_209:
  if (a1[58] && *(a1 + 28) > 7)
  {
    return 5112;
  }

  *(a1 + 28) = 8;
  result = 5112;
  a1[58] = 5112;
  return result;
}

uint64_t PDcheckDID(unsigned int a1)
{
  if (**(pMCPbuff + 8) >= a1 && *(*(*pMCPbuff + 8 * a1) + 2162) == a1)
  {
    return 8 * (*(*(pMCPbuff + 16) + 2 * a1) != 9090);
  }

  else
  {
    return 8;
  }
}

size_t PDanagrm(const char *a1, uint64_t a2)
{
  result = strlen(a1);
  *(a2 + 3199) = 0u;
  *(a2 + 3215) = 0u;
  *(a2 + 3231) = 0u;
  *(a2 + 3247) = 0u;
  *(a2 + 3263) = 0u;
  *(a2 + 3279) = 0u;
  *(a2 + 3295) = 0u;
  *(a2 + 3311) = 0u;
  *(a2 + 3327) = 0u;
  *(a2 + 3343) = 0u;
  *(a2 + 3359) = 0u;
  *(a2 + 3375) = 0u;
  *(a2 + 3391) = 0u;
  *(a2 + 3407) = 0u;
  *(a2 + 3423) = 0u;
  *(a2 + 3439) = 0u;
  if (result >= 1)
  {
    v5 = 0;
    do
    {
      ++*(a2 + 3199 + a1[v5++]);
    }

    while (result > v5);
  }

  return result;
}

uint64_t PDalt(unsigned __int16 *a1)
{
  if (!a1)
  {
    return 8;
  }

  *(a1 + 6) = 0;
  a1[14] = 0;
  *(a1 + 8) = 0;
  a1[24] = 0;
  *(a1 + 7) = 0;
  if (!pMCPbuff || **(*(pMCPbuff + 40) + 8 * a1[1]) != a1[1] || *(*(pMCPbuff + 32) + 2 * a1[1]) != 9090)
  {
    v2 = 5104;
    goto LABEL_10;
  }

  if (PDgetalt(*(a1 + 1), a1[8], *(a1 + 1), *a1) != 8)
  {
    return 0;
  }

  if (!a1[14] || *(a1 + 6) <= 7)
  {
    v2 = 5112;
LABEL_10:
    result = 8;
    *(a1 + 6) = 8;
    a1[14] = v2;
    return result;
  }

  return 8;
}

uint64_t PDgetalt(void *a1, int a2, int a3, unsigned int a4)
{
  v6 = *(*pMCPbuff + 8 * a4);
  if (*(v6 + 782) != 5)
  {
    v7 = (*(v6 + 2168) + 328);
    if (a1)
    {
      goto LABEL_3;
    }

    return 8;
  }

  v7 = (v6 + 776);
  a3 += *(v6 + 768) + *(*(v6 + 2176) + 40);
  if (!a1)
  {
    return 8;
  }

LABEL_3:
  if (a3 != -1)
  {
    v8 = *v7;
    if (SLSeek(*v7, a3, 0) == 8)
    {
      return 1010;
    }

    v10 = 0;
    if (SLFRead(v8, a2, a1, &v10) == 8)
    {
      SLClose(v8);
      return 1010;
    }
  }

  return 0;
}

uint64_t make_alt_entry(char *a1, _DWORD *a2, _WORD *a3, unsigned int a4)
{
  v7 = *(*(*(*pMCPbuff + 8 * a4) + 2168) + 328);
  if (SLSeek(v7, 0, 2u) == 8)
  {
    return 1010;
  }

  v10 = 0;
  if (SLFpos(v7, &v10) == 8)
  {
    return 1010;
  }

  v9 = strlen(a1);
  *a3 = v9;
  if (SLFWrite(v7, v9, a1, &v10 + 1) == 8)
  {
    SLClose(v7);
    return 1011;
  }

  else
  {
    result = 0;
    *a2 = v10;
  }

  return result;
}

_WORD *alt_conv(_WORD *result, _BYTE *a2, _BYTE *a3)
{
  v3 = *a2;
  if (v3 == 255)
  {
    if (*a3 == 255)
    {
      return result;
    }

    v4 = *result;
    if (!*result)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v4 = *result;
    if (!*result)
    {
      if (!*a2)
      {
LABEL_10:
        *result = v3 + *a3;
        return result;
      }

LABEL_9:
      LOWORD(v3) = 255 * v3;
      *result = v3;
      goto LABEL_10;
    }
  }

  v5 = (((32897 * v4) >> 16) >> 7) + (((v4 + ((-32639 * v4) >> 16)) & 0x8000) >> 15);
  *a2 = v5;
  *a3 = *result + v5;
  return result;
}

uint64_t PDchknegs()
{
  if (!**(pMCPbuff + 8))
  {
    return 0;
  }

  v0 = 1;
  while (*(*(pMCPbuff + 16) + 2 * v0) != 9090 || !*(*(*pMCPbuff + 8 * v0) + 2094))
  {
    if (**(pMCPbuff + 8) < ++v0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t PDFileExists(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v2 = SLOpen(a1, a2, &v4, 0);
  result = 0;
  if (v2 != 8)
  {
    SLClose(v4);
    return 1;
  }

  return result;
}

uint64_t PDcomp(uint64_t a1)
{
  v44 = *MEMORY[0x1E69E9840];
  memcpy(__dst, (a1 + 1809), sizeof(__dst));
  v34 = -2;
  v35 = -2;
  v32 = -2;
  v33 = -2;
  v31 = -2;
  v26 = 0;
  v25 = 0;
  *(a1 + 2584) = 0;
  *(a1 + 2588) = 0;
  *(a1 + 2592) = 0;
  *(a1 + 2608) = 0;
  *(a1 + 2616) = 0;
  if (*(a1 + 2320) >= 7u)
  {
    result = 8;
    *(a1 + 2584) = 8;
    v3 = 5116;
LABEL_15:
    *(a1 + 2588) = v3;
    goto LABEL_16;
  }

  v30 = 0;
  v29 = 0;
  v27 = 0;
  v28 = 0;
  memset(v19, 0, sizeof(v19));
  v20 = 0;
  memcpy(v36, (a1 + 1809), sizeof(v36));
  if (PDFileExists(v36, a1 + 1553))
  {
    goto LABEL_4;
  }

  v4 = SLLngToA(*(a1 + 2577));
  v36[0] = 0;
  if (SLtmpnam(__dst, v36) == 8)
  {
LABEL_8:
    if (!*(a1 + 2588) || *(a1 + 2584) <= 7)
    {
      result = 8;
      *(a1 + 2584) = 8;
      v3 = 1019;
      goto LABEL_15;
    }

    goto LABEL_88;
  }

  if (SLOpen(__dst, v36, &v33, 0x602u) == 8)
  {
    goto LABEL_12;
  }

  v42[0] = 0;
  if (SLtmpnam(__dst, v42) == 8)
  {
    goto LABEL_8;
  }

  if (SLOpen(__dst, v42, &v32, 0x602u) == 8)
  {
    goto LABEL_12;
  }

  v41[0] = 0;
  if (SLtmpnam(__dst, v41) == 8)
  {
    goto LABEL_8;
  }

  if (SLOpen(__dst, v41, &v31, 0x602u) == 8)
  {
    goto LABEL_12;
  }

  v24 = 0;
  v38[0] = 0;
  if (*(a1 + 776) == 7)
  {
    if (SLtmpnam(__dst, v38) == 8)
    {
      goto LABEL_8;
    }

    if (SLOpen(__dst, v38, &v35, 0x602u) == 8)
    {
      goto LABEL_12;
    }

    result = DecompOldSD(a1, v19, v35, 1, &v24, &v29);
    if (result == 8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v35 = -2;
    v24 = 0;
  }

  v23 = 0;
  v37[0] = 0;
  if (*(a1 + 1552) == 7)
  {
    if (SLtmpnam(__dst, v37) == 8)
    {
      goto LABEL_8;
    }

    if (SLOpen(__dst, v37, &v34, 0x602u) == 8)
    {
      goto LABEL_12;
    }

    result = DecompOldSD(a1, v19, v34, 2, &v23, &v27);
    if (result == 8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v34 = -2;
    v23 = 0;
  }

  v6 = *(a1 + 776) - 3;
  if (v6 <= 4 && ((0x17u >> v6) & 1) != 0)
  {
    v7 = 0x404030201uLL >> (8 * (v6 & 0x1F));
  }

  else
  {
    LODWORD(v7) = 0;
  }

  v8 = 0;
  v9 = *(a1 + 1552);
  if (v9 <= 3)
  {
    if (!*(a1 + 1552))
    {
      goto LABEL_48;
    }

    if (v9 == 3)
    {
      v8 = 8;
    }
  }

  else
  {
    switch(v9)
    {
      case 7u:
        v8 = 32;
        break;
      case 5u:
        v8 = 24;
        break;
      case 4u:
        v8 = 16;
        break;
    }
  }

  LODWORD(v7) = v8 | v7;
LABEL_48:
  v10 = 0;
  v11 = *(a1 + 2320);
  if (v11 > 3)
  {
    switch(v11)
    {
      case 7u:
        v10 = 0;
        break;
      case 5u:
        v10 = 192;
        break;
      case 4u:
        v10 = 128;
        break;
    }

LABEL_58:
    LODWORD(v7) = v10 | v7;
    goto LABEL_59;
  }

  if (*(a1 + 2320))
  {
    if (v11 == 3)
    {
      v10 = 64;
    }

    goto LABEL_58;
  }

LABEL_59:
  v21 = 0;
  v22 = 0;
  if ((v7 & 7) != 4 && PDOpenFile(a1, v7 & 7, 1, a1 + 256, a1, &v24, &v29, &v35, &v22) == 8)
  {
    v12 = v22;
    if (!v22)
    {
      goto LABEL_12;
    }

    goto LABEL_74;
  }

  v13 = (v7 >> 3) & 7;
  if (((v7 >> 3) & 3 | 4) != 4 && PDOpenFile(a1, (v7 >> 3) & 7, 2, a1 + 1033, a1 + 777, &v23, &v27, &v34, &v21) == 8)
  {
    v12 = v21;
    if (v21)
    {
      goto LABEL_74;
    }

LABEL_12:
    if (!*(a1 + 2588) || *(a1 + 2584) <= 7)
    {
      result = 8;
      *(a1 + 2584) = 8;
      v3 = 1012;
      goto LABEL_15;
    }

    goto LABEL_88;
  }

  if ((v7 & 7) == 3)
  {
    v14 = v22;
    if (PDDecompress(a1, v22, v40, v39, v32, v4, &v29) == 8)
    {
      v12 = v14;
LABEL_74:
      free(v12);
      goto LABEL_12;
    }
  }

  else if (CreateFormattedRD(a1, &v35, v32, v24, &v29) == 8)
  {
    goto LABEL_85;
  }

  v15 = v7 >> 6;
  if (v13)
  {
    if (v13 == 3)
    {
      v16 = v21;
      if (PDDecompress(a1, v21, v40, v39, v31, v4, &v27) == 8)
      {
        v12 = v16;
        goto LABEL_74;
      }
    }

    else if (CreateFormattedRD(a1, &v34, v31, v23, &v27) == 8)
    {
      goto LABEL_85;
    }

    if (MergeAndCompare(a1, v32, v31, v33, &v25) == 8)
    {
      goto LABEL_81;
    }

    if ((v15 - 1) > 1)
    {
      SLClose(v33);
      v33 = -2;
      if (SLOpen(__dst, v36, &v33, 2u) == 8)
      {
        result = 1012;
        goto LABEL_16;
      }

      if (PDCompress(a1, 0, v4, &v33, &v25))
      {
LABEL_81:
        if (v22)
        {
          free(v22);
        }

        v18 = v21;
        if (v21)
        {
LABEL_84:
          free(v18);
        }

LABEL_85:
        if (!*(a1 + 2588) || *(a1 + 2584) <= 7)
        {
          result = 8;
          *(a1 + 2584) = 8;
          v3 = 5119;
          goto LABEL_15;
        }

        goto LABEL_88;
      }
    }

    else if (PDSwitchToOut(v36, v7 >> 6, v33, a1) == 8)
    {
      if (v22)
      {
        free(v22);
      }

      v17 = v21;
      if (!v21)
      {
LABEL_4:
        if (!*(a1 + 2588) || *(a1 + 2584) <= 7)
        {
          result = 8;
          *(a1 + 2584) = 8;
          v3 = 5120;
          goto LABEL_15;
        }

LABEL_88:
        result = 8;
        goto LABEL_16;
      }

LABEL_97:
      free(v17);
      goto LABEL_4;
    }
  }

  else if ((v15 - 1) > 1)
  {
    if (PDCompress(a1, 0, v4, &v32, &v29))
    {
      v18 = v22;
      if (!v22)
      {
        goto LABEL_85;
      }

      goto LABEL_84;
    }
  }

  else if (PDSwitchToOut(v42, v7 >> 6, v32, a1) == 8)
  {
    v17 = v22;
    if (!v22)
    {
      goto LABEL_4;
    }

    goto LABEL_97;
  }

  if ((v33 & 0x80000000) == 0)
  {
    SLClose(v33);
  }

  if (v36[0])
  {
    SLremove();
  }

  if ((v32 & 0x80000000) == 0)
  {
    SLClose(v32);
  }

  if (v42[0])
  {
    SLremove();
  }

  if ((v31 & 0x80000000) == 0)
  {
    SLClose(v31);
  }

  if (v41[0])
  {
    SLremove();
  }

  if ((v35 & 0x80000000) == 0)
  {
    SLClose(v35);
  }

  if (v38[0])
  {
    SLremove();
  }

  if (v37[0])
  {
    SLremove();
  }

  if (v22)
  {
    free(v22);
  }

  result = v21;
  if (v21)
  {
    free(v21);
    result = 0;
  }

LABEL_16:
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t DecompOldSD(uint64_t a1, uint64_t a2, int a3, int a4, _BYTE *a5, uint64_t a6)
{
  v41 = a2;
  v33 = 1;
  started = StartDb(a1, a4);
  if (started)
  {
    v11 = started;
    v34 = 0;
    if (StartWord(&v41, started) == 8)
    {
      v12 = *(v11 + 2088);
      v13 = *(v11 + 2104);
      *(a1 + 2616) = *(v11 + 2120);
      *(a1 + 2584) = v12;
      *(a1 + 2600) = v13;
      v14 = v11;
LABEL_4:
      free(v14);
      return 8;
    }

    v36 = 0;
    v16 = v41;
    *(v41 + 48) = 1;
    LOBYTE(v36) = *(v11 + 2078);
    v17 = *(v11 + 2079);
    if (!v17)
    {
      v17 = 61;
    }

    *(&v36 + 1) = v17;
    v37 = 0;
    v40 = a3;
    v38 = 0;
    v39 = 0;
    if (PDWriteOldRDHead(&v36, a5) == 8)
    {
      free(v11);
      PDFullCleanSDNeg(v16);
      if (!*(a1 + 2588) || *(a1 + 2584) <= 7)
      {
        result = 8;
        *(a1 + 2584) = 8;
        v18 = 5119;
LABEL_30:
        *(a1 + 2588) = v18;
        return result;
      }
    }

    else
    {
      *(a6 + 1) = *(v11 + 2078);
      v19 = BYTE1(v36);
      *a6 = BYTE1(v36);
      *(a6 + 10) = 0;
      *(a6 + 2) = 0;
      *(a6 + 5) = 0;
      v20 = malloc_type_malloc(0x882uLL, 0x100004077774924uLL);
      if (v20)
      {
        v21 = v20;
        while (1)
        {
          if (GetOldSDWord(a1, v16, &v33) == 8)
          {
            goto LABEL_26;
          }

          if (!v33)
          {
            break;
          }

          v22 = **(v16 + 104);
          v23 = strlen(v22);
          v24 = *(v22 + 71);
          if (*(v22 + 71))
          {
            v25 = SLLngToA(*(v22 + 72));
            SLrecap(v22, v23, v24, v22 + 80, v24, v25);
          }

          SLchcnv(v22, v23, v22, 0, *(v22 + 72));
          if (*(v22 + 88) || *(v22 + 92))
          {
            PDhypins(v22, (v22 + 88), v19);
          }

          *v21 = 35;
          __strcat_chk();
          __strcat_chk();
          v26 = strlen(v21);
          if (SLFWrite(a3, v26, v21, &v34) == 8)
          {
            if (!*(a1 + 2588) || *(a1 + 2584) <= 7)
            {
              *(a1 + 2584) = 8;
              *(a1 + 2588) = 1011;
            }

LABEL_26:
            free(v11);
            PDFullCleanSDNeg(v16);
            v14 = v21;
            goto LABEL_4;
          }
        }

        v27 = *(*pMCPbuff + 8 * *(v11 + 2074));
        v28 = *(*(v27 + 2176) + 40);
        v35 = v28;
        if (v28)
        {
          v29 = *(*(v27 + 2184) + 64);
          SLSeek(v29, v28, 0);
          while (PDGets(v21, 2177, &v35, v29) != 8)
          {
            v30 = strlen(v21);
            if (SLFWrite(a3, v30, v21, &v34) == 8)
            {
              free(v21);
              free(v11);
              PDFullCleanSDNeg(v16);
              if (!*(a1 + 2588) || *(a1 + 2584) <= 7)
              {
                result = 8;
                *(a1 + 2584) = 8;
                v18 = 1011;
                goto LABEL_30;
              }

              return 8;
            }
          }
        }

        free(v21);
        if (PDdb(v11, 3) != 8)
        {
          free(v11);
          PDFullCleanSDNeg(v16);
          return 0;
        }

        v31 = *(v11 + 2088);
        v32 = *(v11 + 2104);
        *(a1 + 2616) = *(v11 + 2120);
        *(a1 + 2584) = v31;
        *(a1 + 2600) = v32;
        free(v11);
        PDFullCleanSDNeg(v16);
      }

      else
      {
        free(v11);
        PDFullCleanSDNeg(v16);
        if (!*(a1 + 2588) || *(a1 + 2584) <= 7)
        {
          result = 8;
          *(a1 + 2584) = 8;
          v18 = 1030;
          goto LABEL_30;
        }
      }
    }
  }

  return 8;
}

uint64_t SetTypes(uint64_t result, _BYTE *a2)
{
  *a2 = 0;
  v2 = result - 3;
  if (result - 3) <= 4 && ((0x17u >> v2))
  {
    *a2 = 0x401030201uLL >> (8 * (v2 & 0x1Fu));
  }

  return result;
}

uint64_t PDOpenFile(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, _BYTE *a6, uint64_t a7, int *a8, uint64_t *a9)
{
  if ((a2 - 1) > 1)
  {
    started = StartDb(a1, a3);
    *a9 = started;
    if (started)
    {
      v20 = started;
      result = 0;
      v21 = *(*pMCPbuff + 8 * *(v20 + 2074));
      *(a7 + 10) = *(v21 + 2094);
      *a7 = *(v21 + 2068);
      *(a7 + 8) = *(v21 + 2092);
      *(a7 + 2) = *(v21 + 2084);
      *(a7 + 6) = *(v21 + 2090);
      return result;
    }

    return 8;
  }

  if (SLOpen(a4, a5, a8, 0) == 8)
  {
    goto LABEL_8;
  }

  v15 = 1544;
  if (a3 == 1)
  {
    v15 = 768;
  }

  v16 = *(a1 + v15);
  if (v16)
  {
    if (SLSeek(*a8, v16, 0) == 8)
    {
LABEL_8:
      if (!*(a1 + 2588) || *(a1 + 2584) <= 7)
      {
        result = 8;
        *(a1 + 2584) = 8;
        v18 = 1012;
LABEL_10:
        *(a1 + 2588) = v18;
        return result;
      }

      return 8;
    }
  }

  if (a2 != 2)
  {
    result = 0;
    *(a7 + 1) = *(a1 + 2577);
    *a7 = 61;
    *(a7 + 10) = 0;
    *(a7 + 2) = 0;
    *(a7 + 5) = 0;
    return result;
  }

  v22 = malloc_type_malloc(0x882uLL, 0x100004077774924uLL);
  v24 = 0;
  if (PDGets(v22, 2177, &v24, *a8) == 8)
  {
    free(v22);
    if (!*(a1 + 2588) || *(a1 + 2584) <= 7)
    {
      result = 8;
      *(a1 + 2584) = 8;
      v18 = 1010;
      goto LABEL_10;
    }

    return 8;
  }

  *a6 = v24;
  v23 = PDreadHead(v22, a7);
  free(v22);
  if (v23 == 8)
  {
    if (!*(a1 + 2588) || *(a1 + 2584) <= 7)
    {
      result = 8;
      *(a1 + 2584) = 8;
      v18 = 5115;
      goto LABEL_10;
    }

    return 8;
  }

  return 0;
}

uint64_t CreateFormattedRD(uint64_t a1, unsigned int *a2, unsigned int a3, int a4, uint64_t a5)
{
  v47 = *MEMORY[0x1E69E9840];
  v39 = -2;
  v40 = -2;
  v38 = -2;
  v37 = 0;
  v36 = 0;
  v10 = malloc_type_malloc(0x882uLL, 0x100004077774924uLL);
  if (!v10)
  {
    goto LABEL_52;
  }

  v11 = v10;
  v12 = malloc_type_malloc(0x881uLL, 0x100004077774924uLL);
  if (!v12)
  {
    goto LABEL_52;
  }

  v13 = v12;
  v14 = malloc_type_malloc(0x881uLL, 0x100004077774924uLL);
  if (!v14)
  {
    goto LABEL_52;
  }

  v15 = v14;
  *v43 = 0;
  v45[0] = 0;
  result = SLtmpnam((a1 + 1809), v45);
  if (result != 8)
  {
    result = SLOpen(a1 + 1809, v45, &v39, 0x602u);
    if (result != 8)
    {
      v35 = a3;
      v44 = 0;
      SLSeek(*a2, 0, 0);
      v17 = *a2;
      v18 = v39;
      v19 = SLLngToA(0);
      v20 = PDExtSort(v17, a4, 0, 0, v18, (a1 + 1809), 1, v19, *(a1 + 2577), 0x92u);
      if (v20)
      {
        v21 = v20;
        if (!*(a1 + 2588) || *(a1 + 2584) <= 7)
        {
          result = 8;
          *(a1 + 2584) = 8;
LABEL_10:
          *(a1 + 2588) = v21;
          goto LABEL_53;
        }

        goto LABEL_52;
      }

      SLClose(*a2);
      SLClose(v39);
      *a2 = -2;
      v39 = -2;
      result = SLOpen(a1 + 1809, v45, &v39, 2u);
      if (result != 8)
      {
        v46[0] = 0;
        result = SLtmpnam((a1 + 1809), v46);
        if (result != 8)
        {
          result = SLOpen(a1 + 1809, v46, &v40, 0x602u);
          if (result != 8)
          {
            if (*(a1 + 2321) && SLOpen(a1 + 1809, a1 + 2321, &v38, 0x602u) == 8)
            {
              if (!*(a1 + 2588) || *(a1 + 2584) <= 7)
              {
                result = 8;
                *(a1 + 2584) = 8;
                v21 = 1012;
                goto LABEL_10;
              }

LABEL_52:
              result = 8;
              goto LABEL_53;
            }

            SLSeek(v40, 0, 0);
            v22 = 0;
            v23 = 0;
LABEL_20:
            v24 = v35;
            while (PDGets(v11, 2177, &v44, v39) != 8)
            {
              result = BuildForm(v11, v13, *(a5 + 8), &v36, &v37);
              if (result == 8)
              {
                goto LABEL_53;
              }

              v25 = v37;
              if (v37)
              {
                v26 = v22 + 1;
              }

              else
              {
                v26 = v22;
              }

              if (!*(a1 + 2321) || !v23)
              {
                goto LABEL_37;
              }

              if (v23 <= v36)
              {
                v27 = v36;
              }

              else
              {
                v27 = v23;
              }

              if (memcmp(v13, v15, v27))
              {
                __strcpy_chk();
LABEL_37:
                v30 = strlen(v13);
                result = SLFWrite(v40, v30, v13, v43);
                if (result == 8)
                {
                  goto LABEL_53;
                }

                v23 = v36;
                v22 = v26;
                goto LABEL_20;
              }

              if (v25)
              {
                v22 = v26 - 1;
              }

              v28 = strlen(v13);
              v29 = SLFWrite(v38, v28, v13, v43);
              result = 8;
              v24 = v35;
              if (v29 == 8)
              {
                goto LABEL_53;
              }
            }

            v41 = 0;
            v42 = 0;
            WORD2(v41) = v22;
            if ((v38 & 0x80000000) == 0)
            {
              SLClose(v38);
              v38 = -2;
            }

            SLClose(v39);
            v39 = -2;
            SLremove();
            free(v11);
            free(v13);
            free(v15);
            SLSeek(v24, 0, 0);
            LOBYTE(v41) = *(a1 + 2577);
            *(a5 + 1) = v41;
            v31 = *(a1 + 2578);
            if (!v31)
            {
              v31 = 61;
            }

            BYTE1(v41) = v31;
            *a5 = v31;
            BYTE2(v41) = *(a5 + 8);
            BYTE6(v41) = *(a5 + 7);
            LODWORD(v42) = *(a5 + 2);
            HIDWORD(v42) = v24;
            HIBYTE(v41) = *(a5 + 6);
            result = PDWriteRDHead(&v41);
            if (result != 8)
            {
              v32 = malloc_type_malloc(0x400uLL, 0x100004077774924uLL);
              if (v32)
              {
                v33 = v32;
                SLSeek(v40, 0, 0);
                while (!SLFRead(v40, 1024, v33, &v43[1]))
                {
                  if (v43[1] >= 1)
                  {
                    result = SLFWrite(v24, v43[1], v33, v43);
                    if (result == 8)
                    {
                      goto LABEL_53;
                    }

                    if (v43[0] != v43[1])
                    {
                      goto LABEL_52;
                    }

                    if (v43[0] == 1024)
                    {
                      continue;
                    }
                  }

                  SLSeek(v24, 0, 0);
                  SLClose(v40);
                  v40 = -2;
                  SLremove();
                  free(v33);
                  result = 0;
                  goto LABEL_53;
                }
              }

              goto LABEL_52;
            }
          }
        }
      }
    }
  }

LABEL_53:
  v34 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t PDDecompress(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v27 = *a3;
  v14 = malloc_type_calloc(1uLL, 0x40uLL, 0x1090040D37A3AC8uLL);
  if (!v14 || (v15 = v14, v16 = malloc_type_calloc(0x801uLL, 1uLL, 0x100004077774924uLL), (v15[1] = v16) == 0))
  {
    if (!*(a1 + 2588) || *(a1 + 2584) <= 7)
    {
      result = 8;
      *(a1 + 2584) = 8;
      *(a1 + 2588) = 1030;
      return result;
    }

    return 8;
  }

  v28 = 0;
  v29 = *(a7 + 10);
  LOBYTE(v28) = *(a1 + 2577);
  v17 = *(a1 + 2578);
  if (!v17)
  {
    v17 = 61;
  }

  BYTE1(v28) = v17;
  BYTE2(v28) = *(a7 + 8);
  v30 = *(a7 + 7);
  v32 = *(a7 + 2);
  v33 = a5;
  v31 = *(a7 + 6);
  if (PDWriteRDHead(&v28))
  {
    return 8;
  }

  result = StartWord(&v27, a2);
  if (result == 8)
  {
    v19 = *(a2 + 2088);
    v20 = *(a2 + 2104);
    *(a1 + 2616) = *(a2 + 2120);
    *(a1 + 2584) = v19;
    *(a1 + 2600) = v20;
    return result;
  }

  v21 = v27;
  v27[24] = 1;
  v34 = 1;
  *a3 = v21;
  v22 = *(a7 + 8);
  *(a4 + 20) = v22;
  *(a3 + 20) = v22;
  *(a3 + 22) = BYTE1(v28);
  v23 = malloc_type_calloc(0x881uLL, 1uLL, 0x100004077774924uLL);
  *(a3 + 8) = v23;
  if (!v23)
  {
    if (!*(a1 + 2588) || *(a1 + 2584) <= 7)
    {
      *(a1 + 2584) = 8;
      *(a1 + 2588) = 1030;
    }

    PDFullCleanSDNeg(v21);
    free(v15[1]);
    v24 = v15;
LABEL_24:
    free(v24);
    return 8;
  }

  while (1)
  {
    if (GetBuildWord(a1, a3, &v34, a5, a6) == 8)
    {
      PDFullCleanSDNeg(v21);
      return 8;
    }

    if (!v34)
    {
      break;
    }

    if (AltAndWrite(a1, a3, v15, a5) == 8)
    {
      goto LABEL_23;
    }
  }

  if (PDdb(a2, 3) == 8)
  {
    v25 = *(a2 + 2088);
    v26 = *(a2 + 2104);
    *(a1 + 2616) = *(a2 + 2120);
    *(a1 + 2584) = v25;
    *(a1 + 2600) = v26;
LABEL_23:
    PDFullCleanSDNeg(v21);
    v24 = *(a3 + 8);
    goto LABEL_24;
  }

  free(v15[1]);
  free(v15);
  free(*(a3 + 8));
  PDFullCleanSDNeg(v21);
  return 0;
}

uint64_t PDSwitchToOut(uint64_t a1, int a2, unsigned int a3, uint64_t a4)
{
  v25 = 0;
  v23 = -2;
  v24 = 0;
  if (SLOpen(a4 + 1809, a4 + 1553, &v23, 0x602u) == 8)
  {
    if (!*(a4 + 2588) || *(a4 + 2584) <= 7)
    {
      result = 8;
      *(a4 + 2584) = 8;
      *(a4 + 2588) = 1030;
      return result;
    }

    return 8;
  }

  if (a2 == 1)
  {
    v8 = malloc_type_malloc(0x882uLL, 0x100004077774924uLL);
    if (v8)
    {
      v9 = v8;
      v10 = malloc_type_malloc(0x881uLL, 0x100004077774924uLL);
      if (v10)
      {
        v11 = v10;
        SLSeek(a3, 0, 0);
        if (PDGets(v9, 64, &v25 + 1, a3) == 8)
        {
          if (!*(a4 + 2588) || *(a4 + 2584) <= 7)
          {
            *(a4 + 2584) = 8;
            v12 = 1010;
LABEL_43:
            *(a4 + 2588) = v12;
          }
        }

        else
        {
          do
          {
            if (PDGets(v9, 64, &v25 + 1, a3) == 8)
            {
              free(v9);
              free(v11);
              goto LABEL_50;
            }

            v16 = *v9;
            v17 = strlen(v9);
            if (v17 <= (v16 == 35))
            {
              v22 = 0;
            }

            else
            {
              v18 = 0;
              v19 = v16 == 35;
              while (1)
              {
                v20 = v9[v19];
                if (v20 <= 0x23 && ((1 << v20) & 0x800002401) != 0)
                {
                  break;
                }

                v22 = v18 + 1;
                v11[v18] = v20;
                ++v19;
                ++v18;
                if (v17 <= v19)
                {
                  goto LABEL_39;
                }
              }

              v22 = v18;
            }

LABEL_39:
            v11[v22] = 13;
            *&v11[(v22 + 1)] = 10;
          }

          while (SLFWrite(v23, (v22 + 2), v11, &v25) != 8);
          if (!*(a4 + 2588) || *(a4 + 2584) <= 7)
          {
            *(a4 + 2584) = 8;
            v12 = 1011;
            goto LABEL_43;
          }
        }

        free(v9);
        v15 = v11;
      }

      else
      {
        if (!*(a4 + 2588) || *(a4 + 2584) <= 7)
        {
          *(a4 + 2584) = 8;
          *(a4 + 2588) = 1030;
        }

        v15 = v9;
      }

      free(v15);
      goto LABEL_46;
    }

LABEL_20:
    if (!*(a4 + 2588) || *(a4 + 2584) <= 7)
    {
      *(a4 + 2584) = 8;
      *(a4 + 2588) = 1030;
    }

LABEL_46:
    SLClose(v23);
    return 8;
  }

  v13 = malloc_type_malloc(0x400uLL, 0x100004077774924uLL);
  if (!v13)
  {
    goto LABEL_20;
  }

  v14 = v13;
  SLSeek(a3, 0, 0);
  do
  {
    if (!SLFRead(a3, 1024, v14, &v24))
    {
      if (v24 < 1)
      {
        break;
      }

      if (SLFWrite(v23, v24, v14, &v25) != 8 && v25 == v24)
      {
        continue;
      }
    }

    free(v14);
    return 8;
  }

  while (v25 == 1024);
  free(v14);
  SLClose(a3);
  SLremove();
LABEL_50:
  SLClose(v23);
  return 0;
}

uint64_t PDCompress(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, _BYTE *a5)
{
  v150 = *MEMORY[0x1E69E9840];
  v126 = 0;
  __strcpy_chk();
  v9 = strlen(__s);
  do
  {
    v10 = v9 - 1;
    if (v9 < 1)
    {
      break;
    }

    v11 = __s[v9--];
  }

  while (v11 != 46);
  __strcpy_chk();
  if (v10 == -1)
  {
    __strcat_chk();
  }

  else
  {
    __s[v10 + 1] = 0;
  }

  __strcpy_chk();
  __strcat_chk();
  __strcpy_chk();
  __strcat_chk();
  __strcpy_chk();
  __strcat_chk();
  __strcpy_chk();
  __strcat_chk();
  __strcpy_chk();
  __strcat_chk();
  __strcpy_chk();
  __strcat_chk();
  __strcpy_chk();
  __strcat_chk();
  v12 = *a4;
  v13 = (a1 + 2584);
  v136 = 0;
  v137[0] = 0;
  v134 = -2;
  v135 = -2;
  v133 = -2;
  v132 = 0;
  __dst = 0;
  v128[0] = 0;
  v127 = 0;
  __buf[0] = 0;
  if (SLOpen(a1 + 1809, v139, &v134, 0x602u) == 8)
  {
    goto LABEL_8;
  }

  v138[0] = 0;
  if (SLtmpnam((a1 + 1809), v138) == 8)
  {
    goto LABEL_12;
  }

  if (SLOpen(a1 + 1809, v138, &v135, 0x602u) == 8 || SLOpen(a1 + 1809, v144, &v133, 0x602u) == 8)
  {
LABEL_8:
    if (!*(a1 + 2588) || *v13 <= 7)
    {
      *(a1 + 2584) = 8;
      v14 = 1012;
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v17 = malloc_type_malloc(0xC1uLL, 0x100004077774924uLL);
  if (v17)
  {
    v18 = v17;
    v19 = malloc_type_calloc(0x19uLL, 1uLL, 0x100004077774924uLL);
    if (v19)
    {
      v20 = v19;
      v124 = malloc_type_malloc(0x882uLL, 0x100004077774924uLL);
      if (v124)
      {
        v21 = malloc_type_malloc(0xC1uLL, 0x100004077774924uLL);
        if (v21)
        {
          v120 = v21;
          v22 = malloc_type_malloc(0x81uLL, 0x100004077774924uLL);
          if (v22)
          {
            v122 = v22;
            v23 = malloc_type_malloc(0x41uLL, 0x100004077774924uLL);
            if (v23)
            {
              v119 = v23;
              v24 = malloc_type_malloc(0xC1uLL, 0x100004077774924uLL);
              if (v24)
              {
                v118 = v24;
                v25 = malloc_type_malloc(0x801uLL, 0x100004077774924uLL);
                if (v25)
                {
                  v112 = v25;
                  *v120 = 0;
                  v26 = v124;
                  if (PDGets(v124, 64, &v127, v12) == 8)
                  {
LABEL_29:
                    if (!*(a1 + 2588) || *v13 <= 7)
                    {
                      *(a1 + 2584) = 8;
                      v14 = 1010;
                      goto LABEL_15;
                    }

                    goto LABEL_16;
                  }

                  v114 = 0;
                  v103 = 0;
                  v105 = 0;
                  v106 = 0;
                  while (1)
                  {
                    do
                    {
                      if (PDGets(v26, 2177, &v127, v12) == 8)
                      {
                        free(v20);
                        free(v26);
                        free(v122);
                        free(v119);
                        free(v112);
                        free(v120);
                        free(v118);
                        SLClose(v133);
                        SLClose(v135);
                        free(v18);
                        SLClose(v134);
                        if (SLClose(*a4) == 8)
                        {
                          if (*(a1 + 2588) && *v13 > 7)
                          {
                            goto LABEL_16;
                          }

                          result = 8;
                          *(a1 + 2584) = 8;
                          v67 = 1013;
LABEL_109:
                          *(a1 + 2588) = v67;
                          goto LABEL_17;
                        }

                        *a4 = -2;
                        v68 = malloc_type_calloc(0x100uLL, 8uLL, 0x10040436913F5uLL);
                        if (!v68)
                        {
LABEL_155:
                          result = 1030;
                          goto LABEL_17;
                        }

                        v69 = v68;
                        for (i = 0; i != 256; ++i)
                        {
                          v71 = malloc_type_calloc(0x41uLL, 1uLL, 0x100004077774924uLL);
                          v69[i] = v71;
                          if (!v71)
                          {
                            goto LABEL_155;
                          }
                        }

                        v72 = malloc_type_calloc(0x3E8uLL, 1uLL, 0x100004077774924uLL);
                        if (!v72)
                        {
                          goto LABEL_155;
                        }

                        v73 = v72;
                        for (j = 0; j != 200; ++j)
                        {
                          for (k = 0; k != 20; ++k)
                          {
                            v69[j][k] = 0;
                          }
                        }

                        v76 = malloc_type_calloc(0x100uLL, 4uLL, 0x100004052888210uLL);
                        if (!v76)
                        {
LABEL_165:
                          if (!*(a1 + 2588) || *v13 <= 7)
                          {
                            result = 8;
                            *(a1 + 2584) = 8;
                            v67 = 1030;
                            goto LABEL_109;
                          }

                          goto LABEL_16;
                        }

                        v77 = v76;
                        memset_pattern16(v76, &unk_1D2BFAAE0, 0x400uLL);
                        *v130 = -2;
                        *&v128[1] = -2;
                        v125 = malloc_type_malloc(0xC1uLL, 0x100004077774924uLL);
                        if (!v125)
                        {
                          goto LABEL_152;
                        }

                        v123 = malloc_type_malloc(0xC1uLL, 0x100004077774924uLL);
                        if (!v123)
                        {
                          goto LABEL_152;
                        }

                        v117 = malloc_type_malloc(0x41uLL, 0x100004077774924uLL);
                        if (!v117)
                        {
                          goto LABEL_152;
                        }

                        *__buf = 0;
                        if (SLOpen(a1 + 1809, v138, v130, 0) == 8)
                        {
                          goto LABEL_8;
                        }

                        LOBYTE(v137[0]) = 0;
                        if (SLtmpnam((a1 + 1809), v137) != 8)
                        {
                          if (SLOpen(a1 + 1809, v137, &v128[1], 0x602u) == 8)
                          {
                            goto LABEL_8;
                          }

                          BYTE4(__dst) = 0;
                          v121 = malloc_type_malloc(0x81uLL, 0x100004077774924uLL);
                          if (!v121)
                          {
                            goto LABEL_152;
                          }

                          v107 = malloc_type_malloc(0x41uLL, 0x100004077774924uLL);
                          if (!v107)
                          {
                            goto LABEL_152;
                          }

                          while (!SLFRead(*v130, 4, &__dst, __buf) && *__buf == 4)
                          {
                            v79 = __dst;
                            v80 = BYTE1(__dst);
                            v81 = BYTE3(__dst) | BYTE2(__dst);
                            *v107 = 0u;
                            v107[1] = 0u;
                            v107[2] = 0u;
                            v107[3] = 0u;
                            *(v107 + 64) = 0;
                            v113 = v81;
                            if (SLFRead(*v130, v81, v107, __buf))
                            {
                              break;
                            }

                            v111 = v80 | v79;
                            if (SLFRead(*v130, v80 | v79, v125, __buf))
                            {
                              break;
                            }

                            v82 = *v125;
                            *v123 = v82;
                            ++v77[v82];
                            v121[128] = 0;
                            *(v121 + 6) = 0u;
                            *(v121 + 7) = 0u;
                            *(v121 + 4) = 0u;
                            *(v121 + 5) = 0u;
                            *(v121 + 2) = 0u;
                            *(v121 + 3) = 0u;
                            *v121 = 0u;
                            *(v121 + 1) = 0u;
                            v83 = v125[1];
                            if (v83 >= 0xB)
                            {
                              v84 = 1;
                              v85 = 1;
                              do
                              {
                                v121[v84 - 1] = v83;
                                v84 = ++v85;
                                v83 = v125[v85];
                              }

                              while (v83 > 0xA);
                            }

                            **v69 = 0;
                            if (strlen(v121))
                            {
                              v86 = 0;
                              v87 = 2;
                              do
                              {
                                v88 = v121[v86];
                                v123[v86 + 1] = v88;
                                ++v77[v88];
                                ++v86;
                                ++v87;
                              }

                              while (v86 < strlen(v121));
                              v89 = v86 + 1;
                            }

                            else
                            {
                              LOBYTE(v86) = 0;
                              v87 = 2;
                              v89 = 1;
                            }

                            v123[v89] = v83;
                            ++v77[v83];
                            v90 = v89 + 1;
                            if (v111 > v87)
                            {
                              v91 = &v125[v87];
                              v92 = v111 - v87;
                              do
                              {
                                v93 = *v91++;
                                v123[v90] = v93;
                                ++v77[v93];
                                ++v90;
                                --v92;
                              }

                              while (v92);
                            }

                            v149 = 0;
                            LOBYTE(__dst) = 0;
                            *(&__dst + 1) = v90;
                            BYTE3(__dst) = v113;
                            WORD2(__dst) = 0;
                            BYTE6(__dst) = 0;
                            HIBYTE(__dst) = v86;
                            if (SLFWrite(*&v128[1], 8, &__dst, __buf) == 8 || SLFWrite(*&v128[1], v113, v107, __buf) == 8 || SLFWrite(*&v128[1], v90, v123, __buf) == 8)
                            {
                              goto LABEL_149;
                            }
                          }

                          free(v117);
                          free(v121);
                          free(v107);
                          SLClose(*v130);
                          SLClose(*&v128[1]);
                          free(v125);
                          free(v123);
                          SLremove();
                          for (m = 0; m != 256; ++m)
                          {
                            free(v69[m]);
                          }

                          free(v69);
                          free(v73);
                          v95 = malloc_type_calloc(0x202uLL, 8uLL, 0x100004000313F17uLL);
                          if (v95)
                          {
                            v96 = v95;
                            scale_counts(v77, v95);
                            free(v77);
                            v97 = OpenOutputBitFile();
                            output_counts(v97, v96);
                            CloseOutputBitFile(v97);
                            v98 = build_tree(v96);
                            v99 = malloc_type_calloc(0x101uLL, 4uLL, 0x100004052888210uLL);
                            if (v99)
                            {
                              v100 = v99;
                              convert_tree_to_code(v96, v99, 0, 0, v98);
                              free(v96);
                              result = Huffman_Comp(a1 + 1809, v137, v143, v141, v100, *(a1 + 2580), &v126, a1 + 2584);
                              if (result == 8)
                              {
                                goto LABEL_17;
                              }

                              SLremove();
                              PDngrams(a1 + 1809, v144, a1 + 1809, v142);
                              v101 = malloc_type_malloc(0x400uLL, 0x100004077774924uLL);
                              if (v101)
                              {
                                v102 = v101;
                                bzero(v101, 0x400uLL);
                                result = Add_Tables(v103, a1 + 1809, v140, v141, v142, v143, v145, v146, v139, v102, a1 + 2584);
                                if (result != 8)
                                {
                                  result = Update_Header(v114, *(a1 + 2577), v126, *(a1 + 2580), a1 + 1809, v140, v102, a1 + 2584, a5);
                                  if (result != 8)
                                  {
                                    free(v102);
                                    SLremove();
                                    SLremove();
                                    SLremove();
                                    SLremove();
                                    SLremove();
                                    SLremove();
                                    result = 0;
                                  }
                                }

                                goto LABEL_17;
                              }
                            }
                          }

                          goto LABEL_165;
                        }

LABEL_12:
                        if (!*(a1 + 2588) || *v13 <= 7)
                        {
                          *(a1 + 2584) = 8;
                          v14 = 1019;
                          goto LABEL_15;
                        }

                        goto LABEL_16;
                      }
                    }

                    while (*v26 == 35 && v26[1] == 35);
                    v27 = strlen(v26);
                    SLchcnv(v26, v27, v26, 1, *(a1 + 2577));
                    v132 = 0;
                    *v112 = 0;
                    PDasparse(v26, v122, &v132 + 1, &v132, v112, v128, a5[8], v20);
                    v28 = 0;
                    for (n = 0; n != 12; ++n)
                    {
                      v30 = v20[v28];
                      v31 = v30 - 48;
                      v32 = 16 * v30;
                      if (v31 >= 0xA)
                      {
                        v32 -= 112;
                      }

                      v33 = v20[v28 + 1];
                      if ((v33 - 48) >= 0xA)
                      {
                        v34 = -55;
                      }

                      else
                      {
                        v34 = -48;
                      }

                      v20[n] = v32 + v33 + v34;
                      v28 += 2;
                    }

                    v35 = v114;
                    if (v132)
                    {
                      v35 = v114 + 1;
                    }

                    v114 = v35;
                    v115 = 16 * (v132 != 0);
                    if (HIBYTE(v132))
                    {
                      v128[0] = strlen(v112);
                      if (SLFpos(v134, &v136) == 8)
                      {
                        goto LABEL_29;
                      }

                      if (SLFWrite(v134, v128[0], v112, &v136 + 1) == 8)
                      {
LABEL_149:
                        if (!*(a1 + 2588) || *v13 <= 7)
                        {
                          *(a1 + 2584) = 8;
                          v14 = 1011;
                          goto LABEL_15;
                        }

                        goto LABEL_16;
                      }

                      v115 |= 8u;
                      v103 = 1;
                    }

                    v36 = strlen(v122);
                    v104 = PDhypstrip(v122, &__dst, 61);
                    v108 = SLcap(v122, 0, (v36 - 1), v137, a3);
                    v37 = strlen(v122);
                    v38 = 0;
                    if (((v37 + 1) & 0xFFFE) != 0)
                    {
                      v39 = (v37 + 1);
                    }

                    else
                    {
                      v39 = 1;
                    }

                    do
                    {
                      v119[v38] = ((*(a3 + 4 * v122[v38]) >> 25) & 0x20) + v122[v38];
                      ++v38;
                    }

                    while (v39 != v38);
                    v40 = v115 | 4;
                    if (v36 == v104)
                    {
                      v40 = v115;
                    }

                    if (a5[8])
                    {
                      v41 = v40 | 0x20;
                    }

                    else
                    {
                      v41 = v40;
                    }

                    if (v119[v37 - 1] == 10)
                    {
                      v119[(v37 - 1)] = 0;
                      v116 = v37 - 1;
                    }

                    else
                    {
                      v116 = v37;
                    }

                    __strcpy_chk();
                    v42 = 0;
                    v43 = v41 | 2;
                    if (v108 == 3)
                    {
                      v44 = 192;
                    }

                    else
                    {
                      v44 = v106;
                    }

                    if (v108 != 3)
                    {
                      v43 = v41;
                    }

                    if (v108 == 2)
                    {
                      v44 = 128;
                      v45 = v41;
                    }

                    else
                    {
                      v45 = v43;
                    }

                    if (v108 == 1)
                    {
                      v46 = 64;
                    }

                    else
                    {
                      v46 = v106;
                    }

                    if (!v108)
                    {
                      v46 = 0;
                    }

                    if (v108 <= 1)
                    {
                      v47 = v41;
                    }

                    else
                    {
                      v46 = v44;
                      v47 = v45;
                    }

                    v109 = v47;
                    do
                    {
                      v48 = v42;
                      v49 = v120[v42];
                      v50 = v122[v42++];
                      if (v49)
                      {
                        v51 = v49 == v50;
                      }

                      else
                      {
                        v51 = 0;
                      }
                    }

                    while (v51);
                    v106 = (v105 - v48) | v46;
                    *v18 = (v105 - v48) | v46;
                    __strcpy_chk();
                    __strcpy_chk();
                    v52 = strlen(v118);
                    *(v118 + v52) = 0;
                    if (v52)
                    {
                      v53 = 0;
                      v54 = 1;
                      v55 = v109;
                      do
                      {
                        v56 = v54 + 1;
                        v18[v54++] = *(v118 + v53++);
                      }

                      while (v52 > v53);
                    }

                    else
                    {
                      v56 = 1;
                      v55 = v109;
                    }

                    v18[v56] = 0;
                    v57 = v56 + 2;
                    v18[(v56 + 1)] = v55;
                    if ((v55 & 2) != 0)
                    {
                      v60 = v137[0];
                      v18[(v56 + 2)] = BYTE3(v137[0]);
                      v18[(v56 + 3)] = BYTE2(v60);
                      v18[(v56 + 4)] = BYTE1(v60);
                      v18[(v56 + 5)] = v60;
                      v61 = HIDWORD(v137[0]);
                      v18[(v56 + 6)] = HIBYTE(v137[0]);
                      v18[(v56 + 7)] = BYTE2(v61);
                      v18[(v56 + 8)] = BYTE1(v61);
                      v57 = v56 + 10;
                      v18[(v56 + 9)] = v61;
                      if ((v55 & 4) == 0)
                      {
LABEL_89:
                        if ((v55 & 8) != 0)
                        {
                          goto LABEL_103;
                        }

                        goto LABEL_90;
                      }
                    }

                    else if ((v55 & 4) == 0)
                    {
                      goto LABEL_89;
                    }

                    v62 = __dst;
                    v63 = HIDWORD(__dst);
                    v18[v57] = BYTE3(__dst);
                    v18[(v57 + 1)] = BYTE2(v62);
                    v18[(v57 + 2)] = BYTE1(v62);
                    v18[(v57 + 3)] = v62;
                    v18[(v57 + 4)] = HIBYTE(v63);
                    v18[(v57 + 5)] = BYTE2(v63);
                    v64 = v57 + 7;
                    v18[(v57 + 6)] = BYTE1(v63);
                    v57 += 8;
                    v18[v64] = v63;
                    if ((v55 & 8) != 0)
                    {
LABEL_103:
                      v65 = v136;
                      v18[v57] = BYTE3(v136);
                      v18[(v57 + 1)] = BYTE2(v65);
                      v18[(v57 + 2)] = BYTE1(v65);
                      v18[(v57 + 3)] = v65;
                      LOBYTE(v65) = v128[0];
                      v66 = v57 + 5;
                      v18[(v57 + 4)] = HIBYTE(v128[0]);
                      v57 += 6;
                      v18[v66] = v65;
                      if ((v55 & 0x20) == 0)
                      {
                        goto LABEL_92;
                      }

LABEL_91:
                      memcpy(&v18[v57], v20, a5[8]);
                      v57 += a5[8];
                      goto LABEL_92;
                    }

LABEL_90:
                    if ((v55 & 0x20) != 0)
                    {
                      goto LABEL_91;
                    }

LABEL_92:
                    v110 = v57;
                    if (v116 >= 4u)
                    {
                      v58 = 4;
                    }

                    else
                    {
                      v58 = v116;
                    }

                    __strncpy_chk();
                    v130[v58] = 0;
                    strlen(v130);
                    __strncat_chk();
                    if (!SLstrcmp(v130, __buf) || (__strcpy_chk(), v59 = strlen(__buf), SLFWrite(v133, v59, __buf, &v136 + 1) != 8))
                    {
                      *v122 = 0;
                      __strcpy_chk();
                      v120[strlen(v120)] = 0;
                      v105 = strlen(v120);
                      v129 = 0;
                      LOBYTE(v128[1]) = 0;
                      *(&v128[1] + 1) = v110;
                      HIBYTE(v128[2]) = v116;
                      if (SLFWrite(v135, 4, &v128[1], &v136 + 1) != 8)
                      {
                        v26 = v124;
                        if (SLFWrite(v135, v116, v119, &v136 + 1) != 8 && SLFWrite(v135, v110, v18, &v136 + 1) != 8)
                        {
                          continue;
                        }
                      }
                    }

                    goto LABEL_149;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_152:
  if (!*(a1 + 2588) || *v13 <= 7)
  {
    *(a1 + 2584) = 8;
    v14 = 1030;
LABEL_15:
    *(a1 + 2588) = v14;
  }

LABEL_16:
  result = 8;
LABEL_17:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t MergeAndCompare(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, uint64_t a5)
{
  v74 = *MEMORY[0x1E69E9840];
  v69 = 0;
  v68 = 0;
  v66 = 0;
  v67 = 0;
  v62 = -2;
  v63 = -2;
  v61 = 0;
  v10 = SLLngToA(*(a1 + 2577));
  v72[0] = 0;
  result = SLtmpnam((a1 + 1809), v72);
  if (result == 8)
  {
    goto LABEL_78;
  }

  result = SLOpen(a1 + 1809, v72, &v63, 0x602u);
  if (result == 8)
  {
    goto LABEL_78;
  }

  if (*(a1 + 2321) && SLOpen(a1 + 1809, a1 + 2321, &v62, 2u) == 8)
  {
    if (*(a1 + 2588) && *(a1 + 2584) > 7)
    {
      goto LABEL_77;
    }

    result = 8;
    *(a1 + 2584) = 8;
    v12 = 1012;
LABEL_8:
    *(a1 + 2588) = v12;
    goto LABEL_78;
  }

  v13 = malloc_type_calloc(0x19uLL, 1uLL, 0x100004077774924uLL);
  if (!v13)
  {
    goto LABEL_77;
  }

  v14 = v13;
  v15 = malloc_type_malloc(0x801uLL, 0x100004077774924uLL);
  if (!v15)
  {
    goto LABEL_77;
  }

  v16 = v15;
  v70 = 0;
  v71 = 0;
  v17 = malloc_type_malloc(0x882uLL, 0x100004077774924uLL);
  if (!v17)
  {
    goto LABEL_77;
  }

  v60 = v17;
  v18 = malloc_type_malloc(0x882uLL, 0x100004077774924uLL);
  if (!v18)
  {
    goto LABEL_77;
  }

  __s = v18;
  v19 = malloc_type_calloc(0x881uLL, 1uLL, 0x100004077774924uLL);
  if (!v19)
  {
    goto LABEL_77;
  }

  __s1 = v19;
  v20 = malloc_type_calloc(0x881uLL, 1uLL, 0x100004077774924uLL);
  if (!v20)
  {
    goto LABEL_77;
  }

  __s2 = v20;
  SLSeek(a2, 0, 0);
  if (PDGets(v60, 2177, &v71, a2) == 8)
  {
    goto LABEL_17;
  }

  if (PDreadHead(v60, &v66) == 8)
  {
    result = 5115;
    goto LABEL_78;
  }

  *v60 = 0;
  SLSeek(a3, 0, 0);
  if (PDGets(__s, 2177, &v70, a3) == 8)
  {
LABEL_17:
    if (*(a1 + 2588) && *(a1 + 2584) > 7)
    {
      goto LABEL_77;
    }

    result = 8;
    *(a1 + 2584) = 8;
    v12 = 1010;
    goto LABEL_8;
  }

  v50 = v16;
  v53 = 0;
  *__s = 0;
  v21 = __s;
  v22 = 1;
  v23 = 1;
  v24 = 1;
  v58 = 1;
  v25 = v60;
  do
  {
    if (v23)
    {
      if (!*v25)
      {
        v56 = v24;
        v26 = v25;
        if (PDGets(v25, 2177, &v71, a2) == 8)
        {
          *v26 = 0;
          v21 = __s;
          if (*__s)
          {
            v27 = strlen(__s);
            result = SLFWrite(v63, v27, __s, &v67 + 1);
            if (result == 8)
            {
              goto LABEL_78;
            }

            v58 = 0;
            *__s = 0;
            v25 = v60;
            v21 = __s;
          }

          else
          {
            v25 = v26;
            v58 = 0;
          }
        }

        else
        {
          PDasparse(v26, v73, &v69 + 1, &v69, v50, &v68, 12, v14);
          v28 = v53;
          if (v69)
          {
            v28 = v53 + 1;
          }

          v53 = v28;
          v25 = v26;
          v21 = __s;
        }

        v24 = v56;
      }
    }

    else
    {
      v58 = 0;
    }

    if (!v22)
    {
      goto LABEL_41;
    }

    v57 = v24;
    if (!*v21)
    {
      v29 = v21;
      if (PDGets(v21, 2177, &v70, a3) == 8)
      {
        *v29 = 0;
        v25 = v60;
        v21 = v29;
        if (*v60)
        {
          v30 = strlen(v60);
          result = SLFWrite(v63, v30, v60, &v67 + 1);
          if (result == 8)
          {
            goto LABEL_78;
          }

          *v60 = 0;
          v25 = v60;
          v21 = __s;
        }

LABEL_41:
        if (v58)
        {
          v31 = v25;
          v32 = strlen(v25);
          result = SLFWrite(v63, v32, v31, &v67 + 1);
          if (result == 8)
          {
            goto LABEL_78;
          }

          v24 = 0;
          v33 = v31;
          v25 = v31;
          v21 = __s;
          goto LABEL_67;
        }

        v57 = 0;
LABEL_64:
        v43 = strlen(v21);
        result = SLFWrite(v63, v43, __s, &v67 + 1);
        v21 = __s;
        v33 = __s;
LABEL_65:
        v44 = result == 8;
        v25 = v60;
        goto LABEL_66;
      }

      PDasparse(v29, v73, &v69 + 1, &v69, v50, &v68, 12, v14);
      v34 = v53;
      if (v69)
      {
        v34 = v53 + 1;
      }

      v53 = v34;
      v25 = v60;
      v21 = v29;
    }

    if (!v58)
    {
      goto LABEL_64;
    }

    v35 = v21;
    v52 = strlen(v25);
    v36 = strlen(v35);
    v51 = v36;
    if (v52 <= v36)
    {
      v37 = v36;
    }

    else
    {
      v37 = v52;
    }

    if (!memcmp(v60, v35, v37))
    {
      if (v62 >= 0)
      {
        v45 = v62;
      }

      else
      {
        v45 = v63;
      }

      result = SLFWrite(v45, v51, v35, &v67 + 1);
      v33 = v35;
      v44 = result == 8;
      v25 = v60;
      v21 = v35;
    }

    else
    {
      if ((v52 & 0x8000) == 0)
      {
        v38 = 0;
        do
        {
          __s1[v38] = ((*(v10 + 4 * v60[v38]) >> 25) & 0x20) + v60[v38];
          ++v38;
        }

        while (v52 >= v38);
      }

      v39 = strlen(__s);
      v40 = v39;
      if ((v39 & 0x8000) == 0)
      {
        v41 = 0;
        do
        {
          __s2[v41] = ((*(v10 + 4 * __s[v41]) >> 25) & 0x20) + __s[v41];
          ++v41;
        }

        while (v39 >= v41);
      }

      if (v52 <= v39)
      {
        v42 = v39;
      }

      else
      {
        v42 = v52;
      }

      if ((memcmp(__s1, __s2, v42) & 0x8000) == 0)
      {
        result = SLFWrite(v63, v40, __s, &v67 + 1);
        v21 = __s;
        v33 = __s;
        goto LABEL_65;
      }

      result = SLFWrite(v63, v52, v60, &v67 + 1);
      v25 = v60;
      v33 = v60;
      v44 = result == 8;
      v21 = __s;
    }

LABEL_66:
    v24 = v57;
    if (v44)
    {
      goto LABEL_78;
    }

LABEL_67:
    *v33 = 0;
    v23 = v58 != 0;
    v22 = v24 != 0;
  }

  while (v58 | v24);
  v64 = 0;
  v65 = 0;
  v46 = *(a1 + 2578);
  if (!v46)
  {
    v46 = 61;
  }

  BYTE1(v64) = v46;
  *a5 = v46;
  BYTE2(v64) = 12;
  *(a5 + 8) = 12;
  BYTE6(v64) = HIBYTE(v66);
  *(a5 + 7) = HIBYTE(v66);
  LOBYTE(v65) = BYTE2(v66);
  *(a5 + 2) = BYTE2(v66);
  BYTE1(v65) = BYTE3(v66);
  *(a5 + 3) = BYTE3(v66);
  WORD1(v65) = WORD2(v66);
  *(a5 + 4) = WORD2(v66);
  HIBYTE(v64) = BYTE6(v66);
  *(a5 + 6) = BYTE6(v66);
  LOBYTE(v64) = BYTE1(v66);
  *(a5 + 1) = BYTE1(v66);
  WORD2(v64) = v53;
  *(a5 + 10) = v53;
  HIDWORD(v65) = a4;
  SLSeek(a4, 0, 0);
  if (!PDWriteRDHead(&v64))
  {
    v48 = malloc_type_malloc(0x400uLL, 0x100004077774924uLL);
    if (v48)
    {
      v49 = v48;
      SLSeek(v63, 0, 0);
      while (!SLFRead(v63, 1024, v49, &v61))
      {
        if (v61 >= 1)
        {
          result = SLFWrite(a4, v61, v49, &v67 + 1);
          if (result == 8)
          {
            goto LABEL_78;
          }

          if (HIDWORD(v67) != v61)
          {
            break;
          }

          if (HIDWORD(v67) == 1024)
          {
            continue;
          }
        }

        if ((v62 & 0x80000000) == 0)
        {
          SLClose(v62);
          v62 = -2;
        }

        SLClose(v63);
        v63 = -2;
        SLremove();
        free(v49);
        free(v60);
        free(__s);
        free(__s1);
        free(__s2);
        free(v50);
        free(v14);
        result = 0;
        goto LABEL_78;
      }
    }
  }

LABEL_77:
  result = 8;
LABEL_78:
  v47 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t output_counts(FILE **a1, unsigned __int16 *a2)
{
  v4 = 0;
  v5 = a2;
  while (1)
  {
    v6 = *v5;
    v5 += 4;
    if (v6)
    {
      break;
    }

    if (++v4 == 256)
    {
      return 8 * (putc(0, *a1) != 0);
    }
  }

  if (v4 > 0xFF)
  {
    return 8 * (putc(0, *a1) != 0);
  }

  while (1)
  {
    LOWORD(v7) = v4;
    v8 = v4;
    v4 = (v4 + 1);
    while (1)
    {
      if (v4 > 255)
      {
LABEL_19:
        v13 = v4 - 1;
        v14 = (v4 - 1);
        goto LABEL_20;
      }

      v9 = v4;
      v10 = v4 << 48;
      v11 = &a2[4 * v4];
      while (1)
      {
        v12 = *v11;
        v11 += 4;
        if (!v12)
        {
          break;
        }

        ++v9;
        v10 += 0x1000000000000;
        LOWORD(v4) = v4 + 1;
        if (v9 == 256)
        {
          LODWORD(v4) = 256;
          goto LABEL_19;
        }
      }

      v13 = v9 - 1;
      v14 = (v9 - 1);
      if (v9 > 255)
      {
        break;
      }

      v15 = &a2[4 * v4];
      v4 = v10 >> 48;
      while (1)
      {
        v16 = *v15;
        v15 += 4;
        if (v16)
        {
          break;
        }

        if (++v4 == 256)
        {
          goto LABEL_20;
        }
      }

      if (v4 - v14 >= 4)
      {
        goto LABEL_20;
      }
    }

    LODWORD(v4) = v9;
LABEL_20:
    if (putc(v8, *a1) != v8 || putc(v14, *a1) != v14)
    {
      return 8;
    }

    if (v8 <= v13)
    {
      while (putc(a2[4 * v7], *a1) == a2[4 * v7])
      {
        v7 = (v7 + 1);
        if (v7 > v13)
        {
          goto LABEL_25;
        }
      }

      return 8;
    }

LABEL_25:
    if (v4 > 255)
    {
      return 8 * (putc(0, *a1) != 0);
    }
  }
}

_DWORD *scale_counts(_DWORD *result, uint64_t a2)
{
  v2 = 0;
  v3 = 0uLL;
  do
  {
    v3 = vmaxq_u32(*&result[v2], v3);
    v2 += 4;
  }

  while (v2 != 256);
  v4 = vmaxvq_u32(v3);
  if (!v4)
  {
    v4 = 1;
    *result = 1;
  }

  v5 = 0;
  v6 = v4 / 0xFF + 1;
  do
  {
    v7 = result[v5 / 4];
    if ((v7 / v6))
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 == 0;
    }

    if (v8)
    {
      v9 = v7 / v6;
    }

    else
    {
      v9 = 1;
    }

    *(a2 + 2 * v5) = v9;
    v5 += 4;
  }

  while (v5 != 1024);
  *(a2 + 2048) = 1;
  return result;
}

uint64_t convert_tree_to_code(uint64_t result, uint64_t a2, int a3, __int16 a4, int a5)
{
  LOWORD(v5) = a4;
  v6 = a3;
  if (a5 >= 257)
  {
    v9 = result;
    do
    {
      v5 = (v5 + 1);
      v10 = v9 + 8 * a5;
      result = convert_tree_to_code(v9, a2, 2 * (v6 & 0x7FFFu), v5, *(v10 + 4));
      v8 = (2 * v6) | 1;
      a5 = *(v10 + 6);
      v6 = (2 * v6) | 1;
    }

    while (a5 >= 257);
  }

  else
  {
    v8 = a3;
  }

  v11 = (a2 + 4 * a5);
  *v11 = v8;
  v11[1] = v5;
  return result;
}

uint64_t compress_buffer(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  *(a3 + 8) = 2;
  *(a3 + 12) = 0;
  *(a3 + 10) = 0x80;
  **a3 = BYTE1(a2);
  *(*a3 + 1) = a2;
  do
  {
    v9 = (a4 + 4 * *(a1 + v8));
    OutputsBuffer(a3, *v9, v9[1]);
    ++v8;
  }

  while (a2 >= v8);
  OutputsBuffer(a3, *(a4 + 1024), *(a4 + 1026));
  return *(a3 + 8);
}

uint64_t *OutputsBuffer(uint64_t *result, int a2, int a3)
{
  if ((a3 - 1) <= 0x1F)
  {
    v3 = 1 << (a3 - 1);
    v4 = *(result + 10);
    do
    {
      if ((v3 & a2) != 0)
      {
        *(result + 6) |= v4;
      }

      v5 = v4;
      v4 >>= 1;
      *(result + 10) = v4;
      if (v5 <= 1)
      {
        v6 = *(result + 12);
        v7 = *result;
        v8 = *(result + 4);
        *(result + 4) = v8 + 1;
        *(v7 + v8) = v6;
        *(result + 6) = 0;
        v4 = 128;
        *(result + 10) = 0x80;
      }

      v9 = v3 > 1;
      LODWORD(v3) = v3 >> 1;
    }

    while (v9);
  }

  return result;
}

_WORD *OpenOutputBitFile()
{
  v0 = malloc_type_calloc(1uLL, 0x10uLL, 0x10200405AD1273CuLL);
  if (v0)
  {
    v1 = malloc_type_malloc(0x101uLL, 0x100004077774924uLL);
    if (v1)
    {
      v2 = v1;
      __strcpy_chk();
      __strcat_chk();
      *v0 = fopen(v2, "wb");
      free(v2);
      v0[5] = 0;
      *(v0 + 8) = 0x80;
    }

    else
    {
      return 0;
    }
  }

  return v0;
}

void CloseOutputBuffer(uint64_t a1)
{
  if (*(a1 + 10) != 128)
  {
    v2 = *(a1 + 12);
    v3 = *a1;
    v4 = *(a1 + 8);
    *(a1 + 8) = v4 + 1;
    v3[v4] = v2;
  }

  free(*a1);

  free(a1);
}

uint64_t CloseOutputBitFile(uint64_t a1)
{
  if (*(a1 + 8) != 128 && putc(*(a1 + 10), *a1) != *(a1 + 10))
  {
    return 8;
  }

  fclose(*a1);
  free(a1);
  return 0;
}

uint64_t OutputBit(uint64_t a1, int a2)
{
  v3 = *(a1 + 8);
  if (a2)
  {
    *(a1 + 10) |= v3;
  }

  *(a1 + 8) = v3 >> 1;
  if (v3 > 1)
  {
    return 0;
  }

  if (putc(*(a1 + 10), *a1) != *(a1 + 10))
  {
    return 8;
  }

  result = 0;
  *(a1 + 10) = 0;
  *(a1 + 8) = 0x80;
  return result;
}

uint64_t OutputBits(uint64_t a1, int a2, int a3)
{
  if ((a3 - 1) > 0x1F)
  {
    return 0;
  }

  v6 = 1 << (a3 - 1);
  v7 = *(a1 + 8);
  while (1)
  {
    if ((v6 & a2) != 0)
    {
      *(a1 + 10) |= v7;
    }

    v8 = v7;
    v7 >>= 1;
    *(a1 + 8) = v7;
    if (v8 > 1)
    {
      goto LABEL_9;
    }

    if (putc(*(a1 + 10), *a1) != *(a1 + 10))
    {
      return 8;
    }

    *(a1 + 10) = 0;
    v7 = 128;
    *(a1 + 8) = 0x80;
LABEL_9:
    v9 = v6 > 1;
    LODWORD(v6) = v6 >> 1;
    if (!v9)
    {
      return 0;
    }
  }
}

uint64_t input_counts(FILE **a1, uint64_t a2)
{
  for (i = 0; i != 2048; i += 8)
  {
    *(a2 + i) = 0;
  }

  v5 = getc(*a1);
  if (v5 != 0xFFFF)
  {
    v6 = v5;
    v7 = getc(*a1);
    if (v7 != 0xFFFF)
    {
      v9 = v7;
      while (v9 << 16 < v6 << 16)
      {
LABEL_11:
        v12 = getc(*a1);
        if (!v12)
        {
          result = 0;
          *(a2 + 2048) = 1;
          return result;
        }

        if (v12 == 0xFFFF)
        {
          return 8;
        }

        v6 = v12;
        v9 = getc(*a1);
        result = 8;
        if (v9 == 0xFFFF)
        {
          return result;
        }
      }

      v10 = v9;
      while (1)
      {
        v11 = getc(*a1);
        if (v11 == -1)
        {
          break;
        }

        *(a2 + 8 * v6++) = v11;
        if (v10 < v6)
        {
          goto LABEL_11;
        }
      }
    }
  }

  return 8;
}

_WORD *OpenInputBitFile(const char *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x10uLL, 0x10200405AD1273CuLL);
  if (v2)
  {
    v3 = fopen(a1, "rb");
    *v2 = v3;
    if (v3)
    {
      v2[5] = 0;
      *(v2 + 8) = 0x80;
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

void CloseInputBitFile(FILE **a1)
{
  fclose(*a1);

  free(a1);
}

uint64_t expand_data(unsigned __int16 **a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  v9 = 0;
  *(a1 + 4) = 2;
  *(a1 + 6) = 0;
  *(a1 + 10) = 0x80;
  v10 = bswap32(**a1) >> 16;
  do
  {
    v11 = v9;
    LOWORD(v12) = a5;
    do
    {
      v13 = InputBit(a1);
      v14 = a4 + 8 * v12;
      v15 = (v14 + 6);
      v16 = (v14 + 4);
      if (v13)
      {
        v16 = v15;
      }

      v12 = *v16;
    }

    while (v12 > 255);
    v9 = v11 + 1;
    *(a3 + v11) = v12;
  }

  while (v10 >= (v11 + 1));
  return v11;
}

BOOL InputBit(uint64_t *a1)
{
  v1 = *(a1 + 10);
  if (v1 == 128)
  {
    v2 = *a1;
    v3 = *(a1 + 4);
    *(a1 + 4) = v3 + 1;
    v4 = *(v2 + v3);
    *(a1 + 6) = v4;
  }

  else
  {
    v4 = *(a1 + 6);
  }

  v5 = v1 >> 1;
  if (v1 < 2)
  {
    LOBYTE(v5) = 0x80;
  }

  *(a1 + 10) = v5;
  return (v4 & v1) != 0;
}

char *PDstrrev(char *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = strlen(a1);
  if (v2)
  {
    v3 = __src;
    v4 = v2;
    do
    {
      *v3++ = a1[--v4];
    }

    while (v4);
  }

  __src[v2] = 0;
  result = strcpy(a1, __src);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sddiff(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  do
  {
    v3 = v2;
    v4 = *(a1 + v2);
    v5 = *(a2 + v2++);
    if (v4)
    {
      v6 = v4 == v5;
    }

    else
    {
      v6 = 0;
    }
  }

  while (v6);
  return v3;
}

uint64_t StartDb(uint64_t a1, int a2)
{
  v4 = malloc_type_calloc(1uLL, 0x850uLL, 0x1090040FF1BFF1AuLL);
  if (!v4)
  {
    if (*(a1 + 2588) && *(a1 + 2584) > 7)
    {
      return 0;
    }

    v5 = 0;
    *(a1 + 2584) = 8;
    *(a1 + 2588) = 1030;
    return v5;
  }

  v5 = v4;
  v4[1032] = *(a1 + 2582);
  if (a2 == 2)
  {
    __strcpy_chk();
    __strcpy_chk();
    __strcpy_chk();
    v6 = 1548;
    v7 = 1544;
    v8 = 1552;
  }

  else
  {
    if (a2 != 1)
    {
      goto LABEL_10;
    }

    __strcpy_chk();
    __strcpy_chk();
    __strcpy_chk();
    v6 = 772;
    v7 = 768;
    v8 = 776;
  }

  __strcpy_chk();
  __strcpy_chk();
  v9 = *(a1 + v8);
  *(v5 + 784) = v9;
  *(v5 + 785) = v9;
  *(v5 + 776) = *(a1 + v7);
  *(v5 + 780) = *(a1 + v6);
LABEL_10:
  *(v5 + 2078) = *(a1 + 2577);
  *(v5 + 772) = -2;
  *(v5 + 768) = 0;
  *(v5 + 2076) = 0;
  v10 = PDdb(v5, 1);
  v11 = *(v5 + 2120);
  v12 = *(v5 + 2104);
  *(a1 + 2584) = *(v5 + 2088);
  *(a1 + 2600) = v12;
  *(a1 + 2616) = v11;
  if (v10 == 8)
  {
    free(v5);
    return 0;
  }

  return v5;
}

uint64_t StartWord(void *a1, uint64_t a2)
{
  v4 = malloc_type_calloc(1uLL, 0x98uLL, 0x10B00408E6C3DC5uLL);
  if (v4)
  {
    v5 = v4;
    v6 = malloc_type_calloc(0x41uLL, 1uLL, 0x100004077774924uLL);
    v5[1] = v6;
    if (v6)
    {
      v7 = malloc_type_calloc(0x14uLL, 8uLL, 0x10040436913F5uLL);
      v5[13] = v7;
      if (v7)
      {
        v8 = 0;
        while (1)
        {
          v9 = malloc_type_calloc(1uLL, 0x74uLL, 0x10000404AB42077uLL);
          *(v5[13] + v8) = v9;
          if (!v9)
          {
            break;
          }

          v8 += 8;
          if (v8 == 160)
          {
            *(v5 + 1) = *(a2 + 2064);
            *v5 = *(a2 + 2074);
            *(v5 + 42) = 0;
            *(v5 + 9) = 0xFFFF;
            result = PDword(v5, 8, 1);
            if (result == 8)
            {
              v11 = *(v5 + 7);
              v12 = *(v5 + 8);
              *(a2 + 2120) = v5[18];
              *(a2 + 2088) = v11;
              *(a2 + 2104) = v12;
            }

            else
            {
              result = 0;
              *a1 = v5;
            }

            return result;
          }
        }
      }
    }
  }

  if (*(a2 + 2092) && *(a2 + 2088) > 7)
  {
    return 8;
  }

  result = 8;
  *(a2 + 2088) = 8;
  *(a2 + 2092) = 1030;
  return result;
}

uint64_t PDWriteRDHead(unsigned __int8 *a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v27 = 0;
  qmemcpy(__buf, "#HEADER START#2#", 16);
  v2 = PDitoa(*a1, __src);
  __strncpy_chk();
  v3 = v2 + 17;
  *(__buf + (v2 + 16)) = 35;
  v4 = PDitoa(a1[8], __src);
  strncpy(__buf + v3, __src, v4);
  v5 = v4 + v3;
  v6 = v4 + v3 + 1;
  *(__buf + v5) = 35;
  v7 = PDitoa(a1[9], __src);
  strncpy(__buf + v6, __src, v7);
  *(__buf + (v7 + v6)) = 35;
  *(__buf + (v7 + v6 + 1)) = a1[1];
  v8 = v7 + v6 + 2;
  v9 = v7 + v6 + 3;
  *(__buf + v8) = 35;
  v10 = PDitoa(*(a1 + 5), __src);
  strncpy(__buf + v9, __src, v10);
  v11 = v10 + v9;
  v12 = v10 + v9 + 1;
  *(__buf + v11) = 35;
  v13 = PDitoa(a1[7], __src);
  strncpy(__buf + v12, __src, v13);
  v14 = v13 + v12;
  v15 = v13 + v12 + 1;
  *(__buf + v14) = 35;
  v16 = PDitoa(a1[6], __src);
  strncpy(__buf + v15, __src, v16);
  v17 = v16 + v15;
  v18 = v16 + v15 + 1;
  *(__buf + v17) = 35;
  v19 = PDitoa(*(a1 + 2), __src);
  strncpy(__buf + v18, __src, v19);
  v20 = v19 + v18;
  v21 = v19 + v18 + 1;
  *(__buf + v20) = 35;
  v22 = PDitoa(a1[2], __src);
  LOWORD(v19) = v22;
  strncpy(__buf + v21, __src, v22);
  *(__buf + (v19 + v21)) = 35;
  v23 = __buf + (v19 + v21 + 1);
  *(v23 + 7) = 591679045;
  *v23 = *"HEADER END#";
  *(__buf + (v19 + v21 + 12)) = 13;
  *(__buf + (v19 + v21 + 13)) = 10;
  v24 = SLFWrite(*(a1 + 3), (v19 + v21 + 14), __buf, &v27);
  result = 0;
  if (v24 == 8)
  {
    SLClose(*(a1 + 3));
    *(a1 + 3) = -2;
    result = 8;
  }

  v26 = *MEMORY[0x1E69E9840];
  return result;
}

char *FillHeadStr(unsigned int a1, uint64_t a2, _WORD *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = PDitoa(a1, v10);
  v6 = v5;
  result = strncpy((a2 + *a3), v10, v5);
  v8 = *a3 + v6;
  *a3 = v8 + 1;
  *(a2 + v8) = 35;
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t PDWriteOldRDHead(unsigned __int8 *a1, _BYTE *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v15 = 0;
  qmemcpy(__buf, "#HEADER START#1#", 16);
  v4 = PDitoa(*a1, __src);
  __strncpy_chk();
  v5 = v4 + 17;
  *(__buf + (v4 + 16)) = 35;
  v6 = PDitoa(0, __src);
  strncpy(__buf + v5, __src, v6);
  v7 = v6 + v5;
  v8 = v6 + v5 + 1;
  *(__buf + v7) = 35;
  v9 = PDitoa(0, __src);
  strncpy(__buf + v8, __src, v9);
  *(__buf + (v9 + v8)) = 35;
  *(__buf + (v9 + v8 + 1)) = a1[1];
  *(__buf + (v9 + v8 + 2)) = 35;
  v10 = __buf + (v9 + v8 + 3);
  *v10 = *"HEADER END#";
  *(v10 + 7) = 591679045;
  v11 = v9 + v8 + 15;
  *(__buf + (v9 + v8 + 14)) = 13;
  v12 = v9 + v8 + 16;
  *(__buf + v11) = 10;
  if (SLFWrite(*(a1 + 3), v12, __buf, &v15) == 8)
  {
    SLClose(*(a1 + 3));
    *(a1 + 3) = -2;
    result = 8;
  }

  else
  {
    result = 0;
    *a2 = v12;
  }

  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t BuildEntry(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = **(*a1 + 104);
  *v6 = 35;
  v9 = strlen(v8);
  v10 = v9;
  *(a1 + 9) = v9;
  if (*(v8 + 71))
  {
    SLrecap(v8, v9, *(v8 + 71), v8 + 80, *(v8 + 71), a3);
  }

  if (SLchcnv(v8, v10, v8, 0, *(v8 + 72)) == 8)
  {
    if (!*(v7 + 116) || *(v7 + 112) <= 7)
    {
      *(v7 + 112) = 8;
      *(v7 + 116) = 1120;
    }

    SLClose(a2);
    free(v6);
    return 8;
  }

  else
  {
    if (*(v8 + 88))
    {
      LOWORD(v10) = PDhypins(v8, (v8 + 88), *(a1 + 22));
    }

    strcpy(v6 + 1, v8);
    v6[(v10 + 1)] = 35;
    if (*(v8 + 70))
    {
      v12 = 49;
    }

    else
    {
      v12 = 48;
    }

    v6[(v10 + 2)] = v12;
    if (*(a1 + 10))
    {
      v13 = 0;
      v14 = v10 + 4;
      v6[(v10 + 3)] = 35;
      do
      {
        snprintf(__str, 3uLL, "%02X", *(v8 + 102 + v13));
        v15 = v14 + 1;
        v6[v14] = __str[0];
        v14 += 2;
        v6[v15] = __str[1];
        ++v13;
      }

      while (v13 != 12);
    }

    else
    {
      v14 = v10 + 3;
    }

    result = 0;
    *(a1 + 8) = v14;
  }

  return result;
}

uint64_t AltAndWrite(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v19 = 0;
  v6 = *(a2 + 16);
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = **(*a2 + 104);
  if (!*v9 || !*(v9 + 100))
  {
    goto LABEL_10;
  }

  v8[v6] = 35;
  *a3 = *v7;
  *(a3 + 4) = *(v9 + 96);
  *(a3 + 16) = *(v9 + 100);
  if (PDalt(a3) != 8)
  {
    v13 = *(a3 + 16);
    v14 = *(a3 + 8);
    if (SLchcnv(v14, v13, v14, 0, *(v9 + 72)) == 8)
    {
      if (*(a1 + 2588) && *(a1 + 2584) > 7)
      {
        goto LABEL_15;
      }

      *(a1 + 2584) = 8;
      v15 = 1120;
LABEL_14:
      *(a1 + 2588) = v15;
LABEL_15:
      SLClose(a4);
      return 8;
    }

    v16 = v6 + 1;
    strncpy(&v8[v16], v14, v13);
    LOWORD(v6) = v13 + v16;
LABEL_10:
    v8[v6] = 13;
    v8[(v6 + 1)] = 10;
    v8[(v6 + 2)] = 0;
    v17 = SLFWrite(a4, (v6 + 2), v8, &v19);
    result = 0;
    if (v17 != 8)
    {
      return result;
    }

    if (*(a1 + 2588) && *(a1 + 2584) > 7)
    {
      goto LABEL_15;
    }

    *(a1 + 2584) = 8;
    v15 = 1011;
    goto LABEL_14;
  }

  SLClose(a4);
  v11 = *(a3 + 56);
  v12 = *(a3 + 40);
  *(a1 + 2584) = *(a3 + 24);
  *(a1 + 2600) = v12;
  *(a1 + 2616) = v11;
  return 8;
}

uint64_t GetBuildWord(uint64_t a1, unsigned __int16 **a2, _BYTE *a3, unsigned int a4, uint64_t a5)
{
  v10 = *a2;
  result = PDword(*a2, 8, 5);
  if (result == 8)
  {
    v12 = (a1 + 2584);
    v13 = *(v10 + 7);
    v14 = *(v10 + 8);
    v15 = *(v10 + 18);
LABEL_3:
    *(a1 + 2616) = v15;
    *v12 = v13;
    v12[1] = v14;
    return result;
  }

  if ((v10[58] & 0xFFFE) == 0x13F8)
  {
    result = PDword(v10, 8, 2);
    if (result != 8)
    {
      *a3 = 0;
      BuildEntry(a2, a4, a5);
      return 5113;
    }

    v12 = (a1 + 2584);
    v13 = *(v10 + 7);
    v14 = *(v10 + 8);
    v15 = *(v10 + 18);
    goto LABEL_3;
  }

  result = BuildEntry(a2, a4, a5);
  if (result != 8)
  {
    result = 0;
    *a3 = 1;
  }

  return result;
}

uint64_t PDGets(unsigned __int8 *__dst, int a2, int *a3, unsigned int a4)
{
  v19 = 0;
  if (SLFRead(a4, a2, __dst, &v19) == 8 || v19 == 0)
  {
    return 8;
  }

  if (v19 < 1)
  {
    v13 = 0;
    LOWORD(v10) = -1;
  }

  else
  {
    v10 = 0;
    while (1)
    {
      v11 = __dst[v10];
      if (v11 == 13 || v11 == 10)
      {
        break;
      }

      if (v19 == ++v10)
      {
        LOWORD(v10) = -1;
        v13 = v19;
        goto LABEL_28;
      }
    }

    if (v19 <= v10)
    {
      v13 = v10;
    }

    else
    {
      v13 = v19;
    }

    if (v19 <= v10)
    {
      v14 = v10;
    }

    else
    {
      v14 = v19;
    }

    v15 = v10;
    while (v11 <= 0xDu && ((1 << v11) & 0x2401) != 0)
    {
      if (v14 == v15)
      {
        goto LABEL_28;
      }

      LOBYTE(v11) = __dst[++v15];
    }

    v13 = v15;
  }

LABEL_28:
  v16 = *a3 + v13;
  *a3 = v16;
  SLSeek(a4, v16, 0);
  if (v10 == 0xFFFF)
  {
    v18 = &__dst[v13];
  }

  else
  {
    v17 = v10 + 2;
    v18 = &__dst[v10];
    if (v17 <= a2)
    {
      *v18 = 2573;
      v18 = &__dst[v17];
    }
  }

  result = 0;
  *v18 = 0;
  return result;
}

uint64_t GetOldSDWord(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = PDword(a2, 8, 5);
  if (result == 8)
  {
    v7 = (a1 + 2584);
    v8 = *(a2 + 112);
    v9 = *(a2 + 128);
    v10 = *(a2 + 144);
LABEL_3:
    *(a1 + 2616) = v10;
    *v7 = v8;
    v7[1] = v9;
    return result;
  }

  if ((*(a2 + 116) & 0xFFFE) == 0x13F8)
  {
    result = PDword(a2, 8, 2);
    if (result == 8)
    {
      v7 = (a1 + 2584);
      v8 = *(a2 + 112);
      v9 = *(a2 + 128);
      v10 = *(a2 + 144);
      goto LABEL_3;
    }

    *a3 = 0;
    return 5113;
  }

  else
  {
    result = 0;
    *a3 = 1;
  }

  return result;
}

uint64_t BuildForm(char *a1, _BYTE *a2, int a3, _WORD *a4, _BYTE *a5)
{
  v10 = malloc_type_malloc(0x881uLL, 0x100004077774924uLL);
  if (!v10)
  {
    return 8;
  }

  v11 = v10;
  v12 = malloc_type_malloc(0x19uLL, 0x100004077774924uLL);
  if (!v12)
  {
    return 8;
  }

  v13 = v12;
  v14 = malloc_type_malloc(0x801uLL, 0x100004077774924uLL);
  if (!v14)
  {
    return 8;
  }

  v15 = v14;
  if (*a1 != 35)
  {
    __strcpy_chk();
    *a1 = 35;
    strcat(a1, v11);
  }

  v29 = 0;
  v28 = 0;
  memset(v13, 48, 24);
  PDasparse(a1, v11, &v29, a5, v15, &v28, a3, v13);
  *a2 = 35;
  v16 = *v11;
  if (*v11)
  {
    v17 = 0;
    v18 = 0;
    do
    {
      a2[v17 + 1] = v16;
      v17 = ++v18;
      v16 = v11[v18];
    }

    while (v16);
    LODWORD(v19) = v18;
  }

  else
  {
    LODWORD(v19) = 0;
  }

  v21 = &a2[v19];
  v21[1] = 35;
  if (*a5)
  {
    v22 = 49;
  }

  else
  {
    v22 = 48;
  }

  v21[2] = v22;
  if (a3)
  {
    v23 = 0;
    a2[v19 + 3] = 35;
    v19 = (v19 + 4);
    do
    {
      a2[v19++] = *(v13 + v23++);
    }

    while (v23 != 24);
  }

  else
  {
    LOWORD(v19) = v19 + 3;
  }

  *a4 = v19;
  if (v29)
  {
    v24 = v19 + 1;
    a2[v19] = 35;
    v25 = *v15;
    if (*v15)
    {
      v26 = 0;
      v27 = 0;
      do
      {
        a2[v24 + v26] = v25;
        v26 = ++v27;
        v25 = v15[v27];
      }

      while (v25);
    }

    else
    {
      v27 = 0;
    }

    LOWORD(v19) = v27 + v24;
  }

  a2[v19] = 13;
  a2[(v19 + 1)] = 10;
  a2[(v19 + 2)] = 0;
  free(v13);
  free(v11);
  free(v15);
  return 0;
}

uint64_t Huffman_Comp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, unsigned int a6, _WORD *a7, uint64_t a8)
{
  v76 = *MEMORY[0x1E69E9840];
  v73 = -2;
  v71 = -2;
  v72 = -2;
  v16 = malloc_type_malloc(0xC1uLL, 0x100004077774924uLL);
  if (!v16 || (v17 = v16, v69 = a7, (v18 = malloc_type_malloc(0xFD00uLL, 0x100004077774924uLL)) == 0) || (v19 = v18, (v68 = malloc_type_calloc(0xFD00uLL, 1uLL, 0x100004077774924uLL)) == 0) || (v20 = malloc_type_malloc(0x81uLL, 0x100004077774924uLL)) == 0)
  {
    if (!*(a8 + 4) || *a8 <= 7)
    {
      result = 8;
      *a8 = 8;
      v23 = 1030;
      goto LABEL_14;
    }

LABEL_65:
    result = 8;
    goto LABEL_66;
  }

  v21 = v20;
  v74 = 0;
  if (SLOpen(a1, a2, &v72, 0) != 8 && SLOpen(a1, a3, &v71, 0x602u) != 8 && SLOpen(a1, a4, &v73, 0x602u) != 8)
  {
    v66 = v21;
    *v69 = 0;
    v24 = OpenOutputBuffer(a6);
    v25 = OpenOutputBuffer(a6);
    LOWORD(v26) = 0;
    if (!SLFRead(v72, 8, __dst, &v74) && v74 == 8)
    {
      v27 = 0;
      v26 = 0;
      v67 = 0;
      v55 = v25;
      v28 = 0uLL;
      while (1)
      {
        v29 = __dst[1];
        v30 = __dst[3] | __dst[2];
        v62 = __dst[4];
        v64 = __dst[0];
        v60 = __dst[6];
        v61 = __dst[5];
        v58 = __dst[7];
        *v66 = v28;
        v66[1] = v28;
        v66[2] = v28;
        v66[3] = v28;
        v66[4] = v28;
        v66[5] = v28;
        v66[6] = v28;
        v66[7] = v28;
        *(v66 + 128) = 0;
        if (SLFRead(v72, v30, v66, &v74))
        {
          break;
        }

        v31 = v29 | v64;
        if (SLFRead(v72, v31, v17, &v74))
        {
          break;
        }

        v32 = (v58 | v60);
        v33 = (v58 | v60);
        if (v30 >= 4)
        {
          v34 = 4;
        }

        else
        {
          v34 = v30;
        }

        v65 = v34;
        v59 = (v30 - (v61 | v62));
        v63 = v33 + 1;
        v25 = v55;
        v57 = &v17[v32 + 1];
        v56 = ~v32 + v31;
        while (1)
        {
          v35 = v31;
          if (v27)
          {
            if (v31)
            {
              v36 = v17;
              do
              {
                v37 = *v36++;
                v38 = v26++;
                v19[v38] = v37;
                --v35;
              }

              while (v35);
            }
          }

          else
          {
            bzero(v19, 0xFD00uLL);
            __strncpy_chk();
            __s[v65] = 0;
            strlen(__s);
            __strncat_chk();
            v39 = strlen(__s);
            if (SLFWrite(v71, v39, __s, &v74) == 8)
            {
              goto LABEL_62;
            }

            v40 = v26 + 1;
            v19[v26] = *v17 & 0xC0;
            if (v59)
            {
              v43 = v59;
              v44 = v66;
              v42 = v31;
              do
              {
                v45 = *v44++;
                v41 = v40 + 1;
                v19[v40++] = v45;
                --v43;
              }

              while (v43);
            }

            else
            {
              v41 = v26 + 1;
              v42 = v31;
            }

            if (v63 >= v42)
            {
              v26 = v41;
            }

            else
            {
              v46 = v56;
              v47 = v57;
              do
              {
                v48 = *v47++;
                v26 = v41 + 1;
                v19[v41++] = v48;
                --v46;
              }

              while (v46);
            }

            ++*v69;
            v27 = v31 + 2;
          }

          if (a6 >= v26)
          {
            break;
          }

          compress_buffer(v19, v26, v55, a5);
          if (*(v55 + 8) < (a6 - 2))
          {
            __memcpy_chk();
            v67 = v26;
            break;
          }

          v24[4] = 0;
          compress_buffer(v68, v67, v24, a5);
          LODWORD(v49) = v24[4];
          if (v24[4])
          {
            v50 = 0;
            do
            {
              v19[v50] = *(*v24 + v50);
              ++v50;
              v49 = v24[4];
            }

            while (v50 < v49);
          }

          if (v49 < a6)
          {
            memset(&v19[v49], 255, (~v49 + a6) + 1);
          }

          if (SLFWrite(v73, a6, v19, &v74) == 8)
          {
            goto LABEL_62;
          }

          v26 = 0;
          v27 = 0;
          v24[4] = 0;
        }

        *v66 = 0;
        if (SLFRead(v72, 8, __dst, &v74))
        {
          v51 = 0;
        }

        else
        {
          v51 = v74 == 8;
        }

        v28 = 0uLL;
        if (!v51)
        {
          goto LABEL_56;
        }
      }

      v25 = v55;
    }

LABEL_56:
    free(v66);
    free(v68);
    free(v17);
    SLClose(v72);
    v24[4] = 0;
    compress_buffer(v19, v26, v24, a5);
    free(a5);
    LODWORD(v52) = v24[4];
    if (v24[4])
    {
      v53 = 0;
      do
      {
        v19[v53] = *(*v24 + v53);
        ++v53;
        v52 = v24[4];
      }

      while (v53 < v52);
    }

    if (v52 < a6)
    {
      memset(&v19[v52], 255, (~v52 + a6) + 1);
    }

    if (SLFWrite(v73, a6, v19, &v74) != 8)
    {
      free(v19);
      CloseOutputBuffer(v25);
      CloseOutputBuffer(v24);
      SLClose(v71);
      SLClose(v73);
      result = 0;
      goto LABEL_66;
    }

LABEL_62:
    if (!*(a8 + 4) || *a8 <= 7)
    {
      result = 8;
      *a8 = 8;
      v23 = 1011;
      goto LABEL_14;
    }

    goto LABEL_65;
  }

  if (*(a8 + 4) && *a8 > 7)
  {
    goto LABEL_65;
  }

  result = 8;
  *a8 = 8;
  v23 = 1012;
LABEL_14:
  *(a8 + 4) = v23;
LABEL_66:
  v54 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t Add_Tables(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t a8, uint64_t a9, _DWORD *__buf, uint64_t a11)
{
  v27 = -2;
  v28 = -2;
  v26 = 0;
  if (SLOpen(a2, a3, &v27, 0x602u) == 8)
  {
LABEL_2:
    if (!*(a11 + 4) || *a11 <= 7)
    {
      result = 8;
      *a11 = 8;
      v19 = 1012;
LABEL_9:
      *(a11 + 4) = v19;
      return result;
    }

    return 8;
  }

  if (SLFWrite(v27, 1024, __buf, &v26) != 8)
  {
    v20 = v26;
    __buf[175] = bswap32(v26);
    if (SLOpen(a2, a4, &v28, 0) != 8)
    {
      v21 = malloc_type_malloc(0xFD00uLL, 0x100004077774924uLL);
      if (v21)
      {
        v22 = v21;
        while (SLFRead(v28, 64768, v22, &v26) != 8)
        {
          if (SLFWrite(v27, v26, v22, &v26) == 8)
          {
            goto LABEL_6;
          }

          v20 += v26;
          if (v26 != 64768)
          {
            SLClose(v28);
            v28 = -2;
            *(__buf + 708) = HIBYTE(v20);
            *(__buf + 709) = BYTE2(v20);
            *(__buf + 710) = BYTE1(v20);
            *(__buf + 711) = v20;
            if (SLOpen(a2, a5, &v28, 0) == 8)
            {
              goto LABEL_2;
            }

            v23 = v20;
            while (1)
            {
              if (SLFRead(v28, 64768, v22, &v26) == 8)
              {
                goto LABEL_40;
              }

              if (SLFWrite(v27, v26, v22, &v26) == 8)
              {
                break;
              }

              v23 += v26;
              if (v26 != 64768)
              {
                SLClose(v28);
                v28 = -2;
                *(__buf + 716) = HIBYTE(v23);
                *(__buf + 717) = BYTE2(v23);
                *(__buf + 718) = BYTE1(v23);
                *(__buf + 719) = v23;
                *(__buf + 512) = (v23 - v20) >> 8;
                *(__buf + 513) = v23 - v20;
                if (SLOpen(a2, a6, &v28, 0) == 8)
                {
                  goto LABEL_2;
                }

                v24 = v23;
                while (SLFRead(v28, 64768, v22, &v26) != 8)
                {
                  if (SLFWrite(v27, v26, v22, &v26) == 8)
                  {
                    v25 = v27;
                    goto LABEL_46;
                  }

                  v24 += v26;
                  if (v26 != 64768)
                  {
                    SLClose(v28);
                    v28 = -2;
                    *(__buf + 724) = HIBYTE(v24);
                    *(__buf + 725) = BYTE2(v24);
                    *(__buf + 726) = BYTE1(v24);
                    *(__buf + 727) = v24;
                    *(__buf + 490) = (v24 - v23) >> 8;
                    *(__buf + 491) = v24 - v23;
                    *a7 = 0;
                    *(__buf + 732) = HIBYTE(v24);
                    *(__buf + 733) = BYTE2(v24);
                    *(__buf + 734) = BYTE1(v24);
                    *(__buf + 735) = v24;
                    if (SLOpen(a2, a8, &v28, 0) == 8)
                    {
                      goto LABEL_2;
                    }

                    while (SLFRead(v28, 64768, v22, &v26) != 8)
                    {
                      if (SLFWrite(v27, v26, v22, &v26) == 8)
                      {
                        goto LABEL_45;
                      }

                      v24 += v26;
                      if (v26 != 64768)
                      {
                        SLClose(v28);
                        v28 = -2;
                        *(__buf + 740) = HIBYTE(v24);
                        *(__buf + 741) = BYTE2(v24);
                        *(__buf + 742) = BYTE1(v24);
                        *(__buf + 743) = v24;
                        if (a1 != 1)
                        {
LABEL_36:
                          free(v22);
                          SLClose(v27);
                          return 0;
                        }

                        if (SLOpen(a2, a9, &v28, 0) == 8)
                        {
                          goto LABEL_2;
                        }

                        while (SLFRead(v28, 64768, v22, &v26) != 8)
                        {
                          if (SLFWrite(v27, v26, v22, &v26) == 8)
                          {
                            goto LABEL_6;
                          }

                          if (v26 != 64768)
                          {
                            SLClose(v28);
                            v28 = -2;
                            goto LABEL_36;
                          }
                        }

                        goto LABEL_41;
                      }
                    }

                    goto LABEL_41;
                  }
                }

LABEL_40:
                SLClose(v28);
                goto LABEL_41;
              }
            }

LABEL_45:
            v25 = v28;
LABEL_46:
            SLClose(v25);
            goto LABEL_6;
          }
        }

LABEL_41:
        if (!*(a11 + 4) || *a11 <= 7)
        {
          result = 8;
          *a11 = 8;
          v19 = 1010;
          goto LABEL_9;
        }
      }

      else if (!*(a11 + 4) || *a11 <= 7)
      {
        result = 8;
        *a11 = 8;
        v19 = 1030;
        goto LABEL_9;
      }

      return 8;
    }

    goto LABEL_2;
  }

LABEL_6:
  if (!*(a11 + 4) || *a11 <= 7)
  {
    result = 8;
    *a11 = 8;
    v19 = 1011;
    goto LABEL_9;
  }

  return 8;
}

uint64_t Update_Header(char a1, char a2, __int16 a3, __int16 a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _BYTE *a9)
{
  v18 = -2;
  v19 = 0;
  if (SLOpen(a5, a6, &v18, 2u) == 8)
  {
    if (!*(a8 + 4) || *a8 <= 7)
    {
      result = 8;
      *a8 = 8;
      v16 = 1012;
LABEL_9:
      *(a8 + 4) = v16;
      return result;
    }
  }

  else
  {
    strcpy(a7, "Copyright [c] 1998  L & H Inc.      \x1A");
    *(a7 + 37) = 26;
    strcpy((a7 + 414), "#HEADER COMP START");
    *(a7 + 384) = 3072;
    *(a7 + 386) = 0;
    *(a7 + 387) = a2;
    *(a7 + 388) = 0;
    *(a7 + 392) = HIBYTE(a4);
    *(a7 + 393) = a4;
    *(a7 + 394) = 512;
    *(a7 + 404) = 0;
    *(a7 + 446) = 0;
    *(a7 + 488) = 0;
    *(a7 + 478) = 0;
    *(a7 + 492) = 0;
    *(a7 + 500) = 1024;
    *(a7 + 502) = HIBYTE(a3);
    *(a7 + 503) = a3;
    *(a7 + 504) = 0x8000;
    *(a7 + 748) = 0;
    *(a7 + 506) = 0;
    *(a7 + 510) = 0;
    *(a7 + 514) = 0;
    *(a7 + 522) = 0;
    *(a7 + 749) = a1;
    *(a7 + 756) = a9[5];
    *(a7 + 757) = a9[4];
    *(a7 + 768) = a9[6] >> 7;
    *(a7 + 769) = a9[6];
    *(a7 + 760) = 0;
    *(a7 + 761) = a9[7];
    *(a7 + 763) = a9[8];
    v17 = SLFWrite(v18, 1024, a7, &v19);
    result = 0;
    if (v17 != 8)
    {
      return result;
    }

    if (!*(a8 + 4) || *a8 <= 7)
    {
      result = 8;
      *a8 = 8;
      v16 = 1011;
      goto LABEL_9;
    }
  }

  return 8;
}

uint64_t isLowerCaseX(int a1, int a2)
{
  v2 = a1 - 97;
  v3 = (a1 - 97) < 0x1A;
  if (a2 > 1279)
  {
    v8 = a1 - 223;
    if ((a1 - 154) >= 5)
    {
      v9 = 0;
    }

    else
    {
      v9 = a1 ^ 1;
    }

    if (v2 < 0x1A)
    {
      v9 = 1;
    }

    if (a1 > 247)
    {
      v9 = 1;
    }

    if (v8 >= 0x18)
    {
      v10 = v9;
    }

    else
    {
      v10 = 1;
    }

    if ((a1 - 154) >= 5)
    {
      v11 = 0;
    }

    else
    {
      v11 = a1 ^ 1;
    }

    if (v2 >= 0x1A)
    {
      v12 = v11;
    }

    else
    {
      v12 = 1;
    }

    if (a1 > 247)
    {
      v12 = 1;
    }

    if (v8 < 0x18)
    {
      v12 = 1;
    }

    if (a2 == 1280)
    {
      v3 = v12;
    }

    if (a2 == 1284)
    {
      return v10;
    }
  }

  else if (a2 == 514)
  {
    v3 = 1;
    if (v2 >= 0x1A && (a1 - 223) >= 0x18 && ((a1 - 177) > 0xE || ((1 << (a1 + 79)) & 0x6F35) == 0))
    {
      return (a1 - 248) < 7;
    }
  }

  else
  {
    v7 = (a1 - 208) < 0x20 || (a1 - 241) < 0xC || a1 > 253 || v2 < 0x1A;
    if (a2 == 517)
    {
      return v7;
    }
  }

  return v3;
}

uint64_t toLowerX_0(uint64_t result, int a2)
{
  v2 = result - 65;
  if (a2 <= 1279)
  {
    if (a2 == 514)
    {
      if (v2 >= 0x1A && (result - 192) >= 0x17 && ((result - 161) > 0x3D || ((1 << (result + 95)) & 0x3F80000000006F35) == 0))
      {
        return result;
      }

      if (result - 161) < 0xF && ((0x6F35u >> (result + 95)))
      {
        return dword_1D2BFAAF0[(result - 161)];
      }

      return (result + 32);
    }

    if (a2 == 517)
    {
      if (v2 >= 0x1A && (result - 176) > 0x1F)
      {
        if ((result & 0xFFFFFFFE) != 0xAE && (result - 161) >= 0xC)
        {
          return result;
        }

        else
        {
          return (result + 80);
        }
      }

      return (result + 32);
    }

LABEL_18:
    if (v2 >= 0x1A)
    {
      return result;
    }

    else
    {
      return (result + 32);
    }
  }

  if (a2 != 1284)
  {
    if (a2 != 1280)
    {
      goto LABEL_18;
    }

    if (v2 >= 0x1A && (result - 192) >= 0x17)
    {
      if ((result - 216) < 7)
      {
        return (result + 32);
      }

      goto LABEL_44;
    }

    if (result - 138 > 0x15 || ((1 << (result + 118)) & 0x200015) == 0)
    {
      return (result + 32);
    }

LABEL_46:
    if (result == 159)
    {
      return 255;
    }

    else
    {
      return (result + 16);
    }
  }

  if (v2 < 0x1A || (result - 192) < 0x17)
  {
    if (result - 138 > 0x15 || ((1 << (result + 118)) & 0x200015) == 0)
    {
      if (result == 73)
      {
        return 253;
      }

      return (result + 32);
    }

    goto LABEL_46;
  }

  if (result <= 215)
  {
LABEL_44:
    if ((result - 138) > 0x15 || ((1 << (result + 118)) & 0x200015) == 0)
    {
      return result;
    }

    goto LABEL_46;
  }

  if ((result - 216) < 5)
  {
    return (result + 32);
  }

  if (result == 221)
  {
    return 105;
  }

  if (result == 222)
  {
    return (result + 32);
  }

  return result;
}

void sub_1D2B9A648(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 256), 8);
  _Block_object_dispose(&STACK[0x240], 8);
  _Block_object_dispose(&STACK[0x260], 8);
  _Block_object_dispose(&STACK[0x290], 8);
  _Unwind_Resume(a1);
}

uint64_t PDExtSort(unsigned int a1, int a2, unsigned int a3, int a4, int a5, _BYTE *a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, unsigned __int8 a10)
{
  v108 = *MEMORY[0x1E69E9840];
  v102 = 0;
  v18 = malloc_type_calloc(0x881uLL, 1uLL, 0x100004077774924uLL);
  if (!v18)
  {
    goto LABEL_110;
  }

  v19 = v18;
  v20 = malloc_type_calloc(0x881uLL, 1uLL, 0x100004077774924uLL);
  if (!v20)
  {
    goto LABEL_110;
  }

  v97 = a8;
  v98 = v20;
  v21 = malloc_type_calloc(0x882uLL, 1uLL, 0x100004077774924uLL);
  if (!v21)
  {
    goto LABEL_110;
  }

  v22 = v21;
  v23 = malloc_type_calloc(0x881uLL, 1uLL, 0x100004077774924uLL);
  if (!v23)
  {
    goto LABEL_110;
  }

  __src = v23;
  v24 = malloc_type_calloc(0x881uLL, 1uLL, 0x100004077774924uLL);
  if (!v24)
  {
    goto LABEL_110;
  }

  v92 = v24;
  v25 = malloc_type_calloc(0x3F40uLL, 1uLL, 0x100004077774924uLL);
  if (!v25)
  {
    goto LABEL_110;
  }

  v91 = v25;
  v26 = malloc_type_malloc(0xFD00uLL, 0x100004077774924uLL);
  if (!v26)
  {
    goto LABEL_110;
  }

  v27 = v26;
  v83 = a5;
  v96 = malloc_type_calloc(0x7E80uLL, 2uLL, 0x1000040BDFB0063uLL);
  if (!v96)
  {
    goto LABEL_110;
  }

  v28 = malloc_type_calloc(0x7E80uLL, 2uLL, 0x1000040BDFB0063uLL);
  if (!v28)
  {
    goto LABEL_110;
  }

  __b = v28;
  v29 = malloc_type_calloc(0x3F40uLL, 2uLL, 0x1000040BDFB0063uLL);
  if (!v29)
  {
    goto LABEL_110;
  }

  v77 = v29;
  v80 = a10 & 7;
  if (v80 == 2)
  {
    result = SLSeek(a1, a2, 0);
    if (result == 8)
    {
      goto LABEL_111;
    }
  }

  else
  {
    a2 = 0;
  }

  if (a3)
  {
    v84 = 0;
    if ((a10 & 0x38) == 0x10)
    {
      v31 = a4;
    }

    else
    {
      a2 = 0;
      v31 = 0;
    }

    v78 = v31;
    v32 = 1;
  }

  else
  {
    v78 = 0;
    v32 = 0;
    v84 = 1;
  }

  v105 = a2;
  v106 = 0;
  v103 = 0;
  v104 = 0;
  *v98 = 0;
  v107[0] = 0;
  if (SLtmpnam(a6, v107) == 8)
  {
    result = 1019;
    goto LABEL_111;
  }

  if (SLOpen(a6, v107, &v106, 0x602u) == 8)
  {
LABEL_24:
    result = 1012;
    goto LABEL_111;
  }

  v88 = v32;
  v33 = 0;
  v34 = 0;
  v87 = 0;
  v81 = a6;
LABEL_26:
  v35 = 0;
  v36 = 0;
  v76 = v34;
  v82 = v34;
LABEL_27:
  v37 = a7;
  v38 = v33;
  if (SLFpos(v106, &v104) == 8)
  {
LABEL_112:
    result = 1010;
    goto LABEL_111;
  }

  v91[v82] = v104;
  if (!v38)
  {
    v94 = 0;
    LODWORD(v85) = 0;
    HIDWORD(v85) = v88;
LABEL_34:
    a7 = v37;
    v39 = v87 == 0;
    while (1)
    {
LABEL_35:
      while (!v39)
      {
        v44 = strlen(v22);
        v39 = 1;
        LOWORD(v41) = v44;
        if (v44)
        {
          goto LABEL_46;
        }
      }

      if (PDGets(v22, 2177, &v105, a1) == 8)
      {
        v87 = 0;
        v33 = 1;
        goto LABEL_57;
      }

      v40 = strlen(v22);
      v39 = 1;
      v41 = v40;
      if (v40)
      {
        while (1)
        {
          v42 = v22[v41 - 1];
          if (v42 != 13 && v42 != 10)
          {
            break;
          }

          if (!--v41)
          {
            v39 = 1;
            goto LABEL_35;
          }
        }

LABEL_46:
        v22[v41] = 0;
        if (((v41 + v36) >> 8) > 0xFCu)
        {
          v87 = 1;
LABEL_56:
          v33 = v85;
LABEL_57:
          v88 = 1;
          a6 = v81;
          if (!HIDWORD(v85))
          {
            v86 = v33;
            if (PDsdsort(v27, v96, v35, v80, v97))
            {
              goto LABEL_110;
            }

            if (v35)
            {
              v51 = v35;
              v52 = v96;
              while (1)
              {
                v95 = v51;
                v53 = *v52;
                v89 = (v52 + 1);
                __strcpy_chk();
                v54 = strlen(__src);
                v55 = v54;
                if (a7)
                {
                  SLchcnv(__src, v54, __src, 0, a9);
                }

                v101 = 0;
                __buf = HIBYTE(v55);
                v100 = v55;
                if (SLFWrite(v106, 2, &__buf, &v103 + 1) == 8 || SLFWrite(v106, v55, __src, &v103 + 1) == 8)
                {
                  break;
                }

                v51 = v95 - 1;
                v52 = v89;
                if (v95 == 1)
                {
                  goto LABEL_66;
                }
              }

LABEL_120:
              result = 1011;
              goto LABEL_111;
            }

LABEL_66:
            v88 = 0;
            v77[v82] = v35;
            v34 = v76 + 1;
            v33 = v86;
            goto LABEL_26;
          }

          goto LABEL_27;
        }

        v45 = v35 + 1;
        v96[v35] = v36;
        __strcpy_chk();
        if ((v41 & 0xFFFE) != 0)
        {
          v46 = v41;
        }

        else
        {
          v46 = 1;
        }

        v47 = v19;
        v48 = v36;
        do
        {
          v49 = *v47++;
          v50 = v48++;
          v27[v50] = v49;
          --v46;
        }

        while (v46);
        v36 = v50 + 2;
        v27[v48] = 0;
        v39 = 1;
        ++v35;
        if ((((v45 >> 7) < 0xFDu) & ~v94) == 0)
        {
          v87 = 0;
          v35 = v45;
          goto LABEL_56;
        }
      }
    }
  }

  if (!v84)
  {
    if (v88 == 1)
    {
      v94 = 0;
      v85 = 0;
      v105 = v78;
      v84 = 1;
      a1 = a3;
      LOBYTE(v80) = (a10 >> 3) & 7;
    }

    else
    {
      v94 = 1;
      v84 = 0;
      v85 = 1;
    }

    goto LABEL_34;
  }

  *v92 = 0;
  SLClose(v106);
  if (SLOpen(a6, v107, &v106, 2u) == 8)
  {
    goto LABEL_24;
  }

  *v98 = 0;
  if (v76)
  {
    memset(__b, 255, 2 * v82);
    bzero(v27, 0xFD00uLL);
    v56 = 0;
    *v98 = 0;
    v57 = v76;
    v58 = v77;
    while (1)
    {
      if (v77[v56])
      {
        if (SLSeek(v106, v91[v56], 0) == 8 || SLFRead(v106, 2177, __src, &v103 + 1) == 8)
        {
          goto LABEL_112;
        }

        __buf = *__src;
        v100 = __src[1];
        v101 = 0;
        v59 = v100 | (__buf << 8);
        __memcpy_chk();
        __src[v59] = 0;
        v60 = v77[v56] - 1;
        if (v77[v56] == 1)
        {
          --v57;
        }

        else
        {
          v91[v56] += v59 + 2;
        }

        v77[v56] = v60;
        if (v59 > 0x881)
        {
LABEL_113:
          result = 5109;
          goto LABEL_111;
        }

        strcpy(&v27[(2177 * v56)], __src);
        __b[v56] = v56;
      }

      if (++v56 == v82)
      {
        goto LABEL_81;
      }
    }
  }

  bzero(v27, 0xFD00uLL);
  v57 = 0;
  v58 = v77;
LABEL_81:
  v90 = v57;
  v61 = 0;
  *v98 = 0;
  v62 = *__b;
  v63 = v76;
  do
  {
    if (!v58[v62])
    {
      *v98 = 0;
      if (v76)
      {
        v69 = 0;
        while (1)
        {
          if (v58[v69])
          {
            if (SLSeek(v106, v91[v69], 0) == 8 || SLFRead(v106, 129, __src, &v103 + 1) == 8)
            {
              goto LABEL_112;
            }

            __buf = *__src;
            v100 = __src[1];
            v101 = 0;
            v70 = v100 | (__buf << 8);
            __memcpy_chk();
            __src[v70] = 0;
            if (!*v98)
            {
              goto LABEL_106;
            }

            if (PDsdcmp(__src, v98, v80, v97, &v102))
            {
              goto LABEL_110;
            }

            if (v102 <= 0)
            {
LABEL_106:
              v61 = v69;
              __strcpy_chk();
            }
          }

          ++v69;
          v62 = v61;
          if (v63 == v69)
          {
            goto LABEL_83;
          }
        }
      }

      v62 = v61;
    }

LABEL_83:
    if (SLSeek(v106, v91[v62], 0) == 8 || SLFRead(v106, 2177, v22, &v103 + 1) == 8)
    {
      goto LABEL_112;
    }

    __buf = *v22;
    v100 = v22[1];
    v101 = 0;
    v64 = v100 | (__buf << 8);
    __memcpy_chk();
    v22[v64] = 0;
    v65 = v58[v62] - 1;
    if (v58[v62] == 1)
    {
      --v90;
    }

    else
    {
      v91[v62] += v64 + 2;
    }

    v58[v62] = v65;
    if (v76)
    {
      v66 = 0;
      v67 = __b;
      while (!PDsdcmp(&v27[v66], v22, v80, v97, &v102))
      {
        if (v102 <= 0)
        {
          v61 = *v67;
          __strcpy_chk();
          if (v64 > 0x881)
          {
            goto LABEL_113;
          }

          strcpy(&v27[v66], v22);
          *v67 = v62;
          __strcpy_chk();
          v62 = v61;
        }

        v66 += 2177;
        ++v67;
        if (2177 * v76 == v66)
        {
          goto LABEL_95;
        }
      }

LABEL_110:
      result = 1030;
      goto LABEL_111;
    }

LABEL_95:
    __strcat_chk();
    v68 = strlen(v22);
    if (SLFWrite(v83, v68, v22, &v103) == 8)
    {
      goto LABEL_120;
    }

    v58 = v77;
    v63 = v76;
  }

  while (v90);
  if (v76)
  {
    v72 = 2177 * v76 + 63359;
    v73 = v76 - 1;
    do
    {
      __strcpy_chk();
      __strcat_chk();
      v74 = strlen(__src);
      if (SLFWrite(v83, v74, __src, &v103) == 8)
      {
        goto LABEL_120;
      }

      v72 -= 2177;
    }

    while (v73--);
  }

  result = SLSeek(v83, 0, 0);
  if (result != 8)
  {
    SLClose(v106);
    SLremove();
    free(v19);
    free(v98);
    free(v22);
    free(__src);
    free(v92);
    free(v27);
    free(v96);
    free(__b);
    free(v77);
    free(v91);
    result = 0;
  }

LABEL_111:
  v71 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t PDsdsort(uint64_t a1, __int16 *a2, unsigned int a3, int a4, uint64_t a5)
{
  if (a3 < 2)
  {
    return 0;
  }

  v10 = a3 - 1;
  v11 = (a3 - 2) >> 1;
  if (v11 < 0)
  {
LABEL_6:
    v13 = v10;
    while (v13)
    {
      v14 = *a2;
      *a2 = a2[v13];
      v15 = v13 - 1;
      a2[v13] = v14;
      v16 = DownHeap(0, (v13 - 1), a4, a2, a1, a5);
      v13 = v15;
      if (v16)
      {
        return 1030;
      }
    }

    return 0;
  }

  else
  {
    while (!DownHeap(v11, v10, a4, a2, a1, a5))
    {
      v12 = v11;
      LOWORD(v11) = v11 - 1;
      if (v12 <= 0)
      {
        goto LABEL_6;
      }
    }

    return 1030;
  }
}

uint64_t PDsdcmp(char *__s, unsigned __int8 *a2, int a3, uint64_t a4, _WORD *a5)
{
  v7 = __s;
  v26 = 0;
  if (a3 == 3)
  {
    PDatoi(__s, &v26 + 1);
    PDatoi(a2, &v26);
    result = 0;
    *a5 = v26 - HIWORD(v26);
  }

  else
  {
    v10 = strlen(__s);
    v11 = malloc_type_calloc(v10 + 1, 1uLL, 0x100004077774924uLL);
    if (v11 && (v12 = v11, v13 = strlen(a2), (v14 = malloc_type_calloc(v13 + 1, 1uLL, 0x100004077774924uLL)) != 0))
    {
      v15 = v14;
      if (v10)
      {
        v16 = v10;
        v17 = v12;
        do
        {
          v18 = *v7++;
          *v17++ = ((*(a4 + 4 * v18) >> 25) & 0x20) + v18;
          --v16;
        }

        while (v16);
      }

      if (v13)
      {
        v19 = v13;
        v20 = v14;
        do
        {
          v21 = *a2++;
          *v20++ = ((*(a4 + 4 * v21) >> 25) & 0x20) + v21;
          --v19;
        }

        while (v19);
      }

      v22 = 0;
      v23 = 0;
      while (2)
      {
        v24 = v12[v22];
        while (1)
        {
          v25 = v14[v23];
          if (v24 == v25)
          {
            break;
          }

          if (v24 == 61)
          {
            goto LABEL_19;
          }

          if (v25 != 61)
          {
            goto LABEL_22;
          }

          ++v23;
        }

        if (v12[v22])
        {
          ++v23;
LABEL_19:
          ++v22;
          continue;
        }

        break;
      }

      LOWORD(v25) = 0;
LABEL_22:
      *a5 = v24 - v25;
      free(v12);
      free(v15);
      return 0;
    }

    else
    {
      return 1030;
    }
  }

  return result;
}

uint64_t PDreadHead(char *a1, uint64_t a2)
{
  v4 = malloc_type_malloc(0x41uLL, 0x100004077774924uLL);
  if (!v4)
  {
    return 8;
  }

  v5 = v4;
  v6 = strlen(a1);
  if (v6 < -1)
  {
LABEL_3:
    v7 = 8;
    goto LABEL_50;
  }

  v8 = 0;
  v16 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  LOWORD(v12) = -1;
  while (1)
  {
    v13 = v12;
    v12 = v8;
    if (v10 > 0x17)
    {
      goto LABEL_13;
    }

    if (((1 << v10) & 0xAAAAAA) != 0)
    {
      break;
    }

    if (((1 << v10) & 0x555554) == 0)
    {
      if (a1[v8] != 35)
      {
        goto LABEL_3;
      }

      ++v9;
      v11 = v13 + 2;
      v10 = 1;
      goto LABEL_48;
    }

    ++v10;
    v11 = v8;
LABEL_13:
    if (v10 > 13)
    {
      if (v10 <= 19)
      {
        switch(v10)
        {
          case 14:
            __strncpy_chk();
            v5[v12 - v11] = 0;
            PDatoi(v5, (a2 + 4));
            v10 = 14;
            break;
          case 16:
            __strncpy_chk();
            v5[v12 - v11] = 0;
            PDatobyte(v5, (a2 + 6));
            v10 = 16;
            break;
          case 18:
            __strncpy_chk();
            v5[v12 - v11] = 0;
            PDatobyte(v5, (a2 + 7));
            v10 = 18;
            break;
        }

        goto LABEL_48;
      }

      if (v10 == 20)
      {
        __strncpy_chk();
        v5[v12 - v11] = 0;
        PDatoi(v5, (a2 + 10));
        v10 = 20;
        goto LABEL_48;
      }

      if (v10 != 22)
      {
        if (v10 == 23)
        {
          if (SLstrncmp("HEADER END#", &a1[v11], 11))
          {
            goto LABEL_3;
          }

          v10 = 23;
        }

        goto LABEL_48;
      }

      goto LABEL_44;
    }

    if (v10 <= 7)
    {
      switch(v10)
      {
        case 2:
          if (SLstrncmp("#HEADER START", a1, 13))
          {
            goto LABEL_3;
          }

          v10 = 2;
          break;
        case 4:
          v14 = v16;
          if (a1[v11] < 0x32u)
          {
            v14 = 1;
          }

          v16 = v14;
          v10 = 4;
          break;
        case 6:
          __strncpy_chk();
          v5[v12 - v11] = 0;
          PDatobyte(v5, (a2 + 1));
          v10 = 6;
          break;
      }

      goto LABEL_48;
    }

    switch(v10)
    {
      case 8:
        __strncpy_chk();
        v5[v12 - v11] = 0;
        PDatobyte(v5, (a2 + 2));
        v10 = 8;
        break;
      case 10:
        __strncpy_chk();
        v5[v12 - v11] = 0;
        PDatobyte(v5, (a2 + 3));
        v10 = 10;
        break;
      case 12:
        *a2 = a1[v11];
        if (!v16)
        {
          break;
        }

        *(a2 + 8) = 0;
        *(a2 + 4) = 0;
LABEL_44:
        __strncpy_chk();
        v5[v12 - v11] = 0;
        PDatobyte(v5, (a2 + 8));
        v10 = 22;
        break;
      default:
        break;
    }

LABEL_48:
    v8 = v12 + 1;
    if (v6 < v12)
    {
      v7 = 8 * (v9 < 24);
      goto LABEL_50;
    }
  }

  if (a1[v8] != 35)
  {
    goto LABEL_13;
  }

  if (v10 <= 0x16)
  {
    ++v9;
    ++v10;
    goto LABEL_13;
  }

  v7 = 303;
LABEL_50:
  free(v5);
  return v7;
}

uint64_t DownHeap(unsigned int a1, unsigned int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a1;
  v27 = 0;
  v25 = *(a4 + 2 * a1);
  v8 = (a2 - 1) >> 1;
  if (a1 <= ((a2 - 1) >> 1))
  {
    v12 = 0;
    v26 = a3 - 1;
    while (1)
    {
      v13 = 2 * v7;
      if (((2 * v7) & 0xFFFE) >= a2)
      {
        v14 = 0;
      }

      else
      {
        v14 = (a5 + *(a4 + 2 * ((2 * v7) | 1u)));
      }

      v15 = v13 + 2;
      if (a2 >= (v13 + 2))
      {
        v16 = (a5 + *(a4 + 2 * (v13 + 2)));
      }

      else
      {
        v16 = 0;
      }

      if (v26 >= 2)
      {
        if (a3 != 3)
        {
          goto LABEL_29;
        }

        v20 = IntCmp(v14, v16);
        if (v20 <= 0)
        {
          v12 = v15;
        }

        else
        {
          v12 = (2 * v7) | 1;
        }

        if (v20 <= 0)
        {
          v21 = v16;
        }

        else
        {
          v21 = v14;
        }

        v19 = IntCmp(a5 + v25, v21);
        v27 = v19;
      }

      else
      {
        if (AsciiCmp(v14, v16, a6, &v27))
        {
          return 1030;
        }

        v17 = v27;
        v18 = v27 <= 0 ? v16 : v14;
        if (AsciiCmp((a5 + v25), v18, a6, &v27))
        {
          return 1030;
        }

        if (v17 <= 0)
        {
          v12 = v15;
        }

        else
        {
          v12 = (2 * v7) | 1;
        }

        v19 = v27;
      }

      if (v19 >= 1)
      {
        v9 = v7;
        goto LABEL_33;
      }

LABEL_29:
      v9 = v12;
      *(a4 + 2 * v7) = *(a4 + 2 * v12);
      v7 = v12;
      if (v12 > v8)
      {
        goto LABEL_33;
      }
    }
  }

  v9 = a1;
LABEL_33:
  result = 0;
  *(a4 + 2 * v9) = v25;
  return result;
}

uint64_t AsciiCmp(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, _WORD *a4)
{
  if (a1 && a2)
  {
    v8 = malloc_type_calloc(0x881uLL, 1uLL, 0x100004077774924uLL);
    if (v8 && (v9 = v8, (v10 = malloc_type_calloc(0x881uLL, 1uLL, 0x100004077774924uLL)) != 0))
    {
      v11 = v10;
      v12 = *a1;
      if (*a1)
      {
        v13 = 0;
        v14 = 0;
        do
        {
          v9[v13] = ((*(a3 + 4 * v12) >> 25) & 0x20) + v12;
          v13 = ++v14;
          v12 = a1[v14];
        }

        while (v12);
      }

      v15 = *a2;
      if (*a2)
      {
        v16 = 0;
        v17 = 0;
        do
        {
          v10[v16] = ((*(a3 + 4 * v15) >> 25) & 0x20) + v15;
          v16 = ++v17;
          v15 = a2[v17];
        }

        while (v15);
      }

      v18 = *v9;
      if (*v9)
      {
        LOWORD(v19) = 0;
        v20 = 0;
        while (1)
        {
          v21 = v10[v19];
          if (!v10[v19])
          {
LABEL_21:
            v19 = v19;
            goto LABEL_25;
          }

          if (v18 == v21)
          {
            break;
          }

          if (v18 != 61)
          {
            if (v21 != 61)
            {
              goto LABEL_21;
            }

            goto LABEL_19;
          }

          ++v20;
LABEL_20:
          v18 = v9[v20];
          if (!v9[v20])
          {
            goto LABEL_21;
          }
        }

        ++v20;
LABEL_19:
        LOWORD(v19) = v19 + 1;
        goto LABEL_20;
      }

      v19 = 0;
LABEL_25:
      *a4 = v18 - v10[v19];
      free(v9);
      free(v11);
      return 0;
    }

    else
    {
      return 1030;
    }
  }

  else
  {
    result = 0;
    *a4 = 1;
  }

  return result;
}

uint64_t IntCmp(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = 1;
  if (a1 && a2)
  {
    v6 = 0;
    v5 = 0;
    __strcpy_chk();
    __strcpy_chk();
    PDatoi(v8, &v6);
    PDatoi(v7, &v5);
    v2 = v5 - v6;
  }

  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t PDngrams(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v81 = 0;
  *v80 = 0;
  v79 = 0;
  if (SLOpen(a1, a2, v80, 0) == 8 || SLOpen(a3, a4, &v79, 0x602u) == 8)
  {
    return 1012;
  }

  v87 = 0;
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v7 = malloc_type_calloc(1uLL, 0x7530uLL, 0x100004077774924uLL);
  *&v84 = v7;
  if (!v7)
  {
    goto LABEL_45;
  }

  v8 = v7;
  v9 = malloc_type_calloc(1uLL, 0x7530uLL, 0x100004077774924uLL);
  *(&v84 + 1) = v9;
  if (!v9)
  {
    goto LABEL_45;
  }

  v10 = v9;
  v11 = malloc_type_calloc(1uLL, 0x7530uLL, 0x100004077774924uLL);
  *&v85 = v11;
  if (!v11)
  {
    goto LABEL_45;
  }

  v12 = v11;
  v13 = malloc_type_calloc(1uLL, 0x7530uLL, 0x100004077774924uLL);
  *(&v85 + 1) = v13;
  if (!v13)
  {
    goto LABEL_45;
  }

  v14 = v13;
  v15 = malloc_type_calloc(1uLL, 0x8000uLL, 0x100004077774924uLL);
  v87 = v15;
  if (!v15)
  {
    goto LABEL_45;
  }

  v16 = v15;
  v17 = malloc_type_calloc(1uLL, 0x4000uLL, 0x1000040BDFB0063uLL);
  *&v83 = v17;
  if (!v17 || (v18 = v17, v19 = malloc_type_calloc(1uLL, 0x4000uLL, 0x1000040BDFB0063uLL), (*&v86 = v19) == 0) || (v20 = v19, v21 = malloc_type_calloc(1uLL, 0x4000uLL, 0x100004077774924uLL), (*(&v86 + 1) = v21) == 0))
  {
LABEL_45:
    v45 = v79;
    v44 = v80[0];
    v6 = 1030;
LABEL_46:
    clean_up(1030, &v83, v44, v45);
    return v6;
  }

  v22 = v21;
  v23 = malloc_type_calloc(1uLL, 0x4000uLL, 0x100004077774924uLL);
  *(&v83 + 1) = v23;
  if (!v23)
  {
    v45 = v79;
    v6 = 1030;
    v44 = v80[0];
    goto LABEL_46;
  }

  v24 = v23;
  v78 = v20;
  v25 = 0;
  if (SLFRead(v80[0], 4, __dst, &v81) != 8 && v81 == 4)
  {
    v25 = 0;
    do
    {
      v8[++v25] = __dst[0];
      v10[v25] = __dst[1];
      v12[v25] = __dst[2];
      v14[v25] = __dst[3];
      v26 = SLFRead(v80[0], 4, __dst, &v81) != 8 && v81 == 4;
    }

    while (v26);
  }

  v27 = (v25 + 1);
  v8[v27] = -1;
  v10[v27] = -1;
  v12[v27] = -1;
  v14[v27] = -1;
  v22[1] = v8[1];
  v22[2] = v10[1];
  *(v24 + 1) = v12[1];
  *(v24 + 2) = v14[1];
  v28 = 1;
  LOWORD(v29) = 1;
  if ((v25 + 1) >= 2)
  {
    v30 = 0;
    LODWORD(v31) = (v25 + 2);
    if (v31 <= 3)
    {
      v31 = 3;
    }

    else
    {
      v31 = v31;
    }

    v32 = 2;
    LOWORD(v29) = 1;
    v28 = 1;
    do
    {
      v33 = v12[v32];
      v34 = v14[v32];
      v35 = v8[v32];
      v36 = &v22[2 * v28];
      if (v35 == *(v36 - 1) && v10[v32] == *v36)
      {
        if (v12[v32 - 1] == v33)
        {
          v33 = 0;
        }

        if (v14[v32 - 1] == v34)
        {
          v34 = 0;
        }
      }

      else
      {
        v37 = &v22[2 * ++v28];
        *(v37 - 1) = v35;
        *v37 = v10[v32];
      }

      if (v29 < 1)
      {
        if (!v30)
        {
LABEL_40:
          v30 = 0;
          v29 = v29 + 1;
          v41 = (v24 + 2 * v29);
          *(v41 - 1) = v33;
          *v41 = v34;
          *(v18 + 2 * v29) = 1;
        }
      }

      else
      {
        LOWORD(v38) = 1;
        while (1)
        {
          v39 = v38;
          v40 = (v24 + 2 * v38);
          if (*(v40 - 1) == v33 && *v40 == v34)
          {
            break;
          }

          v38 = (v39 + 1);
          if (v38 > v29)
          {
            goto LABEL_40;
          }
        }

        ++*(v18 + 2 * v39);
        v30 = 1;
      }

      ++v32;
    }

    while (v32 != v31);
  }

  sort_fr(v29, v18, v24);
  if (v25 <= 0x7FFEu)
  {
    v47 = 0;
    v48 = 0;
    LODWORD(v49) = (v25 + 2);
    if (v49 <= 2)
    {
      v49 = 2;
    }

    else
    {
      v49 = v49;
    }

    v50 = 32;
    v42 = 16;
    v51 = 1;
    v52 = 32;
    v43 = v78;
    while (1)
    {
      v53 = v12[v51];
      v54 = v14[v51];
      v55 = v8[v51];
      if (v55 == v52 && v10[v51] == v50)
      {
        break;
      }

      v57 = &v22[2 * ++v48];
      v52 = *(v57 - 1);
      v50 = *v57;
      if (v55 == v52)
      {
        if (v10[v51] == v50)
        {
          v56 = 1;
          v52 = v8[v51];
LABEL_63:
          v58 = 1;
          v59 = 1;
LABEL_64:
          v60 = (v24 + 2 * v58);
          do
          {
            if (v53 == *(v60 - 1) && v54 == *v60)
            {
              v59 = 0;
              v47 = (v42 + 1);
              v16[(v42 + 1)] = v58;
              v42 = v47;
              v61 = v47;
              v26 = v58++ == 254;
              if (!v26)
              {
                goto LABEL_64;
              }

              goto LABEL_76;
            }

            v60 += 2;
            ++v58;
          }

          while (v58 != 255);
          if (v59)
          {
            v62 = (v42 + 1);
            v16[(v42 + 1)] = -1;
            v16[(v42 + 2)] = v53;
            v42 = (v42 + 3);
            v16[v42] = v54;
            v47 = v62;
            if (v56)
            {
              goto LABEL_79;
            }

            goto LABEL_80;
          }

          v61 = v42;
LABEL_76:
          v42 = v61;
          v62 = v47;
          if (v56)
          {
            goto LABEL_79;
          }

          goto LABEL_80;
        }

        v52 = v8[v51];
      }

LABEL_79:
      v78[v48] = v47;
      v62 = v47;
LABEL_80:
      ++v51;
      v47 = v62;
      if (v51 == v49)
      {
        goto LABEL_81;
      }
    }

    v56 = 0;
    if (v12[v51 - 1] == v53)
    {
      v53 = 0;
    }

    if (v14[v51 - 1] == v54)
    {
      v54 = 0;
    }

    goto LABEL_63;
  }

  LOWORD(v42) = 16;
  v43 = v78;
LABEL_81:
  v63 = v42;
  v16[1] = (v42 + 1) >> 8;
  v16[2] = v42 + 1;
  v16[4] = v28;
  v16[3] = BYTE1(v28);
  if (v28 >= 1)
  {
    v64 = 0;
    v65 = v42 + v28;
    v66 = v42 + 2 * v28;
    v67 = (v28 + 1);
    if (v67 <= 2)
    {
      v68 = 2;
    }

    else
    {
      v68 = v67;
    }

    v69 = v68 - 1;
    v70 = v22 + 2;
    do
    {
      v16[v63 + 1 + v64] = *(v70 - 1);
      v71 = *v70;
      v70 += 2;
      v16[v65 + 1 + v64] = v71;
      v72 = &v43[v64 + 1];
      v16[v66 + 1 + v64] = *(v72 + 1);
      v16[v66 + 1 + v28 + v64++] = *v72;
    }

    while (v69 != v64);
  }

  v73 = v63 + 4 * v28;
  *(v16 + 5) = bswap32(v73 + 1) >> 16;
  v74 = &v16[v73 + 257];
  v75 = (v24 + 2);
  v76 = 256;
  do
  {
    *(v74 - 256) = *(v75 - 1);
    v77 = *v75;
    v75 += 2;
    *v74++ = v77;
    --v76;
  }

  while (v76);
  v16[8] = v73;
  v16[7] = (v73 + 512) >> 8;
  SLFWrite(v79, (v73 + 512) - 1, v16 + 1, &v80[1]);
  clean_up(0, &v83, v80[0], v79);
  return 0;
}

uint64_t clean_up(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v8 = *(a2 + 16);
  if (v8)
  {
    free(v8);
  }

  v9 = *(a2 + 24);
  if (v9)
  {
    free(v9);
  }

  v10 = *(a2 + 32);
  if (v10)
  {
    free(v10);
  }

  v11 = *(a2 + 40);
  if (v11)
  {
    free(v11);
  }

  v12 = *(a2 + 64);
  if (v12)
  {
    free(v12);
  }

  if (*a2)
  {
    free(*a2);
  }

  v13 = *(a2 + 48);
  if (v13)
  {
    free(v13);
  }

  v14 = *(a2 + 56);
  if (v14)
  {
    free(v14);
  }

  v15 = *(a2 + 8);
  if (v15)
  {
    free(v15);
  }

  SLClose(a3);
  SLClose(a4);
  return a1;
}

uint64_t sort_fr(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result >= 2)
  {
    LOWORD(v3) = result;
    do
    {
      v4 = v3;
      v3 = v3 >> 1;
      v5 = (result - (v4 >> 1));
      LOWORD(v6) = 1;
      do
      {
        LOWORD(v7) = v6;
        do
        {
          v7 = v7;
          v8 = *(a2 + 2 * v7);
          v9 = (v7 + v3);
          v10 = *(a2 + 2 * v9);
          if (v8 >= v10)
          {
            break;
          }

          v11 = a3 + 2 * v7;
          v12 = *(v11 - 1);
          *(a2 + 2 * v7) = v10;
          v13 = a3 + 2 * v9;
          *(v11 - 1) = *(v13 - 1);
          *(a2 + 2 * v9) = v8;
          *(v13 - 1) = v12;
          LODWORD(v7) = (v7 - v3);
        }

        while (v7 > 0);
        v6 = (v6 + 1);
      }

      while (v6 <= v5);
    }

    while (v3 >= 2);
  }

  return result;
}

uint64_t PDSDinit(uint64_t a1, int a2, unsigned int a3)
{
  v6 = *(a1 + 2176);
  v7 = malloc_type_calloc(0x400uLL, 1uLL, 0x100004077774924uLL);
  if (!v7)
  {
    return 8;
  }

  v8 = v7;
  v9 = malloc_type_calloc(0x400uLL, 1uLL, 0x100004077774924uLL);
  if (!v9)
  {
    return 8;
  }

  v10 = v9;
  v11 = malloc_type_calloc(0x400uLL, 1uLL, 0x100004077774924uLL);
  if (!v11)
  {
    return 8;
  }

  v12 = v11;
  v13 = 8;
  v14 = malloc_type_calloc(0x202uLL, 8uLL, 0x100004000313F17uLL);
  *(v6 + 48) = v14;
  if (v14)
  {
    v15 = malloc_type_calloc(1uLL, 0x100uLL, 0x100004077774924uLL);
    *(v6 + 96) = v15;
    if (!v15)
    {
      return 8;
    }

    *v41 = 0;
    if (a2)
    {
      v41[0] = a3;
      SLSeek(a3, *(a1 + 768), 0);
    }

    else
    {
      if (SLOpen(a1 + 1, a1 + 512, v41, 0) == 8)
      {
        return 8;
      }

      a3 = v41[0];
    }

    *(a1 + 776) = a3;
    *(*(a1 + 2184) + 64) = a3;
    if (SLFRead(a3, 1024, v8, &v41[1]) == 8)
    {
      return 8;
    }

    strcpy(v10, "#HEADER COMP START");
    v17 = strncpy(v12, v8 + 38, 0x11uLL);
    v18 = SLstrncmp(v17, v10, 17);
    free(v10);
    free(v12);
    if (v18)
    {
      v19 = bswap32(*(v8 + 175));
      *v6 = v19;
      v20 = *(a1 + 2184);
      *(v20 + 12) = bswap32(*(v8 + 175)) + *(a1 + 768);
      v21 = bswap32(*(v8 + 177));
      *(v6 + 8) = v21;
      v22 = bswap32(*(v8 + 179));
      *(v6 + 16) = v22;
      *(v6 + 24) = bswap32(*(v8 + 181));
      v23 = bswap32(*(v8 + 183));
      *(v6 + 32) = v23;
      v24 = bswap32(*(v8 + 185));
      *(v6 + 40) = v24;
      if (*a1 == 7)
      {
        *(v6 + 80) = bswap32(*(v8 + 187));
        *(a1 + 2094) = v8[757];
      }

      else
      {
        *(a1 + 2094) = v8[749];
        *(a1 + 2090) = v8[769];
        *(a1 + 2091) = v8[761];
        *(a1 + 2092) = v8[763];
      }

      v25 = v8[387];
      if (v25 > 0x25)
      {
        LOBYTE(v25) = 0;
      }

      *(a1 + 2069) = v25;
      *(v20 + 55) = v25;
      *(v20 + 68) = bswap32(*(v8 + 252)) >> 16;
      v26 = bswap32(*(v8 + 196)) >> 16;
      *(v20 + 2) = v26;
      *(v6 + 4) = v21 - v19;
      *(v20 + 4) = bswap32(*(v8 + 256)) >> 16;
      *(v6 + 12) = v22 - v21;
      *(v6 + 20) = bswap32(*(v8 + 245)) >> 16;
      *(v6 + 28) = 256;
      *(v20 + 48) = bswap32(*(v8 + 251)) >> 16;
      *(v20 + 54) = v8[501];
      *(v6 + 36) = v24 - v23;
      v27 = malloc_type_calloc(1uLL, 8 * v26, 0x100004077774924uLL);
      *(v6 + 88) = v27;
      if (!v27)
      {
        return 8;
      }

      if (*a1 != 7 && *(a1 + 2094))
      {
        v28 = 3 * *(a1 + 2094);
        if ((v28 & 7) != 0)
        {
          v29 = (v28 >> 3) + 1;
        }

        else
        {
          v29 = v28 >> 3;
        }

        *(v6 + 112) = v29;
        v30 = malloc_type_calloc(v29, 1uLL, 0x100004077774924uLL);
        *(v6 + 104) = v30;
        if (!v30)
        {
          return 8;
        }

        *(v6 + 112) *= 8;
      }

      v31 = malloc_type_calloc(*(v6 + 12), 1uLL, 0x100004077774924uLL);
      *(*(a1 + 2184) + 1184) = v31;
      if (!v31)
      {
        return 8;
      }

      SLSeek(v41[0], *(a1 + 768) + *(v6 + 8), 0);
      if (SLFRead(v41[0], *(v6 + 12), *(*(a1 + 2184) + 1184), &v41[1]) == 8)
      {
        return 8;
      }

      v32 = *(*(a1 + 2184) + 1184);
      v33 = (bswap32(*v32) >> 16) - 1;
      v34 = *(a1 + 2192);
      v34[1065] = v33;
      v35 = bswap32(v32[1]) >> 16;
      v34[1063] = v35;
      v34[1064] = v33 + 2 * v35;
      v34[1066] = (bswap32(v32[2]) >> 16) - 1;
      v36 = malloc_type_calloc(*(v6 + 20), 1uLL, 0x100004077774924uLL);
      *(*(a1 + 2184) + 40) = v36;
      if (!v36)
      {
        return 8;
      }

      SLSeek(v41[0], *(a1 + 768) + *(v6 + 16), 0);
      if (SLFRead(v41[0], *(v6 + 20), *(*(a1 + 2184) + 40), &v41[1]) == 8)
      {
        return 8;
      }

      SLSeek(v41[0], *(a1 + 768) + *(v6 + 24), 0);
      if (SLFRead(v41[0], *(v6 + 28), *(v6 + 96), &v41[1]) == 8)
      {
        return 8;
      }

      v37 = malloc_type_calloc(*(v6 + 36), 1uLL, 0x100004077774924uLL);
      if (!v37)
      {
        return 8;
      }

      v38 = v37;
      SLSeek(v41[0], *(a1 + 768) + *(v6 + 32), 0);
      if (SLRead(v41[0], *(v6 + 36), v38, &v41[1]) == 8)
      {
        return 8;
      }

      *(v6 + 72) = OpenOutputBuffer(*(*(a1 + 2184) + 2));
      get_counts(v38, *(v6 + 48));
      free(v38);
      *(v6 + 64) = build_tree(*(v6 + 48));
      **(a1 + 2184) = 0;
      v39 = *(a1 + 2192);
      *(v39 + 16) = -1;
      *(v39 + 2) = 0;
      v40 = SLLngToA(*(a1 + 2069));
      v13 = 0;
      *(*(a1 + 2184) + 56) = v40;
      if (!v40)
      {
        return 8;
      }
    }

    else
    {
      v13 = 8;
    }

    free(v8);
  }

  return v13;
}

unsigned __int8 *get_counts(unsigned __int8 *result, uint64_t a2)
{
  for (i = 0; i != 2048; i += 8)
  {
    *(a2 + i) = 0;
  }

  v3 = *result;
  v4 = 2;
  for (j = 1; ; j = (v7 + 1))
  {
    v6 = result[j];
    if (v3 <= v6)
    {
      v3 = v3;
      do
      {
        v7 = v4 + 1;
        *(a2 + 8 * v3++) = result[v4++];
      }

      while (v6 >= v3);
    }

    else
    {
      v7 = v4;
    }

    v3 = result[v7];
    if (!result[v7])
    {
      break;
    }

    v4 = v7 + 2;
  }

  *(a2 + 2048) = 1;
  return result;
}

uint64_t PDsort(uint64_t a1)
{
  v1 = *(a1 + 2168);
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  vpHash_index_tab = v2;
  vpRam_buff = v3;
  v4 = *(v1 + 4);
  if (*(v1 + 4))
  {
    v5 = 0;
    v6 = v2;
    v7 = v2 + 2 * v4;
    do
    {
      v8 = *v6;
      if (v8 <= 0xFFFD)
      {
        v9 = v5++;
        *(v2 + 2 * v9) = v8;
      }

      ++v6;
    }

    while (v6 < v7);
  }

  else
  {
    v5 = 0;
  }

  return HeapSort(v5);
}

uint64_t HeapSort(uint64_t result)
{
  if (result >= 2)
  {
    viHeapLast = result - 1;
    v1 = (result - 2) >> 1;
    do
    {
      v2 = v1;
      result = DownHeap_0(v1--);
    }

    while (v2);
    for (i = viHeapLast; viHeapLast; i = viHeapLast)
    {
      v4 = vpHash_index_tab;
      v5 = *vpHash_index_tab;
      *vpHash_index_tab = *(vpHash_index_tab + 2 * i);
      viHeapLast = i - 1;
      *(v4 + 2 * i) = v5;
      result = DownHeap_0(0);
    }
  }

  return result;
}

uint64_t DownHeap_0(uint64_t result)
{
  v1 = result;
  v2 = vpHash_index_tab;
  v3 = *(vpHash_index_tab + 2 * result);
  v4 = viHeapLast;
  v26 = (viHeapLast - 1) >> 1;
  if (v26 >= result)
  {
    v24 = vpRam_buff + 2;
    v25 = vpRam_buff;
    v20 = *(vpHash_index_tab + 2 * result);
    v23 = vpRam_buff + v3;
    v21 = viHeapLast;
    v22 = *(vpRam_buff + v3 + 2);
    while (1)
    {
      v6 = 2 * v1;
      if (((2 * v1) & 0xFFFEu) >= v4)
      {
        v10 = 0;
        v8 = 0;
        v9 = 0;
      }

      else
      {
        v7 = *(v2 + 2 * ((2 * v1) | 1u));
        v8 = v25 + v7;
        v9 = *(v24 + v7);
        v10 = 3;
      }

      v11 = v6 + 2;
      if (v4 >= (v6 + 2))
      {
        v14 = *(v2 + 2 * (v6 + 2));
        v12 = v25 + v14;
        v13 = *(v24 + v14);
      }

      else
      {
        v12 = 0;
        v13 = 0;
      }

      v15 = AsciiStrCmp((v8 + v10), v9, (v12 + v10), v13);
      v16 = v15;
      v17 = v15 < 0 ? v12 : v8;
      v18 = v15 < 0 ? v13 : v9;
      result = AsciiStrCmp((v23 + 3), v22, (v17 + v10), v18);
      if ((result & 0x80000000) == 0)
      {
        break;
      }

      v19 = v1;
      if (v16 < 0)
      {
        v1 = v11;
      }

      else
      {
        v1 = (2 * v1) | 1;
      }

      v5 = v1;
      *(v2 + 2 * v19) = *(v2 + 2 * v1);
      v4 = v21;
      if (v26 < v1)
      {
        goto LABEL_23;
      }
    }

    v5 = v1;
LABEL_23:
    LOWORD(v3) = v20;
  }

  else
  {
    v5 = result;
  }

  *(v2 + 2 * v5) = v3;
  return result;
}

uint64_t AsciiStrCmp(unsigned __int8 *a1, unsigned __int16 a2, unsigned __int8 *a3, int a4)
{
  if (a4 < 1)
  {
    return 0;
  }

  else if (a2 < 1)
  {
    return -1;
  }

  else
  {
    v4 = 0;
    while (1)
    {
      v5 = *a1;
      v6 = *a3;
      if (((v6 ^ v5) & 0xFFFFFFDF) != 0)
      {
        break;
      }

      ++a1;
      ++a3;
      if (++v4 >= a2)
      {
        v4 = a2;
        goto LABEL_11;
      }
    }

    if (a4 > v4)
    {
      return ((v5 | 0x20) - (v6 | 0x20));
    }

LABEL_11:
    if (v4 == a2)
    {
      return -1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t PDsavsort(unsigned int a1, int a2)
{
  v3 = *(*(*pMCPbuff + 8 * a1) + 2168);
  if (a2)
  {
    v4 = malloc_type_calloc(1uLL, 2 * *(v3 + 2), 0x1000040BDFB0063uLL);
    v5 = *pMCPbuff;
    *(*(*(*pMCPbuff + 8 * a1) + 2168) + 64) = v4;
    if (v4)
    {
      v6 = *(*(v5 + 8 * a1) + 2168);
      memcpy(*(v6 + 64), *(v6 + 32), *(v6 + 2));
      return 0;
    }

    else
    {
      return 8;
    }
  }

  else
  {
    memcpy(*(v3 + 32), *(v3 + 64), *(v3 + 2));
    free(*(*(*(*pMCPbuff + 8 * a1) + 2168) + 64));
    result = 0;
    *(*(*(*pMCPbuff + 8 * a1) + 2168) + 64) = 0;
  }

  return result;
}

uint64_t PDSFcorbru(void *a1, _WORD *a2, uint64_t a3, unsigned __int16 a4, uint64_t a5, unsigned __int16 a6, unsigned int a7, unsigned int a8, int a9, __int16 a10)
{
  v12 = 0;
  v13 = (a7 + 0xFFFF) >> 16;
  v88 = (a7 - 1);
  v14 = a10;
  v80 = (a8 - 1);
  v81 = a1[7];
  v82 = v13 & ((a8 + 0xFFFF) >> 16);
  v83 = v13 & ((a9 + 0xFFFF) >> 16);
  v15 = (a2 + 1082);
  v79 = a1 + 23;
  v85 = v13 & ((HIWORD(a9) + 0xFFFF) >> 16);
  v91 = a2;
  v89 = (a2 + 1082);
LABEL_2:
  v16 = 0;
  v17 = -v12;
  v18 = (a4 - a6);
  if (v18 >= 0)
  {
    v19 = (a4 - a6);
  }

  else
  {
    v19 = -v18;
  }

  v20 = 1;
  v84 = v19;
  while (1)
  {
    v21 = a6;
    v22 = a4;
    if ((a6 & 0x8000) != 0 || (a4 & 0x8000) != 0)
    {
      if ((v20 & (v12 != 0)) != 1)
      {
        return 0;
      }

      goto LABEL_107;
    }

    if (v19 > v14)
    {
      if ((v20 & (v12 != 0)) == 0)
      {
        return 0;
      }

      goto LABEL_107;
    }

    LOWORD(v23) = 0;
    v24 = a4 != 0;
    v25 = a6 != 0;
    if (a4 && a6)
    {
      v23 = 0;
      while (*(a3 + v23) == *(a5 + v23))
      {
        v25 = ++v23 < a6;
        v24 = v23 < a4;
        if (v23 >= a4 || v23 >= a6)
        {
          goto LABEL_21;
        }
      }

      v24 = 1;
      v25 = 1;
    }

LABEL_21:
    v26 = v23;
    if (v23 == a4 && a6 == v23)
    {
      return 1;
    }

    if (a7)
    {
      if (v24 && v25)
      {
        if (a8)
        {
          v27 = (a3 + v23);
          if ((*(v81 + 4 * *v27) & 0x10000000) != 0 && (*(v81 + 4 * *(a5 + v26)) & 0x10000000) != 0)
          {
            WORD2(v78) = a10;
            v28 = (a4 + ~v26);
            v29 = (a6 + ~v26);
            v30 = (v27 + 1);
            v31 = a5 + v26 + 1;
            LODWORD(v78) = a9;
            v32 = a1;
            v33 = v91;
            v34 = v88;
            v35 = v80;
            goto LABEL_42;
          }
        }

        if (a9)
        {
          WORD2(v78) = a10;
          WORD1(v78) = HIWORD(a9);
          v28 = (a4 + ~v26);
          v29 = (a6 + ~v26);
          v30 = a3 + v26 + 1;
          v31 = a5 + v26 + 1;
          LOWORD(v78) = a9 - 1;
          v32 = a1;
          v33 = v91;
          v34 = v88;
          v35 = a8;
LABEL_42:
          v37 = PDSFcorbru(v32, v33, v30, v28, v31, v29, v34, v35, v78);
          v15 = v89;
          a2 = v91;
          if (v37)
          {
            return 1;
          }
        }
      }

LABEL_43:
      if ((v16 & 1) == 0)
      {
        v46 = v26 + 1;
        if (v26 + 1 < v22 && v46 < v21 && *(a3 + v26) == *(a5 + v46) && *(a3 + v46) == *(a5 + v26) && a2[1073] != 4)
        {
          v75 = 2;
          goto LABEL_109;
        }

        v47 = v26 + 2;
        if (v26 + 2 < v22 && v47 < v21 && *(a3 + v26) == *(a5 + v47) && *(a3 + v46) == *(a5 + v46) && *(a3 + v47) == *(a5 + v26) && a2[1073] != 4)
        {
          v75 = 3;
LABEL_109:
          v76 = (v75 + v26);
          v12 += v76;
          a3 += v76;
          a4 = v22 - v76;
          a5 += v76;
          a6 = v21 - v76;
          v14 = a10;
          goto LABEL_2;
        }
      }

      if (v24)
      {
        if (v26 || a2[1075] > v22)
        {
          v38 = (a3 + v26);
          if (*v38 == *(v38 - 1))
          {
            WORD2(v78) = a10 - 1;
            v39 = (v21 - v26);
            v40 = (v22 + ~v26);
            v41 = (v38 + 1);
            v42 = a5 + v26;
            v43 = a7;
            LODWORD(v78) = a9;
            v44 = a1;
            v45 = v91;
            goto LABEL_65;
          }
        }

        if (v82)
        {
          v48 = (a3 + v26);
          if ((*(v81 + 4 * *v48) & 0x10000000) != 0)
          {
            WORD2(v78) = a10 - 1;
            v39 = (v21 - v26);
            v40 = (v22 + ~v26);
            v41 = (v48 + 1);
            v42 = a5 + v26;
            LODWORD(v78) = a9;
            v44 = a1;
            v45 = v91;
            v43 = v88;
            v49 = v80;
            goto LABEL_67;
          }
        }

        if (v83)
        {
          v42 = a5 + v26;
          WORD2(v78) = a10 - 1;
          WORD1(v78) = HIWORD(a9);
          v39 = (v21 - v26);
          v40 = (v22 + ~v26);
          v41 = a3 + v26 + 1;
          LOWORD(v78) = a9 - 1;
          v44 = a1;
          v45 = v91;
          v43 = v88;
LABEL_65:
          v49 = a8;
LABEL_67:
          v50 = PDSFcorbru(v44, v45, v41, v40, v42, v39, v43, v49, v78);
          v15 = v89;
          a2 = v91;
          if (v50)
          {
            return 1;
          }
        }
      }

      if (v25)
      {
        if ((v26 || a2[1076] > v21) && (v51 = (a5 + v26), *v51 == *(v51 - 1)))
        {
          WORD2(v78) = a10 - 1;
          v52 = (v22 - v26);
          v53 = (v21 + ~v26);
          v54 = a3 + v26;
          v55 = v51 + 1;
          v56 = a7;
          LODWORD(v78) = a9;
          v57 = a1;
          v58 = v91;
          v59 = a8;
LABEL_76:
          v61 = PDSFcorbru(v57, v58, v54, v52, v55, v53, v56, v59, v78);
          v15 = v89;
          a2 = v91;
          if (v61)
          {
            return 1;
          }
        }

        else if (v82)
        {
          v60 = (a5 + v26);
          if ((*(v81 + 4 * *v60) & 0x10000000) != 0)
          {
            WORD2(v78) = a10 - 1;
            v52 = (v22 - v26);
            v53 = (v21 + ~v26);
            v54 = a3 + v26;
            v55 = v60 + 1;
            LODWORD(v78) = a9;
            v57 = a1;
            v58 = v91;
            v56 = v88;
            v59 = v80;
            goto LABEL_76;
          }
        }

        if (v83)
        {
          WORD2(v78) = a10 - 1;
          WORD1(v78) = HIWORD(a9);
          LOWORD(v78) = a9 - 1;
          v62 = PDSFcorbru(a1, v91, a3 + v26, (v22 - v26), a5 + v26 + 1, (v21 + ~v26), v88, a8, v78);
          v15 = v89;
          a2 = v91;
          if (v62)
          {
            return 1;
          }
        }
      }

      v14 = a10;
      if (v85)
      {
        v63 = *v15;
        if (v63 != 255)
        {
          v64 = 0;
          while (1)
          {
            v65 = (v21 - v63);
            if (v26 < (v21 - v63))
            {
              if (v65 > v26)
              {
                goto LABEL_105;
              }

              goto LABEL_104;
            }

            v66 = v15[v64 + 1];
            v67 = *(a1[19] + 8 * v66);
            if (*v67 == *(a3 + (v21 - v63)))
            {
              break;
            }

LABEL_104:
            v64 += 2;
            v63 = v15[v64];
            if (v63 == 255)
            {
              goto LABEL_105;
            }
          }

          v68 = *(a1[21] + v66);
          if (v68 != 2)
          {
            if (v68 != 3)
            {
              if (v68 != 4)
              {
LABEL_92:
                v69 = v63;
                v70 = *(a1[22] + v66);
                if (a2[1] || (v70 + v65 == v21 ? (v71 = 1) : (v71 = 2), a2[1076] == v21 ? (v72 = v21 == v69) : (v72 = 0), !v72 ? (v73 = v71) : (v73 = 4), (v73 & *(v79 + v66 - 1)) != 0))
                {
                  WORD2(v78) = a10;
                  LODWORD(v78) = a9 - 0x10000;
                  v74 = PDSFcorbru(a1, v91, a3 + v65 + v68, (v22 - v65 - v68), a5 + v65 + v70, (v69 - v70), v88, a8, v78);
                  v15 = v89;
                  a2 = v91;
                  if (v74)
                  {
                    return 1;
                  }
                }

                goto LABEL_104;
              }

              if (v67[3] != *(a3 + v65 + 3))
              {
                goto LABEL_104;
              }
            }

            if (v67[2] != *(a3 + v65 + 2))
            {
              goto LABEL_104;
            }
          }

          if (v67[1] != *(a3 + v65 + 1))
          {
            goto LABEL_104;
          }

          goto LABEL_92;
        }
      }

LABEL_105:
      v36 = v20 & (v12 != 0);
      goto LABEL_106;
    }

    if ((!v25 || *(a3 + v23) == *(a5 + v23 + 1)) && (!v24 || *(a3 + v23 + 1) == *(a5 + v23)) || !v23 && a2[1075] <= a4 || *(a3 + v23) == *(a3 + v23 - 1) || !v23 && a2[1076] <= a6 || *(a5 + v23) == *(a5 + v23 - 1))
    {
      goto LABEL_43;
    }

    v36 = v20 & (v12 != 0);
    v14 = a10;
LABEL_106:
    v17 = -v12;
    v19 = v84;
    if ((v36 & 1) == 0)
    {
      return 0;
    }

LABEL_107:
    v20 = 0;
    a3 += v17;
    a5 += v17;
    a4 = v12 + v22;
    a6 = v12 + v21;
    v16 = 1;
  }
}

uint64_t PDSFaccent(unsigned __int8 *a1, int a2, uint64_t a3, unsigned __int16 *a4)
{
  v106 = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 55) != 8 || (a4[1741] & 0x40) == 0 || *a4 != 3;
  v103 = 0;
  v7 = *(a3 + 56);
  v8 = *(*(a4 + 4) + 32);
  v9 = *(a3 + 136);
  a4[1062] = 0;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = a2;
    v11 = a2;
    v12 = v8;
    do
    {
      v14 = *a1++;
      v13 = v14;
      v15 = *(v7 + 4 * v14);
      if ((v15 & 0x4064000) != 0 && ((v15 >> 18) & 1 & ~v6) == 0)
      {
        if (*(a3 + 55) == 15)
        {
          if (v13 == 1)
          {
            LOBYTE(v13) = 1;
          }

          else if ((v15 & 0x4020000) != 0)
          {
            LOBYTE(v13) = v13 - 1;
          }
        }

        else if (v13 != 0xE0 && ((0x61A300E8uLL >> (v13 + 32)) & 1) == 0)
        {
          LOBYTE(v13) = Lat_1_acc[v13 - 224];
        }
      }

      *v12++ = v13;
      --v11;
    }

    while (v11);
  }

  v16 = 0;
  v8[v10] = 0;
  memset(v105, 0, 224);
  memset(v104, 0, sizeof(v104));
  *(v104 + v8[1]) = 1;
  memset(&v105[14], 0, 32);
  *(v105 + *v8) = 1;
  if (!*(a3 + 104) || a2 < 1)
  {
    goto LABEL_106;
  }

  v95 = v6;
  v17 = 0;
  v18 = 0;
  v93 = v9;
  v94 = (a4 + 1082);
  v19 = a2;
  LOWORD(v20) = a4[1081];
  do
  {
    v21 = 0;
    do
    {
      if (SLstrncmp(*(*(a3 + 160) + 8 * ((v20 + v21) >> 1)), &v8[v17], *(*(a3 + 176) + ((v20 + v21) >> 1))) >= 0)
      {
        LOWORD(v20) = (v20 + v21) >> 1;
      }

      else
      {
        v21 = (v20 + v21) >> 1;
      }
    }

    while (v20 - v21 > 1);
    do
    {
      v22 = v20;
      if (*(*(a3 + 176) + v20) == 1 && *(*(a3 + 168) + v20) == 1 && **(*(a3 + 160) + 8 * v20) == v8[v17] && (*(v7 + 4 * **(*(a3 + 152) + 8 * v20)) & 0x4064000) != (*(v7 + 4 * **(*(a3 + 160) + 8 * v20)) & 0x4064000) && ((*(v7 + 4 * **(*(a3 + 152) + 8 * v20)) >> 18) & 1 & ~v95) == 0)
      {
        v94[v18] = a2 - v17;
        v23 = v18 + 1;
        v18 += 2;
        v94[v23] = v20;
        if (v17)
        {
          if (v17 != 1)
          {
            goto LABEL_38;
          }

          v24 = v104;
        }

        else
        {
          v24 = v105;
        }

        *(v24 + **(*(a3 + 152) + 8 * v20)) = 1;
      }

      else
      {
        v20 = a4[1081];
        if (v22 >= v20 || **(*(a3 + 160) + 8 * v22) > v8[v17])
        {
          goto LABEL_42;
        }
      }

LABEL_38:
      v20 = (v22 + 1);
    }

    while (v20 < a4[1081]);
    LOWORD(v20) = a4[1081];
LABEL_42:
    ++v17;
  }

  while (v17 != v19);
  if (v18)
  {
    v94[v18] = -1;
    v94[(v18 + 1)] = -1;
    v102 = 0;
    v25 = *(a3 + 1184);
    v26 = a4[1064];
    v27 = a4[1063];
    v28 = (v25 + v27 + v26);
    v29 = *v28;
    v30 = (v25 + v26);
    v31 = *v30;
    v32 = v28[1];
    v33 = v30[1];
    v34 = a4[1065];
    v35 = *(v25 + v34);
    v36 = *(v25 + v34 + v27);
    v98 = *(v25 + v34);
    v99 = v36;
    if (v27 >= 2)
    {
      v37 = 0;
      v38 = 0;
      v39 = (v32 | (v33 << 8)) - 1;
      v40 = (v29 | (v31 << 8)) - 1;
      LOWORD(v41) = 1;
      do
      {
        v42 = *(a3 + 1184);
        if (v40 >= v39)
        {
          v41 = v41 + 1;
          v43 = a4[1065];
          v35 = *(v42 + v43 + v41 - 1);
          v44 = v27 + v41;
          v36 = *(v42 + v43 + v44 - 1);
          v98 = *(v42 + v43 + v41 - 1);
          v45 = a4[1064];
          v46 = *(v42 + v45 + v44);
          LODWORD(v45) = *(v42 + v45 + v41);
          v99 = v36;
          v47 = v46 | (v45 << 8);
          v40 = v39;
          v39 = v47 - 1;
        }

        v48 = v40 + 1;
        v49 = *(v42 + (v40 + 1) - 1);
        if (v49 == 255)
        {
          v40 += 3;
          v52 = v40;
          v51 = (v42 + v40 - 2);
        }

        else
        {
          v50 = a4[1066] + v49;
          v51 = (v42 + v50 - 1);
          v52 = v50 + 256;
          v40 = v48;
        }

        v53 = *(v42 + v52 - 1);
        if (*v51)
        {
          v37 = *v51;
        }

        v100 = v37;
        if (v53)
        {
          v38 = v53;
        }

        v101 = v38;
        v56 = v38 == 32 && v37 == 32 && v36 != 32;
        if (*(v105 + v35) && *(v104 + v36))
        {
          if (v56)
          {
            goto LABEL_82;
          }

          v57 = *v94;
          if (v57 == 255)
          {
            goto LABEL_80;
          }

          v58 = 0;
          v59 = 0;
          do
          {
            v60 = a2 - v57;
            if ((v60 & 0xFFFE) == 2 && *(&v98 + v60) == **(*(a3 + 152) + 8 * v94[v59 + 1]))
            {
              ++v58;
            }

            v59 += 2;
            v57 = v94[v59];
          }

          while (v57 != 255);
          if (!v58)
          {
LABEL_80:
            if (v38 != 32 && v38 != v8[3])
            {
              continue;
            }
          }

          else if (v38 == 32 || v58 != 1 || v38 == v8[3])
          {
LABEL_82:
            if (a4[1062] > 499)
            {
              break;
            }

            v61 = 0;
            v62 = a4 + 60;
            do
            {
              LOBYTE(v62[2 * a4[1062]]) = *(&v98 + v61++);
              v62 = (v62 + 1);
            }

            while (v61 != 4);
            ++a4[1062];
            LOWORD(v27) = a4[1063];
            continue;
          }

          if (v37 == v8[2])
          {
            goto LABEL_82;
          }
        }

        else
        {
          v40 = v39;
        }
      }

      while (v41 < v27);
    }

    v63 = *a4;
    if (v63 <= 99)
    {
      *a4 = 101;
      a4[1742] |= 0x200u;
      v64 = *(a3 + 128);
      v65 = 255;
      do
      {
        *(a4 + 2148) = ++v65;
        v66 = (v64 + v65);
        v67 = *v66;
        v68 = &v66[v93];
        a4[1072] = v67;
        v69 = *v68;
        a4[1073] = v69;
        v70 = &v68[v93];
        v71 = *v70;
        v72 = &v70[v93];
        a4[1068] = v71;
        a4[1069] = *v72;
        v73 = &v72[v93];
        v74 = *v73;
        v75 = &v73[v93];
        a4[1070] = v74;
        a4[1071] = *v75;
        v76 = &v75[v93];
        v77 = *v76;
        v78 = &v76[v93];
        a4[1067] = v77;
        a4[1077] = *v78;
        v79 = &v78[v93];
        v80 = *v79;
        v81 = &v79[v93];
        a4[1078] = v80;
        a4[1079] = *v81;
        a4[1080] = v81[v93];
      }

      while (v69 != 4);
    }

    v82 = a4 + 60;
    *(a4 + 14) = a4 + 60;
    if (a4[1062] >= 1)
    {
      v83 = 0;
      do
      {
        if (SLstrncmp(*(a4 + 14), &v82[2 * v83], 4) <= 0)
        {
          *(a4 + 14) = &v82[2 * v83];
          v97[0] = *&v82[2 * v83];
          v84 = *(a3 + 54);
          if (v84 >= 5)
          {
            v85 = 4;
            do
            {
              *(v97 + v85++) = 0;
            }

            while (v84 > v85);
          }

          v86 = SFbisrch(v97, 0, v84 - 1, &v103, a3);
          v87 = *(a3 + 54);
          if (v87 >= 5)
          {
            v88 = 4;
            do
            {
              *(v97 + v88++) = -1;
            }

            while (v87 > v88);
          }

          v89 = SFbisrch(v97, 0, v87 - 1, &v103, a3);
          v90 = v89 - v86 + v103;
          v103 = v90;
          if (*(a4 + 3194) == 1)
          {
            PDdecod2(v8, a2, v86, v90, a3, a4);
          }
        }

        ++v83;
      }

      while (v83 < a4[1062]);
    }

    *a4 = v63;
    if (v63 == 3)
    {
      a4[1742] &= ~0x200u;
    }

    v16 = a4[20];
  }

  else
  {
    v16 = 0;
  }

LABEL_106:
  v91 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t LMargin(uint64_t a1, int a2, int a3)
{
  if (!a3)
  {
    v3 = 1;
    return *(a1 + v3);
  }

  if (a2)
  {
    v3 = 2;
    return *(a1 + v3);
  }

  if (*(a1 + 4) <= a3)
  {
    v3 = 6;
    if (!*(a1 + 5) || *(a1 + 5) >= a3)
    {
      return *(a1 + v3);
    }
  }

  return 0;
}

uint64_t RMargin(unsigned __int8 *a1, int a2, int a3)
{
  if (a2)
  {
    return *a1;
  }

  if (!a3)
  {
    a1 += 3;
    return *a1;
  }

  if (a1[4] <= a3 && (!a1[5] || a1[5] >= a3))
  {
    a1 += 7;
    return *a1;
  }

  return 0;
}

uint64_t inithyphen(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 1116))
  {
    *(a3 + 1116) = 1;
    *(a3 + 1112) = 45;
    *(a3 + 1114) = 11520;
  }

  *v18 = 0;
  if (SLOpen(a1, a2, &v18[1], 0) == 8)
  {
    return 0;
  }

  result = malloc_type_malloc(0x400uLL, 0x100004077774924uLL);
  if (result)
  {
    v5 = result;
    result = malloc_type_calloc(2uLL, 0x2454uLL, 0xA2DA24AEuLL);
    brtable = result;
    if (result)
    {
      result = malloc_type_malloc(0x2454uLL, 0xE7A63B4BuLL);
      keytable = result;
      if (result)
      {
        if (SLFRead(v18[1], 1024, v5, v18) == 8)
        {
LABEL_9:
          SLClose(v18[1]);
          free(v5);
          return 0;
        }

        v6 = v18[0];
        if (LOWORD(v18[0]))
        {
          v7 = 0;
          v8 = v5;
          while (1)
          {
            --v6;
            v10 = *v8++;
            v9 = v10;
            switch(v10)
            {
              case ' ':
                v9 = 115;
                break;
              case '$':
                goto LABEL_62;
              case '+':
                v9 = 55;
                break;
              case '-':
                v9 = 56;
                break;
              case '0':
                v9 = 32;
                break;
              case '1':
                v9 = 105;
                break;
              case '2':
                v9 = 104;
                break;
              case '3':
                v9 = 103;
                break;
              case '4':
                v9 = 102;
                break;
              case '5':
                v9 = 101;
                break;
              case '6':
                v9 = 100;
                break;
              case '7':
                v9 = 99;
                break;
              case '8':
                v9 = 98;
                break;
              case '9':
                v9 = 97;
                break;
              case '?':
                v9 = 57;
                break;
              case 'a':
                v9 = 106;
                break;
              case 'b':
                v9 = 116;
                break;
              case 'c':
                v9 = 117;
                break;
              case 'd':
                v9 = 118;
                break;
              case 'e':
                v9 = 107;
                break;
              case 'f':
                v9 = 119;
                break;
              case 'g':
                v9 = 120;
                break;
              case 'h':
                v9 = 121;
                break;
              case 'i':
                v9 = 108;
                break;
              case 'j':
                v9 = 122;
                break;
              case 'k':
                v9 = 125;
                break;
              case 'l':
                v9 = 123;
                break;
              case 'm':
                v9 = 124;
                break;
              case 'n':
                v9 = 43;
                break;
              case 'o':
                v9 = 109;
                break;
              case 'p':
                v9 = 45;
                break;
              case 'q':
                v9 = 63;
                break;
              case 'r':
                v9 = 48;
                break;
              case 's':
                v9 = 49;
                break;
              case 't':
                v9 = 50;
                break;
              case 'u':
                v9 = 110;
                break;
              case 'v':
                v9 = 51;
                break;
              case 'w':
                v9 = 52;
                break;
              case 'x':
                v9 = 53;
                break;
              case 'y':
                v9 = 111;
                break;
              case 'z':
                v9 = 54;
                break;
              case '{':
                v9 = 113;
                break;
              case '|':
                v9 = 114;
                break;
              case '}':
                v9 = 112;
                break;
              default:
                break;
            }

            *(keytable + v7) = v9;
            if (!v6)
            {
              if (SLFRead(v18[1], 1024, v5, v18) == 8)
              {
                free(v5);
                SLClose(v18[1]);
                return 0;
              }

              v6 = v18[0];
              v8 = v5;
            }

            ++v7;
            if (!v6)
            {
              v6 = -1;
              goto LABEL_62;
            }
          }
        }

        v6 = -1;
        v8 = v5;
LABEL_62:
        v11 = 0;
LABEL_63:
        v12 = 0;
        while (1)
        {
          if (!v6)
          {
            if (SLFRead(v18[1], 1024, v5, v18) == 8)
            {
              goto LABEL_9;
            }

            v6 = v18[0];
            v8 = v5;
          }

          v14 = *v8++;
          v13 = v14;
          if (v14 == 36)
          {
            break;
          }

          --v6;
          if (v13 == 32)
          {
            *(brtable + 2 * v11++) = v12;
            goto LABEL_63;
          }

          v12 *= 16;
          if (v13 > 55)
          {
            if (v13 > 98)
            {
              if (v13 > 100)
              {
                if (v13 == 101)
                {
                  v12 |= 0xEu;
                }

                else
                {
                  if (v13 != 102)
                  {
                    return 0;
                  }

                  v12 |= 0xFu;
                }
              }

              else if (v13 == 99)
              {
                v12 |= 0xCu;
              }

              else
              {
                v12 |= 0xDu;
              }
            }

            else if (v13 > 96)
            {
              if (v13 == 97)
              {
                v12 |= 0xAu;
              }

              else
              {
                v12 |= 0xBu;
              }
            }

            else if (v13 == 56)
            {
              v12 |= 8u;
            }

            else
            {
              if (v13 != 57)
              {
                return 0;
              }

              v12 |= 9u;
            }
          }

          else if (v13 > 51)
          {
            if (v13 > 53)
            {
              if (v13 == 54)
              {
                v12 |= 6u;
              }

              else
              {
                v12 |= 7u;
              }
            }

            else if (v13 == 52)
            {
              v12 |= 4u;
            }

            else
            {
              v12 |= 5u;
            }
          }

          else if (v13 > 49)
          {
            if (v13 == 50)
            {
              v12 |= 2u;
            }

            else
            {
              v12 |= 3u;
            }
          }

          else if (v13 != 48)
          {
            if (v13 != 49)
            {
              return 0;
            }

            v12 |= 1u;
          }
        }

        free(v5);
        SLClose(v18[1]);
        v15 = -1;
        do
        {
          ++v15;
        }

        while (*(keytable + v15) != 32);
        *(a3 + 1110) = v15;
        v16 = brtable;
        v17 = 9300;
        do
        {
          if (!*v16)
          {
            *v16 = v15;
          }

          ++v16;
          --v17;
        }

        while (v17);
        return 1;
      }
    }
  }

  return result;
}