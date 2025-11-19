uint64_t sub_181974208(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  v8 = a1;
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v94 = 0u;
  v92 = -1;
  v10 = a1[1];
  v9 = a1[2];
  v11 = *a1;
  v12 = *(*a1 + 8) + 72 * *(v9 + 16);
  v13 = *(v12 + 24);
  v14 = *(v12 + 33);
  if ((v14 & 2) != 0)
  {
    v15 = *(v12 + 56);
  }

  else if ((*(v13 + 48) & 0x80) != 0)
  {
    v15 = *(v13 + 16);
  }

  else
  {
    v99 = 0uLL;
    v100 = 0uLL;
    *&v94 = 0;
    v97 = 0uLL;
    v98 = 0uLL;
    v96 = 0uLL;
    LOWORD(v100) = 1;
    *(&v94 + 1) = &v92;
    *&v95 = v93;
    BYTE2(v100) = 5;
    *(&v95 + 1) = v13;
    HIDWORD(v99) = 65539;
    *(&v100 + 3) = 3;
    v93[0] = *(v13 + 58);
    v93[1] = 0;
    if ((v14 & 1) == 0)
    {
      *(&v96 + 1) = *(v13 + 16);
    }

    v15 = &v94;
  }

  v85 = v12;
  v81 = v10;
  v87 = v13;
  if (a1[3] || (v11[30] & 0x1020) != 0)
  {
    goto LABEL_10;
  }

  result = 0;
  if ((*(**v11 + 49) & 0x80) != 0 && (v14 & 0x93) == 0)
  {
    if ((*(v12 + 32) & 0x10) != 0)
    {
LABEL_10:
      result = 0;
      goto LABEL_11;
    }

    v60 = v10;
    v61 = *(v13 + 58);
    v62 = *(v60 + 32);
    v63 = *(v60 + 20);
    if (v61 >= 11)
    {
      v64 = sub_181919E10(*(v13 + 58)) - 33;
    }

    else
    {
      LOWORD(v64) = 0;
    }

    if (v63 < 1)
    {
      result = 0;
      v10 = v81;
    }

    else
    {
      v65 = v62 + 56 * v63;
      v84 = v64 + v61 + 28;
      v90 = v64 + v61 - 25;
      if (v64 >= 93)
      {
        v66 = v64;
      }

      else
      {
        v66 = v64 + 1;
      }

      v79 = v66;
      v67 = v64 < -6;
      if (v64 < -6)
      {
        v68 = 43;
      }

      else
      {
        v68 = 44;
      }

      if ((v64 + 31) < 0x2B)
      {
        v67 = 1;
      }

      v75 = v67;
      v77 = v68;
      v10 = v81;
      do
      {
        if ((*(v9 + 8) & *(v62 + 40)) == 0 && (v69 = *(v62 + 28), v69 == *(v85 + 36)) && (*(v62 + 20) & 0x82) != 0 && ((*(v85 + 32) & 0x58) == 0 || (v70 = *(*v62 + 4), (v70 & 3) != 0) && *(*v62 + 56) == v69 && ((*(v85 + 32) & 0x18) == 0 || (v70 & 2) == 0)))
        {
          v71 = *(v62 + 32);
          if ((v71 & 0x80000000) != 0)
          {
            result = 0;
            v10 = v81;
          }

          else
          {
            v72 = *(v85 + 24);
            result = sub_181973454(*v62, *(*(v72 + 8) + 16 * v71 + 9));
            if (result && (result = sub_1819777E0(v72, v71), result))
            {
              *(v9 + 24) = 1;
              *(v9 + 32) = 0;
              *(v9 + 52) = 1;
              **(v9 + 64) = v62;
              v10 = v81;
              if (*(v87 + 63) == 2 || (v73 = v84, (*(v87 + 49) & 0x40) != 0))
              {
                v73 = v90;
              }

              *(v9 + 18) = v73 & ~(v73 >> 15);
              *(v9 + 22) = 43;
              if (v64 >= 43)
              {
                v74 = v79;
                if (v64 <= 74)
                {
                  v74 = v64 + byte_181A245A6[v64 - 43];
                }
              }

              else
              {
                v74 = v77;
                if (!v75)
                {
                  v74 = byte_181A245A6[43 - v64] + 43;
                }
              }

              *(v9 + 20) = v74;
              *(v9 + 48) = 0x4000;
              *v9 = *(v62 + 40) | a2;
              result = sub_181975CE8(v8, v9);
            }

            else
            {
              v10 = v81;
            }
          }
        }

        else
        {
          result = 0;
        }

        if (result)
        {
          break;
        }

        v62 += 56;
      }

      while (v62 < v65);
    }
  }

LABEL_11:
  if (!result)
  {
    v17 = v85;
    if (v15)
    {
      v18 = 1;
      v80 = v8;
      while (1)
      {
        v19 = *(v15 + 9);
        if (!v19 || (result = sub_181976498(*(v17 + 36), *(v17 + 32), v10, v19), result))
        {
          if ((*(v15 + 99) & 0x100) == 0)
          {
            v20 = **(v15 + 2);
            *(v9 + 24) = 0;
            *(v9 + 28) = 0;
            *(v9 + 52) = 0;
            *(v9 + 17) = 0;
            *(v9 + 18) = 0;
            *v9 = a2;
            *(v9 + 22) = v20;
            *(v9 + 32) = v15;
            *(v9 + 40) = 0;
            if ((*(v15 + 99) & 4) != 0 || (v21 = *(*v8 + 16)) == 0 || (v22 = *v21, *v21 < 1))
            {
              v25 = 1;
              goto LABEL_23;
            }

            v23 = 0;
            v24 = *(v17 + 36);
            v76 = *(*v8 + 16);
            v88 = v21 + 2;
            do
            {
              v46 = *&v88[6 * v23];
              if (v46)
              {
                while (1)
                {
                  v47 = *(v46 + 1);
                  if ((v47 & 0x82000) == 0)
                  {
                    break;
                  }

                  if ((v47 & 0x80000) != 0)
                  {
                    v46 = *(*(v46 + 4) + 8);
                    if (!v46)
                    {
                      goto LABEL_71;
                    }
                  }

                  else
                  {
                    v48 = *v46;
                    if (v48 != 114)
                    {
                      goto LABEL_81;
                    }

                    v46 = *(v46 + 2);
                    if (!v46)
                    {
                      goto LABEL_71;
                    }
                  }
                }

                v48 = *v46;
LABEL_81:
                if ((v48 | 2) == 0xAA && *(v46 + 11) == v24)
                {
                  v49 = *(v46 + 12);
                  if (v49 < 0)
                  {
                    goto LABEL_102;
                  }

                  v50 = *(v15 + 47);
                  if (*(v15 + 47))
                  {
                    v51 = *(v15 + 1);
                    while (1)
                    {
                      v52 = *v51++;
                      if (v49 == v52)
                      {
                        break;
                      }

                      if (!--v50)
                      {
                        goto LABEL_71;
                      }
                    }

LABEL_102:
                    v25 = 0;
                    goto LABEL_118;
                  }
                }

                else
                {
                  v53 = *(v15 + 10);
                  if (v53)
                  {
                    v54 = *(v15 + 47);
                    if (v54)
                    {
                      v83 = v20;
                      v78 = v11;
                      v55 = v8;
                      v56 = 0;
                      v57 = v53 + 8;
                      while (1)
                      {
                        if (*(*(v15 + 1) + 2 * v56) == -2)
                        {
                          v58 = *(v57 + 24 * v56);
                          v59 = v46;
                          do
                          {
                            if ((v59[5] & 0x20) == 0)
                            {
                              break;
                            }

                            v59 = *(v59 + 2);
                          }

                          while (v59);
                          for (; v58; v58 = *(v58 + 16))
                          {
                            if ((*(v58 + 5) & 0x20) == 0)
                            {
                              break;
                            }
                          }

                          if (!sub_181959260(0, v59, v58, v24))
                          {
                            v25 = 0;
                            v8 = v55;
                            v11 = v78;
                            v10 = v81;
                            v17 = v85;
                            v20 = v83;
                            goto LABEL_23;
                          }

                          v54 = *(v15 + 47);
                        }

                        if (++v56 >= v54)
                        {
                          v22 = *v76;
                          v8 = v55;
                          v11 = v78;
                          v17 = v85;
                          v20 = v83;
                          break;
                        }
                      }
                    }
                  }
                }
              }

LABEL_71:
              ++v23;
            }

            while (v23 < v22);
            v25 = 1;
LABEL_118:
            v10 = v81;
LABEL_23:
            v26 = v20;
            v27 = *(v15 + 99);
            if ((~v27 & 3) == 0)
            {
              *(v9 + 48) = 256;
              if (v25)
              {
                v28 = 0;
              }

              else
              {
                v28 = v18;
              }

              *(v9 + 17) = v28;
              *(v9 + 20) = v20 + 16;
              sub_1819765B0(v10, v9, v20);
              v29 = *(v17 + 33);
              if ((v29 & 4) != 0)
              {
                if ((v29 & 0x40) != 0)
                {
                  *(v9 + 48) |= 0x2000000u;
                }

                *(v9 + 40) = *(**(v17 + 72) + 72);
              }

              result = sub_181975CE8(v8, v9);
              *(v9 + 22) = v26;
              if (result)
              {
                return result;
              }

              goto LABEL_126;
            }

            v89 = v20;
            if ((v27 & 0x20) == 0)
            {
              v82 = v20;
              v30 = *(v15 + 13) & *(v17 + 40);
              v91 = v30;
              v31 = *(v15 + 9);
              if (v31)
              {
                sub_18196C3E0(*v11, v15, v31, &v91, 0, 0, a7, a8);
                v30 = v91;
              }

              *(v9 + 48) = 512;
              if (v30 == 0x8000000000000000 || (*(v15 + 99) & 0x800) != 0 && v30 && (*(v15 + 99) & 0x400) == 0)
              {
                v32 = sub_1819767F8(v11, v15, *(v17 + 36));
                v20 = v82;
                if (!v32)
                {
                  goto LABEL_42;
                }

                v91 = 0;
                v33 = *(v9 + 48) | v32;
              }

              else
              {
                v20 = v82;
                if (v30 || (*(v87 + 48) & 0x80) != 0 && !*(v11 + 4) && (!off_1ED453038 || (v45 = off_1ED453038(700), v20 = v82, !v45)))
                {
LABEL_42:
                  v34 = v18;
                  if (v25)
                  {
                    if ((*(v87 + 48) & 0x80) != 0 || *(v15 + 9) || (*(v17 + 33) & 2) != 0 || !v91 && (*(v15 + 99) & 4) == 0 && *(v15 + 46) < *(v87 + 60) && (v11[30] & 4) == 0 && byte_1ED452E87 && (*(**v11 + 96) & 0x20) == 0)
                    {
                      v34 = 0;
                      goto LABEL_53;
                    }
                  }

                  else
                  {
LABEL_53:
                    *(v9 + 17) = v34;
                    v35 = v20 + 15 * *(v15 + 46) / *(v87 + 60) + 1;
                    *(v9 + 20) = v20 + 15 * *(v15 + 46) / *(v87 + 60) + 1;
                    v36 = v26;
                    if (v91)
                    {
                      v37 = v89 + 16;
                      if (*(v11 + 31) >= 1)
                      {
                        v38 = 0;
                        v39 = 0;
                        v40 = *(v17 + 36);
                        while (1)
                        {
                          v41 = v11;
                          v42 = *(v11 + 17);
                          v43 = *(v42 + v38);
                          v102[0] = 0;
                          v103 = 0u;
                          v101[0] = v15;
                          v101[1] = v40;
                          v102[1] = sub_181977950;
                          v104 = 0;
                          v105 = v101;
                          if (v43)
                          {
                            sub_181959BA0(v102, v43);
                            if (WORD2(v104))
                            {
                              break;
                            }
                          }

                          v44 = *(v42 + v38 + 16);
                          if (v44 >= 1)
                          {
                            if ((*(v42 + v38 + 20) & 0x82) != 0)
                            {
                              LOWORD(v44) = -20;
                            }

                            else
                            {
                              LOWORD(v44) = -1;
                            }
                          }

                          v11 = v41;
                          v37 += v44;
                          ++v39;
                          v38 += 56;
                          if (v39 >= *(v41 + 31))
                          {
                            goto LABEL_104;
                          }
                        }

                        v11 = v41;
LABEL_104:
                        LOWORD(v35) = *(v9 + 20);
                        v8 = v80;
                        v10 = v81;
                        v17 = v85;
                        v36 = v89;
                      }

                      if (v35 >= v37)
                      {
                        if (v37 + 49 >= v35)
                        {
                          if (v37 + 31 >= v35)
                          {
                            LOWORD(v35) = v35 + byte_181A245A6[v35 - v37];
                          }

                          else
                          {
                            LOWORD(v35) = v35 + 1;
                          }
                        }
                      }

                      else if (v35 + 49 >= v37)
                      {
                        if (v35 + 31 >= v37)
                        {
                          LOWORD(v35) = v37 + byte_181A245A6[v37 - v35];
                        }

                        else
                        {
                          LOWORD(v35) = v37 + 1;
                        }
                      }

                      else
                      {
                        LOWORD(v35) = v37;
                      }

                      *(v9 + 20) = v35;
                    }

                    sub_1819765B0(v10, v9, v36);
                    if ((*(v17 + 32) & 0x10) != 0 && *(v15 + 10))
                    {
                      *(v9 + 22) = v36;
                    }

                    else
                    {
                      result = sub_181975CE8(v8, v9);
                      *(v9 + 22) = v36;
                      if (result)
                      {
                        return result;
                      }
                    }
                  }

LABEL_126:
                  v8[32] = 0;
                  result = sub_1819768C4(v8, v17 + 8, v15, 0);
                  if (v8[32] == 1)
                  {
                    *(v87 + 48) |= 0x100u;
                  }

                  goto LABEL_128;
                }

LABEL_40:
                v33 = 576;
              }

              *(v9 + 48) = v33;
              goto LABEL_42;
            }

            v91 = 0;
            goto LABEL_40;
          }

          result = 0;
        }

LABEL_128:
        if ((*(v17 + 33) & 2) == 0 && !result)
        {
          v15 = *(v15 + 5);
          ++v18;
          if (v15)
          {
            continue;
          }
        }

        return result;
      }
    }
  }

  return result;
}

uint64_t sub_181974BB4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  v51 = a3;
  result = 0;
  v95 = 0;
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v64 = 0;
  v62 = 0u;
  v63 = 0u;
  v59 = 0;
  memset(v58, 0, sizeof(v58));
  v11 = *a1;
  v10 = a1[1];
  v12 = *(v10 + 32);
  v48 = v10;
  v13 = *(v10 + 20);
  v14 = a1[2];
  v61 = 0;
  memset(v60, 0, sizeof(v60));
  v55 = v14;
  v52 = *(v11 + 8) + 72 * *(v14 + 16);
  if ((*(v52 + 32) & 0x10) == 0 && v13 >= 1)
  {
    v49 = v12 + 56 * v13;
    v50 = *(v52 + 36);
    v46 = a1;
    do
    {
      if ((*(v12 + 20) & 0x200) != 0 && (v15 = *(v12 + 32), (*(v55 + 8) & *(v15 + 488)) != 0))
      {
        v47 = v12;
        v16 = *(v15 + 32) + 56 * *(v15 + 20);
        v17 = a1[4];
        v18 = *(a1 + 1);
        v62 = *a1;
        *&v63 = v18;
        v64 = v17;
        *(&v63 + 1) = v58;
        v19 = *(v15 + 32);
        v54 = v16;
        if (v19 < v16)
        {
          result = 0;
          v20 = 1;
          while (1)
          {
            if ((*(v19 + 20) & 0x400) != 0)
            {
              v21 = *(v19 + 32);
            }

            else
            {
              if (*(v19 + 28) != v50)
              {
                goto LABEL_9;
              }

              *&v65 = *v48;
              *(&v65 + 1) = v48;
              LOBYTE(v66) = 44;
              DWORD1(v66) = 1;
              HIDWORD(v66) = 1;
              *&v67 = v19;
              v21 = &v65;
            }

            *(&v62 + 1) = v21;
            LOWORD(v58[0]) = 0;
            if (*(*(v52 + 24) + 63) == 1)
            {
              result = sub_181973540(&v62, a2, v51);
              if (!result)
              {
                goto LABEL_18;
              }
            }

            else
            {
              result = sub_181974208(&v62, a2, a3, a4, a5, a6, a7, a8);
              if (!result)
              {
LABEL_18:
                result = sub_181974BB4(&v62, a2, v51);
              }
            }

            v22 = LOWORD(v58[0]);
            if (!LOWORD(v58[0]))
            {
              LOWORD(v60[0]) = 0;
              goto LABEL_71;
            }

            v23 = result;
            if (v20)
            {
              LOWORD(v60[0]) = v58[0];
              __memcpy_chk();
              v20 = 0;
              result = v23;
            }

            else
            {
              v57 = 0;
              memset(v56, 0, sizeof(v56));
              v24 = LOWORD(v60[0]);
              __memcpy_chk();
              LOWORD(v60[0]) = 0;
              result = v23;
              if (v24)
              {
                v25 = 0;
                v26 = 0;
                do
                {
                  v27 = 0;
                  v28 = &v56[v25] + 8;
                  v29 = v26;
                  do
                  {
                    v30 = &v58[v27] + 8;
                    v31 = *(v28 + 4);
                    v32 = *(v30 + 4);
                    if (v31 >= v32)
                    {
                      v33 = *(v28 + 4);
                      if (v32 + 49 >= v31)
                      {
                        if (v32 + 31 >= v31)
                        {
                          v33 = v31 + byte_181A245A6[v31 - v32];
                        }

                        else
                        {
                          v33 = v31 + 1;
                        }
                      }
                    }

                    else
                    {
                      v33 = *(v30 + 4);
                      if (v31 + 49 >= v32)
                      {
                        if (v31 + 31 >= v32)
                        {
                          v33 = v32 + byte_181A245A6[v32 - v31];
                        }

                        else
                        {
                          v33 = v32 + 1;
                        }
                      }
                    }

                    v34 = *(v28 + 5);
                    v35 = *(v30 + 5);
                    if (v34 >= v35)
                    {
                      a3 = (v35 + 49);
                      v36 = *(v28 + 5);
                      if (a3 >= v34)
                      {
                        if (v35 + 31 >= v34)
                        {
                          v36 = v34 + byte_181A245A6[v34 - v35];
                        }

                        else
                        {
                          v36 = v34 + 1;
                        }
                      }
                    }

                    else
                    {
                      v36 = *(v30 + 5);
                      if (v34 + 49 >= v35)
                      {
                        if (v34 + 31 >= v35)
                        {
                          v36 = v35 + byte_181A245A6[v35 - v34];
                        }

                        else
                        {
                          v36 = v35 + 1;
                        }
                      }
                    }

                    v37 = *v30 | *v28;
                    if (v29)
                    {
                      v38 = v60 + 8;
                      v39 = v29;
                      while (1)
                      {
                        v40 = *(v38 + 4);
                        if (v40 >= v33)
                        {
                          a3 = *v38;
                          if ((v37 & ~*v38) == 0)
                          {
                            break;
                          }
                        }

                        if (v40 <= v33 && (*v38 & ~v37) == 0)
                        {
                          goto LABEL_25;
                        }

                        --v39;
                        v38 += 16;
                        if (!v39)
                        {
                          if (v29 < 3u)
                          {
                            goto LABEL_53;
                          }

                          v41 = v29 - 1;
                          a3 = &v60[1] + 8;
                          v38 = v60 + 8;
                          do
                          {
                            a4 = v38;
                            a5 = *(v38 + 4);
                            a6 = *(a3 + 8);
                            if (a5 > a6)
                            {
                              v38 = a3;
                            }

                            a3 += 16;
                            --v41;
                          }

                          while (v41);
                          v42 = &v60[v29];
                          if (a5 <= a6)
                          {
                            v42 = (a4 + 8);
                          }

                          if (*v42 <= v33)
                          {
                            goto LABEL_25;
                          }

                          break;
                        }
                      }
                    }

                    else
                    {
LABEL_53:
                      v26 = v29 + 1;
                      LOWORD(v60[0]) = v29 + 1;
                      v38 = &v60[v29] + 8;
                      *(v38 + 5) = v36;
                      ++v29;
                    }

                    *v38 = v37;
                    *(v38 + 4) = v33;
                    if (*(v38 + 5) > v36)
                    {
                      *(v38 + 5) = v36;
                    }

LABEL_25:
                    ++v27;
                  }

                  while (v27 != v22);
                  ++v25;
                }

                while (v25 != v24);
              }

              v20 = 0;
            }

LABEL_9:
            v19 += 56;
            if (v19 >= v54)
            {
              goto LABEL_71;
            }
          }
        }

        result = 0;
LABEL_71:
        *(v55 + 52) = 1;
        v12 = v47;
        **(v55 + 64) = v47;
        *(v55 + 48) = 0x2000;
        *(v55 + 18) = 0;
        *(v55 + 17) = 0;
        *(v55 + 32) = 0;
        *(v55 + 40) = 0;
        *(v55 + 24) = 0;
        if (result)
        {
          a1 = v46;
        }

        else
        {
          a1 = v46;
          if (LOWORD(v60[0]))
          {
            v43 = 1;
            v44 = &v60[1] + 1;
            do
            {
              *(v55 + 20) = *(v44 - 1) + 1;
              *(v55 + 22) = *v44;
              *v55 = *(v44 - 5);
              result = sub_181975CE8(v46, v55);
              if (result)
              {
                break;
              }

              v44 += 8;
            }

            while (v43++ < LOWORD(v60[0]));
          }
        }
      }

      else
      {
        result = 0;
      }

      v12 += 56;
    }

    while (v12 < v49 && !result);
  }

  return result;
}

uint64_t sub_181975134(void *a1, uint64_t a2, int a3)
{
  if (*(a2 + 56) >= a3)
  {
    return 0;
  }

  v4 = (a3 + 7) & 0xFFFFFFF8;
  v6 = sub_181929E8C(a1, 8 * v4, 0x2004093837F09);
  if (!v6)
  {
    return 7;
  }

  v7 = v6;
  memcpy(v6, *(a2 + 64), 8 * *(a2 + 56));
  v8 = *(a2 + 64);
  if (v8 != (a2 + 80))
  {
    sub_181929C84(a1, v8);
  }

  result = 0;
  *(a2 + 64) = v7;
  *(a2 + 56) = v4;
  return result;
}

uint64_t sub_1819751DC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 a4, int *a5, unsigned int a6, _DWORD *a7, _DWORD *a8)
{
  v9 = *(a5 + 4);
  v11 = *(a1 + 8);
  v10 = *(a1 + 16);
  v12 = **a1;
  v13 = *(*a1 + 8) + 8;
  v14 = *(v10 + 16);
  v15 = *a5;
  *a7 = 0;
  *v10 = a2;
  if (v15 >= 1)
  {
    v16 = 0;
    v17 = *(a5 + 1);
    do
    {
      if (v11)
      {
        v18 = *(v17 + 8);
        v19 = v11;
        while (1)
        {
          v20 = *(v19 + 20);
          v21 = __OFSUB__(v18, v20);
          v22 = v18 - v20;
          if (v22 < 0 != v21)
          {
            break;
          }

          v19 = *(v19 + 8);
          v18 = v22;
          if (!v19)
          {
            goto LABEL_12;
          }
        }

        v19 = *(v19 + 32) + 56 * v18;
      }

      else
      {
        v19 = 0;
      }

LABEL_12:
      *(v17 + 5) = 0;
      if ((*(v19 + 40) & ~a3) == 0 && (*(v19 + 20) & a4) == 0 && (a8 || *(v19 + 23) - 75 <= 0xFFFFFFFD))
      {
        *(v17 + 5) = 1;
      }

      ++v16;
      v17 += 12;
    }

    while (v16 != v15);
  }

  v114 = v9;
  bzero(v9, 8 * v15);
  *(a5 + 6) = 0;
  a5[10] = 0;
  a5[15] = 0;
  *(a5 + 8) = 0x546D42AEA2879F2ELL;
  *(a5 + 9) = 25;
  a5[20] = 0;
  a5[30] = 0;
  v23 = v13 + 72 * v14;
  v24 = *(v23 + 16);
  v113 = (v23 + 16);
  v25 = *v12;
  v26 = v24 + 80;
  v27 = (v24 + 80);
  do
  {
    v28 = *v27;
    v29 = *v27;
    v30 = *v29;
    v27 = (v29 + 5);
  }

  while (v30 != v25);
  v31 = v28[2];
  ++*(v25 + 72);
  v32 = (*(*v31 + 24))(v31, a5);
  v39 = v32;
  v40 = *v12;
  --*(*v12 + 72);
  if (v32)
  {
    v41 = v32 == 19;
  }

  else
  {
    v41 = 1;
  }

  if (!v41)
  {
    if (v32 == 7)
    {
      if (!*(v40 + 103) && !*(v40 + 104))
      {
        *(v40 + 103) = 1;
        if (*(v40 + 220) >= 1)
        {
          *(v40 + 424) = 1;
        }

        ++*(v40 + 432);
        *(v40 + 436) = 0;
        v42 = *(v40 + 344);
        if (v42)
        {
          sub_181910730(v42, "out of memory", v33, v34, v35, v36, v37, v38, v108);
          for (i = *(v40 + 344); ; ++*(i + 52))
          {
            *(i + 24) = 7;
            i = *(i + 216);
            if (!i)
            {
              break;
            }
          }
        }
      }
    }

    else
    {
      v44 = v31[2];
      if (!v44)
      {
        switch(v32)
        {
          case 0x204:
            v44 = "abort due to ROLLBACK";
            break;
          case 0x65:
            v44 = "no more rows available";
            break;
          case 0x64:
            v44 = "another row available";
            break;
          default:
            if (v32 > 0x1Cu || ((0x1410004uLL >> v32) & 1) != 0)
            {
              v44 = "unknown error";
            }

            else
            {
              v44 = off_1E6A27DD8[v32];
            }

            break;
        }
      }

      sub_181910730(v12, "%s", v33, v34, v35, v36, v37, v38, v44);
    }
  }

  if (*(*v26 + 29))
  {
    v45 = *(*v12 + 40);
    if (v45 >= 1)
    {
      if (*(v12 + 152))
      {
        v46 = *(v12 + 152);
      }

      else
      {
        v46 = v12;
      }

      v47 = *(v46 + 116);
      if ((v47 & 1) == 0)
      {
        v47 |= 1u;
        *(v46 + 116) = v47;
      }

      if (v45 != 1)
      {
        if ((v47 & 2) == 0)
        {
          *(v46 + 116) = v47 | 2;
          sub_1819108F4(v46);
        }

        if (v45 != 2)
        {
          v56 = *(v12 + 152);
          if (!v56)
          {
            v56 = v12;
          }

          v57 = *(v56 + 116);
          for (j = 2; j != v45; ++j)
          {
            if (((1 << j) & v57) == 0)
            {
              v57 |= 1 << j;
              *(v56 + 116) = v57;
            }
          }
        }
      }

      if (*(v12 + 112))
      {
        if (*(v12 + 152))
        {
          v48 = *(v12 + 152);
        }

        else
        {
          v48 = v12;
        }

        v49 = *(v48 + 116);
        if ((v49 & 1) == 0)
        {
          v49 |= 1u;
          *(v48 + 116) = v49;
        }

        v50 = *(v48 + 112) | 1;
        *(v48 + 112) = v50;
        if (v45 != 1)
        {
          if ((v49 & 2) == 0)
          {
            *(v48 + 116) = v49 | 2;
            sub_1819108F4(v48);
            v50 = *(v48 + 112);
          }

          *(v48 + 112) = v50 | 2;
          if (v45 != 2)
          {
            v51 = *(v12 + 152);
            if (!v51)
            {
              v51 = v12;
            }

            v53 = *(v51 + 112);
            v52 = *(v51 + 116);
            for (k = 2; k != v45; ++k)
            {
              v55 = 1 << k;
              if (((1 << k) & v52) == 0)
              {
                v52 |= v55;
                *(v51 + 116) = v52;
              }

              v53 |= v55;
            }

            *(v51 + 112) = v53;
          }
        }
      }
    }
  }

  v59 = v31[2];
  if (v59)
  {
    v60 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_78:
      (*v60)(v59);
      goto LABEL_79;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48 -= xmmword_1ED452EC0(v59);
    --qword_1ED456A90;
    off_1ED452EB0(v59);
    v59 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v60 = &xmmword_1ED452F28;
      goto LABEL_78;
    }
  }

LABEL_79:
  v31[2] = 0;
  if (v39)
  {
    if (v39 != 19)
    {
      return v39;
    }

    if (!a5[14])
    {
      return 0;
    }

    v61 = *(a5 + 6);
    if (v61)
    {
      v62 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48 -= xmmword_1ED452EC0(v61);
        --qword_1ED456A90;
        off_1ED452EB0(v61);
        v61 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
          goto LABEL_89;
        }

        v62 = &xmmword_1ED452F28;
      }

      (*v62)(v61);
    }

LABEL_89:
    v39 = 0;
    *(a5 + 6) = 0;
    a5[14] = 0;
    return v39;
  }

  bzero(*(v10 + 64), 8 * v15);
  *(v10 + 24) = 0;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0;
  if (v15 <= 0)
  {
    *(v10 + 52) = 0;
    goto LABEL_126;
  }

  v69 = 0;
  v70 = *(a5 + 1);
  v71 = -1;
  do
  {
    v72 = &v114[2 * v69];
    v73 = *v72 - 1;
    if (*v72 >= 1)
    {
      if (*v72 > v15)
      {
        goto LABEL_161;
      }

      v74 = *(v70 + 8);
      if (v74 < 0 || !v11)
      {
        goto LABEL_161;
      }

      v75 = v11;
      while (1)
      {
        v76 = *(v75 + 20);
        v21 = __OFSUB__(v74, v76);
        v77 = v74 - v76;
        if (v77 < 0 != v21)
        {
          break;
        }

        v75 = *(v75 + 8);
        v74 = v77;
        if (!v75)
        {
          goto LABEL_161;
        }
      }

      v78 = *(v75 + 32);
      if (!v78)
      {
        goto LABEL_161;
      }

      v79 = *(v10 + 64);
      if (*(v79 + 8 * v73) || !*(v70 + 5))
      {
        goto LABEL_161;
      }

      v80 = v78 + 56 * v74;
      *v10 |= *(v80 + 40);
      *(v79 + 8 * v73) = v80;
      if (v73 > v71)
      {
        v71 = v73;
      }

      if (*(v72 + 4))
      {
        if (v69 <= 0xF && ((a6 >> v69) & 1) == 0)
        {
          *(v10 + 30) |= 1 << v73;
        }

        if (*(v80 + 23) == 74)
        {
          *(v10 + 28) |= 2u;
        }
      }

      v81 = 1 << v69;
      if (v69 >= 0x20)
      {
        v81 = 0;
      }

      if ((a5[30] & v81) != 0)
      {
        *(v10 + 40) |= 1 << v73;
      }

      else if (*(v80 + 20))
      {
        a5[15] = 0;
        a5[20] &= ~1u;
        *a7 = 1;
      }

      if (*(v80 + 23) - 75 >= 0xFFFFFFFE)
      {
        if (*a7)
        {
          goto LABEL_134;
        }

        v82 = v114;
        v83 = v69;
        if (v69)
        {
          while (1)
          {
            v84 = *v82;
            v82 += 2;
            if (v84 <= 0)
            {
              break;
            }

            if (!--v83)
            {
              goto LABEL_92;
            }
          }

LABEL_134:
          if (!a5[14])
          {
LABEL_143:
            v39 = 0;
            *a8 = 1;
            return v39;
          }

          v89 = *(a5 + 6);
          if (v89)
          {
            v90 = &off_1ED452EB0;
            if (dword_1ED452E80)
            {
              if (xmmword_1ED456AF0)
              {
                xmmword_1ED452F18(xmmword_1ED456AF0);
              }

              qword_1ED456A48 -= xmmword_1ED452EC0(v89);
              --qword_1ED456A90;
              off_1ED452EB0(v89);
              v89 = xmmword_1ED456AF0;
              if (!xmmword_1ED456AF0)
              {
                goto LABEL_142;
              }

              v90 = &xmmword_1ED452F28;
            }

            (*v90)(v89);
          }

LABEL_142:
          *(a5 + 6) = 0;
          a5[14] = 0;
          goto LABEL_143;
        }
      }
    }

LABEL_92:
    ++v69;
    v70 += 12;
  }

  while (v69 != v15);
  v95 = (v71 + 1);
  *(v10 + 52) = v71 + 1;
  if (v71 < 0)
  {
LABEL_126:
    *(v10 + 24) = a5[10];
    *(v10 + 28) = *(v10 + 28) & 0xFE | a5[14] & 1;
    a5[14] = 0;
    *(v10 + 32) = *(a5 + 6);
    v85 = a5[15];
    if (v85)
    {
      v85 = a5[4];
    }

    *(v10 + 29) = v85;
    *(v10 + 28) = (2 * *(a5 + 80)) & 4 | *(v10 + 28) & 0xFB;
    *(v10 + 18) = 0;
    v86 = *(a5 + 8);
    if (v86 <= 1.0)
    {
      goto LABEL_133;
    }

    if (v86 > 2000000000.0)
    {
      v87 = 10 * (*&v86 >> 52) - 10220;
      goto LABEL_177;
    }

    v88 = v86;
    if (v86 >= 8)
    {
      v91 = 40;
      if (v88 >= 0x100)
      {
        v92 = v86;
        do
        {
          v91 += 40;
          v88 = v92 >> 4;
          v93 = v92 > 0xFFF;
          v92 >>= 4;
        }

        while (v93);
      }

      if (v88 < 0x10)
      {
        LOBYTE(v94) = v88;
      }

      else
      {
        do
        {
          v91 += 10;
          v94 = v88 >> 1;
          v93 = v88 > 0x1F;
          v88 >>= 1;
        }

        while (v93);
      }
    }

    else
    {
      if (v88 < 2)
      {
LABEL_133:
        LOWORD(v87) = 0;
        goto LABEL_177;
      }

      v91 = 40;
      do
      {
        v91 -= 10;
        LOBYTE(v94) = 2 * v88;
        v99 = v88 >= 4;
        v88 *= 2;
      }

      while (!v99);
    }

    LOWORD(v87) = v91 + word_181A27AA2[v94 & 7] - 10;
LABEL_177:
    *(v10 + 20) = v87;
    v100 = *(a5 + 9);
    if (v100 >= 8)
    {
      v102 = 40;
      if (v100 >= 0x100)
      {
        v103 = *(a5 + 9);
        do
        {
          v102 += 40;
          v100 = v103 >> 4;
          v93 = v103 > 0xFFF;
          v103 >>= 4;
        }

        while (v93);
      }

      if (v100 < 0x10)
      {
        LOBYTE(v104) = v100;
      }

      else
      {
        do
        {
          v102 += 10;
          v104 = v100 >> 1;
          v93 = v100 > 0x1F;
          v100 >>= 1;
        }

        while (v93);
      }
    }

    else
    {
      if (v100 < 2)
      {
        v101 = 0;
        goto LABEL_192;
      }

      v102 = 40;
      do
      {
        v102 -= 10;
        LOBYTE(v104) = 2 * v100;
        v99 = v100 >= 4;
        v100 *= 2;
      }

      while (!v99);
    }

    v101 = v102 + word_181A27AA2[v104 & 7] - 10;
LABEL_192:
    *(v10 + 22) = v101;
    *(v10 + 48) = *(v10 + 48) & 0xFFFFEFFF | ((a5[20] & 1) << 12);
    v39 = sub_181975CE8(a1, v10);
    if ((*(v10 + 28) & 1) == 0)
    {
      return v39;
    }

    v105 = *(v10 + 32);
    if (v105)
    {
      v106 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48 -= xmmword_1ED452EC0(v105);
        --qword_1ED456A90;
        off_1ED452EB0(v105);
        v105 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
          goto LABEL_200;
        }

        v106 = &xmmword_1ED452F28;
      }

      (*v106)(v105);
    }

LABEL_200:
    *(v10 + 28) &= ~1u;
    return v39;
  }

  v96 = *(v10 + 64);
  while (*v96)
  {
    ++v96;
    if (!--v95)
    {
      goto LABEL_126;
    }
  }

LABEL_161:
  sub_181910730(v12, "%s.xBestIndex malfunction", v63, v64, v65, v66, v67, v68, **v113);
  if (!a5[14])
  {
    return 1;
  }

  v97 = *(a5 + 6);
  if (v97)
  {
    v98 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_168;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48 -= xmmword_1ED452EC0(v97);
    --qword_1ED456A90;
    off_1ED452EB0(v97);
    v97 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v98 = &xmmword_1ED452F28;
LABEL_168:
      (*v98)(v97);
    }
  }

  *(a5 + 6) = 0;
  a5[14] = 0;
  return 1;
}

uint64_t sub_181975CE8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 36);
  if (v3)
  {
    v5 = *a1;
    v6 = ***a1;
    *(a1 + 36) = v3 - 1;
    v9 = v5[10];
    v7 = (v5 + 10);
    v8 = v9;
    if (v9)
    {
      v10 = (*(a2 + 48) & 0x200) == 0;
    }

    else
    {
      v10 = 1;
    }

    if (!v10)
    {
      v22 = *(a2 + 16);
      do
      {
        if (*(v8 + 16) != v22 || (*(v8 + 49) & 2) == 0)
        {
          goto LABEL_26;
        }

        if (sub_1819763B8(v8, a2))
        {
          v23 = *(v8 + 20);
          if (v23 >= *(a2 + 20))
          {
            LOWORD(v23) = *(a2 + 20);
          }

          *(a2 + 20) = v23;
          v24 = *(v8 + 22);
          if (v24 <= *(a2 + 22))
          {
            v25 = v24 - 1;
          }

          else
          {
            v25 = *(a2 + 22);
          }
        }

        else
        {
          if (!sub_1819763B8(a2, v8))
          {
            goto LABEL_26;
          }

          v26 = *(v8 + 20);
          if (v26 <= *(a2 + 20))
          {
            LOWORD(v26) = *(a2 + 20);
          }

          *(a2 + 20) = v26;
          v27 = *(v8 + 22);
          if (v27 >= *(a2 + 22))
          {
            v25 = v27 + 1;
          }

          else
          {
            v25 = *(a2 + 22);
          }
        }

        *(a2 + 22) = v25;
LABEL_26:
        v8 = *(v8 + 72);
      }

      while (v8);
    }

    v11 = *(a1 + 24);
    if (v11)
    {
      if (*(a2 + 52))
      {
        v12 = *a2;
        v13 = *(a2 + 20);
        v14 = *(a2 + 22);
        v15 = v11 + 4;
        v16 = *v11;
        if (!*v11)
        {
LABEL_42:
          *v11 = v16 + 1;
          v15 += 8 * v16;
          v15[5] = v14;
          goto LABEL_59;
        }

        v17 = v11 + 4;
        v18 = *v11;
        do
        {
          v19 = v17[4];
          if (v19 >= v13 && (v12 & ~*v17) == 0)
          {
            v15 = v17;
            goto LABEL_59;
          }

          if (v19 <= v13 && (*v17 & ~v12) == 0)
          {
            return 0;
          }

          --v18;
          v17 += 8;
        }

        while (v18);
        if (v16 < 3)
        {
          goto LABEL_42;
        }

        v35 = v16 - 1;
        v36 = v11 + 12;
        do
        {
          if (v15[4] > v36[4])
          {
            v15 = v36;
          }

          v36 += 8;
          --v35;
        }

        while (v35);
        if (v15[4] > v13)
        {
LABEL_59:
          *v15 = v12;
          v15[4] = v13;
          if (v15[5] > v14)
          {
            result = 0;
            v15[5] = v14;
            return result;
          }
        }
      }

      return 0;
    }

    result = sub_1819762D4(v7, a2);
    if (!result)
    {
      return result;
    }

    v28 = *result;
    if (*result)
    {
      v29 = (v28 + 72);
      if (*(v28 + 72))
      {
        while (1)
        {
          v38 = sub_1819762D4(v29, a2);
          if (!v38)
          {
            goto LABEL_45;
          }

          v29 = v38;
          v39 = *v38;
          if (!*v38)
          {
            goto LABEL_45;
          }

          *v38 = *(v39 + 72);
          v40 = *(v39 + 64);
          if (v40 != (v39 + 80))
          {
            sub_181929C84(v6, v40);
            *(v39 + 64) = v39 + 80;
            *(v39 + 56) = 3;
          }

          v41 = *(v39 + 48);
          if ((v41 & 0x4400) != 0)
          {
            break;
          }

LABEL_67:
          *(v39 + 52) = 0;
          *(v39 + 48) = 0;
          sub_181939EC8(v6, v39);
          if (!*v29)
          {
            goto LABEL_45;
          }
        }

        if ((v41 & 0x400) == 0 || (*(v39 + 28) & 1) == 0)
        {
          if ((v41 & 0x4000) == 0)
          {
            goto LABEL_67;
          }

          v43 = (v39 + 32);
          v42 = *(v39 + 32);
          if (!v42)
          {
            goto LABEL_67;
          }

          if (*(v42 + 32))
          {
            sub_181929C84(v6, *(v42 + 32));
            v42 = *v43;
          }

          sub_181929C84(v6, v42);
          goto LABEL_66;
        }

        v43 = (v39 + 32);
        v44 = *(v39 + 32);
        if (v44)
        {
          v37 = &off_1ED452EB0;
          if (dword_1ED452E80)
          {
            if (xmmword_1ED456AF0)
            {
              xmmword_1ED452F18(xmmword_1ED456AF0);
            }

            qword_1ED456A48 -= xmmword_1ED452EC0(v44);
            --qword_1ED456A90;
            off_1ED452EB0(v44);
            v44 = xmmword_1ED456AF0;
            if (!xmmword_1ED456AF0)
            {
              goto LABEL_65;
            }

            v37 = &xmmword_1ED452F28;
          }

          (*v37)(v44);
        }

LABEL_65:
        *(v39 + 28) &= ~1u;
LABEL_66:
        *v43 = 0;
        goto LABEL_67;
      }
    }

    else
    {
      v30 = result;
      v31 = sub_181929E8C(v6, 0x68uLL, 0x10B204050C585DFLL);
      *v30 = v31;
      if (!v31)
      {
        return 7;
      }

      v28 = v31;
      *(v31 + 52) = 0;
      *(v31 + 56) = 3;
      *(v31 + 48) = 0;
      *(v31 + 64) = v31 + 80;
      *(v31 + 72) = 0;
    }

LABEL_45:
    v32 = *(v28 + 48);
    if ((v32 & 0x4400) == 0)
    {
      goto LABEL_96;
    }

    if ((v32 & 0x400) == 0 || (*(v28 + 28) & 1) == 0)
    {
      if ((v32 & 0x4000) != 0)
      {
        v34 = (v28 + 32);
        v33 = *(v28 + 32);
        if (v33)
        {
          if (*(v33 + 32))
          {
            sub_181929C84(v6, *(v33 + 32));
            v33 = *v34;
          }

          sub_181929C84(v6, v33);
          goto LABEL_95;
        }
      }

LABEL_96:
      v47 = *(a2 + 52);
      if (v47 > *(v28 + 56))
      {
        v48 = (v47 + 7) & 0x1FFF8;
        v49 = sub_181929E8C(v6, 8 * v48, 0x2004093837F09);
        if (!v49)
        {
          *(v28 + 48) = 0;
          *(v28 + 16) = 0u;
          *(v28 + 32) = 0u;
          *v28 = 0u;
          result = 7;
          if ((*(v28 + 49) & 4) != 0)
          {
            return result;
          }

          goto LABEL_107;
        }

        v50 = v49;
        memcpy(v49, *(v28 + 64), 8 * *(v28 + 56));
        v51 = *(v28 + 64);
        if (v51 != (v28 + 80))
        {
          sub_181929C84(v6, v51);
        }

        *(v28 + 64) = v50;
        *(v28 + 56) = v48;
      }

      v52 = *a2;
      v53 = *(a2 + 16);
      v54 = *(a2 + 32);
      v55 = *(a2 + 48);
      *(v28 + 48) = v55;
      *(v28 + 16) = v53;
      *(v28 + 32) = v54;
      *v28 = v52;
      memcpy(*(v28 + 64), *(a2 + 64), 8 * WORD2(v55));
      v56 = *(a2 + 48);
      if ((v56 & 0x400) != 0)
      {
        result = 0;
        *(a2 + 28) &= ~1u;
      }

      else
      {
        result = 0;
        if ((v56 & 0x4000) != 0)
        {
          *(a2 + 32) = 0;
          if ((*(v28 + 49) & 4) != 0)
          {
            return result;
          }

          goto LABEL_107;
        }
      }

      if ((*(v28 + 49) & 4) != 0)
      {
        return result;
      }

LABEL_107:
      v57 = *(v28 + 32);
      if (v57 && (~*(v57 + 99) & 3) == 0)
      {
        *(v28 + 32) = 0;
      }

      return result;
    }

    v34 = (v28 + 32);
    v45 = *(v28 + 32);
    if (v45)
    {
      v46 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48 -= xmmword_1ED452EC0(v45);
        --qword_1ED456A90;
        off_1ED452EB0(v45);
        v45 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
          goto LABEL_94;
        }

        v46 = &xmmword_1ED452F28;
      }

      (*v46)(v45);
    }

LABEL_94:
    *(v28 + 28) &= ~1u;
LABEL_95:
    *v34 = 0;
    goto LABEL_96;
  }

  v20 = *(a1 + 24);
  if (v20)
  {
    *v20 = 0;
  }

  return 101;
}

uint64_t *sub_1819762D4(uint64_t *result, uint64_t a2)
{
  for (i = *result; i; i = *(i + 72))
  {
    if (*(i + 16) == *(a2 + 16) && *(i + 17) == *(a2 + 17))
    {
      if ((*(i + 49) & 0x40) != 0 && !*(a2 + 54) && (~*(a2 + 48) & 0x201) == 0 && (*a2 & ~*i) == 0)
      {
        return result;
      }

      v3 = *a2 & *i;
      if (v3 == *i && *(i + 18) <= *(a2 + 18) && *(i + 20) <= *(a2 + 20) && *(i + 22) <= *(a2 + 22))
      {
        return 0;
      }

      if (v3 == *a2 && *(i + 20) >= *(a2 + 20) && *(i + 22) >= *(a2 + 22))
      {
        return result;
      }
    }

    result = (i + 72);
  }

  return result;
}

uint64_t sub_1819763B8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 20) > *(a2 + 20) && *(a1 + 22) > *(a2 + 22))
  {
    return 0;
  }

  if (*(a1 + 24) >= *(a2 + 24) || *(a1 + 32) != *(a2 + 32) || *(a1 + 54) || *(a2 + 54))
  {
    v2 = *(a1 + 52);
    v3 = *(a1 + 54);
    v4 = *(a2 + 54);
    v5 = v4 <= v3 && (v2 - v3) < (*(a2 + 52) - v4);
    if (!v5)
    {
      return 0;
    }

    if (*(a1 + 52))
    {
      while (1)
      {
        v7 = *(*(a1 + 64) + 8 * (v2 - 1));
        if (v7)
        {
          break;
        }

LABEL_14:
        v5 = v2-- <= 1;
        if (v5)
        {
          goto LABEL_20;
        }
      }

      v8 = *(a2 + 52);
      while (v8 >= 1)
      {
        v9 = *(*(a2 + 64) + 8 * v8-- - 8);
        if (v9 == v7)
        {
          goto LABEL_14;
        }
      }

      return 0;
    }

LABEL_20:
    if ((*(a1 + 48) & 0x40) != 0 && (*(a2 + 48) & 0x40) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_181976498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a2 & 0x40) != 0)
  {
    return 0;
  }

  v8 = **a3;
  while (*a4 == 44)
  {
    result = sub_181976498(a1, a2, a3, *(a4 + 16));
    if (!result)
    {
      return result;
    }

    a4 = *(a4 + 24);
  }

  if (*(a3 + 20) >= 1)
  {
    v10 = 0;
    v11 = *(a3 + 32);
    do
    {
      v12 = *v11;
      if (*(*v11 + 4))
      {
        if (*(v12 + 56) != a1)
        {
          goto LABEL_9;
        }
      }

      else if ((a2 & 0x20) != 0)
      {
        goto LABEL_9;
      }

      if (sub_18195A590(v8, *v11, a4, a1) && !sub_18195A590(v8, v12, a4, 0xFFFFFFFFLL) && (*(v11 + 9) & 0x80) == 0)
      {
        return 1;
      }

LABEL_9:
      ++v10;
      v11 += 7;
    }

    while (v10 < *(a3 + 20));
  }

  return 0;
}

uint64_t sub_1819765B0(uint64_t result, uint64_t a2, int a3)
{
  v5 = *(result + 28);
  if (v5 >= 1)
  {
    v6 = result;
    v7 = 0;
    v8 = ~(*(a2 + 8) | *a2);
    v9 = *(result + 32);
    while (1)
    {
      v11 = *(v9 + 48);
      if ((v11 & v8) == 0)
      {
        v12 = *(a2 + 8);
        if ((v12 & v11) != 0 && (*(v9 + 18) & 2) == 0)
        {
          break;
        }
      }

LABEL_4:
      v9 += 56;
      v10 = __OFSUB__(v5--, 1);
      if ((v5 < 0) ^ v10 | (v5 == 0))
      {
        goto LABEL_39;
      }
    }

    if (*(a2 + 52))
    {
      v13 = 8 * *(a2 + 52);
      do
      {
        v14 = *(*(a2 + 64) - 8 + v13);
        if (v14)
        {
          if (v14 == v9)
          {
            goto LABEL_4;
          }

          v15 = *(v14 + 24);
          if ((v15 & 0x80000000) == 0 && *(v6 + 32) + 56 * v15 == v9)
          {
            goto LABEL_4;
          }
        }

        v13 -= 8;
      }

      while (v13);
    }

    v16 = **v6;
    v17 = *v16;
    if (*(*v16 + 424))
    {
      ++v16[13];
      v16[6] = 9;
    }

    v18 = *(v17 + 544);
    if (v18)
    {
      if (v16[6] != 9)
      {
        v19 = v16[32] + 1;
        v16[32] = v19;
        if (v19 < *(v17 + 560))
        {
          goto LABEL_24;
        }

        result = v18(*(v17 + 552));
        if (result)
        {
          ++v16[13];
          v16[6] = 9;
        }
      }

      v16[32] = 0;
      v12 = *(a2 + 8);
      v11 = *(v9 + 48);
    }

LABEL_24:
    if (v12 == v11 && ((*(v9 + 20) & 0x3F) != 0 || (*(*(*v6 + 8) + 72 * *(a2 + 16) + 32) & 0x48) == 0))
    {
      *(a2 + 48) |= 0x800000u;
    }

    v20 = *(v9 + 16);
    v21 = *(a2 + 22);
    if (v20 <= 0)
    {
      *(a2 + 22) = v21 + v20;
    }

    else
    {
      *(a2 + 22) = v21 - 1;
      if ((*(v9 + 20) & 0x82) != 0)
      {
        v22 = *(*v9 + 24);
        v25 = 0;
        result = sub_18195A9F8(v22, &v25, 0);
        v23 = (v25 + 1) >= 3 || result == 0;
        v24 = v23 ? 20 : 10;
        if (v24 > v7)
        {
          *(v9 + 18) |= 0x2000u;
          v7 = v24;
        }
      }
    }

    goto LABEL_4;
  }

  v7 = 0;
LABEL_39:
  if ((a3 - v7) < *(a2 + 22))
  {
    *(a2 + 22) = a3 - v7;
  }

  return result;
}

uint64_t sub_1819767F8(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(a1 + 32);
  if (!v4)
  {
    return 0;
  }

  v12 = 0;
  if ((*(a2 + 99) & 0x800) == 0)
  {
    v5 = *(a2 + 96);
    if (!*(a2 + 96))
    {
      return 0;
    }

    v6 = *(a2 + 8);
    while (1)
    {
      v7 = *v6++;
      if (v7 >= 63)
      {
        break;
      }

      if (!--v5)
      {
        return 0;
      }
    }
  }

  v11 = a2;
  LODWORD(v12) = a3;
  WORD2(v12) = 0;
  v10[0] = 0;
  v10[3] = 0;
  v10[1] = sub_181977850;
  v10[2] = sub_181961BBC;
  v10[4] = 0;
  v10[5] = &v11;
  sub_1818AEE70(v10, v4);
  if (BYTE4(v12))
  {
    v9 = 0x4000000;
  }

  else
  {
    v9 = 64;
  }

  if (BYTE5(v12))
  {
    return 0;
  }

  else
  {
    return v9;
  }
}

uint64_t sub_1819768C4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = **a1;
  if (*(v4 + 52))
  {
    return *(v4 + 24);
  }

  v7 = a2;
  v118 = *v4;
  v139 = 0;
  v138 = 0u;
  v137 = 0u;
  v136 = 0u;
  v135 = 0u;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v128 = *(v10 + 48);
  if ((v128 & 0x20) != 0)
  {
    v11 = 24;
  }

  else
  {
    v11 = 447;
  }

  if ((*(a3 + 99) & 4) != 0)
  {
    v11 &= 0x183u;
  }

  v12 = *(v10 + 24);
  v126 = *(v10 + 28);
  v127 = *(v10 + 26);
  v13 = *(v10 + 54);
  v129 = *(v10 + 52);
  v130[0] = *(a1 + 8);
  v125 = *v10;
  v14 = *(v10 + 22);
  v15 = *(a2 + 28);
  v130[1] = v9;
  v131 = 0;
  v132 = 0;
  v133 = 0;
  v134 = v11;
  DWORD1(v135) = v15;
  *(&v135 + 1) = 257;
  v16 = *(*(a3 + 8) + 2 * v12);
  v17 = *(a3 + 24);
  v119 = v13;
  if (v16 == *(v17 + 52))
  {
    v18 = -1;
LABEL_14:
    LOWORD(v138) = v18;
    v20 = sub_181972F4C(v130);
    goto LABEL_15;
  }

  v18 = *(*(a3 + 8) + 2 * v12);
  if ((v16 & 0x80000000) == 0)
  {
    LOBYTE(v135) = *(*(v17 + 8) + 16 * v16 + 9);
    v131 = *(*(a3 + 64) + 8 * v12);
    goto LABEL_14;
  }

  if (v16 != -2)
  {
    goto LABEL_14;
  }

  v19 = *(*(a3 + 80) + 24 * v12 + 8);
  v131 = *(*(a3 + 64) + 8 * v12);
  v132 = v19;
  LOWORD(v138) = -2;
  v20 = sub_1819732DC(v130);
LABEL_15:
  v21 = v20;
  v124 = 0;
  *(v10 + 18) = 0;
  v22 = **(a3 + 16);
  if (v22 >= 11)
  {
    v23 = **(a3 + 16);
    v24 = 40;
    if (v22 >= 0x100)
    {
      v25 = **(a3 + 16);
      do
      {
        v24 += 40;
        v23 = v25 >> 4;
        v74 = v25 > 0xFFF;
        v25 >>= 4;
      }

      while (v74);
    }

    if (v23 < 0x10)
    {
      LOBYTE(v26) = v23;
    }

    else
    {
      do
      {
        v24 += 10;
        v26 = v23 >> 1;
        v74 = v23 > 0x1F;
        v23 >>= 1;
      }

      while (v74);
    }

    v124 = v24 + word_181A27AA2[v26 & 7] - 43;
  }

  if (!v20)
  {
    goto LABEL_258;
  }

  v115 = **(a3 + 16);
  v116 = 0;
  v121 = 0;
  v123 = v14;
  do
  {
    v27 = v21[10];
    if (v27 == 256 || (v21[9] & 0x80) != 0)
    {
      v28 = *(*(a3 + 8) + 2 * v12);
      if (v28 < 0)
      {
        if (v28 == -1)
        {
          goto LABEL_218;
        }
      }

      else if ((*(*(*(a3 + 24) + 8) + 16 * v28 + 8) & 0xF) != 0)
      {
        goto LABEL_218;
      }
    }

    v29 = *(v10 + 8);
    if ((v29 & *(v21 + 5)) != 0)
    {
      goto LABEL_218;
    }

    if (v27 == 16 && (v21[9] & 0x100) != 0)
    {
      goto LABEL_218;
    }

    if ((*(v7 + 24) & 0x58) != 0)
    {
      v31 = *(*v21 + 4);
      if ((v31 & 3) == 0 || *(*v21 + 56) != *(v7 + 28) || (*(v7 + 24) & 0x18) != 0 && (v31 & 2) != 0)
      {
        goto LABEL_218;
      }
    }

    if (*(a3 + 98) && *(a3 + 94) - 1 == v12)
    {
      v32 = 2;
    }

    else
    {
      v32 = 1;
    }

    *(a1 + 32) |= v32;
    *(v10 + 48) = v128;
    *(v10 + 24) = v12;
    *(v10 + 26) = v127;
    *(v10 + 28) = v126;
    *(v10 + 52) = v129;
    if (v129 >= *(v10 + 56))
    {
      v35 = sub_181929E8C(v118, 8 * ((v129 + 8) & 0x1FFF8), 0x2004093837F09);
      if (!v35)
      {
        v5 = 0;
        v14 = v123;
        break;
      }

      v33 = v35;
      memcpy(v35, *(v10 + 64), 8 * *(v10 + 56));
      v36 = *(v10 + 64);
      if (v36 != (v10 + 80))
      {
        sub_181929C84(v118, v36);
      }

      *(v10 + 64) = v33;
      *(v10 + 56) = (v129 + 8) & 0xFFF8;
      v34 = *(v10 + 52);
      v29 = *(v10 + 8);
    }

    else
    {
      v33 = *(v10 + 64);
      v34 = v129;
    }

    *(v10 + 52) = v34 + 1;
    v33[v34] = v21;
    *v10 = (*(v21 + 5) | v125) & ~v29;
    if (v27)
    {
      v43 = *v21;
      v14 = v123;
      if ((*(*v21 + 5) & 0x10) != 0)
      {
        if ((v34 + 1) < 2u)
        {
          LODWORD(v44) = 46;
        }

        else
        {
          v45 = 0;
          v46 = (v34 + 1) - 1;
          v47 = *(v10 + 64);
          LODWORD(v44) = 46;
          do
          {
            v48 = *v47;
            if (*v47)
            {
              if (*v48 == v43)
              {
                LODWORD(v44) = 0;
                if (*(v48 + 36) == *(v21 + 9))
                {
                  v45 = 1;
                }
              }
            }

            ++v47;
            --v46;
          }

          while (v46);
          if (v45)
          {
            v5 = 0;
            *(v10 + 52) = v34;
            goto LABEL_219;
          }
        }

        goto LABEL_184;
      }

      v44 = *(v43 + 32);
      if (v44)
      {
        v44 = *v44;
        if (v44)
        {
          if (v44 >= 8)
          {
            v57 = 40;
            if (v44 >= 0x100)
            {
              v58 = v44;
              do
              {
                v57 += 40;
                v44 = v58 >> 4;
                v74 = v58 > 0xFFF;
                v58 >>= 4;
              }

              while (v74);
            }

            LOBYTE(v59) = v44;
            if (v44 >= 0x10)
            {
              do
              {
                v57 += 10;
                v59 = v44 >> 1;
                v74 = v44 > 0x1F;
                v44 >>= 1;
              }

              while (v74);
            }
          }

          else
          {
            if (v44 == 1)
            {
              LODWORD(v44) = 0;
              goto LABEL_184;
            }

            v57 = 40;
            do
            {
              v57 -= 10;
              LOBYTE(v59) = 2 * v44;
              v87 = v44 >= 4;
              v44 *= 2;
            }

            while (!v87);
          }

          LODWORD(v44) = (v57 + word_181A27AA2[v59 & 7] - 10);
        }
      }

LABEL_184:
      if ((*(a3 + 99) & 0x80) != 0 && v124 >= 10)
      {
        if (v44 >= 11)
        {
          v89 = v44;
          v90 = 40;
          if (v44 >= 0x100u)
          {
            v91 = v44;
            do
            {
              v90 += 40;
              v89 = v91 >> 4;
              v74 = v91 > 0xFFF;
              v91 >>= 4;
            }

            while (v74);
          }

          if (v89 >= 0x10)
          {
            do
            {
              v90 += 10;
              v74 = v89 > 0x1F;
              v89 >>= 1;
            }

            while (v74);
          }

          v88 = (v90 + word_181A27AA2[v89 & 7] - 43);
        }

        else
        {
          v88 = 0;
        }

        if (((*(*(a3 + 16) + 2 * v12) - (v44 + v124) + v88 + 10) & 0x8000) != 0)
        {
          if (a4 > 1 || (*(v118 + 98) & 2) != 0)
          {
LABEL_218:
            v5 = 0;
            goto LABEL_219;
          }

          *(v10 + 48) |= 0x100000u;
        }
      }

      v39 = *(v10 + 48) | 4;
LABEL_196:
      *(v10 + 48) = v39;
      v40 = v121;
      if ((v39 & 2) != 0)
      {
        goto LABEL_91;
      }

      goto LABEL_197;
    }

    v14 = v123;
    if ((v27 & 0x82) != 0)
    {
      v37 = *(*(a3 + 8) + 2 * v12);
      v38 = *(v10 + 48);
      v39 = v38 | 1;
      *(v10 + 48) = v38 | 1;
      if (v37 == -1)
      {
        v42 = 4097;
        v40 = v121;
      }

      else
      {
        v40 = v121;
        if (a4 || v37 < 0 || (v41 = *(a3 + 94), v41 - 1 != v12))
        {
LABEL_89:
          if (BYTE1(v135) < 2u)
          {
            LOWORD(v44) = 0;
            if ((v39 & 2) != 0)
            {
              goto LABEL_91;
            }
          }

          else
          {
            LOWORD(v44) = 0;
            v39 |= 0x200000u;
            *(v10 + 48) = v39;
            if ((v39 & 2) != 0)
            {
              goto LABEL_91;
            }
          }

          goto LABEL_197;
        }

        if ((*(a3 + 99) & 8) != 0 || v41 == 1 && (v27 & 2) != 0 && *(a3 + 98))
        {
          v42 = 4097;
        }

        else
        {
          v42 = 65537;
        }
      }

      v39 = v38 | v42;
      *(v10 + 48) = v39;
      goto LABEL_89;
    }

    if ((v27 & 0x100) != 0)
    {
      LOWORD(v44) = 0;
      v39 = *(v10 + 48) | 8;
      goto LABEL_196;
    }

    v49 = *(*v21 + 16);
    v50 = *v49;
    if (v50 == 176)
    {
      v50 = v49[2];
    }

    if (v50 != 177)
    {
      if (v50 != 139)
      {
        v51 = 1;
        goto LABEL_125;
      }

      v49 = *(v49 + 4);
    }

    v51 = **(v49 + 4);
LABEL_125:
    v60 = *(a3 + 96) - v12;
    if (v51 >= v60)
    {
      v61 = v60;
    }

    else
    {
      v61 = v51;
    }

    if (v61 < 2)
    {
      v77 = 1;
      goto LABEL_170;
    }

    v113 = *(v7 + 28);
    v62 = 1;
    v112 = v7;
    v110 = v61;
    do
    {
      v63 = *(*v21 + 24);
      if ((*(v63 + 5) & 0x10) != 0)
      {
        v63 = *(v63 + 32);
      }

      v64 = *(*(*(*v21 + 16) + 32) + 24 * v62 + 8);
      if (*v64 != 168 || *(v64 + 11) != v113)
      {
LABEL_169:
        v77 = v62;
        break;
      }

      if (*(v64 + 12) != *(*(a3 + 8) + 2 * (v62 + v12)) || *(*(a3 + 56) + v62 + v12) != *(*(a3 + 56) + v12))
      {
        v77 = v62;
        v7 = v112;
        break;
      }

      v117 = *(v64 + 12);
      v114 = v62 + v12;
      v122 = v62;
      v65 = *(*(v63 + 32) + 24 * v62 + 8);
      v66 = sub_1818D0A24(v64);
      v111 = v65;
      v67 = sub_1818D0A24(v65);
      if (v66 < 65 || v67 < 65)
      {
        v76 = v67 >= 65 ? v67 : v66;
        v75 = v76 | 0x40;
      }

      else
      {
        v74 = v67 > 0x42 || v66 > 0x42;
        v75 = v74 ? 67 : 65;
      }

      v14 = v123;
      v77 = v122;
      if ((v117 & 0x80000000) != 0 || (v78 = *(a3 + 24), v117 >= *(v78 + 54)))
      {
        v79 = 68;
      }

      else
      {
        v79 = *(*(v78 + 8) + 16 * v117 + 9);
      }

      v7 = v112;
      if (v79 != v75)
      {
        break;
      }

      if ((v64[5] & 2) != 0)
      {
        v82 = v4;
        v80 = v64;
        goto LABEL_160;
      }

      v80 = v111;
      if (v111 && (v111[5] & 2) != 0)
      {
        v82 = v4;
LABEL_160:
        v81 = sub_1818B4720(v82, v80, v68, v69, v70, v71, v72, v73);
        if (!v81)
        {
          v77 = v122;
          break;
        }

        goto LABEL_161;
      }

      v81 = sub_1818B4720(v4, v64, v68, v69, v70, v71, v72, v73);
      if (!v81)
      {
        v82 = v4;
        v80 = v111;
        goto LABEL_160;
      }

LABEL_161:
      v83 = *v81;
      v84 = *(*(a3 + 64) + 8 * v114);
      LOWORD(v62) = v122;
      while (*v83 != *v84)
      {
        if (byte_181A20298[*v83] != byte_181A20298[*v84])
        {
          goto LABEL_169;
        }

LABEL_163:
        ++v83;
        ++v84;
      }

      if (*v83)
      {
        goto LABEL_163;
      }

      v62 = v122 + 1;
      v77 = v110;
    }

    while (v122 + 1 != v110);
LABEL_170:
    v85 = *(v10 + 48);
    if ((v27 & 0x24) == 0)
    {
      v39 = v85 | 0x12;
      *(v10 + 48) = v85 | 0x12;
      *(v10 + 28) = v77;
      if ((v85 & 0x20) == 0)
      {
        v40 = 0;
        LOWORD(v44) = 0;
        v52 = *(v10 + 22);
        LOWORD(v53) = v52;
        if (!v21)
        {
          goto LABEL_105;
        }

LABEL_102:
        v54 = v21[8];
        if (v54 > 0)
        {
          if ((v21[9] & 0x80) == 0)
          {
            LOWORD(v53) = v53 - 20;
          }

          goto LABEL_105;
        }

        LOWORD(v53) = v54 + v53;
        if (!v40)
        {
LABEL_112:
          v121 = v40;
          v55 = v52 - (v21 != 0) - (v40 != 0);
          v53 = v53;
          if (v53 <= 10)
          {
            v53 = 10;
          }

          if (v55 >= v53)
          {
            v56 = v53;
          }

          else
          {
            v56 = v55;
          }

          goto LABEL_203;
        }

LABEL_106:
        if (v21 && v40[8] >= 1 && v21[8] > 0)
        {
          LOWORD(v53) = v53 - 20;
        }

        goto LABEL_112;
      }

      LOWORD(v44) = 0;
      v40 = *(*(v10 + 64) + 8 * *(v10 + 52) - 16);
      v116 = v21;
      if ((v39 & 2) == 0)
      {
        goto LABEL_197;
      }

LABEL_91:
      v52 = *(v10 + 22);
      if (!v40)
      {
        v21 = v116;
        LOWORD(v53) = *(v10 + 22);
        if (!v116)
        {
          goto LABEL_105;
        }

        goto LABEL_102;
      }

      v53 = v40[8];
      if (v53 <= 0)
      {
        LOWORD(v53) = v53 + v52;
      }

      else if ((v40[9] & 0x80) != 0)
      {
        LOWORD(v53) = *(v10 + 22);
      }

      else
      {
        LOWORD(v53) = v52 - 20;
      }

      v21 = v116;
      if (v116)
      {
        goto LABEL_102;
      }

LABEL_105:
      if (!v40)
      {
        goto LABEL_112;
      }

      goto LABEL_106;
    }

    v39 = v85 | 0x22;
    *(v10 + 48) = v85 | 0x22;
    *(v10 + 26) = v77;
    if ((v21[9] & 0x100) != 0)
    {
      if (!sub_181975134(v118, v10, *(v10 + 52) + 1))
      {
        LOWORD(v44) = 0;
        v86 = *(v10 + 52);
        v116 = v21 + 28;
        *(*(v10 + 64) + 8 * v86) = v21 + 28;
        *(v10 + 52) = v86 + 1;
        v39 = *(v10 + 48) | 0x10;
        *(v10 + 48) = v39;
        *(v10 + 28) = 1;
        v40 = v21;
        if ((v39 & 2) == 0)
        {
          goto LABEL_197;
        }

        goto LABEL_91;
      }

LABEL_258:
      v5 = 0;
      break;
    }

    v116 = 0;
    LOWORD(v44) = 0;
    v40 = v21;
    if ((v39 & 2) != 0)
    {
      goto LABEL_91;
    }

LABEL_197:
    v121 = v40;
    v92 = *(v10 + 24) + 1;
    *(v10 + 24) = v92;
    v93 = v21[8];
    if (v93 > 0 || *(*(a3 + 8) + 2 * v12) < 0)
    {
      v94 = (*(a3 + 16) + 2 * v92);
      v56 = *v94 - *(v94 - 1) + *(v10 + 22);
      *(v10 + 22) = v56;
      if ((v27 & 0x100) != 0)
      {
        v56 += 10;
        goto LABEL_202;
      }
    }

    else
    {
      v56 = v93 - v44 + *(v10 + 22);
LABEL_202:
      v21 = v116;
LABEL_203:
      *(v10 + 22) = v56;
      v116 = v21;
    }

    if ((~*(a3 + 99) & 3) != 0)
    {
      v95 = 15 * *(a3 + 92) / *(*(v7 + 16) + 60) + v56 + 1;
    }

    else
    {
      LOWORD(v95) = v56 + 16;
    }

    if (v95 <= v124)
    {
      v96 = v124;
      if (v124 - 49 <= v95)
      {
        v96 = v124 + 1;
        if (v124 - 31 <= v95)
        {
          v96 = v124 + byte_181A245A6[v124 - v95];
        }
      }
    }

    else if (v124 + 49 >= v95)
    {
      if (v124 + 31 >= v95)
      {
        v96 = v95 + byte_181A245A6[v95 - v124];
      }

      else
      {
        v96 = v95 + 1;
      }
    }

    else
    {
      v96 = v95;
    }

    if ((v39 & 0x4000140) == 0)
    {
      v105 = (v56 + 16);
      if (v96 >= v105)
      {
        if (v105 + 49 >= v96)
        {
          if (v105 + 31 >= v96)
          {
            v96 += byte_181A245A6[v96 - (v56 + 16)];
          }

          else
          {
            ++v96;
          }
        }
      }

      else if (v96 + 49 >= v105)
      {
        if (v96 + 31 >= v105)
        {
          v96 = v56 + 16 + byte_181A245A6[(v56 + 16) - v96];
        }

        else
        {
          v96 = v56 + 17;
        }
      }

      else
      {
        v96 = v56 + 16;
      }
    }

    v98 = v44 + a4;
    *(v10 + 20) = v96 + v44 + a4;
    *(v10 + 22) = v56 + v44 + a4;
    sub_1819765B0(*(a1 + 8), v10, v115);
    v5 = sub_181975CE8(a1, v10);
    v99 = *(v10 + 48);
    if ((v99 & 2) != 0)
    {
      v100 = v123;
    }

    else
    {
      v100 = v56;
    }

    v14 = v123;
    *(v10 + 22) = v100;
    if ((v99 & 0x10) == 0)
    {
      v101 = *(v10 + 24);
      if (v101 < *(a3 + 96) && (v101 < *(a3 + 94) || (*(a3 + 99) & 3) != 2))
      {
        if (v101 >= 4)
        {
          v102 = *v4;
          if (*(*v4 + 424))
          {
            ++*(v4 + 52);
            *(v4 + 24) = 9;
          }

          v103 = *(v102 + 544);
          if (v103)
          {
            if (*(v4 + 24) == 9)
            {
              goto LABEL_239;
            }

            v104 = *(v4 + 128) + 1;
            *(v4 + 128) = v104;
            if (v104 >= *(v102 + 560))
            {
              if (v103(*(v102 + 552)))
              {
                ++*(v4 + 52);
                *(v4 + 24) = 9;
              }

LABEL_239:
              *(v4 + 128) = 0;
            }
          }
        }

        sub_1819768C4(a1, v7, a3, v98);
      }
    }

    *(v10 + 22) = v123;
LABEL_219:
    v97 = sub_181972F4C(v130);
    if (v5)
    {
      break;
    }

    v21 = v97;
  }

  while (v97);
  *v10 = v125;
  *(v10 + 24) = v12;
  *(v10 + 26) = v127;
  *(v10 + 28) = v126;
  *(v10 + 54) = v119;
  *(v10 + 48) = v128;
  *(v10 + 22) = v14;
  *(v10 + 52) = v129;
  if (v12 == v119)
  {
    v106 = v12 + 1;
    if (v12 + 1 < *(a3 + 94) && v12 == v129 && (*(a3 + 99) & 0xC0) == 0x80 && (*(v118 + 97) & 0x40) == 0 && *(*(a3 + 16) + 2 * v106) >= 42)
    {
      v5 = sub_181975134(v118, v10, v129 + 1);
      if (!v5)
      {
        ++*(v10 + 24);
        ++*(v10 + 54);
        v107 = *(v10 + 64);
        v108 = *(v10 + 52);
        *(v10 + 52) = v108 + 1;
        *(v107 + 8 * v108) = 0;
        *(v10 + 48) |= 0x8000u;
        LOWORD(v107) = *(*(a3 + 16) + 2 * v12) - *(*(a3 + 16) + 2 * v106);
        *(v10 + 22) -= v107;
        sub_1819768C4(a1, v7, a3, (a4 + v107 + 5));
        *(v10 + 22) = v14;
        *(v10 + 24) = v12;
        *(v10 + 54) = v12;
        *(v10 + 48) = v128;
      }
    }
  }

  return v5;
}

uint64_t sub_1819777E0(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 1;
  }

  while (1)
  {
    if (*(v2 + 94))
    {
      v4 = 0;
      while (*(*(v2 + 8) + v4) != a2)
      {
        v4 += 2;
        if (2 * *(v2 + 94) == v4)
        {
          goto LABEL_3;
        }
      }

      if (!v4 || (*(v2 + 99) & 0x80) != 0 && *(*(v2 + 16) + v4 + 2) > 20)
      {
        return 0;
      }
    }

LABEL_3:
    v2 = *(v2 + 40);
    if (!v2)
    {
      return 1;
    }
  }
}

uint64_t sub_181977850(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *(a1 + 40);
  v4 = *v3;
  if ((*a2 | 2) == 0xAA)
  {
    if (*(a2 + 11) == *(v3 + 2))
    {
      v5 = *(v4 + 96);
      if (!*(v4 + 96))
      {
LABEL_7:
        *(v3 + 13) = 1;
        return 2;
      }

      v6 = *(v4 + 8);
      while (1)
      {
        v7 = *v6++;
        if (*(a2 + 12) == v7)
        {
          break;
        }

        if (!--v5)
        {
          goto LABEL_7;
        }
      }
    }

    return 0;
  }

  if ((*(v4 + 99) & 0x800) == 0)
  {
    return 0;
  }

  v9 = *(v4 + 96);
  if (!*(v4 + 96))
  {
    return 0;
  }

  v10 = 0;
  v11 = *(v3 + 2);
  v12 = 8;
  while (*(*(v4 + 8) + 2 * v10) != -2)
  {
LABEL_11:
    ++v10;
    v12 += 24;
    if (v10 >= v9)
    {
      return 0;
    }
  }

  if (sub_181959260(0, a2, *(*(v4 + 80) + v12), v11))
  {
    v9 = *(v4 + 96);
    goto LABEL_11;
  }

  result = 1;
  *(v3 + 12) = 1;
  return result;
}

uint64_t sub_181977950(uint64_t a1, unsigned __int8 *a2)
{
  if (*a2 == 168)
  {
    v2 = *(a1 + 40);
    if (*(a2 + 11) == v2[2])
    {
      v3 = *v2;
      v4 = *(*v2 + 96);
      if (!v4)
      {
LABEL_7:
        *(a1 + 36) = 1;
        return 2;
      }

      v5 = *(v3 + 8);
      while (1)
      {
        v6 = *v5++;
        if (*(a2 + 24) == v6)
        {
          break;
        }

        if (!--v4)
        {
          goto LABEL_7;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_1819779B0(uint64_t **a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  v124 = a4;
  v8 = a1;
  if (a5 && (*(**a1 + 96) & 0x40) != 0)
  {
    goto LABEL_4;
  }

  v9 = *a2;
  if (v9 > 0x3F)
  {
    goto LABEL_4;
  }

  v98 = **a1;
  if ((a4 & 0x803) != 0)
  {
    v11 = 387;
  }

  else
  {
    v11 = 386;
  }

  v115 = v11;
  if (!*a2)
  {
    return v9;
  }

  v12 = 0;
  v13 = 0;
  v117 = 0;
  v14 = 0;
  v112 = ~(-1 << v9);
  v15 = a2 + 2;
  v113 = (a1 + 13);
  v102 = a4 & 0xC0;
  v121 = a5;
  v122 = 0;
  v109 = a1 + 151;
  v125 = 1;
  v126 = a2 + 2;
  while (1)
  {
    if (v13)
    {
      v122 |= *(v14 + 8);
    }

    v14 = a6;
    if (v13 >= v121)
    {
      break;
    }

    v14 = *(*(a3 + 24) + 8 * v13);
    if ((v124 & 0x800) == 0)
    {
      break;
    }

LABEL_216:
    if (v125)
    {
      if (v12 < v112 && v13++ < v121)
      {
        continue;
      }
    }

    goto LABEL_225;
  }

  if ((*(v14 + 49) & 4) != 0)
  {
    if ((v124 & 0x280) != 0x80 && *(v14 + 29))
    {
      return v9;
    }

    goto LABEL_225;
  }

  v120 = v13;
  if ((v124 & 0x80) != 0)
  {
    *(v14 + 30) = 0;
  }

  v16 = 0;
  v123 = v14;
  v17 = HIDWORD(v8[1][9 * *(v14 + 16) + 4]);
  v119 = HIDWORD(v8[1][9 * *(v14 + 16) + 4]);
  do
  {
    if ((v12 & (1 << v16)) == 0)
    {
      v18 = &v15[6 * v16];
      v19 = *v18;
      if (*v18)
      {
        while (1)
        {
          v20 = *(v19 + 1);
          if ((v20 & 0x82000) == 0)
          {
            break;
          }

          if ((v20 & 0x80000) != 0)
          {
            v19 = *(*(v19 + 4) + 8);
            if (!v19)
            {
              goto LABEL_21;
            }
          }

          else
          {
            v21 = *v19;
            if (v21 != 114)
            {
              goto LABEL_32;
            }

            v19 = *(v19 + 2);
            if (!v19)
            {
              goto LABEL_21;
            }
          }
        }

        v21 = *v19;
LABEL_32:
        if ((v21 | 2) == 0xAA && *(v19 + 11) == v17)
        {
          v22 = *(v19 + 12);
          v137 = 0;
          v136 = 0u;
          v135 = 0u;
          v134 = 0u;
          v133 = 0u;
          v128 = v113;
          v129 = v113;
          v130 = 0;
          v131 = 0;
          LODWORD(v132) = 0;
          HIDWORD(v132) = v115;
          DWORD1(v133) = v17;
          *(&v133 + 1) = 257;
          if (v22 == -2)
          {
            goto LABEL_20;
          }

          LOWORD(v136) = v22;
          v23 = sub_181972F4C(&v128);
          if (!v23)
          {
            goto LABEL_20;
          }

          v24 = v23;
          v25 = 0;
          do
          {
            v26 = *(v24 + 5);
            if ((v26 & ~v122) == 0)
            {
              if (!v26)
              {
                v27 = v24[10];
                if ((v27 & 0x82) != 0)
                {
                  goto LABEL_52;
                }
              }

              if (!v25)
              {
                v25 = v24;
              }
            }

            v24 = sub_181972F4C(&v128);
          }

          while (v24);
          if (!v25)
          {
LABEL_19:
            v15 = v126;
LABEL_20:
            v17 = v119;
            goto LABEL_21;
          }

          LODWORD(v27) = v25[10];
          if (v27 != 1)
          {
LABEL_51:
            v24 = v25;
LABEL_52:
            v15 = v126;
            if ((v27 & 0x82) == 0 || (*(v19 + 12) & 0x80000000) != 0)
            {
LABEL_73:
              v12 |= 1 << v16;
            }

            else
            {
              v30 = *v18;
              v31 = *a1;
              v32 = sub_1818B4720(*a1, v30, a3, a4, a5, a6, a7, a8);
              if (!v32)
              {
                v32 = *(*v31 + 16);
              }

              v33 = *v24;
              v34 = 24;
              if ((*(*v24 + 4) & 0x400) != 0)
              {
                v35 = 24;
              }

              else
              {
                v35 = 16;
              }

              if ((*(*v24 + 4) & 0x400) != 0)
              {
                v34 = 16;
              }

              v36 = *(v33 + v35);
              if ((v36[5] & 2) != 0)
              {
                v39 = v31;
              }

              else
              {
                v37 = *(v33 + v34);
                if (!v37 || (v37[5] & 2) == 0)
                {
                  v38 = sub_1818B4720(v31, v36, a3, a4, a5, a6, a7, a8);
                  if (v38)
                  {
LABEL_68:
                    v40 = *v32;
                    for (i = *v38; ; ++i)
                    {
                      if (*v40 == *i)
                      {
                        if (!*v40)
                        {
                          goto LABEL_73;
                        }
                      }

                      else if (byte_181A20298[*v40] != byte_181A20298[*i])
                      {
                        goto LABEL_20;
                      }

                      ++v40;
                    }
                  }
                }

                v39 = v31;
                v36 = v37;
              }

              v38 = sub_1818B4720(v39, v36, a3, a4, a5, a6, a7, a8);
              if (v38)
              {
                goto LABEL_68;
              }
            }

            goto LABEL_20;
          }

          v28 = *(v14 + 52);
          if (!*(v14 + 52))
          {
            goto LABEL_19;
          }

          v29 = *(v14 + 64);
          v17 = v119;
          do
          {
            if (v25 == *v29)
            {
              goto LABEL_51;
            }

            ++v29;
            --v28;
          }

          while (v28);
          v15 = v126;
        }
      }
    }

LABEL_21:
    ++v16;
  }

  while (v16 != v9);
  v42 = *(v14 + 48);
  v127 = v12;
  if ((v42 & 0x1000) != 0)
  {
    v8 = a1;
    v13 = v120;
    goto LABEL_187;
  }

  v8 = a1;
  v13 = v120;
  if ((v42 & 0x100) == 0)
  {
    v43 = *(v14 + 32);
    if (v43 && (*(v43 + 99) & 4) == 0)
    {
      v45 = (v42 & 0x8000) == 0 && *(v43 + 98) != 0;
      v125 = v45;
      v105 = *(v43 + 96);
      if (!*(v43 + 96))
      {
        goto LABEL_187;
      }

      v104 = *(v43 + 94);
      goto LABEL_91;
    }

LABEL_4:
    LOBYTE(v9) = 0;
    return v9;
  }

  if (*(v14 + 40) && (*(v98 + 99) & 0x10) == 0 && sub_181978500(a1, v14, v120, v17, a2, a7, &v127))
  {
    goto LABEL_224;
  }

  v43 = 0;
  v104 = 0;
  v105 = 1;
LABEL_91:
  v46 = 0;
  v47 = 0;
  v100 = 0;
  v101 = 0;
  v48 = 0;
  v49 = 8;
  v114 = v43;
  while (1)
  {
    v50 = *(v14 + 24);
    if (v47 >= v50 || v47 < *(v14 + 54))
    {
      v51 = 1;
      v52 = 1;
      v53 = v102;
      goto LABEL_95;
    }

    v58 = *(v14 + 64);
    v59 = *(v58 + 8 * v47);
    v60 = *(v59 + 10);
    if ((v115 & v60) == 0)
    {
      break;
    }

    v61 = v125;
    if ((v60 & 0x180) != 0)
    {
      v61 = 0;
    }

    v125 = v61;
LABEL_172:
    ++v47;
    --v46;
    v49 += 8;
    if (v47 == v105)
    {
      goto LABEL_185;
    }
  }

  v53 = v102;
  if (v60)
  {
    v79 = *v59;
    v80 = v46 + (v50 - 1);
    v81 = (v58 + v49);
    while (1)
    {
      v51 = v80 == 0;
      if (!v80)
      {
        break;
      }

      v52 = 0;
      v82 = *v81++;
      --v80;
      if (*v82 == v79)
      {
        goto LABEL_95;
      }
    }

    v52 = 1;
  }

  else
  {
    v51 = 1;
    v52 = 1;
  }

LABEL_95:
  v106 = v49;
  v107 = v46;
  v111 = v48;
  if (!v43)
  {
    v56 = -1;
    if (v125)
    {
      v103 = 0;
      if (!v51)
      {
        goto LABEL_179;
      }

      goto LABEL_117;
    }

    v103 = 0;
LABEL_116:
    v125 = 0;
    if (!v51)
    {
      goto LABEL_179;
    }

    goto LABEL_117;
  }

  v54 = *(*(v43 + 8) + 2 * v47);
  v103 = *(*(v43 + 56) + v47) & 1;
  v55 = *(v43 + 24);
  if (v54 == *(v55 + 52))
  {
    LOWORD(v54) = -1;
  }

  v56 = v54;
  if (!v125)
  {
    goto LABEL_116;
  }

  if (v54 < 0)
  {
    v57 = v54 == -2;
LABEL_110:
    v62 = v125;
    if (v57)
    {
      v62 = 0;
    }

    v125 = v62;
  }

  else if (v47 >= v50)
  {
    v57 = (*(*(v55 + 8) + 16 * v54 + 8) & 0xF) == 0;
    goto LABEL_110;
  }

  if (!v51)
  {
    goto LABEL_179;
  }

LABEL_117:
  v63 = 0;
  while (2)
  {
    if ((v127 >> v63))
    {
      goto LABEL_119;
    }

    v64 = &v15[6 * v63];
    v65 = *v64;
    if (!*v64)
    {
      goto LABEL_119;
    }

    while (1)
    {
      v66 = *(v65 + 1);
      if ((v66 & 0x82000) == 0)
      {
        break;
      }

      if ((v66 & 0x80000) != 0)
      {
        v65 = *(*(v65 + 4) + 8);
        if (!v65)
        {
          goto LABEL_119;
        }
      }

      else
      {
        if (*v65 != 114)
        {
          break;
        }

        v65 = *(v65 + 2);
        if (!v65)
        {
          goto LABEL_119;
        }
      }
    }

    if (!v53)
    {
      v52 = 0;
    }

    if (v56 >= -1)
    {
      if ((*v65 | 2) == 0xAA && *(v65 + 11) == v17 && *(v65 + 12) == v56)
      {
        break;
      }

      goto LABEL_119;
    }

    v67 = *(*(v43 + 80) + 24 * v47 + 8);
    do
    {
      if ((v65[5] & 0x20) == 0)
      {
        break;
      }

      v65 = *(v65 + 2);
    }

    while (v65);
    for (; v67; v67 = *(v67 + 16))
    {
      if ((*(v67 + 5) & 0x20) == 0)
      {
        break;
      }
    }

    v68 = sub_181959260(0, v65, v67, v17);
    v43 = v114;
    if (v68)
    {
LABEL_119:
      if (!v52)
      {
        goto LABEL_179;
      }

      if (++v63 >= v9)
      {
        goto LABEL_179;
      }

      continue;
    }

    break;
  }

  if (v56 != -1)
  {
    v108 = v56;
    v69 = v53;
    v70 = v17;
    v71 = *a1;
    v72 = sub_1818B4720(*a1, *v64, a3, a4, a5, a6, a7, a8);
    if (!v72)
    {
      v72 = *(*v71 + 16);
    }

    v73 = *v72;
    v43 = v114;
    v74 = *(*(v114 + 64) + 8 * v47);
    v17 = v70;
    v53 = v69;
    v56 = v108;
    while (1)
    {
      if (*v73 == *v74)
      {
        if (!*v73)
        {
          break;
        }
      }

      else if (byte_181A20298[*v73] != byte_181A20298[*v74])
      {
        goto LABEL_119;
      }

      ++v73;
      ++v74;
    }
  }

  if ((v124 & 0x80) != 0)
  {
    *(v123 + 30) = v47 + 1;
  }

  if ((v124 & 0x40) != 0)
  {
    v75 = v63;
    v77 = v15[6 * v63 + 4];
    v14 = v123;
    if ((v77 & 2) != 0)
    {
      goto LABEL_167;
    }

    goto LABEL_169;
  }

  if (!v101)
  {
    v75 = v63;
    v78 = v15[6 * v63 + 4];
    v100 = v78 & 1 ^ v103;
    if ((v78 & 1) != v103)
    {
      *a7 |= 1 << v120;
    }

    v101 = 1;
    v14 = v123;
    if ((v78 & 2) != 0)
    {
      goto LABEL_167;
    }

LABEL_169:
    v48 = v111;
    if (v56 == -1)
    {
      v48 = 1;
    }

    v127 |= 1 << v75;
    v13 = v120;
    v49 = v106;
    v46 = v107;
    goto LABEL_172;
  }

  v75 = v63;
  v76 = v15[6 * v63 + 4];
  if ((v103 ^ v100) == (v76 & 1))
  {
    v101 = 1;
    v14 = v123;
    if ((v76 & 2) == 0)
    {
      goto LABEL_169;
    }

LABEL_167:
    if (v47 == *(v14 + 24))
    {
      v14 = v123;
      *(v123 + 48) |= 0x80000u;
      goto LABEL_169;
    }
  }

LABEL_179:
  v83 = v104 > v47 || v47 == 0;
  v84 = v125;
  if (v83)
  {
    v84 = 0;
  }

  v125 = v84;
  v13 = v120;
  v14 = v123;
  LOBYTE(v48) = v111;
LABEL_185:
  v8 = a1;
  if (v48)
  {
    v125 = 1;
    goto LABEL_188;
  }

LABEL_187:
  if (v125)
  {
LABEL_188:
    v85 = 0;
    v12 = v127;
    v117 |= *(v14 + 8);
    while (2)
    {
      if ((v12 & (1 << v85)) != 0)
      {
        goto LABEL_194;
      }

      v88 = *&v15[6 * v85];
      if (!v88)
      {
        v86 = 0;
LABEL_190:
        if ((v86 & ~v117) != 0)
        {
          v87 = 0;
        }

        else
        {
          v87 = 1 << v85;
        }

        v12 |= v87;
        v15 = v126;
        goto LABEL_194;
      }

      if (*v88 == 168 && (*(v88 + 1) & 0x20) == 0)
      {
        v91 = *(v88 + 11);
        if (*(v8 + 150) == v91)
        {
          v86 = 1;
          goto LABEL_190;
        }

        v92 = *(v8 + 149);
        if (v92 >= 2)
        {
          v93 = v109;
          v94 = 1;
          while (1)
          {
            v95 = *v93++;
            if (v95 == v91)
            {
              break;
            }

            if (v92 == ++v94)
            {
              goto LABEL_210;
            }
          }

          v86 = 1 << v94;
          goto LABEL_190;
        }
      }

      else if ((*(v88 + 1) & 0x810000) == 0)
      {
        v90 = *&v15[6 * v85];
        v86 = sub_1819725E8(v8 + 148, v88);
        if (v86)
        {
          goto LABEL_190;
        }

        v132 = 0x100000000;
        *&v133 = 0;
        v131 = 0;
        v128 = 0;
        v88 = v90;
LABEL_211:
        v129 = sub_1818C7E14;
        v130 = sub_18195A49C;
        sub_181959BA0(&v128, v88);
        if (WORD2(v132))
        {
          v86 = 0;
          goto LABEL_190;
        }

        v15 = v126;
LABEL_194:
        if (++v85 == v9)
        {
          v127 = v12;
          goto LABEL_216;
        }

        continue;
      }

      break;
    }

LABEL_210:
    v132 = 0x100000000;
    *&v133 = 0;
    v131 = 0;
    v128 = 0;
    goto LABEL_211;
  }

LABEL_224:
  LOBYTE(v125) = 0;
  v12 = v127;
LABEL_225:
  if (v12 != v112)
  {
    if (!v125)
    {
      while (v9 >= 2)
      {
        if (((-1 << --v9) | v12) == 0xFFFFFFFFFFFFFFFFLL)
        {
          return v9;
        }
      }

      goto LABEL_4;
    }

    LOBYTE(v9) = -1;
  }

  return v9;
}

uint64_t sub_181978500(uint64_t a1, uint64_t a2, char a3, int a4, int *a5, void *a6, uint64_t *a7)
{
  v7 = 0;
  v8 = *(a2 + 40);
  v9 = *a7;
  v10 = (a5 + 6);
  v11 = -1;
  do
  {
    v12 = 1 << v7++;
    v10 += 24;
    ++v11;
  }

  while ((v12 & v9) != 0);
  v13 = *v8;
  if (v13 < 1)
  {
    return 0;
  }

  v14 = *a5;
  v15 = v11;
  if (v14 > v11)
  {
    v15 = *a5;
  }

  if (v15 + 1 == v7)
  {
    return 0;
  }

  if (!*(v8 + 14))
  {
    return 0;
  }

  v16 = *(v10 - 5);
  if ((*v16 | 2) != 0xAA || *(v16 + 11) != a4 || *(v16 + 12) != *(v8 + 14) - 1)
  {
    return 0;
  }

  v17 = *(a1 + 60);
  if ((v17 & 0x40) == 0)
  {
    if (((*(v8 + 24) ^ *(v10 - 24)) & 2) == 0)
    {
      if (((*(v8 + 24) ^ *(v10 - 24)) & 1) == 0)
      {
        goto LABEL_14;
      }

      if ((*(a2 + 51) & 2) == 0)
      {
        *a6 |= 1 << a3;
        v9 = *a7;
        v18 = 1;
        goto LABEL_15;
      }
    }

    return 0;
  }

LABEL_14:
  v18 = 0;
LABEL_15:
  v19 = v9 | v12;
  *a7 = v19;
  if (v13 != 1)
  {
    if (v14 > v11)
    {
      v11 = v14;
    }

    v21 = (v11 - v7 + 1) - 1;
    v22 = v8 + 13;
    v23 = v13 - 1;
    while (v21)
    {
      if (!*v22)
      {
        break;
      }

      v24 = *(v10 - 2);
      if ((*v24 | 2) != 0xAA)
      {
        break;
      }

      if (*(v24 + 11) != a4)
      {
        break;
      }

      if (*(v24 + 12) != *v22 - 1)
      {
        break;
      }

      if ((v17 & 0x40) == 0)
      {
        v25 = *v10;
        v26 = *(v22 - 4);
        if (((v26 ^ v25) & 2) != 0 || (v26 & 1 ^ v18) != (v25 & 1))
        {
          break;
        }
      }

      result = 1;
      v19 |= 1 << v7;
      *a7 = v19;
      ++v7;
      --v21;
      v22 += 12;
      v10 += 24;
      if (!--v23)
      {
        return result;
      }
    }
  }

  return 1;
}

void *sub_1819786B0(void *result, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v4 = result;
    do
    {
      *a2 = *(v2 + 24);
      if (*v2)
      {
        sub_1819439E0(v4, *v2);
      }

      result = sub_181929C84(v4, v2);
      v2 = *a2;
    }

    while (*a2);
  }

  return result;
}

uint64_t sub_181978718(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_181902484(*(a2 + 96) + 1, 0x100004077774924);
  *(a2 + 32) = v5;
  if (v5)
  {
    if (*(a2 + 96))
    {
      v12 = 0;
      v13 = 8;
      do
      {
        v16 = *(*(a2 + 8) + 2 * v12);
        if (v16 < 0)
        {
          if (v16 == -1)
          {
            v14 = 68;
          }

          else
          {
            v14 = sub_1818D0A24(*(*(a2 + 80) + v13));
          }
        }

        else
        {
          v14 = *(*(v4 + 8) + 16 * v16 + 9);
        }

        v15 = v14;
        if (v14 <= 65)
        {
          v15 = 65;
        }

        if (v15 >= 67)
        {
          LOBYTE(v15) = 67;
        }

        *(*(a2 + 32) + v12++) = v15;
        v13 += 24;
      }

      while (v12 < *(a2 + 96));
      v5 = *(a2 + 32);
    }

    else
    {
      v12 = 0;
    }

    *(v5 + v12) = 0;
    return *(a2 + 32);
  }

  if (*(a1 + 103) || *(a1 + 104))
  {
    return 0;
  }

  *(a1 + 103) = 1;
  if (*(a1 + 220) >= 1)
  {
    *(a1 + 424) = 1;
  }

  ++*(a1 + 432);
  *(a1 + 436) = 0;
  result = *(a1 + 344);
  if (result)
  {
    sub_181910730(result, "out of memory", v6, v7, v8, v9, v10, v11, v20);
    v18 = *(a1 + 344);
    *(v18 + 24) = 7;
    v19 = *(v18 + 216);
    if (v19)
    {
      result = 0;
      do
      {
        ++*(v19 + 52);
        *(v19 + 24) = 7;
        v19 = *(v19 + 216);
      }

      while (v19);
      return result;
    }

    return 0;
  }

  return result;
}

double sub_181978894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = (*(a2 + 8) + 72 * *(a3 + 64) + 8);
  v6 = *(a1 + 16);
  v7 = *a1;
  v37 = 0x10000000000;
  v34 = v7;
  v35 = &v38;
  v36 = 0x7FFFFFFD00000064;
  sqlite3_str_appendf(&v34, "BLOOM FILTER ON %S (", v5);
  v12 = *(a3 + 96);
  if (*(v12 + 49))
  {
    if ((*(v5[2] + 52) & 0x8000000000000000) != 0)
    {
      sqlite3_str_appendf(&v34, "rowid=?");
    }

    else
    {
      sqlite3_str_appendf(&v34, "%s=?");
    }
  }

  else
  {
    v13 = *(v12 + 54);
    if (v13 < *(v12 + 24))
    {
      do
      {
        v15 = *(v12 + 32);
        v16 = *(*(v15 + 8) + 2 * v13);
        if (v16 == 65534)
        {
          v17 = "<expr>";
        }

        else if (v16 == 0xFFFF)
        {
          v17 = "rowid";
        }

        else
        {
          v17 = *(*(*(v15 + 24) + 8) + 16 * v16);
        }

        if (v13 > *(v12 + 54))
        {
          v18 = v37;
          if (v37 + 5 < v36)
          {
            LODWORD(v37) = v37 + 5;
            v14 = &v35[v18];
            v14[4] = 32;
            *v14 = 1145979168;
          }

          else
          {
            sub_181906814(&v34, " AND ", 5u);
          }
        }

        sqlite3_str_appendf(&v34, "%s=?", v17);
        ++v13;
      }

      while (v13 < *(v12 + 24));
    }
  }

  v19 = v37;
  if (v37 + 1 >= v36)
  {
    sub_181906814(&v34, ")", 1u);
    v20 = v35;
    if (!v35)
    {
      goto LABEL_24;
    }
  }

  else
  {
    LODWORD(v37) = v37 + 1;
    v35[v19] = 41;
    v20 = v35;
    if (!v35)
    {
      goto LABEL_24;
    }
  }

  v20[v37] = 0;
  if (HIDWORD(v36) && (v37 & 0x40000000000) == 0)
  {
    v21 = sub_18192A12C(&v34);
    goto LABEL_25;
  }

LABEL_24:
  v21 = v35;
LABEL_25:
  v22 = *(a1 + 312);
  v23 = *(v6 + 144);
  if (*(v6 + 148) <= v23)
  {
    LODWORD(v23) = sub_18194C8AC(v6, 188, v23, v22, 0, v8, v9, v10);
  }

  else
  {
    *(v6 + 144) = v23 + 1;
    v24 = *(v6 + 136) + 40 * v23;
    *v24 = 188;
    *(v24 + 4) = v23;
    *(v24 + 8) = v22;
    *(v24 + 12) = 0;
    *(v24 + 28) = 0;
    *(v24 + 20) = 0;
    *(v24 + 36) = 0;
  }

  if (*(*v6 + 103))
  {
    if (v21)
    {
      sub_181939EC8(*v6, v21);
    }
  }

  else
  {
    if ((v23 & 0x80000000) != 0)
    {
      LODWORD(v23) = *(v6 + 144) - 1;
    }

    v25 = *(v6 + 136) + 40 * v23;
    if (*(v25 + 1))
    {
      sub_18194CB90(v6, v25, v21, 0xFFFFFFFA);
    }

    else if (v21)
    {
      *(v25 + 16) = v21;
      *(v25 + 1) = -6;
    }
  }

  v26 = *v6;
  if ((*(*v6 + 49) & 4) != 0)
  {
    v27 = *(v6 + 144);
    v28 = *(v6 + 392);
    v29 = 56 * v28;
    v30 = v29 + 56;
    v31 = *(v6 + 400);
    if (v31)
    {
      if (*(v26 + 512) > v31)
      {
        v32 = *(v6 + 392);
        if (*(v26 + 496) <= v31)
        {
          if (v30 < 0x81)
          {
LABEL_49:
            *(v6 + 392) = v28 + 1;
            v33 = &v31[7 * v32];
            result = 0.0;
            *(v33 + 1) = 0u;
            *(v33 + 2) = 0u;
            *v33 = 0u;
            v33[6] = 0;
            *v33 = v27 - 1;
            *(v33 + 7) = 0;
            *(v33 + 8) = 0;
            *(v33 + 20) = 0;
            *(v6 + 400) = v31;
            return result;
          }
        }

        else if (*(v26 + 504) <= v31 && v30 <= *(v26 + 438))
        {
          goto LABEL_49;
        }
      }

      v31 = sub_181929F38(v26, v31, v30, 0x1010040CEB2E6A9);
      if (!v31)
      {
        return result;
      }

LABEL_48:
      v28 = *(v6 + 392);
      v32 = v28;
      goto LABEL_49;
    }

    v31 = sub_181929E8C(v26, v29 + 56, 0x1010040CEB2E6A9);
    if (v31)
    {
      goto LABEL_48;
    }
  }

  return result;
}

void *sub_181978CA8(void *result, int a2, uint64_t a3, uint64_t a4, char a5)
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = result[19];
  if (!v5)
  {
    v5 = result;
  }

  if (*(v5 + 301) == 2 || (*(*result + 49) & 4) != 0)
  {
    v6 = result[2];
    v7 = *(*v6 + 103) ? &byte_1EA831A58 : (v6[17] + 40 * a2);
    v8 = *(a4 + 64);
    v9 = *result;
    v33 = 0u;
    v34 = 0u;
    if (!*(v9 + 103))
    {
      v10 = a3 + 72 * v8 + 8;
      v11 = *(a4 + 96);
      v12 = *(v11 + 48);
      v13 = (v12 & 0x30) != 0 || (v12 & 0x400) == 0 && *(v11 + 24) || (a5 & 3) != 0;
      *&v33 = v9;
      *(&v33 + 1) = &v35;
      *&v34 = 0x7FFFFFFD00000064;
      DWORD2(v34) = 0;
      WORD6(v34) = 256;
      v14 = "SCAN";
      if (v13)
      {
        v14 = "SEARCH";
      }

      sqlite3_str_appendf(&v33, "%s %S", v14, v10);
      if ((v12 & 0x500) != 0)
      {
        if ((v12 & 0x100) != 0 && (v12 & 0xF) != 0)
        {
          sqlite3_str_appendf(&v33, " USING INTEGER PRIMARY KEY (%s", "rowid");
          if ((v12 & 5) == 0 && (v12 & 0x30) == 0x30)
          {
            sqlite3_str_appendf(&v33, ">? AND %s", "rowid");
          }

          sqlite3_str_appendf(&v33, "%c?)");
        }

        else if ((v12 & 0x400) != 0)
        {
          v17 = DWORD2(v34);
          if (DWORD2(v34) + 21 >= v34)
          {
            sub_181906814(&v33, " VIRTUAL TABLE INDEX ", 0x15u);
          }

          else
          {
            DWORD2(v34) += 21;
            qmemcpy((*(&v33 + 1) + v17), " VIRTUAL TABLE INDEX ", 21);
          }

          if ((*(v11 + 28) & 4) != 0)
          {
            v18 = "0x%x:%s";
          }

          else
          {
            v18 = "%d:%s";
          }

          sqlite3_str_appendf(&v33, v18, *(v11 + 24), *(v11 + 32));
        }

        goto LABEL_73;
      }

      v15 = *(v11 + 32);
      if ((*(*(v10 + 16) + 48) & 0x80) != 0 && (*(v15 + 99) & 3) == 2)
      {
        if (!v13)
        {
LABEL_73:
          if ((*(v10 + 24) & 8) != 0)
          {
            sqlite3_str_appendf(&v33, " LEFT-JOIN");
          }

          v31 = *(v7 + 2);
          if (v31)
          {
            sub_181929C84(v9, v31);
          }

          v7[1] = -6;
          if (*(&v33 + 1) && (*(*(&v33 + 1) + DWORD2(v34)) = 0, DWORD1(v34)) && (BYTE13(v34) & 4) == 0)
          {
            result = sub_18192A12C(&v33);
          }

          else
          {
            result = *(&v33 + 1);
          }

          *(v7 + 2) = result;
          return result;
        }

        v16 = "PRIMARY KEY";
      }

      else if ((v12 & 0x20000) != 0)
      {
        v16 = "AUTOMATIC PARTIAL COVERING INDEX";
      }

      else if ((v12 & 0x4000) != 0)
      {
        v16 = "AUTOMATIC COVERING INDEX";
      }

      else if ((v12 & 0x4000040) != 0)
      {
        v16 = "COVERING INDEX %s";
      }

      else
      {
        v16 = "INDEX %s";
      }

      v19 = DWORD2(v34);
      if (DWORD2(v34) + 7 >= v34)
      {
        sub_181906814(&v33, " USING ", 7u);
      }

      else
      {
        DWORD2(v34) += 7;
        v20 = (*(&v33 + 1) + v19);
        *(v20 + 3) = 541544009;
        *v20 = 1230198048;
      }

      sqlite3_str_appendf(&v33, v16, *v15);
      v21 = *(v11 + 32);
      v22 = *(v11 + 24);
      v23 = *(v11 + 54);
      if (*(v11 + 24) || (*(v11 + 48) & 0x30) != 0)
      {
        v24 = DWORD2(v34);
        if (DWORD2(v34) + 2 >= v34)
        {
          sub_181906814(&v33, " (", 2u);
        }

        else
        {
          DWORD2(v34) += 2;
          *(*(&v33 + 1) + v24) = 10272;
        }

        if (v22)
        {
          if (v23)
          {
            sqlite3_str_appendf(&v33, "ANY(%s)");
          }

          else
          {
            sqlite3_str_appendf(&v33, "%s=?");
          }

          if (v22 == 1)
          {
            LODWORD(v22) = 1;
          }

          else
          {
            v32 = v10;
            for (i = 1; i != v22; ++i)
            {
              v27 = DWORD2(v34);
              if (DWORD2(v34) + 5 < v34)
              {
                DWORD2(v34) += 5;
                v26 = *(&v33 + 1) + v27;
                *(v26 + 4) = 32;
                *v26 = 1145979168;
              }

              else
              {
                sub_181906814(&v33, " AND ", 5u);
              }

              if (i >= v23)
              {
                sqlite3_str_appendf(&v33, "%s=?");
              }

              else
              {
                sqlite3_str_appendf(&v33, "ANY(%s)");
              }
            }

            v10 = v32;
          }
        }

        v28 = *(v11 + 48);
        v29 = v22;
        if ((v28 & 0x20) != 0)
        {
          sub_181979280(&v33, v21, *(v11 + 26), v22, v22, ">");
          v28 = *(v11 + 48);
          v29 = 1;
        }

        if ((v28 & 0x10) != 0)
        {
          sub_181979280(&v33, v21, *(v11 + 28), v22, v29, "<");
        }

        v30 = DWORD2(v34);
        if (DWORD2(v34) + 1 >= v34)
        {
          sub_181906814(&v33, ")", 1u);
        }

        else
        {
          ++DWORD2(v34);
          *(*(&v33 + 1) + v30) = 41;
        }
      }

      goto LABEL_73;
    }
  }

  return result;
}

void sub_181979280(sqlite3_str *a1, uint64_t a2, int a3, int a4, int a5, _BYTE *a6)
{
  if (a5)
  {
    if (!a1)
    {
      sub_1819012D0(34349);
      if (a3 <= 1)
      {
        goto LABEL_13;
      }

LABEL_19:
      sub_1819012D0(34349);
      v13 = 1;
      goto LABEL_23;
    }

    v10 = *(a1 + 6);
    if ((v10 + 5) >= *(a1 + 4))
    {
      sub_181906814(a1, " AND ", 5u);
      if (a3 <= 1)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }

    *(a1 + 6) = v10 + 5;
    v11 = *(a1 + 1) + v10;
    *(v11 + 4) = 32;
    *v11 = 1145979168;
  }

  if (a3 > 1)
  {
LABEL_10:
    if (a1)
    {
      v12 = *(a1 + 6);
      if ((v12 + 1) >= *(a1 + 4))
      {
        v13 = 1;
        sub_181906814(a1, "(", 1u);
      }

      else
      {
        *(a1 + 6) = v12 + 1;
        *(*(a1 + 1) + v12) = 40;
        v13 = 1;
      }

LABEL_23:
      v16 = *(*(a2 + 8) + 2 * a4);
      if (v16 == 65534)
      {
        v17 = "<expr>";
      }

      else if (v16 == 0xFFFF)
      {
        v17 = "rowid";
      }

      else
      {
        v17 = *(*(*(a2 + 24) + 8) + 16 * v16);
      }

      sqlite3_str_appendall(a1, v17);
      if (a3 != 1)
      {
        v19 = 2 * a4 + 2;
        v20 = a3 - 1;
        do
        {
          if (a1)
          {
            v22 = *(a1 + 6);
            if ((v22 + 1) >= *(a1 + 4))
            {
              sub_181906814(a1, ",", 1u);
            }

            else
            {
              *(a1 + 6) = v22 + 1;
              *(*(a1 + 1) + v22) = 44;
            }
          }

          else
          {
            sub_1819012D0(34349);
          }

          v23 = *(*(a2 + 8) + v19);
          if (v23 == 65534)
          {
            v21 = "<expr>";
          }

          else if (v23 == 0xFFFF)
          {
            v21 = "rowid";
          }

          else
          {
            v21 = *(*(*(a2 + 24) + 8) + 16 * v23);
          }

          sqlite3_str_appendall(a1, v21);
          v19 += 2;
          --v20;
        }

        while (v20);
      }

      if (v13)
      {
        if (a1)
        {
          v18 = *(a1 + 6);
          if ((v18 + 1) >= *(a1 + 4))
          {
            sub_181906814(a1, ")", 1u);
          }

          else
          {
            *(a1 + 6) = v18 + 1;
            *(*(a1 + 1) + v18) = 41;
          }

          if (a6)
          {
            v29 = *(a1 + 6);
            if ((v29 + 1) >= *(a1 + 4))
            {
              sub_181906814(a1, a6, 1u);
            }

            else
            {
              *(a1 + 6) = v29 + 1;
              *(*(a1 + 1) + v29) = *a6;
            }
          }

          else
          {
            sub_1819012D0(34353);
          }

          v30 = *(a1 + 6);
          if ((v30 + 1) >= *(a1 + 4))
          {
            v36 = 1;
            sub_181906814(a1, "(", 1u);
          }

          else
          {
            *(a1 + 6) = v30 + 1;
            *(*(a1 + 1) + v30) = 40;
            v36 = 1;
          }

          goto LABEL_62;
        }

        sub_1819012D0(34349);
        sub_1819012D0(34349);
        sub_1819012D0(34349);
        v36 = 1;
LABEL_49:
        v24 = (a1 + 24);
        v25 = (a1 + 16);
        v26 = (a1 + 8);
        sub_1819012D0(34349);
        v27 = 1;
        v28 = a3 - 1;
        if (a3 == 1)
        {
          goto LABEL_66;
        }

        goto LABEL_74;
      }

      v14 = 1;
      if (a1)
      {
        goto LABEL_15;
      }

LABEL_46:
      sub_1819012D0(34349);
      if ((v14 & 1) == 0)
      {
        return;
      }

      v36 = 0;
      goto LABEL_49;
    }

    goto LABEL_19;
  }

LABEL_13:
  v13 = 0;
  v14 = 0;
  if (a3 >= 1)
  {
    goto LABEL_23;
  }

  if (!a1)
  {
    goto LABEL_46;
  }

LABEL_15:
  if (a6)
  {
    v15 = *(a1 + 6);
    if ((v15 + 1) >= *(a1 + 4))
    {
      sub_181906814(a1, a6, 1u);
      if ((v14 & 1) == 0)
      {
        return;
      }
    }

    else
    {
      *(a1 + 6) = v15 + 1;
      *(*(a1 + 1) + v15) = *a6;
      if ((v14 & 1) == 0)
      {
        return;
      }
    }
  }

  else
  {
    sub_1819012D0(34353);
    if ((v14 & 1) == 0)
    {
      return;
    }
  }

  v36 = 0;
LABEL_62:
  v24 = (a1 + 24);
  v31 = *(a1 + 6);
  v26 = (a1 + 8);
  v25 = (a1 + 16);
  if ((v31 + 1) >= *(a1 + 4))
  {
    sub_181906814(a1, "?", 1u);
    v27 = 0;
    v28 = a3 - 1;
    if (a3 == 1)
    {
      goto LABEL_66;
    }
  }

  else
  {
    v27 = 0;
    *v24 = v31 + 1;
    *(*v26 + v31) = 63;
    v28 = a3 - 1;
    if (a3 == 1)
    {
      goto LABEL_66;
    }
  }

  do
  {
LABEL_74:
    if (v27)
    {
      sub_1819012D0(34349);
      sub_1819012D0(34349);
    }

    else
    {
      v33 = *v24;
      if ((v33 + 1) >= *v25)
      {
        sub_181906814(a1, ",", 1u);
      }

      else
      {
        *v24 = v33 + 1;
        *(*v26 + v33) = 44;
      }

      v34 = *v24;
      if ((v34 + 1) >= *v25)
      {
        sub_181906814(a1, "?", 1u);
      }

      else
      {
        *v24 = v34 + 1;
        *(*v26 + v34) = 63;
      }
    }

    --v28;
  }

  while (v28);
LABEL_66:
  if (v36)
  {
    if (a1)
    {
      v32 = *(a1 + 6);
      if ((v32 + 1) >= *(a1 + 4))
      {

        sub_181906814(a1, ")", 1u);
      }

      else
      {
        *(a1 + 6) = v32 + 1;
        *(*(a1 + 1) + v32) = 41;
      }
    }

    else
    {

      sub_1819012D0(34349);
    }
  }
}

uint64_t sub_181979840(uint64_t result, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a2;
  v10 = result;
  if (!a2)
  {
    goto LABEL_8;
  }

  v11 = *a2;
  if (v11 == 176)
  {
    v11 = a2[2];
  }

  v12 = a2;
  if (v11 != 177)
  {
    if (v11 != 139)
    {
      goto LABEL_8;
    }

    v12 = *(a2 + 4);
  }

  if (*v12[4] < 2)
  {
LABEL_8:
    if (!*(result + 16))
    {
      return result;
    }

    result = sub_1818B8080(result, a2, a3, a4, a5, a6, a7, a8);
    if (result == a3)
    {
      return result;
    }

    v16 = result;
    if (!v9)
    {
      goto LABEL_44;
    }

    while (1)
    {
      v17 = *(v9 + 1);
      if ((v17 & 0x82000) == 0)
      {
        break;
      }

      if ((v17 & 0x80000) != 0)
      {
        v9 = *(*(v9 + 4) + 8);
        if (!v9)
        {
          goto LABEL_44;
        }
      }

      else
      {
        if (*v9 != 114)
        {
          break;
        }

        v9 = *(v9 + 2);
        if (!v9)
        {
          goto LABEL_44;
        }
      }
    }

    if ((v17 & 0x400000) != 0 || *v9 == 176)
    {
      v32 = 80;
    }

    else
    {
LABEL_44:
      v32 = 81;
    }

    result = v10[2];
    v33 = *(result + 144);
    if (*(result + 148) > v33)
    {
      *(result + 144) = v33 + 1;
      v34 = *(result + 136) + 40 * v33;
      *v34 = v32;
      *(v34 + 2) = 0;
      *(v34 + 4) = v16;
      *(v34 + 8) = a3;
      *(v34 + 1) = 0;
      *(v34 + 12) = 0;
      *(v34 + 28) = 0;
      *(v34 + 20) = 0;
      *(v34 + 36) = 0;
      return result;
    }

    v35 = a3;
    v29 = 0;
    goto LABEL_50;
  }

  if ((a2[5] & 0x10) != 0)
  {
    v27 = *(result + 16);
    v28 = a4;
    result = sub_1818E1564(result, a2, a3, a4, a5, a6, a7, a8);
    v16 = result;
    v29 = (v28 - 1);
    v30 = *(v27 + 144);
    if (*(v27 + 148) > v30)
    {
      *(v27 + 144) = v30 + 1;
      v31 = *(v27 + 136) + 40 * v30;
      *v31 = 80;
      *(v31 + 4) = result;
      *(v31 + 8) = a3;
      *(v31 + 12) = v29;
      *(v31 + 24) = 0;
      *(v31 + 32) = 0;
      *(v31 + 16) = 0;
      return result;
    }

    result = v27;
    v32 = 80;
    v35 = a3;
LABEL_50:

    return sub_18194C8AC(result, v32, v16, v35, v29, v13, v14, v15);
  }

  if (a4 >= 1)
  {
    v18 = 0;
    v19 = *(a2 + 4) + 8;
    v20 = a4;
    do
    {
      if (v10[2])
      {
        v22 = *(v19 + 24 * v18);
        result = sub_1818B8080(v10, v22, (v18 + a3), a4, a5, a6, a7, a8);
        if (result != v18 + a3)
        {
          v23 = result;
          if (!v22)
          {
            goto LABEL_36;
          }

          while (1)
          {
            v24 = *(v22 + 1);
            if ((v24 & 0x82000) == 0)
            {
              break;
            }

            if ((v24 & 0x80000) != 0)
            {
              v22 = *(*(v22 + 4) + 8);
              if (!v22)
              {
                goto LABEL_36;
              }
            }

            else
            {
              if (*v22 != 114)
              {
                break;
              }

              v22 = *(v22 + 2);
              if (!v22)
              {
                goto LABEL_36;
              }
            }
          }

          if ((v24 & 0x400000) != 0 || *v22 == 176)
          {
            v25 = 80;
          }

          else
          {
LABEL_36:
            v25 = 81;
          }

          result = v10[2];
          v26 = *(result + 144);
          if (*(result + 148) > v26)
          {
            *(result + 144) = v26 + 1;
            v21 = *(result + 136) + 40 * v26;
            *v21 = v25;
            *(v21 + 2) = 0;
            *(v21 + 4) = v23;
            *(v21 + 8) = v18 + a3;
            *(v21 + 1) = 0;
            *(v21 + 12) = 0;
            *(v21 + 28) = 0;
            *(v21 + 20) = 0;
            *(v21 + 36) = 0;
          }

          else
          {
            result = sub_18194C8AC(result, v25, v23, (v18 + a3), 0, a6, a7, a8);
          }
        }
      }

      ++v18;
    }

    while (v18 != v20);
  }

  return result;
}

uint64_t sub_181979B58(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a2 + 64);
  if (a3 + 1 < v10)
  {
    v39[11] = v8;
    v39[12] = v9;
    v14 = result;
    v15 = result + 184;
    v16 = a3 + 1;
    v17 = a2 + 120 * a3 + 976;
    do
    {
      if (!*(v17 + 52))
      {
        goto LABEL_6;
      }

      v19 = *(v17 + 96);
      if (*(v19 + 54) || (*v19 & a5) != 0)
      {
        goto LABEL_6;
      }

      *(v17 + 12) = a4;
      if (*(v19 + 49))
      {
        v29 = **(v19 + 64);
        if (*(v14 + 31))
        {
          v30 = *(v14 + 31) - 1;
          *(v14 + 31) = v30;
          v31 = *(v15 + 4 * v30);
        }

        else
        {
          v31 = (*(v14 + 15) + 1);
          *(v14 + 15) = v31;
        }

        v33 = sub_1818D0C40(v14, v29, v17, 0, 0, v31, a7, a8);
        v34 = v14[2];
        v35 = *(v34 + 144);
        if (*(v34 + 148) <= v35)
        {
          sub_18194C8AC(v34, 13, v33, a4, 0, v32, a7, a8);
        }

        else
        {
          *(v34 + 144) = v35 + 1;
          v36 = *(v34 + 136) + 40 * v35;
          *v36 = 13;
          *(v36 + 4) = v33;
          *(v36 + 8) = a4;
          *(v36 + 12) = 0;
          *(v36 + 28) = 0;
          *(v36 + 20) = 0;
          *(v36 + 36) = 0;
        }

        result = v14[2];
        v37 = *(v17 + 52);
        v38 = *(result + 144);
        if (*(result + 148) <= v38)
        {
          result = sub_18194CAFC(result, 64, v37, a4, v33, 1, a7, a8);
          goto LABEL_5;
        }

        *(result + 144) = v38 + 1;
        v18 = *(result + 136) + 40 * v38;
        *v18 = 64832;
        *(v18 + 4) = v37;
        *(v18 + 8) = a4;
        *(v18 + 12) = v33;
        *(v18 + 16) = 1;
      }

      else
      {
        v20 = *(v19 + 24);
        v39[0] = 0;
        v21 = sub_181979DC8(v14, v17, 0, 0, v39);
        v22 = v39[0];
        sub_18197A62C(v14, v21, v20, v39[0], v23, v24, v25, v26);
        if (v22)
        {
          sub_181929C84(*v14, v22);
        }

        result = v14[2];
        v27 = *(v17 + 52);
        v28 = *(result + 144);
        if (*(result + 148) <= v28)
        {
          result = sub_18194CAFC(result, 64, v27, a4, v21, v20, a7, a8);
          goto LABEL_5;
        }

        *(result + 144) = v28 + 1;
        v18 = *(result + 136) + 40 * v28;
        *v18 = 64832;
        *(v18 + 4) = v27;
        *(v18 + 8) = a4;
        *(v18 + 12) = v21;
        *(v18 + 16) = v20;
      }

      *(v18 + 24) = 0;
      *(v18 + 32) = 0;
LABEL_5:
      *(v17 + 52) = 0;
      *(v17 + 12) = 0;
      v10 = *(a2 + 64);
LABEL_6:
      ++v16;
      v17 += 120;
    }

    while (v16 < v10);
  }

  return result;
}

uint64_t sub_181979DC8(uint64_t a1, uint64_t a2, unsigned int a3, int a4, void *a5)
{
  v6 = *(a1 + 16);
  v7 = *(a2 + 96);
  v8 = *(v7 + 54);
  v9 = v8;
  v71 = v7;
  v72 = *(v7 + 24);
  v10 = *(v7 + 32);
  v11 = *(a1 + 60);
  v12 = (v11 + 1);
  v69 = v72 + a4;
  *(a1 + 60) = v11 + v72 + a4;
  v13 = *a1;
  v14 = *(v10 + 32);
  if (v14 || (v14 = sub_181978718(*a1, v10)) != 0)
  {
    v18 = strlen(v14);
    v19 = v18;
    if (v13)
    {
      v20 = sub_181929E8C(v13, v18 + 1, 354097263);
      if (v20)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v20 = sub_181902484(v18 + 1, 354097263);
      if (v20)
      {
LABEL_5:
        v70 = v20;
        memcpy(v20, v14, v19 + 1);
        if (!v8)
        {
          goto LABEL_35;
        }

        goto LABEL_9;
      }
    }
  }

  v70 = 0;
  if (!v8)
  {
    goto LABEL_35;
  }

LABEL_9:
  v21 = *(a2 + 8);
  v22 = (v11 + v8);
  v23 = *(v6 + 144);
  if (*(v6 + 148) <= v23)
  {
    sub_18194C8AC(v6, 75, 0, (v11 + 1), v22, v15, v16, v17);
  }

  else
  {
    *(v6 + 144) = v23 + 1;
    v24 = *(v6 + 136) + 40 * v23;
    *v24 = 75;
    *(v24 + 8) = v12;
    *(v24 + 12) = v22;
    *(v24 + 24) = 0;
    *(v24 + 32) = 0;
    *(v24 + 16) = 0;
  }

  if (a3)
  {
    v25 = 32;
  }

  else
  {
    v25 = 36;
  }

  v26 = *(v6 + 144);
  if (*(v6 + 148) <= v26)
  {
    sub_18194C8AC(v6, v25, v21, 0, 0, v15, v16, v17);
  }

  else
  {
    *(v6 + 144) = v26 + 1;
    v27 = *(v6 + 136) + 40 * v26;
    *v27 = v25;
    *(v27 + 2) = 0;
    *(v27 + 4) = v21;
    *(v27 + 1) = 0;
    *(v27 + 8) = 0u;
    *(v27 + 24) = 0u;
  }

  v28 = *(v6 + 144);
  if (*(v6 + 148) <= v28)
  {
    v28 = sub_18194C8AC(v6, 9, 0, 0, 0, v15, v16, v17);
  }

  else
  {
    *(v6 + 144) = v28 + 1;
    v29 = *(v6 + 136) + 40 * v28;
    *v29 = 9;
    *(v29 + 1) = 0u;
    *(v29 + 17) = 0u;
    *(v29 + 32) = 0;
  }

  if (a3)
  {
    v30 = 21;
  }

  else
  {
    v30 = 24;
  }

  v31 = *(v6 + 144);
  if (*(v6 + 148) <= v31)
  {
    v31 = sub_18194CAFC(v6, v30, v21, 0, v12, v8, v16, v17);
  }

  else
  {
    *(v6 + 144) = v31 + 1;
    v32 = *(v6 + 136) + 40 * v31;
    *v32 = v30;
    *(v32 + 2) = 0;
    *(v32 + 4) = v21;
    *(v32 + 8) = 0;
    *(v32 + 12) = v12;
    *(v32 + 16) = v8;
    *(v32 + 1) = -3;
    *(v32 + 24) = 0;
    *(v32 + 32) = 0;
  }

  *(a2 + 20) = v31;
  if (*(*v6 + 103))
  {
    v33 = &byte_1EA831A58;
  }

  else
  {
    v33 = (*(v6 + 136) + 40 * v28);
  }

  v34 = 0;
  *(v33 + 2) = *(v6 + 144);
  v35 = (v11 + 1);
  do
  {
    v37 = *(v6 + 144);
    if (*(v6 + 148) > v37)
    {
      *(v6 + 144) = v37 + 1;
      v36 = *(v6 + 136) + 40 * v37;
      *v36 = 94;
      *(v36 + 4) = v21;
      *(v36 + 8) = v34;
      *(v36 + 12) = v35;
      *(v36 + 24) = 0;
      *(v36 + 32) = 0;
      *(v36 + 16) = 0;
    }

    else
    {
      sub_18194C8AC(v6, 94, v21, v34, v35, v15, v16, v17);
    }

    v34 = (v34 + 1);
    v35 = (v35 + 1);
    --v9;
  }

  while (v9);
LABEL_35:
  if (v8 < v72)
  {
    while (1)
    {
      v38 = *(*(v71 + 64) + 8 * v8);
      v39 = sub_1818D0C40(a1, v38, a2, v8, a3, (v12 + v8), v16, v17);
      if (v39 == v12 + v8)
      {
        goto LABEL_50;
      }

      if (v69 == 1)
      {
        break;
      }

      v43 = *(v6 + 144);
      if (*(v6 + 148) <= v43)
      {
        sub_18194C8AC(v6, 80, v39, (v12 + v8), 0, v40, v16, v17);
        v42 = *(v38 + 20);
        if (v42)
        {
LABEL_82:
          if (!v70 || (*(*v38 + 4) & 0x1000) == 0)
          {
            goto LABEL_39;
          }

          v55 = &v70[v8];
          goto LABEL_38;
        }
      }

      else
      {
        *(v6 + 144) = v43 + 1;
        v44 = *(v6 + 136) + 40 * v43;
        *v44 = 80;
        *(v44 + 4) = v39;
        *(v44 + 8) = v12 + v8;
        *(v44 + 12) = 0;
        *(v44 + 28) = 0;
        *(v44 + 20) = 0;
        *(v44 + 36) = 0;
        v42 = *(v38 + 20);
        if (v42)
        {
          goto LABEL_82;
        }
      }

LABEL_51:
      if ((v42 & 0x100) != 0)
      {
        goto LABEL_39;
      }

      v45 = *(*v38 + 24);
      if ((*(v38 + 18) & 0x800) == 0)
      {
        for (i = *(*v38 + 24); ; i = *(i + 2))
        {
          v47 = *i;
          if ((v47 - 173) >= 2)
          {
            break;
          }
        }

        if (v47 == 176)
        {
          v47 = i[2];
        }

        if ((v47 - 154) >= 3 && v47 != 118)
        {
          if (v47 != 168 || (i[6] & 0x20) != 0 || (v48 = *(i + 9)) == 0 || (v49 = *(i + 12), (v49 & 0x80000000) == 0) && (v50 = *(v48 + 8)) != 0 && v49 < *(v48 + 54) && (*(v50 + 16 * v49 + 8) & 0xF) == 0)
          {
            v51 = (v12 + v8);
            v52 = *(a2 + 12);
            v53 = *(v6 + 144);
            if (*(v6 + 148) <= v53)
            {
              sub_18194C8AC(v6, 51, v51, v52, 0, v40, v16, v17);
              if (*(a1 + 52))
              {
                goto LABEL_39;
              }

              goto LABEL_70;
            }

            *(v6 + 144) = v53 + 1;
            v54 = *(v6 + 136) + 40 * v53;
            *v54 = 51;
            *(v54 + 4) = v51;
            *(v54 + 8) = v52;
            *(v54 + 12) = 0;
            *(v54 + 28) = 0;
            *(v54 + 20) = 0;
            *(v54 + 36) = 0;
          }
        }
      }

      if (*(a1 + 52))
      {
        goto LABEL_39;
      }

LABEL_70:
      v55 = &v70[v8];
      v56 = v70[v8];
      v57 = sub_1818D0A24(v45);
      if (v56 < 65 || v57 < 65)
      {
        if (v57 >= 65)
        {
          v60 = v57;
        }

        else
        {
          v60 = v56;
        }

        if ((v60 & 0xFFFFFFBF) == 1 || v56 == 65)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v59 = v56 < 0x43 && v57 < 0x43;
        if (v56 == 65 || v59)
        {
          goto LABEL_38;
        }
      }

      v61 = 0;
      while (1)
      {
        v62 = *v45;
        if ((v62 - 173) >= 2)
        {
          break;
        }

        if (v62 == 174)
        {
          v61 = 1;
        }

        v45 = *(v45 + 2);
      }

      if (v62 == 176)
      {
        v62 = v45[2];
      }

      if (v62 <= 154)
      {
        if (v62 == 118)
        {
          if (v56 != 66 || v61 != 0)
          {
            goto LABEL_39;
          }
        }

        else
        {
          if (v62 != 154)
          {
            goto LABEL_39;
          }

LABEL_104:
          if (v56 <= 66)
          {
            goto LABEL_39;
          }
        }

        goto LABEL_38;
      }

      if (v62 != 155)
      {
        if (v62 != 168)
        {
          if (v62 != 156)
          {
            goto LABEL_39;
          }

          goto LABEL_104;
        }

        if (v56 < 67 || *(v45 + 12) >= 0)
        {
          goto LABEL_39;
        }

LABEL_38:
        *v55 = 65;
        goto LABEL_39;
      }

      if (!v61)
      {
        goto LABEL_38;
      }

LABEL_39:
      if (++v8 == v72)
      {
        goto LABEL_119;
      }
    }

    if (v12)
    {
      v41 = *(a1 + 31);
      if (v41 <= 7)
      {
        *(a1 + 31) = v41 + 1;
        *(a1 + 184 + 4 * v41) = v12;
        v12 = v39;
        v42 = *(v38 + 20);
        if (v42)
        {
          goto LABEL_82;
        }

        goto LABEL_51;
      }
    }

    v12 = v39;
LABEL_50:
    v42 = *(v38 + 20);
    if (v42)
    {
      goto LABEL_82;
    }

    goto LABEL_51;
  }

LABEL_119:
  *a5 = v70;
  return v12;
}

uint64_t sub_18197A444(uint64_t result, int a2, uint64_t a3)
{
  if (a2 >= 1)
  {
    v4 = result;
    v5 = 0;
    v6 = a2;
    do
    {
      v7 = *v4;
      v8 = v7;
      if (v7 == 176)
      {
        v8 = v4[2];
      }

      v9 = v4;
      if (v8 != 177)
      {
        v10 = v4;
        if (v8 != 139)
        {
          goto LABEL_15;
        }

        v9 = *(v4 + 4);
      }

      v10 = v4;
      if (*v9[4] >= 2)
      {
        if (v7 == 139 || (v11 = v4, v4[2] == 139))
        {
          v11 = *(v4 + 4);
        }

        v10 = *(*(v11 + 4) + 24 * v5 + 8);
      }

LABEL_15:
      v12 = *(a3 + v5);
      result = sub_1818D0A24(v10);
      if (v12 < 65 || result < 65)
      {
        if (result >= 65)
        {
          v15 = result;
        }

        else
        {
          v15 = v12;
        }

        if ((v15 & 0xFFFFFFBF) == 1 || v12 == 65)
        {
          goto LABEL_3;
        }
      }

      else
      {
        v14 = v12 < 0x43 && result < 0x43;
        if (v12 == 65 || v14)
        {
          goto LABEL_3;
        }
      }

      v16 = 0;
      while (1)
      {
        v17 = *v10;
        if ((v17 - 173) >= 2)
        {
          break;
        }

        if (v17 == 174)
        {
          v16 = 1;
        }

        v10 = *(v10 + 2);
      }

      if (v17 == 176)
      {
        v17 = v10[2];
      }

      if (v17 <= 154)
      {
        if (v17 != 118)
        {
          if (v17 != 154)
          {
            goto LABEL_4;
          }

          goto LABEL_45;
        }

        if (v12 != 66 || v16 != 0)
        {
          goto LABEL_4;
        }
      }

      else
      {
        switch(v17)
        {
          case 155:
            if (v16)
            {
              goto LABEL_4;
            }

            break;
          case 168:
            if (v12 < 67 || *(v10 + 12) >= 0)
            {
              goto LABEL_4;
            }

            break;
          case 156:
LABEL_45:
            if (v12 <= 66)
            {
              goto LABEL_4;
            }

            break;
          default:
            goto LABEL_4;
        }
      }

LABEL_3:
      *(a3 + v5) = 65;
LABEL_4:
      ++v5;
    }

    while (v5 != v6);
  }

  return result;
}

uint64_t *sub_18197A62C(uint64_t *result, unint64_t a2, int a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a4)
  {
    LODWORD(v8) = a3;
    v9 = result[2];
    if (a3 >= 1)
    {
      v10 = &a4[a3];
      v11 = (a3 + a2);
      while (*a4 <= 65)
      {
        a2 = (a2 + 1);
        ++a4;
        v12 = __OFSUB__(v8, 1);
        LODWORD(v8) = v8 - 1;
        if ((v8 < 0) ^ v12 | (v8 == 0))
        {
          LODWORD(v8) = 0;
          goto LABEL_9;
        }
      }
    }

    v10 = a4;
    v11 = a2;
LABEL_9:
    v8 = v8;
    while (1)
    {
      v13 = v8;
      if (v8 < 2)
      {
        break;
      }

      --v8;
      if (v10[v13 - 1] >= 66)
      {
        goto LABEL_14;
      }
    }

    if (v8 != 1)
    {
      return result;
    }

LABEL_14:
    v14 = *(v9 + 144);
    if (*(v9 + 148) <= v14)
    {
      v14 = sub_18194C8AC(v9, 96, v11, v13, 0, a6, a7, a8);
    }

    else
    {
      *(v9 + 144) = v14 + 1;
      v15 = *(v9 + 136) + 40 * v14;
      *v15 = 96;
      *(v15 + 4) = v11;
      *(v15 + 8) = v13;
      *(v15 + 12) = 0;
      *(v15 + 28) = 0;
      *(v15 + 20) = 0;
      *(v15 + 36) = 0;
    }

    if (*(*v9 + 103))
    {
      v16 = *v9;

      return sub_1818A3B68(v16, v13, v10);
    }

    else
    {
      if (v14 < 0)
      {
        v14 = *(v9 + 144) - 1;
      }

      v17 = *(v9 + 136) + 40 * v14;

      return sub_18194CB90(v9, v17, v10, v13);
    }
  }

  return result;
}

uint64_t *sub_18197A798(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  v10 = *result;
  v11 = *(*result + 16);
  *(result + 68) |= 1u;
  v12 = *(v11 + 144);
  if (*(v11 + 148) <= v12)
  {
    result = sub_18194C8AC(v11, 141, a4, 0, a3, a6, a7, a8);
  }

  else
  {
    *(v11 + 144) = v12 + 1;
    v13 = *(v11 + 136) + 40 * v12;
    *v13 = 141;
    *(v13 + 4) = a4;
    *(v13 + 8) = 0;
    *(v13 + 12) = a3;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0;
    *(v13 + 16) = 0;
  }

  if ((*(v9 + 30) & 0x1020) != 0)
  {
    v14 = v10[19];
    if (!v14)
    {
      v14 = v10;
    }

    if (!*(v14 + 28))
    {
      v15 = *(a2 + 24);
      v16 = *v10;
      v17 = 4 * *(v15 + 54);
      if (v16)
      {
        result = sub_181929E8C(v16, v17 + 4, 0x100004052888210);
        v18 = result;
        if (!result)
        {
          return result;
        }
      }

      else
      {
        result = sub_181902484(v17 + 4, 0x100004052888210);
        v18 = result;
        if (!result)
        {
          return result;
        }
      }

      bzero(v18, v17 + 4);
      *v18 = *(v15 + 54);
      v19 = *(a2 + 96);
      if (v19 < 2)
      {
LABEL_42:
        result = *v11;
        if (*(*v11 + 103))
        {

          return sub_181939EC8(result, v18);
        }

        else
        {
          v46 = *(v11 + 136) + 40 * *(v11 + 144);
          if (*(v46 - 39))
          {

            return sub_18194CB90(v11, v46 - 40, v18, 0xFFFFFFF2);
          }

          else
          {
            *(v46 - 24) = v18;
            *(v46 - 39) = -14;
          }
        }

        return result;
      }

      v20 = 0;
      v21 = (v19 - 1);
      v22 = *(a2 + 8);
      v23.i64[0] = 0x1000100010001;
      v23.i64[1] = 0x1000100010001;
      while (1)
      {
        v24 = *(v22 + 2 * v20);
        v25 = *(v22 + 2 * v20);
        v26 = *(v22 + 2 * v20);
        if ((v24 & 0x8000000000000000) == 0)
        {
          v26 = *(v22 + 2 * v20);
          if ((*(v15 + 48) & 0x20) != 0)
          {
            break;
          }
        }

LABEL_15:
        if ((v25 & 0x8000) != 0)
        {
          if (++v20 == v21)
          {
            goto LABEL_42;
          }
        }

        else
        {
          *(v18 + v26 + 1) = ++v20;
          if (v20 == v21)
          {
            goto LABEL_42;
          }
        }
      }

      v27 = *(v15 + 8);
      if (!*(v22 + 2 * v20))
      {
        v24 = 0;
        v26 = 0;
        goto LABEL_40;
      }

      if (v25 < 5)
      {
        v28 = 0;
        v26 = 0;
LABEL_38:
        v43 = v24 - v28;
        v44 = (v27 + 16 * v28 + 14);
        do
        {
          v45 = *v44;
          v44 += 8;
          v26 += ((v45 >> 5) & 1) == 0;
          --v43;
        }

        while (v43);
LABEL_40:
        if ((*(v27 + 16 * v24 + 14) & 0x20) != 0)
        {
          v26 = v25 - v26 + *(v15 + 56);
        }

        goto LABEL_15;
      }

      if (v25 >= 0x11)
      {
        if ((v24 & 0xF) != 0)
        {
          v29 = v24 & 0xF;
        }

        else
        {
          v29 = 16;
        }

        v28 = v24 - v29;
        v30 = (v27 + 142);
        v31 = 0uLL;
        v32 = *(v22 + 2 * v20);
        v33 = 0uLL;
        do
        {
          v34.i16[0] = *(v30 - 64);
          v34.i16[1] = *(v30 - 56);
          v34.i16[2] = *(v30 - 48);
          v34.i16[3] = *(v30 - 40);
          v34.i16[4] = *(v30 - 32);
          v34.i16[5] = *(v30 - 24);
          v34.i16[6] = *(v30 - 16);
          v34.i16[7] = *(v30 - 8);
          v35.i16[0] = *v30;
          v35.i16[1] = v30[8];
          v35.i16[2] = v30[16];
          v35.i16[3] = v30[24];
          v35.i16[4] = v30[32];
          v35.i16[5] = v30[40];
          v35.i16[6] = v30[48];
          v35.i16[7] = v30[56];
          v31 = vaddq_s16(vbicq_s8(v23, vshrq_n_u16(v34, 5uLL)), v31);
          v33 = vaddq_s16(vbicq_s8(v23, vshrq_n_u16(v35, 5uLL)), v33);
          v32 -= 16;
          v30 += 128;
        }

        while (v29 != v32);
        v26 = vaddvq_s16(vaddq_s16(v33, v31));
        if (v29 < 5)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v26 = 0;
        v28 = 0;
      }

      v36 = v24 & 3;
      if ((v24 & 3) == 0)
      {
        v36 = 4;
      }

      v37 = v27 + 16 * v28;
      v38 = v36 + v28;
      v28 = v24 - v36;
      v39 = v26;
      v40 = (v37 + 46);
      v41 = v38 - v24;
      do
      {
        v42.i16[0] = *(v40 - 16);
        v42.i16[1] = *(v40 - 8);
        v42.i16[2] = *v40;
        v42.i16[3] = v40[8];
        v39 = vadd_s16(vbic_s8(0x1000100010001, vshr_n_u16(v42, 5uLL)), v39);
        v40 += 32;
        v41 += 4;
      }

      while (v41);
      v26 = vaddv_s16(v39);
      goto LABEL_38;
    }
  }

  return result;
}

uint64_t sub_18197AB8C(uint64_t result, uint64_t a2, uint64_t a3)
{
  for (i = result; *i == 44; i = *(i + 24))
  {
    result = sub_18197AB8C(*(i + 16), a2, a3);
  }

  if (*(a3 + 20) >= 1)
  {
    v6 = 0;
    v7 = (*(a3 + 32) + 18);
    do
    {
      if ((*v7 & 4) == 0)
      {
        result = sub_181959260(0, *(v7 - 9), i, a2);
        if (!result)
        {
          *v7 |= 4u;
        }
      }

      ++v6;
      v7 += 28;
    }

    while (v6 < *(a3 + 20));
  }

  return result;
}

uint64_t sub_18197AC50(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 98))
  {
    if (!*(a1 + 54))
    {
      v2 = *(a1 + 24);
      if (v2 == *(v1 + 94))
      {
        if (!*(a1 + 24))
        {
          return 1;
        }

        for (i = *(a1 + 64); (*(*i + 20) & 0x180) == 0; i += 8)
        {
          if (!--v2)
          {
            return 1;
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_18197ACA8(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, _BOOL4 a5, unsigned int a6)
{
  v6 = a4;
  v7 = a3;
  v8 = *(a3 + 96);
  if ((*(v8 + 49) & 4) == 0)
  {
    v9 = *(v8 + 32);
    if (v9)
    {
      if (*(*(v9 + 56) + a4))
      {
        a5 = !a5;
      }
    }
  }

  v10 = *a2;
  if (a4 < 1)
  {
LABEL_13:
    v14 = *(v8 + 52);
    v137 = a1[2];
    v127 = a5;
    if (v14 <= a4)
    {
      v17 = 0;
    }

    else
    {
      v15 = *(v8 + 64);
      v16 = v14 - a4;
      if (v16 > 1)
      {
        v19 = 0;
        v20 = 0;
        v18 = (v16 & 0xFFFFFFFFFFFFFFFELL) + a4;
        v21 = (v15 + 8 * a4 + 8);
        v22 = v16 & 0xFFFFFFFFFFFFFFFELL;
        do
        {
          if (**(v21 - 1) == v10)
          {
            ++v19;
          }

          if (**v21 == v10)
          {
            ++v20;
          }

          v21 += 2;
          v22 -= 2;
        }

        while (v22);
        v17 = v20 + v19;
        if (v16 == (v16 & 0xFFFFFFFFFFFFFFFELL))
        {
          goto LABEL_28;
        }
      }

      else
      {
        v17 = 0;
        v18 = a4;
      }

      v23 = (v15 + 8 * v18);
      v24 = v14 - v18;
      do
      {
        v25 = *v23++;
        if (*v25 == v10)
        {
          ++v17;
        }

        --v24;
      }

      while (v24);
    }

LABEL_28:
    v141 = 0;
    if ((*(v10 + 5) & 0x10) == 0 || **(*(v10 + 32) + 32) == 1)
    {
      v29 = sub_1818E0B5C(a1, v10, 4, 0, 0, &v141);
      v138 = 0;
      goto LABEL_31;
    }

    v69 = *a1;
    v70 = sub_1818C7FEC(*a1, v10, 0, 0);
    v71 = v70;
    v129 = v69;
    if (*(v69 + 103))
    {
      goto LABEL_86;
    }

    v72 = *(v70 + 32);
    if (!v72)
    {
      goto LABEL_165;
    }

    v124 = v6;
    v125 = v70;
    v131 = v7;
    while (1)
    {
      if (v72 == *(v71 + 32))
      {
        v73 = *(*(v71 + 16) + 32);
      }

      else
      {
        v73 = 0;
      }

      v135 = v72;
      v139 = v73;
      v132 = *(v72 + 32);
      if (*(v8 + 52) > v6)
      {
        v74 = 0;
        v75 = 0;
        v76 = *(v72 + 32) + 8;
        v133 = v73 + 1;
        v77 = v124;
        while (1)
        {
          v79 = *(*(v8 + 64) + 8 * v77);
          if (*v79 != v10)
          {
            goto LABEL_99;
          }

          v80 = *(v79 + 36);
          v81 = (v76 + 24 * (v80 - 1));
          v82 = *v81;
          if (!*v81)
          {
            goto LABEL_99;
          }

          if (!v75)
          {
            break;
          }

          v83 = *v75;
          if (v75[1] <= *v75)
          {
            v85 = sub_18197FE14(*a1, v75, v82);
LABEL_107:
            v75 = v85;
            *v81 = 0;
            v73 = v139;
            if (!v85)
            {
              goto LABEL_109;
            }

            goto LABEL_108;
          }

          *v75 = v83 + 1;
          v84 = &v75[6 * v83];
          *(v84 + 2) = 0;
          *(v84 + 3) = 0;
          *(v84 + 1) = v82;
          *v81 = 0;
LABEL_108:
          LOWORD(v75[6 * *v75 + 1]) = v80;
LABEL_109:
          if (!v73)
          {
            goto LABEL_99;
          }

          v86 = &v133[3 * v80 - 3];
          v87 = *v86;
          if (v74)
          {
            v88 = *v74;
            if (v74[1] > *v74)
            {
              *v74 = v88 + 1;
              v89 = &v74[6 * v88];
              v89[2] = 0;
              v89[3] = 0;
              v89[1] = v87;
              goto LABEL_98;
            }

            v78 = sub_18197FE14(*a1, v74, v87);
          }

          else
          {
            v78 = sub_18197FD9C(*a1, *v86);
          }

          v73 = v139;
          v74 = v78;
LABEL_98:
          *v86 = 0;
LABEL_99:
          if (++v77 >= *(v8 + 52))
          {
            goto LABEL_115;
          }
        }

        v85 = sub_18197FD9C(*a1, *v81);
        goto LABEL_107;
      }

      v75 = 0;
      v74 = 0;
LABEL_115:
      v71 = v125;
      if (v132)
      {
        sub_18194E5B8(v129, v132);
        v73 = v139;
      }

      if (v73)
      {
        sub_18194E5B8(v129, v73);
        *(*(v125 + 16) + 32) = v74;
      }

      *(v135 + 32) = v75;
      v90 = *(a1 + 31) + 1;
      *(a1 + 31) = v90;
      *(v135 + 16) = v90;
      if (v74 && *v74 == 1)
      {
        v91 = *(v74 + 1);
        *(v74 + 1) = 0;
        v92 = *(v125 + 16);
        if (v92)
        {
          sub_1819439E0(v129, v92);
        }

        *(v125 + 16) = v91;
      }

      if (!v75)
      {
        goto LABEL_90;
      }

      v93 = *(v135 + 72);
      if (v93)
      {
        v94 = *v93;
        if (v94 >= 1)
        {
          v95 = 0;
          v96 = v93 + 2;
          do
          {
            v97 = &v96[6 * v95];
            v100 = *(v97 + 10);
            v98 = v97 + 5;
            v99 = v100;
            if (v100)
            {
              v101 = *v75;
              if (v101 < 1)
              {
                goto LABEL_128;
              }

              v102 = 0;
              v103 = 7;
              while (LOWORD(v75[v103]) != v99)
              {
                ++v102;
                v103 += 6;
                if (v101 == v102)
                {
                  goto LABEL_128;
                }
              }

              *v98 = v102 + 1;
              if (v102 >= *v75)
              {
LABEL_128:
                *v98 = 0;
              }
            }

            ++v95;
          }

          while (v95 != v94);
        }
      }

      v104 = *(v135 + 56);
      if (v104)
      {
        v105 = *v104;
        if (v105 >= 1)
        {
          v106 = 0;
          v107 = v104 + 2;
          do
          {
            v108 = &v107[6 * v106];
            v111 = *(v108 + 10);
            v109 = v108 + 5;
            v110 = v111;
            if (v111)
            {
              v112 = *v75;
              if (v112 < 1)
              {
                goto LABEL_142;
              }

              v113 = 0;
              v114 = 7;
              while (LOWORD(v75[v114]) != v110)
              {
                ++v113;
                v114 += 6;
                if (v112 == v113)
                {
                  goto LABEL_142;
                }
              }

              *v109 = v113 + 1;
              if (v113 >= *v75)
              {
LABEL_142:
                *v109 = 0;
              }
            }

            ++v106;
          }

          while (v106 != v105);
        }
      }

      v115 = *v75;
      if (v115 < 1)
      {
        goto LABEL_90;
      }

      if (v115 == 1)
      {
        v116 = 0;
      }

      else
      {
        v116 = v115 & 0x7FFFFFFE;
        v117 = v75 + 13;
        v118 = v116;
        do
        {
          *(v117 - 12) = 0;
          *v117 = 0;
          v117 += 24;
          v118 -= 2;
        }

        while (v118);
        if (v116 == v115)
        {
          goto LABEL_90;
        }
      }

      v119 = v115 - v116;
      v120 = &v75[6 * v116 + 7];
      do
      {
        *v120 = 0;
        v120 += 6;
        --v119;
      }

      while (v119);
LABEL_90:
      v72 = *(v135 + 80);
      v6 = a4;
      v7 = v131;
      if (!v72)
      {
        if (*(v129 + 103))
        {
LABEL_86:
          v29 = 5;
          v138 = 0;
          if (v71)
          {
            goto LABEL_168;
          }

          goto LABEL_31;
        }

LABEL_165:
        v121 = sub_181929E8C(v129, 4 * v17, 0x100004052888210);
        v122 = v121;
        v123 = v121;
        if (v121)
        {
          bzero(v121, 4 * v17);
          v122 = v123;
        }

        v29 = sub_1818E0B5C(a1, v71, 4, 0, v122, &v141);
        v138 = v123;
        if (v71)
        {
LABEL_168:
          sub_1819439E0(v129, v71);
        }

LABEL_31:
        if (v29 == 4)
        {
          v30 = !v127;
        }

        else
        {
          v30 = v127;
        }

        if (v30)
        {
          v31 = 32;
        }

        else
        {
          v31 = 36;
        }

        v32 = v141;
        v33 = *(v137 + 144);
        if (*(v137 + 148) <= v33)
        {
          sub_18194C8AC(v137, v31, v141, 0, 0, v26, v27, v28);
        }

        else
        {
          *(v137 + 144) = v33 + 1;
          v34 = *(v137 + 136) + 40 * v33;
          *v34 = v31;
          *(v34 + 2) = 0;
          *(v34 + 4) = v32;
          *(v34 + 1) = 0;
          *(v34 + 8) = 0u;
          *(v34 + 24) = 0u;
        }

        v35 = *(v8 + 48);
        *(v8 + 48) = v35 | 0x800;
        if (!*(v7 + 80))
        {
          v36 = *(a1 + 18) - 1;
          *(a1 + 18) = v36;
          *(v7 + 16) = v36;
        }

        if (v6 >= 1 && (v35 & 0x100000) == 0)
        {
          *(v8 + 48) = v35 | 0x40800;
        }

        v37 = *(v7 + 80);
        v38 = v37 + v17;
        *(v7 + 80) = v38;
        v39 = a2[1];
        v40 = *v39;
        v41 = *(v7 + 88);
        v42 = 20 * v38;
        result = sub_181929E8C(***v39, 20 * v38 + 16, 0x1020040EDED9539);
        if (result)
        {
          v130 = v7;
          *result = v40[11];
          *(result + 8) = v42;
          v40[11] = result;
          v46 = result + 16;
          if (v41)
          {
            result = memcpy((result + 16), v41, *(v41 - 1));
          }

          *(v7 + 88) = v46;
          v47 = *(v8 + 52);
          v48 = v137;
          v49 = a6;
          if (v47 > a4)
          {
            v50 = 0;
            v51 = 0;
            v52 = v46 + 20 * v37;
            if (v30)
            {
              v53 = 38;
            }

            else
            {
              v53 = 39;
            }

            v134 = v53;
            v54 = a4;
            while (2)
            {
              if (**(*(v8 + 64) + 8 * v54) != v10)
              {
                goto LABEL_55;
              }

              if (v29 == 1)
              {
                result = *(v48 + 144);
                if (*(v48 + 148) > result)
                {
                  *(v48 + 144) = result + 1;
                  v55 = *(v48 + 136) + 40 * result;
                  *v55 = 135;
                  *(v55 + 4) = v32;
                  *(v55 + 8) = v49;
                  *(v55 + 12) = 0;
                  *(v55 + 28) = 0;
                  *(v55 + 20) = 0;
                  *(v55 + 36) = 0;
                  goto LABEL_68;
                }

                v57 = v48;
                v58 = -121;
                v59 = v32;
                v56 = v49;
                v60 = 0;
LABEL_67:
                result = sub_18194C8AC(v57, v58, v59, v56, v60, v43, v44, v45);
                v48 = v137;
              }

              else
              {
                if (v138)
                {
                  v56 = *(v138 + v51++);
                }

                else
                {
                  v56 = 0;
                }

                result = *(v48 + 144);
                if (*(v48 + 148) <= result)
                {
                  v57 = v48;
                  v58 = 94;
                  v59 = v32;
                  v60 = v49;
                  goto LABEL_67;
                }

                *(v48 + 144) = result + 1;
                v61 = *(v48 + 136) + 40 * result;
                *v61 = 94;
                *(v61 + 4) = v32;
                *(v61 + 8) = v56;
                *(v61 + 12) = v49;
                *(v61 + 24) = 0;
                *(v61 + 32) = 0;
                *(v61 + 16) = 0;
              }

LABEL_68:
              *(v52 + 4) = result;
              v62 = *(v48 + 144);
              if (*(v48 + 148) <= v62)
              {
                result = sub_18194C8AC(v48, 51, v49, 0, 0, v43, v44, v45);
                v48 = v137;
                if (v50)
                {
                  goto LABEL_53;
                }

LABEL_72:
                *v52 = v32;
                *(v52 + 16) = v134;
                if (a4 < 1)
                {
                  *(v52 + 12) = 0;
                }

                else
                {
                  *(v52 + 8) = a6 - a4;
                  *(v52 + 12) = a4;
                }
              }

              else
              {
                *(v48 + 144) = v62 + 1;
                v63 = *(v48 + 136) + 40 * v62;
                *v63 = 51;
                *(v63 + 4) = v49;
                *(v63 + 8) = 0u;
                *(v63 + 24) = 0u;
                if (!v50)
                {
                  goto LABEL_72;
                }

LABEL_53:
                *(v52 + 16) = -69;
              }

              v52 += 20;
              v47 = *(v8 + 52);
LABEL_55:
              ++v54;
              --v50;
              v49 = (v49 + 1);
              if (v54 >= v47)
              {
                break;
              }

              continue;
            }
          }

          if (a4 >= 1 && (*(v8 + 49) & 0x1004) == 0)
          {
            v64 = *(v130 + 8);
            v65 = *(v48 + 144);
            if (*(v48 + 148) <= v65)
            {
              result = sub_18194C8AC(v48, 125, v64, 0, a4, v43, v44, v45);
              v67 = v138;
              if (!v138)
              {
                return result;
              }
            }

            else
            {
              *(v48 + 144) = v65 + 1;
              v66 = *(v48 + 136) + 40 * v65;
              *v66 = 125;
              *(v66 + 4) = v64;
              *(v66 + 8) = 0;
              *(v66 + 12) = a4;
              *(v66 + 24) = 0;
              *(v66 + 32) = 0;
              *(v66 + 16) = 0;
              v67 = v138;
              if (!v138)
              {
                return result;
              }
            }

            goto LABEL_82;
          }
        }

        else
        {
          *(v7 + 88) = 0;
          *(v7 + 80) = 0;
        }

        v67 = v138;
        if (!v138)
        {
          return result;
        }

LABEL_82:
        v68 = *a1;

        return sub_181929C84(v68, v67);
      }
    }
  }

  v11 = *(v8 + 64);
  v12 = a4;
  while (!*v11 || **v11 != v10)
  {
    ++v11;
    if (!--v12)
    {
      goto LABEL_13;
    }
  }

  return sub_1818E1F5C(a3, a2);
}

void *sub_18197B6EC(void *result)
{
  v1 = *(result + 5);
  if (v1 >= 1)
  {
    v2 = ***result;
    v3 = result[4] + 18;
    v4 = 56 * v1;
    do
    {
      v5 = *v3;
      if (*v3)
      {
        v6 = *(v3 - 18);
        if (v6)
        {
          result = sub_1819439E0(v2, v6);
          v5 = *v3;
        }
      }

      if ((v5 & 0x30) != 0)
      {
        v7 = *(v3 + 14);
        result = sub_18197B6EC(v7);
        if (v7)
        {
          result = sub_181929C84(v2, v7);
        }
      }

      v3 += 56;
      v4 -= 56;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_18197B790(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  result = sub_1818E7DFC(a1, a2, a3, a4, a5, a6, a7, a8);
  v15 = result;
  if (*(a1 + 31))
  {
    v16 = *(a1 + 31) - 1;
    *(a1 + 31) = v16;
    v17 = *(a1 + 4 * v16 + 184);
  }

  else
  {
    v17 = (*(a1 + 60) + 1);
    *(a1 + 60) = v17;
  }

  v18 = *(result + 144);
  if (*(result + 148) <= v18)
  {
    result = sub_18194C8AC(result, 71, 0, v17, 0, v12, v13, v14);
    if (v8 < 3)
    {
LABEL_6:
      v20 = *(v15 + 144);
      v21 = (v20 + 2);
      if (*(v15 + 148) <= v20)
      {
        result = sub_18194C8AC(v15, 13, a2, v21, 0, v12, v13, v14);
      }

      else
      {
        *(v15 + 144) = v20 + 1;
        v22 = *(v15 + 136) + 40 * v20;
        *v22 = 13;
        *(v22 + 4) = a2;
        *(v22 + 8) = v21;
        *(v22 + 12) = 0;
        *(v22 + 28) = 0;
        *(v22 + 20) = 0;
        *(v22 + 36) = 0;
      }

      goto LABEL_27;
    }
  }

  else
  {
    *(result + 144) = v18 + 1;
    v19 = *(result + 136) + 40 * v18;
    *v19 = 71;
    *(v19 + 8) = v17;
    *(v19 + 12) = 0;
    *(v19 + 28) = 0;
    *(v19 + 20) = 0;
    *(v19 + 36) = 0;
    if (v8 < 3)
    {
      goto LABEL_6;
    }
  }

  if (*(a1 + 31))
  {
    v23 = *(a1 + 31) - 1;
    *(a1 + 31) = v23;
    v24 = *(a1 + 4 * v23 + 184);
  }

  else
  {
    v24 = (*(a1 + 60) + 1);
    *(a1 + 60) = v24;
  }

  result = *(v15 + 144);
  if (*(v15 + 148) <= result)
  {
    result = sub_18194C8AC(v15, 118, 0, v24, 0, v12, v13, v14);
  }

  else
  {
    *(v15 + 144) = result + 1;
    v25 = *(v15 + 136) + 40 * result;
    *v25 = 118;
    *(v25 + 8) = v24;
    *(v25 + 12) = 0;
    *(v25 + 28) = 0;
    *(v25 + 20) = 0;
    *(v25 + 36) = 0;
  }

  if (!*(*v15 + 103))
  {
    if ((result & 0x80000000) != 0)
    {
      result = (*(v15 + 144) - 1);
    }

    v26 = *(v15 + 136) + 40 * result;
    if (*(v26 + 1))
    {
      result = sub_18194CB90(v15, v26, &byte_181A2878D, 0xFFFFFFFF);
    }

    else
    {
      *(v26 + 16) = &byte_181A2878D;
      *(v26 + 1) = -1;
    }
  }

  v27 = *(v15 + 144);
  v28 = (v27 + 2);
  if (*(v15 + 148) <= v27)
  {
    result = sub_18194C8AC(v15, 58, v24, v28, a2, v12, v13, v14);
  }

  else
  {
    *(v15 + 144) = v27 + 1;
    v29 = *(v15 + 136) + 40 * v27;
    *v29 = 58;
    *(v29 + 4) = v24;
    *(v29 + 8) = v28;
    *(v29 + 12) = a2;
    *(v29 + 24) = 0;
    *(v29 + 32) = 0;
    *(v29 + 16) = 0;
  }

  v30 = *(v15 + 144);
  if (v30 >= 1)
  {
    *(*(v15 + 136) + 40 * v30 - 38) = 83;
  }

LABEL_27:
  v31 = *&asc_181A245E4[4 * v8 + 8];
  v32 = *(v15 + 144);
  v33 = (v32 + 2);
  if (*(v15 + 148) <= v32)
  {
    result = sub_18194C8AC(v15, v31, v17, v33, a2, v12, v13, v14);
  }

  else
  {
    *(v15 + 144) = v32 + 1;
    v34 = *(v15 + 136) + 40 * v32;
    *v34 = v31;
    *(v34 + 2) = 0;
    *(v34 + 4) = v17;
    *(v34 + 8) = v33;
    *(v34 + 12) = a2;
    *(v34 + 1) = 0;
    *(v34 + 24) = 0;
    *(v34 + 32) = 0;
    *(v34 + 16) = 0;
  }

  v35 = *(v15 + 144);
  if (v35 >= 1)
  {
    *(*(v15 + 136) + 40 * v35 - 38) = 67;
  }

  v36 = *(a1 + 152);
  if (!v36)
  {
    v36 = a1;
  }

  *(v36 + 33) = 1;
  if (*(v15 + 148) <= v35)
  {
    result = sub_18194C8AC(v15, 70, 1uLL, 2, 0, v12, v13, v14);
  }

  else
  {
    *(v15 + 144) = v35 + 1;
    v37 = *(v15 + 136) + 40 * v35;
    *v37 = 70;
    *(v37 + 4) = 0x200000001;
    *(v37 + 12) = 0;
    *(v37 + 28) = 0;
    *(v37 + 20) = 0;
    *(v37 + 36) = 0;
  }

  if (!*(*v15 + 103))
  {
    v38 = off_1E6A27B08[v8];
    v39 = *(v15 + 136) + 40 * *(v15 + 144);
    *(v39 - 39) = -1;
    *(v39 - 24) = v38;
  }

  if (v17)
  {
    v40 = *(a1 + 31);
    if (v40 <= 7)
    {
      *(a1 + 31) = v40 + 1;
      *(a1 + 4 * v40 + 184) = v17;
    }
  }

  return result;
}

void *sub_18197BB58(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  v9 = a1[1];
  result = sub_1818E7DFC(*a1, a2, a3, a4, a5, a6, a7, a8);
  if (v9)
  {
    v14 = result;
    v15 = v9;
    do
    {
      if (!*(v9 + 132) && (*(*(v15 + 80) + 5) & 0x10) != 0 && *(v15 + 33) != 91)
      {
        v25 = *(v15 + 96);
        v26 = *(v14 + 144);
        if (*(v14 + 148) <= v26)
        {
          result = sub_18194C8AC(v14, 75, 0, v25, 0, v11, v12, v13);
        }

        else
        {
          *(v14 + 144) = v26 + 1;
          v27 = *(v14 + 136) + 40 * v26;
          *v27 = 75;
          *(v27 + 8) = v25;
          *(v27 + 12) = 0;
          *(v27 + 28) = 0;
          *(v27 + 20) = 0;
          *(v27 + 36) = 0;
        }

        v38 = *(v15 + 100);
        v39 = *(v14 + 144);
        if (*(v14 + 148) <= v39)
        {
          result = sub_18194C8AC(v14, 32, v38, 0, 0, v11, v12, v13);
        }

        else
        {
          *(v14 + 144) = v39 + 1;
          v40 = *(v14 + 136) + 40 * v39;
          *v40 = 32;
          *(v40 + 4) = v38;
          *(v40 + 8) = 0u;
          *(v40 + 24) = 0u;
        }

        v42 = *(v15 + 96);
        v41 = *(v15 + 100);
        v43 = *(v14 + 144);
        if (*(v14 + 148) <= v43)
        {
          result = sub_18194C8AC(v14, 94, v41, 0, v42, v11, v12, v13);
        }

        else
        {
          *(v14 + 144) = v43 + 1;
          v44 = *(v14 + 136) + 40 * v43;
          *v44 = 94;
          *(v44 + 4) = v41;
          *(v44 + 8) = 0;
          *(v44 + 12) = v42;
          *(v44 + 24) = 0;
          *(v44 + 32) = 0;
          *(v44 + 16) = 0;
        }

        v45 = *(v14 + 144);
        v46 = &byte_1EA831A58;
        if (!*(*v14 + 103))
        {
          v46 = (*(v14 + 136) + 40 * v45 - 80);
        }

        *(v46 + 2) = v45;
        goto LABEL_4;
      }

      if (!*(v15 + 104))
      {
        v16 = *(*(v15 + 112) + 32);
        if (v16)
        {
          v17 = *v16;
          v18 = *(v15 + 92);
          if (!v8)
          {
            goto LABEL_14;
          }
        }

        else
        {
          v17 = 0;
          v18 = *(v15 + 92);
          if (!v8)
          {
LABEL_14:
            v21 = *(v15 + 96);
            v22 = *(v14 + 144);
            if (*(v14 + 148) <= v22)
            {
              sub_18194C8AC(v14, 164, v18, v17, v21, v11, v12, v13);
            }

            else
            {
              *(v14 + 144) = v22 + 1;
              v23 = *(v14 + 136) + 40 * v22;
              *v23 = 164;
              *(v23 + 4) = v18;
              *(v23 + 8) = v17;
              *(v23 + 12) = v21;
              *(v23 + 24) = 0;
              *(v23 + 32) = 0;
              *(v23 + 16) = 0;
            }

            v36 = *(v15 + 80);
            result = *v14;
            if (*(*v14 + 103))
            {
              if ((*(v36 + 4) & 0x10) != 0)
              {
                result = sub_181939EC8(result, v36);
              }
            }

            else
            {
              v37 = *(v14 + 136) + 40 * *(v14 + 144);
              *(v37 - 39) = -7;
              *(v37 - 24) = v36;
            }

            goto LABEL_4;
          }
        }

        v19 = *(v14 + 144);
        if (*(v14 + 148) <= v19)
        {
          sub_18194C8AC(v14, 165, v18, v17, 0, v11, v12, v13);
        }

        else
        {
          *(v14 + 144) = v19 + 1;
          v20 = *(v14 + 136) + 40 * v19;
          *v20 = 165;
          *(v20 + 4) = v18;
          *(v20 + 8) = v17;
          *(v20 + 12) = 0;
          *(v20 + 28) = 0;
          *(v20 + 20) = 0;
          *(v20 + 36) = 0;
        }

        v24 = *(v15 + 80);
        result = *v14;
        if (*(*v14 + 103))
        {
          if ((*(v24 + 4) & 0x10) != 0)
          {
            result = sub_181939EC8(result, v24);
          }
        }

        else
        {
          v28 = *(v14 + 136) + 40 * *(v14 + 144);
          *(v28 - 39) = -7;
          *(v28 - 24) = v24;
        }

        v29 = *(v15 + 92);
        v30 = *(v15 + 96);
        v31 = *(v14 + 144);
        if (*(v14 + 148) <= v31)
        {
          result = sub_18194C8AC(v14, 80, v29, v30, 0, v11, v12, v13);
        }

        else
        {
          *(v14 + 144) = v31 + 1;
          v32 = *(v14 + 136) + 40 * v31;
          *v32 = 80;
          *(v32 + 4) = v29;
          *(v32 + 8) = v30;
          *(v32 + 12) = 0;
          *(v32 + 28) = 0;
          *(v32 + 20) = 0;
          *(v32 + 36) = 0;
        }

        v33 = *(v15 + 92);
        v34 = *(v14 + 144);
        if (*(v14 + 148) <= v34)
        {
          result = sub_18194C8AC(v14, 75, 0, v33, 0, v11, v12, v13);
        }

        else
        {
          *(v14 + 144) = v34 + 1;
          v35 = *(v14 + 136) + 40 * v34;
          *v35 = 75;
          *(v35 + 8) = v33;
          *(v35 + 12) = 0;
          *(v35 + 28) = 0;
          *(v35 + 20) = 0;
          *(v35 + 36) = 0;
        }
      }

LABEL_4:
      v15 = *(v15 + 64);
    }

    while (v15);
  }

  return result;
}

uint64_t sub_18197BEE0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(result + 8);
  v8 = *(result + 16);
  v10 = *result;
  v185 = result;
  if (!*(v9 + 132))
  {
    v189 = v10 + 184;
    v14 = *(result + 8);
    while (1)
    {
      v15 = *(v14 + 80);
      v16 = *(v15 + 56);
      v17 = v16 == "nth_value" || v16 == "first_value";
      if (!v17)
      {
        break;
      }

      v18 = *(v14 + 100);
      v19 = *(v10 + 72);
      *(v10 + 72) = v19 - 1;
      if (*(v10 + 31))
      {
        v20 = *(v10 + 31) - 1;
        *(v10 + 31) = v20;
        v21 = *(v189 + 4 * v20);
      }

      else
      {
        v21 = (*(v10 + 60) + 1);
        *(v10 + 60) = v21;
      }

      v27 = *(v14 + 96);
      v28 = *(v8 + 144);
      if (*(v8 + 148) <= v28)
      {
        sub_18194C8AC(v8, 75, 0, v27, 0, a6, a7, a8);
      }

      else
      {
        *(v8 + 144) = v28 + 1;
        v29 = *(v8 + 136) + 40 * v28;
        *v29 = 75;
        *(v29 + 8) = v27;
        *(v29 + 12) = 0;
        *(v29 + 28) = 0;
        *(v29 + 20) = 0;
        *(v29 + 36) = 0;
      }

      if (*(v15 + 56) == "nth_value")
      {
        v32 = *(v9 + 88);
        v33 = (*(v14 + 124) + 1);
        v34 = *(v8 + 144);
        if (*(v8 + 148) <= v34)
        {
          sub_18194C8AC(v8, 94, v32, v33, v21, a6, a7, a8);
        }

        else
        {
          *(v8 + 144) = v34 + 1;
          v35 = *(v8 + 136) + 40 * v34;
          *v35 = 94;
          *(v35 + 4) = v32;
          *(v35 + 8) = v33;
          *(v35 + 12) = v21;
          *(v35 + 24) = 0;
          *(v35 + 32) = 0;
          *(v35 + 16) = 0;
        }

        sub_18197B790(v10, v21, 2, v33, a5, a6, a7, a8);
      }

      else
      {
        v30 = *(v8 + 144);
        if (*(v8 + 148) <= v30)
        {
          sub_18194C8AC(v8, 71, 1uLL, v21, 0, a6, a7, a8);
        }

        else
        {
          *(v8 + 144) = v30 + 1;
          v31 = *(v8 + 136) + 40 * v30;
          *v31 = 0x100000047;
          *(v31 + 8) = v21;
          *(v31 + 12) = 0;
          *(v31 + 28) = 0;
          *(v31 + 20) = 0;
          *(v31 + 36) = 0;
        }
      }

      v44 = *(v14 + 104);
      v45 = *(v8 + 144);
      if (*(v8 + 148) <= v45)
      {
        sub_18194C8AC(v8, 107, v21, v44, v21, a6, a7, a8);
      }

      else
      {
        *(v8 + 144) = v45 + 1;
        v46 = *(v8 + 136) + 40 * v45;
        *v46 = 107;
        *(v46 + 4) = v21;
        *(v46 + 8) = v44;
        *(v46 + 12) = v21;
        *(v46 + 24) = 0;
        *(v46 + 32) = 0;
        *(v46 + 16) = 0;
      }

      v47 = (*(v14 + 104) + 1);
      v48 = *(v8 + 144);
      if (*(v8 + 148) <= v48)
      {
        sub_18194C8AC(v8, 55, v47, (v19 - 1), v21, a6, a7, a8);
      }

      else
      {
        *(v8 + 144) = v48 + 1;
        v49 = *(v8 + 136) + 40 * v48;
        *v49 = 55;
        *(v49 + 4) = v47;
        *(v49 + 8) = v19 - 1;
        *(v49 + 12) = v21;
        *(v49 + 24) = 0;
        *(v49 + 32) = 0;
        *(v49 + 16) = 0;
      }

      v50 = *(v8 + 144);
      if (*(v8 + 148) <= v50)
      {
        sub_18194C8AC(v8, 30, v18, 0, v21, a6, a7, a8);
      }

      else
      {
        *(v8 + 144) = v50 + 1;
        v51 = *(v8 + 136) + 40 * v50;
        *v51 = 30;
        *(v51 + 4) = v18;
        *(v51 + 8) = 0;
        *(v51 + 12) = v21;
        *(v51 + 24) = 0;
        *(v51 + 32) = 0;
        *(v51 + 16) = 0;
      }

      v52 = *(v14 + 124);
      a5 = *(v14 + 96);
      v53 = *(v8 + 144);
      if (*(v8 + 148) <= v53)
      {
        sub_18194C8AC(v8, 94, v18, v52, a5, a6, a7, a8);
      }

      else
      {
        *(v8 + 144) = v53 + 1;
        v54 = *(v8 + 136) + 40 * v53;
        *v54 = 94;
        *(v54 + 4) = v18;
        *(v54 + 8) = v52;
        *(v54 + 12) = a5;
        *(v54 + 24) = 0;
        *(v54 + 32) = 0;
        *(v54 + 16) = 0;
      }

      result = *(v8 + 24);
      v55 = -v19;
      if (*(result + 72) + *(result + 76) < 0)
      {
        result = sub_18195CB84(result, v8, v55);
        if (!v21)
        {
          goto LABEL_6;
        }
      }

      else
      {
        *(*(result + 80) + 4 * v55) = *(v8 + 144);
        if (!v21)
        {
          goto LABEL_6;
        }
      }

      v56 = *(v10 + 31);
      if (v56 >= 8)
      {
        goto LABEL_6;
      }

LABEL_5:
      *(v10 + 31) = v56 + 1;
      *(v189 + 4 * v56) = v21;
LABEL_6:
      v14 = *(v14 + 64);
      if (!v14)
      {
        goto LABEL_213;
      }
    }

    if (v16 != "lead" && v16 != "lag")
    {
      goto LABEL_6;
    }

    v23 = **(*(v14 + 112) + 32);
    v24 = *(v14 + 100);
    v187 = *(v10 + 72);
    v25 = (v187 - 1);
    *(v10 + 72) = v25;
    if (*(v10 + 31))
    {
      v26 = *(v10 + 31) - 1;
      *(v10 + 31) = v26;
      v21 = *(v189 + 4 * v26);
    }

    else
    {
      v21 = (*(v10 + 60) + 1);
      *(v10 + 60) = v21;
    }

    v36 = v9;
    v37 = *(v9 + 88);
    if (v23 > 2)
    {
      v38 = (*(v14 + 124) + 2);
      v41 = *(v14 + 96);
      v42 = *(v8 + 144);
      if (*(v8 + 148) > v42)
      {
        *(v8 + 144) = v42 + 1;
        v43 = *(v8 + 136) + 40 * v42;
        *v43 = 94;
        *(v43 + 4) = v37;
        *(v43 + 8) = v38;
        *(v43 + 12) = v41;
        *(v43 + 24) = 0;
        *(v43 + 32) = 0;
        *(v43 + 16) = 0;
        goto LABEL_60;
      }

      v57 = v8;
      v58 = 94;
      v59 = v37;
    }

    else
    {
      v38 = *(v14 + 96);
      v39 = *(v8 + 144);
      if (*(v8 + 148) > v39)
      {
        *(v8 + 144) = v39 + 1;
        v40 = *(v8 + 136) + 40 * v39;
        *v40 = 75;
        *(v40 + 8) = v38;
        *(v40 + 12) = 0;
        *(v40 + 28) = 0;
        *(v40 + 20) = 0;
        *(v40 + 36) = 0;
LABEL_60:
        v60 = *(v8 + 144);
        if (*(v8 + 148) <= v60)
        {
          sub_18194C8AC(v8, 135, v37, v21, 0, a6, a7, a8);
        }

        else
        {
          *(v8 + 144) = v60 + 1;
          v61 = *(v8 + 136) + 40 * v60;
          *v61 = 135;
          *(v61 + 4) = v37;
          *(v61 + 8) = v21;
          *(v61 + 12) = 0;
          *(v61 + 28) = 0;
          *(v61 + 20) = 0;
          *(v61 + 36) = 0;
        }

        v62 = *(v15 + 56);
        if (v23 > 1)
        {
          if (v62 == "lead")
          {
            v66 = 107;
          }

          else
          {
            v66 = 108;
          }

          if (*(v10 + 31))
          {
            v67 = *(v10 + 31) - 1;
            *(v10 + 31) = v67;
            v68 = *(v189 + 4 * v67);
          }

          else
          {
            v68 = (*(v10 + 60) + 1);
            *(v10 + 60) = v68;
          }

          v69 = (*(v14 + 124) + 1);
          v70 = *(v8 + 144);
          if (*(v8 + 148) <= v70)
          {
            sub_18194C8AC(v8, 94, v37, v69, v68, a6, a7, a8);
          }

          else
          {
            *(v8 + 144) = v70 + 1;
            v71 = *(v8 + 136) + 40 * v70;
            *v71 = 94;
            *(v71 + 4) = v37;
            *(v71 + 8) = v69;
            *(v71 + 12) = v68;
            *(v71 + 24) = 0;
            *(v71 + 32) = 0;
            *(v71 + 16) = 0;
          }

          v72 = *(v8 + 144);
          v9 = v36;
          if (*(v8 + 148) <= v72)
          {
            sub_18194C8AC(v8, v66, v68, v21, v21, a6, a7, a8);
          }

          else
          {
            *(v8 + 144) = v72 + 1;
            v73 = *(v8 + 136) + 40 * v72;
            *v73 = v66;
            *(v73 + 2) = 0;
            *(v73 + 4) = v68;
            *(v73 + 8) = v21;
            *(v73 + 12) = v21;
            *(v73 + 1) = 0;
            *(v73 + 24) = 0;
            *(v73 + 32) = 0;
            *(v73 + 16) = 0;
          }

          if (v68)
          {
            v74 = *(v10 + 31);
            if (v74 <= 7)
            {
              *(v10 + 31) = v74 + 1;
              *(v189 + 4 * v74) = v68;
            }
          }
        }

        else
        {
          if (v62 == "lead")
          {
            v63 = 1;
          }

          else
          {
            v63 = 0xFFFFFFFFLL;
          }

          v64 = *(v8 + 144);
          if (*(v8 + 148) <= v64)
          {
            sub_18194C8AC(v8, 86, v21, v63, 0, a6, a7, a8);
          }

          else
          {
            *(v8 + 144) = v64 + 1;
            v65 = *(v8 + 136) + 40 * v64;
            *v65 = 86;
            *(v65 + 4) = v21;
            *(v65 + 8) = v63;
            *(v65 + 12) = 0;
            *(v65 + 28) = 0;
            *(v65 + 20) = 0;
            *(v65 + 36) = 0;
          }

          v9 = v36;
        }

        v75 = *(v8 + 144);
        if (*(v8 + 148) <= v75)
        {
          sub_18194C8AC(v8, 30, v24, v25, v21, a6, a7, a8);
        }

        else
        {
          *(v8 + 144) = v75 + 1;
          v76 = *(v8 + 136) + 40 * v75;
          *v76 = 30;
          *(v76 + 4) = v24;
          *(v76 + 8) = v25;
          *(v76 + 12) = v21;
          *(v76 + 24) = 0;
          *(v76 + 32) = 0;
          *(v76 + 16) = 0;
        }

        v77 = *(v14 + 124);
        a5 = *(v14 + 96);
        v78 = *(v8 + 144);
        if (*(v8 + 148) <= v78)
        {
          sub_18194C8AC(v8, 94, v24, v77, a5, a6, a7, a8);
        }

        else
        {
          *(v8 + 144) = v78 + 1;
          v79 = *(v8 + 136) + 40 * v78;
          *v79 = 94;
          *(v79 + 4) = v24;
          *(v79 + 8) = v77;
          *(v79 + 12) = a5;
          *(v79 + 24) = 0;
          *(v79 + 32) = 0;
          *(v79 + 16) = 0;
        }

        result = *(v8 + 24);
        v80 = -v187;
        if (*(result + 72) + *(result + 76) < 0)
        {
          result = sub_18195CB84(result, v8, v80);
          if (!v21)
          {
            goto LABEL_6;
          }
        }

        else
        {
          *(*(result + 80) + 4 * v80) = *(v8 + 144);
          if (!v21)
          {
            goto LABEL_6;
          }
        }

        v56 = *(v10 + 31);
        if (v56 > 7)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }

      v57 = v8;
      v58 = 75;
      v59 = 0;
      v41 = 0;
    }

    sub_18194C8AC(v57, v58, v59, v38, v41, a6, a7, a8);
    goto LABEL_60;
  }

  v11 = result;
  v12 = *(v9 + 24);
  if (v12)
  {
    v13 = *v12;
  }

  else
  {
    v13 = 0;
  }

  v188 = *(v9 + 100);
  v181 = *(v10 + 72);
  v183 = v181 - 2;
  *(v10 + 72) = v181 - 2;
  v81 = *(v10 + 31);
  if (!v81)
  {
    v82 = (*(v10 + 60) + 1);
    *(v10 + 60) = v82;
LABEL_104:
    v83 = 0;
    v182 = *(v10 + 60) + 1;
    *(v10 + 60) = v182;
    if (!v13)
    {
      goto LABEL_102;
    }

LABEL_105:
    if (v13 == 1)
    {
      if (v83)
      {
        *(v10 + 31) = v83 - 1;
        v190 = *(v10 + 184 + 4 * (v83 - 1));
        if (v83 != 1)
        {
          v84 = v83 - 2;
          *(v10 + 31) = v84;
          v186 = *(v10 + 184 + 4 * v84);
          goto LABEL_117;
        }
      }

      else
      {
        v190 = *(v10 + 60) + 1;
        *(v10 + 60) = v190;
      }

      v91 = *(v10 + 60) + 1;
      v186 = v91;
    }

    else
    {
      v85 = *(v10 + 44);
      v86 = v85 - v13;
      if (v85 >= v13)
      {
        v190 = *(v10 + 48);
        *(v10 + 44) = v86;
        *(v10 + 48) = v190 + v13;
        v88 = __OFSUB__(v86, v13);
        v89 = v86 - v13;
        if (v89 < 0 == v88)
        {
          v186 = *(v10 + 48);
          *(v10 + 44) = v89;
          *(v10 + 48) = v186 + v13;
          goto LABEL_117;
        }
      }

      else
      {
        v87 = *(v10 + 60);
        v190 = v87 + 1;
        *(v10 + 60) = v87 + v13;
      }

      v90 = *(v10 + 60);
      v186 = v90 + 1;
      v91 = v90 + v13;
    }

    *(v10 + 60) = v91;
    goto LABEL_117;
  }

  *(v10 + 31) = v81 - 1;
  v82 = *(v10 + 184 + 4 * (v81 - 1));
  if (v81 == 1)
  {
    goto LABEL_104;
  }

  v83 = v81 - 2;
  *(v10 + 31) = v83;
  v182 = *(v10 + 184 + 4 * v83);
  if (v13)
  {
    goto LABEL_105;
  }

LABEL_102:
  v190 = 0;
  v186 = 0;
LABEL_117:
  v92 = *(v9 + 88);
  v93 = *(v8 + 144);
  v180 = v82;
  v94 = v9;
  if (*(v8 + 148) <= v93)
  {
    sub_18194C8AC(v8, 135, v92, v82, 0, a6, a7, a8);
  }

  else
  {
    *(v8 + 144) = v93 + 1;
    v95 = *(v8 + 136) + 40 * v93;
    *v95 = 135;
    *(v95 + 4) = v92;
    *(v95 + 8) = v82;
    *(v95 + 12) = 0;
    *(v95 + 28) = 0;
    *(v95 + 20) = 0;
    *(v95 + 36) = 0;
  }

  v96 = *(v11 + 8);
  v97 = *(v96 + 24);
  if (!v97)
  {
    goto LABEL_130;
  }

  v98 = *(v9 + 88);
  v99 = sub_1818E7DFC(*v11, a2, v92, v82, a5, a6, a7, a8);
  v100 = *(v96 + 16);
  if (v100)
  {
    LODWORD(v100) = *v100;
  }

  if (*v97 < 1)
  {
    goto LABEL_130;
  }

  v101 = 0;
  v102 = v100 + *(v96 + 120);
  do
  {
    v104 = (v102 + v101);
    v105 = v190 + v101;
    v106 = *(v99 + 144);
    if (*(v99 + 148) > v106)
    {
      *(v99 + 144) = v106 + 1;
      v103 = *(v99 + 136) + 40 * v106;
      *v103 = 94;
      *(v103 + 4) = v98;
      *(v103 + 8) = v104;
      *(v103 + 12) = v105;
      *(v103 + 24) = 0;
      *(v103 + 32) = 0;
      *(v103 + 16) = 0;
    }

    else
    {
      sub_18194C8AC(v99, 94, v98, v104, v105, a6, a7, a8);
    }

    ++v101;
  }

  while (v101 < *v97);
  v11 = v185;
  v13 = v13;
  if (v94)
  {
LABEL_130:
    v107 = v94;
    do
    {
      while (1)
      {
        v109 = *(v107 + 92);
        v110 = *(v8 + 144);
        if (*(v8 + 148) <= v110)
        {
          break;
        }

        *(v8 + 144) = v110 + 1;
        v108 = *(v8 + 136) + 40 * v110;
        *v108 = 75;
        *(v108 + 8) = v109;
        *(v108 + 12) = 0;
        *(v108 + 28) = 0;
        *(v108 + 20) = 0;
        *(v108 + 36) = 0;
        v107 = *(v107 + 64);
        if (!v107)
        {
          goto LABEL_134;
        }
      }

      sub_18194C8AC(v8, 75, 0, v109, 0, a6, a7, a8);
      v107 = *(v107 + 64);
    }

    while (v107);
  }

LABEL_134:
  v111 = v94;
  v112 = *(v94 + 132);
  v113 = *(v8 + 144);
  if (*(v8 + 148) <= v113)
  {
    sub_18194C8AC(v8, 23, v188, v183, v112, a6, a7, a8);
  }

  else
  {
    *(v8 + 144) = v113 + 1;
    v114 = *(v8 + 136) + 40 * v113;
    *v114 = 23;
    *(v114 + 4) = v188;
    *(v114 + 8) = v183;
    *(v114 + 12) = v112;
    *(v114 + 24) = 0;
    *(v114 + 32) = 0;
    *(v114 + 16) = 0;
  }

  v116 = v181;
  v115 = v182;
  v117 = *(v8 + 144);
  v118 = v117;
  if (*(v8 + 148) <= v117)
  {
    sub_18194C8AC(v8, 135, v188, v182, 0, a6, a7, a8);
  }

  else
  {
    *(v8 + 144) = v117 + 1;
    v119 = *(v8 + 136) + 40 * v117;
    *v119 = 135;
    *(v119 + 4) = v188;
    *(v119 + 8) = v182;
    *(v119 + 12) = 0;
    *(v119 + 28) = 0;
    *(v119 + 20) = 0;
    *(v119 + 36) = 0;
  }

  v120 = v180;
  v121 = *(v111 + 136);
  v122 = *(v8 + 144);
  if (*(v8 + 148) <= v122)
  {
    sub_18194C8AC(v8, 55, v121, v183, v182, a6, a7, a8);
  }

  else
  {
    *(v8 + 144) = v122 + 1;
    v123 = *(v8 + 136) + 40 * v122;
    *v123 = 55;
    *(v123 + 4) = v121;
    *(v123 + 8) = v183;
    *(v123 + 12) = v182;
    *(v123 + 24) = 0;
    *(v123 + 32) = 0;
    *(v123 + 16) = 0;
  }

  v124 = *(v111 + 36);
  if (v124 != 67)
  {
    v125 = (v181 - 1);
    if (v124 == 86)
    {
      v126 = *(v8 + 144);
      if (*(v8 + 148) <= v126)
      {
        sub_18194C8AC(v8, 54, v180, v125, v182, a6, a7, a8);
      }

      else
      {
        *(v8 + 144) = v126 + 1;
        v127 = *(v8 + 136) + 40 * v126;
        *v127 = 54;
        *(v127 + 4) = v180;
        *(v127 + 8) = v125;
        *(v127 + 12) = v182;
        *(v127 + 24) = 0;
        *(v127 + 32) = 0;
        *(v127 + 16) = 0;
      }

      goto LABEL_187;
    }

    v184 = v181 - 1;
    v128 = *(v111 + 24);
    if (v128)
    {
      v129 = sub_181965648(v10, v128, 0, 0);
      if (*(v111 + 36) == 95)
      {
LABEL_149:
        v130 = *(v8 + 144);
        if (*(v8 + 148) > v130)
        {
          *(v8 + 144) = v130 + 1;
          v131 = *(v8 + 136) + 40 * v130;
          *v131 = 54;
          *(v131 + 4) = v180;
          *(v131 + 8) = 0;
          *(v131 + 12) = v182;
          *(v131 + 24) = 0;
          *(v131 + 32) = 0;
          *(v131 + 16) = 0;
          if (!v129)
          {
            goto LABEL_173;
          }

LABEL_155:
          v176 = v129;
          v177 = v111;
          v178 = v130;
          v179 = v118;
          v132 = *(v11 + 8);
          v133 = *(v132 + 24);
          if (v133)
          {
            v134 = sub_1818E7DFC(*v185, v128, v121, v125, v112, a6, a7, a8);
            v135 = *(v132 + 16);
            if (v135)
            {
              LODWORD(v135) = *v135;
            }

            if (*v133 >= 1)
            {
              v136 = 0;
              v137 = v135 + *(v132 + 120);
              do
              {
                v139 = (v137 + v136);
                v140 = v186 + v136;
                v141 = *(v134 + 144);
                if (*(v134 + 148) > v141)
                {
                  *(v134 + 144) = v141 + 1;
                  v138 = *(v134 + 136) + 40 * v141;
                  *v138 = 94;
                  *(v138 + 4) = v188;
                  *(v138 + 8) = v139;
                  *(v138 + 12) = v140;
                  *(v138 + 24) = 0;
                  *(v138 + 32) = 0;
                  *(v138 + 16) = 0;
                }

                else
                {
                  sub_18194C8AC(v134, 94, v188, v139, v140, a6, a7, a8);
                }

                ++v136;
              }

              while (v136 < *v133);
            }
          }

          v142 = *(v8 + 144);
          if (*(v8 + 148) <= v142)
          {
            sub_18194C8AC(v8, 90, v186, v190, v13, a6, a7, a8);
          }

          else
          {
            *(v8 + 144) = v142 + 1;
            v143 = *(v8 + 136) + 40 * v142;
            *v143 = 90;
            *(v143 + 4) = v186;
            *(v143 + 8) = v190;
            *(v143 + 12) = v13;
            *(v143 + 24) = 0;
            *(v143 + 32) = 0;
            *(v143 + 16) = 0;
          }

          v120 = v180;
          v116 = v181;
          v111 = v177;
          v118 = v179;
          if (*(*v8 + 103))
          {
            v11 = v185;
            v115 = v182;
            if (!*(*v8 + 824))
            {
              v17 = (*v176)-- == 1;
              if (v17)
              {
                sub_181939EC8(*(v176 + 16), v176);
              }
            }
          }

          else
          {
            v148 = *(v8 + 136) + 40 * *(v8 + 144);
            *(v148 - 39) = -8;
            *(v148 - 24) = v176;
            v11 = v185;
            v115 = v182;
          }

          v149 = *(v8 + 144);
          v150 = (v149 + 1);
          if (*(v8 + 148) > v149)
          {
            *(v8 + 144) = v150;
            v151 = *(v8 + 136) + 40 * v149;
            *v151 = 14;
            *(v151 + 4) = v150;
            *(v151 + 8) = v184;
            *(v151 + 12) = v150;
            *(v151 + 24) = 0;
            *(v151 + 32) = 0;
            *(v151 + 16) = 0;
LABEL_181:
            v130 = v178;
LABEL_182:
            if (v130)
            {
              if (*(*v8 + 103))
              {
                v156 = &byte_1EA831A58;
              }

              else
              {
                v156 = (*(v8 + 136) + 40 * v130);
              }

              *(v156 + 2) = *(v8 + 144);
            }

            goto LABEL_187;
          }

          v152 = v8;
          v153 = 14;
          v154 = v184;
          v155 = (v149 + 1);
LABEL_180:
          sub_18194C8AC(v152, v153, v150, v154, v155, a6, a7, a8);
          goto LABEL_181;
        }

        v144 = v129;
        v145 = sub_18194C8AC(v8, 54, v180, 0, v182, a6, a7, a8);
        v129 = v144;
        v118 = v117;
        v130 = v145;
        if (v129)
        {
          goto LABEL_155;
        }

LABEL_173:
        v146 = *(v8 + 144);
        if (*(v8 + 148) > v146)
        {
          *(v8 + 144) = v146 + 1;
          v147 = *(v8 + 136) + 40 * v146;
          *v147 = 9;
          *(v147 + 8) = v184;
          *(v147 + 12) = 0;
          *(v147 + 28) = 0;
          *(v147 + 20) = 0;
          *(v147 + 36) = 0;
          goto LABEL_182;
        }

        v152 = v8;
        v153 = 9;
        v150 = 0;
        v178 = v130;
        v154 = v184;
        v155 = 0;
        goto LABEL_180;
      }
    }

    else
    {
      v129 = 0;
      if (v124 == 95)
      {
        goto LABEL_149;
      }
    }

    v130 = 0;
    if (v129)
    {
      goto LABEL_155;
    }

    goto LABEL_173;
  }

LABEL_187:
  sub_18197E414(v11, v111, v188, 0, *(v11 + 32), a6, a7, a8);
  v162 = *(v8 + 24);
  v163 = -v116;
  if (*(v162 + 72) + *(v162 + 76) < 0)
  {
    sub_18195CB84(v162, v8, v163);
    v164 = *(v8 + 144);
  }

  else
  {
    v164 = *(v8 + 144);
    *(*(v162 + 80) + 4 * v163) = v164;
  }

  if (*(v8 + 148) <= v164)
  {
    sub_18194C8AC(v8, 39, v188, v117, 0, v159, v160, v161);
  }

  else
  {
    *(v8 + 144) = v164 + 1;
    v165 = *(v8 + 136) + 40 * v164;
    *v165 = 39;
    *(v165 + 4) = v188;
    *(v165 + 8) = v117;
    *(v165 + 12) = 0;
    *(v165 + 28) = 0;
    *(v165 + 20) = 0;
    *(v165 + 36) = 0;
  }

  v166 = *(v8 + 144);
  if (!*(*v8 + 103))
  {
    v167 = *(v8 + 136) + 40 * v118;
    *(v167 - 32) = v166;
    *(v167 + 48) = v166;
    if (!v115)
    {
      goto LABEL_199;
    }

LABEL_197:
    v168 = *(v10 + 31);
    if (v168 <= 7)
    {
      *(v10 + 31) = v168 + 1;
      *(v10 + 4 * v168 + 184) = v115;
    }

    goto LABEL_199;
  }

  dword_1EA831A60 = *(v8 + 144);
  if (v115)
  {
    goto LABEL_197;
  }

LABEL_199:
  if (v120)
  {
    v169 = *(v10 + 31);
    if (v169 <= 7)
    {
      *(v10 + 31) = v169 + 1;
      *(v10 + 4 * v169 + 184) = v120;
    }
  }

  if (v13)
  {
    if (v13 == 1)
    {
      if (v186)
      {
        v170 = *(v10 + 31);
        if (v170 <= 7)
        {
          *(v10 + 31) = v170 + 1;
          *(v10 + 4 * v170 + 184) = v186;
        }
      }

      if (v190)
      {
        v171 = *(v10 + 31);
        if (v171 <= 7)
        {
          *(v10 + 31) = v171 + 1;
          *(v10 + 4 * v171 + 184) = v190;
        }
      }
    }

    else if (*(v10 + 44) < v13)
    {
      *(v10 + 44) = v13;
      *(v10 + 48) = v186;
    }
  }

  result = sub_18197BB58(v11, 1, v163, v157, v158, v159, v160, v161);
LABEL_213:
  v173 = *(v185 + 24);
  v172 = *(v185 + 28);
  v174 = *(v8 + 144);
  if (*(v8 + 148) <= v174)
  {

    return sub_18194C8AC(v8, 10, v172, v173, 0, a6, a7, a8);
  }

  else
  {
    *(v8 + 144) = v174 + 1;
    v175 = *(v8 + 136) + 40 * v174;
    *v175 = 10;
    *(v175 + 4) = v172;
    *(v175 + 8) = v173;
    *(v175 + 12) = 0;
    *(v175 + 28) = 0;
    *(v175 + 20) = 0;
    *(v175 + 36) = 0;
  }

  return result;
}

uint64_t sub_18197D078(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = sub_1818E7DFC(a1, a2, a3, a4, a5, a6, a7, a8);
  v17 = a2;
  v18 = result;
  if (v17)
  {
    v19 = *v17;
    result = sub_181965648(a1, v17, 0, 0);
    v20 = result;
    v21 = *(v18 + 144);
    if (*(v18 + 148) <= v21)
    {
      result = sub_18194C8AC(v18, 90, a4, a3, v19, v14, v15, v16);
    }

    else
    {
      *(v18 + 144) = v21 + 1;
      v22 = *(v18 + 136) + 40 * v21;
      *v22 = 90;
      *(v22 + 4) = a4;
      *(v22 + 8) = a3;
      *(v22 + 12) = v19;
      *(v22 + 24) = 0;
      *(v22 + 32) = 0;
      *(v22 + 16) = 0;
    }

    if (*(*v18 + 103))
    {
      if (v20)
      {
        if (!*(*v18 + 824) && (*v20)-- == 1)
        {
          result = sub_181939EC8(*(v20 + 16), v20);
        }
      }
    }

    else
    {
      v26 = *(v18 + 136) + 40 * *(v18 + 144);
      *(v26 - 39) = -8;
      *(v26 - 24) = v20;
    }

    v27 = *(v18 + 144);
    v28 = (v27 + 1);
    if (*(v18 + 148) <= v27)
    {
      result = sub_18194C8AC(v18, 14, v28, a5, (v27 + 1), v14, v15, v16);
    }

    else
    {
      *(v18 + 144) = v28;
      v29 = *(v18 + 136) + 40 * v27;
      *v29 = 14;
      *(v29 + 4) = v28;
      *(v29 + 8) = a5;
      *(v29 + 12) = v28;
      *(v29 + 24) = 0;
      *(v29 + 32) = 0;
      *(v29 + 16) = 0;
    }

    v30 = (v19 - 1);
    v31 = *(v18 + 144);
    if (*(v18 + 148) > v31)
    {
      *(v18 + 144) = v31 + 1;
      v32 = *(v18 + 136) + 40 * v31;
      *v32 = 80;
      *(v32 + 4) = a3;
      *(v32 + 8) = a4;
      *(v32 + 12) = v30;
      *(v32 + 24) = 0;
      *(v32 + 32) = 0;
      *(v32 + 16) = 0;
      return result;
    }

    result = v18;
    v33 = 80;
    v34 = a3;
    v35 = a4;
  }

  else
  {
    v23 = *(result + 144);
    if (*(result + 148) > v23)
    {
      *(result + 144) = v23 + 1;
      v24 = *(result + 136) + 40 * v23;
      *v24 = 9;
      *(v24 + 8) = a5;
      *(v24 + 12) = 0;
      *(v24 + 28) = 0;
      *(v24 + 20) = 0;
      *(v24 + 36) = 0;
      return result;
    }

    v33 = 9;
    v34 = 0;
    v35 = a5;
    v30 = 0;
  }

  return sub_18194C8AC(result, v33, v34, v35, v30, v14, v15, v16);
}

uint64_t sub_18197D2A4(uint64_t a1, int a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  v9 = a3;
  v13 = *a1;
  v12 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *(v12 + 32);
  v16 = *(*a1 + 72);
  v17 = v16 - 1;
  *(*a1 + 72) = v16 - 1;
  if (a2 == 2 && *(v12 + 33) == 91)
  {
    return 0;
  }

  v89 = v12;
  if (a3 < 1)
  {
LABEL_14:
    v19 = 0;
    if (a2 != 1)
    {
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  v19 = *(v14 + 144);
  if (v15 != 90)
  {
    if (*(v14 + 148) <= v19)
    {
      sub_18194C8AC(v14, 50, a3, (v16 - 1), 1, a6, a7, a8);
      v12 = v89;
    }

    else
    {
      *(v14 + 144) = v19 + 1;
      v23 = *(v14 + 136) + 40 * v19;
      *v23 = 50;
      *(v23 + 4) = a3;
      *(v23 + 8) = v17;
      *(v23 + 12) = 1;
      *(v23 + 24) = 0;
      *(v23 + 32) = 0;
      *(v23 + 16) = 0;
    }

    goto LABEL_14;
  }

  if (a2 == 2)
  {
    if (*(v12 + 33) == 87)
    {
      v20 = *(a1 + 52);
      v21 = *(a1 + 44);
      v22 = 56;
    }

    else
    {
      v20 = *(a1 + 44);
      v21 = *(a1 + 52);
      v22 = 58;
    }

    sub_18197DC1C(a1, v22, v20, v9, v21, (v16 - 1), a7, a8);
    goto LABEL_19;
  }

  sub_18197DC1C(a1, 55, *(a1 + 60), a3, *(a1 + 52), (v16 - 1), a7, a8);
  v12 = v89;
  if (a2 != 1)
  {
    goto LABEL_20;
  }

LABEL_15:
  if (!*(v12 + 132))
  {
    sub_18197BB58(a1, 0, a3, a4, a5, a6, a7, a8);
LABEL_19:
    v12 = v89;
  }

LABEL_20:
  v88 = *(v14 + 144);
  if (!v9 || *(v12 + 33) != *(v12 + 34) || *(v12 + 32) != 90)
  {
    goto LABEL_54;
  }

  v86 = v19;
  v24 = *(v13 + 31);
  if (!v24)
  {
    v30 = *(v13 + 60) + 1;
    v25 = v30;
    goto LABEL_31;
  }

  *(v13 + 31) = v24 - 1;
  v25 = *(v13 + 184 + 4 * (v24 - 1));
  if (v24 == 1)
  {
    v30 = *(v13 + 60);
LABEL_31:
    v27 = v30 + 1;
    *(v13 + 60) = v27;
    if (a2 != 2)
    {
      goto LABEL_26;
    }

    goto LABEL_32;
  }

  v26 = v24 - 2;
  *(v13 + 31) = v26;
  v27 = *(v13 + 184 + 4 * v26);
  if (a2 != 2)
  {
LABEL_26:
    if (!*(a1 + 40))
    {
      goto LABEL_48;
    }

    v28 = *(a1 + 60);
    if (*(v14 + 148) <= v88)
    {
      sub_18194C8AC(v14, 135, v28, v25, 0, a6, a7, a8);
    }

    else
    {
      *(v14 + 144) = v88 + 1;
      v29 = *(v14 + 136) + 40 * v88;
      *v29 = 135;
      *(v29 + 4) = v28;
      *(v29 + 8) = v25;
      *(v29 + 12) = 0;
      *(v29 + 28) = 0;
      *(v29 + 20) = 0;
      *(v29 + 36) = 0;
    }

    a3 = *(a1 + 40);
    v38 = *(v14 + 144);
    if (*(v14 + 148) > v38)
    {
      *(v14 + 144) = v38 + 1;
      v36 = *(v14 + 136) + 40 * v38;
      *v36 = 58;
      *(v36 + 4) = a3;
      goto LABEL_44;
    }

    v37 = v14;
LABEL_46:
    sub_18194C8AC(v37, 58, a3, (v16 - 1), v25, a6, a7, a8);
    goto LABEL_47;
  }

LABEL_32:
  v31 = *(a1 + 44);
  if (*(v14 + 148) <= v88)
  {
    sub_18194C8AC(v14, 135, v31, v25, 0, a6, a7, a8);
  }

  else
  {
    *(v14 + 144) = v88 + 1;
    v32 = *(v14 + 136) + 40 * v88;
    *v32 = 135;
    *(v32 + 4) = v31;
    *(v32 + 8) = v25;
    *(v32 + 12) = 0;
    *(v32 + 28) = 0;
    *(v32 + 20) = 0;
    *(v32 + 36) = 0;
  }

  a3 = *(a1 + 60);
  v33 = *(v14 + 144);
  if (*(v14 + 148) <= v33)
  {
    sub_18194C8AC(v14, 135, a3, v27, 0, a6, a7, a8);
  }

  else
  {
    *(v14 + 144) = v33 + 1;
    v34 = *(v14 + 136) + 40 * v33;
    *v34 = 135;
    *(v34 + 4) = a3;
    *(v34 + 8) = v27;
    *(v34 + 12) = 0;
    *(v34 + 28) = 0;
    *(v34 + 20) = 0;
    *(v34 + 36) = 0;
  }

  v35 = *(v14 + 144);
  if (*(v14 + 148) <= v35)
  {
    v37 = v14;
    a3 = v27;
    goto LABEL_46;
  }

  *(v14 + 144) = v35 + 1;
  v36 = *(v14 + 136) + 40 * v35;
  *v36 = 58;
  *(v36 + 4) = v27;
LABEL_44:
  *(v36 + 8) = v17;
  *(v36 + 12) = v25;
  *(v36 + 24) = 0;
  *(v36 + 32) = 0;
  *(v36 + 16) = 0;
LABEL_47:
  v12 = v89;
LABEL_48:
  if (v25)
  {
    v39 = *(v13 + 31);
    if (v39 <= 7)
    {
      *(v13 + 31) = v39 + 1;
      *(v13 + 4 * v39 + 184) = v25;
    }
  }

  v19 = v86;
  if (v27)
  {
    v40 = *(v13 + 31);
    if (v40 <= 7)
    {
      *(v13 + 31) = v40 + 1;
      *(v13 + 4 * v40 + 184) = v27;
    }
  }

LABEL_54:
  if (a2 == 2)
  {
    v42 = *(a1 + 44);
    v41 = *(v12 + 132);
    if (v41)
    {
      goto LABEL_61;
    }

    v43 = *(a1 + 32);
    v44 = v42;
    v45 = a1;
    v46 = 1;
LABEL_65:
    v90 = v42;
    sub_18197E414(v45, v12, v44, v46, v43, a6, a7, a8);
    goto LABEL_66;
  }

  if (a2 == 1)
  {
    v90 = *(a1 + 52);
    sub_18197BEE0(a1, v12, a3, a4, a5, a6, a7, a8);
LABEL_66:
    v42 = v90;
    goto LABEL_67;
  }

  v42 = *(a1 + 60);
  if (!*(v12 + 132))
  {
    v43 = *(a1 + 32);
    v44 = v42;
    v45 = a1;
    v46 = 0;
    goto LABEL_65;
  }

  v41 = *(v12 + 136);
LABEL_61:
  v47 = *(v14 + 144);
  if (*(v14 + 148) <= v47)
  {
    v90 = v42;
    sub_18194C8AC(v14, 86, v41, 1, 0, a6, a7, a8);
    goto LABEL_66;
  }

  *(v14 + 144) = v47 + 1;
  v48 = *(v14 + 136) + 40 * v47;
  *v48 = 86;
  *(v48 + 4) = v41;
  *(v48 + 8) = 1;
  *(v48 + 12) = 0;
  *(v48 + 28) = 0;
  *(v48 + 20) = 0;
  *(v48 + 36) = 0;
LABEL_67:
  v49 = *(v14 + 144);
  v50 = v49;
  v91 = v42;
  if (*(a1 + 36) == a2)
  {
    if (*(v14 + 148) <= v49)
    {
      sub_18194C8AC(v14, 130, v42, 0, 0, a6, a7, a8);
      LODWORD(v42) = v91;
    }

    else
    {
      *(v14 + 144) = v49 + 1;
      v51 = *(v14 + 136) + 40 * v49;
      *v51 = 130;
      *(v51 + 4) = v42;
      *(v51 + 8) = 0u;
      *(v51 + 24) = 0u;
    }

    v50 = *(v14 + 144);
    if (v50 >= 1)
    {
      *(*(v14 + 136) + 40 * v50 - 38) = 2;
    }
  }

  if (!v8)
  {
    v52 = v50 + 1 + (v15 != 77);
    if (*(v14 + 148) <= v50)
    {
      sub_18194C8AC(v14, 39, v42, v52, 0, a6, a7, a8);
      if (v15 == 77)
      {
        goto LABEL_78;
      }
    }

    else
    {
      *(v14 + 144) = v50 + 1;
      v54 = *(v14 + 136) + 40 * v50;
      *v54 = 39;
      *(v54 + 4) = v42;
      *(v54 + 8) = v52;
      *(v54 + 12) = 0;
      *(v54 + 28) = 0;
      *(v54 + 20) = 0;
      *(v54 + 36) = 0;
      if (v15 == 77)
      {
LABEL_78:
        v18 = 0;
        goto LABEL_118;
      }
    }

    v58 = *(v14 + 144);
    if (*(v14 + 148) <= v58)
    {
      sub_18194C8AC(v14, 9, 0, (v16 - 1), 0, a6, a7, a8);
      v18 = 0;
    }

    else
    {
      v18 = 0;
      *(v14 + 144) = v58 + 1;
      v59 = *(v14 + 136) + 40 * v58;
      *v59 = 9;
      *(v59 + 8) = v17;
      *(v59 + 12) = 0;
      *(v59 + 28) = 0;
      *(v59 + 20) = 0;
      *(v59 + 36) = 0;
    }

    v56 = v89;
    v57 = HIDWORD(v91);
LABEL_90:
    v60 = *(v56 + 24);
    v84 = v16;
    v85 = v18;
    v87 = v19;
    if (v60)
    {
      v61 = *v60;
      if (*v60)
      {
        if (v61 == 1)
        {
          if (*(v13 + 31))
          {
            v62 = *(v13 + 31) - 1;
            *(v13 + 31) = v62;
            v63 = *(v13 + 4 * v62 + 184);
          }

          else
          {
            v63 = (*(v13 + 60) + 1);
            *(v13 + 60) = v63;
          }

          v61 = 1;
        }

        else
        {
          v64 = *(v13 + 44);
          v65 = __OFSUB__(v64, v61);
          v66 = v64 - v61;
          if (v66 < 0 != v65)
          {
            v67 = *(v13 + 60);
            v63 = (v67 + 1);
            *(v13 + 60) = v67 + v61;
          }

          else
          {
            v63 = *(v13 + 48);
            *(v13 + 44) = v66;
            *(v13 + 48) = v63 + v61;
          }
        }
      }

      else
      {
        v63 = *v60;
      }
    }

    else
    {
      v61 = 0;
      v63 = 0;
    }

    v68 = *(a1 + 8);
    v69 = *(v68 + 24);
    if (v69)
    {
      v70 = sub_1818E7DFC(*a1, v12, v41, v52, a5, a6, a7, a8);
      v71 = *(v68 + 16);
      if (v71)
      {
        LODWORD(v71) = *v71;
      }

      v57 = HIDWORD(v91);
      if (*v69 >= 1)
      {
        v72 = 0;
        v73 = v71 + *(v68 + 120);
        do
        {
          v75 = (v73 + v72);
          v76 = (v63 + v72);
          v77 = *(v70 + 144);
          if (*(v70 + 148) > v77)
          {
            *(v70 + 144) = v77 + 1;
            v74 = *(v70 + 136) + 40 * v77;
            *v74 = 94;
            *(v74 + 4) = v91;
            *(v74 + 8) = v75;
            *(v74 + 12) = v76;
            *(v74 + 24) = 0;
            *(v74 + 32) = 0;
            *(v74 + 16) = 0;
          }

          else
          {
            sub_18194C8AC(v70, 94, v91, v75, v76, a6, a7, a8);
            v57 = HIDWORD(v91);
          }

          ++v72;
        }

        while (v72 < *v69);
      }
    }

    sub_18197D078(v13, *(v89 + 24), v63, v57, v88, a6, a7, a8);
    if (v61 == 1)
    {
      v16 = v84;
      v19 = v87;
      if (v63)
      {
        v78 = *(v13 + 31);
        if (v78 <= 7)
        {
          *(v13 + 31) = v78 + 1;
          *(v13 + 4 * v78 + 184) = v63;
        }
      }
    }

    else
    {
      v16 = v84;
      v19 = v87;
      if (*(v13 + 44) < v61)
      {
        *(v13 + 44) = v61;
        *(v13 + 48) = v63;
      }
    }

    v18 = v85;
    goto LABEL_118;
  }

  v52 = (v50 + 2);
  if (*(v14 + 148) <= v50)
  {
    sub_18194C8AC(v14, 39, v42, v52, 0, a6, a7, a8);
  }

  else
  {
    *(v14 + 144) = v50 + 1;
    v53 = *(v14 + 136) + 40 * v50;
    *v53 = 39;
    *(v53 + 4) = v42;
    *(v53 + 8) = v52;
    *(v53 + 12) = 0;
    *(v53 + 28) = 0;
    *(v53 + 20) = 0;
    *(v53 + 36) = 0;
  }

  v18 = *(v14 + 144);
  if (*(v14 + 148) <= v18)
  {
    v18 = sub_18194C8AC(v14, 9, 0, 0, 0, a6, a7, a8);
  }

  else
  {
    *(v14 + 144) = v18 + 1;
    v55 = *(v14 + 136) + 40 * v18;
    *v55 = 9;
    *(v55 + 1) = 0u;
    *(v55 + 17) = 0u;
    *(v55 + 32) = 0;
  }

  v56 = v89;
  v57 = HIDWORD(v91);
  if (v15 != 77)
  {
    goto LABEL_90;
  }

LABEL_118:
  if (v19)
  {
    v79 = *(v14 + 144);
    if (*(v14 + 148) <= v79)
    {
      sub_18194C8AC(v14, 9, 0, v19, 0, a6, a7, a8);
    }

    else
    {
      *(v14 + 144) = v79 + 1;
      v80 = *(v14 + 136) + 40 * v79;
      *v80 = 9;
      *(v80 + 8) = v19;
      *(v80 + 12) = 0;
      *(v80 + 28) = 0;
      *(v80 + 20) = 0;
      *(v80 + 36) = 0;
    }
  }

  v81 = *(v14 + 24);
  v82 = -v16;
  if (*(v81 + 72) + *(v81 + 76) < 0)
  {
    sub_18195CB84(v81, v14, v82);
  }

  else
  {
    *(*(v81 + 80) + 4 * v82) = *(v14 + 144);
  }

  return v18;
}