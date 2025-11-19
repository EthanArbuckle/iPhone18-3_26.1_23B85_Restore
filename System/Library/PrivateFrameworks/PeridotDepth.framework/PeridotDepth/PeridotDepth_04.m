uint64_t peridot::PeridotUserOutput::depthPerPixel(uint64_t a1, double a2, double a3, int8x8_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8, _BYTE *a9, uint64_t a10)
{
  v76 = *MEMORY[0x277D85DE8];
  v73 = 0;
  memset(v72, 0, sizeof(v72));
  v75 = 0x4040000000000000;
  *(v72 + 4) = 0x3F0000003FC00000;
  v74 = 0x3FC000003F000000;
  v69 = 0u;
  v70 = 0u;
  v68 = 0u;
  v13 = a10 + 136;
  v14 = (a6 + 128);
  v15 = (a8 + 40);
  v16 = 14;
  result = 3;
  v71 = 0x4080000000000000;
  *(&v68 + 4) = 0x3F80000040000000;
  HIDWORD(v70) = 1077936128;
  do
  {
    v18 = *(v14 - 8);
    v19 = *(v18 + 8);
    v20 = *(v14 - 12);
    v21 = *(v20 + 8);
    v22 = *(v14 - 4);
    v23 = *(v22 + 8);
    v24 = *v14;
    v25 = *(*v14 + 8);
    v26 = *(v18 + 88);
    v27 = *(v20 + 88);
    v28 = v19 > 0.99;
    if (v21 > 0.99)
    {
      ++v28;
    }

    if (v23 > 0.99)
    {
      ++v28;
    }

    if (v25 > 0.99)
    {
      ++v28;
    }

    if (v26 > 0.99)
    {
      ++v28;
    }

    if (v27 > 0.99)
    {
      ++v28;
    }

    if (v28 <= 1)
    {
      v51 = fmaxf(v19, 0.0);
      v52 = v21 > v51;
      if (v21 > v51)
      {
        v51 = *(v20 + 8);
      }

      if (v23 > v51)
      {
        v52 = 2;
        v51 = *(v22 + 8);
      }

      if (v25 > v51)
      {
        v52 = 3;
        v51 = *(*v14 + 8);
      }

      if (v26 <= v51)
      {
        v53 = v51;
      }

      else
      {
        v53 = *(v18 + 88);
      }

      if (v26 <= v51)
      {
        v54 = v52;
      }

      else
      {
        v54 = 0;
      }

      v49 = v26 > v51 || v27 > v53;
      if (v27 > v53)
      {
        v50 = 1;
      }

      else
      {
        v50 = v54;
      }

      if (v27 <= v53)
      {
        v27 = v53;
      }

      if (v27 < 0.0)
      {
LABEL_2:
        *(a1 + 200) = 0;
        *(a1 + 176) = 0;
        *(a1 + 184) = 0;
        *(a1 + 192) = 0;
        *(a1 + 196) = 0;
        goto LABEL_3;
      }
    }

    else
    {
      if (v19 <= 0.99)
      {
        v29 = 0.0;
      }

      else
      {
        v29 = 1.0;
      }

      v30 = fmaxf(*(v15 - 9) * v29, 0.0);
      if (v21 <= 0.99)
      {
        v31 = 0.0;
      }

      else
      {
        v31 = 1.0;
      }

      v32 = *(v15 - 8) * v31;
      v33 = v32 > v30;
      if (v32 > v30)
      {
        v30 = v32;
      }

      if (v23 <= 0.99)
      {
        v34 = 0.0;
      }

      else
      {
        v34 = 1.0;
      }

      v35 = *(v15 - 6) * v34;
      if (v35 <= v30)
      {
        v35 = v30;
      }

      else
      {
        v33 = 2;
      }

      if (v25 <= 0.99)
      {
        v36 = 0.0;
      }

      else
      {
        v36 = 1.0;
      }

      v37 = *(v15 - 5) * v36;
      if (v37 <= v35)
      {
        v37 = v35;
      }

      else
      {
        v33 = 3;
      }

      if (v26 <= 0.99)
      {
        v38 = 0.0;
      }

      else
      {
        v38 = 1.0;
      }

      v39 = *v15 * v38;
      if (v39 <= v37)
      {
        v40 = v37;
      }

      else
      {
        v40 = *v15 * v38;
      }

      if (v27 <= 0.99)
      {
        v41 = 0.0;
      }

      else
      {
        v41 = 1.0;
      }

      v42 = v15[1] * v41;
      v43 = v42 > v40;
      if (v39 > v37)
      {
        v33 = 0;
        v43 = 1;
      }

      if (v42 <= v40)
      {
        v42 = v40;
      }

      else
      {
        v33 = 1;
      }

      v44 = v15[3] * 0.0;
      if (v44 <= v42)
      {
        v45 = v42;
      }

      else
      {
        v45 = v15[3] * 0.0;
      }

      v46 = v15[4] * 0.0;
      if (v44 <= v42)
      {
        v47 = v33;
      }

      else
      {
        v47 = 2;
      }

      v48 = v44 > v42 || v46 > v45;
      v49 = v48 || v43;
      if (v46 <= v45)
      {
        v50 = v47;
      }

      else
      {
        v50 = 3;
      }

      if (v46 <= v45)
      {
        v27 = v45;
      }

      else
      {
        v27 = v15[4] * 0.0;
      }
    }

    if (v27 <= 0.0)
    {
      goto LABEL_2;
    }

    v55 = qword_2247A6890[v50];
    if (v55 > 11)
    {
      if (v55 == 12)
      {
        v56 = 0;
        v58 = v23 * 0.75;
        v59 = *(v22 + 12);
        *(a1 + 176) = *(v22 + 16);
        *(a1 + 180) = v58;
        *(a1 + 200) = 0;
        a4.i32[0] = *(v22 + 4);
        *(a1 + 184) = a4.i32[0];
        *(a1 + 188) = 0;
        *(a1 + 192) = v59;
        v60 = 11;
      }

      else
      {
        if (v55 != 14)
        {
          goto LABEL_94;
        }

        v58 = v25 * 0.75;
        v59 = *(v24 + 12);
        v61 = *(v24 + 16);
        *(a1 + 176) = v61;
        *(a1 + 180) = v58;
        *(a1 + 200) = 0;
        *(a1 + 184) = *(v24 + 4);
        *(a1 + 188) = 0;
        *(a1 + 192) = v59;
        *&a4 = v61;
        if (*&a4 < 3.0e-10)
        {
          *(a1 + 180) = 0;
          *(a1 + 196) = v59;
          goto LABEL_3;
        }

        v56 = 0;
        v60 = 13;
      }
    }

    else
    {
      v56 = v49;
      if (v55 != 2)
      {
        if (v55 == 3)
        {
          v57 = v20 + 80 * v49;
          a4.i32[0] = *(v57 + 4);
          v58 = *(v57 + 8) * 0.75;
          v59 = *(v57 + 12);
          *(a1 + 176) = *(v57 + 16);
          *(a1 + 180) = v58;
          *(a1 + 200) = 0;
          *(a1 + 184) = a4.i32[0];
          *(a1 + 188) = 0;
          *(a1 + 192) = v59;
          v60 = 2;
          goto LABEL_98;
        }

LABEL_94:
        peridot_depth_log("Could not reach here if rmsval>0", 80, v72, 1118306304, &v68, qword_2247A6D48, 1065353216, v68, v69, v70, v71);
        result = 3;
        v56 = 0;
        v59 = *(a1 + 192);
        v58 = *(a1 + 180);
        v60 = v55 - 1;
        goto LABEL_98;
      }

      v62 = v18 + 80 * v49;
      a4.i32[0] = *(v62 + 4);
      v58 = *(v62 + 8) * 0.75;
      v59 = *(v62 + 12);
      *(a1 + 176) = *(v62 + 16);
      *(a1 + 180) = v58;
      *(a1 + 200) = 0;
      *(a1 + 184) = a4.i32[0];
      *(a1 + 188) = 0;
      *(a1 + 192) = v59;
      v60 = 1;
    }

LABEL_98:
    *(a1 + 196) = v59;
    if (v58 > 0.0)
    {
      v63 = *(v72 + v60);
      if (((v50 == 1) & *a9) != 0)
      {
        v63 = v63 + -1.0;
      }

      v64 = -0.5 - *a7;
      a4.i8[0] = a7[14];
      a4 = vmovl_s16(*&vmovl_s8(a4)).u64[0];
      *(a1 + 208) = v64 + 84.0;
      *(a1 + 212) = v63 + a4.i32[0];
      v65 = *(&v68 + v60);
      v66 = qword_2247A6D48[v60];
      *(a1 + 4 * v66 + 216) = 1065353216;
      *(v13 + 8 * v66) = v56;
      v67 = *(a1 + 260) & 0x1FFFFFFF | (v65 << 29);
      *(a1 + 260) = v67;
      if ((*(a1 + 86) & 4) != 0)
      {
        *(a1 + 260) = v67 | 0x40000;
      }
    }

LABEL_3:
    v13 += 216;
    v14 += 24;
    ++a7;
    ++a9;
    v15 += 27;
    a1 += 308;
    --v16;
  }

  while (v16);
  return result;
}

_DWORD *peridot::PeridotUserOutput::setT0Flags(_DWORD *result, uint64_t a2, uint8x8_t a3)
{
  a3.i32[0] = *(a2 + 1192);
  v3 = vmovl_u8(a3).u64[0];
  v5 = *(a2 + 1196);
  v4 = *(a2 + 1212);
  v6 = vandq_s8(vcltzq_s8(vshlq_n_s8(v4, 7uLL)), xmmword_2247A4660);
  v7 = vandq_s8(vcltzq_s8(vshlq_n_s8(v5, 7uLL)), xmmword_2247A4660);
  v8 = vaddv_s16(vand_s8(vcltz_s16(vshl_n_s16(v3, 0xFuLL)), 0x8000400020001)) & 0xF;
  if (vaddvq_s16(vzip1q_s8(v7, vextq_s8(v7, v7, 8uLL))) | vaddvq_s16(vzip1q_s8(v6, vextq_s8(v6, v6, 8uLL))))
  {
    v9 = 0;
  }

  else
  {
    v9 = v8 == 0;
  }

  if (v9)
  {
    return result;
  }

  if (v3.i8[0])
  {
    result[21] |= 0x800000u;
  }

  v10 = v4.i64[0];
  v4.i32[0] = HIWORD(v5.i32[0]) & 1;
  if (v5.i8[8])
  {
    result[43] |= 0x800000u;
  }

  if ((v10 & 0x100000000) != 0)
  {
    result[65] |= 0x800000u;
  }

  v4.i8[2] = (v5.i32[0] & 0x40000) != 0;
  v4.i8[1] = (v5.i32[0] & 0x20000) != 0;
  v11 = vuzp1_s8(v3, *v4.i8).u32[0];
  if ((v11 & 0x100) != 0)
  {
    result[98] |= 0x800000u;
  }

  if (v5.i8[9])
  {
    result[120] |= 0x800000u;
  }

  if ((v10 & 0x10000000000) != 0)
  {
    result[142] |= 0x800000u;
  }

  if ((v11 & 0x10000) != 0)
  {
    result[175] |= 0x800000u;
  }

  if (v5.i8[10])
  {
    result[197] |= 0x800000u;
  }

  if (v4.i8[6])
  {
    result[219] |= 0x800000u;
  }

  if ((v11 & 0x1000000) != 0)
  {
    result[252] |= 0x800000u;
  }

  if (v5.i8[11])
  {
    result[274] |= 0x800000u;
  }

  if (v4.i8[7])
  {
    result[296] |= 0x800000u;
  }

  if (v5.i8[0])
  {
    result[329] |= 0x800000u;
  }

  if (v5.i8[12])
  {
    result[351] |= 0x800000u;
  }

  if (v4.i8[8])
  {
    result[373] |= 0x800000u;
  }

  if (v5.i8[1])
  {
    result[406] |= 0x800000u;
  }

  if (v5.i8[13])
  {
    result[428] |= 0x800000u;
  }

  if (v4.i8[9])
  {
    result[450] |= 0x800000u;
  }

  if (v4.i8[0])
  {
    result[483] |= 0x800000u;
  }

  if (v5.i8[14])
  {
    result[505] |= 0x800000u;
  }

  if (v4.i8[10])
  {
    result[527] |= 0x800000u;
  }

  if (v5.i8[3])
  {
    result[560] |= 0x800000u;
  }

  if (v5.i8[15])
  {
    result[582] |= 0x800000u;
  }

  if (v4.i8[11])
  {
    result[604] |= 0x800000u;
  }

  if (v5.i8[4])
  {
    result[637] |= 0x800000u;
  }

  if (v10)
  {
    result[659] |= 0x800000u;
  }

  if (v4.i8[12])
  {
    result[681] |= 0x800000u;
  }

  if (v5.i8[5])
  {
    result[714] |= 0x800000u;
  }

  if ((v10 & 0x100) != 0)
  {
    result[736] |= 0x800000u;
  }

  if ((v4.i8[13] & 1) == 0)
  {
    v12 = BYTE2(v10) & 1;
    if ((v5.i8[6] & 1) == 0)
    {
      goto LABEL_65;
    }

LABEL_77:
    result[791] |= 0x800000u;
    if ((v12 & 1) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_66;
  }

  result[758] |= 0x800000u;
  v12 = BYTE2(v10) & 1;
  if (v5.i8[6])
  {
    goto LABEL_77;
  }

LABEL_65:
  if (v12)
  {
LABEL_66:
    result[813] |= 0x800000u;
  }

LABEL_67:
  if (*(a2 + 1226) == 1)
  {
    result[835] |= 0x800000u;
  }

  if (*(a2 + 1203) == 1)
  {
    result[868] |= 0x800000u;
  }

  if (*(a2 + 1215) == 1)
  {
    result[890] |= 0x800000u;
  }

  if (*(a2 + 1227) == 1)
  {
    result[912] |= 0x800000u;
  }

  return result;
}

void peridot::PeridotUserOutput::fusedTofNormal(uint64_t a1, float32x4_t **a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, float *a7, _DWORD *a8)
{
  if (a4[1] != *a4)
  {
    operator new();
  }

  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 24) = 0;
  *(a6 + 16) = 0;
  v8 = *a5;
  v9 = *(a5 + 8) - *a5;
  if (v9)
  {
    v10 = v9 >> 3;
    if (v10 <= 1)
    {
      v10 = 1;
    }

    v11 = 0;
    do
    {
      v12 = *v11++;
      v13 = v12;
      v14 = *v8++;
      *(a6 + 4 * v14) = v13;
      --v10;
    }

    while (v10);
  }

  v15 = *a2;
  *a7 = 0.0;
  v16 = a2[1] - v15;
  if (!v16)
  {
    *a8 = 0;
    return;
  }

  v17 = v16 >> 2;
  if ((v16 >> 2) <= 1)
  {
    v18 = 1;
  }

  else
  {
    v18 = v16 >> 2;
  }

  v19 = 0.0;
  if (v17 > 0xB)
  {
    v20 = 0;
    v27 = (a7 + 1);
    v29 = 4 * v18 > a7 && v27 != 0;
    if ((v15 >= v27 || &v15->f32[v18] <= a7) && !v29)
    {
      v20 = v18 & 0xFFFFFFFFFFFFFFF8;
      v31 = 16;
      v32 = v15 + 1;
      v33 = 0uLL;
      v34 = v18 & 0xFFFFFFFFFFFFFFF8;
      v35 = 0uLL;
      do
      {
        v33 = vmlaq_f32(v33, v32[-1], *(v31 - 16));
        v35 = vmlaq_f32(v35, *v32, *v31);
        v31 += 32;
        v32 += 2;
        v34 -= 8;
      }

      while (v34);
      v36 = vaddq_f32(v35, v33);
      v19 = vaddv_f32(*&vpaddq_f32(v36, v36));
      *a7 = v19;
      if (v17 == v20)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    v20 = 0;
  }

  v21 = v18 - v20;
  v22 = (4 * v20);
  v23 = (v22 + v15);
  do
  {
    v24 = *v23++;
    v25 = v24;
    v26 = *v22++;
    v19 = v19 + (v26 * v25);
    *a7 = v19;
    --v21;
  }

  while (v21);
LABEL_16:
  *a8 = 0;

  operator delete(0);
}

void sub_2246C71BC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void peridot::PeridotUserOutput::fusedTofByEmpiricalStd(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, float *a7, float *a8)
{
  v8 = a8;
  v9 = a7;
  v50 = *MEMORY[0x277D85DE8];
  v11 = *a2;
  v10 = *(a2 + 8);
  v12 = (v10 - *a2) >> 2;
  if (v10 != *a2)
  {
    if (v12 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = (v10 - *a2) >> 2;
    }

    if (v12 > 7)
    {
      v14 = v13 & 0xFFFFFFFFFFFFFFF8;
      v16 = (v11 + 16);
      v17 = 0uLL;
      v18 = v13 & 0xFFFFFFFFFFFFFFF8;
      v19 = 0uLL;
      do
      {
        v17 = vaddq_f32(v16[-1], v17);
        v19 = vaddq_f32(*v16, v19);
        v16 += 2;
        v18 -= 8;
      }

      while (v18);
      v20 = vaddq_f32(v19, v17);
      v15 = vaddv_f32(*&vpaddq_f32(v20, v20));
      if (v12 == v14)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v14 = 0;
      v15 = 0.0;
    }

    v21 = v13 - v14;
    v22 = &v11[4 * v14];
    do
    {
      v23 = *v22++;
      v15 = v23 + v15;
      --v21;
    }

    while (v21);
LABEL_13:
    if ((v12 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  v47 = 0;
  v48 = 0;
  v49 = 0;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  __p = 0;
  v39 = 0;
  v40 = 0;
  if ((0.0 / v12) >= 0.0000000015)
  {
    v33 = a7;
    v34 = a8;
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(&v47, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(&v44, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 2);
    std::vector<unsigned long>::__assign_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&v41, *a5, *(a5 + 8), (*(a5 + 8) - *a5) >> 3);
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(&__p, *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 2);
    v26 = v41;
    if (v42 != v41)
    {
      if (!(((v42 - v41) >> 3) >> 62))
      {
        operator new();
      }

      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    goto LABEL_25;
  }

  v25 = *a2;
  v24 = *(a2 + 8);
  if (v24 != *a2)
  {
    v33 = a7;
    v34 = a8;
    v26 = 0;
    v27 = 0;
    do
    {
      if (*(*a5 + 8 * v27) > 0xAuLL)
      {
        operator new();
      }

      *((v27 >> 3) & 0x1FFFFFFFFFFFFFF8) |= 1 << v27;
      ++v27;
    }

    while (v27 < (v24 - v25) >> 2);
    v48 = 0;
    v49 = 0;
    v46 = 0;
    v47 = 0;
    v44 = 0;
    v45 = 0;
    v42 = 0;
    v43 = 0;
    v40 = 0;
    v41 = 0;
    __p = 0;
    v39 = 0;
LABEL_25:
    v9 = v33;
    v8 = v34;
    goto LABEL_27;
  }

  v26 = 0;
LABEL_27:
  *v9 = 0.0;
  *v8 = 0.0;
  if (*v9 > 0.0)
  {
    v28 = __p;
    v29 = *__p;
    if (v39 != __p)
    {
      v30 = (v39 - __p) >> 2;
      if (v30 <= 1)
      {
        v30 = 1;
      }

      do
      {
        v31 = *v28++;
        v32 = v31;
        if (v31 > v29)
        {
          v29 = v32;
        }

        --v30;
      }

      while (v30);
    }

    *v8 = v29;
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (v26)
  {
    v42 = v26;
    operator delete(v26);
  }

  if (v44)
  {
    operator delete(v44);
  }

  if (v47)
  {
    operator delete(v47);
  }
}

void sub_2246C8214(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, void *a54)
{
  if (v54)
  {
    operator delete(v54);
  }

  operator delete(v55);
  if (a45)
  {
    operator delete(a45);
    v57 = a48;
    if (!a48)
    {
LABEL_5:
      v58 = a51;
      if (!a51)
      {
        goto LABEL_6;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v57 = a48;
    if (!a48)
    {
      goto LABEL_5;
    }
  }

  operator delete(v57);
  v58 = a51;
  if (!a51)
  {
LABEL_6:
    v59 = a54;
    if (!a54)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(v58);
  v59 = a54;
  if (!a54)
  {
LABEL_7:
    if (!a14)
    {
      goto LABEL_8;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(v59);
  if (!a14)
  {
LABEL_8:
    _Unwind_Resume(a1);
  }

LABEL_13:
  operator delete(a14);
  _Unwind_Resume(a1);
}

char *std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 2)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v6 >> 1;
      if (v6 >> 1 <= a4)
      {
        v9 = a4;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFFCLL;
      v11 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if (!(v11 >> 62))
      {
        operator new();
      }
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (a4 <= (v12 - result) >> 2)
  {
    v17 = a3 - a2;
    if (v17)
    {
      v18 = result;
      memmove(result, a2, v17);
      result = v18;
    }

    v16 = &result[v17];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    v16 = &v12[v15];
  }

  a1[1] = v16;
  return result;
}

char *std::vector<unsigned long>::__assign_with_size[abi:ne200100]<unsigned long *,unsigned long *>(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 3)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v6 >> 2;
      if (v6 >> 2 <= a4)
      {
        v9 = a4;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFF8;
      v11 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (a4 <= (v12 - result) >> 3)
  {
    v17 = a3 - a2;
    if (v17)
    {
      v18 = result;
      memmove(result, a2, v17);
      result = v18;
    }

    v16 = &result[v17];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    v16 = &v12[v15];
  }

  a1[1] = v16;
  return result;
}

void peridot::PeridotUserOutput::fusedTofMacro(uint64_t a1, uint64_t *a2, uint64_t a3, float **a4, uint64_t **a5, uint64_t a6, float *a7)
{
  v7 = a2;
  v8 = *a2;
  v59 = a2[1] - *a2;
  v9 = v59 >> 2;
  if (v59)
  {
    if (v9 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v59 >> 2;
    }

    if (v9 > 7)
    {
      v11 = v10 & 0xFFFFFFFFFFFFFFF8;
      v13 = v8 + 1;
      v14 = 0uLL;
      v15 = v10 & 0xFFFFFFFFFFFFFFF8;
      v16 = 0uLL;
      do
      {
        v14 = vaddq_f32(v13[-1], v14);
        v16 = vaddq_f32(*v13, v16);
        v13 += 2;
        v15 -= 8;
      }

      while (v15);
      v17 = vaddq_f32(v16, v14);
      v12 = vaddv_f32(*&vpaddq_f32(v17, v17));
      if (v9 == v11)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v11 = 0;
      v12 = 0.0;
    }

    v18 = v10 - v11;
    v19 = &v8->f32[v11];
    do
    {
      v20 = *v19++;
      v12 = v20 + v12;
      --v18;
    }

    while (v18);
LABEL_13:
    if ((v9 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  v21 = (0.0 / (v59 >> 2));
  if (v21 >= 0.0000000015)
  {
    v28 = *a2;
    v27 = a2[1];
    if (v21 >= 0.0000000023)
    {
      v33 = v27 - v28;
      if (v33)
      {
        v34 = 0;
        v35 = v33 >> 2;
        if (v35 <= 1)
        {
          v35 = 1;
        }

        do
        {
          *((v34 >> 3) & 0x1FFFFFFFFFFFFFF8) |= 1 << v34;
          ++v34;
        }

        while (v35 != v34);
      }
    }

    else
    {
      v29 = v27 - v28;
      if (v29)
      {
        v30 = 0;
        v31 = v29 >> 2;
        v32 = *a5;
        if (v31 <= 1)
        {
          v31 = 1;
        }

        do
        {
          if (v32[v30] >= 0xA)
          {
            *((v30 >> 3) & 0x1FFFFFFFFFFFFFF8) |= 1 << v30;
          }

          ++v30;
        }

        while (v31 != v30);
      }
    }
  }

  else
  {
    v22 = a2[1];
    v23 = v22 - *a2;
    if (v22 != *a2)
    {
      v24 = 0;
      v25 = v23 >> 2;
      v26 = *a5;
      if (v25 <= 1)
      {
        v25 = 1;
      }

      do
      {
        if (v26[v24] >= 0xB)
        {
          *((v24 >> 3) & 0x1FFFFFFFFFFFFFF8) |= 1 << v24;
        }

        ++v24;
      }

      while (v25 != v24);
    }
  }

  v36 = *a5;
  v37 = *a4;
  v38 = a5[1] - *a5;
  if (v38)
  {
    v39 = v38 >> 3;
    if (v39 <= 1)
    {
      v39 = 1;
    }

    v40 = *a4;
    do
    {
      v42 = *v36;
      if (*v36 == 10)
      {
        v41 = *v40 * 0.3;
        *v40 = v41;
      }

      else if (*v36 < 0xA)
      {
        goto LABEL_41;
      }

      *v36 = v42 - 8;
LABEL_41:
      ++v40;
      ++v36;
      --v39;
    }

    while (v39);
  }

  v43 = a4[1];
  if (v43 == v37)
  {
    v45 = a7;
  }

  else
  {
    v44 = 0;
    do
    {
      if ((*((v44 >> 3) & 0x1FFFFFFFFFFFFFF8) >> v44))
      {
        operator new();
      }

      ++v44;
    }

    while (v44 < v43 - v37);
    v45 = a7;
    v7 = a2;
  }

  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 24) = 0;
  *(a6 + 16) = 0;
  v46 = *a5;
  v47 = a5[1];
  v48 = v47 - *a5;
  if (v47 != *a5)
  {
    v49 = 0;
    v50 = 0;
    v51 = v48 >> 3;
    if (v51 <= 1)
    {
      v51 = 1;
    }

    do
    {
      if ((*((v49 >> 3) & 0x1FFFFFFFFFFFFFF8) >> v49))
      {
        *(a6 + 4 * v46[v49]) = *(4 * v50++);
      }

      ++v49;
    }

    while (v51 != v49);
  }

  *v45 = 0.0;
  v52 = *v7;
  v53 = v7[1];
  v54 = v53 - *v7;
  if (v53 != *v7)
  {
    v55 = 0;
    v56 = 0;
    v57 = v54 >> 2;
    if (v57 <= 1)
    {
      v57 = 1;
    }

    v58 = 0.0;
    do
    {
      if ((*((v55 >> 3) & 0x1FFFFFFFFFFFFFF8) >> v55))
      {
        v58 = v58 + (*(4 * v56) * *(v52 + 4 * v55));
        *v45 = v58;
        ++v56;
      }

      ++v55;
    }

    while (v57 != v55);
  }
}

void sub_2246C8D38(_Unwind_Exception *a1)
{
  if (v2)
  {
    operator delete(v2);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t peridot::PeridotUserOutput::debugPrint(peridot::PeridotUserOutput *this)
{
  puts("tof: ");
  printf("%.15f ", *this);
  printf("%.15f ", *(this + 77));
  printf("%.15f ", *(this + 154));
  printf("%.15f ", *(this + 231));
  printf("%.15f ", *(this + 308));
  printf("%.15f ", *(this + 385));
  printf("%.15f ", *(this + 462));
  printf("%.15f ", *(this + 539));
  printf("%.15f ", *(this + 616));
  printf("%.15f ", *(this + 693));
  printf("%.15f ", *(this + 770));
  printf("%.15f ", *(this + 847));
  printf("%.15f ", *(this + 924));
  printf("%.15f ", *(this + 1001));
  putchar(10);
  printf("%.15f ", *(this + 22));
  printf("%.15f ", *(this + 99));
  printf("%.15f ", *(this + 176));
  printf("%.15f ", *(this + 253));
  printf("%.15f ", *(this + 330));
  printf("%.15f ", *(this + 407));
  printf("%.15f ", *(this + 484));
  printf("%.15f ", *(this + 561));
  printf("%.15f ", *(this + 638));
  printf("%.15f ", *(this + 715));
  printf("%.15f ", *(this + 792));
  printf("%.15f ", *(this + 869));
  printf("%.15f ", *(this + 946));
  printf("%.15f ", *(this + 1023));
  putchar(10);
  printf("%.15f ", *(this + 44));
  printf("%.15f ", *(this + 121));
  printf("%.15f ", *(this + 198));
  printf("%.15f ", *(this + 275));
  printf("%.15f ", *(this + 352));
  printf("%.15f ", *(this + 429));
  printf("%.15f ", *(this + 506));
  printf("%.15f ", *(this + 583));
  printf("%.15f ", *(this + 660));
  printf("%.15f ", *(this + 737));
  printf("%.15f ", *(this + 814));
  printf("%.15f ", *(this + 891));
  printf("%.15f ", *(this + 968));
  printf("%.15f ", *(this + 1045));
  putchar(10);
  putchar(10);
  puts("confidence: ");
  printf("%.15f ", *(this + 1));
  printf("%.15f ", *(this + 78));
  printf("%.15f ", *(this + 155));
  printf("%.15f ", *(this + 232));
  printf("%.15f ", *(this + 309));
  printf("%.15f ", *(this + 386));
  printf("%.15f ", *(this + 463));
  printf("%.15f ", *(this + 540));
  printf("%.15f ", *(this + 617));
  printf("%.15f ", *(this + 694));
  printf("%.15f ", *(this + 771));
  printf("%.15f ", *(this + 848));
  printf("%.15f ", *(this + 925));
  printf("%.15f ", *(this + 1002));
  putchar(10);
  printf("%.15f ", *(this + 23));
  printf("%.15f ", *(this + 100));
  printf("%.15f ", *(this + 177));
  printf("%.15f ", *(this + 254));
  printf("%.15f ", *(this + 331));
  printf("%.15f ", *(this + 408));
  printf("%.15f ", *(this + 485));
  printf("%.15f ", *(this + 562));
  printf("%.15f ", *(this + 639));
  printf("%.15f ", *(this + 716));
  printf("%.15f ", *(this + 793));
  printf("%.15f ", *(this + 870));
  printf("%.15f ", *(this + 947));
  printf("%.15f ", *(this + 1024));
  putchar(10);
  printf("%.15f ", *(this + 45));
  printf("%.15f ", *(this + 122));
  printf("%.15f ", *(this + 199));
  printf("%.15f ", *(this + 276));
  printf("%.15f ", *(this + 353));
  printf("%.15f ", *(this + 430));
  printf("%.15f ", *(this + 507));
  printf("%.15f ", *(this + 584));
  printf("%.15f ", *(this + 661));
  printf("%.15f ", *(this + 738));
  printf("%.15f ", *(this + 815));
  printf("%.15f ", *(this + 892));
  printf("%.15f ", *(this + 969));
  printf("%.15f ", *(this + 1046));
  putchar(10);
  putchar(10);
  puts("SNR: ");
  printf("%.15f ", *(this + 2));
  printf("%.15f ", *(this + 79));
  printf("%.15f ", *(this + 156));
  printf("%.15f ", *(this + 233));
  printf("%.15f ", *(this + 310));
  printf("%.15f ", *(this + 387));
  printf("%.15f ", *(this + 464));
  printf("%.15f ", *(this + 541));
  printf("%.15f ", *(this + 618));
  printf("%.15f ", *(this + 695));
  printf("%.15f ", *(this + 772));
  printf("%.15f ", *(this + 849));
  printf("%.15f ", *(this + 926));
  printf("%.15f ", *(this + 1003));
  putchar(10);
  printf("%.15f ", *(this + 24));
  printf("%.15f ", *(this + 101));
  printf("%.15f ", *(this + 178));
  printf("%.15f ", *(this + 255));
  printf("%.15f ", *(this + 332));
  printf("%.15f ", *(this + 409));
  printf("%.15f ", *(this + 486));
  printf("%.15f ", *(this + 563));
  printf("%.15f ", *(this + 640));
  printf("%.15f ", *(this + 717));
  printf("%.15f ", *(this + 794));
  printf("%.15f ", *(this + 871));
  printf("%.15f ", *(this + 948));
  printf("%.15f ", *(this + 1025));
  putchar(10);
  printf("%.15f ", *(this + 46));
  printf("%.15f ", *(this + 123));
  printf("%.15f ", *(this + 200));
  printf("%.15f ", *(this + 277));
  printf("%.15f ", *(this + 354));
  printf("%.15f ", *(this + 431));
  printf("%.15f ", *(this + 508));
  printf("%.15f ", *(this + 585));
  printf("%.15f ", *(this + 662));
  printf("%.15f ", *(this + 739));
  printf("%.15f ", *(this + 816));
  printf("%.15f ", *(this + 893));
  printf("%.15f ", *(this + 970));
  printf("%.15f ", *(this + 1047));
  putchar(10);
  putchar(10);
  puts("val: ");
  printf("%.15f ", *(this + 6));
  printf("%.15f ", *(this + 83));
  printf("%.15f ", *(this + 160));
  printf("%.15f ", *(this + 237));
  printf("%.15f ", *(this + 314));
  printf("%.15f ", *(this + 391));
  printf("%.15f ", *(this + 468));
  printf("%.15f ", *(this + 545));
  printf("%.15f ", *(this + 622));
  printf("%.15f ", *(this + 699));
  printf("%.15f ", *(this + 776));
  printf("%.15f ", *(this + 853));
  printf("%.15f ", *(this + 930));
  printf("%.15f ", *(this + 1007));
  putchar(10);
  printf("%.15f ", *(this + 28));
  printf("%.15f ", *(this + 105));
  printf("%.15f ", *(this + 182));
  printf("%.15f ", *(this + 259));
  printf("%.15f ", *(this + 336));
  printf("%.15f ", *(this + 413));
  printf("%.15f ", *(this + 490));
  printf("%.15f ", *(this + 567));
  printf("%.15f ", *(this + 644));
  printf("%.15f ", *(this + 721));
  printf("%.15f ", *(this + 798));
  printf("%.15f ", *(this + 875));
  printf("%.15f ", *(this + 952));
  printf("%.15f ", *(this + 1029));
  putchar(10);
  printf("%.15f ", *(this + 50));
  printf("%.15f ", *(this + 127));
  printf("%.15f ", *(this + 204));
  printf("%.15f ", *(this + 281));
  printf("%.15f ", *(this + 358));
  printf("%.15f ", *(this + 435));
  printf("%.15f ", *(this + 512));
  printf("%.15f ", *(this + 589));
  printf("%.15f ", *(this + 666));
  printf("%.15f ", *(this + 743));
  printf("%.15f ", *(this + 820));
  printf("%.15f ", *(this + 897));
  printf("%.15f ", *(this + 974));
  printf("%.15f ", *(this + 1051));
  putchar(10);
  putchar(10);
  puts("Qs: ");
  printf("%.15f ", *(this + 3));
  printf("%.15f ", *(this + 80));
  printf("%.15f ", *(this + 157));
  printf("%.15f ", *(this + 234));
  printf("%.15f ", *(this + 311));
  printf("%.15f ", *(this + 388));
  printf("%.15f ", *(this + 465));
  printf("%.15f ", *(this + 542));
  printf("%.15f ", *(this + 619));
  printf("%.15f ", *(this + 696));
  printf("%.15f ", *(this + 773));
  printf("%.15f ", *(this + 850));
  printf("%.15f ", *(this + 927));
  printf("%.15f ", *(this + 1004));
  putchar(10);
  printf("%.15f ", *(this + 25));
  printf("%.15f ", *(this + 102));
  printf("%.15f ", *(this + 179));
  printf("%.15f ", *(this + 256));
  printf("%.15f ", *(this + 333));
  printf("%.15f ", *(this + 410));
  printf("%.15f ", *(this + 487));
  printf("%.15f ", *(this + 564));
  printf("%.15f ", *(this + 641));
  printf("%.15f ", *(this + 718));
  printf("%.15f ", *(this + 795));
  printf("%.15f ", *(this + 872));
  printf("%.15f ", *(this + 949));
  printf("%.15f ", *(this + 1026));
  putchar(10);
  printf("%.15f ", *(this + 47));
  printf("%.15f ", *(this + 124));
  printf("%.15f ", *(this + 201));
  printf("%.15f ", *(this + 278));
  printf("%.15f ", *(this + 355));
  printf("%.15f ", *(this + 432));
  printf("%.15f ", *(this + 509));
  printf("%.15f ", *(this + 586));
  printf("%.15f ", *(this + 663));
  printf("%.15f ", *(this + 740));
  printf("%.15f ", *(this + 817));
  printf("%.15f ", *(this + 894));
  printf("%.15f ", *(this + 971));
  printf("%.15f ", *(this + 1048));
  putchar(10);

  return putchar(10);
}

uint64_t H16ISPGetCFPreferenceNumber(const __CFString *a1, const __CFString *a2, uint64_t a3)
{
  v4 = CFPreferencesCopyValue(a1, a2, *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  if (v4)
  {
    v5 = v4;
    v6 = CFGetTypeID(v4);
    if (v6 == CFStringGetTypeID())
    {
      IntValue = CFStringGetIntValue(v5);
      if (!IntValue)
      {
        SystemEncoding = CFStringGetSystemEncoding();
        CStringPtr = CFStringGetCStringPtr(v5, SystemEncoding);
        if (!CStringPtr || (IntValue = strtol(CStringPtr, 0, 0), !IntValue))
        {
          IntValue = 1;
          if (CFStringCompare(v5, @"true", 1uLL))
          {
            IntValue = 1;
            if (CFStringCompare(v5, @"yes", 1uLL))
            {
              if (CFStringCompare(v5, @"false", 1uLL) == kCFCompareEqualTo || CFStringCompare(v5, @"no", 1uLL) == kCFCompareEqualTo || (IntValue = a3, CFStringCompare(v5, @"0", 1uLL) == kCFCompareEqualTo))
              {
                IntValue = 0;
              }
            }
          }
        }
      }
    }

    else
    {
      v10 = CFGetTypeID(v5);
      if (v10 == CFNumberGetTypeID())
      {
        valuePtr = 0;
        if (CFNumberGetValue(v5, kCFNumberIntType, &valuePtr))
        {
          IntValue = valuePtr;
        }

        else
        {
          IntValue = a3;
        }
      }

      else
      {
        v11 = CFGetTypeID(v5);
        IntValue = a3;
        if (v11 == CFBooleanGetTypeID())
        {
          IntValue = CFEqual(v5, *MEMORY[0x277CBED28]);
        }
      }
    }

    CFRelease(v5);
    return IntValue;
  }

  return a3;
}

void ***std::__exception_guard_exceptions<std::vector<std::vector<unsigned long>>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](void ***a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        v6 = v2[1];
        do
        {
          v8 = *(v6 - 3);
          v6 -= 24;
          v7 = v8;
          if (v8)
          {
            *(v4 - 2) = v7;
            operator delete(v7);
          }

          v4 = v6;
        }

        while (v6 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<unsigned long>>,std::vector<unsigned long>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 16);
    v3 = **(a1 + 8);
    if (v2 != v3)
    {
      v4 = **(a1 + 16);
      do
      {
        v6 = *(v4 - 24);
        v4 -= 24;
        v5 = v6;
        if (v6)
        {
          *(v2 - 16) = v5;
          operator delete(v5);
        }

        v2 = v4;
      }

      while (v4 != v3);
    }
  }

  return a1;
}

void sub_2246CB434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  MatrixNxPts<2u,double>::~MatrixNxPts(&a34);
  MatrixNxPts<3u,double>::~MatrixNxPts(v34 - 208);
  MatrixNxPts<2u,double>::~MatrixNxPts(v34 - 168);
  _Unwind_Resume(a1);
}

uint64_t MatrixNxPts<2u,double>::~MatrixNxPts(uint64_t result)
{
  *result = &unk_283809BF8;
  v1 = *(result + 8);
  if (v1 && *(result + 24) == 1)
  {
    v2 = result;
    MEMORY[0x22AA53170](v1, 0x1000C8000313F17);
    result = v2;
    *(v2 + 8) = 0;
    *(v2 + 32) = 0;
    *(v2 + 24) = 0;
  }

  *(result + 16) = 0;
  return result;
}

uint64_t MatrixNxPts<3u,double>::~MatrixNxPts(uint64_t result)
{
  *result = &unk_283809BF8;
  v1 = *(result + 8);
  if (v1 && *(result + 24) == 1)
  {
    v2 = result;
    MEMORY[0x22AA53170](v1, 0x1000C8000313F17);
    result = v2;
    *(v2 + 8) = 0;
    *(v2 + 32) = 0;
    *(v2 + 24) = 0;
  }

  *(result + 16) = 0;
  return result;
}

void MatrixNxPts<3u,double>::~MatrixNxPts(uint64_t a1)
{
  *a1 = &unk_283809BF8;
  v2 = *(a1 + 8);
  if (v2 && *(a1 + 24) == 1)
  {
    v3 = a1;
    MEMORY[0x22AA53170](v2, 0x1000C8000313F17);
    a1 = v3;
    *(v3 + 8) = 0;
    *(v3 + 32) = 0;
    *(v3 + 24) = 0;
  }

  *(a1 + 16) = 0;

  JUMPOUT(0x22AA531A0);
}

void MatrixNxPts<2u,double>::~MatrixNxPts(uint64_t a1)
{
  *a1 = &unk_283809BF8;
  v2 = *(a1 + 8);
  if (v2 && *(a1 + 24) == 1)
  {
    v3 = a1;
    MEMORY[0x22AA53170](v2, 0x1000C8000313F17);
    a1 = v3;
    *(v3 + 8) = 0;
    *(v3 + 32) = 0;
    *(v3 + 24) = 0;
  }

  *(a1 + 16) = 0;

  JUMPOUT(0x22AA531A0);
}

void sub_2246CBEE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  Matrix<double>::~Matrix(&a10);
  MatrixNxPts<1u,double>::~MatrixNxPts(&a15);
  Matrix<double>::~Matrix(&a20);
  Matrix<double>::~Matrix(&a25);
  Matrix<double>::~Matrix(&a30);
  Matrix<double>::~Matrix(&a35);
  Matrix<double>::~Matrix(v35 - 184);
  _Unwind_Resume(a1);
}

uint64_t MatrixNxPts<1u,double>::~MatrixNxPts(uint64_t result)
{
  *result = &unk_283809BF8;
  v1 = *(result + 8);
  if (v1 && *(result + 24) == 1)
  {
    v2 = result;
    MEMORY[0x22AA53170](v1, 0x1000C8000313F17);
    result = v2;
    *(v2 + 8) = 0;
    *(v2 + 32) = 0;
    *(v2 + 24) = 0;
  }

  *(result + 16) = 0;
  return result;
}

{
  *result = &unk_283809BF8;
  v1 = *(result + 8);
  if (v1 && *(result + 24) == 1)
  {
    v2 = result;
    MEMORY[0x22AA53170](v1, 0x1000C8000313F17);
    result = v2;
    *(v2 + 8) = 0;
    *(v2 + 32) = 0;
    *(v2 + 24) = 0;
  }

  *(result + 16) = 0;
  return result;
}

void MatrixNxPts<1u,double>::~MatrixNxPts(uint64_t a1)
{
  *a1 = &unk_283809BF8;
  v2 = *(a1 + 8);
  if (v2 && *(a1 + 24) == 1)
  {
    v3 = a1;
    MEMORY[0x22AA53170](v2, 0x1000C8000313F17);
    a1 = v3;
    *(v3 + 8) = 0;
    *(v3 + 32) = 0;
    *(v3 + 24) = 0;
  }

  *(a1 + 16) = 0;

  JUMPOUT(0x22AA531A0);
}

void sub_2246CE9AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  Matrix<double>::~Matrix(&a30);
  Matrix<double>::~Matrix(&a35);
  Matrix<double>::~Matrix(&a40);

  _Unwind_Resume(a1);
}

void sub_2246CEC98(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

float common::utils::prctile<double>(uint64_t a1, int a2)
{
  if (a2)
  {
    operator new();
  }

  std::__sort<std::__less<double,double> &,double *>();
  return 0.0;
}

void sub_2246CEF50(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Matrix<unsigned int>::~Matrix(uint64_t result)
{
  *result = &unk_283809D90;
  v1 = *(result + 8);
  if (v1 && *(result + 24) == 1)
  {
    v2 = result;
    MEMORY[0x22AA53170](v1, 0x1000C8052888210);
    result = v2;
    *(v2 + 8) = 0;
    *(v2 + 32) = 0;
    *(v2 + 24) = 0;
  }

  *(result + 16) = 0;
  return result;
}

void std::vector<std::vector<float>>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + a2;
    if (v7 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (v9 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = (8 * (v6 >> 3));
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = &v11[v12];
    v14 = &v11[-v6];
    memcpy(v14, v5, v6);
    *a1 = v14;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void ***std::vector<std::vector<std::vector<float>>>::~vector[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = a1[1];
      do
      {
        v8 = *(v5 - 3);
        v5 -= 3;
        v7 = v8;
        if (v8)
        {
          v9 = *(v3 - 2);
          v6 = v7;
          if (v9 != v7)
          {
            v10 = *(v3 - 2);
            do
            {
              v12 = *(v10 - 3);
              v10 -= 24;
              v11 = v12;
              if (v12)
              {
                *(v9 - 2) = v11;
                operator delete(v11);
              }

              v9 = v10;
            }

            while (v10 != v7);
            v6 = *v5;
          }

          *(v3 - 2) = v7;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_2246D44F0(_Unwind_Exception *a1)
{
  if (v2)
  {
    operator delete(v2);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void sub_2246D53E8(_Unwind_Exception *a1)
{
  if (v3)
  {
    operator delete(v3);
  }

  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void sub_2246D6668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  MEMORY[0x22AA53170](a40, 0x1000C8052888210);

  _Unwind_Resume(a1);
}

void gmoCoreAnalyticsTelemetry::init(gmoCoreAnalyticsTelemetry *this)
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315394;
    v4 = "init";
    v5 = 1024;
    v6 = 8;
    _os_log_impl(&dword_224668000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "GMO: %s: GMO Core Analytics Init, ver: %d", &v3, 0x12u);
  }

  v2 = time(0);
  CRandomGenerator::CRandomGenerator(&v3, v2);
  *&this->_homogTrackingLongTermCounter = 0;
  *&this->_coreAnalyticsHomographyAzul.highAmbient = 0u;
  *&this->_coreAnalyticsHomographyAzul.spotsMovementFromNominal2 = 0u;
  *&this->_coreAnalyticsHomographyAzul.spotsMovementFromOperationalPercentile = 0u;
  *&this->_coreAnalyticsHomographyAzul.hokClassifierParam2 = 0u;
  *&this->_coreAnalyticsHomographyAzul.hokClassifierParam6 = 0u;
  *&this->_coreAnalyticsLongTerm.sstpSpotMoveP95LongTerm = 0u;
  *&this->_longTermEventPersistentData.sessionCount = 0u;
  *&this->_longTermEventPersistentData.homogDoneCount = 0u;
  *&this->_longTermEventPersistentData.calibErrP95Arr[3] = 0u;
  *&this->_longTermEventPersistentData.calibErrP95Arr[7] = 0u;
  *&this->_longTermEventPersistentData.calibErrP95Arr[11] = 0u;
  *&this->_longTermEventPersistentData.calibErrP95Arr[15] = 0u;
  *&this->_longTermEventPersistentData.calibErrP95Arr[19] = 0u;
  *&this->_longTermEventPersistentData.calibErrP95Arr[23] = 0u;
  *&this->_longTermEventPersistentData.calibErrP95Arr[27] = 0u;
  *&this->_longTermEventPersistentData.calibErrP50Arr[1] = 0u;
  *&this->_longTermEventPersistentData.calibErrP50Arr[5] = 0u;
  *&this->_longTermEventPersistentData.calibErrP50Arr[9] = 0u;
  *&this->_longTermEventPersistentData.calibErrP50Arr[13] = 0u;
  *&this->_longTermEventPersistentData.calibErrP50Arr[17] = 0u;
  *&this->_longTermEventPersistentData.calibErrP50Arr[21] = 0u;
  *&this->_longTermEventPersistentData.calibErrP50Arr[25] = 0u;
  *(&this->_longTermEventPersistentData.calibErrP50Arr[28] + 1) = 0;
  CRandomGenerator::~CRandomGenerator(&v3);
}

void gmoCoreAnalyticsTelemetry::calcHomogStatsInitialData(gmoCoreAnalyticsTelemetry *this)
{
  v2 = time(0);
  CRandomGenerator::CRandomGenerator(v5, v2);
  v3 = CRandomGenerator::UniformRand(v5);
  *&this->_coreAnalyticsHomographyAzul.bankId = vcvt_s32_f32(vrnda_f32(vmul_n_f32(0x4150000040E00000, v3)));
  v4 = spotMovementBuckets[llroundf(v3 * 9.0)];
  this->_coreAnalyticsHomographyAzul.spotMovePercentile = v4;
  this->_coreAnalyticsHomographyAzul.prctileMoveBuckets = v4;
  CRandomGenerator::~CRandomGenerator(v5);
}

void gmoCoreAnalyticsTelemetry::reportHomogStats(gmoCoreAnalyticsTelemetry *this)
{
  v15 = *MEMORY[0x277D85DE8];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = ___ZN25gmoCoreAnalyticsTelemetry16reportHomogStatsEv_block_invoke;
  v8[3] = &__block_descriptor_40_e30___NSObject_OS_xpc_object__8__0l;
  v8[4] = this;
  v2 = MEMORY[0x22AA537B0](v8);
  v3 = analytics_send_event_lazy();
  v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v4)
    {
      *buf = 136315394;
      v10 = "reportHomogStats";
      v11 = 2080;
      v12 = "com.apple.JasperDepth.GMO.HomographyAzul";
      v5 = MEMORY[0x277D86220];
      v6 = "GMO: %s: Sent the %s event into the diagnostics system";
      v7 = 22;
LABEL_6:
      _os_log_impl(&dword_224668000, v5, OS_LOG_TYPE_DEFAULT, v6, buf, v7);
    }
  }

  else if (v4)
  {
    *buf = 136315650;
    v10 = "reportHomogStats";
    v11 = 2080;
    v12 = "com.apple.JasperDepth.GMO.HomographyAzul";
    v13 = 1024;
    v14 = v3;
    v5 = MEMORY[0x277D86220];
    v6 = "GMO: %s: Failed to send the %s event into the diagnostics system with err %d";
    v7 = 28;
    goto LABEL_6;
  }

  *&this->_coreAnalyticsHomographyAzul.hokClassifierParam5 = 0u;
  *&this->_coreAnalyticsHomographyAzul.spotsMovementFromOperationalPercentile = 0u;
  *&this->_coreAnalyticsHomographyAzul.hokClassifierParam2 = 0u;
  *&this->_coreAnalyticsHomographyAzul.highAmbient = 0u;
  *&this->_coreAnalyticsHomographyAzul.spotsMovementFromNominal2 = 0u;
}

void *___ZN25gmoCoreAnalyticsTelemetry16reportHomogStatsEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    xpc_dictionary_set_BOOL(v2, "HighAmbient", *v1);
    xpc_dictionary_set_BOOL(v3, "Hok", *(v1 + 1));
    xpc_dictionary_set_BOOL(v3, "HighSpotShift", *(v1 + 2));
    xpc_dictionary_set_int64(v3, "BankID", *(v1 + 4));
    xpc_dictionary_set_int64(v3, "Number_of_qualified_spots", *(v1 + 12));
    xpc_dictionary_set_double(v3, "Spots_movement_from_Nominal", *(v1 + 16));
    xpc_dictionary_set_double(v3, "NumberAnchorsMoved", *(v1 + 20));
    xpc_dictionary_set_int64(v3, "spotMovePercentile", *(v1 + 25));
    xpc_dictionary_set_double(v3, "Spots_movement_from_Factory_Percentile", *(v1 + 28));
    xpc_dictionary_set_double(v3, "Spots_movement_from_Operational_Percentile", *(v1 + 32));
    xpc_dictionary_set_double(v3, "AnchorMovement_Percentile", *(v1 + 36));
    xpc_dictionary_set_int64(v3, "NumberSpotsClipped", *(v1 + 40));
    xpc_dictionary_set_int64(v3, "homography_Number_In_Session", *(v1 + 92));
    xpc_dictionary_set_double(v3, "HokClassifierParam1", *(v1 + 44));
    xpc_dictionary_set_double(v3, "HokClassifierParam2", *(v1 + 48));
    xpc_dictionary_set_double(v3, "HokClassifierParam3", *(v1 + 52));
    xpc_dictionary_set_double(v3, "HokClassifierParam4", *(v1 + 56));
    xpc_dictionary_set_double(v3, "HokClassifierParam5", *(v1 + 60));
    xpc_dictionary_set_double(v3, "HokClassifierParam6", *(v1 + 64));
    xpc_dictionary_set_double(v3, "HokClassifierFutureParam7", *(v1 + 68));
    xpc_dictionary_set_double(v3, "HokClassifierFutureParam8", *(v1 + 72));
  }

  return v3;
}

void gmoCoreAnalyticsTelemetry::reportLongTermStats(gmoCoreAnalyticsTelemetry *this)
{
  v23 = *MEMORY[0x277D85DE8];
  sessionCount = this->_longTermEventPersistentData.sessionCount;
  if (sessionCount >= 0x1D)
  {
    this->_isFireLongTermEvent = 1;
    goto LABEL_4;
  }

  if (this->_isFireLongTermEvent)
  {
LABEL_4:
    this->_coreAnalyticsLongTerm.sstpPercentageSuccessLongTerm = this->_longTermEventPersistentData.hOkNoViolationsCount / this->_longTermEventPersistentData.homogDoneCount;
    if (sessionCount != -1)
    {
      operator new();
    }

    this->_coreAnalyticsLongTerm.sstpSpotMoveP95LongTerm = 0.0;
    this->_coreAnalyticsLongTerm.sstpSpotMoveP50LongTerm = 0.0;
    v3 = [MEMORY[0x277CBEA80] currentCalendar];
    v4 = [MEMORY[0x277CBEAA8] date];
    v5 = [v3 components:28 fromDate:v4];

    lastEventYear = this->_longTermEventPersistentData.lastEventYear;
    if (lastEventYear && this->_longTermEventPersistentData.lastEventMonth && lastEventYear == [v5 year] && ((v7 = this->_longTermEventPersistentData.lastEventYear, v7 != objc_msgSend(v5, "year")) || (lastEventMonth = this->_longTermEventPersistentData.lastEventMonth, lastEventMonth >= objc_msgSend(v5, "month"))))
    {
      this->_coreAnalyticsLongTerm.firstEventInMonthLongTerm = 0;
    }

    else
    {
      this->_coreAnalyticsLongTerm.firstEventInMonthLongTerm = 1;
      this->_longTermEventPersistentData.lastEventYear = [v5 year];
      this->_longTermEventPersistentData.lastEventMonth = [v5 month];
    }

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = ___ZN25gmoCoreAnalyticsTelemetry19reportLongTermStatsEv_block_invoke;
    v16[3] = &__block_descriptor_40_e30___NSObject_OS_xpc_object__8__0l;
    v16[4] = this;
    v9 = MEMORY[0x22AA537B0](v16);
    v10 = analytics_send_event_lazy();
    v11 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v11)
      {
        *buf = 136315394;
        v18 = "reportLongTermStats";
        v19 = 2080;
        v20 = "com.apple.JasperDepth.GMO.longTerm";
        v12 = MEMORY[0x277D86220];
        v13 = "GMO: %s: Sent the %s event into the diagnostics system";
        v14 = 22;
LABEL_17:
        _os_log_impl(&dword_224668000, v12, OS_LOG_TYPE_DEFAULT, v13, buf, v14);
      }
    }

    else if (v11)
    {
      *buf = 136315650;
      v18 = "reportLongTermStats";
      v19 = 2080;
      v20 = "com.apple.JasperDepth.GMO.longTerm";
      v21 = 1024;
      v22 = v10;
      v12 = MEMORY[0x277D86220];
      v13 = "GMO: %s: Failed to send the %s event into the diagnostics system with err %d";
      v14 = 28;
      goto LABEL_17;
    }

    *&this->_homogTrackingLongTermCounter = 0;
  }
}

void sub_2246D7420(_Unwind_Exception *a1)
{
  if (v2)
  {
    operator delete(v2);
  }

  if (!v1)
  {
    _Unwind_Resume(a1);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

float *std::__nth_element[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<float *>>(float *result, float *a2, float *a3)
{
  while (a3 != a2)
  {
    v3 = a3 - result;
    if (v3 < 2)
    {
      break;
    }

    if (v3 == 3)
    {
      v44 = result[1];
      v45 = *(a3 - 1);
      if (v44 < v45)
      {
        v46 = *(result + 1);
      }

      else
      {
        v46 = *(a3 - 1);
      }

      if (v44 < v45)
      {
        v44 = *(a3 - 1);
      }

      *(a3 - 1) = v44;
      *(result + 1) = v46;
      v47 = *(a3 - 1);
      if (v47 < *result)
      {
        v48 = *(a3 - 1);
      }

      else
      {
        v48 = *result;
      }

      if (v47 < *result)
      {
        v47 = *result;
      }

      *(a3 - 1) = v47;
      v49 = result[1];
      if (v48 < v49)
      {
        result[1] = v49;
      }

      else
      {
        *result = v49;
        result[1] = v48;
      }

      return result;
    }

    if (v3 == 2)
    {
      v50 = *(a3 - 1);
      v51 = *result;
      if (v50 < *result)
      {
        *result = v50;
        *(a3 - 1) = v51;
      }

      return result;
    }

    if (v3 <= 7)
    {
      while (result != a3 - 1)
      {
        v52 = result++;
        if (v52 != a3 && result != a3)
        {
          v53 = *v52;
          v54 = *v52;
          v55 = result;
          v56 = v52;
          v57 = result;
          do
          {
            v58 = *v57++;
            v59 = v58;
            if (v58 < v54)
            {
              v54 = v59;
              v56 = v55;
            }

            v55 = v57;
          }

          while (v57 != a3);
          if (v56 != v52)
          {
            *v52 = *v56;
            *v56 = v53;
          }
        }
      }

      return result;
    }

    v4 = &result[(a3 - result) >> 3];
    v5 = a3 - 1;
    v6 = *(a3 - 1);
    v7 = *v4;
    if (*v4 < v6)
    {
      v8 = *v4;
    }

    else
    {
      v8 = *(a3 - 1);
    }

    if (*v4 < v6)
    {
      v9 = *(a3 - 1);
    }

    else
    {
      v9 = *v4;
    }

    *v5 = v9;
    *v4 = v8;
    v10 = *v5;
    v11 = *result;
    if (*v5 < *result)
    {
      v12 = *v5;
    }

    else
    {
      v12 = *result;
    }

    if (*v5 < *result)
    {
      v13 = *result;
    }

    else
    {
      v13 = *v5;
    }

    *v5 = v13;
    v14 = *v4;
    v15 = *v4;
    if (v12 >= *v4)
    {
      *result = v14;
      v15 = v12;
    }

    v16 = v10 >= v11;
    if (v12 >= v14)
    {
      v16 = 1;
    }

    *v4 = v15;
    if (v7 >= v6)
    {
      v16 = 1;
    }

    v17 = *result;
    if (*result < v15)
    {
LABEL_33:
      v22 = result + 1;
      if (result + 1 >= v5)
      {
        v25 = result + 1;
      }

      else
      {
        v23 = result + 1;
        while (1)
        {
          v24 = *v4;
          do
          {
            v25 = v23;
            v26 = *v23++;
            v27 = v26;
          }

          while (v26 < v24);
          do
          {
            v28 = *--v5;
            v29 = v28;
          }

          while (v28 >= v24);
          if (v25 >= v5)
          {
            break;
          }

          *v25 = v29;
          *v5 = v27;
          ++v16;
          if (v4 == v25)
          {
            v4 = v5;
          }
        }
      }

      if (v25 != v4)
      {
        v30 = *v25;
        if (*v4 < *v25)
        {
          *v25 = *v4;
          *v4 = v30;
          ++v16;
        }
      }

      if (v25 == a2)
      {
        return result;
      }

      if (!v16)
      {
        if (v25 <= a2)
        {
          v36 = v25 + 1;
          while (v36 != a3)
          {
            v38 = *(v36 - 1);
            v37 = *v36++;
            if (v37 < v38)
            {
              goto LABEL_48;
            }
          }
        }

        else
        {
          while (v22 != v25)
          {
            v33 = *(v22 - 1);
            v32 = *v22++;
            if (v32 < v33)
            {
              goto LABEL_48;
            }
          }
        }

        return result;
      }

LABEL_48:
      if (v25 <= a2)
      {
        v31 = v25 + 1;
      }

      else
      {
        a3 = v25;
        v31 = result;
      }
    }

    else
    {
      v18 = a3 - 2;
      while (v18 != result)
      {
        v19 = v18;
        v20 = *v18--;
        v21 = v20;
        if (v20 < v15)
        {
          *result = v21;
          *v19 = v17;
          if (v16)
          {
            v16 = 2;
          }

          else
          {
            v16 = 1;
          }

          v5 = v19;
          goto LABEL_33;
        }
      }

      v34 = result + 1;
      if (v17 >= *v5)
      {
        if (v34 == v5)
        {
          return result;
        }

        while (1)
        {
          v35 = *v34;
          if (v17 < *v34)
          {
            break;
          }

          if (++v34 == v5)
          {
            return result;
          }
        }

        *v34++ = *v5;
        *v5 = v35;
      }

      if (v34 == v5)
      {
        return result;
      }

      while (1)
      {
        v39 = *result;
        do
        {
          v31 = v34;
          v40 = *v34++;
          v41 = v40;
        }

        while (v39 >= v40);
        do
        {
          v42 = *--v5;
          v43 = v42;
        }

        while (v39 < v42);
        if (v31 >= v5)
        {
          break;
        }

        *v31 = v43;
        *v5 = v41;
      }

      if (v31 > a2)
      {
        return result;
      }
    }

    result = v31;
  }

  return result;
}

void *___ZN25gmoCoreAnalyticsTelemetry19reportLongTermStatsEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    xpc_dictionary_set_BOOL(v2, "longTermEventFirstInMonth", *(v1 + 76));
    xpc_dictionary_set_double(v3, "SSTP_Percent_success_long_term", *(v1 + 88));
    xpc_dictionary_set_double(v3, "SSTP_Spot_move_P95_long_term", *(v1 + 80));
    xpc_dictionary_set_double(v3, "SSTP_Spot_move_P50_long_term", *(v1 + 84));
  }

  return v3;
}

float gmoCoreAnalyticsTelemetry::setHomogMetrics(gmoCoreAnalyticsTelemetry *this, GmoMetrics *a2)
{
  sessionCount = this->_longTermEventPersistentData.sessionCount;
  if (sessionCount >= 0x1E)
  {
    __assert_rtn("setHomogMetrics", "gmoCoreAnalyticsTelemetry.mm", 190, "_longTermEventPersistentData.sessionCount < kGmoCaLongTermEventFireTriggerSessionCount");
  }

  v3 = &this->_coreAnalyticsHomographyAzul.highAmbient + 4 * sessionCount;
  *(v3 + 29) = LODWORD(a2->var6);
  *(v3 + 59) = LODWORD(a2->var10);
  var6 = a2->var6;
  var5 = a2->var5;
  this->_coreAnalyticsHomographyAzul.highAmbient = a2->var0 > 0.15;
  this->_coreAnalyticsHomographyAzul.highSpotShift = var5 > 0.8;
  this->_coreAnalyticsHomographyAzul.hokClassifierParam1 = a2->var8 - var6;
  v6 = *&a2->var1;
  this->_coreAnalyticsHomographyAzul.hokClassifierParam4 = a2->var3;
  *&this->_coreAnalyticsHomographyAzul.hokClassifierParam2 = v6;
  *&this->_coreAnalyticsHomographyAzul.hokClassifierParam5 = vabs_f32(vrev64_s32(*&a2->var11));
  result = vabds_f32(a2->var9, a2->var7);
  *&var5 = a2->var4;
  this->_coreAnalyticsHomographyAzul.hokClassifierFutureParam7 = result;
  this->_coreAnalyticsHomographyAzul.hokClassifierFutureParam8 = *&var5;
  return result;
}

float gmoCoreAnalyticsTelemetry::setHOk(gmoCoreAnalyticsTelemetry *this, _BOOL4 a2, int a3)
{
  this->_coreAnalyticsHomographyAzul.hOk = a2;
  homogSuccessfulTrackingLongTermCounter = this->_homogSuccessfulTrackingLongTermCounter;
  if (a2 && a3)
  {
    this->_homogSuccessfulTrackingLongTermCounter = ++homogSuccessfulTrackingLongTermCounter;
    ++this->_homogSuccessfulTrackingCounter;
  }

  *&this->_longTermEventPersistentData.hOkNoViolationsCount = vadd_s32(*&this->_longTermEventPersistentData.hOkNoViolationsCount, (a2 | 0x100000000));
  v4 = this->_homogTrackingLongTermCounter + 1;
  this->_homogTrackingLongTermCounter = v4;
  result = homogSuccessfulTrackingLongTermCounter / v4;
  this->_coreAnalyticsLongTerm.sstpPercentageSuccessLongTerm = result;
  return result;
}

void gmoCoreAnalyticsTelemetry::setSpotsMovement(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = vsub_f32(*(a4 + 112 * *(a1 + 4) + 8 * *(a1 + 8)), *(a2 + 112 * *(a1 + 4) + 8 * *(a1 + 8)));
  *(a1 + 16) = sqrtf(vaddv_f32(vmul_f32(v4, v4)));
  common::utils::prctile<float>();
}

float gmoCoreAnalyticsTelemetry::setAnchorMoved(gmoCoreAnalyticsTelemetry *this, unint64_t a2)
{
  result = a2;
  this->_coreAnalyticsHomographyAzul.numAnchorMoved = a2;
  return result;
}

void gmoCoreAnalyticsTelemetry::setAnchorMovement(gmoCoreAnalyticsTelemetry *this, PDAnchors *a2, PDAnchors *a3)
{
  v3 = 0;
  v36 = *MEMORY[0x277D85DE8];
  v4 = &a2->banks[0].anchors[7];
  v5 = &a3->banks[0].anchors[7];
  do
  {
    v6.i8[0] = v4[-7].x;
    v6.i8[1] = v4[-6].x;
    v6.i8[2] = v4[-5].x;
    v6.i8[3] = v4[-4].x;
    v6.i8[4] = v4[-3].x;
    v6.i8[5] = v4[-2].x;
    v6.i8[6] = v4[-1].x;
    v6.i8[7] = v4->x;
    v7.i8[0] = v5[-7].x;
    v7.i8[1] = v5[-6].x;
    v7.i8[2] = v5[-5].x;
    v7.i8[3] = v5[-4].x;
    v7.i8[4] = v5[-3].x;
    v7.i8[5] = v5[-2].x;
    v7.i8[6] = v5[-1].x;
    v8.i8[0] = v4[-7].y;
    v7.i8[7] = v5->x;
    v8.i8[1] = v4[-6].y;
    v8.i8[2] = v4[-5].y;
    v8.i8[3] = v4[-4].y;
    v8.i8[4] = v4[-3].y;
    v8.i8[5] = v4[-2].y;
    v9.i8[0] = v5[-7].y;
    v9.i8[1] = v5[-6].y;
    v9.i8[2] = v5[-5].y;
    v9.i8[3] = v5[-4].y;
    v9.i8[4] = v5[-3].y;
    v9.i8[5] = v5[-2].y;
    v8.i8[6] = v4[-1].y;
    v9.i8[6] = v5[-1].y;
    v10 = (v4[1].x - v5[1].x);
    v11 = (v4[1].y - v5[1].y);
    v8.i8[7] = v4->y;
    v9.i8[7] = v5->y;
    v12 = (v4[2].x - v5[2].x);
    v13 = (v4[2].y - v5[2].y);
    v14 = (v4[3].x - v5[3].x);
    v15 = (v10 * v10) + (v11 * v11);
    v16 = (v4[3].y - v5[3].y);
    v17 = (v12 * v12) + (v13 * v13);
    v18 = (v4[4].x - v5[4].x);
    v19 = (v4[4].y - v5[4].y);
    v20 = (v4[5].x - v5[5].x);
    v21 = sqrtf(v15);
    v22 = (v4[5].y - v5[5].y);
    v23 = v4[6].x - v5[6].x;
    v24 = &v35[v3];
    v24[2].i32[0] = v21;
    v24[2].i32[1] = sqrtf(v17);
    v25 = sqrtf((v18 * v18) + (v19 * v19));
    v26 = v23;
    v27 = sqrtf((v14 * v14) + (v16 * v16));
    v28 = (v4[6].y - v5[6].y);
    v24[2].i32[2] = v27;
    v24[2].i32[3] = v25;
    v24[3].i32[0] = sqrtf((v20 * v20) + (v22 * v22));
    v24[3].i32[1] = sqrtf((v26 * v26) + (v28 * v28));
    v29 = vsubl_s8(v6, v7);
    v30 = vsubl_s8(v8, v9);
    v31 = vcvtq_f32_s32(vmovl_s16(*v29.i8));
    v32 = vcvtq_f32_s32(vmovl_high_s16(v29));
    v33 = vcvtq_f32_s32(vmovl_high_s16(v30));
    v34 = vcvtq_f32_s32(vmovl_s16(*v30.i8));
    *v24 = vcvtq_u32_f32(vsqrtq_f32(vmlaq_f32(vmulq_f32(v31, v31), v34, v34)));
    v24[1] = vcvtq_u32_f32(vsqrtq_f32(vmlaq_f32(vmulq_f32(v32, v32), v33, v33)));
    v3 += 56;
    v4 += 14;
    v5 += 14;
  }

  while (v3 != 448);
  operator new();
}

void sub_2246D9638(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 gmoCoreAnalyticsTelemetry::loadDataFromPersistentDataLongTerm(gmoCoreAnalyticsTelemetry *this, CoreAnalyticsLongTermPersistentData *a2)
{
  this->_longTermEventPersistentData.homogDoneCount = a2->homogDoneCount;
  *&this->_longTermEventPersistentData.sessionCount = *&a2->sessionCount;
  v2 = *a2->calibErrP95Arr;
  v3 = *&a2->calibErrP95Arr[4];
  v4 = *&a2->calibErrP95Arr[8];
  *&this->_longTermEventPersistentData.calibErrP95Arr[12] = *&a2->calibErrP95Arr[12];
  *&this->_longTermEventPersistentData.calibErrP95Arr[8] = v4;
  *&this->_longTermEventPersistentData.calibErrP95Arr[4] = v3;
  *this->_longTermEventPersistentData.calibErrP95Arr = v2;
  v5 = *&a2->calibErrP95Arr[16];
  v6 = *&a2->calibErrP95Arr[20];
  v7 = *&a2->calibErrP95Arr[24];
  *&this->_longTermEventPersistentData.calibErrP95Arr[28] = *&a2->calibErrP95Arr[28];
  *&this->_longTermEventPersistentData.calibErrP95Arr[24] = v7;
  *&this->_longTermEventPersistentData.calibErrP95Arr[20] = v6;
  *&this->_longTermEventPersistentData.calibErrP95Arr[16] = v5;
  v8 = *&a2->calibErrP50Arr[20];
  v9 = *&a2->calibErrP50Arr[24];
  v10 = *&a2->calibErrP50Arr[16];
  *&this->_longTermEventPersistentData.calibErrP50Arr[28] = *&a2->calibErrP50Arr[28];
  *&this->_longTermEventPersistentData.calibErrP50Arr[20] = v8;
  *&this->_longTermEventPersistentData.calibErrP50Arr[24] = v9;
  *&this->_longTermEventPersistentData.calibErrP50Arr[16] = v10;
  result = *a2->calibErrP50Arr;
  v12 = *&a2->calibErrP50Arr[4];
  v13 = *&a2->calibErrP50Arr[12];
  *&this->_longTermEventPersistentData.calibErrP50Arr[8] = *&a2->calibErrP50Arr[8];
  *&this->_longTermEventPersistentData.calibErrP50Arr[12] = v13;
  *&this->_longTermEventPersistentData.calibErrP50Arr[4] = v12;
  *this->_longTermEventPersistentData.calibErrP50Arr = result;
  return result;
}

gmoCoreAnalyticsTelemetry *gmoCoreAnalyticsTelemetry::offloadDataToPersistentDataLongTerm(gmoCoreAnalyticsTelemetry *this, CoreAnalyticsLongTermPersistentData *__dst)
{
  v3 = *&this->_longTermEventPersistentData.lastEventYear;
  if (this->_isFireLongTermEvent)
  {
    __dst->calibErrP50Arr[29] = 0.0;
    *&__dst->calibErrP50Arr[21] = 0u;
    *&__dst->calibErrP50Arr[25] = 0u;
    *&__dst->calibErrP50Arr[13] = 0u;
    *&__dst->calibErrP50Arr[17] = 0u;
    *&__dst->calibErrP50Arr[5] = 0u;
    *&__dst->calibErrP50Arr[9] = 0u;
    *&__dst->calibErrP95Arr[27] = 0u;
    *&__dst->calibErrP50Arr[1] = 0u;
    *&__dst->calibErrP95Arr[19] = 0u;
    *&__dst->calibErrP95Arr[23] = 0u;
    *&__dst->calibErrP95Arr[11] = 0u;
    *&__dst->calibErrP95Arr[15] = 0u;
    *&__dst->calibErrP95Arr[3] = 0u;
    *&__dst->calibErrP95Arr[7] = 0u;
    *&__dst->sessionCount = 0u;
    *&__dst->homogDoneCount = 0u;
    this->_isFireLongTermEvent = 0;
  }

  else
  {
    this = memcpy(__dst, &this->_longTermEventPersistentData, sizeof(CoreAnalyticsLongTermPersistentData));
    ++__dst->sessionCount;
  }

  *&__dst->lastEventYear = v3;
  return this;
}

uint64_t peridot::PeridotSP::getPixelMask(_WORD *a1, int a2)
{
  result = 0;
  if (a2 > 6)
  {
    if (a2 > 9)
    {
      switch(a2)
      {
        case 10:
          return (*a1 >> 5) & 1;
        case 11:
          return HIBYTE(*a1) & 1;
        case 12:
          return (*a1 >> 11) & 1;
      }
    }

    else if (a2 == 7)
    {
      return (*a1 >> 7) & 1;
    }

    else if (a2 == 8)
    {
      return (*a1 >> 10) & 1;
    }

    else
    {
      return (*a1 >> 2) & 1;
    }
  }

  else if (a2 > 3)
  {
    if (a2 == 4)
    {
      return (*a1 >> 9) & 1;
    }

    else if (a2 == 5)
    {
      return (*a1 >> 1) & 1;
    }

    else
    {
      return (*a1 >> 4) & 1;
    }
  }

  else
  {
    switch(a2)
    {
      case 1:
        return *a1 & 1;
      case 2:
        return (*a1 >> 3) & 1;
      case 3:
        return (*a1 >> 6) & 1;
    }
  }

  return result;
}

uint64_t peridot::PeridotSP::getMaskEn(unsigned __int8 *a1, int a2)
{
  result = 0;
  if (a2 <= 5)
  {
    if (a2 > 2)
    {
      if (a2 == 3)
      {
        return (*a1 >> 6) & 1;
      }

      else if (a2 == 5)
      {
        return (*a1 >> 1) & 1;
      }
    }

    else if (a2 == 1)
    {
      return *a1 & 1;
    }

    else if (a2 == 2)
    {
      return (*a1 >> 3) & 1;
    }
  }

  else if (a2 <= 8)
  {
    if (a2 == 6)
    {
      return (*a1 >> 4) & 1;
    }

    else if (a2 == 7)
    {
      return *a1 >> 7;
    }
  }

  else
  {
    switch(a2)
    {
      case 9:
        return (*a1 >> 2) & 1;
      case 10:
        return (*a1 >> 5) & 1;
      case 11:
        return a1[1] & 1;
    }
  }

  return result;
}

uint64_t peridot::PeridotSP::getMaskHp(uint64_t a1, int a2)
{
  switch(a2)
  {
    case 11:
      return (*(a1 + 1) >> 3) & 1;
    case 7:
      return (*(a1 + 1) >> 2) & 1;
    case 3:
      return (*(a1 + 1) >> 1) & 1;
  }

  return 0;
}

uint64_t peridot::PeridotSP::getMaskHs1(uint64_t a1, int a2)
{
  result = 0;
  if (a2 > 5)
  {
    switch(a2)
    {
      case 6:
        return (*(a1 + 2) >> 4) & 1;
      case 9:
        return (*(a1 + 2) >> 2) & 1;
      case 10:
        return (*(a1 + 2) >> 5) & 1;
    }
  }

  else
  {
    switch(a2)
    {
      case 1:
        return *(a1 + 2) & 1;
      case 2:
        return (*(a1 + 2) >> 3) & 1;
      case 5:
        return (*(a1 + 2) >> 1) & 1;
    }
  }

  return result;
}

double peridot::HDUnfoldClass::HDUnfoldClass(peridot::HDUnfoldClass *this)
{
  *this = &unk_283809EC8;
  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
  *(this + 24) = 0;
  *(this + 11) = &unk_283809E68;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 112) = 0;
  *(this + 15) = 0;
  *(this + 16) = &unk_283809E68;
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 152) = 0;
  *(this + 20) = 0;
  *(this + 21) = &unk_283809E68;
  *(this + 25) = 0;
  *(this + 22) = 0;
  *(this + 23) = 0;
  *(this + 192) = 0;
  *(this + 27) = &unk_283809E68;
  *(this + 28) = 0;
  *(this + 29) = 0;
  *(this + 240) = 0;
  *(this + 36) = 0;
  *(this + 31) = 0;
  *(this + 32) = &unk_283809E68;
  *(this + 33) = 0;
  *(this + 34) = 0;
  *(this + 280) = 0;
  *(this + 39) = 0;
  *(this + 40) = 0;
  *(this + 38) = 0;
  *&result = 1;
  *(this + 43) = 1;
  *(this + 352) = 0;
  *(this + 45) = 0;
  *(this + 41) = &unk_28380A0A8;
  *(this + 42) = 0;
  return result;
}

{
  *this = &unk_283809EC8;
  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
  *(this + 24) = 0;
  *(this + 11) = &unk_283809E68;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 112) = 0;
  *(this + 15) = 0;
  *(this + 16) = &unk_283809E68;
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 152) = 0;
  *(this + 20) = 0;
  *(this + 21) = &unk_283809E68;
  *(this + 25) = 0;
  *(this + 22) = 0;
  *(this + 23) = 0;
  *(this + 192) = 0;
  *(this + 27) = &unk_283809E68;
  *(this + 28) = 0;
  *(this + 29) = 0;
  *(this + 240) = 0;
  *(this + 36) = 0;
  *(this + 31) = 0;
  *(this + 32) = &unk_283809E68;
  *(this + 33) = 0;
  *(this + 34) = 0;
  *(this + 280) = 0;
  *(this + 39) = 0;
  *(this + 40) = 0;
  *(this + 38) = 0;
  *&result = 1;
  *(this + 43) = 1;
  *(this + 352) = 0;
  *(this + 45) = 0;
  *(this + 41) = &unk_28380A0A8;
  *(this + 42) = 0;
  return result;
}

void Matrix<unsigned char>::~Matrix(uint64_t a1)
{
  *a1 = &unk_283809E68;
  v2 = *(a1 + 8);
  if (v2 && *(a1 + 24) == 1)
  {
    v3 = a1;
    MEMORY[0x22AA53170](v2, 0x1000C8077774924);
    a1 = v3;
    *(v3 + 8) = 0;
    *(v3 + 32) = 0;
    *(v3 + 24) = 0;
  }

  *(a1 + 16) = 0;

  JUMPOUT(0x22AA531A0);
}

uint64_t Matrix<unsigned char>::~Matrix(uint64_t result)
{
  *result = &unk_283809E68;
  v1 = *(result + 8);
  if (v1 && *(result + 24) == 1)
  {
    v2 = result;
    MEMORY[0x22AA53170](v1, 0x1000C8077774924);
    result = v2;
    *(v2 + 8) = 0;
    *(v2 + 32) = 0;
    *(v2 + 24) = 0;
  }

  *(result + 16) = 0;
  return result;
}

void Matrix<unsigned long>::~Matrix(uint64_t a1)
{
  *a1 = &unk_283809EC8;
  v2 = *(a1 + 8);
  if (v2 && *(a1 + 24) == 1)
  {
    v3 = a1;
    MEMORY[0x22AA53170](v2, 0x1000C8000313F17);
    a1 = v3;
    *(v3 + 8) = 0;
    *(v3 + 32) = 0;
    *(v3 + 24) = 0;
  }

  *(a1 + 16) = 0;

  JUMPOUT(0x22AA531A0);
}

uint64_t Matrix<unsigned long>::~Matrix(uint64_t result)
{
  *result = &unk_283809EC8;
  v1 = *(result + 8);
  if (v1 && *(result + 24) == 1)
  {
    v2 = result;
    MEMORY[0x22AA53170](v1, 0x1000C8000313F17);
    result = v2;
    *(v2 + 8) = 0;
    *(v2 + 32) = 0;
    *(v2 + 24) = 0;
  }

  *(result + 16) = 0;
  return result;
}

void peridot::HDUnfoldClass::~HDUnfoldClass(peridot::HDUnfoldClass *this)
{
  *(this + 41) = &unk_283809D60;
  if (*(this + 42) && *(this + 352) == 1)
  {
    MEMORY[0x22AA53170]();
    *(this + 42) = 0;
    *(this + 45) = 0;
    *(this + 352) = 0;
  }

  *(this + 43) = 0;
  v2 = *(this + 38);
  if (v2)
  {
    *(this + 39) = v2;
    operator delete(v2);
  }

  *(this + 32) = &unk_283809E68;
  if (*(this + 33) && *(this + 280) == 1)
  {
    MEMORY[0x22AA53170]();
    *(this + 33) = 0;
    *(this + 36) = 0;
    *(this + 280) = 0;
  }

  *(this + 34) = 0;
  *(this + 27) = &unk_283809E68;
  if (*(this + 28) && *(this + 240) == 1)
  {
    MEMORY[0x22AA53170]();
    *(this + 28) = 0;
    *(this + 31) = 0;
    *(this + 240) = 0;
  }

  *(this + 29) = 0;
  *(this + 21) = &unk_283809E68;
  if (*(this + 22) && *(this + 192) == 1)
  {
    MEMORY[0x22AA53170]();
    *(this + 22) = 0;
    *(this + 25) = 0;
    *(this + 192) = 0;
  }

  *(this + 23) = 0;
  *(this + 16) = &unk_283809E68;
  if (*(this + 17) && *(this + 152) == 1)
  {
    MEMORY[0x22AA53170]();
    *(this + 17) = 0;
    *(this + 20) = 0;
    *(this + 152) = 0;
  }

  *(this + 18) = 0;
  *(this + 11) = &unk_283809E68;
  if (*(this + 12) && *(this + 112) == 1)
  {
    MEMORY[0x22AA53170]();
    *(this + 12) = 0;
    *(this + 15) = 0;
    *(this + 112) = 0;
  }

  *(this + 13) = 0;
  *this = &unk_283809EC8;
  if (*(this + 1) && *(this + 24) == 1)
  {
    MEMORY[0x22AA53170]();
    *(this + 1) = 0;
    *(this + 4) = 0;
    *(this + 24) = 0;
  }

  *(this + 2) = 0;
}

uint64_t peridot::HDUnfoldClass::configure(peridot::HDUnfoldClass *this, const peridot::PeridotDXPCalib *a2)
{
  *(this + 14) = 1085276160;
  *(this + 72) = 2;
  *(this + 19) = 1058638150;
  *(this + 40) = 10;
  *(this + 8) = 15;
  *(this + 6) = 600;
  *(this + 47) = 8;
  *(this + 21) = 0x40000000;
  v2 = *(a2 + 856);
  v3 = round(0.000000153484441 / v2);
  if (v3 < 65535.0)
  {
    v4 = round(0.000000186850624 / v2);
    if (v4 < 65535.0)
    {
      *(this + 21) = v3;
      *(this + 20) = v4;
      operator new[]();
    }
  }

  peridot_depth_log("Wrong input in LSB configuration");
  return 4;
}

void sub_2246DA4C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  Matrix<unsigned long>::~Matrix(va);
  _Unwind_Resume(a1);
}

void sub_2246DA4DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    operator delete(v10);
  }

  operator delete(v11);
  _Unwind_Resume(a1);
}

void peridot::HDUnfoldClass::crtInit(peridot::HDUnfoldClass *this)
{
  v2 = *(this + 20);
  v3 = *(this + 17);
  if (v2 <= 2)
  {
    if (v3)
    {
      if (*(this + 152) == 1)
      {
        MEMORY[0x22AA53170]();
      }
    }

    operator new[]();
  }

  *(this + 18) = 0x300000001;
  *(v3 + 2) = 1;
  *v3 = peridot::HDUnfoldClass::_Cd_data;
  operator new[]();
}

void sub_2246DB54C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *__p, void *a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  operator delete(v25);
  if (__p)
  {
    operator delete(__p);
    if (a14)
    {
LABEL_7:
      operator delete(a14);
      if (!a11)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if (a14)
  {
    goto LABEL_7;
  }

  if (!a11)
  {
LABEL_9:
    Matrix<unsigned char>::~Matrix(&a25);
    _Unwind_Resume(a1);
  }

LABEL_8:
  operator delete(a11);
  goto LABEL_9;
}

void peridot::HDUnfoldClass::sDiffBLR::init(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *a1 = a2;
  v6 = (a1 + 8);
  if (v6 != a4)
  {
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(v6, *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 2);
  }

  v7 = *a3;
  v8 = *(a3 + 8) - *a3;
  v9 = v8 >> 2;
  v10 = v8 & 0x3FFFFFFFCLL;
  if ((v8 >> 2))
  {
    v11 = 0;
    v12 = 0;
    v13 = (v7 + v10);
    v14 = 0.0;
    do
    {
      v15 = *v7++;
      v16 = v15;
      if (v15 > v14)
      {
        v14 = v16;
        v12 = v11;
      }

      ++v11;
    }

    while (v7 < v13);
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 72) = v12 / v9;
  *(a1 + 76) = v12 % v9;
  operator new[]();
}

void sub_2246DC3E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54)
{
  MatrixNxPts<1u,float>::~MatrixNxPts(&a29);
  MatrixNxPts<1u,float>::~MatrixNxPts(&a34);
  MatrixNxPts<1u,float>::~MatrixNxPts(&a39);
  MatrixNxPts<1u,float>::~MatrixNxPts(&a44);
  MatrixNxPts<1u,float>::~MatrixNxPts(&a49);
  MatrixNxPts<1u,float>::~MatrixNxPts(&a54);
  MatrixNxPts<1u,float>::~MatrixNxPts(v54 - 224);
  MatrixNxPts<1u,float>::~MatrixNxPts(v54 - 184);
  _Unwind_Resume(a1);
}

uint64_t MatrixNxPts<1u,unsigned char>::~MatrixNxPts(uint64_t result)
{
  *result = &unk_283809E68;
  v1 = *(result + 8);
  if (v1 && *(result + 24) == 1)
  {
    v2 = result;
    MEMORY[0x22AA53170](v1, 0x1000C8077774924);
    result = v2;
    *(v2 + 8) = 0;
    *(v2 + 32) = 0;
    *(v2 + 24) = 0;
  }

  *(result + 16) = 0;
  return result;
}

{
  *result = &unk_283809E68;
  v1 = *(result + 8);
  if (v1 && *(result + 24) == 1)
  {
    v2 = result;
    MEMORY[0x22AA53170](v1, 0x1000C8077774924);
    result = v2;
    *(v2 + 8) = 0;
    *(v2 + 32) = 0;
    *(v2 + 24) = 0;
  }

  *(result + 16) = 0;
  return result;
}

uint64_t MatrixNxPts<1u,int>::~MatrixNxPts(uint64_t result)
{
  *result = &unk_283809E98;
  v1 = *(result + 8);
  if (v1 && *(result + 24) == 1)
  {
    v2 = result;
    MEMORY[0x22AA53170](v1, 0x1000C8052888210);
    result = v2;
    *(v2 + 8) = 0;
    *(v2 + 32) = 0;
    *(v2 + 24) = 0;
  }

  *(result + 16) = 0;
  return result;
}

void MatrixNxPts<1u,int>::~MatrixNxPts(uint64_t a1)
{
  *a1 = &unk_283809E98;
  v2 = *(a1 + 8);
  if (v2 && *(a1 + 24) == 1)
  {
    v3 = a1;
    MEMORY[0x22AA53170](v2, 0x1000C8052888210);
    a1 = v3;
    *(v3 + 8) = 0;
    *(v3 + 32) = 0;
    *(v3 + 24) = 0;
  }

  *(a1 + 16) = 0;

  JUMPOUT(0x22AA531A0);
}

void Matrix<int>::~Matrix(uint64_t a1)
{
  *a1 = &unk_283809E98;
  v2 = *(a1 + 8);
  if (v2 && *(a1 + 24) == 1)
  {
    v3 = a1;
    MEMORY[0x22AA53170](v2, 0x1000C8052888210);
    a1 = v3;
    *(v3 + 8) = 0;
    *(v3 + 32) = 0;
    *(v3 + 24) = 0;
  }

  *(a1 + 16) = 0;

  JUMPOUT(0x22AA531A0);
}

uint64_t Matrix<int>::~Matrix(uint64_t result)
{
  *result = &unk_283809E98;
  v1 = *(result + 8);
  if (v1 && *(result + 24) == 1)
  {
    v2 = result;
    MEMORY[0x22AA53170](v1, 0x1000C8052888210);
    result = v2;
    *(v2 + 8) = 0;
    *(v2 + 32) = 0;
    *(v2 + 24) = 0;
  }

  *(result + 16) = 0;
  return result;
}

char *std::__stable_sort<std::_ClassicAlgPolicy,void Algo::SortWithIndex<int,unsigned char>(std::vector<int> const&,BOOL,std::vector<int>&,std::vector<unsigned char> &)::{lambda(std::pair<int,int> const&,std::pair<int,int> const&)#1} &,std::__wrap_iter<std::pair<int,unsigned int> *>>(char *result, char *a2, unint64_t a3, char *a4, uint64_t a5)
{
  if (a3 >= 2)
  {
    if (a3 == 2)
    {
      v5 = *(a2 - 2);
      v6 = *result;
      if (v5 > *result)
      {
        *result = v5;
        *(a2 - 2) = v6;
        v7 = *(result + 1);
        *(result + 1) = *(a2 - 1);
        *(a2 - 1) = v7;
      }

      return result;
    }

    if (a3 <= 0)
    {
      if (result != a2)
      {
        v16 = result + 8;
        if (result + 8 != a2)
        {
          v17 = 0;
          v18 = result;
          do
          {
            v20 = *v18;
            v18 = v16;
            if (*v16 > v20)
            {
              v22 = *v16;
              v21 = *(v16 + 1);
              v23 = v17;
              do
              {
                v24 = &result[v23];
                v25 = *&result[v23 + 4];
                *(v24 + 2) = v20;
                *(v24 + 3) = v25;
                if (!v23)
                {
                  v19 = result;
                  goto LABEL_15;
                }

                v20 = *(v24 - 2);
                v23 -= 8;
              }

              while (v20 < v22);
              v19 = &result[v23 + 8];
LABEL_15:
              *v19 = v22;
              *(v19 + 1) = v21;
            }

            v16 = v18 + 8;
            v17 += 8;
          }

          while (v18 + 8 != a2);
        }
      }
    }

    else
    {
      v9 = a3 >> 1;
      v10 = 8 * (a3 >> 1);
      v11 = a3 - (a3 >> 1);
      v12 = &result[v10];
      v13 = result;
      if (a3 <= a5)
      {
        std::__stable_sort_move<std::_ClassicAlgPolicy,void Algo::SortWithIndex<int,unsigned char>(std::vector<int> const&,BOOL,std::vector<int>&,std::vector<unsigned char> &)::{lambda(std::pair<int,int> const&,std::pair<int,int> const&)#1} &,std::__wrap_iter<std::pair<int,unsigned int> *>>(result, v12, a3 >> 1, a4);
        v28 = &a4[8 * v9];
        result = std::__stable_sort_move<std::_ClassicAlgPolicy,void Algo::SortWithIndex<int,unsigned char>(std::vector<int> const&,BOOL,std::vector<int>&,std::vector<unsigned char> &)::{lambda(std::pair<int,int> const&,std::pair<int,int> const&)#1} &,std::__wrap_iter<std::pair<int,unsigned int> *>>(&v13[v10], a2, v11, v28);
        v29 = -1;
        v30 = v13;
        v31 = a4;
        v32 = v28;
        v33 = &a4[8 * a3];
        do
        {
          ++v29;
          if (v32 == v33)
          {
            if (v31 == v28)
            {
              return result;
            }

            v46 = &a4[v10] - v31 - 8;
            if (v46 >= 0x78 && (v30 >= &v31[(v46 & 0xFFFFFFFFFFFFFFF8) + 8] || v31 >= &v13[8 * v29 + 8 + (v46 & 0xFFFFFFFFFFFFFFF8)]))
            {
              v47 = v30 + 32;
              v48 = (v46 >> 3) + 1;
              v49 = 8 * (v48 & 0x3FFFFFFFFFFFFFF8);
              v30 += v49;
              v50 = (v31 + 32);
              v51 = v48 & 0x3FFFFFFFFFFFFFF8;
              do
              {
                v53 = *(v50 - 2);
                v52 = *(v50 - 1);
                v55 = *v50;
                v54 = v50[1];
                v50 += 4;
                *(v47 - 2) = v53;
                *(v47 - 1) = v52;
                *v47 = v55;
                v47[1] = v54;
                v47 += 4;
                v51 -= 8;
              }

              while (v51);
              if (v48 == (v48 & 0x3FFFFFFFFFFFFFF8))
              {
                return result;
              }

              v31 += v49;
            }

            do
            {
              *v30 = *v31;
              *(v30 + 1) = *(v31 + 1);
              v31 += 8;
              v30 += 8;
            }

            while (v31 != v28);
            return result;
          }

          v34 = *v32;
          if (*v32 > *v31)
          {
            v35 = v32;
          }

          else
          {
            v34 = *v31;
            v35 = v31;
          }

          if (*v32 <= *v31)
          {
            v31 += 8;
          }

          else
          {
            v32 += 8;
          }

          *v30 = v34;
          *(v30 + 1) = *(v35 + 1);
          v30 += 8;
        }

        while (v31 != v28);
        if (v32 == v33)
        {
          return result;
        }

        v36 = v33 - v32 - 8;
        if (v36 <= 0x77 || v30 < &v32[(v36 & 0xFFFFFFFFFFFFFFF8) + 8] && v32 < &v13[8 * v29 + 16 + (v36 & 0xFFFFFFFFFFFFFFF8)])
        {
          goto LABEL_39;
        }

        v37 = v30 + 32;
        v38 = (v36 >> 3) + 1;
        v39 = 8 * (v38 & 0x3FFFFFFFFFFFFFF8);
        v30 += v39;
        v40 = (v32 + 32);
        v41 = v38 & 0x3FFFFFFFFFFFFFF8;
        do
        {
          v43 = *(v40 - 2);
          v42 = *(v40 - 1);
          v45 = *v40;
          v44 = v40[1];
          v40 += 4;
          *(v37 - 2) = v43;
          *(v37 - 1) = v42;
          *v37 = v45;
          v37[1] = v44;
          v37 += 4;
          v41 -= 8;
        }

        while (v41);
        if (v38 != (v38 & 0x3FFFFFFFFFFFFFF8))
        {
          v32 += v39;
          do
          {
LABEL_39:
            *v30 = *v32;
            *(v30 + 1) = *(v32 + 1);
            v32 += 8;
            v30 += 8;
          }

          while (v32 != v33);
        }
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,void Algo::SortWithIndex<int,unsigned char>(std::vector<int> const&,BOOL,std::vector<int>&,std::vector<unsigned char> &)::{lambda(std::pair<int,int> const&,std::pair<int,int> const&)#1} &,std::__wrap_iter<std::pair<int,unsigned int> *>>(result, v12, a3 >> 1, a4, a5);
        std::__stable_sort<std::_ClassicAlgPolicy,void Algo::SortWithIndex<int,unsigned char>(std::vector<int> const&,BOOL,std::vector<int>&,std::vector<unsigned char> &)::{lambda(std::pair<int,int> const&,std::pair<int,int> const&)#1} &,std::__wrap_iter<std::pair<int,unsigned int> *>>(&v13[v10], a2, v11, a4, a5);

        return std::__inplace_merge<std::_ClassicAlgPolicy,void Algo::SortWithIndex<int,unsigned char>(std::vector<int> const&,BOOL,std::vector<int>&,std::vector<unsigned char> &)::{lambda(std::pair<int,int> const&,std::pair<int,int> const&)#1} &,std::__wrap_iter<std::pair<int,unsigned int> *>>(v13, &v13[v10], a2, v9, v11, a4, a5);
      }
    }
  }

  return result;
}

uint64_t std::__stable_sort_move<std::_ClassicAlgPolicy,void Algo::SortWithIndex<int,unsigned char>(std::vector<int> const&,BOOL,std::vector<int>&,std::vector<unsigned char> &)::{lambda(std::pair<int,int> const&,std::pair<int,int> const&)#1} &,std::__wrap_iter<std::pair<int,unsigned int> *>>(uint64_t result, char *a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    if (a3 == 1)
    {
LABEL_10:
      *a4 = *result;
      return result;
    }

    if (a3 == 2)
    {
      v5 = *(a2 - 2);
      v4 = a2 - 8;
      v6 = v5 <= *result;
      if (v5 <= *result)
      {
        v7 = result;
      }

      else
      {
        v7 = v4;
      }

      *a4++ = *v7;
      if (v6)
      {
        result = v4;
      }

      goto LABEL_10;
    }

    if (a3 > 8)
    {
      v18 = a3 >> 1;
      v19 = a3 >> 1;
      v20 = (v19 * 8 + result);
      v21 = result;
      v24 = a4;
      (std::__stable_sort<std::_ClassicAlgPolicy,void Algo::SortWithIndex<int,unsigned char>(std::vector<int> const&,BOOL,std::vector<int>&,std::vector<unsigned char> &)::{lambda(std::pair<int,int> const&,std::pair<int,int> const&)#1} &,std::__wrap_iter<std::pair<int,unsigned int> *>>)();
      result = std::__stable_sort<std::_ClassicAlgPolicy,void Algo::SortWithIndex<int,unsigned char>(std::vector<int> const&,BOOL,std::vector<int>&,std::vector<unsigned char> &)::{lambda(std::pair<int,int> const&,std::pair<int,int> const&)#1} &,std::__wrap_iter<std::pair<int,unsigned int> *>>(v20, a2, a3 - v18, &v24[v19], a3 - v18);
      v25 = -1;
      v26 = v24;
      v27 = v20;
      do
      {
        ++v25;
        if (v27 == a2)
        {
          if (v21 == v20)
          {
            return result;
          }

          v42 = v20 - v21 - 8;
          if (v42 >= 0x38 && (&v24[v25] - v21) >= 0x20)
          {
            v43 = v26 + 2;
            v44 = (v42 >> 3) + 1;
            v45 = 8 * (v44 & 0x3FFFFFFFFFFFFFFCLL);
            v26 = (v26 + v45);
            v46 = (v21 + 2);
            v47 = v44 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v48 = *v46;
              *(v43 - 1) = *(v46 - 1);
              *v43 = v48;
              v46 += 2;
              v43 += 2;
              v47 -= 4;
            }

            while (v47);
            if (v44 == (v44 & 0x3FFFFFFFFFFFFFFCLL))
            {
              return result;
            }

            v21 = (v21 + v45);
          }

          do
          {
            v49 = *v21++;
            *v26++ = v49;
          }

          while (v21 != v20);
          return result;
        }

        v28 = v27;
        v29 = *v27;
        v30 = v29 <= *v21;
        v31 = v29 > *v21;
        if (v30)
        {
          v32 = v21;
        }

        else
        {
          v32 = v28;
        }

        v33 = 8 * v31;
        v27 = &v28[v33];
        v21 += v30;
        *v26++ = *v32;
      }

      while (v21 != v20);
      if (v27 == a2)
      {
        return result;
      }

      v34 = a2 - &v28[v33] - 8;
      if (v34 < 0x58 || (&v24[v25] - &v28[v33] + 8) < 0x20)
      {
        goto LABEL_38;
      }

      v35 = v26 + 2;
      v36 = (v34 >> 3) + 1;
      v37 = 8 * (v36 & 0x3FFFFFFFFFFFFFFCLL);
      v26 = (v26 + v37);
      v38 = &v28[v33 + 16];
      v39 = v36 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v40 = *v38;
        *(v35 - 1) = *(v38 - 1);
        *v35 = v40;
        v38 += 2;
        v35 += 2;
        v39 -= 4;
      }

      while (v39);
      if (v36 != (v36 & 0x3FFFFFFFFFFFFFFCLL))
      {
        v27 += v37;
        do
        {
LABEL_38:
          v41 = *v27;
          v27 += 8;
          *v26++ = v41;
        }

        while (v27 != a2);
      }
    }

    else if (result != a2)
    {
      v8 = (result + 8);
      *a4 = *result;
      if ((result + 8) != a2)
      {
        v9 = 0;
        v10 = a4;
        v11 = a4;
        do
        {
          v12 = v8;
          v13 = *v11;
          v11 += 2;
          if (*v8 <= v13)
          {
            *v11 = *v8;
          }

          else
          {
            v10[1] = *v10;
            v14 = a4;
            if (v10 != a4)
            {
              v15 = v9;
              while (1)
              {
                v14 = (a4 + v15);
                v16 = *(a4 + v15 - 8);
                if (*v12 <= v16)
                {
                  break;
                }

                v17 = *(v14 - 1);
                *v14 = v16;
                v14[1] = v17;
                v15 -= 8;
                if (!v15)
                {
                  v14 = a4;
                  break;
                }
              }
            }

            *v14 = *v12;
            v14[1] = *(result + 12);
          }

          v8 = v12 + 2;
          v9 += 8;
          v10 = v11;
          result = v12;
        }

        while (v12 + 2 != a2);
      }
    }
  }

  return result;
}

char *std::__inplace_merge<std::_ClassicAlgPolicy,void Algo::SortWithIndex<int,unsigned char>(std::vector<int> const&,BOOL,std::vector<int>&,std::vector<unsigned char> &)::{lambda(std::pair<int,int> const&,std::pair<int,int> const&)#1} &,std::__wrap_iter<std::pair<int,unsigned int> *>>(char *result, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a5)
  {
    return result;
  }

  while (a5 > a7 && a4 > a7)
  {
    if (!a4)
    {
      return result;
    }

    v9 = *a2;
    while (1)
    {
      v10 = *result;
      if (v9 > *result)
      {
        break;
      }

      result += 8;
      if (!--a4)
      {
        return result;
      }
    }

    if (a4 >= a5)
    {
      if (a4 == 1)
      {
        *result = v9;
        *a2 = v10;
        v70 = *(result + 1);
        *(result + 1) = *(a2 + 1);
        *(a2 + 1) = v70;
        return result;
      }

      v19 = a4 / 2;
      v13 = &result[8 * (a4 / 2)];
      v12 = a2;
      if (a2 != a3)
      {
        v20 = (a3 - a2) >> 3;
        v12 = a2;
        do
        {
          v21 = v20 >> 1;
          v22 = &v12[8 * (v20 >> 1)];
          v24 = *v22;
          v23 = v22 + 8;
          v20 += ~(v20 >> 1);
          if (v24 > *v13)
          {
            v12 = v23;
          }

          else
          {
            v20 = v21;
          }
        }

        while (v20);
      }

      v11 = (v12 - a2) >> 3;
    }

    else
    {
      v11 = a5 / 2;
      v12 = &a2[8 * (a5 / 2)];
      v13 = a2;
      if (a2 != result)
      {
        v14 = (a2 - result) >> 3;
        v13 = result;
        do
        {
          v15 = v14 >> 1;
          v16 = &v13[8 * (v14 >> 1)];
          v18 = *v16;
          v17 = v16 + 8;
          v14 += ~(v14 >> 1);
          if (*v12 > v18)
          {
            v14 = v15;
          }

          else
          {
            v13 = v17;
          }
        }

        while (v14);
      }

      v19 = (v13 - result) >> 3;
    }

    v25 = v12;
    if (a2 != v13)
    {
      v25 = v13;
      if (a2 != v12)
      {
        v26 = *v13;
        *v13 = v9;
        *a2 = v26;
        v27 = *(v13 + 1);
        *(v13 + 1) = *(a2 + 1);
        *(a2 + 1) = v27;
        v25 = v13 + 8;
        for (i = a2 + 8; i != v12; i += 8)
        {
          if (v25 == a2)
          {
            a2 = i;
          }

          v29 = *v25;
          *v25 = *i;
          *i = v29;
          v30 = *(v25 + 1);
          *(v25 + 1) = *(i + 1);
          *(i + 1) = v30;
          v25 += 8;
        }

        if (v25 != a2)
        {
          v31 = v25;
          v32 = a2;
          while (1)
          {
            v33 = *v31;
            *v31 = *v32;
            *v32 = v33;
            v34 = *(v31 + 1);
            *(v31 + 1) = *(v32 + 1);
            *(v32 + 1) = v34;
            v31 += 8;
            v32 += 8;
            v35 = v31 == a2;
            if (v32 == v12)
            {
              if (v31 == a2)
              {
                break;
              }

              v32 = a2 + 8;
              while (1)
              {
                v36 = *v31;
                *v31 = *a2;
                *a2 = v36;
                v37 = *(v31 + 1);
                *(v31 + 1) = *(a2 + 1);
                *(a2 + 1) = v37;
                v31 += 8;
                v35 = v31 == a2;
                if (v32 != v12)
                {
                  break;
                }

                if (v31 == a2)
                {
                  goto LABEL_40;
                }
              }
            }

            if (v35)
            {
              a2 = v32;
            }
          }
        }
      }
    }

LABEL_40:
    v38 = a4 - v19;
    v39 = a5 - v11;
    if (v19 + v11 >= v38 + v39)
    {
      v44 = result;
      std::__inplace_merge<std::_ClassicAlgPolicy,void Algo::SortWithIndex<int,unsigned char>(std::vector<int> const&,BOOL,std::vector<int>&,std::vector<unsigned char> &)::{lambda(std::pair<int,int> const&,std::pair<int,int> const&)#1} &,std::__wrap_iter<std::pair<int,unsigned int> *>>(v25, v12);
      result = v44;
      a2 = v13;
      a5 = v11;
      a4 = v19;
      a3 = v25;
      if (!v11)
      {
        return result;
      }
    }

    else
    {
      v40 = v13;
      v41 = a3;
      v42 = v38;
      v43 = v39;
      std::__inplace_merge<std::_ClassicAlgPolicy,void Algo::SortWithIndex<int,unsigned char>(std::vector<int> const&,BOOL,std::vector<int>&,std::vector<unsigned char> &)::{lambda(std::pair<int,int> const&,std::pair<int,int> const&)#1} &,std::__wrap_iter<std::pair<int,unsigned int> *>>(result, v40);
      a4 = v42;
      a5 = v43;
      a3 = v41;
      result = v25;
      a2 = v12;
      if (!v43)
      {
        return result;
      }
    }
  }

  if (a4 <= a5)
  {
    if (a2 == result)
    {
      return result;
    }

    v54 = a2 - result - 8;
    v55 = a6;
    v56 = result;
    if (v54 >= 0x18)
    {
      v55 = a6;
      v56 = result;
      if ((a6 - result) > 0x1F)
      {
        v57 = (v54 >> 3) + 1;
        v58 = 8 * (v57 & 0x3FFFFFFFFFFFFFFCLL);
        v55 = (a6 + v58);
        v59 = (result + 16);
        v60 = (a6 + 16);
        v61 = v57 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v62 = *v59;
          *(v60 - 1) = *(v59 - 1);
          *v60 = v62;
          v59 += 2;
          v60 += 2;
          v61 -= 4;
        }

        while (v61);
        if (v57 == (v57 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_61;
        }

        v56 = &result[v58];
      }
    }

    do
    {
      v63 = *v56;
      v56 += 8;
      *v55 = v63;
      v55 += 8;
    }

    while (v56 != a2);
LABEL_61:
    v64 = v55 - 8;
    v65 = 0;
    v66 = result;
    v67 = a6;
    while (a2 != a3)
    {
      v68 = *a2;
      if (*a2 > *v67)
      {
        v69 = a2;
      }

      else
      {
        v68 = *v67;
        v69 = v67;
      }

      if (*a2 > *v67)
      {
        a2 += 8;
      }

      else
      {
        v67 += 8;
      }

      *v66 = v68;
      *(v66 + 1) = *(v69 + 1);
      v66 += 8;
      ++v65;
      if (v67 == v55)
      {
        return result;
      }
    }

    v71 = (v54 & 0xFFFFFFFFFFFFFFF8) + a6 - v67;
    if (v71 >= 0x78 && (v66 >= &v67[(v71 & 0xFFFFFFFFFFFFFFF8) + 8] || v67 >= &result[8 * v65 + 8 + (v71 & 0xFFFFFFFFFFFFFFF8)]))
    {
      v73 = (v71 >> 3) + 1;
      v74 = v66 + 32;
      v75 = 8 * (v73 & 0x3FFFFFFFFFFFFFF8);
      v66 += v75;
      v76 = (v67 + 32);
      v77 = v73 & 0x3FFFFFFFFFFFFFF8;
      do
      {
        v79 = *(v76 - 2);
        v78 = *(v76 - 1);
        v81 = *v76;
        v80 = v76[1];
        v76 += 4;
        *(v74 - 2) = v79;
        *(v74 - 1) = v78;
        *v74 = v81;
        v74[1] = v80;
        v74 += 4;
        v77 -= 8;
      }

      while (v77);
      if (v73 == (v73 & 0x3FFFFFFFFFFFFFF8))
      {
        return result;
      }

      v67 += v75;
    }

    do
    {
      *v66 = *v67;
      *(v66 + 1) = *(v67 + 1);
      v66 += 8;
      v82 = v67 == v64;
      v67 += 8;
    }

    while (!v82);
    return result;
  }

  if (a2 == a3)
  {
    return result;
  }

  v45 = a3 - a2 - 8;
  if (v45 < 0x18)
  {
    v46 = a6;
    v47 = a2;
  }

  else
  {
    v46 = a6;
    v47 = a2;
    if ((a6 - a2) > 0x1F)
    {
      v48 = (v45 >> 3) + 1;
      v49 = 8 * (v48 & 0x3FFFFFFFFFFFFFFCLL);
      v46 = (a6 + v49);
      v50 = (a2 + 16);
      v51 = (a6 + 16);
      v52 = v48 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v53 = *v50;
        *(v51 - 1) = *(v50 - 1);
        *v51 = v53;
        v50 += 2;
        v51 += 2;
        v52 -= 4;
      }

      while (v52);
      if (v48 == (v48 & 0x3FFFFFFFFFFFFFFCLL))
      {
        goto LABEL_87;
      }

      v47 = &a2[v49];
    }
  }

  do
  {
    v83 = *v47;
    v47 += 8;
    *v46++ = v83;
  }

  while (v47 != a3);
LABEL_87:
  v84 = 0;
  v85 = a3;
  while (a2 != result)
  {
    v86 = *(v46 - 2);
    v87 = *(a2 - 2);
    v88 = v86 <= v87;
    if (v86 >= v87)
    {
      v86 = *(a2 - 2);
    }

    *(v85 - 8) = v86;
    v85 -= 8;
    if (v88)
    {
      v89 = v46;
    }

    else
    {
      v89 = a2;
    }

    if (v88)
    {
      --v46;
    }

    else
    {
      a2 -= 8;
    }

    *(v85 + 4) = *(v89 - 1);
    ++v84;
    if (v46 == a6)
    {
      return result;
    }
  }

  if (v46 != a6)
  {
    v90 = v46 - a6 - 8;
    if (v90 < 0x58 || ((v91 = v90 >> 3, &a3[-8 * v84 - 8 + -8 * v91] < v46) ? (v92 = &v46[-v91 - 1] >= v85) : (v92 = 1), !v92))
    {
      v94 = v46;
LABEL_111:
      v99 = (v85 - 4);
      do
      {
        v100 = *(v94-- - 2);
        *(v99 - 1) = v100;
        *v99 = *(v94 + 1);
        v99 -= 2;
      }

      while (v94 != a6);
      return result;
    }

    v93 = v91 + 1;
    v94 = &v46[-(v93 & 0x3FFFFFFFFFFFFFFCLL)];
    v95 = 0x1FFFFFFFFFFFFFFCLL;
    v96 = v93 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v97 = *&v46[v95 + 2];
      v98 = (v85 + v95 * 8);
      *v98 = *&v46[v95];
      v98[1] = v97;
      v95 -= 4;
      v96 -= 4;
    }

    while (v96);
    if (v93 != (v93 & 0x3FFFFFFFFFFFFFFCLL))
    {
      v85 -= 8 * (v93 & 0x3FFFFFFFFFFFFFFCLL);
      goto LABEL_111;
    }
  }

  return result;
}

void MatrixNxPts<1u,unsigned char>::~MatrixNxPts(uint64_t a1)
{
  *a1 = &unk_283809E68;
  v2 = *(a1 + 8);
  if (v2 && *(a1 + 24) == 1)
  {
    v3 = a1;
    MEMORY[0x22AA53170](v2, 0x1000C8077774924);
    a1 = v3;
    *(v3 + 8) = 0;
    *(v3 + 32) = 0;
    *(v3 + 24) = 0;
  }

  *(a1 + 16) = 0;

  JUMPOUT(0x22AA531A0);
}

uint64_t peridot::HDUnfoldClass::paramsDefault(uint64_t this)
{
  *(this + 56) = 1085276160;
  *(this + 72) = 2;
  *(this + 76) = 1058638150;
  *(this + 80) = 10;
  *(this + 64) = 15;
  *(this + 48) = 600;
  *(this + 376) = 8;
  *(this + 84) = 0x40000000;
  return this;
}

uint64_t peridot::HDUnfoldClass::setParams(uint64_t this, __int16 a2, __int16 a3, float a4, char a5, char a6)
{
  *(this + 42) = a2;
  *(this + 40) = a3;
  *(this + 56) = a4;
  *(this + 72) = a5;
  *(this + 73) = a6;
  return this;
}

float peridot::HDUnfoldClass::sDiffBLR::remnantFunc(peridot::HDUnfoldClass::sDiffBLR *this, float a2)
{
  v2 = (a2 + 1.0) + *(this + 19);
  if (v2 < 0.0)
  {
    v2 = 0.0;
  }

  if ((*(this + 13) + -1.0) < v2)
  {
    v2 = *(this + 13) + -1.0;
  }

  return *(*(this + 5) + 4 * v2);
}

void peridot::HDUnfoldClass::HDunfold(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  v4 = MEMORY[0x28223BE20](a1, a2, a3, a4);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = v4;
  v23 = *MEMORY[0x277D85DE8];
  v21 = 0.0;
  bzero(__src, 0x1010uLL);
  *v19 = 0;
  peridot::HDUnfoldClass::crtUnfold(v15, v14, v10 + 168, v16, v12, __src, &v21, v20, &v19[1], v19);
  LOBYTE(v12) = v19[0];
  peridot::HDUnfoldClass::calcConf(v15, v17, __src, v18, v10 + 144, (v10 + 168), v10, *(v10 + 184), v21, v19[0], v8, v6);
  *(v8 + 235) = v19[1];
  *(v8 + 236) = v12;
}

uint64_t peridot::HDUnfoldClass::crtUnfold(uint64_t a1, uint64_t a2, uint64_t a3, float a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _BYTE *a10)
{
  v10 = MEMORY[0x28223BE20](a1, a2, a3, a4);
  v320 = v13;
  v321 = v14;
  v322 = v15;
  v16 = 0;
  v417 = *MEMORY[0x277D85DE8];
  v337 = &unk_283809CC0;
  v338 = v415;
  v339 = 0x1B00000003;
  v340 = 0;
  v341 = 162;
  v342 = 0;
  memset(v415, 0, sizeof(v415));
  v416 = 0;
  v331 = &unk_283809CC0;
  v332 = v413;
  v333 = 0x1B00000003;
  v334 = 0;
  v335 = 162;
  v336 = 0;
  memset(v413, 0, sizeof(v413));
  v414 = 0;
  v327 = v10;
  v328 = v17;
  v319 = v18;
  *v18 = *(v10 + 56);
  v406[0] = *v17;
  v19 = v17[36];
  v406[1] = v19;
  v20 = v17[72];
  v406[2] = v20;
  v407 = v17[12];
  v21 = v17[48];
  v408 = v21;
  v22 = v17[84];
  v409 = v22;
  v23 = v17[24];
  v410 = v23;
  v24 = v17[60];
  v411 = v24;
  v25 = v17[96];
  v412 = v25;
  if (v406[0] <= 0)
  {
    v26 = v407 > 0;
  }

  else
  {
    v26 = (v407 > 0) + 1;
  }

  if (v23 > 0)
  {
    ++v26;
  }

  v405[0] = v26;
  if (v19 <= 0)
  {
    v27 = v21 > 0;
  }

  else
  {
    v27 = (v21 > 0) + 1;
  }

  if (v24 > 0)
  {
    ++v27;
  }

  v405[1] = v27;
  if (v20 <= 0)
  {
    v28 = v22 > 0;
  }

  else
  {
    v28 = (v22 > 0) + 1;
  }

  if (v25 > 0)
  {
    ++v28;
  }

  v405[2] = v28;
  *v12 = (v26 | v27 | v28) > 1;
  v29 = (v27 + v26 + v28) > 3;
  v30 = 1;
  if (v29)
  {
    v30 = 2;
  }

  *v11 = v30;
  v387 = &unk_283809E68;
  v388 = &v402;
  v389 = 0x900000002;
  v390 = 0;
  v391 = 18;
  v392 = &unk_283809E68;
  v393 = &v403;
  v394 = 0x900000002;
  v395 = 0;
  v396 = 18;
  v397 = &unk_283809E68;
  v398 = &v404;
  v399 = 0x900000002;
  v400 = 0;
  v401 = 18;
  v384 = 0;
  v385 = 0;
  *(v386 + 7) = 0;
  v386[0] = 0;
  v369 = &unk_283809E68;
  v370 = &v384;
  v371 = 0x900000001;
  v372 = 0;
  v373 = 9;
  v374 = &unk_283809E68;
  v375 = &v385 + 1;
  v376 = 0x900000001;
  v377 = 0;
  v378 = 9;
  v379 = &unk_283809E68;
  v380 = v386 + 2;
  v381 = 0x900000001;
  v383 = 9;
  v382 = 0;
  do
  {
    v31 = *(v327 + 96);
    v32 = *(v31 + v16);
    v33 = v405[v32 - 1];
    if (v33 >= 1)
    {
      v34 = *(v31 + *(v327 + 108) + v16);
      v35 = v405[v34 - 1];
      if (v35 >= 1)
      {
        v36 = 3 * v33;
        if (v36 >= v32)
        {
          v38 = 0;
          do
          {
            v362[v38] = v32;
            LODWORD(v32) = v32 + 3;
            ++v38;
          }

          while (v36 >= v32);
          v37 = v38;
        }

        else
        {
          v37 = 0;
        }

        v39 = 3 * v35;
        if (3 * v35 >= v34)
        {
          v41 = 0;
          do
          {
            *(&v355 + v41) = v34;
            LODWORD(v34) = v34 + 3;
            ++v41;
          }

          while (v39 >= v34);
          v40 = v41;
        }

        else
        {
          v40 = 0;
        }

        v42 = v40 * v37;
        v43 = &v387 + 5 * v16;
        if (v43[4] < 2 * v42)
        {
          if (v43[1])
          {
            if (*(v43 + 24) == 1)
            {
              MEMORY[0x22AA53170]();
            }
          }

          operator new[]();
        }

        *(v43 + 4) = 2;
        *(v43 + 5) = v42;
        if (v42)
        {
          v44 = 0;
          do
          {
            *(v43[1] + v44) = v362[v44 % v37];
            *(v43[1] + v44 + *(v43 + 5)) = *(&v355 + v44 / v37);
            ++v44;
          }

          while (v42 > v44);
        }

        v45 = &v369 + 5 * v16;
        if (v45[4] < v42)
        {
          if (v45[1] && *(v45 + 24) == 1)
          {
            MEMORY[0x22AA53170]();
          }

          operator new[]();
        }

        *(v45 + 4) = 1;
        *(v45 + 5) = v42;
        if (v42)
        {
          v46 = v45[1];
          v47 = &v46[v42];
          if (&v46[v42] <= v46 + 1)
          {
            v47 = v46 + 1;
          }

          memset(v46, 1, v47 - v46);
        }
      }
    }

    ++v16;
  }

  while (v16 != 3);
  v48 = 0;
  v49 = 0;
  v323 = (v320 + 4053);
  v50 = v328;
  do
  {
    v51 = &v369 + 5 * v48;
    v52 = *(v51 + 5);
    v53 = v52 * *(v51 + 4);
    if (v53 < 1)
    {
      goto LABEL_50;
    }

    v54 = v51[1];
    v55 = v54->u64 + v53;
    if (v55 <= v54->u64 + 1)
    {
      v56 = &v54->u8[1];
    }

    else
    {
      v56 = v55;
    }

    v57 = v56 - v54;
    if (v57 < 8)
    {
      v58 = 0.0;
      goto LABEL_69;
    }

    if (v57 >= 0x20)
    {
      v325 = v49;
      v60 = 0uLL;
      v61 = v57 & 0xFFFFFFFFFFFFFFE0;
      v62 = 0uLL;
      v63 = v54 + 1;
      v64 = 0uLL;
      v324 = v57 & 0xFFFFFFFFFFFFFFE0;
      v65 = 0uLL;
      v66 = 0uLL;
      v67 = 0uLL;
      v68 = 0uLL;
      v69 = 0uLL;
      v70 = 0uLL;
      v71 = 0uLL;
      v72 = 0uLL;
      v73 = 0uLL;
      v74 = 0uLL;
      v75 = 0uLL;
      v76 = 0uLL;
      v77 = 0uLL;
      do
      {
        v78 = v63[-1];
        v79 = vextq_s8(v78, v78, 8uLL).u64[0];
        v80.i32[0] = v79.u8[0];
        v80.i32[1] = v79.u8[1];
        v81 = v79.u8[3];
        v82 = v79.u8[4];
        v83 = v79.u8[5];
        v84 = v79.u8[6];
        v85 = v79.u8[7];
        v79.i32[0] = v79.u8[2];
        v79.i32[1] = v81;
        v86 = vand_s8(v79, 0xFF000000FFLL);
        v87 = v78.u8[0];
        v88 = v78.u8[1];
        v89 = v78.u8[2];
        v90 = v78.u8[3];
        v91 = v78.u8[4];
        v92 = v78.u8[5];
        v93.i64[0] = v86.u32[0];
        v93.i64[1] = v86.u32[1];
        v94 = v78.u8[6];
        v95 = v78.u8[7];
        v96 = vextq_s8(*v63, *v63, 8uLL).u64[0];
        v97 = vcvtq_f64_u64(v93);
        v98 = vand_s8(__PAIR64__(v85, v84), 0xFF000000FFLL);
        v93.i64[0] = v98.u32[0];
        v93.i64[1] = v98.u32[1];
        v69 = vaddq_f64(v69, vcvtq_f64_u64(v93));
        v99 = vand_s8(__PAIR64__(v83, v82), 0xFF000000FFLL);
        v93.i64[0] = v99.u32[0];
        v93.i64[1] = v99.u32[1];
        v68 = vaddq_f64(v68, vcvtq_f64_u64(v93));
        v67 = vaddq_f64(v67, v97);
        v100 = vand_s8(v80, 0xFF000000FFLL);
        v93.i64[0] = v100.u32[0];
        v93.i64[1] = v100.u32[1];
        v66 = vaddq_f64(v66, vcvtq_f64_u64(v93));
        v101 = vand_s8(__PAIR64__(v95, v94), 0xFF000000FFLL);
        v93.i64[0] = v101.u32[0];
        v93.i64[1] = v101.u32[1];
        v65 = vaddq_f64(v65, vcvtq_f64_u64(v93));
        v102 = vand_s8(__PAIR64__(v92, v91), 0xFF000000FFLL);
        v93.i64[0] = v102.u32[0];
        v93.i64[1] = v102.u32[1];
        v64 = vaddq_f64(v64, vcvtq_f64_u64(v93));
        v102.i32[0] = BYTE2(v96);
        v102.i32[1] = BYTE3(v96);
        v103 = vand_s8(__PAIR64__(v90, v89), 0xFF000000FFLL);
        v93.i64[0] = v103.u32[0];
        v93.i64[1] = v103.u32[1];
        v62 = vaddq_f64(v62, vcvtq_f64_u64(v93));
        v104 = vand_s8(__PAIR64__(v88, v87), 0xFF000000FFLL);
        v93.i64[0] = v104.u32[0];
        v93.i64[1] = v104.u32[1];
        v60 = vaddq_f64(v60, vcvtq_f64_u64(v93));
        v104.i32[0] = BYTE6(v96);
        v104.i32[1] = HIBYTE(v96);
        v105 = vand_s8(v104, 0xFF000000FFLL);
        v93.i64[0] = v105.u32[0];
        v93.i64[1] = v105.u32[1];
        v77 = vaddq_f64(v77, vcvtq_f64_u64(v93));
        v105.i32[0] = BYTE4(v96);
        v105.i32[1] = BYTE5(v96);
        v106 = vand_s8(v105, 0xFF000000FFLL);
        v93.i64[0] = v106.u32[0];
        v93.i64[1] = v106.u32[1];
        v76 = vaddq_f64(v76, vcvtq_f64_u64(v93));
        v107 = vand_s8(v102, 0xFF000000FFLL);
        v93.i64[0] = v107.u32[0];
        v93.i64[1] = v107.u32[1];
        v75 = vaddq_f64(v75, vcvtq_f64_u64(v93));
        v107.i32[0] = v96;
        v107.i32[1] = BYTE1(v96);
        v108 = vand_s8(v107, 0xFF000000FFLL);
        v93.i64[0] = v108.u32[0];
        v93.i64[1] = v108.u32[1];
        v74 = vaddq_f64(v74, vcvtq_f64_u64(v93));
        v108.i32[0] = BYTE6(v63->i64[0]);
        v108.i32[1] = HIBYTE(v63->i64[0]);
        v109 = vand_s8(v108, 0xFF000000FFLL);
        v93.i64[0] = v109.u32[0];
        v93.i64[1] = v109.u32[1];
        v73 = vaddq_f64(v73, vcvtq_f64_u64(v93));
        v109.i32[0] = BYTE4(v63->i64[0]);
        v109.i32[1] = (WORD2(v63->i64[0]) >> 8);
        v110 = vand_s8(v109, 0xFF000000FFLL);
        v93.i64[0] = v110.u32[0];
        v93.i64[1] = v110.u32[1];
        v72 = vaddq_f64(v72, vcvtq_f64_u64(v93));
        v110.i32[0] = BYTE2(v63->u32[0]);
        v110.i32[1] = HIBYTE(v63->u32[0]);
        v111 = vand_s8(v110, 0xFF000000FFLL);
        v93.i64[0] = v111.u32[0];
        v93.i64[1] = v111.u32[1];
        v71 = vaddq_f64(v71, vcvtq_f64_u64(v93));
        v111.i32[0] = v63->u8[0];
        v111.i32[1] = HIBYTE(v63->u16[0]);
        v112 = vand_s8(v111, 0xFF000000FFLL);
        v93.i64[0] = v112.u32[0];
        v93.i64[1] = v112.u32[1];
        v70 = vaddq_f64(v70, vcvtq_f64_u64(v93));
        v63 += 2;
        v61 -= 32;
      }

      while (v61);
      v58 = vaddvq_f64(vaddq_f64(vaddq_f64(vaddq_f64(vaddq_f64(v70, v60), vaddq_f64(v74, v66)), vaddq_f64(vaddq_f64(v72, v64), vaddq_f64(v76, v68))), vaddq_f64(vaddq_f64(vaddq_f64(v71, v62), vaddq_f64(v75, v67)), vaddq_f64(vaddq_f64(v73, v65), vaddq_f64(v77, v69)))));
      v59 = v57 & 0xFFFFFFFFFFFFFFE0;
      if (v57 == v324)
      {
        v50 = v328;
        v49 = v325;
        goto LABEL_70;
      }

      v50 = v328;
      v49 = v325;
      if ((v57 & 0x18) == 0)
      {
        v54 = (v54 + v324);
        do
        {
LABEL_69:
          v133 = v54->u8[0];
          v54 = (v54 + 1);
          v58 = v58 + v133;
        }

        while (v54 < v55);
        goto LABEL_70;
      }
    }

    else
    {
      v59 = 0;
      v58 = 0.0;
    }

    v113 = v57 & 0xFFFFFFFFFFFFFFF8;
    v114 = 0uLL;
    v115 = *&v58;
    v116 = v59 - (v57 & 0xFFFFFFFFFFFFFFF8);
    v117 = &v54->u8[v59];
    v118 = 0uLL;
    v119 = 0uLL;
    do
    {
      v120 = *v117;
      v117 += 8;
      v121.i32[0] = v120;
      v121.i32[1] = BYTE1(v120);
      v122 = vand_s8(v121, 0xFF000000FFLL);
      v123.i64[0] = v122.u32[0];
      v123.i64[1] = v122.u32[1];
      v124 = vcvtq_f64_u64(v123);
      v125.i32[0] = BYTE2(v120);
      v125.i32[1] = BYTE3(v120);
      v126 = vand_s8(v125, 0xFF000000FFLL);
      v123.i64[0] = v126.u32[0];
      v123.i64[1] = v126.u32[1];
      v127 = vcvtq_f64_u64(v123);
      v128.i32[0] = BYTE4(v120);
      v128.i32[1] = BYTE5(v120);
      v129 = vand_s8(v128, 0xFF000000FFLL);
      v123.i64[0] = v129.u32[0];
      v123.i64[1] = v129.u32[1];
      v130 = vcvtq_f64_u64(v123);
      v131.i32[0] = BYTE6(v120);
      v131.i32[1] = HIBYTE(v120);
      v132 = vand_s8(v131, 0xFF000000FFLL);
      v123.i64[0] = v132.u32[0];
      v123.i64[1] = v132.u32[1];
      v119 = vaddq_f64(v119, vcvtq_f64_u64(v123));
      v118 = vaddq_f64(v118, v130);
      v114 = vaddq_f64(v114, v127);
      v115 = vaddq_f64(v115, v124);
      v116 += 8;
    }

    while (v116);
    v58 = vaddvq_f64(vaddq_f64(vaddq_f64(v115, v118), vaddq_f64(v114, v119)));
    if (v57 != v113)
    {
      v54 = (v54 + v113);
      goto LABEL_69;
    }

LABEL_70:
    v134 = v58;
    if (v58)
    {
      v326 = v48;
      v135 = &v387 + 5 * v48;
      v136 = *(v135 + 4);
      v355 = &unk_283809CC0;
      if (v136 * v134)
      {
        operator new[]();
      }

      v356 = 0;
      v357 = v136;
      v358 = v58;
      v359 = 0;
      v360 = 2 * v136 * v134;
      if ((v52 & 0x80000000) == 0)
      {
        v137 = 0;
        LODWORD(v138) = -1;
        do
        {
          v139 = 2 * v137;
          if (v52 <= v138 + 1)
          {
            v140 = v138 + 1;
          }

          else
          {
            v140 = v52;
          }

          v141 = v140 - 1;
          do
          {
            if (v141 == v138)
            {
              goto LABEL_85;
            }

            v138 = (v138 + 1);
          }

          while (!*(v51[1] + v138));
          if (v136)
          {
            v142 = 0;
            v143 = 0;
            v144 = *(v135 + 5);
            do
            {
              v145 = *(v135[1] + v138 + v142) - 1;
              *(v356 + v139) = v406[3 * (v145 / 3) + v145 % 3];
              ++v143;
              v139 += 2 * v58;
              v142 += v144;
            }

            while (v136 > v143);
          }

          ++v137;
        }

        while (v138 < v52);
      }

LABEL_85:
      v351[0] = &unk_283809CC0;
      v351[1] = &v368;
      v351[2] = 0x900000002;
      v352 = 0;
      v353 = 36;
      v367 = 0;
      v366 = 0;
      v347[0] = &unk_283809CC0;
      v347[1] = &v365;
      v347[2] = 0x300000002;
      v348 = 0;
      v349 = 12;
      *&v343 = &unk_283809C90;
      *(&v343 + 1) = &v330;
      *&v344 = 0x300000001;
      BYTE8(v344) = 0;
      *&v345 = 3;
      peridot::HDUnfoldClass::crtUnfold2PRI(v327, v326, &v355, v322, v321, v351);
    }

LABEL_50:
    ++v48;
  }

  while (v48 != 3);
  v146 = HIDWORD(v342);
  if (HIDWORD(v342))
  {
    v147 = v338;
    v148 = HIDWORD(v339);
    if (HIDWORD(v342) < 4)
    {
      v149 = 0;
      goto LABEL_89;
    }

    v149 = 0;
    v152 = HIDWORD(v342) - 1;
    v153 = (BYTE4(v342) - 1);
    if (v153 == 255 || v152 > 0xFF)
    {
      goto LABEL_89;
    }

    if (HIDWORD(v342) < 0x10)
    {
      v154 = 0;
      goto LABEL_101;
    }

    v154 = WORD2(v342) & 0x1F0;
    v155 = v338 + 2;
    v156 = v363;
    v157 = WORD2(v342) & 0x1F0;
    do
    {
      v158 = *v155[-2].i8;
      v159 = *v155->i8;
      v160 = vmovl_u16(*v158.i8);
      *&v161 = v160.u32[0];
      *(&v161 + 1) = v160.u32[1];
      v162 = v161;
      *&v161 = v160.u32[2];
      *(&v161 + 1) = v160.u32[3];
      v163 = v161;
      v164 = vmovl_high_u16(v158);
      *&v161 = v164.u32[0];
      *(&v161 + 1) = v164.u32[1];
      v165 = v161;
      *&v161 = v164.u32[2];
      *(&v161 + 1) = v164.u32[3];
      v166 = v161;
      v167 = vmovl_u16(*v155);
      *&v161 = v167.u32[0];
      *(&v161 + 1) = v167.u32[1];
      v168 = v161;
      *&v161 = v167.u32[2];
      *(&v161 + 1) = v167.u32[3];
      v169 = v161;
      *(v156 - 2) = v165;
      *(v156 - 1) = v166;
      v170 = vmovl_high_u16(v159);
      *&v161 = v170.u32[0];
      *(&v161 + 1) = v170.u32[1];
      v171 = v161;
      *(v156 - 4) = v162;
      *(v156 - 3) = v163;
      *&v161 = v170.u32[2];
      *(&v161 + 1) = v170.u32[3];
      v156[2] = v171;
      v156[3] = v161;
      *v156 = v168;
      v156[1] = v169;
      v156 += 8;
      v155 += 4;
      v157 -= 16;
    }

    while (v157);
    if (v146 == v154)
    {
LABEL_104:
      v150 = v147 + 2 * v148;
    }

    else
    {
      if ((v146 & 0xC) != 0)
      {
LABEL_101:
        v149 = v146 & 0x1FC;
        do
        {
          v172 = vmovl_u16(*(v147 + 2 * (v154 & 0xFC)));
          *&v173 = v172.u32[0];
          *(&v173 + 1) = v172.u32[1];
          v174 = v173;
          *&v173 = v172.u32[2];
          *(&v173 + 1) = v172.u32[3];
          v175 = &v362[8 * (v154 & 0xFC)];
          *v175 = v174;
          v175[1] = v173;
          v154 += 4;
        }

        while (v149 != v154);
        if (v146 != v149)
        {
          goto LABEL_89;
        }

        goto LABEL_104;
      }

      v149 = v146 & 0x1F0;
      do
      {
LABEL_89:
        *&v362[8 * v149] = v147->u16[v149];
        ++v149;
      }

      while (v146 > v149);
      v150 = v147 + 2 * v148;
      if (v146 < 4)
      {
        v151 = 0;
        goto LABEL_118;
      }

      v152 = v146 - 1;
      v153 = (v146 - 1);
    }

    v151 = 0;
    if (v153 == 255 || v152 > 0xFF)
    {
      goto LABEL_118;
    }

    if (v146 < 0x10)
    {
      v176 = 0;
      goto LABEL_113;
    }

    v177 = 0;
    v176 = v146 & 0x1F0;
    do
    {
      v178 = &v150[2 * (v177 & 0xF0)];
      v179 = *(v178 + 1);
      v180 = vmovl_u16(*v178);
      *&v181 = v180.u32[2];
      *(&v181 + 1) = v180.u32[3];
      v182 = v181;
      v183 = vmovl_high_u16(*v178);
      *&v181 = v183.u32[0];
      *(&v181 + 1) = v183.u32[1];
      v184 = v181;
      *&v181 = v183.u32[2];
      *(&v181 + 1) = v183.u32[3];
      v185 = v181;
      *&v181 = v180.u32[0];
      *(&v181 + 1) = v180.u32[1];
      v186 = v181;
      v187 = vmovl_u16(*v179.i8);
      *&v181 = v187.u32[0];
      *(&v181 + 1) = v187.u32[1];
      v188 = v181;
      *&v181 = v187.u32[2];
      *(&v181 + 1) = v187.u32[3];
      v189 = v181;
      v190 = &v362[8 * (v177 & 0xF0)];
      *(v190 + 216) = v186;
      v190 = (v190 + 216);
      v191 = vmovl_high_u16(v179);
      *&v181 = v191.u32[2];
      *(&v181 + 1) = v191.u32[3];
      v192 = v181;
      v190[1] = v182;
      v190[2] = v184;
      *&v181 = v191.u32[0];
      *(&v181 + 1) = v191.u32[1];
      v190[6] = v181;
      v190[7] = v192;
      v190[4] = v188;
      v190[5] = v189;
      v190[3] = v185;
      v177 += 16;
    }

    while (v176 != v177);
    if (v146 == v176)
    {
LABEL_116:
      v197 = v147 + 2 * (2 * v148);
    }

    else
    {
      if ((v146 & 0xC) != 0)
      {
LABEL_113:
        v151 = v146 & 0x1FC;
        do
        {
          v193 = vmovl_u16(*&v150[2 * (v176 & 0xFC)]);
          *&v194 = v193.u32[0];
          *(&v194 + 1) = v193.u32[1];
          v195 = v194;
          *&v194 = v193.u32[2];
          *(&v194 + 1) = v193.u32[3];
          v196 = &v362[8 * (v176 & 0xFC)];
          *(v196 + 232) = v194;
          *(v196 + 216) = v195;
          v176 += 4;
        }

        while (v151 != v176);
        if (v146 != v151)
        {
          goto LABEL_118;
        }

        goto LABEL_116;
      }

      v151 = v146 & 0x1F0;
      do
      {
LABEL_118:
        *&v363[8 * v151 + 152] = *&v150[2 * v151];
        ++v151;
      }

      while (v146 > v151);
      v197 = v147 + 2 * (2 * v148);
      if (v146 < 4)
      {
        v198 = 0;
        goto LABEL_135;
      }

      v152 = v146 - 1;
      v153 = (v146 - 1);
    }

    v198 = 0;
    if (v153 == 255 || v152 > 0xFF)
    {
      goto LABEL_234;
    }

    if (v146 < 0x10)
    {
      v199 = 0;
      goto LABEL_130;
    }

    v200 = 0;
    v199 = v146 & 0x1F0;
    do
    {
      v201 = &v197[2 * (v200 & 0xF0)];
      v202 = *(v201 + 1);
      v203 = vmovl_u16(*v201);
      *&v204 = v203.u32[0];
      *(&v204 + 1) = v203.u32[1];
      v205 = v204;
      *&v204 = v203.u32[2];
      *(&v204 + 1) = v203.u32[3];
      v206 = v204;
      v207 = vmovl_high_u16(*v201);
      *&v204 = v207.u32[0];
      *(&v204 + 1) = v207.u32[1];
      v208 = v204;
      *&v204 = v207.u32[2];
      *(&v204 + 1) = v207.u32[3];
      v209 = v204;
      v210 = vmovl_u16(*v202.i8);
      *&v204 = v210.u32[0];
      *(&v204 + 1) = v210.u32[1];
      v211 = v204;
      *&v204 = v210.u32[2];
      *(&v204 + 1) = v210.u32[3];
      v212 = v204;
      v213 = &v362[8 * (v200 & 0xF0)];
      v213[29] = v208;
      v213[30] = v209;
      v214 = vmovl_high_u16(v202);
      *&v204 = v214.u32[0];
      *(&v204 + 1) = v214.u32[1];
      v215 = v204;
      v213[27] = v205;
      v213[28] = v206;
      *&v204 = v214.u32[2];
      *(&v204 + 1) = v214.u32[3];
      v213[33] = v215;
      v213[34] = v204;
      v213[31] = v211;
      v213[32] = v212;
      v200 += 16;
    }

    while (v199 != v200);
    if (v146 != v199)
    {
      if ((v146 & 0xC) == 0)
      {
        v198 = v146 & 0x1F0;
        goto LABEL_135;
      }

LABEL_130:
      v198 = v146 & 0x1FC;
      do
      {
        v216 = vmovl_u16(*&v197[2 * (v199 & 0xFC)]);
        *&v217 = v216.u32[0];
        *(&v217 + 1) = v216.u32[1];
        v218 = v217;
        *&v217 = v216.u32[2];
        *(&v217 + 1) = v216.u32[3];
        v219 = &v362[8 * (v199 & 0xFC)];
        *(v219 + 27) = v218;
        *(v219 + 28) = v217;
        v199 += 4;
      }

      while (v198 != v199);
      if (v146 != v198)
      {
LABEL_234:
        do
        {
LABEL_135:
          *&v363[8 * v198 + 368] = *&v197[2 * v198];
          ++v198;
        }

        while (v146 > v198);
      }
    }
  }

  v220 = HIDWORD(v336);
  if (HIDWORD(v336))
  {
    v221 = v332;
    v222 = HIDWORD(v333);
    if (HIDWORD(v336) < 4)
    {
      v223 = 0;
      goto LABEL_139;
    }

    v223 = 0;
    v226 = HIDWORD(v336) - 1;
    v227 = (BYTE4(v336) - 1);
    if (v227 == 255 || v226 > 0xFF)
    {
      goto LABEL_139;
    }

    if (HIDWORD(v336) < 0x10)
    {
      v228 = 0;
      goto LABEL_151;
    }

    v228 = WORD2(v336) & 0x1F0;
    v229 = v332 + 2;
    v230 = v361;
    v231 = WORD2(v336) & 0x1F0;
    do
    {
      v232 = *v229[-2].i8;
      v233 = *v229->i8;
      v234 = vmovl_u16(*v232.i8);
      *&v235 = v234.u32[0];
      *(&v235 + 1) = v234.u32[1];
      v236 = v235;
      *&v235 = v234.u32[2];
      *(&v235 + 1) = v234.u32[3];
      v237 = v235;
      v238 = vmovl_high_u16(v232);
      *&v235 = v238.u32[0];
      *(&v235 + 1) = v238.u32[1];
      v239 = v235;
      *&v235 = v238.u32[2];
      *(&v235 + 1) = v238.u32[3];
      v240 = v235;
      v241 = vmovl_u16(*v229);
      *&v235 = v241.u32[0];
      *(&v235 + 1) = v241.u32[1];
      v242 = v235;
      *&v235 = v241.u32[2];
      *(&v235 + 1) = v241.u32[3];
      v243 = v235;
      *(v230 - 2) = v239;
      *(v230 - 1) = v240;
      v244 = vmovl_high_u16(v233);
      *&v235 = v244.u32[0];
      *(&v235 + 1) = v244.u32[1];
      v245 = v235;
      *(v230 - 4) = v236;
      *(v230 - 3) = v237;
      *&v235 = v244.u32[2];
      *(&v235 + 1) = v244.u32[3];
      v230[2] = v245;
      v230[3] = v235;
      *v230 = v242;
      v230[1] = v243;
      v230 += 8;
      v229 += 4;
      v231 -= 16;
    }

    while (v231);
    if (v220 == v228)
    {
LABEL_154:
      v224 = v221 + 2 * v222;
    }

    else
    {
      if ((v220 & 0xC) != 0)
      {
LABEL_151:
        v223 = v220 & 0x1FC;
        do
        {
          v246 = vmovl_u16(*(v221 + 2 * (v228 & 0xFC)));
          *&v247 = v246.u32[0];
          *(&v247 + 1) = v246.u32[1];
          v248 = v247;
          *&v247 = v246.u32[2];
          *(&v247 + 1) = v246.u32[3];
          v249 = &v355 + (v228 & 0xFC);
          *v249 = v248;
          *(v249 + 1) = v247;
          v228 += 4;
        }

        while (v223 != v228);
        if (v220 != v223)
        {
          goto LABEL_139;
        }

        goto LABEL_154;
      }

      v223 = v220 & 0x1F0;
      do
      {
LABEL_139:
        *(&v355 + v223) = v221->u16[v223];
        ++v223;
      }

      while (v220 > v223);
      v224 = v221 + 2 * v222;
      if (v220 < 4)
      {
        v225 = 0;
        goto LABEL_168;
      }

      v226 = v220 - 1;
      v227 = (v220 - 1);
    }

    v225 = 0;
    if (v227 == 255 || v226 > 0xFF)
    {
      goto LABEL_168;
    }

    if (v220 < 0x10)
    {
      v250 = 0;
      goto LABEL_163;
    }

    v251 = 0;
    v250 = v220 & 0x1F0;
    do
    {
      v252 = &v224[2 * (v251 & 0xF0)];
      v253 = *(v252 + 1);
      v254 = vmovl_u16(*v252);
      *&v255 = v254.u32[2];
      *(&v255 + 1) = v254.u32[3];
      v256 = v255;
      v257 = vmovl_high_u16(*v252);
      *&v255 = v257.u32[0];
      *(&v255 + 1) = v257.u32[1];
      v258 = v255;
      *&v255 = v257.u32[2];
      *(&v255 + 1) = v257.u32[3];
      v259 = v255;
      *&v255 = v254.u32[0];
      *(&v255 + 1) = v254.u32[1];
      v260 = v255;
      v261 = vmovl_u16(*v253.i8);
      *&v255 = v261.u32[0];
      *(&v255 + 1) = v261.u32[1];
      v262 = v255;
      *&v255 = v261.u32[2];
      *(&v255 + 1) = v261.u32[3];
      v263 = v255;
      v264 = &v355 + (v251 & 0xF0);
      *(v264 + 27) = v260;
      v264 += 27;
      v265 = vmovl_high_u16(v253);
      *&v255 = v265.u32[2];
      *(&v255 + 1) = v265.u32[3];
      v266 = v255;
      *(v264 + 1) = v256;
      *(v264 + 2) = v258;
      *&v255 = v265.u32[0];
      *(&v255 + 1) = v265.u32[1];
      *(v264 + 6) = v255;
      *(v264 + 7) = v266;
      *(v264 + 4) = v262;
      *(v264 + 5) = v263;
      *(v264 + 3) = v259;
      v251 += 16;
    }

    while (v250 != v251);
    if (v220 == v250)
    {
LABEL_166:
      v271 = v221 + 2 * (2 * v222);
    }

    else
    {
      if ((v220 & 0xC) != 0)
      {
LABEL_163:
        v225 = v220 & 0x1FC;
        do
        {
          v267 = vmovl_u16(*&v224[2 * (v250 & 0xFC)]);
          *&v268 = v267.u32[0];
          *(&v268 + 1) = v267.u32[1];
          v269 = v268;
          *&v268 = v267.u32[2];
          *(&v268 + 1) = v267.u32[3];
          v270 = &v355 + (v250 & 0xFC);
          *(v270 + 29) = v268;
          *(v270 + 27) = v269;
          v250 += 4;
        }

        while (v225 != v250);
        if (v220 != v225)
        {
          goto LABEL_168;
        }

        goto LABEL_166;
      }

      v225 = v220 & 0x1F0;
      do
      {
LABEL_168:
        *&v361[8 * v225 + 152] = *&v224[2 * v225];
        ++v225;
      }

      while (v220 > v225);
      v271 = v221 + 2 * (2 * v222);
      if (v220 < 4)
      {
        v272 = 0;
        goto LABEL_185;
      }

      v226 = v220 - 1;
      v227 = (v220 - 1);
    }

    v272 = 0;
    if (v227 == 255 || v226 > 0xFF)
    {
      goto LABEL_235;
    }

    if (v220 < 0x10)
    {
      v273 = 0;
      goto LABEL_180;
    }

    v274 = 0;
    v273 = v220 & 0x1F0;
    do
    {
      v275 = &v271[2 * (v274 & 0xF0)];
      v276 = *(v275 + 1);
      v277 = vmovl_u16(*v275);
      *&v278 = v277.u32[0];
      *(&v278 + 1) = v277.u32[1];
      v279 = v278;
      *&v278 = v277.u32[2];
      *(&v278 + 1) = v277.u32[3];
      v280 = v278;
      v281 = vmovl_high_u16(*v275);
      *&v278 = v281.u32[0];
      *(&v278 + 1) = v281.u32[1];
      v282 = v278;
      *&v278 = v281.u32[2];
      *(&v278 + 1) = v281.u32[3];
      v283 = v278;
      v284 = vmovl_u16(*v276.i8);
      *&v278 = v284.u32[0];
      *(&v278 + 1) = v284.u32[1];
      v285 = v278;
      *&v278 = v284.u32[2];
      *(&v278 + 1) = v284.u32[3];
      v286 = v278;
      v287 = &v355 + (v274 & 0xF0);
      *(v287 + 29) = v282;
      *(v287 + 30) = v283;
      v288 = vmovl_high_u16(v276);
      *&v278 = v288.u32[0];
      *(&v278 + 1) = v288.u32[1];
      v289 = v278;
      *(v287 + 27) = v279;
      *(v287 + 28) = v280;
      *&v278 = v288.u32[2];
      *(&v278 + 1) = v288.u32[3];
      *(v287 + 33) = v289;
      *(v287 + 34) = v278;
      *(v287 + 31) = v285;
      *(v287 + 32) = v286;
      v274 += 16;
    }

    while (v273 != v274);
    if (v220 != v273)
    {
      if ((v220 & 0xC) == 0)
      {
        v272 = v220 & 0x1F0;
        goto LABEL_185;
      }

LABEL_180:
      v272 = v220 & 0x1FC;
      do
      {
        v290 = vmovl_u16(*&v271[2 * (v273 & 0xFC)]);
        *&v291 = v290.u32[0];
        *(&v291 + 1) = v290.u32[1];
        v292 = v291;
        *&v291 = v290.u32[2];
        *(&v291 + 1) = v290.u32[3];
        v293 = &v355 + (v273 & 0xFC);
        *(v293 + 27) = v292;
        *(v293 + 28) = v291;
        v273 += 4;
      }

      while (v272 != v273);
      if (v220 != v272)
      {
LABEL_235:
        do
        {
LABEL_185:
          *&v361[8 * v272 + 368] = *&v271[2 * v272];
          ++v272;
        }

        while (v220 > v272);
      }
    }
  }

  bzero(v351, 0x288uLL);
  bzero(v347, 0x288uLL);
  memset(v346, 0, 33);
  v345 = 0u;
  v344 = 0u;
  v343 = 0u;
  *&v364[8] = 0;
  *v364 = 0;
  *&v364[23] = 0;
  *&v364[16] = 0;
  LOBYTE(v329[0]) = 0;
  peridot::HDUnfoldClass::twoTargetLogic(v327, v50, v362, &v355, v323, v146, v319, v322, a10, v351, v347, v364, &v343, v329);
  *(v320 + 4080) = 0;
  v294 = LOBYTE(v329[0]);
  if (LOBYTE(v329[0]))
  {
    v295 = 0;
    v296 = 0;
    *v323 = *v364;
    v297 = 1944;
    *(v320 + 4064) = *&v364[11];
    v298 = v320;
    do
    {
      *v298 = v351[v295];
      *(v320 + v295 + 3972) = *(&v343 + v295);
      v299 = v347[v295];
      if (v299)
      {
        v300 = v50 + 144 * ((v299 - 1) % 3uLL) + 48 * ((v299 - 1) / 3uLL);
        v298[81] = *v300;
        v301 = v320 + 4 * v295;
        *(v301 + 1296) = *(v300 + 8);
        *(v301 + 1620) = *(v300 + 12);
        v302 = (v320 + v297);
        *v302 = *(v300 + 16);
        v302[81] = *(v300 + 20);
        v302[162] = *(v300 + 24);
        *(v320 + v295 + 2916) = *(v300 + 40);
        v302[264] = *(v300 + 28);
        v302[345] = *(v300 + 32);
        v302[426] = *(v300 + 36);
        ++v296;
      }

      ++v295;
      ++v298;
      v297 += 4;
    }

    while (v294 != v295);
    v303 = 0;
    v304 = 0;
    *(v320 + 4088) = v296;
    v305 = 2052;
    do
    {
      *(v320 + 8 * v303 + 216) = v354[v303];
      *(v320 + v303 + 3999) = *(&v344 + v303 + 11);
      v306 = v350[v303];
      if (v306)
      {
        v307 = v50 + 144 * ((v306 - 1) % 3uLL) + 48 * ((v306 - 1) / 3uLL);
        *(v320 + 8 * v303 + 864) = *v307;
        v308 = v320 + 4 * v303;
        *(v308 + 1404) = *(v307 + 8);
        *(v308 + 1728) = *(v307 + 12);
        v309 = (v320 + v305);
        *v309 = *(v307 + 16);
        v309[81] = *(v307 + 20);
        v309[162] = *(v307 + 24);
        *(v320 + v303 + 2943) = *(v307 + 40);
        v309[264] = *(v307 + 28);
        v309[345] = *(v307 + 32);
        v309[426] = *(v307 + 36);
        ++v304;
      }

      ++v303;
      v305 += 4;
    }

    while (v294 != v303);
    v310 = 0;
    v311 = 0;
    *(v320 + 4096) = v304;
    v312 = 2160;
    do
    {
      *(v320 + 8 * v310 + 432) = v354[v310 + 27];
      *(v320 + v310 + 4026) = v346[v310 + 6];
      v313 = v350[v310 + 27];
      if (v313)
      {
        v314 = v50 + 144 * ((v313 - 1) % 3uLL) + 48 * ((v313 - 1) / 3uLL);
        *(v320 + 8 * v310 + 1080) = *v314;
        v315 = v320 + 4 * v310;
        *(v315 + 1512) = *(v314 + 8);
        *(v315 + 1836) = *(v314 + 12);
        v316 = (v320 + v312);
        *v316 = *(v314 + 16);
        v316[81] = *(v314 + 20);
        v316[162] = *(v314 + 24);
        *(v320 + v310 + 2970) = *(v314 + 40);
        v316[264] = *(v314 + 28);
        v316[345] = *(v314 + 32);
        v316[426] = *(v314 + 36);
        ++v311;
      }

      ++v310;
      v312 += 4;
    }

    while (v294 != v310);
    if (v304 <= v296)
    {
      v317 = v296;
    }

    else
    {
      v317 = v304;
    }

    if (v311 > v317)
    {
      v317 = v311;
    }

    *(v320 + 4104) = v311;
    *(v320 + 4080) = v317;
  }

  v379 = &unk_283809E68;
  if (v380 && v382 == 1)
  {
    MEMORY[0x22AA53170]();
    v380 = 0;
    v383 = 0;
    v382 = 0;
  }

  v381 = 0;
  v374 = &unk_283809E68;
  if (v375 && v377 == 1)
  {
    MEMORY[0x22AA53170]();
    v375 = 0;
    v378 = 0;
    v377 = 0;
  }

  v376 = 0;
  v369 = &unk_283809E68;
  if (v370 && v372 == 1)
  {
    MEMORY[0x22AA53170]();
  }

  v397 = &unk_283809E68;
  if (v398 && v400 == 1)
  {
    MEMORY[0x22AA53170]();
    v398 = 0;
    v401 = 0;
    v400 = 0;
  }

  v399 = 0;
  v392 = &unk_283809E68;
  if (v393 && v395 == 1)
  {
    MEMORY[0x22AA53170]();
    v393 = 0;
    v396 = 0;
    v395 = 0;
  }

  v394 = 0;
  v387 = &unk_283809E68;
  if (v388 && v390 == 1)
  {
    MEMORY[0x22AA53170]();
  }

  v331 = &unk_283809CC0;
  if (v332 && v334 == 1)
  {
    MEMORY[0x22AA53170]();
  }

  v337 = &unk_283809CC0;
  result = v338;
  if (v338 && v340 == 1)
  {
    return MEMORY[0x22AA53170]();
  }

  return result;
}

void sub_2246E1390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v27[23] = v26;
  if (v27[24] && LOBYTE(STACK[0xE30]) == 1)
  {
    MEMORY[0x22AA53170]();
    v27[24] = 0;
    v27[27] = 0;
    LOBYTE(STACK[0xE30]) = 0;
  }

  v27[25] = 0;
  v27[18] = v25;
  if (v27[19] && LOBYTE(STACK[0xE08]) == 1)
  {
    MEMORY[0x22AA53170]();
    v27[19] = 0;
    v27[22] = 0;
    LOBYTE(STACK[0xE08]) = 0;
  }

  v27[20] = 0;
  v27[13] = v24;
  if (v27[14] && LOBYTE(STACK[0xDE0]) == 1)
  {
    MEMORY[0x22AA53170]();
  }

  v27[42] = a22;
  if (v27[43] && LOBYTE(STACK[0xEC8]) == 1)
  {
    MEMORY[0x22AA53170]();
    v27[43] = 0;
    v27[46] = 0;
    LOBYTE(STACK[0xEC8]) = 0;
  }

  v27[44] = 0;
  v27[37] = a23;
  if (v27[38] && LOBYTE(STACK[0xEA0]) == 1)
  {
    MEMORY[0x22AA53170]();
    v27[38] = 0;
    v27[41] = 0;
    LOBYTE(STACK[0xEA0]) = 0;
  }

  v27[39] = 0;
  v27[32] = a24;
  if (v27[33])
  {
    if (LOBYTE(STACK[0xE78]) == 1)
    {
      MEMORY[0x22AA53170]();
    }
  }

  peridot::sMatrixOversized<unsigned short,3u,27u>::~sMatrixOversized(&STACK[0x250]);
  peridot::sMatrixOversized<unsigned short,3u,27u>::~sMatrixOversized(&STACK[0x280]);
  _Unwind_Resume(a1);
}

void peridot::HDUnfoldClass::calcConf(uint64_t a1, int a2, char *__src, int a4, int a5, float *a6, uint64_t a7, int a8, float a9, char a10, uint64_t a11, uint64_t a12)
{
  __dst[81] = *MEMORY[0x277D85DE8];
  v12 = *(__src + 510);
  if (!v12)
  {
    return;
  }

  if (v12 >= 3)
  {
    v13 = "HDUnfoldClass: Unfolded targets confidence calculation supports up to two targets.\n";
LABEL_55:

    peridot_depth_log(v13);
    return;
  }

  v19 = *__src != 0;
  if (*(__src + 27))
  {
    ++v19;
  }

  if (*(__src + 54))
  {
    ++v19;
  }

  if (v12 != 1)
  {
    v40 = *(__src + 1) != 0;
    if (*(__src + 28))
    {
      ++v40;
    }

    if (*(__src + 55))
    {
      ++v40;
    }

    if (v40 >= 2 && v19 >= 2)
    {
      goto LABEL_10;
    }

LABEL_54:
    v13 = "HDUnfoldClass: Unfolded targets must have at least 2 detected (non-zero) bins.\n";
    goto LABEL_55;
  }

  if (v19 <= 1)
  {
    goto LABEL_54;
  }

LABEL_10:
  memcpy(__dst, __src, 0x288uLL);
  memcpy(v130, __src + 1944, sizeof(v130));
  memcpy(v129, __src + 2592, sizeof(v129));
  memcpy(v128, __src + 3000, sizeof(v128));
  memcpy(v127, __src + 3324, sizeof(v127));
  memcpy(v126, __src + 3648, sizeof(v126));
  v21 = 0;
  v22 = *(__src + 4020);
  v124[1] = *(__src + 4004);
  v124[2] = v22;
  v124[3] = *(__src + 4036);
  v125 = __src[4052];
  v23 = *(__src + 3988);
  *&v123[57] = *(__src + 3972);
  v124[0] = v23;
  v109 = a6;
  do
  {
    v24 = &__src[8 * v21];
    v25 = *v24;
    v26 = v24[27];
    v27 = v24[54];
    if (v27)
    {
      v28 = v26 == 0;
    }

    else
    {
      v28 = 2;
    }

    if (v27)
    {
      v29 = v26 == 0;
    }

    else
    {
      v29 = 1;
    }

    if (!v29 && v25 != 0)
    {
      goto LABEL_12;
    }

    v31 = a6[v28];
    if (v28)
    {
      v119 = roundf((v25 - *a6) + v31);
      v32 = v120;
      v33 = 1;
    }

    else
    {
      v33 = 0;
      v32 = &v119;
    }

    if (v27)
    {
      v34 = v26 == 0;
    }

    else
    {
      v34 = 0;
    }

    if (v34)
    {
      goto LABEL_33;
    }

    *v32 = roundf((v26 - a6[1]) + v31);
    if (v27)
    {
      ++v33;
LABEL_33:
      v120[v33 - 1] = roundf((v27 - a6[2]) + v31);
    }

    v35 = v119;
    if (v119 >= v120[0])
    {
      v36 = v119;
    }

    else
    {
      v36 = v120[0];
    }

    LOBYTE(v20) = *(a1 + 72);
    v20 = LODWORD(v20);
    v37 = v36 - v20;
    v38 = v37;
    if (v120[0] < v119)
    {
      v35 = v120[0];
    }

    v39 = v35 + v20;
    v121[1] = 0;
    v121[2] = 0;
    if (v38 <= v39)
    {
      operator new();
    }

    v121[0] = 0;
    if (__src[v21 + 4053])
    {
      v118[0] = 0;
      LODWORD(v117[0]) = 0;
      v116[0] = 0;
      v122 = 0;
      a6 = v109;
      peridot::HDUnfoldClass::diffBLRprocess(a1, a7, v28, v39);
      *&v129[108 * v28 + 4 * v21] = 0;
      *&v128[108 * v28 + 4 * v21] = v117[0];
      *&v127[108 * v28 + 4 * v21] = v116[0];
      __dst[27 * v28 + v21] = v122 + v38;
    }

    else
    {
      if (v28 >= (*(*(a7 + 16) + 8) - **(a7 + 16)) >> 3)
      {
        std::vector<float>::__throw_out_of_range[abi:ne200100]();
      }

      if (v28 >= (*(*(a7 + 32) + 8) - **(a7 + 32)) >> 3)
      {
        std::vector<float>::__throw_out_of_range[abi:ne200100]();
      }

      a6 = v109;
    }

    v12 = *(__src + 510);
LABEL_12:
    ++v21;
  }

  while (v21 < v12);
  memset(v117, 0, 108);
  if (v12)
  {
    v42 = &v126[108];
    v43 = *(a1 + 64);
    v44 = &v128[108];
    v45 = v123;
    v46 = v124 + 11;
    v47 = v12;
    while (1)
    {
      v55 = *(v42 - 27);
      v56 = v55 <= v43 && (*(v46 - 27) & 1) == 0 && *(v44 - 27) > 0.0;
      if (*v42 <= v43 && (*v46 & 1) == 0 && *v44 > 0.0)
      {
        ++v56;
      }

      v57 = v42[27];
      v58 = v46[27];
      if (v57 <= v43 && (v46[27] & 1) == 0)
      {
        v58 = 0;
        if (v44[27] > 0.0)
        {
          ++v56;
        }
      }

      v48 = v57 > v43;
      v49 = *v42 > v43;
      v50 = v55 > v43;
      v51 = v56 > 1;
      if (v56 <= 1)
      {
        v50 = 0;
      }

      *(v45 - 27) = *(v46 - 27) | v50;
      v53 = *v46++;
      v52 = v53;
      if (!v51)
      {
        v49 = 0;
      }

      v54 = v52 | v49;
      if (!v51)
      {
        v48 = 0;
      }

      ++v42;
      *v45 = v54;
      v45[27] = (v58 | v48) & 1;
      ++v44;
      ++v45;
      if (!--v47)
      {
        v59 = 0;
        v110 = *(a1 + 76);
        v60 = v123;
        v61 = &__dst[27];
        v62 = &v119;
        v63 = 1.0;
        v64 = 0.707106781;
        v65 = 0.5;
        v66 = v12;
        while (1)
        {
          v71 = *&v127[v59];
          if (*(v60 - 27))
          {
            v72 = 0.0;
          }

          else
          {
            v72 = v63;
          }

          v73 = *&v128[v59] * v72;
          *(v121 + v59) = v73;
          v74 = v72 * v71;
          if (v73 <= 0.0)
          {
            v75 = 0.0;
          }

          else
          {
            v75 = v63;
          }

          if (v73 == 0.0)
          {
            v76 = v63;
          }

          else
          {
            v76 = 0.0;
          }

          v77 = v75 / (v76 + v73);
          if (*v60)
          {
            v78 = 0.0;
          }

          else
          {
            v78 = v63;
          }

          v79 = v78 * *&v127[v59 + 108];
          v80 = *&v128[v59 + 108] * v78;
          v81 = (&v121[27] + v59);
          *(&v121[13] + v59 + 4) = v80;
          if (v80 <= 0.0)
          {
            v82 = 0.0;
          }

          else
          {
            v82 = v63;
          }

          if (v80 == 0.0)
          {
            v83 = v63;
          }

          else
          {
            v83 = 0.0;
          }

          v84 = v82 / (v83 + v80);
          v85 = v60[27];
          if (v85)
          {
            v86 = 0.0;
          }

          else
          {
            v86 = v63;
          }

          v87 = v86 * *&v127[v59 + 216];
          v88 = a9;
          v89 = *&v128[v59 + 216] * v86;
          *v81 = v89;
          if (v89 <= 0.0)
          {
            v90 = 0.0;
          }

          else
          {
            v90 = v63;
          }

          if (v89 == 0.0)
          {
            v91 = v63;
          }

          else
          {
            v91 = 0.0;
          }

          v92 = v90 / (v91 + v89);
          v93 = v63 / (v92 + (v84 + v77));
          v94 = v77 * v93;
          v95 = *&v129[v59];
          v96 = v84 * v93;
          v97 = (*(v117 + v59) + (v74 * v94)) + (v79 * v96);
          v98 = (v73 * (v94 * v94)) + (v80 * (v96 * v96));
          v99 = *&v129[v59 + 108];
          v100 = (v95 * (v94 * v94)) + (v99 * (v96 * v96));
          v101 = v97 + (v87 * (v92 * v93));
          v111 = *&v129[v59 + 216];
          v102 = ((v94 * (*(v61 - 27) + 1)) + (v96 * (*v61 + 1))) + ((v92 * v93) * (v61[27] + 1));
          v103 = v90 + (v82 + v75);
          *(v117 + v59) = v101;
          v104 = (v98 + (v89 * ((v92 * v93) * (v92 * v93)))) * v103;
          *&v116[v59 / 4] = (v100 + (v111 * ((v92 * v93) * (v92 * v93)))) * v103;
          v120[v59 / 4 + 54] = v101 * sqrtf(v103 / v104);
          *v62 = vcvtas_u32_f32(v102);
          v105 = sqrtf(v104);
          v106 = v88;
          v107 = v64;
          v108 = erfc((-(v101 - (sqrtf(v95) * v88)) / v105) * v64) * v65;
          if (*(v121 + v59) <= 0.0 && !*(v60 - 27))
          {
            v108 = 0.0;
          }

          v67 = erfc((-(v101 - (sqrtf(v99) * v106)) / v105) * v107) * 0.5;
          if (*(v81 - 27) <= 0.0 && !*v60)
          {
            v67 = 0.0;
          }

          ++v60;
          ++v61;
          v68 = v89 > 0.0;
          a9 = v106;
          v69 = erfc((-(v101 - (sqrtf(v111) * v106)) / v105) * v107) * 0.5;
          if (((v68 | v85) & 1) == 0)
          {
            v69 = 0.0;
          }

          v63 = 1.0;
          v70 = powf((2.0 / ((((v67 * v108) * (1.0 - v69)) + 1.0) + ((v67 + ((1.0 - v67) * v108)) * v69))) + -1.0, v110);
          v64 = v107;
          v65 = 0.5;
          *&v118[v59 / 4] = (2.0 / (v70 + 1.0)) + -1.0;
          v59 += 4;
          v62 += 2;
          if (!--v66)
          {
            if (!(v12 >> 61))
            {
              operator new();
            }

            std::vector<std::string>::__throw_length_error[abi:ne200100]();
          }
        }
      }
    }
  }

  __p = 0;
  v113 = 0;
  v114 = 0;
  p_p = &__p;
  std::__stable_sort<std::_ClassicAlgPolicy,peridot::HDUnfoldClass::calcConf(peridot::DetectorSingleTarget const(&)[3][3],peridot::HDUnfoldClass::CRT_Output const&,float,unsigned long,unsigned long const*,float const*,peridot::DetectorArgs const&,unsigned long,BOOL,peridot::PeridotDetectorOutput::DetectorTarget &,peridot::HDUnfoldClass::UnFoldRes &)::$_0 &,std::__wrap_iter<unsigned long *>>(0, 0, &p_p, 0, 0, 0, 0);
  if (a10)
  {
    operator new();
  }

  if (__p)
  {
    v113 = __p;
    operator delete(__p);
  }
}

void sub_2246E29AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  operator delete(v28);
  _Unwind_Resume(a1);
}

void peridot::HDUnfoldClass::diffBLRprocess(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  v4 = MEMORY[0x28223BE20](a1, a2, a3, a4);
  v11 = v10;
  v233 = *MEMORY[0x277D85DE8];
  v162 = v4;
  v12 = v4[39] - v4[38];
  v13 = 1;
  if (v6)
  {
    if (v6 == 2)
    {
      v153 = 0;
LABEL_6:
      v161 = *v5;
      v158 = *(v5 + 40);
      v9.i32[0] = *(v5 + 48);
      v159 = *v9.f32;
      v14 = (v7 + 4 * v6);
      v9.i64[0] = *v7;
      v9.i32[2] = *(v7 + 8);
      v15 = vld1q_dup_f32(v14);
      v16 = vsubq_f32(v15, v9);
      v17 = vrndaq_f32(v16);
      v18 = vcvtq_s32_f32(v17);
      v231 = v16.i64[0];
      v229 = v18.i64[0];
      v232 = v16.i32[2];
      v230 = v18.i32[2];
      v19 = vsubq_f32(v16, vrndq_f32(v17));
      v228 = v19.i32[2];
      v227 = v19.i64[0];
      v20 = v12 >> 2;
      v21 = *v8;
      v22 = (v8[1] - *v8) >> 3;
      v17.f32[0] = vcvts_n_f32_u64(v22, 1uLL);
      *v18.i32 = ceilf(v17.f32[0]);
      v23 = vcvtps_u32_f32(v17.f32[0]);
      v17.f32[0] = floorf(vcvts_n_f32_u64(v20, 1uLL));
      v24 = (-1.0 - (v17.f32[0] + *v18.i32));
      v25 = ((v17.f32[0] + (v22 + 2.0)) - *v18.i32);
      v26 = v24 - v25;
      v152 = v6;
      if (v24 > v25)
      {
        v27 = 0;
        v28 = *(v21 + 8 * v23);
        v29 = v28 - 1;
        v156 = v6;
        v30 = *(v4[1] + 8 * v6);
        v31 = v30;
        v32 = -2;
        v157 = v28;
        goto LABEL_21;
      }

      v33 = (v25 - v24);
      if (v33 > 6)
      {
        v27 = v33 + 1;
        v34 = (v33 + 1) & 0x1FFFFFFF8;
        v35 = vaddq_s32(vdupq_n_s32(v24), xmmword_2247A48C0);
        v36 = v226;
        v37.i64[0] = 0x400000004;
        v37.i64[1] = 0x400000004;
        v38.i64[0] = 0x800000008;
        v38.i64[1] = 0x800000008;
        v39 = v34;
        do
        {
          v36[-1] = v35;
          *v36 = vaddq_s32(v35, v37);
          v35 = vaddq_s32(v35, v38);
          v36 += 2;
          v39 -= 8;
        }

        while (v39);
        if (v27 == v34)
        {
          v40 = v34 - 1;
          goto LABEL_18;
        }

        v24 += v34;
      }

      else
      {
        v34 = 0;
      }

      v27 = v34;
      do
      {
        v224[v27++ + 368] = v24++;
      }

      while (v26 + v27 != 1);
      v40 = v27 - 1;
LABEL_18:
      v41 = *(v21 + 8 * v23);
      v32 = v40 - 1;
      v157 = v41;
      if (v40 == 1)
      {
        v156 = v6;
        v166 = 1;
        v27 = 2;
        goto LABEL_26;
      }

      v29 = v41 - 1;
      v156 = v6;
      v30 = *(v4[1] + 8 * v6);
      v31 = v30;
      if (v32 <= 3)
      {
        v42 = 0;
        do
        {
LABEL_24:
          v56 = (v29 + v225[v42]) % v30;
          v224[v42++] = v56 + (v31 & (v56 >> 31)) + 1;
        }

        while (v32 != v42);
LABEL_25:
        v166 = 0;
LABEL_26:
        bzero(v222, 0x5C0uLL);
        bzero(v220, 0x5C0uLL);
        *v57.i32 = *v159.i32 / v11;
        v164 = v27 & 0xFFFFFFFFFFFFFFF8;
        v58 = vdupq_lane_s32(v159, 0);
        v59 = *v57.i32;
        v60 = vdupq_lane_s32(v57, 0);
        v165 = v32 & 0xFFFFFFFFFFFFFFF8;
        v61 = 1.0 / v11;
        v154 = vdupq_n_s64(8uLL);
        v155 = vdupq_n_s64(4uLL);
        __asm { FMOV            V0.4S, #1.0 }

        v160 = _Q0;
        v67 = 1;
        v68 = v153;
        v163 = v13;
        v167 = v60;
        v168 = v58;
        while (1)
        {
          v69 = v67;
          if (!v27)
          {
            bzero(v199, 0x2E0uLL);
            goto LABEL_62;
          }

          v70 = v157 - *(&v229 + v68);
          if (v27 > 7)
          {
            v73 = &v217;
            v74 = &v219;
            v75 = vdupq_n_s32(v70);
            v76 = &v215;
            v77 = v226;
            v78 = v27 & 0xFFFFFFFFFFFFFFF8;
            do
            {
              v79 = vaddq_s32(v75, *v77);
              v74[-1] = vaddq_s32(v75, v77[-1]);
              *v74 = v79;
              v73[-1] = v58;
              *v73 = v58;
              v77 += 2;
              v76[-1] = v60;
              *v76 = v60;
              v76 += 2;
              v74 += 2;
              v73 += 2;
              v78 -= 8;
            }

            while (v78);
            v71 = v27 & 0xFFFFFFFFFFFFFFF8;
            v72 = v159.i32[0];
            v59 = *v159.i32 / v11;
            if (v27 == v164)
            {
              goto LABEL_37;
            }
          }

          else
          {
            v71 = 0;
            v72 = v159.i32[0];
          }

          v80 = v27 - v71;
          v81 = v71;
          v82 = &v214[v71];
          v83 = &v216[v81];
          v84 = &v218[v81];
          v85 = &v224[v81 + 368];
          do
          {
            v86 = *v85++;
            *v84++ = v70 + v86;
            *v83++ = v72;
            *v82++ = v59;
            --v80;
          }

          while (v80);
LABEL_37:
          bzero(v199, 0x2E0uLL);
          v88 = 0;
          v89 = 0;
          v90 = 0;
          v91 = *(v162[1] + 8 * v156);
          do
          {
            v92 = v218[v90];
            if (v92 < 1)
            {
              v88 = 1;
              if (v92 > v91)
              {
LABEL_38:
                v89 = 1;
                v199[v90 + 368] = 1;
              }
            }

            else
            {
              v199[v90] = 1;
              if (v92 > v91)
              {
                goto LABEL_38;
              }
            }

            ++v90;
          }

          while (v27 != v90);
          if ((v88 | v89))
          {
            v93 = 0;
            v94 = &v199[368 * (v89 & ~v88 & 1)];
            v95 = v214;
            v96 = v216;
            v97 = v27;
            do
            {
              v98 = *v94++;
              if (v98 == 1)
              {
                if (v68 >= (v161[1] - *v161) >> 3)
                {
                  std::vector<float>::__throw_out_of_range[abi:ne200100]();
                }

                v99 = *(*(*(*v161 + 8 * v68) + 8) + 4 * v93);
                *v96 = v99;
                if (v68 >= (v158[1] - *v158) >> 3)
                {
                  std::vector<float>::__throw_out_of_range[abi:ne200100]();
                }

                *v95 = (*(*(*(*v158 + 8 * v68) + 8) + 4 * v93++) * v99) * v61;
              }

              ++v95;
              ++v96;
              --v97;
            }

            while (v97);
          }

          else
          {
            if (v68 >= (v161[1] - *v161) >> 3)
            {
              std::vector<float>::__throw_out_of_range[abi:ne200100]();
            }

            v100 = *(*(*v161 + 8 * v68) + 8) - 4;
            if (v68 >= (v158[1] - *v158) >> 3)
            {
              v216[0] = *(v100 + 4 * v218[0]);
              std::vector<float>::__throw_out_of_range[abi:ne200100]();
            }

            v101 = *(*(*v158 + 8 * v68) + 8) - 4;
            v102 = v214;
            v103 = v216;
            v104 = v218;
            v105 = v27;
            do
            {
              v106 = *v104++;
              v107 = *(v100 + 4 * v106);
              *v103++ = v107;
              *v102++ = (*(v101 + 4 * v106) * v107) * v61;
              --v105;
            }

            while (v105);
          }

          v87.i32[0] = *(&v227 + v68);
          if (v27 < 8)
          {
            v108 = 0;
            goto LABEL_61;
          }

          v109 = &v213;
          v110 = &v211;
          v111 = vdupq_lane_s32(v87, 0);
          v112 = v27 & 0xFFFFFFFFFFFFFFF8;
          v113 = xmmword_2247A4650;
          v114 = xmmword_2247A4670;
          do
          {
            v115 = vaddq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vcvtq_f64_u64(v113)), vcvtq_f64_u64(v114)), v160);
            v116 = vaddq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vcvtq_f64_u64(vaddq_s64(v113, v155))), vcvtq_f64_u64(vaddq_s64(v114, v155))), v160);
            v109[-1] = v115;
            *v109 = v116;
            v110[-1] = vsubq_f32(v115, v111);
            *v110 = vsubq_f32(v116, v111);
            v114 = vaddq_s64(v114, v154);
            v113 = vaddq_s64(v113, v154);
            v110 += 2;
            v109 += 2;
            v112 -= 8;
          }

          while (v112);
          v108 = v27 & 0xFFFFFFFFFFFFFFF8;
          if (v27 != v164)
          {
            do
            {
LABEL_61:
              v117 = v108 + 1.0;
              *&v212[v108] = v117;
              v210[v108++] = v117 - *v87.i32;
            }

            while (v27 != v108);
          }

LABEL_62:
          v194 = v212;
          v195 = 1;
          v196 = v27;
          v197 = 0;
          v198 = 4 * v27;
          v193 = &unk_28380A0A8;
          v188 = v210;
          v189 = 1;
          v190 = v27;
          v191 = 0;
          v192 = v198;
          v187 = &unk_28380A0A8;
          v182 = v216;
          v183 = 1;
          v184 = v27;
          v185 = 0;
          v186 = v198;
          v181 = &unk_28380A0A8;
          v176 = v208;
          v177 = 1;
          v178 = v27;
          v179 = 0;
          v180 = v198;
          v175 = &unk_28380A0A8;
          Interp1<float,LinearInterpolator<float>>(&v193, &v181, v210, v27, &v175);
          if ((v166 & 1) == 0)
          {
            v118 = &v223;
            v119 = &v209;
            v120 = v32 & 0xFFFFFFFFFFFFFFF8;
            v121.i64[0] = 0x3F0000003F000000;
            v121.i64[1] = 0x3F0000003F000000;
            if (v32 < 8)
            {
              v122 = 0;
              goto LABEL_67;
            }

            do
            {
              v123 = vmlaq_f32(*v118, v121, *v119);
              v118[-1] = vmlaq_f32(v118[-1], v121, v119[-1]);
              *v118 = v123;
              v119 += 2;
              v118 += 2;
              v120 -= 8;
            }

            while (v120);
            v122 = v32 & 0xFFFFFFFFFFFFFFF8;
            if (v32 != v165)
            {
LABEL_67:
              v124 = v32 - v122;
              v125 = 4 * v122;
              v126 = &v208[4 * v122 + 4];
              v127 = &v222[v125];
              do
              {
                v128 = *v126++;
                *v127 = *v127 + (v128 * 0.5);
                ++v127;
                --v124;
              }

              while (v124);
            }
          }

          v171 = 1;
          v172 = v27;
          v173 = 0;
          v174 = 4 * v27;
          v169 = &unk_28380A0A8;
          v170 = v214;
          v201 = v206;
          v202 = 1;
          v203 = v27;
          v204 = 0;
          *&v205 = v174;
          v200 = &unk_28380A0A8;
          Interp1<float,LinearInterpolator<float>>(&v193, &v169, v188, v190, &v200);
          v60 = v167;
          v129.i64[0] = 0x3F0000003F000000;
          v129.i64[1] = 0x3F0000003F000000;
          if ((v166 & 1) == 0)
          {
            v130 = &v221;
            v131 = &v207;
            v132 = v32 & 0xFFFFFFFFFFFFFFF8;
            if (v32 < 8)
            {
              v133 = 0;
              goto LABEL_74;
            }

            do
            {
              v134 = vmlaq_f32(*v130, v129, *v131);
              v130[-1] = vmlaq_f32(v130[-1], v129, v131[-1]);
              *v130 = v134;
              v131 += 2;
              v130 += 2;
              v132 -= 8;
            }

            while (v132);
            v133 = v32 & 0xFFFFFFFFFFFFFFF8;
            if (v32 != v165)
            {
LABEL_74:
              v135 = v32 - v133;
              v136 = 4 * v133;
              v137 = &v206[4 * v133 + 4];
              v138 = &v220[v136];
              do
              {
                v139 = *v137++;
                *v138 = *v138 + (v139 * 0.5);
                ++v138;
                --v135;
              }

              while (v135);
            }
          }

          v200 = &unk_283809D60;
          v58 = v168;
          if (v201 && v204 == 1)
          {
            MEMORY[0x22AA53170]();
            v60 = v167;
            v58 = v168;
          }

          v169 = &unk_283809D60;
          if (v170 && v173 == 1)
          {
            MEMORY[0x22AA53170]();
            v60 = v167;
            v58 = v168;
          }

          v175 = &unk_283809D60;
          if (v176 && v179 == 1)
          {
            MEMORY[0x22AA53170]();
            v60 = v167;
            v58 = v168;
          }

          v181 = &unk_283809D60;
          if (v182 && v185 == 1)
          {
            MEMORY[0x22AA53170]();
            v60 = v167;
            v58 = v168;
          }

          v187 = &unk_283809D60;
          if (v188 && v191 == 1)
          {
            MEMORY[0x22AA53170]();
            v60 = v167;
            v58 = v168;
          }

          v193 = &unk_283809D60;
          if (v194 && v197 == 1)
          {
            MEMORY[0x22AA53170]();
            v60 = v167;
            v58 = v168;
          }

          v67 = 0;
          v68 = v163;
          v59 = *v159.i32 / v11;
          if ((v69 & 1) == 0)
          {
            if ((v166 & 1) == 0)
            {
              if (v152 >= (v161[1] - *v161) >> 3)
              {
                std::vector<float>::__throw_out_of_range[abi:ne200100]();
              }

              v140 = v32;
              if (v152 >= (v158[1] - *v158) >> 3)
              {
                std::vector<float>::__throw_out_of_range[abi:ne200100]();
              }

              v141 = *(*(*v161 + 8 * v152) + 8) - 4;
              v142 = *(*(*v158 + 8 * v152) + 8) - 4;
              v143 = v214;
              v144 = v216;
              v145 = v220;
              v146 = v218;
              v147 = v222;
              v148 = v224;
              do
              {
                v150 = *v148++;
                v149 = v150;
                v151 = *(v141 + 4 * v150);
                LODWORD(v150) = *v147++;
                *v146++ = v151 - *&v150;
                LODWORD(v150) = *v145++;
                *v144++ = *&v150 * 1.5;
                *v143++ = (*&v150 * 0.5) + ((*(v142 + 4 * v149) * v151) * v61);
                --v140;
              }

              while (v140);
            }

            operator new();
          }
        }
      }

LABEL_21:
      v42 = v32 & 0xFFFFFFFFFFFFFFFCLL;
      v43 = vdupq_n_s32(v29);
      v44 = vdupq_n_s32(v30);
      v45 = vdupq_n_s32(v31);
      v46 = v225;
      v47 = v44.i32[1];
      v48 = v44.i32[2];
      v49 = v224;
      v50 = v44.i32[3];
      v51 = v44.i32[0];
      v52.i64[0] = 0x100000001;
      v52.i64[1] = 0x100000001;
      v53 = v32 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v54 = *v46++;
        v55 = vaddq_s32(v43, v54);
        v55.i32[0] %= v51;
        v55.i32[1] %= v47;
        v55.i32[2] %= v48;
        v55.i32[3] %= v50;
        *v49++ = vaddq_s32(vaddq_s32(v55, v52), vandq_s8(vcltzq_s32(v55), v45));
        v53 -= 4;
      }

      while (v53);
      if (v32 == v42)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    v13 = 0;
  }

  v153 = v13;
  v13 = 2;
  goto LABEL_6;
}

void sub_2246E44C8(_Unwind_Exception *exception_object)
{
  if (!v1)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(v1);
  _Unwind_Resume(exception_object);
}

void sub_2246E4558(_Unwind_Exception *a1)
{
  MatrixNxPts<1u,float>::~MatrixNxPts(&STACK[0x320]);
  MatrixNxPts<1u,float>::~MatrixNxPts(&STACK[0x8E0]);
  MatrixNxPts<1u,float>::~MatrixNxPts(&STACK[0xEA0]);
  MatrixNxPts<1u,float>::~MatrixNxPts(&STACK[0x1460]);
  _Unwind_Resume(a1);
}

double std::__stable_sort<std::_ClassicAlgPolicy,peridot::HDUnfoldClass::calcConf(peridot::DetectorSingleTarget const(&)[3][3],peridot::HDUnfoldClass::CRT_Output const&,float,unsigned long,unsigned long const*,float const*,peridot::DetectorArgs const&,unsigned long,BOOL,peridot::PeridotDetectorOutput::DetectorTarget &,peridot::HDUnfoldClass::UnFoldRes &)::$_0 &,std::__wrap_iter<unsigned long *>>(char *a1, char *a2, uint64_t **a3, unint64_t a4, uint64_t *a5, uint64_t a6, __n128 a7)
{
  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      v7 = *(a2 - 1);
      v8 = *a1;
      v9 = **a3;
      a7.n128_u32[0] = *(v9 + 4 * v7);
      if (a7.n128_f32[0] > *(v9 + 4 * *a1))
      {
        *a1 = v7;
        *(a2 - 1) = v8;
      }
    }

    else if (a4 > 128)
    {
      v19 = a4 >> 1;
      v20 = 8 * (a4 >> 1);
      v21 = a4 - (a4 >> 1);
      v22 = &a1[v20];
      if (a4 <= a6)
      {
        std::__stable_sort_move<std::_ClassicAlgPolicy,peridot::HDUnfoldClass::calcConf(peridot::DetectorSingleTarget const(&)[3][3],peridot::HDUnfoldClass::CRT_Output const&,float,unsigned long,unsigned long const*,float const*,peridot::DetectorArgs const&,unsigned long,BOOL,peridot::PeridotDetectorOutput::DetectorTarget &,peridot::HDUnfoldClass::UnFoldRes &)::$_0 &,std::__wrap_iter<unsigned long *>>(a1, v22, a3, a4 >> 1, a5);
        v31 = &a5[v19];
        std::__stable_sort_move<std::_ClassicAlgPolicy,peridot::HDUnfoldClass::calcConf(peridot::DetectorSingleTarget const(&)[3][3],peridot::HDUnfoldClass::CRT_Output const&,float,unsigned long,unsigned long const*,float const*,peridot::DetectorArgs const&,unsigned long,BOOL,peridot::PeridotDetectorOutput::DetectorTarget &,peridot::HDUnfoldClass::UnFoldRes &)::$_0 &,std::__wrap_iter<unsigned long *>>(&a1[v20], a2, a3, v21, v31);
        v32 = *a3;
        v33 = -1;
        v34 = v31;
        v35 = a5;
        v36 = a1;
        v37 = &a5[a4];
        do
        {
          ++v33;
          if (v34 == v37)
          {
            if (v35 == v31)
            {
              return a7.n128_f64[0];
            }

            v51 = &a5[v20 / 8] - v35 - 8;
            if (v51 >= 0x38)
            {
              if ((&a1[8 * v33] - v35) >= 0x20)
              {
                v53 = v36 + 1;
                v54 = (v51 >> 3) + 1;
                v55 = v54 & 0x3FFFFFFFFFFFFFFCLL;
                v52 = &v35[v55];
                v56 = (v35 + 2);
                v57 = v54 & 0x3FFFFFFFFFFFFFFCLL;
                do
                {
                  a7 = v56[-1];
                  v58 = *v56;
                  v53[-1] = a7;
                  *v53 = v58;
                  v53 += 2;
                  v56 += 2;
                  v57 -= 4;
                }

                while (v57);
                if (v54 == (v54 & 0x3FFFFFFFFFFFFFFCLL))
                {
                  return a7.n128_f64[0];
                }

                v36 = (v36 + v55 * 8);
              }

              else
              {
                v52 = v35;
              }
            }

            else
            {
              v52 = v35;
            }

            do
            {
              v59 = *v52++;
              v36->n128_u64[0] = v59;
              v36 = (v36 + 8);
            }

            while (v52 != v31);
            return a7.n128_f64[0];
          }

          v38 = v34;
          v39 = *v34;
          a7.n128_u32[0] = *(*v32 + 4 * v39);
          v40 = *(*v32 + 4 * *v35);
          if (a7.n128_f32[0] <= v40)
          {
            v41 = *v35;
          }

          else
          {
            v41 = v39;
          }

          v35 += a7.n128_f32[0] <= v40;
          v42 = a7.n128_f32[0] > v40;
          v34 = &v38[v42];
          v36->n128_u64[0] = v41;
          v36 = (v36 + 8);
        }

        while (v35 != v31);
        if (v34 == v37)
        {
          return a7.n128_f64[0];
        }

        v43 = v37 - &v38[v42] - 8;
        if (v43 <= 0x57 || (&a1[8 * v33] - &v38[v42] + 8) < 0x20)
        {
          goto LABEL_35;
        }

        v44 = v36 + 1;
        v45 = (v43 >> 3) + 1;
        v46 = 8 * (v45 & 0x3FFFFFFFFFFFFFFCLL);
        v34 = (v34 + v46);
        v47 = &v38[v42 + 2];
        v48 = v45 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          a7 = v47[-1];
          v49 = *v47;
          v44[-1] = a7;
          *v44 = v49;
          v44 += 2;
          v47 += 2;
          v48 -= 4;
        }

        while (v48);
        if (v45 != (v45 & 0x3FFFFFFFFFFFFFFCLL))
        {
          v36 = (v36 + v46);
          do
          {
LABEL_35:
            v50 = *v34++;
            v36->n128_u64[0] = v50;
            v36 = (v36 + 8);
          }

          while (v34 != v37);
        }
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,peridot::HDUnfoldClass::calcConf(peridot::DetectorSingleTarget const(&)[3][3],peridot::HDUnfoldClass::CRT_Output const&,float,unsigned long,unsigned long const*,float const*,peridot::DetectorArgs const&,unsigned long,BOOL,peridot::PeridotDetectorOutput::DetectorTarget &,peridot::HDUnfoldClass::UnFoldRes &)::$_0 &,std::__wrap_iter<unsigned long *>>(a1, v22, a3, a4 >> 1, a5, a6);
        std::__stable_sort<std::_ClassicAlgPolicy,peridot::HDUnfoldClass::calcConf(peridot::DetectorSingleTarget const(&)[3][3],peridot::HDUnfoldClass::CRT_Output const&,float,unsigned long,unsigned long const*,float const*,peridot::DetectorArgs const&,unsigned long,BOOL,peridot::PeridotDetectorOutput::DetectorTarget &,peridot::HDUnfoldClass::UnFoldRes &)::$_0 &,std::__wrap_iter<unsigned long *>>(&a1[v20], a2, a3, v21, a5, a6);

        a7.n128_u64[0] = std::__inplace_merge<std::_ClassicAlgPolicy,peridot::HDUnfoldClass::twoTargetLogic(peridot::DetectorSingleTarget const(&)[3][3],unsigned long const(&)[3][27],unsigned long const(&)[3][27],BOOL const(&)[27],unsigned long,float &,float const*,BOOL &,unsigned long (&)[3][27],unsigned long (&)[3][27],BOOL (&)[27],BOOL (&)[3][27],unsigned char &)::$_0 &,std::__wrap_iter<unsigned long *>>(a1, &a1[v20], a2, a3, v19, v21, a5, a6, v27).n128_u64[0];
      }
    }

    else if (a1 != a2)
    {
      v10 = a1 + 8;
      if (a1 + 8 != a2)
      {
        v11 = 0;
        v12 = **a3;
        v13 = a1;
        do
        {
          v15 = *v13;
          v13 = v10;
          v16 = *v10;
          a7.n128_u32[0] = *(v12 + 4 * v16);
          if (a7.n128_f32[0] > *(v12 + 4 * v15))
          {
            v17 = v11;
            do
            {
              *&a1[v17 + 8] = v15;
              if (!v17)
              {
                v14 = a1;
                goto LABEL_11;
              }

              v15 = *&a1[v17 - 8];
              v17 -= 8;
            }

            while (a7.n128_f32[0] > *(v12 + 4 * v15));
            v14 = &a1[v17 + 8];
LABEL_11:
            *v14 = v16;
          }

          v10 = v13 + 8;
          v11 += 8;
        }

        while (v13 + 8 != a2);
      }
    }
  }

  return a7.n128_f64[0];
}

char *std::__stable_sort_move<std::_ClassicAlgPolicy,peridot::HDUnfoldClass::calcConf(peridot::DetectorSingleTarget const(&)[3][3],peridot::HDUnfoldClass::CRT_Output const&,float,unsigned long,unsigned long const*,float const*,peridot::DetectorArgs const&,unsigned long,BOOL,peridot::PeridotDetectorOutput::DetectorTarget &,peridot::HDUnfoldClass::UnFoldRes &)::$_0 &,std::__wrap_iter<unsigned long *>>(char *result, char *a2, uint64_t **a3, uint64_t a4, uint64_t *a5)
{
  if (a4)
  {
    if (a4 == 1)
    {
LABEL_8:
      *a5 = *result;
      return result;
    }

    if (a4 == 2)
    {
      v7 = *(a2 - 1);
      v5 = a2 - 8;
      v6 = v7;
      v8 = **a3;
      v9 = *(v8 + 4 * v7);
      v10 = *(v8 + 4 * *result);
      if (v9 <= v10)
      {
        v6 = *result;
      }

      *a5++ = v6;
      if (v9 <= v10)
      {
        result = v5;
      }

      goto LABEL_8;
    }

    if (a4 > 8)
    {
      v22 = a4 >> 1;
      v23 = a4 >> 1;
      v24 = &result[v23 * 8];
      v25 = result;
      v29 = a5;
      (std::__stable_sort<std::_ClassicAlgPolicy,peridot::HDUnfoldClass::calcConf(peridot::DetectorSingleTarget const(&)[3][3],peridot::HDUnfoldClass::CRT_Output const&,float,unsigned long,unsigned long const*,float const*,peridot::DetectorArgs const&,unsigned long,BOOL,peridot::PeridotDetectorOutput::DetectorTarget &,peridot::HDUnfoldClass::UnFoldRes &)::$_0 &,std::__wrap_iter<unsigned long *>>)();
      result = std::__stable_sort<std::_ClassicAlgPolicy,peridot::HDUnfoldClass::calcConf(peridot::DetectorSingleTarget const(&)[3][3],peridot::HDUnfoldClass::CRT_Output const&,float,unsigned long,unsigned long const*,float const*,peridot::DetectorArgs const&,unsigned long,BOOL,peridot::PeridotDetectorOutput::DetectorTarget &,peridot::HDUnfoldClass::UnFoldRes &)::$_0 &,std::__wrap_iter<unsigned long *>>(v24, a2, a3, a4 - v22, &v29[v23], a4 - v22);
      v30 = *a3;
      v31 = -1;
      v32 = v29;
      v33 = v24;
      do
      {
        ++v31;
        if (v33 == a2)
        {
          if (v25 == v24)
          {
            return result;
          }

          v48 = v24 - v25 - 8;
          if (v48 >= 0x38 && (&v29[v31] - v25) >= 0x20)
          {
            v49 = v32 + 2;
            v50 = (v48 >> 3) + 1;
            v51 = 8 * (v50 & 0x3FFFFFFFFFFFFFFCLL);
            v32 = (v32 + v51);
            v52 = (v25 + 2);
            v53 = v50 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v54 = *v52;
              *(v49 - 1) = *(v52 - 1);
              *v49 = v54;
              v52 += 2;
              v49 += 2;
              v53 -= 4;
            }

            while (v53);
            if (v50 == (v50 & 0x3FFFFFFFFFFFFFFCLL))
            {
              return result;
            }

            v25 = (v25 + v51);
          }

          do
          {
            v55 = *v25++;
            *v32++ = v55;
          }

          while (v25 != v24);
          return result;
        }

        v34 = v33;
        v35 = *v33;
        v36 = *(*v30 + 4 * v35);
        v37 = *(*v30 + 4 * *v25);
        if (v36 <= v37)
        {
          v38 = *v25;
        }

        else
        {
          v38 = v35;
        }

        v39 = v36 > v37;
        v33 = &v34[v39];
        v25 += v36 <= v37;
        *v32++ = v38;
      }

      while (v25 != v24);
      if (v33 == a2)
      {
        return result;
      }

      v40 = a2 - &v34[v39] - 8;
      if (v40 < 0x58 || (&v29[v31] - &v34[v39] + 8) < 0x20)
      {
        goto LABEL_36;
      }

      v41 = v32 + 2;
      v42 = (v40 >> 3) + 1;
      v43 = 8 * (v42 & 0x3FFFFFFFFFFFFFFCLL);
      v32 = (v32 + v43);
      v44 = &v34[v39 + 2];
      v45 = v42 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v46 = *v44;
        *(v41 - 1) = *(v44 - 1);
        *v41 = v46;
        v44 += 2;
        v41 += 2;
        v45 -= 4;
      }

      while (v45);
      if (v42 != (v42 & 0x3FFFFFFFFFFFFFFCLL))
      {
        v33 = (v33 + v43);
        do
        {
LABEL_36:
          v47 = *v33++;
          *v32++ = v47;
        }

        while (v33 != a2);
      }
    }

    else if (result != a2)
    {
      v11 = *a3;
      v12 = *result;
      result += 8;
      *a5 = v12;
      if (result != a2)
      {
        v13 = 0;
        v14 = *v11;
        v15 = a5;
        v16 = a5;
        do
        {
          v18 = *v16++;
          v17 = v18;
          if (*(v14 + 4 * *result) <= *(v14 + 4 * v18))
          {
            *v16 = *result;
          }

          else
          {
            v15[1] = v17;
            v19 = a5;
            if (v15 != a5)
            {
              v20 = v13;
              while (1)
              {
                v19 = (a5 + v20);
                v21 = *(a5 + v20 - 8);
                if (*(v14 + 4 * *result) <= *(v14 + 4 * v21))
                {
                  break;
                }

                *v19 = v21;
                v20 -= 8;
                if (!v20)
                {
                  v19 = a5;
                  break;
                }
              }
            }

            *v19 = *result;
          }

          result += 8;
          v13 += 8;
          v15 = v16;
        }

        while (result != a2);
      }
    }
  }

  return result;
}

char *std::__rotate[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<unsigned long *>,std::__wrap_iter<unsigned long *>>(char *__src, char *a2, char *a3)
{
  v3 = a3;
  v4 = a2 - __src;
  if (a2 != __src)
  {
    v5 = a3 - a2;
    if (a3 == a2)
    {
      return __src;
    }

    else if (__src + 8 == a2)
    {
      v6 = *__src;
      v7 = __src;
      memmove(__src, a2, v5);
      v3 = &v7[v5];
      *v3 = v6;
    }

    else if (a2 + 8 == a3)
    {
      v8 = a3 - 8;
      v9 = *(a3 - 1);
      v3 = __src + 8;
      v10 = a3 - 8 - __src;
      if (v8 != __src)
      {
        v11 = __src;
        memmove(__src + 8, __src, v10);
        __src = v11;
      }

      *__src = v9;
    }

    else
    {
      v12 = v4 >> 3;
      v13 = v5 >> 3;
      if (v4 >> 3 == v5 >> 3)
      {
        v14 = __src + 8;
        v15 = a2 + 8;
        do
        {
          v16 = *(v14 - 1);
          *(v14 - 1) = *(v15 - 1);
          *(v15 - 1) = v16;
          if (v14 == a2)
          {
            break;
          }

          v14 += 8;
          v17 = v15 == a3;
          v15 += 8;
        }

        while (!v17);
        return a2;
      }

      else
      {
        v18 = v4 >> 3;
        do
        {
          v19 = v18;
          v18 = v13;
          v13 = v19 % v13;
        }

        while (v13);
        v20 = &__src[8 * v18];
        do
        {
          v22 = *(v20 - 1);
          v20 -= 8;
          v21 = v22;
          v23 = &v20[v4];
          v24 = v20;
          do
          {
            v25 = v23;
            *v24 = *v23;
            v26 = (a3 - v23) >> 3;
            v27 = __OFSUB__(v12, v26);
            v29 = v12 - v26;
            v28 = (v29 < 0) ^ v27;
            v23 = &__src[8 * v29];
            if (v28)
            {
              v23 = &v25[8 * v12];
            }

            v24 = v25;
          }

          while (v23 != v20);
          *v25 = v21;
        }

        while (v20 != __src);
        return &__src[v5];
      }
    }
  }

  return v3;
}

void peridot::HDUnfoldClass::crtUnfold2PRI(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(a6 + 16) = 0;
  if (*(a3 + 20))
  {
    operator new[]();
  }

  operator new[]();
}

void sub_2246E5C98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, void *__p, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  Matrix<unsigned short>::~Matrix(&a35);
  Matrix<unsigned short>::~Matrix(&a40);
  MatrixNxPts<1u,int>::~MatrixNxPts(&a45);
  if (__p)
  {
    operator delete(__p);
    if (!a28)
    {
LABEL_3:
      v47 = *(v45 - 232);
      if (!v47)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if (!a28)
  {
    goto LABEL_3;
  }

  operator delete(a28);
  v47 = *(v45 - 232);
  if (!v47)
  {
LABEL_4:
    v48 = *(v45 - 208);
    if (!v48)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_9:
  operator delete(v47);
  v48 = *(v45 - 208);
  if (!v48)
  {
LABEL_6:
    MatrixNxPts<1u,int>::~MatrixNxPts(v45 - 184);
    MatrixNxPts<1u,int>::~MatrixNxPts(v45 - 144);
    _Unwind_Resume(a1);
  }

LABEL_5:
  operator delete(v48);
  goto LABEL_6;
}

void peridot::HDUnfoldClass::twoTargetLogic(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int8x16_t *a5, size_t a6, float *a7, uint64_t a8, _BYTE *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned __int8 *a14)
{
  v15 = a6;
  v533 = *MEMORY[0x277D85DE8];
  *a9 = 0;
  *a7 = *(a1 + 56);
  v532 = 0;
  memset(v531, 0, sizeof(v531));
  v530 = 0;
  memset(v529, 0, sizeof(v529));
  v528 = 0;
  memset(v527, 0, sizeof(v527));
  memset(v526, 0, 81);
  if (!a6)
  {
    return;
  }

  v16 = a5;
  v17 = a3;
  v18 = a1;
  v20 = a13;
  v19 = a14;
  v21 = (a4 + 216);
  v22 = 27;
  v23 = *(a1 + 64);
  v24 = 108;
  do
  {
    v30 = *(v21 - 27);
    if (v30)
    {
      v31 = a2 + 144 * ((v30 - 1) % 3uLL) + 48 * ((v30 - 1) / 3uLL);
      v527[v24 / 4 + 57] = *v31;
      *(v525 + v24 + 4) = *(v31 + 8);
      v32 = *(v31 + 36);
      *&v529[v24 + 228] = v32;
    }

    else
    {
      v32 = *&v529[v24 + 228];
    }

    v34 = v32 <= v23 && v32 > 0.0;
    *(v524 + v22 + 5) = v34;
    if (*v21)
    {
      v35 = a2 + 144 * ((*v21 - 1) % 3uLL) + 48 * ((*v21 - 1) / 3uLL);
      *&v529[v24] = *v35;
      v527[v24 / 4] = *(v35 + 8);
      v36 = *(v35 + 36);
      *&v531[v24] = v36;
    }

    else
    {
      v36 = *&v531[v24];
    }

    v38 = v36 <= v23 && v36 > 0.0;
    v526[v22] = v38;
    v39 = v21[27];
    if (v39)
    {
      v25 = a2 + 144 * ((v39 - 1) % 3uLL) + 48 * ((v39 - 1) / 3uLL);
      *&v529[v24 + 108] = *v25;
      v527[v24 / 4 + 27] = *(v25 + 8);
      v26 = *(v25 + 36);
      *&v531[v24 + 108] = v26;
    }

    else
    {
      v26 = *&v531[v24 + 108];
    }

    v27 = v26 > v23 || v26 <= 0.0;
    v28 = !v27;
    v526[v22 + 27] = v28;
    v29 = v22++ - 26;
    ++v21;
    v24 += 4;
  }

  while (a6 > v29);
  v524[1] = 0;
  v524[0] = 0;
  *(v525 + 7) = 0;
  v525[0] = 0;
  if (a6 == 1)
  {
    LOBYTE(v524[0]) = 1;
    v40 = a4;
    goto LABEL_536;
  }

  v477 = v18;
  v41 = 0;
  v42 = 0;
  v488 = 0;
  v489 = 0;
  v490 = 0;
  v43 = &v527[27];
  do
  {
    v44 = *(v43 - 27);
    if (v44 >= 3.4028e38 || v44 <= 0.0)
    {
      v44 = 3.4028e38;
    }

    if (*v43 < v44 && *v43 > 0.0)
    {
      v44 = *v43;
    }

    v47 = v43[27];
    if (v47 >= v44 || v47 <= 0.0)
    {
      v49 = v44;
    }

    else
    {
      v49 = v43[27];
    }

    v50 = v41;
    v51 = v41 >> 2;
    if (((v41 >> 2) + 1) >> 62)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    if (v41 >> 2 != -1)
    {
      if (!(((v41 >> 2) + 1) >> 62))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    *(4 * v51) = v49;
    v41 = 4 * v51 + 4;
    memcpy(0, 0, v50);
    v488 = 0;
    v490 = 0;
    v489 = (4 * v51 + 4);
    ++v42;
    ++v43;
  }

  while (v42 < a6);
  if (4 * v51 != -4)
  {
    if (v41 < 0x7FFFFFFFFFFFFFFDLL)
    {
      operator new();
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  v16 = a5;
  v19 = a14;
  *&v498 = &v488;
  std::__stable_sort<std::_ClassicAlgPolicy,peridot::HDUnfoldClass::twoTargetLogic(peridot::DetectorSingleTarget const(&)[3][3],unsigned long const(&)[3][27],unsigned long const(&)[3][27],BOOL const(&)[27],unsigned long,float &,float const*,BOOL &,unsigned long (&)[3][27],unsigned long (&)[3][27],BOOL (&)[27],BOOL (&)[3][27],unsigned char &)::$_0 &,std::__wrap_iter<unsigned long *>>(0, 0, &v498, 0, 0, 0, v52);
  v53 = 0;
  *(v523 + 7) = 0;
  v522[1] = 0;
  v522[0] = 0;
  v523[0] = 0;
  memset(v521, 0, 216);
  v40 = a4;
  v54 = *(v18 + 80);
  *v14.i32 = v54.u32[0];
  v15 = a6;
  v17 = a3;
  if (a6 >= 4)
  {
    if (a6 < 0x10)
    {
      v53 = 0;
      goto LABEL_67;
    }

    v53 = a6 & 0x1F0;
    v55 = vdupq_lane_s32(v14, 0);
    v56 = &v527[27];
    v57 = v521;
    v58 = v522;
    v59 = vdupq_n_s64(1uLL);
    v60.i64[0] = 0x101010101010101;
    v60.i64[1] = 0x101010101010101;
    v61 = a3;
    v62 = v53;
    do
    {
      v63 = vceqzq_s64(*(v61 + 112));
      v64 = vceqzq_s64(*(v61 + 96));
      v65 = vceqzq_s64(*(v61 + 80));
      v66 = vceqzq_s64(*(v61 + 64));
      v67 = vceqzq_s64(*(v61 + 48));
      v68 = vceqzq_s64(*(v61 + 32));
      v69 = vceqzq_s64(*(v61 + 16));
      v70 = vceqzq_s64(*v61);
      v71 = vorrq_s8(vuzp1q_s8(vuzp1q_s16(vcgeq_f32(*(v56 - 27), v55), vcgeq_f32(*(v56 - 23), v55)), vuzp1q_s16(vcgeq_f32(*(v56 - 19), v55), vcgeq_f32(*(v56 - 15), v55))), vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(v70, v69), vuzp1q_s32(v68, v67)), vuzp1q_s16(vuzp1q_s32(v66, v65), vuzp1q_s32(v64, v63))));
      v72 = vbicq_s8(v59, v68);
      v73 = vbicq_s8(v59, v67);
      v74 = vbicq_s8(v59, v65);
      v75 = *(v61 + 216);
      v76 = *(v61 + 248);
      v77 = *(v61 + 232);
      v78 = *(v61 + 264);
      v79 = *(v61 + 280);
      v80 = *(v61 + 296);
      v81 = *(v61 + 312);
      v82 = *(v61 + 328);
      v83 = vorrq_s8(vuzp1q_s8(vuzp1q_s16(vcgeq_f32(*v56, v55), vcgeq_f32(*(v56 + 4), v55)), vuzp1q_s16(vcgeq_f32(*(v56 + 8), v55), vcgeq_f32(*(v56 + 12), v55))), vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vceqzq_s64(v75), vceqzq_s64(v77)), vuzp1q_s32(vceqzq_s64(v76), vceqzq_s64(v78))), vuzp1q_s16(vuzp1q_s32(vceqzq_s64(v79), vceqzq_s64(v80)), vuzp1q_s32(vceqzq_s64(v81), vceqzq_s64(v82)))));
      v84 = vtstq_s64(v75, v75);
      v85 = vtstq_s64(v76, v76);
      v86 = vtstq_s64(v79, v79);
      v87 = vtstq_s64(v80, v80);
      v88 = vsubq_s64(vbicq_s8(v59, v63), vtstq_s64(v82, v82));
      v89 = vsubq_s64(vbicq_s8(v59, v64), vtstq_s64(v81, v81));
      v90 = vsubq_s64(v74, v87);
      v91 = vsubq_s64(vbicq_s8(v59, v66), v86);
      v92 = vsubq_s64(v73, vtstq_s64(v78, v78));
      v93 = vsubq_s64(v72, v85);
      v94 = vsubq_s64(vbicq_s8(v59, v69), vtstq_s64(v77, v77));
      v95 = vsubq_s64(vbicq_s8(v59, v70), v84);
      v96 = *(v61 + 432);
      v97 = *(v61 + 448);
      v98 = *(v61 + 464);
      v99 = *(v61 + 480);
      v100 = *(v61 + 496);
      v101 = *(v61 + 512);
      v102 = *(v61 + 528);
      v103 = *(v61 + 544);
      *v58++ = vandq_s8(vandq_s8(vorrq_s8(vuzp1q_s8(vuzp1q_s16(vcgeq_f32(*(v56 + 27), v55), vcgeq_f32(*(v56 + 31), v55)), vuzp1q_s16(vcgeq_f32(*(v56 + 35), v55), vcgeq_f32(*(v56 + 39), v55))), vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vceqzq_s64(v96), vceqzq_s64(v97)), vuzp1q_s32(vceqzq_s64(v98), vceqzq_s64(v99))), vuzp1q_s16(vuzp1q_s32(vceqzq_s64(v100), vceqzq_s64(v101)), vuzp1q_s32(vceqzq_s64(v102), vceqzq_s64(v103))))), v71), vandq_s8(v83, v60));
      v57[6] = vsubq_s64(v89, vtstq_s64(v102, v102));
      v57[7] = vsubq_s64(v88, vtstq_s64(v103, v103));
      v57[4] = vsubq_s64(v91, vtstq_s64(v100, v100));
      v57[5] = vsubq_s64(v90, vtstq_s64(v101, v101));
      v57[2] = vsubq_s64(v93, vtstq_s64(v98, v98));
      v57[3] = vsubq_s64(v92, vtstq_s64(v99, v99));
      *v57 = vsubq_s64(v95, vtstq_s64(v96, v96));
      v57[1] = vsubq_s64(v94, vtstq_s64(v97, v97));
      v57 += 8;
      v61 += 128;
      v56 += 16;
      v62 -= 16;
    }

    while (v62);
    if (v53 == a6)
    {
      goto LABEL_84;
    }

    if ((a6 & 0xC) != 0)
    {
LABEL_67:
      v104 = v53;
      v53 = a6 & 0x1FC;
      v105 = vdupq_lane_s32(v14, 0);
      v106 = v104 - v53;
      v107 = &v521[v104];
      v108 = (v522 + v104);
      v109 = a3 + 8 * v104;
      v110 = &v527[v104 + 27];
      v111 = vdupq_n_s64(1uLL);
      do
      {
        v112 = vceqzq_s64(*(v109 + 16));
        v113 = vceqzq_s64(*v109);
        v114 = vorrq_s8(vcgeq_f32(*(v110 - 27), v105), vuzp1q_s32(v113, v112));
        v115 = *(v109 + 216);
        v116 = *(v109 + 232);
        v117 = vorrq_s8(vcgeq_f32(*v110, v105), vuzp1q_s32(vceqzq_s64(v115), vceqzq_s64(v116)));
        v118 = vsubq_s64(vbicq_s8(v111, v112), vtstq_s64(v116, v116));
        v119 = *(v109 + 432);
        v120 = *(v109 + 448);
        *v108++ = vuzp1_s8(vand_s8(vmovn_s32(vandq_s8(vandq_s8(vorrq_s8(vcgeq_f32(*(v110 + 27), v105), vuzp1q_s32(vceqzq_s64(v119), vceqzq_s64(v120))), v117), v114)), 0x1000100010001), v54).u32[0];
        *v107 = vsubq_s64(vsubq_s64(vbicq_s8(v111, v113), vtstq_s64(v115, v115)), vtstq_s64(v119, v119));
        v107[1] = vsubq_s64(v118, vtstq_s64(v120, v120));
        v107 += 2;
        v109 += 32;
        v110 += 4;
        v106 += 4;
      }

      while (v106);
      if (v53 == a6)
      {
        goto LABEL_84;
      }
    }
  }

  v121 = (a3 + 8 * v53 + 216);
  v122 = &v527[v53 + 27];
  do
  {
    v123 = *(v121 - 27);
    if (v123)
    {
      v124 = *(v122 - 27) >= *v14.i32;
    }

    else
    {
      v124 = 1;
    }

    v125 = v123 != 0;
    v126 = v121 + 1;
    if (*v122 < *v14.i32)
    {
      v124 &= *v121 == 0;
    }

    if (*v121)
    {
      ++v125;
    }

    v127 = v121[27];
    if (v122[27] < *v14.i32)
    {
      v124 &= v127 == 0;
    }

    if (v127)
    {
      v128 = v125 + 1;
    }

    else
    {
      v128 = v125;
    }

    *(v522 + v53) = v124;
    v521[v53++] = v128;
    ++v122;
    v121 = v126;
  }

  while (a6 > v53);
LABEL_84:
  v129 = 0;
  v519 = 0u;
  v520 = 0u;
  v517 = 0u;
  v518 = 0u;
  v515 = 0u;
  v516 = 0u;
  v513 = 0u;
  v514 = 0u;
  v511 = 0u;
  v512 = 0u;
  v509 = 0u;
  v510 = 0u;
  v507 = 0u;
  v508 = 0u;
  v505 = 0u;
  v506 = 0u;
  v503 = 0u;
  v504 = 0u;
  v501 = 0u;
  v502 = 0u;
  v499 = 0u;
  v500 = 0u;
  v130 = (a4 + 216);
  v131 = 1;
  v498 = 0u;
  do
  {
    v132 = *(v130 - 27);
    if (v132 && (*(&v498 + v132) & 1) == 0)
    {
      *(&v498 + v132) = 1;
      ++v129;
    }

    v133 = *v130;
    if (*v130 && (*(&v498 + v133) & 1) == 0)
    {
      *(&v498 + v133) = 1;
      ++v129;
    }

    v134 = v130[27];
    if (v134 && (*(&v498 + v134) & 1) == 0)
    {
      *(&v498 + v134) = 1;
      ++v129;
    }

    v27 = a6 > v131++;
    ++v130;
  }

  while (v27);
  v496[1] = 0;
  v496[0] = 0;
  *(v497 + 7) = 0;
  v497[0] = 0;
  if (a6 <= 3)
  {
    v135 = 0;
    v136 = 0;
    v137 = 0;
    v138 = 0;
    goto LABEL_110;
  }

  if (a6 < 0x10)
  {
    v136 = 0;
    v137 = 0;
    v135 = 0;
LABEL_105:
    v187 = v135;
    v135 = a6 & 0xFFFFFFFFFFFFFFFCLL;
    v188 = v136;
    v189 = v137;
    v190 = 0uLL;
    v191 = v187 - (a6 & 0xFFFFFFFFFFFFFFFCLL);
    v192 = (a5->i32 + v187);
    v193 = (v496 + v187);
    v194 = (v524 + v187);
    v195 = &v521[v187];
    v196 = vdupq_n_s64(3uLL);
    v197 = vdupq_n_s64(2uLL);
    v198.i64[0] = 255;
    v198.i64[1] = 255;
    v199 = 0uLL;
    do
    {
      v200 = *v195;
      v201 = v195[1];
      v195 += 2;
      v202 = vceqq_s64(v201, v196);
      v203 = vceqq_s64(v200, v196);
      *v194++ = vuzp1_s8(vand_s8(vmovn_s32(vuzp1q_s32(v203, v202)), 0x1000100010001), *v200.i8).u32[0];
      v190 = vsubq_s64(v190, v202);
      v188 = vsubq_s64(v188, v203);
      *v200.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vceqq_s64(v200, v197), vceqq_s64(v201, v197))), 0x1000100010001);
      *v200.i8 = vuzp1_s8(*v200.i8, *v200.i8);
      *v193++ = v200.i32[0];
      v204 = *v192++;
      v200.i32[0] = v204;
      v205 = vmovl_u16(*&vmovl_u8(*v200.i8));
      v206.i64[0] = v205.u32[0];
      v206.i64[1] = v205.u32[1];
      v207 = vandq_s8(v206, v198);
      v206.i64[0] = v205.u32[2];
      v206.i64[1] = v205.u32[3];
      v199 = vaddq_s64(v199, vandq_s8(v206, v198));
      v189 = vaddq_s64(v189, v207);
      v191 += 4;
    }

    while (v191);
    v136 = vaddvq_s64(vaddq_s64(v188, v190));
    v137 = vaddvq_s64(vaddq_s64(v189, v199));
    v138 = a6 & 0xFFFFFFFC;
    if (v135 == a6)
    {
      goto LABEL_113;
    }

    goto LABEL_110;
  }

  v468 = v54.u32[0];
  v139 = 0uLL;
  v470 = vdupq_n_s64(3uLL);
  v140 = vdupq_n_s64(2uLL);
  v135 = a6 & 0xFFFFFFFFFFFFFFF0;
  v141 = v496;
  v142 = v524;
  v143 = v521;
  v144 = 0uLL;
  v145 = 0uLL;
  v146 = 0uLL;
  v147 = 0uLL;
  v148 = 0uLL;
  v149 = 0uLL;
  v150 = 0uLL;
  v151 = 0uLL;
  v152 = 0uLL;
  v153 = a5;
  v154 = a6 & 0xFFFFFFFFFFFFFFF0;
  v155 = 0uLL;
  v156 = 0uLL;
  v157 = 0uLL;
  v158 = 0uLL;
  v159 = 0uLL;
  v160 = 0uLL;
  do
  {
    v472 = v158;
    v475 = v155;
    v480 = v151;
    v161 = *v143;
    v162 = v143[1];
    v163 = v143[4];
    v164 = v143[5];
    v165 = v143[6];
    v166 = v143[7];
    v167 = vceqq_s64(v166, v470);
    v168 = vceqq_s64(v165, v470);
    v169 = vceqq_s64(v164, v470);
    v170 = v156;
    v171 = vceqq_s64(v163, v470);
    v173 = v143[2];
    v172 = v143[3];
    v174 = vceqq_s64(v172, v470);
    v175 = vceqq_s64(v173, v470);
    v176 = v157;
    v177 = v150;
    v178 = vceqq_s64(v162, v470);
    v179 = v148;
    v180 = vceqq_s64(*v143, v470);
    v181.i64[0] = 0x101010101010101;
    v181.i64[1] = 0x101010101010101;
    *v142++ = vandq_s8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(v180, v178), vuzp1q_s32(v175, v174)), vuzp1q_s16(vuzp1q_s32(v171, v169), vuzp1q_s32(v168, v167))), v181);
    v146 = vsubq_s64(v146, v174);
    v145 = vsubq_s64(v145, v175);
    v144 = vsubq_s64(v144, v178);
    v139 = vsubq_s64(v139, v180);
    v147 = vsubq_s64(v147, v171);
    v148 = vsubq_s64(v179, v169);
    v149 = vsubq_s64(v149, v168);
    v150 = vsubq_s64(v177, v167);
    *v141++ = vandq_s8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vceqq_s64(v161, v140), vceqq_s64(v162, v140)), vuzp1q_s32(vceqq_s64(v173, v140), vceqq_s64(v172, v140))), vuzp1q_s16(vuzp1q_s32(vceqq_s64(v163, v140), vceqq_s64(v164, v140)), vuzp1q_s32(vceqq_s64(v165, v140), vceqq_s64(v166, v140)))), v181);
    v182 = *v153++;
    v183 = vqtbl1q_s8(v182, xmmword_2247A4890);
    v156 = vaddw_high_u32(v170, v183);
    v155 = vaddw_u32(v475, *v183.i8);
    v184 = vqtbl1q_s8(v182, xmmword_2247A4880);
    v152 = vaddw_high_u32(v152, v184);
    v151 = vaddw_u32(v480, *v184.i8);
    v185 = vqtbl1q_s8(v182, xmmword_2247A48A0);
    v157 = vaddw_u32(v176, *v185.i8);
    v158 = vaddw_high_u32(v472, v185);
    v186 = vqtbl1q_s8(v182, xmmword_2247A48B0);
    v159 = vaddw_u32(v159, *v186.i8);
    v160 = vaddw_high_u32(v160, v186);
    v143 += 8;
    v154 -= 16;
  }

  while (v154);
  v136 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v139, v147), vaddq_s64(v145, v149)), vaddq_s64(vaddq_s64(v144, v148), vaddq_s64(v146, v150))));
  v137 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v151, v157), vaddq_s64(v155, v159)), vaddq_s64(vaddq_s64(v152, v158), vaddq_s64(v156, v160))));
  if (v135 == a6)
  {
    *v14.i32 = v468;
    goto LABEL_113;
  }

  *v14.i32 = v468;
  if ((a6 & 0xC) != 0)
  {
    goto LABEL_105;
  }

  v138 = a6 & 0xFFFFFFF0;
  do
  {
LABEL_110:
    v208 = v521[v135];
    *(v524 + v135) = v208 == 3;
    if (v208 == 3)
    {
      ++v136;
    }

    *(v496 + v135) = v208 == 2;
    v137 += a5->u8[v135];
    v135 = ++v138;
  }

  while (v138 < a6);
LABEL_113:
  v209 = 0;
  v210 = 0;
  v481 = a4 + 216;
  v476 = a4 + 432;
  do
  {
    if (*(v524 + v209) == 1)
    {
      v211 = 0;
      v212 = v496;
      v213 = (a4 + 216);
      do
      {
        v214 = *v212++;
        if (v214 == 1 && *(a4 + 8 * v209) != *(v213 - 27) && *(v481 + 8 * v209) != *v213 && *(v476 + 8 * v209) != v213[27])
        {
          ++v210;
        }

        ++v211;
        ++v213;
      }

      while (a6 > v211);
    }

    v209 = (v209 + 1);
  }

  while (v209 < a6);
  v215 = 0;
  v216 = 0;
  v217 = 0;
  v218 = 1;
  do
  {
    v219 = v218;
    v220 = a5->u8[v215] ^ 1;
    v218 &= v220;
    if (v220 & 1) == 0 && (v219)
    {
      v218 = *(v522 + v215);
    }

    v216 |= *(v496 + v215);
    ++v217;
    ++v215;
  }

  while (v217 < a6);
  if (v136)
  {
    v221 = 0;
  }

  else
  {
    v221 = v137 == 2;
  }

  v223 = v221 && v129 > 3;
  if ((v223 & v218) == 1)
  {
    if (a6 <= 7)
    {
      v224 = 0;
      v225 = 0;
      v226 = a9;
      do
      {
LABEL_272:
        if (a5->i8[v224] == 1)
        {
          *(v524 + v224) = 1;
        }

        v224 = ++v225;
      }

      while (v225 < a6);
LABEL_258:
      *a7 = *v14.i32;
      goto LABEL_365;
    }

    v226 = a9;
    if (a6 < 0x10)
    {
      v224 = 0;
      goto LABEL_163;
    }

    v224 = a6 & 0xFFFFFFFFFFFFFFF0;
    v259 = v524 + 7;
    v260 = a5;
    v261 = a6 & 0xFFFFFFFFFFFFFFF0;
    while (1)
    {
      v262 = *v260;
      if (*v260)
      {
        *(v259 - 7) = 1;
        if ((v262.i8[1] & 1) == 0)
        {
          goto LABEL_226;
        }
      }

      else if ((v262.i8[1] & 1) == 0)
      {
LABEL_226:
        if (v262.i8[2])
        {
          goto LABEL_227;
        }

        goto LABEL_243;
      }

      *(v259 - 6) = 1;
      if (v262.i8[2])
      {
LABEL_227:
        *(v259 - 5) = 1;
        if ((v262.i8[3] & 1) == 0)
        {
          goto LABEL_228;
        }

        goto LABEL_244;
      }

LABEL_243:
      if ((v262.i8[3] & 1) == 0)
      {
LABEL_228:
        if (v262.i8[4])
        {
          goto LABEL_229;
        }

        goto LABEL_245;
      }

LABEL_244:
      *(v259 - 4) = 1;
      if (v262.i8[4])
      {
LABEL_229:
        *(v259 - 3) = 1;
        if ((v262.i8[5] & 1) == 0)
        {
          goto LABEL_230;
        }

        goto LABEL_246;
      }

LABEL_245:
      if ((v262.i8[5] & 1) == 0)
      {
LABEL_230:
        if (v262.i8[6])
        {
          goto LABEL_231;
        }

        goto LABEL_247;
      }

LABEL_246:
      *(v259 - 2) = 1;
      if (v262.i8[6])
      {
LABEL_231:
        *(v259 - 1) = 1;
        if ((v262.i8[7] & 1) == 0)
        {
          goto LABEL_232;
        }

        goto LABEL_248;
      }

LABEL_247:
      if ((v262.i8[7] & 1) == 0)
      {
LABEL_232:
        if (v262.i8[8])
        {
          goto LABEL_233;
        }

        goto LABEL_249;
      }

LABEL_248:
      *v259 = 1;
      if (v262.i8[8])
      {
LABEL_233:
        v259[1] = 1;
        if ((v262.i8[9] & 1) == 0)
        {
          goto LABEL_234;
        }

        goto LABEL_250;
      }

LABEL_249:
      if ((v262.i8[9] & 1) == 0)
      {
LABEL_234:
        if (v262.i8[10])
        {
          goto LABEL_235;
        }

        goto LABEL_251;
      }

LABEL_250:
      v259[2] = 1;
      if (v262.i8[10])
      {
LABEL_235:
        v259[3] = 1;
        if ((v262.i8[11] & 1) == 0)
        {
          goto LABEL_236;
        }

        goto LABEL_252;
      }

LABEL_251:
      if ((v262.i8[11] & 1) == 0)
      {
LABEL_236:
        if (v262.i8[12])
        {
          goto LABEL_237;
        }

        goto LABEL_253;
      }

LABEL_252:
      v259[4] = 1;
      if (v262.i8[12])
      {
LABEL_237:
        v259[5] = 1;
        if ((v262.i8[13] & 1) == 0)
        {
          goto LABEL_238;
        }

        goto LABEL_254;
      }

LABEL_253:
      if ((v262.i8[13] & 1) == 0)
      {
LABEL_238:
        if (v262.i8[14])
        {
          goto LABEL_239;
        }

        goto LABEL_255;
      }

LABEL_254:
      v259[6] = 1;
      if (v262.i8[14])
      {
LABEL_239:
        v259[7] = 1;
        if (v262.i8[15])
        {
          goto LABEL_256;
        }

        goto LABEL_223;
      }

LABEL_255:
      if (v262.i8[15])
      {
LABEL_256:
        v259[8] = 1;
      }

LABEL_223:
      ++v260;
      v259 += 16;
      v261 -= 16;
      if (!v261)
      {
        if (v224 == a6)
        {
          goto LABEL_258;
        }

        v225 = a6 & 0xFFFFFFF0;
        if ((a6 & 8) == 0)
        {
          goto LABEL_272;
        }

LABEL_163:
        v239 = v224;
        v224 = a6 & 0xFFFFFFFFFFFFFFF8;
        v240 = v239 - (a6 & 0xFFFFFFFFFFFFFFF8);
        v241 = (a5->i64 + v239);
        v242 = v524 + v239 + 3;
        while (2)
        {
          v243 = *v241;
          if (*v241)
          {
            *(v242 - 3) = 1;
            if ((v243 & 0x100) == 0)
            {
              goto LABEL_167;
            }

LABEL_175:
            *(v242 - 2) = 1;
            if ((v243 & 0x10000) == 0)
            {
              goto LABEL_176;
            }

LABEL_168:
            *(v242 - 1) = 1;
            if ((v243 & 0x1000000) == 0)
            {
              goto LABEL_169;
            }

LABEL_177:
            *v242 = 1;
            if ((v243 & 0x100000000) == 0)
            {
              goto LABEL_178;
            }

LABEL_170:
            v242[1] = 1;
            if ((v243 & 0x10000000000) == 0)
            {
              goto LABEL_171;
            }

LABEL_179:
            v242[2] = 1;
            if ((v243 & 0x1000000000000) == 0)
            {
              goto LABEL_180;
            }

LABEL_172:
            v242[3] = 1;
            if ((v243 & 0x100000000000000) != 0)
            {
              goto LABEL_181;
            }
          }

          else
          {
            if ((v243 & 0x100) != 0)
            {
              goto LABEL_175;
            }

LABEL_167:
            if ((v243 & 0x10000) != 0)
            {
              goto LABEL_168;
            }

LABEL_176:
            if ((v243 & 0x1000000) != 0)
            {
              goto LABEL_177;
            }

LABEL_169:
            if ((v243 & 0x100000000) != 0)
            {
              goto LABEL_170;
            }

LABEL_178:
            if ((v243 & 0x10000000000) != 0)
            {
              goto LABEL_179;
            }

LABEL_171:
            if ((v243 & 0x1000000000000) != 0)
            {
              goto LABEL_172;
            }

LABEL_180:
            if ((v243 & 0x100000000000000) != 0)
            {
LABEL_181:
              v242[4] = 1;
            }
          }

          ++v241;
          v242 += 8;
          v240 += 8;
          if (!v240)
          {
            v225 = a6 & 0xFFFFFFF8;
            if (v224 != a6)
            {
              goto LABEL_272;
            }

            goto LABEL_258;
          }

          continue;
        }
      }
    }
  }

  v228 = v129 > 4 && v136 == 1;
  if ((v228 & v216) == 1 && v210 != 0)
  {
    v244 = 0;
    v245 = 0;
    __p[0] = 0;
    __p[1] = 0;
    *&v492[0] = 0;
    do
    {
      if (*(v524 + v244) == 1)
      {
        v247 = 0;
        do
        {
          if (*(v496 + v247) == 1)
          {
            if (*(v40 + 8 * v244) == *(v40 + 8 * v247) || (v248 = v40 + 8 * v247, *(v481 + 8 * v244) == *(v248 + 216)) || *(v476 + 8 * v244) == *(v248 + 432) || *(v522 + v247) != 1)
            {
              v251 = __p[1];
              if (__p[1] == (*&v492[0] << 6))
              {
                if (__p[1] + 1 < 0)
                {
                  std::vector<std::string>::__throw_length_error[abi:ne200100]();
                }

                v252 = *&v492[0] << 7;
                if (*&v492[0] << 7 <= (__p[1] & 0x3FFFFFFFFFFFFFC0) + 64)
                {
                  v252 = (__p[1] & 0x3FFFFFFFFFFFFFC0) + 64;
                }

                if (__p[1] <= 0x3FFFFFFFFFFFFFFELL)
                {
                  v253 = v252;
                }

                else
                {
                  v253 = 0x7FFFFFFFFFFFFFFFLL;
                }

                std::vector<BOOL>::reserve(__p, v253);
                v251 = __p[1];
              }

              __p[1] = (v251 + 1);
              *(__p[0] + ((v251 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v251);
            }

            else
            {
              v249 = __p[1];
              if (__p[1] == (*&v492[0] << 6))
              {
                if (__p[1] + 1 < 0)
                {
                  std::vector<std::string>::__throw_length_error[abi:ne200100]();
                }

                if (__p[1] > 0x3FFFFFFFFFFFFFFELL)
                {
                  v250 = 0x7FFFFFFFFFFFFFFFLL;
                }

                else if (*&v492[0] << 7 <= (__p[1] & 0x3FFFFFFFFFFFFFC0) + 64)
                {
                  v250 = (__p[1] & 0x3FFFFFFFFFFFFFC0) + 64;
                }

                else
                {
                  v250 = *&v492[0] << 7;
                }

                std::vector<BOOL>::reserve(__p, v250);
                v249 = __p[1];
              }

              __p[1] = (v249 + 1);
              *(__p[0] + ((v249 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v249;
              v254 = v245;
              v255 = v245 >> 3;
              if (((v245 >> 3) + 1) >> 61)
              {
                std::vector<std::string>::__throw_length_error[abi:ne200100]();
              }

              if (v245 >> 3 != -1)
              {
                if (!(((v245 >> 3) + 1) >> 61))
                {
                  operator new();
                }

                std::__throw_bad_array_new_length[abi:ne200100]();
              }

              *(8 * v255) = v247;
              v245 = 8 * v255 + 8;
              memcpy(0, 0, v254);
              v40 = a4;
              v15 = a6;
            }
          }

          ++v247;
        }

        while (v247 < v15);
      }

      v246 = (v244 + 1);
      v244 = (v244 + 1);
    }

    while (v246 < v15);
    v256 = v245;
    if (v245)
    {
      v257 = 0;
      v258 = 0;
      do
      {
        if ((a5->i8[*(8 * v257)] & 1) == 0)
        {
          operator new();
        }

        v257 = ++v258;
      }

      while (v245 >> 3 > v258);
      v20 = a13;
      v18 = v477;
      v40 = a4;
      v256 = v245;
    }

    else
    {
      v20 = a13;
      v18 = v477;
    }

    v276 = v256 >> 3;
    v16 = a5;
    v19 = a14;
    v226 = a9;
    if (v256 >> 3)
    {
      v277 = a9;
      if (v276 == 1)
      {
        v277 = v524 + MEMORY[0];
      }

      *v277 = 1;
    }

    if (__p[0])
    {
      operator delete(__p[0]);
    }

    v17 = a3;
    goto LABEL_365;
  }

  if (v136 < 2)
  {
    v226 = a9;
    *a9 = 1;
    goto LABEL_365;
  }

  memset(v494, 0, 24);
  std::vector<unsigned long>::__assign_with_size[abi:ne200100]<unsigned long *,unsigned long *>(v494, 0, 0, 0);
  v230 = 0;
  v231 = 0;
  v232 = 0;
  v233 = v494[1];
  v234 = v494[0];
  do
  {
    v235 = v234[v230];
    if (*(v524 + v235) == 1)
    {
      v236 = v232;
      v237 = (v232 >> 3) + 1;
      if (v237 >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      if (v232 >> 3 != -1)
      {
        if (!(v237 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v238 = (8 * (v232 >> 3));
      *v238 = v235;
      v232 = (v238 + 1);
      memcpy(0, 0, v236);
    }

    v230 = ++v231;
  }

  while (v231 < ((v233 - v234) >> 3));
  v493 = 0;
  *__p = 0u;
  memset(v492, 0, sizeof(v492));
  v263 = v232 >> 3;
  v264 = MEMORY[0];
  v20 = a13;
  v226 = a9;
  if ((v232 >> 3) < 2)
  {
    goto LABEL_275;
  }

  v265 = 0;
  v266 = *(a4 + 8 * MEMORY[0]);
  v267 = *(v481 + 8 * MEMORY[0]);
  v268 = __p;
  v269 = *(v476 + 8 * MEMORY[0]);
  v270 = 1;
  v271 = 1;
  v272 = 1;
  do
  {
    v273 = *(8 * v270);
    v274 = *(a4 + 8 * v273) == v266;
    if (*(a4 + 8 * v273) == v266)
    {
      *v268 = 1;
    }

    if (*(v481 + 8 * v273) == v267)
    {
      v274 = 1;
      *(v268 + 27) = 1;
    }

    if (*(v476 + 8 * v273) == v269)
    {
      v274 = 1;
      *(v268 + 54) = 1;
    }

    v272 &= v274;
    v270 = ++v271;
    --v265;
    v268 = (v268 + 1);
  }

  while (v263 > v271);
  if (v272)
  {
LABEL_275:
    v275 = v264 != *v234 || MEMORY[8] != v234[1];
    v15 = a6;
    v19 = a14;
    if (*(v522 + v264) == 1)
    {
      v278 = *(v522 + MEMORY[8]) ^ 1;
    }

    else
    {
      v278 = 1;
    }

    v17 = a3;
    if (!v232)
    {
      v283 = 0;
      v16 = a5;
      goto LABEL_318;
    }

    v279 = 0;
    v280 = 1;
    v281 = 0;
    v16 = a5;
    while (1)
    {
      if (__p[0])
      {
        if ((BYTE11(v492[0]) & 1) == 0 && v527[MEMORY[8]] <= v527[*v281 + 27])
        {
          v280 = 0;
        }

        if ((BYTE6(v492[2]) & 1) == 0 && v527[MEMORY[8]] <= v527[*v281 + 54])
        {
          v280 = 0;
        }

        if ((BYTE11(v492[0]) & 1) == 0)
        {
LABEL_307:
          if ((BYTE6(v492[2]) & 1) == 0)
          {
            goto LABEL_291;
          }

          v282 = 0;
          if (__p[0])
          {
            goto LABEL_311;
          }

LABEL_309:
          if (v527[MEMORY[8] + 54] <= v527[*v281])
          {
            v280 = 0;
          }

          goto LABEL_311;
        }
      }

      else
      {
        if ((BYTE11(v492[0]) & 1) == 0)
        {
          goto LABEL_307;
        }

        if (v527[MEMORY[8] + 27] <= v527[*v281])
        {
          v280 = 0;
        }
      }

      if ((BYTE6(v492[2]) & 1) == 0)
      {
        if (v527[MEMORY[8] + 27] > v527[*v281 + 54])
        {
          goto LABEL_291;
        }

        goto LABEL_290;
      }

      v282 = 1;
      if ((__p[0] & 1) == 0)
      {
        goto LABEL_309;
      }

LABEL_311:
      if ((v282 & 1) != 0 || v527[MEMORY[8] + 54] > v527[*v281 + 27])
      {
        goto LABEL_291;
      }

LABEL_290:
      v280 = 0;
LABEL_291:
      ++v279;
      ++v281;
      if (v263 <= v279)
      {
        v283 = v280 ^ 1;
LABEL_318:
        if ((v275 | v278) & 1) != 0 || (v283)
        {
          *a9 = 1;
          v40 = a4;
        }

        else
        {
          v494[1] = v234;
          std::vector<unsigned long>::push_back[abi:ne200100](v494, 0);
          std::vector<unsigned long>::push_back[abi:ne200100](v494, 8);
          v284 = v494[0];
          v285 = *v494[0];
          v286 = *(v494[0] + 1);
          v40 = a4;
          v287 = *(a4 + 8 * *v494[0]) == *(a4 + 8 * v286);
          *(a13 + v285) = v287;
          *(a13 + v286) = v287;
          v288 = *(v40 + 216 + 8 * v285) == *(v40 + 216 + 8 * v286);
          v289 = a13 + 27;
          *(v289 + v285) = v288;
          *(v289 + v286) = v288;
          v290 = *(v40 + 432 + 8 * v285) == *(v40 + 432 + 8 * v286);
          v291 = a13 + 54;
          *(v291 + v285) = v290;
          *(v291 + v286) = v290;
          bzero(v524, a6);
          v293 = v494[1] - v284;
          if (v494[1] != v284)
          {
            v294 = v293 >> 3;
            v295 = (v293 >> 3) > 1;
            if ((v293 >> 3) <= 1)
            {
              v296 = 1;
            }

            else
            {
              v296 = v293 >> 3;
            }

            if (!v295)
            {
              v297 = 0;
              goto LABEL_348;
            }

            v297 = v296 & 0xFFFFFFFFFFFFFFFELL;
            v305 = (v284 + 8);
            v306 = v296 & 0xFFFFFFFFFFFFFFFELL;
            do
            {
              v307 = *v305;
              *(v524 + *(v305 - 1)) = 1;
              *(v524 + v307) = 1;
              v305 += 2;
              v306 -= 2;
            }

            while (v306);
            if (v294 != v297)
            {
LABEL_348:
              v308 = v296 - v297;
              v309 = &v284[8 * v297];
              do
              {
                v310 = *v309;
                v309 += 8;
                *(v524 + v310) = 1;
                --v308;
              }

              while (v308);
            }
          }

          LOWORD(v292) = *(v18 + 80);
          *a7 = v292;
        }

        goto LABEL_363;
      }
    }
  }

  v494[1] = v234;
  if (v234 >= v494[2])
  {
    v299 = (v494[2] - v234) >> 2;
    if (v299 <= 1)
    {
      v299 = 1;
    }

    if ((v494[2] - v234) >= 0x7FFFFFFFFFFFFFF8)
    {
      v300 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v300 = v299;
    }

    if (!(v300 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  *v234 = v264;
  v298 = v234 + 1;
  v40 = a4;
  v494[1] = v298;
  if (v265)
  {
    v301 = 0;
    v302 = 0;
    v303 = -v265;
    v17 = a3;
    while ((*(__p + v301) & 1) != 0 || (*(v492 + v301 + 11) & 1) != 0 || (*(&v492[2] + v301 + 6) & 1) != 0)
    {
      v301 = ++v302;
      if (v303 <= v302)
      {
        v15 = a6;
        v19 = a14;
        goto LABEL_352;
      }
    }

    v304 = v301 + 1;
    if (v298 >= v494[2])
    {
      v461 = v494[0];
      v462 = v298 - v494[0];
      v463 = (v298 - v494[0]) >> 3;
      v464 = v463 + 1;
      if ((v463 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v465 = v494[2] - v494[0];
      if ((v494[2] - v494[0]) >> 2 > v464)
      {
        v464 = v465 >> 2;
      }

      if (v465 >= 0x7FFFFFFFFFFFFFF8)
      {
        v466 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v466 = v464;
      }

      if (v466)
      {
        if (!(v466 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v467 = (8 * v463);
      *v467 = *(8 * v304);
      v298 = v467 + 1;
      memcpy(0, v461, v462);
      v494[0] = 0;
      v494[2] = 0;
      if (v461)
      {
        operator delete(v461);
      }

      v40 = a4;
      v15 = a6;
      v19 = a14;
      v494[1] = v298;
    }

    else
    {
      *v298++ = *(8 * v304);
      v15 = a6;
      v19 = a14;
      v494[1] = v298;
    }
  }

  else
  {
    v15 = a6;
    v19 = a14;
    v17 = a3;
  }

LABEL_352:
  bzero(v524, v15);
  v311 = v494[0];
  v312 = v298 - v494[0];
  v221 = v298 == v494[0];
  v16 = a5;
  if (!v221)
  {
    v313 = v312 >> 3;
    if ((v312 >> 3) <= 1)
    {
      v314 = 1;
    }

    else
    {
      v314 = v312 >> 3;
    }

    if (v313 >= 2)
    {
      v315 = v314 & 0xFFFFFFFFFFFFFFFELL;
      v316 = (v494[0] + 8);
      v317 = v314 & 0xFFFFFFFFFFFFFFFELL;
      do
      {
        v318 = *v316;
        *(v524 + *(v316 - 1)) = 1;
        *(v524 + v318) = 1;
        v316 += 2;
        v317 -= 2;
      }

      while (v317);
      if (v313 == v315)
      {
        goto LABEL_363;
      }
    }

    else
    {
      v315 = 0;
    }

    v319 = v314 - v315;
    v320 = &v311[8 * v315];
    do
    {
      v321 = *v320;
      v320 += 8;
      *(v524 + v321) = 1;
      --v319;
    }

    while (v319);
  }

LABEL_363:
  operator delete(0);
  if (v494[0])
  {
    operator delete(v494[0]);
  }

LABEL_365:
  if (*v226 == 1)
  {
    v322 = 0;
    v323 = 0;
    v324 = 0;
    v485 = 0;
    v486 = 0;
    v487 = 0;
    do
    {
      if (v322 < v487)
      {
        *v322 = v521[v323];
        v322 += 8;
      }

      else
      {
        v325 = v485;
        v326 = v322 - v485;
        v327 = (v322 - v485) >> 3;
        v328 = v327 + 1;
        if ((v327 + 1) >> 61)
        {
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        v329 = v487 - v485;
        if ((v487 - v485) >> 2 > v328)
        {
          v328 = v329 >> 2;
        }

        if (v329 >= 0x7FFFFFFFFFFFFFF8)
        {
          v330 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v330 = v328;
        }

        if (v330)
        {
          if (!(v330 >> 61))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v331 = (v322 - v485) >> 3;
        v332 = (8 * v327);
        v333 = (8 * v327 - 8 * v331);
        *v332 = v521[v323];
        v322 = (v332 + 1);
        memcpy(v333, v325, v326);
        v485 = v333;
        v486 = v322;
        v487 = 0;
        if (v325)
        {
          operator delete(v325);
        }

        v15 = a6;
      }

      v486 = v322;
      v323 = ++v324;
    }

    while (v324 < v15);
    v482 = 0;
    v483 = 0;
    v484 = 0;
    if (v322 != v485)
    {
      if (((v322 - v485) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v20 = a13;
    __p[0] = &v485;
    v334.n128_f64[0] = std::__stable_sort<std::_ClassicAlgPolicy,peridot::HDUnfoldClass::twoTargetLogic(peridot::DetectorSingleTarget const(&)[3][3],unsigned long const(&)[3][27],unsigned long const(&)[3][27],BOOL const(&)[27],unsigned long,float &,float const*,BOOL &,unsigned long (&)[3][27],unsigned long (&)[3][27],BOOL (&)[27],BOOL (&)[3][27],unsigned char &)::$_1 &,std::__wrap_iter<unsigned long *>>(0, 0, __p, 0, 0, 0);
    v335 = 0;
    v336 = 0;
    v40 = a4;
    v15 = a6;
    v18 = v477;
    while (*(v524 + v335) != 1 && (a5->i8[v335] != 1 || (*(v522 + v335) & 1) == 0))
    {
      v335 = ++v336;
      if (v336 >= a6)
      {
        goto LABEL_412;
      }
    }

    v337 = 0;
    v338 = 0;
    v339 = 0;
    do
    {
      if ((*(v524 + v337) & 1) == 0 && (a5->i8[v337] & 1) == 0)
      {
        v340 = v339 >> 3;
        if (((v339 >> 3) + 1) >> 61)
        {
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        if (v339 >> 3 != -1)
        {
          if (!(((v339 >> 3) + 1) >> 61))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        *(8 * v340) = v337;
        memcpy(0, 0, v339);
        v15 = a6;
        v339 = 8 * v340 + 8;
      }

      v337 = ++v338;
    }

    while (v338 < v15);
    if (v339)
    {
      if (((v339 >> 3) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v18 = v477;
    v342 = v482;
    v341 = v483;
    if (v483 == v482)
    {
      v344 = 0;
      v15 = a6;
    }

    else
    {
      v343 = 0;
      v344 = 0;
      do
      {
        v345 = v344;
        v346 = v344 >> 3;
        if (((v344 >> 3) + 1) >> 61)
        {
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        v473 = v341;
        if (v344 >> 3 != -1)
        {
          if (!(((v344 >> 3) + 1) >> 61))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v347 = v339;
        *(8 * v346) = *&v342[8 * v343];
        v344 = 8 * v346 + 8;
        memcpy(0, 0, v345);
        v15 = a6;
        v18 = v477;
        v339 = v347;
        v341 = v473;
        ++v343;
      }

      while (v343 < (v473 - v342) >> 3);
    }

    std::vector<unsigned long>::__assign_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&v482, 0, v344, v344 >> 3);
    v20 = a13;
    v40 = a4;
LABEL_412:
    v349 = v482;
    v348 = v483;
    v350 = (v483 - v482) >> 3;
    if (v350 < 2)
    {
      v19 = a14;
      goto LABEL_517;
    }

    v351 = 0;
    v352 = 0;
    do
    {
      v352 |= *(v522 + *&v482[8 * v351++]);
    }

    while (v350 != v351);
    if (v352)
    {
      __p[0] = 0;
      __p[1] = 0;
      *&v492[0] = 0;
      if (v483 != v482)
      {
        v353 = 0;
        v354 = v482;
        do
        {
          v356 = *v354;
          v354 += 8;
          v355 = v356;
          if (v353 < *&v492[0])
          {
            v334.n128_u32[0] = *(v488 + v355);
            *v353 = v334.n128_u32[0];
            v353 += 4;
          }

          else
          {
            v357 = __p[0];
            v358 = v353 - __p[0];
            v359 = (v353 - __p[0]) >> 2;
            v360 = v359 + 1;
            if ((v359 + 1) >> 62)
            {
              std::vector<std::string>::__throw_length_error[abi:ne200100]();
            }

            v361 = *&v492[0] - __p[0];
            if ((*&v492[0] - __p[0]) >> 1 > v360)
            {
              v360 = v361 >> 1;
            }

            if (v361 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v362 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v362 = v360;
            }

            if (v362)
            {
              if (!(v362 >> 62))
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v363 = v359;
            v364 = (4 * v359);
            v365 = &v364[-v363];
            *v364 = *(v488 + v355);
            v353 = (v364 + 1);
            memcpy(v365, v357, v358);
            __p[0] = v365;
            __p[1] = v353;
            *&v492[0] = 0;
            if (v357)
            {
              operator delete(v357);
            }
          }

          __p[1] = v353;
          --v350;
        }

        while (v350);
        if (v353 != __p[0])
        {
          if ((v353 - __p[0]) < 0x7FFFFFFFFFFFFFFDLL)
          {
            operator new();
          }

          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }
      }

      v494[0] = __p;
      std::__stable_sort<std::_ClassicAlgPolicy,peridot::HDUnfoldClass::twoTargetLogic(peridot::DetectorSingleTarget const(&)[3][3],unsigned long const(&)[3][27],unsigned long const(&)[3][27],BOOL const(&)[27],unsigned long,float &,float const*,BOOL &,unsigned long (&)[3][27],unsigned long (&)[3][27],BOOL (&)[27],BOOL (&)[3][27],unsigned char &)::$_2 &,std::__wrap_iter<unsigned long *>>(0, 0, v494, 0, 0, 0, v334);
      v15 = a6;
      v18 = v477;
      if (v483 != v349)
      {
        operator new();
      }

      std::vector<unsigned long>::__assign_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&v482, 0, 0, 0);
      v20 = a13;
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      v349 = v482;
      v348 = v483;
      v350 = (v483 - v482) >> 3;
      v40 = a4;
    }

    v495 = 0;
    memset(v494, 0, sizeof(v494));
    if (v350 < 2)
    {
      goto LABEL_504;
    }

    v366 = 0;
    v367 = *v349;
    v368 = *(v40 + 8 * *v349);
    v369 = *(v481 + 8 * *v349);
    v370 = *(v476 + 8 * *v349);
    v371 = 1;
    v372 = 1;
    do
    {
      v373 = *&v349[8 * v371];
      if (*(v40 + 8 * v373) == v368 && v368 != 0)
      {
        *(v494 + v366) = 1;
      }

      if (*(v481 + 8 * v373) == v369 && v369 != 0)
      {
        *(&v494[3] + v366 + 3) = 1;
      }

      if (*(v476 + 8 * v373) == v370 && v370 != 0)
      {
        *(&v494[6] + v366 + 6) = 1;
      }

      ++v366;
      v371 = ++v372;
    }

    while (v350 > v372);
    if (v366)
    {
      v377 = 0;
      v378 = 0;
      do
      {
        if ((*(v494 + v377) & 1) == 0 && (*(&v494[3] + v377 + 3) & 1) == 0 && *(&v494[6] + v377 + 6) != 1)
        {
          v379 = *&v349[8 * v377 + 8];
          if (v349 >= v484)
          {
            v457 = (v484 - v349) >> 2;
            if (v457 <= 1)
            {
              v457 = 1;
            }

            if (v484 - v349 >= 0x7FFFFFFFFFFFFFF8)
            {
              v458 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v458 = v457;
            }

            if (!(v458 >> 61))
            {
              operator new();
            }
          }

          else
          {
            v19 = a14;
            v483 = v349 + 8;
            if ((v349 + 8) < v484)
            {
              *(v349 + 1) = v379;
              v348 = v349 + 16;
              v483 = v349 + 16;
              v20 = a13;
              goto LABEL_510;
            }

            v459 = (v484 - v349) >> 2;
            if (v459 <= 2)
            {
              v459 = 2;
            }

            if (v484 - v349 >= 0x7FFFFFFFFFFFFFF8)
            {
              v460 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v460 = v459;
            }

            if (!(v460 >> 61))
            {
              operator new();
            }
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v377 = ++v378;
      }

      while (v366 > v378);
      if (v350 != 2)
      {
        v380 = 0;
        v381 = v494;
        v382 = 1;
        do
        {
          if (*v381)
          {
            __p[v380++] = 0;
          }

          if (*(v381 + 27) == 1)
          {
            __p[v380++] = 1;
          }

          if (*(v381 + 54) == 1)
          {
            __p[v380++] = 2;
          }

          v27 = v366 > v382++;
          v381 = (v381 + 1);
        }

        while (v27);
        if (v380)
        {
          v383 = 0;
          v384 = 0;
          v385 = 0.0;
          do
          {
            if (v527[27 * __p[v383] + v367] > v385)
            {
              v384 = v383;
              v385 = v527[27 * __p[v383] + v367];
            }

            ++v383;
          }

          while (v380 > v383);
          v386 = v384 + 1;
LABEL_486:
          v20 = a13;
          v387 = v484;
          if (v349 >= v484)
          {
            v388 = (v484 - v349) >> 2;
            if (v388 <= 1)
            {
              v388 = 1;
            }

            if (v484 - v349 >= 0x7FFFFFFFFFFFFFF8)
            {
              v389 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v389 = v388;
            }

            if (!(v389 >> 61))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          *v349 = 0;
          v483 = v349 + 8;
          if ((v349 + 8) >= v387)
          {
            v390 = (v387 - v349) >> 2;
            if (v390 <= 2)
            {
              v390 = 2;
            }

            if (v387 - v349 >= 0x7FFFFFFFFFFFFFF8)
            {
              v391 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v391 = v390;
            }

            if (!(v391 >> 61))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          *(v349 + 1) = v386;
          v348 = v349 + 16;
          v483 = v349 + 16;
          v350 = 2;
LABEL_504:
          if (v348 == v349)
          {
            v348 = v349;
          }

          else
          {
            v392 = 0;
            v393 = v494[0];
            v394 = BYTE3(v494[3]);
            v395 = v349;
            v396 = BYTE6(v494[6]);
            do
            {
              v397 = *v395;
              v395 += 8;
              *(v20 + v397) = v393;
              *(v20 + 27 + v397) = v394;
              *(v20 + 54 + v397) = v396;
              ++v392;
            }

            while (v350 > v392);
          }

          v19 = a14;
LABEL_510:
          v398 = *(v349 + 1);
          v399 = fmax(*a7, ceilf(*(v488 + v398) * 100.0) * 0.01);
          *a7 = v399;
          if (*(v20 + *v349) & 1) != 0 || (v400 = v20 + *v349, (*(v400 + 27)))
          {
            v401 = 1;
            v402 = v348 - v349;
            if (v348 != v349)
            {
LABEL_513:
              v403 = 0;
              v404 = v402 >> 3;
              v405 = 1;
              v406 = v349;
              do
              {
                v407 = *v406;
                v406 += 8;
                v405 &= *(v524 + v407) ^ 1;
                ++v403;
              }

              while (v404 > v403);
              if (v401 & v405)
              {
                goto LABEL_516;
              }

              goto LABEL_517;
            }
          }

          else
          {
            v401 = *(v400 + 54);
            v402 = v348 - v349;
            if (v348 != v349)
            {
              goto LABEL_513;
            }
          }

          if (v401)
          {
LABEL_516:
            *a7 = fmaxf(fmaxf(v527[v398], v527[v398 + 27]), v527[v398 + 54]);
          }

LABEL_517:
          bzero(v524, v15);
          v408 = v348 - v349;
          if (v348 == v349)
          {
            v16 = a5;
            if (!v349)
            {
              goto LABEL_531;
            }

            goto LABEL_530;
          }

          v409 = v408 >> 3;
          v410 = (v408 >> 3) > 1;
          if ((v408 >> 3) <= 1)
          {
            v411 = 1;
          }

          else
          {
            v411 = v408 >> 3;
          }

          v16 = a5;
          if (v410)
          {
            v412 = v411 & 0xFFFFFFFFFFFFFFFELL;
            v413 = (v349 + 8);
            v414 = v411 & 0xFFFFFFFFFFFFFFFELL;
            do
            {
              v415 = *v413;
              *(v524 + *(v413 - 1)) = 1;
              *(v524 + v415) = 1;
              v413 += 2;
              v414 -= 2;
            }

            while (v414);
            if (v409 == v412)
            {
              goto LABEL_530;
            }
          }

          else
          {
            v412 = 0;
          }

          v416 = v411 - v412;
          v417 = &v349[8 * v412];
          do
          {
            v418 = *v417;
            v417 += 8;
            *(v524 + v418) = 1;
            --v416;
          }

          while (v416);
LABEL_530:
          v483 = v349;
          operator delete(v349);
LABEL_531:
          if (v485)
          {
            v486 = v485;
            operator delete(v485);
          }

          v17 = a3;
          goto LABEL_534;
        }

LABEL_485:
        v386 = 1;
        goto LABEL_486;
      }
    }

    else if (v350 != 2)
    {
      goto LABEL_485;
    }

    v20 = a13;
    goto LABEL_504;
  }

LABEL_534:
  if (v488)
  {
    v489 = v488;
    operator delete(v488);
  }

LABEL_536:
  v419 = 0;
  *&v511 = 0;
  v509 = 0u;
  v510 = 0u;
  v507 = 0u;
  v508 = 0u;
  v505 = 0u;
  v506 = 0u;
  v503 = 0u;
  v504 = 0u;
  v501 = 0u;
  v502 = 0u;
  v499 = 0u;
  v500 = 0u;
  v498 = 0u;
  v420 = *(v18 + 42);
  do
  {
    *(&v498 + v419) = v420;
    if ((v526[v419] ^ 1) + (v526[v419 + 27] ^ 1) + (v526[v419 + 54] ^ 1u) >= 2)
    {
      *(&v498 + v419) = *(v18 + 48);
    }

    ++v419;
  }

  while (v15 > v419);
  if (v15 < 4)
  {
    v421 = 0;
    goto LABEL_551;
  }

  if (v15 >= 0x10)
  {
    v421 = v15 & 0xFFFFFFFFFFFFFFF0;
    v422 = v524;
    v423 = &v498;
    v424.i64[0] = 0x101010101010101;
    v424.i64[1] = 0x101010101010101;
    v425 = v17;
    v426 = v15 & 0xFFFFFFFFFFFFFFF0;
    do
    {
      v427 = v423[1];
      v428 = v423[2];
      v429 = v423[3];
      v430 = v423[4];
      v431 = v423[5];
      v432 = v423[6];
      v433 = v423[7];
      *v422 = vandq_s8(vandq_s8(vandq_s8(*v422, vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vcgeq_u64(*v423, *(v425 + 432)), vcgeq_u64(v427, *(v425 + 448))), vuzp1q_s32(vcgeq_u64(v428, *(v425 + 464)), vcgeq_u64(v429, *(v425 + 480)))), vuzp1q_s16(vuzp1q_s32(vcgeq_u64(v430, *(v425 + 496)), vcgeq_u64(v431, *(v425 + 512))), vuzp1q_s32(vcgeq_u64(v432, *(v425 + 528)), vcgeq_u64(v433, *(v425 + 544)))))), v424), vandq_s8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vcgeq_u64(*v423, *(v425 + 216)), vcgeq_u64(v427, *(v425 + 232))), vuzp1q_s32(vcgeq_u64(v428, *(v425 + 248)), vcgeq_u64(v429, *(v425 + 264)))), vuzp1q_s16(vuzp1q_s32(vcgeq_u64(v430, *(v425 + 280)), vcgeq_u64(v431, *(v425 + 296))), vuzp1q_s32(vcgeq_u64(v432, *(v425 + 312)), vcgeq_u64(v433, *(v425 + 328))))), vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vcgeq_u64(*v423, *v425), vcgeq_u64(v427, *(v425 + 16))), vuzp1q_s32(vcgeq_u64(v428, *(v425 + 32)), vcgeq_u64(v429, *(v425 + 48)))), vuzp1q_s16(vuzp1q_s32(vcgeq_u64(v430, *(v425 + 64)), vcgeq_u64(v431, *(v425 + 80))), vuzp1q_s32(vcgeq_u64(v432, *(v425 + 96)), vcgeq_u64(v433, *(v425 + 112)))))));
      ++v422;
      v425 += 128;
      v423 += 8;
      v426 -= 16;
    }

    while (v426);
    if (v421 == v15)
    {
      goto LABEL_561;
    }

    if ((v15 & 0xC) == 0)
    {
      goto LABEL_551;
    }
  }

  else
  {
    v421 = 0;
  }

  v434 = v421;
  v421 = v15 & 0xFFFFFFFFFFFFFFFCLL;
  v435 = v434 - (v15 & 0xFFFFFFFFFFFFFFFCLL);
  v436 = (v524 + v434);
  v437 = 8 * v434;
  v438 = v17 + 8 * v434;
  v439 = (&v498 + v437);
  do
  {
    v440 = *v439;
    v441 = v439[1];
    v439 += 2;
    v442 = vmovn_s32(vuzp1q_s32(vcgeq_u64(v440, *v438), vcgeq_u64(v441, *(v438 + 16))));
    v443 = vmovn_s32(vuzp1q_s32(vcgeq_u64(v440, *(v438 + 216)), vcgeq_u64(v441, *(v438 + 232))));
    v444 = vcgeq_u64(v441, *(v438 + 448));
    *v440.i8 = vmovn_s32(vuzp1q_s32(vcgeq_u64(v440, *(v438 + 432)), v444));
    v444.i32[0] = *v436;
    *v436++ = vuzp1_s8(vand_s8(vand_s8(vand_s8(*&vmovl_u8(*v444.i8), *v440.i8), vand_s8(v443, v442)), 0x1000100010001), 0x1000100010001).u32[0];
    v438 += 32;
    v435 += 4;
  }

  while (v435);
  if (v421 != v15)
  {
LABEL_551:
    v445 = (v17 + 8 * v421 + 216);
    do
    {
      v446 = *(&v498 + v421);
      v447 = *(v524 + v421);
      if (v445[27] > v446)
      {
        v447 = 0;
      }

      if (*v445 <= v446)
      {
        v448 = v447;
      }

      else
      {
        v448 = 0;
      }

      if (*(v445 - 27) <= v446)
      {
        v449 = v448;
      }

      else
      {
        v449 = 0;
      }

      *(v524 + v421++) = v449;
      ++v445;
    }

    while (v15 > v421);
  }

LABEL_561:
  v450 = 0;
  v451 = (v40 + 216);
  *v19 = 0;
  v452 = (v20 + 27);
  v453 = (v17 + 216);
  v454 = v524;
  v455 = 1;
  do
  {
    v456 = *v454++;
    if (v456 == 1)
    {
      *(a11 + 8 * v450) = *(v451 - 27);
      *(a10 + 8 * *v19) = *(v453 - 27);
      *(a12 + *v19) = v16->i8[0];
      *(v20 + *v19) = *(v452 - 27);
      *(a11 + 8 * *v19 + 216) = *v451;
      *(a10 + 8 * *v19 + 216) = *v453;
      *(a12 + *v19) = v16->i8[0];
      *(v20 + *v19 + 27) = *v452;
      *(a11 + 8 * *v19 + 432) = v451[27];
      *(a10 + 8 * *v19 + 432) = v453[27];
      *(a12 + *v19) = v16->i8[0];
      *(v20 + *v19 + 54) = v452[27];
      v450 = *v19 + 1;
      *v19 = v450;
    }

    v27 = v15 > v455++;
    v16 = (v16 + 1);
    ++v451;
    ++v452;
    ++v453;
  }

  while (v27);
}