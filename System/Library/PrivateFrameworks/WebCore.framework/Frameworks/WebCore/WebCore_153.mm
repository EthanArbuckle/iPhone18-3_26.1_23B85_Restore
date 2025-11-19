void av1_cyclic_refresh_setup(_WORD *a1, double a2, int16x4_t a3, int16x4_t a4)
{
  v5 = a1 + 228376;
  v6 = (a1 + 131868);
  v7 = (a1 + 119528);
  v8 = *(a1 + 57096);
  v125 = (a1 + 194204);
  v9 = *(a1 + 97114);
  v10 = *(*a1 + 35636);
  if (v10 <= 1599)
  {
    v11 = v10 / 100;
  }

  else
  {
    v11 = 15;
  }

  if (*(*a1 + 4 * *(a1 + 456792) + 1152) >= 6)
  {
    v12 = 6;
  }

  else
  {
    v12 = *(*a1 + 4 * *(a1 + 456792) + 1152);
  }

  v13 = *v7;
  v14 = *(a1 + 29910);
  v112 = a1 + 318564;
  v122 = a1 + 131868;
  if (v14 && (*(a1 + 59778) != *(v14 + 268) || *(a1 + 59779) != *(v14 + 272)) && *(a1 + 159286) == *(a1 + 159284))
  {
    bzero(*(v8 + 40), *(a1 + 59898) * *(a1 + 59897));
    v6 = v122;
    *(v8 + 12) = 0;
    *(v8 + 16) = 0;
    *(v122 + 3392) = 1;
    *(v8 + 104) = 0;
    *(v8 + 112) = 0;
    *(v8 + 4) = 5;
    *(v8 + 80) = 0x3FD0000000000000;
  }

  v15 = a1 + 129024;
  if (*(v8 + 104))
  {
    ++*(v8 + 112);
    v16 = *(v7 + 154);
    v17 = *(*v6 + 72);
    if (v17 == 8)
    {
      v19 = ac_qlookup_QTX;
      v21 = 0.25;
    }

    else
    {
      if (v17 == 12)
      {
        v19 = ac_qlookup_12_QTX;
        *&v20 = 0.015625;
      }

      else
      {
        v18 = -1.0;
        if (v17 != 10)
        {
          goto LABEL_33;
        }

        v19 = ac_qlookup_10_QTX;
        *&v20 = 0.0625;
      }

      v21 = *&v20;
    }

    if (v16 >= 0xFF)
    {
      v22 = 255;
    }

    else
    {
      v22 = *(v7 + 154);
    }

    if (v16 < 0)
    {
      v22 = 0;
    }

    a3.i16[0] = v19[v22];
    v18 = v21 * vmovl_s16(a3).i32[0];
LABEL_33:
    *(v8 + 48) = *v125 << 10;
    *(v8 + 56) = 4 * (v18 * v18);
    if (v6[458] < 8 || *(v7 + 15) * *(v7 + 14) < 230400)
    {
      *(v8 + 48) = xmmword_273B96EA0;
    }

    v120 = v12;
    v123 = v11;
    *v15 = 65793;
    if (!*(v5 + 6))
    {
      *(a1 + 129074) = 0u;
      *(a1 + 129082) = 0u;
      *(a1 + 129058) = 0u;
      *(a1 + 129066) = 0u;
      *(a1 + 129042) = 0u;
      *(a1 + 129050) = 0u;
      *(a1 + 129026) = 0u;
      *(a1 + 129034) = 0u;
      *(a1 + 129090) = 0u;
      *(a1 + 129098) = 0u;
    }

    v118 = v13;
    LODWORD(v23) = *(a1 + 129090) & 0xFFFFFFFE;
    HIDWORD(v23) = HIDWORD(*(a1 + 129090)) | 1;
    *(a1 + 129090) = v23;
    v110 = a1 + 129024;
    v111 = v7;
    *(a1 + 64547) |= 1u;
    v24 = *(v8 + 72);
    v25 = *(v5 + 2);
    v26 = *v7;
    v27 = av1_rc_bits_per_mb(a1, v26, v16, 0, 1.0, v23, a4);
    v31 = v125[41];
    v30 = v125[42];
    if (v30 < v31)
    {
      v32 = (v24 * v27);
      do
      {
        if (av1_rc_bits_per_mb(a1, v26, (v31 + v30) >> 1, 0, 1.0, v28, v29) > v32)
        {
          v30 = ((v31 + v30) >> 1) + 1;
        }

        else
        {
          v31 = (v31 + v30) >> 1;
        }
      }

      while (v30 < v31);
    }

    v33 = v30 - v16;
    v34 = *(v25 + 8) * v16;
    if (v34 / 100 < v16 - v30)
    {
      v33 = -v34 / 100;
    }

    *(v8 + 96) = v33;
    v35 = v111[154];
    v36 = v35 + v111[155] + v33;
    if (v36 >= 0xFF)
    {
      v37 = 255;
    }

    else
    {
      v37 = v35 + v111[155] + v33;
    }

    if (v36 >= 0)
    {
      v38 = v37;
    }

    else
    {
      v38 = 0;
    }

    v39 = *(*v122 + 72);
    v40 = *(v122 + 468);
    if (v40 > 1)
    {
      v42 = 1;
      v41 = a1 + 129024;
      if (v39 == 8)
      {
        goto LABEL_71;
      }
    }

    else
    {
      v41 = a1 + 129024;
      if (v40 || *(v112 + 384))
      {
        v42 = 0;
        if (v39 == 8)
        {
LABEL_71:
          v43 = dc_qlookup_QTX[v38];
          v44 = v43 * v43;
          if (!*(*a1 + *(v5 + 40) + 400))
          {
            goto LABEL_72;
          }

          goto LABEL_63;
        }
      }

      else
      {
        v42 = *(*a1 + 23172) != 0;
        if (v39 == 8)
        {
          goto LABEL_71;
        }
      }
    }

    if (v39 != 12)
    {
      if (v39 == 10)
      {
        v43 = dc_qlookup_10_QTX[v38];
        v44 = v43 * v43;
        if (*(*a1 + *(v5 + 40) + 400))
        {
          goto LABEL_63;
        }
      }

      else
      {
        v43 = -1;
        v44 = 1;
        if (*(*a1 + *(v5 + 40) + 400))
        {
          goto LABEL_63;
        }
      }

LABEL_72:
      v47 = 0x3F589374BC6A7EFALL;
      v48 = *(v122 + 250);
      v49 = ((v43 * 0.0015 + 3.3) * v44);
      if (v39 == 8)
      {
        goto LABEL_77;
      }

      goto LABEL_73;
    }

    v43 = dc_qlookup_12_QTX[v38];
    v44 = v43 * v43;
    if (!*(*a1 + *(v5 + 40) + 400))
    {
      goto LABEL_72;
    }

LABEL_63:
    v45 = v43;
    v46 = v44;
    if ((*(*a1 + *(v5 + 40) + 400) & 0xFE) == 2)
    {
      v47 = 0x3F589374BC6A7EFALL;
      v48 = *(v122 + 250);
      v49 = ((v45 * 0.0015 + 3.25) * v46);
      if (v39 == 8)
      {
        goto LABEL_77;
      }
    }

    else
    {
      v47 = 0x400999999999999ALL;
      v48 = *(v122 + 250);
      v49 = ((v45 * 0.0015 + 3.2) * v46);
      if (v39 == 8)
      {
        goto LABEL_77;
      }
    }

LABEL_73:
    if (v39 == 12)
    {
      v49 = (v49 + 128) >> 8;
    }

    else
    {
      if (v39 != 10)
      {
        v50 = -1;
        if (v48)
        {
          v42 = 0;
        }

        if (!v118)
        {
          goto LABEL_90;
        }

LABEL_88:
        if (v42)
        {
          v51 = (rd_layer_depth_factor[v120] * v50) >> 7;
          v50 = ((v51 * rd_boost_factor_0[v123]) >> 7) + v51;
        }

LABEL_90:
        *(v8 + 36) = v50;
        v41[10] = v33;
        if (*(v8 + 72) * (*(v8 + 88) * 0.1) <= 4.0)
        {
          v52 = *(v8 + 72) * (*(v8 + 88) * 0.1);
        }

        else
        {
          v52 = 4.0;
        }

        v53 = *(v5 + 2);
        v54 = *v111;
        v55 = av1_rc_bits_per_mb(a1, v54, v35, 0, 1.0, 4.0, v47);
        v59 = v125[41];
        v58 = v125[42];
        if (v58 < v59)
        {
          v60 = (v52 * v55);
          do
          {
            if (av1_rc_bits_per_mb(a1, v54, (v59 + v58) >> 1, 0, 1.0, v56, v57) > v60)
            {
              v58 = ((v59 + v58) >> 1) + 1;
            }

            else
            {
              v59 = (v59 + v58) >> 1;
            }
          }

          while (v58 < v59);
        }

        v61 = v58 - v35;
        v62 = *(v53 + 8) * v35;
        if (v62 / 100 < v35 - v58)
        {
          v61 = -v62 / 100;
        }

        *(v8 + 100) = v61;
        a1[129042] = v61;
        v63 = *(v5 + 2);
        v117 = *(v5 + 4);
        v119 = *v5;
        v64 = v111[133];
        v65 = v111[134];
        v66 = v65 * v64;
        v67 = v122;
        if (!*(v5 + 6))
        {
          bzero(v119, v66);
          v67 = v122;
        }

        v68 = *(*v67 + 32);
        v69 = (v65 + v68 - 1) / v68;
        v70 = (v64 + v68 - 1) / v68 * v69;
        v71 = 1374389535 * *v63 * v66;
        v72 = HIDWORD(v71);
        v73 = v71 >> 63;
        v74 = *(v63 + 12);
        if (v74 >= v70)
        {
          v74 = 0;
          *(v63 + 12) = 0;
        }

        v75 = 0;
        v76 = 0;
        v121 = 0;
        *(v63 + 16) = v74;
        *(v63 + 24) = 0;
        v77 = 2 * v65;
        v78 = 0x7FFFFFFFFFFFFFFFLL;
        v79 = v73 + (v72 >> 5);
        v115 = v70;
        v116 = v64;
        v113 = v79;
        v114 = v69;
        while (1)
        {
          v80 = *(*v67 + 32);
          v81 = v80 * (v74 / v69);
          v82 = v74 % v69 * v80;
          if (v65 - v82 >= v80)
          {
            v83 = *(*v67 + 32);
          }

          else
          {
            v83 = v65 - v82;
          }

          if (v64 - v81 >= v80)
          {
            v84 = v80;
          }

          else
          {
            v84 = (v64 - v81);
          }

          if (!*(v63 + 116))
          {
            goto LABEL_125;
          }

          if (v125[8] < 31)
          {
            goto LABEL_125;
          }

          if (*(v63 + 112) < 31)
          {
            goto LABEL_125;
          }

          v85 = *(v112 + 127);
          if (!v85 || *v112 != *(v112 + 2) - 1)
          {
            goto LABEL_125;
          }

          v76 = *(v85 + 8 * v74);
          v78 = v111[15] * v111[14] >= 230400 ? 0x8000 : 24576;
          if (*(v112 + 3) > 1)
          {
            break;
          }

          v121 = 0x2000;
          if (v84 < 1)
          {
LABEL_174:
            v98 = v83 * v84;
            if (v83 * v84 > 1 || v76 >= v78)
            {
              goto LABEL_179;
            }

            goto LABEL_178;
          }

LABEL_126:
          v87 = v82 + v81 * v65;
          if (v65 - v82 < 1)
          {
            v98 = v83 * v84;
            if (v83 * v84 > 1 || v76 >= v78)
            {
              goto LABEL_179;
            }

            v124 = v78;
            v88 = v83;
LABEL_170:
            v108 = &v119[v87];
            do
            {
              memset(v108, 1, v88);
              v108 += v65;
              --v84;
            }

            while (v84);
            v75 = *(v63 + 24);
            v67 = v122;
            v78 = v124;
            v70 = v115;
            v64 = v116;
            v79 = v113;
            v69 = v114;
LABEL_178:
            v75 += v98;
            *(v63 + 24) = v75;
            goto LABEL_179;
          }

          v88 = v83;
          if (v76 >= v121)
          {
            v100 = 0;
            v92 = 0;
            v101 = v87;
            v102 = v117 + v87;
            do
            {
              v103 = 0;
              do
              {
                v104 = *(v63 + 40) + v101;
                v105 = *(v104 + v103);
                if (*(v104 + v103))
                {
                  if (v105 < 0)
                  {
                    *(v104 + v103) = v105 + 1;
                  }
                }

                else if (!*(v5 + 6) || !*(v102 + v103))
                {
                  v92 += 4;
                }

                v103 += 2;
              }

              while (v103 < v83);
              v100 += 2;
              v102 += v77;
              v101 += v77;
            }

            while (v100 < v84);
          }

          else
          {
            if (v83 <= 2)
            {
              v89 = 2;
            }

            else
            {
              v89 = v83;
            }

            v90 = ((2 * v89 - 2) & 0xFFFFFFFC) + 4;
            if (*(v5 + 6))
            {
              v91 = 0;
              v92 = 0;
              v93 = v87;
              v94 = v117 + v87;
              while (1)
              {
                v95 = 0;
LABEL_137:
                if (*(v94 + v95))
                {
                  v96 = *(v63 + 40) + v93;
                  v97 = *(v96 + v95);
                  if (v97 < 0)
                  {
                    *(v96 + v95) = v97 + 1;
                  }

                  goto LABEL_141;
                }

                while (1)
                {
                  v92 += 4;
LABEL_141:
                  v95 += 2;
                  if (v95 >= v83)
                  {
                    break;
                  }

                  if (*(v5 + 6))
                  {
                    goto LABEL_137;
                  }
                }

                v91 += 2;
                if (v91 >= v84)
                {
                  break;
                }

                while (1)
                {
                  v94 += v77;
                  v93 += v77;
                  if (*(v5 + 6))
                  {
                    break;
                  }

                  v92 += v90;
                  v91 += 2;
                  if (v91 >= v84)
                  {
                    goto LABEL_164;
                  }
                }
              }
            }

            else
            {
              if (v84 <= 2)
              {
                v106 = 2;
              }

              else
              {
                v106 = v84;
              }

              v92 = v90 + v90 * ((v106 - 1) >> 1);
            }
          }

LABEL_164:
          v98 = v83 * v84;
          if (v92 >= (v83 * v84) >> 1 && v76 < v78)
          {
            v124 = v78;
            goto LABEL_170;
          }

          v75 = *(v63 + 24);
LABEL_179:
          if (v74 + 1 == v70)
          {
            v74 = 0;
          }

          else
          {
            ++v74;
          }

          if (v75 >= v79 || v74 == *(v63 + 12))
          {
            *(v63 + 12) = v74;
            if (!v75 && !*(v5 + 6))
            {
              *v110 = 0;
            }

            return;
          }
        }

        v86 = 0x2000;
        if (!*(v112 + 1))
        {
          v86 = 0x8000;
        }

        v121 = v86;
        if (!*(v112 + 1))
        {
          v78 *= 16;
        }

LABEL_125:
        if (v84 < 1)
        {
          goto LABEL_174;
        }

        goto LABEL_126;
      }

      v49 = (v49 + 8) >> 4;
    }

LABEL_77:
    v50 = 0x7FFFFFFF;
    if (v49 < 0x7FFFFFFF)
    {
      v50 = v49;
    }

    if (v49 <= 0)
    {
      v50 = 1;
    }

    if (v48)
    {
      v42 = 0;
    }

    if (!v118)
    {
      goto LABEL_90;
    }

    goto LABEL_88;
  }

  if (!*(v5 + 6) || v125[51] == 100)
  {
    bzero(*v5, *(v7 + 134) * *(v7 + 133));
    *v15 = 0;
  }

  if ((*v7 & 0xFD) == 0 || v9 || *(*a1 + 85025) == 1)
  {
    *(v8 + 12) = 0;
    *(v8 + 112) = 0;
    *(v8 + 28) = 0;
  }
}

uint64_t av1_log_block_var(uint64_t a1, uint64_t a2, int a3)
{
  v3 = 4 * mi_size_wide_3[a3] - ((*(a2 + 8344) >> 31) & (-*(a2 + 8344) >> 3));
  v4 = 4 * mi_size_high_2[a3] - ((*(a2 + 8352) >> 31) & (-*(a2 + 8352) >> 3));
  v5 = 0.0;
  if (v4 >= 1 && v3 >= 1)
  {
    for (i = 0; i < v4; i += 4)
    {
      for (j = 0; j < v3; j += 4)
      {
        v10 = (*(*a1 + 51416))(*(a2 + 48) + i * *(a2 + 72) + j);
        v5 = v5 + log1p(vcvtd_n_f64_u32(v10, 4uLL));
      }
    }
  }

  v11 = v5 / (v3 / 4 * v4 / 4);
  if (v11 > 7.0)
  {
    v11 = 7.0;
  }

  return v11;
}

uint64_t arg_match_helper(uint64_t a1, const char **a2, void *a3, char *a4)
{
  if (a4)
  {
    *a4 = 0;
  }

  v4 = *a3;
  if (!*a3 || *v4 != 45)
  {
    return 0;
  }

  if (*a2 && (v5 = v4 + 1, v6 = a1, v7 = a2, v8 = a3, v9 = a4, v10 = strcmp((v4 + 1), *a2), a4 = v9, a3 = v8, a2 = v7, v11 = v10, a1 = v6, !v11))
  {
    v22 = *(v7 + 4);
    if (!v22)
    {
      v21 = 0;
      v23 = 1;
      goto LABEL_27;
    }

    v21 = v8[1];
    v23 = 2;
    if (v22 == -1)
    {
LABEL_27:
      *a1 = a3;
      *(a1 + 8) = v5;
      *(a1 + 16) = v21;
      *(a1 + 24) = v23;
      *(a1 + 28) = 0;
      *(a1 + 32) = a2;
      return 1;
    }
  }

  else
  {
    v12 = a2[1];
    if (!v12)
    {
      return 0;
    }

    v13 = a4;
    v14 = a3;
    v15 = a1;
    v16 = a2;
    v17 = strlen(a2[1]);
    if (*(v4 + 1) != 45)
    {
      return 0;
    }

    v18 = v17;
    v5 = v4 + 2;
    if (strncmp((v4 + 2), v12, v17))
    {
      return 0;
    }

    v19 = *(v4 + v18 + 2);
    if (v19 != 61 && v19 != 0)
    {
      return 0;
    }

    if (v19 == 61)
    {
      v21 = v5 + v18 + 1;
    }

    else
    {
      v21 = 0;
    }

    a2 = v16;
    v22 = *(v16 + 4);
    v23 = 1;
    a1 = v15;
    a3 = v14;
    a4 = v13;
    if (v22 == -1)
    {
      goto LABEL_27;
    }
  }

  if (!v22 || v21)
  {
    if (v22 || !v21)
    {
      goto LABEL_27;
    }

    if (a4)
    {
      snprintf(a4, 0xC8uLL, "Error: option %s requires no argument.\n");
    }
  }

  else if (a4)
  {
    snprintf(a4, 0xC8uLL, "Error: option %s requires argument.\n");
  }

  return 0;
}

unint64_t arg_parse_uint_helper(uint64_t a1, char *a2)
{
  __endptr = 0;
  result = strtoul(*(a1 + 16), &__endptr, 10);
  if (a2)
  {
    *a2 = 0;
  }

  if (!**(a1 + 16) || *__endptr)
  {
    if (a2)
    {
      snprintf(a2, 0xC8uLL, "Option %s: Invalid character '%c'\n");
    }

    return 0;
  }

  if (HIDWORD(result))
  {
    if (a2)
    {
      snprintf(a2, 0xC8uLL, "Option %s: Value %lu out of range for unsigned int\n");
    }

    return 0;
  }

  return result;
}

uint64_t arg_parse_int_helper(uint64_t a1, char *a2)
{
  __endptr = 0;
  result = strtol(*(a1 + 16), &__endptr, 10);
  if (a2)
  {
    *a2 = 0;
  }

  if (!**(a1 + 16) || *__endptr)
  {
    if (a2)
    {
      snprintf(a2, 0xC8uLL, "Option %s: Invalid character '%c'\n");
    }

    return 0;
  }

  if (result != result)
  {
    if (a2)
    {
      snprintf(a2, 0xC8uLL, "Option %s: Value %ld out of range for signed int\n");
    }

    return 0;
  }

  return result;
}

uint64_t arg_parse_enum_helper(uint64_t a1, char *a2)
{
  if (a2)
  {
    *a2 = 0;
  }

  __endptr = 0;
  result = strtol(*(a1 + 16), &__endptr, 10);
  v5 = *(a1 + 16);
  if (*v5 && !*__endptr && (v10 = *(*(a1 + 32) + 32), *v10))
  {
    v11 = v10 + 2;
    while (result != *(v11 - 2))
    {
      v12 = *v11;
      v11 += 2;
      if (!v12)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v6 = *(*(a1 + 32) + 32);
    v7 = *v6;
    if (*v6)
    {
      v8 = v6 + 2;
      while (strcmp(v5, v7))
      {
        v9 = *v8;
        v8 += 2;
        v7 = v9;
        if (!v9)
        {
          goto LABEL_9;
        }
      }

      return *(v8 - 2);
    }

    else
    {
LABEL_9:
      if (a2)
      {
        snprintf(a2, 0xC8uLL, "Option %s: Invalid value '%s'\n", *(a1 + 8), v5);
      }

      return 0;
    }
  }

  return result;
}

uint64_t arg_parse_list_helper(uint64_t a1, uint64_t a2, int a3, char *a4)
{
  v6 = *(a1 + 16);
  if (a4)
  {
    *a4 = 0;
  }

  if (*v6)
  {
    v7 = 0;
    __endptr = 0;
    v8 = a3 & ~(a3 >> 31);
    while (1)
    {
      v10 = strtol(v6, &__endptr, 10);
      v11 = v10;
      if (v10 != v10)
      {
        break;
      }

      if (v8 == v7)
      {
        if (a4)
        {
          snprintf(a4, 0xC8uLL, "Option %s: List has more than %d entries\n");
        }

        return 0;
      }

      v6 = __endptr;
      if (*__endptr)
      {
        if (*__endptr != 44)
        {
          if (a4)
          {
            snprintf(a4, 0xC8uLL, "Option %s: Bad list separator '%c'\n");
          }

          return 0;
        }

        v6 = ++__endptr;
      }

      v9 = v7 + 1;
      *(a2 + 4 * v7++) = v11;
      if (!*v6)
      {
        return v9;
      }
    }

    if (a4)
    {
      snprintf(a4, 0xC8uLL, "Option %s: Value %ld out of range for signed int\n");
    }
  }

  return 0;
}

double set_encoder_config_0(uint64_t a1, int *a2, uint64_t a3, double a4, double a5, int8x16_t a6, double a7, int8x16_t a8)
{
  v8 = a3 + 324;
  v9 = (a2 + 125);
  if (a2[191])
  {
    *(a3 + 144) = vand_s8(vceqz_s32(*(a2 + 199)), 0x100000001);
    v10 = a2[192];
    if (v10 == 128)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    if (v10 == 64)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11;
    }

    *(a3 + 260) = v12;
    *(a3 + 388) = a2[202] == 0;
    *(a3 + 336) = a2[204] == 0;
    *(a3 + 372) = a2[205] == 0;
    *(a3 + 204) = a2[214] == 0;
    *(a3 + 436) = a2[215] == 0;
    *(a3 + 296) = vrev64_s32(vand_s8(vceqz_s32(*(a2 + 195)), 0x100000001));
    *(a3 + 304) = a2[197] == 0;
    *(a3 + 312) = a2[193];
    *(a3 + 308) = a2[194];
    *(a3 + 316) = a2[216] == 0;
    *(a3 + 324) = a2[217] == 0;
    *(a3 + 328) = a2[198] == 0;
    v13 = a2[207];
    *(a3 + 364) = a2[206] == 0;
    *(a3 + 368) = a2[218] == 0;
    *(a3 + 376) = vand_s8(vceqz_s32(*(a2 + 219)), 0x100000001);
    *(a3 + 384) = a2[203] == 0;
    *v14.i8 = vrev64_s32(*(a2 + 212));
    v14.i32[2] = a2[221];
    v14.i32[3] = a2[211];
    a6.i64[0] = 0x100000001;
    a6.i64[1] = 0x100000001;
    *(a3 + 396) = vandq_s8(vceqzq_s32(v14), a6);
    *(a3 + 156) = a2[201] == 0;
    *(a3 + 428) = vand_s8(vceqz_s32(*(a2 + 209)), 0x100000001);
    *(a3 + 160) = a2[222];
    v15.i32[0] = a2[223];
    v15.i32[1] = v15.i32[0];
    v15.i32[2] = v13;
    v15.i32[3] = a2[208];
    *(a3 + 348) = vandq_s8(vceqzq_s32(v15), a6);
    *(a3 + 344) = a2[224];
    *(a3 + 460) = a2[225];
  }

  v16 = a2[24];
  *(a1 + 1076) = a2[2];
  v17 = *a2;
  *(a1 + 1036) = a2[1];
  v18 = 2 * (v17 == 2);
  if (v17 == 1)
  {
    v18 = 1;
  }

  *(a1 + 1104) = v18;
  *&v19 = *(a2 + 3);
  *(&v19 + 1) = *(a2 + 3);
  *(a1 + 24) = v19;
  *(a1 + 40) = *(a3 + 252);
  v20 = a2[10];
  *(a1 + 8) = a2[9];
  v21 = a2[11];
  v22 = v21 / v20;
  *a1 = v22;
  v23 = a2[13];
  if (v23 < 2)
  {
    v24 = a2[5];
  }

  else
  {
    v24 = *(a2 + 14) / 0xE8uLL - 1;
  }

  *(a1 + 12) = v24;
  *(a1 + 16) = *(a3 + 452);
  if (v22 > 180.0)
  {
    *a1 = 0x403E000000000000;
    *(a1 + 946) = 0;
  }

  v25 = *(a3 + 196);
  if ((v25 - 1) > 1)
  {
    *(a1 + 946) = 0;
    if (v25 != 1)
    {
      goto LABEL_18;
    }

LABEL_21:
    v26 = 0;
    goto LABEL_22;
  }

  *(a1 + 924) = v20;
  *(a1 + 928) = v21;
  *(a1 + 936) = 1;
  *(a1 + 946) = 1;
  if (v25 == 1)
  {
    goto LABEL_21;
  }

LABEL_18:
  if (v25 != 2)
  {
    goto LABEL_23;
  }

  v25 = 0;
  *(a1 + 940) = v20;
  v26 = 1;
LABEL_22:
  *(a1 + 932) = v25;
  *(a1 + 944) = v26;
  *(a1 + 945) = 1;
LABEL_23:
  *(a1 + 1080) = v23;
  v27 = *(a3 + 552);
  if (v27 == -1)
  {
    if (v23)
    {
      v28 = 2;
    }

    else
    {
      v28 = 1;
    }

    *(a1 + 1084) = v28;
  }

  else
  {
    *(a1 + 1084) = v27;
  }

  *(a1 + 148) = *(a3 + 128);
  *(a1 + 188) = v16;
  v29 = *(a3 + 524);
  v30 = *(a3 + 140);
  *(a1 + 156) = *(a3 + 136);
  *(a1 + 160) = v29;
  if (v30)
  {
    v31 = 0;
    *(a1 + 180) = 0;
  }

  else
  {
    v32 = a2[36];
    *(a1 + 180) = quantizer_to_qindex_0[a2[35]];
    v31 = quantizer_to_qindex_0[v32];
  }

  *(a1 + 176) = v31;
  *(a1 + 184) = quantizer_to_qindex_0[*(a3 + 124)];
  *(a1 + 168) = *(a2 + 37);
  if (v16)
  {
    v33 = a2[39];
    v34 = *(a2 + 20);
    v35.i64[0] = v34;
    v35.i64[1] = HIDWORD(v34);
    v36 = v35;
  }

  else
  {
    v36 = vdupq_n_s64(0xEA60uLL);
    v33 = 240000;
  }

  v37 = (1000 * a2[34]);
  *(a1 + 112) = v36;
  *(a1 + 128) = v33;
  *(a1 + 136) = v37;
  *(a1 + 164) = a2[15];
  *(a1 + 144) = *(a3 + 484);
  *(a1 + 192) = *(a2 + 21);
  *(a1 + 200) = a2[44];
  v38 = a2[8];
  *(a1 + 272) = v38;
  *(a1 + 284) = *(a3 + 144);
  v39 = v17 != 1 && *(a3 + 148) != 0;
  *(a1 + 288) = v39;
  *(a1 + 289) = *(a3 + 152) != 0;
  *(a1 + 300) = *(a3 + 428) != 0;
  if (*(a3 + 352))
  {
    v40 = a2[51] == 0;
  }

  else
  {
    v40 = 0;
  }

  v41 = 0;
  *(a1 + 276) = *(a3 + 260);
  v42.i64[0] = *(a2 + 26);
  v42.i32[2] = *(a3 + 204);
  v43 = *(a3 + 364) != 0;
  v44 = *(a3 + 348);
  v42.i32[3] = *(a3 + 320);
  *(a1 + 297) = v40;
  v45 = a1 + 308;
  *v42.i8 = vand_s8(vmovn_s32(vtstq_s32(v42, v42)), 0x1000100010001);
  *(a1 + 292) = vuzp1_s8(*v42.i8, *v42.i8).u32[0];
  *(a1 + 298) = v43;
  *(a1 + 296) = (v44 & v42.i32[3]) != 0;
  if (v17 != 1 && *(a3 + 384))
  {
    v41 = a2[51] == 0;
  }

  *(a1 + 299) = v41;
  *(a1 + 290) = (*(a3 + 268) | a2[12]) != 0;
  *(a1 + 291) = *(a3 + 200) != 0;
  *(a1 + 229) = *(a3 + 164) != 0;
  *(a1 + 212) = *(a3 + 180);
  *(a1 + 220) = *(a3 + 480);
  *(a1 + 227) = *(a3 + 208) != 0;
  *(a1 + 224) = *(a3 + 212);
  v46 = *(a3 + 213);
  *(a1 + 225) = v46;
  *(a1 + 226) = *(a3 + 216);
  if (a2[185])
  {
    v47 = v16 == 3;
  }

  else
  {
    v47 = 0;
  }

  v48 = v47;
  *(a1 + 208) = v48;
  if (v46 == 5)
  {
    v49 = v38 == 10 && *(a3 + 232) == 9;
    *(a1 + 228) = v49;
LABEL_58:
    *(a1 + 280) = *(a3 + 220) != 0;
    *(a1 + 996) = *(a3 + 528);
    if (a2[48])
    {
      goto LABEL_59;
    }

    goto LABEL_55;
  }

  *(a1 + 228) = 0;
  if (v46)
  {
    goto LABEL_58;
  }

  *(a1 + 280) = 0;
  *(a1 + 996) = *(a3 + 528);
  if (a2[48])
  {
LABEL_59:
    v50 = *(a3 + 536);
    goto LABEL_60;
  }

LABEL_55:
  v50 = 3;
LABEL_60:
  *(a1 + 1004) = v50;
  *(a1 + 1008) = *(a3 + 540);
  v51 = *(a2 + 64);
  *(a1 + 232) = v51;
  v53 = a2[17];
  v52 = a2[18];
  *(a1 + 233) = v53;
  *(a1 + 234) = v52;
  if (v51 == 1 && v53 == 8 && v52 == 8)
  {
    v51 = 0;
    *(a1 + 232) = 0;
  }

  *(a1 + 66) = *(a3 + 424) != 0;
  v54 = *(a3 + 160);
  *(a1 + 48) = *(a3 + 20);
  *(a1 + 52) = v54;
  *(a1 + 56) = *(a3 + 56);
  *(a1 + 64) = *(a3 + 292);
  if (v51)
  {
    v55 = 0;
  }

  else
  {
    v55 = *(a3 + 48) != 0;
  }

  *(a1 + 65) = v55;
  *(a1 + 68) = *(a3 + 560);
  *(a1 + 72) = *(a3 + 564) != 0;
  *(a1 + 256) = *(a2 + 26);
  v56 = *(a3 + 568);
  if (v56)
  {
    *(a1 + 1088) = v56;
  }

  *(a1 + 1096) = *(a3 + 576);
  v57 = a2[46];
  *(a1 + 104) = a2[45] != 0;
  v47 = v57 == 1;
  v58 = a2[47];
  v59 = a2[48];
  v61 = v47 && v58 != v59;
  *(a1 + 96) = v61;
  *(a1 + 76) = v58;
  *(a1 + 80) = v59;
  *(a1 + 88) = *(a2 + 49);
  *(a1 + 105) = *(a3 + 272) != 0;
  *(a1 + 84) = *(a3 + 52);
  *(a1 + 100) = *(a3 + 556);
  if (!v59)
  {
    *(a1 + 84) = 0;
  }

  *(a1 + 106) = *(a3 + 432) != 0;
  v62 = *(a3 + 4);
  *(a1 + 1040) = v62;
  if (v17 == 1)
  {
    v63 = a2[3];
    if (v63 >= a2[4])
    {
      v63 = a2[4];
    }

    if (v63 >= 0x438 && v62 <= 6)
    {
      v62 = 7;
      *(a1 + 1040) = 7;
    }
  }

  *(a1 + 920) = *(a3 + 248);
  *(a1 + 904) = *(a3 + 232);
  if (v17 == 1)
  {
    v64 = 0;
  }

  else
  {
    v65 = a2[14];
    if (v65 >= 0x30)
    {
      v66 = 48;
    }

    else
    {
      v66 = a2[14];
    }

    if (v65 >= 0)
    {
      v64 = v66;
    }

    else
    {
      v64 = 0;
    }
  }

  *(a1 + 304) = v64;
  v67 = *(a3 + 12);
  *(a1 + 324) = *(a3 + 8) != 0;
  *(a1 + 325) = v67 != 0;
  *v45 = *(a3 + 64);
  *(a1 + 888) = *(a3 + 80);
  *(a1 + 872) = *(a3 + 88);
  *(a1 + 892) = *(a3 + 228);
  v68 = a2[51];
  if (v68)
  {
    v69 = 0;
    v70 = 0;
  }

  else
  {
    v69 = *(a3 + 276);
    v70 = *(a3 + 280);
  }

  v71 = 0;
  *(a1 + 896) = v69;
  *(a1 + 880) = v70;
  *(a1 + 900) = *(a3 + 120);
  *(a1 + 1012) = *(a3 + 440);
  *(a1 + 1016) = *(a3 + 444);
  if (a2[8] == 8 && v62 >= 8)
  {
    v71 = *(a3 + 16);
  }

  *(a1 + 1024) = v71;
  if (v68)
  {
    v72 = 1;
  }

  else
  {
    v72 = *(a3 + 188);
  }

  *(a1 + 328) = v72;
  *(a1 + 332) = *(a3 + 192);
  v73 = a2[51];
  *(a1 + 864) = v73 != 0;
  if (!v73)
  {
    *(a1 + 865) = 0;
    if (*(a3 + 44))
    {
      goto LABEL_102;
    }

LABEL_105:
    *(a1 + 336) = *(a3 + 36);
    goto LABEL_117;
  }

  *(a1 + 865) = *(a3 + 264) != 0;
  if (!*(a3 + 44))
  {
    goto LABEL_105;
  }

LABEL_102:
  v74 = a2[1];
  if (v74 > 1)
  {
    v78 = a2[3];
    v77 = a2[4];
    if ((v78 * v77 + 0x3FFF) >> 14 < v74)
    {
      v74 = (v78 * v77 + 0x3FFF) >> 14;
    }

    if (v74 >= 0x20)
    {
      v74 = 32;
    }

    v79 = a3;
    v80 = a1;
    v81 = a2;
    v82 = log2(v74);
    a2 = v81;
    a1 = v80;
    a3 = v79;
    v75 = (v82 + 1) / 2;
    if (v78 >= v77)
    {
      v76 = v82 - v75;
    }

    else
    {
      v76 = (v82 + 1) / 2;
    }

    if (v78 < v77)
    {
      v75 = v82 - v75;
    }

    *(v80 + 336) = v75;
    *(v80 + 340) = v76;
  }

  else
  {
    v75 = *(a1 + 336);
    v76 = *(a1 + 340);
  }

  *(a3 + 36) = v75;
  *(a3 + 40) = v76;
LABEL_117:
  v83 = *(a2 + 55);
  v84 = vmin_s32(v83, 0x4000000040);
  *(a1 + 344) = v84;
  if (v83.i32[0] < 1)
  {
    goto LABEL_123;
  }

  if (v83.i32[0] <= 7 || (a1 - a2 + 124) < 0x20)
  {
    v85 = 0;
LABEL_121:
    v86 = v84.u32[0] - v85;
    v87 = v85;
    v88 = (4 * v85 + a1 + 352);
    v89 = &a2[v87 + 57];
    do
    {
      v90 = *v89++;
      *v88++ = v90;
      --v86;
    }

    while (v86);
    goto LABEL_123;
  }

  v85 = v84.i8[0] & 0x78;
  v112 = (a2 + 61);
  v113 = (a1 + 368);
  v114 = v85;
  do
  {
    a6 = v112[-1];
    v115 = *v112;
    v113[-1] = a6;
    *v113 = v115;
    v112 += 2;
    v113 += 2;
    v114 -= 8;
  }

  while (v114);
  if (v85 != v84.u32[0])
  {
    goto LABEL_121;
  }

LABEL_123:
  if (v83.i32[1] < 1)
  {
    goto LABEL_129;
  }

  if (v83.i32[1] <= 7 || (a1 - a2 + 124) < 0x20)
  {
    v91 = 0;
LABEL_127:
    v92 = v84.u32[1] - v91;
    v93 = v91;
    v94 = (4 * v91 + a1 + 608);
    v95 = &a2[v93 + 121];
    do
    {
      v96 = *v95++;
      *v94++ = v96;
      --v92;
    }

    while (v92);
    goto LABEL_129;
  }

  v91 = v84.i8[4] & 0x78;
  v116 = (a1 + 624);
  v117 = v91;
  do
  {
    v118 = *v9;
    *(v116 - 1) = *(v9 - 1);
    *v116 = v118;
    v9 += 2;
    v116 += 2;
    v117 -= 8;
  }

  while (v117);
  if (v91 != v84.u32[1])
  {
    goto LABEL_127;
  }

LABEL_129:
  *(a1 + 866) = *(a3 + 544) != 0;
  if (v73 && *(a3 + 260) >= 2u)
  {
    *(a1 + 276) = 0;
  }

  *(a1 + 948) = *(a3 + 340);
  *(a1 + 952) = *(a3 + 344) != 0;
  *(a1 + 953) = *(a3 + 360) != 0;
  v97 = *(a3 + 32);
  *(a1 + 1105) = *(a3 + 28) != 0;
  *(a1 + 1106) = v97 != 0;
  *(a1 + 966) = *(a3 + 156) != 0;
  v98 = *(a3 + 388);
  *(a1 + 964) = v98 != 0;
  v99 = (*a2 != 1 || *(a1 + 1040) <= 6) && (*(a3 + 392) & v98) != 0;
  *(a1 + 965) = v99;
  *(a1 + 990) = *(a3 + 296) != 0;
  *(a1 + 991) = *(a3 + 300) != 0;
  *(a1 + 992) = *(a3 + 304) != 0;
  *(a1 + 993) = *(a3 + 308);
  *(a1 + 994) = *(a3 + 312);
  v100.i64[0] = *(a3 + 408);
  a6.i64[0] = *v8;
  v101.i32[0] = *(a3 + 316);
  v101.i32[1] = *(a3 + 396);
  v101.i64[1] = *(a3 + 400);
  v100.i32[2] = *(a3 + 416);
  v100.i32[3] = *(a3 + 436);
  a8.i32[0] = *(a3 + 584);
  v102 = vextq_s8(vextq_s8(a8, a8, 4uLL), a6, 0xCuLL);
  v102.i32[3] = *(a3 + 332);
  v103 = vuzp1q_s8(vuzp1q_s16(vceqzq_s32(v101), vceqzq_s32(v100)), vuzp1q_s16(vceqzq_s32(v102), vceqzq_s32(*(v8 + 136))));
  v100.i64[0] = 0x101010101010101;
  v100.i64[1] = 0x101010101010101;
  *(v45 + 659) = vbicq_s8(v100, v103);
  *(a1 + 983) = *(a3 + 476) != 0;
  *(a1 + 984) = (*(a3 + 320) & *(a3 + 336)) != 0;
  v104 = *(a3 + 356);
  *(a1 + 985) = v104 != 0;
  *(a1 + 987) = (*(a3 + 372) & v104) != 0;
  *(a1 + 988) = (*(a3 + 376) & v104) != 0;
  v105 = *(a3 + 364);
  if (v105)
  {
    v106 = *(a3 + 368) != 0;
  }

  else
  {
    v106 = 0;
  }

  *(a1 + 986) = v106;
  *(a1 + 989) = (*(a3 + 380) & v105) != 0;
  if (*(a3 + 140) || a2[51])
  {
    *(a1 + 248) = 0;
    *(a1 + 244) = 2056;
LABEL_142:
    *(a1 + 252) = 0;
LABEL_143:
    v107 = 0;
    *(a1 + 248) = 0;
    *(a1 + 244) = 2056;
    *(a1 + 236) = 0xFF000000FFLL;
    goto LABEL_144;
  }

  v107 = a2[19];
  v119 = a2[20];
  *(a1 + 248) = v107;
  *(a1 + 244) = v119;
  v120 = a2[21];
  v121 = a2[22];
  v122 = quantizer_to_qindex_0[v121];
  *(a1 + 245) = v120;
  *(a1 + 236) = v122;
  v123 = a2[23];
  *(a1 + 240) = quantizer_to_qindex_0[v123];
  if (!v107)
  {
    goto LABEL_142;
  }

  if (v107 != 3)
  {
    if (v107 != 1 || v119 != 8 || v120 != 8)
    {
      goto LABEL_171;
    }

LABEL_170:
    *(a1 + 248) = 0;
    goto LABEL_142;
  }

  if (v121 == 63 && v123 == 63)
  {
    goto LABEL_170;
  }

LABEL_171:
  v124 = *(a3 + 420);
  *(a1 + 252) = v124 != 0;
  if (!v124)
  {
    goto LABEL_143;
  }

LABEL_144:
  if (*(a1 + 12) == 1)
  {
    *(a1 + 945) = 0;
  }

  *(a1 + 1108) = a2[54] != 0;
  *(a1 + 956) = *(a3 + 288);
  *(a1 + 960) = *(a3 + 548);
  v108 = 288;
  if (!*(a1 + 232))
  {
    if (*(a1 + 80))
    {
      v109 = 160;
    }

    else
    {
      v109 = 64;
    }

    if (v107)
    {
      v108 = 288;
    }

    else
    {
      v108 = v109;
    }
  }

  *(a1 + 1032) = v108;
  v110 = *(a3 + 504);
  *(a1 + 1044) = *(a3 + 488);
  *(a1 + 1060) = v110;
  *(a1 + 1028) = *(a3 + 520);
  *(a1 + 1112) = *(a3 + 96);
  *(a1 + 1120) = *(a3 + 104);
  *(a1 + 1128) = *(a3 + 112);
  result = *(v8 + 264);
  *(a1 + 1136) = result;
  *(a1 + 1144) = *(a3 + 596);
  return result;
}

uint64_t av1_create_context_and_bufferpool(uint64_t a1, char **a2, uint64_t *a3, int32x2_t *a4, char a5, int a6)
{
  v8 = *a3;
  if (v8)
  {
    goto LABEL_2;
  }

  v11 = a3;
  v12 = a1;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = malloc_type_malloc(0x8FuLL, 0x5F484EBFuLL);
  if (v16)
  {
    v17 = ((v16 + 23) & 0xFFFFFFFFFFFFFFF0);
    *(v17 - 1) = v16;
    if (v17)
    {
      *(((v16 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x70) = 0;
      *(((v16 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x50) = 0u;
      *(((v16 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x60) = 0u;
      *(((v16 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x30) = 0u;
      *(((v16 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x40) = 0u;
      *(((v16 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x10) = 0u;
      *(((v16 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x20) = 0u;
      *v17 = 0u;
      v18 = v13[138].u8[0];
      v19 = v18 == 2;
      if (v18 == 2)
      {
        v20 = 2;
      }

      else
      {
        v20 = 16;
      }

      v21 = (v16 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v21 + 0x60) = v20;
      if (v19)
      {
        v22 = 45456;
      }

      else
      {
        v22 = 363648;
      }

      v23 = malloc_type_malloc(v22 + 23, 0x5F484EBFuLL);
      if (v23 && (v24 = (v23 + 23) & 0xFFFFFFFFFFFFFFF0, *(v24 - 8) = v23, v24))
      {
        bzero(((v23 + 23) & 0xFFFFFFFFFFFFFFF0), v22);
        *(v21 + 88) = v24;
        if (!pthread_mutex_init(v21, 0))
        {
          v8 = v21;
          *v11 = v21;
          a6 = v15;
          a5 = v14;
          a4 = v13;
          a1 = v12;
LABEL_2:
          compressor = av1_create_compressor(a1, a4, v8, a5, a6);
          *a2 = compressor;
          return 2 * (compressor == 0);
        }

        v25 = v21;
        v26 = *(v21 + 88);
        if (v26)
        {
          free(*(v26 - 8));
          v25 = v21;
        }

        *(v25 + 88) = 0;
        *(v25 + 96) = 0;
        v27 = *(v25 - 8);
      }

      else
      {
        *(v21 + 88) = 0;
        *(v21 + 96) = 0;
        v27 = *(v21 - 8);
      }

      free(v27);
    }
  }

  return 2;
}

uint64_t encoder_init_0(uint64_t a1)
{
  if (*(a1 + 48))
  {
    return 0;
  }

  v3 = malloc_type_malloc(0xB53FuLL, 0x5F484EBFuLL);
  if (!v3)
  {
    return 2;
  }

  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF0;
  *(v4 - 8) = v3;
  if (!v4)
  {
    return 2;
  }

  bzero(((v3 + 23) & 0xFFFFFFFFFFFFFFF0), 0xB528uLL);
  *(a1 + 48) = v4;
  *(v4 + 8) = *(a1 + 32);
  memcpy((v4 + 208), *(a1 + 40), 0x388uLL);
  *(a1 + 40) = v4 + 208;
  memcpy((v4 + 1112), &default_extra_cfg_0, 0x258uLL);
  v5 = *(v4 + 208);
  if (v5 == 2)
  {
    *(v4 + 1256) = 0;
    *(v4 + 1292) = 0xA00000004;
  }

  v6 = *(v4 + 304);
  av1_rtcd();
  aom_dsp_rtcd();
  aom_scale_rtcd();
  av1_init_intra_predictors();
  av1_init_me_luts();
  if (v5 == 2)
  {
    if (v6 == 3)
    {
      result = validate_config_1(v4, v4 + 208, v4 + 1112);
      if (result)
      {
        return result;
      }

      goto LABEL_14;
    }
  }

  else
  {
    av1_init_wedge_masks();
  }

  av1_rc_init_minq_luts();
  result = validate_config_1(v4, v4 + 208, v4 + 1112);
  if (result)
  {
    return result;
  }

LABEL_14:
  *(v4 + 46320) = 0;
  v12 = *(v4 + 252);
  if (v12 < 1)
  {
    LODWORD(v15) = 10000000 * *(v4 + 248);
  }

  else
  {
    LODWORD(v13) = *(v4 + 252);
    v14 = 10000000 * *(v4 + 248);
    do
    {
      v15 = v13;
      v13 = v14 % v13;
      v14 = v15;
    }

    while (v13 > 0);
  }

  *(v4 + 1712) = 10000000 * *(v4 + 248) / v15;
  *(v4 + 1720) = v12 / v15;
  set_encoder_config_0(v4 + 1744, (v4 + 208), v4 + 1112, v7, v8, v9, v10, v11);
  if (*(v4 + 1932) == 1 || *(v4 + 2824) || *(v4 + 2848))
  {
    v16 = 0;
  }

  else
  {
    v19 = *(v4 + 264);
    v20 = *(v4 + 1824);
    if (v20 <= 32)
    {
      v21 = v20 + 16;
    }

    else
    {
      v21 = 48;
    }

    if (v19 < v21)
    {
      v21 = *(v4 + 264);
    }

    *(v4 + 46320) = v21;
    if (v19 - v21 >= 17)
    {
      v16 = 17;
    }

    else
    {
      v16 = 0;
    }
  }

  *(v4 + 2851) = (*(a1 + 32) & 0x40000) != 0;
  *(v4 + 46368) = *(v4 + 416) != 0;
  primary_compressor = av1_create_primary_compressor(v4 + 3104, *(v4 + 46320), v4 + 1744);
  *(v4 + 2896) = primary_compressor;
  if (!primary_compressor)
  {
    return 2;
  }

  result = av1_create_context_and_bufferpool(primary_compressor, primary_compressor, (v4 + 46296), (v4 + 1744), 0, -1);
  if (result)
  {
    *v4 = "av1_create_context_and_bufferpool() failed";
    return result;
  }

  v18 = *(v4 + 2896);
  *(v18 + 352) = *v18;
  if (!*(v4 + 46320))
  {
    return 0;
  }

  return av1_create_context_and_bufferpool(v18, (v18 + 360), (v4 + 46304), (v4 + 1744), 1, v16);
}

uint64_t encoder_destroy_0(uint64_t a1)
{
  free(*(a1 + 2904));
  v2 = *(a1 + 1680);
  if (v2)
  {
    free(*(v2 - 8));
    *(a1 + 1680) = 0;
  }

  v3 = *(a1 + 1688);
  if (v3)
  {
    free(*(v3 - 8));
    *(a1 + 1688) = 0;
  }

  v4 = *(a1 + 1208);
  if (v4 != ".")
  {
    if (v4)
    {
      free(*(v4 - 1));
    }

    *(a1 + 1208) = 0;
  }

  v5 = *(a1 + 1224);
  if (v5 != "./rate_map.txt")
  {
    if (v5)
    {
      free(*(v5 - 1));
    }

    *(a1 + 1224) = 0;
  }

  v6 = *(a1 + 1392);
  if (v6)
  {
    free(*(v6 - 8));
    *(a1 + 1392) = 0;
  }

  v7 = *(a1 + 2896);
  if (v7)
  {
    v8 = *(v7 + 32);
    if (v8)
    {
      free(v8);
    }

    v9 = *(v7 + 104);
    if (v9)
    {
      free(v9);
    }

    v10 = *(v7 + 176);
    if (v10)
    {
      free(v10);
    }

    av1_remove_compressor(*v7);
    v11 = *(a1 + 46296);
    if (v11)
    {
      av1_free_ref_frame_buffers(v11);
      pthread_mutex_destroy(*(a1 + 46296));
      v12 = *(a1 + 46296);
      if (v12)
      {
        free(*(v12 - 8));
      }

      *(a1 + 46296) = 0;
    }

    av1_remove_compressor(*(v7 + 8));
    v13 = *(a1 + 46296);
    if (v13)
    {
      av1_free_ref_frame_buffers(v13);
      pthread_mutex_destroy(*(a1 + 46296));
      v14 = *(a1 + 46296);
      if (v14)
      {
        free(*(v14 - 8));
      }

      *(a1 + 46296) = 0;
    }

    av1_remove_compressor(*(v7 + 16));
    v15 = *(a1 + 46296);
    if (v15)
    {
      av1_free_ref_frame_buffers(v15);
      pthread_mutex_destroy(*(a1 + 46296));
      v16 = *(a1 + 46296);
      if (v16)
      {
        free(*(v16 - 8));
      }

      *(a1 + 46296) = 0;
    }

    av1_remove_compressor(*(v7 + 24));
    v17 = *(a1 + 46296);
    if (v17)
    {
      av1_free_ref_frame_buffers(v17);
      pthread_mutex_destroy(*(a1 + 46296));
      v18 = *(a1 + 46296);
      if (v18)
      {
        free(*(v18 - 8));
      }

      *(a1 + 46296) = 0;
    }

    *(v7 + 352) = 0;
    v19 = *(v7 + 360);
    if (v19)
    {
      av1_remove_compressor(v19);
      v20 = *(a1 + 46304);
      if (v20)
      {
        av1_free_ref_frame_buffers(v20);
        pthread_mutex_destroy(*(a1 + 46304));
        v21 = *(a1 + 46304);
        if (v21)
        {
          free(*(v21 - 8));
        }

        *(a1 + 46304) = 0;
      }
    }

    av1_remove_primary_compressor(v7);
  }

  v22 = *(a1 + 46312);
  v23 = *(a1 + 46360);
  if (v23)
  {
    free(*(v23 - 8));
  }

  v24 = *(a1 + 46352);
  if (v24)
  {
    free(*(v24 - 8));
  }

  if (v22)
  {
    free(*(v22 - 8));
  }

  free(*(a1 - 8));
  return 0;
}

uint64_t encoder_encode_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v261 = 0;
  v5 = *(a1 + 2896);
  v260 = a3;
  v256 = 0u;
  v254 = 0u;
  v255 = 0u;
  v258 = a1 + 1712;
  v259 = 0;
  v257 = a2 == 0;
  v6 = *(v5 + 352);
  if (!v6)
  {
    return 8;
  }

  v10 = *(v5 + 360);
  v11 = v6 + 264552;
  *(v6 + 456860) = *(v6 + 264552);
  v238 = v10;
  v12 = *(v5 + 23172) && v10 == 0;
  if (v12 && !*(v6 + 265608))
  {
    return 8;
  }

  v236 = a1 + 1712;
  v237 = a2 == 0;
  if (!a2)
  {
    goto LABEL_69;
  }

  v13 = *a2;
  v14 = "Invalid image format. Only YV12, NV12, I420, I422, I444 images are supported.";
  if (*a2 > 768)
  {
    if (v13 <= 2308)
    {
      if (v13 != 769 && v13 != 2306)
      {
        goto LABEL_33;
      }

      goto LABEL_29;
    }

    if (v13 != 2309)
    {
      if (v13 == 2817)
      {
        goto LABEL_29;
      }

      if (v13 != 2310)
      {
        goto LABEL_33;
      }

      goto LABEL_27;
    }

LABEL_19:
    if (*(a1 + 216) != 2)
    {
      *a1 = "Invalid image format. I422 images not supported in profile.";
      v261 = 8;
      goto LABEL_69;
    }

    goto LABEL_29;
  }

  if (v13 <= 261)
  {
    if (v13 == 258)
    {
      goto LABEL_29;
    }

    if (v13 != 261)
    {
LABEL_33:
      *a1 = v14;
      v261 = 8;
      goto LABEL_69;
    }

    goto LABEL_19;
  }

  if (v13 != 262)
  {
    if (v13 != 263)
    {
      goto LABEL_33;
    }

    goto LABEL_29;
  }

LABEL_27:
  if (!*(a1 + 216) && !*(a1 + 416))
  {
    *a1 = "Invalid image format. I444 images not supported in profile.";
    v261 = 8;
    goto LABEL_69;
  }

LABEL_29:
  if (*(a2 + 40) != *(a1 + 220) || *(a2 + 44) != *(a1 + 224))
  {
    v14 = "Image size must match encoder init configuration size";
    goto LABEL_33;
  }

  v261 = 0;
  v16 = 12;
  if (v13 > 768)
  {
    if (v13 <= 2308)
    {
      if (v13 == 769)
      {
        goto LABEL_49;
      }
    }

    else
    {
      if (v13 == 2309)
      {
        v17 = 32;
        goto LABEL_48;
      }

      if (v13 == 2310)
      {
        v17 = 48;
        goto LABEL_48;
      }
    }

LABEL_45:
    v17 = 24;
LABEL_48:
    v16 = v17;
    goto LABEL_49;
  }

  if (v13 <= 261)
  {
    if (v13 == 258)
    {
      goto LABEL_49;
    }

    v17 = 16;
    goto LABEL_48;
  }

  if (v13 == 262)
  {
    goto LABEL_45;
  }

LABEL_49:
  if (*(v11 + 56))
  {
    v18 = 8;
  }

  else
  {
    v12 = *(v11 + 80) == 0;
    v18 = 2;
    if (!v12)
    {
      v18 = 8;
    }
  }

  v19 = v18 * ((((*(a1 + 224) + 31) & 0xFFFFFFE0) * ((*(a1 + 220) + 31) & 0xFFFFFFE0) * v16) >> 3);
  if (v19 <= 0x2000)
  {
    v20 = 0x2000;
  }

  else
  {
    v20 = v19;
  }

  v21 = *(a1 + 2904);
  if (!v21 || *(a1 + 2912) < v20)
  {
    *(a1 + 2912) = v20;
    free(v21);
    v22 = malloc_type_malloc(*(a1 + 2912), 0x100004077774924uLL);
    *(a1 + 2904) = v22;
    if (!v22)
    {
      *(a1 + 2912) = 0;
      return 2;
    }
  }

  if (*(v5 + 328) >= 2)
  {
    v23 = 0;
    v24 = (v5 + 48);
    v25 = *(v5 + 328);
    do
    {
      v26 = *(v24 - 2);
      if (!v26 || *(v24 - 1) < v20)
      {
        *(v24 - 1) = v20;
        free(v26);
        *v24 = 0;
        v27 = malloc_type_malloc(*(v24 - 1), 0x100004077774924uLL);
        *(v24 - 2) = v27;
        if (!v27)
        {
          *(v24 - 1) = 0;
          return 2;
        }

        v25 = *(v5 + 328);
      }

      ++v23;
      v24 += 9;
    }

    while (v23 < v25 - 1);
  }

LABEL_69:
  v28 = v5 + 50968;
  v29 = (v5 + 50968);
  *(a1 + 3104) = 0x10000000000;
  v253 = a5;
  if (setjmp((v5 + 51196)))
  {
    *(v5 + 51192) = 0;
    v30 = *(v5 + 50984);
    if (v30)
    {
      v31 = 0;
      if (*(v5 + 50988))
      {
        v31 = v5 + 50992;
      }

      *a1 = v31;
    }

    return v30;
  }

  v32 = v238;
  *(v5 + 51192) = 1;
  v33 = *(v5 + 352);
  if (*v29 && !v33[159287] && !v253)
  {
    av1_set_svc_fixed_mode(v33);
    v33 = *(v5 + 352);
  }

  av1_apply_encoding_flags(v33, v253);
  if (v238)
  {
    av1_apply_encoding_flags(v238, v253);
  }

  v34 = *(v5 + 352);
  parallel_frame_enc_data = v34;
  v36 = v34[16600].i32[2];
  v37 = v34 + 16532;
  if ((v36 == 1 || v34[39844].i8[8] == 1 || !v36 && !*(v34->i64[0] + 23172) && v34[16602].i8[0] == 1 && !v34[16552].i32[0]) && *(a1 + 392) == 1)
  {
    v38 = *(a1 + 396);
    if (v38 == *(a1 + 400) && !v37->i32[0])
    {
      v39 = *(a1 + 46288) + 1;
      *(a1 + 46288) = v39;
      if (v39 > v38)
      {
        v253 |= 1uLL;
        *(a1 + 46288) = 1;
      }
    }
  }

  if (v261)
  {
    goto LABEL_264;
  }

  if (*(a1 + 10))
  {
    *(v5 + 23472) = 1;
  }

  v232 = &v34[39844].i8[8];
  v233 = v34;
  v231 = v34 + 16532;
  v242 = (v5 + 50968);
  if (a2)
  {
    if (*(a1 + 1736))
    {
      v40 = *(a1 + 1728);
    }

    else
    {
      v40 = v260;
      *(a1 + 1728) = v260;
      *(a1 + 1736) = 1;
    }

    if (v260 < v40)
    {
      aom_internal_error(v5 + 50984, 8, "pts is smaller than initial pts");
      v40 = *(a1 + 1728);
    }

    v260 -= v40;
    v41 = v258;
    v42 = *v258;
    if (v260 > 0x7FFFFFFFFFFFFFFFLL / *v258)
    {
      aom_internal_error(v5 + 50984, 8, "conversion of relative pts to ticks would overflow");
      v41 = v258;
      v42 = *v258;
    }

    v223 = v42;
    v228 = *(v41 + 8);
    if (a4 < 0)
    {
      aom_internal_error(v5 + 50984, 8, "duration is too big");
    }

    if (v260 > (a4 ^ 0x7FFFFFFFFFFFFFFFLL))
    {
      aom_internal_error(v5 + 50984, 8, "relative pts + duration is too big");
    }

    v43 = v258;
    v44 = *v258;
    if (v260 + a4 > 0x7FFFFFFFFFFFFFFFLL / *v258)
    {
      aom_internal_error(v5 + 50984, 8, "conversion of relative pts + duration to ticks would overflow");
      v43 = v258;
      v44 = *v258;
    }

    v45 = *(v43 + 8);
    v252 = 0u;
    memset(v251, 0, sizeof(v251));
    v249 = 0u;
    v250 = 0u;
    v247 = 0u;
    v248 = 0u;
    v46 = *(a2 + 64);
    *&v245[8] = v46;
    v47 = *(a2 + 80);
    v246 = v47;
    v48 = *(a2 + 40);
    v49 = *(a2 + 44);
    v50 = *(a2 + 48);
    v51 = *(a2 + 32);
    v52 = *(a2 + 60);
    v53 = *(a2 + 56);
    LODWORD(v243) = *(a2 + 28);
    DWORD1(v243) = (v53 + v243) >> v53;
    v54 = v52;
    DWORD2(v243) = v51;
    HIDWORD(v243) = (v52 + v51) >> v52;
    LODWORD(v244) = v48;
    DWORD1(v244) = (v53 + v48) >> v53;
    DWORD2(v244) = v49;
    HIDWORD(v244) = (v52 + v49) >> v52;
    v55 = *(a2 + 88);
    *v245 = v55;
    *(v251 + 12) = *(a2 + 4);
    v56 = *(a2 + 16);
    DWORD1(v251[1]) = *(a2 + 12);
    BYTE8(v251[1]) = v56;
    *&v57 = *(a2 + 20);
    *(&v57 + 1) = v50;
    *(&v251[1] + 12) = v57;
    if ((*(a2 + 1) & 8) != 0)
    {
      *&v245[8] = vshrq_n_u64(v46, 1uLL);
      v246 = v47 >> 1;
      *v245 = vshr_n_s32(v55, 1uLL);
      v58 = *v245;
      v59 = 8;
    }

    else
    {
      v58 = v55.i32[0];
      v59 = 0;
    }

    LODWORD(v250) = ((v58 - ((v243 + 31) & 0xFFFFFFE0)) / 2) & ~((v58 - ((v243 + 31) & 0xFFFFFFE0) + ((v58 - ((v243 + 31) & 0xFFFFFFE0)) >> 31)) >> 31);
    *&v251[0] = __PAIR64__(v52, v53);
    LODWORD(v252) = v59;
    *(&v252 + 1) = *(a2 + 152);
    v261 = 0;
    if (*(a1 + 416))
    {
      *&v245[4] = 0;
      *&v245[16] = 0;
      v246 = 0;
      BYTE8(v251[1]) = 1;
    }

    v60 = v260 * v223;
    v61 = v44 * (v260 + a4);
    v226 = &v233[14944];
    v62 = v59 >> 3;
    if (*(v5 + 368))
    {
      goto LABEL_137;
    }

    v224 = v260 * v223;
    v225 = v44 * (v260 + a4);
    v227 = v45;
    v63 = v238;
    if (!v238)
    {
      v63 = v233;
    }

    v64 = *(v63 + 264832);
    v65 = av1_select_sb_size(v233[16533].i64, v231[2].i32[2], v231[2].i32[3], *(v5 + 50980));
    v66 = v231;
    if (v231[15].i8[8])
    {
      v67 = v231[6].i32[0] == 0;
      v68 = 288;
      goto LABEL_127;
    }

    v69 = v231[16].i32[2];
    v67 = v231[6].i32[0] == 0;
    if (v69)
    {
      v70 = 288;
    }

    else
    {
      v70 = 64;
    }

    if (v69)
    {
      v68 = v70;
    }

    else
    {
      v68 = v70;
      v66 = v231;
      if (!v231[6].i32[0])
      {
        goto LABEL_127;
      }

      v68 = block_size_wide[v65] + 32;
      v67 = 0;
    }

    v66 = v231;
LABEL_127:
    v221 = v64;
    v66[65].i32[2] = v68;
    v71 = *(v5 + 328);
    v60 = v224;
    if (v71 < 1)
    {
      goto LABEL_135;
    }

    if (v71 == 1)
    {
      v72 = 0;
    }

    else
    {
      v72 = v71 & 0x7FFFFFFE;
      v73 = (v5 + 8);
      v74 = v72;
      do
      {
        v75 = *v73;
        *(*(v73 - 1) + 265560) = v68;
        *(v75 + 265560) = v68;
        v73 += 2;
        v74 -= 2;
      }

      while (v74);
      if ((v71 & 0x7FFFFFFE) == v71)
      {
LABEL_135:
        src_border_in_pixels = get_src_border_in_pixels(parallel_frame_enc_data, v65);
        v80 = av1_lookahead_init(v231[2].i32[2], v231[2].i32[3], v53, v54, v62, v221, src_border_in_pixels, v233[14973].i32[0], *(a1 + 46320), v67, v232[744]);
        *(v5 + 368) = v80;
        v45 = v227;
        v61 = v225;
        if (!v80)
        {
          aom_internal_error(v5 + 50984, 2, "Failed to allocate lag buffers");
          v45 = v227;
        }

LABEL_137:
        v234 = parallel_frame_enc_data;
        v219 = v60 / v228;
        v81 = v61 / v45;
        if (*(v5 + 328) >= 1)
        {
          v82 = 0;
          do
          {
            v83 = av1_check_initial_width(*(v5 + 8 * v82), v62, v53, v54);
            if (v83)
            {
              aom_internal_error(v5 + 50984, v83, "av1_check_initial_width() failed");
            }

            ++v82;
          }

          while (v82 < *(v5 + 328));
        }

        if (v238)
        {
          v84 = av1_check_initial_width(v238, v62, v53, v54);
          if (v84)
          {
            aom_internal_error(v5 + 50984, v84, "av1_check_initial_width() failed");
          }
        }

        parallel_frame_enc_data = v234;
        v85 = av1_receive_raw_frame(v234, *(a1 + 3096) | v253, &v243, v219, v81);
        v29 = (v5 + 50968);
        if (v85)
        {
          v86 = *v226;
          v87 = **v226;
          if (v87)
          {
            v88 = v86[1];
            v89 = v86 + 2;
            if (!v88)
            {
              v89 = 0;
            }

            *a1 = v89;
          }

          v261 = v87;
        }

        *(a1 + 3096) = 0;
        v28 = v5 + 50968;
        v32 = v238;
        v37 = v231;
        goto LABEL_152;
      }
    }

    v76 = (v5 + 8 * v72);
    v77 = v71 - v72;
    do
    {
      v78 = *v76++;
      *(v78 + 265560) = v68;
      --v77;
    }

    while (v77);
    goto LABEL_135;
  }

LABEL_152:
  v90 = (v5 + 74224);
  v91 = *(a1 + 2904);
  v92 = *(a1 + 2912);
  *&v254 = v91;
  *(&v254 + 1) = v92;
  v93 = *(a1 + 2920);
  if (v93)
  {
    *&v254 = v91 + v93;
    *(&v254 + 1) = v92 - v93;
    if (v92 - v93 < v92 >> 1)
    {
      aom_internal_error(v28 + 16, 1, "Compressed data buffer too small");
      v37 = v231;
    }
  }

  v94 = (v5 + 74224);
  if (v37[68].i32[2] != 1)
  {
    av1_compute_num_workers_for_mt(parallel_frame_enc_data);
    v95 = vmaxvq_s32(vmaxq_s32(vmaxq_s32(*(parallel_frame_enc_data->i64[0] + 74228), *(parallel_frame_enc_data->i64[0] + 74244)), *(parallel_frame_enc_data->i64[0] + 74260)));
    v96 = (v95 & ~(v95 >> 31)) >= v231[65].i32[3] ? v231[65].i32[3] : v95 & ~(v95 >> 31);
    if (v96 >= 2)
    {
      v97 = *v90;
      if (*v90 < v96)
      {
        v98 = v231[68].u32[2];
        if (v98 > 1 || !v98 && !*v232 && *(parallel_frame_enc_data->i64[0] + 23172))
        {
          *(v5 + 328) = av1_compute_num_fp_contexts(v5, v233[16533].i32);
          v97 = *v90;
        }

        v239 = v28;
        v222 = v96;
        if (v97 >= 1)
        {
          v99 = parallel_frame_enc_data;
          v100 = 0;
          v101 = 0;
          do
          {
            v102 = v100;
            v103 = v101;
            off_28100B678(*(v5 + 74280), (*(v5 + 74280) + v101));
            v100 = v102 + 1;
            v101 = v103 + 56;
          }

          while (v102 + 1 < *v90);
          free_thread_data(v5);
          v104 = *(v5 + 74288);
          if (v104)
          {
            free(*(v104 - 8));
          }

          *(v5 + 74288) = 0;
          v105 = *(v5 + 74280);
          parallel_frame_enc_data = v99;
          if (v105)
          {
            free(*(v105 - 8));
          }

          *(v5 + 74280) = 0;
          *v90 = 0;
          if (*(v5 + 328) >= 1)
          {
            v106 = 0;
            v107 = *(v5 + 328);
            do
            {
              while (1)
              {
                v108 = *(*(v5 + 8 * v106) + 234480);
                if (v108)
                {
                  break;
                }

                *(*(v5 + 8 * v106++) + 234480) = 0;
                if (v106 >= v107)
                {
                  goto LABEL_178;
                }
              }

              free(*(v108 - 8));
              v109 = *(v5 + 328);
              *(*(v5 + 8 * v106) + 234480) = 0;
              v107 = v109;
              ++v106;
            }

            while (v106 < v109);
          }
        }

LABEL_178:
        av1_create_workers(v5, v222);
        av1_init_tile_thread_data(v5, v231[68].i32[2] == 1);
        v28 = v239;
        v29 = (v5 + 50968);
        v32 = v238;
      }
    }
  }

  v110 = (v5 + 74244);
  if (*(v5 + 74268) > 1)
  {
    v110 = (v5 + 74224);
  }

  v111 = *v110;
  if (*(v5 + 74340) < v111 && v111 <= *v90)
  {
    v235 = parallel_frame_enc_data;
    v112 = v28;
    free_thread_data(v5);
    if (*(v5 + 328) >= 1)
    {
      v113 = 0;
      v114 = *(v5 + 328);
      do
      {
        v117 = *(*(v5 + 8 * v113) + 234480);
        if (v117)
        {
          free(*(v117 - 8));
          v115 = *(v5 + 8 * v113);
          v116 = *(v5 + 328);
        }

        else
        {
          v115 = *(v5 + 8 * v113);
          v116 = v114;
        }

        *(v115 + 234480) = 0;
        v114 = v116;
        ++v113;
      }

      while (v113 < v116);
    }

    av1_init_tile_thread_data(v5, v231[68].i32[2] == 1);
    v28 = v112;
    v32 = v238;
    parallel_frame_enc_data = v235;
  }

  if (*(v5 + 328) < 1)
  {
    v135 = *(v5 + 328);
    if (v32)
    {
LABEL_218:
      v136 = *v94;
      *(v238 + 627680) = *v94;
      *(v238 + 627736) = *(v5 + 74280);
      v137 = *(v5 + 74228);
      if (v136 < v137)
      {
        v137 = v136;
      }

      *(v238 + 627684) = v137;
      v138 = *(v5 + 74232);
      if (v136 < v138)
      {
        v138 = v136;
      }

      *(v238 + 627688) = v138;
      v139 = *(v5 + 74236);
      if (v136 < v139)
      {
        v139 = v136;
      }

      *(v238 + 627692) = v139;
      v140 = *(v5 + 74240);
      if (v136 < v140)
      {
        v140 = v136;
      }

      *(v238 + 627696) = v140;
      v141 = *(v5 + 74244);
      if (v136 < v141)
      {
        v141 = v136;
      }

      *(v238 + 627700) = v141;
      v142 = *(v5 + 74248);
      if (v136 < v142)
      {
        v142 = v136;
      }

      *(v238 + 627704) = v142;
      v143 = *(v5 + 74252);
      if (v136 < v143)
      {
        v143 = v136;
      }

      *(v238 + 627708) = v143;
      v144 = *(v5 + 74256);
      if (v136 < v144)
      {
        v144 = v136;
      }

      *(v238 + 627712) = v144;
      v145 = *(v5 + 74260);
      if (v136 < v145)
      {
        v145 = v136;
      }

      *(v238 + 627716) = v145;
      v146 = *(v5 + 74264);
      if (v136 < v146)
      {
        v146 = v136;
      }

      *(v238 + 627720) = v146;
      v147 = *(v5 + 74268);
      if (v136 < v147)
      {
        v147 = v136;
      }

      *(v238 + 627724) = v147;
      if (v136 >= *(v5 + 74272))
      {
        v136 = *(v5 + 74272);
      }

      *(v238 + 627728) = v136;
      if (*v94 <= 1)
      {
LABEL_251:
        *v245 = 0u;
        *&v245[20] = 0;
        v243 = 0u;
        v244 = 0u;
        *&v245[16] = v237;
        v246 = v236;
        *&v247 = 0;
        if (av1_get_compressed_data(v32, &v243) >= 1)
        {
          v155 = *(v238 + 239104);
          v156 = *v155;
          if (v155[1])
          {
            aom_internal_error(v28 + 16, v156, "%s");
          }

          else
          {
            aom_internal_error(v28 + 16, v156, 0, v218);
          }
        }

        av1_post_encode_updates(v32, &v243, v151, v152, v153, v154);
        goto LABEL_256;
      }

      v135 = *(v5 + 328);
LABEL_246:
      v148 = parallel_frame_enc_data;
      if (v135 >= 1)
      {
        v149 = 0;
        do
        {
          v150 = v149;
          av1_init_mt_sync(*(v5 + 8 * v149), *(*(v5 + 8 * v149) + 265608) == 1);
          v149 = v150 + 1;
        }

        while (v150 + 1 < *(v5 + 328));
      }

      parallel_frame_enc_data = v148;
      v32 = v238;
      if (!v238)
      {
        goto LABEL_256;
      }

      av1_init_mt_sync(v238, 1);
      goto LABEL_251;
    }
  }

  else
  {
    v118 = *(v5 + 74280);
    v119 = 0;
    do
    {
      v120 = *(v5 + 8 * v119);
      v121 = (v120 + 626688);
      v122 = *v94;
      *(v120 + 627736) = v118;
      *(v120 + 627680) = v122;
      v123 = *(v5 + 74228);
      if (v122 < v123)
      {
        v123 = v122;
      }

      v121[249] = v123;
      v124 = *(v5 + 74232);
      if (v122 < v124)
      {
        v124 = v122;
      }

      v121[250] = v124;
      v125 = *(v5 + 74236);
      if (v122 < v125)
      {
        v125 = v122;
      }

      v121[251] = v125;
      v126 = *(v5 + 74240);
      if (v122 < v126)
      {
        v126 = v122;
      }

      v121[252] = v126;
      v127 = *(v5 + 74244);
      if (v122 < v127)
      {
        v127 = v122;
      }

      v121[253] = v127;
      v128 = *(v5 + 74248);
      if (v122 < v128)
      {
        v128 = v122;
      }

      v121[254] = v128;
      v129 = *(v5 + 74252);
      if (v122 < v129)
      {
        v129 = v122;
      }

      v121[255] = v129;
      v130 = *(v5 + 74256);
      if (v122 < v130)
      {
        v130 = v122;
      }

      v121[256] = v130;
      v131 = *(v5 + 74260);
      if (v122 < v131)
      {
        v131 = v122;
      }

      v121[257] = v131;
      v132 = *(v5 + 74264);
      if (v122 < v132)
      {
        v132 = v122;
      }

      v121[258] = v132;
      v133 = *(v5 + 74268);
      if (v122 < v133)
      {
        v133 = v122;
      }

      v121[259] = v133;
      v134 = *(v5 + 74272);
      if (v122 < v134)
      {
        v134 = v122;
      }

      v121[260] = v134;
      ++v119;
    }

    while (v119 < *(v5 + 328));
    v135 = *(v5 + 328);
    if (v32)
    {
      goto LABEL_218;
    }
  }

  if (*v94 > 1)
  {
    goto LABEL_246;
  }

LABEL_256:
  v157 = v231[68].u32[2];
  if (v157 > 1 || !v157 && !*v232 && *(parallel_frame_enc_data->i64[0] + 23172))
  {
    v158 = *(v5 + 6664);
    if (v158 >= 1 && v158 == v233[28549].u8[8])
    {
      *(v5 + 328) = av1_compute_num_fp_contexts(v5, v233[16533].i32);
    }
  }

  if (*(&v254 + 1) < *(a1 + 2912) >> 1)
  {
    goto LABEL_264;
  }

  v159 = 0;
  while (2)
  {
    v229 = v159;
    while (1)
    {
      parallel_frame_enc_data[39876].i8[8] = 1;
      parallel_frame_enc_data[39876].i32[1] = -1;
      parallel_frame_enc_data[39875].i32[3] = -1;
      parallel_frame_enc_data[39876].i8[0] = 0;
      v160 = *(v5 + 12668 + 4 * parallel_frame_enc_data[28549].u8[8]);
      if (!v160)
      {
        compressed_data = av1_get_compressed_data(parallel_frame_enc_data, &v254);
        if (compressed_data)
        {
          if (compressed_data == -1)
          {
            goto LABEL_264;
          }

          v168 = parallel_frame_enc_data[14944].i64[0];
          v169 = *v168;
          if (v168[1])
          {
            aom_internal_error(v28 + 16, v169, "%s");
          }

          else
          {
            aom_internal_error(v28 + 16, v169, 0, v218);
          }

          v165 = parallel_frame_enc_data + 14941;
          v166 = *(v5 + 328);
          if (v166 <= 1)
          {
            goto LABEL_290;
          }

          goto LABEL_278;
        }

        goto LABEL_277;
      }

      if (v160 != 1)
      {
        parallel_frame_enc_data = av1_get_parallel_frame_enc_data(v5, &v254);
LABEL_277:
        v165 = parallel_frame_enc_data + 14941;
        v166 = *(v5 + 328);
        if (v166 < 1)
        {
          goto LABEL_290;
        }

        goto LABEL_278;
      }

      av1_compress_parallel_frames(v5, &v254);
      v165 = parallel_frame_enc_data + 14941;
      v166 = *(v5 + 328);
      if (v166 < 1)
      {
        goto LABEL_290;
      }

LABEL_278:
      if (v166 != 1 && (v165->i8[0] & 0xFD) == 0)
      {
        v170 = *(v5 + 352);
        v171 = (v170 + 637072);
        v172 = v170 + 239551;
        v173 = *(v170 + 239551);
        v174 = *(v172 + 1);
        v175 = *v171;
        v176 = v171[1];
        if (v166 < 3)
        {
          v177 = 1;
LABEL_285:
          v184 = v166 - v177;
          v185 = (v5 + 8 * v177);
          do
          {
            v186 = *v185++;
            *(v186 + 239551) = v173;
            *(v186 + 239552) = v174;
            *(v186 + 637072) = v175;
            *(v186 + 637076) = v176;
            --v184;
          }

          while (v184);
          goto LABEL_290;
        }

        v178 = (v166 - 1) & 0xFFFFFFFFFFFFFFFELL;
        v177 = (v166 - 1) | 1;
        v179 = (v5 + 16);
        do
        {
          v180 = *(v179 - 1);
          v181 = v180 + 637072;
          v180 += 239551;
          v182 = (*v179 + 637072);
          v183 = (*v179 + 239551);
          *v180 = v173;
          *v183 = v173;
          v180[1] = v174;
          v183[1] = v174;
          *v181 = v175;
          *v182 = v175;
          v181[1] = v176;
          v182[1] = v176;
          v179 += 2;
          v178 -= 2;
        }

        while (v178);
        if (v166 - 1 != ((v166 - 1) & 0xFFFFFFFFFFFFFFFELL))
        {
          goto LABEL_285;
        }
      }

LABEL_290:
      *(v5 + 376) = 1;
      v187 = av1_post_encode_updates(parallel_frame_enc_data->i64, &v254, v161, v162, v163, v164);
      if (v255)
      {
        break;
      }

      if (*(&v254 + 1) < *(a1 + 2912) >> 1)
      {
        goto LABEL_264;
      }
    }

    if (v255 > *(&v254 + 1))
    {
      aom_internal_error(v28 + 16, 1, "cpi_data.cx_data buffer overflow", v187);
    }

    if (!parallel_frame_enc_data[16532].i32[0] && !*(a1 + 2920))
    {
      v188 = v255;
      if (*(a1 + 2912) - v255 <= 1uLL)
      {
        aom_internal_error(v28 + 16, 1, "ctx->cx_data buffer full");
        v188 = v255;
      }

      memmove((*(a1 + 2904) + 2), *(a1 + 2904), v188);
      **(a1 + 2904) = 18;
      if (av1_write_uleb_obu_size(0, *(a1 + 2904) + 1, 1uLL))
      {
        aom_internal_error(v28 + 16, 1, 0);
      }

      *&v255 = v255 + 2;
    }

    if (*(a1 + 2852))
    {
      if (av1_convert_sect5obus_to_annexb(v254, *(&v254 + 1), &v255))
      {
        aom_internal_error(v28 + 16, 1, 0);
      }

      v240 = v28;
      v189 = v255;
      v190 = v255;
      v191 = 0;
      do
      {
        v192 = v190;
        v193 = v191 + 1;
        v190 >>= 7;
        ++v191;
      }

      while (v192 > 0x7F);
      if (v193 - 1 >= *(&v254 + 1) - v255)
      {
        aom_internal_error(v240 + 16, 1, "cpi_data.cx_data buffer full");
        v189 = v255;
      }

      memmove((v254 + v193), v254, v189);
      if (av1_write_uleb_obu_size(v255, v254, v193))
      {
        aom_internal_error(v240 + 16, 1, 0);
      }

      v194 = v255 + v193;
      *&v255 = v255 + v193;
      v28 = v240;
    }

    else
    {
      v194 = v255;
    }

    v195 = *(a1 + 2920) + v194;
    *(a1 + 2920) = v195;
    v196 = *(&v254 + 1) - v194;
    *&v254 = v254 + v194;
    *(&v254 + 1) -= v194;
    if (!v165[30].i32[0])
    {
      v159 = v229 | (v165->i8[0] == 0);
      v29 = (v5 + 50968);
      if (v196 < *(a1 + 2912) >> 1)
      {
        goto LABEL_264;
      }

      continue;
    }

    break;
  }

  v197 = *(v5 + 23476);
  if (v197 <= 0)
  {
    v198 = 0;
  }

  else
  {
    v198 = v197 - 1;
  }

  *(v5 + 23476) = v198;
  v241 = v28;
  if (*(a1 + 2852) == 1)
  {
    v199 = v195;
    v200 = 0;
    do
    {
      v201 = v199;
      v202 = v200 + 1;
      v199 >>= 7;
      ++v200;
    }

    while (v201 > 0x7F);
    v203 = *(a1 + 2912);
    if (v195 > v203)
    {
      aom_internal_error(v28 + 16, 1, "ctx->cx_data buffer overflow");
      v203 = *(a1 + 2912);
    }

    if (v202 - 1 >= v203 - v195)
    {
      aom_internal_error(v28 + 16, 1, "ctx->cx_data buffer full");
    }

    memmove((*(a1 + 2904) + v202), *(a1 + 2904), v195);
    if (av1_write_uleb_obu_size(v195, *(a1 + 2904), v202))
    {
      aom_internal_error(v28 + 16, 1, 0);
    }

    v204 = *(a1 + 2920) + v202;
    *(a1 + 2920) = v204;
    v205 = v255;
  }

  else
  {
    v205 = v194;
    v204 = v195;
  }

  v206 = *(a1 + 2904);
  v207 = *v258;
  v208 = *(v258 + 8);
  v209 = *v258 / 2 - (*v258 > 1);
  v210 = *(a1 + 1728);
  v211 = BYTE8(v255) & 0x71 | (DWORD2(v255) << 16);
  if (parallel_frame_enc_data[28549].i32[3])
  {
    v211 |= 2u;
  }

  if (v229)
  {
    v212 = v211 | 0x80;
  }

  else
  {
    v212 = v211;
  }

  v213 = v256;
  v214 = (v209 + (*(&v256 + 1) - v256) * v208) / v207;
  if (v214 >= 0x100000000)
  {
    v220 = (v209 + (*(&v256 + 1) - v256) * v208) / v207;
    v215 = *(a1 + 1728);
    aom_internal_error(v241 + 16, 1, 0);
    LODWORD(v214) = v220;
    v210 = v215;
  }

  v216 = *(a1 + 3104);
  if (v216 < *(a1 + 3108))
  {
    v217 = a1 + 168 * v216;
    *(a1 + 3104) = v216 + 1;
    *(v217 + 3112) = 0;
    *(v217 + 3120) = v206;
    *(v217 + 3128) = v204;
    *(v217 + 3136) = v210 + (v209 + v213 * v208) / v207;
    *(v217 + 3144) = v214;
    *(v217 + 3152) = v212;
    *(v217 + 3156) = -1;
    *(v217 + 3160) = v205;
    *(v217 + 3168) = 0u;
    *(v217 + 3184) = 0u;
    *(v217 + 3200) = 0u;
    *(v217 + 3216) = 0u;
    *(v217 + 3232) = 0u;
    *(v217 + 3248) = 0u;
    *(v217 + 3264) = 0u;
  }

  *(a1 + 2920) = 0;
  v29 = v242;
LABEL_264:
  v29[56] = 0;
  return v261;
}

uint64_t encoder_get_cxdata_0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = a1 + 3112;
    *a2 = a1 + 3112;
  }

  if (0xCF3CF3CF3CF3CF3DLL * ((result - a1 - 3112) >> 3) >= *(a1 + 3104))
  {
    return 0;
  }

  *a2 = result + 168;
  return result;
}

uint64_t encoder_set_config_0(uint64_t a1, _DWORD *a2)
{
  v3 = a2[3];
  if (v3 == *(a1 + 220) && a2[4] == *(a1 + 224))
  {
    goto LABEL_29;
  }

  if (a2[14] > 1u || a2[13])
  {
    v4 = "Cannot change width or height after initialization";
LABEL_49:
    *a1 = v4;
    return 8;
  }

  v5 = *(*(a1 + 2896) + 352);
  if (*(v5 + 637136) == 1 && (v6 = v5 + 456860, (v7 = *(v5 + 456860)) != 0) && (v8 = *(v6 + 4)) != 0)
  {
    v9 = a2[4];
    v15 = v7 > 2 * v3 || v8 > 2 * v9 || v3 > 16 * v7 || v9 > 16 * v8 || v3 > v7 || v9 > v8;
    v16 = a1 + 45056;
    if (*(a1 + 46368) != 1)
    {
      goto LABEL_31;
    }
  }

  else
  {
LABEL_29:
    v15 = 0;
    v16 = a1 + 45056;
    if (*(a1 + 46368) != 1)
    {
      goto LABEL_31;
    }
  }

  if (!a2[52])
  {
    v4 = "Cannot change to monochrome = 0 after init with monochrome";
    goto LABEL_49;
  }

LABEL_31:
  v17 = a2[14];
  v18 = *(a1 + 264);
  if (v17 > v18)
  {
    v4 = "Cannot increase lag_in_frames";
    goto LABEL_49;
  }

  if (v17 != v18 && *(v16 + 1264) >= 1)
  {
    v4 = "Cannot change lag_in_frames if LAP is enabled";
    goto LABEL_49;
  }

  result = validate_config_1(a1, a2, a1 + 1112);
  if (!result)
  {
    v21 = result;
    memcpy((a1 + 208), a2, 0x388uLL);
    set_encoder_config_0(a1 + 1744, (a1 + 208), a1 + 1112, v22, v23, v24, v25, v26);
    v27 = *(a1 + 2896);
    if (*(v27 + 49093) != *(a1 + 2820))
    {
      v15 = 1;
    }

    v31 = 0;
    av1_change_config_seq(v27, a1 + 1744, &v31);
    v28 = *(a1 + 2896);
    if (*(v28 + 328) >= 1)
    {
      v29 = 0;
      do
      {
        av1_change_config(*(v28 + 8 * v29++), (a1 + 1744), v31);
        v28 = *(a1 + 2896);
      }

      while (v29 < *(v28 + 328));
    }

    v30 = *(v28 + 360);
    if (v30)
    {
      av1_change_config(v30, (a1 + 1744), v31);
    }

    result = v21;
  }

  if (v15)
  {
    *(a1 + 3096) |= 1uLL;
  }

  return result;
}

uint64_t encoder_get_preview_0(uint64_t a1)
{
  v1 = *(*(a1 + 2896) + 352);
  v2 = (v1 + 239112);
  if (!*(v1 + 239536))
  {
    return 0;
  }

  v3 = *(v1 + 239288);
  if (!v3 || (*(v1 + 264600) & 1) != 0)
  {
    return 0;
  }

  v5 = *(v3 + 1264);
  v6 = *(v3 + 1272);
  v7 = *(v3 + 1280);
  v8 = *(v3 + 1284);
  v9 = *(v3 + 1288);
  v10 = *(v3 + 1296);
  v11 = *(v3 + 1344);
  v12 = *(v3 + 1368);
  v13 = *(v3 + 1376);
  v14 = *(v3 + 1384);
  v15 = *(v3 + 1388);
  v16 = *(v3 + 1400);
  *&v17 = *(v3 + 1404);
  *&v21 = *(v3 + 1412);
  v18 = *(v3 + 1424);
  v19 = *v2;
  v20 = HIDWORD(v13);
  *(&v21 + 1) = v13;
  v22 = v13;
  if (v13)
  {
    v23 = 261;
  }

  else
  {
    v23 = 262;
  }

  if (v13)
  {
    v24 = 16;
  }

  else
  {
    v24 = 24;
  }

  if (HIDWORD(v13))
  {
    v25 = 258;
  }

  else
  {
    v25 = v23;
  }

  if (HIDWORD(v13))
  {
    v26 = 12;
  }

  else
  {
    v26 = v24;
  }

  v27 = *(v3 + 1392);
  *(a1 + 2928) = v25;
  *(a1 + 2932) = v15;
  *(a1 + 2936) = v27;
  *(a1 + 2944) = v16;
  *(a1 + 2964) = 8;
  *(&v17 + 1) = v19;
  *(a1 + 2948) = v17;
  *(a1 + 2968) = v5;
  *(a1 + 2972) = v6;
  *(a1 + 2976) = v21;
  *(a1 + 2992) = v9;
  *(a1 + 3000) = v10;
  *(a1 + 3016) = v7;
  *(a1 + 3020) = v8;
  *(a1 + 3024) = v8;
  if ((v18 & 8) != 0)
  {
    if (v22)
    {
      v28 = 2309;
    }

    else
    {
      v28 = 2310;
    }

    if (v20)
    {
      v28 = 2306;
    }

    *(a1 + 2928) = v28;
    v26 *= 2;
    *(a1 + 2964) = v14;
    *(a1 + 2992) = 2 * v9;
    *(a1 + 3000) = vaddq_s64(v10, v10);
    *(a1 + 3016) = 2 * v7;
    *(a1 + 3020) = 2 * v8;
    *(a1 + 3024) = 2 * v8;
  }

  *(a1 + 3040) = v26;
  *(a1 + 3056) = 0;
  *(a1 + 3064) = v11;
  *(a1 + 3072) = 0u;
  *(a1 + 3032) = v12;
  return a1 + 2928;
}

uint64_t encoder_set_option(uint64_t a1, const char *a2, char *a3)
{
  __dst[75] = *MEMORY[0x277D85DE8];
  result = 8;
  if (a1 && a2 && a3)
  {
    memcpy(__dst, (a1 + 1112), 0x258uLL);
    v34 = xmmword_279EA5A08;
    v7 = strlen(a2);
    v8 = v7 + strlen(a3) + 4;
    if (v8 > 0x1FFFFFFE9)
    {
      return 2;
    }

    v9 = *(a1 + 2896);
    v10 = malloc_type_malloc(v8 + 23, 0x5F484EBFuLL);
    if (!v10)
    {
      return 2;
    }

    v11 = v10;
    v12 = ((v10 + 23) & 0xFFFFFFFFFFFFFFF0);
    *(v12 - 1) = v11;
    *&v34 = v12;
    if (!v12)
    {
      return 2;
    }

    v13 = v9 + 50992;
    snprintf(v12, v8, "--%s=%s", a2, a3);
    v32 = 0;
    v30 = 0u;
    *__str = 0u;
    if (arg_match_helper(&v30, &unk_279EA4748, &v34, v13))
    {
      __endptr = 0;
      v14 = strtoul(__str[0], &__endptr, 10);
      *v13 = 0;
      if (!*__str[0] || *__endptr)
      {
        snprintf(v13, 0xC8uLL, "Option %s: Invalid character '%c'\n");
      }

      else
      {
        if (!HIDWORD(v14))
        {
LABEL_21:
          v16 = 0;
          HIDWORD(__dst[6]) = v14;
LABEL_35:
          if (v34)
          {
            free(*(v34 - 8));
          }

          if (*v13)
          {
            goto LABEL_38;
          }

          *a1 = 0;
          if (v16)
          {
            return 8;
          }

LABEL_85:
          result = validate_config_1(a1, a1 + 208, __dst);
          if (!result)
          {
            memcpy((a1 + 1112), __dst, 0x258uLL);
            return update_encoder_cfg(a1, v23, v24, v25, v26, v27);
          }

          return result;
        }

        snprintf(v13, 0xC8uLL, "Option %s: Value %lu out of range for unsigned int\n");
      }

      LODWORD(v14) = 0;
      goto LABEL_21;
    }

    if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 840, &v34, v13))
    {
      __endptr = 0;
      v15 = strtoul(__str[0], &__endptr, 10);
      *v13 = 0;
      if (!*__str[0] || *__endptr)
      {
        snprintf(v13, 0xC8uLL, "Option %s: Invalid character '%c'\n");
      }

      else
      {
        if (!HIDWORD(v15))
        {
LABEL_29:
          v16 = 0;
          LODWORD(__dst[8]) = v15;
          goto LABEL_35;
        }

        snprintf(v13, 0xC8uLL, "Option %s: Value %lu out of range for unsigned int\n");
      }

      LODWORD(v15) = 0;
      goto LABEL_29;
    }

    if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 845, &v34, v13))
    {
      __endptr = 0;
      v17 = strtoul(__str[0], &__endptr, 10);
      *v13 = 0;
      if (!*__str[0] || *__endptr)
      {
        snprintf(v13, 0xC8uLL, "Option %s: Invalid character '%c'\n");
      }

      else
      {
        if (!HIDWORD(v17))
        {
LABEL_34:
          v16 = 0;
          HIDWORD(__dst[8]) = v17;
          goto LABEL_35;
        }

        snprintf(v13, 0xC8uLL, "Option %s: Value %lu out of range for unsigned int\n");
      }

      LODWORD(v17) = 0;
      goto LABEL_34;
    }

    if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 850, &v34, v13))
    {
      v16 = 0;
      LODWORD(__dst[9]) = arg_parse_uint_helper(&v30, v13);
      goto LABEL_35;
    }

    if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 855, &v34, v13))
    {
      v16 = 0;
      HIDWORD(__dst[9]) = arg_parse_uint_helper(&v30, v13);
      goto LABEL_35;
    }

    if (arg_match_helper(&v30, &unk_279EA4630, &v34, v13))
    {
      v16 = 0;
      HIDWORD(__dst[0]) = arg_parse_uint_helper(&v30, v13);
      goto LABEL_35;
    }

    if (arg_match_helper(&v30, &unk_279EA4518, &v34, v13))
    {
      v16 = 0;
      LODWORD(__dst[1]) = arg_parse_uint_helper(&v30, v13);
      goto LABEL_35;
    }

    if (arg_match_helper(&v30, &unk_279EA44A0, &v34, v13))
    {
      v16 = 0;
      LODWORD(__dst[2]) = arg_parse_uint_helper(&v30, v13);
      goto LABEL_35;
    }

    if (arg_match_helper(&v30, &unk_279EA44C8, &v34, v13))
    {
      v16 = 0;
      HIDWORD(__dst[2]) = arg_parse_uint_helper(&v30, v13);
      goto LABEL_35;
    }

    if (arg_match_helper(&v30, &unk_279EA44F0, &v34, v13))
    {
      v16 = 0;
      LODWORD(__dst[3]) = arg_parse_uint_helper(&v30, v13);
      goto LABEL_35;
    }

    if (arg_match_helper(&v30, &unk_279EA4658, &v34, v13))
    {
      v16 = 0;
      HIDWORD(__dst[3]) = arg_parse_uint_helper(&v30, v13);
      goto LABEL_35;
    }

    if (arg_match_helper(&v30, &unk_279EA4680, &v34, v13))
    {
      v16 = 0;
      LODWORD(__dst[4]) = arg_parse_uint_helper(&v30, v13);
      goto LABEL_35;
    }

    if (arg_match_helper(&v30, &unk_279EA46A8, &v34, v13))
    {
      HIDWORD(__dst[4]) = arg_parse_uint_helper(&v30, v13);
      if (HIDWORD(__dst[5]))
      {
        v18 = "Cannot set tile-cols because auto-tiles is already set.";
        goto LABEL_63;
      }

      goto LABEL_78;
    }

    if (arg_match_helper(&v30, &unk_279EA46D0, &v34, v13))
    {
      LODWORD(__dst[5]) = arg_parse_uint_helper(&v30, v13);
      if (HIDWORD(__dst[5]))
      {
        v18 = "Cannot set tile-rows because auto-tiles is already set.";
LABEL_63:
        v19 = *(v18 + 1);
        *v13 = *v18;
        *(v13 + 16) = v19;
        *(v13 + 32) = *(v18 + 2);
        *(v13 + 48) = *(v18 + 6);
        v20 = 8;
        v21 = v34;
        if (v34)
        {
LABEL_64:
          free(*(v21 - 8));
        }

LABEL_65:
        *a1 = v13;
        return v20;
      }

LABEL_78:
      v16 = 0;
      goto LABEL_35;
    }

    if (arg_match_helper(&v30, &unk_279EA46F8, &v34, v13))
    {
      v16 = 0;
      HIDWORD(__dst[5]) = arg_parse_uint_helper(&v30, v13);
      goto LABEL_35;
    }

    if (arg_match_helper(&v30, &unk_279EA4720, &v34, v13))
    {
      v16 = 0;
      LODWORD(__dst[6]) = arg_parse_uint_helper(&v30, v13);
      goto LABEL_35;
    }

    if (arg_match_helper(&v30, &unk_279EA4540, &v34, v13))
    {
      v16 = 0;
      LODWORD(__dst[7]) = arg_parse_uint_helper(&v30, v13);
      goto LABEL_35;
    }

    if (arg_match_helper(&v30, &unk_279EA4568, &v34, v13))
    {
      v16 = 0;
      HIDWORD(__dst[7]) = arg_parse_uint_helper(&v30, v13);
      goto LABEL_35;
    }

    if (arg_match_helper(&v30, &unk_279EA4590, &v34, v13))
    {
      LODWORD(__dst[10]) = arg_parse_enum_helper(&v30, v13);
      if (LODWORD(__dst[10]) == 10)
      {
        if (*(a1 + 208) == 2)
        {
          v16 = 0;
          HIDWORD(__dst[20]) = 1;
          HIDWORD(__dst[2]) = 7;
          LODWORD(__dst[18]) = 3;
          goto LABEL_35;
        }

        v20 = 4;
        v21 = v34;
        if (v34)
        {
          goto LABEL_64;
        }

        goto LABEL_65;
      }

      goto LABEL_78;
    }

    if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 750, &v34, v13))
    {
      v20 = allocate_and_set_string(a3, ".", &__dst[12], v13);
      v22 = v34;
      if (!v34)
      {
        goto LABEL_82;
      }

      goto LABEL_81;
    }

    if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 755, &v34, v13))
    {
      v16 = 0;
      LODWORD(__dst[13]) = arg_parse_uint_helper(&v30, v13);
      goto LABEL_35;
    }

    if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 760, &v34, v13))
    {
      v20 = allocate_and_set_string(a3, "./rate_map.txt", &__dst[14], v13);
      v22 = v34;
      if (!v34)
      {
        goto LABEL_82;
      }
    }

    else
    {
      if (arg_match_helper(&v30, &unk_279EA45B8, &v34, v13))
      {
        v16 = 0;
        LODWORD(__dst[15]) = arg_parse_enum_helper(&v30, v13);
        goto LABEL_35;
      }

      if (arg_match_helper(&v30, &unk_279EA45E0, &v34, v13))
      {
        v16 = 0;
        HIDWORD(__dst[15]) = arg_parse_uint_helper(&v30, v13);
        goto LABEL_35;
      }

      if (arg_match_helper(&v30, &unk_279EA4608, &v34, v13))
      {
        v16 = 0;
        LODWORD(__dst[16]) = arg_parse_uint_helper(&v30, v13);
        goto LABEL_35;
      }

      if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 835, &v34, v13))
      {
        v16 = 0;
        HIDWORD(__dst[16]) = arg_parse_uint_helper(&v30, v13);
        goto LABEL_35;
      }

      if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 830, &v34, v13))
      {
        v16 = 0;
        LODWORD(__dst[17]) = arg_parse_uint_helper(&v30, v13);
        goto LABEL_35;
      }

      if (arg_match_helper(&v30, &unk_279EA47C0, &v34, v13))
      {
        v16 = 0;
        HIDWORD(__dst[17]) = arg_parse_uint_helper(&v30, v13);
        goto LABEL_35;
      }

      if (arg_match_helper(&v30, &unk_279EA47E8, &v34, v13))
      {
        v16 = 0;
        LODWORD(__dst[18]) = arg_parse_uint_helper(&v30, v13);
        goto LABEL_35;
      }

      if (arg_match_helper(&v30, &unk_279EA4810, &v34, v13))
      {
        v16 = 0;
        HIDWORD(__dst[18]) = arg_parse_uint_helper(&v30, v13);
        goto LABEL_35;
      }

      if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 640, &v34, v13))
      {
        v16 = 0;
        LODWORD(__dst[19]) = arg_parse_uint_helper(&v30, v13);
        goto LABEL_35;
      }

      if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 645, &v34, v13))
      {
        v16 = 0;
        HIDWORD(__dst[19]) = arg_parse_uint_helper(&v30, v13);
        goto LABEL_35;
      }

      if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 670, &v34, v13))
      {
        v16 = 0;
        LODWORD(__dst[20]) = arg_parse_uint_helper(&v30, v13);
        goto LABEL_35;
      }

      if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 675, &v34, v13))
      {
        v16 = 0;
        HIDWORD(__dst[20]) = arg_parse_uint_helper(&v30, v13);
        goto LABEL_35;
      }

      if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 685, &v34, v13))
      {
        v16 = 0;
        LODWORD(__dst[23]) = arg_parse_uint_helper(&v30, v13);
        goto LABEL_35;
      }

      if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 680, &v34, v13))
      {
        v16 = 0;
        HIDWORD(__dst[22]) = arg_parse_uint_helper(&v30, v13);
        goto LABEL_35;
      }

      if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 735, &v34, v13))
      {
        v16 = 0;
        HIDWORD(__dst[23]) = arg_parse_uint_helper(&v30, v13);
        goto LABEL_35;
      }

      if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 740, &v34, v13))
      {
        v16 = 0;
        LODWORD(__dst[24]) = arg_parse_uint_helper(&v30, v13);
        goto LABEL_35;
      }

      if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 745, &v34, v13))
      {
        v16 = 0;
        HIDWORD(__dst[24]) = arg_parse_enum_helper(&v30, v13);
        goto LABEL_35;
      }

      if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 795, &v34, v13))
      {
        v16 = 0;
        LODWORD(__dst[25]) = arg_parse_uint_helper(&v30, v13);
        goto LABEL_35;
      }

      if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 525, &v34, v13))
      {
        v16 = 0;
        HIDWORD(__dst[25]) = arg_parse_uint_helper(&v30, v13);
        goto LABEL_35;
      }

      if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 530, &v34, v13))
      {
        v16 = 0;
        LODWORD(__dst[26]) = arg_parse_uint_helper(&v30, v13);
        goto LABEL_35;
      }

      if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 805, &v34, v13))
      {
        v16 = 0;
        BYTE4(__dst[26]) = arg_parse_uint_helper(&v30, v13);
        goto LABEL_35;
      }

      if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 810, &v34, v13))
      {
        v16 = 0;
        BYTE5(__dst[26]) = arg_parse_uint_helper(&v30, v13);
        goto LABEL_35;
      }

      if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 815, &v34, v13))
      {
        v16 = 0;
        LODWORD(__dst[27]) = arg_parse_uint_helper(&v30, v13);
        goto LABEL_35;
      }

      if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 820, &v34, v13))
      {
        v16 = 0;
        HIDWORD(__dst[27]) = arg_parse_uint_helper(&v30, v13);
        goto LABEL_35;
      }

      if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 825, &v34, v13))
      {
        v16 = 0;
        LODWORD(__dst[28]) = arg_parse_uint_helper(&v30, v13);
        goto LABEL_35;
      }

      if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 900, &v34, v13))
      {
        v16 = 0;
        HIDWORD(__dst[28]) = arg_parse_enum_helper(&v30, v13);
        goto LABEL_35;
      }

      if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 880, &v34, v13))
      {
        v16 = 0;
        LODWORD(__dst[29]) = arg_parse_enum_helper(&v30, v13);
        goto LABEL_35;
      }

      if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 885, &v34, v13))
      {
        v16 = 0;
        HIDWORD(__dst[29]) = arg_parse_enum_helper(&v30, v13);
        goto LABEL_35;
      }

      if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 890, &v34, v13))
      {
        v16 = 0;
        LODWORD(__dst[30]) = arg_parse_enum_helper(&v30, v13);
        goto LABEL_35;
      }

      if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 895, &v34, v13))
      {
        v16 = 0;
        HIDWORD(__dst[30]) = arg_parse_enum_helper(&v30, v13);
        goto LABEL_35;
      }

      if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 910, &v34, v13))
      {
        v16 = 0;
        HIDWORD(__dst[32]) = arg_parse_enum_helper(&v30, v13);
        goto LABEL_35;
      }

      if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 800, &v34, v13))
      {
        v16 = 0;
        HIDWORD(__dst[33]) = arg_parse_int_helper(&v30, v13);
        goto LABEL_35;
      }

      if (arg_match_helper(&v30, &unk_279EA4450, &v34, v13))
      {
        v16 = 0;
        LODWORD(__dst[34]) = arg_parse_int_helper(&v30, v13);
        goto LABEL_35;
      }

      if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 765, &v34, v13))
      {
        v16 = 0;
        HIDWORD(__dst[34]) = arg_parse_int_helper(&v30, v13);
        goto LABEL_35;
      }

      if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 770, &v34, v13))
      {
        v28 = &__dst[35];
      }

      else
      {
        if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 905, &v34, v13))
        {
          v16 = 0;
          HIDWORD(__dst[36]) = arg_parse_int_helper(&v30, v13);
          goto LABEL_35;
        }

        if (arg_match_helper(&v30, &unk_279EA4838, &v34, v13))
        {
          v16 = 0;
          LODWORD(__dst[37]) = arg_parse_int_helper(&v30, v13);
          goto LABEL_35;
        }

        if (arg_match_helper(&v30, &unk_279EA4860, &v34, v13))
        {
          v16 = 0;
          HIDWORD(__dst[37]) = arg_parse_int_helper(&v30, v13);
          goto LABEL_35;
        }

        if (arg_match_helper(&v30, &unk_279EA4888, &v34, v13))
        {
          v16 = 0;
          LODWORD(__dst[38]) = arg_parse_int_helper(&v30, v13);
          goto LABEL_35;
        }

        if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 515, &v34, v13))
        {
          v16 = 0;
          HIDWORD(__dst[38]) = arg_parse_int_helper(&v30, v13);
          goto LABEL_35;
        }

        if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 520, &v34, v13))
        {
          v16 = 0;
          LODWORD(__dst[39]) = arg_parse_int_helper(&v30, v13);
          goto LABEL_35;
        }

        if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 535, &v34, v13))
        {
          v16 = 0;
          HIDWORD(__dst[39]) = arg_parse_uint_helper(&v30, v13);
          goto LABEL_35;
        }

        if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 540, &v34, v13))
        {
          v16 = 0;
          LODWORD(__dst[40]) = arg_parse_int_helper(&v30, v13);
          goto LABEL_35;
        }

        if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 545, &v34, v13))
        {
          v16 = 0;
          HIDWORD(__dst[40]) = arg_parse_int_helper(&v30, v13);
          goto LABEL_35;
        }

        if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 550, &v34, v13))
        {
          v16 = 0;
          LODWORD(__dst[41]) = arg_parse_int_helper(&v30, v13);
          goto LABEL_35;
        }

        if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 555, &v34, v13))
        {
          v16 = 0;
          HIDWORD(__dst[41]) = arg_parse_int_helper(&v30, v13);
          goto LABEL_35;
        }

        if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 560, &v34, v13))
        {
          v16 = 0;
          LODWORD(__dst[42]) = arg_parse_int_helper(&v30, v13);
          goto LABEL_35;
        }

        if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 860, &v34, v13))
        {
          v16 = 0;
          HIDWORD(__dst[42]) = arg_parse_int_helper(&v30, v13);
          goto LABEL_35;
        }

        if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 865, &v34, v13))
        {
          v16 = 0;
          LODWORD(__dst[43]) = arg_parse_int_helper(&v30, v13);
          goto LABEL_35;
        }

        if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 790, &v34, v13))
        {
          v16 = 0;
          HIDWORD(__dst[43]) = arg_parse_int_helper(&v30, v13);
          goto LABEL_35;
        }

        if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 565, &v34, v13))
        {
          v16 = 0;
          HIDWORD(__dst[44]) = arg_parse_int_helper(&v30, v13);
          goto LABEL_35;
        }

        if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 570, &v34, v13))
        {
          v16 = 0;
          LODWORD(__dst[45]) = arg_parse_int_helper(&v30, v13);
          goto LABEL_35;
        }

        if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 575, &v34, v13))
        {
          v16 = 0;
          HIDWORD(__dst[45]) = arg_parse_int_helper(&v30, v13);
          goto LABEL_35;
        }

        if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 580, &v34, v13))
        {
          v16 = 0;
          LODWORD(__dst[46]) = arg_parse_int_helper(&v30, v13);
          goto LABEL_35;
        }

        if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 585, &v34, v13))
        {
          v16 = 0;
          HIDWORD(__dst[46]) = arg_parse_int_helper(&v30, v13);
          goto LABEL_35;
        }

        if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 590, &v34, v13))
        {
          v16 = 0;
          LODWORD(__dst[47]) = arg_parse_int_helper(&v30, v13);
          goto LABEL_35;
        }

        if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 595, &v34, v13))
        {
          v16 = 0;
          HIDWORD(__dst[47]) = arg_parse_int_helper(&v30, v13);
          goto LABEL_35;
        }

        if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 600, &v34, v13))
        {
          v16 = 0;
          LODWORD(__dst[48]) = arg_parse_int_helper(&v30, v13);
          goto LABEL_35;
        }

        if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 605, &v34, v13))
        {
          v16 = 0;
          HIDWORD(__dst[48]) = arg_parse_int_helper(&v30, v13);
          goto LABEL_35;
        }

        if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 610, &v34, v13))
        {
          v16 = 0;
          HIDWORD(__dst[49]) = arg_parse_int_helper(&v30, v13);
          goto LABEL_35;
        }

        if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 615, &v34, v13))
        {
          v16 = 0;
          LODWORD(__dst[50]) = arg_parse_int_helper(&v30, v13);
          goto LABEL_35;
        }

        if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 620, &v34, v13))
        {
          v16 = 0;
          HIDWORD(__dst[50]) = arg_parse_int_helper(&v30, v13);
          goto LABEL_35;
        }

        if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 625, &v34, v13))
        {
          v16 = 0;
          LODWORD(__dst[51]) = arg_parse_int_helper(&v30, v13);
          goto LABEL_35;
        }

        if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 630, &v34, v13))
        {
          v16 = 0;
          HIDWORD(__dst[51]) = arg_parse_int_helper(&v30, v13);
          goto LABEL_35;
        }

        if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 635, &v34, v13))
        {
          v16 = 0;
          LODWORD(__dst[52]) = arg_parse_int_helper(&v30, v13);
          goto LABEL_35;
        }

        if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 650, &v34, v13))
        {
          v16 = 0;
          LODWORD(__dst[53]) = arg_parse_int_helper(&v30, v13);
          goto LABEL_35;
        }

        if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 655, &v34, v13))
        {
          v16 = 0;
          HIDWORD(__dst[53]) = arg_parse_int_helper(&v30, v13);
          goto LABEL_35;
        }

        if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 660, &v34, v13))
        {
          v16 = 0;
          LODWORD(__dst[54]) = arg_parse_int_helper(&v30, v13);
          goto LABEL_35;
        }

        if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 665, &v34, v13))
        {
          v16 = 0;
          HIDWORD(__dst[54]) = arg_parse_int_helper(&v30, v13);
          goto LABEL_35;
        }

        if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 690, &v34, v13))
        {
          v16 = 0;
          HIDWORD(__dst[57]) = arg_parse_int_helper(&v30, v13);
          goto LABEL_35;
        }

        if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 695, &v34, v13))
        {
          v16 = 0;
          LODWORD(__dst[58]) = arg_parse_int_helper(&v30, v13);
          goto LABEL_35;
        }

        if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 700, &v34, v13))
        {
          v16 = 0;
          HIDWORD(__dst[58]) = arg_parse_int_helper(&v30, v13);
          goto LABEL_35;
        }

        if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 705, &v34, v13))
        {
          v16 = 0;
          LODWORD(__dst[59]) = arg_parse_int_helper(&v30, v13);
          goto LABEL_35;
        }

        if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 710, &v34, v13))
        {
          v16 = 0;
          LODWORD(__dst[60]) = arg_parse_int_helper(&v30, v13);
          goto LABEL_35;
        }

        if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 930, &v34, v13))
        {
          v16 = 0;
          HIDWORD(__dst[60]) = arg_parse_uint_helper(&v30, v13);
          goto LABEL_35;
        }

        if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 915, &v34, v13))
        {
          v16 = 0;
          LODWORD(__dst[65]) = arg_parse_uint_helper(&v30, v13);
          goto LABEL_35;
        }

        if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 875, &v34, v13))
        {
          v16 = 0;
          HIDWORD(__dst[65]) = arg_parse_uint_helper(&v30, v13);
          goto LABEL_35;
        }

        if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 715, &v34, v13))
        {
          v16 = 0;
          LODWORD(__dst[66]) = arg_parse_uint_helper(&v30, v13);
          goto LABEL_35;
        }

        if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 720, &v34, v13))
        {
          v16 = 0;
          HIDWORD(__dst[66]) = arg_parse_uint_helper(&v30, v13);
          goto LABEL_35;
        }

        if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 725, &v34, v13))
        {
          v16 = 0;
          LODWORD(__dst[67]) = arg_parse_uint_helper(&v30, v13);
          goto LABEL_35;
        }

        if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 730, &v34, v13))
        {
          v16 = 0;
          HIDWORD(__dst[67]) = arg_parse_uint_helper(&v30, v13);
          goto LABEL_35;
        }

        if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 775, &v34, v13))
        {
          v16 = 0;
          *&__dst[55] = arg_parse_int_helper(&v30, v13) / 10.0;
          goto LABEL_35;
        }

        if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 780, &v34, v13))
        {
          v16 = 0;
          HIDWORD(__dst[55]) = arg_parse_uint_helper(&v30, v13);
          goto LABEL_35;
        }

        if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 785, &v34, v13))
        {
          v16 = 0;
          LODWORD(__dst[56]) = arg_parse_uint_helper(&v30, v13);
          goto LABEL_35;
        }

        if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 870, &v34, v13))
        {
          v29 = arg_parse_int_helper(&v30, v13);
          if ((v29 - 3200) > 0xFFFFF31C)
          {
            v16 = 0;
            *(&__dst[61] + (v29 / 100)) = v29 - 100 * (((5243 * v29) >> 19) + (5243 * v29 < 0));
            goto LABEL_35;
          }

          snprintf(v13, 0xC8uLL, "Invalid operating point index: %d", v29 / 100);
          v20 = 8;
          v21 = v34;
          if (v34)
          {
            goto LABEL_64;
          }

          goto LABEL_65;
        }

        if (arg_match_helper(&v30, &unk_279EA3D98, &v34, v13))
        {
          v16 = 0;
          HIDWORD(__dst[56]) = arg_parse_uint_helper(&v30, v13);
          goto LABEL_35;
        }

        if (arg_match_helper(&v30, &unk_279EA3DC0, &v34, v13))
        {
          v16 = 0;
          LODWORD(__dst[57]) = arg_parse_uint_helper(&v30, v13);
          goto LABEL_35;
        }

        if (arg_match_helper(&v30, &unk_279EA3A00, &v34, v13))
        {
          v16 = 0;
          LODWORD(__dst[69]) = arg_parse_int_helper(&v30, v13);
          goto LABEL_35;
        }

        if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 935, &v34, v13))
        {
          v16 = 0;
          HIDWORD(__dst[69]) = arg_parse_int_helper(&v30, v13);
          goto LABEL_35;
        }

        if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 955, &v34, v13))
        {
          v28 = &__dst[71];
        }

        else
        {
          if (!arg_match_helper(&v30, &g_av1_codec_arg_defs + 970, &v34, v13))
          {
            if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 945, &v34, v13))
            {
              v16 = 0;
              LODWORD(__dst[70]) = arg_parse_int_helper(&v30, v13);
            }

            else if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 975, &v34, v13))
            {
              v16 = 0;
              LODWORD(__dst[73]) = arg_parse_uint_helper(&v30, v13);
            }

            else if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 980, &v34, v13))
            {
              v16 = 0;
              HIDWORD(__dst[73]) = arg_parse_int_helper(&v30, v13);
            }

            else if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 990, &v34, v13))
            {
              v16 = 0;
              HIDWORD(__dst[74]) = arg_parse_int_helper(&v30, v13);
            }

            else if (arg_match_helper(&v30, &g_av1_codec_arg_defs + 985, &v34, v13))
            {
              v16 = 0;
              LODWORD(__dst[74]) = arg_parse_int_helper(&v30, v13);
            }

            else if (arg_match_helper(&v30, &unk_279EA4770, &v34, v13))
            {
              v16 = 0;
              *(a1 + 428) = arg_parse_list_helper(&v30, a1 + 436, 64, v13);
            }

            else if (arg_match_helper(&v30, &unk_279EA4798, &v34, v13))
            {
              v16 = 0;
              *(a1 + 432) = arg_parse_list_helper(&v30, a1 + 692, 64, v13);
            }

            else
            {
              snprintf(v13, 0xC8uLL, "Cannot find aom option %s", a2);
              v16 = 1;
            }

            goto LABEL_35;
          }

          v28 = &__dst[72];
        }
      }

      v20 = allocate_and_set_string(a3, 0, v28, v13);
      v22 = v34;
      if (!v34)
      {
LABEL_82:
        if (!v20)
        {
          if (*v13)
          {
LABEL_38:
            *a1 = v13;
            return 8;
          }

          *a1 = 0;
          goto LABEL_85;
        }

        goto LABEL_65;
      }
    }

LABEL_81:
    free(*(v22 - 8));
    goto LABEL_82;
  }

  return result;
}

uint64_t validate_config_1(const char **a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 12);
  if ((v3 - 1) >> 16)
  {
    v7 = "g_w out of range [1..65536]";
  }

  else
  {
    v4 = *(a2 + 16);
    if ((v4 - 1) >> 16)
    {
      v7 = "g_h out of range [1..65536]";
    }

    else
    {
      v5 = *(a2 + 24);
      if (v5 > 0x10000)
      {
        v7 = "g_forced_max_frame_width out of range [..65536]";
      }

      else
      {
        v6 = *(a2 + 28);
        if (v6 >= 0x10001)
        {
          v7 = "g_forced_max_frame_height out of range [..65536]";
        }

        else if (v5 && v3 > v5)
        {
          v7 = "g_w out of range [..cfg->g_forced_max_frame_width]";
        }

        else if (v6 && v4 > v6)
        {
          v7 = "g_h out of range [..cfg->g_forced_max_frame_height]";
        }

        else
        {
          if (v5)
          {
            v3 = *(a2 + 24);
          }

          if (v6)
          {
            v4 = *(a2 + 28);
          }

          if (v4 * v3 <= 0x40000000)
          {
            if ((*(a2 + 44) - 1) >= 0x3B9ACA00)
            {
              v7 = "g_timebase.den out of range [1..1000000000]";
            }

            else if ((*(a2 + 40) - 1) >= 0x3B9ACA00)
            {
              v7 = "g_timebase.num out of range [1..1000000000]";
            }

            else
            {
              v10 = *(a2 + 8);
              if (v10 > 2)
              {
                v7 = "g_profile out of range [..MAX_PROFILES - 1]";
              }

              else if (*(a2 + 136) > 0x1E8480u)
              {
                v7 = "rc_target_bitrate out of range [..2000000]";
              }

              else
              {
                v11 = *(a2 + 144);
                if (v11 > 0x3F)
                {
                  v7 = "rc_max_quantizer out of range [..63]";
                }

                else if (*(a2 + 140) <= v11)
                {
                  v12 = *(a3 + 140);
                  if (v12 > 1)
                  {
                    v7 = "lossless expected BOOLean";
                  }

                  else if (*(a3 + 212) > 3u)
                  {
                    v7 = "aq_mode out of range [..AQ_MODE_COUNT - 1]";
                  }

                  else if (*(a3 + 213) > 5u)
                  {
                    v7 = "deltaq_mode out of range [..DELTA_Q_MODE_COUNT - 1]";
                  }

                  else if (*(a3 + 220) > 1)
                  {
                    v7 = "deltalf_mode out of range [..1]";
                  }

                  else if (*(a3 + 224) > 1u)
                  {
                    v7 = "frame_periodic_boost out of range [..1]";
                  }

                  else if (*a2 == 1)
                  {
                    if (*(a2 + 4) > 0x40u)
                    {
                      v7 = "g_threads out of range [..MAX_NUM_THREADS]";
                    }

                    else
                    {
                      v13 = *(a2 + 96);
                      if (v13 > 3)
                      {
                        v7 = "rc_end_usage out of range [AOM_VBR..AOM_Q]";
                      }

                      else if (*(a2 + 148) > 0x64u)
                      {
                        v7 = "rc_undershoot_pct out of range [..100]";
                      }

                      else if (*(a2 + 152) > 0x64u)
                      {
                        v7 = "rc_overshoot_pct out of range [..100]";
                      }

                      else if (*(a2 + 168) > 0x64u)
                      {
                        v7 = "rc_2pass_vbr_bias_pct out of range [..100]";
                      }

                      else if (*(a2 + 184) > 1u)
                      {
                        v7 = "kf_mode out of range [AOM_KF_DISABLED..AOM_KF_AUTO]";
                      }

                      else if (*(a2 + 60) > 0x64u)
                      {
                        v7 = "rc_dropframe_thresh out of range [..100]";
                      }

                      else
                      {
                        v14 = *(a2 + 52);
                        if (v14 > 3)
                        {
                          v7 = "g_pass out of range [AOM_RC_ONE_PASS..AOM_RC_THIRD_PASS]";
                        }

                        else if (*(a2 + 56) > 0x30u)
                        {
                          v7 = "g_lag_in_frames out of range [..MAX_LAG_BUFFERS]";
                        }

                        else
                        {
                          v15 = *(a3 + 64);
                          if (v15 > 0x2F)
                          {
                            v7 = "min_gf_interval out of range [..MAX_LAG_BUFFERS - 1]";
                          }

                          else
                          {
                            v16 = *(a3 + 68);
                            if (v16 > 0x2F)
                            {
                              v7 = "max_gf_interval out of range [..MAX_LAG_BUFFERS - 1]";
                            }

                            else
                            {
                              if (v15 <= 2)
                              {
                                v15 = 2;
                              }

                              if (v16 && v16 < v15)
                              {
                                v7 = "max_gf_interval out of range [AOMMAX(2, extra_cfg->min_gf_interval)..(MAX_LAG_BUFFERS - 1)]";
                              }

                              else
                              {
                                v17 = *(a3 + 72);
                                if (v17 > 5)
                                {
                                  v7 = "gf_min_pyr_height out of range [..5]";
                                }

                                else
                                {
                                  v18 = *(a3 + 76);
                                  if (v18 > 5)
                                  {
                                    v7 = "gf_max_pyr_height out of range [..5]";
                                  }

                                  else if (v17 <= v18)
                                  {
                                    if (*(a2 + 64) > 3u)
                                    {
                                      v7 = "rc_resize_mode out of range [..RESIZE_MODES - 1]";
                                    }

                                    else if ((*(a2 + 68) - 8) > 8)
                                    {
                                      v7 = "rc_resize_denominator out of range [SCALE_NUMERATOR..SCALE_NUMERATOR << 1]";
                                    }

                                    else if ((*(a2 + 72) - 8) > 8)
                                    {
                                      v7 = "rc_resize_kf_denominator out of range [SCALE_NUMERATOR..SCALE_NUMERATOR << 1]";
                                    }

                                    else if (*(a2 + 76) > 4u)
                                    {
                                      v7 = "rc_superres_mode out of range [..AOM_SUPERRES_AUTO]";
                                    }

                                    else if ((*(a2 + 80) - 8) > 8)
                                    {
                                      v7 = "rc_superres_denominator out of range [SCALE_NUMERATOR..SCALE_NUMERATOR << 1]";
                                    }

                                    else if ((*(a2 + 84) - 8) > 8)
                                    {
                                      v7 = "rc_superres_kf_denominator out of range [SCALE_NUMERATOR..SCALE_NUMERATOR << 1]";
                                    }

                                    else if ((*(a2 + 88) - 1) > 0x3E)
                                    {
                                      v7 = "rc_superres_qthresh out of range [1..63]";
                                    }

                                    else if ((*(a2 + 92) - 1) > 0x3E)
                                    {
                                      v7 = "rc_superres_kf_qthresh out of range [1..63]";
                                    }

                                    else if (*(a3 + 292) > 2u)
                                    {
                                      v7 = "cdf_update_mode out of range [..2]";
                                    }

                                    else if (*(a3 + 288) > 2u)
                                    {
                                      v7 = "motion_vector_unit_test out of range [..2]";
                                    }

                                    else if (*(a3 + 548) > 1u)
                                    {
                                      v7 = "sb_multipass_unit_test out of range [..1]";
                                    }

                                    else if (*(a3 + 544) > 1u)
                                    {
                                      v7 = "ext_tile_debug out of range [..1]";
                                    }

                                    else if (*(a3 + 8) > 1u)
                                    {
                                      v7 = "enable_auto_alt_ref out of range [..1]";
                                    }

                                    else if (*(a3 + 12) > 2u)
                                    {
                                      v7 = "enable_auto_bwd_ref out of range [..2]";
                                    }

                                    else if (*(a3 + 4) <= 0xBu)
                                    {
                                      if (*(a3 + 16) > 6u)
                                      {
                                        v7 = "noise_sensitivity out of range [..6]";
                                      }

                                      else if (*(a3 + 260) > 2u)
                                      {
                                        v7 = "superblock_size out of range [AOM_SUPERBLOCK_SIZE_64X64..AOM_SUPERBLOCK_SIZE_DYNAMIC]";
                                      }

                                      else
                                      {
                                        v19 = *(a2 + 204);
                                        if (v19 > 1)
                                        {
                                          v7 = "large_scale_tile out of range [..1]";
                                        }

                                        else if (*(a3 + 264) > 1u)
                                        {
                                          v7 = "single_tile_decoding out of range [..1]";
                                        }

                                        else if (*(a3 + 104) > 1u)
                                        {
                                          v7 = "enable_rate_guide_deltaq out of range [..1]";
                                        }

                                        else if (*(a3 + 28) > 1u)
                                        {
                                          v7 = "row_mt out of range [..1]";
                                        }

                                        else if (*(a3 + 32) > 1u)
                                        {
                                          v7 = "fp_mt out of range [..1]";
                                        }

                                        else if (*(a3 + 36) > 6u)
                                        {
                                          v7 = "tile_columns out of range [..6]";
                                        }

                                        else if (*(a3 + 40) > 6u)
                                        {
                                          v7 = "tile_rows out of range [..6]";
                                        }

                                        else if (*(a3 + 44) > 1u)
                                        {
                                          v7 = "auto_tiles out of range [..1]";
                                        }

                                        else
                                        {
                                          v20 = *(a2 + 208);
                                          if (v20 > 1)
                                          {
                                            v7 = "monochrome out of range [..1]";
                                          }

                                          else if (*(a3 + 212) && v19)
                                          {
                                            v7 = "Adaptive quantization are not supported in large scale tile coding.";
                                          }

                                          else
                                          {
                                            if (*(a3 + 20) > 7u)
                                            {
                                              v7 = "sharpness out of range [..7]";
                                              goto LABEL_12;
                                            }

                                            if (*(a3 + 56) > 0xFu)
                                            {
                                              v7 = "arnr_max_frames out of range [..15]";
                                              goto LABEL_12;
                                            }

                                            if (*(a3 + 60) > 6u)
                                            {
                                              v7 = "arnr_strength out of range [..6]";
                                              goto LABEL_12;
                                            }

                                            if (*(a3 + 124) > 0x3Fu)
                                            {
                                              v7 = "cq_level out of range [..63]";
                                              goto LABEL_12;
                                            }

                                            v21 = *(a2 + 32);
                                            if (v21 - 8 > 4)
                                            {
                                              v7 = "g_bit_depth out of range [AOM_BITS_8..AOM_BITS_12]";
                                              goto LABEL_12;
                                            }

                                            v22 = *(a2 + 36);
                                            if (v22 - 8 > 4)
                                            {
                                              v7 = "g_input_bit_depth out of range [8..12]";
                                              goto LABEL_12;
                                            }

                                            if (*(a3 + 228) > 2u)
                                            {
                                              v7 = "content out of range [AOM_CONTENT_DEFAULT..AOM_CONTENT_INVALID - 1]";
                                              goto LABEL_12;
                                            }

                                            if (v14 >= 2)
                                            {
                                              v23 = *(a2 + 104);
                                              if (!v23)
                                              {
                                                v7 = "rc_twopass_stats_in.buf not set.";
                                                goto LABEL_12;
                                              }

                                              v24 = *(a2 + 112);
                                              if (v24 % 0xE8)
                                              {
                                                v7 = "rc_twopass_stats_in.sz indicates truncated packet.";
                                                goto LABEL_12;
                                              }

                                              if (v24 < 0x1D0)
                                              {
                                                v7 = "rc_twopass_stats_in requires at least two packets.";
                                                goto LABEL_12;
                                              }

                                              if ((v24 / 0xE8) - 1 != (*(v23 + 232 * (v24 / 0xE8) - 56) + 0.5))
                                              {
                                                v7 = "rc_twopass_stats_in missing EOS stats packet";
                                                goto LABEL_12;
                                              }
                                            }

                                            v25 = *(a3 + 552);
                                            if (v25 != -1)
                                            {
                                              if (!v14 && v25 != 1)
                                              {
                                                v7 = "One pass encoding but passes != 1.";
                                                goto LABEL_12;
                                              }

                                              if (v14 > v25)
                                              {
                                                v7 = "Current pass is larger than total number of passes.";
                                                goto LABEL_12;
                                              }
                                            }

                                            if (v10 != 2)
                                            {
                                              if (v10 == 1 && v20)
                                              {
                                                v7 = "Monochrome is not supported in profile 1";
                                                goto LABEL_12;
                                              }

                                              if (v21 > 0xA)
                                              {
                                                v7 = "Codec bit-depth 12 not supported in profile < 2";
                                                goto LABEL_12;
                                              }

                                              if (v22 > 0xA)
                                              {
                                                v7 = "Source bit-depth 12 not supported in profile < 2";
                                                goto LABEL_12;
                                              }
                                            }

                                            v26 = *(a2 + 740);
                                            if (v13 == 3)
                                            {
                                              if (v26 >= 2)
                                              {
                                                v7 = "use_fixed_qp_offsets out of range [..1]";
                                                goto LABEL_12;
                                              }
                                            }

                                            else if (v26)
                                            {
                                              v7 = "--use_fixed_qp_offsets can only be used with --end-usage=q";
                                              goto LABEL_12;
                                            }

                                            if ((*(a3 + 232) - 1) > 0x15)
                                            {
                                              v7 = "color_primaries out of range [AOM_CICP_CP_BT_709..AOM_CICP_CP_EBU_3213]";
                                              goto LABEL_12;
                                            }

                                            if ((*(a3 + 236) - 1) > 0x11)
                                            {
                                              v7 = "transfer_characteristics out of range [AOM_CICP_TC_BT_709..AOM_CICP_TC_HLG]";
                                              goto LABEL_12;
                                            }

                                            if (*(a3 + 240) > 0xEu)
                                            {
                                              v7 = "matrix_coefficients out of range [AOM_CICP_MC_IDENTITY..AOM_CICP_MC_ICTCP]";
                                              goto LABEL_12;
                                            }

                                            if (*(a3 + 248) > 1u)
                                            {
                                              v7 = "color_range out of range [0..1]";
                                              goto LABEL_12;
                                            }

                                            v27 = *(a3 + 484);
                                            if (v14 | v13)
                                            {
                                              if (v27)
                                              {
                                                v7 = "VBR corpus complexity is supported only in the case of single pass VBR mode.";
                                                goto LABEL_12;
                                              }
                                            }

                                            else if (v27 >= 0x2711)
                                            {
                                              v7 = "vbr_corpus_complexity_lap out of range [..MAX_VBR_CORPUS_COMPLEXITY]";
                                              goto LABEL_12;
                                            }

                                            v28 = *(a3 + 80);
                                            if (v28 == 8)
                                            {
                                              v7 = "This error may be related to the wrong configuration options: try to set -DCONFIG_TUNE_BUTTERAUGLI=1 at the time CMake is run.";
                                            }

                                            else if ((v28 & 0xFFFFFFFC) == 4)
                                            {
                                              v7 = "This error may be related to the wrong configuration options: try to set -DCONFIG_TUNE_VMAF=1 at the time CMake is run.";
                                            }

                                            else
                                            {
                                              if (v28 > 0xA)
                                              {
                                                v7 = "tuning out of range [AOM_TUNE_PSNR..AOM_TUNE_SSIMULACRA2]";
                                                goto LABEL_12;
                                              }

                                              if (*(a3 + 120) > 1u)
                                              {
                                                v7 = "dist_metric out of range [AOM_DIST_METRIC_PSNR..AOM_DIST_METRIC_QM_PSNR]";
                                                goto LABEL_12;
                                              }

                                              if (*(a3 + 196) > 2u)
                                              {
                                                v7 = "timing_info_type out of range [AOM_TIMING_UNSPECIFIED..AOM_TIMING_DEC_MODEL]";
                                                goto LABEL_12;
                                              }

                                              if (*(a3 + 276) > 0x10u)
                                              {
                                                v7 = "film_grain_test_vector out of range [0..16]";
                                                goto LABEL_12;
                                              }

                                              if (v12)
                                              {
                                                if (*(a3 + 212))
                                                {
                                                  v7 = "Only --aq_mode=0 can be used with --lossless=1.";
                                                  goto LABEL_12;
                                                }

                                                if (*(a3 + 208))
                                                {
                                                  v7 = "Only --enable_chroma_deltaq=0 can be used with --lossless=1.";
                                                  goto LABEL_12;
                                                }
                                              }

                                              if ((*(a3 + 340) - 3) > 4)
                                              {
                                                v7 = "max_reference_frames out of range [3..7]";
                                              }

                                              else if (*(a3 + 344) > 1u)
                                              {
                                                v7 = "enable_reduced_reference_set out of range [0..1]";
                                              }

                                              else if (*(a3 + 452) > 1u)
                                              {
                                                v7 = "chroma_subsampling_x out of range [..1]";
                                              }

                                              else if (*(a3 + 456) > 1u)
                                              {
                                                v7 = "chroma_subsampling_y out of range [..1]";
                                              }

                                              else if (*(a3 + 160) > 3u)
                                              {
                                                v7 = "disable_trellis_quant out of range [..3]";
                                              }

                                              else if (*(a3 + 528) > 3u)
                                              {
                                                v7 = "coeff_cost_upd_freq out of range [0..3]";
                                              }

                                              else if (*(a3 + 532) > 3u)
                                              {
                                                v7 = "mode_cost_upd_freq out of range [0..3]";
                                              }

                                              else if (*(a3 + 536) > 3u)
                                              {
                                                v7 = "mv_cost_upd_freq out of range [0..3]";
                                              }

                                              else if (*(a3 + 540) > 3u)
                                              {
                                                v7 = "dv_cost_upd_freq out of range [0..3]";
                                              }

                                              else
                                              {
                                                v29 = *(a3 + 308);
                                                if (v29 - 4 > 0x7C)
                                                {
                                                  v7 = "min_partition_size out of range [4..128]";
                                                }

                                                else
                                                {
                                                  v30 = *(a3 + 312);
                                                  if (v30 - 4 > 0x7C)
                                                  {
                                                    v7 = "max_partition_size out of range [4..128]";
                                                  }

                                                  else if (v29 <= v30)
                                                  {
                                                    v31 = 0;
                                                    v7 = "Target sequence level index is invalid";
                                                    while (1)
                                                    {
                                                      v32 = *(a3 + 488 + v31);
                                                      if (v32 != 31)
                                                      {
                                                        v33 = v32 >= 0x1C || v32 - 12 >= 0xFFFFFFFE;
                                                        v34 = v33 || (v32 & 0xFA) == 2;
                                                        v35 = v34 || v32 - 28 >= 0xFFFFFFF8;
                                                        v36 = !v35;
                                                        if (v32 != 32 && !v36)
                                                        {
                                                          break;
                                                        }
                                                      }

                                                      if (++v31 == 32)
                                                      {
                                                        if (*(a3 + 216) > 0x3E8u)
                                                        {
                                                          v7 = "deltaq_strength out of range [0..1000]";
                                                          break;
                                                        }

                                                        if (*(a3 + 560) > 3u)
                                                        {
                                                          v7 = "loopfilter_control out of range [..3]";
                                                          break;
                                                        }

                                                        if (*(a3 + 564) > 1u)
                                                        {
                                                          v7 = "skip_postproc_filtering expected BOOLean";
                                                          break;
                                                        }

                                                        if (*(a3 + 144) > 3u)
                                                        {
                                                          v7 = "enable_cdef out of range [..3]";
                                                          break;
                                                        }

                                                        if (*(a3 + 584) > 1u)
                                                        {
                                                          v7 = "auto_intra_tools_off expected BOOLean";
                                                          break;
                                                        }

                                                        if (*(a3 + 588) > 1u)
                                                        {
                                                          v7 = "strict_level_conformance expected BOOLean";
                                                          break;
                                                        }

                                                        if (*(a3 + 596) > 1u)
                                                        {
                                                          v7 = "sb_qp_sweep expected BOOLean";
                                                          break;
                                                        }

                                                        v38 = *(a3 + 592);
                                                        if ((v38 + 1) > 6)
                                                        {
                                                          v7 = "kf_max_pyr_height out of range [-1..5]";
                                                          break;
                                                        }

                                                        v8 = 0;
                                                        if (v38 != -1 && v38 < v17)
                                                        {
                                                          v7 = "The value of kf-max-pyr-height should not be smaller than gf-min-pyr-height";
                                                          break;
                                                        }

                                                        return v8;
                                                      }
                                                    }
                                                  }

                                                  else
                                                  {
                                                    v7 = "min_partition_size out of range [..extra_cfg->max_partition_size]";
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }

                                    else
                                    {
                                      v7 = "cpu_used out of range [0..(cfg->g_usage == AOM_USAGE_REALTIME) ? 11 : 9]";
                                    }
                                  }

                                  else
                                  {
                                    v7 = "gf_min_pyr_height must be less than or equal to gf_max_pyramid_height";
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }

                  else
                  {
                    v7 = "g_usage out of range [AOM_USAGE_REALTIME..AOM_USAGE_REALTIME]";
                  }
                }

                else
                {
                  v7 = "rc_min_quantizer out of range [..cfg->rc_max_quantizer]";
                }
              }
            }
          }

          else
          {
            v7 = "max_frame_area out of range [..2^30]";
          }
        }
      }
    }
  }

LABEL_12:
  *a1 = v7;
  return 8;
}

uint64_t ctrl_copy_reference_1(uint64_t a1, unsigned int **a2)
{
  v27 = a2;
  v2 = *(*(a1 + 2896) + 352);
  if (*(v2 + 264600))
  {
    return 4;
  }

  v4 = v27++;
  v5 = *v4;
  if (!v5)
  {
    return 8;
  }

  v26 = 0u;
  memset(v25, 0, sizeof(v25));
  v24 = 0u;
  memset(v23, 0, sizeof(v23));
  v21 = 0u;
  v22 = 0u;
  v6 = *(v5 + 18);
  *(v23 + 8) = v6;
  v7 = *(v5 + 11);
  *(&v23[1] + 1) = v7;
  v8 = v5[12];
  v9 = v5[13];
  *(&v25[2] + 4) = *(v5 + 7);
  v10 = v5[10];
  v11 = v5[16];
  v12 = v5[17];
  LODWORD(v21) = v5[9];
  DWORD1(v21) = (v11 + v21) >> v11;
  DWORD2(v21) = v10;
  HIDWORD(v21) = (v12 + v10) >> v12;
  LODWORD(v22) = v8;
  DWORD1(v22) = (v11 + v8) >> v11;
  DWORD2(v22) = v9;
  HIDWORD(v22) = (v12 + v9) >> v12;
  v13 = *(v5 + 24);
  *&v23[0] = v13;
  *(v25 + 12) = *(v5 + 3);
  v14 = v5[6];
  DWORD1(v25[1]) = v5[5];
  BYTE8(v25[1]) = v14;
  *(&v25[1] + 12) = *(v5 + 7);
  if ((*(v5 + 9) & 8) != 0)
  {
    *(v23 + 8) = vshrq_n_u64(v6, 1uLL);
    *(&v23[1] + 1) = v7 >> 1;
    *&v23[0] = vshr_n_s32(v13, 1uLL);
    v16 = v23[0];
    v15 = 8;
  }

  else
  {
    v15 = 0;
    v16 = v13.i32[0];
  }

  v17 = v16 - ((v5[9] + 31) & 0xFFFFFFE0);
  LODWORD(v24) = (v17 / 2) & ~((v17 + (v17 >> 31)) >> 31);
  *&v25[0] = __PAIR64__(v12, v11);
  LODWORD(v26) = v15;
  *(&v26 + 1) = *(v5 + 20);
  v18 = *v5;
  if (*(*(v2 + 263736) + 77))
  {
    v19 = 1;
  }

  else
  {
    v19 = 3;
  }

  if (v18 <= 7)
  {
    v20 = *(v2 + 8 * v18 + 239472);
    if (v20)
    {
      aom_yv12_copy_frame_c((v20 + 1248), &v21, v19);
    }
  }

  return 0;
}

uint64_t ctrl_use_reference(uint64_t a1, _DWORD *a2)
{
  if (*a2 <= 127)
  {
    *(*(*(a1 + 2896) + 352) + 267136) = *a2;
  }

  return 0;
}

uint64_t ctrl_set_reference_1(uint64_t a1, unsigned int **a2)
{
  v26 = a2 + 1;
  v2 = *a2;
  if (!*a2)
  {
    return 8;
  }

  v25 = 0u;
  memset(v24, 0, sizeof(v24));
  v23 = 0u;
  memset(v22, 0, sizeof(v22));
  v20 = 0u;
  v21 = 0u;
  v3 = *(v2 + 18);
  *(v22 + 8) = v3;
  v4 = *(v2 + 11);
  *(&v22[1] + 1) = v4;
  v5 = v2[12];
  v6 = v2[13];
  *(&v24[2] + 4) = *(v2 + 7);
  v7 = v2[10];
  v8 = v2[16];
  v9 = v2[17];
  LODWORD(v20) = v2[9];
  DWORD1(v20) = (v8 + v20) >> v8;
  DWORD2(v20) = v7;
  HIDWORD(v20) = (v9 + v7) >> v9;
  LODWORD(v21) = v5;
  DWORD1(v21) = (v8 + v5) >> v8;
  DWORD2(v21) = v6;
  HIDWORD(v21) = (v9 + v6) >> v9;
  v10 = *(v2 + 24);
  *&v22[0] = v10;
  *(v24 + 12) = *(v2 + 3);
  v11 = v2[6];
  DWORD1(v24[1]) = v2[5];
  BYTE8(v24[1]) = v11;
  *(&v24[1] + 12) = *(v2 + 7);
  if ((*(v2 + 9) & 8) != 0)
  {
    *(v22 + 8) = vshrq_n_u64(v3, 1uLL);
    *(&v22[1] + 1) = v4 >> 1;
    *&v22[0] = vshr_n_s32(v10, 1uLL);
    v13 = v22[0];
    v12 = 8;
  }

  else
  {
    v12 = 0;
    v13 = v10.i32[0];
  }

  v15 = v13 - ((v2[9] + 31) & 0xFFFFFFE0);
  LODWORD(v23) = (v15 / 2) & ~((v15 + (v15 >> 31)) >> 31);
  *&v24[0] = __PAIR64__(v9, v8);
  LODWORD(v25) = v12;
  *(&v25 + 1) = *(v2 + 20);
  v16 = *(*(a1 + 2896) + 352);
  v17 = *v2;
  if (*(*(v16 + 263736) + 77))
  {
    v18 = 1;
  }

  else
  {
    v18 = 3;
  }

  if (v17 <= 7)
  {
    v19 = *(v16 + 8 * v17 + 239472);
    if (v19)
    {
      aom_yv12_copy_frame_c(&v20, v19 + 1248, v18);
    }
  }

  return 0;
}

uint64_t ctrl_set_active_map_0(uint64_t a1, unsigned __int8 ***a2)
{
  if (*a2)
  {
    return 8 * (av1_set_active_map(*(*(a1 + 2896) + 352), **a2, *(*a2 + 2), *(*a2 + 3)) != 0);
  }

  else
  {
    return 8;
  }
}

uint64_t ctrl_set_scale_mode_0(uint64_t a1, unsigned int **a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 8;
  }

  v4 = *(a1 + 2896);
  if (*(v4 + 376))
  {
    if (av1_set_internal_size(*(v4 + 352) + 264528, (*(v4 + 352) + 456868), *v2, v2[1]))
    {
      return 8;
    }
  }

  else if (av1_set_internal_size(a1 + 1744, (*(v4 + 352) + 456868), *v2, v2[1]))
  {
    return 8;
  }

  v11 = *(a1 + 2896);
  if (!*(v11 + 376))
  {
    return update_encoder_cfg(a1, v5, v6, v7, v8, v9);
  }

  av1_check_fpmt_config(v11, *(v11 + 352) + 264528);
  return 0;
}

uint64_t ctrl_set_spatial_layer_id(uint64_t a1, int *a2)
{
  if (*a2 > 3)
  {
    return 8;
  }

  result = 0;
  *(*(*(a1 + 2896) + 352) + 264512) = *a2;
  return result;
}

uint64_t ctrl_set_cpuused_0(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[1] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_enable_auto_alt_ref_0(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[2] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_enable_auto_bwd_ref(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[3] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_sharpness_0(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[5] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_static_thresh_0(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[6] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_row_mt_1(uint64_t a1, int *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  if (*a2 == *(a1 + 1140))
  {
    return 0;
  }

  memcpy(__dst, (a1 + 1112), sizeof(__dst));
  __dst[7] = v2;
  result = validate_config_1(a1, a1 + 208, __dst);
  if (!result)
  {
    memcpy((a1 + 1112), __dst, 0x258uLL);
    return update_encoder_cfg(a1, v5, v6, v7, v8, v9);
  }

  return result;
}

uint64_t ctrl_set_fp_mt(uint64_t a1, _DWORD *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  memcpy(__dst, (a1 + 1112), sizeof(__dst));
  __dst[8] = *a2;
  result = validate_config_1(a1, a1 + 208, __dst);
  if (result)
  {
    v4 = *(a1 + 2896);
    if (v4[82] == 1)
    {
      goto LABEL_3;
    }

LABEL_9:
    v7 = 1;
    goto LABEL_10;
  }

  memcpy((a1 + 1112), __dst, 0x258uLL);
  result = update_encoder_cfg(a1, v10, v11, v12, v13, v14);
  v4 = *(a1 + 2896);
  if (v4[82] != 1)
  {
    goto LABEL_9;
  }

LABEL_3:
  v5 = result;
  v6 = av1_compute_num_fp_contexts(v4, (*v4 + 264528));
  v7 = v6;
  if (v6 < 2)
  {
LABEL_7:
    result = v5;
LABEL_10:
    *(*(a1 + 2896) + 328) = v7;
    return result;
  }

  v8 = 8 * v6;
  v9 = 8;
  while (1)
  {
    result = av1_create_context_and_bufferpool(*(a1 + 2896), (*(a1 + 2896) + v9), (a1 + 46296), (a1 + 1744), 0, -1);
    if (result)
    {
      return result;
    }

    v9 += 8;
    if (v8 == v9)
    {
      goto LABEL_7;
    }
  }
}

uint64_t ctrl_set_tile_columns_0(uint64_t a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (*(a1 + 1156))
  {
    *a1 = "AUTO_TILES is set so AV1E_SET_TILE_COLUMNS should not be called.";
    return 8;
  }

  else
  {
    memcpy(__dst, (a1 + 1112), sizeof(__dst));
    if (*a2 == __dst[9])
    {
      return 0;
    }

    else
    {
      __dst[9] = *a2;
      result = validate_config_1(a1, a1 + 208, __dst);
      if (!result)
      {
        memcpy((a1 + 1112), __dst, 0x258uLL);
        return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
      }
    }
  }

  return result;
}

uint64_t ctrl_set_tile_rows_0(uint64_t a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (*(a1 + 1156))
  {
    *a1 = "AUTO_TILES is set so AV1E_SET_TILE_ROWS should not be called.";
    return 8;
  }

  else
  {
    memcpy(__dst, (a1 + 1112), sizeof(__dst));
    if (*a2 == __dst[10])
    {
      return 0;
    }

    else
    {
      __dst[10] = *a2;
      result = validate_config_1(a1, a1 + 208, __dst);
      if (!result)
      {
        memcpy((a1 + 1112), __dst, 0x258uLL);
        return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
      }
    }
  }

  return result;
}

uint64_t ctrl_set_enable_tpl_model(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  if (*a2)
  {
    *a1 = "TPL model can't be turned on in realtime only build.";
    return 8;
  }

  else
  {
    __dst[12] = 0;
    result = validate_config_1(a1, (a1 + 26), __dst);
    if (!result)
    {
      memcpy(a1 + 139, __dst, 0x258uLL);
      return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
    }
  }

  return result;
}

uint64_t ctrl_set_enable_keyframe_filtering(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[13] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_arnr_max_frames_0(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[14] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_arnr_strength_0(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[15] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_tuning_0(uint64_t a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, (a1 + 1112), sizeof(__dst));
  __dst[20] = *a2;
  if (__dst[20] == 10)
  {
    if (*(a1 + 208) != 2)
    {
      return 4;
    }

    __dst[41] = 1;
    __dst[5] = 7;
    __dst[36] = 3;
  }

  result = validate_config_1(a1, a1 + 208, __dst);
  if (!result)
  {
    memcpy((a1 + 1112), __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_cq_level_0(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[31] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_rc_max_intra_bitrate_pct_0(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[32] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_number_spatial_layers(uint64_t a1, int *a2, double a3, double a4, int8x16_t a5, double a6, int8x16_t a7)
{
  if (*a2 > 4)
  {
    return 8;
  }

  v8 = *(a1 + 2896);
  *(v8 + 50980) = *a2;
  if (*(v8 + 376))
  {
    return 0;
  }

  else
  {
    return update_encoder_cfg(a1, a3, a4, a5, a6, a7);
  }
}

uint64_t ctrl_set_rc_max_inter_bitrate_pct_0(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[33] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_rc_gf_cbr_boost_pct_1(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[34] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_lossless_0(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[35] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_enable_cdef(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[36] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_enable_restoration(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  if (*a2)
  {
    *a1 = "Restoration can't be turned on in realtime only build.";
    return 8;
  }

  else
  {
    __dst[37] = 0;
    result = validate_config_1(a1, (a1 + 26), __dst);
    if (!result)
    {
      memcpy(a1 + 139, __dst, 0x258uLL);
      return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
    }
  }

  return result;
}

uint64_t ctrl_set_force_video_mode(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[38] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_enable_obmc(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  if (*a2)
  {
    *a1 = "OBMC can't be enabled in realtime only build.";
    return 8;
  }

  else
  {
    __dst[39] = 0;
    result = validate_config_1(a1, (a1 + 26), __dst);
    if (!result)
    {
      memcpy(a1 + 139, __dst, 0x258uLL);
      return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
    }
  }

  return result;
}

uint64_t ctrl_set_disable_trellis_quant(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[40] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_enable_qm(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[41] = *a2;
  if (__dst[41])
  {
    *a1 = "QM can't be enabled with CONFIG_QUANT_MATRIX=0.";
    return 8;
  }

  else
  {
    result = validate_config_1(a1, (a1 + 26), __dst);
    if (!result)
    {
      memcpy(a1 + 139, __dst, 0x258uLL);
      return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
    }
  }

  return result;
}

uint64_t ctrl_set_qm_y(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[42] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_qm_u(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[43] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_qm_v(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[44] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_qm_min(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[45] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_qm_max(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[46] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_num_tg(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[47] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_mtu(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[48] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_timing_info_type(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[49] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_frame_parallel_decoding_mode_0(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[50] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_error_resilient_mode(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[67] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_s_frame_mode(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[68] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_enable_rect_partitions(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[74] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_enable_ab_partitions(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[75] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_enable_1to4_partitions(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[76] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_min_partition_size(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[77] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_max_partition_size(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[78] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_enable_dual_filter(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[51] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_enable_chroma_deltaq(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[52] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_enable_intra_edge_filter(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[79] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_enable_order_hint(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[80] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_enable_tx64(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[81] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_enable_flip_idtx(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[82] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_enable_rect_tx(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[83] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_enable_dist_wtd_comp(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[84] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_max_reference_frames(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[85] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_enable_reduced_reference_set(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[86] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_enable_ref_frame_mvs(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[87] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_allow_ref_frame_mvs(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[88] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_enable_masked_comp(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[89] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_enable_onesided_comp(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[90] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_enable_interintra_comp(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[91] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_enable_smooth_interintra(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[92] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_enable_diff_wtd_comp(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[93] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_enable_interinter_wedge(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[94] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_enable_interintra_wedge(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[95] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_enable_global_motion(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  if (*a2)
  {
    *a1 = "Global motion can't be enabled in realtime only build.";
    return 8;
  }

  else
  {
    __dst[96] = 0;
    result = validate_config_1(a1, (a1 + 26), __dst);
    if (!result)
    {
      memcpy(a1 + 139, __dst, 0x258uLL);
      return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
    }
  }

  return result;
}

uint64_t ctrl_set_enable_warped_motion(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  if (*a2)
  {
    *a1 = "Warped motion can't be enabled in realtime only build.";
    return 8;
  }

  else
  {
    __dst[97] = 0;
    result = validate_config_1(a1, (a1 + 26), __dst);
    if (!result)
    {
      memcpy(a1 + 139, __dst, 0x258uLL);
      return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
    }
  }

  return result;
}

uint64_t ctrl_set_allow_warped_motion(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[98] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_enable_filter_intra(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[99] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_enable_smooth_intra(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[100] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_enable_paeth_intra(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[101] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_enable_cfl_intra(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[102] = *a2;
  if (__dst[102])
  {
    *a1 = "cfl can't be turned on in realtime only build.";
    return 8;
  }

  else
  {
    result = validate_config_1(a1, (a1 + 26), __dst);
    if (!result)
    {
      memcpy(a1 + 139, __dst, 0x258uLL);
      return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
    }
  }

  return result;
}

uint64_t ctrl_set_enable_directional_intra(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[103] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_enable_diagonal_intra(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[104] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_enable_superres(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[105] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_enable_overlay(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[106] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_enable_palette(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[107] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_enable_intrabc(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[108] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_enable_angle_delta(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[109] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_aq_mode_0(uint64_t a1, int *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  memcpy(__dst, (a1 + 1112), sizeof(__dst));
  v3 = *a2;
  if (*(*(*(a1 + 2896) + 352) + 388696))
  {
    LOBYTE(v3) = 0;
  }

  __dst[212] = v3;
  result = validate_config_1(a1, a1 + 208, __dst);
  if (!result)
  {
    memcpy((a1 + 1112), __dst, 0x258uLL);
    return update_encoder_cfg(a1, v5, v6, v7, v8, v9);
  }

  return result;
}

uint64_t ctrl_set_reduced_tx_type_set(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[115] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_intra_dct_only(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[116] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_inter_dct_only(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[117] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_intra_default_tx_only(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[118] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_coeff_cost_upd_freq(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[132] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_mode_cost_upd_freq(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[133] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_mv_cost_upd_freq(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[134] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_deltaq_mode(const char **a1, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  if (*a2)
  {
    *a1 = "Delta Q mode can't be enabled in realtime only build.";
    return 8;
  }

  else
  {
    __dst[213] = 0;
    result = validate_config_1(a1, (a1 + 26), __dst);
    if (!result)
    {
      memcpy(a1 + 139, __dst, 0x258uLL);
      return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
    }
  }

  return result;
}

uint64_t ctrl_set_deltaq_strength(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[54] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_deltalf_mode(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[55] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_frame_periodic_boost_0(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[56] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_tune_content_0(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[57] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_cdf_update_mode(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[73] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_color_primaries(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[58] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_transfer_characteristics(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[59] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_matrix_coefficients(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[60] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_chroma_sample_position(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[61] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_color_range_0(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[62] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_noise_sensitivity_0(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[4] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_min_gf_interval_0(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[16] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_max_gf_interval_0(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[17] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_gf_min_pyr_height(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[18] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_gf_max_pyr_height(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[19] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_render_size_0(const char **a1, _DWORD **a2)
{
  v12 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  v3 = *a2;
  __dst[63] = **a2;
  __dst[64] = v3[1];
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v5, v6, v7, v8, v9);
  }

  return result;
}

uint64_t ctrl_set_superblock_size(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[65] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_single_tile_decoding(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[66] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_vmaf_model_path(uint64_t a1, char **a2)
{
  __dst[75] = *MEMORY[0x277D85DE8];
  memcpy(__dst, (a1 + 1112), 0x258uLL);
  result = allocate_and_set_string(*a2, "/usr/local/share/model/vmaf_v0.6.1.json", &__dst[11], (*(a1 + 2896) + 50992));
  if (!result)
  {
    result = validate_config_1(a1, a1 + 208, __dst);
    if (!result)
    {
      memcpy((a1 + 1112), __dst, 0x258uLL);
      return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
    }
  }

  return result;
}

uint64_t ctrl_set_partition_info_path(uint64_t a1, char **a2)
{
  __dst[75] = *MEMORY[0x277D85DE8];
  memcpy(__dst, (a1 + 1112), 0x258uLL);
  result = allocate_and_set_string(*a2, ".", &__dst[12], (*(a1 + 2896) + 50992));
  if (!result)
  {
    result = validate_config_1(a1, a1 + 208, __dst);
    if (!result)
    {
      memcpy((a1 + 1112), __dst, 0x258uLL);
      return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
    }
  }

  return result;
}

uint64_t ctrl_enable_rate_guide_deltaq(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[26] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_rate_distribution_info(uint64_t a1, char **a2)
{
  __dst[75] = *MEMORY[0x277D85DE8];
  memcpy(__dst, (a1 + 1112), 0x258uLL);
  result = allocate_and_set_string(*a2, "./rate_map.txt", &__dst[14], (*(a1 + 2896) + 50992));
  if (!result)
  {
    result = validate_config_1(a1, a1 + 208, __dst);
    if (!result)
    {
      memcpy((a1 + 1112), __dst, 0x258uLL);
      return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
    }
  }

  return result;
}

uint64_t ctrl_set_film_grain_test_vector(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[69] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_film_grain_table(const char **a1, void *a2)
{
  __dst[75] = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, 0x258uLL);
  if (*a2)
  {
    *a1 = "film_grain removed from realtime only build.";
    return 8;
  }

  else
  {
    __dst[35] = 0;
    result = validate_config_1(a1, (a1 + 26), __dst);
    if (!result)
    {
      memcpy(a1 + 139, __dst, 0x258uLL);
      return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
    }
  }

  return result;
}

uint64_t ctrl_set_denoise_noise_level(const char **a1, int *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[110] = *a2 / 10.0;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_denoise_block_size(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[111] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_enable_dnl_denoising(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[112] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_enable_motion_vector_unit_test_0(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[72] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_enable_ext_tile_debug(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[136] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_target_seq_level_idx(uint64_t a1, _DWORD *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  memcpy(__dst, (a1 + 1112), sizeof(__dst));
  v3 = *a2 / 100;
  if ((*a2 - 3200) > 0xFFFFF31C)
  {
    __dst[v3 + 488] = *a2 - 100 * (((5243 * *a2) >> 19) + (5243 * *a2 < 0));
    result = validate_config_1(a1, a1 + 208, __dst);
    if (!result)
    {
      memcpy((a1 + 1112), __dst, 0x258uLL);
      return update_encoder_cfg(a1, v6, v7, v8, v9, v10);
    }
  }

  else
  {
    v4 = (*(a1 + 2896) + 50992);
    snprintf(v4, 0xC8uLL, "Invalid operating point index: %d", v3);
    *a1 = v4;
    return 8;
  }

  return result;
}

uint64_t ctrl_set_tier_mask(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[130] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_min_cr(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[131] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_layer_id(uint64_t a1, int **a2)
{
  v2 = *(*(a1 + 2896) + 352);
  v3 = v2 + 159282;
  v2 += 66127;
  v5 = **a2;
  v4 = (*a2)[1];
  *v2 = v4;
  v2[1] = v5;
  *v3 = v5;
  v3[1] = v4;
  return 0;
}

uint64_t ctrl_set_svc_params(uint64_t a1, unsigned int **a2, double a3, double a4, int8x16_t a5, __n128 a6, int8x16_t a7)
{
  v7 = *(a1 + 2896);
  v8 = *(v7 + 352);
  v9 = *a2;
  v11 = **a2;
  v10 = (*a2)[1];
  *(v7 + 50980) = v11;
  *(v7 + 50976) = v10;
  *(v8 + 637136) = v11;
  *(v8 + 637140) = v10;
  if (v11 <= 1 && v10 < 2)
  {
    if (*(v7 + 376))
    {
      goto LABEL_35;
    }

    return update_encoder_cfg(a1, a3, a4, a5, a6.n128_f64[0], a7);
  }

  *(v7 + 50968) = 1;
  v13 = v10 * v11;
  if ((v10 * v11) < 1)
  {
LABEL_12:
    v18 = *(v8 + 637456);
    v79 = a1;
    if (v18)
    {
      if (*(v8 + 637464) >= v13)
      {
        goto LABEL_19;
      }

      free(*(v18 - 8));
    }

    *(v8 + 637464) = 0;
    if (v13 > 0x9F2A1 || (v19 = malloc_type_malloc(13176 * v13 + 23, 0x5F484EBFuLL)) == 0 || (v18 = (v19 + 23) & 0xFFFFFFFFFFFFFFF0, *(v18 - 8) = v19, !v18))
    {
      *(v8 + 637456) = 0;
      return 2;
    }

    bzero(((v19 + 23) & 0xFFFFFFFFFFFFFFF0), 13176 * v13);
    *(v8 + 637456) = v18;
    *(v8 + 637464) = v13;
    v11 = *(v7 + 50980);
    a1 = v79;
LABEL_19:
    if (v11)
    {
      v20 = *(v7 + 50976);
      if (!v20)
      {
        v23 = 0;
        v45 = *(v7 + 376);
        *(v8 + 264664) = 0;
        *(a1 + 1880) = 0;
        if (v45)
        {
          goto LABEL_40;
        }

        goto LABEL_43;
      }

      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = v9 + 2;
      v25 = v9 + 34;
      v26 = v9 + 66;
      v27 = v9 + 70;
      v28 = v9 + 74;
      v29 = (v9 + 106);
      do
      {
        v30 = v21;
        v31 = v29;
        v32 = v20;
        do
        {
          v33 = v18 + 13176 * v30;
          *(v33 + 13124) = v24[v30];
          *(v33 + 13128) = v25[v30];
          v34 = v26[v22];
          if (v34 <= 1)
          {
            v34 = 1;
          }

          *(v33 + 13088) = v34;
          v35 = v27[v22];
          if (v35 <= 1)
          {
            v35 = 1;
          }

          *(v33 + 13092) = v35;
          v36 = v28[v30];
          LODWORD(v37) = 1000 * v36;
          if (v36 > 2147483)
          {
            LODWORD(v37) = 0x7FFFFFFF;
          }

          v37 = v37;
          v38 = *v31++;
          *(v33 + 13080) = v37;
          *(v33 + 13072) = v38;
          if (--v32)
          {
            v37 = 0;
          }

          v23 += v37;
          ++v30;
        }

        while (v32);
        ++v22;
        v21 += v20;
      }

      while (v22 != v11);
    }

    else
    {
      v23 = 0;
    }

    v39 = *(v7 + 376);
    *(v8 + 264664) = v23;
    *(a1 + 1880) = v23;
    if (v39)
    {
LABEL_40:
      v40 = *(v8 + 264648);
      v41 = *(v8 + 264656);
      v42 = *(v8 + 264664);
      *(v7 + 44136) = *(v8 + 264640) * v42 / 1000;
      if (v40)
      {
        v43 = (v40 * v42 * 0x20C49BA5E353F7CFLL) >> 64;
        v44 = (v43 >> 7) + (v43 >> 63);
      }

      else
      {
        v44 = v42 / 8;
      }

      v48 = v41 * v42 / 1000;
      v49 = v42 / 8;
      if (v41)
      {
        v50 = v48;
      }

      else
      {
        v50 = v49;
      }

      *(v7 + 44144) = v44;
      *(v7 + 44152) = v50;
      v51 = *(v7 + 44368);
      if (v51 >= v50)
      {
        v51 = v50;
      }

      *(v7 + 44368) = v51;
      if (*(v7 + 44336) < v50)
      {
        v50 = *(v7 + 44336);
      }

      *(v7 + 44336) = v50;
      av1_update_layer_context_change_config(v8, v23, a3, a4, *a5.i64, a6);
      v52 = *(v8 + 637136);
      a1 = v79;
      if (*(v8 + 239072) <= v52)
      {
        goto LABEL_35;
      }

      if (!*(*v8 + 50968))
      {
        v75 = *(v8 + 388516);
        v76 = *(v8 + 388528) >> 1;
        if (v75 / 3 > v76 || v75 < v76)
        {
          v77 = (*v8 + 44144);
          *(v8 + 388580) = 0;
          v78 = *v77;
          v77[28] = *v77;
          v77[24] = v78;
        }

        goto LABEL_35;
      }

      if (v52 < 1 || (v53 = *(v8 + 637140), v53 < 1))
      {
LABEL_35:
        av1_check_fpmt_config(*(a1 + 2896), *(*(a1 + 2896) + 352) + 264528);
        return 0;
      }

      v54 = 0;
      v55 = 0;
      v56 = *(v8 + 637456);
      while (1)
      {
        v57 = v56 + 13176 * v53 + 13176 * v55 * v53;
        v58 = *(v57 - 13052);
        v59 = *(v57 - 13040);
        if (v58)
        {
          v60 = v59 == 0;
        }

        else
        {
          v60 = 1;
        }

        if (v60)
        {
          v61 = v56 + 13176 * v55 * v53;
          v58 = *(v61 + 124);
          v59 = *(v61 + 136);
        }

        v62 = v59 >> 1;
        if (v58 / 3 <= v62 && v58 >= v62)
        {
          goto LABEL_59;
        }

        v64 = 13176 * v54;
        v65 = v56 + 13364;
        v66 = v56;
        v67 = v53 & 0x7FFFFFFE;
        if (v53 == 1)
        {
          v68 = 0;
        }

        else
        {
          do
          {
            v69 = (v66 + v64);
            *(v69 + 188) = 0;
            *(v65 + 13176 * v54) = 0;
            v70 = *(v66 + v64 + 8832);
            v71 = *(v66 + v64 + 22008);
            v69[1132] = v70;
            v69[2779] = v71;
            v69[1128] = v70;
            v69[2775] = v71;
            v66 += 26352;
            v65 += 26352;
            v67 -= 2;
          }

          while (v67);
          v68 = v53 & 0x7FFFFFFE;
          if (v68 == v53)
          {
            goto LABEL_59;
          }
        }

        v72 = v53 - v68;
        v73 = v56 + v64 + 13176 * v68;
        do
        {
          *(v73 + 188) = 0;
          *(v73 + 192) = 0;
          v74 = *(v73 + 8832);
          *(v73 + 9056) = v74;
          *(v73 + 9024) = v74;
          v73 += 13176;
          --v72;
        }

        while (v72);
LABEL_59:
        ++v55;
        v54 += v53;
        if (v55 == v52)
        {
          goto LABEL_35;
        }
      }
    }

LABEL_43:
    *(v7 + 49136) = *(v7 + 50976) * v11 - 1;
    v46 = a1;
    av1_init_layer_context(v8);
    a1 = v46;
    return update_encoder_cfg(a1, a3, a4, a5, a6.n128_f64[0], a7);
  }

  v14 = (v9 + 34);
  v15 = v10 * v11;
  v16 = 8;
  while (1)
  {
    v17 = *(v14 - 32);
    if (v17 > 63)
    {
      return 8;
    }

    if (*v14 < 0 || *v14 > v17)
    {
      return v16;
    }

    ++v14;
    if (!--v15)
    {
      goto LABEL_12;
    }
  }
}

uint64_t ctrl_set_svc_ref_frame_config_0(uint64_t a1, _DWORD **a2)
{
  v2 = *(*(a1 + 2896) + 352);
  v3 = *a2;
  v4 = (*v2 + 81920);
  *(*v2 + 84960) = 1;
  if (*v3 > 1u)
  {
    return 8;
  }

  if (v3[7] > 7u)
  {
    return 8;
  }

  v4[738] = *v3;
  v4[745] = v3[7];
  v5 = v3[1];
  if (v5 > 1)
  {
    return 8;
  }

  if (v3[8] > 7u)
  {
    return 8;
  }

  v4[739] = v5;
  v4[746] = v3[8];
  v6 = v3[2];
  if (v6 > 1)
  {
    return 8;
  }

  if (v3[9] > 7u)
  {
    return 8;
  }

  v4[740] = v6;
  v4[747] = v3[9];
  v7 = v3[3];
  if (v7 > 1)
  {
    return 8;
  }

  if (v3[10] > 7u)
  {
    return 8;
  }

  v4[741] = v7;
  v4[748] = v3[10];
  v8 = v3[4];
  if (v8 > 1)
  {
    return 8;
  }

  if (v3[11] > 7u)
  {
    return 8;
  }

  v4[742] = v8;
  v4[749] = v3[11];
  v9 = v3[5];
  if (v9 > 1)
  {
    return 8;
  }

  if (v3[12] > 7u)
  {
    return 8;
  }

  v4[743] = v9;
  v4[750] = v3[12];
  v10 = v3[6];
  if (v10 > 1)
  {
    return 8;
  }

  if (v3[13] > 7u)
  {
    return 8;
  }

  v4[744] = v10;
  v4[751] = v3[13];
  v11 = v3[14];
  if (v11 > 1)
  {
    return 8;
  }

  v4[752] = v11;
  v12 = v3[15];
  if (v12 > 1)
  {
    return 8;
  }

  v4[753] = v12;
  v13 = v3[16];
  if (v13 > 1)
  {
    return 8;
  }

  v4[754] = v13;
  v14 = v3[17];
  if (v14 > 1)
  {
    return 8;
  }

  v4[755] = v14;
  v15 = v3[18];
  if (v15 > 1)
  {
    return 8;
  }

  v4[756] = v15;
  v16 = v3[19];
  if (v16 > 1)
  {
    return 8;
  }

  v4[757] = v16;
  v17 = v3[20];
  if (v17 > 1)
  {
    return 8;
  }

  v4[758] = v17;
  v18 = v3[21];
  if (v18 > 1)
  {
    return 8;
  }

  result = 0;
  v4[759] = v18;
  *(v2 + 637148) = 1;
  return result;
}

uint64_t ctrl_set_svc_ref_frame_comp_pred(uint64_t a1, _DWORD **a2)
{
  v2 = *a2;
  v3 = (**(*(a1 + 2896) + 352) + 81920);
  v3[762] = **a2;
  v3[763] = v2[1];
  v3[764] = v2[2];
  return 0;
}

uint64_t ctrl_set_vbr_corpus_complexity_lap(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[121] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_enable_sb_multipass_unit_test(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[137] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_enable_sb_qp_sweep(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[149] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_dv_cost_upd_freq(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[135] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_external_partition(uint64_t a1, _OWORD **a2)
{
  v2 = *(*(a1 + 2896) + 352);
  v3 = (v2 + 637856);
  v4 = *(*(v2 + 263736) + 28);
  v5 = *(*a2 + 6);
  v7 = (*a2)[1];
  v6 = (*a2)[2];
  *(v2 + 637880) = **a2;
  *(v2 + 637896) = v7;
  *(v2 + 637912) = v6;
  *(v2 + 637928) = v5;
  *(v2 + 637864) = v4;
  result = (*(v2 + 637880))();
  if (result != 1)
  {
    if (result == 2)
    {
      v9 = 0;
      v3[1] = 1;
    }

    else
    {
      v9 = 1;
    }

    result = 0;
    *v3 = v9;
  }

  return result;
}

uint64_t ctrl_set_enable_tx_size_search(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[119] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_loopfilter_control(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[140] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_skip_postproc_filtering(uint64_t a1, _DWORD *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1 + 208;
  if (*(a1 + 208) != 2)
  {
    return 4;
  }

  memcpy(__dst, (a1 + 1112), sizeof(__dst));
  __dst[141] = *a2;
  result = validate_config_1(a1, v2, __dst);
  if (!result)
  {
    memcpy((a1 + 1112), __dst, 0x258uLL);
    return update_encoder_cfg(a1, v5, v6, v7, v8, v9);
  }

  return result;
}

uint64_t ctrl_set_auto_intra_tools_off(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[146] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_quantizer_one_pass_0(uint64_t a1, int *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  if (*a2 > 0x3F)
  {
    return 8;
  }

  memcpy(__dst, (a1 + 1112), sizeof(__dst));
  *(a1 + 352) = v2;
  *(a1 + 348) = v2;
  __dst[212] = 0;
  *(*(*(a1 + 2896) + 352) + 388696) = 1;
  result = validate_config_1(a1, a1 + 208, __dst);
  if (!result)
  {
    memcpy((a1 + 1112), __dst, 0x258uLL);
    return update_encoder_cfg(a1, v5, v6, v7, v8, v9);
  }

  return result;
}

uint64_t ctrl_set_bitrate_one_pass_cbr(uint64_t a1, int *a2)
{
  v2 = *(a1 + 2896);
  v3 = *(v2 + 352);
  if (*(v3 + 265608) || *(*v3 + 23172) || *(v3 + 265632) != 1 || *(v3 + 264832) || *(v3 + 264716) != 1 || *(*v3 + 50968) || *(v2 + 328) != 1 || *(v2 + 360))
  {
    return 8;
  }

  v5 = (v2 + 40960);
  v6 = *a2;
  *(a1 + 344) = *a2;
  v7 = 1000 * v6;
  *(v3 + 264664) = v7;
  v8 = *(v3 + 264648);
  v9 = *(v3 + 264656);
  v5[397] = *(v3 + 264640) * v7 / 1000;
  v10 = v8 * v7 / 1000;
  v11 = v7 >> 3;
  if (!v8)
  {
    v10 = v7 >> 3;
  }

  v5[398] = v10;
  v12 = (v9 * v7 * 0x20C49BA5E353F7CFLL) >> 64;
  v13 = (v12 >> 7) + (v12 >> 63);
  if (v9)
  {
    v14 = v13;
  }

  else
  {
    v14 = v11;
  }

  v5[399] = v14;
  v15 = v5[426];
  if (v15 >= v14)
  {
    v15 = v14;
  }

  v5[426] = v15;
  if (v5[422] < v14)
  {
    v14 = v5[422];
  }

  v5[422] = v14;
  v16 = *(v3 + 388704);
  if (v16 < 0.1)
  {
    v16 = 30.0;
  }

  *(v3 + 388704) = v16;
  av1_rc_update_framerate(v3, *(v3 + 239112), *(v3 + 239116));
  if (*(v3 + 239072) <= *(v3 + 637136))
  {
    return 0;
  }

  if (*(*v3 + 50968))
  {
    av1_svc_check_reset_layer_rc_flag(v3);
    return 0;
  }

  v17 = *(v3 + 388516);
  v18 = *(v3 + 388528) >> 1;
  if (v17 / 3 <= v18 && v17 >= v18)
  {
    return 0;
  }

  result = 0;
  v19 = (*v3 + 44144);
  *(v3 + 388580) = 0;
  v20 = *v19;
  v19[28] = *v19;
  v19[24] = v20;
  return result;
}

uint64_t ctrl_set_max_consec_frame_drop_cbr(uint64_t a1, _DWORD *a2)
{
  v2 = *(*(a1 + 2896) + 352);
  if ((*a2 & 0x80000000) != 0)
  {
    return 8;
  }

  result = 0;
  v4 = v2 + 385024;
  *(v4 + 3532) = *a2;
  *(v4 + 3528) = 0;
  return result;
}

uint64_t ctrl_set_svc_frame_drop_mode(uint64_t a1, _DWORD *a2)
{
  v2 = *a2 > 1u;
  *(*(*(a1 + 2896) + 352) + 637496) = *a2;
  return (8 * v2);
}

uint64_t ctrl_set_auto_tiles(uint64_t a1, int *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  if (*a2 == *(a1 + 1156))
  {
    return 0;
  }

  memcpy(__dst, (a1 + 1112), sizeof(__dst));
  __dst[11] = v2;
  result = validate_config_1(a1, a1 + 208, __dst);
  if (!result)
  {
    memcpy((a1 + 1112), __dst, 0x258uLL);
    return update_encoder_cfg(a1, v5, v6, v7, v8, v9);
  }

  return result;
}

uint64_t ctrl_set_postencode_drop_rtc(uint64_t a1, _DWORD *a2)
{
  v2 = *(*(a1 + 2896) + 352);
  if (*a2 > 1u)
  {
    return 8;
  }

  result = 0;
  *(v2 + 388564) = *a2;
  return result;
}

uint64_t ctrl_set_max_consec_frame_drop_ms_cbr(uint64_t a1, _DWORD *a2)
{
  v2 = *(*(a1 + 2896) + 352);
  if ((*a2 & 0x80000000) != 0)
  {
    return 8;
  }

  result = 0;
  *(a1 + 1948) = *a2;
  *(v2 + 388552) = 0;
  return result;
}

uint64_t ctrl_get_quantizer_1(uint64_t a1, void *a2)
{
  if (!*a2)
  {
    return 8;
  }

  result = 0;
  **a2 = *(*(*(a1 + 2896) + 352) + 239672);
  return result;
}

uint64_t ctrl_get_quantizer64_0(uint64_t a1, void *a2)
{
  if (!*a2)
  {
    return 8;
  }

  v2 = 0;
  while (quantizer_to_qindex_0[v2] < *(*(*(a1 + 2896) + 352) + 239672))
  {
    if (++v2 == 64)
    {
      LODWORD(v2) = 63;
      break;
    }
  }

  result = 0;
  **a2 = v2;
  return result;
}

uint64_t ctrl_get_loopfilter_level_0(uint64_t a1, void *a2)
{
  if (!*a2)
  {
    return 8;
  }

  result = 0;
  **a2 = *(*(*(a1 + 2896) + 352) + 262080);
  return result;
}

uint64_t ctrl_get_reference_1(uint64_t a1, unsigned int **a2)
{
  v2 = *(*(a1 + 2896) + 352);
  if (*(v2 + 264600))
  {
    return 4;
  }

  v4 = *a2;
  if (!*a2)
  {
    return 8;
  }

  v5 = *v4;
  if (v5 > 7)
  {
    return 1;
  }

  v6 = *(v2 + 8 * v5 + 239472);
  if (!v6)
  {
    return 1;
  }

  v7 = *(v6 + 1380);
  if (v7)
  {
    v4[2] = 258;
    v8 = *(v6 + 1376);
    v9 = 12;
    v10 = 2306;
  }

  else
  {
    v8 = *(v6 + 1376);
    if (v8)
    {
      v4[2] = 261;
      v9 = 16;
      v10 = 2309;
    }

    else
    {
      v4[2] = 262;
      v9 = 24;
      v10 = 2310;
    }
  }

  *(v4 + 3) = *(v6 + 1388);
  v11 = *(v6 + 1400);
  v4[5] = *(v6 + 1396);
  v4[6] = v11;
  *(v4 + 7) = *(v6 + 1404);
  v4[11] = 8;
  v4[9] = *(v6 + 1248);
  v4[10] = *(v6 + 1256);
  v4[12] = *(v6 + 1264);
  v4[13] = *(v6 + 1272);
  *(v4 + 7) = *(v6 + 1412);
  v4[16] = v8;
  v4[17] = v7;
  *(v4 + 9) = *(v6 + 1288);
  *(v4 + 10) = *(v6 + 1296);
  *(v4 + 11) = *(v6 + 1304);
  v4[24] = *(v6 + 1280);
  v12 = *(v6 + 1284);
  v4[25] = v12;
  v4[26] = v12;
  if ((*(v6 + 1424) & 8) != 0)
  {
    v9 *= 2;
    v4[2] = v10;
    v4[11] = *(v6 + 1384);
    *(v4 + 9) = 2 * *(v6 + 1288);
    *(v4 + 10) = 2 * *(v6 + 1296);
    *(v4 + 11) = 2 * *(v6 + 1304);
    v4[24] = 2 * *(v6 + 1280);
    v4[25] = 2 * *(v6 + 1284);
    v4[26] = 2 * *(v6 + 1284);
  }

  result = 0;
  v4[30] = v9;
  v13 = *(v6 + 1344);
  *(v4 + 17) = 0;
  *(v4 + 18) = v13;
  *(v4 + 38) = 0u;
  *(v4 + 14) = *(v6 + 1368);
  return result;
}

uint64_t ctrl_get_active_map_0(uint64_t a1, char ***a2)
{
  if (*a2)
  {
    return 8 * (av1_get_active_map(*(*(a1 + 2896) + 352), **a2, *(*a2 + 2), *(*a2 + 3)) != 0);
  }

  else
  {
    return 8;
  }
}

uint64_t ctrl_get_new_frame_image(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 8;
  }

  v3 = *(*(*(a1 + 2896) + 352) + 267120);
  if (!v3 || (*(*(*(a1 + 2896) + 352) + 264600) & 1) != 0)
  {
    return 1;
  }

  v5 = (v3 + 1388);
  v6 = *(v3 + 1248);
  v7 = *(v3 + 1256);
  v8 = *(v3 + 1264);
  v9 = *(v3 + 1272);
  v10 = *(v3 + 1280);
  v11 = *(v3 + 1284);
  v12 = *(v3 + 1288);
  v13 = *(v3 + 1296);
  v14 = *(v3 + 1344);
  v15 = *(v3 + 1368);
  v16 = *(v3 + 1376);
  v17 = *(v3 + 1384);
  v18 = *(v3 + 1396);
  v19 = *(v3 + 1400);
  v20 = *(v3 + 1424);
  v21 = HIDWORD(v16);
  v22 = v5[2];
  *&v23 = v5[3];
  *(&v23 + 1) = v16;
  v24 = v16;
  if (v16)
  {
    v25 = 261;
  }

  else
  {
    v25 = 262;
  }

  if (v16)
  {
    v26 = 16;
  }

  else
  {
    v26 = 24;
  }

  if (HIDWORD(v16))
  {
    v27 = 258;
  }

  else
  {
    v27 = v25;
  }

  if (HIDWORD(v16))
  {
    v28 = 12;
  }

  else
  {
    v28 = v26;
  }

  v29 = *v5;
  *v2 = v27;
  *(v2 + 4) = v29;
  *(v2 + 12) = v18;
  *(v2 + 16) = v19;
  *(v2 + 20) = v22;
  *(v2 + 28) = v6;
  *(v2 + 32) = v7;
  *(v2 + 36) = 8;
  *(v2 + 40) = v8;
  *(v2 + 44) = v9;
  *(v2 + 48) = v23;
  *(v2 + 64) = v12;
  *(v2 + 72) = v13;
  *(v2 + 88) = v10;
  *(v2 + 92) = v11;
  *(v2 + 96) = v11;
  if ((v20 & 8) != 0)
  {
    if (v24)
    {
      v30 = 2309;
    }

    else
    {
      v30 = 2310;
    }

    if (v21)
    {
      v30 = 2306;
    }

    *v2 = v30;
    v28 *= 2;
    *(v2 + 36) = v17;
    *(v2 + 64) = 2 * v12;
    *(v2 + 72) = vaddq_s64(v13, v13);
    v31 = 2 * v11;
    *(v2 + 88) = 2 * v10;
    *(v2 + 92) = v31;
    *(v2 + 96) = v31;
  }

  result = 0;
  *(v2 + 112) = v28;
  *(v2 + 128) = 0;
  *(v2 + 136) = v14;
  *(v2 + 144) = 0u;
  *(v2 + 104) = v15;
  return result;
}

uint64_t ctrl_copy_new_frame_image(uint64_t a1, uint64_t *a2)
{
  v30 = a2 + 1;
  v2 = *a2;
  if (!*a2)
  {
    return 8;
  }

  v3 = *(*(a1 + 2896) + 352);
  v4 = *(v3 + 267120);
  if (!v4 || (*(v3 + 264600) & 1) != 0)
  {
    return 1;
  }

  v6 = v4[87];
  v29[8] = v4[86];
  v29[9] = v6;
  v7 = v4[89];
  v29[10] = v4[88];
  v29[11] = v7;
  v8 = v4[83];
  v29[4] = v4[82];
  v29[5] = v8;
  v9 = v4[85];
  v29[6] = v4[84];
  v29[7] = v9;
  v10 = v4[79];
  v29[0] = v4[78];
  v29[1] = v10;
  v11 = v4[81];
  v29[2] = v4[80];
  v29[3] = v11;
  v28 = 0u;
  memset(v27, 0, sizeof(v27));
  v26 = 0u;
  memset(v25, 0, sizeof(v25));
  v23 = 0u;
  v24 = 0u;
  v12 = *(v2 + 64);
  *(v25 + 8) = v12;
  v13 = *(v2 + 80);
  *(&v25[1] + 1) = v13;
  v14 = *(v2 + 40);
  v15 = *(v2 + 44);
  *(&v27[2] + 4) = *(v2 + 48);
  v16 = *(v2 + 32);
  v17 = *(v2 + 56);
  LODWORD(v23) = *(v2 + 28);
  DWORD1(v23) = (v17 + v23) >> v17;
  DWORD2(v23) = v16;
  HIDWORD(v23) = (HIDWORD(v17) + v16) >> SBYTE4(v17);
  LODWORD(v24) = v14;
  DWORD1(v24) = (v17 + v14) >> v17;
  DWORD2(v24) = v15;
  HIDWORD(v24) = (HIDWORD(v17) + v15) >> SBYTE4(v17);
  v18 = *(v2 + 88);
  *&v25[0] = v18;
  *(v27 + 12) = *(v2 + 4);
  v19 = *(v2 + 16);
  DWORD1(v27[1]) = *(v2 + 12);
  BYTE8(v27[1]) = v19;
  *(&v27[1] + 12) = *(v2 + 20);
  if ((*(v2 + 1) & 8) != 0)
  {
    *(v25 + 8) = vshrq_n_u64(v12, 1uLL);
    *(&v25[1] + 1) = v13 >> 1;
    *&v25[0] = vshr_n_s32(v18, 1uLL);
    v17 = *(v2 + 56);
    v21 = v25[0];
    v20 = 8;
  }

  else
  {
    v20 = 0;
    v21 = v18.i32[0];
  }

  LODWORD(v28) = v20;
  v22 = v21 - ((*(v2 + 28) + 31) & 0xFFFFFFE0);
  LODWORD(v26) = (v22 / 2) & ~((v22 + (v22 >> 31)) >> 31);
  *&v27[0] = v17;
  *(&v28 + 1) = *(v2 + 152);
  return av1_copy_new_frame_enc(v3 + 239056, v29, &v23);
}

uint64_t ctrl_set_chroma_subsampling_x(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[113] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_set_chroma_subsampling_y(const char **a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a1 + 139, sizeof(__dst));
  __dst[114] = *a2;
  result = validate_config_1(a1, (a1 + 26), __dst);
  if (!result)
  {
    memcpy(a1 + 139, __dst, 0x258uLL);
    return update_encoder_cfg(a1, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ctrl_get_seq_level_idx(uint64_t a1, uint64_t *a2)
{
  if (*a2)
  {
    return av1_get_seq_level_idx(*(a1 + 2896) + 49024, *(a1 + 2896) + 23176, *a2);
  }

  else
  {
    return 8;
  }
}

uint64_t ctrl_get_baseline_gf_interval(uint64_t a1, void *a2)
{
  if (!*a2)
  {
    return 8;
  }

  result = 0;
  **a2 = *(*(a1 + 2896) + 44120);
  return result;
}

uint64_t ctrl_get_target_seq_level_idx(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 8;
  }

  v3 = *(a1 + 2896);
  if ((*(v3 + 49136) & 0x80000000) == 0)
  {
    v4 = 0;
    do
    {
      *(v2 + 4 * v4) = 31;
      if ((*(v3 + 23208) >> v4))
      {
        *(v2 + 4 * v4) = *(v3 + 23176 + v4);
      }
    }

    while (v4++ < *(v3 + 49136));
  }

  return 0;
}

uint64_t ctrl_get_num_operating_points(uint64_t a1, void *a2)
{
  if (!*a2)
  {
    return 8;
  }

  result = 0;
  **a2 = *(*(a1 + 2896) + 49136) + 1;
  return result;
}

uint64_t ctrl_get_luma_cdef_strength(uint64_t a1, _OWORD **a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 8;
  }

  result = 0;
  v5 = (*(*(a1 + 2896) + 352) + 262632);
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[3];
  v2[2] = v5[2];
  v2[3] = v8;
  *v2 = v6;
  v2[1] = v7;
  return result;
}

uint64_t ctrl_get_high_motion_content_screen_rtc(uint64_t a1, void *a2)
{
  if (!*a2)
  {
    return 8;
  }

  result = 0;
  **a2 = *(*(*(a1 + 2896) + 352) + 388460);
  return result;
}

uint64_t update_encoder_cfg(uint64_t a1, double a2, double a3, int8x16_t a4, double a5, int8x16_t a6)
{
  set_encoder_config_0(a1 + 1744, (a1 + 208), a1 + 1112, a2, a3, a4, a5, a6);
  av1_check_fpmt_config(*(a1 + 2896), a1 + 1744);
  v15 = 0;
  av1_change_config_seq(*(a1 + 2896), a1 + 1744, &v15);
  v7 = *(a1 + 2896);
  if (*(v7 + 328) < 1)
  {
LABEL_5:
    v12 = *(v7 + 360);
    if (v12)
    {
      v13 = v12[29888];
      if (setjmp(v13 + 53))
      {
        v13[52] = 0;
        return *v13;
      }

      v13[52] = 1;
      av1_change_config(v12, (a1 + 1744), v15);
      v13[52] = 0;
    }

    return 0;
  }

  else
  {
    v8 = 0;
    v9 = *(a1 + 2896);
    while (1)
    {
      v10 = *(v9 + 8 * v8);
      v11 = v10[29888];
      if (setjmp(v11 + 53))
      {
        break;
      }

      v11[52] = 1;
      av1_change_config(v10, (a1 + 1744), v15);
      v11[52] = 0;
      ++v8;
      v9 = *(a1 + 2896);
      v7 = v9;
      if (v8 >= *(v9 + 328))
      {
        goto LABEL_5;
      }
    }

    v11[52] = 0;
    return *v11;
  }
}

uint64_t allocate_and_set_string(char *__s, char *__s2, const char **a3, char *a4)
{
  if (!__s)
  {
    strcpy(a4, "Null pointer given to a string parameter.");
    return 8;
  }

  v8 = *a3;
  if (*a3)
  {
    result = strcmp(__s, *a3);
    if (!result)
    {
      return result;
    }

    if (v8 != __s2)
    {
      free(*(v8 - 1));
    }
  }

  if (__s2 && (result = strcmp(__s, __s2), !result))
  {
    *a3 = __s2;
  }

  else
  {
    v10 = strlen(__s);
    v11 = v10 + 1;
    if (v10 + 1 <= 0x1FFFFFFE9 && (v12 = malloc_type_malloc(v10 + 24, 0x5F484EBFuLL)) != 0 && (v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF0, *(v13 - 8) = v12, v13))
    {
      memcpy(((v12 + 23) & 0xFFFFFFFFFFFFFFF0), __s, v11);
      result = 0;
      *a3 = v13;
    }

    else
    {
      strcpy(a4, "Failed to allocate memory for copying parameters.");
      return 2;
    }
  }

  return result;
}

uint64_t get_src_border_in_pixels(uint64_t a1, int a2)
{
  if (*(a1 + 265632) != 1 || *(a1 + 264760) || *(a1 + 264776))
  {
    return *(a1 + 265560);
  }

  v3 = *(a1 + 264552);
  v4 = 4 << mi_size_wide_log2[a2];
  v5 = v4 - 1;
  v6 = v4 - 1 + v3;
  v7 = -v4;
  v8 = (v6 & v7) - v3 + 31;
  v9 = ((v5 + *(a1 + 264556)) & v7) - *(a1 + 264556) + 31;
  if (v8 > v9)
  {
    v9 = v8;
  }

  v10 = v9 & 0xFFFFFFE0;
  if (v10 <= 32)
  {
    return 32;
  }

  else
  {
    return v10;
  }
}

void free_thread_data(uint64_t a1)
{
  v1 = a1 + 74224;
  v2 = *(a1 + 74224);
  v3 = *(a1 + 49101);
  if (*(a1 + 49101))
  {
    v4 = 1;
  }

  else
  {
    v4 = 3;
  }

  if (v2 >= 2)
  {
    v6 = *(a1 + 74232);
    v5 = *(a1 + 74236);
    if (v5 >= v2)
    {
      v5 = *(a1 + 74224);
    }

    if (v6 >= v2)
    {
      v6 = *(a1 + 74224);
    }

    v57 = *(a1 + 49100);
    v59 = v6;
    v58 = v5;
    v7 = 1;
    for (i = 464; ; i += 456)
    {
      v9 = (*(v1 + 64) + i);
      v10 = v9[1];
      *v9 = v10;
      if (v10)
      {
        break;
      }

LABEL_11:
      if (++v7 >= v2)
      {
        return;
      }
    }

    v11 = (v10 + 146536);
    v12 = *(v10 + 148416);
    if (v12)
    {
      free(*(v12 - 8));
    }

    v13 = *(v10 + 148296);
    if (v13)
    {
      free(*(v13 - 8));
    }

    v14 = *(v10 + 148344);
    if (v14)
    {
      free(*(v14 - 8));
    }

    v15 = *(v10 + 148304);
    if (v15)
    {
      free(*(v15 - 8));
    }

    v16 = *(v10 + 148312);
    if (v16)
    {
      free(*(v16 - 8));
    }

    v17 = *(v10 + 148320);
    if (v17)
    {
      free(*(v17 - 8));
    }

    v18 = *(v10 + 148328);
    if (v18)
    {
      free(*(v18 - 8));
    }

    v19 = *(v10 + 148336);
    if (v19)
    {
      free(*(v19 - 8));
    }

    *(v10 + 148336) = 0;
    *(v10 + 148304) = 0u;
    *(v10 + 148320) = 0u;
    v20 = *(v10 + 148360);
    if (v20)
    {
      free(*(v20 - 8));
    }

    v21 = *(v10 + 148368);
    if (v21)
    {
      free(*(v21 - 8));
    }

    v22 = (v10 + 152696);
    v23 = *(v10 + 152720);
    if (v23)
    {
      free(*(v23 - 8));
    }

    v24 = *(v10 + 152728);
    if (v24)
    {
      free(*(v24 - 8));
    }

    v25 = *(v10 + 148272);
    if (v25)
    {
      free(*(v25 - 8));
    }

    v26 = *(v10 + 148280);
    if (v26)
    {
      free(*(v26 - 8));
    }

    v27 = *(v10 + 148288);
    if (v27)
    {
      free(*(v27 - 8));
    }

    v28 = *(v10 + 148264);
    if (v28)
    {
      free(*(v28 - 8));
    }

    *(v10 + 148264) = 0u;
    *(v10 + 148280) = 0u;
    v29 = *(v10 + 148424);
    if (v29)
    {
      free(*(v29 - 8));
    }

    v30 = *(v10 + 148232);
    if (v30)
    {
      free(*(v30 - 8));
    }

    *(v10 + 148232) = 0;
    v31 = *(v10 + 148240);
    if (v31)
    {
      free(*(v31 - 8));
    }

    *(v10 + 148240) = 0;
    v32 = *(v10 + 148248);
    if (v32)
    {
      free(*(v32 - 8));
    }

    *(v10 + 148248) = 0;
    v33 = *(v10 + 148256);
    if (v33)
    {
      free(*(v33 - 8));
    }

    *(v10 + 148256) = 0;
    v34 = *(v10 + 146688);
    if (v34)
    {
      free(*(v34 - 8));
    }

    *(v10 + 146688) = 0;
    v35 = *(v10 + 146696);
    if (v35)
    {
      free(*(v35 - 8));
    }

    *(v10 + 146696) = 0;
    v36 = *(v10 + 148136);
    if (v36)
    {
      free(*(v36 - 8));
    }

    av1_free_pmc(*(v10 + 148440), v4);
    *(v10 + 148440) = 0;
    av1_free_shared_coeff_buffer((v10 + 148144));
    v37 = *(v10 + 148216);
    if (v37)
    {
      free(*(v37 - 8));
    }

    *(v10 + 148216) = 0;
    if (v7 < v59)
    {
      if (v57)
      {
        *(v10 + 148488) *= 2;
      }

      v46 = *(v10 + 148464);
      if (v46)
      {
        free(*(v46 - 8));
      }

      *(v10 + 148464) = 0;
      v47 = *(v10 + 148472);
      if (v47)
      {
        free(*(v47 - 8));
      }

      *(v10 + 148472) = 0;
      v48 = *(v10 + 148480);
      if (v48)
      {
        free(*(v48 - 8));
      }

      *(v10 + 148480) = 0;
      v49 = *(v10 + 148488);
      if (v49)
      {
        free(*(v49 - 8));
      }

      *(v10 + 148488) = 0;
      if (v7 >= v58)
      {
LABEL_65:
        v38 = *(v10 + 152712);
        if (!v38)
        {
          goto LABEL_67;
        }

        goto LABEL_66;
      }
    }

    else if (v7 >= v58)
    {
      goto LABEL_65;
    }

    v50 = *(v10 + 148496);
    if (v50)
    {
      free(*(v50 - 8));
    }

    *(v10 + 148496) = 0;
    v51 = *(v10 + 148504);
    if (v51)
    {
      free(*(v51 - 8));
    }

    *(v10 + 148504) = 0;
    v52 = *(v10 + 148512);
    if (v52)
    {
      free(*(v52 - 8));
    }

    *(v10 + 148512) = 0;
    v53 = *(v10 + 148520);
    if (v53)
    {
      free(*(v53 - 8));
    }

    *(v10 + 148520) = 0;
    v54 = *(v10 + 148528);
    if (v54)
    {
      free(*(v54 - 8));
    }

    *(v10 + 148528) = 0;
    v38 = *(v10 + 152712);
    if (!v38)
    {
LABEL_67:
      *(v10 + 152712) = 0;
      if (*v22)
      {
        free(*(*v22 - 8));
      }

      *v22 = 0;
      if (*v11)
      {
        free(*(*v11 - 8));
      }

      v39 = (v10 + 109712);
      *v11 = 0;
      v40 = *(v10 + 109728);
      if (v40)
      {
        free(*(v40 - 8));
      }

      *(v10 + 109728) = 0;
      if (*v10)
      {
        free(*(*v10 - 8));
      }

      *v10 = 0;
      if (v3)
      {
        v41 = *(v10 + 11184);
        if (!v41)
        {
LABEL_78:
          *(v10 + 11184) = 0;
          if (*v39)
          {
            free(*(*v39 - 8));
          }

          *v39 = 0;
          v42 = *(v10 + 146576);
          if (v42)
          {
            free(*(v42 - 8));
          }

          *(v10 + 146576) = 0;
          v43 = *(v10 + 146664);
          if (v43)
          {
            free(*(v43 - 8));
          }

          *(v10 + 146664) = 0;
          v44 = *(v10 + 146672);
          if (v44)
          {
            free(*(v44 - 8));
          }

          *(v10 + 146672) = 0;
          av1_free_pc_tree_recursive(*(v10 + 152736), v4, 0, 0, 0);
          *(v10 + 152736) = 0;
          v45 = *(v10 + 148376);
          if (v45)
          {
            free(*(v45 - 8));
          }

          *(v10 + 148376) = 0;
          free(*(v10 - 8));
          *v9 = 0;
          v9[1] = 0;
          v2 = *v1;
          goto LABEL_11;
        }
      }

      else
      {
        v55 = *(v10 + 136);
        if (v55)
        {
          free(*(v55 - 8));
        }

        *(v10 + 136) = 0;
        v56 = *(v10 + 272);
        if (v56)
        {
          free(*(v56 - 8));
        }

        *(v10 + 272) = 0;
        v41 = *(v10 + 11184);
        if (!v41)
        {
          goto LABEL_78;
        }
      }

      free(*(v41 - 8));
      goto LABEL_78;
    }

LABEL_66:
    free(*(v38 - 8));
    goto LABEL_67;
  }
}

uint64_t decoder_init_0(void *a1)
{
  if (a1[6])
  {
    return 0;
  }

  v3 = malloc_type_malloc(0x6347uLL, 0x5F484EBFuLL);
  if (!v3)
  {
    return 2;
  }

  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF0;
  *(v4 - 8) = v3;
  if (!v4)
  {
    return 2;
  }

  bzero(((v3 + 23) & 0xFFFFFFFFFFFFFFF0), 0x6330uLL);
  a1[6] = v4;
  *(v4 + 8) = a1[4];
  *(v4 + 420) = 0;
  *(v4 + 220) = 1;
  v5 = a1[5];
  if (v5)
  {
    *(v4 + 208) = *v5;
    a1[5] = v4 + 208;
  }

  result = 0;
  *(v4 + 25344) = 0;
  *(v4 + 468) = 1;
  *(v4 + 452) = -1;
  *(v4 + 456) = 0xFFFFFFFFLL;
  return result;
}

uint64_t decoder_destroy_0(uint64_t a1)
{
  v2 = *(a1 + 25072);
  if (v2)
  {
    off_28100B678(off_28100B678, *(a1 + 25072));
    v3 = *(v2 + 32);
    if (v3)
    {
      v4 = *v3;
      if (*v3)
      {
        v5 = v4 + 4986;
        v6 = v4[5075];
        if (v6)
        {
          free(*(v6 - 8));
        }

        v4[5075] = 0;
        v7 = v4[1974];
        if (v7)
        {
          v7(v4 + 1965);
        }

        av1_free_above_context_buffers(v4 + 5063);
        if (*v5)
        {
          free(*(*v5 - 8));
        }

        *v5 = 0;
        v8 = v4[4987];
        if (v8)
        {
          free(*(v8 - 8));
        }

        v4[4987] = 0;
        v9 = v4 + 5147;
        av1_free_cdef_buffers((v4 + 1900), v4 + 5151, (v4 + 5147));
        v10 = v4[5147];
        if (v10)
        {
          pthread_mutex_destroy(v10);
          if (*v9)
          {
            free(*(*v9 - 8));
          }
        }

        av1_free_restoration_buffers(v4 + 1900);
        av1_decoder_remove(v4);
      }

      free(*(v3 - 1));
    }
  }

  v11 = *(a1 + 25360);
  if (v11)
  {
    if (*(a1 + 25344))
    {
      v12 = 0;
      v13 = a1 + 25248;
      do
      {
        (*(*(a1 + 25360) + 80))(*(*(a1 + 25360) + 64), v13);
        ++v12;
        v13 += 24;
      }

      while (v12 < *(a1 + 25344));
      v11 = *(a1 + 25360);
    }

    av1_free_ref_frame_buffers(v11);
    v14 = *(a1 + 25360);
    v15 = *(v14 + 104);
    v16 = *(v14 + 112);
    if (v15 < 1)
    {
      v20 = *(a1 + 25360);
      if (!v16)
      {
LABEL_29:
        *(v14 + 112) = 0;
        *(v14 + 104) = 0;
        pthread_mutex_destroy(v20);
        goto LABEL_30;
      }
    }

    else
    {
      v17 = 0;
      for (i = 0; i < v15; ++i)
      {
        v19 = *(v16 + v17);
        if (v19)
        {
          free(*(v19 - 8));
          v16 = *(v14 + 112);
          v15 = *(v14 + 104);
        }

        *(v16 + v17) = 0;
        v17 += 24;
      }
    }

    free(*(v16 - 8));
    v20 = *(a1 + 25360);
    goto LABEL_29;
  }

LABEL_30:
  v21 = *(a1 + 25072);
  if (v21)
  {
    free(*(v21 - 8));
  }

  v22 = *(a1 + 25360);
  if (v22)
  {
    free(*(v22 - 8));
  }

  aom_img_free((a1 + 248));
  free(*(a1 - 8));
  return 0;
}