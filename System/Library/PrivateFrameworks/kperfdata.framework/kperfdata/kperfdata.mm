uint64_t kpdecode_cursor_next_record(uint64_t a1, void *a2)
{
  v104 = a1 + 2760;
  v3 = a1 + 2248;
  v102 = a1 + 1736;
  v4 = a1 + 712;
  v5 = a1 + 200;
  v105 = a1 + 1224;
  while ((record_ready(a1) & 1) == 0)
  {
    kevent = _kpdecode_cursor_next_kevent(a1);
    if (!kevent)
    {
      break;
    }

    v7 = kevent;
    ++*(a1 + 192);
    v8 = malloc_type_malloc(0x1D18uLL, 0x10B00403599CD4FuLL);
    if (!v8)
    {
      return 2;
    }

    v9 = v8;
    *(v8 + 7420) = 0xFFFFFFFF00000000;
    *(v8 + 1846) = 0;
    *(v8 + 6) = 0;
    *(v8 + 8) = 0u;
    *v8 = 0;
    *(v8 + 841) = 0;
    *(v8 + 1570) = 0;
    *(v8 + 930) = 0;
    *(v8 + 926) = 0;
    *(v8 + 460) = 0u;
    *(v8 + 1844) = 0;
    v10 = *v7;
    *(v8 + 1) = *v7;
    *(v8 + 929) = *(a1 + 8) * *(a1 + 192);
    v11 = *(v7 + 52);
    if (v11 < 0x40)
    {
      if (v10)
      {
        if (*(v7 + 48) != 630784000)
        {
          v14 = *(v104 + 8 * v11) + 1;
          *(v104 + 8 * v11) = v14;
          if (v14 > *(a1 + 3272))
          {
            *(a1 + 3272) = v14;
          }
        }
      }

      if (*(a1 + 3292))
      {
        *v8 |= 0x17uLL;
        v15 = *(v7 + 48);
        *(v8 + 12) = v15;
        *(v8 + 7) = *(v7 + 8);
        *(v8 + 8) = *(v7 + 16);
        *(v8 + 9) = *(v7 + 24);
        *(v8 + 10) = *(v7 + 32);
        *(v8 + 2) = *(v7 + 40);
        *(v8 + 6) = v11;
      }

      else
      {
        v15 = *(v7 + 48);
      }

      if (v15 == 117571592)
      {
        v16 = *v8 | 0x10003;
        *(v8 + 6) = v11;
        v17 = *v7;
        *v8 = v16;
        *(v8 + 1) = v17;
        *(v8 + 842) = *(v3 + 8 * v11);
        *(v8 + 1846) = 1;
        *(v3 + 8 * v11) = v17;
        v18 = *(v5 + 8 * v11);
        if (v18)
        {
          *v18 |= 0x8000000000000000;
          *(v18 + 7384) = 1;
          *(v5 + 8 * v11) = 0;
        }

        v19 = *(v4 + 8 * v11);
        if (v19)
        {
          v13 = 0;
          *v19 |= 0x8000000000000000;
          *(v4 + 8 * v11) = 0;
          v20 = *(v105 + 8 * v11);
          *(v19 + 7384) = 1;
          *v20 |= 0x8000000000000000;
          *(v105 + 8 * v11) = 0;
LABEL_170:
          v65 = *v9;
          if (!*v9)
          {
            goto LABEL_253;
          }

LABEL_171:
          if (*(a1 + 3272) <= 0x7FFuLL)
          {
            *v9 = v65 | 0x20000;
          }

          ++*(a1 + 196);
          *(v9 + 924) = 0;
          v66 = *(a1 + 184);
          if (v66)
          {
            *(v66 + 7392) = v9;
          }

          *(a1 + 184) = v9;
          if (*(a1 + 176))
          {
            goto LABEL_254;
          }

LABEL_176:
          *(a1 + 176) = v9;
          goto LABEL_254;
        }

LABEL_169:
        v13 = 0;
        goto LABEL_170;
      }

      *(v3 + 8 * v11) = *v7;
      if (v15 == 620756993)
      {
        if (!*(v5 + 8 * v11))
        {
          v13 = 0;
          *(v5 + 8 * v11) = v8;
          *v8 |= 0x2007uLL;
          *(v8 + 6) = v11;
          *(v8 + 837) = vmovn_s64(*(v7 + 16));
          *(v8 + 2) = *(v7 + 40);
          goto LABEL_170;
        }

        goto LABEL_24;
      }

      if (HIWORD(v15) != 1793)
      {
        goto LABEL_32;
      }

      if (v15 >> 2 == 4)
      {
        if (v15)
        {
          *v8 |= 0x20000000uLL;
          *(v8 + 6) = v11;
          *(v8 + 903) = 0;
          *(v8 + 7160) = 0uLL;
          *(v8 + 7176) = 0uLL;
          *(v8 + 7192) = 0uLL;
          *(v8 + 7208) = 0uLL;
          if (*(v102 + 8 * v11))
          {
            goto LABEL_24;
          }

          if ((*(v7 + 48) & 2) != 0)
          {
            *(v8 + 1846) = 1;
          }

          else
          {
            *(v102 + 8 * v11) = v8;
          }

          v60 = (v7 + 8);
          v61 = a1;
          v62 = 4;
          v63 = v9;
          v64 = 3;
          goto LABEL_168;
        }

        if (!*(v102 + 8 * v11))
        {
          goto LABEL_24;
        }

        v21 = a1;
        v22 = v7;
        v23 = 3;
LABEL_57:
        add_string_data(v21, v22, v23);
        goto LABEL_250;
      }

      if (!(v15 >> 2))
      {
        if ((v15 & 1) == 0)
        {
          if (*(v4 + 8 * v11))
          {
            v21 = a1;
            v22 = v7;
            v23 = 1;
            goto LABEL_57;
          }

LABEL_24:
          v13 = 2;
          goto LABEL_170;
        }

        *v8 |= 0x80000uLL;
        *(v8 + 6) = v11;
        *(v8 + 422) = 0uLL;
        *(v8 + 423) = 0uLL;
        *(v8 + 424) = 0uLL;
        *(v8 + 425) = 0uLL;
        *(v8 + 426) = 0uLL;
        *(v8 + 427) = 0uLL;
        *(v8 + 428) = 0uLL;
        *(v8 + 429) = 0uLL;
        *(v8 + 430) = 0uLL;
        *(v8 + 431) = 0uLL;
        *(v8 + 432) = 0uLL;
        *(v8 + 433) = 0uLL;
        *(v8 + 434) = 0uLL;
        *(v8 + 435) = 0uLL;
        *(v8 + 436) = 0uLL;
        *(v8 + 437) = 0uLL;
        *(v8 + 438) = 0uLL;
        *(v8 + 878) = 0;
        if (*(v4 + 8 * v11))
        {
          goto LABEL_24;
        }

        v31 = *(v7 + 8);
        *(v8 + 877) = *(v7 + 16);
        *(v8 + 1756) = v31;
        if ((*(v7 + 48) & 2) != 0)
        {
          *(v8 + 1846) = 1;
        }

        else
        {
          *(v4 + 8 * v11) = v8;
        }

        *(v8 + 917) = 0;
        v60 = (v7 + 24);
        v61 = a1;
        v62 = 2;
        v63 = v9;
        v64 = 1;
LABEL_168:
        batch_get_bytes(v61, v60, v62, v63, v64);
        goto LABEL_169;
      }

LABEL_32:
      v24 = *(v5 + 8 * v11);
      if (v24)
      {
        if (v15 <= 620888115)
        {
          if (v15 > 620822607)
          {
            if (v15 > 620888079)
            {
              if (v15 > 620888103)
              {
                switch(v15)
                {
                  case 620888104:
                    v87 = *(v24 + 7416);
                    if (v87 == 1)
                    {
                      v88 = *(v7 + 16);
                      if (v88 - 1001 >= 0xFFFFFFFFFFFFFC18)
                      {
                        *v24 |= 0x200000000uLL;
                        v89 = *(v7 + 8);
                        if (v88 > 0x100)
                        {
                          v89 |= 0x10u;
                        }

                        *(v24 + 4216) = v89;
                        if (v88 >= 0x100)
                        {
                          LODWORD(v88) = 256;
                        }

                        *(v24 + 4220) = v88;
                      }
                    }

                    v90 = v87 - 1;
                    if (*(v24 + 7360) > (v87 - 1))
                    {
                      v91 = *(v7 + 16);
                      if (v91 - 1001 >= 0xFFFFFFFFFFFFFC18)
                      {
                        v92 = *(v24 + 7368) + 2064 * v90;
                        *v24 |= 0x200000000uLL;
                        v93 = *(v7 + 8);
                        if (v91 > 0x100)
                        {
                          v93 |= 0x10u;
                        }

                        if (v91 >= 0x100)
                        {
                          LODWORD(v91) = 256;
                        }

                        *(v92 + 8) = v93;
                        *(v92 + 12) = v91;
                      }
                    }

                    *(v24 + 7412) = 0;
                    break;
                  case 620888108:
                    if ((*(v24 + 4) & 2) != 0)
                    {
                      v77 = *(v24 + 7416);
                      if (v77 == 1)
                      {
                        v78 = *(v24 + 7408);
                        if (v78 <= 252)
                        {
                          v79 = (v24 + 8 * v78);
                          v79[528] = *(v7 + 8);
                          v79[529] = *(v7 + 16);
                          v79[530] = *(v7 + 24);
                          v79[531] = *(v7 + 32);
                          *(v24 + 7408) = v78 + 4;
                        }
                      }

                      v80 = v77 - 1;
                      if (*(v24 + 7360) > (v77 - 1))
                      {
                        v81 = *(v24 + 7412);
                        if (v81 <= 252)
                        {
                          v82 = (*(v24 + 7368) + 2064 * v80 + 8 * v81);
                          v82[2] = *(v7 + 8);
                          v82[3] = *(v7 + 16);
                          v82[4] = *(v7 + 24);
                          v82[5] = *(v7 + 32);
                          *(v24 + 7412) = v81 + 4;
                        }
                      }
                    }

                    break;
                  case 620888112:
                    v42 = *(v7 + 8);
                    if (v42 != -1)
                    {
                      *v24 |= 0x200000000uLL;
                      *(v24 + 7416) = 0;
                      if (!*(v24 + 7368))
                      {
                        v43 = malloc_type_calloc(v42, 0x810uLL, 0x1000040A9A4BCADuLL);
                        *(v24 + 7368) = v43;
                        if (v43)
                        {
                          *(v24 + 7360) = v42;
                          *(v24 + 7344) = *(v7 + 16);
                        }
                      }
                    }

                    break;
                }
              }

              else
              {
                switch(v15)
                {
                  case 620888080:
                    if ((*v24 & 0x80) != 0)
                    {
                      v83 = *(v24 + 7404);
                      if (v83 <= 252)
                      {
                        v84 = (v24 + 8 * v83);
                        v84[14] = *(v7 + 8);
                        v84[15] = *(v7 + 16);
                        v84[16] = *(v7 + 24);
                        v84[17] = *(v7 + 32);
                        *(v24 + 7404) = v83 + 4;
                      }
                    }

                    break;
                  case 620888084:
                    v74 = *(v7 + 16);
                    if (v74 - 1001 >= 0xFFFFFFFFFFFFFC18)
                    {
                      *v24 |= 0x40uLL;
                      v75 = *(v7 + 8);
                      if (v74 > 0x100)
                      {
                        v75 |= 0x10u;
                      }

                      *(v24 + 2160) = v75;
                      if (v74 >= 0x100)
                      {
                        LODWORD(v74) = 256;
                      }

                      *(v24 + 2164) = v74;
                    }

                    *(v24 + 7400) = 0;
                    break;
                  case 620888088:
                    v36 = *(v7 + 16);
                    if (v36 - 1001 > 0xFFFFFFFFFFFFFC17)
                    {
                      *v24 |= 0x80uLL;
                      v37 = *(v7 + 8);
                      v94 = v37 | 0x10;
                      if (v36 <= 0x100)
                      {
                        v94 = *(v7 + 8);
                      }

                      v95 = 256;
                      if (v36 < 0x100)
                      {
                        v95 = v36;
                      }

                      *(v24 + 104) = v94;
                      *(v24 + 108) = v95;
                    }

                    else
                    {
                      v37 = *(v7 + 8);
                    }

                    if ((v37 & 0x200) != 0)
                    {
                      *v24 |= 0x100000000uLL;
                      *(v24 + 7324) = v36;
                      v96 = *(v7 + 32);
                      *(v24 + 7320) = *(v7 + 24);
                      *(v24 + 7328) = v96;
                    }

                    *(v24 + 7404) = 0;
                    break;
                }
              }

              goto LABEL_250;
            }

            if ((v15 - 620822620) < 4)
            {
              *v24 |= 0x10000000uLL;
              if (v15)
              {
                *(v105 + 8 * v11) = v24;
                *(v24 + 7152) = 0;
                *(v24 + 7136) = 0uLL;
                *(v24 + 7120) = 0uLL;
                *(v24 + 7104) = 0uLL;
                *(v24 + 7088) = 0uLL;
                v11 = *(v7 + 52);
                v30 = *(v105 + 8 * v11);
              }

              else
              {
                v30 = *(v105 + 8 * v11);
                if (!v30)
                {
                  goto LABEL_250;
                }
              }

              batch_get_bytes(a1, (v7 + 8), 4uLL, v30, 2);
              if ((*(v7 + 48) & 2) != 0)
              {
                *(v105 + 8 * v11) = 0;
              }

              goto LABEL_250;
            }

            if (v15 != 620822608)
            {
              if (v15 == 620888076 && (*v24 & 0x40) != 0)
              {
                v50 = *(v24 + 7400);
                if (v50 <= 252)
                {
                  v51 = (v24 + 8 * v50);
                  v51[271] = *(v7 + 8);
                  v51[272] = *(v7 + 16);
                  v51[273] = *(v7 + 24);
                  v51[274] = *(v7 + 32);
                  *(v24 + 7400) = v50 + 4;
                }
              }

              goto LABEL_250;
            }

            v33 = v7;
            v34 = *(v5 + 8 * v11);
            v35 = 2;
            goto LABEL_231;
          }

          if (v15 <= 620822583)
          {
            if (v15 <= 620822563)
            {
              switch(v15)
              {
                case 620756994:
                  *(v24 + 7384) = 1;
                  *(v5 + 8 * v11) = 0;
                  break;
                case 620822532:
                  *v24 |= 0x20uLL;
                  v72 = *(v7 + 8);
                  *(v24 + 16) = *(v7 + 16);
                  v73 = *(v7 + 32);
                  *(v24 + 96) = *(v7 + 24);
                  *(v24 + 88) = v72;
                  *(v24 + 92) = v73;
                  break;
                case 620822556:
                  v25 = v7;
                  v26 = *(v5 + 8 * v11);
                  v27 = 1;
                  goto LABEL_118;
              }

              goto LABEL_250;
            }

            if (v15 == 620822564)
            {
              *v24 |= 0x400000uLL;
              v85 = *(v7 + 8);
              v86 = *(v7 + 16);
              *(v24 + 6664) = v85;
              *(v24 + 6680) = v85 >> 8;
              *(v24 + 6682) = BYTE3(v85);
              *(v24 + 6672) = v86;
              goto LABEL_250;
            }

            if (v15 != 620822572)
            {
              if (v15 == 620822580)
              {
                *v24 |= 0x400000uLL;
                v40 = *(v7 + 8);
                v41 = *(v7 + 16);
                *(v24 + 6664) = v40;
                *(v24 + 6680) = v40 >> 8;
                *(v24 + 6682) = BYTE3(v40);
                *(v24 + 6672) = *(v7 + 24) | (v41 << 32);
              }

              goto LABEL_250;
            }

            *v24 |= 0x800000uLL;
            v76 = *(v7 + 8);
LABEL_208:
            *(v24 + 6688) = v76;
            goto LABEL_250;
          }

          if (v15 <= 620822595)
          {
            switch(v15)
            {
              case 620822584:
                *v24 |= 0x800000uLL;
                v76 = *(v7 + 16) | (*(v7 + 8) << 32);
                goto LABEL_208;
              case 620822588:
                *v24 |= 0x100000uLL;
                *(v24 + 6600) = *(v7 + 16) | (*(v7 + 8) << 32);
                *(v24 + 6608) = *(v7 + 32) | (*(v7 + 24) << 32);
                break;
              case 620822592:
                v33 = v7;
                v34 = *(v5 + 8 * v11);
                v35 = 1;
LABEL_231:
                add_thread_info_sched_data2_32(v33, v34, v35);
                break;
            }

LABEL_250:
            v65 = *v9;
            if (!*v9)
            {
              v13 = 0;
LABEL_253:
              kpdecode_record_free(v9);
              goto LABEL_254;
            }

            v13 = 0;
            *(v9 + 1846) = 1;
            goto LABEL_171;
          }

          if (v15 != 620822596)
          {
            if (v15 == 620822600)
            {
              *v24 |= 0x4000000uLL;
              *(v24 + 7064) = *(v7 + 16) | (*(v7 + 8) << 32);
              *(v24 + 7072) = *(v7 + 32) | (*(v7 + 24) << 32);
            }

            else if (v15 == 620822604)
            {
              v25 = v7;
              v26 = *(v5 + 8 * v11);
              v27 = 2;
LABEL_118:
              add_thread_info_sched_data(v25, v26, v27);
            }

            goto LABEL_250;
          }

          *v24 |= 0x4000000uLL;
          v70 = (v24 + 7064);
          v71 = *(v7 + 8);
          goto LABEL_214;
        }

        if (v15 > 621281283)
        {
          if (v15 > 621412359)
          {
            if (v15 > 621412367)
            {
              if (v15 == 621412368)
              {
                *v24 |= 0x80000000uLL;
                *(v24 + 7296) = *(v7 + 8);
                *(v24 + 7312) = *(v7 + 24);
              }

              else if (v15 == 630784000)
              {
                v54 = *(v24 + 6728);
                v55 = *(v24 + 7424);
                if (!v54)
                {
                  if (v55 != -1)
                  {
                    goto LABEL_250;
                  }

                  v98 = *(v7 + 8);
                  *(v24 + 6720) = v98;
                  v54 = malloc_type_malloc(8 * v98, 0x100004000313F17uLL);
                  *(v24 + 6728) = v54;
                  *(v24 + 7424) = 0;
                  if (!v54)
                  {
                    goto LABEL_250;
                  }

                  v55 = 0;
                  *v24 |= 0x8000uLL;
                }

                v56 = 0;
                v57 = *(v24 + 6720);
                do
                {
                  if (v55 >= v57)
                  {
                    break;
                  }

                  if (v56 | v55)
                  {
                    if (v56 == 2)
                    {
                      v58 = (v7 + 24);
                    }

                    else
                    {
                      v58 = (v7 + 32);
                    }

                    if (v56)
                    {
                      v59 = (v7 + 16);
                    }

                    else
                    {
                      v59 = (v7 + 8);
                    }

                    if (v56 <= 1)
                    {
                      v58 = v59;
                    }

                    v54[v55++] = *v58;
                    *(v24 + 7424) = v55;
                  }

                  ++v56;
                }

                while (v56 != 4);
                goto LABEL_250;
              }

              goto LABEL_250;
            }

            if (v15 != 621412360)
            {
              if (v15 == 621412364)
              {
                *(v24 + 7264) = *(v7 + 8);
                *(v24 + 7280) = *(v7 + 24);
              }

              goto LABEL_250;
            }

            *v24 |= 0x2000000uLL;
            *(v24 + 7032) = *(v7 + 8);
            v70 = (v24 + 7048);
          }

          else
          {
            if (v15 > 621281291)
            {
              if (v15 == 621281292)
              {
                *v24 |= 0x200000uLL;
                *(v24 + 6648) = *(v7 + 16) | (*(v7 + 8) << 32);
                *(v24 + 6656) = *(v7 + 32) | (*(v7 + 24) << 32);
              }

              else if (v15 == 621412356)
              {
                *v24 |= 0x1000uLL;
                *(v24 + 6560) = 0;
                v52 = *(v7 + 8);
                if (v52 == -1)
                {
                  v53 = 1;
                  *(v24 + 6560) = 1;
                }

                else
                {
                  v53 = 0;
                  *(v24 + 6568) = v52;
                }

                v97 = *(v7 + 16);
                if (v97 == -1)
                {
                  v53 |= 2u;
                  *(v24 + 6560) = v53;
                }

                else
                {
                  *(v24 + 6576) = v97;
                }

                v99 = *(v7 + 24);
                if (v99 == -1)
                {
                  *(v24 + 6560) = v53 | 4;
                }

                else
                {
                  *(v24 + 6584) = v99;
                }
              }

              goto LABEL_250;
            }

            if (v15 != 621281284)
            {
              if (v15 == 621281288)
              {
                *v24 |= 0x200000uLL;
                *(v24 + 6632) = *(v7 + 16) | (*(v7 + 8) << 32);
                *(v24 + 6640) = vmovn_s64(*(v7 + 24));
              }

              goto LABEL_250;
            }

            *v24 |= 0x200000uLL;
            v69 = *(v7 + 16);
            *(v24 + 6632) = *(v7 + 8);
            *(v24 + 6640) = __ROR8__(v69, 32);
            v70 = (v24 + 6648);
          }

          v71 = *(v7 + 24);
LABEL_214:
          *v70 = v71;
          goto LABEL_250;
        }

        if (v15 > 621150223)
        {
          if ((v15 - 621150232) > 0xE)
          {
            goto LABEL_181;
          }

          v28 = 1 << (v15 - 24);
          if ((v28 & 7) != 0)
          {
            v29 = *v24 | 0x400;
LABEL_127:
            *v24 = v29;
            v44 = *(v7 + 32) | (*(v7 + 24) << 32);
            v45 = *(v24 + 7420);
            v46 = v24 + 8 * v45;
            *(v46 + 6288) = *(v7 + 16) | (*(v7 + 8) << 32);
            *(v46 + 6296) = v44;
            v47 = v45 + 2;
          }

          else
          {
            if ((v28 & 0x700) == 0)
            {
              if ((v28 & 0x7000) != 0)
              {
                v29 = *v24 | 0x200;
                goto LABEL_127;
              }

LABEL_181:
              if (v15 == 621150224)
              {
                *v24 |= 0x800uLL;
                v68 = (v24 + 6544);
                v106.val[1] = vmovn_s64(*(v7 + 24));
                v106.val[0] = vmovn_s64(*(v7 + 8));
                vst2_f32(v68, v106);
                *(v24 + 6280) = 0;
              }

              goto LABEL_250;
            }

            v32 = *v24 | 0x200;
LABEL_129:
            *v24 = v32;
            v48 = *(v24 + 7420);
            v49 = (v24 + 8 * v48);
            v49[786] = *(v7 + 8);
            v49[787] = *(v7 + 16);
            v49[788] = *(v7 + 24);
            v49[789] = *(v7 + 32);
            v47 = v48 + 4;
          }

          *(v24 + 7420) = v47;
          *(v24 + 6280) = v47;
          goto LABEL_250;
        }

        if ((v15 - 621150220) >= 3)
        {
          if (v15 == 620888116)
          {
            v67 = *(v24 + 7416);
            *(v24 + 7416) = v67 + 1;
            if (!v67)
            {
              *(v24 + 6272) = *(v7 + 8);
            }

            if (*(v24 + 7360) > v67)
            {
              *(*(v24 + 7368) + 2064 * v67) = *(v7 + 8);
            }
          }

          else if (v15 == 620888120 && (*v24 & 0x40) != 0)
          {
            *(v24 + 7376) = *(v7 + 8);
          }

          goto LABEL_250;
        }

        v32 = *v24 | 0x400;
        goto LABEL_129;
      }

      if (v15 > 620953608)
      {
        if (v15 != 620953609)
        {
          if (v15 == 621150209)
          {
            *v8 |= 0x40000000uLL;
            v39 = *(v7 + 8);
            *(v8 + 1808) = v39;
            *(v8 + 3618) = WORD2(v39);
            *(v8 + 1810) = HIWORD(v39);
            *(v8 + 453) = *(v7 + 16);
          }

          else if (v15 != 621346817)
          {
            goto LABEL_96;
          }
        }

        *v8 |= 0x100uLL;
        *(v8 + 6) = v11;
        *(v8 + 1846) = 1;
      }

      else
      {
        switch(v15)
        {
          case 117506056:
            *v8 |= 8uLL;
            *(v8 + 2) = *(v7 + 40);
            *(v8 + 6) = v11;
            strncpy(v8 + 28, (v7 + 8), 0x14uLL);
            v9[47] = 0;
            *(v9 + 1846) = 1;
            v15 = *(v7 + 48);
            break;
          case 620822548:
            *v8 |= 0x4000uLL;
            v38 = *(v7 + 16);
            *(v8 + 838) = *(v7 + 8);
            *(v8 + 1678) = v38;
            goto LABEL_109;
          case 620953600:
            *v8 |= 0x1000000uLL;
            *(v8 + 6) = v11;
LABEL_109:
            *(v9 + 1846) = 1;
            goto LABEL_250;
        }

LABEL_96:
        if (!HIBYTE(v15))
        {
          *v9 |= 0x40000uLL;
          *(v9 + 6) = *(v7 + 52);
          *(v9 + 1686) = v15 >> 2;
          if ((v15 & 1) == 0)
          {
            if ((v15 & 2) != 0)
            {
LABEL_99:
              *(v9 + 1687) = 1;
              goto LABEL_109;
            }

LABEL_107:
            *(v9 + 1687) = 2;
            goto LABEL_109;
          }

          goto LABEL_108;
        }
      }

      if ((HIBYTE(v15) | 0x20) != 0x21 || (v15 & 0xFF0000) != 0xA0000)
      {
        goto LABEL_250;
      }

      *v9 |= 0x40000uLL;
      *(v9 + 6) = *(v7 + 52);
      *(v9 + 1686) = v15 >> 2;
      if ((v15 & 1) == 0)
      {
        if ((v15 & 2) != 0)
        {
          goto LABEL_99;
        }

        goto LABEL_107;
      }

LABEL_108:
      *(v9 + 1687) = 0;
      goto LABEL_109;
    }

    *(v8 + 12) = *(v7 + 48);
    *(v8 + 7) = *(v7 + 8);
    *(v8 + 8) = *(v7 + 16);
    *(v8 + 9) = *(v7 + 24);
    *(v8 + 10) = *(v7 + 32);
    *(v8 + 2) = *(v7 + 40);
    *(v8 + 6) = v11;
    *v8 = 0x8000000000000017;
    *(v8 + 1846) = 1;
    ++*(a1 + 196);
    *(v8 + 924) = 0;
    v12 = *(a1 + 184);
    if (v12)
    {
      *(v12 + 7392) = v8;
    }

    *(a1 + 184) = v8;
    if (!*(a1 + 176))
    {
      v13 = 0;
      goto LABEL_176;
    }

    v13 = 0;
LABEL_254:
    if (v13 == 2)
    {
      return v13;
    }
  }

  if (!record_ready(a1))
  {
    return 1;
  }

  v100 = *(a1 + 176);
  *a2 = v100;
  --*(a1 + 196);
  *(a1 + 176) = *(v100 + 7392);
  if (*(a1 + 184) == v100)
  {
    *(a1 + 184) = 0;
  }

  v13 = 0;
  *(v100 + 7392) = 0;
  return v13;
}

uint64_t add_thread_info_sched_data(uint64_t result, uint64_t *a2, int a3)
{
  v3 = *a2;
  *a2 |= 0x100000uLL;
  *(a2 + 825) = *(result + 8);
  v4 = *(result + 24);
  *(a2 + 3310) = HIWORD(v4);
  *(a2 + 3311) = WORD2(v4);
  *(a2 + 1654) = BYTE3(v4);
  v5 = a2[828] & 0xFFF8 | (v4 >> 6) & 7;
  *(a2 + 3312) = v5;
  v6 = v5 & 0xFFFFFFC7 | (8 * ((*(result + 24) >> 3) & 7));
  *(a2 + 3312) = v6;
  LOWORD(v6) = v6 & 0xFE3F | ((*(result + 24) & 7) << 6);
  *(a2 + 3312) = v6;
  *(a2 + 3312) = v6 & 0xF1FF | (*(result + 32) >> 52) & 0xE00;
  if (a3 >= 2)
  {
    *a2 = v3 | 0x8100000;
    v7 = a2[885] & 0xFFF8 | (*(result + 32) >> 58) & 7;
    *(a2 + 3540) = v7;
    v8 = v7 & 0xFFFFFFC7 | (8 * (((*(result + 32) >> 52) >> 3) & 7));
    *(a2 + 3540) = v8;
    *(a2 + 3540) = v8 & 0xFE3F | (*(result + 32) >> 46) & 0x1C0;
  }

  return result;
}

uint64_t record_ready(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1)
  {
    v2 = *(a1 + 176);
    if (v2 && *(v2 + 7384))
    {
      return 1;
    }

    else if (*(a1 + 196) < 10001)
    {
      return 0;
    }

    else
    {
      *v2 |= 0x8000000000000000;
      v1 = 1;
      *(v2 + 7384) = 1;
      *(a1 + 8 * *(v2 + 24) + 200) = 0;
      *(a1 + 8 * *(*(a1 + 176) + 24) + 712) = 0;
      *(a1 + 8 * *(*(a1 + 176) + 24) + 1224) = 0;
    }
  }

  return v1;
}

uint64_t _kpdecode_cursor_next_kevent(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1)
  {
    return v1;
  }

  v2 = *a1;
  if (!*a1)
  {
    v3 = *(a1 + 32);
    if (v3 >= 0x120)
    {
      if (*v1 == 1437204737)
      {
        v4 = 24;
        goto LABEL_10;
      }

      if (*v1 == 1437204992)
      {
        v4 = 288;
        if ((*(v1 + 20) & 1) == 0)
        {
          v2 = 1;
          v5 = 28;
          v6 = 32;
LABEL_11:
          *a1 = v2;
          *(a1 + 8) = v6;
          *(a1 + 16) = v5;
          v7 = *(v1 + 4);
          v8 = (v4 + v5 * v7 + 4095) & 0xFFFFFFFFFFFFF000;
          *(a1 + 64) = 1;
          v9 = v8 | v6;
          v10 = v1 + v8;
          if (v3 >= v9)
          {
            v11 = v10;
          }

          else
          {
            v11 = 0;
          }

          *(a1 + 72) = a1 + 24;
          *(a1 + 80) = v11;
          v12 = v1 + v4;
          *(a1 + 88) = v12;
          *(a1 + 96) = v12 + v5 * v7;
          goto LABEL_15;
        }

LABEL_10:
        v2 = 2;
        v5 = 32;
        v6 = 64;
        goto LABEL_11;
      }
    }

    v2 = 0;
  }

LABEL_15:
  if (!*(a1 + 64))
  {
    return 0;
  }

  if ((*(a1 + 168) & 1) != 0 || (v13 = *(a1 + 88)) == 0)
  {
LABEL_24:
    v16 = *(a1 + 80);
    if (v16)
    {
      if (v2 == 2)
      {
        v1 = *(a1 + 80);
      }

      else
      {
        v17 = *v16;
        *(a1 + 104) = *v16 & 0xFFFFFFFFFFFFFFLL;
        v1 = a1 + 104;
        v18 = v16[1];
        v19 = v16[2];
        *&v20 = v18;
        *(&v20 + 1) = HIDWORD(v18);
        *(a1 + 112) = v20;
        v21 = *(v16 + 7);
        *(a1 + 144) = *(v16 + 6);
        *&v20 = v19;
        *(&v20 + 1) = HIDWORD(v19);
        *(a1 + 128) = v20;
        *(a1 + 152) = v21;
        *(a1 + 156) = HIBYTE(v17);
      }

      v22 = v16 + *(a1 + 8);
      if (**(a1 + 72) + *(*(a1 + 72) + 24) <= v22)
      {
        v22 = 0;
      }

      *(a1 + 80) = v22;
      return v1;
    }

    return 0;
  }

  v14 = *(a1 + 96);
  if (v13 >= v14)
  {
LABEL_23:
    *(a1 + 168) = 1;
    goto LABEL_24;
  }

  v15 = 2;
  if (v2 == 1)
  {
    v15 = 1;
  }

  while (!v13[v15])
  {
    v13 = (v13 + *(a1 + 16));
    *(a1 + 88) = v13;
    if (v14 <= v13)
    {
      goto LABEL_23;
    }
  }

  *(a1 + 104) = 0;
  v1 = a1 + 104;
  *(a1 + 152) = 117506056;
  if (v2 == 1)
  {
    v24 = *(v13 + 2);
    *(a1 + 128) = v13[6];
    *(a1 + 112) = v24;
    v25 = *v13;
  }

  else
  {
    v26 = *(v13 + 3);
    *(a1 + 128) = v13[7];
    *(a1 + 112) = v26;
    v25 = *v13;
  }

  *(a1 + 144) = v25;
  *(a1 + 88) = v13 + *(a1 + 16);
  return v1;
}

void kpdecode_record_free(void *a1)
{
  v2 = a1[841];
  if (v2)
  {
    free(v2);
  }

  v3 = a1[921];
  if (v3)
  {
    free(v3);
  }

  v4 = a1[930];
  if (v4)
  {
    do
    {
      v5 = *v4;
      free(v4[1]);
      free(v4);
      v4 = v5;
    }

    while (v5);
  }

  free(a1);
}

_DWORD *batch_get_bytes(_DWORD *result, const char *a2, unint64_t a3, void *a4, int a5)
{
  v6 = a3;
  if (*result == 1)
  {
    v7 = 4;
  }

  else
  {
    v7 = 8 * (*result == 2);
  }

  if (a5 != 3)
  {
    if (a5 == 2)
    {
      v8 = 894;
      v9 = 886;
      if (!a3)
      {
        return result;
      }

      goto LABEL_9;
    }

    if (!a3)
    {
      return result;
    }

    v14 = 0;
    v15 = a4 + 844;
    for (i = a2; ; i += 8)
    {
      result = strnlen(i, v7);
      if (result)
      {
        v17 = result;
        v18 = a4[876];
        v19 = i;
        if (v18 <= 0xFE)
        {
          if (255 - v18 >= result)
          {
            v20 = result;
          }

          else
          {
            v20 = 255 - v18;
          }

          result = memcpy(v15 + v18, i, v20);
          v21 = a4[876] + v20;
          a4[876] = v21;
          *(v15 + v21) = 0;
          v17 -= v20;
          if (!v17)
          {
            goto LABEL_41;
          }

          v19 = &a2[8 * v14 + v20];
        }

        v22 = a4[917];
        if (!v22)
        {
          v23 = malloc_type_malloc(0x10uLL, 0x20040A4A59CD2uLL);
          *v23 = a4[930];
          v22 = malloc_type_calloc(1uLL, 0x20uLL, 0x1090040F898E8EEuLL);
          v23[1] = v22;
          v22[3] = 0;
          a4[930] = v23;
          a4[917] = v22;
        }

        result = *v22;
        if (*v22)
        {
          v24 = v22[2];
          if (v24 - v22[1] >= v17)
          {
            goto LABEL_40;
          }

          v25 = 2 * v24;
          v26 = 1 << -__clz(v17 + v24 - 1);
          if (v25 <= v26)
          {
            v27 = v26;
          }

          else
          {
            v27 = v25;
          }

          result = reallocf(result, v27);
        }

        else
        {
          v28 = 1 << -__clz(v17 - 1);
          if (v28 <= 0x100)
          {
            v28 = 256;
          }

          v27 = v28;
          result = malloc_type_malloc(v28, 0x76CBFD98uLL);
        }

        *v22 = result;
        if (result)
        {
          v22[2] = v27;
LABEL_40:
          result = memcpy(result + v22[1], v19, v17);
          v22[1] += v17;
        }
      }

LABEL_41:
      ++v14;
      if (!--v6)
      {
        return result;
      }
    }
  }

  v8 = 903;
  v9 = 895;
  if (!a3)
  {
    return result;
  }

LABEL_9:
  v10 = 0;
  while (1)
  {
    v30 = *&a2[8 * v10];
    v11 = a4[v8];
    if (v7)
    {
      break;
    }

LABEL_16:
    a4[v8] = v11 + v7;
    if (++v10 >= a3)
    {
      return result;
    }
  }

  v12 = 0;
  while (1)
  {
    if ((v11 - 63 + v12) <= 0xFFFFFFFFFFFFFFBFLL)
    {
      a4[v8] += v12;
      *(&a4[v9] + v11 + v12) = 0;
      return result;
    }

    v13 = *(&v30 + v12);
    *(&a4[v9] + v11 + v12) = v13;
    if (!v13)
    {
      break;
    }

    if (v7 == ++v12)
    {
      v11 = a4[v8];
      goto LABEL_16;
    }
  }

  a4[v8] += v12;
  return result;
}

uint64_t kpep_config_create(void *a1, void *a2)
{
  if (!a1)
  {
    v5 = 0;
    v7 = 1;
LABEL_17:
    free(v5);
    return v7;
  }

  v4 = malloc_type_calloc(1uLL, 0x50uLL, 0x10B0040C2341216uLL);
  v5 = v4;
  if (!v4)
  {
    v7 = 2;
    goto LABEL_17;
  }

  *v4 = a1;
  v6 = v4 + 7;
  v7 = kpep_db_counters_count(a1, 3, v4 + 7);
  if (v7)
  {
LABEL_16:
    free(v5[1]);
    free(v5[2]);
    free(v5[3]);
    free(v5[4]);
    free(v5[5]);
    goto LABEL_17;
  }

  v8 = malloc_type_calloc(v5[7], 8uLL, 0x100004000313F17uLL);
  v5[2] = v8;
  if (!v8)
  {
    goto LABEL_15;
  }

  v9 = malloc_type_malloc(8 * v5[7], 0x100004000313F17uLL);
  v5[3] = v9;
  if (!v9)
  {
    goto LABEL_15;
  }

  v10 = *v6;
  if (*v6)
  {
    v11 = 0;
    do
    {
      v9[v11++] = -1;
      v10 = *v6;
    }

    while (*v6 > v11);
  }

  v12 = malloc_type_calloc(v10, 8uLL, 0x2004093837F09uLL);
  v5[1] = v12;
  if (!v12 || (v13 = malloc_type_calloc(v5[7], 4uLL, 0x100004052888210uLL), (v5[4] = v13) == 0) || (v14 = malloc_type_calloc(v5[7], 8uLL, 0x100004000313F17uLL), (v5[5] = v14) == 0))
  {
LABEL_15:
    v7 = 2;
    goto LABEL_16;
  }

  v7 = 0;
  *a2 = v5;
  return v7;
}

uint64_t kpep_config_create_live(void *a1, uint64_t a2, const void *a3, int a4, int a5, void ***a6)
{
  v12 = kpep_config_create(a1, a6);
  if (!v12)
  {
    v13 = *a6;
    v18 = 0;
    v14 = kpep_db_events_count(a1, &v18);
    if (v14)
    {
      v12 = v14;
LABEL_13:
      kpep_config_free(v13);
      *a6 = 0;
      return v12;
    }

    *(v13 + 16) = a4;
    if (*(*v13 + 32) == 3)
    {
      v15 = a4 & 0xFE;
    }

    else
    {
      v15 = a4;
    }

    if (counters_count(*v13, v15) != a5)
    {
      *__error() = 22;
      v12 = 15;
      goto LABEL_13;
    }

    if (a3)
    {
      memcpy(v13[5], a3, 8 * v13[7]);
    }

    v16 = malloc_type_malloc(8 * v18, 0x2004093837F09uLL);
    v12 = kpep_db_events(a1, v16, 8 * v18);
    if (v12)
    {
      goto LABEL_13;
    }

    kpep_config_decode_event(a1, v13, v16, v18, a2);
  }

  return v12;
}

uint64_t kpep_config_kpc_count(_DWORD *a1, uint64_t *a2)
{
  result = 1;
  if (a1 && a2)
  {
    if (*(*a1 + 128) == 3)
    {
      v5 = a1[16] & 0xFE;
    }

    else
    {
      v5 = a1[16];
    }

    v6 = counters_count(*a1, v5);
    result = 0;
    *a2 = v6;
  }

  return result;
}

uint64_t kpep_config_decode_event(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v9 = result;
  if (*(a2 + 64))
  {
    v10 = *(result + 128);
    if (v10 == 3)
    {
      v27 = *(result + 104);
      if (v27)
      {
        for (i = 0; i < v27; ++i)
        {
          if (a4)
          {
            v29 = 1 << i;
            v30 = a3;
            v31 = a4;
            do
            {
              v32 = *v30;
              if ((*(*v30 + 48) & 1) != 0 && (*(v32 + 40) & v29) != 0)
              {
                *(a2 + 68) |= v29;
                *(*(a2 + 32) + 4 * i) = 0;
                v33 = *(a2 + 48);
                *(*(a2 + 8) + 8 * v33) = v32;
                v34 = *(a2 + 24);
                *(*(a2 + 16) + 8 * v33) = i;
                v35 = *(a2 + 48);
                *(v34 + 8 * i) = v35;
                *(a2 + 48) = v35 + 1;
              }

              ++v30;
              --v31;
            }

            while (v31);
            v27 = *(result + 104);
          }
        }
      }
    }

    else if (v10 == 1)
    {
      v11 = *(result + 104);
      if (v11)
      {
        v12 = 0;
        while (1)
        {
          v13 = *(a5 + 8 * v12);
          v14 = *(result + 128);
          if ((v13 & 0x20000) != 0 && v14 == 3)
          {
            v15 = 0;
            v16 = 1;
            if (a4)
            {
              goto LABEL_17;
            }
          }

          else
          {
            v17 = v14 == 1;
            v18 = v13 >> 8;
            v19 = WORD1(v13) & 1;
            if (v14 == 1)
            {
              v16 = v19;
            }

            else
            {
              v16 = 0;
            }

            if (v17)
            {
              v15 = v18;
            }

            else
            {
              v15 = 0;
            }

            if (a4)
            {
LABEL_17:
              v20 = 1 << v12;
              v21 = a3;
              v22 = a4;
              do
              {
                v23 = *v21;
                if (*(*v21 + 46) == v15 && (*(v23 + 40) & v20) != 0)
                {
                  *(a2 + 68) |= v20;
                  *(*(a2 + 32) + 4 * v12) = v16;
                  v24 = *(a2 + 48);
                  *(*(a2 + 8) + 8 * v24) = v23;
                  v25 = *(a2 + 24);
                  *(*(a2 + 16) + 8 * v24) = v12;
                  v26 = *(a2 + 48);
                  *(v25 + 8 * v12) = v26;
                  *(a2 + 48) = v26 + 1;
                }

                ++v21;
                --v22;
              }

              while (v22);
              v11 = *(result + 104);
            }
          }

          if (++v12 >= v11)
          {
            goto LABEL_36;
          }
        }
      }
    }
  }

  v12 = 0;
LABEL_36:
  if ((*(a2 + 64) & 2) != 0 && v12 < *(result + 112))
  {
    do
    {
      v36 = *(a5 + 8 * v12);
      if (!v36)
      {
        goto LABEL_63;
      }

      v37 = *(v9 + 128);
      if (v37 == 3)
      {
        result = counters_count(v9, 1);
        v36 = *(a5 + 8 * v12);
        v37 = *(v9 + 128);
      }

      else if (*(a2 + 64))
      {
        result = 0;
      }

      else
      {
        result = *(*a2 + 104);
      }

      v38 = v36;
      if (v37 == 3)
      {
        v38 = v36;
      }

      if ((v36 & 0x20000) != 0 && v37 == 3)
      {
        LOBYTE(v39) = 0;
        v40 = 1;
        if (a4)
        {
          goto LABEL_53;
        }
      }

      else
      {
        v39 = v36 >> 8;
        v40 = WORD1(v36) & 1;
        if (v37 != 1)
        {
          v40 = 0;
          LOBYTE(v39) = 0;
        }

        if (a4)
        {
LABEL_53:
          v41 = a3;
          for (j = a4; j; --j)
          {
            v43 = *v41;
            v44 = *(*v41 + 44);
            if (v37 == 1 && v44 == v38)
            {
              if (*(v43 + 46) == v39)
              {
                goto LABEL_62;
              }
            }

            else if (v37 != 1 && v44 == v38)
            {
LABEL_62:
              *(a2 + 68) |= 1 << (result + v12);
              *(*(a2 + 32) + 4 * (result + v12)) = v40;
              v45 = *(a2 + 48);
              *(*(a2 + 8) + 8 * v45) = v43;
              v46 = *(a2 + 24);
              *(*(a2 + 16) + 8 * v45) = result + v12;
              v47 = *(a2 + 48);
              *(v46 + 8 * (result + v12)) = v47;
              *(a2 + 48) = v47 + 1;
              break;
            }

            ++v41;
          }
        }
      }

LABEL_63:
      ++v12;
    }

    while (v12 < *(v9 + 112));
  }

  return result;
}

void kpep_config_free(void **a1)
{
  if (a1)
  {
    free(a1[1]);
    free(a1[3]);
    free(a1[2]);
    free(a1[4]);
    free(a1[5]);

    free(a1);
  }
}

uint64_t kpep_config_add_event(uint64_t a1, uint64_t *a2, int a3, _DWORD *a4)
{
  v8 = 0;
  v7 = 0;
  result = 1;
  if (a1)
  {
    if (a2)
    {
      result = add_event_internal(a1, a2, a3, &v7, &v8, 0);
      if (a4)
      {
        if (result == 12)
        {
          *a4 = v8;
        }
      }
    }
  }

  return result;
}

uint64_t add_event_internal(uint64_t a1, uint64_t *a2, int a3, unint64_t *a4, _DWORD *a5, char a6)
{
  v11 = *a2;
  if ((*(*a2 + 48) & 1) == 0)
  {
LABEL_2:
    result = add_config_event_internal(a1, a2, a5, a4);
    if (!result)
    {
      v13 = *a4;
      v14 = *(a1 + 68);
      v11 = *a2;
LABEL_4:
      result = 0;
      *(a1 + 68) = (1 << v13) | v14;
      *(*(a1 + 32) + 4 * v13) = a3;
      v15 = *(a1 + 48);
      *(*(a1 + 8) + 8 * v15) = v11;
      v16 = *(a1 + 24);
      *(*(a1 + 16) + 8 * v15) = v13;
      v17 = *(a1 + 48);
      *(v16 + 8 * *a4) = v17;
      *(a1 + 48) = v17 + 1;
      return result;
    }

    return result;
  }

  if ((a6 & 1) != 0 || (v18 = *a1, *(*a1 + 128) <= 1u))
  {
    v19 = *(v11 + 32);
    if (!v19)
    {
      return 14;
    }

    result = kpep_db_event(*a1, v19, a2);
    if (!result)
    {
      goto LABEL_2;
    }
  }

  else
  {
    v14 = *(a1 + 68);
    v20 = *(v11 + 40);
    if ((v20 & v14) != 0)
    {
      *a5 |= 1 << *(*(a1 + 24) + 8 * __clz(__rbit32(v20)));
      return 12;
    }

    else
    {
      if (*(a1 + 72))
      {
        v21 = *(a1 + 64);
        if ((v21 & 1) == 0)
        {
          *(a1 + 64) = v21 | 1;
          v22 = v18[13];
          if (v22)
          {
            if (*(a1 + 56) == v22)
            {
              v23 = *(a1 + 24);
              v23[v22] = *v23;
              *v23 = -1;
            }
          }
        }

        v13 = __clz(__rbit32(v20));
        *a4 = v13;
        goto LABEL_4;
      }

      return 13;
    }
  }

  return result;
}

uint64_t kpep_config_remove_event(uint64_t *a1, unint64_t a2)
{
  if (!a1)
  {
    return 1;
  }

  if (a1[6] <= a2)
  {
    return 11;
  }

  v2 = a1[2];
  v3 = *(v2 + 8 * a2);
  v4 = *(a1 + 17) & ~(1 << v3);
  *(a1 + 17) = v4;
  v5 = *a1;
  if (*(*a1 + 132) & v4) == 0 && (*(*(a1[1] + 8 * a2) + 48))
  {
    *(a1 + 16) &= ~1u;
  }

  if ((*(v5 + 136) & v4) == 0 && (*(*(a1[1] + 8 * a2) + 48) & 1) == 0)
  {
    *(a1 + 16) &= 0xFFFFFFF9;
  }

  v6 = a1[3];
  *(v6 + 8 * v3) = -1;
  v7 = a1[7];
  if (v7)
  {
    for (i = 0; i < v7; ++i)
    {
      v9 = *(v6 + 8 * i);
      if (v9 > a2)
      {
        *(v6 + 8 * i) = v9 - 1;
        v7 = a1[7];
      }
    }
  }

  v10 = a1[4];
  *(a1[5] + 8 * v3) = 0;
  *(v10 + 4 * v3) = 0;
  v11 = a1[6] - a2;
  if (v11)
  {
    v12 = 0;
    v13 = 0;
    v14 = -1;
    do
    {
      v15 = v14 + a1[6];
      v16 = a1[1];
      v17 = *(v16 + 8 * v15);
      v18 = *(v2 + 8 * v15);
      *(v16 + 8 * v15) = v13;
      v2 = a1[2];
      *(v2 + 8 * v15) = v12;
      --v14;
      v12 = v18;
      v13 = v17;
      --v11;
    }

    while (v11);
    a2 = a1[6];
  }

  v19 = 0;
  a1[6] = a2 - 1;
  return v19;
}

uint64_t kpep_config_force_counters(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  v2 = *(a1 + 72);
  if (v2)
  {
    return 1;
  }

  result = 0;
  *(a1 + 64) &= ~4u;
  *(a1 + 72) = v2 | 1;
  return result;
}

uint64_t kpep_config_add_event_trigger(uint64_t a1, uint64_t *a2, int a3, uint64_t a4, _DWORD *a5)
{
  v10 = 0;
  v9 = 0;
  result = 1;
  if (a1 && a2)
  {
    result = add_event_internal(a1, a2, a3, &v9, &v10, 1);
    if (result)
    {
      if (a5)
      {
        if (result == 12)
        {
          *a5 = v10;
        }
      }
    }

    else
    {
      *(*(a1 + 40) + 8 * v9) = a4;
    }
  }

  return result;
}

uint64_t kpep_config_kpc_map(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = 1;
  if (a1 && a2)
  {
    v4 = *(a1 + 48);
    if (a3 < 8 * v4)
    {
      return 4;
    }

    if (*(a1 + 64))
    {
      v5 = 0;
      if (!v4)
      {
        return 0;
      }
    }

    else
    {
      v5 = *(*a1 + 104);
      if (!v4)
      {
        return 0;
      }
    }

    v6 = 0;
    v7 = *(a1 + 16);
    do
    {
      *(a2 + 8 * v6) = *(v7 + 8 * v6) - v5;
      ++v6;
    }

    while (*(a1 + 48) > v6);
    return 0;
  }

  return v3;
}

uint64_t kpep_config_events_count(uint64_t a1, void *a2)
{
  result = 1;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = *(a1 + 48);
    }
  }

  return result;
}

uint64_t kpep_config_events(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = 1;
  if (a1 && a2)
  {
    v3 = *(a1 + 48);
    if (a3 >= 8 * v3)
    {
      if (v3)
      {
        for (i = 0; i != v3; ++i)
        {
          *(a2 + 8 * i) = *(*(a1 + 8) + 8 * i);
        }

        return 0;
      }
    }

    else
    {
      return 4;
    }
  }

  return v3;
}

uint64_t kpep_config_kpc(void **a1, uint64_t *a2, unint64_t a3)
{
  result = 1;
  if (a1)
  {
    v5 = a2;
    if (a2)
    {
      if (*(*a1 + 32) == 3)
      {
        v7 = a1[8] & 0xFE;
      }

      else
      {
        v7 = *(a1 + 16);
      }

      v8 = counters_count(*a1, v7);
      if (a3 < 8 * v8)
      {
        return 4;
      }

      v9 = v8;
      v10 = *a1;
      if (a1[8])
      {
        if (*(v10 + 128) == 3)
        {
          v11 = counters_count(v10, 1);
          if (!v9)
          {
            return 0;
          }
        }

        else
        {
          v11 = 0;
          if (!v9)
          {
            return 0;
          }
        }
      }

      else
      {
        v11 = *(v10 + 104);
        if (!v9)
        {
          return 0;
        }
      }

      v12 = a1[3];
      do
      {
        v13 = v12[v11];
        if (v13 == -1)
        {
          v15 = 0;
        }

        else
        {
          v14 = a1[1][v13];
          if (*(v14 + 48))
          {
            v15 = 0;
          }

          else
          {
            v15 = *(v14 + 44);
          }

          v16 = *(a1[4] + v11);
          v17 = *(*a1 + 32);
          v18 = v15 | 0x20000;
          if (v17 != 3)
          {
            v18 = v15;
          }

          if (v16)
          {
            v15 = v18;
          }

          if (v17 == 1)
          {
            v19 = *(v14 + 46);
            if (v16)
            {
              v20 = 0x10000;
            }

            else
            {
              v20 = 196608;
            }

            v15 |= v20 | (v19 << 8) | 0x400000;
          }
        }

        *v5++ = v15;
        ++v11;
        --v9;
      }

      while (v9);
      return 0;
    }
  }

  return result;
}

uint64_t kpep_config_kpc_classes(uint64_t a1, unsigned int *a2)
{
  result = 1;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = *(a1 + 64) & 0xFFFFFFFB;
    }
  }

  return result;
}

uint64_t kpep_config_kpc_periods(uint64_t a1, void *a2, unint64_t a3)
{
  result = 1;
  if (a1 && a2)
  {
    v7 = *(a1 + 64);
    v8 = *a1;
    if (*(*a1 + 128) == 3)
    {
      v9 = counters_count(v8, 1);
      LOBYTE(v7) = v7 & 0xFE;
      v8 = *a1;
    }

    else if (v7)
    {
      v9 = 0;
    }

    else
    {
      v9 = v8[13];
    }

    v10 = counters_count(v8, v7);
    if (a3 >= 8 * v10)
    {
      v11 = 8 * v10;
      if (v10)
      {
        v12 = (*(a1 + 40) + 8 * v9);
        v13 = v10;
        v14 = a2;
        do
        {
          v15 = *v12++;
          *v14++ = v15;
          --v13;
        }

        while (v13);
      }

      if (a3 > v11)
      {
        bzero(&a2[v10], a3 - v11);
      }

      return 0;
    }

    else
    {
      return 4;
    }
  }

  return result;
}

uint64_t kpep_config_apply(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  v2 = *(a1 + 64);
  v3 = *a1;
  if (*(v3 + 32) == 3)
  {
    v4 = v2 & 0xFE;
  }

  else
  {
    v4 = v2;
  }

  v5 = 8 * counters_count(v3, v4);
  v6 = malloc_type_malloc(v5, 0x90638784uLL);
  if (!v6)
  {
    return 2;
  }

  v7 = v6;
  v8 = *(a1 + 64);
  v9 = kpep_config_kpc(a1, v6, v5);
  if (!v9)
  {
    v9 = 15;
    if (!kpc_force_all_ctrs_set())
    {
      if (kpc_set_config())
      {
        v9 = 15;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  free(v7);
  return v9;
}

uint64_t add_config_event_internal(void **a1, uint64_t *a2, _DWORD *a3, unint64_t *a4)
{
  v8 = *a2;
  if (a1[9])
  {
    v9 = *(v8 + 40);
    if (!v9)
    {
      return 16;
    }
  }

  else
  {
    v9 = *(v8 + 40);
    if ((v9 & ~*(*a1 + 35)) == 0)
    {
      return 13;
    }

    if (!v9)
    {
      return 16;
    }
  }

  v10 = __clz(__rbit32(v9));
  v11 = *a1;
  if ((a1[8] & 1) == 0 && v11[13] > v10)
  {
    return 16;
  }

  v13 = counters_count(v11, 3);
  if ((a1[9] & 1) == 0)
  {
    v13 -= counters_count(*a1, 4);
  }

  if (v13 <= v10)
  {
LABEL_17:
    if ((a1[9] & 1) != 0 || (*(*a1 + 35) & *(*a2 + 40)) == 0)
    {
      return 12;
    }

    return 13;
  }

  v14 = *a2;
  while ((*(v14 + 40) & (1 << v10)) == 0)
  {
LABEL_16:
    if (v13 == ++v10)
    {
      goto LABEL_17;
    }
  }

  if ((*(a1 + 17) & (1 << v10)) != 0)
  {
    *a3 |= 1 << LODWORD(a1[3][v10]);
    goto LABEL_16;
  }

  *a4 = v10;
  *a3 = 0;
  v15 = *(a1 + 16);
  if (!v15)
  {
    v15 = ~(4 * *(a1 + 72)) & 4;
  }

  result = 0;
  *(a1 + 16) = v15 | 2;
  return result;
}

uint64_t kpep_db_createx(const char *a1, int a2, void *a3)
{
  v15 = 0;
  v14 = 0;
  if ((~a2 & 3) == 0)
  {
    v4 = 0;
    v5 = 0;
    v6 = 1;
    goto LABEL_19;
  }

  v8 = a1;
  if (!a1)
  {
    v19 = 0;
    v17 = 0;
    v18 = 0;
    v16 = 4;
    if (!kpep_db_get_cpu_string_cpu_str)
    {
      if (sysctlbyname("hw.cputype", &v19, &v16, 0, 0) || sysctlbyname("hw.cpusubtype", &v18, &v16, 0, 0) || sysctlbyname("hw.cpufamily", &v17, &v16, 0, 0))
      {
        v6 = 5;
        goto LABEL_8;
      }

      if (snprintf(&kpep_db_get_cpu_string_cpu_str, 0x80uLL, "cpu_%x_%x_%x", v19, v18, v17) >= 0x80)
      {
        xmmword_280A68190 = 0u;
        unk_280A681A0 = 0u;
        xmmword_280A68170 = 0u;
        unk_280A68180 = 0u;
        xmmword_280A68150 = 0u;
        unk_280A68160 = 0u;
        v6 = 2;
        kpep_db_get_cpu_string_cpu_str = 0u;
        unk_280A68140 = 0u;
        goto LABEL_8;
      }
    }

    v8 = &kpep_db_get_cpu_string_cpu_str;
  }

  v9 = create_db_dict(v8, a2, &v15, &v14);
  if (v9)
  {
    v6 = v9;
LABEL_8:
    v4 = 0;
    v5 = 0;
    goto LABEL_19;
  }

  v4 = malloc_type_calloc(1uLL, 0x98uLL, 0x10F0040E9D8B980uLL);
  if (!v4)
  {
    v5 = 0;
    goto LABEL_18;
  }

  v10 = strdup(v8);
  v5 = v10;
  if (!v10)
  {
LABEL_18:
    v6 = 2;
    goto LABEL_19;
  }

  v4[1] = v10;
  v11 = v15;
  inited = init_db_from_plist(v4, v15);
  if (inited)
  {
    v6 = inited;
    goto LABEL_20;
  }

  *(v4 + 36) = a2;
  v6 = 0;
  if ((*(v4 + 149) & 1) == 0)
  {
    *(v4 + 148) = v14;
    *(v4 + 149) = 1;
  }

LABEL_19:
  v11 = v15;
LABEL_20:
  if (v11)
  {
    CFRelease(v11);
  }

  if (v6)
  {
    free(v5);
    free(v4);
  }

  else
  {
    *a3 = v4;
  }

  return v6;
}

uint64_t create_db_dict(uint64_t a1, char a2, void *a3, _BYTE *a4)
{
  v7 = *MEMORY[0x277CBECE8];
  v8 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%s.plist", a1);
  if (!v8)
  {
    return 2;
  }

  v9 = v8;
  fileURL = 0;
  if (a2)
  {
    v14 = 0;
  }

  else
  {
    v10 = getenv("KPEP_DB_PATH");
    if (v10)
    {
      v11 = CFStringCreateWithCString(v7, v10, 0x600u);
      if (!v11)
      {
        v14 = 2;
LABEL_20:
        CFRelease(v9);
        return v14;
      }

      v12 = v11;
      v13 = create_plist_url(v11, v9, &fileURL);
      CFRelease(v12);
      if (!v13)
      {
        goto LABEL_13;
      }
    }

    v14 = create_plist_url(@"/usr/local/share/kpep/", v9, &fileURL);
    if (!v14)
    {
      *a4 = 1;
      goto LABEL_13;
    }
  }

  if ((a2 & 2) == 0)
  {
    v14 = create_plist_url(@"/usr/share/kpep/", v9, &fileURL);
  }

  if (v14)
  {
    goto LABEL_20;
  }

LABEL_13:
  v15 = fileURL;
  v16 = CFReadStreamCreateWithFile(v7, fileURL);
  v17 = v16;
  if (!v16)
  {
    v18 = 0;
    v14 = 3;
    goto LABEL_25;
  }

  if (!CFReadStreamOpen(v16))
  {
    v14 = 3;
LABEL_24:
    CFRelease(v17);
    v18 = 0;
    LODWORD(v17) = 0;
    goto LABEL_25;
  }

  v18 = CFPropertyListCreateWithStream(v7, v17, 0, 1uLL, 0, 0);
  CFReadStreamClose(v17);
  CFRelease(v17);
  if (!v18)
  {
    LODWORD(v17) = 0;
    v14 = 10;
    goto LABEL_25;
  }

  v19 = CFGetTypeID(v18);
  if (v19 != CFDictionaryGetTypeID())
  {
    v14 = 10;
    v17 = v18;
    goto LABEL_24;
  }

  v14 = 0;
  LODWORD(v17) = 1;
LABEL_25:
  if (v15)
  {
    CFRelease(v15);
  }

  CFRelease(v9);
  if (v17)
  {
    v14 = 0;
    *a3 = v18;
  }

  return v14;
}

uint64_t init_db_from_plist(uint64_t a1, const __CFDictionary *a2)
{
  v50 = *(a1 + 96);
  v51 = *(a1 + 112);
  v52 = *(a1 + 128);
  v53 = *(a1 + 144);
  v46 = *(a1 + 32);
  v47 = *(a1 + 48);
  v48 = *(a1 + 64);
  v49 = *(a1 + 80);
  v44 = *a1;
  v45 = *(a1 + 16);
  cstr_val = get_cstr_val(a2, @"name", a1, 0);
  if (cstr_val)
  {
    goto LABEL_15;
  }

  if (!get_BOOL_val(a2, @"internal", (a1 + 148)))
  {
    *(a1 + 149) = 1;
  }

  Value = CFDictionaryGetValue(a2, @"version");
  if (Value)
  {
    v6 = Value;
    CFRetain(Value);
    v7 = CFGetTypeID(v6);
    if (v7 == CFArrayGetTypeID() && CFArrayGetCount(v6) == 2)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v6, 0);
      CFRetain(ValueAtIndex);
      v9 = CFGetTypeID(ValueAtIndex);
      if (v9 == CFNumberGetTypeID())
      {
        LODWORD(valuePtr) = 0;
        cstr_val = 10;
        if (CFNumberGetValue(ValueAtIndex, kCFNumberIntType, &valuePtr))
        {
          if (valuePtr == 1)
          {
            cstr_val = 0;
          }

          else
          {
            cstr_val = 10;
          }
        }
      }

      else
      {
        cstr_val = 10;
      }

      CFRelease(v6);
      if (ValueAtIndex)
      {
        CFRelease(ValueAtIndex);
      }

      if (cstr_val)
      {
        goto LABEL_15;
      }

      v12 = CFDictionaryGetValue(a2, @"system");
      if (!v12)
      {
        goto LABEL_14;
      }

      v13 = v12;
      CFRetain(v12);
      v14 = CFGetTypeID(v13);
      if (v14 == CFDictionaryGetTypeID())
      {
        v15 = CFDictionaryGetValue(v13, @"cpu");
        if (v15)
        {
          v16 = v15;
          CFRetain(v15);
          v54 = 0;
          get_uint_val(v16, @"fixed_counters", (a1 + 132));
          v17 = *(a1 + 132);
          v18 = vcnt_s8(v17);
          v18.i16[0] = vaddlv_u8(v18);
          *(a1 + 104) = v18.u32[0];
          if (v17)
          {
            v19 = malloc_type_calloc(v18.u32[0], 8uLL, 0x2004093837F09uLL);
            *(a1 + 48) = v19;
            if (!v19)
            {
              cstr_val = 2;
              goto LABEL_40;
            }
          }

          get_uint_val(v16, @"config_counters", (a1 + 136));
          v20 = vcnt_s8(*(a1 + 136));
          v20.i16[0] = vaddlv_u8(v20);
          *(a1 + 112) = v20.u32[0];
          get_uint_val(v16, @"power_counters", (a1 + 140));
          v21 = vcnt_s8(*(a1 + 140));
          v21.i16[0] = vaddlv_u8(v21);
          *(a1 + 120) = v21.u32[0];
          v22 = get_cstr_val(v16, @"architecture", &v54, 0);
          if (!v22)
          {
            v23 = v54;
            if (!strcmp(v54, "i386"))
            {
              v24 = 0;
            }

            else if (!strcmp(v23, "x86_64"))
            {
              v24 = 1;
            }

            else if (!strcmp(v23, "arm"))
            {
              v24 = 2;
            }

            else
            {
              if (strcmp(v23, "arm64"))
              {
                cstr_val = 8;
                goto LABEL_40;
              }

              v24 = 3;
            }

            *(a1 + 128) = v24;
            v22 = get_cstr_val(v16, @"marketing_name", (a1 + 16), 0);
            if (!v22)
            {
              v26 = CFDictionaryGetValue(v16, @"events");
              if (v26)
              {
                v27 = v26;
                CFRetain(v26);
                v55 = 0;
                valuePtr = 0;
                v28 = dict_copy_items(v27, (a1 + 88), &v55, &valuePtr);
                if (v28)
                {
                  cstr_val = v28;
                  v29 = 0;
                  goto LABEL_62;
                }

                v30 = malloc_type_calloc(*(a1 + 88), 0x38uLL, 0x101004029F4E078uLL);
                *(a1 + 40) = v30;
                if (v30)
                {
                  v29 = malloc_type_calloc(*(a1 + 88), 8uLL, 0x2004093837F09uLL);
                  if (v29)
                  {
                    if (*(a1 + 88))
                    {
                      v31 = 0;
                      v32 = 0;
                      while (1)
                      {
                        v33 = event_init(a1, valuePtr[v32], v55[v32], *(a1 + 40) + v31);
                        if (v33)
                        {
                          cstr_val = v33;
                          goto LABEL_62;
                        }

                        v34 = *(a1 + 40);
                        v29[v32] = v34 + v31;
                        if (*(v34 + v31 + 48))
                        {
                          if (!*(a1 + 132))
                          {
                            cstr_val = 10;
LABEL_62:
                            free(v55);
                            free(valuePtr);
                            free(v29);
                            if (cstr_val)
                            {
                              v36 = *(a1 + 32);
                              if (v36)
                              {
                                CFRelease(v36);
                              }

                              free(*(a1 + 40));
                              *(a1 + 40) = 0;
                            }

                            else
                            {
                              v37 = CFDictionaryGetValue(v16, @"aliases");
                              if (v37)
                              {
                                v38 = v37;
                                CFRetain(v37);
                                cstr_val = init_db_from_aliases_dict(a1, v38);
                                CFRelease(v27);
                                v27 = v38;
                              }

                              else
                              {
                                cstr_val = 0;
                              }
                            }

                            CFRelease(v27);
                            free(v54);
                            if (!cstr_val)
                            {
LABEL_44:
                              CFRelease(v16);
                              CFRelease(v13);
                              if (!cstr_val)
                              {
                                return cstr_val;
                              }

                              goto LABEL_15;
                            }

LABEL_41:
                            v25 = *(a1 + 32);
                            if (v25)
                            {
                              CFRelease(v25);
                            }

                            free(*(a1 + 40));
                            *(a1 + 40) = 0;
                            goto LABEL_44;
                          }

                          *(*(a1 + 48) + 8 * __clz(__rbit32(*(v34 + v31 + 40)))) = v34 + v31;
                        }

                        ++v32;
                        v35 = *(a1 + 88);
                        v31 += 56;
                        if (v35 <= v32)
                        {
                          goto LABEL_72;
                        }
                      }
                    }

                    v35 = 0;
LABEL_72:
                    v39 = *(a1 + 104);
                    if (v39)
                    {
                      v40 = 0;
                      for (i = 0; i < v39; ++i)
                      {
                        if (!*(*(a1 + 48) + 8 * i))
                        {
                          v42 = *(a1 + 40) + 56 * *(a1 + 88) + v40;
                          *(v42 + 48) |= 1u;
                          *(v42 + 40) = 1 << i;
                          *(*(a1 + 48) + 8 * i) = v42;
                          v39 = *(a1 + 104);
                        }

                        v40 += 56;
                      }

                      v35 = *(a1 + 88);
                    }

                    v43 = CFDictionaryCreate(*MEMORY[0x277CBECE8], v55, v29, v35, MEMORY[0x277CBED60], 0);
                    if (v43)
                    {
                      cstr_val = 0;
                      *(a1 + 32) = v43;
                      goto LABEL_62;
                    }
                  }
                }

                else
                {
                  v29 = 0;
                }

                cstr_val = 2;
                goto LABEL_62;
              }

              cstr_val = 10;
LABEL_40:
              free(v54);
              goto LABEL_41;
            }
          }

          cstr_val = v22;
          goto LABEL_40;
        }
      }

      v10 = v13;
    }

    else
    {
      v10 = v6;
    }

    CFRelease(v10);
  }

LABEL_14:
  cstr_val = 10;
LABEL_15:
  free(*a1);
  *(a1 + 96) = v50;
  *(a1 + 112) = v51;
  *(a1 + 128) = v52;
  *(a1 + 144) = v53;
  *(a1 + 32) = v46;
  *(a1 + 48) = v47;
  *(a1 + 64) = v48;
  *(a1 + 80) = v49;
  *a1 = v44;
  *(a1 + 16) = v45;
  return cstr_val;
}

uint64_t kpep_db_name(uint64_t a1, void *a2)
{
  result = 1;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = *(a1 + 16);
    }
  }

  return result;
}

uint64_t kpep_db_serialize(uint64_t a1, UInt8 **a2, CFStringRef *a3)
{
  v4 = 0;
  theDict = 0;
  v5 = 1;
  if (!a1 || !a2)
  {
    goto LABEL_19;
  }

  v8 = *(a1 + 24);
  if (v8)
  {
    v9 = 0;
LABEL_5:
    Length = CFDataGetLength(v8);
    v4 = Length;
    if (Length)
    {
      v11 = malloc_type_malloc(Length, 0x6F56B54uLL);
      *a2 = v11;
      if (v11)
      {
        v18.location = 0;
        v18.length = v4;
        CFDataGetBytes(v8, v18, v11);
        v5 = 0;
        goto LABEL_17;
      }
    }

    goto LABEL_16;
  }

  v12 = *(a1 + 8);
  if (!v12)
  {
    v4 = 0;
    v5 = 7;
    goto LABEL_19;
  }

  v13 = create_db_dict(v12, *(a1 + 144), &theDict, &v16);
  if (v13)
  {
    v5 = v13;
    v4 = 0;
    v9 = theDict;
    goto LABEL_17;
  }

  v4 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], *(a1 + 8), 0x600u);
  v9 = theDict;
  if (v4)
  {
    CFDictionarySetValue(theDict, @"id", v4);
    CFRelease(v4);
    Data = CFPropertyListCreateData(0, v9, kCFPropertyListBinaryFormat_v1_0, 0, 0);
    if (Data)
    {
      v8 = Data;
      *(a1 + 24) = Data;
      goto LABEL_5;
    }

    v4 = 0;
  }

LABEL_16:
  v5 = 2;
LABEL_17:
  if (v9)
  {
    CFRelease(v9);
  }

LABEL_19:
  *a3 = v4;
  return v5;
}

uint64_t kpep_db_deserialize(const UInt8 *a1, CFIndex a2, void *a3)
{
  v6 = malloc_type_calloc(1uLL, 0x98uLL, 0x10F0040E9D8B980uLL);
  v7 = CFDataCreateWithBytesNoCopy(0, a1, a2, *MEMORY[0x277CBED00]);
  if (v7)
  {
    v8 = v7;
    v9 = CFPropertyListCreateWithData(0, v7, 0, 0, 0);
    if (v9)
    {
      v10 = v9;
      v11 = CFGetTypeID(v9);
      if (v11 == CFDictionaryGetTypeID())
      {
        cstr_val = get_cstr_val(v10, @"id", v6 + 1, 0);
        if (cstr_val || (cstr_val = init_db_from_plist(v6, v10), cstr_val))
        {
          v13 = cstr_val;
        }

        else
        {
          v16 = CFDataCreate(0, a1, a2);
          v6[3] = v16;
          v13 = 2 * (v16 == 0);
        }
      }

      else
      {
        v13 = 10;
      }

      CFRelease(v8);
      CFRelease(v10);
      if (!v13)
      {
        *a3 = v6;
        return v13;
      }
    }

    else
    {
      CFRelease(v8);
      v13 = 10;
    }
  }

  else
  {
    v13 = 2;
  }

  v14 = v6[3];
  if (v14)
  {
    CFRelease(v14);
  }

  free(v6);
  return v13;
}

uint64_t kpep_db_events_count(uint64_t a1, void *a2)
{
  result = 1;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = *(a1 + 88);
    }
  }

  return result;
}

uint64_t kpep_db_architecture(uint64_t a1, _DWORD *a2)
{
  result = 1;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = *(a1 + 128);
    }
  }

  return result;
}

uint64_t kpep_db_events(uint64_t a1, const void **values, unint64_t a3)
{
  result = 1;
  if (a1 && values)
  {
    if (a3 >= 8 * *(a1 + 88))
    {
      CFDictionaryGetKeysAndValues(*(a1 + 32), 0, values);
      qsort(values, *(a1 + 88), 8uLL, event_cmp);
      return 0;
    }

    else
    {
      return 4;
    }
  }

  return result;
}

uint64_t kpep_db_aliases_count(uint64_t a1, void *a2)
{
  result = 1;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = *(a1 + 96);
    }
  }

  return result;
}

uint64_t kpep_db_aliases(uint64_t a1, void *a2, size_t a3)
{
  v3 = 0;
  v4 = 1;
  if (!a1)
  {
    v6 = 0;
    goto LABEL_14;
  }

  v6 = 0;
  if (a2)
  {
    v8 = 8 * *(a1 + 96);
    if (v8 > a3)
    {
      v3 = 0;
      v6 = 0;
      v4 = 4;
      goto LABEL_14;
    }

    v3 = malloc_type_malloc(v8, 0x6004044C4A2DFuLL);
    if (v3)
    {
      v6 = malloc_type_malloc(8 * *(a1 + 96), 0x2004093837F09uLL);
      if (v6)
      {
        CFDictionaryGetKeysAndValues(*(a1 + 56), v3, v6);
        v9 = *(a1 + 96);
        if (v9)
        {
          v10 = v6;
          v11 = a2;
          v12 = *(a1 + 96);
          do
          {
            v13 = *v10++;
            *v11++ = *(v13 + 24);
            --v12;
          }

          while (v12);
        }

        qsort(a2, v9, 8uLL, strcmp_void);
        v4 = 0;
        goto LABEL_14;
      }
    }

    else
    {
      v6 = 0;
    }

    v4 = 2;
  }

LABEL_14:
  free(v3);
  free(v6);
  return v4;
}

uint64_t kpep_db_counters_count(void *a1, char a2, uint64_t *a3)
{
  result = 1;
  if (a1)
  {
    if (a3)
    {
      v6 = counters_count(a1, a2);
      result = 0;
      *a3 = v6;
    }
  }

  return result;
}

uint64_t kpep_db_event(uint64_t a1, const char *a2, void *a3)
{
  Value = 0;
  v5 = 1;
  if (a1 && a2)
  {
    v7 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], a2, 0x600u);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 56);
      if (v9 && (v10 = CFDictionaryGetValue(v9, v8)) != 0)
      {
        Value = v10;
        v5 = 0;
      }

      else
      {
        Value = CFDictionaryGetValue(*(a1 + 32), v8);
        if (Value)
        {
          v5 = 0;
        }

        else
        {
          v5 = 11;
        }
      }

      CFRelease(v8);
    }

    else
    {
      Value = 0;
      v5 = 2;
    }
  }

  *a3 = Value;
  return v5;
}

uint64_t kpep_db_is_internal(uint64_t a1, _BYTE *a2)
{
  result = 1;
  if (a1 && a2)
  {
    if (*(a1 + 149) == 1)
    {
      result = 0;
      *a2 = *(a1 + 148);
    }

    else
    {
      return 9;
    }
  }

  return result;
}

void kpep_db_free(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = *(a1 + 56);
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = *(a1 + 24);
    if (v4)
    {
      CFRelease(v4);
    }

    if (*(a1 + 88))
    {
      v5 = 0;
      v6 = 0;
      do
      {
        event_free(*(a1 + 40) + v5);
        ++v6;
        v5 += 56;
      }

      while (*(a1 + 88) > v6);
    }

    free(*(a1 + 40));
    free(*(a1 + 48));
    free(*a1);
    free(*(a1 + 16));
    free(*(a1 + 8));

    free(a1);
  }
}

uint64_t init_db_from_aliases_dict(uint64_t a1, const void *a2)
{
  v17 = 0;
  keys = 0;
  v3 = dict_copy_items(a2, (a1 + 96), &keys, &v17);
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    goto LABEL_3;
  }

  v7 = *(a1 + 96);
  if (!v7)
  {
    v5 = 0;
    v4 = 0;
    goto LABEL_3;
  }

  v5 = malloc_type_malloc(8 * v7, 0x2004093837F09uLL);
  if (!v5)
  {
LABEL_20:
    v4 = 2;
    goto LABEL_3;
  }

  if (!*(a1 + 96))
  {
    v15 = 0;
LABEL_18:
    v16 = CFDictionaryCreate(*MEMORY[0x277CBECE8], keys, v5, v15, MEMORY[0x277CBED60], 0);
    if (v16)
    {
      v4 = 0;
      *(a1 + 56) = v16;
      goto LABEL_3;
    }

    goto LABEL_20;
  }

  v8 = 0;
  while (1)
  {
    v9 = *(v17 + v8);
    v10 = CFGetTypeID(v9);
    if (v10 != CFStringGetTypeID() || (Value = CFDictionaryGetValue(*(a1 + 32), v9)) == 0 || (v12 = Value, Value[3]))
    {
      v4 = 10;
      goto LABEL_3;
    }

    v5[v8] = Value;
    v13 = alloc_cstr(keys[v8], Value + 3, 0);
    if (v13)
    {
      break;
    }

    if (!*v12)
    {
      v14 = strdup(v12[3]);
      *v12 = v14;
      if (!v14)
      {
        goto LABEL_20;
      }
    }

    ++v8;
    v15 = *(a1 + 96);
    if (v8 >= v15)
    {
      goto LABEL_18;
    }
  }

  v4 = v13;
LABEL_3:
  free(keys);
  free(v17);
  free(v5);
  return v4;
}

uint64_t create_plist_url(CFStringRef filePath, uint64_t a2, const __CFURL **a3)
{
  v5 = *MEMORY[0x277CBECE8];
  v6 = CFURLCreateWithFileSystemPath(*MEMORY[0x277CBECE8], filePath, kCFURLPOSIXPathStyle, 1u);
  if (!v6)
  {
    return 2;
  }

  v7 = v6;
  if (!CFURLHasDirectoryPath(v6) || (v8 = MEMORY[0x277CA75A0](v5, a2, 0, 0, v7)) == 0)
  {
    v10 = 6;
LABEL_7:
    CFRelease(v7);
    return v10;
  }

  v9 = v8;
  if (!CFURLResourceIsReachable(v8, 0))
  {
    CFRelease(v9);
    v10 = 7;
    goto LABEL_7;
  }

  CFRelease(v7);
  v10 = 0;
  *a3 = v9;
  return v10;
}

uint64_t kpep_event_name(void *a1, void *a2)
{
  result = 1;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = *a1;
    }
  }

  return result;
}

uint64_t kpep_event_alias(uint64_t a1, void *a2)
{
  result = 1;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = *(a1 + 24);
    }
  }

  return result;
}

uint64_t kpep_event_description(uint64_t a1, void *a2)
{
  result = 1;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = *(a1 + 8);
    }
  }

  return result;
}

uint64_t kpep_event_errata(uint64_t a1, void *a2)
{
  result = 1;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = *(a1 + 16);
    }
  }

  return result;
}

uint64_t event_init(uint64_t a1, const __CFDictionary *a2, const __CFString *a3, uint64_t a4)
{
  v11 = 0;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0;
  if (alloc_cstr(a3, a4, 0) || CFDictionaryContainsKey(a2, @"description") && get_cstr_val(a2, @"description", (a4 + 8), 0))
  {
    goto LABEL_2;
  }

  if (CFDictionaryContainsKey(a2, @"errata"))
  {
    get_cstr_val(a2, @"errata", (a4 + 16), 0);
  }

  if (CFDictionaryContainsKey(a2, @"fixed_counter"))
  {
    *(a4 + 48) |= 1u;
    get_cstr_val(a2, @"fallback", (a4 + 32), 0);
  }

  else
  {
    if (get_uint_val(a2, @"number", &v11) || HIWORD(v11))
    {
      goto LABEL_2;
    }

    *(a4 + 44) = v11;
  }

  if (CFDictionaryContainsKey(a2, @"counters_mask"))
  {
    v10 = 0;
    if (get_uint_val(a2, @"counters_mask", &v10))
    {
      goto LABEL_2;
    }

    v8 = v10;
  }

  else
  {
    v8 = *(a1 + 136);
  }

  *(a4 + 40) = v8;
  if (*(a1 + 128) != 1)
  {
    return 0;
  }

  v9 = 0;
  result = get_uint_val(a2, @"umask", &v9);
  if (!result)
  {
    *(a4 + 46) = v9;
    return result;
  }

LABEL_2:
  free(*a4);
  free(*(a4 + 8));
  return 1;
}

void event_free(uint64_t a1)
{
  if (a1)
  {
    free(*a1);
    free(*(a1 + 8));
    free(*(a1 + 24));
    free(*(a1 + 16));
    v2 = *(a1 + 32);

    free(v2);
  }
}

uint64_t event_cmp(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 44);
  v3 = *(*a2 + 44);
  if (v2 < v3)
  {
    return 0xFFFFFFFFLL;
  }

  if (v2 != v3)
  {
    return 1;
  }

  v5 = *(*a1 + 46);
  v6 = *(*a2 + 46);
  if (v5 < v6)
  {
    return 0xFFFFFFFFLL;
  }

  return v5 != v6;
}

char *kpep_strerror(unsigned int a1)
{
  if (a1 > 0xF)
  {
    return "unknown error";
  }

  if (a1 != 15)
  {
    return error_names[a1];
  }

  v3 = *__error();

  return strerror(v3);
}

uint64_t counters_count(void *a1, char a2)
{
  if ((a2 & 2) == 0)
  {
    if ((a2 & 4) != 0)
    {
      v2 = a1[15];
      if ((a2 & 1) == 0)
      {
        return v2;
      }
    }

    else
    {
      v2 = 0;
      if ((a2 & 1) == 0)
      {
        return v2;
      }
    }

    goto LABEL_8;
  }

  v2 = a1[14];
  if ((a2 & 4) != 0)
  {
    v2 -= a1[15];
  }

  if (a2)
  {
LABEL_8:
    v2 += a1[13];
  }

  return v2;
}

uint64_t get_cstr_val(const __CFDictionary *a1, const void *a2, void *a3, CFIndex *a4)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (!Value)
  {
    return 10;
  }

  v7 = Value;
  v8 = CFGetTypeID(Value);
  if (v8 != CFStringGetTypeID())
  {
    return 10;
  }

  return alloc_cstr(v7, a3, a4);
}

uint64_t alloc_cstr(const __CFString *a1, void *a2, CFIndex *a3)
{
  v6 = CFStringGetLength(a1) + 1;
  v7 = malloc_type_malloc(v6, 0xFB3D7B25uLL);
  if (v7 && CFStringGetCString(a1, v7, v6, 0x600u))
  {
    *a2 = v7;
    result = 0;
    if (a3)
    {
      *a3 = v6;
    }
  }

  else
  {
    free(v7);
    return 2;
  }

  return result;
}

uint64_t get_uint_val(const __CFDictionary *a1, const void *a2, int *a3)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (!Value)
  {
    return 10;
  }

  v5 = Value;
  v6 = CFGetTypeID(Value);
  if (v6 != CFNumberGetTypeID())
  {
    return 10;
  }

  valuePtr = -1;
  v7 = CFNumberGetValue(v5, kCFNumberIntType, &valuePtr);
  result = 10;
  if (v7)
  {
    if ((valuePtr & 0x80000000) == 0)
    {
      result = 0;
      *a3 = valuePtr;
    }
  }

  return result;
}

uint64_t get_BOOL_val(const __CFDictionary *a1, const void *a2, BOOL *a3)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (!Value)
  {
    return 10;
  }

  v5 = Value;
  v6 = CFGetTypeID(Value);
  if (v6 != CFBooleanGetTypeID())
  {
    return 10;
  }

  v7 = CFBooleanGetValue(v5);
  result = 0;
  *a3 = v7 != 0;
  return result;
}

uint64_t dict_copy_items(const void *a1, CFIndex *a2, void *a3, const void ***a4)
{
  v8 = CFGetTypeID(a1);
  if (v8 != CFDictionaryGetTypeID() || (Count = CFDictionaryGetCount(a1), Count < 0))
  {
    v12 = 0;
    v15 = 10;
LABEL_8:
    free(v12);
    return v15;
  }

  v10 = Count;
  v11 = 8 * Count;
  v12 = malloc_type_malloc(8 * Count, 0x6004044C4A2DFuLL);
  if (!v12 || (v13 = malloc_type_malloc(v11, 0xC0040B8AA526DuLL)) == 0)
  {
    v15 = 2;
    goto LABEL_8;
  }

  v14 = v13;
  CFDictionaryGetKeysAndValues(a1, v12, v13);
  v15 = 0;
  *a2 = v10;
  *a3 = v12;
  *a4 = v14;
  return v15;
}

uint64_t dict_set_string(__CFDictionary *a1, const char *a2)
{
  v4 = CFStringCreateWithCString(0, a2, 0x600u);
  if (!v4)
  {
    return 1;
  }

  v5 = v4;
  CFDictionarySetValue(a1, a2, v4);
  CFRelease(v5);
  return 0;
}

uint64_t kperf_log()
{
  if (kperf_log_init_once != -1)
  {
    kperf_log_cold_1();
  }

  return kperf_log_log;
}

os_log_t __kperf_log_block_invoke()
{
  result = os_log_create("com.apple.libkperf", "log");
  kperf_log_log = result;
  return result;
}

void *chunkbuf_init(uint64_t a1, int a2, char a3)
{
  *(a1 + 64) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *a1 = a2;
  *(a1 + 8) = a3;
  v4 = lseek(a2, 0, 1);
  *(a1 + 40) = v4;
  *(a1 + 9) = v4 != -1;
  if (v4 == -1)
  {
    *(a1 + 40) = 0;
  }

  *(a1 + 24) = 1024;
  result = malloc_type_malloc(0x400uLL, 0x2E0D7E75uLL);
  *(a1 + 16) = result;
  return result;
}

uint64_t shipout(uint64_t a1, char *__buf, size_t __nbyte)
{
  if (*(a1 + 8) != 1)
  {
    return 9;
  }

  v3 = __nbyte;
  *(a1 + 32) = 0;
  if (!__nbyte)
  {
    return *(a1 + 4);
  }

  while (1)
  {
    v6 = write(*a1, __buf, v3);
    if (v6 < 0)
    {
      break;
    }

    *(a1 + 40) += v6;
    __buf += v6;
    v3 -= v6;
LABEL_6:
    if (!v3)
    {
      return *(a1 + 4);
    }
  }

  if (*__error() == 4)
  {
    goto LABEL_6;
  }

  v8 = *__error();
  result = *(a1 + 4);
  if (v8)
  {
    if (!result)
    {
      *(a1 + 4) = v8;
      return v8;
    }
  }

  return result;
}

uint64_t chunkbuf_align(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != 1)
  {
    return 9;
  }

  if ((a2 ^ (a2 - 1)) <= a2 - 1)
  {
    return 22;
  }

  v3 = *(a1 + 32);
  v4 = *(a1 + 24);
  v5 = (a2 - 1) & -(*(a1 + 40) + v3);
  if (v5 + v3 <= v4)
  {
    bzero((*(a1 + 16) + v3), v5);
    v8 = *(a1 + 32) + v5;
  }

  else
  {
    v6 = v4 - v3;
    bzero((*(a1 + 16) + v3), v4 - v3);
    result = shipout(a1, *(a1 + 16), *(a1 + 24));
    if (result)
    {
      return result;
    }

    v8 = v5 - v6;
    bzero(*(a1 + 16), *(a1 + 24));
    for (i = *(a1 + 24); v8 > i; v8 -= i)
    {
      result = shipout(a1, *(a1 + 16), i);
      if (result)
      {
        return result;
      }

      i = *(a1 + 24);
    }
  }

  result = 0;
  *(a1 + 32) = v8;
  return result;
}

uint64_t chunkbuf_write_internal(uint64_t a1, char *__src, size_t a3)
{
  v4 = __src;
  v7 = *(a1 + 24);
  v6 = *(a1 + 32);
  v9 = v7 - v6;
  v8 = v7 == v6;
  v10 = v7 - v6 + v7;
  if (!v8 && v10 > a3)
  {
    memcpy((*(a1 + 16) + v6), __src, v9);
    v6 = *(a1 + 32) + v9;
    *(a1 + 32) = v6;
    v4 += v9;
    a3 -= v9;
  }

  result = shipout(a1, *(a1 + 16), v6);
  if (!result)
  {
    if (a3 >= *(a1 + 24))
    {

      return shipout(a1, v4, a3);
    }

    else
    {
      memcpy(*(a1 + 16), v4, a3);
      result = 0;
      *(a1 + 32) = a3;
    }
  }

  return result;
}

uint64_t chunkbuf_chunk_begin(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (*(a1 + 8) != 1)
  {
    return 9;
  }

  v11 = v3;
  v12 = v4;
  v6 = *(a1 + 52);
  if (v6 < 2)
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 24);
    *(a1 + 8 * v6 + 56) = v8 + *(a1 + 40);
    *&v10 = __PAIR64__(a3, a2);
    *(&v10 + 1) = -1;
    if (v8 + 16 <= v9)
    {
      *(*(a1 + 16) + v8) = v10;
      *(a1 + 32) += 16;
    }

    else
    {
      result = chunkbuf_write_internal(a1, &v10, 0x10uLL);
      if (result)
      {
        return result;
      }
    }

    result = 0;
    ++*(a1 + 52);
  }

  else
  {
    result = *(a1 + 4);
    if (!result)
    {
      result = 22;
      *(a1 + 4) = 22;
    }
  }

  return result;
}

uint64_t chunkbuf_chunk_end(uint64_t a1)
{
  result = pop_chunk(a1, 0);
  if (!result)
  {

    return chunkbuf_align(a1, 8);
  }

  return result;
}

uint64_t pop_chunk(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != 1)
  {
    return 9;
  }

  __buf[3] = v2;
  __buf[4] = v3;
  v5 = *(a1 + 52);
  if (!v5)
  {
    return 22;
  }

  v6 = v5 - 1;
  *(a1 + 52) = v6;
  v7 = *(a1 + 8 * v6 + 56);
  if (v7 == -1)
  {
    return 22;
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  __buf[0] = a2 - v7 + v9 + v8 - 16;
  v10 = v7 + 8;
  if (v7 + 8 >= v9)
  {
    result = 0;
    *(*(a1 + 16) + v7 + 8 - v9) = __buf[0];
  }

  else if (v7 + 16 <= v9 || (result = shipout(a1, *(a1 + 16), v8), !result))
  {
    v12 = pwrite(*a1, __buf, 8uLL, v10);
    if (v12 < 0)
    {
      v13 = *__error();
      result = *(a1 + 4);
      if (v13 && !result)
      {
        *(a1 + 4) = v13;
        return v13;
      }
    }

    else if (v12 == 8)
    {
      return 0;
    }

    else
    {
      result = *(a1 + 4);
      if (!result)
      {
        result = 5;
        *(a1 + 4) = 5;
      }
    }
  }

  return result;
}

uint64_t chunkbuf_write_chunk_end(void *a1, void *a2, size_t a3)
{
  result = pop_chunk(a1, a3);
  if (!result)
  {
    v7 = a1[4];
    if (v7 + a3 <= a1[3])
    {
      memcpy((a1[2] + v7), a2, a3);
      a1[4] += a3;
    }

    else
    {
      result = chunkbuf_write_internal(a1, a2, a3);
      if (result)
      {
        return result;
      }
    }

    return chunkbuf_align(a1, 8);
  }

  return result;
}

uint64_t chunkbuf_read(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (*(a1 + 8))
  {
    return 9;
  }

  v4 = a2 * a3;
  v5 = !is_mul_ok(a2, a3);
  if (a2 * a3)
  {
    v6 = !v5;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    *__error() = 22;
    return -1;
  }

  v8 = *(a1 + 48);
  v9 = v4 + v8;
  v10 = *(a1 + 32);
  if (v4 + v8 <= v10)
  {
    return v10 - v8;
  }

  v11 = *(a1 + 24);
  if (v9 > v11)
  {
    trunc_prefix(a1);
    v8 = *(a1 + 48);
    v11 = *(a1 + 24);
    v9 = v4 + v8;
  }

  if (v9 > v11)
  {
    v12 = malloc_type_realloc(*(a1 + 16), v4, 0x32B28FCDuLL);
    if (!v12)
    {
      v14 = *(a1 + 4);
      if (!v14)
      {
        v14 = 12;
        *(a1 + 4) = 12;
      }

      *__error() = v14;
      return -1;
    }

    *(a1 + 16) = v12;
    *(a1 + 24) = v4;
    v8 = *(a1 + 48);
    v9 = v4 + v8;
  }

  v10 = *(a1 + 32);
  if (v9 <= v10)
  {
    return v10 - v8;
  }

  while (1)
  {
    v13 = read(*a1, (*(a1 + 16) + v10), v9 - v10);
    if (v13 < 1)
    {
      break;
    }

    v10 = *(a1 + 32) + v13;
    *(a1 + 32) = v10;
LABEL_21:
    if (v9 <= v10)
    {
      goto LABEL_27;
    }
  }

  if (!v13)
  {
    v10 = *(a1 + 32);
LABEL_27:
    v8 = *(a1 + 48);
    return v10 - v8;
  }

  if (*__error() == 4)
  {
    v10 = *(a1 + 32);
    goto LABEL_21;
  }

  v15 = *__error();
  result = -1;
  if (v15)
  {
    if (!*(a1 + 4))
    {
      *(a1 + 4) = v15;
    }
  }

  return result;
}

void **trunc_prefix(void **result)
{
  v1 = *(result + 12);
  if (v1)
  {
    v2 = result;
    result = memmove(result[2], result[2] + v1, result[4] - v1);
    v3 = *(v2 + 12);
    v4 = v2[4] - v3;
    v5 = v2[5] + v3;
    v2[4] = v4;
    v2[5] = v5;
    *(v2 + 12) = 0;
  }

  return result;
}

void **chunkbuf_advance(void **result, uint64_t a2)
{
  if ((result[1] & 1) == 0)
  {
    v2 = result;
    v3 = *(result + 12);
    v4 = v3 + a2;
    v5 = result[4];
    if (v3 + a2 <= v5)
    {
      *(result + 12) = v4;
    }

    else if (*(result + 9) == 1)
    {
      result = lseek(*result, result[5] + v4, 0);
      *(v2 + 48) = 0;
      *(v2 + 32) = 0;
      *(v2 + 40) = result;
    }

    else
    {
      v6 = a2 - v5;
      *(result + 12) = v5;
      trunc_prefix(result);
      chunkbuf_read(v2, 1uLL, v6 + v3);
      *(v2 + 48) = *(v2 + 32);

      return trunc_prefix(v2);
    }
  }

  return result;
}

uint64_t kpfile_read_status(_DWORD *a1)
{
  v1 = a1[1];
  if (v1)
  {
    return v1 != -1;
  }

  if (a1[18] > 4u)
  {
    v5 = a1[36];
    if (v5 == 7424)
    {
      return 4;
    }

    if (v5 == 7936 || v5 == 7680)
    {
      return 5;
    }

    v3 = a1[269] == 2;
    v4 = 2;
  }

  else
  {
    v3 = a1[34] == 0;
    v4 = 4;
  }

  if (v3)
  {
    return v4 + 1;
  }

  else
  {
    return v4;
  }
}

uint64_t kpfile_close(uint64_t a1)
{
  if (!a1)
  {
    return 9;
  }

  if (*(a1 + 8) == 1)
  {
    get_to_stage_body(a1);
    chunkbuf_flush(a1);
  }

  if (close(*a1) == -1)
  {
    v2 = *__error();
  }

  else
  {
    v2 = 0;
  }

  chunkbuf_free(a1);
  free(*(a1 + 128));
  free(a1);
  return v2;
}

uint64_t get_to_stage_body(uint64_t result)
{
  v1 = result;
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(result + 1076);
  if (v2 == 1)
  {
LABEL_4:
    v3 = *(v1 + 72);
    if (v3 == 3)
    {
      *__src = 1437204737;
      v5 = *(v1 + 32);
      if ((v5 + 4) <= *(v1 + 24))
      {
        *(*(v1 + 16) + v5) = *__src;
        v6 = *(v1 + 32) + 4;
        *(v1 + 32) = v6;
      }

      else
      {
        chunkbuf_write_internal(v1, __src, 4uLL);
        v6 = *(v1 + 32);
      }

      *__src = *(v1 + 120);
      if ((v6 + 4) <= *(v1 + 24))
      {
        *(*(v1 + 16) + v6) = *__src;
        v7 = *(v1 + 32) + 4;
        *(v1 + 32) = v7;
      }

      else
      {
        chunkbuf_write_internal(v1, __src, 4uLL);
        v7 = *(v1 + 32);
      }

      v8 = *(v1 + 128);
      v9 = 16 * *(v1 + 120);
      if ((v7 + v9) <= *(v1 + 24))
      {
        memcpy((*(v1 + 16) + v7), v8, 16 * *(v1 + 120));
        *(v1 + 32) += v9;
      }

      else
      {
        chunkbuf_write_internal(v1, v8, 16 * *(v1 + 120));
      }
    }

    else if (v3 == 5)
    {
      if (*(v1 + 140) == 1)
      {
        v11 = 256;
        if (!sysctlbyname("hw.model", __src, &v11, 0, 0))
        {
          v4 = v11;
          if (v11)
          {
            if (!__src[v11 - 1])
            {
              --v11;
              --v4;
            }

            kpfile_add_header(v1, 0x1A00u, 0, __src, v4);
          }
        }
      }

      result = chunkbuf_chunk_end(v1);
      goto LABEL_23;
    }

    result = chunkbuf_align(v1, 4096);
LABEL_23:
    *(v1 + 1076) = 2;
    goto LABEL_24;
  }

  if (!v2)
  {
    get_to_stage_header(result);
    goto LABEL_4;
  }

LABEL_24:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

char *kpfile_strerror(int a1)
{
  if ((a1 - 107) >= 5)
  {
    return strerror(a1);
  }

  else
  {
    return (&off_27A70BF70)[a1 - 107];
  }
}

uint64_t kpfile_get_walltime(uint64_t a1, void *a2, _OWORD *a3, void *a4)
{
  if (a2)
  {
    *a2 = *(a1 + 104);
  }

  if (a3)
  {
    *a3 = *(a1 + 80);
  }

  if (a4)
  {
    *a4 = *(a1 + 96);
  }

  v4 = *(a1 + 72) - 1;
  if (v4 > 3)
  {
    return 2;
  }

  else
  {
    return dword_277199170[v4];
  }
}

uint64_t kpfile_set_walltime(uint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  *(a1 + 104) = a2;
  if (a3)
  {
    *(a1 + 80) = *a3;
  }

  if (a4)
  {
    *(a1 + 96) = *a4;
  }

  return 0;
}

uint64_t kpfile_set_frequency(uint64_t a1, unint64_t a2)
{
  v8 = a2;
  if (a2)
  {
    goto LABEL_2;
  }

  v7 = 8;
  result = sysctlbyname("hw.tbfrequency", &v8, &v7, 0, 0);
  if (result)
  {
    return result;
  }

  a2 = v8;
  if (v8)
  {
LABEL_2:
    v3 = a2;
    v4 = 1000000000;
    do
    {
      v5 = v4;
      v4 = v3;
      v3 = v5 % v3;
    }

    while (v3);
  }

  else
  {
    v4 = 1000000000;
  }

  if (!(a2 / v4))
  {
    return 22;
  }

  result = 0;
  *(a1 + 112) = 0x3B9ACA00 / v4;
  *(a1 + 116) = a2 / v4;
  return result;
}

uint64_t kpfile_set_timebase(uint64_t a1, int a2, int a3)
{
  if (!a3)
  {
    return 22;
  }

  result = 0;
  *(a1 + 112) = a2;
  *(a1 + 116) = a3;
  return result;
}

BOOL kpfile_get_timebase(_DWORD *a1, _DWORD *a2, _DWORD *a3)
{
  if (a2)
  {
    *a2 = a1[28];
  }

  if (a3)
  {
    *a3 = a1[29];
  }

  return a1[18] > 3u;
}

uint64_t kpfile_get_cpumap(uint64_t a1, void *__dst, unsigned int a3)
{
  result = *(a1 + 120);
  if (result >= a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = result;
  }

  if (v5)
  {
    memcpy(__dst, *(a1 + 128), 16 * a3);
    return *(a1 + 120);
  }

  return result;
}

uint64_t kpfile_set_cpumap(uint64_t a1, const void *a2, unsigned int a3)
{
  free(*(a1 + 128));
  *(a1 + 120) = 0;
  v6 = malloc_type_calloc(a3, 0x10uLL, 0x1000040451B5BE8uLL);
  *(a1 + 128) = v6;
  if (!v6)
  {
    return 12;
  }

  *(a1 + 120) = a3;
  memcpy(v6, a2, 16 * a3);
  return *(a1 + 4);
}

uint64_t kpfile_openin(uint64_t *a1, char *a2)
{
  *a1 = 0;
  v3 = open(a2, 0);
  if (v3 == -1)
  {
    return *__error();
  }

  v4 = v3;
  v5 = kpfile_fdopenin_internal(a1, v3);
  if (v5)
  {
    close(v4);
  }

  return v5;
}

uint64_t kpfile_fdopenin_internal(uint64_t *a1, int a2)
{
  *a1 = 0;
  if (a2 < 0)
  {
    return 9;
  }

  v4 = malloc_type_calloc(1uLL, 0x438uLL, 0x1030040D2FD2135uLL);
  if (v4)
  {
    v5 = v4;
    chunkbuf_init(v4, a2, 0);
    v6 = chunkbuf_read(v5, 1uLL, 8uLL);
    if (v6 <= 7)
    {
      if (v6 < 0)
      {
        v7 = *__error();
        goto LABEL_59;
      }

      goto LABEL_5;
    }

    v8 = *(v5 + 16);
    v9 = *(v5 + 48);
    v10 = *(v8 + v9);
    if (v10 > 1437204991)
    {
      if (v10 == 1437204992)
      {
        *(v5 + 72) = 4;
        v11 = chunkbuf_read(v5, 0x120uLL, 1uLL);
        if (v11 == 288)
        {
          v37 = *(v5 + 16) + *(v5 + 48);
          *(v5 + 136) = *(v37 + 4);
          *(v5 + 80) = *(v37 + 8);
          *(v5 + 88) = *(v37 + 16);
          if (*(v37 + 20))
          {
            v38 = 64;
          }

          else
          {
            v38 = 32;
          }

          *(v5 + 76) = v38;
          kpfile_set_frequency(v5, *(v37 + 24));
          chunkbuf_advance(v5, 288);
          if (!analyze_threadmap(v5, *(v5 + 76)))
          {
            v40 = 28;
            if (*(v5 + 76) == 64)
            {
              v40 = 32;
            }

            v24 = ((v40 * *(v5 + 136) + 4383) & 0x7FFFFFF000) - 288;
            goto LABEL_64;
          }

          goto LABEL_58;
        }

        goto LABEL_38;
      }

      if (v10 != 1437205248)
      {
        goto LABEL_32;
      }
    }

    else if (v10 != 4096)
    {
      if (v10 == 1437204737)
      {
        *(v5 + 72) = 2;
        chunkbuf_set_marker(v5, 0, 0);
        v11 = chunkbuf_read(v5, 0x18uLL, 1uLL);
        if (v11 == 24)
        {
          v12 = *(v5 + 16) + *(v5 + 48);
          *(v5 + 136) = *(v12 + 4);
          v13 = *(v12 + 8);
          if (!v13)
          {
            v13 >>= 32;
          }

          *(v5 + 80) = v13;
          *(v5 + 88) = *(v12 + 16);
          chunkbuf_advance(v5, 20);
          if (!analyze_threadmap(v5, 32) || (chunkbuf_advance(v5, 4), !analyze_threadmap(v5, 32)) || !analyze_threadmap(v5, 64))
          {
            v14 = 28;
            if (*(v5 + 76) == 64)
            {
              v14 = 32;
            }

            v15 = v14 * *(v5 + 136);
            v16 = (v15 - chunkbuf_get_marker(v5, 0) + 4095) & 0xFFFFFFFFFFFFF000;
            v17 = v16 + chunkbuf_get_marker(v5, 0);
            chunkbuf_set_marker(v5, 0, v17);
            v18 = v15 + 8;
            v19 = chunkbuf_read(v5, 1uLL, v15 + 8);
            if (v19 != -1)
            {
              if (v19 != v18)
              {
                goto LABEL_65;
              }

              v20 = (*(v5 + 16) + *(v5 + 48) + v15);
              if (*v20 != 1437204737)
              {
                goto LABEL_65;
              }

              v21 = v20[1];
              if (v21 > 0x3E8)
              {
                goto LABEL_65;
              }

              *(v5 + 72) = 3;
              *(v5 + 120) = v21;
              *(v5 + 128) = malloc_type_calloc(v21, 0x10uLL, 0x4AA2A22CuLL);
              v22 = v18 + 16 * v21;
              v23 = chunkbuf_read(v5, 1uLL, v22);
              if (v23 != -1)
              {
                if (v23 == v22)
                {
                  memcpy(*(v5 + 128), (*(v5 + 16) + *(v5 + 48) + v15 + 8), 16 * v21);
                  if (v22 > v17)
                  {
                    v24 = ((v22 - v17 + 4095) & 0xFFFFFFFFFFFFF000) + v17;
LABEL_64:
                    chunkbuf_set_marker(v5, 0, v24);
                  }

LABEL_65:
                  v7 = 0;
                  *a1 = v5;
                  return v7;
                }

LABEL_5:
                v7 = 108;
LABEL_59:
                kpfile_close(v5);
                return v7;
              }
            }

            goto LABEL_39;
          }

LABEL_58:
          v7 = 107;
          goto LABEL_59;
        }

LABEL_38:
        if (v11 != -1)
        {
          goto LABEL_5;
        }

        goto LABEL_39;
      }

LABEL_32:
      *(v5 + 72) = 1;
      v26 = *(v8 + v9);
      *(v5 + 136) = v26;
      if (v26 > 0x186A0)
      {
        goto LABEL_58;
      }

      chunkbuf_advance(v5, 4);
      v25 = analyze_threadmap(v5, 0);
      if (!v25)
      {
        v27 = 28;
        if (*(v5 + 76) == 64)
        {
          v27 = 32;
        }

        v24 = ((v27 * *(v5 + 136) + 4099) & 0x7FFFFFF000) - 4;
        goto LABEL_64;
      }

      goto LABEL_30;
    }

    *(v5 + 72) = 5;
    v25 = parse_chunk_header(v5);
    if (!v25)
    {
      marker = chunkbuf_get_marker(v5, 0);
      chunkbuf_set_marker(v5, 1u, marker);
      chunkbuf_set_marker(v5, 0, 40);
      v29 = *(v5 + 152);
      if (v29 < 0x28)
      {
        goto LABEL_5;
      }

      v30 = chunkbuf_read(v5, v29, 1uLL);
      if (v30 != -1)
      {
        v31 = *(v5 + 152);
        if (v30 < v31)
        {
          goto LABEL_5;
        }

        v32 = *(v5 + 16) + *(v5 + 48);
        *(v5 + 112) = *v32;
        *(v5 + 116) = *(v32 + 4);
        *(v5 + 104) = *(v32 + 8);
        *(v5 + 80) = *(v32 + 16);
        *(v5 + 88) = *(v32 + 24);
        *(v5 + 96) = *(v32 + 28);
        *(v5 + 100) = *(v32 + 32);
        if (*(v32 + 36))
        {
          v33 = 64;
        }

        else
        {
          v33 = 32;
        }

        *(v5 + 76) = v33;
        if (v31 >= 0x38)
        {
          v34 = 40;
          do
          {
            v35 = (v32 + v34);
            v36 = *(v32 + v34 + 8);
            if ((v34 + v36 + 16) > v31)
            {
              goto LABEL_5;
            }

            if (*v35 == 7168)
            {
              *(v5 + 120) = v36 >> 4;
              v41 = malloc_type_malloc(v36 & 0xFFFFFFFF0, 0xF9719A2CuLL);
              *(v5 + 128) = v41;
              if (v41)
              {
                memcpy(v41, v35 + 4, v36 & 0xFFFFFFFF0);
                break;
              }

              v7 = 12;
              goto LABEL_59;
            }

            v34 += (v36 + 23) & 0xFFFFFFFFFFFFFFF8;
          }

          while (v34 + 16 <= v31);
        }

        *(v5 + 1076) = 1;
        kpfile_read_next(v5);
        v7 = *(v5 + 4) & ~(*(v5 + 4) >> 31);
LABEL_40:
        if (v7)
        {
          goto LABEL_59;
        }

        goto LABEL_65;
      }

LABEL_39:
      v7 = *__error();
      goto LABEL_40;
    }

LABEL_30:
    v7 = v25;
    goto LABEL_59;
  }

  close(a2);
  return 12;
}

uint64_t kpfile_openout(void *a1, char *a2, int a3, int a4)
{
  *a1 = 0;
  v8 = open(a2, 513, 438);
  if (v8 == -1)
  {
    return *__error();
  }

  v9 = kpfile_fdopenout_internal(a1, v8, a3, a4);
  if (v9)
  {
    unlink(a2);
  }

  return v9;
}

uint64_t kpfile_fdopenout_internal(void *a1, int a2, int a3, int a4)
{
  v47 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  if (a2 < 0)
  {
    result = 9;
  }

  else
  {
    v4 = a4;
    if (!a4)
    {
      v46 = xmmword_277199160;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      memset(v15, 0, sizeof(v15));
      v14 = 648;
      v8 = sysctl(&v46, 4u, v15, &v14, 0, 0);
      v4 = (v16 & 4) != 0 ? 64 : 32;
      if (v8 == -1)
      {
        goto LABEL_17;
      }
    }

    if (v4 == 32 || v4 == 64)
    {
      v9 = malloc_type_calloc(1uLL, 0x438uLL, 0x1030040D2FD2135uLL);
      if (v9)
      {
        v10 = v9;
        if (!a3)
        {
          a3 = 5;
        }

        chunkbuf_init(v9, a2, 1);
        result = 0;
        v10[18] = a3;
        v10[19] = v4;
        if (a3 == 5)
        {
          v12 = 3;
        }

        else
        {
          v12 = 0;
        }

        v10[268] = v12;
        *a1 = v10;
      }

      else
      {
        close(a2);
        result = 12;
      }
    }

    else
    {
LABEL_17:
      close(a2);
      result = 22;
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t kpfile_fdopenin(uint64_t *a1, int a2)
{
  v3 = dup(a2);
  if (v3 == -1)
  {
    return *__error();
  }

  return kpfile_fdopenin_internal(a1, v3);
}

uint64_t kpfile_fdopenout(void *a1, int a2, int a3, int a4)
{
  v7 = dup(a2);
  if (v7 == -1)
  {
    return *__error();
  }

  return kpfile_fdopenout_internal(a1, v7, a3, a4);
}

unint64_t kpfile_read_threadmap(uint64_t a1, char *a2, unint64_t a3, char a4)
{
  v6 = a4 & 0x60;
  if (v6 != 32 && v6 != 64)
  {
    goto LABEL_19;
  }

  if (v6 == 64)
  {
    v7 = 32;
  }

  else
  {
    v7 = 28;
  }

  v8 = *(a1 + 136);
  if (a3 / v7 >= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = (a3 / v7);
  }

  if (v9)
  {
    if (*(a1 + 76) == 64)
    {
      v10 = 32;
    }

    else
    {
      v10 = 28;
    }

    v11 = chunkbuf_read(a1, v10, v9);
    if (v11 == -1)
    {
      v12 = *__error();
      goto LABEL_17;
    }

    if (v11 < v10 * v9)
    {
      v12 = 109;
LABEL_17:
      v9 = 0;
LABEL_20:
      *(a1 + 4) = v12;
      return v9;
    }

    if (v6 < *(a1 + 76))
    {
LABEL_19:
      v9 = 0;
      v12 = 22;
      goto LABEL_20;
    }

    v14 = *(a1 + 16);
    v15 = *(a1 + 48);
    if (v7 == v10)
    {
      memcpy(a2, (v14 + v15), v10 * v9);
    }

    else
    {
      v16 = a2 + 8;
      v17 = v15 + v14 + 4;
      v18 = v9;
      do
      {
        *(v16 - 1) = *(v17 - 4);
        v19 = *v17;
        *(v16 + 2) = *(v17 + 16);
        *v16 = v19;
        v16 += v7;
        v17 += v10;
        --v18;
      }

      while (v18);
    }

    chunkbuf_advance(a1, v10 * v9);
    v20 = *(a1 + 136) - v9;
    *(a1 + 136) = v20;
    if (!v20)
    {
      kpfile_read_next(a1);
    }
  }

  return v9;
}

void kpfile_read_next(uint64_t a1)
{
  if (!a1 || *(a1 + 4))
  {
    return;
  }

  marker = chunkbuf_get_marker(a1, 0);
  if ((marker & 0x8000000000000000) == 0)
  {
    v3 = marker;
    while (1)
    {
      v4 = *(a1 + 72);
      chunkbuf_advance(a1, v3);
      if (v4 != 5)
      {
        chunkbuf_set_marker(a1, 0, -1);
        *(a1 + 1076) = 2;
        *(a1 + 144) = 7680;
        *(a1 + 152) = -1;
        return;
      }

      v5 = parse_chunk_header(a1);
      if (v5)
      {
        *(a1 + 4) = v5;
        return;
      }

      v6 = *(a1 + 1076);
      if (v6 != 1)
      {
        goto LABEL_12;
      }

      if ((chunkbuf_get_marker(a1, 1u) & 0x8000000000000000) == 0)
      {
        break;
      }

      *(a1 + 1076) = 2;
LABEL_15:
      if (*(a1 + 4))
      {
        return;
      }

      *(a1 + 136) = 0;
      v7 = *(a1 + 144);
      if (v7 == 7680)
      {
        if (*(a1 + 152) < 8uLL || chunkbuf_read(a1, 8uLL, 1uLL) != 8)
        {
LABEL_31:
          v10 = 110;
          goto LABEL_32;
        }

        *(a1 + 160) = *(*(a1 + 16) + *(a1 + 48));
        v9 = *(a1 + 152);
        if (v9 != -1)
        {
          *(a1 + 152) = v9 - 8;
        }

        chunkbuf_advance(a1, 8);
      }

      else
      {
        if (v7 != 7936)
        {
          if (v7 == 7424)
          {
            v11 = 28;
            if (*(a1 + 76) == 64)
            {
              v11 = 32;
            }

            *(a1 + 136) = *(a1 + 152) / v11;
          }

          return;
        }

        if (*(a1 + 152) < 0xCuLL || chunkbuf_read(a1, 0xCuLL, 1uLL) != 12)
        {
          goto LABEL_31;
        }

        *(a1 + 160) = *(*(a1 + 16) + *(a1 + 48));
        v8 = *(a1 + 152);
        if (v8 != -1)
        {
          *(a1 + 152) = v8 - 12;
        }

        chunkbuf_advance(a1, 12);
        kdbg_comp_reset((a1 + 168));
      }

      if (*(a1 + 152))
      {
        return;
      }

LABEL_29:
      v3 = chunkbuf_get_marker(a1, 0);
      if (v3 < 0)
      {
        goto LABEL_30;
      }
    }

    v6 = *(a1 + 1076);
    if (v6 == 1)
    {
      if (*(a1 + 144) != 7168)
      {
        return;
      }

      goto LABEL_29;
    }

LABEL_12:
    if (v6 != 2)
    {
      return;
    }

    goto LABEL_15;
  }

LABEL_30:
  v10 = -1;
LABEL_32:
  *(a1 + 4) = v10;
}

uint64_t kpfile_write_threadmap(uint64_t a1, char *a2, uint64_t a3, char a4)
{
  if (!a1 || *(a1 + 8) != 1)
  {
    return 9;
  }

  v5 = a3;
  v7 = a4 & 0x60;
  if (v7 != 64 && v7 != 32 || v7 < *(a1 + 76))
  {
    return 22;
  }

  *(a1 + 136) = a3;
  get_to_stage_header(a1);
  v8 = *(a1 + 72);
  if (v8 <= 4 && ((1 << v8) & 0x16) != 0)
  {
    if (*(a1 + 1076) == 1)
    {
      if (v7 == 64)
      {
        v9 = 32;
      }

      else
      {
        v9 = 28;
      }

LABEL_22:
      if (v7 == *(a1 + 76))
      {
        v12 = v9 * v5;
        v13 = *(a1 + 32);
        if (v13 + v12 <= *(a1 + 24))
        {
          memcpy((*(a1 + 16) + v13), a2, v12);
          *(a1 + 32) += v12;
        }

        else
        {
          chunkbuf_write_internal(a1, a2, v12);
        }
      }

      else if (v5)
      {
        v14 = a2 + 8;
        do
        {
          v15 = v14 - 8;
          v16 = *(a1 + 32);
          if ((v16 + 4) <= *(a1 + 24))
          {
            *(*(a1 + 16) + v16) = *v15;
            v17 = *(a1 + 32) + 4;
            *(a1 + 32) = v17;
          }

          else
          {
            chunkbuf_write_internal(a1, v15, 4uLL);
            v17 = *(a1 + 32);
          }

          if ((v17 + 24) <= *(a1 + 24))
          {
            v18 = *(a1 + 16) + v17;
            v19 = *v14;
            *(v18 + 16) = *(v14 + 2);
            *v18 = v19;
            *(a1 + 32) += 24;
          }

          else
          {
            chunkbuf_write_internal(a1, v14, 0x18uLL);
          }

          v14 += v9;
          --v5;
        }

        while (v5);
      }

      if (*(a1 + 72) == 5)
      {
        chunkbuf_chunk_end(a1);
      }

      return *(a1 + 4);
    }

    return 22;
  }

  if (v7 == 64)
  {
    v9 = 32;
  }

  else
  {
    v9 = 28;
  }

  if (v8 != 5)
  {
    goto LABEL_22;
  }

  v11 = *(a1 + 76) != 64;
  get_to_stage_body(a1);
  chunkbuf_chunk_begin(a1, 0x1D00u, 0);
  if ((v7 == 64) == v11)
  {
    goto LABEL_22;
  }

  return chunkbuf_write_chunk_end(a1, a2, v9 * v5);
}

uint64_t get_to_stage_header(uint64_t result)
{
  if (!*(result + 1076))
  {
    __src[3] = v1;
    __src[4] = v2;
    v3 = result;
    v4 = *(result + 72);
    if (v4 > 3)
    {
      if (v4 == 4)
      {
        LODWORD(__src[0]) = 1437204992;
        v12 = *(result + 32);
        if ((v12 + 4) <= *(result + 24))
        {
          *(*(result + 16) + v12) = __src[0];
          v13 = *(result + 32) + 4;
          *(result + 32) = v13;
        }

        else
        {
          result = chunkbuf_write_internal(result, __src, 4uLL);
          v13 = *(v3 + 32);
        }

        LODWORD(__src[0]) = *(v3 + 136);
        if ((v13 + 4) <= *(v3 + 24))
        {
          *(*(v3 + 16) + v13) = __src[0];
          v14 = *(v3 + 32) + 4;
          *(v3 + 32) = v14;
        }

        else
        {
          result = chunkbuf_write_internal(v3, __src, 4uLL);
          v14 = *(v3 + 32);
        }

        __src[0] = *(v3 + 80);
        if ((v14 + 8) <= *(v3 + 24))
        {
          *(*(v3 + 16) + v14) = __src[0];
          v15 = *(v3 + 32) + 8;
          *(v3 + 32) = v15;
        }

        else
        {
          result = chunkbuf_write_internal(v3, __src, 8uLL);
          v15 = *(v3 + 32);
        }

        LODWORD(__src[0]) = *(v3 + 88);
        if ((v15 + 4) <= *(v3 + 24))
        {
          *(*(v3 + 16) + v15) = __src[0];
          v16 = *(v3 + 32) + 4;
          *(v3 + 32) = v16;
        }

        else
        {
          result = chunkbuf_write_internal(v3, __src, 4uLL);
          v16 = *(v3 + 32);
        }

        LODWORD(__src[0]) = *(v3 + 76) == 64;
        if ((v16 + 4) <= *(v3 + 24))
        {
          *(*(v3 + 16) + v16) = __src[0];
          *(v3 + 32) += 4;
        }

        else
        {
          result = chunkbuf_write_internal(v3, __src, 4uLL);
        }

        v17 = *(v3 + 112);
        if (v17)
        {
          v18 = 1000000000 * *(v3 + 116) / v17;
        }

        else
        {
          v18 = 0;
        }

        __src[0] = v18;
        v25 = *(v3 + 32);
        if ((v25 + 8) <= *(v3 + 24))
        {
          *(*(v3 + 16) + v25) = __src[0];
          *(v3 + 32) += 8;
        }

        else
        {
          result = chunkbuf_write_internal(v3, __src, 8uLL);
        }

        v26 = 32;
        do
        {
          __src[0] = 0;
          v27 = *(v3 + 32);
          if ((v27 + 8) <= *(v3 + 24))
          {
            *(*(v3 + 16) + v27) = __src[0];
            *(v3 + 32) += 8;
          }

          else
          {
            result = chunkbuf_write_internal(v3, __src, 8uLL);
          }

          --v26;
        }

        while (v26);
      }

      else if (v4 == 5)
      {
        result = chunkbuf_chunk_begin(result, 0x55AA0300u, 0);
        LODWORD(__src[0]) = *(v3 + 112);
        v7 = *(v3 + 32);
        if ((v7 + 4) <= *(v3 + 24))
        {
          *(*(v3 + 16) + v7) = __src[0];
          v8 = *(v3 + 32) + 4;
          *(v3 + 32) = v8;
        }

        else
        {
          result = chunkbuf_write_internal(v3, __src, 4uLL);
          v8 = *(v3 + 32);
        }

        LODWORD(__src[0]) = *(v3 + 116);
        if ((v8 + 4) <= *(v3 + 24))
        {
          *(*(v3 + 16) + v8) = __src[0];
          v19 = *(v3 + 32) + 4;
          *(v3 + 32) = v19;
        }

        else
        {
          result = chunkbuf_write_internal(v3, __src, 4uLL);
          v19 = *(v3 + 32);
        }

        __src[0] = *(v3 + 104);
        if ((v19 + 8) <= *(v3 + 24))
        {
          *(*(v3 + 16) + v19) = __src[0];
          v20 = *(v3 + 32) + 8;
          *(v3 + 32) = v20;
        }

        else
        {
          result = chunkbuf_write_internal(v3, __src, 8uLL);
          v20 = *(v3 + 32);
        }

        __src[0] = *(v3 + 80);
        if ((v20 + 8) <= *(v3 + 24))
        {
          *(*(v3 + 16) + v20) = __src[0];
          v21 = *(v3 + 32) + 8;
          *(v3 + 32) = v21;
        }

        else
        {
          result = chunkbuf_write_internal(v3, __src, 8uLL);
          v21 = *(v3 + 32);
        }

        LODWORD(__src[0]) = *(v3 + 88);
        if ((v21 + 4) <= *(v3 + 24))
        {
          *(*(v3 + 16) + v21) = __src[0];
          v22 = *(v3 + 32) + 4;
          *(v3 + 32) = v22;
        }

        else
        {
          result = chunkbuf_write_internal(v3, __src, 4uLL);
          v22 = *(v3 + 32);
        }

        LODWORD(__src[0]) = *(v3 + 96);
        if ((v22 + 4) <= *(v3 + 24))
        {
          *(*(v3 + 16) + v22) = __src[0];
          v23 = *(v3 + 32) + 4;
          *(v3 + 32) = v23;
        }

        else
        {
          result = chunkbuf_write_internal(v3, __src, 4uLL);
          v23 = *(v3 + 32);
        }

        LODWORD(__src[0]) = *(v3 + 100);
        if ((v23 + 4) <= *(v3 + 24))
        {
          *(*(v3 + 16) + v23) = __src[0];
          v24 = *(v3 + 32) + 4;
          *(v3 + 32) = v24;
        }

        else
        {
          result = chunkbuf_write_internal(v3, __src, 4uLL);
          v24 = *(v3 + 32);
        }

        LODWORD(__src[0]) = *(v3 + 76) == 64;
        if ((v24 + 4) <= *(v3 + 24))
        {
          *(*(v3 + 16) + v24) = __src[0];
          *(v3 + 32) += 4;
        }

        else
        {
          result = chunkbuf_write_internal(v3, __src, 4uLL);
        }

        if (*(v3 + 120))
        {
          chunkbuf_chunk_begin(v3, 0x1C00u, 0);
          result = chunkbuf_write_chunk_end(v3, *(v3 + 128), 16 * *(v3 + 120));
        }
      }

      goto LABEL_77;
    }

    if ((v4 - 2) >= 2)
    {
      if (v4 != 1)
      {
LABEL_77:
        *(v3 + 1076) = 1;
        return result;
      }

      LODWORD(__src[0]) = *(result + 136);
    }

    else
    {
      LODWORD(__src[0]) = 1437204737;
      v5 = *(result + 32);
      if ((v5 + 4) <= *(result + 24))
      {
        *(*(result + 16) + v5) = __src[0];
        v6 = *(result + 32) + 4;
        *(result + 32) = v6;
      }

      else
      {
        result = chunkbuf_write_internal(result, __src, 4uLL);
        v6 = *(v3 + 32);
      }

      LODWORD(__src[0]) = *(v3 + 136);
      if ((v6 + 4) <= *(v3 + 24))
      {
        *(*(v3 + 16) + v6) = __src[0];
        v9 = *(v3 + 32) + 4;
        *(v3 + 32) = v9;
      }

      else
      {
        result = chunkbuf_write_internal(v3, __src, 4uLL);
        v9 = *(v3 + 32);
      }

      __src[0] = *(v3 + 80);
      if ((v9 + 8) <= *(v3 + 24))
      {
        *(*(v3 + 16) + v9) = __src[0];
        v10 = *(v3 + 32) + 8;
        *(v3 + 32) = v10;
      }

      else
      {
        result = chunkbuf_write_internal(v3, __src, 8uLL);
        v10 = *(v3 + 32);
      }

      LODWORD(__src[0]) = *(v3 + 88);
      if ((v10 + 4) <= *(v3 + 24))
      {
        *(*(v3 + 16) + v10) = __src[0];
        *(v3 + 32) += 4;
      }

      else
      {
        result = chunkbuf_write_internal(v3, __src, 4uLL);
      }

      if (*(v3 + 76) != 64)
      {
        goto LABEL_77;
      }

      LODWORD(__src[0]) = 0;
    }

    v11 = *(v3 + 32);
    if ((v11 + 4) <= *(v3 + 24))
    {
      *(*(v3 + 16) + v11) = __src[0];
      *(v3 + 32) += 4;
    }

    else
    {
      result = chunkbuf_write_internal(v3, __src, 4uLL);
    }

    goto LABEL_77;
  }

  return result;
}

void *chunkbuf_write(void *a1, void *a2, size_t __n)
{
  v5 = a1[4];
  if (v5 + __n <= a1[3])
  {
    result = memcpy((a1[2] + v5), a2, __n);
    a1[4] += __n;
  }

  else
  {

    return chunkbuf_write_internal(a1, a2, __n);
  }

  return result;
}

unint64_t kpfile_read_events(uint64_t a1, uint64_t *a2, unint64_t a3, char a4)
{
  v6 = a4 & 0x60;
  if (v6 != 32 && v6 != 64 || (v7 = *(a1 + 76), v6 < v7))
  {
    v8 = 0;
    v9 = 22;
LABEL_5:
    *(a1 + 4) = v9;
    return v8;
  }

  v11 = *(a1 + 144);
  v12 = a3 / v6;
  if (v11 == 7680)
  {
    v13 = *(a1 + 152);
    if (v13 != -1)
    {
      v14 = v13 / v7;
      if (v12 >= v14)
      {
        v12 = v14;
      }
    }

    if (!v12)
    {
      v8 = 0;
      v9 = -1;
      goto LABEL_5;
    }

    v15 = chunkbuf_read(a1, *(a1 + 76), v12);
    if (v15 == -1)
    {
      v37 = __error();
      v8 = 0;
LABEL_72:
      v9 = *v37;
      goto LABEL_5;
    }

    if (v15 < v12 * v7)
    {
      v12 = v15 / v7;
      if (v15 == v15 / v7 * v7 && *(a1 + 152) == -1)
      {
        v17 = -1;
      }

      else
      {
        v17 = 109;
      }

      *(a1 + 4) = v17;
    }

    if (v6 == v7)
    {
      memcpy(a2, (*(a1 + 16) + *(a1 + 48)), v12 * v7);
    }

    else if (v12)
    {
      v38 = *(a1 + 16) + *(a1 + 48);
      v39 = v12;
      do
      {
        *a2 = *v38 & 0xFFFFFFFFFFFFFFLL;
        a2[1] = *(v38 + 8);
        a2[2] = *(v38 + 12);
        a2[3] = *(v38 + 16);
        a2[4] = *(v38 + 20);
        a2[5] = *(v38 + 24);
        a2[6] = *(v38 + 28) | (*(v38 + 7) << 32);
        a2 += 8;
        v38 += 32;
        --v39;
      }

      while (v39);
    }

    chunkbuf_advance(a1, v12 * v7);
    v40 = *(a1 + 152);
    if (v40 != -1)
    {
      v41 = v40 - v12 * v7;
      *(a1 + 152) = v41;
      if (!v41)
      {
        kpfile_read_next(a1);
      }
    }

    return v12;
  }

  else
  {
    if (v11 != 7936)
    {
      v8 = 0;
      v9 = 111;
      goto LABEL_5;
    }

    if (v6 <= a3)
    {
      v8 = 0;
      v18 = a1 + 192;
      while (!*(a1 + 4))
      {
        if (*(a1 + 152) >= 0x20000uLL)
        {
          v19 = 0x20000;
        }

        else
        {
          v19 = *(a1 + 152);
        }

        v20 = chunkbuf_read(a1, 1uLL, v19);
        if (v20 == -1)
        {
          v37 = __error();
          goto LABEL_72;
        }

        if (v20 < v19)
        {
          if (*(a1 + 152) == -1)
          {
            v21 = -1;
          }

          else
          {
            v21 = 109;
          }

          *(a1 + 4) = v21;
          v19 = v20;
        }

        v42 = v8;
        v22 = a2 + v6 * v8;
        if (v6 == 32)
        {
          if (!v19)
          {
            goto LABEL_73;
          }

          LODWORD(v23) = 0;
          v24 = 0;
          v25 = *(a1 + 16) + *(a1 + 48);
          do
          {
            v26 = kdbg_comp_decode((a1 + 168), (v25 + v24), v19 - v24);
            if (!v26)
            {
              break;
            }

            v27 = v18 + 48 * *(a1 + 168);
            *v22 = *(a1 + 184) & 0xFFFFFFFFFFFFFFLL | (BYTE4(*(v27 + 40)) << 56);
            *(v22 + 8) = vuzp1q_s32(*v27, *(v27 + 16));
            *(v22 + 3) = vmovn_s64(*(v27 + 32));
            v24 += v26;
            v23 = (v23 + 1);
            if (v12 <= v23)
            {
              break;
            }

            v22 += 32;
          }

          while (v24 < v19);
        }

        else
        {
          v28 = *(a1 + 16) + *(a1 + 48);
          if (*(a1 + 76) == 64)
          {
            if (!v19)
            {
              goto LABEL_73;
            }

            LODWORD(v23) = 0;
            v24 = 0;
            do
            {
              v29 = kdbg_comp_decode((a1 + 168), (v28 + v24), v19 - v24);
              if (!v29)
              {
                break;
              }

              *v22 = *(a1 + 184);
              v30 = v18 + 48 * *(a1 + 168);
              v31 = *(v30 + 44);
              *(v22 + 1) = *v30;
              *(v22 + 2) = *(v30 + 8);
              *(v22 + 3) = *(v30 + 16);
              *(v22 + 4) = *(v30 + 24);
              *(v22 + 5) = *(v30 + 32);
              *(v22 + 12) = *(v30 + 40);
              *(v22 + 13) = v31;
              v24 += v29;
              v23 = (v23 + 1);
              if (v12 <= v23)
              {
                break;
              }

              v22 += 64;
            }

            while (v24 < v19);
          }

          else
          {
            if (!v19)
            {
LABEL_73:
              chunkbuf_advance(a1, 0);
LABEL_74:
              *(a1 + 4) = 110;
              return v42;
            }

            LODWORD(v23) = 0;
            v24 = 0;
            do
            {
              v32 = kdbg_comp_decode((a1 + 168), (v28 + v24), v19 - v24);
              if (!v32)
              {
                break;
              }

              *v22 = *(a1 + 184) & 0xFFFFFFFFFFFFFFLL;
              v33 = (v18 + 48 * *(a1 + 168));
              v34 = *(v33 + 44);
              *(v22 + 1) = *v33;
              *(v22 + 2) = v33[2];
              *(v22 + 3) = v33[4];
              *(v22 + 4) = v33[6];
              *(v22 + 5) = v33[8];
              *(v22 + 12) = *(v33 + 5);
              *(v22 + 13) = v34;
              v24 += v32;
              v23 = (v23 + 1);
              if (v12 <= v23)
              {
                break;
              }

              v22 += 64;
            }

            while (v24 < v19);
          }
        }

        chunkbuf_advance(a1, v24);
        if (!v23)
        {
          goto LABEL_74;
        }

        v8 = v23 + v42;
        v35 = *(a1 + 152);
        if (v35 != -1)
        {
          v36 = v35 - v24;
          *(a1 + 152) = v36;
          if (!v36)
          {
            kpfile_read_next(a1);
            return v8;
          }
        }

        v12 -= v23;
        if (!v12)
        {
          return v8;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return v8;
}

uint64_t kpfile_write_events(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, char a5)
{
  v43[32] = *MEMORY[0x277D85DE8];
  if (a1 && *(a1 + 8) == 1)
  {
    v10 = a5 & 0x60;
    if ((v10 == 64 || v10 == 32) && v10 >= *(a1 + 76))
    {
      get_to_stage_body(a1);
      if (*(a1 + 1072))
      {
        chunkbuf_chunk_begin(a1, 0x1F00u, 0);
        v43[0] = a2;
        v13 = *(a1 + 32);
        if ((v13 + 8) <= *(a1 + 24))
        {
          *(*(a1 + 16) + v13) = v43[0];
          v14 = *(a1 + 32) + 8;
          *(a1 + 32) = v14;
        }

        else
        {
          chunkbuf_write_internal(a1, v43, 8uLL);
          v14 = *(a1 + 32);
        }

        LODWORD(v43[0]) = a4;
        if ((v14 + 4) <= *(a1 + 24))
        {
          *(*(a1 + 16) + v14) = v43[0];
          *(a1 + 32) += 4;
        }

        else
        {
          chunkbuf_write_internal(a1, v43, 4uLL);
        }

        v16 = *(a1 + 1072);
        if (v16 == 1)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2 * (v16 != 2);
        }

        kdbg_comp_init((a1 + 168), v17);
        if (a4)
        {
          v18 = a1 + 192;
          v19 = 1;
          v20 = a3;
          v21 = a3;
          do
          {
            v22 = *v21;
            if (v10 == 32)
            {
              v23 = v21[6];
              v24 = v21[7];
              v25 = *(a1 + 168);
              v26 = v18 + 48 * v25;
              v27 = *(v21 + 1);
              v28 = *(v21 + 2);
              *&v29 = v27;
              *(&v29 + 1) = HIDWORD(v27);
              v30 = v29;
              *&v29 = v28;
              *(&v29 + 1) = HIDWORD(v28);
              *(a1 + 184) = v22 & 0xFFFFFFFFFFFFFFLL;
              *v26 = v30;
              *(v26 + 16) = v29;
              *(v26 + 32) = v23;
              v31 = v24 | (HIBYTE(v22) << 32);
              v32 = 32;
            }

            else
            {
              v33 = *(v21 + 5);
              v31 = *(v21 + 6);
              v25 = *(a1 + 168);
              v34 = v18 + 48 * v25;
              v35 = *(v21 + 2);
              v36 = *(v21 + 6);
              *(a1 + 184) = v22;
              *v34 = v35;
              *(v34 + 16) = v36;
              *(v34 + 32) = v33;
              v32 = 64;
            }

            *(v18 + 48 * v25 + 40) = v31;
            v21 = (v21 + v32);
            if ((a5 & 1) == 0 || v21 - v20 < 1 || (v37 = kdbg_comp_encode((a1 + 168), v20, v21 - v20), (v20 += v37) == 0))
            {
              v38 = v20 - a3;
              if (v38)
              {
                v39 = *(a1 + 32);
                if (v39 + v38 <= *(a1 + 24))
                {
                  memcpy((*(a1 + 16) + v39), a3, v38);
                  *(a1 + 32) += v38;
                }

                else
                {
                  chunkbuf_write_internal(a1, a3, v38);
                }
              }

              v40 = kdbg_comp_encode((a1 + 168), v43, 0x100uLL);
              v41 = *(a1 + 32);
              if (v41 + v40 <= *(a1 + 24))
              {
                memcpy((*(a1 + 16) + v41), v43, v40);
                *(a1 + 32) += v40;
              }

              else
              {
                chunkbuf_write_internal(a1, v43, v40);
              }

              v20 = a3;
            }

            v42 = v19++;
          }

          while (v42 != a4);
        }

        else
        {
          v20 = a3;
        }

        chunkbuf_write_chunk_end(a1, a3, v20 - a3);
      }

      else
      {
        v15 = *(a1 + 76);
        if (*(a1 + 72) == 5)
        {
          chunkbuf_chunk_begin(a1, 0x1E00u, 0);
          v43[0] = a2;
          chunkbuf_write(a1, v43, 8uLL);
          if (v10 == v15)
          {
            result = chunkbuf_write_chunk_end(a1, a3, v10 * a4);
            goto LABEL_8;
          }
        }

        if (v10 == v15)
        {
          chunkbuf_write(a1, a3, v10 * a4);
        }

        else
        {
          write_32bit_from_64bit(a1, a3, a4);
        }

        if (*(a1 + 72) == 5)
        {
          chunkbuf_chunk_end(a1);
        }
      }

      result = *(a1 + 4);
      goto LABEL_8;
    }

    result = 22;
  }

  else
  {
    result = 9;
  }

LABEL_8:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void *write_32bit_from_64bit(void *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = result;
    do
    {
      __src = *a2 & 0xFFFFFFFFFFFFFFLL | (*(a2 + 52) << 56);
      v6 = v5[4];
      if ((v6 + 8) <= v5[3])
      {
        *(v5[2] + v6) = __src;
        v7 = v5[4] + 8;
        v5[4] = v7;
      }

      else
      {
        result = chunkbuf_write_internal(v5, &__src, 8uLL);
        v7 = v5[4];
      }

      LODWORD(__src) = *(a2 + 8);
      if ((v7 + 4) <= v5[3])
      {
        *(v5[2] + v7) = __src;
        v8 = v5[4] + 4;
        v5[4] = v8;
      }

      else
      {
        result = chunkbuf_write_internal(v5, &__src, 4uLL);
        v8 = v5[4];
      }

      LODWORD(__src) = *(a2 + 16);
      if ((v8 + 4) <= v5[3])
      {
        *(v5[2] + v8) = __src;
        v9 = v5[4] + 4;
        v5[4] = v9;
      }

      else
      {
        result = chunkbuf_write_internal(v5, &__src, 4uLL);
        v9 = v5[4];
      }

      LODWORD(__src) = *(a2 + 24);
      if ((v9 + 4) <= v5[3])
      {
        *(v5[2] + v9) = __src;
        v10 = v5[4] + 4;
        v5[4] = v10;
      }

      else
      {
        result = chunkbuf_write_internal(v5, &__src, 4uLL);
        v10 = v5[4];
      }

      LODWORD(__src) = *(a2 + 32);
      if ((v10 + 4) <= v5[3])
      {
        *(v5[2] + v10) = __src;
        v11 = v5[4] + 4;
        v5[4] = v11;
      }

      else
      {
        result = chunkbuf_write_internal(v5, &__src, 4uLL);
        v11 = v5[4];
      }

      LODWORD(__src) = *(a2 + 40);
      if ((v11 + 4) <= v5[3])
      {
        *(v5[2] + v11) = __src;
        v12 = v5[4] + 4;
        v5[4] = v12;
      }

      else
      {
        result = chunkbuf_write_internal(v5, &__src, 4uLL);
        v12 = v5[4];
      }

      LODWORD(__src) = *(a2 + 48);
      if ((v12 + 4) <= v5[3])
      {
        *(v5[2] + v12) = __src;
        v5[4] += 4;
      }

      else
      {
        result = chunkbuf_write_internal(v5, &__src, 4uLL);
      }

      a2 += 64;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t parse_chunk_header(uint64_t a1)
{
  v2 = chunkbuf_read(a1, 0x10uLL, 1uLL);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = v2;
  if (v2 == -1)
  {
    return *__error();
  }

  if (v2 > 0xF)
  {
    v7 = *(a1 + 16) + *(a1 + 48);
    *(a1 + 144) = *v7;
    *(a1 + 148) = *(v7 + 4);
    v8 = *(v7 + 8);
    *(a1 + 152) = v8;
    if (v8 != -1)
    {
      chunkbuf_set_marker(a1, 0, (v8 + 23) & 0xFFFFFFFFFFFFFFF8);
    }

    chunkbuf_advance(a1, 16);
    return *(a1 + 4);
  }

  else
  {
    v5 = *a1;
    memset(&v9, 0, sizeof(v9));
    v6 = fstat(v5, &v9);
    result = 110;
    if (!v6 && v9.st_size != -1)
    {
      if (v9.st_size <= (*(a1 + 40) + v3))
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return 108;
      }
    }
  }

  return result;
}

uint64_t kpfile_set_compression(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (*(a1 + 72) != 5)
    {
      return 22;
    }

    if (a2 >= 3)
    {
      v2 = 3;
    }

    else
    {
      v2 = a2;
    }
  }

  else
  {
    v2 = 0;
  }

  v3 = 0;
  *(a1 + 1072) = v2;
  return v3;
}

uint64_t kpfile_add_header(uint64_t a1, unsigned int a2, unsigned int a3, void *a4, size_t a5)
{
  get_to_stage_header(a1);
  if (*(a1 + 1076) != 1)
  {
    return 22;
  }

  if (a2 == 6656)
  {
    *(a1 + 140) = 0;
  }

  chunkbuf_chunk_begin(a1, a2, a3);
  chunkbuf_write_chunk_end(a1, a4, a5);
  return *(a1 + 4);
}

uint64_t kpfile_write_chunk_header(uint64_t a1, unsigned int a2, unsigned int a3)
{
  get_to_stage_body(a1);
  if (*(a1 + 1076) != 2)
  {
    return 22;
  }

  chunkbuf_chunk_begin(a1, a2, a3);
  return *(a1 + 4);
}

uint64_t kpfile_write_chunk_data(uint64_t a1, void *a2, size_t __n)
{
  v5 = *(a1 + 32);
  if (v5 + __n <= *(a1 + 24))
  {
    memcpy((*(a1 + 16) + v5), a2, __n);
    *(a1 + 32) += __n;
  }

  else
  {
    chunkbuf_write_internal(a1, a2, __n);
  }

  return *(a1 + 4);
}

uint64_t kpfile_write_chunk(uint64_t a1, unsigned int a2, unsigned int a3, void *a4, size_t a5)
{
  result = kpfile_write_chunk_header(a1, a2, a3);
  if (!result)
  {
    result = kpfile_write_chunk_data(a1, a4, a5);
    if (!result)
    {
      chunkbuf_chunk_end(a1);
      return *(a1 + 4);
    }
  }

  return result;
}

unint64_t kpfile_read_chunk(uint64_t a1, void *a2, unint64_t a3)
{
  v4 = *(a1 + 152);
  if (v4 >= a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = *(a1 + 152);
  }

  if (!v5)
  {
LABEL_13:
    if (!v4)
    {
      kpfile_read_next(a1);
    }

    return v5;
  }

  v7 = chunkbuf_read(a1, 1uLL, v5);
  if (v7 == -1)
  {
    return 0;
  }

  if (!v7)
  {
    v5 = 0;
    *(a1 + 4) = 109;
    return v5;
  }

  if (v7 < v5)
  {
    v5 = v7;
  }

  memcpy(a2, (*(a1 + 16) + *(a1 + 48)), v5);
  chunkbuf_advance(a1, v5);
  v8 = *(a1 + 152);
  if (v8 != -1)
  {
    v4 = v8 - v5;
    *(a1 + 152) = v4;
    goto LABEL_13;
  }

  return v5;
}

uint64_t analyze_threadmap(uint64_t a1, int a2)
{
  v2 = *(a1 + 136);
  if (!v2)
  {
    return 0;
  }

  if (a2 != 64)
  {
    v13 = chunkbuf_read(a1, 0x1CuLL, v2);
    if (v13 == -1)
    {
      return *__error();
    }

    LODWORD(v2) = *(a1 + 136);
    if (v13 < (28 * v2))
    {
      return 107;
    }

    if (!v2)
    {
      goto LABEL_31;
    }

    v14 = 0;
    v15 = *(a1 + 16) + *(a1 + 48);
    v16 = *(a1 + 136);
    do
    {
      v17 = v15;
      --v16;
      v15 += 28;
      for (i = 8; i != 28; ++i)
      {
        if (!*(v17 + i))
        {
          break;
        }

        if (*(v17 + i) < 32)
        {
          ++v14;
        }
      }
    }

    while (v16);
    if (!v14)
    {
LABEL_31:
      result = 0;
      v12 = 32;
      goto LABEL_32;
    }

    if (a2 == 32)
    {
      return 107;
    }
  }

  v5 = chunkbuf_read(a1, 0x20uLL, v2);
  if (v5 == -1)
  {
    return *__error();
  }

  v6 = *(a1 + 136);
  if (v5 < (32 * v6))
  {
    return 107;
  }

  if (v6)
  {
    v7 = 0;
    v8 = *(a1 + 16) + *(a1 + 48);
    do
    {
      v9 = v8;
      --v6;
      v8 += 32;
      for (j = 12; j != 32; ++j)
      {
        if (!*(v9 + j))
        {
          break;
        }

        if (*(v9 + j) < 32)
        {
          ++v7;
        }
      }
    }

    while (v6);
    if (v7)
    {
      return 107;
    }
  }

  result = 0;
  v12 = 64;
LABEL_32:
  *(a1 + 76) = v12;
  return result;
}

uint64_t kpdecode_cursor_setchunk(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1[3])
  {
    return 4294967294;
  }

  result = 0;
  a1[3] = a2;
  a1[4] = a3;
  a1[5] = 0;
  a1[6] = a3;
  a1[10] = a2;
  return result;
}

double kpdecode_cursor_clearchunk(uint64_t a1)
{
  if (*(a1 + 24))
  {
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    result = 0.0;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 168) = 1;
  }

  return result;
}

void *kpdecode_cursor_create()
{
  result = malloc_type_calloc(1uLL, 0xCE0uLL, 0x10B0040D3690215uLL);
  if (result)
  {
    result[10] = 0;
  }

  return result;
}

uint64_t kpdecode_cursor_get_stats(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    if (*(a1 + 64))
    {
      return *(a1 + 196);
    }

    return -1;
  }

  if (a2 || !*(a1 + 64))
  {
    return -1;
  }

  v2 = *(a1 + 176);
  if (v2)
  {
    return *(v2 + 7432);
  }

  else
  {
    return *(a1 + 8) * *(a1 + 192);
  }
}

uint64_t kpdecode_cursor_set_option(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    return -1;
  }

  result = *(a1 + 3292);
  *(a1 + 3292) = a3 != 0;
  return result;
}

const void *kpdecode_record_id_string_get_content(void *a1, uint64_t *a2)
{
  v4 = a1[917];
  if (!v4)
  {
    v5 = a1 + 844;
    v7 = a1[876];
    goto LABEL_30;
  }

  v5 = *v4;
  v6 = *(v4 + 8);
  if (*(v4 + 26) << 16 != 0x10000)
  {
    v8 = malloc_type_malloc(0x10uLL, 0x20040A4A59CD2uLL);
    *v8 = a1[930];
    v9 = malloc_type_calloc(1uLL, 0x20uLL, 0x1090040F898E8EEuLL);
    v8[1] = v9;
    v9[3] = 65537;
    a1[930] = v8;
    v10 = a1[876];
    v11 = *v9;
    if (*v9)
    {
      v12 = v9[2];
      if (v12 - v9[1] >= v10)
      {
        goto LABEL_16;
      }

      v13 = 2 * v12;
      v14 = 1 << -__clz(v12 + v10 - 1);
      if (v13 <= v14)
      {
        v15 = v14;
      }

      else
      {
        v15 = v13;
      }

      v11 = reallocf(v11, v15);
    }

    else
    {
      v16 = 1 << -__clz(v10 - 1);
      if (v16 <= 0x100)
      {
        v16 = 256;
      }

      v15 = v16;
      v11 = malloc_type_malloc(v16, 0x76CBFD98uLL);
    }

    *v9 = v11;
    if (!v11)
    {
      goto LABEL_22;
    }

    v9[2] = v15;
LABEL_16:
    memcpy(v9[1] + v11, a1 + 844, v10);
    v17 = *v9;
    v18 = v9[1] + v10;
    v9[1] = v18;
    if (v17)
    {
      v19 = v9[2];
      if (v19 - v18 >= v6)
      {
        goto LABEL_27;
      }

      v20 = 2 * v19;
      v21 = 1 << -__clz(v19 + v6 - 1);
      if (v20 <= v21)
      {
        v22 = v21;
      }

      else
      {
        v22 = v20;
      }

      v17 = reallocf(v17, v22);
LABEL_25:
      *v9 = v17;
      if (!v17)
      {
        v5 = 0;
        goto LABEL_29;
      }

      v9[2] = v22;
LABEL_27:
      memcpy(v9[1] + v17, v5, v6);
      v5 = *v9;
      v9[1] = v9[1] + v6;
LABEL_29:
      a1[917] = v9;
      v7 = v9[1] - 1;
      goto LABEL_30;
    }

LABEL_22:
    v23 = 1 << -__clz(v6 - 1);
    if (v23 <= 0x100)
    {
      v23 = 256;
    }

    v22 = v23;
    v17 = malloc_type_malloc(v23, 0x76CBFD98uLL);
    goto LABEL_25;
  }

  v7 = v6 - 1;
LABEL_30:
  *a2 = v7;
  return v5;
}

void *add_string_data(_DWORD *a1, uint64_t a2, int a3)
{
  v6 = *(a2 + 52);
  v7 = *&a1[128 * (a3 - 1) + 178 + 2 * v6];
  result = batch_get_bytes(a1, (a2 + 8), 4uLL, v7, a3);
  if ((*(a2 + 48) & 2) != 0)
  {
    if (a3 == 3)
    {
      *&a1[2 * v6 + 434] = 0;
LABEL_18:
      *(v7 + 7384) = 1;
      return result;
    }

    if (a3 == 2)
    {
      *&a1[2 * v6 + 306] = 0;
      return result;
    }

    v9 = *(v7 + 7336);
    if (v9)
    {
      result = *v9;
      if (*v9)
      {
        v10 = *(v9 + 16);
        if (v10 == *(v9 + 8))
        {
          v11 = 2 * v10;
          v12 = 1 << -__clz(v10);
          if (v11 <= v12)
          {
            v13 = v12;
          }

          else
          {
            v13 = v11;
          }

          result = reallocf(result, v13);
          *v9 = result;
          if (!result)
          {
            goto LABEL_17;
          }

          *(v9 + 16) = v13;
        }

        goto LABEL_16;
      }

      result = malloc_type_malloc(0x100uLL, 0x76CBFD98uLL);
      *v9 = result;
      if (result)
      {
        *(v9 + 16) = 256;
LABEL_16:
        *(result + (*(v9 + 8))++) = id_string_terminate_null_byte;
      }
    }

LABEL_17:
    *&a1[2 * v6 + 178] = 0;
    goto LABEL_18;
  }

  return result;
}

_DWORD *add_thread_info_sched_data2_32(_DWORD *result, uint64_t *a2, int a3)
{
  v3 = *a2;
  *a2 |= 0x100000uLL;
  HIDWORD(v4) = result[2];
  LODWORD(v4) = HIDWORD(v4);
  *(a2 + 1655) = v4 >> 16;
  v5 = result[4];
  *(a2 + 1654) = HIBYTE(v5);
  v6 = a2[828] & 0xFFF8 | (v5 >> 6) & 7;
  *(a2 + 3312) = v6;
  v7 = v6 & 0xFFFFFFC7 | (8 * ((*(result + 8) >> 3) & 7));
  *(a2 + 3312) = v7;
  LOWORD(v7) = v7 & 0xFE3F | ((result[4] & 7) << 6);
  *(a2 + 3312) = v7;
  *(a2 + 3312) = v7 & 0xF1FF | (result[6] >> 29 << 9);
  if (a3 >= 2)
  {
    *a2 = v3 | 0x8100000;
    v8 = a2[885] & 0xFFF8 | (result[6] >> 26) & 7;
    *(a2 + 3540) = v8;
    v9 = v8 & 0xFFFFFFC7 | (8 * ((result[6] >> 23) & 7));
    *(a2 + 3540) = v9;
    *(a2 + 3540) = v9 & 0xFE3F | (result[6] >> 14) & 0x1C0;
  }

  return result;
}

void kdbg_comp_reset(_DWORD *a1)
{
  v2 = a1[1];
  bzero(a1, 0x388uLL);
  a1[1] = v2;
}

unint64_t kdbg_comp_encode(int *a1, void *a2, unint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (a3 < 0x41)
  {
    v6 = safe_encode(a1, __src, a3);
    if (v6)
    {
      memcpy(a2, __src, v6);
    }

    v7 = *MEMORY[0x277D85DE8];
    return v6;
  }

  else
  {
    v4 = *MEMORY[0x277D85DE8];

    return safe_encode(a1, a2, a3);
  }
}

unint64_t safe_encode(int *a1, uint64_t a2, unint64_t a3)
{
  v6 = *(a1 + 2) - *(a1 + 1);
  v7 = (a2 + 2);
  v8 = (9 * __clz(v6 | 1)) >> 6;
  if (HIBYTE(v6))
  {
    *(a2 + 2) = 0;
    *(a2 + 3) = v6;
  }

  else
  {
    *v7 = ((2 * v6) | 1) << (8 - v8);
  }

  v9 = v7 + 9 - v8;
  v10 = a1[1];
  switch(v10)
  {
    case 0u:
      v37 = (a1 + 6);
      v38 = *a1;
      v39 = &a1[12 * *a1 + 6];
      v40 = 3999999939 * ((*(v39 + 32) << 30) | (*(v39 + 40) >> 2));
      v41 = a1 + ((BYTE5(v40) ^ BYTE3(v40)) & 0x3F);
      v42 = v41[840];
      v41[840] = *a1;
      v43 = v42 + ~v38;
      if (v43 <= 0x11)
      {
        v44 = v42 + ~v38;
      }

      else
      {
        v44 = v43 + 17;
      }

      if (v44 > 0xF || (v45 = &v37[12 * v42], *(v45 + 32) != *(v39 + 32)))
      {
        LOWORD(v44) = 0;
        if ((v38 + 1) <= 0x10)
        {
          v46 = v38 + 1;
        }

        else
        {
          v46 = 0;
        }

        v45 = &v37[12 * v46];
      }

      v47 = 0;
      v48 = 0;
      v12 = 0;
      while (1)
      {
        v49 = *(v39 + v48);
        if (v49)
        {
          v50 = *(v45 + v48);
          if ((v50 ^ v49) == 3)
          {
            v51 = 2 << v47;
          }

          else
          {
            if (v49 != v50)
            {
              v12 |= ((9 - ((9 * __cls(v49 - v50)) >> 6)) << (v48 + 16)) | (3 << v47);
              goto LABEL_55;
            }

            v51 = (1 << v47);
          }

          v12 |= v51;
        }

LABEL_55:
        v48 += 8;
        v47 += 2;
        if (v47 == 12)
        {
          v9 = encode_row(v9, v45, v39, v12);
          LOWORD(v12) = v12 | (v44 << 12);
          goto LABEL_58;
        }
      }

    case 2u:
      v23 = 0;
      v24 = 0;
      v12 = 0;
      v25 = *a1;
      v26 = &a1[12 * v25 + 6];
      v27 = &a1[12 * v25];
      v28 = -1;
      while (1)
      {
        v29 = 0;
        v30 = 0;
        v31 = 0;
        if ((v25 + 1) <= 0x10)
        {
          LODWORD(v25) = v25 + 1;
        }

        else
        {
          LODWORD(v25) = 0;
        }

        v32 = 6;
        do
        {
          v33 = *&v27[v32];
          if (!v33)
          {
            goto LABEL_33;
          }

          v34 = *&a1[12 * v25 + v32];
          if ((v34 ^ v33) == 3)
          {
            v35 = 2 << v29;
LABEL_31:
            v31 |= v35;
            goto LABEL_33;
          }

          if (v33 == v34)
          {
            v35 = (1 << v29);
            goto LABEL_31;
          }

          v36 = 9 - ((9 * __cls(v33 - v34)) >> 6);
          v31 |= (v36 << ((v32 * 4) - 8)) | (3 << v29);
          v30 += v36;
LABEL_33:
          v32 += 2;
          v29 += 2;
        }

        while (v29 != 12);
        if (v30 < v28)
        {
          v12 = v31 | (v23 << 12);
          v24 = v25;
          v28 = v30;
        }

        if (++v23 == 16)
        {
          v9 = encode_row(v9, &a1[12 * v24 + 6], v26, v12);
          goto LABEL_58;
        }
      }

    case 1u:
      v11 = 0;
      LOWORD(v12) = 0;
      v13 = &a1[12 * *a1 + 6];
      if ((*a1 + 1) <= 0x10)
      {
        v14 = *a1 + 1;
      }

      else
      {
        v14 = 0;
      }

      v15 = &a1[12 * v14 + 6];
      do
      {
        v17 = *v13;
        v13 += 2;
        v16 = v17;
        v19 = *v15;
        v15 += 2;
        v18 = v19;
        if (v16)
        {
          if (v16 == v18)
          {
            v20 = 1 << v11;
          }

          else
          {
            v21 = v16 - v18;
            v22 = (9 * __cls(v21)) >> 6;
            if (((v21 ^ (v21 >> 63)) >> 55))
            {
              *v9 = 0;
              *(v9 + 1) = v21;
            }

            else
            {
              *v9 = ((2 * v21) | 1) << (8 - v22);
            }

            v9 += 9 - v22;
            v20 = 3 << v11;
          }

          LOWORD(v12) = v12 | v20;
        }

        v11 += 2;
      }

      while (v11 != 12);
      break;
    default:
      LOWORD(v12) = 0;
      break;
  }

LABEL_58:
  *a2 = v12;
  result = v9 - a2;
  if (result > a3)
  {
    return 0;
  }

  if (*a1)
  {
    v53 = *a1 - 1;
  }

  else
  {
    v53 = 16;
  }

  *a1 = v53;
  *(a1 + 1) = *(a1 + 2);
  return result;
}

unint64_t kdbg_comp_decode(int *a1, char *a2, unint64_t a3)
{
  v26 = *MEMORY[0x277D85DE8];
  if (a3 <= 0x40)
  {
    __memcpy_chk();
    a2 = &v25;
  }

  v5 = a2[1];
  v6 = *a2 | (v5 << 8);
  v8 = a1 + 6;
  v7 = *a1;
  v9 = *a1 + (v5 >> 4);
  if (v9 > 0x10)
  {
    v9 -= 17;
  }

  v10 = &v8[12 * v9];
  v11 = *(a2 + 2);
  if (v11)
  {
    v12 = __clz(__rbit64(v11));
    v13 = v11 << (56 - 8 * v12) >> (-7 * v12 + 57);
    result = v12 + 3;
  }

  else
  {
    v13 = *(a2 + 3);
    result = 11;
  }

  v15 = 0;
  if (v7)
  {
    v16 = v7 - 1;
  }

  else
  {
    v16 = 16;
  }

  v17 = &v8[12 * v16];
  do
  {
    v18 = v6 & 3;
    if ((v6 & 3) > 1)
    {
      if (v18 == 2)
      {
        v18 = *&v10[v15] ^ 3;
      }

      else
      {
        v19 = *&a2[result];
        if (v19)
        {
          v20 = __clz(__rbit64(v19));
          v21 = (v20 + 1);
          v22 = (v19 << (-8 * (v20 + 1))) >> (-7 * v20 + 57);
        }

        else
        {
          v22 = *&a2[result + 1];
          v21 = 9;
        }

        result += v21;
        v18 = *&v10[v15] + v22;
      }
    }

    else if ((v6 & 3) != 0)
    {
      v18 = *&v10[v15];
    }

    *&v17[v15] = v18;
    v6 >>= 2;
    v15 += 2;
  }

  while (v15 != 12);
  if (result <= a3)
  {
    *a1 = v16;
    v23 = *(a1 + 2);
    *(a1 + 1) = v23;
    *(a1 + 2) = v23 + v13;
  }

  else
  {
    result = 0;
  }

  v24 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t encode_row(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = 0;
  v5 = a4 >> 16;
  do
  {
    if (v5)
    {
      v6 = *(a3 + v4) - *(a2 + v4);
      if (v5 > 8u)
      {
        *result = 0;
        *(result + 1) = v6;
      }

      else
      {
        *result = ((2 * v6) | 1) << (v5 - 1);
      }
    }

    result += v5;
    v5 >>= 8;
    v4 += 8;
  }

  while (v4 != 48);
  return result;
}