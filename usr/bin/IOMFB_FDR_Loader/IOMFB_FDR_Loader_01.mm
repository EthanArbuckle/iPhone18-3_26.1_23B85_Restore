uint64_t sub_10000E290(uint64_t a1, uint64_t a2)
{
  v4 = malloc_type_calloc(1uLL, 0x5211CuLL, 0x1000040FF314F54uLL);
  v5 = v4;
  memset(v79, 0, 20);
  v6 = 4 * *(a2 + 8);
  if (*(a1 + 3944) >= (v6 - 12))
  {
    *(a1 + 3944) = v6 - 12;
    v7 = HIWORD(*(a2 + 4));
    *v4 = v7;
    if (v6 != 12)
    {
      v8 = *(a1 + 3936);
      v9 = *v8;
      *(a1 + 3936) = v8 + 1;
      *(a1 + 3944) = v6 - 14;
      *(v4 + 2) = v9;
      if (v7 == 1)
      {
        v10 = *(a1 + 3944);
        v11 = v10 - 2;
        if (v10 >= 2)
        {
          v12 = *(a1 + 3936);
          v14 = *v12;
          v13 = v14;
          *(a1 + 3936) = v12 + 1;
          *(a1 + 3944) = v11;
          *(v4 + 3) = v14;
          if (v14 <= 0x2D)
          {
            if (v13)
            {
              v15 = 0;
              while (1)
              {
                v16 = *(a1 + 3944);
                v17 = v16 >= 4;
                v18 = v16 - 4;
                if (!v17)
                {
                  break;
                }

                v19 = *(a1 + 3936);
                v20 = *v19;
                *(a1 + 3936) = v19 + 1;
                *(a1 + 3944) = v18;
                *&v4[4 * v15++ + 8] = v20;
                if (v15 >= *(v4 + 3))
                {
                  goto LABEL_13;
                }
              }
            }

            else
            {
LABEL_13:
              v21 = 188;
              while (1)
              {
                v22 = *(a1 + 3944);
                v17 = v22 >= 2;
                v23 = v22 - 2;
                if (!v17)
                {
                  break;
                }

                v24 = *(a1 + 3936);
                v25 = *v24;
                *(a1 + 3936) = v24 + 1;
                *(a1 + 3944) = v23;
                *&v4[v21] = v25;
                v21 += 2;
                if (v21 == 216)
                {
                  if (*(v4 + 3))
                  {
                    v26 = 0;
                    v27 = v4 + 216;
LABEL_19:
                    v28 = 0;
                    v29 = v27;
LABEL_20:
                    v30 = 0;
                    while (1)
                    {
                      v31 = *(a1 + 3944);
                      v17 = v31 >= 2;
                      v32 = v31 - 2;
                      if (!v17)
                      {
                        break;
                      }

                      v33 = *(a1 + 3936);
                      v34 = *v33;
                      *(a1 + 3936) = v33 + 1;
                      *(a1 + 3944) = v32;
                      *&v29[v30] = v34;
                      v30 += 2;
                      if (v30 == 32)
                      {
                        ++v28;
                        v29 += 32;
                        if (v28 != 3)
                        {
                          goto LABEL_20;
                        }

                        ++v26;
                        v27 += 96;
                        if (v26 < *(v4 + 3))
                        {
                          goto LABEL_19;
                        }

                        if (!*(v4 + 3))
                        {
                          goto LABEL_33;
                        }

                        v35 = 0;
                        v36 = v4 + 4536;
LABEL_28:
                        v37 = 0;
                        while (1)
                        {
                          v38 = *(a1 + 3944);
                          v17 = v38 >= 2;
                          v39 = v38 - 2;
                          if (!v17)
                          {
                            goto LABEL_66;
                          }

                          v40 = *(a1 + 3936);
                          v41 = *v40;
                          *(a1 + 3936) = v40 + 1;
                          *(a1 + 3944) = v39;
                          *&v36[v37] = v41;
                          v37 += 2;
                          if (v37 == 32)
                          {
                            ++v35;
                            v36 += 32;
                            if (v35 < *(v4 + 3))
                            {
                              goto LABEL_28;
                            }

                            goto LABEL_33;
                          }
                        }
                      }
                    }
                  }

                  else
                  {
LABEL_33:
                    v42 = 2988;
                    while (1)
                    {
                      v43 = *(a1 + 3944);
                      v17 = v43 >= 2;
                      v44 = v43 - 2;
                      if (!v17)
                      {
                        break;
                      }

                      v45 = *(a1 + 3936);
                      v46 = *v45;
                      *(a1 + 3936) = v45 + 1;
                      *(a1 + 3944) = v44;
                      *&v4[2 * v42++] = v46;
                      if (v42 == 2992)
                      {
                        if (*(v4 + 3))
                        {
                          v47 = 0;
                          v48 = v4 + 5984;
LABEL_39:
                          v49 = 0;
                          v50 = v48;
LABEL_40:
                          v51 = 0;
                          while (1)
                          {
                            v52 = *(a1 + 3944);
                            v17 = v52 >= 4;
                            v53 = v52 - 4;
                            if (!v17)
                            {
                              break;
                            }

                            v54 = *(a1 + 3936);
                            v55 = *v54;
                            *(a1 + 3936) = v54 + 1;
                            *(a1 + 3944) = v53;
                            *&v50[v51] = v55;
                            v51 += 4;
                            if (v51 == 1028)
                            {
                              ++v49;
                              v50 += 1028;
                              if (v49 != 3)
                              {
                                goto LABEL_40;
                              }

                              ++v47;
                              v48 += 3084;
                              if (v47 < *(v4 + 3))
                              {
                                goto LABEL_39;
                              }

                              goto LABEL_46;
                            }
                          }
                        }

                        else
                        {
LABEL_46:
                          v56 = 0;
                          v57 = v4 + 144764;
LABEL_47:
                          v58 = 0;
                          v59 = v57;
LABEL_48:
                          v60 = 0;
                          v61 = v59;
LABEL_49:
                          v62 = 0;
                          while (1)
                          {
                            v63 = *(a1 + 3944);
                            v17 = v63 >= 2;
                            v64 = v63 - 2;
                            if (!v17)
                            {
                              break;
                            }

                            v65 = *(a1 + 3936);
                            v66 = *v65;
                            *(a1 + 3936) = v65 + 1;
                            *(a1 + 3944) = v64;
                            *&v61[v62] = v66;
                            v62 += 2;
                            if (v62 == 22)
                            {
                              ++v60;
                              v61 += 22;
                              if (v60 != 21)
                              {
                                goto LABEL_49;
                              }

                              ++v58;
                              v59 += 462;
                              if (v58 != 10)
                              {
                                goto LABEL_48;
                              }

                              ++v56;
                              v57 += 4620;
                              if (v56 != 20)
                              {
                                goto LABEL_47;
                              }

                              v67 = 0;
                              v68 = v4 + 237164;
LABEL_57:
                              v69 = 0;
                              while (1)
                              {
                                v70 = *(a1 + 3944);
                                v17 = v70 >= 2;
                                v71 = v70 - 2;
                                if (!v17)
                                {
                                  goto LABEL_66;
                                }

                                v72 = *(a1 + 3936);
                                v73 = *v72;
                                *(a1 + 3936) = v72 + 1;
                                *(a1 + 3944) = v71;
                                *&v68[v69] = v73;
                                v69 += 2;
                                if (v69 == 22)
                                {
                                  ++v67;
                                  v68 += 22;
                                  if (v67 != 21)
                                  {
                                    goto LABEL_57;
                                  }

                                  v74 = *(a1 + 3944);
                                  if (v74 <= 1)
                                  {
                                    goto LABEL_66;
                                  }

                                  *(a1 + 3936) += 2;
                                  v75 = v74 - 2;
                                  *(a1 + 3944) = v75;
                                  if (v75)
                                  {
                                    printf("e: IRDC Block data and header size mismatch by %d too many bytes\n", v75);
                                    return 0;
                                  }

                                  LODWORD(v79[0]) = 1;
                                  *(&v79[1] + 4) = v4;
                                  LODWORD(v79[1]) = 344064;
                                  BYTE4(v79[0]) = 0;
                                  v76 = (*a1)(113, v79, 20, 0, 0, *(a1 + 16));
                                  if (v76)
                                  {
                                    v78 = "i: set IRDC data succeeded";
                                  }

                                  else
                                  {
                                    v78 = "e: set IRDC data failed";
                                  }

                                  puts(v78);
                                  free(v5);
                                  return v76;
                                }
                              }
                            }
                          }
                        }

                        goto LABEL_66;
                      }
                    }
                  }

                  break;
                }
              }
            }
          }
        }
      }

      else
      {
        printf("e: Invalid IRDC version %d\n", v7);
      }
    }
  }

  else if (!v4)
  {
    return 0;
  }

LABEL_66:
  free(v5);
  return 0;
}

void *sub_10000E6C4(uint64_t a1, void *__dst, uint64_t a3)
{
  result = memcpy(__dst, *(a1 + 3936), 2 * a3);
  *(a1 + 3936) += 2 * a3;
  v6 = *(a1 + 3944);
  v7 = v6 >= 2 * a3;
  v8 = v6 - 2 * a3;
  *(a1 + 3944) = v8;
  if (!v7 || HIDWORD(v8))
  {

    return puts("e: data_sz underflow in get_array");
  }

  return result;
}

uint64_t sub_10000E744(uint64_t a1, unsigned int a2, _WORD *a3, _WORD *a4)
{
  v4 = *a4;
  if (v4 <= 0x10)
  {
    if (*a4)
    {
      v6 = 0;
      v7 = a2;
      while (1)
      {
        v8 = a3[v6];
        if (v8 == a2)
        {
          return 1;
        }

        v9 = v8 <= a2 && v7 == a2;
        v10 = a2;
        if (!v9)
        {
          a3[v6] = v7;
          LOWORD(v4) = *a4;
          v10 = v8;
        }

        ++v6;
        v7 = v10;
        if (v6 >= v4)
        {
          if (v4 == 16)
          {
            goto LABEL_2;
          }

          v11 = &a3[v4];
          if (v10 > *(v11 - 1))
          {
            *a4 = v4 + 1;
            *v11 = v10;
          }

          return 1;
        }
      }
    }

    else
    {
      result = 1;
      *a4 = 1;
      *a3 = a2;
    }
  }

  else
  {
LABEL_2:
    puts("e: Too many index values for LUT tables");
    return 0;
  }

  return result;
}

uint64_t sub_10000E7FC(uint64_t a1)
{
  v1 = *(a1 + 3848);
  memset(v5, 0, 20);
  if (v1)
  {
    v3 = 1;
    do
    {
      LODWORD(v5[0]) = 1;
      *(&v5[1] + 4) = v1 + 10;
      LODWORD(v5[1]) = 0x4000;
      BYTE4(v5[0]) = 0;
      if (((*a1)(117, v5, 20, 0, 0, *(a1 + 16)) & 1) == 0)
      {
        printf("e: failed to set ELVS LUT temperature %d\n", *(v1 + 4));
        v3 = 0;
      }

      v1 = *v1;
    }

    while (v1);
    if ((v3 & 1) == 0)
    {
      return 0;
    }
  }

  puts("i: set EVLS LUTs succeeded");
  return 1;
}

uint64_t sub_10000E8C8(uint64_t a1)
{
  if (*(a1 + 3848))
  {
    *(a1 + 24) |= 0x100u;
  }

  return 1;
}

uint64_t sub_10000E8E4(uint64_t a1)
{
  *(a1 + 3820) = 1;
  v1 = (*a1)(116, a1 + 3820, 28, 0, 0, *(a1 + 16));
  if (v1)
  {
    v2 = "i: set ELVS table config succeeded";
  }

  else
  {
    v2 = "e: failed to set ELVS table config";
  }

  puts(v2);
  return v1;
}

_WORD *sub_10000E94C(uint64_t a1, int a2)
{
  v3 = (a1 + 3848);
  v4 = (a1 + 3848);
  while (1)
  {
    v4 = *v4;
    if (!v4)
    {
      break;
    }

    if (*(v4 + 4) == a2)
    {
      printf("e: Duplicate elvs table temperature=%d found in input.\n", a2);
      return 0;
    }
  }

  v6 = malloc_type_calloc(1uLL, 0x110uLL, 0x10200405058FB69uLL);
  v5 = v6;
  if (v6)
  {
    bzero(v6, 0x110uLL);
    v5[4] = a2;
    v7 = *v3;
    if (*v3)
    {
      if (*(v7 + 4) <= a2)
      {
        v9 = *v3;
        while (1)
        {
          v7 = *v9;
          if (!*v9)
          {
            break;
          }

          v8 = v9;
          v9 = *v9;
          if (*(v7 + 4) > a2)
          {
            goto LABEL_14;
          }
        }

        *v9 = v5;
      }

      else
      {
        v8 = 0;
LABEL_14:
        if (v8)
        {
          v10 = v8;
        }

        else
        {
          v10 = v3;
        }

        *v10 = v5;
        *v5 = v7;
      }
    }

    else
    {
      *v3 = v5;
    }
  }

  else
  {
    puts("e: Out of memory");
  }

  return v5;
}

uint64_t sub_10000EA58(uint64_t a1, unsigned __int16 a2, unsigned __int16 *a3, _WORD *a4)
{
  v4 = *a4;
  if (v4 <= 0xA)
  {
    if (*a4)
    {
      v6 = 0;
      v7 = a2;
      while (1)
      {
        v8 = a3[v6];
        if (v8 == a2)
        {
          return 1;
        }

        v9 = v8 <= a2 && v7 == a2;
        v10 = a2;
        if (!v9)
        {
          a3[v6] = v7;
          LOWORD(v4) = *a4;
          v10 = v8;
        }

        ++v6;
        v7 = v10;
        if (v6 >= v4)
        {
          if (v4 == 10)
          {
            goto LABEL_2;
          }

          v11 = &a3[v4];
          if (*(v11 - 1) < v10)
          {
            *a4 = v4 + 1;
            *v11 = v10;
          }

          return 1;
        }
      }
    }

    else
    {
      result = 1;
      *a4 = 1;
      *a3 = a2;
    }
  }

  else
  {
LABEL_2:
    puts("e: Too many index values for LUT tables");
    return 0;
  }

  return result;
}

uint64_t sub_10000EB1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 6);
  v3 = *(a1 + 28);
  if (v3)
  {
    v4 = v2 == v3;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v83 = *(a2 + 6);
    printf("e: unexpected block version %d\n");
    return 0;
  }

  v5 = a1;
  *(a1 + 28) = 3;
  if (*(a2 + 8) != 336)
  {
    v84 = *(a2 + 8);
    printf("e: unexpected block size %d\n");
    return 0;
  }

  v6 = *(a1 + 3936);
  v7 = *v6;
  *(a1 + 3936) = v6 + 1;
  LODWORD(v6) = *(a1 + 3944);
  *(a1 + 3944) = v6 - 2;
  if (v6 < 2)
  {
    a1 = puts("e: data_sz underflow in get_value");
  }

  v8 = 0;
  *(v5 + 244) = v7;
  memset(v89, 255, sizeof(v89));
  do
  {
    v9 = *(v5 + 3936);
    v10 = *v9;
    *(v5 + 3936) = v9 + 1;
    LODWORD(v9) = *(v5 + 3944);
    *(v5 + 3944) = v9 - 4;
    if (v9 < 4)
    {
      a1 = puts("e: data_sz underflow in get_value");
    }

    *&v89[v8] = v10;
    v8 += 4;
  }

  while (v8 != 24);
  if ((*(v5 + 2136) & 1) == 0)
  {
    a1 = sub_100007D08(v5, v89, 6);
  }

  v11 = *(v5 + 3936);
  v14 = *v11;
  v12 = v11 + 1;
  v13 = v14;
  *(v5 + 3936) = v12;
  v15 = *(v5 + 3944);
  v16 = v15 >= 2;
  v17 = v15 - 2;
  *(v5 + 3944) = v17;
  if (!v16)
  {
    a1 = puts("e: data_sz underflow in get_value");
    v12 = *(v5 + 3936);
    v17 = *(v5 + 3944);
  }

  v20 = *v12;
  v18 = v12 + 1;
  v19 = v20;
  *(v5 + 3936) = v18;
  v16 = v17 >= 2;
  v21 = v17 - 2;
  *(v5 + 3944) = v21;
  if (!v16)
  {
    a1 = puts("e: data_sz underflow in get_value");
    v18 = *(v5 + 3936);
    v21 = *(v5 + 3944);
  }

  v24 = *v18;
  v22 = v18 + 1;
  v23 = v24;
  *(v5 + 3936) = v22;
  v16 = v21 >= 2;
  v25 = v21 - 2;
  *(v5 + 3944) = v25;
  if (!v16)
  {
    a1 = puts("e: data_sz underflow in get_value");
    v22 = *(v5 + 3936);
    v25 = *(v5 + 3944);
  }

  v28 = *v22;
  v26 = (v22 + 1);
  v27 = v28;
  *(v5 + 3936) = v26;
  v16 = v25 >= 2;
  v29 = v25 - 2;
  *(v5 + 3944) = v29;
  if (!v16)
  {
    a1 = puts("e: data_sz underflow in get_value");
    v26 = *(v5 + 3936);
    v29 = *(v5 + 3944);
  }

  v30 = *v26;
  *(v5 + 3936) = v26 + 1;
  *(v5 + 3944) = v29 - 4;
  if (v29 < 4)
  {
    a1 = puts("e: data_sz underflow in get_value");
  }

  v31 = sub_100007FB8(a1, v30);
  if (!v31)
  {
    v58 = "e: useless PDC table";
LABEL_69:
    puts(v58);
    return 0;
  }

  v32 = v31;
  v86 = v23;
  v33 = (v19 << 16) / 10;
  for (i = 260; i != 300; i += 4)
  {
    v35 = *(v5 + 3936);
    v36 = *v35;
    *(v5 + 3936) = v35 + 1;
    LODWORD(v35) = *(v5 + 3944);
    *(v5 + 3944) = v35 - 4;
    if (v35 < 4)
    {
      puts("e: data_sz underflow in get_value");
    }

    *(v5 + i) = v36;
  }

  v37 = *(v5 + 3936);
  v38 = *v37;
  *(v5 + 3936) = v37 + 1;
  LODWORD(v37) = *(v5 + 3944);
  *(v5 + 3944) = v37 - 4;
  if (v37 < 4)
  {
    puts("e: data_sz underflow in get_value");
  }

  *(v5 + 300) = v38;
  for (j = 304; j != 320; j += 4)
  {
    v40 = *(v5 + 3936);
    v41 = *v40;
    *(v5 + 3936) = v40 + 1;
    LODWORD(v40) = *(v5 + 3944);
    *(v5 + 3944) = v40 - 4;
    if (v40 < 4)
    {
      puts("e: data_sz underflow in get_value");
    }

    *(v5 + j) = v41;
  }

  for (k = 176; k != 210; k += 2)
  {
    v43 = *(v5 + 3936);
    v44 = *v43;
    *(v5 + 3936) = v43 + 1;
    LODWORD(v43) = *(v5 + 3944);
    *(v5 + 3944) = v43 - 2;
    if (v43 < 2)
    {
      puts("e: data_sz underflow in get_value");
    }

    if (*(v5 + k))
    {
      v45 = v44 == *(v5 + k);
    }

    else
    {
      v45 = 1;
    }

    if (!v45)
    {
      v58 = "e: inconsistent DC index";
      goto LABEL_69;
    }

    *(v5 + k) = v44;
  }

  v85 = v13;
  *(v5 + 250) = 17;
  memset(__b, 170, sizeof(__b));
  for (m = 0; m != 578; m += 2)
  {
    v47 = *(v5 + 3936);
    v48 = *v47;
    *(v5 + 3936) = v47 + 1;
    LODWORD(v47) = *(v5 + 3944);
    *(v5 + 3944) = v47 - 2;
    if (v47 < 2)
    {
      puts("e: data_sz underflow in get_value");
    }

    *&__b[m] = v48;
  }

  for (n = 210; n != 244; n += 2)
  {
    v50 = *(v5 + 3936);
    v51 = *v50;
    *(v5 + 3936) = v50 + 1;
    LODWORD(v50) = *(v5 + 3944);
    *(v5 + 3944) = v50 - 2;
    if (v50 < 2)
    {
      puts("e: data_sz underflow in get_value");
    }

    if (*(v5 + n))
    {
      v52 = v51 == *(v5 + n);
    }

    else
    {
      v52 = 1;
    }

    if (!v52)
    {
      v58 = "e: inconsistent PM index";
      goto LABEL_69;
    }

    *(v5 + n) = v51;
  }

  *(v5 + 252) = 17;
  memset(v87, 170, sizeof(v87));
  for (ii = 0; ii != 578; ii += 2)
  {
    v54 = *(v5 + 3936);
    v55 = *v54;
    *(v5 + 3936) = v54 + 1;
    LODWORD(v54) = *(v5 + 3944);
    *(v5 + 3944) = v54 - 2;
    if (v54 < 2)
    {
      puts("e: data_sz underflow in get_value");
    }

    *&v87[ii] = v55;
  }

  v56 = *(v5 + 3936);
  v57 = *v56;
  *(v5 + 3936) = v56 + 1;
  LODWORD(v56) = *(v5 + 3944);
  *(v5 + 3944) = v56 - 2;
  if (v56 < 2)
  {
    puts("e: data_sz underflow in get_value");
  }

  if ((v57 - 3) < 0xFFFFFFFE)
  {
    printf("e: illegal frame count %d\n");
    return 0;
  }

  v60 = *(v5 + 3936);
  v63 = *v60;
  v61 = (v60 + 1);
  v62 = v63;
  *(v5 + 3936) = v61;
  v64 = *(v5 + 3944);
  v16 = v64 >= 4;
  v65 = v64 - 4;
  *(v5 + 3944) = v65;
  if (!v16)
  {
    puts("e: data_sz underflow in get_value");
    v61 = *(v5 + 3936);
    v65 = *(v5 + 3944);
  }

  v68 = *v61;
  v66 = v61 + 1;
  v67 = v68;
  *(v5 + 3936) = v66;
  v16 = v65 >= 2;
  v69 = v65 - 2;
  *(v5 + 3944) = v69;
  if (!v16)
  {
    puts("e: data_sz underflow in get_value");
    v66 = *(v5 + 3936);
    v69 = *(v5 + 3944);
  }

  *(v5 + 320) = v67;
  v70 = *v66;
  *(v5 + 3936) = v66 + 1;
  *(v5 + 3944) = v69 - 2;
  if (v69 < 2)
  {
    puts("e: data_sz underflow in get_value");
  }

  *(v5 + 322) = v70;
  result = sub_10000804C(v5, v2, v85, v33, v27 << 16, v32, v86, v62);
  if (result)
  {
    v71 = result;
    if (*(result + 3508))
    {
      v72 = v57 == *(result + 3508);
    }

    else
    {
      v72 = 1;
    }

    if (!v72)
    {
      v58 = "e: inconsistent nframes value";
      goto LABEL_69;
    }

    *(result + 20) |= v32;
    v73 = 1;
    v74 = __b;
    v75 = 289;
    v76 = result;
    do
    {
      if (v32)
      {
        v76[20] = *v74;
      }

      if ((v32 & 2) != 0)
      {
        v76[309] = *v74;
      }

      v77 = *v74;
      if ((v32 & 4) != 0)
      {
        v76[598] = v77;
      }

      v73 &= v77 == 0;
      ++v74;
      ++v76;
      --v75;
    }

    while (v75);
    if (v73)
    {
      printf("e: DCLUT[%d, %d, %d, %d, %d, %d] is all zeros\n");
      return 0;
    }

    v78 = (result + 1774);
    v79 = 1;
    v80 = v87;
    v81 = 289;
    do
    {
      if (v32)
      {
        *v78 = *v80;
      }

      if ((v32 & 2) != 0)
      {
        v78[289] = *v80;
      }

      v82 = *v80;
      if ((v32 & 4) != 0)
      {
        v78[578] = v82;
      }

      v79 &= v82 == 0;
      ++v80;
      ++v78;
      --v81;
    }

    while (v81);
    if (v79)
    {
      printf("e: PMLUT[%d, %d, %d, %d, %d, %d] is all zeros\n");
      return 0;
    }

    *(result + 3508) = v57;
    result = sub_10000FFF8(v5, *(result + 8), (v5 + 36), (v5 + 246));
    if (result)
    {
      result = sub_10000FFF8(v5, *(v71 + 16), (v5 + 76), (v5 + 248));
      if (result)
      {
        result = sub_1000100A4(v5, *(v71 + 12), (v5 + 116), (v5 + 254));
        if (result)
        {
          return sub_10001015C(v5, *(v71 + 24), (v5 + 136), (v5 + 256));
        }
      }
    }
  }

  return result;
}

uint64_t sub_10000F208(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 6);
  v3 = *(a1 + 28);
  if (v3)
  {
    v4 = v2 == v3;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v73 = *(a2 + 6);
    printf("e: unexpected block version %d\n");
    return 0;
  }

  v5 = a1;
  *(a1 + 28) = 4;
  if (*(a2 + 8) != 219)
  {
    v74 = *(a2 + 8);
    printf("e: unexpected block size %d\n");
    return 0;
  }

  v6 = *(a1 + 3936);
  v7 = *v6;
  *(a1 + 3936) = v6 + 1;
  LODWORD(v6) = *(a1 + 3944);
  *(a1 + 3944) = v6 - 2;
  if (v6 < 2)
  {
    a1 = puts("e: data_sz underflow in get_value");
  }

  v8 = 0;
  *(v5 + 348) = v7;
  memset(v76, 255, sizeof(v76));
  do
  {
    v9 = *(v5 + 3936);
    v10 = *v9;
    *(v5 + 3936) = v9 + 1;
    LODWORD(v9) = *(v5 + 3944);
    *(v5 + 3944) = v9 - 4;
    if (v9 < 4)
    {
      a1 = puts("e: data_sz underflow in get_value");
    }

    *(v76 + v8) = v10;
    v8 += 4;
  }

  while (v8 != 24);
  if ((*(v5 + 2136) & 1) == 0)
  {
    a1 = sub_100007D08(v5, v76, 6);
  }

  v11 = *(v5 + 3936);
  v14 = *v11;
  v12 = v11 + 1;
  v13 = v14;
  *(v5 + 3936) = v12;
  v15 = *(v5 + 3944);
  v16 = v15 >= 2;
  v17 = v15 - 2;
  *(v5 + 3944) = v17;
  if (!v16)
  {
    a1 = puts("e: data_sz underflow in get_value");
    v12 = *(v5 + 3936);
    v17 = *(v5 + 3944);
  }

  v20 = *v12;
  v18 = v12 + 1;
  v19 = v20;
  *(v5 + 3936) = v18;
  v16 = v17 >= 2;
  v21 = v17 - 2;
  *(v5 + 3944) = v21;
  if (!v16)
  {
    a1 = puts("e: data_sz underflow in get_value");
    v18 = *(v5 + 3936);
    v21 = *(v5 + 3944);
  }

  v24 = *v18;
  v22 = v18 + 1;
  v23 = v24;
  *(v5 + 3936) = v22;
  v16 = v21 >= 2;
  v25 = v21 - 2;
  *(v5 + 3944) = v25;
  if (!v16)
  {
    a1 = puts("e: data_sz underflow in get_value");
    v22 = *(v5 + 3936);
    v25 = *(v5 + 3944);
  }

  v28 = *v22;
  v26 = (v22 + 1);
  v27 = v28;
  *(v5 + 3936) = v26;
  v16 = v25 >= 2;
  v29 = v25 - 2;
  *(v5 + 3944) = v29;
  if (!v16)
  {
    a1 = puts("e: data_sz underflow in get_value");
    v26 = *(v5 + 3936);
    v29 = *(v5 + 3944);
  }

  v30 = *v26;
  *(v5 + 3936) = v26 + 1;
  *(v5 + 3944) = v29 - 4;
  if (v29 < 4)
  {
    a1 = puts("e: data_sz underflow in get_value");
  }

  v31 = sub_100007FB8(a1, v30);
  if (!v31)
  {
    v62 = "e: channel not specified";
    goto LABEL_76;
  }

  v32 = v31;
  v75 = v23;
  v33 = 6;
  do
  {
    *(v5 + 3936) += 4;
    v34 = *(v5 + 3944);
    *(v5 + 3944) = v34 - 4;
    if (v34 < 4)
    {
      puts("e: data_sz underflow in get_value");
    }

    --v33;
  }

  while (v33);
  *(v5 + 3936) += 4;
  v35 = *(v5 + 3944);
  *(v5 + 3944) = v35 - 4;
  if (v35 < 4)
  {
    puts("e: data_sz underflow in get_value");
  }

  v36 = 6;
  do
  {
    v37 = *(v5 + 3936);
    v38 = *v37;
    *(v5 + 3936) = v37 + 1;
    LODWORD(v37) = *(v5 + 3944);
    *(v5 + 3944) = v37 - 4;
    if (v37 < 4)
    {
      puts("e: data_sz underflow in get_value");
    }

    --v36;
  }

  while (v36);
  v39 = *(v5 + 3936);
  v40 = *v39;
  *(v5 + 3936) = v39 + 1;
  LODWORD(v39) = *(v5 + 3944);
  *(v5 + 3944) = v39 - 4;
  if (v39 < 4)
  {
    puts("e: data_sz underflow in get_value");
  }

  v41 = v40 == 538988366;
  if (v38 == 1 && v40 != 538988366)
  {
    return 1;
  }

  for (i = 0; i != 22; i += 2)
  {
    v44 = *(v5 + 3936);
    v47 = *v44;
    v45 = v44 + 1;
    v46 = v47;
    *(v5 + 3936) = v45;
    v48 = *(v5 + 3944);
    v16 = v48 >= 2;
    v49 = v48 - 2;
    *(v5 + 3944) = v49;
    if (!v16)
    {
      puts("e: data_sz underflow in get_value");
      v45 = *(v5 + 3936);
      v49 = *(v5 + 3944);
    }

    *(v5 + i + 196) = v46;
    v50 = *v45;
    *(v5 + 3936) = v45 + 1;
    *(v5 + 3944) = v49 - 2;
    if (v49 < 2)
    {
      puts("e: data_sz underflow in get_value");
    }

    *(v5 + i + 236) = v50;
  }

  result = sub_10000804C(v5, v2, v13, (v19 << 16) / 10, v27 << 16, v32, v75, v41);
  if (result)
  {
    v51 = result;
    *(result + 20) |= v32;
    for (j = 280; j != 314; j += 2)
    {
      v53 = *(v5 + 3936);
      v54 = *v53;
      *(v5 + 3936) = v53 + 1;
      LODWORD(v53) = *(v5 + 3944);
      *(v5 + 3944) = v53 - 2;
      if (v53 < 2)
      {
        puts("e: data_sz underflow in get_value");
      }

      if (*(v5 + j))
      {
        v55 = v54 == *(v5 + j);
      }

      else
      {
        v55 = 1;
      }

      if (!v55)
      {
        v62 = "e: inconsistent DC index";
        goto LABEL_76;
      }

      *(v5 + j) = v54;
    }

    *(v5 + 354) = 17;
    v56 = 1;
    v57 = 289;
    v58 = v51;
    while (1)
    {
      v59 = *(v5 + 3936);
      v60 = *v59;
      *(v5 + 3936) = v59 + 1;
      LODWORD(v59) = *(v5 + 3944);
      *(v5 + 3944) = v59 - 2;
      if (v59 >= 2)
      {
        if (v32)
        {
LABEL_62:
          v58[20] = v60;
          if ((v32 & 2) != 0)
          {
            goto LABEL_63;
          }

          goto LABEL_67;
        }
      }

      else
      {
        puts("e: data_sz underflow in get_value");
        if (v32)
        {
          goto LABEL_62;
        }
      }

      if ((v32 & 2) != 0)
      {
LABEL_63:
        v58[309] = v60;
        if ((v32 & 4) == 0)
        {
          goto LABEL_69;
        }

LABEL_68:
        v58[598] = v60;
        goto LABEL_69;
      }

LABEL_67:
      if ((v32 & 4) != 0)
      {
        goto LABEL_68;
      }

LABEL_69:
      v56 &= v60 == 0;
      ++v58;
      if (!--v57)
      {
        if (v56)
        {
          printf("e: DCLUT[%d, %d, %d, %d, %d, %d] is all zeros\n");
          return 0;
        }

        for (k = 314; k != 348; k += 2)
        {
          v64 = *(v5 + 3936);
          v65 = *v64;
          *(v5 + 3936) = v64 + 1;
          LODWORD(v64) = *(v5 + 3944);
          *(v5 + 3944) = v64 - 2;
          if (v64 < 2)
          {
            puts("e: data_sz underflow in get_value");
          }

          if (*(v5 + k))
          {
            v66 = v65 == *(v5 + k);
          }

          else
          {
            v66 = 1;
          }

          if (!v66)
          {
            v62 = "e: inconsistent PM index";
            goto LABEL_76;
          }

          *(v5 + k) = v65;
        }

        *(v5 + 356) = 17;
        v67 = (v51 + 1910);
        v68 = 1;
        v69 = 34;
        while (1)
        {
          v70 = *(v5 + 3936);
          v71 = *v70;
          *(v5 + 3936) = v70 + 1;
          LODWORD(v70) = *(v5 + 3944);
          *(v5 + 3944) = v70 - 2;
          if (v70 >= 2)
          {
            if (v32)
            {
LABEL_89:
              *(v67 - 68) = v71;
              if ((v32 & 2) != 0)
              {
                goto LABEL_90;
              }

              goto LABEL_94;
            }
          }

          else
          {
            puts("e: data_sz underflow in get_value");
            if (v32)
            {
              goto LABEL_89;
            }
          }

          if ((v32 & 2) != 0)
          {
LABEL_90:
            *(v67 - 34) = v71;
            if ((v32 & 4) == 0)
            {
              goto LABEL_96;
            }

LABEL_95:
            *v67 = v71;
            goto LABEL_96;
          }

LABEL_94:
          if ((v32 & 4) != 0)
          {
            goto LABEL_95;
          }

LABEL_96:
          v68 &= v71 == 0;
          ++v67;
          if (!--v69)
          {
            if (v68)
            {
              printf("e: PMLUT[%d, %d, %d, %d, %d, %d] is all zeros\n");
              return 0;
            }

            v72 = sub_100007AEC(v5, 2uLL);
            if ((v72 - 3) <= 0xFFFFFFFD)
            {
              printf("e: illegal frame count %d\n");
              return 0;
            }

            if (!*(v51 + 1978) || v72 == *(v51 + 1978))
            {
              *(v51 + 1978) = v72;
              result = sub_100010208(v5, *(v51 + 8), (v5 + 36), (v5 + 350));
              if (result)
              {
                result = sub_100010208(v5, *(v51 + 16), (v5 + 116), (v5 + 352));
                if (result)
                {
                  result = sub_1000102B4(v5, *(v51 + 12), (v5 + 2148), (v5 + 358));
                  if (result)
                  {
                    return sub_10001036C(v5, *(v51 + 24), (v5 + 276), (v5 + 360));
                  }
                }
              }

              return result;
            }

            v62 = "e: inconsistent nframes value";
LABEL_76:
            puts(v62);
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10000F8B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 6);
  v3 = *(a1 + 28);
  if (v3)
  {
    v4 = v2 == v3;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v72 = *(a2 + 6);
    printf("e: unexpected block version %d\n");
    return 0;
  }

  v5 = a1;
  *(a1 + 28) = 5;
  *&v6 = -1;
  *(&v6 + 1) = -1;
  v76[3] = v6;
  v76[4] = v6;
  v76[1] = v6;
  v76[2] = v6;
  v75[4] = v6;
  v76[0] = v6;
  v75[2] = v6;
  v75[3] = v6;
  v75[0] = v6;
  v75[1] = v6;
  v7 = *(a1 + 3944);
  v8 = v7 - 4;
  if (v7 < 4)
  {
    return 0;
  }

  v9 = *(a1 + 3936);
  *(a1 + 3936) = v9 + 2;
  *(a1 + 3944) = v8;
  if (v8 < 2)
  {
    return 0;
  }

  *(a1 + 412) = v9[2];
  *(a1 + 3936) = v9 + 3;
  *(a1 + 3944) = v7 - 6;
  if (v7 - 6 < 2)
  {
    return 0;
  }

  *(a1 + 2188) = v9[3];
  *(a1 + 3936) = v9 + 4;
  *(a1 + 3944) = v7 - 8;
  if (v7 - 8 < 2)
  {
    return 0;
  }

  *(a1 + 2190) = v9[4];
  *(a1 + 3936) = v9 + 5;
  *(a1 + 3944) = v7 - 10;
  if (v7 - 10 < 2)
  {
    return 0;
  }

  v10 = v9[5];
  *(a1 + 2194) = v10;
  *(a1 + 3936) = v9 + 6;
  *(a1 + 3944) = v7 - 12;
  if (v7 - 12 < 2)
  {
    return 0;
  }

  *(a1 + 2192) = v9[6];
  *(a1 + 3936) = v9 + 7;
  *(a1 + 3944) = v7 - 14;
  if (v7 - 14 < 2)
  {
    return 0;
  }

  v11 = v9[7];
  *(a1 + 3936) = v9 + 8;
  *(a1 + 3944) = v7 - 16;
  v12 = v11 + 1;
  *(a1 + 2198) = v12;
  if (v7 - 16 < 2)
  {
    return 0;
  }

  *(a1 + 2196) = v9[8];
  v13 = (v9 + 9);
  *(a1 + 3936) = v9 + 9;
  v14 = v7 - 18;
  *(a1 + 3944) = v7 - 18;
  if (v10 != 3)
  {
    v25 = "e: unsupported number of color channels";
    goto LABEL_35;
  }

  if (v12 > 0x14u)
  {
    return 0;
  }

  v15 = 4 * v12;
  if (v15 > v14)
  {
    return 0;
  }

  if (v12)
  {
    v16 = 0;
    v17 = v7 - 22;
    do
    {
      if (v17 >= 0xFFFFFFFC)
      {
        return 0;
      }

      v18 = *&v9[v16 / 2 + 9];
      *(a1 + 3936) = &v9[v16 / 2 + 11];
      *(a1 + 3944) = v17;
      *(v76 + v16) = v18;
      v17 -= 4;
      v16 += 4;
    }

    while (v15 != v16);
    if (v15 > v17 + 4)
    {
      return 0;
    }

    v19 = 0;
    v20 = &v9[v16 / 2 + 11];
    do
    {
      if (v17 >= 0xFFFFFFFC)
      {
        return 0;
      }

      v21 = *&v9[v19 / 2 + 9 + v16 / 2];
      *(a1 + 3936) = v20;
      *(a1 + 3944) = v17;
      *(v75 + v19) = v21;
      v19 += 4;
      v20 += 4;
      v17 -= 4;
    }

    while (v15 != v19);
    v13 = &v9[v16 / 2 + 9 + v19 / 2];
    v14 = v17 + 4;
  }

  v22 = v14 - 4;
  if (v14 < 4)
  {
    return 0;
  }

  v23 = *v13;
  *(a1 + 3936) = v13 + 1;
  *(a1 + 3944) = v22;
  if (v23 < 0.0 || v23 > 1.0)
  {
    v25 = "e: bin mix factor must be between 0 and 1";
    goto LABEL_35;
  }

  if ((*(a1 + 2136) & 1) == 0)
  {
    a1 = sub_100007DD4(a1, v76, v75, v12, v23);
    v22 = *(v5 + 3944);
  }

  v27 = v22 - 2;
  if (v22 < 2)
  {
    return 0;
  }

  v28 = *(v5 + 3936);
  v29 = *v28;
  *(v5 + 418) = *v28;
  *(v5 + 3936) = v28 + 1;
  *(v5 + 3944) = v27;
  if (v27 < 2)
  {
    return 0;
  }

  v30 = v28[1];
  *(v5 + 420) = v30;
  *(v5 + 3936) = v28 + 2;
  *(v5 + 3944) = v22 - 4;
  if (v29 > 0x18 || v30 >= 0x19)
  {
    v25 = "e: DC or PM LUT size too big";
    goto LABEL_35;
  }

  if (v22 - 4 < 2)
  {
    return 0;
  }

  v31 = v28[2];
  *(v5 + 3936) = v28 + 3;
  *(v5 + 3944) = v22 - 6;
  if (v22 - 6 < 2)
  {
    return 0;
  }

  v32 = v28[3];
  *(v5 + 3936) = v28 + 4;
  *(v5 + 3944) = v22 - 8;
  if (v22 - 8 < 2)
  {
    return 0;
  }

  v33 = v28[4];
  *(v5 + 3936) = v28 + 5;
  *(v5 + 3944) = v22 - 10;
  if (v22 - 10 < 2)
  {
    return 0;
  }

  v34 = v28[5];
  *(v5 + 3936) = v28 + 6;
  *(v5 + 3944) = v22 - 12;
  if (v22 - 12 < 4)
  {
    return 0;
  }

  v35 = *(v28 + 3);
  *(v5 + 3936) = v28 + 8;
  *(v5 + 3944) = v22 - 16;
  v36 = sub_100007FB8(a1, v35);
  if (!v36)
  {
    v25 = "e: channel not specified";
    goto LABEL_35;
  }

  v37 = *(v5 + 3944);
  v38 = v37 >= 4;
  v39 = v37 - 4;
  if (!v38)
  {
    return 0;
  }

  v40 = v36;
  v41 = *(v5 + 3936);
  v42 = *v41;
  *(v5 + 3936) = v41 + 1;
  *(v5 + 3944) = v39;
  result = sub_10000804C(v5, v2, v31, (v32 << 16) / 10, v34 << 16, v36, v33, v42 == 538988366);
  if (result)
  {
    v43 = result;
    *(result + 20) |= v40;
    if (*(v5 + 418))
    {
      v44 = 0;
      v45 = v5 + 316;
      v46 = *(v5 + 3944);
      while (1)
      {
        v38 = v46 >= 2;
        v46 -= 2;
        if (!v38)
        {
          return 0;
        }

        v47 = *(v5 + 3936);
        v48 = *v47;
        *(v5 + 3936) = v47 + 1;
        *(v5 + 3944) = v46;
        if (*(v45 + 2 * v44) && *(v45 + 2 * v44) != v48)
        {
          break;
        }

        *(v45 + 2 * v44++) = v48;
        v50 = *(v5 + 418);
        if (v44 >= v50)
        {
          goto LABEL_65;
        }
      }

      v25 = "e: inconsistent DC index";
LABEL_35:
      puts(v25);
      return 0;
    }

    LODWORD(v50) = 0;
LABEL_65:
    v51 = v50 * v50;
    v73 = *(v5 + 420);
    v74 = v73 * v73;
    v52 = *(result + 48);
    if (!v52)
    {
      v53 = ((6 * (v74 + v51)) & 0xFFFFC000) + ((((6 * (v74 + v51)) & 0x3FFE) != 0) << 14);
      *(v43 + 40) = v53;
      v52 = malloc_type_aligned_alloc(0x4000uLL, v53, 0xDB61A9E6uLL);
      *(v43 + 48) = v52;
      if (!v52)
      {
        v25 = "e: no memory for LUTs";
        goto LABEL_35;
      }
    }

    if (!v50)
    {
      goto LABEL_81;
    }

    v54 = 0;
    v55 = &v52[3 * v51];
    v56 = 2 * v51;
    v57 = *(v5 + 3944);
    v58 = 1;
    v59 = v52;
    while (1)
    {
      v38 = v57 >= 2;
      v57 -= 2;
      if (!v38)
      {
        return 0;
      }

      v60 = *(v5 + 3936);
      v61 = *v60;
      *(v5 + 3936) = v60 + 1;
      *(v5 + 3944) = v57;
      if (v40)
      {
        *v59 = v61;
        if ((v40 & 2) != 0)
        {
LABEL_78:
          v59[(v50 * v50)] = v61;
          if ((v40 & 4) == 0)
          {
            goto LABEL_75;
          }

LABEL_74:
          v52[v56] = v61;
          goto LABEL_75;
        }
      }

      else if ((v40 & 2) != 0)
      {
        goto LABEL_78;
      }

      if ((v40 & 4) != 0)
      {
        goto LABEL_74;
      }

LABEL_75:
      v58 &= v61 == 0;
      ++v59;
      ++v56;
      v54 += 2;
      if (2 * (v50 * v50) == v54)
      {
        if (v58)
        {
LABEL_81:
          printf("e: DCLUT[%d, %d, %d, %d, %d, %d] is all zeros\n");
          return 0;
        }

        if (!*(v5 + 420))
        {
          goto LABEL_94;
        }

        v62 = 0;
        v63 = 0;
        v64 = v5 + 364;
        while (2)
        {
          v38 = v57 >= 2;
          v57 -= 2;
          if (!v38)
          {
            return 0;
          }

          v65 = v60[v62 / 2 + 1];
          *(v5 + 3936) = &v60[v62 / 2 + 2];
          *(v5 + 3944) = v57;
          if (*(v64 + v62))
          {
            v66 = *(v64 + v62) == v65;
          }

          else
          {
            v66 = 1;
          }

          if (!v66)
          {
            v25 = "e: inconsistent PM index";
            goto LABEL_35;
          }

          *(v64 + v62) = v65;
          ++v63;
          v62 += 2;
          if (v63 < *(v5 + 420))
          {
            continue;
          }

          break;
        }

        v60 = (v60 + v62);
LABEL_94:
        v67 = v60 + 1;
        if (v73)
        {
          v68 = 0;
          v69 = 2 * v74;
          LOBYTE(v70) = 1;
          while (1)
          {
            v38 = v57 >= 2;
            v57 -= 2;
            if (!v38)
            {
              return 0;
            }

            v71 = v67[v68];
            *(v5 + 3936) = &v67[v68 + 1];
            *(v5 + 3944) = v57;
            if (v40)
            {
              *&v55[v68 * 2] = v71;
              if ((v40 & 2) != 0)
              {
LABEL_105:
                *&v55[2 * v74 + v68 * 2] = v71;
                if ((v40 & 4) == 0)
                {
                  goto LABEL_102;
                }

LABEL_101:
                *&v55[2 * v69] = v71;
                goto LABEL_102;
              }
            }

            else if ((v40 & 2) != 0)
            {
              goto LABEL_105;
            }

            if ((v40 & 4) != 0)
            {
              goto LABEL_101;
            }

LABEL_102:
            v70 = (v71 == 0) & v70;
            ++v68;
            ++v69;
            if (v74 == v68)
            {
              if (v70)
              {
                break;
              }

              result = sub_100010208(v5, *(v43 + 8), (v5 + 36), (v5 + 414));
              if (result)
              {
                result = sub_100010208(v5, *(v43 + 16), (v5 + 116), (v5 + 416));
                if (result)
                {
                  result = sub_1000102B4(v5, *(v43 + 12), (v5 + 196), (v5 + 422));
                  if (result)
                  {
                    return sub_1000102B4(v5, *(v43 + 24), (v5 + 276), (v5 + 426));
                  }
                }
              }

              return result;
            }
          }
        }

        printf("e: PMLUT[%d, %d, %d, %d, %d, %d] is all zeros\n");
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10000FFF8(uint64_t a1, int a2, int *a3, _WORD *a4)
{
  v4 = *a4;
  if (v4 <= 0xA)
  {
    if (*a4)
    {
      v6 = *a4;
      v7 = a3;
      v8 = a2;
      while (1)
      {
        v9 = *v7;
        if (*v7 == a2)
        {
          return 1;
        }

        v10 = v9 <= a2 && v8 == a2;
        v11 = a2;
        if (!v10)
        {
          *v7 = v8;
          v11 = v9;
        }

        ++v7;
        v8 = v11;
        if (!--v6)
        {
          if (v4 == 10)
          {
            goto LABEL_2;
          }

          v12 = &a3[v4];
          if (v11 > *(v12 - 1))
          {
            *a4 = v4 + 1;
            *v12 = v11;
          }

          return 1;
        }
      }
    }

    else
    {
      result = 1;
      *a4 = 1;
      *a3 = a2;
    }
  }

  else
  {
LABEL_2:
    puts("e: Too many index values for LUT tables");
    return 0;
  }

  return result;
}

uint64_t sub_1000100A4(uint64_t a1, unsigned int a2, _WORD *a3, _WORD *a4)
{
  v4 = *a4;
  if (v4 <= 0xA)
  {
    if (*a4)
    {
      v6 = 0;
      v7 = a2;
      while (1)
      {
        v8 = a3[v6];
        if (v8 == a2)
        {
          return 1;
        }

        v9 = v8 <= a2 && v7 == a2;
        v10 = a2;
        if (!v9)
        {
          a3[v6] = v7;
          LOWORD(v4) = *a4;
          v10 = v8;
        }

        ++v6;
        v7 = v10;
        if (v6 >= v4)
        {
          if (v4 == 10)
          {
            goto LABEL_2;
          }

          v11 = &a3[v4];
          if (v10 > *(v11 - 1))
          {
            *a4 = v4 + 1;
            *v11 = v10;
          }

          return 1;
        }
      }
    }

    else
    {
      result = 1;
      *a4 = 1;
      *a3 = a2;
    }
  }

  else
  {
LABEL_2:
    puts("e: Too many index values for LUT tables");
    return 0;
  }

  return result;
}

uint64_t sub_10001015C(uint64_t a1, unsigned int a2, unsigned int *a3, _WORD *a4)
{
  v4 = *a4;
  if (v4 <= 0xA)
  {
    if (*a4)
    {
      v6 = *a4;
      v7 = a3;
      v8 = a2;
      while (1)
      {
        v9 = *v7;
        if (*v7 == a2)
        {
          return 1;
        }

        v10 = v9 <= a2 && v8 == a2;
        v11 = a2;
        if (!v10)
        {
          *v7 = v8;
          v11 = v9;
        }

        ++v7;
        v8 = v11;
        if (!--v6)
        {
          if (v4 == 10)
          {
            goto LABEL_2;
          }

          v12 = &a3[v4];
          if (v11 > *(v12 - 1))
          {
            *a4 = v4 + 1;
            *v12 = v11;
          }

          return 1;
        }
      }
    }

    else
    {
      result = 1;
      *a4 = 1;
      *a3 = a2;
    }
  }

  else
  {
LABEL_2:
    puts("e: Too many index values for LUT tables");
    return 0;
  }

  return result;
}

uint64_t sub_100010208(uint64_t a1, int a2, int *a3, _WORD *a4)
{
  v4 = *a4;
  if (v4 <= 0x14)
  {
    if (*a4)
    {
      v6 = *a4;
      v7 = a3;
      v8 = a2;
      while (1)
      {
        v9 = *v7;
        if (*v7 == a2)
        {
          return 1;
        }

        v10 = v9 <= a2 && v8 == a2;
        v11 = a2;
        if (!v10)
        {
          *v7 = v8;
          v11 = v9;
        }

        ++v7;
        v8 = v11;
        if (!--v6)
        {
          if (v4 == 20)
          {
            goto LABEL_2;
          }

          v12 = &a3[v4];
          if (v11 > *(v12 - 1))
          {
            *a4 = v4 + 1;
            *v12 = v11;
          }

          return 1;
        }
      }
    }

    else
    {
      result = 1;
      *a4 = 1;
      *a3 = a2;
    }
  }

  else
  {
LABEL_2:
    puts("e: Too many index values for LUT tables");
    return 0;
  }

  return result;
}

uint64_t sub_1000102B4(uint64_t a1, unsigned int a2, _WORD *a3, _WORD *a4)
{
  v4 = *a4;
  if (v4 <= 0x14)
  {
    if (*a4)
    {
      v6 = 0;
      v7 = a2;
      while (1)
      {
        v8 = a3[v6];
        if (v8 == a2)
        {
          return 1;
        }

        v9 = v8 <= a2 && v7 == a2;
        v10 = a2;
        if (!v9)
        {
          a3[v6] = v7;
          LOWORD(v4) = *a4;
          v10 = v8;
        }

        ++v6;
        v7 = v10;
        if (v6 >= v4)
        {
          if (v4 == 20)
          {
            goto LABEL_2;
          }

          v11 = &a3[v4];
          if (v10 > *(v11 - 1))
          {
            *a4 = v4 + 1;
            *v11 = v10;
          }

          return 1;
        }
      }
    }

    else
    {
      result = 1;
      *a4 = 1;
      *a3 = a2;
    }
  }

  else
  {
LABEL_2:
    puts("e: Too many index values for LUT tables");
    return 0;
  }

  return result;
}

uint64_t sub_10001036C(uint64_t a1, unsigned int a2, _WORD *a3, _WORD *a4)
{
  v4 = *a4;
  if (v4 <= 2)
  {
    if (*a4)
    {
      v6 = 0;
      v7 = a2;
      while (1)
      {
        v8 = a3[v6];
        if (v8 == a2)
        {
          return 1;
        }

        v9 = v8 <= a2 && v7 == a2;
        v10 = a2;
        if (!v9)
        {
          a3[v6] = v7;
          LOWORD(v4) = *a4;
          v10 = v8;
        }

        ++v6;
        v7 = v10;
        if (v6 >= v4)
        {
          if (v4 == 2)
          {
            goto LABEL_2;
          }

          v11 = &a3[v4];
          if (v10 > *(v11 - 1))
          {
            *a4 = v4 + 1;
            *v11 = v10;
          }

          return 1;
        }
      }
    }

    else
    {
      result = 1;
      *a4 = 1;
      *a3 = a2;
    }
  }

  else
  {
LABEL_2:
    puts("e: Too many index values for LUT tables");
    return 0;
  }

  return result;
}

uint64_t sub_100010424(uint64_t a1, unsigned int a2, _BYTE *a3, _WORD *a4)
{
  v4 = *a4;
  if (v4 <= 2)
  {
    if (*a4)
    {
      v6 = 0;
      v7 = a2;
      while (1)
      {
        v8 = a3[v6];
        if (v8 == a2)
        {
          return 1;
        }

        v9 = v8 <= a2 && v7 == a2;
        v10 = a2;
        if (!v9)
        {
          a3[v6] = v7;
          LOWORD(v4) = *a4;
          v10 = v8;
        }

        ++v6;
        v7 = v10;
        if (v6 >= v4)
        {
          if (v4 == 2)
          {
            goto LABEL_2;
          }

          v11 = &a3[v4];
          if (v10 > *(v11 - 1))
          {
            *a4 = v4 + 1;
            *v11 = v10;
          }

          return 1;
        }
      }
    }

    else
    {
      result = 1;
      *a4 = 1;
      *a3 = a2;
    }
  }

  else
  {
LABEL_2:
    puts("e: Too many index values for LUT tables");
    return 0;
  }

  return result;
}

BOOL sub_1000104DC(uint64_t a1, int *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3 >= 0x40000)
  {
    printf("e: unexpected LLMT block version %d\n");
    return 0;
  }

  if (HIWORD(v3) != 3)
  {
    return (sub_100027650(a1, a2, (a3 + 2784), 0x10u, 0, 0) & 1) != 0;
  }

  if (a2[2] != 52)
  {
    v15 = a2[2];
    printf("e: unexpected PRCW block size %d\n");
    return 0;
  }

  v6 = *(a1 + 3936);
  v7 = *v6;
  *(a1 + 3936) = v6 + 1;
  LODWORD(v6) = *(a1 + 3944);
  *(a1 + 3944) = v6 - 4;
  if (v6 < 4)
  {
    puts("e: data_sz underflow in get_value");
  }

  if (v7)
  {
    for (i = 0; i != 96; i += 4)
    {
      v9 = *(a1 + 3936);
      v10 = *v9;
      *(a1 + 3936) = v9 + 1;
      LODWORD(v9) = *(a1 + 3944);
      *(a1 + 3944) = v9 - 4;
      if (v9 < 4)
      {
        puts("e: data_sz underflow in get_value");
      }

      *(a3 + 2916 + i) = v10;
    }

    for (j = 0; j != 96; j += 4)
    {
      v12 = *(a1 + 3936);
      v13 = *v12;
      *(a1 + 3936) = v12 + 1;
      LODWORD(v12) = *(a1 + 3944);
      *(a1 + 3944) = v12 - 4;
      if (v12 < 4)
      {
        puts("e: data_sz underflow in get_value");
      }

      *(a3 + 3012 + j) = v13;
    }
  }

  return 1;
}

uint64_t sub_100010644(uint64_t a1, unsigned int a2, unsigned int *a3, unsigned int *a4)
{
  v4 = *a4;
  if (*a4 <= 0x18)
  {
    if (v4)
    {
      v6 = 0;
      v7 = a2;
      while (1)
      {
        v8 = a3[v6];
        if (v8 == a2)
        {
          return 1;
        }

        v9 = v8 <= a2 && v7 == a2;
        v10 = a2;
        if (!v9)
        {
          a3[v6] = v7;
          v4 = *a4;
          v10 = v8;
        }

        ++v6;
        v7 = v10;
        if (v6 >= v4)
        {
          if (v4 == 24)
          {
            goto LABEL_2;
          }

          if (v10 > a3[v4 - 1])
          {
            *a4 = v4 + 1;
            a3[v4] = v10;
          }

          return 1;
        }
      }
    }

    else
    {
      result = 1;
      *a4 = 1;
      *a3 = a2;
    }
  }

  else
  {
LABEL_2:
    puts("e: Too many index values for LUT tables");
    return 0;
  }

  return result;
}

BOOL sub_1000106F4(uint64_t a1, int a2)
{
  v4 = (*(a1 + 8))(@"dcvrr-a", *(a1 + 16));
  v5 = (*(a1 + 8))(@"dcvrr-b", *(a1 + 16));
  v6 = (*(a1 + 8))(@"dcvrr-c", *(a1 + 16));
  v7 = (*(a1 + 8))(@"dcvrr-d", *(a1 + 16));
  v8 = v7;
  if (a2)
  {
    printf("%s dcvrr_a 0x%x dcvrr_b 0x%x dcvrr_c 0x%x dcvrr_d 0x%x\n", "prc_binning_impl", v4, v5, v6, v7);
  }

  if (!*(a1 + 2716))
  {
    return *(a1 + 2824) != 0;
  }

  v9 = 0;
  while (1)
  {
    v10 = *(a1 + 2620 + 4 * v9);
    v11 = *(a1 + 3956);
    if (!v11)
    {
      LODWORD(v12) = 0;
LABEL_15:
      v13 = v4;
      goto LABEL_20;
    }

    v12 = 0;
    while (*(a1 + 4008 + 4 * v12) <= v10)
    {
      if (v11 == ++v12)
      {
        LODWORD(v12) = *(a1 + 3956);
        break;
      }
    }

    if (v12 > 1)
    {
      break;
    }

    if (!v12)
    {
      goto LABEL_15;
    }

    if (v12 != 1)
    {
      goto LABEL_23;
    }

    v13 = v6;
LABEL_20:
    if ((sub_10001087C(a1, a2, v13, v10, v12) & 1) == 0)
    {
      return 0;
    }

    if (++v9 >= *(a1 + 2716))
    {
      return *(a1 + 2824) != 0;
    }
  }

  if (v12 == 2)
  {
    v13 = v5;
    goto LABEL_20;
  }

  if (v12 == 3)
  {
    v13 = v8;
    goto LABEL_20;
  }

LABEL_23:
  printf("e: unknown backlight section %d\n", v12);
  return 0;
}

uint64_t sub_10001087C(_DWORD *a1, int a2, int a3, uint64_t a4, unsigned int a5)
{
  v9 = a1;
  v10 = (a1 + 1005);
  v11 = &a1[5 * a5 + 1005];
  v12 = a1[988];
  v48 = 0;
  v49 = 0;
  v47 = 0;
  sub_10001C484(&v47, v11, v11 + 4 * v12, v12);
  memset(__p, 170, sizeof(__p));
  sub_100010D60(&v47, __p);
  v13 = v9[988];
  if (v13)
  {
    for (i = 0; i < v13; ++i)
    {
      if (a2)
      {
        if (i >= (__p[1] - __p[0]) >> 2)
        {
          goto LABEL_62;
        }

        printf("%s thresholds[sec:%d][bin:%d] 0x%x\n", "interpolate_prc_bins", a5, *(__p[0] + i), *(v11 + 4 * *(__p[0] + i)));
        v13 = v9[988];
      }
    }

    v15 = __p[0];
    v16 = __p[1];
    if (v13)
    {
      v17 = 0;
      v18 = (__p[1] - __p[0]) >> 2;
      while (v18 != v17)
      {
        if (*(v11 + 4 * *(__p[0] + v17)) >= a3)
        {
          if (v17)
          {
            goto LABEL_17;
          }

          goto LABEL_15;
        }

        if (v13 == ++v17)
        {
          v17 = v13 - 1;
          if (v18 <= v17)
          {
            goto LABEL_62;
          }

          a3 = *(v11 + 4 * *(__p[0] + v17));
          goto LABEL_17;
        }
      }

      goto LABEL_62;
    }
  }

  else
  {
    v15 = __p[0];
    v16 = __p[1];
  }

LABEL_15:
  if (v16 == v15)
  {
    goto LABEL_62;
  }

  a3 = *(v11 + 4 * *v15);
  v18 = v16 - v15;
  LODWORD(v17) = 1;
LABEL_17:
  if (v18 <= v17 || (v19 = v17, v20 = (v17 - 1), v18 <= v20))
  {
LABEL_62:
    __break(1u);
LABEL_63:
    puts("e: out of memory for PRC table");
    goto LABEL_55;
  }

  v21 = v15[v19];
  v22 = v15[v20];
  v23 = *(v11 + 4 * v21);
  v45 = v22;
  v24 = 1.0;
  v25 = v23 - *(v11 + 4 * v22);
  if (v25)
  {
    v24 = (v23 - a3) / v25;
  }

  if (a2)
  {
    puts("======================================");
    printf("%s For backlight %d: \n         section %d metric 0x%x falls between \n         {thresholds[sec:%d][bin:%d]:0x%x , thresholds[sec:%d][bin:%d]:0x%x} \n         weight = %f\n", "interpolate_prc_bins", a4, a5, a3, a5, v45, *(v10 + 20 * a5 + 4 * v45), a5, v21, *(v10 + 20 * a5 + 4 * v21), v24);
    puts("======================================\n");
  }

  v26 = v9[704];
  if (v26)
  {
    v27 = 0;
    v28 = v9 + 630;
    v29 = v9 + 680;
    v43 = v9 + 992;
    LODWORD(v30) = v9[654];
    while (!v30)
    {
LABEL_51:
      ++v27;
      v10 = 1;
      if (v27 >= v26)
      {
        goto LABEL_55;
      }
    }

    v44 = 0;
    v42 = v21;
    while (1)
    {
      for (j = *&v43[2 * v45]; j; j = *j)
      {
        if (*(j + 2) == v28[v44] && *(j + 3) == v29[v27] && *(j + 4) == a4)
        {
          break;
        }
      }

      v32 = *&v43[2 * v21];
      if (!v32)
      {
        break;
      }

      while (*(v32 + 2) != v28[v44] || *(v32 + 3) != v29[v27] || *(v32 + 4) != a4)
      {
        v32 = *v32;
        if (!v32)
        {
          goto LABEL_53;
        }
      }

      if (!j)
      {
        break;
      }

      v33 = malloc_type_calloc(1uLL, 0x628uLL, 0x10200404B1403A4uLL);
      v10 = v33;
      if (!v33)
      {
        goto LABEL_63;
      }

      v40 = v9;
      v41 = a4;
      v34 = 0;
      *(v33 + 6) = 2;
      *(v33 + 8) = *(j + 1);
      v35 = j + 28;
      do
      {
        if (a2)
        {
          printf("%s Interpolated LUT[temp:%d][subframe:%d][backlight:%d][channel:%d]: ", "interpolate_prc_bins", *(v10 + 8), *(v10 + 12), *(v10 + 16), v34);
        }

        for (k = 0; k != 257; ++k)
        {
          while (1)
          {
            v37 = *(v32 + 257 * v34 + k + 14);
            v38 = (v37 + (v24 * (*(v35 + 514 * v34 + 2 * k) - v37))) + 0.5;
            *(v10 + 28 + 514 * v34 + 2 * k) = v38;
            if (a2)
            {
              break;
            }

            if (++k == 257)
            {
              goto LABEL_48;
            }
          }

          printf("%d ", v38);
        }

        puts("\n ");
LABEL_48:
        ++v34;
      }

      while (v34 != 3);
      v9 = v40;
      a4 = v41;
      *v10 = *(v40 + 353);
      *(v40 + 353) = v10;
      v30 = v40[654];
      ++v44;
      v21 = v42;
      if (v44 >= v30)
      {
        v26 = v40[704];
        goto LABEL_51;
      }
    }

LABEL_53:
    printf("e: Could not find PRC tables [%d:%d:%d] for bins [%d:%d]\n", v28[v44], v29[v27], a4, v45, v42);
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

LABEL_55:
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v47)
  {
    v48 = v47;
    operator delete(v47);
  }

  return v10;
}

void sub_100010D2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  v31 = *(v29 - 128);
  if (v31)
  {
    *(v29 - 120) = v31;
    operator delete(v31);
  }

  _Unwind_Resume(exception_object);
}

void sub_100010D60(uint64_t *a1@<X0>, unsigned int **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (a1[1] == *a1)
  {
    v4 = 0;
    v14 = 0;
  }

  else
  {
    v4 = 0;
    LODWORD(v5) = 0;
    do
    {
      v6 = a2[2];
      if (v4 >= v6)
      {
        v7 = *a2;
        v8 = v4 - *a2;
        v9 = (v8 >> 2) + 1;
        if (v9 >> 62)
        {
          sub_100006304();
        }

        v10 = v6 - v7;
        if (v10 >> 1 > v9)
        {
          v9 = v10 >> 1;
        }

        if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v11 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v9;
        }

        if (v11)
        {
          sub_10001C53C(a2, v11);
        }

        v12 = (4 * (v8 >> 2));
        *v12 = v5;
        v4 = v12 + 1;
        memcpy(0, v7, v8);
        v13 = *a2;
        *a2 = 0;
        a2[1] = v4;
        a2[2] = 0;
        if (v13)
        {
          operator delete(v13);
        }
      }

      else
      {
        *v4++ = v5;
      }

      a2[1] = v4;
      v5 = (v5 + 1);
    }

    while (v5 < (a1[1] - *a1) >> 2);
    v14 = *a2;
  }

  v15 = a1;
  sub_100023310(v14, v4, &v15);
}

void sub_100010EA4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100010EC8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 4) == 0x10000)
  {
    v3 = *(a1 + 2840);
    if (*v3 == 1)
    {
      if ((4 * *(a2 + 8) - 12) > 0x14)
      {
        v5 = *(a1 + 3936) + 1;
        *(a1 + 3936) = v5;
        v6 = *(a1 + 3944);
        v7 = v6 != 0;
        v8 = v6 - 1;
        *(a1 + 3944) = v8;
        if (!v7)
        {
          puts("e: data_sz underflow in get_value");
          v5 = *(a1 + 3936);
          v8 = *(a1 + 3944);
        }

        v9 = (v5 + 1);
        *(a1 + 3936) = v9;
        v7 = v8 != 0;
        v10 = v8 - 1;
        *(a1 + 3944) = v10;
        if (!v7)
        {
          puts("e: data_sz underflow in get_value");
          v9 = *(a1 + 3936);
          v10 = *(a1 + 3944);
        }

        v12 = *v9;
        v11 = (v9 + 1);
        *(a1 + 3936) = v11;
        v7 = v10 >= 2;
        v13 = v10 - 2;
        *(a1 + 3944) = v13;
        if (!v7)
        {
          puts("e: data_sz underflow in get_value");
          v11 = *(a1 + 3936);
          v13 = *(a1 + 3944);
        }

        v15 = *v11;
        v14 = v11 + 1;
        *(a1 + 3936) = v14;
        v7 = v13 != 0;
        v16 = v13 - 1;
        *(a1 + 3944) = v16;
        if (!v7)
        {
          puts("e: data_sz underflow in get_value");
          v14 = *(a1 + 3936);
          v16 = *(a1 + 3944);
        }

        v17 = *v14;
        *(a1 + 3936) = v14 + 1;
        *(a1 + 3944) = v16 - 1;
        if (!v16)
        {
          puts("e: data_sz underflow in get_value");
        }

        if (v17 < 5)
        {
          v18 = *(a1 + 3936);
          v19 = *v18;
          *(a1 + 3936) = v18 + 1;
          LODWORD(v18) = *(a1 + 3944);
          *(a1 + 3944) = v18 - 1;
          if (!v18)
          {
            puts("e: data_sz underflow in get_value");
          }

          if (v19 < 7)
          {
            v20 = *(a1 + 3936);
            v21 = *v20;
            *(a1 + 3936) = v20 + 1;
            LODWORD(v20) = *(a1 + 3944);
            *(a1 + 3944) = v20 - 1;
            if (!v20)
            {
              puts("e: data_sz underflow in get_value");
            }

            if (v21 < 4)
            {
              v22 = v3 + 581632;
              v34 = sub_100007AEC(a1, 1uLL);
              v33 = sub_100007AEC(a1, 1uLL);
              v32 = sub_100007AEC(a1, 1uLL);
              v29 = sub_100007AEC(a1, 1uLL);
              v30 = sub_100007AEC(a1, 1uLL);
              v31 = sub_100007AEC(a1, 1uLL);
              v27 = sub_100007AEC(a1, 1uLL);
              v28 = sub_100007AEC(a1, 1uLL);
              v23 = sub_100007AEC(a1, 1uLL);
              v24 = sub_100007AEC(a1, 1uLL);
              sub_100007AEC(a1, 1uLL);
              sub_100007AEC(a1, 2uLL);
              v22[252] = v17;
              v22[253] = v19;
              v22[254] = v21;
              *(v22 + 255) = 0;
              v22[257] = v29;
              v22[258] = v23;
              v22[259] = v24;
              *(v22 + 130) = 0;
              *(v22 + 1056) = (v30 | v27) != 0;
              *(v22 + 1057) = v30 != 0;
              *(v22 + 1058) = v31 != 0;
              *(v22 + 1059) = v27 != 0;
              *(v22 + 1060) = v28 != 0;
              *(v22 + 1061) = v34 != 0;
              *(v22 + 1062) = v33 != 0;
              *(v22 + 1063) = v32 != 0;
              operator new();
            }

            printf("e: unsupported color channel count: %u > %u\n");
          }

          else
          {
            printf("e: unsupported sensor channel count: %u > %u\n");
          }
        }

        else
        {
          printf("e: unsupported region count: %u > %u\n");
        }
      }

      else
      {
        puts("e: cannot read data in CNST");
      }
    }

    else
    {
      v26 = *v3;
      printf("e: mismatching versions: %u != %u\n");
    }
  }

  else
  {
    v25 = *(a2 + 4);
    printf("e: unsupported version: 0x%x != 0x%x\n");
  }

  return 0;
}

uint64_t sub_10001132C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 4) != 0x20000)
  {
    v105 = *(a2 + 4);
    printf("e: unsupported version: 0x%x != 0x%x\n");
    return 0;
  }

  v3 = *(a1 + 2832);
  if (v3 == 1)
  {
    v4 = 2327536;
    goto LABEL_4;
  }

  v9 = v3 - 2;
  if ((v3 - 2) >= 6 || ((0x33u >> v9) & 1) == 0)
  {
    v106 = *(a1 + 2832);
    printf("e: mismatching versions: %u != 1,2,3,6,7\n");
    return 0;
  }

  v4 = qword_10002B338[v9];
LABEL_4:
  v5 = (4 * *(a2 + 8) - 12);
  if (4 * *(a2 + 8) == 12)
  {
    v8 = "e: cannot read NR and NC";
    goto LABEL_182;
  }

  v6 = (*(a1 + 2840) + v4);
  v7 = *v6;
  v112 = v6[1];
  if (v5 < 2 * *v6 * v112)
  {
    v8 = "e: underflow while reading num_svds and shift_bits";
LABEL_182:
    puts(v8);
    return 0;
  }

  v108 = 2 * v7;
  v107 = *(a1 + 3936);
  v109 = v107 + v5;
  v113 = *v6;
  if (v7)
  {
    v10 = 0;
    v11 = 33;
    v12 = 33;
    v13 = 33;
    do
    {
      v110 = v10;
      v14 = v112;
      v15 = v11;
      v16 = v12;
      v17 = v13;
      if (v112)
      {
        do
        {
          if (v3 == 1)
          {
            goto LABEL_17;
          }

          if (v3 > 5)
          {
            if (v3 == 6 || v3 == 7)
            {
              v20 = *(a1 + 3936);
              v21 = *v20;
              *(a1 + 3936) = v20 + 1;
              LODWORD(v20) = *(a1 + 3944);
              *(a1 + 3944) = v20 - 1;
              if (!v20)
              {
                puts("e: data_sz underflow in get_value");
              }

              *(*(a1 + 2840) + v17) = v21;
            }

            goto LABEL_32;
          }

          if (v3 == 2)
          {
            v22 = *(a1 + 3936);
            v23 = *v22;
            *(a1 + 3936) = v22 + 1;
            LODWORD(v22) = *(a1 + 3944);
            *(a1 + 3944) = v22 - 1;
            if (!v22)
            {
              puts("e: data_sz underflow in get_value");
            }

            *(*(a1 + 2840) + v15) = v23;
            goto LABEL_32;
          }

          if (v3 == 3)
          {
LABEL_17:
            v18 = *(a1 + 3936);
            v19 = *v18;
            *(a1 + 3936) = v18 + 1;
            LODWORD(v18) = *(a1 + 3944);
            *(a1 + 3944) = v18 - 1;
            if (!v18)
            {
              puts("e: data_sz underflow in get_value");
            }

            *(*(a1 + 2840) + v16) = v19;
          }

LABEL_32:
          v17 += 4;
          v16 += 4;
          v15 += 4;
          --v14;
        }

        while (v14);
      }

      v10 = v110 + 1;
      v13 += 52;
      v12 += 48;
      v11 += 28;
    }

    while (v110 + 1 != v113);
    v24 = 0;
    v25 = 32;
    v26 = 32;
    v27 = 32;
    while (1)
    {
      v111 = v24;
      v28 = v112;
      v29 = v25;
      v30 = v26;
      v31 = v27;
      if (v112)
      {
        break;
      }

LABEL_53:
      v24 = v111 + 1;
      v27 += 52;
      v26 += 48;
      v25 += 28;
      if (v111 + 1 == v113)
      {
        goto LABEL_54;
      }
    }

    while (1)
    {
      if (v3 == 1)
      {
        goto LABEL_37;
      }

      if (v3 > 5)
      {
        if (v3 == 6 || v3 == 7)
        {
          v34 = *(a1 + 3936);
          v35 = *v34;
          *(a1 + 3936) = v34 + 1;
          LODWORD(v34) = *(a1 + 3944);
          *(a1 + 3944) = v34 - 1;
          if (!v34)
          {
            puts("e: data_sz underflow in get_value");
          }

          *(*(a1 + 2840) + v31) = v35;
        }

        goto LABEL_52;
      }

      if (v3 == 2)
      {
        v36 = *(a1 + 3936);
        v37 = *v36;
        *(a1 + 3936) = v36 + 1;
        LODWORD(v36) = *(a1 + 3944);
        *(a1 + 3944) = v36 - 1;
        if (!v36)
        {
          puts("e: data_sz underflow in get_value");
        }

        *(*(a1 + 2840) + v29) = v37;
        goto LABEL_52;
      }

      if (v3 == 3)
      {
LABEL_37:
        v32 = *(a1 + 3936);
        v33 = *v32;
        *(a1 + 3936) = v32 + 1;
        LODWORD(v32) = *(a1 + 3944);
        *(a1 + 3944) = v32 - 1;
        if (!v32)
        {
          puts("e: data_sz underflow in get_value");
        }

        *(*(a1 + 2840) + v30) = v33;
      }

LABEL_52:
      v31 += 4;
      v30 += 4;
      v29 += 4;
      if (!--v28)
      {
        goto LABEL_53;
      }
    }
  }

LABEL_54:
  v38 = v113;
  if (v109 - *(a1 + 3936) < (8 * v113))
  {
    v8 = "e: underflow while reading regions";
    goto LABEL_182;
  }

  if (v113)
  {
    v39 = 8;
    v40 = v113;
    v41 = 8;
    v42 = 8;
    while (1)
    {
      if (v3 == 1)
      {
        goto LABEL_59;
      }

      if (v3 > 5)
      {
        if (v3 == 6 || v3 == 7)
        {
          v45 = *(a1 + 3936);
          v46 = *v45;
          *(a1 + 3936) = v45 + 1;
          LODWORD(v45) = *(a1 + 3944);
          *(a1 + 3944) = v45 - 2;
          if (v45 < 2)
          {
            puts("e: data_sz underflow in get_value");
          }

          *(*(a1 + 2840) + v42) = v46;
        }

        goto LABEL_74;
      }

      if (v3 == 2)
      {
        v47 = *(a1 + 3936);
        v48 = *v47;
        *(a1 + 3936) = v47 + 1;
        LODWORD(v47) = *(a1 + 3944);
        *(a1 + 3944) = v47 - 2;
        if (v47 < 2)
        {
          puts("e: data_sz underflow in get_value");
        }

        *(*(a1 + 2840) + v39) = v48;
        goto LABEL_74;
      }

      if (v3 == 3)
      {
LABEL_59:
        v43 = *(a1 + 3936);
        v44 = *v43;
        *(a1 + 3936) = v43 + 1;
        LODWORD(v43) = *(a1 + 3944);
        *(a1 + 3944) = v43 - 2;
        if (v43 < 2)
        {
          puts("e: data_sz underflow in get_value");
        }

        *(*(a1 + 2840) + v41) = v44;
      }

LABEL_74:
      v42 += 52;
      v41 += 48;
      v39 += 28;
      if (!--v40)
      {
        v49 = 12;
        v50 = v113;
        v51 = 12;
        v52 = 12;
        while (1)
        {
          if (v3 == 1)
          {
            goto LABEL_77;
          }

          if (v3 > 5)
          {
            if (v3 == 6 || v3 == 7)
            {
              v55 = *(a1 + 3936);
              v56 = *v55;
              *(a1 + 3936) = v55 + 1;
              LODWORD(v55) = *(a1 + 3944);
              *(a1 + 3944) = v55 - 2;
              if (v55 < 2)
              {
                puts("e: data_sz underflow in get_value");
              }

              *(*(a1 + 2840) + v52) = v56;
            }

            goto LABEL_92;
          }

          if (v3 == 2)
          {
            v57 = *(a1 + 3936);
            v58 = *v57;
            *(a1 + 3936) = v57 + 1;
            LODWORD(v57) = *(a1 + 3944);
            *(a1 + 3944) = v57 - 2;
            if (v57 < 2)
            {
              puts("e: data_sz underflow in get_value");
            }

            *(*(a1 + 2840) + v49) = v58;
            goto LABEL_92;
          }

          if (v3 == 3)
          {
LABEL_77:
            v53 = *(a1 + 3936);
            v54 = *v53;
            *(a1 + 3936) = v53 + 1;
            LODWORD(v53) = *(a1 + 3944);
            *(a1 + 3944) = v53 - 2;
            if (v53 < 2)
            {
              puts("e: data_sz underflow in get_value");
            }

            *(*(a1 + 2840) + v51) = v54;
          }

LABEL_92:
          v52 += 52;
          v51 += 48;
          v49 += 28;
          if (!--v50)
          {
            v59 = 16;
            v60 = v113;
            v61 = 16;
            v62 = 16;
            while (1)
            {
              if (v3 == 1)
              {
                goto LABEL_95;
              }

              if (v3 > 5)
              {
                if (v3 == 6 || v3 == 7)
                {
                  v65 = *(a1 + 3936);
                  v66 = *v65;
                  *(a1 + 3936) = v65 + 1;
                  LODWORD(v65) = *(a1 + 3944);
                  *(a1 + 3944) = v65 - 2;
                  if (v65 < 2)
                  {
                    puts("e: data_sz underflow in get_value");
                  }

                  *(*(a1 + 2840) + v62) = v66;
                }

                goto LABEL_110;
              }

              if (v3 == 2)
              {
                v67 = *(a1 + 3936);
                v68 = *v67;
                *(a1 + 3936) = v67 + 1;
                LODWORD(v67) = *(a1 + 3944);
                *(a1 + 3944) = v67 - 2;
                if (v67 < 2)
                {
                  puts("e: data_sz underflow in get_value");
                }

                *(*(a1 + 2840) + v59) = v68;
                goto LABEL_110;
              }

              if (v3 == 3)
              {
LABEL_95:
                v63 = *(a1 + 3936);
                v64 = *v63;
                *(a1 + 3936) = v63 + 1;
                LODWORD(v63) = *(a1 + 3944);
                *(a1 + 3944) = v63 - 2;
                if (v63 < 2)
                {
                  puts("e: data_sz underflow in get_value");
                }

                *(*(a1 + 2840) + v61) = v64;
              }

LABEL_110:
              v62 += 52;
              v61 += 48;
              v59 += 28;
              if (!--v60)
              {
                v69 = 20;
                v70 = v113;
                v71 = 20;
                v72 = 20;
                while (1)
                {
                  if (v3 == 1)
                  {
                    goto LABEL_113;
                  }

                  if (v3 > 5)
                  {
                    if (v3 == 6 || v3 == 7)
                    {
                      v75 = *(a1 + 3936);
                      v76 = *v75;
                      *(a1 + 3936) = v75 + 1;
                      LODWORD(v75) = *(a1 + 3944);
                      *(a1 + 3944) = v75 - 2;
                      if (v75 < 2)
                      {
                        puts("e: data_sz underflow in get_value");
                      }

                      *(*(a1 + 2840) + v72) = v76;
                    }

                    goto LABEL_128;
                  }

                  if (v3 == 2)
                  {
                    v77 = *(a1 + 3936);
                    v78 = *v77;
                    *(a1 + 3936) = v77 + 1;
                    LODWORD(v77) = *(a1 + 3944);
                    *(a1 + 3944) = v77 - 2;
                    if (v77 < 2)
                    {
                      puts("e: data_sz underflow in get_value");
                    }

                    *(*(a1 + 2840) + v69) = v78;
                    goto LABEL_128;
                  }

                  if (v3 == 3)
                  {
LABEL_113:
                    v73 = *(a1 + 3936);
                    v74 = *v73;
                    *(a1 + 3936) = v73 + 1;
                    LODWORD(v73) = *(a1 + 3944);
                    *(a1 + 3944) = v73 - 2;
                    if (v73 < 2)
                    {
                      puts("e: data_sz underflow in get_value");
                    }

                    *(*(a1 + 2840) + v71) = v74;
                  }

LABEL_128:
                  v72 += 52;
                  v71 += 48;
                  v69 += 28;
                  if (!--v70)
                  {
                    goto LABEL_129;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_129:
  if (v109 - *(a1 + 3936) < v108)
  {
    v8 = "e: underflow while reading interp_factor";
    goto LABEL_182;
  }

  if (v113)
  {
    v79 = 24;
    v80 = v113;
    v81 = 24;
    v82 = 24;
    while (1)
    {
      if (v3 == 1)
      {
        goto LABEL_134;
      }

      if (v3 > 5)
      {
        if (v3 == 6 || v3 == 7)
        {
          v85 = *(a1 + 3936);
          v86 = *v85;
          *(a1 + 3936) = v85 + 1;
          LODWORD(v85) = *(a1 + 3944);
          *(a1 + 3944) = v85 - 1;
          if (!v85)
          {
            puts("e: data_sz underflow in get_value");
          }

          *(*(a1 + 2840) + v82) = v86;
        }

        goto LABEL_149;
      }

      if (v3 == 2)
      {
        v87 = *(a1 + 3936);
        v88 = *v87;
        *(a1 + 3936) = v87 + 1;
        LODWORD(v87) = *(a1 + 3944);
        *(a1 + 3944) = v87 - 1;
        if (!v87)
        {
          puts("e: data_sz underflow in get_value");
        }

        *(*(a1 + 2840) + v79) = v88;
        goto LABEL_149;
      }

      if (v3 == 3)
      {
LABEL_134:
        v83 = *(a1 + 3936);
        v84 = *v83;
        *(a1 + 3936) = v83 + 1;
        LODWORD(v83) = *(a1 + 3944);
        *(a1 + 3944) = v83 - 1;
        if (!v83)
        {
          puts("e: data_sz underflow in get_value");
        }

        *(*(a1 + 2840) + v81) = v84;
      }

LABEL_149:
      v82 += 52;
      v81 += 48;
      v79 += 28;
      if (!--v80)
      {
        v89 = 28;
        v90 = 28;
        v91 = 28;
        while (1)
        {
          if (v3 == 1)
          {
            goto LABEL_152;
          }

          if (v3 > 5)
          {
            if (v3 == 6 || v3 == 7)
            {
              v94 = *(a1 + 3936);
              v95 = *v94;
              *(a1 + 3936) = v94 + 1;
              LODWORD(v94) = *(a1 + 3944);
              *(a1 + 3944) = v94 - 1;
              if (!v94)
              {
                puts("e: data_sz underflow in get_value");
              }

              *(*(a1 + 2840) + v91) = v95;
            }

            goto LABEL_167;
          }

          if (v3 == 2)
          {
            v96 = *(a1 + 3936);
            v97 = *v96;
            *(a1 + 3936) = v96 + 1;
            LODWORD(v96) = *(a1 + 3944);
            *(a1 + 3944) = v96 - 1;
            if (!v96)
            {
              puts("e: data_sz underflow in get_value");
            }

            *(*(a1 + 2840) + v89) = v97;
            goto LABEL_167;
          }

          if (v3 == 3)
          {
LABEL_152:
            v92 = *(a1 + 3936);
            v93 = *v92;
            *(a1 + 3936) = v92 + 1;
            LODWORD(v92) = *(a1 + 3944);
            *(a1 + 3944) = v92 - 1;
            if (!v92)
            {
              puts("e: data_sz underflow in get_value");
            }

            *(*(a1 + 2840) + v90) = v93;
          }

LABEL_167:
          v91 += 52;
          v90 += 48;
          v89 += 28;
          if (!--v38)
          {
            goto LABEL_168;
          }
        }
      }
    }
  }

LABEL_168:
  v98 = *(a1 + 3936) + 2;
  *(a1 + 3936) = v98;
  v99 = *(a1 + 3944);
  *(a1 + 3944) = v99 - 2;
  if (v99 < 2)
  {
    puts("e: data_sz underflow in get_value");
    v98 = *(a1 + 3936);
  }

  if (v107 - v98 >= 0)
  {
    v100 = -((v107 - v98) & 3);
  }

  else
  {
    v100 = (v98 - v107) & 3;
  }

  if (v100)
  {
    v101 = v100 - 4;
    do
    {
      ++*(a1 + 3936);
      v102 = *(a1 + 3944);
      *(a1 + 3944) = v102 - 1;
      if (!v102)
      {
        puts("e: data_sz underflow in get_value");
      }
    }

    while (!__CFADD__(v101++, 1));
    v98 = *(a1 + 3936);
  }

  if (v98 != v109)
  {
    v8 = "e: parsing did not consume the full RCFG size";
    goto LABEL_182;
  }

  return 1;
}

uint64_t sub_100011D18(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 4) != 0x20000)
  {
    v109 = *(a2 + 4);
    printf("e: unsupported version: 0x%x != 0x%x\n");
    return 0;
  }

  v3 = *(a1 + 2832);
  switch(v3)
  {
    case 1:
      v4 = 2327536;
      break;
    case 3:
      v4 = 1918576;
      break;
    case 7:
      v4 = 6182680;
      break;
    case 6:
      v4 = 1876064;
      break;
    default:
      v110 = *(a1 + 2832);
      printf("e: mismatching versions: %u != 1,3,6, 7\n");
      return 0;
  }

  v5 = 4 * *(a2 + 8);
  v6 = (v5 - 12);
  if (v5 == 12)
  {
    v19 = "e: underflow while temperature / brightness";
LABEL_32:
    puts(v19);
    return 0;
  }

  v7 = *(a1 + 2840);
  v8 = &v7[v4];
  v9 = *(a1 + 3936);
  v10 = &v9[v6];
  v11 = *v8;
  v149 = v8[2];
  switch(v3)
  {
    case 1:
      break;
    case 7:
      v24 = (v9 + 1);
      v25 = *v9;
      *(a1 + 3936) = v9 + 1;
      v26 = *(a1 + 3944);
      v17 = v26 != 0;
      v23 = v26 - 1;
      *(a1 + 3944) = v23;
      if (!v17)
      {
        puts("e: data_sz underflow in get_value");
        v7 = *(a1 + 2840);
        v24 = *(a1 + 3936);
        v23 = *(a1 + 3944);
      }

      v7[159962] = v25;
      v16 = *v24;
      *(a1 + 3936) = v24 + 1;
      v14 = 159960;
      goto LABEL_27;
    case 6:
      v20 = (v9 + 1);
      v21 = *v9;
      *(a1 + 3936) = v9 + 1;
      v22 = *(a1 + 3944);
      v17 = v22 != 0;
      v23 = v22 - 1;
      *(a1 + 3944) = v23;
      if (!v17)
      {
        puts("e: data_sz underflow in get_value");
        v7 = *(a1 + 2840);
        v20 = *(a1 + 3936);
        v23 = *(a1 + 3944);
      }

      v7[184538] = v21;
      v16 = *v20;
      *(a1 + 3936) = v20 + 1;
      v14 = 184536;
LABEL_27:
      v17 = v23 >= 2;
      v18 = v23 - 2;
      goto LABEL_28;
  }

  v12 = *v9;
  *(a1 + 3936) = v9 + 1;
  v13 = *(a1 + 3944);
  *(a1 + 3944) = v13 - 1;
  if (!v13)
  {
    puts("e: data_sz underflow in get_value");
    v7 = *(a1 + 2840);
  }

  v14 = 319688;
  v7[319690] = v12;
  v15 = *(a1 + 3936);
  v16 = *v15;
  *(a1 + 3936) = v15 + 1;
  LODWORD(v15) = *(a1 + 3944);
  v17 = v15 >= 2;
  v18 = v15 - 2;
LABEL_28:
  *(a1 + 3944) = v18;
  if (!v17)
  {
    puts("e: data_sz underflow in get_value");
  }

  *(*(a1 + 2840) + v14) = v16;
  v27 = *(a1 + 3936);
  if (v10 - v27 <= 5)
  {
    v19 = "e: underflow while reading sizes";
    goto LABEL_32;
  }

  v30 = *v27;
  v29 = v27 + 1;
  v127 = v30;
  *(a1 + 3936) = v29;
  v31 = *(a1 + 3944);
  v17 = v31 != 0;
  v32 = v31 - 1;
  *(a1 + 3944) = v32;
  if (!v17)
  {
    puts("e: data_sz underflow in get_value");
    v29 = *(a1 + 3936);
    v32 = *(a1 + 3944);
  }

  v35 = *v29;
  v33 = v29 + 1;
  v34 = v35;
  *(a1 + 3936) = v33;
  v17 = v32 != 0;
  v36 = v32 - 1;
  *(a1 + 3944) = v36;
  if (!v17)
  {
    puts("e: data_sz underflow in get_value");
    v33 = *(a1 + 3936);
    v36 = *(a1 + 3944);
  }

  v39 = *v33;
  v37 = v33 + 1;
  v38 = v39;
  *(a1 + 3936) = v37;
  v17 = v36 != 0;
  v40 = v36 - 1;
  *(a1 + 3944) = v40;
  if (!v17)
  {
    puts("e: data_sz underflow in get_value");
    v37 = *(a1 + 3936);
    v40 = *(a1 + 3944);
  }

  v42 = *v37;
  v41 = (v37 + 1);
  v129 = v42;
  *(a1 + 3936) = v41;
  v17 = v40 != 0;
  v43 = v40 - 1;
  *(a1 + 3944) = v43;
  if (!v17)
  {
    puts("e: data_sz underflow in get_value");
    v41 = *(a1 + 3936);
    v43 = *(a1 + 3944);
  }

  v44 = *v41;
  *(a1 + 3936) = v41 + 1;
  *(a1 + 3944) = v43 - 2;
  if (v43 < 2)
  {
    puts("e: data_sz underflow in get_value");
  }

  if ((v3 & 0xFFFFFFFE) == 6 && v127 >= 6 || v3 != 6 && v127 >= 5)
  {
    printf("e: unsupported NAC: %u > %u\n");
    return 0;
  }

  if (v34 >= 5)
  {
    printf("e: unsupported NASVD: %u > %u\n");
    return 0;
  }

  if (v38 >= 3)
  {
    printf("e: unsupported NBC: %u > %u\n");
    return 0;
  }

  if (v129 >= 6)
  {
    printf("e: unsupported NBSVD: %u > %u\n");
    return 0;
  }

  if ((v3 & 0xFFFFFFFE) == 6 && v44 >= 0x81 || v3 != 6 && v44 >= 0x101)
  {
    printf("e: unsupported NHS: %u > %u\n");
    return 0;
  }

  if (&v10[-*(a1 + 3936)] < (4 * v11 * v149 * v127 * v34 * v44))
  {
    v19 = "e: underflow while reading WgTypeA";
    goto LABEL_32;
  }

  v112 = 4 * v11 * v149;
  v150 = v44;
  v118 = v11;
  v119 = v38;
  v111 = v9;
  v113 = v10;
  if (v11)
  {
    v45 = 0;
    v117 = 216;
    v116 = 200;
    v115 = 216;
    v132 = v34;
    do
    {
      v114 = v45;
      if (v127)
      {
        v46 = 0;
        v123 = v117;
        v125 = v116;
        v121 = v115;
        do
        {
          v120 = v46;
          if (v34)
          {
            v47 = 0;
            v141 = v125;
            v137 = v123;
            v134 = v121;
            do
            {
              v130 = v47;
              if (v149)
              {
                v48 = 0;
                v50 = v137;
                v49 = v141;
                v51 = v134;
                do
                {
                  v145 = v48;
                  v52 = v150;
                  v53 = v49;
                  v54 = v50;
                  v55 = v51;
                  if (v150)
                  {
                    do
                    {
                      if (v3 == 1 || v3 == 3)
                      {
                        v56 = *(a1 + 3936);
                        v57 = *v56;
                        *(a1 + 3936) = v56 + 1;
                        LODWORD(v56) = *(a1 + 3944);
                        *(a1 + 3944) = v56 - 2;
                        if (v56 < 2)
                        {
                          puts("e: data_sz underflow in get_value");
                        }

                        *(*(a1 + 2840) + v53) = v57;
                      }

                      else if (v3 == 6)
                      {
                        v58 = *(a1 + 3936);
                        v59 = *v58;
                        *(a1 + 3936) = v58 + 1;
                        LODWORD(v58) = *(a1 + 3944);
                        *(a1 + 3944) = v58 - 2;
                        if (v58 < 2)
                        {
                          puts("e: data_sz underflow in get_value");
                        }

                        *(*(a1 + 2840) + v54) = v59;
                      }

                      else
                      {
                        v60 = *(a1 + 3936);
                        v61 = *v60;
                        *(a1 + 3936) = v60 + 1;
                        LODWORD(v60) = *(a1 + 3944);
                        *(a1 + 3944) = v60 - 2;
                        if (v60 < 2)
                        {
                          puts("e: data_sz underflow in get_value");
                        }

                        *(*(a1 + 2840) + v55) = v61;
                      }

                      v55 += 4;
                      v54 += 4;
                      v53 += 4;
                      --v52;
                    }

                    while (v52);
                  }

                  v48 = v145 + 1;
                  v51 += 512;
                  v50 += 512;
                  v49 += 1024;
                }

                while (v145 + 1 != v149);
              }

              v47 = v130 + 1;
              v134 += 1536;
              v137 += 1536;
              v141 += 3072;
              LODWORD(v34) = v132;
            }

            while (v130 + 1 != v132);
          }

          v46 = v120 + 1;
          v121 += 6144;
          v123 += 6144;
          v125 += 12288;
        }

        while (v120 + 1 != v127);
      }

      v45 = v114 + 1;
      v117 += 30720;
      v115 += 24576;
      v116 += 49152;
    }

    while (v114 + 1 != v118);
    v62 = 0;
    v135 = 216;
    do
    {
      if (v127)
      {
        v63 = 0;
        v138 = v135;
        do
        {
          if (v34)
          {
            v64 = 0;
            v142 = v138;
            do
            {
              if (v149)
              {
                v65 = 0;
                v146 = v142;
                do
                {
                  if (v150)
                  {
                    v66 = 0;
                    v67 = v150;
                    v68 = v146;
                    do
                    {
                      if (v3 == 1 || v3 == 3)
                      {
                        v69 = *(a1 + 3936);
                        v70 = *v69;
                        *(a1 + 3936) = v69 + 1;
                        LODWORD(v69) = *(a1 + 3944);
                        *(a1 + 3944) = v69 - 2;
                        if (v69 < 2)
                        {
                          puts("e: data_sz underflow in get_value");
                        }

                        v71 = *(a1 + 2840) + 49152 * v62 + 12288 * v63 + 3072 * v64 + (v65 << 10) + 4 * v66 + 200;
                      }

                      else if (v3 == 6)
                      {
                        v72 = *(a1 + 3936);
                        v70 = *v72;
                        *(a1 + 3936) = v72 + 1;
                        LODWORD(v72) = *(a1 + 3944);
                        *(a1 + 3944) = v72 - 2;
                        if (v72 < 2)
                        {
                          puts("e: data_sz underflow in get_value");
                        }

                        v71 = *(a1 + 2840) + 30720 * v62 + 6144 * v63 + 1536 * v64 + (v65 << 9) + 4 * v66 + 216;
                      }

                      else
                      {
                        v73 = *(a1 + 3936);
                        v70 = *v73;
                        *(a1 + 3936) = v73 + 1;
                        LODWORD(v73) = *(a1 + 3944);
                        *(a1 + 3944) = v73 - 2;
                        if (v73 < 2)
                        {
                          puts("e: data_sz underflow in get_value");
                        }

                        v71 = *(a1 + 2840) + v68;
                      }

                      *(v71 + 2) = v70;
                      ++v66;
                      v68 += 4;
                      --v67;
                    }

                    while (v67);
                  }

                  ++v65;
                  v146 += 512;
                }

                while (v65 != v149);
              }

              ++v64;
              v142 += 1536;
              LODWORD(v34) = v132;
            }

            while (v64 != v132);
          }

          ++v63;
          v138 += 6144;
        }

        while (v63 != v127);
      }

      ++v62;
      v135 += 24576;
      LODWORD(v11) = v118;
    }

    while (v62 != v118);
  }

  v74 = v119;
  v75 = v129;
  if (&v113[-*(a1 + 3936)] < (v112 * v119 * v129 * v150))
  {
    v19 = "e: underflow while reading WgTypeB";
    goto LABEL_32;
  }

  if (v11)
  {
    v76 = 0;
    v128 = 98520;
    v126 = 196808;
    v124 = 98520;
    do
    {
      v122 = v76;
      if (v74)
      {
        v77 = 0;
        v136 = v126;
        v133 = v124;
        do
        {
          v131 = v77;
          if (v75)
          {
            v78 = 0;
            v147 = v136;
            v143 = v133;
            do
            {
              v139 = v78;
              if (v149)
              {
                v79 = 0;
                v80 = v143;
                v81 = v147;
                do
                {
                  v82 = v150;
                  v83 = v81;
                  v84 = v80;
                  if (v150)
                  {
                    do
                    {
                      if (v3 == 1 || v3 == 3)
                      {
                        v89 = *(a1 + 3936);
                        v90 = *v89;
                        *(a1 + 3936) = v89 + 1;
                        LODWORD(v89) = *(a1 + 3944);
                        *(a1 + 3944) = v89 - 2;
                        if (v89 < 2)
                        {
                          puts("e: data_sz underflow in get_value");
                        }

                        *(*(a1 + 2840) + v83) = v90;
                      }

                      else if (v3 == 6)
                      {
                        v85 = *(a1 + 3936);
                        v86 = *v85;
                        *(a1 + 3936) = v85 + 1;
                        LODWORD(v85) = *(a1 + 3944);
                        *(a1 + 3944) = v85 - 2;
                        if (v85 < 2)
                        {
                          puts("e: data_sz underflow in get_value");
                        }

                        *(*(a1 + 2840) + v84 + 24576) = v86;
                      }

                      else
                      {
                        v87 = *(a1 + 3936);
                        v88 = *v87;
                        *(a1 + 3936) = v87 + 1;
                        LODWORD(v87) = *(a1 + 3944);
                        *(a1 + 3944) = v87 - 2;
                        if (v87 < 2)
                        {
                          puts("e: data_sz underflow in get_value");
                        }

                        *(*(a1 + 2840) + v84) = v88;
                      }

                      v84 += 4;
                      v83 += 4;
                      --v82;
                    }

                    while (v82);
                  }

                  ++v79;
                  v80 += 512;
                  v81 += 1024;
                }

                while (v79 != v149);
              }

              v78 = v139 + 1;
              v143 += 1536;
              v147 += 3072;
              v75 = v129;
            }

            while (v139 + 1 != v129);
          }

          v77 = v131 + 1;
          v133 += 7680;
          v136 += 15360;
          v74 = v119;
        }

        while (v131 + 1 != v119);
      }

      v76 = v122 + 1;
      v124 += 15360;
      v126 += 30720;
    }

    while (v122 + 1 != v118);
    v91 = 0;
    while (!v74)
    {
LABEL_172:
      ++v91;
      v128 += 15360;
      if (v91 == v118)
      {
        goto LABEL_173;
      }
    }

    v92 = 0;
    v140 = v128;
    while (!v75)
    {
LABEL_171:
      ++v92;
      v140 += 7680;
      v74 = v119;
      if (v92 == v119)
      {
        goto LABEL_172;
      }
    }

    v93 = 0;
    v144 = v140;
    while (!v149)
    {
LABEL_170:
      ++v93;
      v144 += 1536;
      v75 = v129;
      if (v93 == v129)
      {
        goto LABEL_171;
      }
    }

    v94 = 0;
    v148 = v144;
    while (!v150)
    {
LABEL_169:
      ++v94;
      v148 += 512;
      if (v94 == v149)
      {
        goto LABEL_170;
      }
    }

    v95 = 0;
    v96 = v150;
    v97 = v148;
    while (1)
    {
      if (v3 == 1 || v3 == 3)
      {
        v98 = *(a1 + 3936);
        v99 = *v98;
        *(a1 + 3936) = v98 + 1;
        LODWORD(v98) = *(a1 + 3944);
        *(a1 + 3944) = v98 - 2;
        if (v98 < 2)
        {
          puts("e: data_sz underflow in get_value");
        }

        v100 = *(a1 + 2840) + 30720 * v91 + 15360 * v92 + 3072 * v93 + (v94 << 10) + 4 * v95;
        v101 = 196808;
      }

      else
      {
        if (v3 != 6)
        {
          v104 = *(a1 + 3936);
          v99 = *v104;
          *(a1 + 3936) = v104 + 1;
          LODWORD(v104) = *(a1 + 3944);
          *(a1 + 3944) = v104 - 2;
          if (v104 < 2)
          {
            puts("e: data_sz underflow in get_value");
          }

          v102 = *(a1 + 2840) + v97;
          goto LABEL_160;
        }

        v103 = *(a1 + 3936);
        v99 = *v103;
        *(a1 + 3936) = v103 + 1;
        LODWORD(v103) = *(a1 + 3944);
        *(a1 + 3944) = v103 - 2;
        if (v103 < 2)
        {
          puts("e: data_sz underflow in get_value");
        }

        v100 = *(a1 + 2840) + 15360 * v91 + 7680 * v92 + 1536 * v93 + (v94 << 9) + 4 * v95;
        v101 = 123096;
      }

      v102 = v100 + v101;
LABEL_160:
      *(v102 + 2) = v99;
      ++v95;
      v97 += 4;
      if (!--v96)
      {
        goto LABEL_169;
      }
    }
  }

LABEL_173:
  sub_100007AEC(a1, 2uLL);
  v105 = *(a1 + 3936);
  if (&v111[-v105] >= 0)
  {
    v106 = -(&v111[-v105] & 3);
  }

  else
  {
    v106 = (v105 - v111) & 3;
  }

  if (v106)
  {
    v107 = v106 - 4;
    v108 = v113;
    do
    {
      sub_100007AEC(a1, 1uLL);
      v17 = __CFADD__(v107++, 1);
    }

    while (!v17);
    v105 = *(a1 + 3936);
  }

  else
  {
    v108 = v113;
  }

  if (v105 == v108)
  {
    return 1;
  }

  puts("e: parsing did not consume the full HTMP size");
  result = 0;
  *(a1 + 3936) = v108;
  return result;
}

uint64_t sub_100012A14(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 2840);
  v5 = *(a2 + 4);
  if (v5 != 0x10000 && v5 != 0x20000)
  {
    v66 = *(a2 + 4);
    printf("e: unsupported version: 0x%x != 0x%x\n");
    return 0;
  }

  if (*v4 != 1)
  {
    v65 = *v4;
    printf("e: mismatching versions: %u != %u\n");
    return 0;
  }

  v6 = malloc_type_calloc(1uLL, 0x2888uLL, 0x1000040BB29BD8AuLL);
  if (!v6)
  {
    v41 = "e: out of memory for EMMK table";
LABEL_96:
    puts(v41);
    return 0;
  }

  v7 = 4 * *(a2 + 8);
  v8 = (v7 - 12);
  if (v7 == 12)
  {
    v41 = "e: underflow while reading indices";
    goto LABEL_96;
  }

  v9 = v6;
  v10 = v6 + 0x2000;
  v11 = *(a1 + 3936);
  v77 = v4[581884];
  v12 = v4[581889];
  v13 = v4[581885];
  v14 = (v11 + 1);
  v15 = *v11;
  *(a1 + 3936) = v11 + 1;
  v16 = *(a1 + 3944);
  v24 = v16 != 0;
  v17 = v16 - 1;
  *(a1 + 3944) = v17;
  if (!v24)
  {
    puts("e: data_sz underflow in get_value");
    v14 = *(a1 + 3936);
    v17 = *(a1 + 3944);
  }

  v10[2178] = v15;
  v18 = *v14;
  *(a1 + 3936) = v14 + 1;
  *(a1 + 3944) = v17 - 2;
  if (v17 < 2)
  {
    puts("e: data_sz underflow in get_value");
  }

  v19 = 0;
  v67 = v11;
  v68 = v9;
  v69 = &v11[v8];
  *(v10 + 1088) = v18;
  v70 = v4 + 2327589;
  v73 = v9 + 6912;
  do
  {
    v71 = v19;
    if (v70[v19] == 1)
    {
      if (&v69[-*(a1 + 3936)] < (4 * v12 * v13 * v77))
      {
        v41 = "e: underflow while reading R/G/BGLALS";
        goto LABEL_96;
      }

      v20 = 0;
      v21 = v73;
      do
      {
        v22 = 0;
        v75 = v21;
        do
        {
          v23 = 0;
          v24 = v20 >= v77 || v22 >= v12;
          v25 = !v24;
          do
          {
            if (v23 < v13)
            {
              v26 = v25;
            }

            else
            {
              v26 = 0;
            }

            v27 = 0.0;
            if (v26 == 1)
            {
              v28 = *(a1 + 3936);
              v29 = *v28;
              *(a1 + 3936) = v28 + 1;
              LODWORD(v28) = *(a1 + 3944);
              *(a1 + 3944) = v28 - 4;
              if (v28 < 4)
              {
                puts("e: data_sz underflow in get_value");
              }

              v27 = vcvts_n_f32_u32(v29, 0xBuLL);
            }

            *&v21[4 * v23++] = v27;
          }

          while (v23 != 6);
          ++v22;
          v21 += 24;
        }

        while (v22 != 12);
        ++v20;
        v21 = v75 + 288;
      }

      while (v20 != 4);
    }

    v19 = v71 + 1;
    v73 += 1152;
  }

  while (v71 != 2);
  v30 = 0;
  v74 = v68;
  do
  {
    v72 = v30;
    if (v70[v30] == 1)
    {
      if (&v69[-*(a1 + 3936)] < (8 * v12 * v13 * v77))
      {
        v41 = "e: underflow while reading R/G/BGLACSS";
        goto LABEL_96;
      }

      v31 = 0;
      v32 = v74;
      do
      {
        v33 = 0;
        v76 = v32;
        do
        {
          v34 = 0;
          v36 = v31 < v77 && v33 < v12;
          do
          {
            if (v34 < v13 && v36)
            {
              v38 = *(a1 + 3936);
              v39 = *v38;
              *(a1 + 3936) = v38 + 1;
              LODWORD(v38) = *(a1 + 3944);
              *(a1 + 3944) = v38 - 8;
              if (v38 < 8)
              {
                puts("e: data_sz underflow in get_long_value");
              }
            }

            else
            {
              v39 = 0;
            }

            *&v32[8 * v34++] = v39;
          }

          while (v34 != 6);
          ++v33;
          v32 += 48;
        }

        while (v33 != 12);
        ++v31;
        v32 = v76 + 576;
      }

      while (v31 != 4);
    }

    v30 = v72 + 1;
    v74 += 2304;
  }

  while (v72 != 2);
  v40 = *(a1 + 3936);
  if (&v69[-v40] <= 5)
  {
    v41 = "e: underflow while reading GSC scalers";
    goto LABEL_96;
  }

  v42 = v40 + 2;
  *(a1 + 3936) = v42;
  v43 = *(a1 + 3944);
  v24 = v43 >= 2;
  v44 = v43 - 2;
  *(a1 + 3944) = v44;
  if (!v24)
  {
    puts("e: data_sz underflow in get_value");
    v42 = *(a1 + 3936);
    v44 = *(a1 + 3944);
  }

  v45 = v42 + 2;
  *(a1 + 3936) = v45;
  v24 = v44 >= 2;
  v46 = v44 - 2;
  *(a1 + 3944) = v46;
  if (!v24)
  {
    puts("e: data_sz underflow in get_value");
    v45 = *(a1 + 3936);
    v46 = *(a1 + 3944);
  }

  v47 = v45 + 2;
  *(a1 + 3936) = v47;
  *(a1 + 3944) = v46 - 2;
  if (v46 < 2)
  {
    puts("e: data_sz underflow in get_value");
    v47 = *(a1 + 3936);
  }

  if (&v69[-v47] <= 1)
  {
    v41 = "e: underflow while reading GSC spare";
    goto LABEL_96;
  }

  *(a1 + 3936) = v47 + 2;
  v48 = *(a1 + 3944);
  *(a1 + 3944) = v48 - 2;
  if (v48 < 2)
  {
    puts("e: data_sz underflow in get_value");
  }

  v49 = *(a1 + 3856);
  v51 = *(v49 + 8);
  v50 = *(v49 + 16);
  if (v51 >= v50)
  {
    v53 = (v51 - *v49) >> 3;
    if ((v53 + 1) >> 61)
    {
      sub_100006304();
    }

    v54 = v50 - *v49;
    v55 = v54 >> 2;
    if (v54 >> 2 <= (v53 + 1))
    {
      v55 = v53 + 1;
    }

    if (v54 >= 0x7FFFFFFFFFFFFFF8)
    {
      v56 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v56 = v55;
    }

    if (v56)
    {
      sub_10001C584(*(a1 + 3856), v56);
    }

    *(8 * v53) = v68;
    v52 = 8 * v53 + 8;
    v57 = *(v49 + 8) - *v49;
    v58 = (8 * v53 - v57);
    memcpy(v58, *v49, v57);
    v59 = *v49;
    *v49 = v58;
    *(v49 + 8) = v52;
    *(v49 + 16) = 0;
    if (v59)
    {
      operator delete(v59);
    }
  }

  else
  {
    *v51 = v68;
    v52 = (v51 + 1);
  }

  *(v49 + 8) = v52;
  v60 = *(a1 + 3936);
  if (v67 - v60 >= 0)
  {
    v61 = -((v67 - v60) & 3);
  }

  else
  {
    v61 = (v60 - v67) & 3;
  }

  if (v61)
  {
    v62 = v61 - 4;
    do
    {
      ++*(a1 + 3936);
      v63 = *(a1 + 3944);
      *(a1 + 3944) = v63 - 1;
      if (!v63)
      {
        puts("e: data_sz underflow in get_value");
      }

      v24 = __CFADD__(v62++, 1);
    }

    while (!v24);
    v60 = *(a1 + 3936);
  }

  if (v60 != v69)
  {
    v41 = "e: parsing did not consume the full GSC size";
    goto LABEL_96;
  }

  return 1;
}

uint64_t sub_100012F98(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 4) != 196608)
  {
    v54 = *(a2 + 4);
    printf("e: unsupported version: 0x%x != 0x%x\n");
    return 0;
  }

  v3 = *(a1 + 2840);
  if (*v3 != 1)
  {
    v55 = *v3;
    printf("e: mismatching versions: %u != %u\n");
    return 0;
  }

  v62 = malloc_type_calloc(1uLL, 0x248uLL, 0x10000402A0B50A7uLL);
  v58 = v62;
  if (!v62)
  {
    v18 = "e: out of memory for EMMK table";
    goto LABEL_80;
  }

  v5 = 4 * *(a2 + 8);
  v6 = (v5 - 12);
  if (v5 == 12)
  {
    v18 = "e: underflow while reading indices";
    goto LABEL_80;
  }

  v7 = *(a1 + 3936);
  v8 = v3[581890];
  v9 = v3[581891];
  v10 = v3[581885];
  v11 = (v7 + 1);
  v12 = *v7;
  *(a1 + 3936) = v7 + 1;
  v13 = *(a1 + 3944);
  v14 = v13 != 0;
  v15 = v13 - 1;
  *(a1 + 3944) = v15;
  if (!v14)
  {
    puts("e: data_sz underflow in get_value");
    v11 = *(a1 + 3936);
    v15 = *(a1 + 3944);
  }

  v56 = v10;
  v58[578] = v12;
  v16 = *v11;
  *(a1 + 3936) = v11 + 1;
  *(a1 + 3944) = v15 - 2;
  if (v15 < 2)
  {
    puts("e: data_sz underflow in get_value");
  }

  v57 = v7;
  v59 = &v7[v6];
  *(v58 + 288) = v16;
  if (v3[581896])
  {
    v17 = (v9 + 1);
    if (&v59[-*(a1 + 3936)] < (2 * v8 * v17))
    {
      v18 = "e: underflow while reading EM mask delay";
LABEL_80:
      puts(v18);
      return 0;
    }

    v19 = 0;
    v20 = v58 + 288;
    do
    {
      for (i = 0; i != 4; ++i)
      {
        v22 = 0;
        if (v19 < v8 && i < v17)
        {
          v23 = *(a1 + 3936);
          v22 = *v23;
          *(a1 + 3936) = v23 + 1;
          LODWORD(v23) = *(a1 + 3944);
          *(a1 + 3944) = v23 - 2;
          if (v23 < 2)
          {
            puts("e: data_sz underflow in get_value");
          }
        }

        *&v20[2 * i] = v22;
      }

      ++v19;
      v20 += 8;
    }

    while (v19 != 9);
  }

  v24 = 0;
  v61 = v3 + 2327585;
  v25 = v58 + 360;
  do
  {
    if (v61[v24] == 1)
    {
      if (&v59[-*(a1 + 3936)] < (2 * v8 * v9))
      {
        v18 = "e: underflow while reading EM mask";
        goto LABEL_80;
      }

      v26 = 0;
      v27 = v25;
      do
      {
        for (j = 0; j != 3; ++j)
        {
          v29 = 0;
          if (v26 < v8 && j < v9)
          {
            v30 = *(a1 + 3936);
            v29 = *v30;
            *(a1 + 3936) = v30 + 1;
            LODWORD(v30) = *(a1 + 3944);
            *(a1 + 3944) = v30 - 2;
            if (v30 < 2)
            {
              puts("e: data_sz underflow in get_value");
            }
          }

          *&v27[2 * j] = v29;
        }

        ++v26;
        v27 += 6;
      }

      while (v26 != 9);
    }

    ++v24;
    v25 += 54;
  }

  while (v24 != 4);
  v31 = 0;
  v32 = (v9 - 1);
  do
  {
    v60 = v31;
    if (v61[v31] == 1)
    {
      if (&v59[-*(a1 + 3936)] < (4 * v8 * v32))
      {
        v18 = "e: underflow while reading EM band steps";
        goto LABEL_80;
      }

      for (k = 0; k != 9; ++k)
      {
        v34 = 0;
        v35 = 1;
        do
        {
          v36 = 0;
          v37 = v35;
          if (k < v8 && v34 < v32)
          {
            v38 = *(a1 + 3936);
            v36 = *v38;
            *(a1 + 3936) = v38 + 1;
            LODWORD(v38) = *(a1 + 3944);
            *(a1 + 3944) = v38 - 4;
            if (v38 < 4)
            {
              puts("e: data_sz underflow in get_value");
            }
          }

          v35 = 0;
          *&v58[72 * v60 + 8 * k + 4 * v34] = v36;
          v34 = 1;
        }

        while ((v37 & 1) != 0);
      }
    }

    v31 = v60 + 1;
  }

  while (v60 != 3);
  v39 = *(a1 + 3936);
  if (&v59[-v39] <= 5)
  {
    v18 = "e: underflow while reading EMMK scalers";
    goto LABEL_80;
  }

  v40 = v39 + 2;
  *(a1 + 3936) = v40;
  v41 = *(a1 + 3944);
  v14 = v41 >= 2;
  v42 = v41 - 2;
  *(a1 + 3944) = v42;
  if (!v14)
  {
    puts("e: data_sz underflow in get_value");
    v40 = *(a1 + 3936);
    v42 = *(a1 + 3944);
  }

  v43 = v40 + 2;
  *(a1 + 3936) = v43;
  v14 = v42 >= 2;
  v44 = v42 - 2;
  *(a1 + 3944) = v44;
  if (!v14)
  {
    puts("e: data_sz underflow in get_value");
    v43 = *(a1 + 3936);
    v44 = *(a1 + 3944);
  }

  v45 = v43 + 2;
  *(a1 + 3936) = v45;
  *(a1 + 3944) = v44 - 2;
  if (v44 < 2)
  {
    puts("e: data_sz underflow in get_value");
    v45 = *(a1 + 3936);
  }

  if (&v59[-v45] < 16 * v56)
  {
    v18 = "e: underflow while reading EM Counts";
    goto LABEL_80;
  }

  for (m = 0; m != 4; ++m)
  {
    for (n = v56; n; --n)
    {
      *(a1 + 3936) += 4;
      v48 = *(a1 + 3944);
      *(a1 + 3944) = v48 - 4;
      if (v48 < 4)
      {
        puts("e: data_sz underflow in get_value");
      }
    }
  }

  if (&v59[-*(a1 + 3936)] < 2)
  {
    v18 = "e: underflow while reading EMMK spare";
    goto LABEL_80;
  }

  sub_100007AEC(a1, 2uLL);
  sub_10001C5CC(*(a1 + 3864), &v62);
  v49 = *(a1 + 3936);
  if (v57 - v49 >= 0)
  {
    v50 = -((v57 - v49) & 3);
  }

  else
  {
    v50 = (v49 - v57) & 3;
  }

  if (v50)
  {
    v51 = v50 - 4;
    do
    {
      ++*(a1 + 3936);
      v52 = *(a1 + 3944);
      *(a1 + 3944) = v52 - 1;
      if (!v52)
      {
        puts("e: data_sz underflow in get_value");
      }

      v14 = __CFADD__(v51++, 1);
    }

    while (!v14);
    v49 = *(a1 + 3936);
  }

  if (v49 != v59)
  {
    v18 = "e: parsing did not consume the full EMMK size";
    goto LABEL_80;
  }

  return 1;
}

uint64_t sub_10001350C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 4) != 0x20000)
  {
    v26 = *(a2 + 4);
    printf("e: unsupported version: 0x%x != 0x%x\n");
    return 0;
  }

  v3 = *(a1 + 2840);
  if (*v3 != 2)
  {
    v27 = *v3;
    printf("e: mismatching versions: %u != %u\n");
    return 0;
  }

  v4 = (4 * *(a2 + 8) - 12);
  if (v4 <= 5)
  {
    v5 = "e: cannot read data in CNST";
LABEL_5:
    puts(v5);
    return 0;
  }

  v7 = *(a1 + 3936);
  v8 = v7 + 1;
  *(a1 + 3936) = v7 + 1;
  v9 = *(a1 + 3944);
  v10 = v9 != 0;
  v11 = v9 - 1;
  *(a1 + 3944) = v11;
  if (!v10)
  {
    puts("e: data_sz underflow in get_value");
    v8 = *(a1 + 3936);
    v11 = *(a1 + 3944);
  }

  v12 = v8 + 1;
  *(a1 + 3936) = v12;
  v10 = v11 != 0;
  v13 = v11 - 1;
  *(a1 + 3944) = v13;
  if (!v10)
  {
    puts("e: data_sz underflow in get_value");
    v12 = *(a1 + 3936);
    v13 = *(a1 + 3944);
  }

  v14 = (v12 + 1);
  *(a1 + 3936) = v14;
  v10 = v13 != 0;
  v15 = v13 - 1;
  *(a1 + 3944) = v15;
  if (!v10)
  {
    puts("e: data_sz underflow in get_value");
    v14 = *(a1 + 3936);
    v15 = *(a1 + 3944);
  }

  v16 = *v14;
  *(a1 + 3936) = v14 + 1;
  *(a1 + 3944) = v15 - 1;
  if (!v15)
  {
    puts("e: data_sz underflow in get_value");
  }

  if (v16 >= 5)
  {
    printf("e: unsupported region count: %u > %u\n");
    return 0;
  }

  v17 = *(a1 + 3936);
  v18 = *v17;
  *(a1 + 3936) = v17 + 1;
  LODWORD(v17) = *(a1 + 3944);
  *(a1 + 3944) = v17 - 1;
  if (!v17)
  {
    puts("e: data_sz underflow in get_value");
  }

  if (v18 >= 2)
  {
    printf("e: unsupported sensor channel count: %u > %u\n");
    return 0;
  }

  v19 = *(a1 + 3936);
  v20 = *v19;
  *(a1 + 3936) = v19 + 1;
  LODWORD(v19) = *(a1 + 3944);
  *(a1 + 3944) = v19 - 1;
  if (!v19)
  {
    puts("e: data_sz underflow in get_value");
  }

  if (v20 >= 4)
  {
    printf("e: unsupported color channel count: %u > %u\n");
    return 0;
  }

  v21 = v7 + v4;
  v3[3104] = v16;
  v3[3105] = v18;
  v3[3106] = v20;
  v22 = *(a1 + 3936);
  if (v7 - v22 >= 0)
  {
    v23 = -((v7 - v22) & 3);
  }

  else
  {
    v23 = (v22 - v7) & 3;
  }

  if (v23)
  {
    v24 = v23 - 4;
    do
    {
      ++*(a1 + 3936);
      v25 = *(a1 + 3944);
      *(a1 + 3944) = v25 - 1;
      if (!v25)
      {
        puts("e: data_sz underflow in get_value");
      }

      v10 = __CFADD__(v24++, 1);
    }

    while (!v10);
    v22 = *(a1 + 3936);
  }

  if (v22 != v21)
  {
    v5 = "e: parsing did not consume the full CNST size";
    goto LABEL_5;
  }

  return 1;
}

uint64_t sub_100013780(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 4) != 196608)
  {
    v53 = *(a2 + 4);
    printf("e: unsupported version: 0x%x != 0x%x\n");
    return 0;
  }

  v3 = *(a1 + 2840);
  if (*v3 != 2)
  {
    v54 = *v3;
    printf("e: mismatching versions: %u != %u\n");
    return 0;
  }

  v4 = 4 * *(a2 + 8);
  v5 = (v4 - 12);
  if (v4 == 12)
  {
    v18 = "e: underflow while temperature / brightness";
    goto LABEL_14;
  }

  v6 = *(a1 + 3936);
  v7 = v3[3104];
  v8 = v3[3106];
  v9 = v6 + 1;
  v10 = *v6;
  *(a1 + 3936) = v6 + 1;
  v11 = *(a1 + 3944);
  v12 = v11 != 0;
  v13 = v11 - 1;
  *(a1 + 3944) = v13;
  if (!v12)
  {
    puts("e: data_sz underflow in get_value");
    v9 = *(a1 + 3936);
    v13 = *(a1 + 3944);
  }

  v14 = &v6[v5];
  *(v3 + 12410) = v10;
  v17 = *v9;
  v15 = (v9 + 1);
  v16 = v17;
  *(a1 + 3936) = v15;
  *(a1 + 3944) = v13 - 2;
  if (v13 < 2)
  {
    puts("e: data_sz underflow in get_value");
    v15 = *(a1 + 3936);
  }

  *(v3 + 6204) = v16;
  if (v14 - v15 <= 3)
  {
    v18 = "e: underflow while reading sizes";
LABEL_14:
    puts(v18);
    return 0;
  }

  v22 = *v15;
  v20 = v15 + 1;
  v21 = v22;
  *(a1 + 3936) = v20;
  v23 = *(a1 + 3944);
  v12 = v23 != 0;
  v24 = v23 - 1;
  *(a1 + 3944) = v24;
  if (!v12)
  {
    puts("e: data_sz underflow in get_value");
    v20 = *(a1 + 3936);
    v24 = *(a1 + 3944);
  }

  v27 = *v20;
  v25 = (v20 + 1);
  v26 = v27;
  *(a1 + 3936) = v25;
  v12 = v24 != 0;
  v28 = v24 - 1;
  *(a1 + 3944) = v28;
  if (!v12)
  {
    puts("e: data_sz underflow in get_value");
    v25 = *(a1 + 3936);
    v28 = *(a1 + 3944);
  }

  v29 = *v25;
  *(a1 + 3936) = v25 + 1;
  *(a1 + 3944) = v28 - 2;
  if (v28 < 2)
  {
    puts("e: data_sz underflow in get_value");
  }

  if (v21 != 1)
  {
    printf("e: unsupported NAC: %u != %u\n");
    return 0;
  }

  if (v26 != 4)
  {
    printf("e: unsupported NASVD: %u != %u\n");
    return 0;
  }

  if (v29 != 64)
  {
    printf("e: unsupported NHS: %u != %u\n");
    return 0;
  }

  if (&v14[-*(a1 + 3936)] < ((v7 * v8) << 10))
  {
    v18 = "e: underflow while reading WgTypeA";
    goto LABEL_14;
  }

  v56 = v6;
  v57 = v14;
  if (v7)
  {
    v30 = 0;
    v55 = v3;
    v31 = v3 + 30;
    v60 = v7;
    do
    {
      v58 = v30;
      v32 = 0;
      v33 = v31;
      do
      {
        if (v8)
        {
          v34 = 0;
          v35 = v33;
          do
          {
            for (i = 0; i != 64; ++i)
            {
              v37 = *(a1 + 3936);
              v38 = *v37;
              *(a1 + 3936) = v37 + 1;
              LODWORD(v37) = *(a1 + 3944);
              *(a1 + 3944) = v37 - 2;
              if (v37 < 2)
              {
                puts("e: data_sz underflow in get_value");
              }

              LOWORD(v35[i]) = v38;
            }

            ++v34;
            v35 += 64;
          }

          while (v34 != v8);
        }

        ++v32;
        v33 += 192;
      }

      while (v32 != 4);
      v30 = v58 + 1;
      v31 += 768;
    }

    while (v58 + 1 != v60);
    v39 = 0;
    v40 = v55 + 122;
    do
    {
      v59 = v39;
      v41 = 0;
      v42 = v40;
      do
      {
        if (v8)
        {
          v43 = 0;
          v44 = v42;
          do
          {
            for (j = 0; j != 256; j += 4)
            {
              v46 = *(a1 + 3936);
              v47 = *v46;
              *(a1 + 3936) = v46 + 1;
              LODWORD(v46) = *(a1 + 3944);
              *(a1 + 3944) = v46 - 2;
              if (v46 < 2)
              {
                puts("e: data_sz underflow in get_value");
              }

              *&v44[j] = v47;
            }

            ++v43;
            v44 += 256;
          }

          while (v43 != v8);
        }

        ++v41;
        v42 += 768;
      }

      while (v41 != 4);
      v39 = v59 + 1;
      v40 += 3072;
    }

    while (v59 + 1 != v60);
  }

  v48 = *(a1 + 3936);
  if (&v56[-v48] >= 0)
  {
    v49 = -(&v56[-v48] & 3);
  }

  else
  {
    v49 = (v48 - v56) & 3;
  }

  if (v49)
  {
    v50 = v49 - 4;
    v51 = v57;
    do
    {
      ++*(a1 + 3936);
      v52 = *(a1 + 3944);
      *(a1 + 3944) = v52 - 1;
      if (!v52)
      {
        puts("e: data_sz underflow in get_value");
      }

      v12 = __CFADD__(v50++, 1);
    }

    while (!v12);
    v48 = *(a1 + 3936);
  }

  else
  {
    v51 = v57;
  }

  if (v48 != v51)
  {
    v18 = "e: parsing did not consume the full HTMP size";
    goto LABEL_14;
  }

  return 1;
}

uint64_t sub_100013B64(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 4) != 0x10000)
  {
    v25 = *(a2 + 4);
    printf("e: unsupported version: 0x%x != 0x%x\n");
    return 0;
  }

  v3 = *(a1 + 2840);
  if (*v3 != 2)
  {
    v26 = *v3;
    printf("e: mismatching versions: %u != %u\n");
    return 0;
  }

  v4 = 4 * *(a2 + 8);
  v5 = (v4 - 12);
  if (v4 == 12)
  {
    v12 = "e: underflow while reading sizes";
    goto LABEL_32;
  }

  v6 = *(a1 + 3936);
  v7 = v3[3105];
  v8 = v3[3106];
  v9 = *v6;
  *(a1 + 3936) = v6 + 1;
  v10 = *(a1 + 3944);
  *(a1 + 3944) = v10 - 1;
  if (!v10)
  {
    puts("e: data_sz underflow in get_value");
  }

  if (v9 != 128)
  {
    printf("e: unsupported NNIT: %u != %u\n");
    return 0;
  }

  v11 = &v6[v5];
  if (&v11[-*(a1 + 3936)] < (v7 * v8) << 8)
  {
    v12 = "e: underflow while reading multi nit LUT";
LABEL_32:
    puts(v12);
    return 0;
  }

  v14 = 0;
  v15 = v3 + 3116;
  do
  {
    v16 = v8;
    v17 = v15;
    if (v8)
    {
      do
      {
        v18 = *(a1 + 3936);
        v19 = *v18;
        *(a1 + 3936) = v18 + 1;
        LODWORD(v18) = *(a1 + 3944);
        *(a1 + 3944) = v18 - 2;
        if (v18 < 2)
        {
          puts("e: data_sz underflow in get_value");
        }

        *v17 = v19;
        v17 += 128;
        --v16;
      }

      while (v16);
    }

    ++v14;
    ++v15;
  }

  while (v14 != 128);
  v20 = *(a1 + 3936);
  if (v6 - v20 >= 0)
  {
    v21 = -((v6 - v20) & 3);
  }

  else
  {
    v21 = (v20 - v6) & 3;
  }

  if (v21)
  {
    v22 = v21 - 4;
    do
    {
      ++*(a1 + 3936);
      v23 = *(a1 + 3944);
      *(a1 + 3944) = v23 - 1;
      if (!v23)
      {
        puts("e: data_sz underflow in get_value");
      }
    }

    while (!__CFADD__(v22++, 1));
    v20 = *(a1 + 3936);
  }

  if (v20 != v11)
  {
    v12 = "e: parsing did not consume the full MTNC size";
    goto LABEL_32;
  }

  return 1;
}

uint64_t sub_100013D60(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 4) == 196608)
  {
    v3 = *(a1 + 2840);
    if (*v3 == 3)
    {
      printf("i: Processing CNST version 0x%x\n", 196608);
      if ((4 * *(a2 + 8) - 12) > 0x17)
      {
        v6 = *(a1 + 3936) + 1;
        *(a1 + 3936) = v6;
        v7 = *(a1 + 3944);
        v8 = v7 != 0;
        v9 = v7 - 1;
        *(a1 + 3944) = v9;
        if (!v8)
        {
          puts("e: data_sz underflow in get_value");
          v6 = *(a1 + 3936);
          v9 = *(a1 + 3944);
        }

        v10 = (v6 + 1);
        *(a1 + 3936) = v10;
        v8 = v9 != 0;
        v11 = v9 - 1;
        *(a1 + 3944) = v11;
        if (!v8)
        {
          puts("e: data_sz underflow in get_value");
          v10 = *(a1 + 3936);
          v11 = *(a1 + 3944);
        }

        v14 = *v10;
        v12 = (v10 + 1);
        v13 = v14;
        *(a1 + 3936) = v12;
        v8 = v11 >= 2;
        v15 = v11 - 2;
        *(a1 + 3944) = v15;
        if (!v8)
        {
          puts("e: data_sz underflow in get_value");
          v12 = *(a1 + 3936);
          v15 = *(a1 + 3944);
        }

        v18 = *v12;
        v16 = (v12 + 1);
        v17 = v18;
        *(a1 + 3936) = v16;
        v8 = v15 != 0;
        v19 = v15 - 1;
        *(a1 + 3944) = v19;
        if (!v8)
        {
          puts("e: data_sz underflow in get_value");
          v16 = *(a1 + 3936);
          v19 = *(a1 + 3944);
        }

        v22 = *v16;
        v20 = (v16 + 1);
        v21 = v22;
        *(a1 + 3936) = v20;
        v8 = v19 >= 2;
        v23 = v19 - 2;
        *(a1 + 3944) = v23;
        if (!v8)
        {
          puts("e: data_sz underflow in get_value");
          v20 = *(a1 + 3936);
          v23 = *(a1 + 3944);
        }

        v26 = *v20;
        v24 = v20 + 1;
        v25 = v26;
        *(a1 + 3936) = v24;
        v8 = v23 != 0;
        v27 = v23 - 1;
        *(a1 + 3944) = v27;
        if (!v8)
        {
          puts("e: data_sz underflow in get_value");
          v24 = *(a1 + 3936);
          v27 = *(a1 + 3944);
        }

        v28 = v24 + 1;
        *(a1 + 3936) = v28;
        v8 = v27 != 0;
        v29 = v27 - 1;
        *(a1 + 3944) = v29;
        if (!v8)
        {
          puts("e: data_sz underflow in get_value");
          v28 = *(a1 + 3936);
          v29 = *(a1 + 3944);
        }

        v30 = v28 + 1;
        *(a1 + 3936) = v30;
        v8 = v29 != 0;
        v31 = v29 - 1;
        *(a1 + 3944) = v31;
        if (!v8)
        {
          puts("e: data_sz underflow in get_value");
          v30 = *(a1 + 3936);
          v31 = *(a1 + 3944);
        }

        v34 = *v30;
        v32 = v30 + 1;
        v33 = v34;
        *(a1 + 3936) = v32;
        v8 = v31 != 0;
        v35 = v31 - 1;
        *(a1 + 3944) = v35;
        if (!v8)
        {
          puts("e: data_sz underflow in get_value");
          v32 = *(a1 + 3936);
          v35 = *(a1 + 3944);
        }

        v36 = *v32;
        *(a1 + 3936) = v32 + 1;
        *(a1 + 3944) = v35 - 1;
        if (!v35)
        {
          puts("e: data_sz underflow in get_value");
        }

        if (v13 < 0x79)
        {
          if (v17 < 3)
          {
            if (v21 < 0x79)
            {
              if (v25 < 3)
              {
                if (v33 < 0x25)
                {
                  if (v36 < 6)
                  {
                    v37 = sub_100007AEC(a1, 1uLL);
                    if (v37 < 5u)
                    {
                      v49 = v37;
                      v38 = sub_100007AEC(a1, 1uLL);
                      if (v38 < 7u)
                      {
                        v48 = v38;
                        v39 = sub_100007AEC(a1, 1uLL);
                        if (v39 < 4u)
                        {
                          v40 = v3 + 479232;
                          v47 = v39;
                          sub_100007AEC(a1, 1uLL);
                          sub_100007AEC(a1, 1uLL);
                          sub_100007AEC(a1, 1uLL);
                          sub_100007AEC(a1, 1uLL);
                          v46 = sub_100007AEC(a1, 1uLL);
                          v41 = sub_100007AEC(a1, 1uLL);
                          v40[412] = v49;
                          v40[413] = v48;
                          v40[414] = v47;
                          v40[415] = v36;
                          v40[416] = v33;
                          v40[418] = v41;
                          v40[419] = v46;
                          v40[420] = v17;
                          v40[421] = v13;
                          if (v36 != 0 && v33 != 0)
                          {
                            v42 = 2;
                          }

                          else
                          {
                            v42 = 0;
                          }

                          if (v17)
                          {
                            v43 = v13 == 0;
                          }

                          else
                          {
                            v43 = 1;
                          }

                          if (!v43)
                          {
                            ++v42;
                          }

                          v40[424] = v42 | v40[424] & 0xFFFFFFFC;
                          if (!v43 && v36 != 0 && v33 != 0)
                          {
                            if (v25 | v21 && !*(a1 + 2848))
                            {
                              operator new();
                            }

                            operator new();
                          }

                          printf("e: missing EMMP (T%d B%d) or gray scales (T%d B%d)\n");
                        }

                        else
                        {
                          printf("e: unsupported color channel count: %u > %u\n");
                        }
                      }

                      else
                      {
                        printf("e: unsupported sensor channel count: %u > %u\n");
                      }
                    }

                    else
                    {
                      printf("e: unsupported region count: %u > %u\n");
                    }
                  }

                  else
                  {
                    printf("e: unsupported PCS temperature count: %u > %u\n");
                  }
                }

                else
                {
                  printf("e: unsupported PCS brightness count: %u > %u\n");
                }
              }

              else
              {
                printf("e: unsupported EMMP ALSS temperature count: %u > %u\n");
              }
            }

            else
            {
              printf("e: unsupported EMMP ALSS brightness count: %u > %u\n");
            }
          }

          else
          {
            printf("e: unsupported EMMP ACSS temperature count: %u > %u\n");
          }
        }

        else
        {
          printf("e: unsupported EMMP ACSS brightness count: %u > %u\n");
        }
      }

      else
      {
        printf("e: unexpected size for CNST %u < %u\n");
      }
    }

    else
    {
      v45 = *v3;
      printf("e: mismatching versions: %u != %u\n");
    }
  }

  else
  {
    v44 = *(a2 + 4);
    printf("e: unsupported version: 0x%x != 0x%x\n");
  }

  return 0;
}

uint64_t sub_100014338(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 4) != 0x10000)
  {
    v44 = *(a2 + 4);
    printf("e: unsupported version: 0x%x != 0x%x\n");
    return 0;
  }

  v3 = *(a1 + 2840);
  if (*v3 != 3)
  {
    v45 = *v3;
    printf("e: mismatching versions: %u != %u\n");
    return 0;
  }

  v5 = malloc_type_calloc(1uLL, 0x128uLL, 0x1000040CB3E114FuLL);
  if (!v5)
  {
    v25 = "e: out of memory for PCS table";
LABEL_54:
    puts(v25);
    return 0;
  }

  v6 = 4 * *(a2 + 8);
  v7 = (v6 - 12);
  if (v6 == 12)
  {
    v25 = "e: underflow while reading indices";
    goto LABEL_54;
  }

  v8 = v5;
  v9 = *(a1 + 3936);
  v10 = v3[479644];
  v11 = v3[479645];
  v12 = (v9 + 1);
  v13 = *v9;
  *(a1 + 3936) = v9 + 1;
  v14 = *(a1 + 3944);
  v15 = v14 != 0;
  v16 = v14 - 1;
  *(a1 + 3944) = v16;
  if (!v15)
  {
    puts("e: data_sz underflow in get_value");
    v12 = *(a1 + 3936);
    v16 = *(a1 + 3944);
  }

  v8[290] = v13;
  v17 = *v12;
  *(a1 + 3936) = v12 + 1;
  *(a1 + 3944) = v16 - 2;
  if (v16 < 2)
  {
    puts("e: data_sz underflow in get_value");
  }

  v18 = 0;
  v48 = &v9[v7];
  *(v8 + 144) = v17;
  v47 = v9;
  v46 = v8;
  do
  {
    if (&v48[-*(a1 + 3936)] < 4 * (v11 * v10))
    {
      v25 = "e: underflow while reading PCS scales";
      goto LABEL_54;
    }

    v49 = v18;
    if (v10)
    {
      v19 = 0;
      v20 = v8;
      do
      {
        v21 = v11;
        v22 = v20;
        if (v11)
        {
          do
          {
            v23 = *(a1 + 3936);
            v24 = *v23;
            *(a1 + 3936) = v23 + 1;
            LODWORD(v23) = *(a1 + 3944);
            *(a1 + 3944) = v23 - 8;
            if (v23 < 8)
            {
              puts("e: data_sz underflow in get_long_value");
            }

            *v22++ = vcvts_n_f32_u64(v24, 0x24uLL);
            --v21;
          }

          while (v21);
        }

        ++v19;
        v20 += 6;
      }

      while (v19 != v10);
    }

    v18 = v49 + 1;
    v8 += 96;
  }

  while (v49 != 2);
  if (&v48[-*(a1 + 3936)] < 36)
  {
    v25 = "e: underflow while reading PCS spare";
    goto LABEL_54;
  }

  v26 = 18;
  do
  {
    *(a1 + 3936) += 2;
    v27 = *(a1 + 3944);
    *(a1 + 3944) = v27 - 2;
    if (v27 < 2)
    {
      puts("e: data_sz underflow in get_value");
    }

    --v26;
  }

  while (v26);
  v28 = *(a1 + 3872);
  v30 = *(v28 + 8);
  v29 = *(v28 + 16);
  if (v30 >= v29)
  {
    v32 = (v30 - *v28) >> 3;
    if ((v32 + 1) >> 61)
    {
      sub_100006304();
    }

    v33 = v29 - *v28;
    v34 = v33 >> 2;
    if (v33 >> 2 <= (v32 + 1))
    {
      v34 = v32 + 1;
    }

    if (v33 >= 0x7FFFFFFFFFFFFFF8)
    {
      v35 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v35 = v34;
    }

    if (v35)
    {
      sub_10001C584(*(a1 + 3872), v35);
    }

    *(8 * v32) = v46;
    v31 = 8 * v32 + 8;
    v36 = *(v28 + 8) - *v28;
    v37 = (8 * v32 - v36);
    memcpy(v37, *v28, v36);
    v38 = *v28;
    *v28 = v37;
    *(v28 + 8) = v31;
    *(v28 + 16) = 0;
    if (v38)
    {
      operator delete(v38);
    }
  }

  else
  {
    *v30 = v46;
    v31 = (v30 + 1);
  }

  *(v28 + 8) = v31;
  v39 = *(a1 + 3936);
  if (v47 - v39 >= 0)
  {
    v40 = -((v47 - v39) & 3);
  }

  else
  {
    v40 = (v39 - v47) & 3;
  }

  if (v40)
  {
    v41 = v40 - 4;
    do
    {
      ++*(a1 + 3936);
      v42 = *(a1 + 3944);
      *(a1 + 3944) = v42 - 1;
      if (!v42)
      {
        puts("e: data_sz underflow in get_value");
      }

      v15 = __CFADD__(v41++, 1);
    }

    while (!v15);
    v39 = *(a1 + 3936);
  }

  if (v39 != v48)
  {
    v25 = "e: parsing did not consume the full PCS size";
    goto LABEL_54;
  }

  return 1;
}

uint64_t sub_1000146B4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 4) != 0x10000)
  {
    v43 = *(a2 + 4);
    printf("e: unsupported version: 0x%x != 0x%x\n");
    return 0;
  }

  v3 = *(a1 + 2840);
  if (*v3 != 3)
  {
    v44 = *v3;
    printf("e: mismatching versions: %u != %u\n");
    return 0;
  }

  v5 = malloc_type_calloc(1uLL, 0x1928uLL, 0x1000040B1E0D9D0uLL);
  v50 = v5;
  if (!v5)
  {
    v8 = "e: out of memory for EMMP table";
    goto LABEL_10;
  }

  v6 = v3[479646];
  if (v6 >= 4)
  {
    v42 = v3[479646];
    printf("e: too many EM color channels %d\n");
    return 0;
  }

  v9 = v3[479651];
  if (v9 >= 0x11)
  {
    v45 = v3[479651];
    printf("e: too many EM gray levels %d\n");
    return 0;
  }

  v10 = v3[479650];
  if (v10 >= 0x41)
  {
    v46 = v3[479646];
    printf("e: too many EM lines %d\n");
    return 0;
  }

  v11 = (4 * *(a2 + 8) - 12);
  v12 = (v9 - 1);
  if (v11 < (2 * v9 + 4 * v12 + 7) * v6 + 3)
  {
    v47 = (4 * *(a2 + 8) - 12);
    printf("e: provided data size smaller than expected %d < %d\n");
    return 0;
  }

  v13 = v5;
  v14 = *(a1 + 3936);
  v15 = sub_100007AEC(a1, 1uLL);
  v16 = v15;
  if (v15 == 2)
  {
    if (*(a1 + 2856) != 1)
    {
      goto LABEL_22;
    }

    v8 = "e: ACSS and ALSS should share either none or all of EMMP data";
LABEL_10:
    puts(v8);
    return 0;
  }

  if (v15 == 3)
  {
    *(a1 + 2856) = 1;
  }

LABEL_22:
  v13[6434] = sub_100007AEC(a1, 1uLL);
  *(v13 + 3216) = sub_100007AEC(a1, 2uLL);
  memcpy(v13, *(a1 + 3936), v6);
  *(a1 + 3936) += v6;
  v17 = *(a1 + 3944);
  v18 = v17 >= v6;
  v19 = v17 - v6;
  *(a1 + 3944) = v19;
  if (!v18 || HIDWORD(v19))
  {
    puts("e: data_sz underflow in get_array");
  }

  v48 = v14;
  v49 = v14 + v11;
  sub_10000E6C4(a1, v13 + 4, v6);
  if (v6)
  {
    v20 = v13 + 12;
    v21 = 2 * v9;
    v22 = v6;
    do
    {
      memcpy(v20, *(a1 + 3936), v21);
      *(a1 + 3936) += v21;
      v23 = *(a1 + 3944);
      v18 = v23 >= v21;
      v24 = v23 - v21;
      *(a1 + 3944) = v24;
      if (!v18 || HIDWORD(v24))
      {
        puts("e: data_sz underflow in get_array");
      }

      v20 += 32;
      --v22;
    }

    while (v22);
    v25 = v13 + 108;
    v26 = 4 * v12;
    v27 = v6;
    do
    {
      memcpy(v25, *(a1 + 3936), v26);
      *(a1 + 3936) += v26;
      v28 = *(a1 + 3944);
      v18 = v28 >= v26;
      v29 = v28 - v26;
      *(a1 + 3944) = v29;
      if (!v18 || HIDWORD(v29))
      {
        puts("e: data_sz underflow in get_array");
      }

      v25 += 60;
      --v27;
    }

    while (v27);
    v30 = 0;
    v31 = v13 + 288;
    do
    {
      v32 = v10;
      v33 = v31;
      if (v10)
      {
        do
        {
          memcpy(v33, *(a1 + 3936), v21);
          *(a1 + 3936) += v21;
          v34 = *(a1 + 3944);
          v18 = v34 >= v21;
          v35 = v34 - v21;
          *(a1 + 3944) = v35;
          if (!v18 || HIDWORD(v35))
          {
            puts("e: data_sz underflow in get_array");
          }

          v33 += 32;
          --v32;
        }

        while (v32);
      }

      ++v30;
      v31 += 2048;
    }

    while (v30 != v6);
  }

  if (v49 - *(a1 + 3936) < 6)
  {
    v8 = "e: underflow while reading EMMK spare";
    goto LABEL_10;
  }

  v36 = 3;
  do
  {
    *(a1 + 3936) += 2;
    v37 = *(a1 + 3944);
    *(a1 + 3944) = v37 - 2;
    if (v37 < 2)
    {
      puts("e: data_sz underflow in get_value");
    }

    --v36;
  }

  while (v36);
  if (v16)
  {
    sub_1000187B0(*(a1 + 3896), &v50);
  }

  if ((v16 & 2) != 0)
  {
    sub_1000187B0(*(a1 + 3904), &v50);
  }

  v38 = *(a1 + 3936);
  if (v48 - v38 >= 0)
  {
    v39 = -((v48 - v38) & 3);
  }

  else
  {
    v39 = (v38 - v48) & 3;
  }

  if (v39)
  {
    v40 = v39 - 4;
    do
    {
      ++*(a1 + 3936);
      v41 = *(a1 + 3944);
      *(a1 + 3944) = v41 - 1;
      if (!v41)
      {
        puts("e: data_sz underflow in get_value");
      }

      v18 = __CFADD__(v40++, 1);
    }

    while (!v18);
    v38 = *(a1 + 3936);
  }

  if (v38 != v49)
  {
    v8 = "e: parsing did not consume the full EMMK size";
    goto LABEL_10;
  }

  return 1;
}

uint64_t sub_100014AF8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 4) != 0x40000)
  {
    v56 = *(a2 + 4);
    printf("e: unsupported version: 0x%x != 0x%x\n");
    return 0;
  }

  v3 = *(a1 + 2840);
  if (*v3 != 4)
  {
    v57 = *v3;
    printf("e: mismatching versions: %u != %u\n");
    return 0;
  }

  v4 = (4 * *(a2 + 8) - 12);
  if (v4 <= 0xE)
  {
    v5 = "e: cannot read data in CNST";
LABEL_5:
    puts(v5);
    return 0;
  }

  v7 = *(a1 + 3936);
  v8 = (v7 + 1);
  *(a1 + 3936) = v7 + 1;
  v9 = *(a1 + 3944);
  v10 = v9 != 0;
  v11 = v9 - 1;
  *(a1 + 3944) = v11;
  if (!v10)
  {
    puts("e: data_sz underflow in get_value");
    v8 = *(a1 + 3936);
    v11 = *(a1 + 3944);
  }

  v13 = *v8;
  v12 = v8 + 1;
  v63 = v13;
  *(a1 + 3936) = v12;
  v10 = v11 != 0;
  v14 = v11 - 1;
  *(a1 + 3944) = v14;
  if (!v10)
  {
    puts("e: data_sz underflow in get_value");
    v12 = *(a1 + 3936);
    v14 = *(a1 + 3944);
  }

  v16 = *v12;
  v15 = v12 + 1;
  v62 = v16;
  *(a1 + 3936) = v15;
  v10 = v14 != 0;
  v17 = v14 - 1;
  *(a1 + 3944) = v17;
  if (!v10)
  {
    puts("e: data_sz underflow in get_value");
    v15 = *(a1 + 3936);
    v17 = *(a1 + 3944);
  }

  v19 = *v15;
  v18 = v15 + 1;
  v61 = v19;
  *(a1 + 3936) = v18;
  v10 = v17 != 0;
  v20 = v17 - 1;
  *(a1 + 3944) = v20;
  if (!v10)
  {
    puts("e: data_sz underflow in get_value");
    v18 = *(a1 + 3936);
    v20 = *(a1 + 3944);
  }

  v22 = *v18;
  v21 = v18 + 1;
  v60 = v22;
  *(a1 + 3936) = v21;
  v10 = v20 != 0;
  v23 = v20 - 1;
  *(a1 + 3944) = v23;
  if (!v10)
  {
    puts("e: data_sz underflow in get_value");
    v21 = *(a1 + 3936);
    v23 = *(a1 + 3944);
  }

  v25 = *v21;
  v24 = v21 + 1;
  v59 = v25;
  *(a1 + 3936) = v24;
  v10 = v23 != 0;
  v26 = v23 - 1;
  *(a1 + 3944) = v26;
  if (!v10)
  {
    puts("e: data_sz underflow in get_value");
    v24 = *(a1 + 3936);
    v26 = *(a1 + 3944);
  }

  v28 = *v24;
  v27 = v24 + 1;
  v58 = v28;
  *(a1 + 3936) = v27;
  v10 = v26 != 0;
  v29 = v26 - 1;
  *(a1 + 3944) = v29;
  if (!v10)
  {
    puts("e: data_sz underflow in get_value");
    v27 = *(a1 + 3936);
    v29 = *(a1 + 3944);
  }

  v32 = *v27;
  v30 = v27 + 1;
  v31 = v32;
  *(a1 + 3936) = v30;
  v10 = v29 != 0;
  v33 = v29 - 1;
  *(a1 + 3944) = v33;
  if (!v10)
  {
    puts("e: data_sz underflow in get_value");
    v30 = *(a1 + 3936);
    v33 = *(a1 + 3944);
  }

  v36 = *v30;
  v34 = v30 + 1;
  v35 = v36;
  *(a1 + 3936) = v34;
  v10 = v33 != 0;
  v37 = v33 - 1;
  *(a1 + 3944) = v37;
  if (!v10)
  {
    puts("e: data_sz underflow in get_value");
    v34 = *(a1 + 3936);
    v37 = *(a1 + 3944);
  }

  v40 = *v34;
  v38 = v34 + 1;
  v39 = v40;
  *(a1 + 3936) = v38;
  v10 = v37 != 0;
  v41 = v37 - 1;
  *(a1 + 3944) = v41;
  if (!v10)
  {
    puts("e: data_sz underflow in get_value");
    v38 = *(a1 + 3936);
    v41 = *(a1 + 3944);
  }

  v44 = *v38;
  v42 = (v38 + 1);
  v43 = v44;
  *(a1 + 3936) = v42;
  v10 = v41 != 0;
  v45 = v41 - 1;
  *(a1 + 3944) = v45;
  if (!v10)
  {
    puts("e: data_sz underflow in get_value");
    v42 = *(a1 + 3936);
    v45 = *(a1 + 3944);
  }

  v48 = *v42;
  v46 = v42 + 1;
  v47 = v48;
  *(a1 + 3936) = v46;
  v10 = v45 >= 2;
  v49 = v45 - 2;
  *(a1 + 3944) = v49;
  if (!v10)
  {
    puts("e: data_sz underflow in get_value");
    v46 = *(a1 + 3936);
    v49 = *(a1 + 3944);
  }

  v50 = *v46;
  *(a1 + 3936) = v46 + 1;
  *(a1 + 3944) = v49 - 2;
  if (v49 < 2)
  {
    puts("e: data_sz underflow in get_value");
  }

  if (v35 >= 5)
  {
    printf("e: unsupported region count: %u > %u\n");
    return 0;
  }

  if (v39 >= 2)
  {
    printf("e: unsupported sensor channel count: %u > %u\n");
    return 0;
  }

  if (v43 >= 4)
  {
    printf("e: unsupported color count: %u > %u\n");
    return 0;
  }

  if (v47 >= 0x81)
  {
    printf("e: unsupported gray value count: %u > %u\n");
    return 0;
  }

  if (v50 >= 0x80)
  {
    printf("e: unsupported gray step count: %u > %u\n");
    return 0;
  }

  if (v63 != 1)
  {
    printf("e: unsupported htmp emission freq count: %u != %u\n");
    return 0;
  }

  if (v62)
  {
    printf("e: unsupported benl emission freq count: %u != %u\n");
    return 0;
  }

  if (v61)
  {
    printf("e: unsupported benl brightness count: %u != %u\n");
    return 0;
  }

  if (v60 != 1)
  {
    printf("e: unsupported pdcc emission freq: %u != %u\n");
    return 0;
  }

  if (v59 != 1)
  {
    printf("e: unsupported pdcc temperature count: %u != %u\n");
    return 0;
  }

  if (v58)
  {
    printf("e: unsupported pdmc emission freq: %u != %u\n");
    return 0;
  }

  if (v31)
  {
    printf("e: unsupported pdmc temperature count: %u != %u\n");
    return 0;
  }

  v51 = v3 + 4096;
  v52 = v7 + v4;
  v51[926] = v35;
  v51[927] = v39;
  v51[928] = v43;
  *(v51 + 1866) = v47;
  *(v51 + 1867) = v50;
  v53 = *(a1 + 3936);
  if (v7 - v53 >= 0)
  {
    v54 = -((v7 - v53) & 3);
  }

  else
  {
    v54 = (v53 - v7) & 3;
  }

  if (v54)
  {
    v55 = v54 - 4;
    do
    {
      sub_100007AEC(a1, 1uLL);
      v10 = __CFADD__(v55++, 1);
    }

    while (!v10);
    v53 = *(a1 + 3936);
  }

  if (v53 != v52)
  {
    v5 = "e: parsing did not consume the full CNST size";
    goto LABEL_5;
  }

  return 1;
}

uint64_t sub_100014F88(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 4) != 196608)
  {
    v65 = *(a2 + 4);
    printf("e: unsupported version: 0x%x != 0x%x\n");
    return 0;
  }

  v3 = *(a1 + 2832);
  if (v3 != 4)
  {
    if (v3 == 5)
    {
      v4 = 43008;
      v5 = 43020;
      goto LABEL_7;
    }

    v66 = *(a1 + 2832);
    printf("e: mismatching versions: %u != 4,5\n");
    return 0;
  }

  v5 = 5034;
  v4 = 5022;
LABEL_7:
  v6 = 4 * *(a2 + 8);
  v7 = (v6 - 12);
  if (v6 == 12)
  {
    v22 = "e: underflow while reading feature enable flags";
    goto LABEL_77;
  }

  v8 = *(a1 + 2840);
  v9 = *(a1 + 3936);
  v10 = *v9;
  *(a1 + 3936) = v9 + 1;
  v11 = *(a1 + 3944);
  *(a1 + 3944) = v11 - 1;
  if (!v11)
  {
    puts("e: data_sz underflow in get_value");
  }

  *&v8[v5] = *&v8[v5] & 0xFFFFFFFFFFFFFFFELL | v10 & 1;
  v12 = *(a1 + 3936);
  v13 = *v12;
  *(a1 + 3936) = v12 + 1;
  LODWORD(v12) = *(a1 + 3944);
  *(a1 + 3944) = v12 - 1;
  if (!v12)
  {
    puts("e: data_sz underflow in get_value");
  }

  v14 = &v8[v4];
  *&v8[v5] = *&v8[v5] & 0xFFFFFFFFFFFFFFFDLL | (2 * (v13 & 1));
  v15 = *(a1 + 3936);
  v16 = *v15;
  *(a1 + 3936) = v15 + 1;
  LODWORD(v15) = *(a1 + 3944);
  *(a1 + 3944) = v15 - 1;
  if (!v15)
  {
    puts("e: data_sz underflow in get_value");
  }

  v17 = &v9[v7];
  *&v8[v5] = *&v8[v5] & 0xFFFFFFFFFFFFFFFBLL | (4 * (v16 & 1));
  v18 = *(a1 + 3936);
  v19 = *v18;
  *(a1 + 3936) = v18 + 1;
  LODWORD(v18) = *(a1 + 3944);
  *(a1 + 3944) = v18 - 1;
  if (!v18)
  {
    puts("e: data_sz underflow in get_value");
  }

  *&v8[v5] = *&v8[v5] & 0xFFFFFFFFFFFFFFE7 | (8 * (v19 & 3));
  v21 = *v14;
  v20 = v14[1];
  if (&v17[-*(a1 + 3936)] < (2 * v21 * v20))
  {
    v22 = "e: underflow while reading num_svds and shift_bits";
LABEL_77:
    puts(v22);
    return 0;
  }

  v68 = v17;
  v67 = v9;
  if (v21)
  {
    v23 = 0;
    v24 = v8 + 33;
    do
    {
      v25 = v20;
      v26 = v24;
      if (v20)
      {
        do
        {
          v27 = *(a1 + 3936);
          v28 = *v27;
          *(a1 + 3936) = v27 + 1;
          LODWORD(v27) = *(a1 + 3944);
          *(a1 + 3944) = v27 - 1;
          if (!v27)
          {
            puts("e: data_sz underflow in get_value");
          }

          *v26 = v28;
          v26 += 4;
          --v25;
        }

        while (v25);
      }

      ++v23;
      v24 += 28;
    }

    while (v23 != v21);
    v29 = 0;
    v30 = v8 + 8;
    do
    {
      v31 = v20;
      v32 = v30;
      if (v20)
      {
        do
        {
          v33 = *(a1 + 3936);
          v34 = *v33;
          *(a1 + 3936) = v33 + 1;
          LODWORD(v33) = *(a1 + 3944);
          *(a1 + 3944) = v33 - 1;
          if (!v33)
          {
            puts("e: data_sz underflow in get_value");
          }

          *v32 = v34;
          v32 += 4;
          --v31;
        }

        while (v31);
      }

      ++v29;
      v30 += 28;
    }

    while (v29 != v21);
  }

  if (&v68[-*(a1 + 3936)] < (8 * v21))
  {
    v22 = "e: underflow while reading regions";
    goto LABEL_77;
  }

  if (v21)
  {
    v35 = v8 + 2;
    v36 = v21;
    do
    {
      v37 = *(a1 + 3936);
      v38 = *v37;
      *(a1 + 3936) = v37 + 1;
      LODWORD(v37) = *(a1 + 3944);
      *(a1 + 3944) = v37 - 2;
      if (v37 < 2)
      {
        puts("e: data_sz underflow in get_value");
      }

      *v35 = v38;
      v35 += 7;
      --v36;
    }

    while (v36);
    v39 = v8 + 3;
    v40 = v21;
    do
    {
      v41 = *(a1 + 3936);
      v42 = *v41;
      *(a1 + 3936) = v41 + 1;
      LODWORD(v41) = *(a1 + 3944);
      *(a1 + 3944) = v41 - 2;
      if (v41 < 2)
      {
        puts("e: data_sz underflow in get_value");
      }

      *v39 = v42;
      v39 += 7;
      --v40;
    }

    while (v40);
    v43 = v8 + 4;
    v44 = v21;
    do
    {
      v45 = *(a1 + 3936);
      v46 = *v45;
      *(a1 + 3936) = v45 + 1;
      LODWORD(v45) = *(a1 + 3944);
      *(a1 + 3944) = v45 - 2;
      if (v45 < 2)
      {
        puts("e: data_sz underflow in get_value");
      }

      *v43 = v46;
      v43 += 7;
      --v44;
    }

    while (v44);
    v47 = v8 + 5;
    v48 = v21;
    do
    {
      v49 = *(a1 + 3936);
      v50 = *v49;
      *(a1 + 3936) = v49 + 1;
      LODWORD(v49) = *(a1 + 3944);
      *(a1 + 3944) = v49 - 2;
      if (v49 < 2)
      {
        puts("e: data_sz underflow in get_value");
      }

      *v47 = v50;
      v47 += 7;
      --v48;
    }

    while (v48);
  }

  if (&v68[-*(a1 + 3936)] < (2 * v21))
  {
    v22 = "e: underflow while reading interp_factor";
    goto LABEL_77;
  }

  if (v21)
  {
    v51 = v8 + 6;
    v52 = v21;
    do
    {
      v53 = *(a1 + 3936);
      v54 = *v53;
      *(a1 + 3936) = v53 + 1;
      LODWORD(v53) = *(a1 + 3944);
      *(a1 + 3944) = v53 - 1;
      if (!v53)
      {
        puts("e: data_sz underflow in get_value");
      }

      *v51 = v54;
      v51 += 7;
      --v52;
    }

    while (v52);
    v55 = v8 + 7;
    do
    {
      v56 = *(a1 + 3936);
      v57 = *v56;
      *(a1 + 3936) = v56 + 1;
      LODWORD(v56) = *(a1 + 3944);
      *(a1 + 3944) = v56 - 1;
      if (!v56)
      {
        puts("e: data_sz underflow in get_value");
      }

      *v55 = v57;
      v55 += 7;
      --v21;
    }

    while (v21);
  }

  v58 = *(a1 + 3936) + 2;
  *(a1 + 3936) = v58;
  v59 = *(a1 + 3944);
  *(a1 + 3944) = v59 - 2;
  if (v59 < 2)
  {
    puts("e: data_sz underflow in get_value");
    v58 = *(a1 + 3936);
  }

  if (&v67[-v58] >= 0)
  {
    v60 = -(&v67[-v58] & 3);
  }

  else
  {
    v60 = (v58 - v67) & 3;
  }

  if (v60)
  {
    v61 = v60 - 4;
    do
    {
      ++*(a1 + 3936);
      v62 = *(a1 + 3944);
      *(a1 + 3944) = v62 - 1;
      if (!v62)
      {
        puts("e: data_sz underflow in get_value");
      }
    }

    while (!__CFADD__(v61++, 1));
    v58 = *(a1 + 3936);
  }

  if (v58 != v68)
  {
    v22 = "e: parsing did not consume the full RCFG size";
    goto LABEL_77;
  }

  return 1;
}

uint64_t sub_100015488(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 4) != 0x40000)
  {
    v57 = *(a2 + 4);
    printf("e: unsupported version: 0x%x != 0x%x\n");
    return 0;
  }

  v3 = *(a1 + 2832);
  if (v3 == 4)
  {
    v4 = 20088;
  }

  else
  {
    if (v3 != 5)
    {
      v58 = *(a1 + 2832);
      printf("e: mismatching versions: %u != 4,5\n");
      return 0;
    }

    v4 = 172032;
  }

  v5 = (4 * *(a2 + 8) - 12);
  if (v5 <= 4)
  {
    v6 = "e: underflow while temperature / brightness / emission freq";
LABEL_17:
    puts(v6);
    return 0;
  }

  v7 = *(a1 + 2840);
  v8 = (v7 + v4);
  v9 = *(a1 + 3936);
  v10 = *v8;
  v11 = v8[2];
  v12 = (v9 + 1);
  v13 = *v9;
  *(a1 + 3936) = v9 + 1;
  v14 = *(a1 + 3944);
  v15 = v14 != 0;
  v16 = v14 - 1;
  *(a1 + 3944) = v16;
  if (!v15)
  {
    puts("e: data_sz underflow in get_value");
    v12 = *(a1 + 3936);
    v16 = *(a1 + 3944);
  }

  *(v7 + 12410) = v13;
  v19 = *v12;
  v17 = v12 + 1;
  v18 = v19;
  *(a1 + 3936) = v17;
  v15 = v16 >= 2;
  v20 = v16 - 2;
  *(a1 + 3944) = v20;
  if (!v15)
  {
    puts("e: data_sz underflow in get_value");
    v17 = *(a1 + 3936);
    v20 = *(a1 + 3944);
  }

  v21 = &v9[v5];
  *(v7 + 12408) = v18;
  v22 = (v17 + 1);
  *(a1 + 3936) = v22;
  *(a1 + 3944) = v20 - 2;
  if (v20 < 2)
  {
    puts("e: data_sz underflow in get_value");
    v22 = *(a1 + 3936);
  }

  if (v21 - v22 <= 3)
  {
    v6 = "e: underflow while reading sizes";
    goto LABEL_17;
  }

  v25 = *v22;
  v23 = v22 + 1;
  v24 = v25;
  *(a1 + 3936) = v23;
  v26 = *(a1 + 3944);
  v15 = v26 != 0;
  v27 = v26 - 1;
  *(a1 + 3944) = v27;
  if (!v15)
  {
    puts("e: data_sz underflow in get_value");
    v23 = *(a1 + 3936);
    v27 = *(a1 + 3944);
  }

  v30 = *v23;
  v28 = (v23 + 1);
  v29 = v30;
  *(a1 + 3936) = v28;
  v15 = v27 != 0;
  v31 = v27 - 1;
  *(a1 + 3944) = v31;
  if (!v15)
  {
    puts("e: data_sz underflow in get_value");
    v28 = *(a1 + 3936);
    v31 = *(a1 + 3944);
  }

  v32 = *v28;
  *(a1 + 3936) = v28 + 1;
  *(a1 + 3944) = v31 - 2;
  if (v31 < 2)
  {
    puts("e: data_sz underflow in get_value");
  }

  if (v24 != 1)
  {
    printf("e: unsupported NAC: %u != %u\n");
    return 0;
  }

  if (v29 != 4)
  {
    printf("e: unsupported NASVD: %u != %u\n");
    return 0;
  }

  if (v32 != 64)
  {
    printf("e: unsupported NHS: %u != %u\n");
    return 0;
  }

  if (&v21[-*(a1 + 3936)] < ((v10 * v11) << 10))
  {
    v6 = "e: underflow while reading WgTypeA";
    goto LABEL_17;
  }

  v60 = v21;
  v61 = v9;
  if (v10)
  {
    v34 = 0;
    v59 = v7;
    v35 = v7 + 120;
    v64 = v10;
    do
    {
      v62 = v34;
      v36 = 0;
      v37 = v35;
      do
      {
        if (v11)
        {
          v38 = 0;
          v39 = v37;
          do
          {
            for (i = 0; i != 256; i += 4)
            {
              v41 = *(a1 + 3936);
              v42 = *v41;
              *(a1 + 3936) = v41 + 1;
              LODWORD(v41) = *(a1 + 3944);
              *(a1 + 3944) = v41 - 2;
              if (v41 < 2)
              {
                puts("e: data_sz underflow in get_value");
              }

              *(v39 + i) = v42;
            }

            ++v38;
            v39 += 256;
          }

          while (v38 != v11);
        }

        ++v36;
        v37 += 768;
      }

      while (v36 != 4);
      v34 = v62 + 1;
      v35 += 3072;
    }

    while (v62 + 1 != v64);
    v43 = 0;
    v44 = v59 + 122;
    do
    {
      v63 = v43;
      v45 = 0;
      v46 = v44;
      do
      {
        if (v11)
        {
          v47 = 0;
          v48 = v46;
          do
          {
            for (j = 0; j != 256; j += 4)
            {
              v50 = *(a1 + 3936);
              v51 = *v50;
              *(a1 + 3936) = v50 + 1;
              LODWORD(v50) = *(a1 + 3944);
              *(a1 + 3944) = v50 - 2;
              if (v50 < 2)
              {
                puts("e: data_sz underflow in get_value");
              }

              *(v48 + j) = v51;
            }

            ++v47;
            v48 += 256;
          }

          while (v47 != v11);
        }

        ++v45;
        v46 += 768;
      }

      while (v45 != 4);
      v43 = v63 + 1;
      v44 += 3072;
    }

    while (v63 + 1 != v64);
  }

  v52 = *(a1 + 3936);
  if (&v61[-v52] >= 0)
  {
    v53 = -(&v61[-v52] & 3);
  }

  else
  {
    v53 = (v52 - v61) & 3;
  }

  if (v53)
  {
    v54 = v53 - 4;
    v55 = v60;
    do
    {
      ++*(a1 + 3936);
      v56 = *(a1 + 3944);
      *(a1 + 3944) = v56 - 1;
      if (!v56)
      {
        puts("e: data_sz underflow in get_value");
      }

      v15 = __CFADD__(v54++, 1);
    }

    while (!v15);
    v52 = *(a1 + 3936);
  }

  else
  {
    v55 = v60;
  }

  if (v52 != v55)
  {
    v6 = "e: parsing did not consume the full HTMP size";
    goto LABEL_17;
  }

  return 1;
}

uint64_t sub_1000158B0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 4) != 0x10000)
  {
    v61 = *(a2 + 4);
    printf("e: unsupported version: 0x%x != 0x%x\n");
    return 0;
  }

  v3 = *(a1 + 2840);
  if (*v3 != 4)
  {
    v62 = *v3;
    printf("e: mismatching versions: %u != %u\n");
    return 0;
  }

  v4 = (4 * *(a2 + 8) - 12);
  if (v4 <= 6)
  {
    v5 = "e: underflow while reading limits";
LABEL_68:
    puts(v5);
    return 0;
  }

  v6 = *(a1 + 3936);
  v7 = v3[5024];
  v8 = *(v3 + 10058);
  v9 = *(v3 + 10059);
  v10 = v3[5023];
  v11 = v6 + 1;
  v12 = *v6;
  *(a1 + 3936) = v6 + 1;
  v13 = *(a1 + 3944);
  v14 = v13 >= 2;
  v15 = v13 - 2;
  *(a1 + 3944) = v15;
  if (!v14)
  {
    puts("e: data_sz underflow in get_value");
    v11 = *(a1 + 3936);
    v15 = *(a1 + 3944);
  }

  *(v3 + 10042) = v12;
  v16 = v11 + 1;
  *(a1 + 3936) = v16;
  v14 = v15 >= 2;
  v17 = v15 - 2;
  *(a1 + 3944) = v17;
  if (!v14)
  {
    puts("e: data_sz underflow in get_value");
    v16 = *(a1 + 3936);
    v17 = *(a1 + 3944);
  }

  v18 = (v16 + 1);
  *(a1 + 3936) = v18;
  v14 = v17 >= 2;
  v19 = v17 - 2;
  *(a1 + 3944) = v19;
  if (!v14)
  {
    puts("e: data_sz underflow in get_value");
    v18 = *(a1 + 3936);
    v19 = *(a1 + 3944);
  }

  v20 = v6 + v4;
  v23 = *v18;
  v21 = v18 + 1;
  v22 = v23;
  *(a1 + 3936) = v21;
  *(a1 + 3944) = v19 - 1;
  if (!v19)
  {
    puts("e: data_sz underflow in get_value");
    v21 = *(a1 + 3936);
  }

  *(v3 + 20086) = v22;
  if (v20 - v21 < 5 * v10 * v7 * v8)
  {
    v5 = "e: underflow while reading LUT entries";
    goto LABEL_68;
  }

  v66 = 5 * v10 * v7 * v8;
  v67 = v20;
  v64 = v10;
  v65 = v9;
  v63 = v6;
  if (v8)
  {
    v24 = 0;
    v25 = v3 + 3104;
    do
    {
      v26 = v7;
      v27 = v25;
      if (v7)
      {
        do
        {
          v28 = *(a1 + 3936);
          v29 = *v28;
          *(a1 + 3936) = v28 + 1;
          LODWORD(v28) = *(a1 + 3944);
          *(a1 + 3944) = v28 - 4;
          if (v28 < 4)
          {
            puts("e: data_sz underflow in get_value");
          }

          *v27 = v29;
          v27 += 128;
          --v26;
        }

        while (v26);
      }

      ++v24;
      ++v25;
    }

    while (v24 != v8);
    v30 = 0;
    v31 = v3 + 3488;
    do
    {
      v32 = v7;
      v33 = v31;
      if (v7)
      {
        do
        {
          v34 = *(a1 + 3936);
          v35 = *v34;
          *(a1 + 3936) = v34 + 1;
          LODWORD(v34) = *(a1 + 3944);
          *(a1 + 3944) = v34 - 1;
          if (!v34)
          {
            puts("e: data_sz underflow in get_value");
          }

          *v33 = v35;
          v33 += 128;
          --v32;
        }

        while (v32);
      }

      ++v30;
      ++v31;
    }

    while (v30 != v8);
  }

  if (&v67[-*(a1 + 3936)] < v66)
  {
    v5 = "e: underflow while reading LUT coords";
    goto LABEL_68;
  }

  if (v8)
  {
    v36 = 0;
    v37 = v3 + 3872;
    do
    {
      v38 = v7;
      v39 = v37;
      if (v7)
      {
        do
        {
          v40 = *(a1 + 3936);
          v41 = *v40;
          *(a1 + 3936) = v40 + 1;
          LODWORD(v40) = *(a1 + 3944);
          *(a1 + 3944) = v40 - 4;
          if (v40 < 4)
          {
            puts("e: data_sz underflow in get_value");
          }

          *v39 = v41;
          v39 += 128;
          --v38;
        }

        while (v38);
      }

      ++v36;
      ++v37;
    }

    while (v36 != v8);
    v42 = 0;
    v43 = v3 + 4256;
    do
    {
      v44 = v7;
      v45 = v43;
      if (v7)
      {
        do
        {
          v46 = *(a1 + 3936);
          v47 = *v46;
          *(a1 + 3936) = v46 + 1;
          LODWORD(v46) = *(a1 + 3944);
          *(a1 + 3944) = v46 - 1;
          if (!v46)
          {
            puts("e: data_sz underflow in get_value");
          }

          *v45 = v47;
          v45 += 128;
          --v44;
        }

        while (v44);
      }

      ++v42;
      ++v43;
    }

    while (v42 != v8);
  }

  v48 = *(a1 + 3936);
  v49 = v67;
  if (v67 - v48 < 4 * v7 * v65 * v64)
  {
    v5 = "e: underflow while reading LUT steps";
    goto LABEL_68;
  }

  if (v65)
  {
    v50 = 0;
    v51 = v3 + 4640;
    v52 = v63;
    do
    {
      v53 = v7;
      v54 = v51;
      if (v7)
      {
        do
        {
          v55 = *(a1 + 3936);
          v56 = *v55;
          *(a1 + 3936) = v55 + 1;
          LODWORD(v55) = *(a1 + 3944);
          *(a1 + 3944) = v55 - 4;
          if (v55 < 4)
          {
            puts("e: data_sz underflow in get_value");
          }

          *v54 = v56;
          v54 += 127;
          --v53;
        }

        while (v53);
      }

      ++v50;
      ++v51;
    }

    while (v50 != v65);
    v48 = *(a1 + 3936);
    v49 = v67;
  }

  else
  {
    v52 = v63;
  }

  if (v52 - v48 >= 0)
  {
    v57 = -((v52 - v48) & 3);
  }

  else
  {
    v57 = (v48 - v52) & 3;
  }

  if (v57)
  {
    v58 = v57 - 4;
    do
    {
      ++*(a1 + 3936);
      v59 = *(a1 + 3944);
      *(a1 + 3944) = v59 - 1;
      if (!v59)
      {
        puts("e: data_sz underflow in get_value");
      }

      v14 = __CFADD__(v58++, 1);
    }

    while (!v14);
    v48 = *(a1 + 3936);
  }

  if (v48 != v49)
  {
    v5 = "e: parsing did not consume the full PDCC size";
    goto LABEL_68;
  }

  return 1;
}

uint64_t sub_100015D2C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 4) != 327680)
  {
    v45 = *(a2 + 4);
    printf("e: unsupported version: 0x%x != 0x%x\n");
    return 0;
  }

  v3 = *(a1 + 2840);
  if (*v3 != 5)
  {
    v46 = *v3;
    printf("e: mismatching versions: %u != %u\n");
    return 0;
  }

  v4 = (4 * *(a2 + 8) - 12);
  if (v4 <= 0xB)
  {
    v5 = "e: cannot read data in CNST";
LABEL_5:
    puts(v5);
    return 0;
  }

  v7 = *(a1 + 3936);
  v8 = (v7 + 1);
  *(a1 + 3936) = v7 + 1;
  v9 = *(a1 + 3944);
  v10 = v9 != 0;
  v11 = v9 - 1;
  *(a1 + 3944) = v11;
  if (!v10)
  {
    puts("e: data_sz underflow in get_value");
    v8 = *(a1 + 3936);
    v11 = *(a1 + 3944);
  }

  v13 = *v8;
  v12 = v8 + 1;
  v49 = v13;
  *(a1 + 3936) = v12;
  v10 = v11 != 0;
  v14 = v11 - 1;
  *(a1 + 3944) = v14;
  if (!v10)
  {
    puts("e: data_sz underflow in get_value");
    v12 = *(a1 + 3936);
    v14 = *(a1 + 3944);
  }

  v16 = *v12;
  v15 = v12 + 1;
  v48 = v16;
  *(a1 + 3936) = v15;
  v10 = v14 != 0;
  v17 = v14 - 1;
  *(a1 + 3944) = v17;
  if (!v10)
  {
    puts("e: data_sz underflow in get_value");
    v15 = *(a1 + 3936);
    v17 = *(a1 + 3944);
  }

  v19 = *v15;
  v18 = v15 + 1;
  v47 = v19;
  *(a1 + 3936) = v18;
  v10 = v17 != 0;
  v20 = v17 - 1;
  *(a1 + 3944) = v20;
  if (!v10)
  {
    puts("e: data_sz underflow in get_value");
    v18 = *(a1 + 3936);
    v20 = *(a1 + 3944);
  }

  v23 = *v18;
  v21 = v18 + 1;
  v22 = v23;
  *(a1 + 3936) = v21;
  v10 = v20 != 0;
  v24 = v20 - 1;
  *(a1 + 3944) = v24;
  if (!v10)
  {
    puts("e: data_sz underflow in get_value");
    v21 = *(a1 + 3936);
    v24 = *(a1 + 3944);
  }

  v27 = *v21;
  v25 = v21 + 1;
  v26 = v27;
  *(a1 + 3936) = v25;
  v10 = v24 != 0;
  v28 = v24 - 1;
  *(a1 + 3944) = v28;
  if (!v10)
  {
    puts("e: data_sz underflow in get_value");
    v25 = *(a1 + 3936);
    v28 = *(a1 + 3944);
  }

  v31 = *v25;
  v29 = v25 + 1;
  v30 = v31;
  *(a1 + 3936) = v29;
  v10 = v28 != 0;
  v32 = v28 - 1;
  *(a1 + 3944) = v32;
  if (!v10)
  {
    puts("e: data_sz underflow in get_value");
    v29 = *(a1 + 3936);
    v32 = *(a1 + 3944);
  }

  v35 = *v29;
  v33 = (v29 + 1);
  v34 = v35;
  *(a1 + 3936) = v33;
  v10 = v32 != 0;
  v36 = v32 - 1;
  *(a1 + 3944) = v36;
  if (!v10)
  {
    puts("e: data_sz underflow in get_value");
    v33 = *(a1 + 3936);
    v36 = *(a1 + 3944);
  }

  v39 = *v33;
  v37 = v33 + 1;
  v38 = v39;
  *(a1 + 3936) = v37;
  v10 = v36 >= 2;
  v40 = v36 - 2;
  *(a1 + 3944) = v40;
  if (!v10)
  {
    puts("e: data_sz underflow in get_value");
    v37 = *(a1 + 3936);
    v40 = *(a1 + 3944);
  }

  v41 = *v37;
  *(a1 + 3936) = v37 + 1;
  *(a1 + 3944) = v40 - 2;
  if (v40 < 2)
  {
    puts("e: data_sz underflow in get_value");
  }

  if (v26 >= 5)
  {
    printf("e: unsupported region count: %u > %u\n");
    return 0;
  }

  if (v30 >= 2)
  {
    printf("e: unsupported sensor channel count: %u > %u\n");
    return 0;
  }

  if (v34 >= 4)
  {
    printf("e: unsupported color count: %u > %u\n");
    return 0;
  }

  if (v38 >= 0x81)
  {
    printf("e: unsupported gray value count: %u > %u\n");
    return 0;
  }

  if (v41 >= 0x80)
  {
    printf("e: unsupported gray step count: %u > %u\n");
    return 0;
  }

  if (v49 >= 2)
  {
    printf("e: unsupported htmp emission freq count: %u > %u\n");
    return 0;
  }

  if (v48 >= 3)
  {
    printf("e: unsupported benl emission freq count: %u > %u\n");
    return 0;
  }

  if (v47 >= 3)
  {
    printf("e: unsupported pdcc emission freq count: %u > %u\n");
    return 0;
  }

  if (v22 >= 3)
  {
    printf("e: unsupported pdmc emission freq count: %u > %u\n");
    return 0;
  }

  v3[43008] = v26;
  v3[43009] = v30;
  v3[43010] = v34;
  *(v3 + 86030) = v38;
  *(v3 + 86031) = v41;
  *(v3 + 172056) = v48;
  *(v3 + 172057) = v47;
  *(v3 + 172058) = v22;
  *(a1 + 3928) = 0;
  *(a1 + 3930) = 0;
  v42 = *(a1 + 3936);
  if (v7 - v42 >= 0)
  {
    v43 = -((v7 - v42) & 3);
  }

  else
  {
    v43 = (v42 - v7) & 3;
  }

  if (v43)
  {
    v44 = v43 - 4;
    do
    {
      sub_100007AEC(a1, 1uLL);
      v10 = __CFADD__(v44++, 1);
    }

    while (!v10);
    v42 = *(a1 + 3936);
  }

  if (v42 != v7 + v4)
  {
    v5 = "e: parsing did not consume the full CNST size";
    goto LABEL_5;
  }

  return 1;
}

uint64_t sub_10001610C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 4) != 0x10000)
  {
    v55 = *(a2 + 4);
    printf("e: unsupported version: 0x%x != 0x%x\n");
    return 0;
  }

  if (*(a1 + 2832) != 5)
  {
    v56 = *(a1 + 2832);
    printf("e: mismatching versions: %u != 5\n");
    return 0;
  }

  v3 = *(a1 + 2840);
  v4 = *(a1 + 3928);
  if (v4 >= *(v3 + 172056))
  {
    v57 = *(v3 + 172056);
    printf("e: Too many BENL blocks, expected %u\n");
    return 0;
  }

  v5 = 4 * *(a2 + 8);
  v6 = (v5 - 12);
  if (v5 == 12)
  {
    v22 = "e: underflow while temperature / emission_freq / NBBL";
LABEL_76:
    puts(v22);
    return 0;
  }

  v7 = (v3 + 16200 * *(a1 + 3928) + 12416);
  v8 = *(a1 + 3936);
  v9 = *(v3 + 172060);
  v10 = *(v3 + 172062);
  v11 = *(v3 + 172040);
  v12 = (v8 + 1);
  *(a1 + 3936) = v8 + 1;
  v13 = *(a1 + 3944);
  v14 = v13 != 0;
  v15 = v13 - 1;
  *(a1 + 3944) = v15;
  if (!v14)
  {
    puts("e: data_sz underflow in get_value");
    v12 = *(a1 + 3936);
    v15 = *(a1 + 3944);
  }

  v18 = *v12;
  v16 = (v12 + 1);
  v17 = v18;
  *(a1 + 3936) = v16;
  v14 = v15 >= 2;
  v19 = v15 - 2;
  *(a1 + 3944) = v19;
  if (!v14)
  {
    puts("e: data_sz underflow in get_value");
    v16 = *(a1 + 3936);
    v19 = *(a1 + 3944);
  }

  *v7 = v17;
  v20 = *v16;
  *(a1 + 3936) = v16 + 1;
  *(a1 + 3944) = v19 - 1;
  if (!v19)
  {
    puts("e: data_sz underflow in get_value");
  }

  *(v3 + 16200 * v4 + 12418) = v20;
  if (v20 >= 0x13)
  {
    printf("e: unsupported NBBL: %u > %u\n");
    return 0;
  }

  v65 = v4;
  v23 = v8 + v6;
  v24 = *(a1 + 3936);
  v25 = v8 + v6 - v24;
  if (v25 < 2 * v20)
  {
    v22 = "e: underflow while reading bright taps";
    goto LABEL_76;
  }

  v63 = v7;
  v64 = v3;
  v26 = v20;
  v27 = 2 * v20;
  v67 = v9;
  if (!v26)
  {
    if (v25 >= v11 * v9 * v27)
    {
      goto LABEL_38;
    }

LABEL_37:
    v22 = "e: underflow while reading BENL LUT";
    goto LABEL_76;
  }

  v28 = (v7 + 3);
  v66 = v26;
  do
  {
    v29 = *(a1 + 3936);
    v30 = *v29;
    *(a1 + 3936) = v29 + 1;
    LODWORD(v29) = *(a1 + 3944);
    *(a1 + 3944) = v29 - 2;
    if (v29 < 2)
    {
      puts("e: data_sz underflow in get_value");
    }

    *v28++ = v30 << 16;
    --v26;
  }

  while (v26);
  LODWORD(v9) = v67;
  if (v23 - *(a1 + 3936) < v11 * v67 * v27)
  {
    goto LABEL_37;
  }

  v60 = v8;
  v61 = v8 + v6;
  v58 = v10;
  v31 = 0;
  v32 = v63 + 1188;
  do
  {
    if (v9)
    {
      v33 = 0;
      v34 = v32;
      do
      {
        v35 = v11;
        v36 = v34;
        if (v11)
        {
          do
          {
            v37 = *(a1 + 3936);
            v38 = *v37;
            *(a1 + 3936) = v37 + 1;
            LODWORD(v37) = *(a1 + 3944);
            *(a1 + 3944) = v37 - 2;
            if (v37 < 2)
            {
              puts("e: data_sz underflow in get_value");
            }

            *v36 = v38;
            v36 += 128;
            --v35;
          }

          while (v35);
        }

        ++v33;
        ++v34;
        LODWORD(v9) = v67;
      }

      while (v33 != v67);
    }

    ++v31;
    v32 += 384;
  }

  while (v31 != v66);
  v24 = *(a1 + 3936);
  v8 = v60;
  v23 = v61;
  v25 = v61 - v24;
  v10 = v58;
LABEL_38:
  if (v25 < 2 * v9 * v11)
  {
    v22 = "e: underflow while reading BENL coords";
    goto LABEL_76;
  }

  v62 = v23;
  if (v9)
  {
    v59 = v10;
    v39 = 0;
    do
    {
      if (v11)
      {
        v40 = (v64 + 16200 * v65 + 12496 + 4 * (v39 >> 1));
        if (v39)
        {
          v41 = -268369921;
        }

        else
        {
          v41 = -4096;
        }

        v42 = v11;
        do
        {
          v43 = *(a1 + 3936);
          v44 = *v43;
          *(a1 + 3936) = v43 + 1;
          LODWORD(v43) = *(a1 + 3944);
          *(a1 + 3944) = v43 - 2;
          if (v43 < 2)
          {
            puts("e: data_sz underflow in get_value");
          }

          v45 = (v44 & 0xFFF) << 16;
          if ((v39 & 1) == 0)
          {
            v45 = v44 & 0xFFF;
          }

          *v40 = *v40 & v41 | v45;
          v40 += 64;
          --v42;
        }

        while (v42);
      }

      ++v39;
    }

    while (v39 != v67);
    v24 = *(a1 + 3936);
    v23 = v62;
    v25 = v62 - v24;
    v10 = v59;
  }

  if (v25 < 4 * v10 * v11)
  {
    v22 = "e: underflow while reading BENL steps";
    goto LABEL_76;
  }

  if (v10)
  {
    v46 = 0;
    v47 = v63 + 424;
    do
    {
      v48 = v11;
      v49 = v47;
      if (v11)
      {
        do
        {
          v50 = *(a1 + 3936);
          v51 = *v50;
          *(a1 + 3936) = v50 + 1;
          LODWORD(v50) = *(a1 + 3944);
          *(a1 + 3944) = v50 - 4;
          if (v50 < 4)
          {
            puts("e: data_sz underflow in get_value");
          }

          *v49 = v51;
          v49 += 127;
          --v48;
        }

        while (v48);
      }

      ++v46;
      ++v47;
    }

    while (v46 != v10);
    v24 = *(a1 + 3936);
    v23 = v62;
  }

  if (v8 - v24 >= 0)
  {
    v52 = -((v8 - v24) & 3);
  }

  else
  {
    v52 = (v24 - v8) & 3;
  }

  if (v52)
  {
    v53 = v52 - 4;
    do
    {
      ++*(a1 + 3936);
      v54 = *(a1 + 3944);
      *(a1 + 3944) = v54 - 1;
      if (!v54)
      {
        puts("e: data_sz underflow in get_value");
      }

      v14 = __CFADD__(v53++, 1);
    }

    while (!v14);
    v24 = *(a1 + 3936);
  }

  if (v24 != v23)
  {
    v22 = "e: parsing did not consume the full BENL size";
    goto LABEL_76;
  }

  ++*(a1 + 3928);
  return 1;
}

uint64_t sub_1000165C8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 4) != 0x20000)
  {
    v67 = *(a2 + 4);
    printf("e: unsupported version: 0x%x != 0x%x\n");
    return 0;
  }

  if (*(a1 + 2832) != 5)
  {
    v68 = *(a1 + 2832);
    printf("e: mismatching versions: %u != 5\n");
    return 0;
  }

  v3 = *(a1 + 2840);
  if (*(a1 + 3929) >= *(v3 + 172057))
  {
    v69 = *(v3 + 172057);
    printf("e: Too many PDCC blocks, expected %u\n");
    return 0;
  }

  v4 = (4 * *(a2 + 8) - 12);
  if (v4 < 7)
  {
    v5 = "e: underflow while temperature / emission_freq / NPCT";
LABEL_6:
    puts(v5);
    return 0;
  }

  v7 = v3 + 47672 * *(a1 + 3929) + 44816;
  v8 = *(a1 + 3936);
  v9 = *(v3 + 172060);
  v10 = *(v3 + 172062);
  v11 = *(v3 + 172040);
  v12 = v8 + 1;
  v13 = *v8;
  *(a1 + 3936) = v8 + 1;
  v14 = *(a1 + 3944);
  v15 = v14 >= 2;
  v16 = v14 - 2;
  *(a1 + 3944) = v16;
  if (!v15)
  {
    puts("e: data_sz underflow in get_value");
    v12 = *(a1 + 3936);
    v16 = *(a1 + 3944);
  }

  *v7 = v13;
  v17 = v12 + 1;
  *(a1 + 3936) = v17;
  v15 = v16 >= 2;
  v18 = v16 - 2;
  *(a1 + 3944) = v18;
  if (!v15)
  {
    puts("e: data_sz underflow in get_value");
    v17 = *(a1 + 3936);
    v18 = *(a1 + 3944);
  }

  v21 = *v17;
  v19 = (v17 + 1);
  v20 = v21;
  *(a1 + 3936) = v19;
  v15 = v18 >= 2;
  v22 = v18 - 2;
  *(a1 + 3944) = v22;
  if (!v15)
  {
    puts("e: data_sz underflow in get_value");
    v19 = *(a1 + 3936);
    v22 = *(a1 + 3944);
  }

  *(v7 + 2) = v20;
  v23 = *v19;
  *(a1 + 3936) = v19 + 1;
  *(a1 + 3944) = v22 - 1;
  if (!v22)
  {
    puts("e: data_sz underflow in get_value");
  }

  *(v7 + 4) = v23;
  if (v23 >= 0xF)
  {
    printf("e: unsupported NPCT: %u > %u\n");
    return 0;
  }

  v24 = v8 + v4;
  v25 = v8 + v4 - *(a1 + 3936);
  if (v25 < v23)
  {
    v5 = "e: underflow while reading temp taps";
    goto LABEL_6;
  }

  if (!v23)
  {
    v44 = v11 * v9;
    if (v25 >= 5 * v44 * v23)
    {
      goto LABEL_50;
    }

LABEL_49:
    v5 = "e: underflow while reading PDCC LUT";
    goto LABEL_6;
  }

  v76 = v8 + v4;
  v26 = (v7 + 5);
  v80 = v23;
  do
  {
    v27 = *(a1 + 3936);
    v28 = *v27;
    *(a1 + 3936) = v27 + 1;
    LODWORD(v27) = *(a1 + 3944);
    *(a1 + 3944) = v27 - 1;
    if (!v27)
    {
      puts("e: data_sz underflow in get_value");
    }

    *v26++ = v28 << 16;
    --v23;
  }

  while (v23);
  if (&v76[-*(a1 + 3936)] < 5 * v11 * v9 * v80)
  {
    goto LABEL_49;
  }

  v72 = v10;
  v70 = v8;
  v29 = 0;
  v74 = v7;
  v30 = v7 + 4664;
  v81 = v30;
  do
  {
    v79 = v29;
    if (v9)
    {
      v31 = 0;
      v32 = v30;
      do
      {
        v33 = v11;
        v34 = v32;
        if (v11)
        {
          do
          {
            v35 = *(a1 + 3936);
            v36 = *v35;
            *(a1 + 3936) = v35 + 1;
            LODWORD(v35) = *(a1 + 3944);
            *(a1 + 3944) = v35 - 4;
            if (v35 < 4)
            {
              puts("e: data_sz underflow in get_value");
            }

            *v34 = v36;
            v34 += 128;
            --v33;
          }

          while (v33);
        }

        ++v31;
        ++v32;
      }

      while (v31 != v9);
    }

    v29 = v79 + 1;
    v30 += 3072;
  }

  while (v79 + 1 != v80);
  for (i = 0; i != v80; ++i)
  {
    if (v9)
    {
      v38 = 0;
      v39 = v81;
      do
      {
        v40 = v11;
        v41 = v39;
        if (v11)
        {
          do
          {
            v42 = *(a1 + 3936);
            v43 = *v42;
            *(a1 + 3936) = v42 + 1;
            LODWORD(v42) = *(a1 + 3944);
            *(a1 + 3944) = v42 - 1;
            if (!v42)
            {
              puts("e: data_sz underflow in get_value");
            }

            *v41 |= v43 << 32;
            v41 += 128;
            --v40;
          }

          while (v40);
        }

        ++v38;
        ++v39;
      }

      while (v38 != v9);
    }

    v81 += 384;
  }

  v8 = v70;
  v44 = v11 * v9;
  v10 = v72;
  v7 = v74;
  v24 = v76;
LABEL_50:
  v45 = *(a1 + 3936);
  v46 = v24 - v45;
  if (v24 - v45 < 4 * v44)
  {
    v5 = "e: underflow while reading PDCC coords LSB";
    goto LABEL_6;
  }

  v73 = v10;
  if (!v9)
  {
    if (v46 >= v44)
    {
      v75 = v7;
      goto LABEL_70;
    }

LABEL_68:
    v5 = "e: underflow while reading PDCC coords MSB";
    goto LABEL_6;
  }

  v71 = v44;
  v75 = v7;
  v77 = v24;
  v47 = 0;
  v48 = (v7 + 64);
  do
  {
    v49 = v11;
    v50 = v48;
    if (v11)
    {
      do
      {
        v51 = *(a1 + 3936);
        v52 = *v51;
        *(a1 + 3936) = v51 + 1;
        LODWORD(v51) = *(a1 + 3944);
        *(a1 + 3944) = v51 - 4;
        if (v51 < 4)
        {
          puts("e: data_sz underflow in get_value");
        }

        *v50 = v52;
        v50 += 128;
        --v49;
      }

      while (v49);
    }

    ++v47;
    ++v48;
  }

  while (v47 != v9);
  if (&v77[-*(a1 + 3936)] < v71)
  {
    goto LABEL_68;
  }

  v53 = 0;
  v54 = (v75 + 1600);
  do
  {
    v55 = v11;
    v56 = v54;
    if (v11)
    {
      do
      {
        v57 = *(a1 + 3936);
        v58 = *v57;
        *(a1 + 3936) = v57 + 1;
        LODWORD(v57) = *(a1 + 3944);
        *(a1 + 3944) = v57 - 1;
        if (!v57)
        {
          puts("e: data_sz underflow in get_value");
        }

        *v56 = v58;
        v56 += 128;
        --v55;
      }

      while (v55);
    }

    ++v53;
    ++v54;
  }

  while (v53 != v9);
  v45 = *(a1 + 3936);
  v24 = v77;
  v46 = v77 - v45;
LABEL_70:
  if (v46 < 4 * v73 * v11)
  {
    v5 = "e: underflow while reading PDCC steps";
    goto LABEL_6;
  }

  if (v73)
  {
    v78 = v24;
    v59 = 0;
    v60 = (v75 + 3136);
    do
    {
      v61 = v11;
      v62 = v60;
      if (v11)
      {
        do
        {
          v63 = *(a1 + 3936);
          v64 = *v63;
          *(a1 + 3936) = v63 + 1;
          LODWORD(v63) = *(a1 + 3944);
          *(a1 + 3944) = v63 - 4;
          if (v63 < 4)
          {
            puts("e: data_sz underflow in get_value");
          }

          *v62 = v64;
          v62 += 127;
          --v61;
        }

        while (v61);
      }

      ++v59;
      ++v60;
    }

    while (v59 != v73);
    v45 = *(a1 + 3936);
    v24 = v78;
  }

  if (v8 - v45 >= 0)
  {
    v65 = -((v8 - v45) & 3);
  }

  else
  {
    v65 = (v45 - v8) & 3;
  }

  if (v65)
  {
    v66 = v65 - 4;
    do
    {
      sub_100007AEC(a1, 1uLL);
      v15 = __CFADD__(v66++, 1);
    }

    while (!v15);
    v45 = *(a1 + 3936);
  }

  if (v45 != v24)
  {
    v5 = "e: parsing did not consume the full PDCC size";
    goto LABEL_6;
  }

  ++*(a1 + 3929);
  return 1;
}

uint64_t sub_100016B84(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 4) != 0x10000)
  {
    v56 = *(a2 + 4);
    printf("e: unsupported version: 0x%x != 0x%x\n");
    return 0;
  }

  if (*(a1 + 2832) != 5)
  {
    v57 = *(a1 + 2832);
    printf("e: mismatching versions: %u != 5\n");
    return 0;
  }

  v3 = *(a1 + 2840);
  if (*(a1 + 3930) >= *(v3 + 172058))
  {
    v58 = *(v3 + 172058);
    printf("e: Too many PDMC blocks, expected %u\n");
    return 0;
  }

  v4 = (4 * *(a2 + 8) - 12);
  if (v4 < 7)
  {
    v5 = "e: underflow while temperature / emission_freq / NPMT";
LABEL_6:
    puts(v5);
    return 0;
  }

  v7 = v3 + 15936 * *(a1 + 3930);
  v8 = *(a1 + 3936);
  v9 = *(v3 + 172060);
  v10 = *(v3 + 172062);
  v11 = v8 + 2;
  *(a1 + 3936) = v8 + 2;
  v12 = *(a1 + 3944);
  v13 = v12 >= 2;
  v14 = v12 - 2;
  *(a1 + 3944) = v14;
  if (!v13)
  {
    puts("e: data_sz underflow in get_value");
    v11 = *(a1 + 3936);
    v14 = *(a1 + 3944);
  }

  v15 = v7 + 140160;
  v16 = (v11 + 2);
  *(a1 + 3936) = v16;
  v13 = v14 >= 2;
  v17 = v14 - 2;
  *(a1 + 3944) = v17;
  if (!v13)
  {
    puts("e: data_sz underflow in get_value");
    v16 = *(a1 + 3936);
    v17 = *(a1 + 3944);
  }

  v20 = *v16;
  v18 = (v16 + 1);
  v19 = v20;
  *(a1 + 3936) = v18;
  v13 = v17 >= 2;
  v21 = v17 - 2;
  *(a1 + 3944) = v21;
  if (!v13)
  {
    puts("e: data_sz underflow in get_value");
    v18 = *(a1 + 3936);
    v21 = *(a1 + 3944);
  }

  *v15 = v19;
  v22 = *v18;
  *(a1 + 3936) = v18 + 1;
  *(a1 + 3944) = v21 - 1;
  if (!v21)
  {
    puts("e: data_sz underflow in get_value");
  }

  *(v15 + 2) = v22;
  if (v22 >= 0xF)
  {
    printf("e: unsupported NPMT: %u > %u\n");
    return 0;
  }

  if (v8 + v4 - *(a1 + 3936) < v22)
  {
    v5 = "e: underflow while reading temp taps";
    goto LABEL_6;
  }

  v60 = v10;
  v61 = v8 + v4;
  v62 = v15;
  if (v22)
  {
    v23 = (v15 + 3);
    v24 = v22;
    do
    {
      v25 = *(a1 + 3936);
      v26 = *v25;
      *(a1 + 3936) = v25 + 1;
      LODWORD(v25) = *(a1 + 3944);
      *(a1 + 3944) = v25 - 1;
      if (!v25)
      {
        puts("e: data_sz underflow in get_value");
      }

      *v23++ = v26 << 16;
      --v24;
    }

    while (v24);
    if (v8 + v4 - *(a1 + 3936) < 5 * v9 * v22)
    {
      v5 = "e: underflow while reading PDMC LUT";
      goto LABEL_6;
    }

    v59 = v8;
    v27 = 0;
    v28 = (v15 + 1600);
    v29 = (v15 + 1600);
    do
    {
      v30 = v9;
      v31 = v29;
      if (v9)
      {
        do
        {
          v32 = *(a1 + 3936);
          v33 = *v32;
          *(a1 + 3936) = v32 + 1;
          LODWORD(v32) = *(a1 + 3944);
          *(a1 + 3944) = v32 - 4;
          if (v32 < 4)
          {
            puts("e: data_sz underflow in get_value");
          }

          *v31++ = v33;
          --v30;
        }

        while (v30);
      }

      ++v27;
      v29 += 128;
    }

    while (v27 != v22);
    v34 = 0;
    v8 = v59;
    do
    {
      v35 = v9;
      v36 = v28;
      if (v9)
      {
        do
        {
          v37 = *(a1 + 3936);
          v38 = *v37;
          *(a1 + 3936) = v37 + 1;
          LODWORD(v37) = *(a1 + 3944);
          *(a1 + 3944) = v37 - 1;
          if (!v37)
          {
            puts("e: data_sz underflow in get_value");
          }

          *v36++ |= v38 << 32;
          --v35;
        }

        while (v35);
      }

      ++v34;
      v28 += 128;
    }

    while (v34 != v22);
  }

  v39 = *(a1 + 3936);
  v40 = v61 - v39;
  if (v61 - v39 < 4 * v9)
  {
    v5 = "e: underflow while reading PDMC coords LSB";
    goto LABEL_6;
  }

  if (!v9)
  {
    v42 = v62;
    if (v40 >= v9)
    {
      v48 = v60;
      goto LABEL_60;
    }

LABEL_58:
    v5 = "e: underflow while reading PDMC coords MSB";
    goto LABEL_6;
  }

  v41 = v8;
  v42 = v62;
  v43 = (v62 + 64);
  v44 = v9;
  do
  {
    v45 = *(a1 + 3936);
    v46 = *v45;
    *(a1 + 3936) = v45 + 1;
    LODWORD(v45) = *(a1 + 3944);
    *(a1 + 3944) = v45 - 4;
    if (v45 < 4)
    {
      puts("e: data_sz underflow in get_value");
    }

    *v43++ = v46;
    --v44;
  }

  while (v44);
  if (v61 - *(a1 + 3936) < v9)
  {
    goto LABEL_58;
  }

  v8 = v41;
  v47 = (v62 + 576);
  v48 = v60;
  do
  {
    v49 = *(a1 + 3936);
    v50 = *v49;
    *(a1 + 3936) = v49 + 1;
    LODWORD(v49) = *(a1 + 3944);
    *(a1 + 3944) = v49 - 1;
    if (!v49)
    {
      puts("e: data_sz underflow in get_value");
    }

    *v47++ = v50;
    --v9;
  }

  while (v9);
  v39 = *(a1 + 3936);
  v40 = v61 - v39;
LABEL_60:
  if (v40 < 4 * v48)
  {
    v5 = "e: underflow while reading PDMC steps";
    goto LABEL_6;
  }

  if (v48)
  {
    v51 = (v42 + 1088);
    do
    {
      v52 = *(a1 + 3936);
      v53 = *v52;
      *(a1 + 3936) = v52 + 1;
      LODWORD(v52) = *(a1 + 3944);
      *(a1 + 3944) = v52 - 4;
      if (v52 < 4)
      {
        puts("e: data_sz underflow in get_value");
      }

      *v51++ = v53;
      --v48;
    }

    while (v48);
    v39 = *(a1 + 3936);
  }

  if (v8 - v39 >= 0)
  {
    v54 = -((v8 - v39) & 3);
  }

  else
  {
    v54 = (v39 - v8) & 3;
  }

  if (v54)
  {
    v55 = v54 - 4;
    do
    {
      sub_100007AEC(a1, 1uLL);
      v13 = __CFADD__(v55++, 1);
    }

    while (!v13);
    v39 = *(a1 + 3936);
  }

  if (v39 != v61)
  {
    v5 = "e: parsing did not consume the full PDMC size";
    goto LABEL_6;
  }

  ++*(a1 + 3930);
  return 1;
}

uint64_t sub_10001704C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 4) == 393216)
  {
    v3 = *(a1 + 2840);
    if (*v3 == 6)
    {
      printf("i: Processing CNST version 0x%x\n", 393216);
      if ((4 * *(a2 + 8) - 12) > 0x13)
      {
        v6 = *(a1 + 3936) + 1;
        *(a1 + 3936) = v6;
        v7 = *(a1 + 3944);
        v8 = v7 != 0;
        v9 = v7 - 1;
        *(a1 + 3944) = v9;
        if (!v8)
        {
          puts("e: data_sz underflow in get_value");
          v6 = *(a1 + 3936);
          v9 = *(a1 + 3944);
        }

        v10 = (v6 + 1);
        *(a1 + 3936) = v10;
        v8 = v9 != 0;
        v11 = v9 - 1;
        *(a1 + 3944) = v11;
        if (!v8)
        {
          puts("e: data_sz underflow in get_value");
          v10 = *(a1 + 3936);
          v11 = *(a1 + 3944);
        }

        v14 = *v10;
        v12 = (v10 + 1);
        v13 = v14;
        *(a1 + 3936) = v12;
        v8 = v11 >= 2;
        v15 = v11 - 2;
        *(a1 + 3944) = v15;
        if (!v8)
        {
          puts("e: data_sz underflow in get_value");
          v12 = *(a1 + 3936);
          v15 = *(a1 + 3944);
        }

        v18 = *v12;
        v16 = v12 + 1;
        v17 = v18;
        *(a1 + 3936) = v16;
        v8 = v15 != 0;
        v19 = v15 - 1;
        *(a1 + 3944) = v19;
        if (!v8)
        {
          puts("e: data_sz underflow in get_value");
          v16 = *(a1 + 3936);
          v19 = *(a1 + 3944);
        }

        v22 = *v16;
        v20 = v16 + 1;
        v21 = v22;
        *(a1 + 3936) = v20;
        v8 = v19 != 0;
        v23 = v19 - 1;
        *(a1 + 3944) = v23;
        if (!v8)
        {
          puts("e: data_sz underflow in get_value");
          v20 = *(a1 + 3936);
          v23 = *(a1 + 3944);
        }

        v26 = *v20;
        v24 = v20 + 1;
        v25 = v26;
        *(a1 + 3936) = v24;
        v8 = v23 != 0;
        v27 = v23 - 1;
        *(a1 + 3944) = v27;
        if (!v8)
        {
          puts("e: data_sz underflow in get_value");
          v24 = *(a1 + 3936);
          v27 = *(a1 + 3944);
        }

        v30 = *v24;
        v28 = v24 + 1;
        v29 = v30;
        *(a1 + 3936) = v28;
        v8 = v27 != 0;
        v31 = v27 - 1;
        *(a1 + 3944) = v31;
        if (!v8)
        {
          puts("e: data_sz underflow in get_value");
          v28 = *(a1 + 3936);
          v31 = *(a1 + 3944);
        }

        v32 = *v28;
        *(a1 + 3936) = v28 + 1;
        *(a1 + 3944) = v31 - 1;
        if (!v31)
        {
          puts("e: data_sz underflow in get_value");
        }

        if (v13 < 0x79)
        {
          if (v17 < 3)
          {
            if (v21 < 0x25)
            {
              if (v25 < 6)
              {
                if (v29 < 0x25)
                {
                  if (v32 < 6)
                  {
                    v33 = sub_100007AEC(a1, 1uLL);
                    if (v33 < 5u)
                    {
                      v50 = v33;
                      v34 = sub_100007AEC(a1, 1uLL);
                      if (v34 < 7u)
                      {
                        v49 = v34;
                        v35 = sub_100007AEC(a1, 1uLL);
                        if (v35 < 4u)
                        {
                          v36 = v3 + 468992;
                          v47 = v35;
                          v48 = sub_100007AEC(a1, 1uLL);
                          v46 = sub_100007AEC(a1, 1uLL);
                          v37 = sub_100007AEC(a1, 1uLL);
                          v36[24] = v50;
                          v36[25] = v49;
                          v36[26] = v47;
                          v36[27] = v25;
                          v36[28] = v21;
                          *(v36 + 69) = v32;
                          *(v36 + 70) = v29;
                          v36[30] = v46;
                          v36[31] = v48;
                          v36[32] = v17;
                          v36[33] = v13;
                          *(v36 + 68) = v37;
                          if (v25)
                          {
                            v38 = v21 == 0;
                          }

                          else
                          {
                            v38 = 1;
                          }

                          v40 = v38 || v32 == 0;
                          if (v29)
                          {
                            v41 = v40;
                          }

                          else
                          {
                            v41 = 1;
                          }

                          if (v41)
                          {
                            v42 = 0;
                          }

                          else
                          {
                            v42 = 2;
                          }

                          if (v17)
                          {
                            v43 = v13 == 0;
                          }

                          else
                          {
                            v43 = 1;
                          }

                          if (!v43)
                          {
                            ++v42;
                          }

                          v36[36] = v42 | v36[36] & 0xFFFFFFFC;
                          if (!v43 && (v40 & 1) == 0 && v29)
                          {
                            operator new();
                          }

                          printf("e: missing EMMP (T%d B%d) or gray scales (sync T%d B%d async T%d B%d)\n");
                        }

                        else
                        {
                          printf("e: unsupported color channel count: %u > %u\n");
                        }
                      }

                      else
                      {
                        printf("e: unsupported sensor channel count: %u > %u\n");
                      }
                    }

                    else
                    {
                      printf("e: unsupported region count: %u > %u\n");
                    }
                  }

                  else
                  {
                    printf("e: unsupported async PCS temperature count: %u > %u\n");
                  }
                }

                else
                {
                  printf("e: unsupported async PCS brightness count: %u > %u\n");
                }
              }

              else
              {
                printf("e: unsupported sync PCS temperature count: %u > %u\n");
              }
            }

            else
            {
              printf("e: unsupported sync PCS brightness count: %u > %u\n");
            }
          }

          else
          {
            printf("e: unsupported EMMP ACSS temperature count: %u > %u\n");
          }
        }

        else
        {
          printf("e: unsupported EMMP ACSS brightness count: %u > %u\n");
        }
      }

      else
      {
        printf("e: unexpected size for CNST %u < %u\n");
      }
    }

    else
    {
      v45 = *v3;
      printf("e: mismatching versions: %u != %u\n");
    }
  }

  else
  {
    v44 = *(a2 + 4);
    printf("e: unsupported version: 0x%x != 0x%x\n");
  }

  return 0;
}

uint64_t sub_100017544(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 2832);
  if (v4 == 6)
  {
    v5 = 1876064;
  }

  else
  {
    if (v4 != 7)
    {
      v41 = *(a1 + 2832);
      printf("e: unsupported config: 0x%x\n");
      return 0;
    }

    v5 = 6182680;
  }

  if (*(a2 + 4) != 0x20000)
  {
    v40 = *(a2 + 4);
    printf("e: unsupported version: 0x%x != 0x%x\n");
    return 0;
  }

  v6 = *(a1 + 2840);
  __src = malloc_type_calloc(1uLL, 0x158uLL, 0x1000040C3D918F4uLL);
  v46 = __src;
  if (!__src)
  {
    v29 = "e: out of memory for PCS table";
    goto LABEL_55;
  }

  v7 = 4 * *(a2 + 8);
  v8 = (v7 - 12);
  if (v7 == 12)
  {
    v29 = "e: underflow while reading indices";
    goto LABEL_55;
  }

  v9 = *(a1 + 3936);
  v10 = *(v6 + v5 + 4);
  v44 = *(v6 + v5 + 8);
  v11 = *(v6 + v5);
  v12 = v9 + 1;
  v13 = *v9;
  *(a1 + 3936) = v9 + 1;
  v14 = *(a1 + 3944);
  v15 = v14 != 0;
  v16 = v14 - 1;
  *(a1 + 3944) = v16;
  v42 = v13;
  if (!v15)
  {
    puts("e: data_sz underflow in get_value");
    v12 = *(a1 + 3936);
    v16 = *(a1 + 3944);
  }

  v19 = *v12;
  v17 = (v12 + 1);
  v18 = v19;
  *(a1 + 3936) = v17;
  v15 = v16 != 0;
  v20 = v16 - 1;
  *(a1 + 3944) = v20;
  if (!v15)
  {
    puts("e: data_sz underflow in get_value");
    v17 = *(a1 + 3936);
    v20 = *(a1 + 3944);
  }

  v46[338] = v18;
  v21 = *v17;
  *(a1 + 3936) = v17 + 1;
  *(a1 + 3944) = v20 - 2;
  if (v20 < 2)
  {
    puts("e: data_sz underflow in get_value");
  }

  v43 = v9;
  v45 = &v9[v8];
  *(v46 + 168) = v21;
  if (v44)
  {
    v22 = 0;
    while (&v45[-*(a1 + 3936)] >= 4 * (v10 * v11))
    {
      if (v11)
      {
        v23 = 0;
        v24 = v46;
        do
        {
          v25 = v10;
          v26 = v24;
          if (v10)
          {
            do
            {
              v27 = *(a1 + 3936);
              v28 = *v27;
              *(a1 + 3936) = v27 + 1;
              LODWORD(v27) = *(a1 + 3944);
              *(a1 + 3944) = v27 - 8;
              if (v27 < 8)
              {
                puts("e: data_sz underflow in get_long_value");
              }

              *v26++ = vcvts_n_f32_u64(v28, 0x24uLL);
              --v25;
            }

            while (v25);
          }

          ++v23;
          v24 += 7;
        }

        while (v23 != v11);
      }

      ++v22;
      v46 += 112;
      if (v22 == v44)
      {
        goto LABEL_25;
      }
    }

    v29 = "e: underflow while reading PCS scales";
    goto LABEL_55;
  }

LABEL_25:
  if (&v45[-*(a1 + 3936)] < 36)
  {
    v29 = "e: underflow while reading PCS spare";
LABEL_55:
    puts(v29);
    return 0;
  }

  v30 = 18;
  do
  {
    *(a1 + 3936) += 2;
    v31 = *(a1 + 3944);
    *(a1 + 3944) = v31 - 2;
    if (v31 < 2)
    {
      puts("e: data_sz underflow in get_value");
    }

    --v30;
  }

  while (v30);
  if (v42)
  {
    sub_1000187B0(*(a1 + 3880), &__src);
    if ((v42 & 2) == 0)
    {
      goto LABEL_43;
    }

    v34 = malloc_type_calloc(1uLL, 0x158uLL, 0x1000040C3D918F4uLL);
    v47 = v34;
    if (!v34)
    {
      v29 = "e: out of memory for PCS table copy";
      goto LABEL_55;
    }

    memcpy(v34, __src, 0x158uLL);
    v32 = *(a1 + 3888);
    p_src = &v47;
  }

  else
  {
    if ((v42 & 2) == 0)
    {
      goto LABEL_43;
    }

    v32 = *(a1 + 3888);
    p_src = &__src;
  }

  sub_1000187B0(v32, p_src);
LABEL_43:
  v35 = *(a1 + 3936);
  if (v43 - v35 >= 0)
  {
    v36 = -((v43 - v35) & 3);
  }

  else
  {
    v36 = (v35 - v43) & 3;
  }

  if (v36)
  {
    v37 = v36 - 4;
    do
    {
      ++*(a1 + 3936);
      v38 = *(a1 + 3944);
      *(a1 + 3944) = v38 - 1;
      if (!v38)
      {
        puts("e: data_sz underflow in get_value");
      }

      v15 = __CFADD__(v37++, 1);
    }

    while (!v15);
    v35 = *(a1 + 3936);
  }

  if (v35 != v45)
  {
    v29 = "e: parsing did not consume the full PCS size";
    goto LABEL_55;
  }

  return 1;
}