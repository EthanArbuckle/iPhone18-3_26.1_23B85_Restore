uint64_t sub_277B1A408(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5, unsigned int a6, int a7, int a8, BOOL *a9)
{
  v12 = result;
  v13 = result + 245672;
  v14 = a3 - 1;
  if ((a3 - 1) > 7u || (v15 = *(result + 4 * (a3 - 1) + 245856), v15 == -1))
  {
    v16 = 0;
  }

  else
  {
    v16 = *(result + 8 * v15 + 246032);
  }

  v17 = v16 + 1248;
  if (!v16)
  {
    v17 = 0;
  }

  v18 = *(v17 + 24) != *(result + 245676) || *(v17 + 16) != *v13;
  v19 = **(a2 + 8280);
  v21 = a3 - 1;
  v22 = *(result + 8 * v21 + 273688);
  if ((a3 - 1) > 7u || (v23 = *(result + 4 * v21 + 245856), v23 == -1))
  {
    v24 = 0;
  }

  else
  {
    v24 = *(result + 8 * v23 + 246032);
  }

  v25 = v22 != 0 && v22 != v24;
  v26 = v22 + 1248;
  if (!v25)
  {
    v26 = 0;
  }

  v27 = v18 && v25;
  if (v18 && v25)
  {
    v28 = v26;
  }

  else
  {
    v28 = v17;
  }

  if (*(*(result + 270312) + 77))
  {
    v29 = 1;
  }

  else
  {
    v29 = 3;
  }

  v30 = (a2 + 4 * a3);
  v30[22364] = 0x7FFFFFFF;
  v30[22374] = 0x7FFFFFFF;
  v30[22382] = 0x7FFFFFFF;
  v31 = a4 + 4 * a3;
  *(v31 + 512) = -2147450880;
  if (v16 || v18 && v25)
  {
    v40 = a2 + 15472;
    v46 = a6;
    v43 = result + 245672;
    v42 = v18;
    if (v25 || v14 > 7u || (v32 = *(result + 4 * (a3 - 1) + 245856), v32 == -1))
    {
      v33 = 0;
    }

    else
    {
      v33 = (result + 16 * v32 + 245904);
    }

    v39 = (a5 + 96 * a3);
    v41 = v28;
    sub_277A8B4EC((a2 + 416), v39, v28, v33, v33, v29);
    sub_277978170(v12 + 245616, a2 + 416, v19, a3, a2 + 16632, a2 + 8728, a2 + 10584, (a2 + 16664), a2 + 16696);
    *(a2 + 8 * a3 + 16400) = *(a2 + 10584 + 16 * a3);
    v34 = (v40 + 32 * a3);
    v35 = (a2 + 8728 + (a3 << 6));
    v36 = v35[1];
    *v34 = *v35;
    v34[1] = v36;
    v13 = v43;
    result = sub_277B1C5E0(*(v43 + 437), v40, a3, v31 + 416, v31 + 448);
    *(v31 + 480) = *(a2 + 16664 + 4 * a3);
    v37 = v46 >= 3 && a8 == 0;
    v38 = v42;
    if (!v37)
    {
      v38 = 1;
    }

    if ((v38 & 1) == 0 && (a3 == 1 || !a7))
    {
      result = sub_277A8B228(v12, a2, *v39, *(v41 + 32), a3, v46);
    }
  }

  if (*(v13 + 447) == 1)
  {
    result = sub_27798E650(v12 + 245616, a2 + 416);
  }

  v19[25] = 1;
  *a9 = v27;
  return result;
}

void sub_277B1A750(_DWORD *a1, unsigned int a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, _DWORD *a8, int a9, uint64_t a10, unsigned int *a11, unsigned int a12)
{
  v132 = *MEMORY[0x277D85DE8];
  if (*(a5 + 86596))
  {
    *a8 = 1;
    *a7 = 0;
    *(a7 + 8) = 0;
    *(a7 + 24) = 0;
    return;
  }

  v108 = a1 + 98304;
  if (a2 < 0xA || !*(a5 + 151024))
  {
    v30 = byte_277C393FC[a2];
    v31 = byte_277C3940C[a2];
    bzero(v131, 0x400uLL);
    bzero(v130, 0x400uLL);
    bzero(v129, 0x400uLL);
    v32 = *(a5 + 48);
    v33 = *(a5 + 72);
    v34 = *(a6 + 32);
    v35 = *(a6 + 56);
    v105 = v31;
    v126 = 0;
    v117 = (4 << v31);
    if (v117 < 1)
    {
      v45 = 0;
      v46 = 0;
    }

    else
    {
      v36 = 0;
      v37 = 0;
      v103 = v30;
      v38 = 4 << v30;
      v116 = 8 * v35;
      do
      {
        if (v38 >= 1)
        {
          v119 = v36;
          v121 = v34;
          v39 = 0;
          v40 = v37;
          v41 = v129 + 4 * v37;
          v42 = &v130[v37];
          v123 = v32;
          v43 = &v131[v37];
          do
          {
            v125 = v40;
            v44 = v35;
            off_280ABC8C0(v32, v33, v34, v35, v43, v42, &v126 + 4, &v126, v41);
            v35 = v44;
            v40 = v125 + 4;
            v41 += 16;
            v42 += 4;
            v43 += 4;
            v39 += 32;
            v34 += 32;
            v32 += 32;
          }

          while (v38 > v39);
          v37 = v125 + 4;
          v34 = v121;
          v32 = v123;
          v36 = v119;
        }

        v36 += 8;
        v34 += v116;
        v32 += 8 * v33;
      }

      while (v36 < v117);
      v45 = v126;
      v46 = HIDWORD(v126);
      v30 = v103;
    }

    v47 = v46 - ((v45 * v45) >> (v105 + v30 + 4));
    if (a11)
    {
      *a11 = v47;
      if (v47 > a12)
      {
        return;
      }
    }

    *(a7 + 24) = v46;
    *a8 = 0;
    v48 = sub_277B1B454(a1, a2, a5, v47, v46, a8);
    if (v48 <= 1)
    {
      v49 = 1;
    }

    else
    {
      v49 = v48;
    }

    v50 = **(a6 + 7864);
    *(v50 + 145) = v49;
    if (!a9)
    {
      v70 = v108[856];
      if (v70)
      {
        v71 = byte_277C3BCA0[a2];
        if (v70 == 4)
        {
          v72 = *(v50 + 2);
          v73 = v72 == 13 || v72 == 16;
          v74 = (&unk_277C39578 + 8 * v71);
          v75 = (&unk_277C394F8 + 8 * v71 + 96);
          if (v73)
          {
            v75 = v74;
          }

LABEL_79:
          if (*v75 * v46 > a10)
          {
            return;
          }

          goto LABEL_29;
        }

        if (v70 >= 1)
        {
          v75 = (&unk_277C394F8 + 32 * (v70 - 1) + 8 * v71);
          goto LABEL_79;
        }
      }
    }

LABEL_29:
    if (!*a8)
    {
      memset(v128, 0, sizeof(v128));
      v51 = 1 << (v105 + v30 - 2);
      memset(v127, 0, sizeof(v127));
      if (v48 < 2)
      {
        v61 = v129;
        v62 = v131;
      }

      else
      {
        if (v105 != 32)
        {
          LODWORD(v52) = 0;
          v53 = 0;
          v54 = v30 - 1;
          do
          {
            if (v30 != 32)
            {
              v55 = 0;
              v52 = v52;
              v56 = v130;
              v57 = v131;
              do
              {
                v58.i64[0] = *&v57[v53 << v54];
                v58.i64[1] = *&v57[(v53 | 1) << v54];
                v58.i32[0] = vaddvq_s32(v58);
                *(v128 + v52) = v58.i32[0];
                v59.i64[0] = *&v56[v53 << v54];
                v60 = v58.i32[0];
                v59.i64[1] = *&v56[(v53 | 1) << v54];
                v58.i32[0] = vaddvq_s32(v59);
                *(v127 + v52++) = v60 - ((v58.i32[0] * v58.i32[0]) >> 8);
                v55 += 2;
                v56 += 2;
                v57 += 2;
              }

              while (v55 < 1 << (v30 - 1));
            }

            v53 += 2;
          }

          while (v53 < 1 << (v105 - 1));
        }

        v51 >>= 2;
        v61 = v127;
        v62 = v128;
      }

      sub_277B1B5B8(a1, a5, a2, a6, a3, a4, a8, v51, v62, v61, v45, v47, v46);
      v46 = HIDWORD(v126);
    }

    if (a9)
    {
      if (*a8)
      {
        goto LABEL_116;
      }

      v82 = *(a7 + 24);
      if ((*(*(a5 + 8376) + 192) & 8) != 0)
      {
        v83 = *(a5 + 11072) - 5;
      }

      else
      {
        LOBYTE(v83) = 3;
      }

      if (v82)
      {
        v86 = *(*(a5 + 128) + 2) >> v83;
        if (v86 <= 1)
        {
          v86 = 1;
        }

        v87 = (byte_277C3CAE8[a2] * byte_277C3CAFE[a2]);
        v88 = v82 / v87;
        v89 = log2(v88 / (v86 * v86));
        v128[0] = 0.0;
        *&v127[0] = 0;
        sub_277A8B128(a2, v128, v127, v88, v89);
        v90 = 0.0;
        v91 = v128[0] * v87 >= 0.0 ? v128[0] * v87 : 0.0;
        v92 = (v91 + 0.5);
        if (v92)
        {
          if (v88 * *v127 * v87 >= 0.0)
          {
            v90 = v88 * *v127 * v87;
          }

          v93 = (v90 + 0.5);
          if ((v93 << 7) + ((*(a5 + 16920) * v92 + 256) >> 9) >= v82 << 11)
          {
            v92 = 0;
            v93 = 16 * v82;
          }
        }

        else
        {
          v93 = 16 * v82;
        }

        *a7 = v92;
        *(a7 + 8) = v93;
      }

      else
      {
        *a7 = 0;
        *(a7 + 8) = 0;
      }

      if (*a8)
      {
LABEL_116:
        *a7 = 0;
        *(a7 + 8) = 16 * v46;
      }
    }

    return;
  }

  v115 = a5 + 151024;
  *(**(a6 + 7864) + 145) = 2;
  v14 = byte_277C393FC[a2];
  v15 = byte_277C3940C[a2];
  memset(v131, 0, 256);
  memset(v130, 0, 256);
  v16 = *(a5 + 48);
  v17 = *(a5 + 72);
  v18 = *(a6 + 32);
  v19 = *(a6 + 56);
  HIDWORD(v126) = 0;
  LODWORD(v127[0]) = 0;
  v118 = (4 << v15);
  if (v118 < 1)
  {
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v102 = v15;
    v104 = v14;
    v20 = 0;
    v21 = 0;
    v22 = 4 << v14;
    do
    {
      if (v22 >= 1)
      {
        v120 = v20;
        v122 = v18;
        v23 = 0;
        v24 = v21;
        v124 = v16;
        v25 = v16;
        v26 = &v130[v21];
        v27 = &v131[v21];
        do
        {
          off_280ABC8B8(v25, v17, v18, v19, v27, v127, &v126 + 4, v26);
          v24 += 2;
          v26 += 2;
          v27 += 2;
          v23 += 32;
          v18 += 32;
          v25 += 32;
        }

        while (v22 > v23);
        v21 = v24;
        v18 = v122;
        v16 = v124;
        v20 = v120;
      }

      v20 += 16;
      v18 += 16 * v19;
      v16 += 16 * v17;
    }

    while (v20 < v118);
    v28 = HIDWORD(v126);
    v29 = v127[0];
    v15 = v102;
    v14 = v104;
  }

  v63 = v15 + v14;
  v64 = v29 - ((v28 * v28) >> (v15 + v14 + 4));
  if (!a11 || (*a11 = v64, v64 <= a12))
  {
    *(a7 + 24) = v29;
    *a8 = 0;
    if (*v115 != 2 || v108[859] < 2 || (v65 = *(*(a5 + 128) + 2) >> (*(a5 + 11072) - 5), v66 = v65 * v65, v66 <= v29) || *(v115 + 2128) >= v66 || *(v115 + 2102) || *(v115 + 2103))
    {
      v67 = 0;
    }

    else
    {
      v67 = 1;
      *a8 = 1;
    }

    if (!a9)
    {
      v76 = v108[856];
      if (v76)
      {
        v77 = byte_277C3BCA0[a2];
        if (v76 == 4)
        {
          v78 = *(**(a6 + 7864) + 2);
          v79 = v78 == 13 || v78 == 16;
          v80 = (&unk_277C39578 + 8 * v77);
          v81 = (&unk_277C394F8 + 8 * v77 + 96);
          if (v79)
          {
            v81 = v80;
          }

LABEL_83:
          if (*v81 * v29 > a10)
          {
            return;
          }

          goto LABEL_49;
        }

        v84 = __OFSUB__(v76, 1);
        v85 = (v76 - 1);
        if (v85 < 0 == v84)
        {
          v81 = (&unk_277C394F8 + 32 * v85 + 8 * v77);
          goto LABEL_83;
        }
      }
    }

LABEL_49:
    if ((v67 & 1) == 0)
    {
      sub_277B1B5B8(a1, a5, a2, a6, a3, a4, a8, 1 << (v63 - 2) >> 2, v131, v130, v28, v64, v29);
      v29 = v127[0];
    }

    if (a9)
    {
      if (*a8)
      {
        goto LABEL_120;
      }

      v68 = *(a7 + 24);
      if ((*(*(a5 + 8376) + 192) & 8) != 0)
      {
        v69 = *(a5 + 11072) - 5;
      }

      else
      {
        LOBYTE(v69) = 3;
      }

      if (v68)
      {
        v94 = *(*(a5 + 128) + 2) >> v69;
        if (v94 <= 1)
        {
          v94 = 1;
        }

        v95 = (byte_277C3CAE8[a2] * byte_277C3CAFE[a2]);
        v96 = v68 / v95;
        v97 = log2(v96 / (v94 * v94));
        v129[0] = 0.0;
        v128[0] = 0.0;
        sub_277A8B128(a2, v129, v128, v96, v97);
        v98 = 0.0;
        v99 = v129[0] * v95 >= 0.0 ? v129[0] * v95 : 0.0;
        v100 = (v99 + 0.5);
        if (v100)
        {
          if (v96 * v128[0] * v95 >= 0.0)
          {
            v98 = v96 * v128[0] * v95;
          }

          v101 = (v98 + 0.5);
          if ((v101 << 7) + ((*(a5 + 16920) * v100 + 256) >> 9) >= v68 << 11)
          {
            v100 = 0;
            v101 = 16 * v68;
          }
        }

        else
        {
          v101 = 16 * v68;
        }

        *a7 = v100;
        *(a7 + 8) = v101;
      }

      else
      {
        *a7 = 0;
        *(a7 + 8) = 0;
      }

      if (*a8)
      {
LABEL_120:
        *a7 = 0;
        *(a7 + 8) = 16 * v29;
      }
    }
  }
}

void sub_277B1B1D0(void *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int *a6, int a7, _DWORD *a8)
{
  if (a8 && *(a3 + 86596))
  {
    *a8 = 1;
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 24) = 0;
  }

  v14 = *(**(a4 + 7864) + 16);
  v30 = 0;
  v15 = (*(*a1 + (a2 << 7) + 51464))(*(a3 + 48), *(a3 + 72), *(a4 + 32), *(a4 + 56), &v30);
  v29 = 0;
  v16 = v30;
  *(**(a4 + 7864) + 145) = sub_277B1B454(a1, a2, a3, v15, v30, &v29);
  if (a6)
  {
    *a6 = v15;
  }

  v17 = v29;
  if (!a7)
  {
    v19 = 0x7FFFFFFF;
    v18 = 0x7FFFFFFFLL;
    goto LABEL_27;
  }

  if (v29 && v14)
  {
    v18 = 0x7FFFFFFFLL;
    v19 = 0x7FFFFFFF;
    goto LABEL_27;
  }

  if ((*(*(a3 + 8376) + 192) & 8) != 0)
  {
    v20 = *(a3 + 11072) - 5;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_25:
    v19 = 0;
    v18 = 0;
    goto LABEL_27;
  }

  LOBYTE(v20) = 3;
  if (!v16)
  {
    goto LABEL_25;
  }

LABEL_13:
  v21 = *(*(a3 + 128) + 2) >> v20;
  if (v21 <= 1)
  {
    v21 = 1;
  }

  v22 = (byte_277C3CAE8[a2] * byte_277C3CAFE[a2]);
  v23 = v16 / v22;
  v24 = log2(v23 / (v21 * v21));
  v31 = 0.0;
  v32 = 0.0;
  sub_277A8B128(a2, &v32, &v31, v23, v24);
  v25 = 0.0;
  if (v32 * v22 >= 0.0)
  {
    v26 = v32 * v22;
  }

  else
  {
    v26 = 0.0;
  }

  v19 = (v26 + 0.5);
  if (v19)
  {
    if (v23 * v31 * v22 >= 0.0)
    {
      v25 = v23 * v31 * v22;
    }

    v27 = v25 + 0.5;
    if ((v27 << 7) + ((*(a3 + 16920) * v19 + 256) >> 9) < v16 << 11)
    {
      v18 = v27;
    }

    else
    {
      v19 = 0;
      v18 = 16 * v16;
    }
  }

  else
  {
    v18 = 16 * v16;
  }

LABEL_27:
  *(a5 + 24) = v16;
  *(a3 + 4 * v14 + 153176) = v16;
  if (v17 != 0 && v14 > 0)
  {
    v19 = 0;
    v18 = 16 * v16;
  }

  *(a5 + 32) = v19 == 0;
  *a5 = v19;
  *(a5 + 8) = v18;
}

uint64_t sub_277B1B454(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, unsigned int a5, _DWORD *a6)
{
  v6 = *(a3 + 151024);
  if (v6 == 2)
  {
    v7 = *(a1 + 396652);
    if (v7)
    {
      v8 = dword_277BB7DA0[*(a3 + 16904) >> 6];
      v9 = *(*(a3 + 128) + 2) >> (*(a3 + 11072) - 5);
      v10 = v9 * v9;
      v11 = 2 * v9 * v9;
      if (v7 >= 2)
      {
        if (v10 > a5 && *(a3 + 153152) < v10 && !*(a3 + 153126) && !*(a3 + 153127))
        {
          *a6 = 1;
        }

        v12 = v11 <= a4;
        goto LABEL_14;
      }
    }

    else
    {
      v11 = 0;
      v8 = 8;
    }

    v12 = 1;
LABEL_14:
    if (a5 > (v8 * a4) >> 2 || v11 > a4)
    {
      v14 = byte_277C39398[a2];
      if (v14 >= 4)
      {
        v14 = 4;
      }
    }

    else
    {
      v14 = 1;
    }

    if (*(a1 + 271328) == 3 && (*(**(a3 + 8280) + 167) & 7u) - 1 < 2 && v12)
    {
      v13 = 1;
    }

    else if (v14 >= 2)
    {
      v13 = 2;
    }

    else
    {
      v13 = v14;
    }

    goto LABEL_25;
  }

  v13 = byte_277C39398[a2];
  if (v13 >= byte_277C393AE[*(a3 + 151024)])
  {
    v13 = byte_277C393AE[*(a3 + 151024)];
  }

LABEL_25:
  if (v13 >= 2)
  {
    v13 = 2;
  }

  if (v6)
  {
    v15 = a2 > 9;
  }

  else
  {
    v15 = 0;
  }

  if (v15)
  {
    return 2;
  }

  else
  {
    return v13;
  }
}

_DWORD *sub_277B1B5B8(_DWORD *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, int a8, _DWORD *a9, unsigned int *a10, int a11, int a12, int a13)
{
  v13 = result;
  v14 = a11;
  v53[1] = *MEMORY[0x277D85DE8];
  v15 = *(a2 + 128);
  if (a11 < 0)
  {
    v14 = -a11;
  }

  v16 = v14 >> (byte_277C3940C[a3] + byte_277C393FC[a3]);
  if (result[61419] < 481 && result[61418] < 641)
  {
    v18 = 2;
  }

  else
  {
    v18 = 1;
  }

  if (v16 >= 5 || result[68035] <= 7)
  {
    v20 = 0;
  }

  else
  {
    v20 = v18;
  }

  v21 = result[99140];
  v22 = (v15[1] * v15[1]) >> 6 << v20;
  if (v21)
  {
    v22 = 4 * v22;
  }

  if (a8 < 1)
  {
LABEL_24:
    v29 = 0;
    v53[0] = 0;
    v51 = a2 + 153126;
    v49 = a4 + 16;
    v48 = &byte_277C3BCDE[4 * a3];
    v30 = 1;
    while (1)
    {
      v31 = v29;
      v32 = v30 - 1;
      *(v53 + v30 - 1) = 1;
      if (*(v51 + v30 - 1))
      {
        *(v53 + v32) = 0;
        v33 = a2 + 136 * v30;
        v34 = v49 + 2608 * v30;
        v35 = v48[2 * *(v34 + 4) + *(v34 + 8)];
        v36 = v13[99140];
        if (v36)
        {
          v37 = 5;
        }

        else
        {
          v37 = 3;
        }

        v38 = *(v33 + 128);
        v39 = *v38;
        v40 = (v38[1] * v38[1]) >> v37;
        sub_2779CCAB4();
        v41 = *(v33 + 48);
        v42 = *(v33 + 72);
        v43 = &v52[v32];
        result = (*(*v13 + (v35 << 7) + 51464))(v41, v42, *(v34 + 16), *(v34 + 40), v43);
        v44 = result < v40 || result == 0;
        if (!v44 || (!v36 ? (v45 = 3) : (v45 = 4), *v43 != result ? (v46 = *v43 - result >= (v39 * v39) >> v45) : (v46 = 0), v46))
        {
LABEL_43:
          if ((HIDWORD(v53[0]) & v53[0]) != 0)
          {
            *a7 = 1;
          }

          return result;
        }

        *(v53 + v32) = 1;
      }

      v29 = 1;
      v30 = 2;
      if (v31)
      {
        goto LABEL_43;
      }
    }
  }

  v25 = ((*v15 * *v15) >> 6) << (v21 != 0);
  v26 = a8;
  while (1)
  {
    v28 = *a10++;
    v27 = v28;
    if (a12)
    {
      if (v22 <= v27)
      {
        return result;
      }
    }

    if (a13 != a12 && v25 <= (*a9 - v27))
    {
      return result;
    }

    ++a9;
    if (!--v26)
    {
      goto LABEL_24;
    }
  }
}

uint64_t sub_277B1B88C(uint64_t result, __int16 a2, unsigned __int16 a3, __int16 a4, unsigned __int16 *a5, int a6)
{
  v10 = 0;
  v11 = a5[4];
  v12 = (v11 >> 4) + 5;
  do
  {
    v13 = a5[v10];
    v14 = v13 - (v13 >> v12);
    v15 = v13 + ((0x8000 - v13) >> v12);
    if (v10 >= ((a2 != a4) | (2 * (result != a3))))
    {
      LOWORD(v15) = v14;
    }

    a5[v10++] = v15;
  }

  while (v10 != 3);
  v16 = v11 >= 0x20;
  v17 = a5[4];
  if (!v16)
  {
    ++v17;
  }

  a5[4] = v17;
  if (result != a3)
  {
    result = sub_277B1B98C((result - a3), a5 + 5, a6);
  }

  if (a2 != a4)
  {

    return sub_277B1B98C((a2 - a4), a5 + 74, a6);
  }

  return result;
}

uint64_t sub_277B1B98C(int a1, unsigned __int16 *a2, int a3)
{
  v3 = 0;
  if (a1 >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = -a1;
  }

  v5 = v4 - 1;
  LODWORD(v6) = __clz(v5 >> 3) ^ 0x1F;
  if (v5 >= 8)
  {
    v6 = v6;
  }

  else
  {
    v6 = 0;
  }

  v7 = -8 << v6;
  if (!v6)
  {
    v7 = 0;
  }

  v8 = v7 + v5;
  v9 = (v7 + v5) >> 3;
  v10 = a2[29];
  v11 = (v10 >> 4) + 4;
  v12 = a2[27];
  v13 = (0x8000 - v12) >> v11;
  v14 = v12 - (v12 >> v11);
  v15 = v12 + v13;
  if (a1 < 0)
  {
    LOWORD(v14) = v15;
  }

  a2[27] = v14;
  if (v10 < 0x20)
  {
    LOWORD(v10) = v10 + 1;
  }

  a2[29] = v10;
  v16 = a2[11];
  v17 = (v16 >> 4) + 5;
  do
  {
    v18 = a2[v3];
    v19 = v18 - (v18 >> v17);
    result = ((0x8000 - v18) >> v17);
    v21 = v18 + result;
    if (v3 >= v6)
    {
      v21 = v19;
    }

    a2[v3++] = v21;
  }

  while (v3 != 10);
  v22 = a2[11];
  if (v16 < 0x20)
  {
    ++v22;
  }

  a2[11] = v22;
  if (v6)
  {
    v23 = 0;
    v24 = a2 + 41;
    do
    {
      v25 = *v24;
      v26 = (v25 >> 4) + 4;
      v27 = *(v24 - 2);
      result = v27 - (v27 >> v26);
      v28 = v27 + ((0x8000 - v27) >> v26);
      if (((v9 >> v23) & 1) == 0)
      {
        LOWORD(v28) = result;
      }

      *(v24 - 2) = v28;
      if (v25 < 0x20)
      {
        LOWORD(v25) = v25 + 1;
      }

      *v24 = v25;
      v24 += 3;
      ++v23;
    }

    while (v6 != v23);
    if (a3 < 0)
    {
      return result;
    }

LABEL_34:
    v35 = 0;
    v36 = &a2[5 * v9 + 12];
    if (v6)
    {
      v36 = (a2 + 22);
    }

    v37 = *(v36 + 8);
    v38 = (v37 >> 4) + 5;
    do
    {
      v39 = *(v36 + 2 * v35);
      v40 = v39 - (v39 >> v38);
      result = ((0x8000 - v39) >> v38);
      v41 = v39 + result;
      if (v35 >= ((v5 >> 1) & 3))
      {
        v41 = v40;
      }

      *(v36 + 2 * v35++) = v41;
    }

    while (v35 != 3);
    v42 = *(v36 + 8);
    if (v37 < 0x20)
    {
      ++v42;
    }

    *(v36 + 8) = v42;
    if (a3)
    {
      v43 = v6 == 0;
      v44 = 33;
      if (v43)
      {
        v44 = 30;
      }

      v45 = &a2[v44];
      v46 = v45[2];
      v47 = (v46 >> 4) + 4;
      v48 = *v45;
      v49 = v48 - (v48 >> v47);
      v50 = v48 + ((0x8000 - v48) >> v47);
      if (v5)
      {
        v51 = v50;
      }

      else
      {
        v51 = v49;
      }

      *v45 = v51;
      if (v46 >= 0x20)
      {
        v52 = v46;
      }

      else
      {
        v52 = v46 + 1;
      }

      v45[2] = v52;
    }

    return result;
  }

  v29 = a2[38];
  v30 = (v29 >> 4) + 4;
  v31 = a2[36];
  v32 = v31 - (v31 >> v30);
  v33 = v31 + ((0x8000 - v31) >> v30);
  if (v8 << 21 >> 24 >= 1)
  {
    v34 = v33;
  }

  else
  {
    v34 = v32;
  }

  a2[36] = v34;
  if (v29 < 0x20)
  {
    LOWORD(v29) = v29 + 1;
  }

  a2[38] = v29;
  if ((a3 & 0x80000000) == 0)
  {
    goto LABEL_34;
  }

  return result;
}

_DWORD *sub_277B1BBCC(_DWORD *a1, uint64_t a2, int a3)
{
  v74 = *MEMORY[0x277D85DE8];
  v68 = 0u;
  v69[0] = 0u;
  v67 = 0uLL;
  v65 = 0;
  v66 = 0;
  sub_2779F1B94(v73, a2 + 54, 0);
  sub_2779F1B94(&v72[4], a2, 0);
  sub_2779F1B94(v71, a2 + 72, 0);
  v6 = 0;
  v7 = a2 + 78;
  do
  {
    sub_2779F1B94(&v69[1] + v6 + 12, v7, 0);
    v6 += 8;
    v7 += 6;
  }

  while (v6 != 80);
  if ((a3 & 0x80000000) == 0)
  {
    sub_2779F1B94(&v68, a2 + 24, 0);
    sub_2779F1B94(v69, a2 + 34, 0);
    sub_2779F1B94(&v67, a2 + 44, 0);
    if (a3)
    {
      sub_2779F1B94(&v66, a2 + 60, 0);
      sub_2779F1B94(&v65, a2 + 66, 0);
    }
  }

  v8 = 0;
  v64 = 0;
  memset(v63, 0, sizeof(v63));
  v10 = v73[0];
  v9 = v73[1];
  v11 = v70;
  do
  {
    v12 = v8 + 1;
    v14 = *v11;
    v11 += 2;
    v13 = v14;
    *(v63 + v8 + 1) = v14;
    if ((v8 + 1) >= 2)
    {
      *(v63 + v8 + 1) = v13 - *&v72[4 * v8 + 4];
    }

    ++v8;
  }

  while (v12 != 9);
  v15 = 0;
  v16 = (a1 + 1);
  v17 = vaddq_s32(v67, vdupq_n_s32(v10));
  v75.val[0] = vaddq_s32(v17, vdupq_lane_s32(v65, 0));
  v75.val[1] = vaddq_s32(v17, vdupq_lane_s32(v65, 1));
  vst2q_f32(v16, v75);
  v18 = v9 - v10;
  v19 = 1;
  *a1 = 0;
  do
  {
    if (v15)
    {
      v20 = *&v72[4 * v15 + 4];
    }

    else
    {
      v20 = 0;
    }

    v21 = 0;
    v22 = 0;
    v23 = *(&v69[1] + 2 * v15 + 3);
    do
    {
      v24 = *(v63 + v21);
      if (v22 < 8 << v21)
      {
        v25 = (8 << v15) + v22;
        v26 = ~v25 << 32;
        v27 = &v16[v25];
        v28 = (8 << v21) - v22;
        v29 = v20 + v24;
        v30 = &v16[v22];
        do
        {
          v31 = *v30++;
          *v27++ = v31 + v29;
          *(a1 + (v26 >> 30)) = v31 + v29 + v18;
          v26 -= 0x100000000;
          --v28;
        }

        while (v28);
        v22 = 8 << v21;
      }

      *(v63 + v21++) = v24 + v23;
    }

    while (v21 != v19);
    ++v15;
    ++v19;
  }

  while (v15 != 10);
  v32 = 0;
  v33 = 0;
  v34 = *&v72[44];
  do
  {
    v35 = (8 << v32);
    if (v33 < v35)
    {
      v36 = &a1[-v33 - 8193];
      v37 = &a1[v33 + 8193];
      v38 = v35 - v33;
      v39 = v34 + *(v63 + v32);
      do
      {
        v40 = *(v37 - 0x2000) + v39;
        *v37++ = v40;
        *v36-- = v40 + v18;
        --v38;
      }

      while (v38);
      v33 = 8 << v32;
    }

    ++v32;
  }

  while (v32 != 10);
  if (v33 <= 8190)
  {
    v41 = v70[18] - *&v72[40] + v34;
    v42 = &a1[-v33 - 8193];
    v43 = &a1[v33 + 8193];
    v44 = v33 - 0x1FFFLL;
    do
    {
      v45 = v41 + *(v43 - 0x2000);
      *v43++ = v45;
      *v42-- = v45 + v18;
    }

    while (!__CFADD__(v44++, 1));
  }

  v47 = 0;
  v48 = *&v72[4];
  v49 = v71;
  v50 = 1;
  v51 = v66;
  v52 = HIDWORD(v66);
  do
  {
    v53 = v50;
    v54 = 8 * v47;
    v55 = *v49;
    v56 = &a1[-8 * v47];
    result = &a1[8 * v47 + 2];
    v58 = 16 * v47;
    v59 = 0x3FFFFFFFFFFFFFFFLL;
    v60 = v48 + v55;
    do
    {
      v61 = v60 + *(&v69[-1] + v58);
      *(result - 1) = v61 + v51 + v10;
      v56[v59] = v61 + v51 + v9;
      v62 = v61 + v52;
      *result = v62 + v10;
      result += 2;
      a1[v54 ^ 0x3FFFFFFFFFFFFFFELL] = v62 + v9;
      v59 -= 2;
      v54 += 2;
      v58 += 4;
    }

    while (v59 != -9);
    v50 = 0;
    v49 = v72;
    v47 = 1;
  }

  while ((v53 & 1) != 0);
  return result;
}

_DWORD *sub_277B1BFBC(uint64_t a1, uint64_t a2, uint64_t a3, __int16 *a4, unsigned __int16 a5, unsigned __int16 a6, unsigned __int16 *a7, char a8)
{
  v14 = *a4;
  v15 = a4[1];
  v16 = (v15 != a6) | (2 * (v14 != a5));
  if (*(a1 + 246110))
  {
    a8 = -1;
  }

  result = sub_277A650D4(a2 + 16, v16, a7, 4);
  if (*(a2 + 48))
  {
    v19 = 0;
    v20 = a7[4];
    v21 = (v20 >> 4) + 5;
    do
    {
      v22 = a7[v19];
      v23 = v22 - (v22 >> v21);
      v24 = v22 + ((0x8000 - v22) >> v21);
      if (v19 >= v16)
      {
        LOWORD(v24) = v23;
      }

      a7[v19++] = v24;
    }

    while (v19 != 3);
    v25 = a7[4];
    if (v20 < 0x20)
    {
      ++v25;
    }

    a7[4] = v25;
  }

  if (v14 != a5)
  {
    result = sub_277B1C14C(a2, (v14 - a5), a7 + 5, a8);
  }

  if (v15 != a6)
  {
    result = sub_277B1C14C(a2, (v15 - a6), a7 + 74, a8);
  }

  if (*(a1 + 395688))
  {
    v26 = *a4;
    if ((v26 & 0x80000000) != 0)
    {
      v26 = -v26;
    }

    v27 = a4[1];
    if (v27 < 0)
    {
      v27 = -v27;
    }

    if (v26 <= v27)
    {
      v26 = v27;
    }

    if (*(a3 + 154956) <= (v26 >> 3))
    {
      v28 = v26 >> 3;
    }

    else
    {
      v28 = *(a3 + 154956);
    }

    *(a3 + 154956) = v28;
  }

  return result;
}

_DWORD *sub_277B1C14C(uint64_t a1, int a2, unsigned __int16 *a3, int a4)
{
  v8 = a2 >> 31;
  if (a2 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = -a2;
  }

  v10 = v9 - 1;
  v11 = __clz((v9 - 1) >> 3) ^ 0x1F;
  if (v10 >= 8)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    v13 = -8 << v12;
  }

  else
  {
    v13 = 0;
  }

  sub_277A650D4(a1 + 16, v8, (a3 + 27), 2);
  if (*(a1 + 48))
  {
    v14 = a3[29];
    v15 = (v14 >> 4) + 4;
    v16 = a3[27];
    v17 = v16 - (v16 >> v15);
    v18 = v16 + ((0x8000 - v16) >> v15);
    if (a2 >= 0)
    {
      LOWORD(v18) = v17;
    }

    a3[27] = v18;
    if (v14 < 0x20)
    {
      LOWORD(v14) = v14 + 1;
    }

    a3[29] = v14;
  }

  v19 = v13 + v10;
  sub_277A650D4(a1 + 16, v12, a3, 11);
  if (*(a1 + 48))
  {
    v20 = 0;
    v21 = a3[11];
    v22 = (v21 >> 4) + 5;
    do
    {
      v23 = a3[v20];
      v24 = v23 - (v23 >> v22);
      v25 = v23 + ((0x8000 - v23) >> v22);
      if (v20 >= v12)
      {
        LOWORD(v25) = v24;
      }

      a3[v20++] = v25;
    }

    while (v20 != 10);
    v26 = a3[11];
    if (v21 < 0x20)
    {
      ++v26;
    }

    a3[11] = v26;
  }

  v27 = v19 >> 3;
  if (v12)
  {
    v28 = 0;
    v29 = a3 + 39;
    do
    {
      result = sub_277A650D4(a1 + 16, (v27 >> v28) & 1, v29, 2);
      if (*(a1 + 48))
      {
        v31 = v29[2];
        v32 = (v31 >> 4) + 4;
        v33 = *v29;
        v34 = v33 - (v33 >> v32);
        v35 = v33 + ((0x8000 - v33) >> v32);
        if (((v27 >> v28) & 1) == 0)
        {
          LOWORD(v35) = v34;
        }

        *v29 = v35;
        if (v31 < 0x20)
        {
          LOWORD(v31) = v31 + 1;
        }

        v29[2] = v31;
      }

      ++v28;
      v29 += 3;
    }

    while (v12 != v28);
  }

  else
  {
    result = sub_277A650D4(a1 + 16, v19 >> 3, (a3 + 36), 2);
    if (*(a1 + 48))
    {
      v36 = a3[38];
      v37 = (v36 >> 4) + 4;
      v38 = a3[36];
      v39 = v38 - (v38 >> v37);
      v40 = v38 + ((0x8000 - v38) >> v37);
      if (v19 << 21 >> 24 < 1)
      {
        LOWORD(v40) = v39;
      }

      a3[36] = v40;
      if (v36 < 0x20)
      {
        LOWORD(v36) = v36 + 1;
      }

      a3[38] = v36;
    }
  }

  if ((a4 & 0x80000000) == 0)
  {
    if (v12)
    {
      v41 = (a3 + 22);
    }

    else
    {
      v41 = &a3[5 * v27 + 12];
    }

    result = sub_277A650D4(a1 + 16, (v10 >> 1) & 3, v41, 4);
    if (*(a1 + 48))
    {
      v42 = 0;
      v43 = *(v41 + 8);
      v44 = (v43 >> 4) + 5;
      do
      {
        v45 = *(v41 + 2 * v42);
        v46 = v45 - (v45 >> v44);
        v47 = v45 + ((0x8000 - v45) >> v44);
        if (v42 >= ((v10 >> 1) & 3))
        {
          LOWORD(v47) = v46;
        }

        *(v41 + 2 * v42++) = v47;
      }

      while (v42 != 3);
      v48 = *(v41 + 8);
      if (v43 < 0x20)
      {
        ++v48;
      }

      *(v41 + 8) = v48;
    }

    if (a4)
    {
      v49 = 33;
      if (!v12)
      {
        v49 = 30;
      }

      v50 = &a3[v49];
      result = sub_277A650D4(a1 + 16, v10 & 1, v50, 2);
      if (*(a1 + 48))
      {
        v51 = v50[2];
        v52 = (v51 >> 4) + 4;
        v53 = *v50;
        v54 = v53 - (v53 >> v52);
        v55 = v53 + ((0x8000 - v53) >> v52);
        if ((v10 & 1) == 0)
        {
          LOWORD(v55) = v54;
        }

        *v50 = v55;
        if (v51 < 0x20)
        {
          LOWORD(v51) = v51 + 1;
        }

        v50[2] = v51;
      }
    }
  }

  return result;
}

_DWORD *sub_277B1C488(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  sub_2779F1B94(a1, a3, 0);
  sub_277B1BBCC(*a2, a3 + 10, a4);
  v7 = *(a2 + 8);

  return sub_277B1BBCC(v7, a3 + 148, a4);
}

uint64_t sub_277B1C4F0(int a1, char a2, unsigned __int8 a3, int a4, uint64_t a5)
{
  if (a3 <= 0)
  {
    v7 = (a5 + 32 * a2 + 8 * a4);
    if (*(a5 + a2 + 1160) <= a4)
    {
      v7 = (a5 + 4 * a2 + 1192);
    }
  }

  else
  {
    if (a3 >= 5u && a2 < 5)
    {
LABEL_8:
      v6 = a2 + 4 * a3 - 13;
    }

    else
    {
      v5 = 0;
      while (byte_277C3BCCC[v5] != a2 || byte_277C3BCD5[v5] != a3)
      {
        if (++v5 == 9)
        {
          goto LABEL_8;
        }
      }

      v6 = v5 + 20;
    }

    v7 = (a5 + 32 * v6 + 8 * a4);
    if (a1)
    {
      ++v7;
    }
  }

  return *v7;
}

uint64_t sub_277B1C5A4(uint64_t a1, int a2)
{
  v2 = **(a1 + 8280);
  if (*(v2 + 2) - 21 >= 2)
  {
    v3 = (*(v2 + 167) >> 4) & 3;
  }

  else
  {
    v3 = ((*(v2 + 167) >> 4) & 3) + 1;
  }

  return sub_277B1C4F0(a2, *(v2 + 16), *(v2 + 17), v3, a1 + 15472);
}

uint64_t sub_277B1C5E0(int a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_277B1C4F0(0, a3, 0xFFu, 0, a2);
  *a4 = v10;
  if (a1)
  {
    result = sub_277B1C4F0(0, a3, 0xFFu, 1, a2);
    *a5 = result;
  }

  else
  {
    if (v10)
    {
      if (v10 < 1)
      {
        v12 = v10 + 1;
      }

      else
      {
        v12 = v10 - 1;
      }

      *a4 = v12;
    }

    if ((v10 & 0x10000) != 0)
    {
      if (v10 >> 16 < 1)
      {
        v13 = HIWORD(v10) + 1;
      }

      else
      {
        v13 = HIWORD(v10) - 1;
      }

      *(a4 + 2) = v13;
    }

    result = sub_277B1C4F0(0, a3, 0xFFu, 1, a2);
    *a5 = result;
    if (result)
    {
      if (result < 1)
      {
        v14 = result + 1;
      }

      else
      {
        v14 = result - 1;
      }

      *a5 = v14;
    }

    if ((result & 0x10000) != 0)
    {
      if (result >> 16 < 1)
      {
        v15 = WORD1(result) + 1;
      }

      else
      {
        v15 = WORD1(result) - 1;
      }

      *(a5 + 2) = v15;
    }
  }

  return result;
}

uint64_t sub_277B1C6E4(uint64_t result, uint64_t a2, int a3, int a4, int a5, uint64_t a6, int a7, int a8, double a9, int16x4_t a10, int16x4_t a11, int a12, int a13, int a14, char a15, __int16 a16, char a17, int *a18, __int16 a19, __int16 a20, __int16 a21, __int16 a22)
{
  v479 = result;
  v486[22] = *MEMORY[0x277D85DE8];
  if (a13 >= 1)
  {
    v466 = 0;
    v465 = 0;
    v464 = a2 - 7;
    v461 = a8 + 4;
    v22 = *(a18 + 1);
    v23 = a18[4];
    v475 = a3 + 6;
    v24 = a4 - 1;
    v484 = a3 - 1;
    v481 = 2 * a19;
    v459 = 7 * a19;
    v460 = 4 * a19;
    v25 = a18[8];
    v26 = a18[9];
    if (v25)
    {
      v27 = 524352;
    }

    else
    {
      v27 = 525312;
    }

    v28 = vdupq_n_s32(v27);
    a10.i16[0] = *(a18 + 20);
    a11.i16[0] = *(a18 + 22);
    v462 = 66048 - 3 * a20;
    v29 = vdupq_n_s16(0xFE80u);
    v30 = vdupq_n_s16(0xE808u);
    v31 = *a18;
    v32.i64[0] = 0x400000004000;
    v32.i64[1] = 0x400000004000;
    v478 = 3 * a19;
    v457 = 6 * a19;
    v458 = 5 * a19;
    v33 = 2 * a21;
    v34 = 3 * a21;
    v35 = &xmmword_277BB7000;
    v36 = a13;
    while (1)
    {
      v463 = v36 - 8;
      if (v36 >= 8)
      {
        v37 = 8;
      }

      else
      {
        v37 = v36;
      }

      v38 = v37 - 4;
      if (v38 <= -3)
      {
        v38 = -3;
      }

      if (v37 <= -6)
      {
        v37 = -6;
      }

      if (a12 >= 1)
      {
        break;
      }

LABEL_263:
      v465 += 8;
      LODWORD(v466) = v466 + 8 * a14;
      HIDWORD(v466) += 8 * v23;
      v36 = v463;
      if (v465 >= a13)
      {
        return result;
      }
    }

    v39 = 0;
    v477 = v38 + 4;
    v476 = (v37 + 7);
    v480 = (v461 + v465) << a17;
    v483 = a13 - v465;
    v40 = v466;
    v41 = HIDWORD(v466);
    while (1)
    {
      v42 = (a7 + 4 + v39) << a15;
      result = v479;
      v43 = v479[5] * v480 + v479[4] * v42 + v479[1];
      v44 = (v479[3] * v480 + v479[2] * v42 + *v479) >> a15;
      v45 = v44 >> 16;
      v46 = (v43 >> a17) >> 16;
      v482 = v43 >> a17;
      if ((v44 >> 16) > -7)
      {
        if (v475 <= v45)
        {
          if (v483 >= -6)
          {
            v82 = v46;
            v83 = v46 - 7;
            v84 = v485;
            v85 = v476;
            do
            {
              if (v83 >= v24)
              {
                v86 = v24;
              }

              else
              {
                v86 = v83;
              }

              if (v82 < 7)
              {
                v86 = 0;
              }

              result = 16 * *(a2 + v484 + v86 * a5) + 2048;
              *v84++ = vdupq_n_s16(result);
              ++v83;
              ++v82;
              --v85;
            }

            while (v85);
          }
        }

        else
        {
          v52 = ((v44 & 0xFFFC) - 4 * (a20 + a19)) & 0xFFFFFFC0;
          v53 = v52 + 66048;
          v469 = 6 - v45;
          v54 = v45 - a3;
          v55 = v45 - a3 + 8;
          v57 = v45 < 7 || v55 >= 0;
          if (a12 == 4)
          {
            result = a20;
            if (a20)
            {
              result = a19;
              if (a19)
              {
                if (v57)
                {
                  if (v483 < -6)
                  {
                    goto LABEL_87;
                  }

                  v58 = vdupq_n_s8(v469);
                  v59 = vdupq_n_s8(7 - (v45 - a3));
                  v470 = 6 - v54;
                  v60 = v46;
                  v61 = v462 + v52;
                  v62 = v46 - 7;
                  v63 = v485;
                  v64 = v476;
                  do
                  {
                    if (v62 >= v24)
                    {
                      v65 = v24;
                    }

                    else
                    {
                      v65 = v62;
                    }

                    if (v60 < 7)
                    {
                      v65 = 0;
                    }

                    v66 = (v464 + v45 + v65 * a5);
                    v67 = *v66;
                    if (v45 <= 6)
                    {
                      v68 = &v66->i8[(7 - v45)];
                      v69 = vld1q_dup_s8(v68);
                      v67 = vbslq_s8(vcgtq_u8(xmmword_277BB79D0, v58), v67, v69);
                    }

                    if ((v55 & 0x80000000) == 0)
                    {
                      v35 = &xmmword_277BB7000;
                      v70 = &v66->i8[v470];
                      v71 = vld1q_dup_s8(v70);
                      v67 = vbslq_s8(vcgtq_u8(v59, xmmword_277BB79D0), v67, v71);
                    }

                    _Q17 = vuzp1q_s8(xmmword_277C395F8[v61 >> 10], xmmword_277C395F8[(a19 + v61) >> 10]);
                    _Q18 = vuzp1q_s8(xmmword_277C395F8[(v481 + v61) >> 10], xmmword_277C395F8[(v478 + v61) >> 10]);
                    *&_Q20 = v67.i64[0];
                    *(&_Q20 + 1) = vextq_s8(v67, v67, 1uLL).u64[0];
                    __asm { USDOT           V19.4S, V20.16B, V17.16B }

                    _Q16 = vqtbl1q_s8(v67, v35[170]);
                    __asm { USDOT           V17.4S, V16.16B, V18.16B }

                    v81 = vaddq_s32(vpaddq_s32(_Q19, _Q17), v32);
                    *v81.i8 = vqrshrun_n_s32(v81, 3uLL);
                    *v63++ = v81;
                    result = a20;
                    v61 += a20;
                    ++v62;
                    ++v60;
                    --v64;
                  }

                  while (v64);
                }

                else
                {
                  if (v483 < -6)
                  {
                    goto LABEL_87;
                  }

                  v281 = v464 + ((v44 >> 16) & 0x7FFFFFFF);
                  v282 = v46;
                  v283 = v462 + v52;
                  v284 = v46 - 7;
                  v285 = v485;
                  v286 = v476;
                  do
                  {
                    if (v284 >= v24)
                    {
                      v287 = v24;
                    }

                    else
                    {
                      v287 = v284;
                    }

                    if (v282 < 7)
                    {
                      v287 = 0;
                    }

                    _Q6 = *(v281 + v287 * a5);
                    _Q7 = vuzp1q_s8(xmmword_277C395F8[v283 >> 10], xmmword_277C395F8[(a19 + v283) >> 10]);
                    _Q16 = vqtbl1q_s8(_Q6, v35[170]);
                    _Q6.i64[1] = vextq_s8(_Q6, _Q6, 1uLL).u64[0];
                    _Q17 = vuzp1q_s8(xmmword_277C395F8[(v481 + v283) >> 10], xmmword_277C395F8[(v478 + v283) >> 10]);
                    __asm
                    {
                      USDOT           V19.4S, V6.16B, V7.16B
                      USDOT           V6.4S, V16.16B, V17.16B
                    }

                    v294 = vaddq_s32(vpaddq_s32(_Q19, _Q6), v32);
                    *v294.i8 = vqrshrun_n_s32(v294, 3uLL);
                    *v285++ = v294;
                    result = a20;
                    v283 += a20;
                    ++v284;
                    ++v282;
                    --v286;
                  }

                  while (v286);
                }
              }

              else if (v57)
              {
                if (v483 < -6)
                {
                  goto LABEL_87;
                }

                v240 = vdupq_n_s8(v469);
                v241 = vdupq_n_s8(7 - (v45 - a3));
                v467 = 6 - v54;
                v242 = v46;
                v243 = v462 + v52;
                v244 = v46 - 7;
                v245 = v485;
                v246 = v476;
                do
                {
                  if (v244 >= v24)
                  {
                    v247 = v24;
                  }

                  else
                  {
                    v247 = v244;
                  }

                  if (v242 < 7)
                  {
                    v247 = 0;
                  }

                  result = v464 + v45 + v247 * a5;
                  v248 = *result;
                  if (v45 <= 6)
                  {
                    v249 = (result + (7 - v45));
                    v250 = vld1q_dup_s8(v249);
                    v248 = vbslq_s8(vcgtq_u8(xmmword_277BB79D0, v240), v248, v250);
                  }

                  if ((v55 & 0x80000000) == 0)
                  {
                    v251 = (result + v467);
                    v252 = vld1q_dup_s8(v251);
                    v248 = vbslq_s8(vcgtq_u8(v241, xmmword_277BB79D0), v248, v252);
                  }

                  _Q17 = xmmword_277C395F8[v243 >> 10];
                  _Q17.i16[0] = vuzp1q_s8(_Q17, _Q17).u16[0];
                  _Q18 = vqtbl1q_s8(v248, xmmword_277BB74E0);
                  _Q16 = vqtbl1q_s8(v248, xmmword_277BB7AD0);
                  __asm
                  {
                    USDOT           V19.4S, V18.16B, V17.4B[0]
                    USDOT           V19.4S, V16.16B, V17.4B[1]
                  }

                  v258 = vaddq_s32(_Q19, v32);
                  *v258.i8 = vqrshrun_n_s32(v258, 3uLL);
                  *v245++ = v258;
                  v243 += a20;
                  ++v244;
                  ++v242;
                  --v246;
                }

                while (v246);
              }

              else
              {
                if (v483 < -6)
                {
                  goto LABEL_87;
                }

                v393 = v464 + ((v44 >> 16) & 0x7FFFFFFF);
                v394 = v46;
                v395 = v462 + v52;
                v396 = v46 - 7;
                v397 = v485;
                v398 = v476;
                do
                {
                  if (v396 >= v24)
                  {
                    v399 = v24;
                  }

                  else
                  {
                    v399 = v396;
                  }

                  if (v394 < 7)
                  {
                    v399 = 0;
                  }

                  v400 = *(v393 + v399 * a5);
                  _Q7 = xmmword_277C395F8[v395 >> 10];
                  _Q7.i16[0] = vuzp1q_s8(_Q7, _Q7).u16[0];
                  _Q16 = vqtbl1q_s8(v400, xmmword_277BB74E0);
                  _Q6 = vqtbl1q_s8(v400, xmmword_277BB7AD0);
                  __asm
                  {
                    USDOT           V17.4S, V16.16B, V7.4B[0]
                    USDOT           V17.4S, V6.16B, V7.4B[1]
                  }

                  v406 = vaddq_s32(_Q17, v32);
                  *v406.i8 = vqrshrun_n_s32(v406, 3uLL);
                  *v397++ = v406;
                  result = a20;
                  v395 += a20;
                  ++v396;
                  ++v394;
                  --v398;
                }

                while (v398);
              }
            }

            else if (a19)
            {
              if (v57)
              {
                if (v483 < -6)
                {
                  goto LABEL_87;
                }

                v195 = vdupq_n_s8(v469);
                v196 = vdupq_n_s8(7 - (v45 - a3));
                v472 = 6 - v54;
                _Q16 = vuzp1q_s8(xmmword_277C395F8[v53 >> 10], xmmword_277C395F8[(v53 + a19) >> 10]);
                _Q17 = vuzp1q_s8(xmmword_277C395F8[(v53 + v481) >> 10], xmmword_277C395F8[(v53 + v478) >> 10]);
                v199 = v46;
                v200 = v46 - 7;
                v201 = v485;
                v202 = v476;
                do
                {
                  if (v200 >= v24)
                  {
                    v203 = v24;
                  }

                  else
                  {
                    v203 = v200;
                  }

                  if (v199 < 7)
                  {
                    v203 = 0;
                  }

                  result = v464 + v45 + v203 * a5;
                  v204 = *result;
                  if (v45 <= 6)
                  {
                    v205 = (result + (7 - v45));
                    v206 = vld1q_dup_s8(v205);
                    v204 = vbslq_s8(vcgtq_u8(xmmword_277BB79D0, v195), v204, v206);
                  }

                  if ((v55 & 0x80000000) == 0)
                  {
                    v207 = (result + v472);
                    v208 = vld1q_dup_s8(v207);
                    v204 = vbslq_s8(vcgtq_u8(v196, xmmword_277BB79D0), v204, v208);
                  }

                  *&_Q20 = v204.i64[0];
                  *(&_Q20 + 1) = vextq_s8(v204, v204, 1uLL).u64[0];
                  __asm { USDOT           V19.4S, V20.16B, V16.16B }

                  _Q18 = vqtbl1q_s8(v204, v35[170]);
                  __asm { USDOT           V20.4S, V18.16B, V17.16B }

                  v213 = vaddq_s32(vpaddq_s32(_Q19, _Q20), v32);
                  *v213.i8 = vqrshrun_n_s32(v213, 3uLL);
                  *v201++ = v213;
                  ++v200;
                  ++v199;
                  --v202;
                }

                while (v202);
              }

              else
              {
                if (v483 < -6)
                {
                  goto LABEL_87;
                }

                v363 = v464 + ((v44 >> 16) & 0x7FFFFFFF);
                _Q6 = vuzp1q_s8(xmmword_277C395F8[v53 >> 10], xmmword_277C395F8[(v53 + a19) >> 10]);
                _Q7 = vuzp1q_s8(xmmword_277C395F8[(v53 + v481) >> 10], xmmword_277C395F8[(v53 + v478) >> 10]);
                v366 = v46;
                v367 = v46 - 7;
                v368 = v485;
                v369 = v476;
                do
                {
                  if (v367 >= v24)
                  {
                    v370 = v24;
                  }

                  else
                  {
                    v370 = v367;
                  }

                  if (v366 < 7)
                  {
                    v370 = 0;
                  }

                  result = v370 * a5;
                  _Q16 = *(v363 + result);
                  _Q18 = vqtbl1q_s8(_Q16, v35[170]);
                  _Q16.i64[1] = vextq_s8(_Q16, _Q16, 1uLL).u64[0];
                  __asm
                  {
                    USDOT           V17.4S, V16.16B, V6.16B
                    USDOT           V16.4S, V18.16B, V7.16B
                  }

                  v375 = vaddq_s32(vpaddq_s32(_Q17, _Q16), v32);
                  *v375.i8 = vqrshrun_n_s32(v375, 3uLL);
                  *v368++ = v375;
                  ++v367;
                  ++v366;
                  --v369;
                }

                while (v369);
              }
            }

            else if (v57)
            {
              if (v483 < -6)
              {
                goto LABEL_87;
              }

              v318 = vdupq_n_s8(v469);
              v319 = vdupq_n_s8(7 - (v45 - a3));
              v474 = 6 - v54;
              v320 = vuzp1q_s8(xmmword_277C395F8[v53 >> 10], xmmword_277C395F8[v53 >> 10]).u64[0];
              _Q16 = vdupq_lane_s32(v320, 0);
              _Q17 = vdupq_lane_s32(v320, 1);
              v323 = v46;
              v324 = v46 - 7;
              v325 = v485;
              v326 = v476;
              do
              {
                if (v324 >= v24)
                {
                  v327 = v24;
                }

                else
                {
                  v327 = v324;
                }

                if (v323 < 7)
                {
                  v327 = 0;
                }

                result = v464 + v45 + v327 * a5;
                v328 = *result;
                if (v45 <= 6)
                {
                  v329 = (result + (7 - v45));
                  v330 = vld1q_dup_s8(v329);
                  v328 = vbslq_s8(vcgtq_u8(xmmword_277BB79D0, v318), v328, v330);
                }

                if ((v55 & 0x80000000) == 0)
                {
                  v331 = (result + v474);
                  v332 = vld1q_dup_s8(v331);
                  v328 = vbslq_s8(vcgtq_u8(v319, xmmword_277BB79D0), v328, v332);
                }

                _Q19 = vqtbl1q_s8(v328, xmmword_277BB74E0);
                _Q18 = vqtbl1q_s8(v328, xmmword_277BB7AD0);
                __asm
                {
                  USDOT           V20.4S, V19.16B, V16.16B
                  USDOT           V20.4S, V18.16B, V17.16B
                }

                v337 = vaddq_s32(_Q20, v32);
                *v337.i8 = vqrshrun_n_s32(v337, 3uLL);
                *v325++ = v337;
                ++v324;
                ++v323;
                --v326;
              }

              while (v326);
            }

            else
            {
              if (v483 < -6)
              {
                goto LABEL_87;
              }

              v423 = v464 + ((v44 >> 16) & 0x7FFFFFFF);
              v424 = xmmword_277C395F8[v53 >> 10];
              v425 = vuzp1q_s8(v424, v424).u64[0];
              _Q6 = vdupq_lane_s32(v425, 0);
              _Q7 = vdupq_lane_s32(v425, 1);
              v428 = v46;
              v429 = v46 - 7;
              v430 = v485;
              v431 = v476;
              do
              {
                if (v429 >= v24)
                {
                  v432 = v24;
                }

                else
                {
                  v432 = v429;
                }

                if (v428 < 7)
                {
                  v432 = 0;
                }

                v433 = *(v423 + v432 * a5);
                _Q17 = vqtbl1q_s8(v433, xmmword_277BB74E0);
                result = &xmmword_277BB7000;
                _Q16 = vqtbl1q_s8(v433, xmmword_277BB7AD0);
                __asm
                {
                  USDOT           V18.4S, V17.16B, V6.16B
                  USDOT           V18.4S, V16.16B, V7.16B
                }

                v438 = vaddq_s32(_Q18, v32);
                *v438.i8 = vqrshrun_n_s32(v438, 3uLL);
                *v430++ = v438;
                ++v429;
                ++v428;
                --v431;
              }

              while (v431);
            }
          }

          else
          {
            result = a20;
            if (a20)
            {
              result = a19;
              if (a19)
              {
                if (v57)
                {
                  if (v483 >= -6)
                  {
                    v165 = vdupq_n_s8(v469);
                    v166 = vdupq_n_s8(7 - (v45 - a3));
                    v471 = 6 - v54;
                    v46 = v46;
                    v167 = v462 + v52;
                    v168 = v46 - 7;
                    v169 = v485;
                    v170 = v476;
                    do
                    {
                      if (v168 >= v24)
                      {
                        v171 = v24;
                      }

                      else
                      {
                        v171 = v168;
                      }

                      if (v46 < 7)
                      {
                        v171 = 0;
                      }

                      v172 = (v464 + v45 + v171 * a5);
                      v173 = *v172;
                      if (v45 <= 6)
                      {
                        v174 = &v172->i8[(7 - v45)];
                        v175 = vld1q_dup_s8(v174);
                        v173 = vbslq_s8(vcgtq_u8(xmmword_277BB79D0, v165), v173, v175);
                      }

                      if ((v55 & 0x80000000) == 0)
                      {
                        v176 = &v172->i8[v471];
                        v177 = vld1q_dup_s8(v176);
                        v173 = vbslq_s8(vcgtq_u8(v166, xmmword_277BB79D0), v173, v177);
                      }

                      v178 = a19 + v481 + v167;
                      v179 = xmmword_277C395F8[v178 >> 10];
                      v180 = a19 + v178;
                      v181 = xmmword_277C395F8[v180 >> 10];
                      v182 = a19 + v180;
                      _Q17 = vuzp1q_s8(xmmword_277C395F8[v167 >> 10], xmmword_277C395F8[(a19 + v167) >> 10]);
                      _Q18 = vuzp1q_s8(xmmword_277C395F8[(v481 + v167) >> 10], v179);
                      _Q19 = vuzp1q_s8(v181, xmmword_277C395F8[v182 >> 10]);
                      _Q20 = vuzp1q_s8(xmmword_277C395F8[(a19 + v182) >> 10], xmmword_277C395F8[(a19 + a19 + v182) >> 10]);
                      *&_Q22 = v173.i64[0];
                      *(&_Q22 + 1) = vextq_s8(v173, v173, 1uLL).u64[0];
                      __asm { USDOT           V21.4S, V22.16B, V17.16B }

                      v35 = &xmmword_277BB7000;
                      _Q17 = vqtbl1q_s8(v173, xmmword_277BB7AA0);
                      __asm { USDOT           V22.4S, V17.16B, V18.16B }

                      _Q17 = vqtbl1q_s8(v173, xmmword_277BB7AB0);
                      __asm { USDOT           V18.4S, V17.16B, V19.16B }

                      _Q16 = vqtbl1q_s8(v173, xmmword_277BB7AC0);
                      __asm { USDOT           V17.4S, V16.16B, V20.16B }

                      *v169++ = vqrshrun_high_n_s32(vqrshrun_n_s32(vaddq_s32(vpaddq_s32(_Q21, _Q22), v32), 3uLL), vaddq_s32(vpaddq_s32(_Q18, _Q17), v32), 3uLL);
                      result = a20;
                      v167 += a20;
                      ++v168;
                      ++v46;
                      --v170;
                    }

                    while (v170);
                  }
                }

                else if (v483 >= -6)
                {
                  v295 = v464 + ((v44 >> 16) & 0x7FFFFFFF);
                  v46 = v46;
                  v296 = v462 + v52;
                  v297 = v46 - 7;
                  v298 = v485;
                  v299 = v476;
                  do
                  {
                    if (v297 >= v24)
                    {
                      v300 = v24;
                    }

                    else
                    {
                      v300 = v297;
                    }

                    if (v46 < 7)
                    {
                      v300 = 0;
                    }

                    _Q6 = *(v295 + v300 * a5);
                    v302 = a19 + v481 + v296;
                    v303 = xmmword_277C395F8[v302 >> 10];
                    v304 = a19 + v302;
                    v305 = xmmword_277C395F8[v304 >> 10];
                    v306 = a19 + v304;
                    _Q7 = vuzp1q_s8(xmmword_277C395F8[v296 >> 10], xmmword_277C395F8[(a19 + v296) >> 10]);
                    _Q16 = vuzp1q_s8(xmmword_277C395F8[(v481 + v296) >> 10], v303);
                    _Q17 = vuzp1q_s8(v305, xmmword_277C395F8[v306 >> 10]);
                    _Q18 = vuzp1q_s8(xmmword_277C395F8[(a19 + v306) >> 10], xmmword_277C395F8[(a19 + a19 + v306) >> 10]);
                    _Q20 = vqtbl1q_s8(_Q6, v35[170]);
                    _Q21 = vqtbl1q_s8(_Q6, xmmword_277BB7AB0);
                    _Q22 = vqtbl1q_s8(_Q6, xmmword_277BB7AC0);
                    _Q6.i64[1] = vextq_s8(_Q6, _Q6, 1uLL).u64[0];
                    __asm
                    {
                      USDOT           V19.4S, V6.16B, V7.16B
                      USDOT           V6.4S, V20.16B, V16.16B
                      USDOT           V7.4S, V21.16B, V17.16B
                      USDOT           V16.4S, V22.16B, V18.16B
                    }

                    *v298++ = vqrshrun_high_n_s32(vqrshrun_n_s32(vaddq_s32(vpaddq_s32(_Q19, _Q6), v32), 3uLL), vaddq_s32(vpaddq_s32(_Q7, _Q16), v32), 3uLL);
                    result = a20;
                    v296 += a20;
                    ++v297;
                    ++v46;
                    --v299;
                  }

                  while (v299);
                }
              }

              else if (v57)
              {
                if (v483 >= -6)
                {
                  v259 = vdupq_n_s8(v469);
                  v260 = vdupq_n_s8(7 - (v45 - a3));
                  v473 = 6 - v54;
                  v261 = v46;
                  v262 = v462 + v52;
                  v263 = v46 - 7;
                  v264 = v485;
                  v265 = v476;
                  do
                  {
                    if (v263 >= v24)
                    {
                      v266 = v24;
                    }

                    else
                    {
                      v266 = v263;
                    }

                    if (v261 < 7)
                    {
                      v266 = 0;
                    }

                    v267 = (v464 + v45 + v266 * a5);
                    v268 = *v267;
                    if (v45 <= 6)
                    {
                      v269 = &v267->i8[(7 - v45)];
                      v270 = vld1q_dup_s8(v269);
                      v268 = vbslq_s8(vcgtq_u8(xmmword_277BB79D0, v259), v268, v270);
                    }

                    if ((v55 & 0x80000000) == 0)
                    {
                      v35 = &xmmword_277BB7000;
                      v271 = &v267->i8[v473];
                      v272 = vld1q_dup_s8(v271);
                      v268 = vbslq_s8(vcgtq_u8(v260, xmmword_277BB79D0), v268, v272);
                    }

                    _Q17 = xmmword_277C395F8[v262 >> 10];
                    _Q17.i16[0] = vuzp1q_s8(_Q17, _Q17).u16[0];
                    _Q18 = vqtbl1q_s8(v268, xmmword_277BB74E0);
                    _Q19 = vqtbl1q_s8(v268, xmmword_277BB7AD0);
                    _Q16 = vqtbl1q_s8(v268, xmmword_277BB7AE0);
                    __asm
                    {
                      USDOT           V20.4S, V18.16B, V17.4B[0]
                      USDOT           V20.4S, V19.16B, V17.4B[1]
                      USDOT           V18.4S, V19.16B, V17.4B[0]
                      USDOT           V18.4S, V16.16B, V17.4B[1]
                    }

                    *v264++ = vqrshrun_high_n_s32(vqrshrun_n_s32(vaddq_s32(_Q20, v32), 3uLL), vaddq_s32(_Q18, v32), 3uLL);
                    result = a20;
                    v262 += a20;
                    ++v263;
                    ++v261;
                    --v265;
                  }

                  while (v265);
                }
              }

              else if (v483 >= -6)
              {
                v407 = v464 + ((v44 >> 16) & 0x7FFFFFFF);
                v408 = v46;
                v409 = v462 + v52;
                v410 = v46 - 7;
                v411 = v485;
                v412 = v476;
                do
                {
                  if (v410 >= v24)
                  {
                    v413 = v24;
                  }

                  else
                  {
                    v413 = v410;
                  }

                  if (v408 < 7)
                  {
                    v413 = 0;
                  }

                  v414 = *(v407 + v413 * a5);
                  _Q7 = xmmword_277C395F8[v409 >> 10];
                  _Q7.i16[0] = vuzp1q_s8(_Q7, _Q7).u16[0];
                  _Q16 = vqtbl1q_s8(v414, xmmword_277BB74E0);
                  _Q17 = vqtbl1q_s8(v414, xmmword_277BB7AD0);
                  _Q6 = vqtbl1q_s8(v414, xmmword_277BB7AE0);
                  __asm
                  {
                    USDOT           V18.4S, V16.16B, V7.4B[0]
                    USDOT           V18.4S, V17.16B, V7.4B[1]
                    USDOT           V16.4S, V17.16B, V7.4B[0]
                    USDOT           V16.4S, V6.16B, V7.4B[1]
                  }

                  *v411++ = vqrshrun_high_n_s32(vqrshrun_n_s32(vaddq_s32(_Q18, v32), 3uLL), vaddq_s32(_Q16, v32), 3uLL);
                  result = a20;
                  v409 += a20;
                  ++v410;
                  ++v408;
                  --v412;
                }

                while (v412);
              }
            }

            else if (a19)
            {
              if (v57)
              {
                if (v483 >= -6)
                {
                  v214 = vdupq_n_s8(v469);
                  v215 = vdupq_n_s8(7 - (v45 - a3));
                  _Q16 = vuzp1q_s8(xmmword_277C395F8[v53 >> 10], xmmword_277C395F8[(v53 + a19) >> 10]);
                  _Q17 = vuzp1q_s8(xmmword_277C395F8[(v53 + v481) >> 10], xmmword_277C395F8[(v53 + v478) >> 10]);
                  _Q18 = vuzp1q_s8(xmmword_277C395F8[(v53 + v460) >> 10], xmmword_277C395F8[(v53 + v458) >> 10]);
                  _Q19 = vuzp1q_s8(xmmword_277C395F8[(v53 + v457) >> 10], xmmword_277C395F8[(v53 + v459) >> 10]);
                  v220 = 6 - v54;
                  v221 = v46;
                  v222 = v46 - 7;
                  v223 = v485;
                  v224 = v476;
                  do
                  {
                    if (v222 >= v24)
                    {
                      v225 = v24;
                    }

                    else
                    {
                      v225 = v222;
                    }

                    if (v221 < 7)
                    {
                      v225 = 0;
                    }

                    v226 = (v464 + v45 + v225 * a5);
                    v227 = *v226;
                    if (v45 <= 6)
                    {
                      v228 = &v226->i8[(7 - v45)];
                      v229 = vld1q_dup_s8(v228);
                      v227 = vbslq_s8(vcgtq_u8(xmmword_277BB79D0, v214), v227, v229);
                    }

                    if ((v55 & 0x80000000) == 0)
                    {
                      v35 = &xmmword_277BB7000;
                      v230 = &v226->i8[v220];
                      v231 = vld1q_dup_s8(v230);
                      v227 = vbslq_s8(vcgtq_u8(v215, xmmword_277BB79D0), v227, v231);
                    }

                    *&_Q22 = v227.i64[0];
                    *(&_Q22 + 1) = vextq_s8(v227, v227, 1uLL).u64[0];
                    __asm { USDOT           V21.4S, V22.16B, V16.16B }

                    _Q22 = vqtbl1q_s8(v227, v35[170]);
                    __asm { USDOT           V23.4S, V22.16B, V17.16B }

                    _Q22 = vqtbl1q_s8(v227, xmmword_277BB7AB0);
                    __asm { USDOT           V24.4S, V22.16B, V18.16B }

                    result = &xmmword_277BB7000;
                    _Q20 = vqtbl1q_s8(v227, xmmword_277BB7AC0);
                    __asm { USDOT           V22.4S, V20.16B, V19.16B }

                    *v223++ = vqrshrun_high_n_s32(vqrshrun_n_s32(vaddq_s32(vpaddq_s32(_Q21, _Q23), v32), 3uLL), vaddq_s32(vpaddq_s32(_Q24, _Q22), v32), 3uLL);
                    ++v222;
                    ++v221;
                    --v224;
                  }

                  while (v224);
                }
              }

              else if (v483 >= -6)
              {
                v376 = v464 + ((v44 >> 16) & 0x7FFFFFFF);
                _Q6 = vuzp1q_s8(xmmword_277C395F8[v53 >> 10], xmmword_277C395F8[(v53 + a19) >> 10]);
                _Q7 = vuzp1q_s8(xmmword_277C395F8[(v53 + v481) >> 10], xmmword_277C395F8[(v53 + v478) >> 10]);
                _Q16 = vuzp1q_s8(xmmword_277C395F8[(v53 + v460) >> 10], xmmword_277C395F8[(v53 + v458) >> 10]);
                _Q17 = vuzp1q_s8(xmmword_277C395F8[(v53 + v457) >> 10], xmmword_277C395F8[(v53 + v459) >> 10]);
                v381 = v46 - 7;
                v382 = v485;
                v383 = v476;
                v46 = v46;
                do
                {
                  if (v381 >= v24)
                  {
                    v384 = v24;
                  }

                  else
                  {
                    v384 = v381;
                  }

                  if (v46 < 7)
                  {
                    v384 = 0;
                  }

                  _Q18 = *(v376 + v384 * a5);
                  _Q20 = vqtbl1q_s8(_Q18, v35[170]);
                  _Q21 = vqtbl1q_s8(_Q18, xmmword_277BB7AB0);
                  result = &xmmword_277BB7000;
                  _Q22 = vqtbl1q_s8(_Q18, xmmword_277BB7AC0);
                  _Q18.i64[1] = vextq_s8(_Q18, _Q18, 1uLL).u64[0];
                  __asm
                  {
                    USDOT           V19.4S, V18.16B, V6.16B
                    USDOT           V18.4S, V20.16B, V7.16B
                    USDOT           V20.4S, V21.16B, V16.16B
                    USDOT           V23.4S, V22.16B, V17.16B
                  }

                  *v382++ = vqrshrun_high_n_s32(vqrshrun_n_s32(vaddq_s32(vpaddq_s32(_Q19, _Q18), v32), 3uLL), vaddq_s32(vpaddq_s32(_Q20, _Q23), v32), 3uLL);
                  ++v381;
                  ++v46;
                  --v383;
                }

                while (v383);
              }
            }

            else if (v57)
            {
              if (v483 >= -6)
              {
                v338 = vdupq_n_s8(v469);
                v339 = vdupq_n_s8(7 - (v45 - a3));
                v340 = 6 - v54;
                v341 = xmmword_277C395F8[v53 >> 10];
                v342 = vuzp1q_s8(v341, v341).u64[0];
                _Q16 = vdupq_lane_s32(v342, 0);
                _Q17 = vdupq_lane_s32(v342, 1);
                v345 = v46;
                v346 = v46 - 7;
                v347 = v485;
                v348 = v476;
                do
                {
                  if (v346 >= v24)
                  {
                    v349 = v24;
                  }

                  else
                  {
                    v349 = v346;
                  }

                  if (v345 < 7)
                  {
                    v349 = 0;
                  }

                  v350 = (v464 + v45 + v349 * a5);
                  v351 = *v350;
                  if (v45 <= 6)
                  {
                    v352 = &v350->i8[(7 - v45)];
                    v353 = vld1q_dup_s8(v352);
                    v351 = vbslq_s8(vcgtq_u8(xmmword_277BB79D0, v338), v351, v353);
                  }

                  if ((v55 & 0x80000000) == 0)
                  {
                    v35 = &xmmword_277BB7000;
                    v354 = &v350->i8[v340];
                    v355 = vld1q_dup_s8(v354);
                    v351 = vbslq_s8(vcgtq_u8(v339, xmmword_277BB79D0), v351, v355);
                  }

                  _Q19 = vqtbl1q_s8(v351, xmmword_277BB74E0);
                  _Q20 = vqtbl1q_s8(v351, xmmword_277BB7AD0);
                  result = &xmmword_277BB7000;
                  _Q18 = vqtbl1q_s8(v351, xmmword_277BB7AE0);
                  __asm
                  {
                    USDOT           V21.4S, V19.16B, V16.16B
                    USDOT           V21.4S, V20.16B, V17.16B
                    USDOT           V19.4S, V20.16B, V16.16B
                    USDOT           V19.4S, V18.16B, V17.16B
                  }

                  *v347++ = vqrshrun_high_n_s32(vqrshrun_n_s32(vaddq_s32(_Q21, v32), 3uLL), vaddq_s32(_Q19, v32), 3uLL);
                  ++v346;
                  ++v345;
                  --v348;
                }

                while (v348);
              }
            }

            else if (v483 >= -6)
            {
              v439 = v464 + ((v44 >> 16) & 0x7FFFFFFF);
              v440 = xmmword_277C395F8[v53 >> 10];
              v441 = vuzp1q_s8(v440, v440).u64[0];
              _Q6 = vdupq_lane_s32(v441, 0);
              _Q7 = vdupq_lane_s32(v441, 1);
              v444 = v46;
              v445 = v46 - 7;
              v446 = v485;
              v447 = v476;
              do
              {
                if (v445 >= v24)
                {
                  v448 = v24;
                }

                else
                {
                  v448 = v445;
                }

                if (v444 < 7)
                {
                  v448 = 0;
                }

                v449 = *(v439 + v448 * a5);
                _Q17 = vqtbl1q_s8(v449, xmmword_277BB74E0);
                _Q18 = vqtbl1q_s8(v449, xmmword_277BB7AD0);
                result = &xmmword_277BB7000;
                _Q16 = vqtbl1q_s8(v449, xmmword_277BB7AE0);
                __asm
                {
                  USDOT           V19.4S, V17.16B, V6.16B
                  USDOT           V19.4S, V18.16B, V7.16B
                  USDOT           V17.4S, V18.16B, V6.16B
                  USDOT           V17.4S, V16.16B, V7.16B
                }

                *v446++ = vqrshrun_high_n_s32(vqrshrun_n_s32(vaddq_s32(_Q19, v32), 3uLL), vaddq_s32(_Q17, v32), 3uLL);
                ++v445;
                ++v444;
                --v447;
              }

              while (v447);
            }
          }
        }
      }

      else if (v483 >= -6)
      {
        v47 = v46;
        v48 = v46 - 7;
        v49 = v485;
        v50 = v476;
        do
        {
          if (v48 >= v24)
          {
            v51 = v24;
          }

          else
          {
            v51 = v48;
          }

          if (v47 < 7)
          {
            v51 = 0;
          }

          result = 16 * *(a2 + v51 * a5) + 2048;
          *v49++ = vdupq_n_s16(result);
          ++v48;
          ++v47;
          --v50;
        }

        while (v50);
      }

      v87 = (((v482 & 0xFFFC) - 4 * (a22 + a21)) & 0xFFFFFFC0) + 66048;
      if (a12 <= 4)
      {
        v139 = v486;
        v140 = v477;
        v141 = v41;
        v142 = v40;
        result = 59400;
        if (v483 >= 1)
        {
          do
          {
            v143 = *v139[-8].i8;
            v144 = *v139[-6].i8;
            v146 = *v139[-4].i8;
            v145 = *v139[-2].i8;
            v147 = v87 >> 10;
            if (a21)
            {
              v143.u64[1] = *v139;
              v144.u64[1] = v139[2];
              v146.u64[1] = v139[4];
              v145.u64[1] = v139[6];
              v148 = vtrn1q_s16(v143, v144);
              v149 = vtrn2q_s16(v143, v144);
              v150 = vtrn1q_s16(v146, v145);
              v151 = vtrn2q_s16(v146, v145);
              v152 = vtrn1q_s32(v148, v150);
              v153 = vtrn2q_s32(v148, v150);
              v154 = vtrn1q_s32(v149, v151);
              v155 = xmmword_277C395F8[(a21 + v87) >> 10];
              v156 = xmmword_277C395F8[(v33 + v87) >> 10];
              v157 = xmmword_277C395F8[(v34 + v87) >> 10];
              v158 = vtrn2q_s32(v149, v151);
              v159 = vpaddq_s32(vpaddq_s32(vmlal_high_s16(vmull_s16(*v152.i8, *xmmword_277C395F8[v147].i8), v152, xmmword_277C395F8[v147]), vmlal_high_s16(vmull_s16(*v154.i8, *v155.i8), v154, v155)), vpaddq_s32(vmlal_high_s16(vmull_s16(*v153.i8, *v156.i8), v153, v156), vmlal_high_s16(vmull_s16(*v158.i8, *v157.i8), v158, v157)));
            }

            else
            {
              v160 = xmmword_277C395F8[v147];
              v159 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v144.i8, *v160.i8, 1), *v143.i8, *v160.i8, 0), *v146.i8, *v160.i8, 2), *v145.i8, *v160.i8, 3), *v139, v160, 4), v139[2], v160, 5), v139[4], v160, 6), v139[6], v160, 7);
            }

            v161 = vaddq_s32(v159, v28);
            if (v25)
            {
              v162 = (v22 + 2 * v141);
              v163 = vshrn_n_s32(v161, 7uLL);
              if (v31)
              {
                v164 = *v162;
                if (v26)
                {
                  v161 = vmlal_lane_s16(vmull_lane_s16(v163, a11, 0), v164, a10, 0);
                  *v161.i8 = vshrn_n_s32(v161, 4uLL);
                }

                else
                {
                  *v161.i8 = vhadd_s16(v164, v163);
                }

                *v161.i8 = vadd_s16(*v161.i8, vdup_n_s16(0xE808u));
                *(a6 + v142) = vqshrun_n_s16(v161, 4uLL).u32[0];
              }

              else
              {
                *v162 = v163;
              }
            }

            else
            {
              *v161.i8 = vadd_s16(vshrn_n_s32(v161, 0xBuLL), vdup_n_s16(0xFE80u));
              *(a6 + v142) = vqmovun_s16(v161).u32[0];
            }

            v142 += a14;
            v141 += v23;
            v87 += a22;
            v139 += 2;
            --v140;
          }

          while (v140);
        }
      }

      else if (v483 >= 1)
      {
        v88 = v486;
        v89 = v477;
        v90 = v41;
        v91 = v40;
        while (1)
        {
          v92 = v88[-4];
          v93 = v88[-3];
          v95 = v88[-2];
          v94 = v88[-1];
          v97 = *v88;
          v96 = v88[1];
          v98 = v87 >> 10;
          v100 = v88[2];
          v99 = v88[3];
          if (a21)
          {
            v101 = vtrn1q_s16(v92, v93);
            v102 = vtrn2q_s16(v92, v93);
            v103 = vtrn1q_s16(v95, v94);
            v104 = vtrn2q_s16(v95, v94);
            v105 = vtrn1q_s16(v97, v96);
            v106 = vtrn2q_s16(v97, v96);
            v107 = vtrn1q_s16(v100, v99);
            v108 = vtrn2q_s16(v100, v99);
            v109 = vtrn1q_s32(v101, v103);
            v110 = vtrn2q_s32(v101, v103);
            v111 = vtrn1q_s32(v102, v104);
            v112 = vtrn2q_s32(v102, v104);
            v113 = vtrn1q_s32(v105, v107);
            v114 = vtrn2q_s32(v105, v107);
            v115 = vtrn1q_s32(v106, v108);
            v116 = vtrn2q_s32(v106, v108);
            v117 = vzip2q_s64(v109, v113);
            v118 = vzip2q_s64(v111, v115);
            v119 = vzip2q_s64(v110, v114);
            v120 = vzip2q_s64(v112, v116);
            v121 = xmmword_277C395F8[(a21 + v87) >> 10];
            v122 = xmmword_277C395F8[(v33 + v87) >> 10];
            v123 = xmmword_277C395F8[(v34 + v87) >> 10];
            v124 = xmmword_277C395F8[(4 * a21 + v87) >> 10];
            v125 = xmmword_277C395F8[(5 * a21 + v87) >> 10];
            v126 = xmmword_277C395F8[(6 * a21 + v87) >> 10];
            v127 = xmmword_277C395F8[(7 * a21 + v87) >> 10];
            v128 = vpaddq_s32(vpaddq_s32(vmlal_s16(vmull_s16(*v113.i8, *&vextq_s8(xmmword_277C395F8[v98], xmmword_277C395F8[v98], 8uLL)), *v109.i8, *xmmword_277C395F8[v98].i8), vmlal_s16(vmull_s16(*v115.i8, *&vextq_s8(v121, v121, 8uLL)), *v111.i8, *v121.i8)), vpaddq_s32(vmlal_s16(vmull_s16(*v114.i8, *&vextq_s8(v122, v122, 8uLL)), *v110.i8, *v122.i8), vmlal_s16(vmull_s16(*v116.i8, *&vextq_s8(v123, v123, 8uLL)), *v112.i8, *v123.i8)));
            v129 = vpaddq_s32(vpaddq_s32(vmlal_high_s16(vmull_s16(*v117.i8, *v124.i8), v117, v124), vmlal_high_s16(vmull_s16(*v118.i8, *v125.i8), v118, v125)), vpaddq_s32(vmlal_high_s16(vmull_s16(*v119.i8, *v126.i8), v119, v126), vmlal_high_s16(vmull_s16(*v120.i8, *v127.i8), v120, v127)));
          }

          else
          {
            v130 = xmmword_277C395F8[v98];
            v128 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v93.i8, *v130.i8, 1), *v92.i8, *v130.i8, 0), *v95.i8, *v130.i8, 2), *v94.i8, *v130.i8, 3), *v97.i8, v130, 4), *v96.i8, v130, 5), *v100.i8, v130, 6), *v99.i8, v130, 7);
            v129 = vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v93, *v130.i8, 1), v92, *v130.i8, 0), v95, *v130.i8, 2), v94, *v130.i8, 3), v97, v130, 4), v96, v130, 5), v100, v130, 6), v99, v130, 7);
          }

          v131 = vaddq_s32(v128, v28);
          v132 = vaddq_s32(v129, v28);
          if (!v25)
          {
            break;
          }

          v133 = (v22 + 2 * v90);
          v134 = vshrn_n_s32(v131, 7uLL);
          v135 = vshrn_high_n_s32(v134, v132, 7uLL);
          if (v31)
          {
            v136 = *v133;
            if (v26)
            {
              v137 = vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v134, a11, 0), *v136.i8, a10, 0), 4uLL), vmlal_high_lane_s16(vmull_lane_s16(vshrn_n_s32(v132, 7uLL), a11, 0), v136, a10, 0), 4uLL);
            }

            else
            {
              v137 = vhaddq_s16(v136, v135);
            }

            v138 = vqshrun_n_s16(vaddq_s16(v137, v30), 4uLL);
            goto LABEL_71;
          }

          *v133 = v135;
LABEL_72:
          v91 += a14;
          v90 += v23;
          v87 += a22;
          ++v88;
          if (!--v89)
          {
            goto LABEL_87;
          }
        }

        v138 = vqmovun_s16(vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(v131, 0xBuLL), v132, 0xBuLL), v29));
LABEL_71:
        *(a6 + v91) = v138;
        goto LABEL_72;
      }

LABEL_87:
      v39 += 8;
      v40 += 8;
      v41 += 8;
      if (v39 >= a12)
      {
        goto LABEL_263;
      }
    }
  }

  return result;
}

void sub_277B1E00C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, unsigned __int8 *a6, int a7, int a8)
{
  v8 = a4;
  v9 = a1;
  v411[2] = *MEMORY[0x277D85DE8];
  v10 = *(a1 + 245840);
  v11 = 9 * a4;
  if (v10)
  {
    v12 = (v10 + 36 * a4 + 276);
  }

  else
  {
    v12 = &xmmword_277C3A208;
  }

  v13 = *(a1 + 272264);
  v375 = *(v13 + 16);
  v373 = *(v13 + 24);
  v377 = *(v13 + 32);
  v359 = a1 + 270312;
  v14 = *(*(a1 + 270312) + 72);
  v15 = *(a1 + 395516);
  v361 = *(a1 + 395520);
  v16 = *(a3 + 8 * a4);
  v366 = *(v13 + 104);
  v368 = *(v13 + 96);
  v17 = *(v16 + 96);
  v18 = sub_277A9F770(v13, v14, 0xCu, v368);
  v364 = v17;
  v19 = sub_277A9F770(v16, v14, 0xCu, v17);
  if ((v18 & 0x80000000) != 0 || v19 < 0)
  {
    goto LABEL_86;
  }

  pthread_mutex_lock(v366);
  if ((v366[1].__sig & 1) == 0)
  {
    v20 = *(v13 + 96);
    v21 = sub_277A9F770(v13, v14, v15 + 1, v20);
    if (v21 < 0 || (v22 = v21 - 1, v23 = *(v20 + 80) + 24 * (v21 - 1), v24 = *v23, v25 = *(v23 + 8), v26 = *(v23 + 12), v27 = *(v23 + 16), *&v406 = 0.0, LODWORD(v411[0]) = 0, v28 = sub_277B2CAF8(v24, v25, v26, v27, &v406, v411), v29 = LODWORD(v411[0]), (v411[0] & 0x80000000) != 0))
    {
      LOBYTE(v366[1].__sig) = 0;
      pthread_mutex_unlock(v366);
LABEL_86:

      sub_2779F5C10(a2, 2, "Failed to allocate global motion buffers");
      return;
    }

    v30 = v28;
    if (LODWORD(v411[0]) > 0x1000)
    {
      bzero(v409, 0x400uLL);
      v36 = 0;
      v35 = v406;
      do
      {
        ++*&v409[4 * v35[v36++]];
      }

      while (v29 != v36);
      v37 = 0;
      for (i = 255; i != -1; --i)
      {
        v37 += *&v409[4 * i];
        if (v37 > 4096)
        {
          break;
        }
      }

      v39 = 0;
      v40 = 0;
      opaque = v366[1].__opaque;
      v42 = v30 + 1;
      do
      {
        if (v35[v39] > i)
        {
          *&opaque[8 * v40] = *(v42 - 1) << v22;
          *&opaque[8 * v40++ + 4] = *v42 << v22;
        }

        ++v39;
        v42 += 2;
      }

      while (v29 != v39);
      HIDWORD(v366[1].__sig) = v40;
    }

    else
    {
      if (LODWORD(v411[0]))
      {
        v31 = &v366[1].__opaque[4];
        v32 = v28 + 1;
        v33 = LODWORD(v411[0]);
        do
        {
          *(v31 - 1) = *(v32 - 1) << v22;
          v34 = *v32;
          v32 += 2;
          *v31 = v34 << v22;
          v31 += 8;
          --v33;
        }

        while (v33);
      }

      HIDWORD(v366[1].__sig) = v29;
      v35 = v406;
    }

    free(v35);
    free(v30);
    LOBYTE(v366[1].__sig) = 1;
  }

  pthread_mutex_unlock(v366);
  v43 = *(*(v368 + 80) + 8);
  v44 = malloc_type_malloc(0x3FuLL, 0x5F484EBFuLL);
  if (!v44)
  {
    goto LABEL_86;
  }

  v45 = (v44 + 23) & 0xFFFFFFFFFFFFFFF0;
  *(v45 - 8) = v44;
  if (!v45)
  {
    goto LABEL_86;
  }

  *(((v44 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x18) = vshr_n_s32(v43, 3uLL);
  v46 = vsra_n_s32(0x400000004, v43, 3uLL);
  *(((v44 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x20) = v46.i32[0];
  v400 = v46;
  v47 = v46.i32[1] * v46.i32[0];
  v48 = sub_2779724A8(2 * v47, 8uLL);
  *v45 = v48;
  if (!v48)
  {
    v105 = *(v45 - 8);
LABEL_85:
    free(v105);
    goto LABEL_86;
  }

  v49 = v48;
  v50 = *(v45 + 32);
  v51 = 2 * v50;
  v52 = v48 + 16 * v50 + 16;
  *(&v349 + 1) = v52 + 8 * v47;
  *&v352 = v52;
  *(v45 + 8) = v52;
  *(v45 + 16) = *(&v349 + 1);
  *(&v345 + 1) = v9;
  *&v349 = v12;
  v336 = v11;
  v53 = v12;
  v54 = a7;
  v356 = v8;
  v55 = v45;
  if (v18 >= 2)
  {
    v106 = 8 * ((*(*(v368 + 80) + 36) >> 3) + 4) * v50;
    if (v106 > 0x1FFFFFFE9)
    {
      goto LABEL_82;
    }

    v107 = malloc_type_malloc(v106 + 23, 0x5F484EBFuLL);
    if (!v107)
    {
      goto LABEL_82;
    }

    v108 = (v107 + 23) & 0xFFFFFFFFFFFFFFF0;
    *(v108 - 8) = v107;
    if (!v108)
    {
      goto LABEL_82;
    }

    v321 = (v107 + 23) & 0xFFFFFFFFFFFFFFF0;
    __src = (v108 + 16 * *(v45 + 32));
    v346 = v45;
    v109 = v18;
    v110 = *(v368 + 80);
    v111 = v49 + 8 * v51;
    v330 = v111 + 8;
    v333 = v111;
    v324 = v111 + 16;
    v327 = 8 * v400.i32[0] * v400.i32[1] + 8 * v51 + v49 + 16;
    v339 = v400.i32[0] * v400.i32[1];
    do
    {
      *(&v352 + 1) = v109 - 1;
      v355 = v109;
      v112 = v110 + 24 * (v109 - 1);
      v114 = *(v112 + 8);
      v113 = *(v112 + 12);
      v386 = v114 >> 3;
      v357 = *(v55 + 32);
      v381 = (v113 >> 3);
      if (v381 >= 1)
      {
        v115 = *(v112 + 16);
        v116 = *v112;
        v117 = *(*&v364[1].__opaque[8] + 24 * (v109 - 1));
        v378 = 8 * v357;
        v396 = v352;
        v402 = 0;
        v391 = *(&v349 + 1);
        do
        {
          if (v386 >= 1)
          {
            v118 = 0;
            v119 = v396;
            v121 = (v114 >> 3);
            v120 = v391;
            do
            {
              sub_27798D4C4(v116, v117, v118, 8 * v402, v114, v113, v115, v119, v120);
              v118 += 8;
              ++v120;
              ++v119;
              --v121;
            }

            while (v121);
          }

          v391 = (v391 + v378);
          v396 = (v396 + v378);
          ++v402;
        }

        while (v402 != v381);
      }

      sub_277AE313C(v352, v386, v381, v357);
      sub_277AE313C(*(&v349 + 1), v386, v381, v357);
      v122 = 2 * v386;
      v123 = 2 * v381;
      v55 = v346;
      v124 = *(v346 + 32);
      sub_277AE3238(v352, v386, v381, v357, __src);
      sub_277AE3238(*(&v349 + 1), v386, v381, v357, __src);
      v110 = *(v368 + 80);
      v125 = v110 + 24 * v355;
      v126 = *(v125 - 36);
      v127 = *(v125 - 40) >> 3;
      if (v381 >= 1 && v127 > v122)
      {
        v129 = (2 * v381);
        v130 = (v330 + 8 * v122);
        do
        {
          v130[1] = *v130;
          v130[v339 + 1] = v130[v339];
          v130 += v124;
          --v129;
        }

        while (v129);
      }

      v9 = *(&v345 + 1);
      v53 = v349;
      v54 = a7;
      v8 = v356;
      if (v127 >= 1 && v126 >> 3 > v123)
      {
        v131 = 0;
        v132 = 8 * v127;
        v133 = 8 * v124 * v123;
        v134 = v327 + v133;
        v135 = v333 + v133;
        v136 = v133 - 8 * v124;
        v137 = v327 + v136;
        v138 = v324 + v136;
        do
        {
          *(v135 + v131 + 16) = *(v138 + v131);
          *(v134 + v131) = *(v137 + v131);
          v131 += 8;
        }

        while (v132 != v131);
      }

      v109 = *(&v352 + 1);
    }

    while (v355 > 2);
    free(*(v321 - 8));
  }

  v56 = 32 * SHIDWORD(v366[1].__sig);
  if (v56 > 0x1FFFFFFE9 || (v57 = malloc_type_malloc(v56 | 0x17, 0x5F484EBFuLL)) == 0 || (*(((v57 + 23) & 0xFFFFFFFFFFFFFFF0) - 8) = v57, ((v57 + 23) & 0xFFFFFFFFFFFFFFF0) == 0))
  {
LABEL_82:
    if (*v55)
    {
      free(*(*v55 - 8));
    }

    v105 = *(v55 - 8);
    goto LABEL_85;
  }

  v395 = (v57 + 23) & 0xFFFFFFFFFFFFFFF0;
  sig_high = HIDWORD(v366[1].__sig);
  *&v345 = v55;
  if (sig_high <= 0)
  {
    v99 = 0;
    v100 = 0;
    *a5 = xmmword_277C3BDD0;
    *(a5 + 16) = unk_277C3BDE0;
    *(a5 + 32) = xmmword_277C3BDF0;
    *(a5 + 56) = 0;
  }

  else
  {
    v59 = 0;
    v60 = 0;
    v61 = *(v55 + 24);
    v62 = *(v55 + 28);
    v63 = 8 * *(v55 + 32);
    v390 = *(v55 + 32);
    v64 = 8 - v63;
    v385 = v61;
    do
    {
      v65 = &v366[1].__opaque[8 * v59];
      v67 = *v65;
      v66 = v65[1];
      v68 = *v65 - 3;
      v69 = v66 - 3;
      v70 = (v66 - 3) >> 3;
      v71 = v68 >> 3 >= 1 && (v68 >> 3) + 2 < v61;
      if (v71 && v70 >= 1 && v70 + 2 < v62)
      {
        v401 = v60;
        v74 = 0;
        v75 = vcvtd_n_f64_u32(v68 & 7, 3uLL);
        v76 = vcvtd_n_f64_u32(v69 & 7, 3uLL);
        v77 = v75 * v75;
        v78 = v75 * (v75 * v75);
        v79 = v75 * v75 + v75 * -0.5 + v78 * -0.5;
        v80 = v75 * v75 * -2.5 + 1.0 + v78 * 1.5;
        v81 = v77 + v77 + v75 * 0.5 + v78 * -1.5;
        v82 = v78 * 0.5 + v77 * -0.5;
        v83 = v76 * v76;
        v84 = (v68 >> 3) + v70 * v390;
        v85 = (*(v345 + 8) + v64 + 8 * v84);
        v86 = 8 * v84;
        do
        {
          *&v409[v74] = v80 * *(v85 - 1) + v79 * *(v85 - 2) + v81 * *v85 + v82 * v85[1];
          v74 += 8;
          v85 = (v85 + v63);
        }

        while (v74 != 32);
        v87 = 0;
        v88 = v83 + v76 * -0.5;
        v89 = v83 + v83 + v76 * 0.5;
        v90 = v76 * v83;
        v91 = v90 * 0.5;
        v92 = v88 + v90 * -0.5;
        v93 = v83 * -2.5 + 1.0 + v90 * 1.5;
        v94 = v89 + v90 * -1.5;
        v95 = v91 + v83 * -0.5;
        v96 = v64;
        v97 = (*(v345 + 16) + v64 + v86);
        *&v406 = v93 * *&v409[8] + v92 * *v409 + v94 * *&v409[16] + v95 * *&v409[24];
        do
        {
          *&v409[v87] = v80 * *(v97 - 1) + v79 * *(v97 - 2) + v81 * *v97 + v82 * v97[1];
          v87 += 8;
          v97 = (v97 + v63);
        }

        while (v87 != 32);
        *v409 = v93 * *&v409[8] + v92 * *v409 + v94 * *&v409[16] + v95 * *&v409[24];
        sub_27798D4C4(**(v368 + 80), **&v364[1].__opaque[8], v68, v69, *(*(v368 + 80) + 8), *(*(v368 + 80) + 12), *(*(v368 + 80) + 16), &v406, v409);
        v98 = (v395 + 32 * v401);
        *v98 = v67;
        v98[1] = v66;
        v98[2] = *&v406 + v67;
        v98[3] = *v409 + v66;
        v60 = v401 + 1;
        v64 = v96;
        v61 = v385;
      }

      ++v59;
    }

    while (v59 < sig_high);
    v99 = 0;
    v100 = 0;
    v411[0] = 0;
    v411[1] = 0;
    *a5 = xmmword_277C3BDD0;
    *(a5 + 16) = unk_277C3BDE0;
    *(a5 + 32) = xmmword_277C3BDF0;
    *(a5 + 56) = 0;
    v9 = *(&v345 + 1);
    v53 = v349;
    v54 = a7;
    v8 = v356;
    if (v60 >= 10)
    {
      *&v406 = 0.0;
      v407 = 0.0;
      v408 = 0;
      v101 = v60;
      if ((v60 * 0.1) <= 2)
      {
        v102 = 2;
      }

      else
      {
        v102 = (v60 * 0.1);
      }

      v103 = malloc_type_malloc(0x2FuLL, 0x5F484EBFuLL);
      if (v103)
      {
        v104 = ((v103 + 23) & 0xFFFFFFFFFFFFFFF0);
        *(v104 - 1) = v103;
        if (v104)
        {
          *v104 = 0;
          *(((v103 + 23) & 0xFFFFFFFFFFFFFFF0) + 8) = 0;
          *(((v103 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x10) = 0;
        }
      }

      else
      {
        v104 = 0;
      }

      if (v101 <= 0x3FFFFFFD)
      {
        v139 = malloc_type_malloc(8 * v101 + 23, 0x5F484EBFuLL);
        if (v139)
        {
          v100 = 0;
          v140 = (v139 + 23) & 0xFFFFFFFFFFFFFFF0;
          *(v140 - 8) = v139;
          v141 = 1;
          if (!v104 || !v140)
          {
            goto LABEL_122;
          }

          v142 = 0;
          *(v104 + 2) = v140;
          *&v406 = 0.0;
          v407 = 0.0;
          v403 = (v139 + 23) & 0xFFFFFFFFFFFFFFF0;
          v408 = v140 + 4 * v101;
          v143 = v101;
          while (1)
          {
            v144 = 0;
            v145 = 0;
            v146 = v411;
            v147 = 1;
            do
            {
              v148 = v144;
              v143 = 1103515245 * v143 + 12345;
              v149 = (v101 * v143) >> 32;
              LODWORD(v150) = v149;
              if ((v147 & 1) == 0)
              {
LABEL_98:
                v151 = v411;
                v152 = v145;
                do
                {
                  v153 = *v151++;
                  if (v153 == v150)
                  {
                    v143 = 1103515245 * v143 + 12345;
                    v150 = (v101 * v143) >> 32;
                    goto LABEL_98;
                  }

                  --v152;
                }

                while (v152);
                LODWORD(v149) = v150;
              }

              v147 = 0;
              *v146 = v149;
              v144 = 1;
              v146 = v411 + 1;
              v145 = 1;
            }

            while ((v148 & 1) == 0);
            if (!sub_277B30B88(v395, v411, 2, v409))
            {
              goto LABEL_111;
            }

            sub_277B30AE8(v409, v395, v101, &v406);
            if (v406 < v102)
            {
              goto LABEL_111;
            }

            if (v406 <= *v104)
            {
              if (v406 < *v104)
              {
                goto LABEL_111;
              }

              v154 = v407;
              if (v407 >= *(v104 + 1))
              {
                goto LABEL_111;
              }
            }

            else
            {
              v154 = v407;
            }

            *v104 = v406;
            *(v104 + 1) = v154;
            v155 = *(v104 + 2);
            *(v104 + 2) = v408;
            v408 = v155;
LABEL_111:
            if (++v142 == 20)
            {
              qsort(v104, 1uLL, 0x18uLL, sub_277B30AAC);
              v156 = *v104;
              v53 = v349;
              v54 = a7;
              v8 = v356;
              if (*v104 >= 1)
              {
                v157 = *(v104 + 2);
                v158 = 5;
                while (sub_277B30B88(v395, v157, v156, v409))
                {
                  sub_277B30AE8(v409, v395, v101, &v406);
                  v156 = v406;
                  if (v406 > *v104)
                  {
                    *v104 = v406;
                    *(v104 + 1) = v407;
                    v159 = *(v104 + 2);
                    v157 = v408;
                    *(v104 + 2) = v408;
                    v408 = v159;
                    if (--v158)
                    {
                      continue;
                    }
                  }

                  v160 = *&v409[16];
                  *a5 = *v409;
                  *(a5 + 16) = v160;
                  *(a5 + 32) = v410;
                  LODWORD(v161) = *v104;
                  if (*v104 >= 1)
                  {
                    v162 = 0;
                    v163 = *(v104 + 2);
                    v164 = *(a5 + 48);
                    do
                    {
                      *(v164 + 8 * v162) = vmovn_s64(vcvtq_s64_f64(vrndxq_f64(*(v395 + 32 * *(v163 + 4 * v162)))));
                      ++v162;
                      v161 = *v104;
                    }

                    while (v162 < v161);
                  }

                  *(a5 + 56) = v161;
                  break;
                }
              }

              v141 = 0;
              v99 = 0;
              v100 = 1;
              v140 = v403;
              if (v403)
              {
LABEL_122:
                free(*(v140 - 8));
                v99 = v141;
                goto LABEL_124;
              }

              goto LABEL_125;
            }
          }
        }
      }

      v100 = 0;
      v99 = 1;
LABEL_124:
      if (v104)
      {
LABEL_125:
        free(*(v104 - 1));
      }
    }
  }

  free(*(v395 - 8));
  if (*v345)
  {
    free(*(*v345 - 8));
  }

  free(*(v345 - 8));
  if ((v100 & 1) == 0)
  {
    if (!v99)
    {
      return;
    }

    goto LABEL_86;
  }

  v165 = *(a5 + 56);
  if (!v165)
  {
    return;
  }

  LODWORD(v410) = 0;
  *&v409[24] = 0;
  __asm { FMOV            V1.2D, #0.5 }

  v170 = *(a5 + 16);
  v171 = vmovn_s64(vcvtq_s64_f64(vrndmq_f64(vmlaq_f64(_Q1, vdupq_n_s64(0x4050000000000000uLL), *a5))));
  v172 = vshl_n_s32(vmax_s32(vmin_s32(v171, 0x100000001000), 0xF0000000FLL), 0xAuLL);
  *v409 = v172;
  v173 = vdupq_n_s64(0x40E0000000000000uLL);
  v174.i64[0] = 0x100000001000;
  v174.i64[1] = 0x100000001000;
  v175 = vminq_s32(vaddq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndmq_f64(vmlaq_f64(_Q1, v173, v170))), vcvtq_s64_f64(vrndmq_f64(vmlaq_f64(_Q1, v173, *(a5 + 32))))), xmmword_277BB7AF0), v174);
  v174.i64[0] = 0xF0000000FLL;
  v174.i64[1] = 0xF0000000FLL;
  v176 = vmaxq_s32(v175, v174);
  v177 = vaddq_s32(v176, v176);
  *&v409[8] = vaddq_s32(v177, xmmword_277BB7B00);
  v178 = vmaxv_u16(vmovn_s32(vtstq_s32(v177, v177)));
  _ZF = !(*&v409[12] + *&v409[16]) && *&v409[8] == *&v409[20];
  v180 = _ZF ? 2 : 3;
  v171.i32[1] = v172.i32[1];
  v181 = vtst_s32(v171, v171);
  v182 = (v178 & 1) != 0 ? v180 : (v181.i8[4] | v181.i8[0]) & 1;
  LOBYTE(v410) = v182;
  if (!sub_277AE3C0C(v409))
  {
    return;
  }

  v183 = v410;
  if (v410 < 2u)
  {
    return;
  }

  v184 = *(a5 + 48);
  bzero(a6, a8 * v54);
  v185 = a6;
  if (v165 >= 1)
  {
    v186 = (v184 + 4);
    do
    {
      v187 = (*v186 >> 5) * v54 + (*(v186 - 1) >> 5);
      ++a6[v187];
      v186 += 2;
      --v165;
    }

    while (v165);
  }

  if (a8 < 1)
  {
    goto LABEL_152;
  }

  v188 = 0;
  v189 = 0;
  v190 = a6;
  do
  {
    v191 = v190;
    v192 = v54;
    if (v54 >= 1)
    {
      do
      {
        v71 = *v191 > 2u;
        *v191++ = v71;
        if (v71)
        {
          ++v189;
        }

        --v192;
      }

      while (v192);
    }

    ++v188;
    v190 += v54;
  }

  while (v188 != a8);
  if (v189 < 48)
  {
LABEL_152:
    memset(a6, 1, a8 * v54);
    v185 = a6;
  }

  v193 = *(a3 + 8 * v8);
  v194 = *(v193 + 32);
  v363 = *(*(v359 + 1952) + 40);
  v365 = *(v193 + 40);
  if ((*(*(v9 + 94440) + 192) & 8) != 0)
  {
    if (v373 < 1)
    {
      return;
    }

    v221 = 0;
    v196 = 0;
    v222 = 2 * v365;
    v223 = 2 * v363;
    v388 = v194 << 6;
    v224 = 2 * v194;
    v225 = 2 * v365 + 32;
    v383 = v377 << 6;
    v226 = 2 * v363 + 32;
    v227 = 2 * v377;
    v228 = v375;
    while (1)
    {
      v398 = v223;
      v393 = v225;
      if (v228 >= 1)
      {
        break;
      }

LABEL_231:
      v221 += 32;
      v222 += v388;
      v223 = v398 + v383;
      v225 = v393 + v388;
      v226 += v383;
      if (v221 >= v373)
      {
        goto LABEL_232;
      }
    }

    v229 = 0;
    v230 = (v221 >> 5) * v54;
    if (v373 >= v373 - v221)
    {
      v231 = v373 - v221;
    }

    else
    {
      v231 = v373;
    }

    if (v231 >= 32)
    {
      v232 = 32;
    }

    else
    {
      v232 = v231;
    }

    v233 = v226;
    v234 = v222;
    v235 = v228;
    while (1)
    {
      if (v228 >= v235)
      {
        LODWORD(v236) = v235;
      }

      else
      {
        LODWORD(v236) = v228;
      }

      if (v236 >= 32)
      {
        v236 = 32;
      }

      else
      {
        v236 = v236;
      }

      if (!*(v185 + (v230 + (v229 >> 5))))
      {
        goto LABEL_228;
      }

      if (v228 >= v375 - v229)
      {
        v237 = v375 - v229;
      }

      else
      {
        v237 = v228;
      }

      if (v237 < 32 || v231 < 32)
      {
        if ((v373 - v221) < 1)
        {
          v245 = 0;
          goto LABEL_227;
        }

        v246 = 0;
        v247 = 0;
        v248 = v223;
        v249 = v234;
        do
        {
          v250 = v248;
          v251 = v249;
          v252 = v236;
          if ((v375 - v229) >= 1)
          {
            do
            {
              v254 = *v250++;
              v253 = v254;
              v255 = *v251++;
              v256 = v253 - v255;
              if (v256 < 0)
              {
                v256 = -v256;
              }

              v247 += v256;
              --v252;
            }

            while (v252);
          }

          ++v246;
          v249 = (v249 + v224);
          v248 = (v248 + v227);
        }

        while (v246 != v232);
        v245 = v247;
        v9 = *(&v345 + 1);
        v53 = v349;
        v185 = a6;
        v228 = v375;
      }

      else
      {
        v238 = 0uLL;
        v239 = -32;
        v240 = v233;
        v241 = v225;
        v242 = 0uLL;
        v243 = 0uLL;
        v244 = 0uLL;
        do
        {
          v238 = vpadalq_u16(v238, vabdq_u16(v241[-2], v240[-2]));
          v242 = vpadalq_u16(v242, vabdq_u16(v241[-1], v240[-1]));
          v243 = vpadalq_u16(v243, vabdq_u16(*v241, *v240));
          v244 = vpadalq_u16(v244, vabdq_u16(v241[1], v240[1]));
          v241 = (v241 + v224);
          v240 = (v240 + v227);
        }

        while (!__CFADD__(v239++, 1));
        v245 = vaddvq_s32(vaddq_s32(vaddq_s32(v242, v238), vaddq_s32(v243, v244)));
      }

      v54 = a7;
LABEL_227:
      v196 += v245;
      v8 = v356;
LABEL_228:
      v229 += 32;
      v235 -= 32;
      v234 += 64;
      v223 += 64;
      v225 += 64;
      v233 += 4;
      if (v229 >= v375)
      {
        goto LABEL_231;
      }
    }
  }

  if (v373 >= 1)
  {
    v195 = 0;
    v196 = 0;
    v197 = *(*(v359 + 1952) + 40);
    v198 = *(v193 + 40);
    v199 = v375;
    do
    {
      v379 = v197;
      v382 = v195;
      v371 = v198;
      if (v199 >= 1)
      {
        v200 = 0;
        v201 = (v195 >> 5) * v54;
        if (v373 >= v373 - v195)
        {
          v202 = v373 - v195;
        }

        else
        {
          v202 = v373;
        }

        v392 = v365 + v195 * v194;
        v397 = v373 - v195;
        v387 = v363 + v195 * v377;
        v404 = v202;
        if (v202 >= 32)
        {
          v203 = 32;
        }

        else
        {
          v203 = v202;
        }

        v204 = v197;
        v205 = v199;
        do
        {
          if (v199 >= v205)
          {
            LODWORD(v206) = v205;
          }

          else
          {
            LODWORD(v206) = v199;
          }

          if (v206 >= 32)
          {
            v206 = 32;
          }

          else
          {
            v206 = v206;
          }

          if (*(v185 + (v201 + (v200 >> 5))))
          {
            if (v199 >= v375 - v200)
            {
              v207 = v375 - v200;
            }

            else
            {
              v207 = v199;
            }

            if (v207 < 32 || v404 < 32)
            {
              if (v397 < 1)
              {
                v209 = 0;
              }

              else
              {
                v210 = 0;
                v211 = 0;
                v212 = v204;
                v213 = v198;
                do
                {
                  v214 = v212;
                  v215 = v213;
                  v216 = v206;
                  if ((v375 - v200) >= 1)
                  {
                    do
                    {
                      v218 = *v214++;
                      v217 = v218;
                      v219 = *v215++;
                      v220 = v217 - v219;
                      if (v220 < 0)
                      {
                        v220 = -v220;
                      }

                      v211 += v220;
                      --v216;
                    }

                    while (v216);
                  }

                  ++v210;
                  v213 = (v213 + v194);
                  v212 += v377;
                }

                while (v210 != v203);
                v209 = v211;
                v199 = v375;
              }
            }

            else
            {
              v208 = off_280ABCA08(v392 + v200, v194, v387 + v200, v377);
              v185 = a6;
              v199 = v375;
              v209 = v208;
            }

            v196 += v209;
          }

          v200 += 32;
          v205 -= 32;
          v198 += 8;
          v204 += 32;
        }

        while (v200 < v375);
      }

      v195 = v382 + 32;
      v198 = &v371[8 * v194];
      v197 = &v379[32 * v377];
      v9 = *(&v345 + 1);
      v53 = v349;
      v54 = a7;
      v8 = v356;
    }

    while (v382 + 32 < v373);
LABEL_232:
    v257 = v336;
    if (v196)
    {
      v258 = *(*(v9 + 94440) + 192);
      v259 = *(a3 + 8 * v8);
      v405 = *(v259 + 16);
      v260 = *(v359 + 1952);
      if (v183)
      {
        if (v183 != 1)
        {
          if (v183 != 2)
          {
            v262 = *&v409[20];
LABEL_241:
            v389 = (v258 >> 3) & 1;
            v384 = *(v9 + 97136);
            v263 = *(v259 + 40);
            v399 = *(v259 + 24);
            v394 = *(v259 + 32);
            v264 = *(v260 + 40);
            if (v262 == 0x10000)
            {
              v265 = *&v409[8];
              if (!*&v409[16])
              {
                v266 = v375;
                if (*&v409[8] == 0x10000)
                {
                  if (!*&v409[12])
                  {
                    v267 = *v409 != 0;
                    goto LABEL_252;
                  }

                  v265 = 0x10000;
                }

LABEL_248:
                if (v265 != v262 || *&v409[12] + *&v409[16])
                {
                  v267 = 3;
                }

                else
                {
                  v267 = 2;
                }

LABEL_252:
                v268 = dword_277BEE080[v183];
                LOBYTE(v410) = v267;
                v269 = v196;
                if (!v361)
                {
                  *&v275 = rint(v269 * 0.65);
                  v274 = sub_277A2B078(v409, v389, v384, v263, v405, v399, v394, v264, v377, v266, v373, *&v275, v185, v54, v318, v321, v324, v327, v330, v333, v336, v339 * 8, __src, v345, v349, v352, v275);
                  goto LABEL_256;
                }

                *&v270 = rint(v269 * 0.7);
                v271 = v270;
                v272 = sub_277A2B078(v409, v389, v384, v263, v405, v399, v394, v264, v377, v266, v373, *&v270, v185, v54, v318, v321, v324, v327, v330, v333, v336, v339 * 8, __src, v345, v349, v352, v270);
                if (v272 > v271)
                {
                  v274 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_256:
                  v276 = *(&v347 + 1);
                  goto LABEL_326;
                }

                v274 = v272;
                if (v361 >= 1)
                {
                  v277 = 0;
                  v380 = 1 << (v361 - 1);
                  if (v268 <= 1)
                  {
                    v278 = 1;
                  }

                  else
                  {
                    v278 = v268;
                  }

                  v369 = v278;
                  v279 = a6;
                  v280 = v375;
                  while (1)
                  {
                    v367 = v277;
                    if (v183)
                    {
                      break;
                    }

LABEL_313:
                    v277 = v367 + 1;
                    v380 >>= 1;
                    if (v367 + 1 == v361)
                    {
                      goto LABEL_314;
                    }
                  }

                  v281 = 0;
                  while (1)
                  {
                    v282 = *&v409[4 * v281];
                    if (v281 == 5 || v281 == 2)
                    {
                      v284 = 0x10000;
                    }

                    else
                    {
                      v284 = 0;
                    }

                    v285 = dword_277BB6FC0[v281 > 1];
                    v286 = (v282 - v284) >> v285;
                    v287 = v286 - v380;
                    if (v286 - v380 >= 4096)
                    {
                      v287 = 4096;
                    }

                    if (v287 <= -4096)
                    {
                      v287 = -4096;
                    }

                    *&v409[4 * v281] = (v287 << v285) + v284;
                    if (v183 == 1)
                    {
                      v288 = 0;
                      *&v409[8] = 0x10000;
                      v289 = 0x10000;
                    }

                    else
                    {
                      if (v183 != 2)
                      {
                        goto LABEL_279;
                      }

                      v288 = *&v409[12];
                      v289 = *&v409[8];
                    }

                    *&v409[16] = -v288;
                    *&v409[20] = v289;
LABEL_279:
                    LOBYTE(v410) = v183;
                    v290 = sub_277A2B078(v409, v389, v384, v263, v405, v399, v394, v264, v377, v280, v373, v274, v279, a7, v319, v322, v325, v328, v331, v334, v337, v340, __srca, v347, v350, v353, v273);
                    v292 = v274;
                    if (v290 < v274)
                    {
                      v282 = *&v409[4 * v281];
                      v292 = v290;
                    }

                    v293 = v286 + v380;
                    if (v286 + v380 >= 4096)
                    {
                      v293 = 4096;
                    }

                    if (v293 <= -4096)
                    {
                      v293 = -4096;
                    }

                    *&v409[4 * v281] = (v293 << v285) + v284;
                    v372 = v290;
                    if (v183 == 1)
                    {
                      v294 = 0;
                      *&v409[8] = 0x10000;
                      v295 = 0x10000;
                    }

                    else
                    {
                      if (v183 != 2)
                      {
                        goto LABEL_290;
                      }

                      v294 = *&v409[12];
                      v295 = *&v409[8];
                    }

                    *&v409[16] = -v294;
                    *&v409[20] = v295;
LABEL_290:
                    LOBYTE(v410) = v183;
                    v296 = v292;
                    v297 = sub_277A2B078(v409, v389, v384, v263, v405, v399, v394, v264, v377, v375, v373, v292, a6, a7, v320, v323, v326, v329, v332, v335, v338, v341, __srcb, v348, v351, v354, v291);
                    if (v297 < v296)
                    {
                      v282 = *&v409[4 * v281];
                      v298 = 1;
                      v299 = v297;
                      goto LABEL_294;
                    }

                    v299 = v296;
                    if (v372 < v274)
                    {
                      v298 = -1;
LABEL_294:
                      v300 = v298 * v380;
                      v274 = v299;
                      while (2)
                      {
                        v301 = ((v282 - v284) >> v285) + v300;
                        if (v301 >= 4096)
                        {
                          v301 = 4096;
                        }

                        if (v301 <= -4096)
                        {
                          v301 = -4096;
                        }

                        *&v409[4 * v281] = (v301 << v285) + v284;
                        if (v183 == 1)
                        {
                          v302 = 0;
                          *&v409[8] = 0x10000;
                          v303 = 0x10000;
LABEL_303:
                          *&v409[16] = -v302;
                          *&v409[20] = v303;
                        }

                        else if (v183 == 2)
                        {
                          v302 = *&v409[12];
                          v303 = *&v409[8];
                          goto LABEL_303;
                        }

                        LOBYTE(v410) = v183;
                        v304 = sub_277A2B078(v409, v389, v384, v263, v405, v399, v394, v264, v377, v375, v373, v274, a6, a7, v319, v322, v325, v328, v331, v334, v337, v340, __srca, v347, v350, v353, v273);
                        if (v304 >= v274)
                        {
                          goto LABEL_307;
                        }

                        v282 = *&v409[4 * v281];
                        v274 = v304;
                        continue;
                      }
                    }

                    v274 = v296;
LABEL_307:
                    *&v409[4 * v281] = v282;
                    v257 = v337;
                    v53 = v350;
                    v279 = a6;
                    v280 = v375;
                    if (v183 == 1)
                    {
                      v305 = 0;
                      *&v409[8] = 0x10000;
                      v306 = 0x10000;
                      goto LABEL_311;
                    }

                    if (v183 == 2)
                    {
                      v305 = *&v409[12];
                      v306 = *&v409[8];
LABEL_311:
                      *&v409[16] = -v305;
                      *&v409[20] = v306;
                    }

                    LOBYTE(v410) = v183;
                    if (++v281 == v369)
                    {
                      goto LABEL_313;
                    }
                  }
                }

LABEL_314:
                if (*&v409[20] == 0x10000)
                {
                  v307 = *&v409[8];
                  if (!*&v409[16])
                  {
                    v276 = *(&v347 + 1);
                    if (*&v409[8] == 0x10000)
                    {
                      if (!*&v409[12])
                      {
                        v308 = *v409 != 0;
                        v276 = *(&v347 + 1);
                        v53 = v350;
                        v257 = v337;
LABEL_325:
                        LOBYTE(v410) = v308;
                        sub_277AE3C0C(v409);
LABEL_326:
                        v309 = v410;
                        if (v410 >= 2u)
                        {
                          v310 = v274 / v269;
                          v311 = 0.0;
                          if ((v410 & 0xFE) == 2)
                          {
                            v312 = sub_2779918C0(0x2001u, 3, ((*(v53 + 2) >> 1) - 28672), ((*&v409[8] >> 1) - 28672));
                            v313 = sub_2779918C0(0x2001u, 3, ((*(v53 + 3) >> 1) + 4096), ((*&v409[12] >> 1) + 4096)) + v312;
                            if (v309 != 2)
                            {
                              v314 = sub_2779918C0(0x2001u, 3, ((*(v53 + 4) >> 1) + 4096), ((*&v409[16] >> 1) + 4096));
                              v313 += v314 + sub_2779918C0(0x2001u, 3, ((*(v53 + 5) >> 1) - 28672), ((*&v409[20] >> 1) - 28672));
                            }

                            v315 = sub_2779918C0(0x2001u, 3, ((*v53 >> 10) + 4096), ((*v409 >> 10) + 4096));
                            v311 = ((v315 + sub_2779918C0(0x2001u, 3, ((*(v53 + 1) >> 10) + 4096), ((*&v409[4] >> 10) + 4096)) + v313) << 9);
                          }

                          if (v310 < 0.65 && v311 * v310 < 20000.0)
                          {
                            v316 = v276 + 4 * v257 + 270020;
                            v317 = *&v409[16];
                            *v316 = *v409;
                            *(v316 + 16) = v317;
                            *(v316 + 32) = v410;
                          }
                        }

                        return;
                      }

                      v307 = 0x10000;
                      v276 = *(&v347 + 1);
                      v53 = v350;
                      v257 = v337;
                    }

LABEL_321:
                    if (v307 != *&v409[20] || *&v409[12] + *&v409[16])
                    {
                      v308 = 3;
                    }

                    else
                    {
                      v308 = 2;
                    }

                    goto LABEL_325;
                  }
                }

                else
                {
                  v307 = *&v409[8];
                }

                v276 = *(&v347 + 1);
                goto LABEL_321;
              }
            }

            else
            {
              v265 = *&v409[8];
            }

            v266 = v375;
            goto LABEL_248;
          }

          v261 = *&v409[12];
          v262 = *&v409[8];
LABEL_239:
          *&v409[16] = -v261;
          *&v409[20] = v262;
          goto LABEL_241;
        }
      }

      else
      {
        *v409 = 0;
      }

      v261 = 0;
      *&v409[8] = 0x10000;
      v262 = 0x10000;
      goto LABEL_239;
    }
  }
}

uint64_t sub_277B1FAD4(_DWORD *a1, _DWORD *a2)
{
  v2 = *a1 - *a2;
  if (v2 >= 1)
  {
    return 1;
  }

  else
  {
    return (v2 >> 31);
  }
}

uint64_t sub_277B1FAF0(uint64_t a1, char a2)
{
  v2 = *(a1 + 7864);
  v3 = *(*v2 + 16);
  if (*(a1 + 7873) == 1 && ((v4 = *(v2 - 8), *(v4 + 16) == v3) || *(v4 + 17) == v3))
  {
    v5 = (*(v4 + 20) >> (16 * (a2 & 1)));
  }

  else
  {
    v5 = 3;
  }

  v6 = (8 * (a2 & 1)) | (4 * (*(*v2 + 17) > 0));
  if (*(a1 + 7872) == 1 && ((v7 = *(v2 - 8 * *(a1 + 8)), *(v7 + 16) == v3) || *(v7 + 17) == v3))
  {
    v8 = (*(v7 + 20) >> (16 * (a2 & 1)));
  }

  else
  {
    v8 = 3;
  }

  v9 = v6 | 3;
  v10 = v5 + v6;
  if (v8 == 3)
  {
    v9 = v5 + v6;
  }

  v11 = v8 + v6;
  if (v5 == 3)
  {
    v9 = v11;
  }

  if (v5 == v8)
  {
    return v10;
  }

  else
  {
    return v9;
  }
}

uint64_t sub_277B1FBC4(uint64_t a1, int a2, uint64_t a3)
{
  if ((-*(a1 + 7932) & 0x1F8) != 0)
  {
    v3 = *(a1 + 7888);
    v4 = *(a1 + 7880);
    if (v3)
    {
      v5 = 0;
      if (a2)
      {
        v6 = v3 + 1;
      }

      else
      {
        v6 = *(a1 + 7888);
      }

      v7 = *(v6 + 142);
      if (!v4)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }

    v7 = 0;
  }

  else
  {
    v3 = 0;
    v7 = 0;
    v4 = *(a1 + 7880);
  }

  v5 = 1;
  if (!v4)
  {
LABEL_7:
    v8 = 0;
    goto LABEL_15;
  }

LABEL_11:
  if (a2)
  {
    v9 = v4 + 1;
  }

  else
  {
    v9 = v4;
  }

  v8 = *(v9 + 142);
LABEL_15:
  result = 0;
  if (v7 | v8)
  {
    v11 = 8 * a2;
    v12 = v3 + 94;
    if (v5)
    {
      v13 = 0;
    }

    else
    {
      v13 = v12;
    }

    v14 = v4 + 94;
    if (!v4)
    {
      v14 = 0;
    }

    v15 = a3 - 2;
    if (v7 && v8)
    {
      result = 0;
      v16 = 8 * a2;
      while (1)
      {
        v17 = *(v13 + 2 * v11);
        v18 = *(v14 + 2 * v16);
        if (v18 >= v17)
        {
          if (result < 1 || *(v15 + 2 * result) != v17)
          {
            *(a3 + 2 * result) = v17;
            result = (result + 1);
          }

          ++v11;
          --v7;
          if (v18 == v17)
          {
            ++v16;
            --v8;
          }

          if (!v7)
          {
            goto LABEL_38;
          }
        }

        else
        {
          if (result < 1 || *(v15 + 2 * result) != v18)
          {
            *(a3 + 2 * result) = v18;
            result = (result + 1);
          }

          ++v16;
          --v8;
        }

        if (!v8)
        {
          goto LABEL_38;
        }
      }
    }

    v16 = 8 * a2;
LABEL_38:
    if (v7 >= 1)
    {
      v19 = (v13 + 2 * v11);
      v20 = v7 + 1;
      do
      {
        v22 = *v19++;
        v21 = v22;
        if (result < 1 || *(v15 + 2 * result) != v21)
        {
          *(a3 + 2 * result) = v21;
          result = (result + 1);
        }

        --v20;
      }

      while (v20 > 1);
    }

    if (v8 >= 1)
    {
      v23 = (v14 + 2 * v16);
      v24 = v8 + 1;
      do
      {
        v26 = *v23++;
        v25 = v26;
        if (result < 1 || *(v15 + 2 * result) != v25)
        {
          *(a3 + 2 * result) = v25;
          result = (result + 1);
        }

        --v24;
      }

      while (v24 > 1);
    }
  }

  return result;
}

uint64_t sub_277B1FD5C(uint64_t a1)
{
  v1 = *(a1 + 7888);
  v2 = *(a1 + 7880);
  v3 = *(a1 + 7872);
  if (v3 != 1 || *(a1 + 7873) == 0)
  {
    if ((v3 & 1) == 0 && !*(a1 + 7873))
    {
      return 0;
    }

    if (*(a1 + 7872))
    {
      v2 = *(a1 + 7888);
    }

    if ((*(v2 + 167) & 0x80) == 0)
    {
      return 2 * (*(v2 + 16) < 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v6 = (*(v1 + 167) & 0x80) == 0 && *(v1 + 16) < 1;
    v7 = (*(v2 + 167) & 0x80) == 0 && *(v2 + 16) < 1;
    if (v7 && v6)
    {
      return 3;
    }

    else
    {
      return v7 || v6;
    }
  }
}

uint64_t sub_277B1FE00(uint64_t a1)
{
  v1 = *(a1 + 7888);
  v2 = *(a1 + 7880);
  v3 = *(a1 + 7872);
  if (v3 != 1 || *(a1 + 7873) == 0)
  {
    if ((v3 & 1) == 0 && !*(a1 + 7873))
    {
      return 1;
    }

    if (*(a1 + 7872))
    {
      v2 = *(a1 + 7888);
    }

    if (*(v2 + 17) <= 0)
    {
      return *(v2 + 16) - 5 < 3;
    }

    return 3;
  }

  v6 = *(v2 + 17);
  if (*(v1 + 17) <= 0)
  {
    v7 = *(v1 + 16);
    v8 = v7 - 5;
    if (v6 <= 0)
    {
      return (v8 < 3) ^ (*(v2 + 16) - 5 < 3);
    }

    if (v8 < 3)
    {
      return 3;
    }

    v9 = (*(v1 + 167) >> 7) & 1;
    v10 = v7;
  }

  else
  {
    if (v6 > 0)
    {
      return 4;
    }

    v10 = *(v2 + 16);
    if ((v10 - 5) < 3)
    {
      return 3;
    }

    v9 = (*(v2 + 167) >> 7) & 1;
    v10 = v10;
  }

  if (v10 > 0)
  {
    v9 = 1;
  }

  return v9 ^ 3u;
}

uint64_t sub_277B1FEF4(uint64_t a1)
{
  v1 = *(a1 + 7888);
  v2 = *(a1 + 7880);
  v3 = *(a1 + 7872);
  if (v3 == 1 && *(a1 + 7873) != 0)
  {
    v6 = (*(v1 + 167) & 0x80) == 0 && *(v1 + 16) < 1;
    if ((*(v2 + 167) & 0x80) != 0)
    {
      v7 = 0;
    }

    else
    {
      v7 = *(v2 + 16) < 1;
      if (v6 && v7)
      {
        return 2;
      }
    }

    if (v6 || v7)
    {
      if (v6)
      {
        v1 = *(a1 + 7880);
      }

      v8 = *(v1 + 17);
      if (v8 < 1)
      {
        return 2;
      }

      v9 = *(v1 + 16) > 4;
      v10 = v8 < 5u;
      goto LABEL_41;
    }

    v11 = *(v1 + 17);
    v12 = *(v2 + 17);
    v13 = *(v1 + 16);
    v14 = *(v2 + 16);
    if (v11 <= 0 && v12 <= 0)
    {
      v10 = (v13 - 5) < 3;
      v9 = (v14 - 8) < 0xFFFFFFFD;
LABEL_41:
      if (v10 != v9)
      {
        return 3;
      }

      else
      {
        return 1;
      }
    }

    v16 = *(v2 + 17);
    if (v11 >= 1 && v12 > 0)
    {
      v18 = (v11 < 5u) ^ (v13 > 4);
      v19 = (v16 < 5) ^ (v14 > 4);
      if ((v18 & 1) == 0 && !v19)
      {
        return 0;
      }

      if ((v18 & v19) != 1)
      {
        return 2;
      }

      v20 = v13 == 5;
      v21 = v14 != 5;
      goto LABEL_53;
    }

    if (v11 <= 0)
    {
      if (v12 < 1 || v16 < 5 == v14 > 4)
      {
        return 1;
      }
    }

    else if (v11 < 5u == v13 > 4)
    {
      return 1;
    }

    v20 = (v13 - 5) < 3;
    v21 = (v14 - 8) < 0xFFFFFFFD;
LABEL_53:
    if (v20 != v21)
    {
      return 4;
    }

    else
    {
      return 3;
    }
  }

  if ((v3 & 1) == 0 && !*(a1 + 7873))
  {
    return 2;
  }

  if (!*(a1 + 7872))
  {
    v1 = *(a1 + 7880);
  }

  if ((*(v1 + 167) & 0x80) == 0 && *(v1 + 16) < 1 || *(v1 + 17) < 1)
  {
    return 2;
  }

  if (*(v1 + 17) < 5u != *(v1 + 16) > 4)
  {
    return 4;
  }

  else
  {
    return 0;
  }
}

unsigned __int32 *sub_277B20134(unsigned __int32 *result, uint64_t a2, unsigned __int32 *a3, __int32 *a4, int16x8_t a5, uint8x8_t a6)
{
  a5.i32[0] = *a3;
  *a5.i8 = vpaddl_u8(*a5.i8);
  a6.i32[0] = *a4;
  v6 = vpaddl_u8(a6);
  *a5.i8 = vadd_s16(vpadd_s16(v6, v6), vpadd_s16(*a5.i8, *a5.i8));
  v7 = vdup_lane_s8(vrshrn_n_s16(a5, 3uLL), 0).u32[0];
  v8 = 4;
  do
  {
    *result = v7;
    result = (result + a2);
    --v8;
  }

  while (v8);
  return result;
}

unsigned __int32 *sub_277B20174(unsigned __int32 *result, uint64_t a2, int16x8_t a3, uint64_t a4, unsigned __int32 *a5)
{
  a3.i32[0] = *a5;
  *a3.i8 = vpaddl_u8(*a3.i8);
  *a3.i8 = vpadd_s16(*a3.i8, *a3.i8);
  v5 = vdup_lane_s8(vrshrn_n_s16(a3, 2uLL), 0).u32[0];
  v6 = 4;
  do
  {
    *result = v5;
    result = (result + a2);
    --v6;
  }

  while (v6);
  return result;
}

unsigned __int32 *sub_277B201A4(unsigned __int32 *result, uint64_t a2, unsigned __int32 *a3, int16x8_t a4)
{
  a4.i32[0] = *a3;
  *a4.i8 = vpaddl_u8(*a4.i8);
  *a4.i8 = vpadd_s16(*a4.i8, *a4.i8);
  v4 = vdup_lane_s8(vrshrn_n_s16(a4, 2uLL), 0).u32[0];
  v5 = 4;
  do
  {
    *result = v4;
    result = (result + a2);
    --v5;
  }

  while (v5);
  return result;
}

_DWORD *sub_277B201D4(_DWORD *result, uint64_t a2)
{
  v2 = 4;
  do
  {
    *result = -2139062144;
    result = (result + a2);
    --v2;
  }

  while (v2);
  return result;
}

int8x8_t *sub_277B201F0(int8x8_t *result, uint64_t a2, uint8x8_t *a3, uint8x8_t *a4)
{
  v4 = vaddl_u8(*a4, *a3);
  v5 = vpaddq_s16(v4, v4);
  v6 = vpaddq_s16(v5, v5);
  v7 = vdup_lane_s8(vrshrn_n_s16(vpaddq_s16(v6, v6), 4uLL), 0);
  v8 = 8;
  do
  {
    *result = v7;
    result = (result + a2);
    --v8;
  }

  while (v8);
  return result;
}

void *sub_277B20228(void *result, uint64_t a2, int16x8_t a3, uint64_t a4, uint8x8_t *a5)
{
  *a3.i8 = vpaddl_u8(*a5);
  *a3.i8 = vpadd_s16(*a3.i8, *a3.i8);
  *a3.i8 = vpadd_s16(*a3.i8, *a3.i8);
  *a3.i8 = vdup_lane_s8(vrshrn_n_s16(a3, 3uLL), 0);
  v5 = 8;
  do
  {
    *result = a3.i64[0];
    result = (result + a2);
    --v5;
  }

  while (v5);
  return result;
}

void *sub_277B20258(void *result, uint64_t a2, uint8x8_t *a3, int16x8_t a4)
{
  *a4.i8 = vpaddl_u8(*a3);
  *a4.i8 = vpadd_s16(*a4.i8, *a4.i8);
  *a4.i8 = vpadd_s16(*a4.i8, *a4.i8);
  *a4.i8 = vdup_lane_s8(vrshrn_n_s16(a4, 3uLL), 0);
  v4 = 8;
  do
  {
    *result = a4.i64[0];
    result = (result + a2);
    --v4;
  }

  while (v4);
  return result;
}

void *sub_277B20288(void *result, uint64_t a2)
{
  v2 = 8;
  do
  {
    *result = 0x8080808080808080;
    result = (result + a2);
    --v2;
  }

  while (v2);
  return result;
}

int8x16_t *sub_277B202A4(int8x16_t *result, uint64_t a2, uint8x16_t *a3, uint8x16_t *a4)
{
  v4 = vpadalq_u8(vpaddlq_u8(*a4), *a3);
  v5 = vpaddq_s16(v4, v4);
  v6 = vpaddq_s16(v5, v5);
  v7 = vdupq_lane_s8(vrshrn_n_s16(vpaddq_s16(v6, v6), 5uLL), 0);
  v8 = 16;
  do
  {
    *result = v7;
    result = (result + a2);
    --v8;
  }

  while (v8);
  return result;
}

int8x16_t *sub_277B202E0(int8x16_t *result, uint64_t a2, uint64_t a3, uint8x16_t *a4)
{
  v4 = vpaddlq_u8(*a4);
  v5 = vpaddq_s16(v4, v4);
  v6 = vpaddq_s16(v5, v5);
  v7 = vdupq_lane_s8(vrshrn_n_s16(vpaddq_s16(v6, v6), 4uLL), 0);
  v8 = 16;
  do
  {
    *result = v7;
    result = (result + a2);
    --v8;
  }

  while (v8);
  return result;
}

int8x16_t *sub_277B20314(int8x16_t *result, uint64_t a2, uint8x16_t *a3)
{
  v3 = vpaddlq_u8(*a3);
  v4 = vpaddq_s16(v3, v3);
  v5 = vpaddq_s16(v4, v4);
  v6 = vdupq_lane_s8(vrshrn_n_s16(vpaddq_s16(v5, v5), 4uLL), 0);
  v7 = 16;
  do
  {
    *result = v6;
    result = (result + a2);
    --v7;
  }

  while (v7);
  return result;
}

_OWORD *sub_277B20348(_OWORD *result, uint64_t a2)
{
  v2 = 16;
  *&v3 = 0x8080808080808080;
  *(&v3 + 1) = 0x8080808080808080;
  do
  {
    *result = v3;
    result = (result + a2);
    --v2;
  }

  while (v2);
  return result;
}

int8x16_t *sub_277B20364(int8x16_t *result, uint64_t a2, uint8x16_t *a3, uint8x16_t *a4)
{
  v4 = vpadalq_u8(vpadalq_u8(vpadalq_u8(vpaddlq_u8(a3[1]), *a3), *a4), a4[1]);
  v5 = vpaddq_s16(v4, v4);
  v6 = vpaddq_s16(v5, v5);
  v7 = vdupq_lane_s8(vrshrn_n_s16(vpaddq_s16(v6, v6), 6uLL), 0);
  v8 = result + 1;
  v9 = 32;
  do
  {
    v8[-1] = v7;
    *v8 = v7;
    v8 = (v8 + a2);
    --v9;
  }

  while (v9);
  return result;
}

int8x16_t *sub_277B203AC(int8x16_t *result, uint64_t a2, uint64_t a3, uint8x16_t *a4)
{
  v4 = vpadalq_u8(vpaddlq_u8(a4[1]), *a4);
  v5 = vpaddq_s16(v4, v4);
  v6 = vpaddq_s16(v5, v5);
  v7 = vdupq_lane_s8(vrshrn_n_s16(vpaddq_s16(v6, v6), 5uLL), 0);
  v8 = result + 1;
  v9 = 32;
  do
  {
    v8[-1] = v7;
    *v8 = v7;
    v8 = (v8 + a2);
    --v9;
  }

  while (v9);
  return result;
}

int8x16_t *sub_277B203E8(int8x16_t *result, uint64_t a2, uint8x16_t *a3)
{
  v3 = vpadalq_u8(vpaddlq_u8(a3[1]), *a3);
  v4 = vpaddq_s16(v3, v3);
  v5 = vpaddq_s16(v4, v4);
  v6 = vdupq_lane_s8(vrshrn_n_s16(vpaddq_s16(v5, v5), 5uLL), 0);
  v7 = result + 1;
  v8 = 32;
  do
  {
    v7[-1] = v6;
    *v7 = v6;
    v7 = (v7 + a2);
    --v8;
  }

  while (v8);
  return result;
}

_OWORD *sub_277B20424(_OWORD *result, uint64_t a2)
{
  v2 = 32;
  *&v3 = 0x8080808080808080;
  *(&v3 + 1) = 0x8080808080808080;
  do
  {
    *result = v3;
    result[1] = v3;
    result = (result + a2);
    --v2;
  }

  while (v2);
  return result;
}

int8x16_t *sub_277B20440(int8x16_t *result, uint64_t a2, uint8x16_t *a3, uint8x16_t *a4)
{
  v4 = vpadalq_u8(vpadalq_u8(vpadalq_u8(vpadalq_u8(vpadalq_u8(vpadalq_u8(vpadalq_u8(vpaddlq_u8(a3[1]), *a3), a3[2]), a3[3]), *a4), a4[1]), a4[2]), a4[3]);
  v5 = vpaddq_s16(v4, v4);
  v6 = vpaddq_s16(v5, v5);
  v7 = vdupq_lane_s8(vrshrn_n_s16(vpaddq_s16(v6, v6), 7uLL), 0);
  v8 = result + 2;
  v9 = 64;
  do
  {
    v8[-2] = v7;
    v8[-1] = v7;
    *v8 = v7;
    v8[1] = v7;
    v8 = (v8 + a2);
    --v9;
  }

  while (v9);
  return result;
}

int8x16_t *sub_277B204A4(int8x16_t *result, uint64_t a2, uint64_t a3, uint8x16_t *a4)
{
  v4 = vpadalq_u8(vpadalq_u8(vpadalq_u8(vpaddlq_u8(a4[1]), *a4), a4[2]), a4[3]);
  v5 = vpaddq_s16(v4, v4);
  v6 = vpaddq_s16(v5, v5);
  v7 = vdupq_lane_s8(vrshrn_n_s16(vpaddq_s16(v6, v6), 6uLL), 0);
  v8 = result + 2;
  v9 = 64;
  do
  {
    v8[-2] = v7;
    v8[-1] = v7;
    *v8 = v7;
    v8[1] = v7;
    v8 = (v8 + a2);
    --v9;
  }

  while (v9);
  return result;
}

int8x16_t *sub_277B204F0(int8x16_t *result, uint64_t a2, uint8x16_t *a3)
{
  v3 = vpadalq_u8(vpadalq_u8(vpadalq_u8(vpaddlq_u8(a3[1]), *a3), a3[2]), a3[3]);
  v4 = vpaddq_s16(v3, v3);
  v5 = vpaddq_s16(v4, v4);
  v6 = vdupq_lane_s8(vrshrn_n_s16(vpaddq_s16(v5, v5), 6uLL), 0);
  v7 = result + 2;
  v8 = 64;
  do
  {
    v7[-2] = v6;
    v7[-1] = v6;
    *v7 = v6;
    v7[1] = v6;
    v7 = (v7 + a2);
    --v8;
  }

  while (v8);
  return result;
}

_OWORD *sub_277B2053C(_OWORD *result, uint64_t a2)
{
  v2 = 64;
  *&v3 = 0x8080808080808080;
  *(&v3 + 1) = 0x8080808080808080;
  do
  {
    result[2] = v3;
    result[3] = v3;
    *result = v3;
    result[1] = v3;
    result = (result + a2);
    --v2;
  }

  while (v2);
  return result;
}

unsigned __int32 *sub_277B2055C(unsigned __int32 *result, uint64_t a2, __int32 *a3, uint8x8_t *a4, uint8x8_t a5)
{
  a5.i32[0] = *a3;
  v5 = vdup_n_s8((21846 * ((vaddlvq_u16(vaddl_u8(a5, *a4)) + 6) >> 2)) >> 16).u32[0];
  v6 = 8;
  do
  {
    *result = v5;
    result = (result + a2);
    --v6;
  }

  while (v6);
  return result;
}

int8x8_t *sub_277B205A4(int8x8_t *result, uint64_t a2, uint8x8_t *a3, __int32 *a4, double a5, uint8x8_t a6)
{
  a6.i32[0] = *a4;
  v6 = vdup_n_s8((21846 * ((vaddlvq_u16(vaddl_u8(a6, *a3)) + 6) >> 2)) >> 16);
  v7 = 4;
  do
  {
    *result = v6;
    result = (result + a2);
    --v7;
  }

  while (v7);
  return result;
}

unsigned __int32 *sub_277B205E8(unsigned __int32 *result, uint64_t a2, __int32 *a3, uint8x16_t *a4, uint8x8_t a5)
{
  a5.i32[0] = *a3;
  v5 = vdup_n_s8((13108 * ((vaddlvq_u16(vaddw_u8(vpaddlq_u8(*a4), a5)) + 10) >> 2)) >> 16).u32[0];
  v6 = 16;
  do
  {
    *result = v5;
    result = (result + a2);
    --v6;
  }

  while (v6);
  return result;
}

int8x16_t *sub_277B20634(int8x16_t *result, uint64_t a2, uint8x16_t *a3, __int32 *a4, double a5, uint8x8_t a6)
{
  a6.i32[0] = *a4;
  v6 = vdupq_n_s8((13108 * ((vaddlvq_u16(vaddw_u8(vpaddlq_u8(*a3), a6)) + 10) >> 2)) >> 16);
  v7 = 4;
  do
  {
    *result = v6;
    result = (result + a2);
    --v7;
  }

  while (v7);
  return result;
}

int8x8_t *sub_277B2067C(int8x8_t *result, uint64_t a2, uint8x8_t *a3, uint8x16_t *a4)
{
  v4 = vdup_n_s8((21846 * ((vaddlvq_u16(vaddw_u8(vpaddlq_u8(*a4), *a3)) + 12) >> 3)) >> 16);
  v5 = 16;
  do
  {
    *result = v4;
    result = (result + a2);
    --v5;
  }

  while (v5);
  return result;
}

int8x16_t *sub_277B206C4(int8x16_t *result, uint64_t a2, uint8x16_t *a3, uint8x8_t *a4)
{
  v4 = vdupq_n_s8((21846 * ((vaddlvq_u16(vaddw_u8(vpaddlq_u8(*a3), *a4)) + 12) >> 3)) >> 16);
  v5 = 8;
  do
  {
    *result = v4;
    result = (result + a2);
    --v5;
  }

  while (v5);
  return result;
}

int8x8_t *sub_277B2070C(int8x8_t *result, uint64_t a2, uint8x8_t *a3, uint8x16_t *a4)
{
  v4 = vdup_n_s8((13108 * ((vaddlvq_u16(vpadalq_u8(vaddw_u8(vpaddlq_u8(*a4), *a3), a4[1])) + 20) >> 3)) >> 16);
  v5 = 32;
  do
  {
    *result = v4;
    result = (result + a2);
    --v5;
  }

  while (v5);
  return result;
}

int8x16_t *sub_277B20758(int8x16_t *result, uint64_t a2, uint8x16_t *a3, uint8x8_t *a4)
{
  v4 = vdupq_n_s8((13108 * ((vaddlvq_u16(vaddw_u8(vpadalq_u8(vpaddlq_u8(a3[1]), *a3), *a4)) + 20) >> 3)) >> 16);
  v5 = result + 1;
  v6 = 8;
  do
  {
    v5[-1] = v4;
    *v5 = v4;
    v5 = (v5 + a2);
    --v6;
  }

  while (v6);
  return result;
}

int8x16_t *sub_277B207A8(int8x16_t *result, uint64_t a2, uint8x16_t *a3, uint8x16_t *a4)
{
  v4 = vdupq_n_s8((21846 * ((vaddlvq_u16(vpadalq_u8(vpadalq_u8(vpaddlq_u8(*a4), *a3), a4[1])) + 24) >> 4)) >> 16);
  v5 = 32;
  do
  {
    *result = v4;
    result = (result + a2);
    --v5;
  }

  while (v5);
  return result;
}

int8x16_t *sub_277B207F4(int8x16_t *result, uint64_t a2, uint8x16_t *a3, uint8x16_t *a4)
{
  v4 = vdupq_n_s8((21846 * ((vaddlvq_u16(vpadalq_u8(vpadalq_u8(vpaddlq_u8(a3[1]), *a3), *a4)) + 24) >> 4)) >> 16);
  v5 = result + 1;
  v6 = 16;
  do
  {
    v5[-1] = v4;
    *v5 = v4;
    v5 = (v5 + a2);
    --v6;
  }

  while (v6);
  return result;
}

int8x16_t *sub_277B20844(int8x16_t *result, uint64_t a2, uint8x16_t *a3, uint8x16_t *a4)
{
  v4 = vdupq_n_s8((13108 * ((vaddlvq_u16(vpadalq_u8(vpadalq_u8(vpadalq_u8(vpadalq_u8(vpaddlq_u8(*a4), *a3), a4[1]), a4[2]), a4[3])) + 40) >> 4)) >> 16);
  v5 = 64;
  do
  {
    *result = v4;
    result = (result + a2);
    --v5;
  }

  while (v5);
  return result;
}

int8x16_t *sub_277B2089C(int8x16_t *result, uint64_t a2, uint8x16_t *a3, uint8x16_t *a4)
{
  v4 = vdupq_n_s8((13108 * ((vaddlvq_u16(vpadalq_u8(vpadalq_u8(vpadalq_u8(vpadalq_u8(vpaddlq_u8(a3[1]), *a3), a3[2]), a3[3]), *a4)) + 40) >> 4)) >> 16);
  v5 = result + 2;
  v6 = 16;
  do
  {
    v5[-2] = v4;
    v5[-1] = v4;
    *v5 = v4;
    v5[1] = v4;
    v5 = (v5 + a2);
    --v6;
  }

  while (v6);
  return result;
}

int8x16_t *sub_277B208FC(int8x16_t *result, uint64_t a2, uint8x16_t *a3, uint8x16_t *a4)
{
  v4 = vdupq_n_s8((21846 * ((vaddlvq_u16(vpadalq_u8(vpadalq_u8(vpadalq_u8(vpadalq_u8(vpadalq_u8(vpaddlq_u8(a3[1]), *a3), *a4), a4[1]), a4[2]), a4[3])) + 48) >> 5)) >> 16);
  v5 = result + 1;
  v6 = 64;
  do
  {
    v5[-1] = v4;
    *v5 = v4;
    v5 = (v5 + a2);
    --v6;
  }

  while (v6);
  return result;
}

int8x16_t *sub_277B2095C(int8x16_t *result, uint64_t a2, uint8x16_t *a3, uint8x16_t *a4)
{
  v4 = vdupq_n_s8((21846 * ((vaddlvq_u16(vpadalq_u8(vpadalq_u8(vpadalq_u8(vpadalq_u8(vpadalq_u8(vpaddlq_u8(a3[1]), *a3), a3[2]), a3[3]), *a4), a4[1])) + 48) >> 5)) >> 16);
  v5 = result + 2;
  v6 = 32;
  do
  {
    v5[-2] = v4;
    v5[-1] = v4;
    *v5 = v4;
    v5[1] = v4;
    v5 = (v5 + a2);
    --v6;
  }

  while (v6);
  return result;
}

_DWORD *sub_277B209C0(_DWORD *result, uint64_t a2)
{
  v2 = 8;
  do
  {
    *result = -2139062144;
    result = (result + a2);
    --v2;
  }

  while (v2);
  return result;
}

_DWORD *sub_277B209DC(_DWORD *result, uint64_t a2)
{
  v2 = 16;
  do
  {
    *result = -2139062144;
    result = (result + a2);
    --v2;
  }

  while (v2);
  return result;
}

void *sub_277B209F8(void *result, uint64_t a2)
{
  v2 = 4;
  do
  {
    *result = 0x8080808080808080;
    result = (result + a2);
    --v2;
  }

  while (v2);
  return result;
}

void *sub_277B20A14(void *result, uint64_t a2)
{
  v2 = 16;
  do
  {
    *result = 0x8080808080808080;
    result = (result + a2);
    --v2;
  }

  while (v2);
  return result;
}

void *sub_277B20A30(void *result, uint64_t a2)
{
  v2 = 32;
  do
  {
    *result = 0x8080808080808080;
    result = (result + a2);
    --v2;
  }

  while (v2);
  return result;
}

_OWORD *sub_277B20A4C(_OWORD *result, uint64_t a2)
{
  v2 = 4;
  *&v3 = 0x8080808080808080;
  *(&v3 + 1) = 0x8080808080808080;
  do
  {
    *result = v3;
    result = (result + a2);
    --v2;
  }

  while (v2);
  return result;
}

_OWORD *sub_277B20A68(_OWORD *result, uint64_t a2)
{
  v2 = 8;
  *&v3 = 0x8080808080808080;
  *(&v3 + 1) = 0x8080808080808080;
  do
  {
    *result = v3;
    result = (result + a2);
    --v2;
  }

  while (v2);
  return result;
}

_OWORD *sub_277B20A84(_OWORD *result, uint64_t a2)
{
  v2 = 32;
  *&v3 = 0x8080808080808080;
  *(&v3 + 1) = 0x8080808080808080;
  do
  {
    *result = v3;
    result = (result + a2);
    --v2;
  }

  while (v2);
  return result;
}

_OWORD *sub_277B20AA0(_OWORD *result, uint64_t a2)
{
  v2 = 64;
  *&v3 = 0x8080808080808080;
  *(&v3 + 1) = 0x8080808080808080;
  do
  {
    *result = v3;
    result = (result + a2);
    --v2;
  }

  while (v2);
  return result;
}

_OWORD *sub_277B20ABC(_OWORD *result, uint64_t a2)
{
  v2 = 8;
  *&v3 = 0x8080808080808080;
  *(&v3 + 1) = 0x8080808080808080;
  do
  {
    *result = v3;
    result[1] = v3;
    result = (result + a2);
    --v2;
  }

  while (v2);
  return result;
}

_OWORD *sub_277B20AD8(_OWORD *result, uint64_t a2)
{
  v2 = 16;
  *&v3 = 0x8080808080808080;
  *(&v3 + 1) = 0x8080808080808080;
  do
  {
    *result = v3;
    result[1] = v3;
    result = (result + a2);
    --v2;
  }

  while (v2);
  return result;
}

_OWORD *sub_277B20AF4(_OWORD *result, uint64_t a2)
{
  v2 = 64;
  *&v3 = 0x8080808080808080;
  *(&v3 + 1) = 0x8080808080808080;
  do
  {
    *result = v3;
    result[1] = v3;
    result = (result + a2);
    --v2;
  }

  while (v2);
  return result;
}

_OWORD *sub_277B20B10(_OWORD *result, uint64_t a2)
{
  v2 = 32;
  *&v3 = 0x8080808080808080;
  *(&v3 + 1) = 0x8080808080808080;
  do
  {
    result[2] = v3;
    result[3] = v3;
    *result = v3;
    result[1] = v3;
    result = (result + a2);
    --v2;
  }

  while (v2);
  return result;
}

_OWORD *sub_277B20B30(_OWORD *result, uint64_t a2)
{
  v2 = 16;
  *&v3 = 0x8080808080808080;
  *(&v3 + 1) = 0x8080808080808080;
  do
  {
    result[2] = v3;
    result[3] = v3;
    *result = v3;
    result[1] = v3;
    result = (result + a2);
    --v2;
  }

  while (v2);
  return result;
}

unsigned __int32 *sub_277B20B50(unsigned __int32 *result, uint64_t a2, int16x8_t a3, uint64_t a4, uint8x8_t *a5)
{
  *a3.i8 = vpaddl_u8(*a5);
  *a3.i8 = vpadd_s16(*a3.i8, *a3.i8);
  *a3.i8 = vpadd_s16(*a3.i8, *a3.i8);
  v5 = vdup_lane_s8(vrshrn_n_s16(a3, 3uLL), 0).u32[0];
  v6 = 8;
  do
  {
    *result = v5;
    result = (result + a2);
    --v6;
  }

  while (v6);
  return result;
}

void *sub_277B20B84(void *result, uint64_t a2, int16x8_t a3, uint64_t a4, unsigned __int32 *a5)
{
  a3.i32[0] = *a5;
  *a3.i8 = vpaddl_u8(*a3.i8);
  *a3.i8 = vpadd_s16(*a3.i8, *a3.i8);
  *a3.i8 = vdup_lane_s8(vrshrn_n_s16(a3, 2uLL), 0);
  v5 = 4;
  do
  {
    *result = a3.i64[0];
    result = (result + a2);
    --v5;
  }

  while (v5);
  return result;
}

int8x8_t *sub_277B20BB0(int8x8_t *result, uint64_t a2, uint64_t a3, uint8x16_t *a4)
{
  v4 = vpaddlq_u8(*a4);
  v5 = vpaddq_s16(v4, v4);
  v6 = vpaddq_s16(v5, v5);
  v7 = vdup_lane_s8(vrshrn_n_s16(vpaddq_s16(v6, v6), 4uLL), 0);
  v8 = 16;
  do
  {
    *result = v7;
    result = (result + a2);
    --v8;
  }

  while (v8);
  return result;
}

int8x16_t *sub_277B20BE4(int8x16_t *result, uint64_t a2, int16x8_t a3, uint64_t a4, uint8x8_t *a5)
{
  *a3.i8 = vpaddl_u8(*a5);
  *a3.i8 = vpadd_s16(*a3.i8, *a3.i8);
  *a3.i8 = vpadd_s16(*a3.i8, *a3.i8);
  v5 = vdupq_lane_s8(vrshrn_n_s16(a3, 3uLL), 0);
  v6 = 8;
  do
  {
    *result = v5;
    result = (result + a2);
    --v6;
  }

  while (v6);
  return result;
}

int8x16_t *sub_277B20C14(int8x16_t *result, uint64_t a2, uint64_t a3, uint8x16_t *a4)
{
  v4 = vpadalq_u8(vpaddlq_u8(a4[1]), *a4);
  v5 = vpaddq_s16(v4, v4);
  v6 = vpaddq_s16(v5, v5);
  v7 = vdupq_lane_s8(vrshrn_n_s16(vpaddq_s16(v6, v6), 5uLL), 0);
  v8 = 32;
  do
  {
    *result = v7;
    result = (result + a2);
    --v8;
  }

  while (v8);
  return result;
}

int8x16_t *sub_277B20C4C(int8x16_t *result, uint64_t a2, uint64_t a3, uint8x16_t *a4)
{
  v4 = vpaddlq_u8(*a4);
  v5 = vpaddq_s16(v4, v4);
  v6 = vpaddq_s16(v5, v5);
  v7 = vdupq_lane_s8(vrshrn_n_s16(vpaddq_s16(v6, v6), 4uLL), 0);
  v8 = result + 1;
  v9 = 16;
  do
  {
    v8[-1] = v7;
    *v8 = v7;
    v8 = (v8 + a2);
    --v9;
  }

  while (v9);
  return result;
}

int8x16_t *sub_277B20C84(int8x16_t *result, uint64_t a2, uint64_t a3, uint8x16_t *a4)
{
  v4 = vpadalq_u8(vpadalq_u8(vpadalq_u8(vpaddlq_u8(a4[1]), *a4), a4[2]), a4[3]);
  v5 = vpaddq_s16(v4, v4);
  v6 = vpaddq_s16(v5, v5);
  v7 = vdupq_lane_s8(vrshrn_n_s16(vpaddq_s16(v6, v6), 6uLL), 0);
  v8 = result + 1;
  v9 = 64;
  do
  {
    v8[-1] = v7;
    *v8 = v7;
    v8 = (v8 + a2);
    --v9;
  }

  while (v9);
  return result;
}

int8x16_t *sub_277B20CCC(int8x16_t *result, uint64_t a2, uint64_t a3, uint8x16_t *a4)
{
  v4 = vpadalq_u8(vpaddlq_u8(a4[1]), *a4);
  v5 = vpaddq_s16(v4, v4);
  v6 = vpaddq_s16(v5, v5);
  v7 = vdupq_lane_s8(vrshrn_n_s16(vpaddq_s16(v6, v6), 5uLL), 0);
  v8 = result + 2;
  v9 = 32;
  do
  {
    v8[-2] = v7;
    v8[-1] = v7;
    *v8 = v7;
    v8[1] = v7;
    v8 = (v8 + a2);
    --v9;
  }

  while (v9);
  return result;
}

unsigned __int32 *sub_277B20D0C(unsigned __int32 *result, uint64_t a2, uint64_t a3, uint8x16_t *a4)
{
  v4 = vpaddlq_u8(*a4);
  v5 = vpaddq_s16(v4, v4);
  v6 = vpaddq_s16(v5, v5);
  v7 = vdup_lane_s8(vrshrn_n_s16(vpaddq_s16(v6, v6), 4uLL), 0).u32[0];
  v8 = 16;
  do
  {
    *result = v7;
    result = (result + a2);
    --v8;
  }

  while (v8);
  return result;
}

int8x16_t *sub_277B20D44(int8x16_t *result, uint64_t a2, int16x8_t a3, uint64_t a4, unsigned __int32 *a5)
{
  a3.i32[0] = *a5;
  *a3.i8 = vpaddl_u8(*a3.i8);
  *a3.i8 = vpadd_s16(*a3.i8, *a3.i8);
  v5 = vdupq_lane_s8(vrshrn_n_s16(a3, 2uLL), 0);
  v6 = 4;
  do
  {
    *result = v5;
    result = (result + a2);
    --v6;
  }

  while (v6);
  return result;
}

int8x8_t *sub_277B20D70(int8x8_t *result, uint64_t a2, uint64_t a3, uint8x16_t *a4)
{
  v4 = vpadalq_u8(vpaddlq_u8(a4[1]), *a4);
  v5 = vpaddq_s16(v4, v4);
  v6 = vpaddq_s16(v5, v5);
  v7 = vdup_lane_s8(vrshrn_n_s16(vpaddq_s16(v6, v6), 5uLL), 0);
  v8 = 32;
  do
  {
    *result = v7;
    result = (result + a2);
    --v8;
  }

  while (v8);
  return result;
}

int8x16_t *sub_277B20DA8(int8x16_t *result, uint64_t a2, int16x8_t a3, uint64_t a4, uint8x8_t *a5)
{
  *a3.i8 = vpaddl_u8(*a5);
  *a3.i8 = vpadd_s16(*a3.i8, *a3.i8);
  *a3.i8 = vpadd_s16(*a3.i8, *a3.i8);
  v5 = vdupq_lane_s8(vrshrn_n_s16(a3, 3uLL), 0);
  v6 = result + 1;
  v7 = 8;
  do
  {
    v6[-1] = v5;
    *v6 = v5;
    v6 = (v6 + a2);
    --v7;
  }

  while (v7);
  return result;
}

int8x16_t *sub_277B20DDC(int8x16_t *result, uint64_t a2, uint64_t a3, uint8x16_t *a4)
{
  v4 = vpadalq_u8(vpadalq_u8(vpadalq_u8(vpaddlq_u8(a4[1]), *a4), a4[2]), a4[3]);
  v5 = vpaddq_s16(v4, v4);
  v6 = vpaddq_s16(v5, v5);
  v7 = vdupq_lane_s8(vrshrn_n_s16(vpaddq_s16(v6, v6), 6uLL), 0);
  v8 = 64;
  do
  {
    *result = v7;
    result = (result + a2);
    --v8;
  }

  while (v8);
  return result;
}

int8x16_t *sub_277B20E20(int8x16_t *result, uint64_t a2, uint64_t a3, uint8x16_t *a4)
{
  v4 = vpaddlq_u8(*a4);
  v5 = vpaddq_s16(v4, v4);
  v6 = vpaddq_s16(v5, v5);
  v7 = vdupq_lane_s8(vrshrn_n_s16(vpaddq_s16(v6, v6), 4uLL), 0);
  v8 = result + 2;
  v9 = 16;
  do
  {
    v8[-2] = v7;
    v8[-1] = v7;
    *v8 = v7;
    v8[1] = v7;
    v8 = (v8 + a2);
    --v9;
  }

  while (v9);
  return result;
}

unsigned __int32 *sub_277B20E5C(unsigned __int32 *result, uint64_t a2, unsigned __int32 *a3, int16x8_t a4)
{
  a4.i32[0] = *a3;
  *a4.i8 = vpaddl_u8(*a4.i8);
  *a4.i8 = vpadd_s16(*a4.i8, *a4.i8);
  v4 = vdup_lane_s8(vrshrn_n_s16(a4, 2uLL), 0).u32[0];
  v5 = 8;
  do
  {
    *result = v4;
    result = (result + a2);
    --v5;
  }

  while (v5);
  return result;
}

unsigned __int32 *sub_277B20E8C(unsigned __int32 *result, uint64_t a2, unsigned __int32 *a3, int16x8_t a4)
{
  a4.i32[0] = *a3;
  *a4.i8 = vpaddl_u8(*a4.i8);
  *a4.i8 = vpadd_s16(*a4.i8, *a4.i8);
  v4 = vdup_lane_s8(vrshrn_n_s16(a4, 2uLL), 0).u32[0];
  v5 = 16;
  do
  {
    *result = v4;
    result = (result + a2);
    --v5;
  }

  while (v5);
  return result;
}

void *sub_277B20EBC(void *result, uint64_t a2, uint8x8_t *a3, int16x8_t a4)
{
  *a4.i8 = vpaddl_u8(*a3);
  *a4.i8 = vpadd_s16(*a4.i8, *a4.i8);
  *a4.i8 = vpadd_s16(*a4.i8, *a4.i8);
  *a4.i8 = vdup_lane_s8(vrshrn_n_s16(a4, 3uLL), 0);
  v4 = 4;
  do
  {
    *result = a4.i64[0];
    result = (result + a2);
    --v4;
  }

  while (v4);
  return result;
}

void *sub_277B20EEC(void *result, uint64_t a2, uint8x8_t *a3, int16x8_t a4)
{
  *a4.i8 = vpaddl_u8(*a3);
  *a4.i8 = vpadd_s16(*a4.i8, *a4.i8);
  *a4.i8 = vpadd_s16(*a4.i8, *a4.i8);
  *a4.i8 = vdup_lane_s8(vrshrn_n_s16(a4, 3uLL), 0);
  v4 = 16;
  do
  {
    *result = a4.i64[0];
    result = (result + a2);
    --v4;
  }

  while (v4);
  return result;
}

void *sub_277B20F1C(void *result, uint64_t a2, uint8x8_t *a3, int16x8_t a4)
{
  *a4.i8 = vpaddl_u8(*a3);
  *a4.i8 = vpadd_s16(*a4.i8, *a4.i8);
  *a4.i8 = vpadd_s16(*a4.i8, *a4.i8);
  *a4.i8 = vdup_lane_s8(vrshrn_n_s16(a4, 3uLL), 0);
  v4 = 32;
  do
  {
    *result = a4.i64[0];
    result = (result + a2);
    --v4;
  }

  while (v4);
  return result;
}

int8x16_t *sub_277B20F4C(int8x16_t *result, uint64_t a2, uint8x16_t *a3)
{
  v3 = vpaddlq_u8(*a3);
  v4 = vpaddq_s16(v3, v3);
  v5 = vpaddq_s16(v4, v4);
  v6 = vdupq_lane_s8(vrshrn_n_s16(vpaddq_s16(v5, v5), 4uLL), 0);
  v7 = 4;
  do
  {
    *result = v6;
    result = (result + a2);
    --v7;
  }

  while (v7);
  return result;
}

int8x16_t *sub_277B20F80(int8x16_t *result, uint64_t a2, uint8x16_t *a3)
{
  v3 = vpaddlq_u8(*a3);
  v4 = vpaddq_s16(v3, v3);
  v5 = vpaddq_s16(v4, v4);
  v6 = vdupq_lane_s8(vrshrn_n_s16(vpaddq_s16(v5, v5), 4uLL), 0);
  v7 = 8;
  do
  {
    *result = v6;
    result = (result + a2);
    --v7;
  }

  while (v7);
  return result;
}

int8x16_t *sub_277B20FB4(int8x16_t *result, uint64_t a2, uint8x16_t *a3)
{
  v3 = vpaddlq_u8(*a3);
  v4 = vpaddq_s16(v3, v3);
  v5 = vpaddq_s16(v4, v4);
  v6 = vdupq_lane_s8(vrshrn_n_s16(vpaddq_s16(v5, v5), 4uLL), 0);
  v7 = 32;
  do
  {
    *result = v6;
    result = (result + a2);
    --v7;
  }

  while (v7);
  return result;
}

int8x16_t *sub_277B20FE8(int8x16_t *result, uint64_t a2, uint8x16_t *a3)
{
  v3 = vpaddlq_u8(*a3);
  v4 = vpaddq_s16(v3, v3);
  v5 = vpaddq_s16(v4, v4);
  v6 = vdupq_lane_s8(vrshrn_n_s16(vpaddq_s16(v5, v5), 4uLL), 0);
  v7 = 64;
  do
  {
    *result = v6;
    result = (result + a2);
    --v7;
  }

  while (v7);
  return result;
}

int8x16_t *sub_277B2101C(int8x16_t *result, uint64_t a2, uint8x16_t *a3)
{
  v3 = vpadalq_u8(vpaddlq_u8(a3[1]), *a3);
  v4 = vpaddq_s16(v3, v3);
  v5 = vpaddq_s16(v4, v4);
  v6 = vdupq_lane_s8(vrshrn_n_s16(vpaddq_s16(v5, v5), 5uLL), 0);
  v7 = result + 1;
  v8 = 8;
  do
  {
    v7[-1] = v6;
    *v7 = v6;
    v7 = (v7 + a2);
    --v8;
  }

  while (v8);
  return result;
}

int8x16_t *sub_277B21058(int8x16_t *result, uint64_t a2, uint8x16_t *a3)
{
  v3 = vpadalq_u8(vpaddlq_u8(a3[1]), *a3);
  v4 = vpaddq_s16(v3, v3);
  v5 = vpaddq_s16(v4, v4);
  v6 = vdupq_lane_s8(vrshrn_n_s16(vpaddq_s16(v5, v5), 5uLL), 0);
  v7 = result + 1;
  v8 = 16;
  do
  {
    v7[-1] = v6;
    *v7 = v6;
    v7 = (v7 + a2);
    --v8;
  }

  while (v8);
  return result;
}

int8x16_t *sub_277B21094(int8x16_t *result, uint64_t a2, uint8x16_t *a3)
{
  v3 = vpadalq_u8(vpaddlq_u8(a3[1]), *a3);
  v4 = vpaddq_s16(v3, v3);
  v5 = vpaddq_s16(v4, v4);
  v6 = vdupq_lane_s8(vrshrn_n_s16(vpaddq_s16(v5, v5), 5uLL), 0);
  v7 = result + 1;
  v8 = 64;
  do
  {
    v7[-1] = v6;
    *v7 = v6;
    v7 = (v7 + a2);
    --v8;
  }

  while (v8);
  return result;
}

int8x16_t *sub_277B210D0(int8x16_t *result, uint64_t a2, uint8x16_t *a3)
{
  v3 = vpadalq_u8(vpadalq_u8(vpadalq_u8(vpaddlq_u8(a3[1]), *a3), a3[2]), a3[3]);
  v4 = vpaddq_s16(v3, v3);
  v5 = vpaddq_s16(v4, v4);
  v6 = vdupq_lane_s8(vrshrn_n_s16(vpaddq_s16(v5, v5), 6uLL), 0);
  v7 = result + 2;
  v8 = 16;
  do
  {
    v7[-2] = v6;
    v7[-1] = v6;
    *v7 = v6;
    v7[1] = v6;
    v7 = (v7 + a2);
    --v8;
  }

  while (v8);
  return result;
}

int8x16_t *sub_277B2111C(int8x16_t *result, uint64_t a2, uint8x16_t *a3)
{
  v3 = vpadalq_u8(vpadalq_u8(vpadalq_u8(vpaddlq_u8(a3[1]), *a3), a3[2]), a3[3]);
  v4 = vpaddq_s16(v3, v3);
  v5 = vpaddq_s16(v4, v4);
  v6 = vdupq_lane_s8(vrshrn_n_s16(vpaddq_s16(v5, v5), 6uLL), 0);
  v7 = result + 2;
  v8 = 32;
  do
  {
    v7[-2] = v6;
    v7[-1] = v6;
    *v7 = v6;
    v7[1] = v6;
    v7 = (v7 + a2);
    --v8;
  }

  while (v8);
  return result;
}

_DWORD *sub_277B21168(_DWORD *result, uint64_t a2, int *a3)
{
  v3 = *a3;
  v4 = 4;
  do
  {
    *result = v3;
    result = (result + a2);
    --v4;
  }

  while (v4);
  return result;
}

void *sub_277B21184(void *result, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = 8;
  do
  {
    *result = v3;
    result = (result + a2);
    --v4;
  }

  while (v4);
  return result;
}

_OWORD *sub_277B211A0(_OWORD *result, uint64_t a2, __int128 *a3)
{
  v3 = *a3;
  v4 = 16;
  do
  {
    *result = v3;
    result = (result + a2);
    --v4;
  }

  while (v4);
  return result;
}

uint64_t sub_277B211BC(uint64_t result, uint64_t a2, __int128 *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = (result + 16);
  v6 = 32;
  do
  {
    *(v5 - 1) = v3;
    *v5 = v4;
    v5 = (v5 + a2);
    --v6;
  }

  while (v6);
  return result;
}

_DWORD *sub_277B211DC(_DWORD *result, uint64_t a2, int *a3)
{
  v3 = *a3;
  v4 = 8;
  do
  {
    *result = v3;
    result = (result + a2);
    --v4;
  }

  while (v4);
  return result;
}

_DWORD *sub_277B211F8(_DWORD *result, uint64_t a2, int *a3)
{
  v3 = *a3;
  v4 = 16;
  do
  {
    *result = v3;
    result = (result + a2);
    --v4;
  }

  while (v4);
  return result;
}

void *sub_277B21214(void *result, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = 4;
  do
  {
    *result = v3;
    result = (result + a2);
    --v4;
  }

  while (v4);
  return result;
}

void *sub_277B21230(void *result, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = 16;
  do
  {
    *result = v3;
    result = (result + a2);
    --v4;
  }

  while (v4);
  return result;
}

void *sub_277B2124C(void *result, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = 32;
  do
  {
    *result = v3;
    result = (result + a2);
    --v4;
  }

  while (v4);
  return result;
}

_OWORD *sub_277B21268(_OWORD *result, uint64_t a2, __int128 *a3)
{
  v3 = *a3;
  v4 = 4;
  do
  {
    *result = v3;
    result = (result + a2);
    --v4;
  }

  while (v4);
  return result;
}

_OWORD *sub_277B21284(_OWORD *result, uint64_t a2, __int128 *a3)
{
  v3 = *a3;
  v4 = 8;
  do
  {
    *result = v3;
    result = (result + a2);
    --v4;
  }

  while (v4);
  return result;
}

_OWORD *sub_277B212A0(_OWORD *result, uint64_t a2, __int128 *a3)
{
  v3 = *a3;
  v4 = 32;
  do
  {
    *result = v3;
    result = (result + a2);
    --v4;
  }

  while (v4);
  return result;
}

_OWORD *sub_277B212BC(_OWORD *result, uint64_t a2, __int128 *a3)
{
  v3 = *a3;
  v4 = 64;
  do
  {
    *result = v3;
    result = (result + a2);
    --v4;
  }

  while (v4);
  return result;
}

uint64_t sub_277B212D8(uint64_t result, uint64_t a2, __int128 *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = (result + 16);
  v6 = 8;
  do
  {
    *(v5 - 1) = v3;
    *v5 = v4;
    v5 = (v5 + a2);
    --v6;
  }

  while (v6);
  return result;
}

uint64_t sub_277B212F8(uint64_t result, uint64_t a2, __int128 *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = (result + 16);
  v6 = 16;
  do
  {
    *(v5 - 1) = v3;
    *v5 = v4;
    v5 = (v5 + a2);
    --v6;
  }

  while (v6);
  return result;
}

uint64_t sub_277B21318(uint64_t result, uint64_t a2, __int128 *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = (result + 16);
  v6 = 64;
  do
  {
    *(v5 - 1) = v3;
    *v5 = v4;
    v5 = (v5 + a2);
    --v6;
  }

  while (v6);
  return result;
}

uint64_t sub_277B21338(uint64_t result, uint64_t a2, __int128 *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = a3[2];
  v6 = a3[3];
  v7 = (result + 32);
  v8 = 16;
  do
  {
    *(v7 - 2) = v3;
    *(v7 - 1) = v4;
    *v7 = v5;
    v7[1] = v6;
    v7 = (v7 + a2);
    --v8;
  }

  while (v8);
  return result;
}

uint64_t sub_277B21360(uint64_t result, uint64_t a2, __int128 *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = a3[2];
  v6 = a3[3];
  v7 = (result + 32);
  v8 = 32;
  do
  {
    *(v7 - 2) = v3;
    *(v7 - 1) = v4;
    *v7 = v5;
    v7[1] = v6;
    v7 = (v7 + a2);
    --v8;
  }

  while (v8);
  return result;
}

uint64_t sub_277B21388(uint64_t result, uint64_t a2, __int128 *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = a3[2];
  v6 = a3[3];
  v7 = (result + 32);
  v8 = 64;
  do
  {
    *(v7 - 2) = v3;
    *(v7 - 1) = v4;
    *v7 = v5;
    v7[1] = v6;
    v7 = (v7 + a2);
    --v8;
  }

  while (v8);
  return result;
}

int8x8_t sub_277B213B0(_DWORD *a1, uint64_t a2, int8x8_t a3, uint64_t a4, __int32 *a5)
{
  a3.i32[0] = *a5;
  *a1 = vdup_lane_s8(a3, 0).u32[0];
  *(a1 + a2) = vdup_lane_s8(a3, 1).u32[0];
  *(a1 + 2 * a2) = vdup_lane_s8(a3, 2).u32[0];
  result = vdup_lane_s8(a3, 3);
  *(a1 + 3 * a2) = result.i32[0];
  return result;
}

int8x8_t sub_277B213E0(int8x8_t *a1, uint64_t a2, uint64_t a3, int8x8_t *a4)
{
  v4 = *a4;
  *a1 = vdup_lane_s8(*a4, 0);
  *(a1 + a2) = vdup_lane_s8(v4, 1);
  *(a1 + 2 * a2) = vdup_lane_s8(v4, 2);
  *(a1 + 3 * a2) = vdup_lane_s8(v4, 3);
  *(a1 + 4 * a2) = vdup_lane_s8(v4, 4);
  *(a1 + 5 * a2) = vdup_lane_s8(v4, 5);
  *(a1 + 6 * a2) = vdup_lane_s8(v4, 6);
  result = vdup_lane_s8(v4, 7);
  *(&a1[a2] - a2) = result;
  return result;
}

int8x16_t sub_277B21444(int8x16_t *a1, uint64_t a2, uint64_t a3, int8x8_t *a4)
{
  v4 = *a4->i8;
  *a1 = vdupq_lane_s8(*a4, 0);
  *(a1 + a2) = vdupq_lane_s8(*v4.i8, 1);
  v5 = 2 * a2;
  *(a1 + v5) = vdupq_lane_s8(*v4.i8, 2);
  v6 = 3 * a2;
  *(a1 + v6) = vdupq_lane_s8(*v4.i8, 3);
  v7 = 4 * a2;
  *(a1 + v7) = vdupq_lane_s8(*v4.i8, 4);
  v8 = 5 * a2;
  *(a1 + v8) = vdupq_lane_s8(*v4.i8, 5);
  v9 = 6 * a2;
  *(a1 + v9) = vdupq_lane_s8(*v4.i8, 6);
  v10 = 7 * a2;
  *(a1 + v10) = vdupq_lane_s8(*v4.i8, 7);
  v11 = (a1 + 8 * a2);
  *v11 = vdupq_laneq_s8(v4, 8);
  *(v11 + a2) = vdupq_laneq_s8(v4, 9);
  *(v11 + v5) = vdupq_laneq_s8(v4, 10);
  *(v11 + v6) = vdupq_laneq_s8(v4, 11);
  *(v11 + v7) = vdupq_laneq_s8(v4, 12);
  *(v11 + v8) = vdupq_laneq_s8(v4, 13);
  *(v11 + v9) = vdupq_laneq_s8(v4, 14);
  result = vdupq_laneq_s8(v4, 15);
  *(v11 + v10) = result;
  return result;
}

int8x16_t sub_277B214EC(int8x16_t *a1, uint64_t a2, uint64_t a3, int8x16_t *a4)
{
  v5 = *a4;
  v4 = a4[1];
  v6 = vdupq_lane_s8(*a4->i8, 0);
  *a1 = v6;
  a1[1] = v6;
  v7 = (a1 + a2);
  v8 = vdupq_lane_s8(*v5.i8, 1);
  *v7 = v8;
  v7[1] = v8;
  v9 = (a1 + a2 + a2);
  v10 = vdupq_lane_s8(*v5.i8, 2);
  *v9 = v10;
  v9[1] = v10;
  v11 = vdupq_lane_s8(*v5.i8, 3);
  v12 = (v9 + a2);
  *v12 = v11;
  v12[1] = v11;
  v13 = (v12 + a2);
  v14 = vdupq_lane_s8(*v5.i8, 4);
  *v13 = v14;
  v13[1] = v14;
  v15 = (v13 + a2);
  v16 = vdupq_lane_s8(*v5.i8, 5);
  *v15 = v16;
  v15[1] = v16;
  v17 = (v15 + a2);
  v18 = vdupq_lane_s8(*v5.i8, 6);
  *v17 = v18;
  v17[1] = v18;
  v19 = (v17 + a2);
  v20 = vdupq_lane_s8(*v5.i8, 7);
  *v19 = v20;
  v19[1] = v20;
  v21 = (a1 + 8 * a2);
  v22 = vdupq_laneq_s8(v5, 8);
  *v21 = v22;
  v21[1] = v22;
  v23 = vdupq_laneq_s8(v5, 9);
  v24 = (v21 + a2);
  *v24 = v23;
  v24[1] = v23;
  v25 = (v24 + a2);
  v26 = vdupq_laneq_s8(v5, 10);
  *v25 = v26;
  v25[1] = v26;
  v27 = (v25 + a2);
  v28 = vdupq_laneq_s8(v5, 11);
  *v27 = v28;
  v27[1] = v28;
  v29 = (v27 + a2);
  v30 = vdupq_laneq_s8(v5, 12);
  *v29 = v30;
  v29[1] = v30;
  v31 = (v29 + a2);
  v32 = vdupq_laneq_s8(v5, 13);
  *v31 = v32;
  v31[1] = v32;
  v33 = (v31 + a2);
  v34 = vdupq_laneq_s8(v5, 14);
  *v33 = v34;
  v33[1] = v34;
  v35 = vdupq_laneq_s8(v5, 15);
  v36 = (v33 + a2);
  *v36 = v35;
  v36[1] = v35;
  v37 = &a1[a2];
  v38 = vdupq_lane_s8(*v4.i8, 0);
  *v37 = v38;
  v37[1] = v38;
  v39 = (v37 + a2);
  v40 = vdupq_lane_s8(*v4.i8, 1);
  *v39 = v40;
  v39[1] = v40;
  v41 = (v39 + a2);
  v42 = vdupq_lane_s8(*v4.i8, 2);
  *v41 = v42;
  v41[1] = v42;
  v43 = (v41 + a2);
  v44 = vdupq_lane_s8(*v4.i8, 3);
  *v43 = v44;
  v43[1] = v44;
  v45 = (v43 + a2);
  v46 = vdupq_lane_s8(*v4.i8, 4);
  *v45 = v46;
  v45[1] = v46;
  v47 = vdupq_lane_s8(*v4.i8, 5);
  v48 = (v45 + a2);
  *v48 = v47;
  v48[1] = v47;
  v49 = (v48 + a2);
  v50 = vdupq_lane_s8(*v4.i8, 6);
  *v49 = v50;
  v49[1] = v50;
  v51 = (v49 + a2);
  v52 = vdupq_lane_s8(*v4.i8, 7);
  *v51 = v52;
  v51[1] = v52;
  v53 = (a1 + 24 * a2);
  v54 = vdupq_laneq_s8(v4, 8);
  *v53 = v54;
  v53[1] = v54;
  v55 = (v53 + a2);
  v56 = vdupq_laneq_s8(v4, 9);
  *v55 = v56;
  v55[1] = v56;
  v57 = (v55 + a2);
  v58 = vdupq_laneq_s8(v4, 10);
  *v57 = v58;
  v57[1] = v58;
  v59 = (v57 + a2);
  v60 = vdupq_laneq_s8(v4, 11);
  *v59 = v60;
  v59[1] = v60;
  v61 = vdupq_laneq_s8(v4, 12);
  v62 = (v59 + a2);
  *v62 = v61;
  v62[1] = v61;
  v63 = (v62 + a2);
  v64 = vdupq_laneq_s8(v4, 13);
  *v63 = v64;
  v63[1] = v64;
  v65 = (v63 + a2);
  v66 = vdupq_laneq_s8(v4, 14);
  *v65 = v66;
  v65[1] = v66;
  v67 = (v65 + a2);
  result = vdupq_laneq_s8(v4, 15);
  *v67 = result;
  v67[1] = result;
  return result;
}

int8x8_t sub_277B21674(_DWORD *a1, uint64_t a2, uint64_t a3, int8x8_t *a4)
{
  v4 = *a4;
  *a1 = vdup_lane_s8(*a4, 0).u32[0];
  *(a1 + a2) = vdup_lane_s8(v4, 1).u32[0];
  *(a1 + 2 * a2) = vdup_lane_s8(v4, 2).u32[0];
  *(a1 + 3 * a2) = vdup_lane_s8(v4, 3).u32[0];
  a1[a2] = vdup_lane_s8(v4, 4).u32[0];
  *(a1 + 5 * a2) = vdup_lane_s8(v4, 5).u32[0];
  *(a1 + 6 * a2) = vdup_lane_s8(v4, 6).u32[0];
  result = vdup_lane_s8(v4, 7);
  *(&a1[2 * a2] - a2) = result.i32[0];
  return result;
}

int8x8_t sub_277B216D8(_DWORD *a1, uint64_t a2, uint64_t a3, int8x8_t *a4)
{
  v4 = *a4->i8;
  *a1 = vdup_lane_s8(*a4, 0).u32[0];
  *(a1 + a2) = vdup_lane_s8(*v4.i8, 1).u32[0];
  v5 = 2 * a2;
  *(a1 + v5) = vdup_lane_s8(*v4.i8, 2).u32[0];
  v6 = 3 * a2;
  *(a1 + v6) = vdup_lane_s8(*v4.i8, 3).u32[0];
  a1[a2] = vdup_lane_s8(*v4.i8, 4).u32[0];
  v7 = 5 * a2;
  *(a1 + v7) = vdup_lane_s8(*v4.i8, 5).u32[0];
  v8 = 6 * a2;
  *(a1 + v8) = vdup_lane_s8(*v4.i8, 6).u32[0];
  v9 = 7 * a2;
  *(a1 + v9) = vdup_lane_s8(*v4.i8, 7).u32[0];
  v10 = &a1[2 * a2];
  *v10 = vdup_laneq_s8(v4, 8).u32[0];
  *(v10 + a2) = vdup_laneq_s8(v4, 9).u32[0];
  *(v10 + v5) = vdup_laneq_s8(v4, 10).u32[0];
  *(v10 + v6) = vdup_laneq_s8(v4, 11).u32[0];
  v10[a2] = vdup_laneq_s8(v4, 12).u32[0];
  *(v10 + v7) = vdup_laneq_s8(v4, 13).u32[0];
  *(v10 + v8) = vdup_laneq_s8(v4, 14).u32[0];
  result = vdup_laneq_s8(v4, 15);
  *(v10 + v9) = result.i32[0];
  return result;
}

int8x8_t sub_277B2177C(int8x8_t *a1, uint64_t a2, int8x8_t a3, uint64_t a4, __int32 *a5)
{
  a3.i32[0] = *a5;
  *a1 = vdup_lane_s8(a3, 0);
  *(a1 + a2) = vdup_lane_s8(a3, 1);
  *(a1 + 2 * a2) = vdup_lane_s8(a3, 2);
  result = vdup_lane_s8(a3, 3);
  *(a1 + 3 * a2) = result;
  return result;
}

int8x8_t sub_277B217AC(int8x8_t *a1, uint64_t a2, uint64_t a3, int8x8_t *a4)
{
  v4 = *a4->i8;
  *a1 = vdup_lane_s8(*a4, 0);
  *(a1 + a2) = vdup_lane_s8(*v4.i8, 1);
  v5 = 2 * a2;
  *(a1 + v5) = vdup_lane_s8(*v4.i8, 2);
  v6 = 3 * a2;
  *(a1 + v6) = vdup_lane_s8(*v4.i8, 3);
  v7 = 4 * a2;
  *(a1 + v7) = vdup_lane_s8(*v4.i8, 4);
  v8 = 5 * a2;
  *(a1 + v8) = vdup_lane_s8(*v4.i8, 5);
  v9 = 6 * a2;
  *(a1 + v9) = vdup_lane_s8(*v4.i8, 6);
  v10 = 7 * a2;
  *(a1 + v10) = vdup_lane_s8(*v4.i8, 7);
  v11 = &a1[a2];
  *v11 = vdup_laneq_s8(v4, 8);
  *(v11 + a2) = vdup_laneq_s8(v4, 9);
  *(v11 + v5) = vdup_laneq_s8(v4, 10);
  *(v11 + v6) = vdup_laneq_s8(v4, 11);
  *(v11 + v7) = vdup_laneq_s8(v4, 12);
  *(v11 + v8) = vdup_laneq_s8(v4, 13);
  *(v11 + v9) = vdup_laneq_s8(v4, 14);
  result = vdup_laneq_s8(v4, 15);
  *(v11 + v10) = result;
  return result;
}

int8x8_t sub_277B21854(int8x8_t *a1, uint64_t a2, uint64_t a3, int8x16_t *a4)
{
  v5 = *a4;
  v4 = a4[1];
  *a1 = vdup_lane_s8(*a4->i8, 0);
  *(a1 + a2) = vdup_lane_s8(*v5.i8, 1);
  v6 = 2 * a2;
  *(a1 + v6) = vdup_lane_s8(*v5.i8, 2);
  v7 = 3 * a2;
  *(a1 + v7) = vdup_lane_s8(*v5.i8, 3);
  v8 = 4 * a2;
  *(a1 + v8) = vdup_lane_s8(*v5.i8, 4);
  v9 = 5 * a2;
  *(a1 + v9) = vdup_lane_s8(*v5.i8, 5);
  v10 = 6 * a2;
  *(a1 + v10) = vdup_lane_s8(*v5.i8, 6);
  v11 = 7 * a2;
  *(a1 + v11) = vdup_lane_s8(*v5.i8, 7);
  v12 = &a1[a2];
  *v12 = vdup_laneq_s8(v5, 8);
  *(v12 + a2) = vdup_laneq_s8(v5, 9);
  *(v12 + v6) = vdup_laneq_s8(v5, 10);
  *(v12 + v7) = vdup_laneq_s8(v5, 11);
  *(v12 + v8) = vdup_laneq_s8(v5, 12);
  *(v12 + v9) = vdup_laneq_s8(v5, 13);
  *(v12 + v10) = vdup_laneq_s8(v5, 14);
  *(v12 + v11) = vdup_laneq_s8(v5, 15);
  v13 = &a1[2 * a2];
  *v13 = vdup_lane_s8(*v4.i8, 0);
  *(v13 + a2) = vdup_lane_s8(*v4.i8, 1);
  *(v13 + v6) = vdup_lane_s8(*v4.i8, 2);
  *(v13 + v7) = vdup_lane_s8(*v4.i8, 3);
  *(v13 + v8) = vdup_lane_s8(*v4.i8, 4);
  *(v13 + v9) = vdup_lane_s8(*v4.i8, 5);
  *(v13 + v10) = vdup_lane_s8(*v4.i8, 6);
  *(v13 + v11) = vdup_lane_s8(*v4.i8, 7);
  v14 = &a1[3 * a2];
  *v14 = vdup_laneq_s8(v4, 8);
  *(v14 + a2) = vdup_laneq_s8(v4, 9);
  *(v14 + v6) = vdup_laneq_s8(v4, 10);
  *(v14 + v7) = vdup_laneq_s8(v4, 11);
  *(v14 + v8) = vdup_laneq_s8(v4, 12);
  *(v14 + v9) = vdup_laneq_s8(v4, 13);
  *(v14 + v10) = vdup_laneq_s8(v4, 14);
  result = vdup_laneq_s8(v4, 15);
  *(v14 + v11) = result;
  return result;
}

int8x16_t sub_277B21988(int8x16_t *a1, uint64_t a2, int8x8_t a3, uint64_t a4, __int32 *a5)
{
  a3.i32[0] = *a5;
  *a1 = vdupq_lane_s8(a3, 0);
  *(a1 + a2) = vdupq_lane_s8(a3, 1);
  *(a1 + 2 * a2) = vdupq_lane_s8(a3, 2);
  result = vdupq_lane_s8(a3, 3);
  *(a1 + 3 * a2) = result;
  return result;
}

int8x16_t sub_277B219B8(int8x16_t *a1, uint64_t a2, uint64_t a3, int8x8_t *a4)
{
  v4 = *a4;
  *a1 = vdupq_lane_s8(*a4, 0);
  *(a1 + a2) = vdupq_lane_s8(v4, 1);
  *(a1 + 2 * a2) = vdupq_lane_s8(v4, 2);
  *(a1 + 3 * a2) = vdupq_lane_s8(v4, 3);
  *(a1 + 4 * a2) = vdupq_lane_s8(v4, 4);
  *(a1 + 5 * a2) = vdupq_lane_s8(v4, 5);
  *(a1 + 6 * a2) = vdupq_lane_s8(v4, 6);
  result = vdupq_lane_s8(v4, 7);
  *(a1 + 8 * a2 - a2) = result;
  return result;
}

int8x16_t sub_277B21A20(int8x16_t *a1, uint64_t a2, uint64_t a3, int8x16_t *a4)
{
  v5 = *a4;
  v4 = a4[1];
  *a1 = vdupq_lane_s8(*a4->i8, 0);
  *(a1 + a2) = vdupq_lane_s8(*v5.i8, 1);
  v6 = 2 * a2;
  *(a1 + v6) = vdupq_lane_s8(*v5.i8, 2);
  v7 = 3 * a2;
  *(a1 + v7) = vdupq_lane_s8(*v5.i8, 3);
  v8 = 4 * a2;
  *(a1 + v8) = vdupq_lane_s8(*v5.i8, 4);
  v9 = 5 * a2;
  *(a1 + v9) = vdupq_lane_s8(*v5.i8, 5);
  v10 = 6 * a2;
  *(a1 + v10) = vdupq_lane_s8(*v5.i8, 6);
  v11 = 7 * a2;
  *(a1 + v11) = vdupq_lane_s8(*v5.i8, 7);
  v12 = (a1 + 8 * a2);
  *v12 = vdupq_laneq_s8(v5, 8);
  *(v12 + a2) = vdupq_laneq_s8(v5, 9);
  *(v12 + v6) = vdupq_laneq_s8(v5, 10);
  *(v12 + v7) = vdupq_laneq_s8(v5, 11);
  *(v12 + v8) = vdupq_laneq_s8(v5, 12);
  *(v12 + v9) = vdupq_laneq_s8(v5, 13);
  *(v12 + v10) = vdupq_laneq_s8(v5, 14);
  *(v12 + v11) = vdupq_laneq_s8(v5, 15);
  v13 = &a1[a2];
  *v13 = vdupq_lane_s8(*v4.i8, 0);
  *(v13 + a2) = vdupq_lane_s8(*v4.i8, 1);
  *(v13 + v6) = vdupq_lane_s8(*v4.i8, 2);
  *(v13 + v7) = vdupq_lane_s8(*v4.i8, 3);
  *(v13 + v8) = vdupq_lane_s8(*v4.i8, 4);
  *(v13 + v9) = vdupq_lane_s8(*v4.i8, 5);
  *(v13 + v10) = vdupq_lane_s8(*v4.i8, 6);
  *(v13 + v11) = vdupq_lane_s8(*v4.i8, 7);
  v14 = (a1 + 24 * a2);
  *v14 = vdupq_laneq_s8(v4, 8);
  *(v14 + a2) = vdupq_laneq_s8(v4, 9);
  *(v14 + v6) = vdupq_laneq_s8(v4, 10);
  *(v14 + v7) = vdupq_laneq_s8(v4, 11);
  *(v14 + v8) = vdupq_laneq_s8(v4, 12);
  *(v14 + v9) = vdupq_laneq_s8(v4, 13);
  *(v14 + v10) = vdupq_laneq_s8(v4, 14);
  result = vdupq_laneq_s8(v4, 15);
  *(v14 + v11) = result;
  return result;
}

int8x16_t sub_277B21B54(int8x16_t *a1, uint64_t a2, uint64_t a3, int8x16_t *a4)
{
  v5 = *a4;
  v4 = a4[1];
  v7 = a4[2];
  v6 = a4[3];
  *a1 = vdupq_lane_s8(*a4->i8, 0);
  *(a1 + a2) = vdupq_lane_s8(*v5.i8, 1);
  v8 = 2 * a2;
  *(a1 + v8) = vdupq_lane_s8(*v5.i8, 2);
  v9 = 3 * a2;
  *(a1 + v9) = vdupq_lane_s8(*v5.i8, 3);
  v10 = 4 * a2;
  *(a1 + v10) = vdupq_lane_s8(*v5.i8, 4);
  v11 = 5 * a2;
  *(a1 + v11) = vdupq_lane_s8(*v5.i8, 5);
  v12 = 6 * a2;
  *(a1 + v12) = vdupq_lane_s8(*v5.i8, 6);
  v13 = 7 * a2;
  *(a1 + v13) = vdupq_lane_s8(*v5.i8, 7);
  v14 = (a1 + 8 * a2);
  *v14 = vdupq_laneq_s8(v5, 8);
  *(v14 + a2) = vdupq_laneq_s8(v5, 9);
  *(v14 + v8) = vdupq_laneq_s8(v5, 10);
  *(v14 + v9) = vdupq_laneq_s8(v5, 11);
  *(v14 + v10) = vdupq_laneq_s8(v5, 12);
  *(v14 + v11) = vdupq_laneq_s8(v5, 13);
  *(v14 + v12) = vdupq_laneq_s8(v5, 14);
  *(v14 + v13) = vdupq_laneq_s8(v5, 15);
  v15 = &a1[a2];
  *v15 = vdupq_lane_s8(*v4.i8, 0);
  *(v15 + a2) = vdupq_lane_s8(*v4.i8, 1);
  *(v15 + v8) = vdupq_lane_s8(*v4.i8, 2);
  *(v15 + v9) = vdupq_lane_s8(*v4.i8, 3);
  *(v15 + v10) = vdupq_lane_s8(*v4.i8, 4);
  *(v15 + v11) = vdupq_lane_s8(*v4.i8, 5);
  *(v15 + v12) = vdupq_lane_s8(*v4.i8, 6);
  *(v15 + v13) = vdupq_lane_s8(*v4.i8, 7);
  v16 = (a1 + 24 * a2);
  *v16 = vdupq_laneq_s8(v4, 8);
  *(v16 + a2) = vdupq_laneq_s8(v4, 9);
  *(v16 + v8) = vdupq_laneq_s8(v4, 10);
  *(v16 + v9) = vdupq_laneq_s8(v4, 11);
  *(v16 + v10) = vdupq_laneq_s8(v4, 12);
  *(v16 + v11) = vdupq_laneq_s8(v4, 13);
  *(v16 + v12) = vdupq_laneq_s8(v4, 14);
  *(v16 + v13) = vdupq_laneq_s8(v4, 15);
  v17 = &a1[2 * a2];
  *v17 = vdupq_lane_s8(*v7.i8, 0);
  *(v17 + a2) = vdupq_lane_s8(*v7.i8, 1);
  *(v17 + v8) = vdupq_lane_s8(*v7.i8, 2);
  *(v17 + v9) = vdupq_lane_s8(*v7.i8, 3);
  *(v17 + v10) = vdupq_lane_s8(*v7.i8, 4);
  *(v17 + v11) = vdupq_lane_s8(*v7.i8, 5);
  *(v17 + v12) = vdupq_lane_s8(*v7.i8, 6);
  *(v17 + v13) = vdupq_lane_s8(*v7.i8, 7);
  v18 = (a1 + 40 * a2);
  *v18 = vdupq_laneq_s8(v7, 8);
  *(v18 + a2) = vdupq_laneq_s8(v7, 9);
  *(v18 + v8) = vdupq_laneq_s8(v7, 10);
  *(v18 + v9) = vdupq_laneq_s8(v7, 11);
  *(v18 + v10) = vdupq_laneq_s8(v7, 12);
  *(v18 + v11) = vdupq_laneq_s8(v7, 13);
  *(v18 + v12) = vdupq_laneq_s8(v7, 14);
  *(v18 + v13) = vdupq_laneq_s8(v7, 15);
  v19 = &a1[3 * a2];
  *v19 = vdupq_lane_s8(*v6.i8, 0);
  *(v19 + a2) = vdupq_lane_s8(*v6.i8, 1);
  *(v19 + v8) = vdupq_lane_s8(*v6.i8, 2);
  *(v19 + v9) = vdupq_lane_s8(*v6.i8, 3);
  *(v19 + v10) = vdupq_lane_s8(*v6.i8, 4);
  *(v19 + v11) = vdupq_lane_s8(*v6.i8, 5);
  *(v19 + v12) = vdupq_lane_s8(*v6.i8, 6);
  *(v19 + v13) = vdupq_lane_s8(*v6.i8, 7);
  v20 = (a1 + 56 * a2);
  *v20 = vdupq_laneq_s8(v6, 8);
  *(v20 + a2) = vdupq_laneq_s8(v6, 9);
  *(v20 + v8) = vdupq_laneq_s8(v6, 10);
  *(v20 + v9) = vdupq_laneq_s8(v6, 11);
  *(v20 + v10) = vdupq_laneq_s8(v6, 12);
  *(v20 + v11) = vdupq_laneq_s8(v6, 13);
  *(v20 + v12) = vdupq_laneq_s8(v6, 14);
  result = vdupq_laneq_s8(v6, 15);
  *(v20 + v13) = result;
  return result;
}

int8x16_t sub_277B21DA8(int8x16_t *a1, uint64_t a2, uint64_t a3, int8x8_t *a4)
{
  v4 = *a4;
  v5 = vdupq_lane_s8(*a4, 0);
  *a1 = v5;
  a1[1] = v5;
  v6 = (a1 + a2);
  v7 = vdupq_lane_s8(v4, 1);
  *v6 = v7;
  v6[1] = v7;
  v8 = (a1 + a2 + a2);
  v9 = vdupq_lane_s8(v4, 2);
  *v8 = v9;
  v8[1] = v9;
  v10 = (v8 + a2);
  v11 = vdupq_lane_s8(v4, 3);
  *v10 = v11;
  v10[1] = v11;
  v12 = vdupq_lane_s8(v4, 4);
  v13 = (v10 + a2);
  *v13 = v12;
  v13[1] = v12;
  v14 = (v13 + a2);
  v15 = vdupq_lane_s8(v4, 5);
  *v14 = v15;
  v14[1] = v15;
  v16 = (v14 + a2);
  v17 = vdupq_lane_s8(v4, 6);
  *v16 = v17;
  v16[1] = v17;
  v18 = (v16 + a2);
  result = vdupq_lane_s8(v4, 7);
  *v18 = result;
  v18[1] = result;
  return result;
}

int8x16_t sub_277B21E0C(int8x16_t *a1, uint64_t a2, uint64_t a3, int8x8_t *a4)
{
  v4 = *a4->i8;
  v5 = vdupq_lane_s8(*a4, 0);
  *a1 = v5;
  a1[1] = v5;
  v6 = (a1 + a2);
  v7 = vdupq_lane_s8(*v4.i8, 1);
  *v6 = v7;
  v6[1] = v7;
  v8 = (a1 + a2 + a2);
  v9 = vdupq_lane_s8(*v4.i8, 2);
  *v8 = v9;
  v8[1] = v9;
  v10 = (v8 + a2);
  v11 = vdupq_lane_s8(*v4.i8, 3);
  *v10 = v11;
  v10[1] = v11;
  v12 = (v10 + a2);
  v13 = vdupq_lane_s8(*v4.i8, 4);
  *v12 = v13;
  v12[1] = v13;
  v14 = (v12 + a2);
  v15 = vdupq_lane_s8(*v4.i8, 5);
  *v14 = v15;
  v14[1] = v15;
  v16 = vdupq_lane_s8(*v4.i8, 6);
  v17 = (v14 + a2);
  *v17 = v16;
  v17[1] = v16;
  v18 = (v17 + a2);
  v19 = vdupq_lane_s8(*v4.i8, 7);
  *v18 = v19;
  v18[1] = v19;
  v20 = (a1 + 8 * a2);
  v21 = vdupq_laneq_s8(v4, 8);
  *v20 = v21;
  v20[1] = v21;
  v22 = (v20 + a2);
  v23 = vdupq_laneq_s8(v4, 9);
  *v22 = v23;
  v22[1] = v23;
  v24 = (v22 + a2);
  v25 = vdupq_laneq_s8(v4, 10);
  *v24 = v25;
  v24[1] = v25;
  v26 = (v24 + a2);
  v27 = vdupq_laneq_s8(v4, 11);
  *v26 = v27;
  v26[1] = v27;
  v28 = vdupq_laneq_s8(v4, 12);
  v29 = (v26 + a2);
  *v29 = v28;
  v29[1] = v28;
  v30 = (v29 + a2);
  v31 = vdupq_laneq_s8(v4, 13);
  *v30 = v31;
  v30[1] = v31;
  v32 = (v30 + a2);
  v33 = vdupq_laneq_s8(v4, 14);
  *v32 = v33;
  v32[1] = v33;
  v34 = (v32 + a2);
  result = vdupq_laneq_s8(v4, 15);
  *v34 = result;
  v34[1] = result;
  return result;
}

int8x16_t sub_277B21ED0(int8x16_t *a1, uint64_t a2, uint64_t a3, int8x16_t *a4)
{
  v5 = *a4;
  v4 = a4[1];
  v7 = a4[2];
  v6 = a4[3];
  v8 = vdupq_lane_s8(*a4->i8, 0);
  *a1 = v8;
  a1[1] = v8;
  v9 = (a1 + a2);
  v10 = vdupq_lane_s8(*v5.i8, 1);
  *v9 = v10;
  v9[1] = v10;
  v11 = vdupq_lane_s8(*v5.i8, 2);
  v12 = (a1 + a2 + a2);
  *v12 = v11;
  v12[1] = v11;
  v13 = (v12 + a2);
  v14 = vdupq_lane_s8(*v5.i8, 3);
  *v13 = v14;
  v13[1] = v14;
  v15 = (v13 + a2);
  v16 = vdupq_lane_s8(*v5.i8, 4);
  *v15 = v16;
  v15[1] = v16;
  v17 = (v15 + a2);
  v18 = vdupq_lane_s8(*v5.i8, 5);
  *v17 = v18;
  v17[1] = v18;
  v19 = (v17 + a2);
  v20 = vdupq_lane_s8(*v5.i8, 6);
  *v19 = v20;
  v19[1] = v20;
  v21 = (v19 + a2);
  v22 = vdupq_lane_s8(*v5.i8, 7);
  *v21 = v22;
  v21[1] = v22;
  v23 = vdupq_laneq_s8(v5, 8);
  v24 = (a1 + 8 * a2);
  *v24 = v23;
  v24[1] = v23;
  v25 = (v24 + a2);
  v26 = vdupq_laneq_s8(v5, 9);
  *v25 = v26;
  v25[1] = v26;
  v27 = (v25 + a2);
  v28 = vdupq_laneq_s8(v5, 10);
  *v27 = v28;
  v27[1] = v28;
  v29 = (v27 + a2);
  v30 = vdupq_laneq_s8(v5, 11);
  *v29 = v30;
  v29[1] = v30;
  v31 = (v29 + a2);
  v32 = vdupq_laneq_s8(v5, 12);
  *v31 = v32;
  v31[1] = v32;
  v33 = (v31 + a2);
  v34 = vdupq_laneq_s8(v5, 13);
  *v33 = v34;
  v33[1] = v34;
  v35 = vdupq_laneq_s8(v5, 14);
  v36 = (v33 + a2);
  *v36 = v35;
  v36[1] = v35;
  v37 = (v36 + a2);
  v38 = vdupq_laneq_s8(v5, 15);
  *v37 = v38;
  v37[1] = v38;
  v39 = &a1[a2];
  v40 = vdupq_lane_s8(*v4.i8, 0);
  *v39 = v40;
  v39[1] = v40;
  v41 = (v39 + a2);
  v42 = vdupq_lane_s8(*v4.i8, 1);
  *v41 = v42;
  v41[1] = v42;
  v43 = (v41 + a2);
  v44 = vdupq_lane_s8(*v4.i8, 2);
  *v43 = v44;
  v43[1] = v44;
  v45 = (v43 + a2);
  v46 = vdupq_lane_s8(*v4.i8, 3);
  *v45 = v46;
  v45[1] = v46;
  v47 = vdupq_lane_s8(*v4.i8, 4);
  v48 = (v45 + a2);
  *v48 = v47;
  v48[1] = v47;
  v49 = (v48 + a2);
  v50 = vdupq_lane_s8(*v4.i8, 5);
  *v49 = v50;
  v49[1] = v50;
  v51 = (v49 + a2);
  v52 = vdupq_lane_s8(*v4.i8, 6);
  *v51 = v52;
  v51[1] = v52;
  v53 = (v51 + a2);
  v54 = vdupq_lane_s8(*v4.i8, 7);
  *v53 = v54;
  v53[1] = v54;
  v55 = (a1 + 24 * a2);
  v56 = vdupq_laneq_s8(v4, 8);
  *v55 = v56;
  v55[1] = v56;
  v57 = (v55 + a2);
  v58 = vdupq_laneq_s8(v4, 9);
  *v57 = v58;
  v57[1] = v58;
  v59 = (v57 + a2);
  v60 = vdupq_laneq_s8(v4, 10);
  *v59 = v60;
  v59[1] = v60;
  v61 = vdupq_laneq_s8(v4, 11);
  v62 = (v59 + a2);
  *v62 = v61;
  v62[1] = v61;
  v63 = (v62 + a2);
  v64 = vdupq_laneq_s8(v4, 12);
  *v63 = v64;
  v63[1] = v64;
  v65 = (v63 + a2);
  v66 = vdupq_laneq_s8(v4, 13);
  *v65 = v66;
  v65[1] = v66;
  v67 = (v65 + a2);
  v68 = vdupq_laneq_s8(v4, 14);
  *v67 = v68;
  v67[1] = v68;
  v69 = (v67 + a2);
  v70 = vdupq_laneq_s8(v4, 15);
  *v69 = v70;
  v69[1] = v70;
  v71 = &a1[2 * a2];
  v72 = vdupq_lane_s8(*v7.i8, 0);
  *v71 = v72;
  v71[1] = v72;
  v73 = vdupq_lane_s8(*v7.i8, 1);
  v74 = (v71 + a2);
  *v74 = v73;
  v74[1] = v73;
  v75 = (v74 + a2);
  v76 = vdupq_lane_s8(*v7.i8, 2);
  *v75 = v76;
  v75[1] = v76;
  v77 = (v75 + a2);
  v78 = vdupq_lane_s8(*v7.i8, 3);
  *v77 = v78;
  v77[1] = v78;
  v79 = (v77 + a2);
  v80 = vdupq_lane_s8(*v7.i8, 4);
  *v79 = v80;
  v79[1] = v80;
  v81 = (v79 + a2);
  v82 = vdupq_lane_s8(*v7.i8, 5);
  *v81 = v82;
  v81[1] = v82;
  v83 = (v81 + a2);
  v84 = vdupq_lane_s8(*v7.i8, 6);
  *v83 = v84;
  v83[1] = v84;
  v85 = vdupq_lane_s8(*v7.i8, 7);
  v86 = (v83 + a2);
  *v86 = v85;
  v86[1] = v85;
  v87 = vdupq_laneq_s8(v7, 8);
  v88 = (a1 + 40 * a2);
  *v88 = v87;
  v88[1] = v87;
  v89 = (v88 + a2);
  v90 = vdupq_laneq_s8(v7, 9);
  *v89 = v90;
  v89[1] = v90;
  v91 = (v89 + a2);
  v92 = vdupq_laneq_s8(v7, 10);
  *v91 = v92;
  v91[1] = v92;
  v93 = (v91 + a2);
  v94 = vdupq_laneq_s8(v7, 11);
  *v93 = v94;
  v93[1] = v94;
  v95 = (v93 + a2);
  v96 = vdupq_laneq_s8(v7, 12);
  *v95 = v96;
  v95[1] = v96;
  v97 = (v95 + a2);
  v98 = vdupq_laneq_s8(v7, 13);
  *v97 = v98;
  v97[1] = v98;
  v99 = vdupq_laneq_s8(v7, 14);
  v100 = (v97 + a2);
  *v100 = v99;
  v100[1] = v99;
  v101 = (v100 + a2);
  v102 = vdupq_laneq_s8(v7, 15);
  *v101 = v102;
  v101[1] = v102;
  v103 = &a1[3 * a2];
  v104 = vdupq_lane_s8(*v6.i8, 0);
  *v103 = v104;
  v103[1] = v104;
  v105 = (v103 + a2);
  v106 = vdupq_lane_s8(*v6.i8, 1);
  *v105 = v106;
  v105[1] = v106;
  v107 = (v105 + a2);
  v108 = vdupq_lane_s8(*v6.i8, 2);
  *v107 = v108;
  v107[1] = v108;
  v109 = (v107 + a2);
  v110 = vdupq_lane_s8(*v6.i8, 3);
  *v109 = v110;
  v109[1] = v110;
  v111 = (v109 + a2);
  v112 = vdupq_lane_s8(*v6.i8, 4);
  *v111 = v112;
  v111[1] = v112;
  v113 = vdupq_lane_s8(*v6.i8, 5);
  v114 = (v111 + a2);
  *v114 = v113;
  v114[1] = v113;
  v115 = (v114 + a2);
  v116 = vdupq_lane_s8(*v6.i8, 6);
  *v115 = v116;
  v115[1] = v116;
  v117 = (v115 + a2);
  v118 = vdupq_lane_s8(*v6.i8, 7);
  *v117 = v118;
  v117[1] = v118;
  v119 = (a1 + 56 * a2);
  v120 = vdupq_laneq_s8(v6, 8);
  *v119 = v120;
  v119[1] = v120;
  v121 = (v119 + a2);
  v122 = vdupq_laneq_s8(v6, 9);
  *v121 = v122;
  v121[1] = v122;
  v123 = (v121 + a2);
  v124 = vdupq_laneq_s8(v6, 10);
  *v123 = v124;
  v123[1] = v124;
  v125 = (v123 + a2);
  v126 = vdupq_laneq_s8(v6, 11);
  *v125 = v126;
  v125[1] = v126;
  v127 = vdupq_laneq_s8(v6, 12);
  v128 = (v125 + a2);
  *v128 = v127;
  v128[1] = v127;
  v129 = (v128 + a2);
  v130 = vdupq_laneq_s8(v6, 13);
  *v129 = v130;
  v129[1] = v130;
  v131 = (v129 + a2);
  v132 = vdupq_laneq_s8(v6, 14);
  *v131 = v132;
  v131[1] = v132;
  v133 = (v131 + a2);
  result = vdupq_laneq_s8(v6, 15);
  *v133 = result;
  v133[1] = result;
  return result;
}

int8x16_t sub_277B221E8(int8x16_t *a1, uint64_t a2, uint64_t a3, int8x8_t *a4)
{
  v4 = *a4->i8;
  v5 = vdupq_lane_s8(*a4, 0);
  *a1 = v5;
  a1[1] = v5;
  a1[2] = v5;
  a1[3] = v5;
  v6 = (a1 + a2);
  v7 = vdupq_lane_s8(*v4.i8, 1);
  *v6 = v7;
  v6[1] = v7;
  v6[2] = v7;
  v6[3] = v7;
  v8 = vdupq_lane_s8(*v4.i8, 2);
  v9 = (a1 + a2 + a2);
  *v9 = v8;
  v9[1] = v8;
  v9[2] = v8;
  v9[3] = v8;
  v10 = (v9 + a2);
  v11 = vdupq_lane_s8(*v4.i8, 3);
  *v10 = v11;
  v10[1] = v11;
  v10[2] = v11;
  v10[3] = v11;
  v12 = (v10 + a2);
  v13 = vdupq_lane_s8(*v4.i8, 4);
  *v12 = v13;
  v12[1] = v13;
  v12[2] = v13;
  v12[3] = v13;
  v14 = (v12 + a2);
  v15 = vdupq_lane_s8(*v4.i8, 5);
  *v14 = v15;
  v14[1] = v15;
  v14[2] = v15;
  v14[3] = v15;
  v16 = (v14 + a2);
  v17 = vdupq_lane_s8(*v4.i8, 6);
  *v16 = v17;
  v16[1] = v17;
  v16[2] = v17;
  v16[3] = v17;
  v18 = (v16 + a2);
  v19 = vdupq_lane_s8(*v4.i8, 7);
  *v18 = v19;
  v18[1] = v19;
  v18[2] = v19;
  v18[3] = v19;
  v20 = vdupq_laneq_s8(v4, 8);
  v21 = (a1 + 8 * a2);
  *v21 = v20;
  v21[1] = v20;
  v21[2] = v20;
  v21[3] = v20;
  v22 = (v21 + a2);
  v23 = vdupq_laneq_s8(v4, 9);
  *v22 = v23;
  v22[1] = v23;
  v22[2] = v23;
  v22[3] = v23;
  v24 = (v22 + a2);
  v25 = vdupq_laneq_s8(v4, 10);
  *v24 = v25;
  v24[1] = v25;
  v24[2] = v25;
  v24[3] = v25;
  v26 = (v24 + a2);
  v27 = vdupq_laneq_s8(v4, 11);
  *v26 = v27;
  v26[1] = v27;
  v26[2] = v27;
  v26[3] = v27;
  v28 = (v26 + a2);
  v29 = vdupq_laneq_s8(v4, 12);
  *v28 = v29;
  v28[1] = v29;
  v28[2] = v29;
  v28[3] = v29;
  v30 = (v28 + a2);
  v31 = vdupq_laneq_s8(v4, 13);
  *v30 = v31;
  v30[1] = v31;
  v30[2] = v31;
  v30[3] = v31;
  v32 = vdupq_laneq_s8(v4, 14);
  v33 = (v30 + a2);
  *v33 = v32;
  v33[1] = v32;
  v33[2] = v32;
  v33[3] = v32;
  v34 = (v33 + a2);
  result = vdupq_laneq_s8(v4, 15);
  *v34 = result;
  v34[1] = result;
  v34[2] = result;
  v34[3] = result;
  return result;
}

int8x16_t *sub_277B222EC(int8x16_t *result, uint64_t a2, uint64_t a3, int8x16_t *a4)
{
  v4 = 1;
  do
  {
    v5 = *a4++;
    v6 = vdupq_lane_s8(*v5.i8, 0);
    *result = v6;
    result[1] = v6;
    result[2] = v6;
    result[3] = v6;
    v7 = (result + a2);
    v8 = vdupq_lane_s8(*v5.i8, 1);
    *v7 = v8;
    v7[1] = v8;
    v7[2] = v8;
    v7[3] = v8;
    v9 = (result + a2 + a2);
    v10 = vdupq_lane_s8(*v5.i8, 2);
    *v9 = v10;
    v9[1] = v10;
    v9[2] = v10;
    v9[3] = v10;
    v11 = (v9 + a2);
    v12 = vdupq_lane_s8(*v5.i8, 3);
    *v11 = v12;
    v11[1] = v12;
    v11[2] = v12;
    v11[3] = v12;
    v13 = (v11 + a2);
    v14 = vdupq_lane_s8(*v5.i8, 4);
    *v13 = v14;
    v13[1] = v14;
    v13[2] = v14;
    v13[3] = v14;
    v15 = vdupq_lane_s8(*v5.i8, 5);
    v16 = (v13 + a2);
    *v16 = v15;
    v16[1] = v15;
    v16[2] = v15;
    v16[3] = v15;
    v17 = (v16 + a2);
    v18 = vdupq_lane_s8(*v5.i8, 6);
    *v17 = v18;
    v17[1] = v18;
    v17[2] = v18;
    v17[3] = v18;
    v19 = (v17 + a2);
    v20 = vdupq_lane_s8(*v5.i8, 7);
    *v19 = v20;
    v19[1] = v20;
    v19[2] = v20;
    v19[3] = v20;
    v21 = vdupq_laneq_s8(v5, 8);
    v22 = (v19 + a2);
    *v22 = v21;
    v22[1] = v21;
    v22[2] = v21;
    v22[3] = v21;
    v23 = vdupq_laneq_s8(v5, 9);
    v24 = (v22 + a2);
    *v24 = v23;
    v24[1] = v23;
    v24[2] = v23;
    v24[3] = v23;
    v25 = vdupq_laneq_s8(v5, 10);
    v26 = (v24 + a2);
    *v26 = v25;
    v26[1] = v25;
    v26[2] = v25;
    v26[3] = v25;
    v27 = vdupq_laneq_s8(v5, 11);
    v28 = v4;
    v29 = (v26 + a2);
    *v29 = v27;
    v29[1] = v27;
    v29[2] = v27;
    v29[3] = v27;
    v30 = vdupq_laneq_s8(v5, 12);
    v31 = (v26 + a2 + a2);
    *v31 = v30;
    v31[1] = v30;
    v31[2] = v30;
    v31[3] = v30;
    v32 = vdupq_laneq_s8(v5, 13);
    v33 = (v31 + a2);
    *v33 = v32;
    v33[1] = v32;
    v33[2] = v32;
    v33[3] = v32;
    v34 = vdupq_laneq_s8(v5, 14);
    v35 = (v33 + a2);
    *v35 = v34;
    v35[1] = v34;
    v35[2] = v34;
    v35[3] = v34;
    v36 = vdupq_laneq_s8(v5, 15);
    v37 = (v35 + a2);
    *v37 = v36;
    v37[1] = v36;
    result = (v37 + a2);
    v37[2] = v36;
    v37[3] = v36;
    v4 = 0;
  }

  while ((v28 & 1) != 0);
  return result;
}

int8x16_t *sub_277B22404(int8x16_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  do
  {
    v5 = *(a4 + v4);
    v6 = vdupq_lane_s8(*v5.i8, 0);
    *result = v6;
    result[1] = v6;
    result[2] = v6;
    result[3] = v6;
    v7 = (result + a2);
    v8 = vdupq_lane_s8(*v5.i8, 1);
    *v7 = v8;
    v7[1] = v8;
    v7[2] = v8;
    v7[3] = v8;
    v9 = (result + a2 + a2);
    v10 = vdupq_lane_s8(*v5.i8, 2);
    *v9 = v10;
    v9[1] = v10;
    v9[2] = v10;
    v9[3] = v10;
    v11 = (v9 + a2);
    v12 = vdupq_lane_s8(*v5.i8, 3);
    *v11 = v12;
    v11[1] = v12;
    v11[2] = v12;
    v11[3] = v12;
    v13 = (v11 + a2);
    v14 = vdupq_lane_s8(*v5.i8, 4);
    *v13 = v14;
    v13[1] = v14;
    v13[2] = v14;
    v13[3] = v14;
    v15 = vdupq_lane_s8(*v5.i8, 5);
    v16 = (v13 + a2);
    *v16 = v15;
    v16[1] = v15;
    v16[2] = v15;
    v16[3] = v15;
    v17 = (v16 + a2);
    v18 = vdupq_lane_s8(*v5.i8, 6);
    *v17 = v18;
    v17[1] = v18;
    v17[2] = v18;
    v17[3] = v18;
    v19 = (v17 + a2);
    v20 = vdupq_lane_s8(*v5.i8, 7);
    *v19 = v20;
    v19[1] = v20;
    v19[2] = v20;
    v19[3] = v20;
    v21 = vdupq_laneq_s8(v5, 8);
    v22 = (v19 + a2);
    *v22 = v21;
    v22[1] = v21;
    v22[2] = v21;
    v22[3] = v21;
    v23 = vdupq_laneq_s8(v5, 9);
    v24 = (v22 + a2);
    *v24 = v23;
    v24[1] = v23;
    v24[2] = v23;
    v24[3] = v23;
    v25 = vdupq_laneq_s8(v5, 10);
    v26 = (v24 + a2);
    *v26 = v25;
    v26[1] = v25;
    v26[2] = v25;
    v26[3] = v25;
    v27 = vdupq_laneq_s8(v5, 11);
    v28 = (v26 + a2);
    *v28 = v27;
    v28[1] = v27;
    v29 = vdupq_laneq_s8(v5, 12);
    v28[2] = v27;
    v28[3] = v27;
    v30 = (v28 + a2);
    *v30 = v29;
    v30[1] = v29;
    v30[2] = v29;
    v30[3] = v29;
    v31 = vdupq_laneq_s8(v5, 13);
    v32 = (v30 + a2);
    *v32 = v31;
    v32[1] = v31;
    v32[2] = v31;
    v32[3] = v31;
    v33 = vdupq_laneq_s8(v5, 14);
    v34 = (v32 + a2);
    *v34 = v33;
    v34[1] = v33;
    v34[2] = v33;
    v34[3] = v33;
    v35 = vdupq_laneq_s8(v5, 15);
    v36 = (v34 + a2);
    *v36 = v35;
    v36[1] = v35;
    v4 += 16;
    v36[2] = v35;
    v36[3] = v35;
    result = (v36 + a2);
  }

  while (v4 != 64);
  return result;
}

double sub_277B2251C(__n128 *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6, int a7, __n128 a8, double a9, double a10, double a11, double a12, uint16x8_t a13)
{
  v14 = a1;
  v62[129] = *MEMORY[0x277D85DE8];
  if (a3 <= 15)
  {
    if (a3 == 4)
    {
      if (a4 >= 1)
      {
        v41 = 0;
        v42 = 6 - a6;
        v43 = (a4 + 3) << a6;
        v44 = (a5 + v43);
        v45 = vld1_dup_s8(v44);
        v46 = a4;
        v47 = v62;
        v48 = a7;
        while (1)
        {
          v49 = (v43 - (v48 >> v42)) >> a6;
          if (v49 <= 0)
          {
            break;
          }

          if (v49 >= 4)
          {
            v49 = 4;
          }

          v50 = a5 + (v48 >> v42);
          if (a6)
          {
            v65 = vld2_s8(v50);
            v51 = 2 * v48;
          }

          else
          {
            v65.val[0] = *v50;
            v65.val[1] = *(v50 + 1);
            v51 = v48;
          }

          *v47++ = vbsl_s8(qword_277C3A240[4 * v49], vrshrn_n_s16(vmlal_u8(vmulq_s16(vdupq_n_s16((v51 >> 1) & 0x1F), vsubl_u8(v65.val[1], v65.val[0])), v65.val[0], 0x2020202020202020), 5uLL), v45);
          v48 += a7;
          if (a4 == ++v41)
          {
            goto LABEL_52;
          }
        }

        if (v41 < a4)
        {
          v55 = a4 - v41;
          do
          {
            *v47++ = v45;
            --v55;
          }

          while (v55);
        }

LABEL_52:
        v56 = v62;
        do
        {
          v57 = *v56++;
          a8.n128_u64[0] = v57;
          v14->n128_u32[0] = v57;
          v14 = (v14 + a2);
          --v46;
        }

        while (v46);
      }
    }

    else if (a3 == 8 && a4 >= 1)
    {
      v15 = 0;
      v16 = 6 - a6;
      v17 = (a4 + 7) << a6;
      v18 = (a5 + v17);
      v19 = vld1_dup_s8(v18);
      v20 = a4;
      v21 = v62;
      v22 = a7;
      while (1)
      {
        v23 = (v17 - (v22 >> v16)) >> a6;
        if (v23 <= 0)
        {
          break;
        }

        if (v23 >= 8)
        {
          v23 = 8;
        }

        v24 = a5 + (v22 >> v16);
        if (a6)
        {
          v64 = vld2_s8(v24);
          v25 = 2 * v22;
        }

        else
        {
          v64.val[0] = *v24;
          v64.val[1] = *(v24 + 1);
          v25 = v22;
        }

        *v21++ = vbsl_s8(qword_277C3A240[4 * v23], vrshrn_n_s16(vmlal_u8(vmulq_s16(vdupq_n_s16((v25 >> 1) & 0x1F), vsubl_u8(v64.val[1], v64.val[0])), v64.val[0], 0x2020202020202020), 5uLL), v19);
        v22 += a7;
        if (a4 == ++v15)
        {
          goto LABEL_58;
        }
      }

      if (v15 < a4)
      {
        v58 = a4 - v15;
        do
        {
          *v21++ = v19;
          --v58;
        }

        while (v58);
      }

LABEL_58:
      v59 = v62;
      do
      {
        v60 = *v59++;
        a8.n128_u64[0] = v60;
        v14->n128_u64[0] = v60;
        v14 = (v14 + a2);
        --v20;
      }

      while (v20);
    }
  }

  else
  {
    switch(a3)
    {
      case 16:
        if (a4 >= 1)
        {
          v26 = 0;
          v27 = 6 - a6;
          v28 = (a4 + 15) << a6;
          v29 = (a5 + v28);
          v30 = vld1q_dup_s8(v29);
          v31 = a4;
          v32 = v62;
          v33.i64[0] = 0x2020202020202020;
          v33.i64[1] = 0x2020202020202020;
          v34 = a7;
          while (1)
          {
            v35 = (v28 - (v34 >> v27)) >> a6;
            if (v35 <= 0)
            {
              break;
            }

            if (v35 >= 0x10)
            {
              v35 = 16;
            }

            v36 = a5 + (v34 >> v27);
            if (a6)
            {
              v38 = vld2_s8(v36);
              v38.i64[1] = v37;
              v39 = vextq_s8(v38, 0, 8uLL);
              LOBYTE(v36) = v34;
            }

            else
            {
              v38 = *v36;
              v39 = *(v36 + 1);
              LOWORD(v36) = v34 >> 1;
            }

            v40 = vdupq_n_s16(v36 & 0x1F);
            *v32++ = vbslq_s8(*qword_277C3A240[4 * v35].i8, vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmulq_s16(vsubl_u8(*v39.i8, *v38.i8), v40), *v38.i8, 0x2020202020202020), 5uLL), vmlal_high_u8(vmulq_s16(vsubl_high_u8(v39, v38), v40), v38, v33), 5uLL), v30);
            v34 += a7;
            if (a4 == ++v26)
            {
              goto LABEL_46;
            }
          }

          if (v26 < a4)
          {
            v52 = a4 - v26;
            do
            {
              *v32++ = v30;
              --v52;
            }

            while (v52);
          }

LABEL_46:
          v53 = v62;
          do
          {
            v54 = *v53++;
            a8.n128_u64[0] = v54.n128_u64[0];
            *v14 = v54;
            v14 = (v14 + a2);
            --v31;
          }

          while (v31);
        }

        break;
      case 32:

        a8.n128_u64[0] = sub_277B22914(a4, a1, a2, a5, a7, a8).n128_u64[0];
        break;
      case 64:

        sub_277B22AA0(a4, a1, a2, a5, a7, a8.n128_f64[0], a9, a10, a11, a12, a13);
        break;
    }
  }

  return a8.n128_f64[0];
}

__n128 sub_277B22914(int a1, __n128 *a2, uint64_t a3, uint64_t a4, int a5, __n128 result)
{
  v35 = *MEMORY[0x277D85DE8];
  if (a1 >= 1)
  {
    v6 = 0;
    v7 = a1 + 31;
    v8 = (a4 + v7);
    v9 = vld1q_dup_s8(v8);
    v10 = a1;
    v11 = v33;
    v12.i64[0] = 0x2020202020202020;
    v12.i64[1] = 0x2020202020202020;
    v13 = a1;
    v14 = a5;
    do
    {
      v15 = (v7 - (v14 >> 6));
      if (v7 - (v14 >> 6) <= 0)
      {
        v27 = v11;
        v28 = v13;
        do
        {
          v27[-1] = v9;
          *v27 = v9;
          v27 += 2;
          --v28;
        }

        while (v28);
      }

      else
      {
        v16 = 0;
        v17 = 0;
        v18 = vdupq_n_s16((v14 >> 1) & 0x1F);
        do
        {
          v19 = v9;
          if (v17 < v15)
          {
            v20 = a4 + (v14 >> 6) + v17;
            v19 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmulq_s16(vsubl_u8(*(v20 + 1), *v20), v18), *v20, 0x2020202020202020), 5uLL), vmlal_high_u8(vmulq_s16(vsubl_high_u8(*(v20 + 1), *v20), v18), *v20, v12), 5uLL);
          }

          v34[v16++] = v19;
          v17 = 16;
        }

        while (v16 != 2);
        if (v15 >= 0x20)
        {
          v21 = 32;
        }

        else
        {
          v21 = v15;
        }

        v22 = (&unk_277C3A240 + 32 * v21);
        v23 = v22[1];
        v24 = vbslq_s8(*v22, v34[0], v9);
        v25 = &v32[32 * v6];
        v26 = vbslq_s8(v23, v34[1], v9);
        *v25 = v24;
        v25[1] = v26;
        v14 += a5;
      }

      if (v15 < 1)
      {
        break;
      }

      ++v6;
      --v13;
      v11 += 2;
    }

    while (v6 != v10);
    v29 = a2 + 1;
    v30 = v33;
    do
    {
      result = v30[-1];
      v31 = *v30;
      v29[-1] = result;
      *v29 = v31;
      v29 = (v29 + a3);
      v30 += 2;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t sub_277B22AA0(uint64_t result, int8x16_t *a2, uint64_t a3, uint64_t a4, int a5, double a6, double a7, double a8, double a9, double a10, uint16x8_t a11)
{
  if (result >= 1)
  {
    v11 = 0;
    v12 = result + 63;
    v13 = (a4 + v12);
    v14 = vld1q_dup_s8(v13);
    v15 = a4 + 48;
    v16 = (result + 48);
    v17 = (result + 47);
    v18.i64[0] = 0x2020202020202020;
    v18.i64[1] = 0x2020202020202020;
    v19 = result;
    v20 = a5;
    do
    {
      v21 = v20 >> 6;
      if (v20 >> 6 >= v12)
      {
        v24 = v19;
        do
        {
          *a2 = v14;
          a2[1] = v14;
          a2[2] = v14;
          a2[3] = v14;
          a2 = (a2 + a3);
          --v24;
        }

        while (v24);
      }

      else
      {
        v22 = (a4 + v21);
        if (v21 >= v16)
        {
          v23 = vqtbl1q_s8(*(v15 + result), xmmword_277C3A660[v12 - v21]);
        }

        else
        {
          v23 = *v22;
        }

        v25 = (a4 + 1 + v21);
        if (v21 >= v17)
        {
          a11 = *(v15 + result);
          v26 = vqtbl1q_s8(a11, xmmword_277C3A660[v12 + ~v21]);
        }

        else
        {
          v26 = *v25;
        }

        a11.i32[0] = (v20 >> 1) & 0x1F;
        v27 = vmlal_high_u8(vmulq_n_s16(vsubl_high_u8(v26, v23), a11.i16[0]), v23, v18);
        v28 = vmlal_u8(vmulq_n_s16(vsubl_u8(*v26.i8, *v23.i8), a11.i16[0]), *v23.i8, 0x2020202020202020);
        v29 = vdupq_lane_s16(*a11.i8, 0);
        *a2 = vrshrn_high_n_s16(vrshrn_n_s16(v28, 5uLL), v27, 5uLL);
        v30 = v21 + 16;
        v31 = v14;
        if (v30 < v12)
        {
          if (v30 >= v16)
          {
            v32 = vqtbl1q_s8(*(v15 + result), xmmword_277C3A660[v12 - v30]);
          }

          else
          {
            v32 = v22[1];
          }

          if (v30 >= v17)
          {
            v33 = vqtbl1q_s8(*(v15 + result), xmmword_277C3A660[v12 + ~v30]);
          }

          else
          {
            v33 = v25[1];
          }

          v34 = vmlal_high_u8(vmulq_s16(vsubl_high_u8(v33, v32), v29), v32, v18);
          a11 = vmlal_u8(vmulq_s16(vsubl_u8(*v33.i8, *v32.i8), v29), *v32.i8, 0x2020202020202020);
          v31 = vrshrn_high_n_s16(vrshrn_n_s16(a11, 5uLL), v34, 5uLL);
        }

        a2[1] = v31;
        v35 = v21 + 32;
        v36 = v14;
        if (v35 < v12)
        {
          if (v35 >= v16)
          {
            v37 = vqtbl1q_s8(*(v15 + result), xmmword_277C3A660[v12 - v35]);
          }

          else
          {
            v37 = v22[2];
          }

          if (v35 >= v17)
          {
            v38 = vqtbl1q_s8(*(v15 + result), xmmword_277C3A660[v12 + ~v35]);
          }

          else
          {
            v38 = v25[2];
          }

          v39 = vmlal_high_u8(vmulq_s16(vsubl_high_u8(v38, v37), v29), v37, v18);
          a11 = vmlal_u8(vmulq_s16(vsubl_u8(*v38.i8, *v37.i8), v29), *v37.i8, 0x2020202020202020);
          v36 = vrshrn_high_n_s16(vrshrn_n_s16(a11, 5uLL), v39, 5uLL);
        }

        a2[2] = v36;
        v40 = v21 + 48;
        v41 = v14;
        if (v40 < v12)
        {
          if (v40 >= v16)
          {
            v42 = vqtbl1q_s8(*(v15 + result), xmmword_277C3A660[v12 - v40]);
          }

          else
          {
            v42 = v22[3];
          }

          if (v40 >= v17)
          {
            v43 = vqtbl1q_s8(*(v15 + result), xmmword_277C3A660[v12 + ~v40]);
          }

          else
          {
            v43 = v25[3];
          }

          v44 = vmlal_high_u8(vmulq_s16(vsubl_high_u8(v43, v42), v29), v42, v18);
          a11 = vsubl_u8(*v43.i8, *v42.i8);
          v41 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmulq_s16(a11, v29), *v42.i8, 0x2020202020202020), 5uLL), v44, 5uLL);
        }

        a2[3] = v41;
        v20 += a5;
      }

      if (v21 >= v12)
      {
        break;
      }

      ++v11;
      a2 = (a2 + a3);
      --v19;
    }

    while (v11 < result);
  }

  return result;
}

int8x8_t *sub_277B22D20(int8x8_t *result, uint64_t a2, int a3, int a4, uint64_t a5, int8x16_t *a6, int a7, unsigned __int32 a8, double a9, double a10, double a11, double a12, double a13, int32x2_t a14, int32x4_t a15, unsigned int a16, unsigned int a17)
{
  if (a3 == 8)
  {
    if (a4 >= 1)
    {
      a15.i32[0] = 0;
      v43 = 0;
      v44 = 6 - a7;
      v45 = *(&a6[-1] + 14);
      v46 = a6[1];
      v47 = vextq_s8(*a6, v46, 0xEuLL);
      v48 = vextq_s8(v46, v46, 0xEuLL);
      v50 = vdupq_n_s16(a8 - 6);
      v51 = vdupq_n_s16(-1 << a8);
      v52 = xmmword_277BB7B10;
      v53 = vmulq_s16(vdupq_n_s16(a17), xmmword_277BB7B10);
      v52.i32[0] = a8;
      v54 = vshlq_u16(v53, vdupq_lane_s32(*&vceqq_s32(v52, a15), 0));
      v55.i64[0] = 0x1F001F001F001FLL;
      v55.i64[1] = 0x1F001F001F001FLL;
      v56 = vandq_s8(v54, v55);
      v57 = -a16;
      v58.i64[0] = 0x2000200020002;
      v58.i64[1] = 0x2000200020002;
      v59.i64[0] = 0x3000300030003;
      v59.i64[1] = 0x3000300030003;
      v60 = a16;
      do
      {
        v61 = v57 >> v44;
        v49 = (-1 << a7) + a7;
        v62 = (v49 - (v57 >> v44)) >> a7;
        if (v62 <= 0)
        {
          v67 = vdupq_n_s16(v60);
          v68 = a5 + v61;
          if (a7)
          {
            v112 = vld2_s8(v68);
            v69 = vsubq_s16(xmmword_277BB7B20, v67);
          }

          else
          {
            v112.val[0] = *v68;
            v112.val[1] = *(v68 + 1);
            v69 = vhsubq_u16(xmmword_277BB7B20, v67);
          }

          v72 = vrshrn_n_s16(vmlal_u8(vmulq_s16(vsubl_u8(v112.val[1], v112.val[0]), vandq_s8(v69, v55)), v112.val[0], 0x2020202020202020), 5uLL);
        }

        else
        {
          v63 = v43 << 6;
          if (v62 > 7)
          {
            v70 = vmaxq_s16(vshlq_s16(vaddq_s16(vdupq_n_s16(v63), v53), v50), v51);
            v71 = vqtbl3q_s8(*&v45, vuzp1q_s8(vaddq_s16(v70, v58), vaddq_s16(v70, v59)));
            v72 = vrshrn_n_s16(vmlal_u8(vmulq_s16(vsubl_u8(*&vextq_s8(v71, v71, 8uLL), *v71.i8), v56), *v71.i8, 0x2020202020202020), 5uLL);
          }

          else
          {
            v64 = vdupq_n_s16(v60);
            v65 = a5 + v61;
            if (a7)
            {
              v111 = vld2_s8(v65);
              v66 = vsubq_s16(xmmword_277BB7B20, v64);
            }

            else
            {
              v111.val[0] = *v65;
              v111.val[1] = *(v65 + 1);
              v66 = vhsubq_u16(xmmword_277BB7B20, v64);
            }

            v73 = vrshrn_n_s16(vmlal_u8(vmulq_s16(vsubl_u8(v111.val[1], v111.val[0]), vandq_s8(v66, v55)), v111.val[0], 0x2020202020202020), 5uLL);
            v74 = vmaxq_s16(vshlq_s16(vaddq_s16(vdupq_n_s16(v63), v53), v50), v51);
            v75 = vqtbl3q_s8(*&v45, vuzp1q_s8(vaddq_s16(v74, v58), vaddq_s16(v74, v59)));
            v72 = vbsl_s8(qword_277C3A240[4 * ((v49 - (v57 >> v44)) >> a7)], vrshrn_n_s16(vmlal_u8(vmulq_s16(vsubl_u8(*&vextq_s8(v75, v75, 8uLL), *v75.i8), v56), *v75.i8, 0x2020202020202020), 5uLL), v73);
          }
        }

        ++v43;
        *result = v72;
        result = (result + a2);
        v57 -= a16;
        v60 += a16;
      }

      while (a4 != v43);
    }
  }

  else if (a3 == 4)
  {
    if (a4 >= 1)
    {
      a14.i32[0] = 0;
      v20 = 0;
      v21 = 6 - a7;
      v22 = *(&a6[-1] + 14);
      v23 = vextq_s8(*a6, *a6, 0xEuLL);
      v24 = vdup_n_s16(a8 - 6);
      v26 = vdup_n_s16(-1 << a8);
      v27 = vmul_s16(vdup_n_s16(a17), 0xFFFCFFFDFFFEFFFFLL);
      v28 = vand_s8(vshl_u16(v27, vdup_lane_s32(vceq_s32((a8 | 0xFFFCFFFD00000000), a14), 0)), 0x1F001F001F001FLL);
      v29 = -a16;
      v30 = a16;
      do
      {
        v31 = v29 >> v21;
        v25 = (-1 << a7) + a7;
        v32 = (v25 - (v29 >> v21)) >> a7;
        if (v32 <= 0)
        {
          v37 = vdup_n_s16(v30);
          v38 = a5 + v31;
          if (a7)
          {
            *v17.i8 = vuzp1_s8(*v38, 0);
            *v18.i8 = vuzp2_s8(*v38, 0);
            *v19.i8 = vsub_s16(0xC0008000400000, v37);
          }

          else
          {
            v17.i32[0] = *v38;
            v18.i32[0] = *(v38 + 1);
            *v19.i8 = vhsub_u16(0xC0008000400000, v37);
          }

          *v19.i8 = vand_s8(*v19.i8, 0x1F001F001F001FLL);
          v18 = vmlal_u8(vmulq_s16(v19, vsubl_u8(*v18.i8, *v17.i8)), *v17.i8, 0x2020202020202020);
          *v17.i8 = vrshrn_n_s16(v18, 5uLL);
        }

        else
        {
          v33 = v20 << 6;
          if (v32 > 3)
          {
            *v17.i8 = vmax_s16(vshl_s16(vadd_s16(vdup_n_s16(v33), v27), v24), v26);
            v39 = vqtbl2_s8(*&v22, vadd_s16(*v17.i8, 0x2000200020002));
            *v18.i8 = vmla_s16(vshl_n_s16(v39, 5uLL), vsub_s16(vqtbl2_s8(*&v22, vadd_s16(*v17.i8, 0x3000300030003)), v39), v28);
            *v17.i8 = vadd_s16(*v18.i8, 0x10001000100010);
            *v17.i8 = vshrn_n_s16(v17, 5uLL);
          }

          else
          {
            v34 = vdup_n_s16(v30);
            v35 = a5 + v31;
            if (a7)
            {
              *v17.i8 = vuzp1_s8(*v35, 0);
              *v18.i8 = vuzp2_s8(*v35, 0);
              v36 = vsub_s16(0xC0008000400000, v34);
            }

            else
            {
              v17.i32[0] = *v35;
              v18.i32[0] = *(v35 + 1);
              v36 = vhsub_u16(0xC0008000400000, v34);
            }

            *v19.i8 = vand_s8(v36, 0x1F001F001F001FLL);
            v40.i64[0] = vmovl_u8(*v17.i8).u64[0];
            v41 = vmovl_u8(*v18.i8).u64[0];
            v42 = vmax_s16(vshl_s16(vadd_s16(vdup_n_s16(v33), v27), v24), v26);
            v40.u64[1] = vqtbl2_s8(*&v22, vadd_s16(v42, 0x2000200020002));
            v18.u64[1] = vqtbl2_s8(*&v22, vadd_s16(v42, 0x3000300030003));
            v19.u64[1] = v28;
            v17 = vmlaq_s16(vshlq_n_s16(v40, 5uLL), vsubq_s16(v18, v40), v19);
            *v17.i8 = vrshrn_n_s16(v17, 5uLL);
            *v18.i8 = vdup_lane_s32(*v17.i8, 1);
            *v17.i8 = vbsl_s8(qword_277C3A240[4 * ((v25 - (v29 >> v21)) >> a7)], *v18.i8, *v17.i8);
          }
        }

        ++v20;
        result->i32[0] = v17.i32[0];
        result = (result + a2);
        v29 -= a16;
        v30 += a16;
      }

      while (a4 != v20);
    }
  }

  else if (a4 >= 1)
  {
    v76 = 0;
    v77 = *(&a6[-1] + 15);
    v78 = *a6;
    v79 = a6[1];
    v80 = a6[2];
    v81 = a6[3];
    v82 = vextq_s8(*a6, v79, 0xFuLL);
    v83 = vextq_s8(v79, v80, 0xFuLL);
    v84 = vextq_s8(v80, v81, 0xFuLL);
    v85 = vdupq_n_s16(a17);
    v86.i64[0] = 0x2020202020202020;
    v86.i64[1] = 0x2020202020202020;
    v87.i64[0] = -1;
    v87.i64[1] = -1;
    v88.i64[0] = 0x1000100010001;
    v88.i64[1] = 0x1000100010001;
    v89.i64[0] = 0x1F001F001F001FLL;
    v89.i64[1] = 0x1F001F001F001FLL;
    do
    {
      if (a3 >= 1)
      {
        v90 = 0;
        v91 = ~v76 * a16;
        v92 = vdupq_n_s16(v76 << 6);
        v93 = vdupq_n_s16((v91 >> 1) & 0x1F);
        v94 = a5 + (v91 >> 6);
        v95 = ~(v91 >> 6);
        v96 = &qword_277C3A240[-4 * (v91 >> 6) - 4];
        do
        {
          if (v95 <= 0)
          {
            v105 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmulq_s16(vsubl_u8(*(v94 + v90 + 1), *(v94 + v90)), v93), *(v94 + v90), 0x2020202020202020), 5uLL), vmlal_high_u8(vmulq_s16(vsubl_high_u8(*(v94 + v90 + 1), *(v94 + v90)), v93), *(v94 + v90), v86), 5uLL);
          }

          else
          {
            v97 = vdupq_n_s16(v90);
            v98 = vorrq_s8(v97, xmmword_277BB7B30);
            v99 = vaddq_s16(v97, xmmword_277BB7B40);
            if (v95 > 0xF)
            {
              v106 = vmlsq_s16(v92, v98, v85);
              v107 = vmlsq_s16(v92, v99, v85);
              v108 = vuzp1q_s8(vaddq_s16(vmaxq_s16(vshrq_n_s16(v106, 6uLL), v87), v88), vaddq_s16(vmaxq_s16(vshrq_n_s16(v107, 6uLL), v87), v88));
              v109 = vqtbl4q_s8(*&v77, v108);
              v110 = vqtbl4q_s8(*v78.i8, v108);
              v105 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmulq_s16(vsubl_u8(*v110.i8, *v109.i8), vandq_s8(vshrq_n_u16(v106, 1uLL), v89)), *v109.i8, 0x2020202020202020), 5uLL), vmlal_high_u8(vmulq_s16(vsubl_high_u8(v110, v109), vandq_s8(vshrq_n_u16(v107, 1uLL), v89)), v109, v86), 5uLL);
            }

            else
            {
              v100 = vmlsq_s16(v92, v98, v85);
              v101 = vmlsq_s16(v92, v99, v85);
              v102 = vuzp1q_s8(vaddq_s16(vmaxq_s16(vshrq_n_s16(v100, 6uLL), v87), v88), vaddq_s16(vmaxq_s16(vshrq_n_s16(v101, 6uLL), v87), v88));
              v103 = vqtbl4q_s8(*&v77, v102);
              v104 = vqtbl4q_s8(*v78.i8, v102);
              v105 = vbslq_s8(*v96, vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmulq_s16(vsubl_u8(*v104.i8, *v103.i8), vandq_s8(vshrq_n_u16(v100, 1uLL), v89)), *v103.i8, 0x2020202020202020), 5uLL), vmlal_high_u8(vmulq_s16(vsubl_high_u8(v104, v103), vandq_s8(vshrq_n_u16(v101, 1uLL), v89)), v103, v86), 5uLL), vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmulq_s16(vsubl_u8(*(v94 + v90 + 1), *(v94 + v90)), v93), *(v94 + v90), 0x2020202020202020), 5uLL), vmlal_high_u8(vmulq_s16(vsubl_high_u8(*(v94 + v90 + 1), *(v94 + v90)), v93), *(v94 + v90), v86), 5uLL));
            }
          }

          *result[v90 / 8].i8 = v105;
          v90 += 16;
          v96 -= 32;
          v95 -= 16;
        }

        while (v90 < a3);
      }

      ++v76;
      result = (result + a2);
    }

    while (v76 != a4);
  }

  return result;
}

int8x16_t *sub_277B232DC()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v3 = v0;
  v14 = *MEMORY[0x277D85DE8];
  sub_277B22AA0(64, v13, 64, v4, v5, v6, v7, v8, v9, v10, v11);
  return sub_277B23388(v13, 64, v3, v2, 0x40u, 0x40u);
}

int8x16_t *sub_277B23388(int8x16_t *result, uint64_t a2, _OWORD *a3, uint64_t a4, unsigned int a5, unsigned int a6)
{
  v6 = 0;
  v7 = a5;
  v89 = *MEMORY[0x277D85DE8];
  v8 = a6;
  do
  {
    v9 = 0;
    v10 = a3;
    v11 = result;
    do
    {
      v12 = 0;
      v13 = v11;
      do
      {
        *(&v73 + v12) = *v13;
        v12 += 16;
        v13 = (v13 + a2);
      }

      while (v12 != 256);
      v14 = 0;
      v15 = vzip1q_s8(v73, v74);
      v16 = vzip2q_s8(v73, v74);
      v17 = vzip1q_s8(v75, v76);
      v18 = vzip2q_s8(v75, v76);
      v19 = vzip1q_s8(v77, v78);
      v20 = vzip2q_s8(v77, v78);
      v21 = vzip1q_s8(v79, v80);
      v22 = vzip2q_s8(v79, v80);
      v23 = vzip1q_s8(v81, v82);
      v24 = vzip2q_s8(v81, v82);
      v25 = vzip1q_s8(v83, v84);
      v26 = vzip2q_s8(v83, v84);
      v27 = vzip1q_s8(v85, v86);
      v28 = vzip2q_s8(v85, v86);
      v29 = vzip1q_s8(v87, v88);
      v30 = vzip2q_s8(v87, v88);
      v31 = vzip1q_s16(v15, v17);
      v32 = vzip2q_s16(v15, v17);
      v33 = vzip1q_s16(v19, v21);
      v34 = vzip2q_s16(v19, v21);
      v35 = vzip1q_s16(v23, v25);
      v36 = vzip2q_s16(v23, v25);
      v37 = vzip1q_s16(v27, v29);
      v38 = vzip2q_s16(v27, v29);
      v39 = vzip1q_s32(v31, v33);
      v40 = vzip2q_s32(v31, v33);
      v41 = vzip1q_s32(v35, v37);
      v42 = vzip2q_s32(v35, v37);
      v43 = vzip1q_s32(v32, v34);
      v44 = vzip2q_s32(v32, v34);
      v45 = vzip1q_s32(v36, v38);
      v46 = vzip2q_s32(v36, v38);
      v47 = vzip2q_s64(v39, v41);
      v39.i64[1] = v41.i64[0];
      v72[0] = v39;
      v72[1] = v47;
      v48 = vzip2q_s64(v40, v42);
      v40.i64[1] = v42.i64[0];
      v72[2] = v40;
      v72[3] = v48;
      v49 = vzip2q_s64(v43, v45);
      v43.i64[1] = v45.i64[0];
      v72[4] = v43;
      v72[5] = v49;
      v50 = vzip2q_s64(v44, v46);
      v44.i64[1] = v46.i64[0];
      v72[6] = v44;
      v72[7] = v50;
      v51 = vzip1q_s16(v16, v18);
      v52 = vzip2q_s16(v16, v18);
      v53 = vzip1q_s16(v20, v22);
      v54 = vzip2q_s16(v20, v22);
      v55 = vzip1q_s16(v24, v26);
      v56 = vzip2q_s16(v24, v26);
      v57 = vzip1q_s16(v28, v30);
      v58 = vzip2q_s16(v28, v30);
      v59 = vzip1q_s32(v51, v53);
      v60 = vzip2q_s32(v51, v53);
      v61 = vzip1q_s32(v55, v57);
      v62 = vzip2q_s32(v55, v57);
      v63 = vzip1q_s32(v52, v54);
      v64 = vzip2q_s64(v59, v61);
      v59.i64[1] = v61.i64[0];
      v65 = vzip1q_s32(v56, v58);
      v72[8] = v59;
      v72[9] = v64;
      v66 = vzip2q_s64(v60, v62);
      v67 = vzip2q_s64(v63, v65);
      v60.i64[1] = v62.i64[0];
      v63.i64[1] = v65.i64[0];
      v72[10] = v60;
      v72[11] = v66;
      v72[12] = v63;
      v72[13] = v67;
      v68 = vzip2q_s32(v52, v54);
      v69 = vzip2q_s32(v56, v58);
      v70 = vzip2q_s64(v68, v69);
      v68.i64[1] = v69.i64[0];
      v72[14] = v68;
      v72[15] = v70;
      v71 = v10;
      do
      {
        *v71 = v72[v14++];
        v71 = (v71 + a4);
      }

      while (v14 != 16);
      v9 += 16;
      v11 += a2;
      ++v10;
    }

    while (v9 < v7);
    v6 += 16;
    ++result;
    a3 += a4;
  }

  while (v6 < v8);
  return result;
}

int8x16_t *sub_277B235A8(_OWORD *a1, uint64_t a2, uint64_t a3, __n128 a4, uint64_t a5, int a6)
{
  v10 = *MEMORY[0x277D85DE8];
  sub_277B22914(64, v9, 32, a3, a6, a4);
  return sub_277B23388(v9, 32, a1, a2, 0x40u, 0x20u);
}

_OWORD *sub_277B23638(_OWORD *result, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v5 = 0;
  v6 = 0;
  v96 = *MEMORY[0x277D85DE8];
  v7 = 6 - a4;
  v8 = (a3 + (79 << a4));
  v9 = vld1q_dup_s8(v8);
  v10.i64[0] = 0x2020202020202020;
  v10.i64[1] = 0x2020202020202020;
  v11 = a5;
  while (1)
  {
    v12 = ((79 << a4) - (v11 >> v7)) >> a4;
    if (v12 <= 0)
    {
      break;
    }

    if (v12 >= 0x10)
    {
      v12 = 16;
    }

    v13 = a3 + (v11 >> v7);
    if (a4)
    {
      v15 = vld2_s8(v13);
      v15.i64[1] = v14;
      v16 = vextq_s8(v15, 0, 8uLL);
      LOBYTE(v13) = v11;
    }

    else
    {
      v15 = *v13;
      v16 = *(v13 + 1);
      LOWORD(v13) = v11 >> 1;
    }

    v17 = vdupq_n_s16(v13 & 0x1F);
    v95[v6 + 16] = vbslq_s8(*qword_277C3A240[4 * v12].i8, vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmulq_s16(vsubl_u8(*v16.i8, *v15.i8), v17), *v15.i8, 0x2020202020202020), 5uLL), vmlal_high_u8(vmulq_s16(vsubl_high_u8(v16, v15), v17), v15, v10), 5uLL), v9);
    v11 += a5;
    ++v6;
    v5 -= 16;
    if (v6 == 64)
    {
      goto LABEL_13;
    }
  }

  if (v6 <= 0x3F)
  {
    v18 = -v5;
    do
    {
      *(&v95[16] + v18) = v9;
      v18 += 16;
    }

    while (v18 != 1024);
  }

LABEL_13:
  v19 = 0;
  do
  {
    v20 = 0;
    v21 = &v95[v19 + 16];
    v22 = v21[1];
    v23 = vzip1q_s8(*v21, v22);
    v24 = vzip2q_s8(*v21, v22);
    v25 = v21[2];
    v26 = v21[3];
    v27 = vzip1q_s8(v25, v26);
    v28 = vzip2q_s8(v25, v26);
    v29 = v21[4];
    v30 = v21[5];
    v31 = vzip1q_s8(v29, v30);
    v32 = vzip2q_s8(v29, v30);
    v33 = v21[6];
    v34 = v21[7];
    v35 = vzip1q_s8(v33, v34);
    v36 = vzip2q_s8(v33, v34);
    v37 = v21[8];
    v38 = v21[9];
    v39 = vzip1q_s8(v37, v38);
    v40 = vzip2q_s8(v37, v38);
    v41 = v21[10];
    v42 = v21[11];
    v43 = vzip1q_s8(v41, v42);
    v44 = vzip2q_s8(v41, v42);
    v45 = v21[12];
    v46 = v21[13];
    v47 = vzip1q_s8(v45, v46);
    v48 = vzip2q_s8(v45, v46);
    v49 = v21[14];
    v50 = v21[15];
    v51 = vzip1q_s8(v49, v50);
    v52 = vzip2q_s8(v49, v50);
    v53 = vzip1q_s16(v23, v27);
    v54 = vzip2q_s16(v23, v27);
    v55 = vzip1q_s16(v31, v35);
    v56 = vzip2q_s16(v31, v35);
    v57 = vzip1q_s16(v39, v43);
    v58 = vzip2q_s16(v39, v43);
    v59 = vzip1q_s16(v47, v51);
    v60 = vzip2q_s16(v47, v51);
    v61 = vzip1q_s32(v53, v55);
    v62 = vzip2q_s32(v53, v55);
    v63 = vzip1q_s32(v57, v59);
    v64 = vzip2q_s32(v57, v59);
    v65 = vzip1q_s32(v54, v56);
    v66 = vzip2q_s32(v54, v56);
    v67 = vzip1q_s32(v58, v60);
    v68 = vzip2q_s32(v58, v60);
    v69 = vzip2q_s64(v61, v63);
    v61.i64[1] = v63.i64[0];
    v95[0] = v61;
    v95[1] = v69;
    v70 = vzip2q_s64(v62, v64);
    v62.i64[1] = v64.i64[0];
    v95[2] = v62;
    v95[3] = v70;
    v71 = vzip2q_s64(v65, v67);
    v65.i64[1] = v67.i64[0];
    v95[4] = v65;
    v95[5] = v71;
    v72 = vzip2q_s64(v66, v68);
    v66.i64[1] = v68.i64[0];
    v95[6] = v66;
    v95[7] = v72;
    v73 = vzip1q_s16(v24, v28);
    v74 = vzip2q_s16(v24, v28);
    v75 = vzip1q_s16(v32, v36);
    v76 = vzip2q_s16(v32, v36);
    v77 = vzip1q_s16(v40, v44);
    v78 = vzip2q_s16(v40, v44);
    v79 = vzip1q_s16(v48, v52);
    v80 = vzip2q_s16(v48, v52);
    v81 = vzip1q_s32(v73, v75);
    v82 = vzip2q_s32(v73, v75);
    v83 = vzip1q_s32(v77, v79);
    v84 = vzip2q_s32(v77, v79);
    v85 = vzip1q_s32(v74, v76);
    v86 = vzip2q_s32(v74, v76);
    v87 = vzip1q_s32(v78, v80);
    v88 = vzip2q_s32(v78, v80);
    v89 = vzip2q_s64(v81, v83);
    v81.i64[1] = v83.i64[0];
    v95[8] = v81;
    v95[9] = v89;
    v90 = vzip2q_s64(v82, v84);
    v82.i64[1] = v84.i64[0];
    v95[10] = v82;
    v95[11] = v90;
    v91 = vzip2q_s64(v85, v87);
    v85.i64[1] = v87.i64[0];
    v95[12] = v85;
    v95[13] = v91;
    v92 = vzip2q_s64(v86, v88);
    v86.i64[1] = v88.i64[0];
    v95[14] = v86;
    v95[15] = v92;
    v93 = result;
    do
    {
      *v93 = v95[v20++];
      v93 = (v93 + a2);
    }

    while (v20 != 16);
    ++result;
    v94 = v19 >= 0x30;
    v19 += 16;
  }

  while (!v94);
  return result;
}

int8x16_t *sub_277B23900(_OWORD *a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, uint16x8_t a9, uint64_t a10, int a11)
{
  v15 = *MEMORY[0x277D85DE8];
  sub_277B22AA0(32, v14, 64, a3, a11, a4, a5, a6, a7, a8, a9);
  return sub_277B23388(v14, 64, a1, a2, 0x20u, 0x40u);
}

__n128 sub_277B23990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = 0;
  v329 = *MEMORY[0x277D85DE8];
  v6 = (a3 + 63);
  v7 = vld1q_dup_s8(v6);
  v8 = v295;
  v9.i64[0] = 0x2020202020202020;
  v9.i64[1] = 0x2020202020202020;
  v10 = 32;
  v11 = a5;
  do
  {
    v12 = v11 >> 6;
    if (v11 >> 6 < 63)
    {
      v15 = 0;
      v16 = 0;
      LODWORD(v17) = 63 - (v11 >> 6);
      v18 = vdupq_n_s16((v11 >> 1) & 0x1F);
      do
      {
        v19 = v7;
        if (v16 < v17)
        {
          v20 = a3 + v12 + v16;
          v19 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmulq_s16(vsubl_u8(*(v20 + 1), *v20), v18), *v20, 0x2020202020202020), 5uLL), vmlal_high_u8(vmulq_s16(vsubl_high_u8(*(v20 + 1), *v20), v18), *v20, v9), 5uLL);
        }

        *(&v262 + v15) = v19;
        v15 += 16;
        v16 = 16;
      }

      while (v15 != 32);
      if (v17 >= 0x20)
      {
        v17 = 32;
      }

      else
      {
        v17 = v17;
      }

      v21 = &qword_277C3A240[4 * v17];
      v22 = *v21[2].i8;
      v23 = vbslq_s8(*v21->i8, v262, v7);
      v24 = &v294[2 * v5 + 32];
      v25 = vbslq_s8(v22, v263, v7);
      *v24 = v23;
      v24[1] = v25;
      v11 += a5;
    }

    else
    {
      v13 = v8;
      v14 = v10;
      do
      {
        v13[-1] = v7;
        *v13 = v7;
        v13 += 2;
        --v14;
      }

      while (v14);
    }

    if (v12 > 62)
    {
      break;
    }

    ++v5;
    --v10;
    v8 += 2;
  }

  while (v5 != 32);
  v26 = 0;
  v27 = v295;
  do
  {
    v28 = &v297.i8[v26];
    v29 = *v27;
    *v28 = *(v27 - 1);
    *(v28 + 16) = v29;
    v26 += 16;
    v27 += 2;
  }

  while (v26 != 256);
  v30 = 0;
  v31 = vzip1q_s8(v297, v298);
  v32 = vzip2q_s8(v297, v298);
  v33 = vzip1q_s8(v299, v300);
  v34 = vzip2q_s8(v299, v300);
  v35 = vzip1q_s8(v301, v302);
  v36 = vzip2q_s8(v301, v302);
  v37 = vzip1q_s8(v303, v304);
  v38 = vzip2q_s8(v303, v304);
  v39 = vzip1q_s8(v305, v306);
  v40 = vzip2q_s8(v305, v306);
  v41 = vzip1q_s8(v307, v308);
  v42 = vzip2q_s8(v307, v308);
  v43 = vzip1q_s8(v309, v310);
  v44 = vzip2q_s8(v309, v310);
  v45 = vzip1q_s8(v311, v312);
  v46 = vzip2q_s8(v311, v312);
  v47 = vzip1q_s16(v31, v33);
  v48 = vzip2q_s16(v31, v33);
  v49 = vzip1q_s16(v35, v37);
  v50 = vzip2q_s16(v35, v37);
  v51 = vzip1q_s16(v39, v41);
  v52 = vzip2q_s16(v39, v41);
  v53 = vzip1q_s16(v43, v45);
  v54 = vzip2q_s16(v43, v45);
  v55 = vzip1q_s32(v47, v49);
  v56 = vzip2q_s32(v47, v49);
  v57 = vzip1q_s32(v51, v53);
  v58 = vzip2q_s32(v51, v53);
  v59 = vzip1q_s32(v48, v50);
  v60 = vzip2q_s32(v48, v50);
  v61 = vzip1q_s32(v52, v54);
  v62 = vzip2q_s64(v55, v57);
  v55.i64[1] = v57.i64[0];
  v63 = vzip2q_s32(v52, v54);
  v262 = v55;
  v263 = v62;
  v64 = vzip2q_s64(v56, v58);
  v56.i64[1] = v58.i64[0];
  v264 = v56;
  v265 = v64;
  v65 = vzip2q_s64(v59, v61);
  v59.i64[1] = v61.i64[0];
  v266 = v59;
  v267 = v65;
  v66 = vzip2q_s64(v60, v63);
  v60.i64[1] = v63.i64[0];
  v67 = vzip1q_s16(v32, v34);
  v68 = vzip2q_s16(v32, v34);
  v268 = v60;
  v269 = v66;
  v69 = vzip1q_s16(v36, v38);
  v70 = vzip2q_s16(v36, v38);
  v71 = vzip1q_s16(v40, v42);
  v72 = vzip2q_s16(v40, v42);
  v73 = vzip1q_s16(v44, v46);
  v74 = vzip1q_s32(v67, v69);
  v75 = vzip1q_s32(v71, v73);
  v76 = vzip2q_s64(v74, v75);
  v74.i64[1] = v75.i64[0];
  v77 = vzip2q_s32(v67, v69);
  v78 = vzip2q_s32(v71, v73);
  v270 = v74;
  v271 = v76;
  v79 = vzip2q_s64(v77, v78);
  v77.i64[1] = v78.i64[0];
  v80 = vzip2q_s16(v44, v46);
  v81 = vzip1q_s32(v68, v70);
  v82 = vzip1q_s32(v72, v80);
  v83 = vzip2q_s64(v81, v82);
  v75.i64[0] = v81.i64[0];
  v75.i64[1] = v82.i64[0];
  v84 = vzip2q_s32(v68, v70);
  v85 = vzip2q_s32(v72, v80);
  v86 = vzip2q_s64(v84, v85);
  v76.i64[0] = v84.i64[0];
  v76.i64[1] = v85.i64[0];
  v272 = v77;
  v273 = v79;
  v87 = vzip1q_s8(v313, v314);
  v88 = vzip2q_s8(v313, v314);
  v89 = vzip1q_s8(v315, v316);
  v90 = vzip2q_s8(v315, v316);
  v91 = vzip1q_s8(v317, v318);
  v92 = vzip2q_s8(v317, v318);
  v93 = vzip1q_s8(v319, v320);
  v94 = vzip2q_s8(v319, v320);
  v95 = vzip1q_s8(v321, v322);
  v96 = vzip2q_s8(v321, v322);
  v97 = vzip1q_s8(v323, v324);
  v98 = vzip2q_s8(v323, v324);
  v99 = vzip1q_s8(v325, v326);
  v100 = vzip2q_s8(v325, v326);
  v101 = vzip1q_s8(v327, v328);
  v102 = vzip2q_s8(v327, v328);
  v274 = v75;
  v275 = v83;
  v103 = vzip1q_s16(v87, v89);
  v104 = vzip2q_s16(v87, v89);
  v105 = vzip1q_s16(v91, v93);
  v106 = vzip2q_s16(v91, v93);
  v276 = v76;
  v277 = v86;
  v107 = vzip1q_s16(v95, v97);
  v108 = vzip2q_s16(v95, v97);
  v109 = vzip1q_s16(v99, v101);
  v110 = vzip2q_s16(v99, v101);
  v111 = vzip1q_s32(v103, v105);
  v112 = vzip2q_s32(v103, v105);
  v113 = vzip1q_s32(v107, v109);
  v114 = vzip2q_s32(v107, v109);
  v115 = vzip2q_s64(v111, v113);
  v111.i64[1] = v113.i64[0];
  v116 = vzip1q_s32(v104, v106);
  v278 = v111;
  v279 = v115;
  v117 = vzip2q_s64(v112, v114);
  v118 = vzip2q_s32(v104, v106);
  v119 = vzip1q_s32(v108, v110);
  v112.i64[1] = v114.i64[0];
  v280 = v112;
  v281 = v117;
  v120 = vzip2q_s64(v116, v119);
  v121 = vzip2q_s32(v108, v110);
  v116.i64[1] = v119.i64[0];
  v282 = v116;
  v283 = v120;
  v122 = vzip2q_s64(v118, v121);
  v118.i64[1] = v121.i64[0];
  v284 = v118;
  v285 = v122;
  v123 = vzip1q_s16(v88, v90);
  v124 = vzip1q_s16(v92, v94);
  v125 = vzip1q_s16(v96, v98);
  v126 = vzip1q_s16(v100, v102);
  v127 = vzip1q_s32(v123, v124);
  v128 = vzip1q_s32(v125, v126);
  v129 = vzip2q_s64(v127, v128);
  v130 = vzip2q_s32(v123, v124);
  v131 = vzip2q_s32(v125, v126);
  v127.i64[1] = v128.i64[0];
  v286 = v127;
  v287 = v129;
  v132 = vzip2q_s64(v130, v131);
  v133 = vzip2q_s16(v88, v90);
  v130.i64[1] = v131.i64[0];
  v134 = vzip2q_s16(v92, v94);
  v288 = v130;
  v289 = v132;
  v135 = vzip2q_s16(v96, v98);
  v136 = vzip2q_s16(v100, v102);
  v137 = vzip1q_s32(v133, v134);
  v138 = vzip1q_s32(v135, v136);
  v139 = vzip2q_s64(v137, v138);
  v140 = vzip2q_s32(v133, v134);
  v141 = vzip2q_s32(v135, v136);
  v142 = vzip2q_s64(v140, v141);
  v137.i64[1] = v138.i64[0];
  v140.i64[1] = v141.i64[0];
  v290 = v137;
  v291 = v139;
  v292 = v140;
  v293 = v142;
  v143 = &v296;
  do
  {
    v144 = &v297.i8[v30];
    v145 = *v143;
    *v144 = *(v143 - 1);
    *(v144 + 16) = v145;
    v30 += 16;
    v143 += 2;
  }

  while (v30 != 256);
  v146 = 0;
  v147 = vzip1q_s8(v297, v298);
  v148 = vzip2q_s8(v297, v298);
  v149 = vzip1q_s8(v299, v300);
  v150 = vzip2q_s8(v299, v300);
  v151 = vzip1q_s8(v301, v302);
  v152 = vzip2q_s8(v301, v302);
  v153 = vzip1q_s8(v303, v304);
  v154 = vzip2q_s8(v303, v304);
  v155 = vzip1q_s8(v305, v306);
  v156 = vzip2q_s8(v305, v306);
  v157 = vzip1q_s8(v307, v308);
  v158 = vzip2q_s8(v307, v308);
  v159 = vzip1q_s8(v309, v310);
  v160 = vzip2q_s8(v309, v310);
  v161 = vzip1q_s8(v311, v312);
  v162 = vzip2q_s8(v311, v312);
  v163 = vzip1q_s16(v147, v149);
  v164 = vzip2q_s16(v147, v149);
  v165 = vzip1q_s16(v151, v153);
  v166 = vzip2q_s16(v151, v153);
  v167 = vzip1q_s16(v155, v157);
  v168 = vzip2q_s16(v155, v157);
  v169 = vzip1q_s16(v159, v161);
  v170 = vzip2q_s16(v159, v161);
  v171 = vzip1q_s32(v163, v165);
  v172 = vzip2q_s32(v163, v165);
  v173 = vzip1q_s32(v167, v169);
  v174 = vzip2q_s32(v167, v169);
  v175 = vzip1q_s32(v164, v166);
  v176 = vzip2q_s32(v164, v166);
  v177 = vzip1q_s32(v168, v170);
  v178 = vzip2q_s64(v171, v173);
  v171.i64[1] = v173.i64[0];
  v179 = vzip2q_s32(v168, v170);
  v294[0] = v171;
  v294[1] = v178;
  v180 = vzip2q_s64(v172, v174);
  v172.i64[1] = v174.i64[0];
  v294[2] = v172;
  v294[3] = v180;
  v181 = vzip2q_s64(v175, v177);
  v175.i64[1] = v177.i64[0];
  v294[4] = v175;
  v294[5] = v181;
  v182 = vzip2q_s64(v176, v179);
  v176.i64[1] = v179.i64[0];
  v183 = vzip1q_s16(v148, v150);
  v184 = vzip2q_s16(v148, v150);
  v294[6] = v176;
  v294[7] = v182;
  v185 = vzip1q_s16(v152, v154);
  v186 = vzip2q_s16(v152, v154);
  v187 = vzip1q_s16(v156, v158);
  v188 = vzip2q_s16(v156, v158);
  v189 = vzip1q_s16(v160, v162);
  v190 = vzip1q_s32(v183, v185);
  v191 = vzip1q_s32(v187, v189);
  v192 = vzip2q_s64(v190, v191);
  v190.i64[1] = v191.i64[0];
  v193 = vzip2q_s32(v183, v185);
  v194 = vzip2q_s32(v187, v189);
  v294[8] = v190;
  v294[9] = v192;
  v195 = vzip2q_s64(v193, v194);
  v193.i64[1] = v194.i64[0];
  v196 = vzip2q_s16(v160, v162);
  v197 = vzip1q_s32(v184, v186);
  v198 = vzip1q_s32(v188, v196);
  v294[10] = v193;
  v294[11] = v195;
  v199 = vzip2q_s64(v197, v198);
  v191.i64[0] = v197.i64[0];
  v191.i64[1] = v198.i64[0];
  v200 = vzip2q_s32(v184, v186);
  v201 = vzip2q_s32(v188, v196);
  v202 = vzip2q_s64(v200, v201);
  v192.i64[0] = v200.i64[0];
  v192.i64[1] = v201.i64[0];
  v203 = vzip1q_s8(v313, v314);
  v204 = vzip2q_s8(v313, v314);
  v205 = vzip1q_s8(v315, v316);
  v206 = vzip2q_s8(v315, v316);
  v207 = vzip1q_s8(v317, v318);
  v208 = vzip2q_s8(v317, v318);
  v209 = vzip1q_s8(v319, v320);
  v210 = vzip2q_s8(v319, v320);
  v211 = vzip1q_s8(v321, v322);
  v212 = vzip2q_s8(v321, v322);
  v213 = vzip1q_s8(v323, v324);
  v214 = vzip2q_s8(v323, v324);
  v215 = vzip1q_s8(v325, v326);
  v216 = vzip2q_s8(v325, v326);
  v217 = vzip1q_s8(v327, v328);
  v218 = vzip2q_s8(v327, v328);
  v294[12] = v191;
  v294[13] = v199;
  v219 = vzip1q_s16(v203, v205);
  v220 = vzip2q_s16(v203, v205);
  v221 = vzip1q_s16(v207, v209);
  v222 = vzip2q_s16(v207, v209);
  v294[14] = v192;
  v294[15] = v202;
  v223 = vzip1q_s16(v211, v213);
  v224 = vzip2q_s16(v211, v213);
  v225 = vzip1q_s16(v215, v217);
  v226 = vzip2q_s16(v215, v217);
  v227 = vzip1q_s32(v219, v221);
  v228 = vzip2q_s32(v219, v221);
  v229 = vzip1q_s32(v223, v225);
  v230 = vzip2q_s32(v223, v225);
  v231 = vzip2q_s64(v227, v229);
  v227.i64[1] = v229.i64[0];
  v232 = vzip1q_s32(v220, v222);
  v294[16] = v227;
  v294[17] = v231;
  v233 = vzip2q_s64(v228, v230);
  v234 = vzip2q_s32(v220, v222);
  v235 = vzip1q_s32(v224, v226);
  v228.i64[1] = v230.i64[0];
  v294[18] = v228;
  v294[19] = v233;
  v236 = vzip2q_s64(v232, v235);
  v237 = vzip2q_s32(v224, v226);
  v232.i64[1] = v235.i64[0];
  v294[20] = v232;
  v294[21] = v236;
  v238 = vzip2q_s64(v234, v237);
  v234.i64[1] = v237.i64[0];
  v294[22] = v234;
  v294[23] = v238;
  v239 = vzip1q_s16(v204, v206);
  v240 = vzip1q_s16(v208, v210);
  v241 = vzip1q_s16(v212, v214);
  v242 = vzip1q_s16(v216, v218);
  v243 = vzip1q_s32(v239, v240);
  v244 = vzip1q_s32(v241, v242);
  v245 = vzip2q_s64(v243, v244);
  v246 = vzip2q_s32(v239, v240);
  v247 = vzip2q_s32(v241, v242);
  v243.i64[1] = v244.i64[0];
  v294[24] = v243;
  v294[25] = v245;
  v248 = vzip2q_s64(v246, v247);
  v249 = vzip2q_s16(v204, v206);
  v250 = vzip2q_s16(v208, v210);
  v246.i64[1] = v247.i64[0];
  v294[26] = v246;
  v294[27] = v248;
  v251 = vzip2q_s16(v212, v214);
  v252 = vzip2q_s16(v216, v218);
  v253 = vzip1q_s32(v249, v250);
  v254 = vzip1q_s32(v251, v252);
  v255 = vzip2q_s64(v253, v254);
  v253.i64[1] = v254.i64[0];
  v294[28] = v253;
  v294[29] = v255;
  v256 = vzip2q_s32(v249, v250);
  v257 = vzip2q_s32(v251, v252);
  v258 = vzip2q_s64(v256, v257);
  v256.i64[1] = v257.i64[0];
  v294[30] = v256;
  v294[31] = v258;
  v259 = (a1 + 16);
  do
  {
    result = *(&v262 + v146 * 16);
    v261 = v294[v146];
    *(v259 - 1) = result;
    *v259 = v261;
    ++v146;
    v259 = (v259 + a2);
  }

  while (v146 != 32);
  return result;
}

uint64_t sub_277B24110(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v5 = 0;
  v6 = 0;
  v98[33] = *MEMORY[0x277D85DE8];
  v7 = 6 - a4;
  v8 = (a3 + (47 << a4));
  v9 = vld1q_dup_s8(v8);
  v10.i64[0] = 0x2020202020202020;
  v10.i64[1] = 0x2020202020202020;
  v11 = a5;
  while (1)
  {
    v12 = ((47 << a4) - (v11 >> v7)) >> a4;
    if (v12 <= 0)
    {
      break;
    }

    if (v12 >= 0x10)
    {
      v12 = 16;
    }

    v13 = a3 + (v11 >> v7);
    if (a4)
    {
      v15 = vld2_s8(v13);
      v15.i64[1] = v14;
      v16 = vextq_s8(v15, 0, 8uLL);
      LOBYTE(v13) = v11;
    }

    else
    {
      v15 = *v13;
      v16 = *(v13 + 1);
      LOWORD(v13) = v11 >> 1;
    }

    v17 = vdupq_n_s16(v13 & 0x1F);
    v97[v6] = vbslq_s8(*qword_277C3A240[4 * v12].i8, vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmulq_s16(vsubl_u8(*v16.i8, *v15.i8), v17), *v15.i8, 0x2020202020202020), 5uLL), vmlal_high_u8(vmulq_s16(vsubl_high_u8(v16, v15), v17), v15, v10), 5uLL), v9);
    v11 += a5;
    ++v6;
    v5 -= 16;
    if (v6 == 32)
    {
      goto LABEL_13;
    }
  }

  if (v6 <= 0x1F)
  {
    v18 = -v5;
    do
    {
      *(v97 + v18) = v9;
      v18 += 16;
    }

    while (v18 != 512);
  }

LABEL_13:
  v19 = 0;
  v20 = v97;
  v21 = 1;
  do
  {
    v22 = 0;
    v23 = v20[1];
    v24 = v20[2];
    v25 = v20[3];
    v26 = v20[4];
    v27 = v20[5];
    v28 = v20[6];
    v29 = v20[7];
    v30 = v20[8];
    v31 = v20[9];
    v32 = v20[10];
    v33 = v20[11];
    v34 = v20[12];
    v35 = v20[13];
    v36 = v20[14];
    v37 = v20[15];
    v38 = vzip1q_s8(*v20, v23);
    v39 = vzip2q_s8(*v20, v23);
    v40 = vzip1q_s8(v24, v25);
    v41 = vzip2q_s8(v24, v25);
    v42 = vzip1q_s8(v26, v27);
    v43 = vzip2q_s8(v26, v27);
    v44 = vzip1q_s8(v28, v29);
    v45 = vzip2q_s8(v28, v29);
    v46 = vzip1q_s8(v30, v31);
    v47 = vzip2q_s8(v30, v31);
    v48 = vzip1q_s8(v32, v33);
    v49 = vzip2q_s8(v32, v33);
    v50 = vzip1q_s8(v34, v35);
    v51 = vzip2q_s8(v34, v35);
    v52 = vzip1q_s8(v36, v37);
    v53 = vzip2q_s8(v36, v37);
    v54 = vzip1q_s16(v38, v40);
    v55 = vzip2q_s16(v38, v40);
    v56 = vzip1q_s16(v42, v44);
    v57 = vzip2q_s16(v42, v44);
    v58 = vzip1q_s16(v46, v48);
    v59 = vzip2q_s16(v46, v48);
    v60 = vzip1q_s16(v50, v52);
    v61 = vzip2q_s16(v50, v52);
    v62 = vzip1q_s32(v54, v56);
    v63 = vzip2q_s32(v54, v56);
    v64 = vzip1q_s32(v58, v60);
    v65 = vzip2q_s32(v58, v60);
    v66 = vzip1q_s32(v55, v57);
    v67 = vzip2q_s32(v55, v57);
    v68 = vzip1q_s32(v59, v61);
    v69 = vzip2q_s32(v59, v61);
    v70 = vzip2q_s64(v62, v64);
    v62.i64[1] = v64.i64[0];
    v96[0] = v62;
    v96[1] = v70;
    v71 = vzip2q_s64(v63, v65);
    v63.i64[1] = v65.i64[0];
    v96[2] = v63;
    v96[3] = v71;
    v72 = vzip2q_s64(v66, v68);
    v66.i64[1] = v68.i64[0];
    v96[4] = v66;
    v96[5] = v72;
    v73 = vzip2q_s64(v67, v69);
    v67.i64[1] = v69.i64[0];
    v96[6] = v67;
    v96[7] = v73;
    v74 = vzip1q_s16(v39, v41);
    v75 = vzip2q_s16(v39, v41);
    v76 = vzip1q_s16(v43, v45);
    v77 = vzip2q_s16(v43, v45);
    v78 = vzip1q_s16(v47, v49);
    v79 = vzip2q_s16(v47, v49);
    v80 = vzip1q_s16(v51, v53);
    v81 = vzip2q_s16(v51, v53);
    v82 = vzip1q_s32(v74, v76);
    v83 = vzip2q_s32(v74, v76);
    v84 = vzip1q_s32(v78, v80);
    v85 = vzip2q_s32(v78, v80);
    v86 = vzip1q_s32(v75, v77);
    v87 = vzip2q_s64(v82, v84);
    v82.i64[1] = v84.i64[0];
    v96[8] = v82;
    v96[9] = v87;
    v88 = vzip2q_s64(v83, v85);
    v83.i64[1] = v85.i64[0];
    v96[10] = v83;
    v96[11] = v88;
    v89 = vzip1q_s32(v79, v81);
    v90 = vzip2q_s64(v86, v89);
    v86.i64[1] = v89.i64[0];
    v96[12] = v86;
    v96[13] = v90;
    v91 = vzip2q_s32(v75, v77);
    v92 = vzip2q_s32(v79, v81);
    v93 = vzip2q_s64(v91, v92);
    v91.i64[1] = v92.i64[0];
    v94 = v21;
    v96[14] = v91;
    v96[15] = v93;
    v95 = (result + v19);
    do
    {
      *v95 = v96[v22++];
      v95 = (v95 + a2);
    }

    while (v22 != 16);
    v21 = 0;
    v20 = v98;
    v19 = 16;
  }

  while ((v94 & 1) != 0);
  return result;
}

__n128 sub_277B243DC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v5 = 0;
  v6 = 0;
  v110 = *MEMORY[0x277D85DE8];
  v7 = 6 - a4;
  v8 = (a3 + (39 << a4));
  v9 = vld1_dup_s8(v8);
  v10 = a5;
  while (1)
  {
    v11 = ((39 << a4) - (v10 >> v7)) >> a4;
    if (v11 <= 0)
    {
      break;
    }

    if (v11 >= 8)
    {
      v11 = 8;
    }

    v12 = a3 + (v10 >> v7);
    if (a4)
    {
      v111 = vld2_s8(v12);
      v13 = v10 << a4;
    }

    else
    {
      v111.val[0] = *v12;
      v111.val[1] = *(v12 + 1);
      v13 = v10;
    }

    *(&v78 + v6) = vbsl_s8(qword_277C3A240[4 * v11], vrshrn_n_s16(vmlal_u8(vmulq_s16(vsubl_u8(v111.val[1], v111.val[0]), vdupq_n_s16((v13 >> 1) & 0x1F)), v111.val[0], 0x2020202020202020), 5uLL), v9);
    v10 += a5;
    ++v6;
    v5 -= 8;
    if (v6 == 32)
    {
      goto LABEL_13;
    }
  }

  if (v6 <= 0x1F)
  {
    v14 = -v5;
    do
    {
      *(&v78 + v14) = v9;
      v14 += 8;
    }

    while (v14 != 256);
  }

LABEL_13:
  v15 = 0;
  v16 = vzip1_s8(v78, v79);
  v17 = vzip2_s8(v78, v79);
  v18 = vzip1_s8(v80, v81);
  v19 = vzip2_s8(v80, v81);
  v20 = vzip1_s8(v82, v83);
  v21 = vzip2_s8(v82, v83);
  v22 = vzip1_s8(v84, v85);
  v23 = vzip2_s8(v84, v85);
  v24 = vzip1_s8(v86, v87);
  v25 = vzip2_s8(v86, v87);
  v26 = vzip1_s8(v88, v89);
  v27 = vzip2_s8(v88, v89);
  v28 = vzip1_s8(v90, v91);
  v29 = vzip2_s8(v90, v91);
  v30 = vzip1_s8(v92, v93);
  v31 = vzip2_s8(v92, v93);
  v32 = vzip1_s16(v16, v18);
  v33 = vzip2_s16(v16, v18);
  v34 = vzip1_s16(v20, v22);
  v35 = vzip2_s16(v20, v22);
  v36 = vzip1_s16(v24, v26);
  v37 = vzip2_s16(v24, v26);
  v38 = vzip1_s16(v28, v30);
  v39 = vzip2_s16(v28, v30);
  *&v40 = vzip1_s32(v32, v34);
  *&v41 = vzip2_s32(v32, v34);
  *&v42 = vzip1_s32(v33, v35);
  *&v43 = vzip2_s32(v33, v35);
  *(&v40 + 1) = vzip1_s32(v36, v38);
  *(&v41 + 1) = vzip2_s32(v36, v38);
  v77[0] = v40;
  v77[1] = v41;
  *(&v42 + 1) = vzip1_s32(v37, v39);
  *(&v43 + 1) = vzip2_s32(v37, v39);
  v77[2] = v42;
  v77[3] = v43;
  *&v43 = vzip1_s16(v17, v19);
  v44 = vzip2_s16(v17, v19);
  v45 = vzip1_s16(v21, v23);
  v46 = vzip2_s16(v21, v23);
  *&v41 = vzip1_s16(v25, v27);
  v47 = vzip2_s16(v25, v27);
  v48 = vzip1_s16(v29, v31);
  v49 = vzip2_s16(v29, v31);
  *&v50 = vzip1_s32(*&v43, v45);
  *&v51 = vzip2_s32(*&v43, v45);
  *&v52 = vzip1_s32(v44, v46);
  *&v53 = vzip2_s32(v44, v46);
  *(&v50 + 1) = vzip1_s32(*&v41, v48);
  *(&v51 + 1) = vzip2_s32(*&v41, v48);
  v77[4] = v50;
  v77[5] = v51;
  *(&v52 + 1) = vzip1_s32(v47, v49);
  *(&v53 + 1) = vzip2_s32(v47, v49);
  *&v41 = vzip1_s8(v94, v95);
  *&v51 = vzip2_s8(v94, v95);
  v54 = vzip1_s8(v96, v97);
  v55 = vzip2_s8(v96, v97);
  v56 = vzip1_s8(v98, v99);
  v57 = vzip2_s8(v98, v99);
  *&v50 = vzip1_s8(v100, v101);
  v58 = vzip2_s8(v100, v101);
  v59 = vzip1_s8(v102, v103);
  v60 = vzip2_s8(v102, v103);
  v61 = vzip1_s8(v104, v105);
  *&v42 = vzip2_s8(v104, v105);
  *&v40 = vzip1_s8(v106, v107);
  v62 = vzip2_s8(v106, v107);
  v63 = vzip1_s8(v108, v109);
  *&v43 = vzip2_s8(v108, v109);
  v77[6] = v52;
  v77[7] = v53;
  *&v52 = vzip1_s16(*&v41, v54);
  *&v41 = vzip2_s16(*&v41, v54);
  v64 = vzip1_s16(v56, *&v50);
  v65 = vzip2_s16(v56, *&v50);
  *&v50 = vzip1_s16(v59, v61);
  *&v53 = vzip2_s16(v59, v61);
  v66 = vzip1_s16(*&v40, v63);
  v67 = vzip2_s16(*&v40, v63);
  *&v40 = vzip1_s32(*&v52, v64);
  *&v68 = vzip2_s32(*&v52, v64);
  *&v52 = vzip1_s32(*&v41, v65);
  *&v41 = vzip2_s32(*&v41, v65);
  *(&v40 + 1) = vzip1_s32(*&v50, v66);
  *(&v68 + 1) = vzip2_s32(*&v50, v66);
  v77[8] = v40;
  v77[9] = v68;
  *(&v52 + 1) = vzip1_s32(*&v53, v67);
  *(&v41 + 1) = vzip2_s32(*&v53, v67);
  v77[10] = v52;
  v77[11] = v41;
  *&v41 = vzip1_s16(*&v51, v55);
  *&v51 = vzip2_s16(*&v51, v55);
  v69 = vzip1_s16(v57, v58);
  *&v68 = vzip2_s16(v57, v58);
  v70 = vzip1_s16(v60, *&v42);
  v71 = vzip2_s16(v60, *&v42);
  *&v50 = vzip1_s16(v62, *&v43);
  *&v52 = vzip1_s32(*&v41, v69);
  *&v72 = vzip2_s32(*&v41, v69);
  *(&v52 + 1) = vzip1_s32(v70, *&v50);
  *(&v72 + 1) = vzip2_s32(v70, *&v50);
  v77[12] = v52;
  v77[13] = v72;
  v73 = vzip2_s16(v62, *&v43);
  *&v43 = vzip1_s32(*&v51, *&v68);
  *&v51 = vzip2_s32(*&v51, *&v68);
  *(&v43 + 1) = vzip1_s32(v71, v73);
  *(&v51 + 1) = vzip2_s32(v71, v73);
  v77[14] = v43;
  v77[15] = v51;
  v74 = (a1 + 16);
  do
  {
    result = v77[v15];
    v76 = v77[v15 + 8];
    *(v74 - 1) = result;
    *v74 = v76;
    ++v15;
    v74 = (v74 + a2);
  }

  while (v15 != 8);
  return result;
}