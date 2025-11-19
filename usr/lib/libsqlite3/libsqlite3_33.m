uint64_t sub_1819E0398(uint64_t result, uint64_t a2)
{
  if (!*(result + 60))
  {
    v13[3] = v2;
    v13[4] = v3;
    v4 = *(a2 + 32);
    if (*(*result + 116) == 1)
    {
      v5 = *(a2 + 68);
      v6 = *(a2 + 16);
      if (v5 >= *(v6 + 3))
      {
        v5 = *(v6 + 3);
      }

      *(a2 + 124) = 0;
      *(a2 + 120) = 1;
      if (v5 <= v4 || (v7 = *v6, *(*v6 + v4)))
      {
        LODWORD(v8) = v4;
      }

      else
      {
        *(a2 + 124) = 1;
        v8 = v4 + 1;
        if (v8 >= v5 || *(v7 + v8))
        {
          *(a2 + 120) = 0;
        }

        else
        {
          *(a2 + 120) = 1;
          LODWORD(v8) = v4 + 2;
        }
      }
    }

    else
    {
      result = **(a2 + 16) + v4;
      v9 = *result;
      if (*result < 0)
      {
        v10 = *(result + 1);
        if (*(result + 1) < 0)
        {
          v11 = *(result + 2);
          if (v11 < 0)
          {
            v13[0] = 0;
            v12 = a2;
            result = sub_1819DFFB0(result, v13);
            a2 = v12;
            v9 = v13[0] & 0x7FFFFFFF;
          }

          else
          {
            v9 = ((v9 & 0x7F) << 14) | ((v10 & 0x7F) << 7) | v11;
            result = 3;
          }
        }

        else
        {
          v9 = ((v9 & 0x7F) << 7) | v10;
          result = 2;
        }

        LODWORD(v8) = result + v4;
      }

      else
      {
        LODWORD(v8) = v4 + 1;
      }

      *(a2 + 124) = v9 & 1;
      *(a2 + 120) = v9 >> 1;
    }

    *(a2 + 32) = v8;
  }

  return result;
}

uint64_t sub_1819E04E8(uint64_t result, _DWORD *a2, int a3)
{
  v5 = result;
  v6 = a3;
  v7 = &a2[8 * a3];
  v8 = v7[4];
  if (v8 <= v7[6])
  {
    v7[5] = 1;
    goto LABEL_12;
  }

  v9 = **(v7 + 1);
  v7[4] = 0;
  sub_1819DFB20((v7 + 2));
  for (i = v7[4]; ; v7[4] = i)
  {
    v16 = 0;
    v11 = i;
    if (*(v9 + i))
    {
      v12 = 1;
    }

    else
    {
      v12 = 1;
      do
      {
        v13 = *(v9 + 1 + v11++);
        ++v12;
      }

      while (!v13);
      i = v11;
    }

    result = sub_1819DFFB0((v9 + v11), &v16);
    i += result;
    if (i >= v8)
    {
      break;
    }

    v7[7] += v12;
    *(v7 + 4) += v16;
  }

  if (v7[5])
  {
LABEL_12:
    if (a3 + 1 >= *a2)
    {
      return result;
    }

    result = sub_1819E04E8(v5, a2);
    if (v7[13])
    {
      return result;
    }

    v14 = *(v7 + 1);
    if (!v14)
    {
      goto LABEL_21;
    }

    v15 = &off_1ED452EB0;
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
      if (!xmmword_1ED456AF0)
      {
        goto LABEL_21;
      }

      v15 = &xmmword_1ED452F28;
    }

    (*v15)(v14);
LABEL_21:
    *(v7 + 6) = 0u;
    *(v7 + 2) = 0u;
    result = sub_1819DFC90(v5, (v6 << 31) + (a2[1] << 37) + 0x1000000000 + v7[15]);
    *(v7 + 1) = result;
    if (result)
    {
      do
      {
        result = sub_1819DFB20((v7 + 2));
      }

      while (!result);
      v7[5] = 0;
    }
  }

  return result;
}

uint64_t sub_1819E06E0(_DWORD *a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(*a1 + 116);
  v5 = *(a2 + 16);
  v6 = *(a2 + 32);
  v7 = *v5;
  if (*(v5 + 3) >= *(a2 + 68))
  {
    v8 = *(a2 + 68);
  }

  else
  {
    v8 = *(v5 + 3);
  }

  for (i = *(a2 + 32); ; *(a2 + 32) = i)
  {
    v24 = 0;
    if (v4 == 1)
    {
      if (i < v8 && !*(v7 + i))
      {
        v10 = i + 1;
        if (v10 >= v8)
        {
          LODWORD(i) = i + 1;
        }

        else if (*(v7 + v10))
        {
          LODWORD(i) = i + 1;
        }

        else
        {
          LODWORD(i) = i + 2;
        }
      }
    }

    else
    {
      v11 = (v7 + i);
      v12 = *v11;
      if (*v11 < 0)
      {
        v14 = v11[1];
        if (v11[1] < 0)
        {
          v15 = v11[2];
          if (v15 < 0)
          {
            v25 = 0;
            v13 = sub_1819DFFB0(v11, &v25);
            v12 = v25 & 0x7FFFFFFF;
          }

          else
          {
            v12 = ((v12 & 0x7F) << 14) | ((v14 & 0x7F) << 7) | v15;
            v13 = 3;
          }
        }

        else
        {
          v12 = ((v12 & 0x7F) << 7) | v14;
          v13 = 2;
        }
      }

      else
      {
        v13 = 1;
      }

      LODWORD(i) = v13 + i + (v12 >> 1);
    }

    if (i >= v8)
    {
      break;
    }

    v16 = sub_1819DFFB0((v7 + i), &v24);
    *(a2 + 112) += v24;
    v17 = *(a2 + 76);
    v18 = *(a2 + 80);
    if (v3 >= v17)
    {
      v19 = v17 + 8;
      v20 = sqlite3_initialize();
      if (!v19 || v20 || (v21 = sub_18190287C(v18, 4 * v19, 0x100004052888210)) == 0)
      {
        a1[15] = 7;
        break;
      }

      v18 = v21;
      *(a2 + 80) = v21;
      *(a2 + 76) = v19;
      v6 = *(a2 + 32);
    }

    *(v18 + 4 * v3) = v6;
    LODWORD(i) = i + v16;
    ++v3;
    LODWORD(v6) = i;
  }

  *(a2 + 72) = v3;

  return sub_1819E0398(a1, a2);
}

uint64_t *sub_1819E08CC(uint64_t *result, uint64_t *a2, uint64_t a3)
{
  if (*a2 <= a3)
  {
    v3 = a3 & 0x7FFFFFFF00000000;
    if ((a3 & 0x7FFFFFFF00000000) == (*a2 & 0x7FFFFFFF00000000))
    {
      v4 = *(result + 2);
      v3 = *a2;
    }

    else
    {
      v5 = *result;
      v6 = *(result + 2);
      *(result + 2) = v6 + 1;
      *(v5 + v6) = 1;
      v7 = (*result + *(result + 2));
      if ((a3 >> 32) > 0x7F)
      {
        if ((a3 >> 32) >> 14)
        {
          v9 = result;
          v10 = a2;
          v11 = a3;
          v12 = sub_1819436D0((*result + *(result + 2)), a3 >> 32);
          a2 = v10;
          a3 = v11;
          v8 = v12;
          result = v9;
        }

        else
        {
          *v7 = (HIDWORD(a3) >> 7) | 0x80;
          v7[1] = BYTE4(a3) & 0x7F;
          v8 = 2;
        }
      }

      else
      {
        *v7 = BYTE4(a3);
        v8 = 1;
      }

      v4 = *(result + 2) + v8;
      *(result + 2) = v4;
    }

    v13 = (*result + v4);
    v14 = a3 - v3 + 2;
    if (v14 > 0x7F)
    {
      if (v14 >> 14)
      {
        v16 = result;
        v17 = a2;
        v18 = a3;
        v19 = sub_1819436D0(v13, v14);
        a2 = v17;
        a3 = v18;
        v15 = v19;
        result = v16;
      }

      else
      {
        v13->i8[0] = (v14 >> 7) | 0x80;
        v13->i8[1] = v14 & 0x7F;
        v15 = 2;
      }
    }

    else
    {
      v13->i8[0] = v14;
      v15 = 1;
    }

    *(result + 2) += v15;
    *a2 = a3;
  }

  return result;
}

uint64_t sub_1819E0A34(uint64_t a1, int a2, int *a3, uint64_t *a4)
{
  v4 = *a3;
  if (v4 >= a2)
  {
LABEL_28:
    *a4 = -1;
    return 1;
  }

  v5 = *a4;
  v6 = a1 + v4;
  v7 = *(a1 + v4);
  if (*(a1 + v4) < 0)
  {
    v9 = *(v6 + 1);
    if (*(v6 + 1) < 0)
    {
      v10 = *(v6 + 2);
      if (v10 < 0)
      {
        v35 = 0;
        v11 = a1;
        v12 = a4;
        v13 = a3;
        v14 = sub_1819DFFB0((a1 + v4), &v35);
        a3 = v13;
        a4 = v12;
        v8 = v14;
        a1 = v11;
        v7 = v35 & 0x7FFFFFFF;
      }

      else
      {
        v7 = ((v7 & 0x7F) << 14) | ((v9 & 0x7F) << 7) | v10;
        v8 = 3;
      }
    }

    else
    {
      v7 = ((v7 & 0x7F) << 7) | v9;
      v8 = 2;
    }
  }

  else
  {
    v8 = 1;
  }

  v15 = v8 + v4;
  if (v7 > 1)
  {
    v19 = v5 & 0x7FFFFFFF00000000 | (v7 + v5 + 2147483646) & 0x7FFFFFFF;
LABEL_30:
    result = 0;
    *a4 = v19;
    goto LABEL_31;
  }

  if (v7)
  {
    v16 = (a1 + v15);
    v17 = *v16;
    if (*v16 < 0)
    {
      v21 = v16[1];
      if (v16[1] < 0)
      {
        v22 = v16[2];
        if ((v22 & 0x80000000) != 0)
        {
          v35 = 0;
          v23 = a1;
          v24 = a4;
          v25 = a3;
          v26 = sub_1819DFFB0((a1 + v15), &v35);
          a3 = v25;
          a4 = v24;
          v18 = v26;
          a1 = v23;
          v17 = v35 & 0x7FFFFFFF;
        }

        else
        {
          v17 = ((v17 & 0x7F) << 14) | ((v21 & 0x7F) << 7) | v22;
          v18 = 3;
        }
      }

      else
      {
        v17 = ((v17 & 0x7F) << 7) | v21;
        v18 = 2;
      }
    }

    else
    {
      v18 = 1;
    }

    v27 = v18 + v15;
    v28 = (a1 + v27);
    v29 = *v28;
    if (*v28 < 0)
    {
      v31 = v28[1];
      if (v28[1] < 0)
      {
        v32 = v28[2];
        if (v32 < 0)
        {
          v35 = 0;
          v33 = a4;
          v34 = a3;
          v30 = sub_1819DFFB0(v28, &v35);
          a3 = v34;
          a4 = v33;
          v29 = v35 & 0x7FFFFFFF;
        }

        else
        {
          v29 = ((v29 & 0x7F) << 14) | ((v31 & 0x7F) << 7) | v32;
          v30 = 3;
        }
      }

      else
      {
        v29 = ((v29 & 0x7F) << 7) | v31;
        v30 = 2;
      }
    }

    else
    {
      v30 = 1;
    }

    if (v29 <= 1)
    {
      goto LABEL_28;
    }

    v15 = v30 + v27;
    v19 = (v17 << 32) | (v29 + 2147483646) & 0x7FFFFFFF;
    goto LABEL_30;
  }

  result = 0;
LABEL_31:
  *a3 = v15;
  return result;
}

uint64_t sub_1819E0C64(uint64_t a1, uint64_t a2)
{
  v151 = *MEMORY[0x1E69E9840];
  v141 = *(a2 + 32);
  v3 = v141 + 24;
  v2 = *(v141 + 24);
  v4 = *(a1 + 24);
  if (*(v2 + 64))
  {
    v5 = 0;
    v6 = 0;
    v7 = v2 + 32;
    do
    {
      v8 = *(v7 + 24);
      if (!*(v8 + 20))
      {
        v9 = *v8;
        if (v6 && v4 == v9 < v5)
        {
          v6 = 1;
        }

        else
        {
          v6 = 1;
          v5 = v9;
        }
      }

      v7 = *(v7 + 32);
    }

    while (v7);
  }

  else
  {
    v5 = **(v2 + 56);
  }

  v10 = *(v141 + 16);
  do
  {
    if (v10 < 1)
    {
      break;
    }

    v11 = 0;
    v12 = 1;
    do
    {
      v13 = *(v3 + 8 * v11);
      if (*(v13 + 24) >= 1)
      {
        v143 = v11;
        v14 = 0;
        v15 = v13 + 32;
        while (1)
        {
          v17 = v15 + 40 * v14;
          if (!*(v17 + 32))
          {
            v35 = *(v17 + 24);
            v36 = *v35;
            if (*v35 != v5)
            {
              v37 = v4 != 0;
              if (v5 >= v36)
              {
                v37 = 0;
              }

              if ((v5 <= v36 || v4 != 0) && !v37)
              {
                v12 = 0;
                v5 = *v35;
              }

              else
              {
                if (*(v35 + 72))
                {
                  v40 = *(v35 + 32);
                  do
                  {
                    sub_1819DEB74(v40, v35, 1, v5);
                    if (*(v40 + 60))
                    {
                      break;
                    }

                    if (*(v35 + 20))
                    {
                      break;
                    }

                    v41 = *(v35 + 104 + (*(*(v35 + 96) + 4) << 7) + 112);
                    v42 = *(v35 + 76);
                    if (!v42 && v41 >= v5)
                    {
                      break;
                    }
                  }

                  while (!v42 || v41 > v5);
                }

                else
                {
                  sub_1819DEA54(*(v17 + 24), 1, v5);
                }

                v43 = *(v35 + 32);
                v16 = *(v43 + 60);
                *(v43 + 60) = 0;
                if (v16 || (v12 = *(v35 + 20), *(v35 + 20)))
                {
                  *(a2 + 4) = 1;
                  return v16;
                }

                v5 = *v35;
              }
            }

            goto LABEL_18;
          }

          v18 = 0;
          v19 = 0;
          v20 = v15 + 40 * v14;
          do
          {
            v21 = *(v20 + 24);
            if (!*(v21 + 20))
            {
              v22 = *v21;
              if (v19 && v4 == v22 < v18)
              {
                v19 = 1;
              }

              else
              {
                v19 = 1;
                v18 = v22;
              }
            }

            v20 = *(v20 + 32);
          }

          while (v20);
          if (v18 == v5)
          {
            goto LABEL_18;
          }

          v23 = v15 + 40 * v14;
          while (1)
          {
            v24 = *(v23 + 24);
            if (!*(v24 + 20))
            {
              v25 = v4 != 0;
              if (v5 >= *v24)
              {
                v25 = 0;
              }

              v26 = v5 > *v24 && v4 == 0;
              if (v26 || v25)
              {
                break;
              }
            }

            v16 = 0;
LABEL_30:
            v23 = *(v23 + 32);
            if (!v23)
            {
              goto LABEL_52;
            }
          }

          if (*(v24 + 72))
          {
            v28 = *(v24 + 32);
            do
            {
              sub_1819DEB74(v28, v24, 1, v5);
              if (*(v28 + 60))
              {
                break;
              }

              if (*(v24 + 20))
              {
                break;
              }

              v29 = *(v24 + 104 + (*(*(v24 + 96) + 4) << 7) + 112);
              v30 = *(v24 + 76);
              if (!v30 && v29 >= v5)
              {
                break;
              }
            }

            while (!v30 || v29 > v5);
          }

          else
          {
            sub_1819DEA54(*(v23 + 24), 1, v5);
          }

          v31 = *(v24 + 32);
          v16 = *(v31 + 60);
          *(v31 + 60) = 0;
          if (!v16)
          {
            goto LABEL_30;
          }

LABEL_52:
          if (v16)
          {
            goto LABEL_87;
          }

          v5 = 0;
          v32 = 0;
          do
          {
            v33 = *(v17 + 24);
            if (!*(v33 + 20))
            {
              v34 = *v33;
              if (v32 && v4 == v34 < v5)
              {
                v32 = 1;
              }

              else
              {
                v32 = 1;
                v5 = v34;
              }
            }

            v17 = *(v17 + 32);
          }

          while (v17);
          v16 = 0;
          v12 = 0;
          if (!v32)
          {
LABEL_87:
            *(a2 + 4) = 1;
            return v16;
          }

LABEL_18:
          if (++v14 >= *(v13 + 24))
          {
            v11 = v143;
            v10 = *(v141 + 16);
            v3 = v141 + 24;
            break;
          }
        }
      }

      ++v11;
    }

    while (v11 < v10);
  }

  while (!v12);
  *(a2 + 24) = v5;
  v44 = *(a2 + 32);
  if (*(*(a1 + 8) + 116))
  {
    v45 = 0;
    v46 = *(v44 + 3);
    *(v46 + 16) = 0;
    v47 = v46 + 32;
    do
    {
      v48 = *(v47 + 24);
      if (!*(v48 + 20) && *v48 == v5 && *(v48 + 16) >= 1)
      {
        v45 = 1;
        *(v46 + 16) = 1;
      }

      v47 = *(v47 + 32);
    }

    while (v47);
    v16 = 0;
    v50 = v45 == 0;
    goto LABEL_268;
  }

  v51 = 0;
  v142 = v44 + 6;
  v139 = *(a2 + 32);
  while (1)
  {
    if (v51 >= v44[4])
    {
      v16 = 0;
      goto LABEL_194;
    }

    v52 = *&v142[2 * v51];
    v53 = *(v52 + 24);
    v144 = v51;
    if (v53 > 1)
    {
      v149 = 0;
      v54 = *(v52 + 33);
      *(v52 + 16) = 0;
      if (v53 < 5)
      {
        v56 = v150;
      }

      else
      {
        if (sqlite3_initialize() || (v55 = sub_181902484(32 * v53, 0x105004075591D9DLL)) == 0)
        {
          v16 = 7;
          v44 = v139;
          LODWORD(v51) = v144;
          goto LABEL_194;
        }

        v56 = v55;
        LODWORD(v53) = *(v52 + 24);
      }

LABEL_108:
      bzero(v56, 32 * v53);
      LODWORD(v57) = *(v52 + 24);
      if (v57 >= 1)
      {
        v58 = 0;
        v59 = v52 + 32;
        v60 = v56;
        while (1)
        {
          v148 = 0;
          v147 = 0;
          if (*(v59 + 32))
          {
            v146[0] = 0;
            v146[1] = 0;
            v16 = sub_1819E1AA4(v59, *(a2 + 24), v146, &v147, &v148);
            v61 = v147;
            if (v16)
            {
              if (v147)
              {
                v80 = &off_1ED452EB0;
                if (!dword_1ED452E80)
                {
                  goto LABEL_156;
                }

                if (xmmword_1ED456AF0)
                {
                  v81 = v147;
                  xmmword_1ED452F18(xmmword_1ED456AF0);
                  v61 = v81;
                }

                v82 = v61;
                qword_1ED456A48[0] -= xmmword_1ED452EC0(v61);
                --qword_1ED456A90;
                off_1ED452EB0(v82);
                v61 = xmmword_1ED456AF0;
                if (xmmword_1ED456AF0)
                {
                  v80 = &xmmword_1ED452F28;
LABEL_156:
                  (*v80)(v61);
                }
              }

              goto LABEL_157;
            }

            v62 = v147 == v146[0];
            v63 = v148;
          }

          else
          {
            v62 = 0;
            v64 = *(v59 + 24);
            v61 = *(v64 + 8);
            v147 = v61;
            v63 = *(v64 + 16);
            v148 = v63;
          }

          *v60 = 0u;
          *(v60 + 1) = 0u;
          *v60 = v61;
          *(v60 + 2) = v63;
          if (sub_1819E0A34(v61, v63, v60 + 3, v60 + 3))
          {
            v16 = 0;
            *(v60 + 17) = 1;
            *(v60 + 16) = v62;
            goto LABEL_157;
          }

          v65 = *(v60 + 17);
          *(v60 + 16) = v62;
          if (v65)
          {
LABEL_147:
            v16 = 0;
            goto LABEL_157;
          }

          ++v58;
          v57 = *(v52 + 24);
          v60 += 4;
          v59 += 40;
          if (v58 >= v57)
          {
            goto LABEL_117;
          }
        }
      }

      do
      {
LABEL_117:
        v66 = *(v56 + 3);
        do
        {
          if (v57 < 1)
          {
            break;
          }

          v67 = 0;
          v68 = 1;
          do
          {
            v69 = &v56[32 * v67];
            v70 = v66 + v67;
            v71 = (v69 + 24);
            if (*(v69 + 3) != v66 + v67)
            {
              while (1)
              {
                v72 = *v71;
                if (*v71 >= v70)
                {
                  break;
                }

                if (sub_1819E0A34(*v69, *(v69 + 2), v69 + 3, v71))
                {
                  v16 = 0;
                  v69[17] = 1;
                  goto LABEL_157;
                }

                if (v69[17])
                {
                  goto LABEL_147;
                }
              }

              v68 = 0;
              if (v72 > v70)
              {
                v66 = v72 - v67;
              }

              LODWORD(v57) = *(v52 + 24);
            }

            ++v67;
          }

          while (v67 < v57);
        }

        while (!v68);
        if (!v54 || (v66 & 0x7FFFFFFF) == 0)
        {
          LODWORD(v73) = *(v52 + 20);
          v74 = (*(v52 + 16) + 15);
          if (v74 > v73)
          {
            if (!v73)
            {
              LODWORD(v73) = 64;
            }

            v73 = v73;
            do
            {
              v75 = v73;
              v73 *= 2;
            }

            while (v75 < v74);
            v76 = *(v52 + 8);
            if (sqlite3_initialize() || (v77 = sub_18190287C(v76, v75, 688041480)) == 0)
            {
              v16 = 7;
              goto LABEL_157;
            }

            *(v52 + 20) = v75;
            *(v52 + 8) = v77;
          }

          sub_1819E08CC((v52 + 8), &v149, v66);
          LODWORD(v57) = *(v52 + 24);
        }
      }

      while (v57 < 1);
      v78 = 0;
      v79 = v56 + 12;
      while (!sub_1819E0A34(*(v79 - 12), *(v79 - 1), v79, (v79 + 12)))
      {
        if (v79[5])
        {
          goto LABEL_147;
        }

        ++v78;
        v57 = *(v52 + 24);
        v79 += 32;
        if (v78 >= v57)
        {
          goto LABEL_117;
        }
      }

      v16 = 0;
      v79[5] = 1;
LABEL_157:
      v83 = *(v52 + 16);
      if (*(v52 + 24) >= 1)
      {
        v84 = 0;
        v85 = v56 + 16;
        do
        {
          if (*v85)
          {
            v86 = *(v85 - 2);
            if (v86)
            {
              v87 = &off_1ED452EB0;
              if (dword_1ED452E80)
              {
                if (xmmword_1ED456AF0)
                {
                  xmmword_1ED452F18(xmmword_1ED456AF0);
                }

                qword_1ED456A48[0] -= xmmword_1ED452EC0(v86);
                --qword_1ED456A90;
                off_1ED452EB0(v86);
                v86 = xmmword_1ED456AF0;
                if (!xmmword_1ED456AF0)
                {
                  goto LABEL_160;
                }

                v87 = &xmmword_1ED452F28;
              }

              (*v87)(v86);
            }
          }

LABEL_160:
          ++v84;
          v85 += 32;
        }

        while (v84 < *(v52 + 24));
      }

      if (v56 == v150)
      {
        goto LABEL_175;
      }

      v88 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v56);
        --qword_1ED456A90;
        off_1ED452EB0(v56);
        v56 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
LABEL_175:
          v44 = v139;
          v51 = v144;
          if (v83 < 1)
          {
            goto LABEL_194;
          }

          goto LABEL_176;
        }

        v88 = &xmmword_1ED452F28;
      }

      (*v88)(v56);
      goto LABEL_175;
    }

    if (*(v52 + 64) || *(v44 + 1) || *(v52 + 33))
    {
      v149 = 0;
      v54 = *(v52 + 33);
      v56 = v150;
      *(v52 + 16) = 0;
      goto LABEL_108;
    }

    v89 = *(v52 + 56);
    v90 = *(v89 + 16);
    v91 = *(v89 + 8);
    *(v52 + 16) = 0;
    if (v90)
    {
      break;
    }

    v16 = 0;
LABEL_176:
    ++v51;
    if (v16)
    {
      goto LABEL_194;
    }
  }

  LODWORD(v92) = *(v52 + 20);
  if (v92 >= v90)
  {
    v96 = 0;
    v95 = *(v52 + 8);
    goto LABEL_189;
  }

  if (!v92)
  {
    LODWORD(v92) = 64;
  }

  v92 = v92;
  do
  {
    v93 = v92;
    v92 *= 2;
  }

  while (v93 < v90);
  v94 = *(v52 + 8);
  if (!sqlite3_initialize())
  {
    v95 = sub_18190287C(v94, v93, 688041480);
    if (v95)
    {
      *(v52 + 20) = v93;
      *(v52 + 8) = v95;
      v96 = *(v52 + 16);
LABEL_189:
      memcpy((v95 + v96), v91, v90);
      v16 = 0;
      *(v52 + 16) += v90;
      goto LABEL_176;
    }
  }

  LODWORD(v51) = v51 + 1;
  v16 = 7;
LABEL_194:
  if (v51 != v44[4])
  {
    goto LABEL_267;
  }

  if (v51 == 1)
  {
    v50 = 0;
    goto LABEL_268;
  }

  if (v51 >= 5)
  {
    if (v16)
    {
      goto LABEL_267;
    }

    if (sqlite3_initialize() || (v104 = sub_181902484(48 * v51, 1913357809)) == 0)
    {
      v16 = 7;
      goto LABEL_267;
    }

    v97 = v104;
    bzero(v104, 48 * v51);
    if (v44[4] < 1)
    {
      goto LABEL_212;
    }

LABEL_203:
    v98 = 0;
    v99 = v97 + 3;
    do
    {
      v100 = *&v142[2 * v98];
      v101 = *(v100 + 8);
      v102 = *(v100 + 16);
      *(v99 - 3) = 0u;
      *(v99 - 1) = 0u;
      *(v99 - 3) = v101;
      *(v99 - 4) = v102;
      *(v99 - 1) = *v99;
      if (sub_1819E0A34(v101, v102, v99 - 3, v99))
      {
        v103 = 0x4000000000000000;
        *v99 = 0x4000000000000000;
      }

      else
      {
        v103 = *v99;
      }

      *(v99 - 1) = v103;
      if (sub_1819E0A34(*(v99 - 3), *(v99 - 4), v99 - 3, v99))
      {
        *v99 = 0x4000000000000000;
      }

      *(v100 + 16) = 0;
      v99[2] = v100 + 8;
      ++v98;
      v99 += 6;
    }

    while (v98 < v44[4]);
    goto LABEL_212;
  }

  memset(v150, 0, sizeof(v150));
  if (v16)
  {
    goto LABEL_267;
  }

  v97 = v150;
  if (v51 >= 1)
  {
    goto LABEL_203;
  }

LABEL_212:
  v105 = v97;
  v106 = v97 + 3;
  while (2)
  {
    v107 = v105;
    v108 = *(v105 + 2);
    v109 = v139;
    v110 = v139[4];
    do
    {
      if (v110 < 1)
      {
        goto LABEL_232;
      }

      v111 = 0;
      v112 = 1;
      do
      {
        v113 = &v107[3 * v111];
        v114 = v108 - *v109 - *(*&v142[2 * v111] + 24);
        v115 = *(v113 + 2);
        if (v115 > v108 || v115 < v114)
        {
          while (v115 < v114)
          {
            *(v113 + 2) = *(v113 + 3);
            if (sub_1819E0A34(*v113, *(v113 + 2), v113 + 3, v113 + 3))
            {
              *(v113 + 3) = 0x4000000000000000;
            }

            v115 = *(v113 + 2);
            if (v115 == 0x4000000000000000)
            {
              goto LABEL_257;
            }
          }

          v112 = 0;
          if (v115 > v108)
          {
            v108 = v115;
          }

          v109 = v139;
          v110 = v139[4];
        }

        else
        {
          v109 = v139;
        }

        ++v111;
        v107 = v105;
      }

      while (v111 < v110);
    }

    while (!v112);
    if (v110 < 1)
    {
LABEL_232:
      v118 = 0;
      v119 = v106;
      goto LABEL_233;
    }

    v117 = 0;
    while (2)
    {
      v123 = &v105[3 * v117];
      v145 = v123[2];
      v124 = v123[5];
      v125 = *(v124 + 8);
      if (!v125 || v145 != v123[4])
      {
        v126 = (v125 + 15);
        LODWORD(v127) = *(v124 + 12);
        if (v126 <= v127)
        {
          goto LABEL_238;
        }

        if (!v127)
        {
          LODWORD(v127) = 64;
        }

        v127 = v127;
        do
        {
          v128 = v127;
          v127 *= 2;
        }

        while (v128 < v126);
        v138 = *v124;
        if (!sqlite3_initialize())
        {
          v129 = sub_18190287C(v138, v128, 688041480);
          if (v129)
          {
            *(v124 + 12) = v128;
            *v124 = v129;
LABEL_238:
            sub_1819E08CC(v124, v123 + 4, v145);
          }
        }
      }

      ++v117;
      v122 = v139[4];
      if (v117 < v122)
      {
        continue;
      }

      break;
    }

    v120 = *v106;
    if (v122 < 1)
    {
      v118 = 0;
    }

    else
    {
      v130 = 0;
      v131 = 0;
      v132 = v106;
      do
      {
        v134 = *v132;
        v132 += 6;
        v133 = v134;
        if (v134 < v120)
        {
          v131 = v130;
          v120 = v133;
        }

        ++v130;
      }

      while (v122 != v130);
      v118 = v131;
      v119 = &v105[3 * v131 + 1] + 1;
LABEL_233:
      v120 = *v119;
    }

    v121 = &v105[3 * v118];
    *(v121 + 2) = v120;
    if (sub_1819E0A34(*v121, *(v121 + 2), v121 + 3, v121 + 3))
    {
      *(v121 + 3) = 0x4000000000000000;
    }

    if (*(v121 + 2) != 0x4000000000000000)
    {
      continue;
    }

    break;
  }

LABEL_257:
  v135 = *(*(v105 + 5) + 8);
  if (v105 != v150)
  {
    v136 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_263;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v105);
    --qword_1ED456A90;
    off_1ED452EB0(v105);
    v105 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v136 = &xmmword_1ED452F28;
LABEL_263:
      (*v136)(v105);
    }
  }

  if (v135 > 0)
  {
    v16 = 0;
    v50 = 0;
    goto LABEL_268;
  }

  v16 = 0;
LABEL_267:
  v50 = 1;
LABEL_268:
  if (v16)
  {
    v50 = 0;
  }

  *(a2 + 8) = v50;
  return v16;
}

uint64_t sub_1819E1AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, _DWORD *a5)
{
  v39 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v8 = 0;
    v11 = v38;
    goto LABEL_26;
  }

  v7 = a1;
  v8 = 0;
  v9 = 4;
  v10 = 0x1ED452000uLL;
  v11 = v38;
  do
  {
    v12 = *(v7 + 24);
    if (*(v12 + 20) || *v12 != a2 || !*(v12 + 16))
    {
      goto LABEL_4;
    }

    if (v8 == v9)
    {
      if (sqlite3_initialize() || (v13 = sub_181902484(v8 << 6, 0x105004075591D9DLL)) == 0)
      {
        v20 = 7;
        goto LABEL_54;
      }

      v14 = v13;
      v15 = v8;
      memcpy(v13, v11, 32 * v8);
      v9 = 2 * v8;
      if (v11 == v38 || !v11)
      {
        goto LABEL_20;
      }

      v16 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        if (xmmword_1ED456AF0)
        {
          (*(v10 + 3864))();
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v11);
        --qword_1ED456A90;
        off_1ED452EB0(v11);
        v11 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
          v10 = 0x1ED452000;
          goto LABEL_20;
        }

        v16 = &xmmword_1ED452F28;
        v10 = 0x1ED452000;
      }

      (*v16)(v11);
    }

    else
    {
      v15 = v8;
      v14 = v11;
    }

LABEL_20:
    v17 = *(v12 + 8);
    v18 = *(v12 + 16);
    v19 = &v14[4 * v15];
    *v19 = 0u;
    *(v19 + 1) = 0u;
    *v19 = v17;
    *(v19 + 2) = v18;
    if (sub_1819E0A34(v17, v18, v19 + 3, v19 + 3))
    {
      *(v19 + 17) = 1;
    }

    ++v8;
    v11 = v14;
LABEL_4:
    v7 = *(v7 + 32);
  }

  while (v7);
  if (v8 == 1)
  {
    v20 = 0;
    *a4 = *v11;
    v21 = *(v11 + 2);
    goto LABEL_53;
  }

LABEL_26:
  v37 = 0;
  *(a3 + 8) = 0;
  if (v8 < 1)
  {
    v20 = 0;
    goto LABEL_51;
  }

  v20 = 0;
  v22 = -1;
  v23 = v8;
  while (2)
  {
    v25 = v22;
    v22 = 0x7FFFFFFFFFFFFFFFLL;
    v26 = v23;
    v27 = v11 + 3;
    while (2)
    {
      if (!*(v27 - 7))
      {
        v28 = *v27;
        if (*v27 == v25)
        {
          if (sub_1819E0A34(*(v27 - 3), *(v27 - 4), v27 - 3, v27))
          {
            *(v27 - 7) = 1;
            goto LABEL_34;
          }

          if (!*(v27 - 7))
          {
            v28 = *v27;
            goto LABEL_32;
          }
        }

        else
        {
LABEL_32:
          if (v28 < v22)
          {
            v22 = v28;
          }
        }
      }

LABEL_34:
      v27 += 4;
      if (--v26)
      {
        continue;
      }

      break;
    }

    if (!v20 && v22 != 0x7FFFFFFFFFFFFFFFLL)
    {
      LODWORD(v29) = *(a3 + 12);
      v30 = (*(a3 + 8) + 15);
      if (v30 > v29)
      {
        if (!v29)
        {
          LODWORD(v29) = 64;
        }

        v29 = v29;
        do
        {
          v31 = v29;
          v29 *= 2;
        }

        while (v31 < v30);
        v32 = *a3;
        if (sqlite3_initialize() || (v24 = sub_18190287C(v32, v31, 688041480)) == 0)
        {
          v20 = 7;
          continue;
        }

        *(a3 + 12) = v31;
        *a3 = v24;
      }

      sub_1819E08CC(a3, &v37, v22);
      v20 = 0;
      continue;
    }

    break;
  }

LABEL_51:
  if (!v20)
  {
    *a4 = *a3;
    v21 = *(a3 + 8);
LABEL_53:
    *a5 = v21;
  }

LABEL_54:
  if (v11 != v38 && v11)
  {
    v33 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_61;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v11);
    --qword_1ED456A90;
    off_1ED452EB0(v11);
    v11 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v33 = &xmmword_1ED452F28;
LABEL_61:
      (*v33)(v11);
    }
  }

  return v20;
}

uint64_t sub_1819E1EA4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  LODWORD(v5) = *(a2 + 40);
  while (2)
  {
    *(a2 + 8) = 0;
    if (v5 < 1)
    {
      goto LABEL_21;
    }

    v6 = 1;
    v7 = 6;
    v8 = v4;
    do
    {
      v10 = *(a2 + 8 * v7);
      v11 = *(v10 + 24);
      if (*(a1 + 24))
      {
        if (v8 >= v11)
        {
          goto LABEL_10;
        }
      }

      else if (v8 <= v11)
      {
        goto LABEL_10;
      }

      result = (*(v10 + 16))(a1, *(a2 + 8 * v7), 1, v8);
      if (result)
      {
        *(a2 + 8) = 0;
        return result;
      }

LABEL_10:
      if (*(v10 + 4))
      {
        sub_1819E1FC4(a2);
        v4 = v8;
        goto LABEL_18;
      }

      v4 = *(v10 + 24);
      if (v8 != v4)
      {
        v6 = 0;
      }

      if (*(v10 + 8))
      {
        *(a2 + 8) = 1;
      }

      v5 = *(a2 + 40);
      v9 = v7 - 5;
      ++v7;
      v8 = v4;
    }

    while (v9 < v5);
    if (!v6)
    {
      continue;
    }

    break;
  }

LABEL_18:
  if (*(a2 + 8))
  {
    if (*(a1 + 16) != a2)
    {
      sub_1819E2024(a2);
    }
  }

LABEL_21:
  result = 0;
  *(a2 + 24) = v4;
  return result;
}

uint64_t sub_1819E1FC4(uint64_t result)
{
  *(result + 4) = 1;
  if (*(result + 40) >= 1)
  {
    v1 = result;
    v2 = 0;
    v3 = result + 48;
    do
    {
      result = sub_1819E1FC4(*(v3 + 8 * v2++));
    }

    while (v2 < *(v1 + 40));
  }

  return result;
}

uint64_t sub_1819E2024(uint64_t result)
{
  v1 = result;
  if (*result == 4 || *result == 9)
  {
    v3 = *(result + 32);
    if (*(v3 + 16) >= 1)
    {
      v4 = 0;
      do
      {
        *(*(v3 + 24 + 8 * v4++) + 16) = 0;
      }

      while (v4 < *(v3 + 16));
    }
  }

  else if (*(result + 40) >= 1)
  {
    v5 = 0;
    do
    {
      result = sub_1819E2024(*(v1 + 48 + 8 * v5++));
    }

    while (v5 < *(v1 + 40));
  }

  return result;
}

uint64_t sub_1819E20BC(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 48);
  v4 = *(a2 + 56);
  while (1)
  {
    v6 = *(v5 + 4);
    if (v6)
    {
      goto LABEL_17;
    }

    if (*(v4 + 4))
    {
      goto LABEL_16;
    }

    v7 = *(v5 + 24);
    v8 = *(v4 + 24);
    if (!*(a1 + 24))
    {
      break;
    }

    if (v7 > v8)
    {
      goto LABEL_16;
    }

    if (v7 < v8)
    {
      goto LABEL_7;
    }

LABEL_13:
    result = 0;
    if (*(v4 + 8))
    {
      goto LABEL_18;
    }

LABEL_14:
    result = (*(v5 + 16))(a1, v5, 0, 0);
    if (result)
    {
      v6 = *(v5 + 4);
      goto LABEL_19;
    }
  }

  if (v7 < v8)
  {
LABEL_16:
    v6 = 0;
LABEL_17:
    result = 0;
    goto LABEL_19;
  }

  if (v7 <= v8)
  {
    goto LABEL_13;
  }

LABEL_7:
  result = (*(v4 + 16))(a1, v4, 1);
  v6 = *(v5 + 4);
  if (*(v4 + 4) | v6)
  {
    goto LABEL_19;
  }

  if (*(v5 + 24) == *(v4 + 24) && !*(v4 + 8))
  {
    goto LABEL_14;
  }

LABEL_18:
  v6 = 0;
LABEL_19:
  *(a2 + 4) = v6;
  *(a2 + 8) = *(v5 + 8);
  *(a2 + 24) = *(v5 + 24);
  if (*(v5 + 4))
  {
    v10 = result;
    sub_1819E2024(v4);
    return v10;
  }

  return result;
}

uint64_t sub_1819E21D0(uint64_t a1, char a2, char *__s, int a4)
{
  result = *(a1 + 16);
  if (!result)
  {
    v6 = *a1;
    if (a4 >= 0x8000)
    {
      v7 = 0x8000;
    }

    else
    {
      v7 = a4;
    }

    if (v6)
    {
      v8 = *(v6 + 24);
      if ((a2 & 1) != 0 && v8 >= 1)
      {
        v9 = __s;
        if (!sqlite3_initialize())
        {
          v10 = sub_181902484(v7 + 57, 0x1030040CA688EAFLL);
          if (v10)
          {
            v11 = v10;
            bzero(v10, v7 + 57);
            *(v11 + 1) = v11 + 56;
            *(v11 + 4) = v7;
            *(v11 + 5) = v7;
            if (*(*(a1 + 8) + 108))
            {
              *(v11 + 4) = strlen(v11 + 56);
            }

            memcpy(v11 + 56, v9, v7);
            result = 0;
            v12 = v6 + 40 * *(v6 + 24);
            *(v11 + 4) = *(v12 + 24);
            *(v12 + 24) = v11;
            goto LABEL_32;
          }
        }

LABEL_17:
        result = 7;
LABEL_32:
        *(a1 + 16) = result;
        return result;
      }

      if ((v8 & 7) != 0)
      {
        v13 = *a1;
        goto LABEL_22;
      }
    }

    else
    {
      v8 = 0;
    }

    v14 = a4;
    v15 = __s;
    if (sqlite3_initialize())
    {
      goto LABEL_17;
    }

    v13 = sub_18190287C(v6, 40 * (v8 + 9) + 32, 0x1030040CA688EAFLL);
    if (!v13)
    {
      goto LABEL_17;
    }

    if (!v6)
    {
      *(v13 + 64) = 0;
      *(v13 + 32) = 0u;
      *(v13 + 48) = 0u;
      *v13 = 0u;
      *(v13 + 16) = 0u;
    }

    *a1 = v13;
    *(v13 + 24) = v8;
    __s = v15;
    a4 = v14;
LABEL_22:
    v16 = __s;
    v17 = v13 + 40 * v8;
    *(v13 + 24) = v8 + 1;
    *(v17 + 32) = 0u;
    *(v17 + 48) = 0u;
    v18 = v17 + 32;
    *(v18 + 32) = 0;
    v19 = v7;
    if (a4 < 0)
    {
      v19 = strlen(__s);
    }

    v20 = sqlite3_initialize();
    v21 = 0;
    v22 = 0;
    result = 7;
    if ((v19 & 0x80000000) == 0 && !v20)
    {
      v23 = sub_181902484(v19 + 1, 0x100004077774924);
      v21 = v23;
      if (v23)
      {
        memcpy(v23, v16, v19);
        result = 0;
        v21[v19] = 0;
        v22 = 1;
      }

      else
      {
        v22 = 0;
        result = 7;
      }
    }

    *(v18 + 8) = v21;
    *(v18 + 16) = v7;
    *(v18 + 20) = v7;
    if (v22 && *(*(a1 + 8) + 108))
    {
      v24 = strlen(v21);
      result = 0;
      *(v18 + 16) = v24;
    }

    goto LABEL_32;
  }

  return result;
}

uint64_t sub_1819E240C(uint64_t result, uint64_t a2, int *a3, void *a4)
{
  if (*(result + 16))
  {
    return result;
  }

  v7 = result;
  if (*a2 != 4 && *a2 != 9)
  {
    if (*(a2 + 40) >= 1)
    {
      v18 = 0;
      do
      {
        result = sub_1819E240C(v7, *(a2 + 48 + 8 * v18++), a3, a4);
      }

      while (v18 < *(a2 + 40));
    }

    return result;
  }

  v9 = *(a2 + 32);
  v10 = *(v9 + 8);
  if (v10)
  {
    v11 = *v10;
    if (*v10 <= 0)
    {
      *v10 = 0;
LABEL_26:
      *a2 = 0;
      *(a2 + 16) = 0;
      return result;
    }

    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = v10 + 1;
    while (v14 < *a3)
    {
      v16 = v15[v12];
      v17 = a3[v14 + 1];
      if (v16 == v17)
      {
        v15[v13++] = v16;
        ++v14;
        ++v12;
        v11 = *v10;
        if (v12 >= *v10)
        {
          break;
        }
      }

      else
      {
        if (v16 <= v17)
        {
          ++v12;
        }

        else
        {
          ++v14;
        }

        if (v12 >= v11)
        {
          break;
        }
      }
    }

    *v10 = v13;
    if (!v13)
    {
      goto LABEL_26;
    }
  }

  else if (*a4)
  {
    *(v9 + 8) = a3;
    *a4 = 0;
  }

  else
  {
    if (a3)
    {
      v19 = *a3;
      result = sqlite3_initialize();
      if (result || (v21 = 8 * ((v19 + 2) / 2), (result = sub_181902484(v21, 1913357809)) == 0))
      {
        v20 = 0;
        if ((v19 & 0x80000000) == 0)
        {
          *(v7 + 16) = 7;
        }
      }

      else
      {
        v20 = result;
        bzero(result, v21);
        result = memcpy(v20, a3, v21);
      }
    }

    else
    {
      v20 = 0;
    }

    *(v9 + 8) = v20;
  }

  return result;
}

_DWORD *sub_1819E25BC(uint64_t a1)
{
  if (!*(a1 + 160))
  {
    *(a1 + 152) = sub_1819DA194(a1);
    if (!*(a1 + 60))
    {
      v3 = *a1;
      v4 = sub_1819DFC90(a1, 10);
      if (*(a1 + 60))
      {
        goto LABEL_37;
      }

      v5 = *v4 + v4[2];
      *v5 = 0;
      *(v5 + 8) = 0;
      *(v5 + 16) = 0;
      v6 = *v4;
      v105 = v4[2];
      v7 = **v4;
      LODWORD(v5) = *(*v4 + 4);
      v102 = v5 != 16777471;
      if (v5 == 16777471)
      {
        v8 = 8;
      }

      else
      {
        v8 = 4;
      }

      v9 = v6 + v8;
      v10 = *(v6 + v8);
      if (*(v6 + v8) < 0)
      {
        v12 = *(v9 + 1);
        if (*(v9 + 1) < 0)
        {
          v13 = *(v9 + 2);
          if (v13 < 0)
          {
            v106 = 0;
            v14 = v4;
            v11 = sub_1819DFFB0((v6 + v8), &v106);
            v4 = v14;
            v10 = v106 & 0x7FFFFFFF;
          }

          else
          {
            v10 = ((v10 & 0x7F) << 14) | ((v12 & 0x7F) << 7) | v13;
            v11 = 3;
          }
        }

        else
        {
          v10 = ((v10 & 0x7F) << 7) | v12;
          v11 = 2;
        }
      }

      else
      {
        v11 = 1;
      }

      v15 = v11 + v8;
      v16 = v6 + v15;
      v17 = *(v6 + v15);
      if (*(v6 + v15) < 0)
      {
        v19 = *(v16 + 1);
        if (*(v16 + 1) < 0)
        {
          v20 = *(v16 + 2);
          if (v20 < 0)
          {
            v106 = 0;
            v21 = v4;
            v18 = sub_1819DFFB0((v6 + v15), &v106);
            v4 = v21;
            v17 = v106 & 0x7FFFFFFF;
          }

          else
          {
            v17 = ((v17 & 0x7F) << 14) | ((v19 & 0x7F) << 7) | v20;
            v18 = 3;
          }
        }

        else
        {
          v17 = ((v17 & 0x7F) << 7) | v19;
          v18 = 2;
        }
      }

      else
      {
        v18 = 1;
      }

      v22 = 0;
      v23 = 267;
      if (v10 > 0x7D0 || v17 > 0x7D0)
      {
LABEL_29:
        *(a1 + 60) = v23;
        v24 = &off_1ED452EB0;
        if (!dword_1ED452E80)
        {
          goto LABEL_34;
        }

        goto LABEL_30;
      }

      v103 = v17;
      v99 = v4;
      if (sqlite3_initialize())
      {
        v22 = 0;
LABEL_27:
        v23 = 7;
        goto LABEL_28;
      }

      v27 = sub_181902484(16 * v10 + 32, 1913357809);
      v22 = v27;
      if (!v27)
      {
        goto LABEL_27;
      }

      v28 = v18 + v15;
      bzero(v27, 16 * v10 + 32);
      v29 = 1;
      *v22 = 1;
      *(v22 + 6) = v103;
      *(v22 + 7) = v10;
      v30 = sub_1819DFFB0((v6 + v28), v22 + 1);
      if (!v10)
      {
        v49 = 0;
        v51 = 1;
        v33 = v103;
        goto LABEL_121;
      }

      v93 = v7;
      v31 = 0;
      v32 = v28 + v30;
      v97 = v22 + 32;
      v98 = 0;
      v96 = v10 - 1;
      v94 = v3;
      v95 = v10;
      v33 = v103;
      while (1)
      {
        if (v32 >= v105)
        {
          v51 = 0;
          v49 = 267;
          goto LABEL_120;
        }

        v34 = &v97[16 * v31];
        v35 = v32;
        v36 = (v6 + v32);
        v37 = *v36;
        if (*v36 < 0)
        {
          v39 = v36[1];
          if (v36[1] < 0)
          {
            v40 = v36[2];
            if (v40 < 0)
            {
              v106 = 0;
              v41 = v33;
              v38 = sub_1819DFFB0(v36, &v106);
              v33 = v41;
              v37 = v106 & 0x7FFFFFFF;
              *v34 = v106 & 0x7FFFFFFF;
            }

            else
            {
              v37 = ((v37 & 0x7F) << 14) | ((v39 & 0x7F) << 7) | v40;
              *v34 = v37;
              v38 = 3;
            }
          }

          else
          {
            v37 = ((v37 & 0x7F) << 7) | v39;
            *v34 = v37;
            v38 = 2;
          }
        }

        else
        {
          *v34 = v37;
          v38 = 1;
        }

        v42 = v35 + v38;
        v43 = v6 + v42;
        v44 = *(v6 + v42);
        if (*(v6 + v42) < 0)
        {
          v46 = *(v43 + 1);
          if (*(v43 + 1) < 0)
          {
            v47 = *(v43 + 2);
            if (v47 < 0)
            {
              v106 = 0;
              v48 = v33;
              v45 = sub_1819DFFB0(v43, &v106);
              v33 = v48;
              v44 = v106 & 0x7FFFFFFF;
            }

            else
            {
              v44 = ((v44 & 0x7F) << 14) | ((v46 & 0x7F) << 7) | v47;
              v45 = 3;
            }
          }

          else
          {
            v44 = ((v44 & 0x7F) << 7) | v46;
            v45 = 2;
          }
        }

        else
        {
          v45 = 1;
        }

        if (v44 < v37)
        {
          v49 = 267;
          goto LABEL_119;
        }

        v104 = v33;
        v32 = v45 + v42;
        if (!sqlite3_initialize())
        {
          v52 = sub_181902484(56 * v44, 1913357809);
          if (v52)
          {
            v53 = v52;
            bzero(v52, 56 * v44);
            *(v34 + 1) = v53;
            *(v34 + 1) = v44;
            if (v44)
            {
              v54 = 0;
              v100 = 56 * v44;
              v101 = v44;
              v33 = v104;
              while (v32 < v105)
              {
                v55 = *(v34 + 1);
                v56 = (v6 + v32);
                v57 = *v56;
                if (*v56 < 0)
                {
                  v59 = v56[1];
                  if (v56[1] < 0)
                  {
                    v60 = v56[2];
                    if (v60 < 0)
                    {
                      v106 = 0;
                      v58 = sub_1819DFFB0(v56, &v106);
                      v33 = v104;
                      *(v55 + v54) = v106 & 0x7FFFFFFF;
                    }

                    else
                    {
                      *(v55 + v54) = ((v57 & 0x7F) << 14) | ((v59 & 0x7F) << 7) | v60;
                      v58 = 3;
                    }
                  }

                  else
                  {
                    *(v55 + v54) = ((v57 & 0x7F) << 7) | v59;
                    v58 = 2;
                  }
                }

                else
                {
                  *(v55 + v54) = v57;
                  v58 = 1;
                }

                v61 = v32 + v58;
                v62 = v6 + v61;
                v63 = v55 + v54;
                v64 = *(v6 + v61);
                if (*(v6 + v61) < 0)
                {
                  v66 = *(v62 + 1);
                  if (*(v62 + 1) < 0)
                  {
                    v67 = *(v62 + 2);
                    if (v67 < 0)
                    {
                      v106 = 0;
                      v65 = sub_1819DFFB0(v62, &v106);
                      v33 = v104;
                      v64 = v106 & 0x7FFFFFFF;
                      *(v63 + 4) = v106 & 0x7FFFFFFF;
                    }

                    else
                    {
                      v64 = ((v64 & 0x7F) << 14) | ((v66 & 0x7F) << 7) | v67;
                      *(v63 + 4) = v64;
                      v65 = 3;
                    }
                  }

                  else
                  {
                    v64 = ((v64 & 0x7F) << 7) | v66;
                    *(v63 + 4) = v64;
                    v65 = 2;
                  }
                }

                else
                {
                  *(v63 + 4) = v64;
                  v65 = 1;
                }

                v68 = v65 + v61;
                v69 = (v6 + v68);
                v70 = v55 + v54;
                v71 = *v69;
                if (*v69 < 0)
                {
                  v73 = v69[1];
                  if (v69[1] < 0)
                  {
                    v74 = v69[2];
                    if (v74 < 0)
                    {
                      v106 = 0;
                      v72 = sub_1819DFFB0(v69, &v106);
                      v33 = v104;
                      v71 = v106 & 0x7FFFFFFF;
                      *(v70 + 8) = v106 & 0x7FFFFFFF;
                    }

                    else
                    {
                      v71 = ((v71 & 0x7F) << 14) | ((v73 & 0x7F) << 7) | v74;
                      *(v70 + 8) = v71;
                      v72 = 3;
                    }
                  }

                  else
                  {
                    v71 = ((v71 & 0x7F) << 7) | v73;
                    *(v70 + 8) = v71;
                    v72 = 2;
                  }
                }

                else
                {
                  *(v70 + 8) = v71;
                  v72 = 1;
                }

                v32 = v72 + v68;
                if (!v102)
                {
                  v75 = v55 + v54;
                  v76 = v32 + sub_1819DFFB0((v6 + v32), (v55 + v54 + 16));
                  v77 = v76 + sub_1819DFFB0((v6 + v76), (v55 + v54 + 24));
                  v78 = (v6 + v77);
                  v79 = *v78;
                  if ((v79 & 0x80) != 0)
                  {
                    v81 = v78[1];
                    if (v78[1] < 0)
                    {
                      v82 = v78[2];
                      if (v82 < 0)
                      {
                        v106 = 0;
                        v80 = sub_1819DFFB0(v78, &v106);
                        *(v75 + 32) = v106 & 0x7FFFFFFF;
                      }

                      else
                      {
                        *(v75 + 32) = ((v79 & 0x7F) << 14) | ((v81 & 0x7F) << 7) | v82;
                        v80 = 3;
                      }
                    }

                    else
                    {
                      *(v75 + 32) = ((v79 & 0x7F) << 7) | v81;
                      v80 = 2;
                    }
                  }

                  else
                  {
                    *(v75 + 32) = v79;
                    v80 = 1;
                  }

                  v83 = v55 + v54;
                  v84 = v80 + v77 + sub_1819DFFB0((v6 + v80 + v77), (v83 + 40));
                  v32 = v84 + sub_1819DFFB0((v6 + v84), (v83 + 48));
                  v85 = v98;
                  if (v98 <= *(v75 + 24))
                  {
                    v85 = *(v75 + 24);
                  }

                  v98 = v85;
                  v71 = *(v70 + 8);
                  v64 = *(v63 + 4);
                  v33 = v104;
                }

                v44 = v101;
                v34 = &v97[16 * v31];
                if (v71 < v64)
                {
                  break;
                }

                v54 += 56;
                if (v100 == v54)
                {
                  v49 = 0;
                  goto LABEL_62;
                }
              }

              v49 = 267;
            }

            else
            {
              v49 = 0;
              v33 = v104;
            }

            goto LABEL_62;
          }
        }

        v33 = v104;
        if (v44)
        {
          break;
        }

        v49 = 0;
        *(v34 + 1) = 0;
        *(v34 + 1) = 0;
LABEL_62:
        if (v31)
        {
          if (*(v34 - 4) && v44 == 0)
          {
            v49 = 267;
          }
        }

        if (v31 == v96 && *v34)
        {
          v49 = 267;
        }

        v33 -= v44;
        v51 = v49 == 0;
        if (!v49 && ++v31 < v95)
        {
          continue;
        }

        goto LABEL_120;
      }

      v49 = 7;
LABEL_119:
      v51 = 0;
      *(v34 + 1) = 0;
      v33 -= v44;
LABEL_120:
      v29 = v98 + 1;
      v3 = v94;
      v7 = v93;
LABEL_121:
      if (v33 != 0 && v51)
      {
        v23 = 267;
      }

      else
      {
        v23 = v49;
      }

      if (!v102)
      {
        *(v22 + 2) = v29;
      }

      if (!v23)
      {
        v91 = bswap32(v7);
        *(a1 + 60) = 0;
        if (*(v3 + 196) && *(v3 + 192) == v91)
        {
          v4 = v99;
          v24 = &off_1ED452EB0;
          if (!dword_1ED452E80)
          {
            goto LABEL_34;
          }

LABEL_30:
          if (xmmword_1ED456AF0)
          {
            v25 = v4;
            xmmword_1ED452F18(xmmword_1ED456AF0);
            v4 = v25;
          }

          v26 = v4;
          qword_1ED456A48[0] -= xmmword_1ED452EC0(v4);
          --qword_1ED456A90;
          off_1ED452EB0(v26);
          v4 = xmmword_1ED456AF0;
          if (!xmmword_1ED456AF0)
          {
            goto LABEL_35;
          }

          v24 = &xmmword_1ED452F28;
LABEL_34:
          (*v24)(v4);
LABEL_35:
          if (!*(a1 + 60))
          {
            goto LABEL_38;
          }

          sub_1819D8AE8(v22);
LABEL_37:
          v22 = 0;
LABEL_38:
          *(a1 + 160) = v22;
          if (*(a1 + 60))
          {
            return 0;
          }

          goto LABEL_39;
        }

        v23 = sub_1819D6494(v3, v91);
        goto LABEL_28;
      }

      if ((*v22)-- > 1)
      {
        v22 = 0;
        goto LABEL_28;
      }

      if (*(v22 + 7) >= 1)
      {
        v87 = 0;
        v88 = (v22 + 40);
        do
        {
          v90 = *v88;
          if (*v88)
          {
            v89 = &off_1ED452EB0;
            if (dword_1ED452E80)
            {
              if (xmmword_1ED456AF0)
              {
                xmmword_1ED452F18(xmmword_1ED456AF0);
              }

              qword_1ED456A48[0] -= xmmword_1ED452EC0(v90);
              --qword_1ED456A90;
              off_1ED452EB0(v90);
              v90 = xmmword_1ED456AF0;
              if (!xmmword_1ED456AF0)
              {
                goto LABEL_133;
              }

              v89 = &xmmword_1ED452F28;
            }

            (*v89)(v90);
          }

LABEL_133:
          ++v87;
          v88 += 2;
        }

        while (v87 < *(v22 + 7));
      }

      v92 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v22);
        --qword_1ED456A90;
        off_1ED452EB0(v22);
        v22 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
          goto LABEL_28;
        }

        v92 = &xmmword_1ED452F28;
      }

      (*v92)(v22);
      v22 = 0;
LABEL_28:
      v4 = v99;
      goto LABEL_29;
    }
  }

  if (*(a1 + 60))
  {
    return 0;
  }

LABEL_39:
  result = *(a1 + 160);
  ++*result;
  return result;
}

uint64_t sub_1819E2F50(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  *(a2 + 4) = 0;
  *(a2 + 8) = 0;
  v4 = *a2;
  if (*a2 != 9 && v4 != 4)
  {
    if (!*(a2 + 16))
    {
      result = 0;
      *(a2 + 4) = 1;
      return result;
    }

    LODWORD(v36) = *(a2 + 40);
    if (v36 < 1)
    {
      v37 = 0;
      result = 0;
    }

    else
    {
      v37 = 0;
      v38 = 6;
      do
      {
        v39 = *(v2 + 8 * v38);
        result = sub_1819E2F50(a1, v39);
        v37 += *(v39 + 4);
        v40 = v38 - 5;
        v36 = *(v2 + 40);
        ++v38;
      }

      while (v40 < v36 && result == 0);
      v4 = *v2;
    }

    v42 = *(v2 + 48);
    *(v2 + 24) = *(v42 + 24);
    if (v4 == 1)
    {
      if (v36 == v37)
      {
LABEL_73:
        v43 = result;
        sub_1819E1FC4(v2);
        result = v43;
      }
    }

    else
    {
      if (v4 != 2)
      {
        *(v2 + 4) = *(v42 + 4);
        if (result)
        {
          return result;
        }

        goto LABEL_79;
      }

      if (v37 >= 1)
      {
        goto LABEL_73;
      }
    }

    if (result)
    {
      return result;
    }

LABEL_79:
    if (*(v2 + 4))
    {
      return 0;
    }

LABEL_85:
    v44 = *v2;
    if (*v2 > 3)
    {
      if (v44 == 4)
      {
        v52 = *(*(v2 + 32) + 24);
        v53 = *(v52 + 56);
        v54 = *(v53 + 16);
        *(v52 + 16) = v54;
        if (!*(*(a1 + 8) + 116))
        {
          *(v52 + 8) = *(v53 + 8);
        }

        result = 0;
        *(v2 + 24) = *v53;
        *(v2 + 8) = v54 == 0;
        return result;
      }

      if (v44 == 9)
      {

        return sub_1819E0C64(a1, v2);
      }

LABEL_96:

      return sub_1819E20BC(a1, v2);
    }

    if (v44 != 1)
    {
      if (v44 == 2)
      {

        return sub_1819E1EA4(a1, v2);
      }

      goto LABEL_96;
    }

    v45 = *(v2 + 48);
    v46 = *(v2 + 40);
    if (v46 < 2)
    {
LABEL_116:
      result = 0;
      *(v2 + 24) = *(v45 + 24);
      *(v2 + 4) = *(v45 + 4);
      *(v2 + 8) = *(v45 + 8);
      return result;
    }

    v47 = v46 - 1;
    v48 = v2 + 56;
    while (1)
    {
      v49 = *v48;
      if (*(*v48 + 4))
      {
        goto LABEL_102;
      }

      if (!*(v45 + 4))
      {
        v50 = *(v45 + 24);
        v51 = *(v49 + 24);
        if (*(a1 + 24))
        {
          if (v50 > v51)
          {
            goto LABEL_102;
          }

          if (v50 < v51)
          {
            goto LABEL_101;
          }
        }

        else
        {
          if (v50 < v51)
          {
            goto LABEL_102;
          }

          if (v50 > v51)
          {
            goto LABEL_101;
          }
        }

        if (*(v49 + 8))
        {
          goto LABEL_102;
        }
      }

LABEL_101:
      v45 = *v48;
LABEL_102:
      v48 += 8;
      if (!--v47)
      {
        goto LABEL_116;
      }
    }
  }

  v6 = *(a2 + 32);
  v7 = *(v6 + 16);
  if (v7 < 1)
  {
    goto LABEL_59;
  }

  v8 = 0;
  v9 = v6 + 24;
LABEL_8:
  v10 = *(v9 + 8 * v8);
  v11 = *(v10 + 24);
  if (v11)
  {
    if (v11 < 1)
    {
      goto LABEL_58;
    }

    v55 = v9;
    v56 = v8;
    v12 = 0;
    v13 = v10 + 32;
    v59 = *(v9 + 8 * v8);
    v57 = v2;
    v58 = v10 + 32;
    while (1)
    {
      v14 = 0;
      v15 = v13 + 40 * v12;
      v60 = v12;
      v61 = v15;
      do
      {
        v16 = *(v15 + 24);
        if (!v16)
        {
          goto LABEL_51;
        }

        v17 = *(v16 + 24);
        v18 = *(v16 + 32);
        if (!v17)
        {
          goto LABEL_44;
        }

        v62 = *(v16 + 32);
        v19 = a1;
        v20 = v6;
        if (*(v17 + 32) >= 1)
        {
          v21 = 0;
          do
          {
            sub_1819DB2CC(*(v17 + 56 + 8 * v21++));
          }

          while (v21 < *(v17 + 32));
        }

        v22 = *(v17 + 16);
        if (v22)
        {
          v23 = &off_1ED452EB0;
          if (!dword_1ED452E80)
          {
            goto LABEL_23;
          }

          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48[0] -= xmmword_1ED452EC0(v22);
          --qword_1ED456A90;
          off_1ED452EB0(v22);
          v22 = xmmword_1ED456AF0;
          if (xmmword_1ED456AF0)
          {
            v23 = &xmmword_1ED452F28;
LABEL_23:
            (*v23)(v22);
          }
        }

        *(v17 + 16) = 0;
        *(v17 + 24) = 0;
        v24 = *(v17 + 40);
        v6 = v20;
        a1 = v19;
        v18 = v62;
        if (!v24)
        {
          goto LABEL_31;
        }

        v25 = &off_1ED452EB0;
        if (!dword_1ED452E80)
        {
          goto LABEL_30;
        }

        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v24);
        --qword_1ED456A90;
        off_1ED452EB0(v24);
        v24 = xmmword_1ED456AF0;
        v18 = v62;
        if (xmmword_1ED456AF0)
        {
          v25 = &xmmword_1ED452F28;
LABEL_30:
          (*v25)(v24);
        }

LABEL_31:
        v26 = *(v17 + 8);
        if (v26)
        {
          v27 = &off_1ED452EB0;
          if (dword_1ED452E80)
          {
            if (xmmword_1ED456AF0)
            {
              xmmword_1ED452F18(xmmword_1ED456AF0);
            }

            qword_1ED456A48[0] -= xmmword_1ED452EC0(v26);
            --qword_1ED456A90;
            off_1ED452EB0(v26);
            v26 = xmmword_1ED456AF0;
            v18 = v62;
            if (!xmmword_1ED456AF0)
            {
              goto LABEL_38;
            }

            v27 = &xmmword_1ED452F28;
          }

          (*v27)(v26);
        }

LABEL_38:
        v28 = &off_1ED452EB0;
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
            goto LABEL_44;
          }

          v28 = &xmmword_1ED452F28;
        }

        (*v28)(v17);
LABEL_44:
        sub_1819DB2CC(v16);
        v29 = *(v18 + 72);
        if (v29)
        {
          *(v18 + 72) = 0;
          v30 = v29[3];
          v31 = v29[4];
          v32 = v31[3];
          if (v32)
          {
            xmmword_1ED452F18(v32);
          }

          sub_181929C84(v31, v29);
          v33 = v31[3];
          if (v33)
          {
            xmmword_1ED452F28(v33);
          }

          sqlite3_finalize(v30);
        }

        *(v18 + 60) = 0;
        *(v15 + 24) = 0;
LABEL_51:
        result = sub_1819E3624(*a1, *(v15 + 8), *(v15 + 16), (*v61 != 0) | (2 * (*(a1 + 24) != 0)), *(v6 + 8), (v15 + 24));
        if (result)
        {
          return result;
        }

        v35 = *(v15 + 24);
        v15 = *(v15 + 32);
        if (!*(v35 + 20))
        {
          v14 = 1;
        }
      }

      while (v15);
      if (!v14)
      {
        v2 = v57;
        break;
      }

      v12 = v60 + 1;
      v13 = v58;
      if (v60 + 1 >= *(v59 + 24))
      {
        v7 = *(v6 + 16);
        v8 = v56;
        v2 = v57;
        v9 = v55;
LABEL_58:
        if (++v8 >= v7)
        {
LABEL_59:
          *(v2 + 4) = 0;
          goto LABEL_85;
        }

        goto LABEL_8;
      }
    }
  }

  *(v2 + 4) = 1;
  return 0;
}

uint64_t sub_1819E3624(uint64_t a1, unsigned __int8 *a2, int a3, int a4, _DWORD *a5, uint64_t *a6)
{
  v9 = a1;
  v11 = (a1 + 60);
  v10 = *a1;
  v297 = 0;
  v12 = a3 + 1;
  v288 = (a1 + 60);
  if (a3 == -1)
  {
    v281 = a6;
    v17 = 0;
    v18 = *(v10 + 108);
    goto LABEL_7;
  }

  v14 = 64;
  do
  {
    v15 = v14;
    v14 *= 2;
  }

  while (v15 < v12);
  if (!sqlite3_initialize())
  {
    v281 = a6;
    v21 = sub_18190287C(0, v15, 688041480);
    if (v21)
    {
      v17 = v21;
      v18 = *(v10 + 108);
      if (a3 >= 1)
      {
        memcpy((v21 + 1), a2, a3);
        if ((a4 & 0x88) != 0)
        {
          v22 = 0;
        }

        else
        {
          v22 = v18;
        }

        if ((a4 & 1) == 0)
        {
          if (!v22)
          {
LABEL_21:
            LOBYTE(v23) = 0;
            v24 = 0;
            if (*(v10 + 56) >= 0)
            {
LABEL_22:
              v25 = sub_1819E25BC(v9);
              *v17 = v23 + 48;
              if (!v25)
              {
                goto LABEL_554;
              }

              v26 = v25;
              sub_1819E5E40(v9, v25, a4 | 0x10, a5, v17, v12, 0xFFFFFFFF, 0, &v297);
              if ((*v26)-- > 1)
              {
                goto LABEL_554;
              }

              if (v26[7] < 1)
              {
LABEL_317:
                sqlite3_free(v26);
                v9 = a1;
                goto LABEL_554;
              }

              v28 = 0;
              v29 = (v26 + 10);
              while (1)
              {
                v30 = *v29;
                if (*v29)
                {
                  v31 = &off_1ED452EB0;
                  if (dword_1ED452E80)
                  {
                    if (xmmword_1ED456AF0)
                    {
                      xmmword_1ED452F18(xmmword_1ED456AF0);
                    }

                    qword_1ED456A48[0] -= xmmword_1ED452EC0(v30);
                    --qword_1ED456A90;
                    off_1ED452EB0(v30);
                    v30 = xmmword_1ED456AF0;
                    if (!xmmword_1ED456AF0)
                    {
                      goto LABEL_28;
                    }

                    v31 = &xmmword_1ED452F28;
                  }

                  (*v31)(v30);
                }

LABEL_28:
                ++v28;
                v29 += 2;
                if (v28 >= v26[7])
                {
                  goto LABEL_317;
                }
              }
            }

LABEL_43:
            v299 = 0u;
            v300 = 0u;
            v301 = 0u;
            v302 = 0u;
            v303 = 0;
            v298[0] = 0;
            v298[1] = 0;
            DWORD2(v300) = 1;
            DWORD2(v301) = 32;
            v38 = *v9;
            if (!v24 && !*(v38 + 116) && *(v38 + 240))
            {
              v303 = v298;
              if (*v11)
              {
                v39 = 0;
              }

              else if (sqlite3_initialize() || (v39 = sub_181902484(160, 1913357809)) == 0)
              {
                v39 = 0;
                *v11 = 7;
              }

              else
              {
                v39[8] = 0u;
                v39[9] = 0u;
                v39[6] = 0u;
                v39[7] = 0u;
                v39[4] = 0u;
                v39[5] = 0u;
                v39[2] = 0u;
                v39[3] = 0u;
                *v39 = 0u;
                v39[1] = 0u;
              }

              v298[0] = v39;
              v38 = *v9;
            }

            if (*(v38 + 116) == 1)
            {
              v211 = sub_1819EED70;
              v212 = sub_1819EE9D8;
              v213 = DWORD2(v301);
            }

            else
            {
              v213 = 120;
              DWORD2(v300) = 15;
              DWORD2(v301) = 120;
              v211 = sub_1819EFC08;
              v212 = sub_1819EEE6C;
            }

            *&v299 = v212;
            *(&v299 + 1) = v211;
            v296 = a4;
            if (*v11)
            {
              goto LABEL_447;
            }

            if (sqlite3_initialize() || (v241 = sub_181902484(16 * v213, 1913357809)) == 0)
            {
              if (v213 < 1)
              {
LABEL_447:
                v214 = 0;
                goto LABEL_448;
              }

              v214 = 0;
              *v11 = 7;
            }

            else
            {
              v214 = v241;
              bzero(v241, 16 * v213);
            }

LABEL_448:
            *&v301 = v214;
            v215 = sub_1819E25BC(v9);
            v216 = v215;
            if (*(v9 + 60))
            {
              goto LABEL_449;
            }

            v294 = v215;
            if (v24)
            {
              *v17 = 48;
              sub_1819EFDD0(v9, a5, v17, v12, 0, sub_1819F02E0, &v299);
            }

            *v17 = v24 + 48;
            sub_1819EFDD0(v9, a5, v17, v12, 1, sub_1819F02E0, &v299);
            if (SDWORD2(v301) >= 1)
            {
              v226 = 0;
              v227 = DWORD2(v300);
              while (1)
              {
                if (*v288)
                {
                  if (v227 >= 1)
                  {
                    break;
                  }

                  goto LABEL_501;
                }

                (v299)(a1, &v302, v227, v301 + 16 * v226);
                v227 = DWORD2(v300);
                if (SDWORD2(v300) >= 1)
                {
                  break;
                }

LABEL_501:
                v226 += v227;
LABEL_488:
                if (v226 >= SDWORD2(v301))
                {
                  goto LABEL_502;
                }
              }

              v228 = v226;
              v229 = 16 * v226;
              while (1)
              {
                v230 = (v301 + v229);
                v231 = *(v301 + v229);
                if (v231)
                {
                  v232 = &off_1ED452EB0;
                  if (dword_1ED452E80)
                  {
                    if (xmmword_1ED456AF0)
                    {
                      xmmword_1ED452F18(xmmword_1ED456AF0);
                    }

                    qword_1ED456A48[0] -= xmmword_1ED452EC0(v231);
                    --qword_1ED456A90;
                    off_1ED452EB0(v231);
                    v231 = xmmword_1ED456AF0;
                    if (!xmmword_1ED456AF0)
                    {
                      goto LABEL_493;
                    }

                    v232 = &xmmword_1ED452F28;
                  }

                  (*v232)(v231);
                }

LABEL_493:
                *v230 = 0;
                v230[1] = 0;
                ++v228;
                v227 = DWORD2(v300);
                v229 += 16;
                if (v228 >= DWORD2(v300) + v226)
                {
                  v226 += DWORD2(v300);
                  goto LABEL_488;
                }
              }
            }

LABEL_502:
            v11 = v288;
            v9 = a1;
            v216 = v294;
            if (!*v288)
            {
              v242 = SDWORD2(v302);
              if (!sqlite3_initialize())
              {
                v245 = sub_181902484(v242 + 24, 1913357809);
                if (v245)
                {
                  v246 = v245;
                  bzero(v245, v242 + 24);
                  *v246 = v246 + 4;
                  v247 = SDWORD2(v302);
                  v246[2] = DWORD2(v302);
                  v246[3] = v247;
                  if (v247)
                  {
                    memcpy(v246 + 4, v302, v247);
                  }

                  if (!*v288)
                  {
                    if (sqlite3_initialize() || (v273 = sub_181902484(368, 1913357809)) == 0)
                    {
                      *v288 = 7;
                    }

                    else
                    {
                      v274 = v273;
                      *(v273 + 336) = 0u;
                      *(v273 + 352) = 0u;
                      *(v273 + 304) = 0u;
                      *(v273 + 320) = 0u;
                      *(v273 + 272) = 0u;
                      *(v273 + 288) = 0u;
                      *(v273 + 240) = 0u;
                      *(v273 + 256) = 0u;
                      *(v273 + 208) = 0u;
                      *(v273 + 224) = 0u;
                      *(v273 + 176) = 0u;
                      *(v273 + 192) = 0u;
                      *(v273 + 144) = 0u;
                      *(v273 + 160) = 0u;
                      *(v273 + 112) = 0u;
                      *(v273 + 128) = 0u;
                      *(v273 + 80) = 0u;
                      *(v273 + 96) = 0u;
                      *(v273 + 48) = 0u;
                      *(v273 + 64) = 0u;
                      *(v273 + 16) = 0u;
                      *(v273 + 32) = 0u;
                      *v273 = 0u;
                      *(v273 + 72) = 2;
                      *(v273 + 96) = v273 + 360;
                      *(v273 + 32) = a1;
                      *(v273 + 64) = nullsub_14;
                      *(v273 + 240) = 1;
                      if (v246[3] < 1)
                      {
                        *(v273 + 20) = 1;
                      }

                      else
                      {
                        *(v273 + 248) = v246;
                        *(v273 + 264) = sub_1819DFFB0(*v246, (v273 + 344));
                        *(v274 + 300) = v246[2];
                        *(*(v274 + 96) + 4) = 1;
                        if ((v296 & 2) != 0)
                        {
                          *(v274 + 76) = 1;
                          *(v274 + 240) |= 2u;
                          sub_1819E06E0(a1, v274 + 232);
                        }

                        else
                        {
                          sub_1819E0398(a1, v274 + 232);
                        }

                        v246 = 0;
                      }

                      if ((*(v274 + 240) & 2) != 0)
                      {
                        v275 = sub_1819EDAC4;
                      }

                      else if (*(*a1 + 116) == 1)
                      {
                        v275 = sub_1819EDB88;
                      }

                      else
                      {
                        v275 = sub_1819EDF3C;
                      }

                      *(v274 + 280) = v275;
                      v297 = v274;
                      if (!v246)
                      {
                        goto LABEL_503;
                      }
                    }
                  }

                  v248 = &off_1ED452EB0;
                  if (dword_1ED452E80)
                  {
                    if (xmmword_1ED456AF0)
                    {
                      xmmword_1ED452F18(xmmword_1ED456AF0);
                    }

                    qword_1ED456A48[0] -= xmmword_1ED452EC0(v246);
                    --qword_1ED456A90;
                    off_1ED452EB0(v246);
                    v246 = xmmword_1ED456AF0;
                    if (!xmmword_1ED456AF0)
                    {
                      goto LABEL_503;
                    }

                    v248 = &xmmword_1ED452F28;
                  }

                  (*v248)(v246);
                  goto LABEL_503;
                }
              }

              if (v242 >= -23)
              {
                *v288 = 7;
              }
            }

LABEL_503:
            if (!*v288 && v303)
            {
              sub_1819F0580(a1, v298[0]);
              *(v297 + 24) = v298[0];
              v298[0] = 0;
              goto LABEL_506;
            }

LABEL_449:
            v217 = v298[0];
            if (!v298[0])
            {
              goto LABEL_506;
            }

            if (*(v298[0] + 32) >= 1)
            {
              v218 = 0;
              do
              {
                sub_1819DB2CC(*(v217 + 56 + 8 * v218++));
              }

              while (v218 < *(v217 + 32));
            }

            v219 = *(v217 + 16);
            if (v219)
            {
              v220 = &off_1ED452EB0;
              if (!dword_1ED452E80)
              {
LABEL_459:
                (*v220)(v219);
                goto LABEL_460;
              }

              if (xmmword_1ED456AF0)
              {
                xmmword_1ED452F18(xmmword_1ED456AF0);
              }

              qword_1ED456A48[0] -= xmmword_1ED452EC0(v219);
              --qword_1ED456A90;
              off_1ED452EB0(v219);
              v219 = xmmword_1ED456AF0;
              if (xmmword_1ED456AF0)
              {
                v220 = &xmmword_1ED452F28;
                goto LABEL_459;
              }
            }

LABEL_460:
            *(v217 + 16) = 0;
            *(v217 + 24) = 0;
            v221 = *(v217 + 40);
            if (!v221)
            {
              goto LABEL_467;
            }

            v222 = &off_1ED452EB0;
            if (dword_1ED452E80)
            {
              if (xmmword_1ED456AF0)
              {
                xmmword_1ED452F18(xmmword_1ED456AF0);
              }

              qword_1ED456A48[0] -= xmmword_1ED452EC0(v221);
              --qword_1ED456A90;
              off_1ED452EB0(v221);
              v221 = xmmword_1ED456AF0;
              if (!xmmword_1ED456AF0)
              {
LABEL_467:
                v223 = *(v217 + 8);
                if (v223)
                {
                  v224 = &off_1ED452EB0;
                  if (dword_1ED452E80)
                  {
                    if (xmmword_1ED456AF0)
                    {
                      xmmword_1ED452F18(xmmword_1ED456AF0);
                    }

                    qword_1ED456A48[0] -= xmmword_1ED452EC0(v223);
                    --qword_1ED456A90;
                    off_1ED452EB0(v223);
                    v223 = xmmword_1ED456AF0;
                    if (!xmmword_1ED456AF0)
                    {
                      goto LABEL_474;
                    }

                    v224 = &xmmword_1ED452F28;
                  }

                  (*v224)(v223);
                }

LABEL_474:
                v225 = &off_1ED452EB0;
                if (!dword_1ED452E80)
                {
LABEL_479:
                  (*v225)(v217);
                  goto LABEL_506;
                }

                if (xmmword_1ED456AF0)
                {
                  xmmword_1ED452F18(xmmword_1ED456AF0);
                }

                qword_1ED456A48[0] -= xmmword_1ED452EC0(v217);
                --qword_1ED456A90;
                off_1ED452EB0(v217);
                v217 = xmmword_1ED456AF0;
                if (xmmword_1ED456AF0)
                {
                  v225 = &xmmword_1ED452F28;
                  goto LABEL_479;
                }

LABEL_506:
                v233 = v302;
                if (!v302)
                {
                  goto LABEL_513;
                }

                v234 = &off_1ED452EB0;
                if (dword_1ED452E80)
                {
                  if (xmmword_1ED456AF0)
                  {
                    xmmword_1ED452F18(xmmword_1ED456AF0);
                  }

                  qword_1ED456A48[0] -= xmmword_1ED452EC0(v233);
                  --qword_1ED456A90;
                  off_1ED452EB0(v233);
                  v233 = xmmword_1ED456AF0;
                  if (!xmmword_1ED456AF0)
                  {
LABEL_513:
                    v302 = 0uLL;
                    sub_1819D8AE8(v216);
                    v235 = v301;
                    if (!v301)
                    {
                      goto LABEL_520;
                    }

                    v236 = &off_1ED452EB0;
                    if (dword_1ED452E80)
                    {
                      if (xmmword_1ED456AF0)
                      {
                        xmmword_1ED452F18(xmmword_1ED456AF0);
                      }

                      qword_1ED456A48[0] -= xmmword_1ED452EC0(v235);
                      --qword_1ED456A90;
                      off_1ED452EB0(v235);
                      v235 = xmmword_1ED456AF0;
                      if (!xmmword_1ED456AF0)
                      {
LABEL_520:
                        v237 = v297;
                        if (!v297)
                        {
                          goto LABEL_554;
                        }

                        if (*v11)
                        {
                          goto LABEL_556;
                        }

                        v238 = **(v297 + 32);
                        v239 = *(v238 + 116);
                        if (v239 == 1)
                        {
                          v240 = sub_1819F09D4;
                        }

                        else
                        {
                          v243 = *(v297 + 56);
                          if (v243)
                          {
                            if (*v243)
                            {
                              if (v239)
                              {
                                v244 = *(v238 + 32);
                                if (v244 <= 100)
                                {
                                  *(v297 + 64) = sub_1819F0DAC;
                                  sub_1819D750C(v11, v237 + 40, v244);
LABEL_551:
                                  if (*v11)
                                  {
                                    goto LABEL_556;
                                  }

                                  v249 = v237 + (*(*(v237 + 96) + 4) << 7);
                                  if (*(v249 + 120))
                                  {
                                    (*(v237 + 64))(v237, v249 + 104);
                                  }

LABEL_554:
                                  v237 = v297;
                                  if (!*v11)
                                  {
                                    goto LABEL_602;
                                  }

                                  if (!v297)
                                  {
LABEL_594:
                                    v297 = 0;
                                    v266 = *(v9 + 72);
                                    if (!v266)
                                    {
                                      goto LABEL_600;
                                    }

                                    *(v9 + 72) = 0;
                                    v267 = v266[3];
                                    v268 = v266[4];
                                    v269 = v268[3];
                                    if (v269)
                                    {
                                      xmmword_1ED452F18(v269);
                                    }

                                    sub_181929C84(v268, v266);
                                    v270 = v268[3];
                                    if (v270)
                                    {
                                      xmmword_1ED452F28(v270);
                                    }

                                    v271 = sqlite3_finalize(v267);
                                    if (!*v11)
                                    {
                                      v237 = 0;
                                      *v11 = v271;
                                    }

                                    else
                                    {
LABEL_600:
                                      v237 = 0;
                                    }

LABEL_602:
                                    *v281 = v237;
                                    if (v17)
                                    {
                                      v272 = &off_1ED452EB0;
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
                                          goto LABEL_609;
                                        }

                                        v272 = &xmmword_1ED452F28;
                                      }

                                      (*v272)(v17);
                                    }

LABEL_609:
                                    result = *v11;
                                    goto LABEL_610;
                                  }

LABEL_556:
                                  v251 = *(v237 + 24);
                                  v250 = *(v237 + 32);
                                  if (!v251)
                                  {
                                    goto LABEL_587;
                                  }

                                  if (*(v251 + 32) >= 1)
                                  {
                                    v252 = 0;
                                    do
                                    {
                                      sub_1819DB2CC(*(v251 + 56 + 8 * v252++));
                                    }

                                    while (v252 < *(v251 + 32));
                                  }

                                  v253 = *(v251 + 16);
                                  if (v253)
                                  {
                                    v254 = &off_1ED452EB0;
                                    if (!dword_1ED452E80)
                                    {
LABEL_566:
                                      (*v254)(v253);
                                      goto LABEL_567;
                                    }

                                    if (xmmword_1ED456AF0)
                                    {
                                      xmmword_1ED452F18(xmmword_1ED456AF0);
                                    }

                                    qword_1ED456A48[0] -= xmmword_1ED452EC0(v253);
                                    --qword_1ED456A90;
                                    off_1ED452EB0(v253);
                                    v253 = xmmword_1ED456AF0;
                                    if (xmmword_1ED456AF0)
                                    {
                                      v254 = &xmmword_1ED452F28;
                                      goto LABEL_566;
                                    }
                                  }

LABEL_567:
                                  *(v251 + 16) = 0;
                                  *(v251 + 24) = 0;
                                  v255 = *(v251 + 40);
                                  if (!v255)
                                  {
                                    goto LABEL_574;
                                  }

                                  v256 = &off_1ED452EB0;
                                  if (dword_1ED452E80)
                                  {
                                    if (xmmword_1ED456AF0)
                                    {
                                      xmmword_1ED452F18(xmmword_1ED456AF0);
                                    }

                                    qword_1ED456A48[0] -= xmmword_1ED452EC0(v255);
                                    --qword_1ED456A90;
                                    off_1ED452EB0(v255);
                                    v255 = xmmword_1ED456AF0;
                                    if (!xmmword_1ED456AF0)
                                    {
LABEL_574:
                                      v257 = *(v251 + 8);
                                      if (v257)
                                      {
                                        v258 = &off_1ED452EB0;
                                        if (dword_1ED452E80)
                                        {
                                          if (xmmword_1ED456AF0)
                                          {
                                            xmmword_1ED452F18(xmmword_1ED456AF0);
                                          }

                                          qword_1ED456A48[0] -= xmmword_1ED452EC0(v257);
                                          --qword_1ED456A90;
                                          off_1ED452EB0(v257);
                                          v257 = xmmword_1ED456AF0;
                                          if (!xmmword_1ED456AF0)
                                          {
                                            goto LABEL_581;
                                          }

                                          v258 = &xmmword_1ED452F28;
                                        }

                                        (*v258)(v257);
                                      }

LABEL_581:
                                      v259 = &off_1ED452EB0;
                                      if (dword_1ED452E80)
                                      {
                                        if (xmmword_1ED456AF0)
                                        {
                                          xmmword_1ED452F18(xmmword_1ED456AF0);
                                        }

                                        qword_1ED456A48[0] -= xmmword_1ED452EC0(v251);
                                        --qword_1ED456A90;
                                        off_1ED452EB0(v251);
                                        v251 = xmmword_1ED456AF0;
                                        v9 = a1;
                                        if (!xmmword_1ED456AF0)
                                        {
                                          goto LABEL_587;
                                        }

                                        v259 = &xmmword_1ED452F28;
                                      }

                                      (*v259)(v251);
                                      v9 = a1;
LABEL_587:
                                      sub_1819DB2CC(v237);
                                      v260 = *(v250 + 72);
                                      if (v260)
                                      {
                                        *(v250 + 72) = 0;
                                        v261 = v260[3];
                                        v262 = v260[4];
                                        v263 = v262[3];
                                        if (v263)
                                        {
                                          xmmword_1ED452F18(v263);
                                        }

                                        sub_181929C84(v262, v260);
                                        v264 = v262[3];
                                        if (v264)
                                        {
                                          xmmword_1ED452F28(v264);
                                        }

                                        v265 = sqlite3_finalize(v261);
                                        if (!*(v250 + 60))
                                        {
                                          *(v250 + 60) = v265;
                                        }
                                      }

                                      goto LABEL_594;
                                    }

                                    v256 = &xmmword_1ED452F28;
                                  }

                                  (*v256)(v255);
                                  goto LABEL_574;
                                }

                                v240 = sub_1819F0E9C;
                              }

                              else
                              {
                                v240 = sub_1819F0B0C;
                              }
                            }

                            else
                            {
                              v240 = sub_1819F0B04;
                            }
                          }

                          else
                          {
                            v240 = sub_1819F09E8;
                          }
                        }

                        *(v297 + 64) = v240;
                        goto LABEL_551;
                      }

                      v236 = &xmmword_1ED452F28;
                    }

                    (*v236)(v235);
                    goto LABEL_520;
                  }

                  v234 = &xmmword_1ED452F28;
                }

                (*v234)(v233);
                goto LABEL_513;
              }

              v222 = &xmmword_1ED452F28;
            }

            (*v222)(v221);
            goto LABEL_467;
          }

          goto LABEL_12;
        }

        v168 = 0;
        v32 = 0;
        do
        {
          LODWORD(v169) = v168 + 1;
          if (v168 + 1 < a3 && a2[v168] >= 0xC0u)
          {
            v169 = v169;
            while ((a2[v169] & 0xC0) == 0x80)
            {
              if (a3 == ++v169)
              {
                ++v32;
                goto LABEL_36;
              }
            }
          }

          ++v32;
          v168 = v169;
        }

        while (v169 < a3);
        goto LABEL_36;
      }

LABEL_7:
      if ((a4 & 0x88) != 0)
      {
        v19 = 0;
      }

      else
      {
        v19 = v18;
      }

      if ((a4 & 1) == 0)
      {
        if (!v19)
        {
          goto LABEL_21;
        }

LABEL_12:
        *v17 = 48;
        sub_1819E6520(v9);
        v20 = sub_1819E25BC(v9);
        if (*(v9 + 60))
        {
          sub_1819D8AE8(v20);
          v297 = 0;
          goto LABEL_554;
        }

        v277 = a5;
        __s2 = v17;
        v40 = 0;
        v41 = 0;
        v42 = 0;
        v295 = 0;
        v284 = v20;
        v285 = v12;
        v276 = v12;
        v283 = v20 + 8;
        while (1)
        {
          if (v42)
          {
            v280 = *&v42[2 * v42[8] + 12];
          }

          else
          {
            v280 = 0;
          }

          v43 = 2;
          do
          {
            v44 = v43;
            v43 *= 2;
          }

          while (v44 < v20[6]);
          if (sqlite3_initialize() || (v45 = sub_181902484(132 * v44 + 104, 1913357809)) == 0)
          {
            v287 = 0;
            if (132 * v44 + 104 >= 1)
            {
              *v11 = 7;
            }
          }

          else
          {
            v46 = v45;
            bzero(v45, 132 * v44 + 104);
            v46[18] = v44;
            *(v46 + 12) = &v46[32 * v44 + 26];
            *(v46 + 4) = v9;
            v287 = v46;
            *(v46 + 8) = nullsub_14;
          }

          v47 = v41;
          v282 = v42;
          if (!v295)
          {
            if (v285)
            {
              if (v41 < v285)
              {
                if (v41)
                {
                  LODWORD(v52) = v41;
                }

                else
                {
                  LODWORD(v52) = 64;
                }

                v52 = v52;
                do
                {
                  v41 = v52;
                  v52 *= 2;
                }

                while (v41 < v276);
                if (sqlite3_initialize() || (v53 = sub_18190287C(v40, v41, 688041480)) == 0)
                {
LABEL_332:
                  *v11 = 7;
LABEL_333:
                  if (!v287)
                  {
                    goto LABEL_372;
                  }

                  v172 = *(v287 + 24);
                  v171 = *(v287 + 32);
                  if (!v172)
                  {
                    goto LABEL_365;
                  }

                  if (*(v172 + 32) >= 1)
                  {
                    v174 = 0;
                    do
                    {
                      sub_1819DB2CC(*(v172 + 56 + 8 * v174++));
                    }

                    while (v174 < *(v172 + 32));
                  }

LABEL_338:
                  v175 = *(v172 + 16);
                  if (v175)
                  {
                    v176 = &off_1ED452EB0;
                    if (!dword_1ED452E80)
                    {
                      goto LABEL_344;
                    }

                    if (xmmword_1ED456AF0)
                    {
                      xmmword_1ED452F18(xmmword_1ED456AF0);
                    }

                    qword_1ED456A48[0] -= xmmword_1ED452EC0(v175);
                    --qword_1ED456A90;
                    off_1ED452EB0(v175);
                    v175 = xmmword_1ED456AF0;
                    if (xmmword_1ED456AF0)
                    {
                      v176 = &xmmword_1ED452F28;
LABEL_344:
                      (*v176)(v175);
                    }
                  }

                  *(v172 + 16) = 0;
                  *(v172 + 24) = 0;
                  v177 = *(v172 + 40);
                  v42 = v282;
                  if (v177)
                  {
                    v178 = &off_1ED452EB0;
                    if (!dword_1ED452E80)
                    {
                      goto LABEL_351;
                    }

                    if (xmmword_1ED456AF0)
                    {
                      xmmword_1ED452F18(xmmword_1ED456AF0);
                    }

                    qword_1ED456A48[0] -= xmmword_1ED452EC0(v177);
                    --qword_1ED456A90;
                    off_1ED452EB0(v177);
                    v177 = xmmword_1ED456AF0;
                    if (xmmword_1ED456AF0)
                    {
                      v178 = &xmmword_1ED452F28;
LABEL_351:
                      (*v178)(v177);
                    }
                  }

                  v179 = *(v172 + 8);
                  if (v179)
                  {
                    v180 = &off_1ED452EB0;
                    if (!dword_1ED452E80)
                    {
                      goto LABEL_358;
                    }

                    if (xmmword_1ED456AF0)
                    {
                      xmmword_1ED452F18(xmmword_1ED456AF0);
                    }

                    qword_1ED456A48[0] -= xmmword_1ED452EC0(v179);
                    --qword_1ED456A90;
                    off_1ED452EB0(v179);
                    v179 = xmmword_1ED456AF0;
                    if (xmmword_1ED456AF0)
                    {
                      v180 = &xmmword_1ED452F28;
LABEL_358:
                      (*v180)(v179);
                    }
                  }

                  v181 = &off_1ED452EB0;
                  if (dword_1ED452E80)
                  {
                    if (xmmword_1ED456AF0)
                    {
                      xmmword_1ED452F18(xmmword_1ED456AF0);
                    }

                    qword_1ED456A48[0] -= xmmword_1ED452EC0(v172);
                    --qword_1ED456A90;
                    off_1ED452EB0(v172);
                    v172 = xmmword_1ED456AF0;
                    if (!xmmword_1ED456AF0)
                    {
                      goto LABEL_365;
                    }

                    v181 = &xmmword_1ED452F28;
                  }

                  (*v181)(v172);
LABEL_365:
                  sub_1819DB2CC(v287);
                  v182 = *(v171 + 72);
                  if (v182)
                  {
                    *(v171 + 72) = 0;
                    v183 = v182[3];
                    v184 = v182[4];
                    v185 = v184[3];
                    if (v185)
                    {
                      xmmword_1ED452F18(v185);
                    }

                    sub_181929C84(v184, v182);
                    v186 = v184[3];
                    if (v186)
                    {
                      xmmword_1ED452F28(v186);
                    }

                    v187 = sqlite3_finalize(v183);
                    if (!*(v171 + 60))
                    {
                      *(v171 + 60) = v187;
                    }
                  }

                  goto LABEL_372;
                }

                v40 = v53;
              }

              memcpy(v40, v17, v276);
              LODWORD(v293) = v285;
              v47 = v41;
            }

            else
            {
              LODWORD(v293) = 0;
            }

            goto LABEL_98;
          }

          v48 = *(v295 + 8);
          if (v48)
          {
            break;
          }

LABEL_88:
          v293 = (v48 + 1);
          if (v293 > v47)
          {
            if (v47)
            {
              LODWORD(v55) = v47;
            }

            else
            {
              LODWORD(v55) = 64;
            }

            v55 = v55;
            do
            {
              v56 = v55;
              v55 *= 2;
            }

            while (v56 < v293);
            if (sqlite3_initialize())
            {
              goto LABEL_332;
            }

            v57 = sub_18190287C(v40, v56, 688041480);
            if (!v57)
            {
              goto LABEL_332;
            }

            v40 = v57;
            v47 = v56;
          }

          *(v40 + v48) = 0;
LABEL_98:
          if (*v11)
          {
            goto LABEL_333;
          }

          v279 = v47;
          __s = v40;
          if (v284[7] < 1)
          {
            goto LABEL_196;
          }

          v58 = 0;
          v59 = (v287 + 104);
          if (v280)
          {
            v60 = (v280 + 104);
          }

          else
          {
            v60 = 0;
          }

          while (2)
          {
            v289 = v58;
            v61 = &v283[4 * v58];
            v62 = v61[1];
            v63 = v62 + 1;
            v64 = 56 * v62 - 56;
            do
            {
              if (--v63 < 1)
              {
                break;
              }

              v65 = *(v61 + 1);
              v66 = (v65 + v64);
              if (v60)
              {
                v67 = *(v295 + 8);
                v68 = *(v60 + 26);
                if (v67 >= v68)
                {
                  v69 = v68;
                }

                else
                {
                  v69 = v67;
                }

                if (v69 < 1)
                {
                  if (v67 == v68)
                  {
                    goto LABEL_119;
                  }
                }

                else
                {
                  v70 = memcmp(*v295, *(v60 + 12), v69);
                  if (v67 == v68 && !v70)
                  {
LABEL_119:
                    if (*(v60 + 17) <= *(*(v60 + 2) + 12))
                    {
                      sub_1819E716C(v9, __s, v293, 264, v66, v59);
                    }

                    else
                    {
                      v71 = *(v9 + 120);
                      if (!v71)
                      {
                        v72 = sqlite3_mprintf("SELECT pgno FROM '%q'.'%q_idx' WHERE segid=? AND term>? ORDER BY term ASC LIMIT 1", *(*a1 + 16), *(*a1 + 24));
                        v74 = v72;
                        if (*(a1 + 60))
                        {
                          if (!v72)
                          {
                            goto LABEL_145;
                          }

LABEL_139:
                          v86 = &off_1ED452EB0;
                          if (!dword_1ED452E80)
                          {
LABEL_144:
                            (*v86)(v74);
                            goto LABEL_145;
                          }

                          if (xmmword_1ED456AF0)
                          {
                            xmmword_1ED452F18(xmmword_1ED456AF0);
                          }

                          qword_1ED456A48[0] -= xmmword_1ED452EC0(v74);
                          --qword_1ED456A90;
                          off_1ED452EB0(v74);
                          v74 = xmmword_1ED456AF0;
                          if (xmmword_1ED456AF0)
                          {
                            v86 = &xmmword_1ED452F28;
                            goto LABEL_144;
                          }
                        }

                        else
                        {
                          if (!v72)
                          {
                            *v11 = 7;
                            goto LABEL_145;
                          }

                          v84 = sub_1818954B4(**a1, v72, 0xFFFFFFFFLL, 133, 0, (a1 + 120), 0, v73);
                          if (v84 == 1)
                          {
                            v85 = 11;
                          }

                          else
                          {
                            v85 = v84;
                          }

                          *v11 = v85;
                          if (v74)
                          {
                            goto LABEL_139;
                          }
                        }

LABEL_145:
                        v71 = *(a1 + 120);
                        if (!v71)
                        {
                          v290 = 0;
                          LODWORD(v89) = -1;
                          v9 = a1;
                          goto LABEL_175;
                        }
                      }

                      v87 = *v66;
                      if (!sub_1818DF6EC(v71, 0))
                      {
                        v88 = v71[16];
                        if ((*(v88 + 20) & 0x9000) != 0)
                        {
                          sub_18193D288(v88, v87);
                        }

                        else
                        {
                          *v88 = v87;
                          *(v88 + 20) = 4;
                        }

                        v90 = *(*v71 + 24);
                        if (v90)
                        {
                          xmmword_1ED452F28(v90);
                        }
                      }

                      if (v293 <= 0)
                      {
                        sub_1819012D0(101409);
                      }

                      else if (!sub_1818DF6EC(v71, 1u))
                      {
                        if (__s)
                        {
                          v91 = sub_1818900D0(v71[16] + 64, __s, (v293 - 1), 0, 0);
                          if (v91)
                          {
                            v92 = v91;
                            v93 = *v71;
                            *(v93 + 80) = v92;
                            sub_181932D5C(v93, v92);
                            sub_18193C988(*v71, v92);
                          }
                        }

                        v94 = *(*v71 + 24);
                        if (v94)
                        {
                          xmmword_1ED452F28(v94);
                        }
                      }

                      if (sqlite3_step(v71) == 100)
                      {
                        v95 = sqlite3_column_int64(v71, 0);
                        v89 = v95 >> 1;
                        v290 = v95 & 1;
                      }

                      else
                      {
                        v290 = 0;
                        LODWORD(v89) = -1;
                      }

                      v96 = *v71;
                      v97 = *(*v71 + 24);
                      if (v97)
                      {
                        xmmword_1ED452F18(v97);
                      }

                      sub_181909F28(v96, v71);
                      v98 = sub_1818A32FC(v71);
                      *(v71 + 267) = 1;
                      v71[6] = 0xFFFFFFFFLL;
                      *(v71 + 132) = -254;
                      v71[7] = 0;
                      *(v71 + 11) = 1;
                      *(v71 + 16) = 0;
                      v71[10] = 0;
                      if (v98 || (v99 = 0, *(v96 + 103)))
                      {
                        v99 = sub_18193C988(v96, v98);
                      }

                      v100 = *(v96 + 24);
                      if (v100)
                      {
                        xmmword_1ED452F28(v100);
                      }

                      *v288 = v99;
                      v11 = v288;
                      if (!sub_1818DF6EC(v71, 1u))
                      {
                        v101 = *(*v71 + 24);
                        if (v101)
                        {
                          xmmword_1ED452F28(v101);
                        }
                      }

                      v9 = a1;
                      if (!*v288)
                      {
LABEL_175:
                        *(v59 + 6) = 0u;
                        *(v59 + 7) = 0u;
                        *(v59 + 4) = 0u;
                        *(v59 + 5) = 0u;
                        *(v59 + 2) = 0u;
                        *(v59 + 3) = 0u;
                        *v59 = 0u;
                        *(v59 + 1) = 0u;
                        *v59 = v66;
                        *(v59 + 2) |= 1u;
                        if ((v89 & 0x80000000) == 0)
                        {
                          *(v59 + 3) = v89 - 1;
                          sub_1819E0144(v9, v59);
                          if ((v59[1] & 2) != 0)
                          {
                            v102 = sub_1819EDAC4;
                          }

                          else if (*(*v9 + 116) == 1)
                          {
                            v102 = sub_1819EDB88;
                          }

                          else
                          {
                            v102 = sub_1819EDF3C;
                          }

                          v59[6] = v102;
                        }

                        v103 = v59[2];
                        if (v103)
                        {
                          v104 = *v103;
                          v105 = v103[3];
                          *(v59 + 16) = v105;
                          v106 = v104 + v105;
                          v107 = *(v104 + v105);
                          if ((v107 & 0x80) != 0)
                          {
                            v110 = *(v106 + 1);
                            v109 = v290;
                            if (*(v106 + 1) < 0)
                            {
                              v111 = *(v106 + 2);
                              if (v111 < 0)
                              {
                                *&v299 = 0;
                                v108 = sub_1819DFFB0(v106, &v299);
                                v107 = v299 & 0x7FFFFFFF;
                              }

                              else
                              {
                                v107 = ((v107 & 0x7F) << 14) | ((v110 & 0x7F) << 7) | v111;
                                v108 = 3;
                              }
                            }

                            else
                            {
                              v107 = ((v107 & 0x7F) << 7) | v110;
                              v108 = 2;
                            }
                          }

                          else
                          {
                            v108 = 1;
                            v109 = v290;
                          }

                          *(v59 + 16) = v108 + v105;
                          v59[4] = v107;
                          sub_1819ED848(v9, v59, 0);
                          sub_1819E0398(v9, v59);
                          if (v109)
                          {
                            v112 = *(v59 + 14);
                            if (v112 != *(v59 + 3) || *(v59 + 17) >= v59[2][3])
                            {
                              v59[11] = sub_1819EE4E4(v9, v59[1] & 2, **v59, v112);
                            }
                          }
                        }
                      }
                    }

LABEL_194:
                    v113 = *(v60 + 5);
                    if (v113)
                    {
                      v59[5] = v113;
                      ++*v113;
                    }

                    goto LABEL_107;
                  }
                }

                v78 = *v60;
                v79 = v60[1];
                v80 = v60[3];
                *(v59 + 2) = v60[2];
                *(v59 + 3) = v80;
                *v59 = v78;
                *(v59 + 1) = v79;
                v81 = v60[4];
                v82 = v60[5];
                v83 = v60[7];
                *(v59 + 6) = v60[6];
                *(v59 + 7) = v83;
                *(v59 + 4) = v81;
                *(v59 + 5) = v82;
                v60[2] = 0u;
                v60[3] = 0u;
                v60[4] = 0u;
                v60[5] = 0u;
                v60[6] = 0u;
                v60[7] = 0u;
                *v60 = 0u;
                v60[1] = 0u;
                goto LABEL_194;
              }

              sub_1819E716C(v9, __s, v293, 264, (v65 + v64), v59);
              v75 = (*v59)[8];
              if (v75 >= 1)
              {
                if (*v11)
                {
                  goto LABEL_104;
                }

                if (sqlite3_initialize() || (v76 = sub_181902484(8 * v75 + 16, 1913357809)) == 0)
                {
                  *v11 = 7;
LABEL_104:
                  v60 = 0;
                  v59 += 16;
                  break;
                }

                v77 = v76;
                bzero(v76, 8 * v75 + 16);
                *v77 = 1;
                v77[1] = v75;
                v59[5] = v77;
              }

LABEL_107:
              v64 -= 56;
              v59 += 16;
              if (v60)
              {
                v60 += 8;
              }

              else
              {
                v60 = 0;
              }
            }

            while (!*v11);
            v58 = v289 + 1;
            if (v289 + 1 < v284[7])
            {
              continue;
            }

            break;
          }

LABEL_196:
          v42 = v282;
          if (v280)
          {
            if (!*(v280 + 120))
            {
              v118 = *(v280 + 32);
              v119 = *(v295 + 8);
              v120 = *v295;
              *(v280 + 208) = 0;
              if (v119)
              {
                LODWORD(v121) = *(v280 + 212);
                if (v121 >= v119)
                {
                  v128 = 0;
                  v129 = *(v280 + 200);
                  goto LABEL_221;
                }

                if (!v121)
                {
                  LODWORD(v121) = 64;
                }

                v121 = v121;
                do
                {
                  v122 = v121;
                  v121 *= 2;
                }

                while (v122 < v119);
                v123 = *(v280 + 200);
                if (sqlite3_initialize() || (v129 = sub_18190287C(v123, v122, 688041480)) == 0)
                {
                  *(v118 + 60) = 7;
                  v9 = a1;
                }

                else
                {
                  *(v280 + 212) = v122;
                  *(v280 + 200) = v129;
                  v128 = *(v280 + 208);
                  v9 = a1;
LABEL_221:
                  memcpy((v129 + v128), v120, v119);
                  *(v280 + 208) += v119;
                }
              }
            }
          }

          v114 = v287;
          *(v287 + 80) = 1;
          *(v287 + 56) = v277;
          v17 = __s2;
          if (!*v11)
          {
            v115 = **(v287 + 32);
            v116 = *(v115 + 116);
            if (v116 == 1)
            {
              v117 = sub_1819F09D4;
              goto LABEL_228;
            }

            if (v277)
            {
              if (*v277)
              {
                if (v116)
                {
                  v124 = *(v115 + 32);
                  if (v124 <= 100)
                  {
                    *(v287 + 64) = sub_1819F0DAC;
                    LODWORD(v125) = *(v287 + 52);
                    if (v125 < v124)
                    {
                      if (!v125)
                      {
                        LODWORD(v125) = 64;
                      }

                      v125 = v125;
                      do
                      {
                        v126 = v125;
                        v125 *= 2;
                      }

                      while (v126 < v124);
                      v127 = *(v287 + 40);
                      if (sqlite3_initialize() || (v167 = sub_18190287C(v127, v126, 688041480)) == 0)
                      {
                        *v11 = 7;
                      }

                      else
                      {
                        *(v287 + 52) = v126;
                        *(v287 + 40) = v167;
                      }
                    }

                    goto LABEL_229;
                  }

                  v117 = sub_1819F0E9C;
                }

                else
                {
                  v117 = sub_1819F0B0C;
                }
              }

              else
              {
                v117 = sub_1819F0B04;
              }
            }

            else
            {
              v117 = sub_1819F09E8;
            }

LABEL_228:
            *(v287 + 64) = v117;
          }

LABEL_229:
          if (*(v287 + 72) < 1)
          {
LABEL_327:
            v170 = v114;
            v171 = *(v114 + 32);
            v172 = *(v170 + 24);
            v40 = __s;
            if (v172)
            {
              if (*(v172 + 32) >= 1)
              {
                v173 = 0;
                do
                {
                  sub_1819DB2CC(*(v172 + 56 + 8 * v173++));
                }

                while (v173 < *(v172 + 32));
              }

              goto LABEL_338;
            }

            goto LABEL_365;
          }

          v130 = 0;
          v295 = 0;
          v131 = v287 + 120;
          do
          {
            v133 = (v131 + 80);
            v134 = *(v131 + 88);
            if (v134 <= a3 || (v135 = *v133, memcmp(*v133, __s2, v285)) || v134 != v285 && v135[v285])
            {
              v136 = *v131;
              if (*v131)
              {
                v137 = &off_1ED452EB0;
                if (!dword_1ED452E80)
                {
                  goto LABEL_241;
                }

                if (xmmword_1ED456AF0)
                {
                  xmmword_1ED452F18(xmmword_1ED456AF0);
                }

                qword_1ED456A48[0] -= xmmword_1ED452EC0(v136);
                --qword_1ED456A90;
                off_1ED452EB0(v136);
                v136 = xmmword_1ED456AF0;
                if (xmmword_1ED456AF0)
                {
                  v137 = &xmmword_1ED452F28;
LABEL_241:
                  (*v137)(v136);
                }
              }

              *v131 = 0;
            }

            if (*v131)
            {
              if (!v295)
              {
                goto LABEL_252;
              }

              v138 = *(v295 + 8);
              v139 = *(v131 + 88);
              v140 = v138 - v139;
              if (v138 >= v139)
              {
                v141 = v139;
              }

              else
              {
                v141 = v138;
              }

              if (v141 < 1 || (v142 = memcmp(*v295, *v133, v141)) == 0)
              {
                v142 = v140;
              }

              v132 = v295;
              if (v142 >= 1)
              {
LABEL_252:
                v132 = v131 + 80;
              }
            }

            else
            {
              v132 = v295;
            }

            v295 = v132;
            ++v130;
            v131 += 128;
          }

          while (v130 < *(v287 + 72));
          v42 = v282;
          v114 = v287;
          if (!v132)
          {
            goto LABEL_327;
          }

          if (*v11)
          {
            v40 = __s;
            goto LABEL_271;
          }

          v40 = __s;
          if (!v282)
          {
            v144 = 16;
            if (!sqlite3_initialize())
            {
              goto LABEL_264;
            }

LABEL_269:
            *v11 = 7;
            goto LABEL_270;
          }

          v143 = *(v282 + 32);
          if (v143 != *(v282 + 36))
          {
            v146 = v282;
            v166 = v284;
LABEL_313:
            v146[8] = v143 + 1;
            *&v146[2 * v143 + 14] = v114;
            v20 = v166;
            goto LABEL_310;
          }

          v144 = 2 * v143;
          if (sqlite3_initialize())
          {
            goto LABEL_269;
          }

LABEL_264:
          v145 = 104 * v144 + 160;
          v146 = sub_18190287C(v282, v145 & ~(v145 >> 31), 0x10300407B9A0612);
          if (!v146)
          {
            goto LABEL_269;
          }

          if (!v282)
          {
            v147 = v145;
            v148 = v146;
            bzero(v146, v147);
            v146 = v148;
          }

          v146[9] = v144;
          if (!*v11)
          {
            v143 = v146[8];
            v42 = v146;
            v166 = v284;
            v114 = v287;
            goto LABEL_313;
          }

          v42 = v146;
LABEL_270:
          v114 = v287;
LABEL_271:
          v149 = v114;
          v150 = *(v114 + 32);
          v151 = *(v149 + 24);
          if (v151)
          {
            if (*(v151 + 32) >= 1)
            {
              v152 = 0;
              do
              {
                sub_1819DB2CC(*(v151 + 56 + 8 * v152++));
              }

              while (v152 < *(v151 + 32));
            }

            v153 = *(v151 + 16);
            if (v153)
            {
              v154 = &off_1ED452EB0;
              if (!dword_1ED452E80)
              {
                goto LABEL_281;
              }

              if (xmmword_1ED456AF0)
              {
                xmmword_1ED452F18(xmmword_1ED456AF0);
              }

              qword_1ED456A48[0] -= xmmword_1ED452EC0(v153);
              --qword_1ED456A90;
              off_1ED452EB0(v153);
              v153 = xmmword_1ED456AF0;
              if (xmmword_1ED456AF0)
              {
                v154 = &xmmword_1ED452F28;
LABEL_281:
                (*v154)(v153);
              }
            }

            *(v151 + 16) = 0;
            *(v151 + 24) = 0;
            v155 = *(v151 + 40);
            if (v155)
            {
              v156 = &off_1ED452EB0;
              if (!dword_1ED452E80)
              {
                goto LABEL_288;
              }

              if (xmmword_1ED456AF0)
              {
                xmmword_1ED452F18(xmmword_1ED456AF0);
              }

              qword_1ED456A48[0] -= xmmword_1ED452EC0(v155);
              --qword_1ED456A90;
              off_1ED452EB0(v155);
              v155 = xmmword_1ED456AF0;
              if (xmmword_1ED456AF0)
              {
                v156 = &xmmword_1ED452F28;
LABEL_288:
                (*v156)(v155);
              }
            }

            v157 = *(v151 + 8);
            if (v157)
            {
              v158 = &off_1ED452EB0;
              if (!dword_1ED452E80)
              {
                goto LABEL_295;
              }

              if (xmmword_1ED456AF0)
              {
                xmmword_1ED452F18(xmmword_1ED456AF0);
              }

              qword_1ED456A48[0] -= xmmword_1ED452EC0(v157);
              --qword_1ED456A90;
              off_1ED452EB0(v157);
              v157 = xmmword_1ED456AF0;
              if (xmmword_1ED456AF0)
              {
                v158 = &xmmword_1ED452F28;
LABEL_295:
                (*v158)(v157);
              }
            }

            v159 = &off_1ED452EB0;
            if (dword_1ED452E80)
            {
              if (xmmword_1ED456AF0)
              {
                xmmword_1ED452F18(xmmword_1ED456AF0);
              }

              qword_1ED456A48[0] -= xmmword_1ED452EC0(v151);
              --qword_1ED456A90;
              off_1ED452EB0(v151);
              v151 = xmmword_1ED456AF0;
              if (xmmword_1ED456AF0)
              {
                v159 = &xmmword_1ED452F28;
                goto LABEL_301;
              }
            }

            else
            {
LABEL_301:
              (*v159)(v151);
            }
          }

          sub_1819DB2CC(v287);
          v160 = *(v150 + 72);
          if (v160)
          {
            *(v150 + 72) = 0;
            v161 = v160[3];
            v162 = v160[4];
            v163 = v162[3];
            if (v163)
            {
              xmmword_1ED452F18(v163);
            }

            sub_181929C84(v162, v160);
            v164 = v162[3];
            if (v164)
            {
              xmmword_1ED452F28(v164);
            }

            v165 = sqlite3_finalize(v161);
            if (!*(v150 + 60))
            {
              *(v150 + 60) = v165;
            }
          }

          v20 = v284;
LABEL_310:
          v41 = v279;
          if (*v11)
          {
LABEL_372:
            v188 = *v11;
            v189 = v42 != 0;
            if (!v42 || v188)
            {
LABEL_387:
              if (!v188)
              {
                goto LABEL_421;
              }

              if (!v42)
              {
                goto LABEL_423;
              }
            }

            else
            {
              if (v42[8] >= 1)
              {
                v190 = 0;
                while (1)
                {
                  v191 = *&v42[2 * v190 + 14];
                  v192 = *(v191 + 72);
                  if (v192 >= 1)
                  {
                    if (v192 == 1)
                    {
                      v193 = 0;
                    }

                    else
                    {
                      v193 = v192 & 0x7FFFFFFE;
                      v194 = (v191 + 240);
                      v195 = v193;
                      do
                      {
                        v196 = *v194 | 1;
                        *(v194 - 32) |= 1u;
                        *v194 = v196;
                        v194 += 64;
                        v195 -= 2;
                      }

                      while (v195);
                      if (v193 == v192)
                      {
                        goto LABEL_376;
                      }
                    }

                    v197 = v192 - v193;
                    v198 = (v191 + (v193 << 7) + 112);
                    do
                    {
                      *v198 |= 1u;
                      v198 += 32;
                      --v197;
                    }

                    while (v197);
                  }

LABEL_376:
                  sub_1819E80C0(v9, v191);
                  if (++v190 >= v42[8])
                  {
                    v188 = *v11;
                    v189 = 1;
                    goto LABEL_387;
                  }
                }
              }

              v189 = 1;
LABEL_421:
              if (!sqlite3_initialize())
              {
                v210 = sub_181902484(368, 1913357809);
                if (v210)
                {
                  v208 = v210;
                  *(v210 + 336) = 0u;
                  *(v210 + 352) = 0u;
                  *(v210 + 304) = 0u;
                  *(v210 + 320) = 0u;
                  *(v210 + 272) = 0u;
                  *(v210 + 288) = 0u;
                  *(v210 + 240) = 0u;
                  *(v210 + 256) = 0u;
                  *(v210 + 208) = 0u;
                  *(v210 + 224) = 0u;
                  *(v210 + 176) = 0u;
                  *(v210 + 192) = 0u;
                  *(v210 + 144) = 0u;
                  *(v210 + 160) = 0u;
                  *(v210 + 112) = 0u;
                  *(v210 + 128) = 0u;
                  *(v210 + 80) = 0u;
                  *(v210 + 96) = 0u;
                  *(v210 + 48) = 0u;
                  *(v210 + 64) = 0u;
                  *(v210 + 16) = 0u;
                  *(v210 + 32) = 0u;
                  *v210 = 0u;
                  *(v210 + 96) = v210 + 360;
                  *(v210 + 24) = v42;
                  *(v210 + 32) = v9;
                  *(v210 + 64) = nullsub_14;
                  *(v210 + 72) = 0;
                  if (v189)
                  {
                    sub_1819DF108(v210);
                  }

                  else
                  {
                    *(v210 + 20) = 1;
                  }

LABEL_424:
                  v203 = v284;
LABEL_425:
                  sub_1819D8AE8(v203);
                  if (v40)
                  {
                    if (dword_1ED452E80)
                    {
                      if (xmmword_1ED456AF0)
                      {
                        xmmword_1ED452F18(xmmword_1ED456AF0);
                      }

                      qword_1ED456A48[0] -= xmmword_1ED452EC0(v40);
                      --qword_1ED456A90;
                      off_1ED452EB0(v40);
                      v40 = xmmword_1ED456AF0;
                      if (xmmword_1ED456AF0)
                      {
                        v209 = &xmmword_1ED452F28;
                        goto LABEL_432;
                      }
                    }

                    else
                    {
                      v209 = &off_1ED452EB0;
LABEL_432:
                      (*v209)(v40);
                    }
                  }

                  v297 = v208;
                  goto LABEL_554;
                }
              }

              *v11 = 7;
              if (!v42)
              {
LABEL_423:
                v208 = 0;
                goto LABEL_424;
              }
            }

            if (v42[8] >= 1)
            {
              v199 = 0;
              do
              {
                sub_1819DB2CC(*&v42[2 * v199++ + 14]);
              }

              while (v199 < v42[8]);
            }

            v200 = *(v42 + 2);
            if (v200)
            {
              v201 = &off_1ED452EB0;
              if (!dword_1ED452E80)
              {
                goto LABEL_398;
              }

              if (xmmword_1ED456AF0)
              {
                xmmword_1ED452F18(xmmword_1ED456AF0);
              }

              qword_1ED456A48[0] -= xmmword_1ED452EC0(v200);
              --qword_1ED456A90;
              off_1ED452EB0(v200);
              v200 = xmmword_1ED456AF0;
              if (xmmword_1ED456AF0)
              {
                v201 = &xmmword_1ED452F28;
LABEL_398:
                (*v201)(v200);
              }
            }

            *(v42 + 2) = 0;
            *(v42 + 3) = 0;
            v202 = *(v42 + 5);
            v203 = v284;
            if (v202)
            {
              v204 = &off_1ED452EB0;
              if (!dword_1ED452E80)
              {
                goto LABEL_405;
              }

              if (xmmword_1ED456AF0)
              {
                xmmword_1ED452F18(xmmword_1ED456AF0);
              }

              qword_1ED456A48[0] -= xmmword_1ED452EC0(v202);
              --qword_1ED456A90;
              off_1ED452EB0(v202);
              v202 = xmmword_1ED456AF0;
              if (xmmword_1ED456AF0)
              {
                v204 = &xmmword_1ED452F28;
LABEL_405:
                (*v204)(v202);
              }
            }

            v205 = *(v42 + 1);
            if (v205)
            {
              v206 = &off_1ED452EB0;
              if (!dword_1ED452E80)
              {
                goto LABEL_412;
              }

              if (xmmword_1ED456AF0)
              {
                xmmword_1ED452F18(xmmword_1ED456AF0);
              }

              qword_1ED456A48[0] -= xmmword_1ED452EC0(v205);
              --qword_1ED456A90;
              off_1ED452EB0(v205);
              v205 = xmmword_1ED456AF0;
              if (xmmword_1ED456AF0)
              {
                v206 = &xmmword_1ED452F28;
LABEL_412:
                (*v206)(v205);
              }
            }

            v207 = &off_1ED452EB0;
            if (dword_1ED452E80)
            {
              if (xmmword_1ED456AF0)
              {
                xmmword_1ED452F18(xmmword_1ED456AF0);
              }

              qword_1ED456A48[0] -= xmmword_1ED452EC0(v42);
              --qword_1ED456A90;
              off_1ED452EB0(v42);
              v42 = xmmword_1ED456AF0;
              if (xmmword_1ED456AF0)
              {
                v207 = &xmmword_1ED452F28;
                goto LABEL_418;
              }
            }

            else
            {
LABEL_418:
              (*v207)(v42);
            }

            v208 = 0;
            goto LABEL_425;
          }
        }

        v49 = *v295;
        if (v41 < v48)
        {
          if (v41)
          {
            LODWORD(v50) = v41;
          }

          else
          {
            LODWORD(v50) = 64;
          }

          v50 = v50;
          do
          {
            v51 = v50;
            v50 *= 2;
          }

          while (v51 < v48);
          if (sqlite3_initialize() || (v54 = sub_18190287C(v40, v51, 688041480)) == 0)
          {
            LODWORD(v48) = 0;
            *v11 = 7;
LABEL_87:
            v47 = v41;
            goto LABEL_88;
          }

          v40 = v54;
          v41 = v51;
        }

        memcpy(v40, v49, v48);
        goto LABEL_87;
      }

      v32 = 0;
LABEL_36:
      v33 = *(v10 + 56);
      if (v33 < 1)
      {
        v24 = 0;
        goto LABEL_43;
      }

      v24 = 0;
      v34 = *(v10 + 64);
      v23 = v33 + 1;
      v35 = 1;
      do
      {
        v37 = *v34++;
        v36 = v37;
        if (v37 == v32)
        {
          LOBYTE(v23) = v35;
          if (v35 > v33)
          {
            goto LABEL_43;
          }

          goto LABEL_22;
        }

        if (v36 == v32 + 1)
        {
          v24 = v35;
        }

        ++v35;
      }

      while (v23 != v35);
      if (v23 > v33)
      {
        goto LABEL_43;
      }

      goto LABEL_22;
    }
  }

  result = 7;
LABEL_610:
  *v11 = 0;
  return result;
}

uint64_t sub_1819E5E40(uint64_t result, uint64_t a2, unsigned int a3, _DWORD *a4, char *a5, int a6, unsigned int a7, int a8, uint64_t *a9)
{
  v12 = result;
  v13 = a9;
  v15 = (result + 60);
  v14 = *(result + 60);
  if (v14)
  {
    v16 = 0;
  }

  else if ((a7 & 0x80000000) != 0)
  {
    v16 = *(a2 + 24);
    if ((a3 & 0x40) == 0 && *(result + 24) != 0)
    {
      ++v16;
    }
  }

  else
  {
    v16 = *(a2 + 16 * a7 + 36);
    if (v16 >= a8)
    {
      v16 = a8;
    }
  }

  v18 = v16;
  v19 = 2;
  do
  {
    v20 = v19;
    v19 *= 2;
  }

  while (v20 < v18);
  if (v14)
  {
    goto LABEL_17;
  }

  result = sqlite3_initialize();
  if (result || (result = sub_181902484(132 * v20 + 104, 1913357809)) == 0)
  {
    v13 = a9;
    if (132 * v20 + 104 >= 1)
    {
      *v15 = 7;
    }

LABEL_17:
    *v13 = 0;
    return result;
  }

  v71 = result;
  bzero(result, 132 * v20 + 104);
  v23 = v71;
  *(v71 + 72) = v20;
  v24 = v71 + 104;
  *(v71 + 96) = v71 + 104 + (v20 << 7);
  *(v71 + 32) = v12;
  *(v71 + 64) = nullsub_14;
  *a9 = v71;
  *(v71 + 76) = (a3 >> 1) & 1;
  *(v71 + 80) = (a3 & 0x10) != 0;
  *(v71 + 56) = a4;
  v25 = a2;
  v26 = a7;
  if ((a3 & 0x20) != 0)
  {
    goto LABEL_33;
  }

  if (*v15)
  {
LABEL_100:
    result = sub_1819DB2CC(v23);
    *a9 = 0;
    return result;
  }

  v27 = **(v71 + 32);
  v28 = *(v27 + 116);
  if (v28 == 1)
  {
    v29 = sub_1819F09D4;
  }

  else if (a4)
  {
    if (*a4)
    {
      if (v28)
      {
        v30 = *(v27 + 32);
        if (v30 <= 100)
        {
          *(v71 + 64) = sub_1819F0DAC;
          sub_1819D750C(v15, v71 + 40, v30);
          v23 = v71;
          v25 = a2;
          v26 = a7;
          goto LABEL_33;
        }

        v29 = sub_1819F0E9C;
      }

      else
      {
        v29 = sub_1819F0B0C;
      }
    }

    else
    {
      v29 = sub_1819F0B04;
    }
  }

  else
  {
    v29 = sub_1819F09E8;
  }

  *(v71 + 64) = v29;
LABEL_33:
  if (*v15)
  {
    goto LABEL_100;
  }

  if ((v26 & 0x80000000) == 0)
  {
    if (v18 >= 1)
    {
      v31 = v25 + 16 * v26;
      v32 = 56 * v18 - 56;
      do
      {
        sub_1819EE874(v12, *(v31 + 40) + v32, v24);
        v32 -= 56;
        v24 += 128;
      }

      while (v32 != -56);
    }

    goto LABEL_99;
  }

  v33 = 0;
  v70 = *(v25 + 28);
  if ((a3 & 0x40) == 0)
  {
    v34 = *(v12 + 24);
    if (v34)
    {
      if ((a3 & 8) != 0 || !a5)
      {
        *(v12 + 60) = sub_1819E87B0(*(v12 + 24), a5, a6);
        v38 = *(v12 + 24);
        v39 = *(v38 + 24);
        if (v39)
        {
          v40 = v39 + 12;
          v41 = v39[7];
          sub_1819EB56C(v38, *(v38 + 24), 0);
          LODWORD(v39) = v39[6] - v41 - 48;
          if (*v15)
          {
            v42 = 0;
          }

          else if (sqlite3_initialize() || (v47 = sub_181902484(16, 1913357809)) == 0)
          {
            v42 = 0;
            *v15 = 7;
          }

          else
          {
            v42 = v47;
            *v47 = v40 + v41;
            v47[1] = 0;
          }
        }

        else
        {
          v40 = 0;
          LODWORD(v41) = 0;
          v42 = 0;
        }

        *(v12 + 48) = 0;
        v23 = v71;
        v25 = a2;
      }

      else
      {
        if (a6 < 1)
        {
          v36 = 13;
        }

        else
        {
          v35 = a6;
          v36 = 13;
          do
          {
            v36 ^= a5[v35 - 1] ^ (8 * v36);
          }

          while (v35-- > 1);
        }

        v43 = *(*(v34 + 32) + 8 * (v36 % *(v34 + 20)));
        if (v43)
        {
          while (1)
          {
            if (*(v43 + 28) == a6)
            {
              v44 = memcmp((v43 + 48), a5, a6);
              v25 = a2;
              if (!v44)
              {
                break;
              }
            }

            v43 = *v43;
            if (!v43)
            {
              v46 = 0;
              goto LABEL_60;
            }
          }

          v39 = v34;
          v45 = *(v43 + 24);
          if (sqlite3_initialize() || (v69 = v43, v62 = v45 - (a6 + 48), (v63 = sub_181902484(v62 + 26, 1698493578)) == 0))
          {
            v46 = 7;
            v25 = a2;
LABEL_60:
            v23 = v71;
            goto LABEL_62;
          }

          v42 = v63;
          v65 = v63 + 16;
          v67 = v63 + -32 - a6;
          memcpy((v63 + 16), (v69 + a6 + 48), v62);
          LODWORD(v39) = sub_1819EB56C(v39, v69, v67) + v62;
          *v15 = 0;
          *v42 = v65;
          v23 = v71;
          v25 = a2;
        }

        else
        {
          v46 = 0;
LABEL_62:
          LODWORD(v39) = 0;
          v42 = 0;
          *v15 = v46;
        }

        *(v23 + 112) |= 1u;
        v40 = a5;
        LODWORD(v41) = a6;
      }

      if (!v42)
      {
        goto LABEL_84;
      }

      *(v23 + 208) = 0;
      if (v41)
      {
        LODWORD(v48) = *(v23 + 212);
        if (v48 >= v41)
        {
          v49 = v40;
          v50 = 0;
          v51 = v41;
          v52 = v23;
          v53 = *(v23 + 200);
          v54 = v51;
LABEL_79:
          memcpy((v53 + v50), v49, v54);
          *(v52 + 208) += v51;
          v23 = v52;
          goto LABEL_80;
        }

        v68 = v39;
        if (!v48)
        {
          LODWORD(v48) = 64;
        }

        v48 = v48;
        do
        {
          v39 = v48;
          v48 *= 2;
        }

        while (v39 < v41);
        v64 = v41;
        v66 = *(v23 + 200);
        if (!sqlite3_initialize())
        {
          v53 = sub_18190287C(v66, v39, 688041480);
          if (v53)
          {
            v49 = v40;
            v51 = v41;
            v52 = v71;
            *(v71 + 212) = v39;
            *(v71 + 200) = v53;
            v50 = *(v71 + 208);
            LODWORD(v39) = v68;
            v54 = v64;
            goto LABEL_79;
          }
        }

        *v15 = 7;
        v23 = v71;
        LODWORD(v39) = v68;
      }

LABEL_80:
      *(v42 + 2) = v39;
      *(v42 + 3) = v39;
      *(v23 + 120) = v42;
      *(v71 + 136) = sub_1819DFFB0(*v42, (v71 + 216));
      *(v71 + 172) = *(v42 + 2);
      if ((a3 & 2) != 0)
      {
        *(v71 + 112) |= 2u;
        sub_1819E06E0(v12, v24);
      }

      else
      {
        sub_1819E0398(v12, v24);
      }

      v23 = v71;
      v25 = a2;
LABEL_84:
      if ((*(v23 + 112) & 2) != 0)
      {
        v55 = sub_1819EDAC4;
      }

      else if (*(*v12 + 116) == 1)
      {
        v55 = sub_1819EDB88;
      }

      else
      {
        v55 = sub_1819EDF3C;
      }

      *(v23 + 152) = v55;
      v33 = 1;
    }
  }

  if (v70 >= 1)
  {
    v56 = v25 + 32;
    v73 = v25 + 32 + 16 * v70;
    do
    {
      v57 = *(v56 + 4);
      if (v57 >= 1)
      {
        v58 = (v71 + 104 + (v33 << 7));
        v59 = v57 + 1;
        v60 = 56 * v57 - 56;
        v33 += v57;
        do
        {
          v61 = *(v56 + 8);
          if (a5)
          {
            sub_1819E716C(v12, a5, a6, a3, (v61 + v60), v58);
          }

          else
          {
            sub_1819EE874(v12, v61 + v60, v58);
          }

          v58 += 16;
          --v59;
          v60 -= 56;
        }

        while (v59 > 1);
      }

      v56 += 16;
    }

    while (v56 < v73);
  }

LABEL_99:
  v23 = v71;
  if (*v15)
  {
    goto LABEL_100;
  }

  return sub_1819E80C0(v12, v71);
}

void sub_1819E6520(uint64_t a1)
{
  v131 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 64);
  if (v2)
  {
    *(a1 + 60) = v2;
    return;
  }

  if (*(a1 + 32) || *(a1 + 52))
  {
    v3 = *(a1 + 24);
    v113 = 0;
    v4 = sub_1819E25BC(a1);
    v114 = v4;
    v5 = *(a1 + 160);
    if (!v5)
    {
      goto LABEL_26;
    }

    v60 = (*v5)-- <= 1;
    if (!v60)
    {
      goto LABEL_25;
    }

    v105 = v3;
    if (v5[7] < 1)
    {
LABEL_18:
      v10 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        v3 = v105;
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v5);
        --qword_1ED456A90;
        off_1ED452EB0(v5);
        v5 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
          goto LABEL_25;
        }

        v10 = &xmmword_1ED452F28;
      }

      else
      {
        v3 = v105;
      }

      (*v10)(v5);
LABEL_25:
      *(a1 + 160) = 0;
LABEL_26:
      if (!*(v3 + 16) || (v11 = (a1 + 60), *(a1 + 60)))
      {
        v12 = 0;
        goto LABEL_29;
      }

      if (v4[6] >= 2000)
      {
        v12 = 0;
        *v11 = 13;
        goto LABEL_29;
      }

      v129 = 0u;
      memset(v130, 0, sizeof(v130));
      v127 = 0u;
      v128 = 0u;
      v125 = 0u;
      v126 = 0u;
      v123 = 0u;
      v124 = 0u;
      v121 = 0u;
      v122 = 0u;
      v119 = 0u;
      v120 = 0u;
      v117 = 0u;
      v118 = 0u;
      v116 = 0u;
      v24 = v4[7];
      if (v24 >= 1)
      {
        for (i = 0; i != v24; ++i)
        {
          v26 = &v4[4 * i + 8];
          v27 = *(v26 + 4);
          if (v27 >= 1)
          {
            v28 = *(v26 + 8);
            do
            {
              v29 = *v28;
              v28 += 14;
              v30 = v29 - 1;
              if ((v29 - 1) <= 0x7CF)
              {
                *(&v116 + (v30 >> 5)) |= 1 << v30;
              }

              --v27;
            }

            while (v27);
          }
        }
      }

      v31 = -32;
      v32 = &v116;
      do
      {
        v34 = *v32++;
        v33 = v34;
        v31 += 32;
      }

      while (v34 == -1);
      v35 = 0;
      do
      {
        v36 = v33 >> v35++;
        ++v31;
      }

      while ((v36 & 1) != 0);
      v37 = *(*a1 + 196);
      v38 = *(*a1 + 116);
      v39 = *(*a1 + 232);
      *&v123 = 0;
      v121 = 0u;
      v122 = 0u;
      v119 = 0u;
      v120 = 0u;
      v117 = 0u;
      v118 = 0u;
      v116 = 0u;
      sub_1819E8474(a1, &v116, v31);
      if (*(a1 + 60) || (v40 = sub_1819E87B0(v3, 0, 0), (*v11 = v40) != 0) || (v98 = v39 == 0, (v53 = *(v3 + 24)) == 0))
      {
LABEL_62:
        sub_1819EAC00(a1, &v116, &v113);
        v12 = v113;
        if (v113 >= 1)
        {
          v41 = v114;
          if (!v114[7])
          {
            sub_1819EAFC8(v11, &v114);
            v41 = v114;
          }

          if (!*v11)
          {
            v42 = v11;
            v43 = v41[9];
            v44 = v43 + 1;
            v45 = v43 == -1;
            v46 = *(v41 + 5);
            v47 = sqlite3_initialize();
            if (v45 || v47 || (v48 = sub_18190287C(v46, 56 * v44, 211794990)) == 0)
            {
              *v42 = 7;
            }

            else
            {
              v49 = v48 + 56 * v41[9];
              *(v49 + 48) = 0;
              *(v49 + 16) = 0u;
              *(v49 + 32) = 0u;
              *v49 = 0u;
              *(v41 + 5) = v48;
              if (!*v42)
              {
                v50 = v41[9];
                v41[9] = v50 + 1;
                v51 = v48 + 56 * v50;
                *v51 = v31;
                *(v51 + 4) = 1;
                *(v51 + 8) = v12;
                v52 = *(v41 + 2);
                if (v52)
                {
                  *(v51 + 16) = v52;
                  *(v51 + 24) = *(v41 + 2);
                  *(v51 + 48) = *(a1 + 56);
                  ++*(v41 + 2);
                }

                ++v41[6];
              }
            }
          }

          sub_1819EB308(a1, 0, v41);
        }

LABEL_29:
        v13 = *a1;
        if (!*(a1 + 60))
        {
          v19 = *(v13 + 200);
          if (v19 >= 1)
          {
            v20 = v114;
            if (!v114)
            {
              v14 = 0;
LABEL_37:
              sub_1819D8134(a1, v14);
              sub_1819D8AE8(v14);
              v18 = *(a1 + 60);
              if (v18)
              {
                if (*(a1 + 32) || *(a1 + 52))
                {
                  *(a1 + 64) = v18;
                }
              }

              else
              {
                sub_1819D8C28(*(a1 + 24));
                *(a1 + 32) = 0;
                *(a1 + 52) = 0;
                *(a1 + 56) = 0;
              }

              return;
            }

            v21 = *(v114 + 1);
            v22 = v21 + *(a1 + 52) + v12;
            v23 = *(a1 + 16);
            *(v114 + 1) = v22;
            sub_1819EBB18(a1, &v114, v23 * (v22 / v23 - v21 / v23) * v20[7], v19);
            v13 = *a1;
          }
        }

        v14 = v114;
        v15 = *(v13 + 204);
        *&v116 = v114;
        if (v114 && v114[7] >= 1)
        {
          if (!*(a1 + 60))
          {
            v16 = 1;
            v17 = 9;
            do
            {
              if (v14[v17] < v15)
              {
                break;
              }

              sub_1819EBD74(a1, &v116, v16 - 1, 0);
              v14 = v116;
              sub_1819EB308(a1, v16++, v116);
              v17 += 4;
            }

            while (!*(a1 + 60));
          }

          v114 = v14;
        }

        goto LABEL_37;
      }

      v99 = v39;
      v100 = v38;
      v106 = v3;
      while (1)
      {
        v54 = *(v53 + 28);
        sub_1819EB56C(v3, v53, 0);
        v55 = (v53 + 48);
        __src = (v53 + 48 + v54);
        v56 = v54;
        v57 = (*(v53 + 24) - v54 - 48);
        if (v39)
        {
          v58 = *v11;
        }

        else
        {
          v59 = (v53 + 48);
          sub_1819E8AD4(a1, &v116, v56, v55);
          if (*(a1 + 60))
          {
            goto LABEL_62;
          }

          if (v37 > DWORD2(v117) + DWORD2(v118) + v57)
          {
            memcpy((v117 + SDWORD2(v117)), __src, v57);
            DWORD2(v117) += v57;
            v58 = *v11;
            goto LABEL_188;
          }

          v58 = 0;
          v55 = v59;
        }

        if (v58)
        {
          v60 = 1;
        }

        else
        {
          v60 = v57 < 1;
        }

        if (!v60)
        {
          v108 = v57;
          v109 = 0;
          LODWORD(v57) = 0;
          v61 = 0;
          v104 = v98;
          v101 = v56;
          v102 = v55;
          while (1)
          {
            v112 = 0;
            v64 = v57 + sub_1819DFFB0(&__src[v57], &v112);
            v109 += v112;
            if (v39)
            {
              v65 = v108;
              if (v38 == 1)
              {
                if (v64 < v108 && !__src[v64] && !sub_1819E90AC(a1, v114, v102, v56, v109))
                {
                  v57 = v64 + 1;
                  if (v57 >= v108 || __src[v57])
                  {
                    goto LABEL_91;
                  }

                  v65 = 0;
                  LODWORD(v64) = v64 + 2;
                }
              }

              else if ((__src[v64] & 1) != 0 && !sub_1819E90AC(a1, v114, v102, v56, v109) && (*v11 || __src[v64] == 1))
              {
                LODWORD(v57) = v64 + 1;
                goto LABEL_91;
              }
            }

            else
            {
              v65 = v108;
            }

            if (!(*v11 | v104))
            {
              sub_1819E8AD4(a1, &v116, v56, v102);
              v104 = 1;
            }

            if (BYTE9(v120))
            {
              *v117 = bswap32(WORD4(v117)) >> 16;
              v66 = (v117 + SDWORD2(v117));
              v61 = v109;
              if (v109 > 0x7F)
              {
                if (v109 >> 14)
                {
                  v67 = sub_1819436D0(v66, v109);
                }

                else
                {
                  v66->i8[0] = (v109 >> 7) | 0x80;
                  v66->i8[1] = v109 & 0x7F;
                  v67 = 2;
                }
              }

              else
              {
                v66->i8[0] = v109;
                v67 = 1;
              }

              DWORD2(v117) += v67;
              BYTE9(v120) = 0;
              sub_1819EA344(a1, &v116, v109);
              if (*v11)
              {
                goto LABEL_62;
              }
            }

            else
            {
              v68 = v109 - v61;
              v61 = v109;
              v69 = (v117 + SDWORD2(v117));
              if (v68 > 0x7F)
              {
                if (v68 >> 14)
                {
                  v70 = sub_1819436D0(v69, v68);
                }

                else
                {
                  v69->i8[0] = (v68 >> 7) | 0x80;
                  v69->i8[1] = v68 & 0x7F;
                  v70 = 2;
                }
              }

              else
              {
                v69->i8[0] = v68;
                v70 = 1;
              }

              DWORD2(v117) += v70;
              if (*v11)
              {
                goto LABEL_62;
              }
            }

            v108 = v65;
            if (v38 != 1)
            {
              v71 = &__src[v64];
              v72 = *v71;
              if (*v71 < 0)
              {
                v74 = v71[1];
                if (v71[1] < 0)
                {
                  v77 = v71[2];
                  if (v77 < 0)
                  {
                    v115 = 0;
                    v73 = sub_1819DFFB0(v71, &v115);
                    v72 = v115 & 0x7FFFFFFF;
                  }

                  else
                  {
                    v72 = ((v72 & 0x7F) << 14) | ((v74 & 0x7F) << 7) | v77;
                    v73 = 3;
                  }
                }

                else
                {
                  v72 = ((v72 & 0x7F) << 7) | v74;
                  v73 = 2;
                }
              }

              else
              {
                v73 = 1;
              }

              v78 = v64;
              if (v39 && (v72 & 1) != 0)
              {
                v79 = DWORD2(v117);
                v80 = (DWORD2(v117) + 9);
                if (v80 <= HIDWORD(v117))
                {
                  v84 = v117;
                  goto LABEL_154;
                }

                if (HIDWORD(v117))
                {
                  LODWORD(v81) = HIDWORD(v117);
                }

                else
                {
                  LODWORD(v81) = 64;
                }

                v81 = v81;
                do
                {
                  v82 = v81;
                  v81 *= 2;
                }

                while (v82 < v80);
                v83 = v117;
                if (sqlite3_initialize() || (v84 = sub_18190287C(v83, v82, 688041480)) == 0)
                {
                  *v11 = 7;
                }

                else
                {
                  HIDWORD(v117) = v82;
                  *&v117 = v84;
                  v79 = DWORD2(v117);
LABEL_154:
                  v85 = (v84 + v79);
                  if (v72 > 0x7F)
                  {
                    if (v72 >> 14)
                    {
                      v86 = sub_1819436D0(v85, v72 & 0xFFFFFFFE);
                    }

                    else
                    {
                      v85->i8[0] = (v72 >> 7) | 0x80;
                      v85->i8[1] = v72 & 0x7E;
                      v86 = 2;
                    }
                  }

                  else
                  {
                    v85->i8[0] = v72 & 0xFE;
                    v86 = 1;
                  }

                  DWORD2(v117) += v86;
                }

                v78 = v73 + v64;
                v62 = v72 >> 1;
              }

              else
              {
                v62 = v73 + (v72 >> 1);
              }

              v103 = v78;
              v87 = &__src[v78];
              v110 = v62;
              if ((DWORD2(v117) + v62 + DWORD2(v118)) <= v37)
              {
                memcpy((v117 + SDWORD2(v117)), v87, v62);
                v62 = v110;
                DWORD2(v117) += v110;
              }

              else
              {
                v88 = 0;
                v111 = &__src[v78];
                do
                {
                  if (*v11)
                  {
                    break;
                  }

                  v89 = v11;
                  v90 = SDWORD2(v117);
                  v91 = v37;
                  v92 = v37 - (DWORD2(v117) + DWORD2(v118));
                  v93 = v62 - v88;
                  if ((v62 - v88) > v92)
                  {
                    v94 = &v87[v88];
                    if (*v94 < 0)
                    {
                      if (v94[1] < 0)
                      {
                        if (v94[2] < 0)
                        {
                          v95 = sub_1819DFFB0(v94, &v115);
                          v87 = v111;
                        }

                        else
                        {
                          v95 = 3;
                        }
                      }

                      else
                      {
                        v95 = 2;
                      }
                    }

                    else
                    {
                      v95 = 1;
                    }

                    if (v95 < v92)
                    {
                      do
                      {
                        v93 = v95;
                        v97 = &v94[v95];
                        if (*v97 < 0)
                        {
                          if (v97[1] < 0)
                          {
                            if (v97[2] < 0)
                            {
                              v96 = sub_1819DFFB0(v97, &v115);
                              v87 = v111;
                            }

                            else
                            {
                              v96 = 3;
                            }
                          }

                          else
                          {
                            v96 = 2;
                          }
                        }

                        else
                        {
                          v96 = 1;
                        }

                        v95 = v96 + v93;
                      }

                      while (v95 <= v92);
                    }

                    else
                    {
                      v93 = v95;
                    }
                  }

                  memcpy((v117 + v90), &v87[v88], v93);
                  DWORD2(v117) += v93;
                  v37 = v91;
                  if (DWORD2(v118) + DWORD2(v117) >= v91)
                  {
                    sub_1819EA9A4(a1, &v116);
                  }

                  v88 += v93;
                  v62 = v110;
                  v11 = v89;
                  v87 = v111;
                }

                while (v88 < v110);
              }

              LODWORD(v57) = v62 + v103;
              v61 = v109;
              v39 = v99;
              v38 = v100;
              v56 = v101;
              goto LABEL_91;
            }

            if (v64 >= v65 || __src[v64])
            {
              LODWORD(v57) = v64;
            }

            else
            {
              v75 = SDWORD2(v117);
              ++DWORD2(v117);
              *(v117 + v75) = 0;
              v57 = v64 + 1;
              if (v57 < v108 && !__src[v57])
              {
                v76 = SDWORD2(v117);
                ++DWORD2(v117);
                *(v117 + v76) = 0;
                LODWORD(v57) = v64 + 2;
              }
            }

            if (DWORD2(v118) + DWORD2(v117) >= v37)
            {
              sub_1819EA9A4(a1, &v116);
            }

LABEL_91:
            v58 = *v11;
            if (*v11)
            {
              v63 = 0;
            }

            else
            {
              v63 = v57 < v108;
            }

            if (!v63)
            {
              v3 = v106;
              break;
            }
          }
        }

LABEL_188:
        if (!v58)
        {
          v53 = *(*(v3 + 24) + 8);
          *(v3 + 24) = v53;
          if (v53)
          {
            continue;
          }
        }

        goto LABEL_62;
      }
    }

    v6 = 0;
    v7 = (v5 + 10);
    while (1)
    {
      v8 = *v7;
      if (*v7)
      {
        v9 = &off_1ED452EB0;
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
            goto LABEL_11;
          }

          v9 = &xmmword_1ED452F28;
        }

        (*v9)(v8);
      }

LABEL_11:
      ++v6;
      v7 += 2;
      if (v6 >= v5[7])
      {
        goto LABEL_18;
      }
    }
  }
}

void sub_1819E716C(uint64_t a1, char *a2, unsigned int a3, __int16 a4, unsigned int *a5, unsigned int **a6)
{
  *(a6 + 6) = 0u;
  *(a6 + 7) = 0u;
  *(a6 + 4) = 0u;
  *(a6 + 5) = 0u;
  *(a6 + 2) = 0u;
  *(a6 + 3) = 0u;
  *a6 = 0u;
  *(a6 + 1) = 0u;
  *a6 = a5;
  v12 = (a1 + 112);
  if (!*(a1 + 112))
  {
    v13 = sqlite3_mprintf("SELECT pgno FROM '%q'.'%q_idx' WHERE segid=? AND term<=? ORDER BY term DESC LIMIT 1", *(*a1 + 16), *(*a1 + 24));
    v15 = v13;
    if (!*(a1 + 60))
    {
      if (v13)
      {
        v16 = sub_1818954B4(**a1, v13, 0xFFFFFFFFLL, 133, 0, v12, 0, v14);
        if (v16 == 1)
        {
          v17 = 11;
        }

        else
        {
          v17 = v16;
        }
      }

      else
      {
        v17 = 7;
      }

      *(a1 + 60) = v17;
    }

    if (v15)
    {
      v18 = &off_1ED452EB0;
      if (!dword_1ED452E80)
      {
LABEL_15:
        (*v18)(v15);
        goto LABEL_16;
      }

      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v15);
      --qword_1ED456A90;
      off_1ED452EB0(v15);
      v15 = xmmword_1ED456AF0;
      if (xmmword_1ED456AF0)
      {
        v18 = &xmmword_1ED452F28;
        goto LABEL_15;
      }
    }
  }

LABEL_16:
  if (*(a1 + 60))
  {
    return;
  }

  v19 = *(a1 + 112);
  v20 = *a5;
  if (!sub_1818DF6EC(v19, 0))
  {
    v21 = v19[16];
    if ((*(v21 + 20) & 0x9000) != 0)
    {
      sub_18193D288(v21, v20);
    }

    else
    {
      *v21 = v20;
      *(v21 + 20) = 4;
    }

    v22 = *(*v19 + 24);
    if (v22)
    {
      xmmword_1ED452F28(v22);
    }
  }

  if ((a3 & 0x80000000) != 0)
  {
    sub_1819012D0(101409);
  }

  else if (!sub_1818DF6EC(v19, 1u))
  {
    if (a2)
    {
      v23 = sub_1818900D0(v19[16] + 64, a2, a3, 0, 0);
      if (v23)
      {
        v24 = v23;
        v25 = *v19;
        *(v25 + 80) = v24;
        sub_181932D5C(v25, v24);
        sub_18193C988(*v19, v24);
      }
    }

    v26 = *(*v19 + 24);
    if (v26)
    {
      xmmword_1ED452F28(v26);
    }
  }

  if (sqlite3_step(v19) == 100)
  {
    v27 = sqlite3_column_int(v19, 0);
    v28 = v27 >> 1;
    v29 = (v27 & 1) == 0;
  }

  else
  {
    v29 = 1;
    v28 = 1;
  }

  *(a1 + 60) = sqlite3_reset(v19);
  if (!sub_1818DF6EC(v19, 1u))
  {
    v30 = *(*v19 + 24);
    if (v30)
    {
      xmmword_1ED452F28(v30);
    }
  }

  v31 = a5[1];
  if (v28 <= v31)
  {
    v32 = a5[1];
  }

  else
  {
    v32 = v28;
  }

  *(a6 + 3) = v32 - 1;
  sub_1819E0144(a1, a6);
  v33 = a6[2];
  if (v33)
  {
    v145 = a4;
    v147 = a3;
    v143 = v28;
    v34 = *v33;
    v35 = v33[2];
    v36 = v33[3];
    v37 = (*v33 + v36);
    v38 = *v37;
    if (*v37 < 0)
    {
      v40 = v37[1];
      if (v37[1] < 0)
      {
        v41 = v37[2];
        if (v41 < 0)
        {
          v151 = 0;
          v39 = sub_1819DFFB0(v37, &v151);
          v38 = v151 & 0x7FFFFFFF;
          if ((v151 & 0x7FFFFFFF) > v35)
          {
LABEL_117:
            *(a1 + 60) = 267;
            a4 = v145;
LABEL_118:
            v28 = v143;
            goto LABEL_119;
          }
        }

        else
        {
          v38 = ((v38 & 0x7F) << 14) | ((v40 & 0x7F) << 7) | v41;
          v39 = 3;
          if (v38 > v35)
          {
            goto LABEL_117;
          }
        }
      }

      else
      {
        v38 = ((v38 & 0x7F) << 7) | v40;
        v39 = 2;
        if (v38 > v35)
        {
          goto LABEL_117;
        }
      }
    }

    else
    {
      v39 = 1;
      if (v38 > v35)
      {
        goto LABEL_117;
      }
    }

    v139 = v33;
    v141 = v29;
    v142 = v31;
    v42 = 0;
    v43 = 0;
    v44 = v39 + v36;
    v45 = v38;
    while (1)
    {
      v47 = (v34 + v38);
      v48 = *v47;
      if (*v47 < 0)
      {
        v50 = v47[1];
        if (v47[1] < 0)
        {
          v52 = v47[2];
          if (v52 < 0)
          {
            v151 = 0;
            v51 = sub_1819DFFB0(v47, &v151);
            v48 = v151 & 0x7FFFFFFF;
          }

          else
          {
            v48 = ((v48 & 0x7F) << 14) | ((v50 & 0x7F) << 7) | v52;
            v51 = 3;
          }
        }

        else
        {
          v48 = ((v48 & 0x7F) << 7) | v50;
          v51 = 2;
        }

        v49 = v51 + v38;
      }

      else
      {
        v49 = v38 + 1;
      }

      if (v42 < v43)
      {
        goto LABEL_99;
      }

      if (v42 == v43)
      {
        LODWORD(v54) = v147 - v42;
        if (v48 >= v147 - v42)
        {
          v54 = v54;
        }

        else
        {
          v54 = v48;
        }

        if (v54)
        {
          v55 = 0;
          while (*(v34 + v49 + v55) == a2[v42 + v55])
          {
            if (v54 == ++v55)
            {
              goto LABEL_75;
            }
          }

          LODWORD(v54) = v55;
        }

LABEL_75:
        v43 = v54 + v42;
        if (v54 + v42 == v147)
        {
          if (v54 == v48)
          {
            v150 = v48;
            v31 = v142;
            goto LABEL_187;
          }

LABEL_99:
          v150 = v48;
          v31 = v142;
          if ((v145 & 8) == 0)
          {
LABEL_100:
            v67 = &off_1ED452EB0;
            if (dword_1ED452E80)
            {
              a4 = v145;
              v29 = v141;
              if (xmmword_1ED456AF0)
              {
                xmmword_1ED452F18(xmmword_1ED456AF0);
              }

              qword_1ED456A48[0] -= xmmword_1ED452EC0(v139);
              --qword_1ED456A90;
              off_1ED452EB0(v139);
              if (xmmword_1ED456AF0)
              {
                v67 = &xmmword_1ED452F28;
                goto LABEL_106;
              }
            }

            else
            {
              a4 = v145;
              v29 = v141;
LABEL_106:
              (*v67)();
            }

            a6[2] = 0;
            goto LABEL_118;
          }

LABEL_187:
          v105 = v49;
          v106 = v48;
          v107 = v49 + v48;
          if (v48)
          {
            v108 = v107 > v35;
          }

          else
          {
            v108 = 1;
          }

          if (v108)
          {
            *(a1 + 60) = 267;
            a4 = v145;
            v29 = v141;
            goto LABEL_118;
          }

          v109 = (v105 + v48);
          a6[4] = v109;
          *(a6 + 14) = *(a6 + 3);
          *(a6 + 15) = v109;
          *(a6 + 26) = 0;
          v149 = v105;
          if (v42)
          {
            v140 = v106;
            LODWORD(v110) = *(a6 + 27);
            if (v110 >= v42)
            {
              v114 = 0;
              v115 = a6[12];
              v111 = v42;
              goto LABEL_203;
            }

            if (!v110)
            {
              LODWORD(v110) = 64;
            }

            v110 = v110;
            v111 = v42;
            do
            {
              v112 = v110;
              v110 *= 2;
            }

            while (v112 < v42);
            v138 = a6[12];
            if (sqlite3_initialize() || (v115 = sub_18190287C(v138, v112, 688041480)) == 0)
            {
              *(a1 + 60) = 7;
              v113 = *(a6 + 26);
              v31 = v142;
            }

            else
            {
              *(a6 + 27) = v112;
              a6[12] = v115;
              v114 = *(a6 + 26);
              v31 = v142;
LABEL_203:
              memcpy((v115 + v114), a2, v111);
              v113 = *(a6 + 26) + v42;
              *(a6 + 26) = v113;
            }

            v106 = v140;
            v105 = v149;
          }

          else
          {
            v113 = 0;
          }

          v116 = (v113 + v106);
          v117 = *(a6 + 27);
          if (v116 > v117)
          {
            if (v117)
            {
              LODWORD(v118) = *(a6 + 27);
            }

            else
            {
              LODWORD(v118) = 64;
            }

            v118 = v118;
            do
            {
              v119 = v118;
              v118 *= 2;
            }

            while (v119 < v116);
            v120 = a6[12];
            if (sqlite3_initialize() || (v121 = sub_18190287C(v120, v119, 688041480)) == 0)
            {
              *(a1 + 60) = 7;
            }

            else
            {
              *(a6 + 27) = v119;
              a6[12] = v121;
              v113 = *(a6 + 26);
              v105 = v149;
LABEL_214:
              memcpy((v121 + v113), (v34 + v105), v106);
              *(a6 + 26) += v106;
            }

            if (v44 >= v35)
            {
              v125 = a6[2];
              *(a6 + 17) = v125[2] + 1;
              a4 = v145;
            }

            else
            {
              v122 = (v34 + v44);
              v123 = *v122;
              if (*v122 < 0)
              {
                v131 = v122[1];
                a4 = v145;
                if (v122[1] < 0)
                {
                  v135 = v122[2];
                  if (v135 < 0)
                  {
                    v151 = 0;
                    v124 = sub_1819DFFB0(v122, &v151);
                    v123 = v151 & 0x7FFFFFFF;
                  }

                  else
                  {
                    v123 = ((v123 & 0x7F) << 14) | ((v131 & 0x7F) << 7) | v135;
                    v124 = 3;
                  }
                }

                else
                {
                  v123 = ((v123 & 0x7F) << 7) | v131;
                  v124 = 2;
                }
              }

              else
              {
                v124 = 1;
                a4 = v145;
              }

              v44 += v124;
              *(a6 + 17) = v123 + v45;
              v125 = a6[2];
            }

            *(a6 + 16) = v44;
            v136 = a6[4];
            v29 = v141;
            if (v136 < v125[3])
            {
LABEL_254:
              a6[4] = (v136 + sub_1819DFFB0((*v125 + v136), a6 + 14));
            }

            else
            {
              v136 = 4;
              while (1)
              {
                sub_1819E0144(a1, a6);
                v125 = a6[2];
                if (!v125)
                {
                  break;
                }

                if (v125[3] > 4)
                {
                  goto LABEL_254;
                }
              }

              if (!*(a1 + 60))
              {
                *(a1 + 60) = 267;
              }
            }

            sub_1819E0398(a1, a6);
            goto LABEL_118;
          }

          v121 = a6[12];
          goto LABEL_214;
        }

        if (v54 < v48 && *(v34 + v54 + v49) > a2[v43])
        {
          goto LABEL_99;
        }
      }

      if (v44 >= v35)
      {
        break;
      }

      v56 = (v34 + v44);
      v57 = *v56;
      if (*v56 < 0)
      {
        v59 = v56[1];
        if (v56[1] < 0)
        {
          v60 = v56[2];
          if (v60 < 0)
          {
            v151 = 0;
            v58 = sub_1819DFFB0(v56, &v151);
            v57 = v151 & 0x7FFFFFFF;
          }

          else
          {
            v57 = ((v57 & 0x7F) << 14) | ((v59 & 0x7F) << 7) | v60;
            v58 = 3;
          }
        }

        else
        {
          v57 = ((v57 & 0x7F) << 7) | v59;
          v58 = 2;
        }
      }

      else
      {
        v58 = 1;
      }

      v45 += v57;
      if (v45 >= v35)
      {
        *(a1 + 60) = 267;
        a4 = v145;
        v29 = v141;
        v31 = v142;
        goto LABEL_118;
      }

      v44 += v58;
      v38 = v45 + 1;
      v61 = (v34 + v45);
      v42 = *v61;
      if (*v61 < 0)
      {
        v46 = v61[1];
        if (v61[1] < 0)
        {
          v53 = v61[2];
          if (v53 < 0)
          {
            v151 = 0;
            v62 = sub_1819DFFB0(v61, &v151);
            v42 = v151 & 0x7FFFFFFF;
            v38 = v62 + v45;
          }

          else
          {
            v42 = ((v42 & 0x7F) << 14) | ((v46 & 0x7F) << 7) | v53;
            v38 = v45 + 3;
          }
        }

        else
        {
          v42 = ((v42 & 0x7F) << 7) | v46;
          v38 = v45 + 2;
        }
      }
    }

    v150 = v48;
    v31 = v142;
    if ((v145 & 8) == 0)
    {
      goto LABEL_100;
    }

    a4 = v145;
    v29 = v141;
    while (1)
    {
      sub_1819E0144(a1, a6);
      v63 = a6[2];
      if (!v63)
      {
        goto LABEL_118;
      }

      v35 = v63[2];
      v64 = v63[3];
      if (v64 < v35)
      {
        v34 = *v63;
        v65 = (*v63 + v64);
        v45 = *v65;
        if (*v65 < 0)
        {
          v68 = v65[1];
          if (v65[1] < 0)
          {
            v69 = v65[2];
            if (v69 < 0)
            {
              v151 = 0;
              v66 = sub_1819DFFB0(v65, &v151);
              v45 = v151 & 0x7FFFFFFF;
            }

            else
            {
              v45 = ((v45 & 0x7F) << 14) | ((v68 & 0x7F) << 7) | v69;
              v66 = 3;
            }
          }

          else
          {
            v45 = ((v45 & 0x7F) << 7) | v68;
            v66 = 2;
          }
        }

        else
        {
          v66 = 1;
        }

        v70 = v45 >= 4 && v45 < v64;
        if (v70)
        {
          v44 = v66 + v64;
          v42 = 0;
          v49 = sub_1819DFF14((v34 + v45), &v150) + v45;
          v48 = v150;
          goto LABEL_187;
        }

        goto LABEL_117;
      }
    }
  }

LABEL_119:
  if ((a4 & 0x108) == 8)
  {
    goto LABEL_232;
  }

  if (*(a1 + 60))
  {
    goto LABEL_232;
  }

  v71 = *(a6 + 2);
  v72 = v71 | 1;
  *(a6 + 2) = v71 | 1;
  v73 = a6[2];
  if (!v73)
  {
    goto LABEL_232;
  }

  if ((a4 & 2) != 0)
  {
    v72 = v71 | 3;
    *(a6 + 2) = v71 | 3;
  }

  if (v28 >= v31 && !v29)
  {
    v74 = *(a6 + 14);
    if (v74 != *(a6 + 3) || *(a6 + 17) >= v73[3])
    {
      a6[11] = sub_1819EE4E4(a1, v72 & 2, **a6, v74);
    }
  }

  if ((a4 & 2) == 0)
  {
    goto LABEL_232;
  }

  v75 = a6[11];
  if (!v75 || *(*a1 + 188) != 4)
  {
    v81 = a6[2];
    v82 = *(a6 + 3);
    if (*(a6 + 14) == v82)
    {
      v83 = *(a6 + 15);
    }

    else
    {
      v83 = 4;
    }

    v84 = v83;
    v85 = v83 + 8;
    v86 = v83 << 32;
    do
    {
      v86 += 0x100000000;
      if ((*(*v81 + v84) & 0x80000000) == 0)
      {
        break;
      }

      v70 = v84++ < v85;
    }

    while (v70);
    a6[4] = (v86 >> 32);
    if (*(a6 + 17) < v81[3] || *(a1 + 60))
    {
      goto LABEL_231;
    }

    v146 = a4;
    v144 = 0;
    v148 = 0;
    v87 = *a6;
    v88 = v82 + 1;
    v89 = 0x1ED452000uLL;
    while (1)
    {
      if (v82 >= v87[2])
      {
LABEL_176:
        a4 = v146;
        LODWORD(v76) = v148;
        v78 = v144;
        if (v144)
        {
          goto LABEL_177;
        }

LABEL_231:
        sub_1819E06E0(a1, a6);
        goto LABEL_232;
      }

      v90 = sub_1819DFC90(a1, v82 + (*v87 << 37) + 1);
      if (v90)
      {
        v91 = v90[2];
        if (v91 >= 4)
        {
          v92 = v90[3];
          if (v92 <= v91)
          {
            v96 = __rev16(**v90);
            v97 = v96 == 0;
            v98 = v144;
            if (v96)
            {
              v99 = v144;
            }

            else
            {
              v99 = v90;
            }

            if (v96)
            {
              v100 = v88;
            }

            else
            {
              v100 = v148;
            }

            v148 = v100;
            if (!v97)
            {
              v98 = v90;
            }

            v144 = v98;
            if (v99)
            {
              v101 = &off_1ED452EB0;
              if (!dword_1ED452E80)
              {
                goto LABEL_174;
              }

              if (xmmword_1ED456AF0)
              {
                (*(v89 + 3864))();
              }

              qword_1ED456A48[0] -= xmmword_1ED452EC0(v99);
              --qword_1ED456A90;
              v89 = 0x1ED452000;
              off_1ED452EB0(v99);
              v99 = xmmword_1ED456AF0;
              if (xmmword_1ED456AF0)
              {
                v101 = &xmmword_1ED452F28;
LABEL_174:
                (*v101)(v99);
              }
            }

            if (v92 < v91)
            {
              goto LABEL_176;
            }

            goto LABEL_150;
          }
        }

        *(a1 + 60) = 267;
        v93 = &off_1ED452EB0;
        if (dword_1ED452E80)
        {
          if (xmmword_1ED456AF0)
          {
            v94 = v90;
            (*(v89 + 3864))(xmmword_1ED456AF0);
            v90 = v94;
          }

          v95 = v90;
          qword_1ED456A48[0] -= xmmword_1ED452EC0(v90);
          --qword_1ED456A90;
          off_1ED452EB0(v95);
          if (!xmmword_1ED456AF0)
          {
            goto LABEL_150;
          }

          v93 = &xmmword_1ED452F28;
        }

        (*v93)();
      }

LABEL_150:
      ++v88;
      ++v82;
      if (*(a1 + 60))
      {
        goto LABEL_176;
      }
    }
  }

  v76 = v75[7];
  v77 = sub_1819DFC90(a1, v76 + (**a6 << 37));
  if (!v77)
  {
    goto LABEL_231;
  }

  v78 = v77;
  v79 = *(v77 + 2);
  if (v79 < 4 || *(v77 + 3) > v79)
  {
    *(a1 + 60) = 267;
    v80 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v78);
      --qword_1ED456A90;
      off_1ED452EB0(v78);
      v78 = xmmword_1ED456AF0;
      if (!xmmword_1ED456AF0)
      {
        goto LABEL_231;
      }

      v80 = &xmmword_1ED452F28;
    }

    (*v80)(v78);
    goto LABEL_231;
  }

LABEL_177:
  v102 = a6[2];
  if (!v102)
  {
    goto LABEL_184;
  }

  v103 = &off_1ED452EB0;
  if (dword_1ED452E80)
  {
    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v102);
    --qword_1ED456A90;
    off_1ED452EB0(v102);
    v102 = xmmword_1ED456AF0;
    if (!xmmword_1ED456AF0)
    {
      goto LABEL_184;
    }

    v103 = &xmmword_1ED452F28;
  }

  (*v103)(v102);
LABEL_184:
  a6[2] = v78;
  *(a6 + 3) = v76;
  v104 = __rev16(**v78);
  if (*(v78 + 3) >= v104)
  {
    a6[4] = (sub_1819DFFB0(*v78 + v104, a6 + 14) + v104);
    v126 = *(v78 + 2);
    v127 = *(v78 + 3);
    if (v127 >= v126)
    {
      v129 = v126 + 1;
    }

    else
    {
      v128 = *v78 + v127;
      v129 = *v128;
      if (*v128 < 0)
      {
        v130 = v128[1];
        if (v128[1] < 0)
        {
          v137 = v128[2];
          if (v137 < 0)
          {
            v151 = 0;
            sub_1819DFFB0(v128, &v151);
            v129 = v151 & 0x7FFFFFFF;
          }

          else
          {
            v129 = ((v129 & 0x7F) << 14) | ((v130 & 0x7F) << 7) | v137;
          }
        }

        else
        {
          v129 = ((v129 & 0x7F) << 7) | v130;
        }
      }
    }

    *(a6 + 17) = v129;
    goto LABEL_231;
  }

  *(a1 + 60) = 267;
LABEL_232:
  if ((a6[1] & 2) != 0)
  {
    a6[6] = sub_1819EDAC4;
    if ((a4 & 0x100) != 0)
    {
      return;
    }
  }

  else if (*(*a1 + 116) == 1)
  {
    a6[6] = sub_1819EDB88;
    if ((a4 & 0x100) != 0)
    {
      return;
    }
  }

  else
  {
    a6[6] = sub_1819EDF3C;
    if ((a4 & 0x100) != 0)
    {
      return;
    }
  }

  v132 = (*a6)[8];
  if (v132 >= 1 && !*(a1 + 60))
  {
    if (sqlite3_initialize() || (v133 = sub_181902484(8 * v132 + 16, 1913357809)) == 0)
    {
      *(a1 + 60) = 7;
    }

    else
    {
      v134 = v133;
      bzero(v133, 8 * v132 + 16);
      *v134 = 1;
      v134[1] = v132;
      a6[5] = v134;
    }
  }
}

uint64_t sub_1819E80C0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a2 + 72);
  if (v3 >= 2)
  {
    v4 = a2 + 104;
    v5 = *(a2 + 72);
    v45 = a2 + 104;
    while (1)
    {
      v6 = v5--;
      v7 = *(v2 + 96);
      if (v6 <= v3 / 2)
      {
        v10 = (v7 + 8 * v5);
        v8 = *v10;
        v9 = v10[2];
      }

      else
      {
        v8 = 2 * (v5 - v3 / 2);
        v9 = v8 | 1;
      }

      v11 = v7 + 4 * v5;
      v12 = v4 + (v8 << 7);
      *(v11 + 2) = 0;
      if (!*(v12 + 16))
      {
        goto LABEL_25;
      }

      v13 = v4 + (v9 << 7);
      if (!*(v13 + 16))
      {
        break;
      }

      v14 = *(v12 + 104);
      v15 = *(v13 + 104);
      if (v14 >= v15)
      {
        v16 = v15;
      }

      else
      {
        v16 = v14;
      }

      if (v16 >= 1)
      {
        v17 = v3;
        v18 = memcmp(*(v12 + 96), *(v13 + 96), v16);
        v3 = v17;
        v4 = v45;
        v2 = a2;
        if (v18)
        {
          goto LABEL_23;
        }
      }

      v18 = v14 - v15;
      if (v14 != v15)
      {
        goto LABEL_23;
      }

      *(v11 + 2) = 1;
      v19 = *(v12 + 112);
      v20 = *(v13 + 112);
      if (v19 != v20)
      {
        if (*(v2 + 76) == v19 > v20)
        {
          v18 = -1;
        }

        else
        {
          v18 = 1;
        }

LABEL_23:
        if (v18 < 0)
        {
          LOWORD(v9) = v8;
        }

LABEL_25:
        *v11 = v9;
        goto LABEL_26;
      }

      if (v9)
      {
        if (!*(a1 + 60))
        {
          (*(v13 + 48))(a1, v13, 0);
          v2 = a2;
          v3 = *(a2 + 72);
        }

        for (i = v3 + v9 + ((v3 + v9) >> 31); ; i = v24 + (v24 >> 31))
        {
LABEL_32:
          while (2)
          {
            v24 = i >> 1;
            if (v5 > i >> 1 || *(a1 + 60))
            {
              goto LABEL_26;
            }

            v25 = *(v2 + 96);
            v26 = v24 - v3 / 2;
            if (v24 >= v3 / 2)
            {
              v27 = 2 * v26;
              v23 = (2 * v26) | 1;
            }

            else
            {
              v27 = *(v25 + 8 * v24);
              v23 = *(v25 + 4 * ((2 * (v24 & 0x3FFFFFFF)) | 1));
            }

            v28 = v25 + 4 * v24;
            v29 = v4 + (v27 << 7);
            *(v28 + 2) = 0;
            if (!*(v29 + 16))
            {
              goto LABEL_31;
            }

            v30 = v4 + (v23 << 7);
            if (!*(v30 + 16))
            {
              *v28 = v27;
              i = v24 + (v24 >> 31);
              continue;
            }

            break;
          }

          v31 = *(v29 + 104);
          v32 = *(v30 + 104);
          if (v31 >= v32)
          {
            v33 = v32;
          }

          else
          {
            v33 = v31;
          }

          if (v33 >= 1)
          {
            v34 = v3;
            v43 = v27;
            v22 = memcmp(*(v29 + 96), *(v30 + 96), v33);
            LOWORD(v27) = v43;
            v3 = v34;
            v4 = v45;
            v2 = a2;
            if (v22)
            {
              goto LABEL_29;
            }
          }

          v22 = v31 - v32;
          if (v31 != v32)
          {
            goto LABEL_29;
          }

          *(v28 + 2) = 1;
          v35 = *(v29 + 112);
          v36 = *(v30 + 112);
          if (v35 != v36)
          {
            break;
          }

          if (v23)
          {
            (*(v30 + 48))(a1, v30, 0);
            v2 = a2;
            v3 = *(a2 + 72);
            v24 = v3 + v23;
          }
        }

        if (*(v2 + 76) == v35 > v36)
        {
          v22 = -1;
        }

        else
        {
          v22 = 1;
        }

LABEL_29:
        if (v22 < 0)
        {
          LOWORD(v23) = v27;
        }

LABEL_31:
        *v28 = v23;
        i = v24 + (v24 >> 31);
        goto LABEL_32;
      }

LABEL_26:
      if (v6 <= 2)
      {
        goto LABEL_53;
      }
    }

    LOWORD(v9) = v8;
    goto LABEL_25;
  }

LABEL_53:
  v37 = v2 + 104;
  v38 = v2 + 104 + (*(*(v2 + 96) + 4) << 7);
  v39 = *(v38 + 16);
  *(v2 + 20) = v39 == 0;
  *(v2 + 88) = *(v38 + 112);
  if (*(v2 + 80) && !*(a1 + 60) && v39 && !*(v38 + 120) || (result = sub_1819DF594(v2), v2 = a2, result))
  {

    return sub_1819DEB74(a1, v2, 0, 0);
  }

  else if (!*(a2 + 20))
  {
    v41 = v37 + (*(*(a2 + 96) + 4) << 7);
    v42 = *(a2 + 64);

    return v42(a2, v41);
  }

  return result;
}

void sub_1819E8474(uint64_t *a1, int *a2, int a3)
{
  v5 = (*(*a1 + 196) + 20);
  *(a2 + 14) = 0;
  *(a2 + 5) = 0u;
  *(a2 + 6) = 0u;
  *(a2 + 3) = 0u;
  *(a2 + 4) = 0u;
  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  *a2 = 0u;
  *a2 = a3;
  if (!*(a1 + 15) && a2[21] <= 1)
  {
    v6 = *(a2 + 11);
    if (sqlite3_initialize() || (v7 = sub_18190287C(v6, 0x20uLL, 0x1010040F09D962ALL)) == 0)
    {
      *(a1 + 15) = 7;
    }

    else
    {
      v8 = v7;
      bzero((v7 + 32 * a2[21]), 32 * (1 - a2[21]));
      *(a2 + 11) = v8;
      a2[21] = 1;
    }
  }

  a2[2] = 1;
  *(a2 + 74) = 1;
  a2[28] = 1;
  LODWORD(v9) = a2[11];
  if (v9 < v5)
  {
    if (!v9)
    {
      LODWORD(v9) = 64;
    }

    v9 = v9;
    do
    {
      v10 = v9;
      v9 *= 2;
    }

    while (v10 < v5);
    v11 = *(a2 + 4);
    if (sqlite3_initialize() || (v12 = sub_18190287C(v11, v10, 688041480)) == 0)
    {
      *(a1 + 15) = 7;
    }

    else
    {
      a2[11] = v10;
      *(a2 + 4) = v12;
    }
  }

  LODWORD(v13) = a2[7];
  if (v13 < v5)
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

    while (v14 < v5);
    v15 = *(a2 + 2);
    if (sqlite3_initialize() || (v16 = sub_18190287C(v15, v14, 688041480)) == 0)
    {
      *(a1 + 15) = 7;
    }

    else
    {
      a2[7] = v14;
      *(a2 + 2) = v16;
    }
  }

  v17 = a1 + 12;
  if (!a1[12])
  {
    v18 = sqlite3_mprintf("INSERT INTO '%q'.'%q_idx'(segid,term,pgno) VALUES(?,?,?)", *(*a1 + 16), *(*a1 + 24));
    v20 = v18;
    if (!*(a1 + 15))
    {
      if (v18)
      {
        v21 = sub_1818954B4(**a1, v18, 0xFFFFFFFFLL, 133, 0, a1 + 12, 0, v19);
        if (v21 == 1)
        {
          v22 = 11;
        }

        else
        {
          v22 = v21;
        }
      }

      else
      {
        v22 = 7;
      }

      *(a1 + 15) = v22;
    }

    if (v20)
    {
      v23 = &off_1ED452EB0;
      if (!dword_1ED452E80)
      {
LABEL_39:
        (*v23)(v20);
        goto LABEL_40;
      }

      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v20);
      --qword_1ED456A90;
      off_1ED452EB0(v20);
      v20 = xmmword_1ED456AF0;
      if (xmmword_1ED456AF0)
      {
        v23 = &xmmword_1ED452F28;
        goto LABEL_39;
      }
    }
  }

LABEL_40:
  if (!*(a1 + 15))
  {
    **(a2 + 2) = 0;
    a2[6] = 4;
    v24 = *v17;
    v25 = *a2;
    if (!sub_1818DF6EC(*v17, 0))
    {
      v26 = v24[16];
      if ((*(v26 + 20) & 0x9000) != 0)
      {
        sub_18193D288(v26, v25);
      }

      else
      {
        *v26 = v25;
        *(v26 + 20) = 4;
      }

      if (*(*v24 + 24))
      {
        v27 = xmmword_1ED452F28;

        v27();
      }
    }
  }
}

uint64_t sub_1819E87B0(uint64_t a1, const void *a2, int a3)
{
  v5 = a1;
  *(a1 + 24) = 0;
  if (sqlite3_initialize())
  {
    return 7;
  }

  v7 = sub_181902484(256, 0x2004093837F09);
  if (!v7)
  {
    return 7;
  }

  v8 = v7;
  v7[14] = 0u;
  v7[15] = 0u;
  v7[12] = 0u;
  v7[13] = 0u;
  v7[10] = 0u;
  v7[11] = 0u;
  v7[8] = 0u;
  v7[9] = 0u;
  v7[6] = 0u;
  v7[7] = 0u;
  v7[4] = 0u;
  v7[5] = 0u;
  v7[2] = 0u;
  v7[3] = 0u;
  *v7 = 0u;
  v7[1] = 0u;
  v33 = *(v5 + 20);
  if (v33 >= 1)
  {
    v9 = 0;
    v32 = v5;
    do
    {
      for (i = *(*(v5 + 32) + 8 * v9); i; i = *i)
      {
        if (!a2 || *(i + 7) >= a3 && !memcmp(i + 6, a2, a3))
        {
          i[1] = 0;
          v12 = *v8;
          v13 = i;
          v11 = v8;
          if (*v8)
          {
            v14 = 0;
            v13 = i;
            do
            {
              v34 = 0;
              v15 = &v34;
              do
              {
                if (v13)
                {
                  if (v12)
                  {
                    v16 = *(v13 + 28);
                    v17 = *(v12 + 28);
                    v18 = v16 - v17;
                    if (v16 >= v17)
                    {
                      v16 = *(v12 + 28);
                    }

                    v19 = memcmp((v13 + 48), (v12 + 48), v16);
                    if (v19)
                    {
                      v20 = v19;
                    }

                    else
                    {
                      v20 = v18;
                    }

                    if (v20 < 1)
                    {
                      *v15 = v13;
                      v15 = (v13 + 8);
                      v13 = *(v13 + 8);
                    }

                    else
                    {
                      *v15 = v12;
                      v15 = (v12 + 8);
                      v12 = *(v12 + 8);
                    }

                    *v15 = 0;
                  }

                  else
                  {
                    *v15 = v13;
                    v13 = 0;
                  }
                }

                else
                {
                  *v15 = v12;
                  v12 = 0;
                }
              }

              while (v13 | v12);
              v13 = v34;
              v8[v14++] = 0;
              v12 = v8[v14];
            }

            while (v12);
            v11 = &v8[v14];
          }

          *v11 = v13;
        }
      }

      ++v9;
      v5 = v32;
    }

    while (v9 != v33);
  }

  v21 = 0;
  v22 = 0;
  do
  {
    v23 = 0;
    v24 = v8[v21];
    v34 = 0;
    if (v22 | v24)
    {
      v25 = &v34;
      do
      {
        if (v22)
        {
          if (v24)
          {
            v26 = *(v22 + 28);
            v27 = *(v24 + 28);
            v28 = v26 - v27;
            if (v26 >= v27)
            {
              v26 = *(v24 + 28);
            }

            v29 = memcmp((v22 + 48), (v24 + 48), v26);
            if (v29)
            {
              v30 = v29;
            }

            else
            {
              v30 = v28;
            }

            if (v30 < 1)
            {
              *v25 = v22;
              v25 = (v22 + 8);
              v22 = *(v22 + 8);
            }

            else
            {
              *v25 = v24;
              v25 = (v24 + 8);
              v24 = *(v24 + 8);
            }

            *v25 = 0;
          }

          else
          {
            *v25 = v22;
            v22 = 0;
          }
        }

        else
        {
          *v25 = v24;
          v24 = 0;
        }
      }

      while (v22 | v24);
      v23 = v34;
    }

    ++v21;
    v22 = v23;
  }

  while (v21 != 32);
  v31 = &off_1ED452EB0;
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
      goto LABEL_58;
    }

    v31 = &xmmword_1ED452F28;
  }

  (*v31)(v8);
LABEL_58:
  result = 0;
  *(v5 + 24) = v23;
  return result;
}

uint64_t sub_1819E8AD4(_DWORD *a1, uint64_t a2, unsigned int a3, unsigned __int8 *a4)
{
  v8 = *(a2 + 56);
  if (v8 >= a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(a2 + 24);
  if ((a3 + v10 + *(a2 + 40) + 2) >= *(*a1 + 196))
  {
    if (v10 >= 5)
    {
      result = sub_1819EA9A4(a1, a2);
      if (a1[15])
      {
        return result;
      }

      v10 = *(a2 + 24);
    }

    v12 = a3 + v10 + 20;
    LODWORD(v13) = *(a2 + 28);
    if (v12 > v13)
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

      while (v14 < v12);
      v15 = *(a2 + 16);
      if (sqlite3_initialize() || (v16 = sub_18190287C(v15, v14, 688041480)) == 0)
      {
        a1[15] = 7;
      }

      else
      {
        *(a2 + 28) = v14;
        *(a2 + 16) = v16;
      }
    }
  }

  v17 = (*(a2 + 32) + *(a2 + 40));
  v18 = *(a2 + 24);
  v19 = *(a2 + 12);
  v20 = v18 - v19;
  if ((v18 - v19) > 0x7F)
  {
    if (v20 >> 14)
    {
      v21 = sub_1819436D0(v17, v20);
    }

    else
    {
      v17->i8[0] = (v20 >> 7) | 0x80;
      v17->i8[1] = v20 & 0x7F;
      v21 = 2;
    }
  }

  else
  {
    v17->i8[0] = v20;
    v21 = 1;
  }

  *(a2 + 40) += v21;
  v22 = *(a2 + 24);
  *(a2 + 12) = v22;
  if (!*(a2 + 74))
  {
    if (v9 < 1)
    {
      LODWORD(v9) = 0;
    }

    else
    {
      v23 = 0;
      while (*(*(a2 + 48) + v23) == a4[v23])
      {
        if (v9 == ++v23)
        {
          goto LABEL_38;
        }
      }

      LODWORD(v9) = v23;
    }

LABEL_38:
    v26 = (v22 + 9);
    v27 = *(a2 + 28);
    if (v26 <= v27)
    {
      v31 = *(a2 + 16);
    }

    else
    {
      if (v27)
      {
        LODWORD(v28) = *(a2 + 28);
      }

      else
      {
        LODWORD(v28) = 64;
      }

      v28 = v28;
      do
      {
        v29 = v28;
        v28 *= 2;
      }

      while (v29 < v26);
      v30 = *(a2 + 16);
      if (sqlite3_initialize() || (v31 = sub_18190287C(v30, v29, 688041480)) == 0)
      {
        a1[15] = 7;
        goto LABEL_67;
      }

      *(a2 + 28) = v29;
      *(a2 + 16) = v31;
      v22 = *(a2 + 24);
    }

    v32 = (v31 + v22);
    if (v9 > 0x7F)
    {
      if (v9 >> 14)
      {
        v33 = sub_1819436D0(v32, v9);
      }

      else
      {
        v32->i8[0] = (v9 >> 7) | 0x80;
        v32->i8[1] = v9 & 0x7F;
        v33 = 2;
      }
    }

    else
    {
      v32->i8[0] = v9;
      v33 = 1;
    }

    *(a2 + 24) += v33;
LABEL_67:
    v38 = v9;
    v39 = *(a2 + 24);
    v40 = *(a2 + 28);
    v41 = (v39 + 9);
    if (v41 <= v40)
    {
      result = *(a2 + 16);
    }

    else
    {
      if (v40)
      {
        LODWORD(v42) = *(a2 + 28);
      }

      else
      {
        LODWORD(v42) = 64;
      }

      v42 = v42;
      do
      {
        v43 = v42;
        v42 *= 2;
      }

      while (v43 < v41);
      v44 = *(a2 + 16);
      result = sqlite3_initialize();
      if (result || (result = sub_18190287C(v44, v43, 688041480)) == 0)
      {
        a1[15] = 7;
        v45 = a3 - v9;
        if (a3 == v9)
        {
          goto LABEL_95;
        }

LABEL_85:
        v48 = *(a2 + 24);
        v49 = *(a2 + 28);
        v50 = (v48 + v45);
        if (v50 <= v49)
        {
          result = *(a2 + 16);
        }

        else
        {
          if (v49)
          {
            LODWORD(v51) = *(a2 + 28);
          }

          else
          {
            LODWORD(v51) = 64;
          }

          v51 = v51;
          do
          {
            v52 = v51;
            v51 *= 2;
          }

          while (v52 < v50);
          v53 = *(a2 + 16);
          result = sqlite3_initialize();
          if (result || (result = sub_18190287C(v53, v52, 688041480)) == 0)
          {
            a1[15] = 7;
            goto LABEL_95;
          }

          *(a2 + 28) = v52;
          *(a2 + 16) = result;
          v48 = *(a2 + 24);
        }

        result = memcpy((result + v48), &a4[v38], v45);
        *(a2 + 24) += v45;
LABEL_95:
        *(a2 + 56) = 0;
        if (a3)
        {
          LODWORD(v54) = *(a2 + 60);
          if (v54 >= a3)
          {
            v58 = 0;
            result = *(a2 + 48);
            v55 = a3;
LABEL_104:
            result = memcpy((result + v58), a4, v55);
            *(a2 + 56) += a3;
            goto LABEL_105;
          }

          if (!v54)
          {
            LODWORD(v54) = 64;
          }

          v54 = v54;
          v55 = a3;
          do
          {
            v56 = v54;
            v54 *= 2;
          }

          while (v56 < a3);
          v57 = *(a2 + 48);
          result = sqlite3_initialize();
          if (!result)
          {
            result = sub_18190287C(v57, v56, 688041480);
            if (result)
            {
              *(a2 + 60) = v56;
              *(a2 + 48) = result;
              v58 = *(a2 + 56);
              goto LABEL_104;
            }
          }

          a1[15] = 7;
        }

LABEL_105:
        *(a2 + 74) = 0;
        *(a2 + 72) = 1;
        **(a2 + 88) = *(a2 + 8);
        return result;
      }

      *(a2 + 28) = v43;
      *(a2 + 16) = result;
      v39 = *(a2 + 24);
    }

    v46 = a3 - v9;
    v47 = (result + v39);
    if (v46 > 0x7F)
    {
      if (v46 >> 14)
      {
        result = sub_1819436D0(v47, v46);
      }

      else
      {
        v47->i8[0] = (v46 >> 7) | 0x80;
        v47->i8[1] = v46 & 0x7F;
        result = 2;
      }
    }

    else
    {
      v47->i8[0] = v46;
      result = 1;
    }

    *(a2 + 24) += result;
    v45 = a3 - v9;
    if (a3 == v9)
    {
      goto LABEL_95;
    }

    goto LABEL_85;
  }

  if (*(a2 + 8) == 1)
  {
LABEL_24:
    LODWORD(v9) = 0;
    goto LABEL_67;
  }

  v24 = a3;
  if (*(a2 + 56))
  {
    if (v9 < 1)
    {
      LODWORD(v9) = 0;
    }

    else
    {
      v25 = 0;
      while (*(*(a2 + 48) + v25) == a4[v25])
      {
        if (v9 == ++v25)
        {
          goto LABEL_55;
        }
      }

      LODWORD(v9) = v25;
    }

LABEL_55:
    v24 = v9 + 1;
  }

  result = sub_1819EB6B8(a1, a2);
  if (!a1[15])
  {
    *(a2 + 104) = 0;
    if (v24)
    {
      LODWORD(v34) = *(a2 + 108);
      if (v34 >= v24)
      {
        v59 = 0;
        result = *(a2 + 96);
        v35 = v24;
      }

      else
      {
        if (!v34)
        {
          LODWORD(v34) = 64;
        }

        v34 = v34;
        v35 = v24;
        do
        {
          v36 = v34;
          v34 *= 2;
        }

        while (v36 < v24);
        v37 = *(a2 + 96);
        result = sqlite3_initialize();
        if (result || (result = sub_18190287C(v37, v36, 688041480)) == 0)
        {
          a1[15] = 7;
          *(a2 + 112) = *(a2 + 8);
          return result;
        }

        *(a2 + 108) = v36;
        *(a2 + 96) = result;
        v59 = *(a2 + 104);
      }

      result = memcpy((result + v59), a4, v35);
      *(a2 + 104) += v24;
      v60 = a1[15];
      *(a2 + 112) = *(a2 + 8);
      if (!v60)
      {
        goto LABEL_24;
      }

      return result;
    }

    LODWORD(v9) = 0;
    *(a2 + 112) = *(a2 + 8);
    goto LABEL_67;
  }

  return result;
}

uint64_t sub_1819E90AC(uint64_t a1, uint64_t a2, char *a3, int a4, uint64_t a5)
{
  v185 = 0;
  v10 = *a1;
  if (*(*a1 + 188) != 5)
  {
    v189[0] = 0;
    v11 = sqlite3_mprintf("REPLACE INTO %Q.'%q_config' VALUES ('version', %d)", v10[2], v10[3], 5);
    v13 = v11;
    if (!*(a1 + 60))
    {
      if (v11)
      {
        v14 = sub_1818954B4(**a1, v11, 0xFFFFFFFFLL, 133, 0, v189, 0, v12);
        if (v14 == 1)
        {
          v15 = 11;
        }

        else
        {
          v15 = v14;
        }
      }

      else
      {
        v15 = 7;
      }

      *(a1 + 60) = v15;
    }

    if (!v13)
    {
      goto LABEL_16;
    }

    v16 = &off_1ED452EB0;
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
        goto LABEL_16;
      }

      v16 = &xmmword_1ED452F28;
    }

    (*v16)(v13);
LABEL_16:
    if (!*(a1 + 60))
    {
      sqlite3_step(v189[0]);
      v17 = sqlite3_finalize(v189[0]);
      if (!*(a1 + 60))
      {
        *(a1 + 60) = v17;
      }

      v18 = *(v10 + 48) + 1;
      *(v10 + 47) = 5;
      *(v10 + 48) = v18;
    }
  }

  sub_1819E5E40(a1, a2, 0x40u, 0, a3, a4, 0xFFFFFFFF, 0, &v185);
  if (*(a1 + 60))
  {
    goto LABEL_22;
  }

  v19 = v185;
  if (*(v185 + 20))
  {
    goto LABEL_22;
  }

  v21 = v185 + 104;
  if (*(v185 + 104 + (*(*(v185 + 96) + 4) << 7) + 112) < a5)
  {
    do
    {
      sub_1819DEB74(a1, v19, 1, a5);
      if (*(a1 + 60) || *(v19 + 20))
      {
        goto LABEL_22;
      }

      v22 = *(v21 + (*(*(v19 + 96) + 4) << 7) + 112);
      v23 = *(v19 + 76);
    }

    while ((v23 || v22 < a5) && (!v23 || v22 > a5));
  }

  v24 = (v21 + (*(*(v19 + 96) + 4) << 7));
  if (v24[14] != a5)
  {
    goto LABEL_22;
  }

  v25 = *(*a1 + 116);
  v26 = **v24;
  v27 = v24[2];
  v28 = *v27;
  v30 = v27[2];
  v29 = v27[3];
  v188 = 0;
  v31 = (v30 - v29);
  if (sqlite3_initialize() || (v33 = sub_181902484(v31 + 16, 1913357809)) == 0)
  {
    if (v31 >= -15)
    {
      *(a1 + 60) = 7;
      goto LABEL_22;
    }

    v32 = 0;
  }

  else
  {
    v32 = v33;
    bzero(v33, v31 + 16);
  }

  if (*(a1 + 60))
  {
    goto LABEL_22;
  }

  v173 = v26;
  memcpy(v32, &v28[v29], v31);
  v34 = *(v24 + 3);
  v180 = v29;
  v172 = v30;
  if (v34 == *(v24 + 14))
  {
    v35 = *(v24 + 15);
  }

  else
  {
    v35 = __rev16(*v28);
  }

  v36 = v35 + sub_1819DFFB0(&v28[v35], &v188);
  if (v25 == 1)
  {
    v37 = v24[4];
    for (i = v36; v37 > v36; i = v36)
    {
      if (v28[i])
      {
        v39 = v36;
      }

      else
      {
        v39 = v36 + 1;
      }

      if (v28[v39])
      {
        v35 = v39;
      }

      else
      {
        v35 = v39 + 1;
      }

      LODWORD(v36) = v35 + sub_1819DFFB0(&v28[v35], &v188);
    }

    v43 = *(v24 + 17);
    if (v36 < v43 && !v28[i])
    {
      LODWORD(v36) = v36 + 1;
    }

    if (v36 < v43 && !v28[v36])
    {
      LODWORD(v36) = v36 + 1;
    }
  }

  else
  {
    v40 = &v28[v36];
    v41 = v28[v36];
    if (v28[v36] < 0)
    {
      v44 = v40[1];
      if (v40[1] < 0)
      {
        v45 = v40[2];
        if (v45 < 0)
        {
          v189[0] = 0;
          v42 = sub_1819DFFB0(v40, v189);
          v41 = v189[0] & 0x7FFFFFFF;
        }

        else
        {
          v41 = ((v41 & 0x7F) << 14) | ((v44 & 0x7F) << 7) | v45;
          v42 = 3;
        }
      }

      else
      {
        v41 = ((v41 & 0x7F) << 7) | v44;
        v42 = 2;
      }
    }

    else
    {
      v42 = 1;
    }

    v46 = v42 + v36;
    v47 = v24[4];
    if (v47 > v42 + v36)
    {
      do
      {
        v35 = v46 + (v41 >> 1);
        v49 = v35 + sub_1819DFFB0(&v28[v35], &v188);
        v50 = &v28[v49];
        v41 = *v50;
        if ((v41 & 0x80) != 0)
        {
          v51 = v50[1];
          if (v50[1] < 0)
          {
            v52 = v50[2];
            if (v52 < 0)
            {
              v189[0] = 0;
              v48 = sub_1819DFFB0(v50, v189);
              v41 = v189[0] & 0x7FFFFFFF;
            }

            else
            {
              v41 = ((v41 & 0x7F) << 14) | ((v51 & 0x7F) << 7) | v52;
              v48 = 3;
            }
          }

          else
          {
            v41 = ((v41 & 0x7F) << 7) | v51;
            v48 = 2;
          }
        }

        else
        {
          v48 = 1;
        }

        v46 = v48 + v49;
      }

      while (v47 > v48 + v49);
      v29 = v180;
    }

    LODWORD(v36) = *(v24 + 30) + v47;
  }

  v182 = v24;
  v183 = v32;
  v184 = v31;
  if (v36 < v29)
  {
    v53 = 0;
    goto LABEL_147;
  }

  if (*(a1 + 60))
  {
    v53 = 1;
    goto LABEL_146;
  }

  v54 = *v24;
  v55 = v34 + 1;
  __src = *(*a1 + 116);
  while (1)
  {
    if (v55 > v54[2])
    {
LABEL_103:
      v53 = 1;
      v29 = v180;
      goto LABEL_146;
    }

    v56 = v55 + (*v54 << 37);
    v57 = sub_1819DFC90(a1, v56);
    if (!v57)
    {
      v53 = 1;
      v29 = v180;
      v24 = v182;
      goto LABEL_146;
    }

    v58 = v57;
    v59 = *v57;
    v60 = __rev16(**v57);
    if (v60)
    {
      v53 = 0;
      goto LABEL_107;
    }

    v61 = v57[3];
    if (v61 != v57[2])
    {
      v62 = &v59[v61];
      v63 = v59[v61];
      v60 = v63;
      if (v63 < 0)
      {
        v64 = v62[1];
        if (v62[1] < 0)
        {
          v65 = v62[2];
          if (v65 < 0)
          {
            v189[0] = 0;
            sub_1819DFFB0(v62, v189);
            v60 = v189[0] & 0x7FFFFFFF;
          }

          else
          {
            v60 = ((v60 & 0x7F) << 14) | ((v64 & 0x7F) << 7) | v65;
          }
        }

        else
        {
          v60 = ((v60 & 0x7F) << 7) | v64;
        }
      }

      if (v60)
      {
        break;
      }
    }

    LODWORD(v189[0]) = 0x4000000;
    if (__src != 1)
    {
      sub_1819D7E9C(a1, v56, v189, 4u);
    }

    v66 = &off_1ED452EB0;
    LODWORD(v31) = v184;
    if (dword_1ED452E80)
    {
      v24 = v182;
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v58);
      --qword_1ED456A90;
      off_1ED452EB0(v58);
      v58 = xmmword_1ED456AF0;
      if (!xmmword_1ED456AF0)
      {
        goto LABEL_84;
      }

      v66 = &xmmword_1ED452F28;
    }

    else
    {
      v24 = v182;
    }

    (*v66)(v58);
LABEL_84:
    ++v55;
    if (*(a1 + 60))
    {
      goto LABEL_103;
    }
  }

  v53 = 1;
LABEL_107:
  if (__src == 1)
  {
    goto LABEL_139;
  }

  v67 = v58[3];
  if (v60 >= v67 || ((v68 = v58[2], v60 >= 4) ? (v69 = v68 < v67) : (v69 = 1), v69))
  {
    *(a1 + 60) = 267;
    goto LABEL_139;
  }

  v170 = v60 - 4;
  __srca = v58[2];
  if (v68 <= v67)
  {
    v71 = 0;
    __srcb = 0;
    goto LABEL_119;
  }

  v70 = &v59[v67];
  v168 = v59[v67];
  if (v59[v67] < 0)
  {
    v75 = v70[1];
    if (v70[1] < 0)
    {
      v76 = v70[2];
      if (v76 < 0)
      {
        v189[0] = 0;
        v167 = sub_1819DFFB0(v70, v189);
        v168 = v189[0] & 0x7FFFFFFF;
      }

      else
      {
        v168 = ((v168 & 0x7F) << 14) | ((v75 & 0x7F) << 7) | v76;
        v167 = 3;
      }
    }

    else
    {
      v168 = ((v168 & 0x7F) << 7) | v75;
      v167 = 2;
    }
  }

  else
  {
    v167 = 1;
  }

  if (v168 >= v60)
  {
    if (*(a1 + 60))
    {
      goto LABEL_139;
    }

    v161 = __srca - v67;
    if (sqlite3_initialize() || (__srcb = sub_181902484(v161 + 2, 1913357809)) == 0)
    {
      v69 = v161 < -1;
      v32 = v183;
      if (!v69)
      {
        *(a1 + 60) = 7;
      }

      goto LABEL_139;
    }

    v162 = v167 + v67;
    bzero(__srcb, v161 + 2);
    v163 = (v168 - v170);
    if (v168 - v170 > 0x7F)
    {
      if (v163 >> 14)
      {
        v71 = sub_1819436D0(__srcb, v163);
      }

      else
      {
        __srcb->i8[0] = (v163 >> 7) | 0x80;
        __srcb->i8[1] = (v168 - v170) & 0x7F;
        v71 = 2;
      }
    }

    else
    {
      __srcb->i8[0] = v168 - v170;
      v71 = 1;
    }

    v164 = v58[2];
    v165 = __OFSUB__(v164, v162);
    v166 = v164 - v162;
    if (!((v166 < 0) ^ v165 | (v166 == 0)))
    {
      memcpy(__srcb + v71, &v59[v162], v166);
      v71 = v71 - v162 + v58[2];
    }

LABEL_119:
    v72 = v58[3] - v170;
    memmove(v59 + 4, &v59[v60], v72 - 4);
    v73 = v72;
    *(v59 + 1) = bswap32(v72) >> 16;
    if (__rev16(*v59))
    {
      *v59 = 1024;
    }

    if (v71 >= 1)
    {
      memcpy(&v59[v72], __srcb, v71);
      v73 = v72 + v71;
    }

    if (!__srcb)
    {
      goto LABEL_130;
    }

    v74 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(__srcb);
      --qword_1ED456A90;
      off_1ED452EB0(__srcb);
      __srcb = xmmword_1ED456AF0;
      if (!xmmword_1ED456AF0)
      {
        goto LABEL_130;
      }

      v74 = &xmmword_1ED452F28;
    }

    (*v74)(__srcb);
LABEL_130:
    sub_1819D7E9C(a1, v56, v59, v73);
    goto LABEL_138;
  }

  *(a1 + 60) = 267;
LABEL_138:
  v32 = v183;
LABEL_139:
  if (dword_1ED452E80)
  {
    v29 = v180;
    v24 = v182;
    LODWORD(v31) = v184;
    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v58);
    --qword_1ED456A90;
    off_1ED452EB0(v58);
    v58 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v77 = &xmmword_1ED452F28;
      goto LABEL_145;
    }
  }

  else
  {
    v29 = v180;
    v24 = v182;
    LODWORD(v31) = v184;
    v77 = &off_1ED452EB0;
LABEL_145:
    (*v77)(v58);
  }

LABEL_146:
  LODWORD(v36) = v29;
LABEL_147:
  if (*(v24 + 124))
  {
LABEL_148:
    v78 = &v28[v35];
    v79 = v188;
    if (v188 > 0x7F)
    {
      if (v188 >> 14)
      {
        v80 = sub_1819436D0(v78, v188);
      }

      else
      {
        v78->i8[0] = (v188 >> 7) | 0x80;
        v78->i8[1] = v79 & 0x7F;
        v80 = 2;
      }
    }

    else
    {
      v78->i8[0] = v188;
      v80 = 1;
    }

    v97 = 0;
    v98 = v35 + v80;
    v35 = v98 + 1;
    v28[v98] = 1;
    goto LABEL_187;
  }

  if (v36 != v29 && v31 >= 1)
  {
    v81 = 0;
    v82 = 0;
    do
    {
      v84 = &v32[v81];
      v85 = v32[v81];
      if (v32[v81] < 0)
      {
        v86 = v84[1];
        if (v84[1] < 0)
        {
          v87 = v84[2];
          if (v87 < 0)
          {
            v189[0] = 0;
            v83 = sub_1819DFFB0(v84, v189);
            v85 = v189[0] & 0x7FFFFFFF;
          }

          else
          {
            v85 = ((v85 & 0x7F) << 14) | ((v86 & 0x7F) << 7) | v87;
            v83 = 3;
          }
        }

        else
        {
          v85 = ((v85 & 0x7F) << 7) | v86;
          v83 = 2;
        }
      }

      else
      {
        v83 = 1;
      }

      v81 += v83;
      v82 += v85;
      if (v82 == v36)
      {
        v53 = 1;
      }
    }

    while (v81 < v31);
  }

  v29 = v180;
  if (v35 == bswap32(*v28) >> 16)
  {
    if (v36 == v180 || v53)
    {
      *v28 = 0;
      if (*(v24 + 124))
      {
        goto LABEL_148;
      }

      goto LABEL_167;
    }

LABEL_183:
    if (v36 == v180)
    {
      v97 = 0;
      LODWORD(v36) = v180;
    }

    else
    {
      v189[0] = 0;
      LODWORD(v36) = v36 + sub_1819DFFB0(&v28[v36], v189);
      v129 = &v28[v35];
      v130 = v189[0] + v188;
      if ((v189[0] + v188) > 0x7F)
      {
        if (v130 >> 14)
        {
          v131 = sub_1819436D0(v129, v130);
        }

        else
        {
          v129->i8[0] = (v130 >> 7) | 0x80;
          v129->i8[1] = v130 & 0x7F;
          v131 = 2;
        }
      }

      else
      {
        v129->i8[0] = v130;
        v131 = 1;
      }

      v97 = 0;
      v35 += v131;
    }

    goto LABEL_187;
  }

LABEL_167:
  if (!v53)
  {
    goto LABEL_183;
  }

  v88 = *(v24 + 3);
  if (__PAIR64__(v35, v88) == v24[7])
  {
    if (v31 < 1)
    {
      v147 = 0;
      v97 = 0;
    }

    else
    {
      v89 = 0;
      v90 = 0;
      v91 = 0;
      while (1)
      {
        v92 = &v32[v89];
        v93 = v32[v89];
        if (v32[v89] < 0)
        {
          v95 = v92[1];
          if (v92[1] < 0)
          {
            v96 = v92[2];
            if (v96 < 0)
            {
              v189[0] = 0;
              v94 = sub_1819DFFB0(v92, v189);
              v93 = v189[0] & 0x7FFFFFFF;
            }

            else
            {
              v93 = ((v93 & 0x7F) << 14) | ((v95 & 0x7F) << 7) | v96;
              v94 = 3;
            }
          }

          else
          {
            v93 = ((v93 & 0x7F) << 7) | v95;
            v94 = 2;
          }
        }

        else
        {
          v94 = 1;
        }

        v97 = v93 + v90;
        if (v93 + v90 > v35)
        {
          break;
        }

        v89 += v94;
        ++v91;
        v90 += v93;
        if (v89 >= v31)
        {
          goto LABEL_256;
        }
      }

      v97 = v90;
LABEL_256:
      v147 = v91 == 1;
      v29 = v180;
      v24 = v182;
    }

    if (v36 != v29)
    {
      LODWORD(v189[0]) = 0;
      v186 = 0;
      v148 = v36 + sub_1819DFF14(&v28[v36], &v186 + 1);
      v149 = sub_1819DFF14(&v28[v148], &v186);
      v150 = 0;
      v151 = v97;
      if (!v147)
      {
        v151 = sub_1819DFF14(&v28[v97], v189) + v97;
        v150 = v189[0];
      }

      v152 = v148 + v149;
      v153 = sub_1819DFF14(&v28[v151], &v187) + v151;
      v154 = HIDWORD(v186);
      v155 = v186;
      if (v150 >= SHIDWORD(v186))
      {
        v156 = HIDWORD(v186);
      }

      else
      {
        v156 = v150;
      }

      v157 = HIDWORD(v186) - v156 + v186;
      v158 = v152;
      if (v153 + v157 <= v180 && (v159 = v186 + v152, v159 <= v180))
      {
        v169 = HIDWORD(v186) - v156;
        v171 = v156;
        __srce = v158;
        if (!v147)
        {
          v97 += sub_18193E5FC(&v28[v97], v156);
        }

        v160 = v97 + sub_18193E5FC(&v28[v97], v157);
        if (v154 <= *(v182 + 26))
        {
          if (v150 < v154)
          {
            memcpy(&v28[v160], v182[12] + v171, v169);
            LODWORD(v160) = v160 + v169;
          }
        }

        else
        {
          *(a1 + 60) = 267;
        }

        memmove(&v28[v160], &v28[__srce], v155);
        v35 = v160 + v155;
        v97 = v36;
        LODWORD(v36) = v159;
        v32 = v183;
      }

      else
      {
        *(a1 + 60) = 267;
        v35 = v97;
        v97 = v36;
        LODWORD(v36) = v158;
        v32 = v183;
      }

      goto LABEL_270;
    }

    v35 = v97;
    LODWORD(v36) = v29;
    goto LABEL_187;
  }

  if (v35 != 4)
  {
    v97 = 0;
    goto LABEL_187;
  }

  v119 = (v88 << 32) - 0x100000000;
  v120 = v88 - 1;
  v121 = v88 - 1 + (v173 << 37);
  while (2)
  {
    v122 = v119;
    v123 = v121;
    if (v120 > *(v24 + 14))
    {
      v124 = sub_1819DFC90(a1, v121);
      if (v124)
      {
        v125 = v124[2];
        v126 = &off_1ED452EB0;
        if (!dword_1ED452E80)
        {
          goto LABEL_214;
        }

        if (xmmword_1ED456AF0)
        {
          v127 = v124;
          xmmword_1ED452F18(xmmword_1ED456AF0);
          v124 = v127;
        }

        v128 = v124;
        qword_1ED456A48[0] -= xmmword_1ED452EC0(v124);
        --qword_1ED456A90;
        off_1ED452EB0(v128);
        v24 = v182;
        if (xmmword_1ED456AF0)
        {
          v126 = &xmmword_1ED452F28;
LABEL_214:
          (*v126)();
        }

        v119 = v122 - 0x100000000;
        v121 = v123 - 1;
        --v120;
        if (v125 != 4)
        {
          break;
        }

        continue;
      }
    }

    break;
  }

  if (*(v24 + 14) == v123)
  {
    v133 = (v173 << 37) + (v122 >> 32);
    v134 = sub_1819DFC90(a1, v133);
    v32 = v183;
    if (v134)
    {
      v135 = *(v134 + 3);
      if (v135 == *(v182 + 15))
      {
        v136 = 0;
        v137 = 0;
        v138 = *v134;
        v139 = &(*v134)[v135];
        __srcd = v134;
        v140 = *(v134 + 2) - v135;
        do
        {
          v142 = v136;
          v143 = &v139[v136];
          v144 = *v143;
          if (*v143 < 0)
          {
            v145 = v143[1];
            if (v143[1] < 0)
            {
              v146 = v143[2];
              if (v146 < 0)
              {
                v189[0] = 0;
                v141 = sub_1819DFFB0(v143, v189);
                v144 = v189[0] & 0x7FFFFFFF;
              }

              else
              {
                v144 = ((v144 & 0x7F) << 14) | ((v145 & 0x7F) << 7) | v146;
                v141 = 3;
              }
            }

            else
            {
              v144 = ((v144 & 0x7F) << 7) | v145;
              v141 = 2;
            }
          }

          else
          {
            v141 = 1;
          }

          v137 += v144;
          v136 = v141 + v142;
        }

        while (v141 + v142 < v140);
        memmove(&v138[v137], v139, v142);
        *(*__srcd + 1) = bswap32(v137) >> 16;
        sub_1819D7E9C(a1, v133, *__srcd, v137 + v142);
        v134 = __srcd;
        if (!v142)
        {
          sub_1819EB900(a1, v173, *(v182 + 14));
          v134 = __srcd;
        }
      }
    }

    sqlite3_free(v134);
    v97 = 0;
    v35 = 4;
LABEL_270:
    v24 = v182;
  }

  else
  {
    v97 = 0;
    v35 = 4;
    v32 = v183;
  }

  LODWORD(v31) = v184;
  v29 = v180;
LABEL_187:
  if (!*(a1 + 60))
  {
    v99 = v36 - v35;
    memmove(&v28[v35], &v28[v36], (v172 - v36));
    v100 = v29 - (v36 - v35);
    *(v28 + 1) = bswap32(v100) >> 16;
    if (v31 < 1)
    {
      goto LABEL_226;
    }

    v101 = v36 - v35;
    v102 = 0;
    v103 = 0;
    v104 = 0;
    __srcc = v100;
    v105 = v100;
    v181 = v99;
    do
    {
      v107 = &v32[v104];
      v108 = v32[v104];
      if (v32[v104] < 0)
      {
        v110 = v107[1];
        if (v107[1] < 0)
        {
          v111 = v107[2];
          if (v111 < 0)
          {
            v189[0] = 0;
            v112 = sub_1819DFFB0(v107, v189);
            v101 = v181;
            v109 = v112;
            v108 = v189[0] & 0x7FFFFFFF;
          }

          else
          {
            v108 = ((v108 & 0x7F) << 14) | ((v110 & 0x7F) << 7) | v111;
            v109 = 3;
          }
        }

        else
        {
          v108 = ((v108 & 0x7F) << 7) | v110;
          v109 = 2;
        }
      }

      else
      {
        v109 = 1;
      }

      v102 += v108;
      if (v102 != v97)
      {
        if (v102 <= v35)
        {
          v113 = 0;
        }

        else
        {
          v113 = v101;
        }

        v114 = v102 - v113;
        v115 = &v28[v105];
        v116 = v102 - v113 - v103;
        if ((v102 - v113 - v103) <= 0x7F)
        {
          v115->i8[0] = v102 - v113 - v103;
          v106 = 1;
        }

        else if (v116 >> 14)
        {
          v106 = sub_1819436D0(v115, v116);
          v101 = v181;
        }

        else
        {
          v115->i8[0] = (v116 >> 7) | 0x80;
          v115->i8[1] = (v102 - v113 - v103) & 0x7F;
          v106 = 2;
        }

        v105 += v106;
        v103 = v114;
      }

      v104 += v109;
      v32 = v183;
    }

    while (v104 < v184);
    v24 = v182;
    v117 = *(v182 + 3);
    if (__srcc == v105)
    {
      v118 = v173;
      if (v117 == 1)
      {
        v100 = __srcc;
        goto LABEL_228;
      }

      sub_1819EB900(a1, v173, v117);
      v100 = __srcc;
LABEL_226:
      v117 = *(v24 + 3);
    }

    else
    {
      v100 = v105;
    }

    v118 = v173;
LABEL_228:
    sub_1819D7E9C(a1, (v118 << 37) + v117, v28, v100);
  }

  if (v32)
  {
    v132 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_235;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v32);
    --qword_1ED456A90;
    off_1ED452EB0(v32);
    v32 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v132 = &xmmword_1ED452F28;
LABEL_235:
      (*v132)(v32);
    }
  }

LABEL_22:
  sub_1819DB2CC(v185);
  return *(a1 + 60);
}