void *sub_2773EF484(void *result, int a2, int a3, int a4, int a5, int a6, uint64_t a7)
{
  v10 = *(a7 + 400);
  v11 = *(a7 + 408);
  v12 = *(a7 + 416);
  v104 = *(a7 + 424);
  v13 = v104 >> 1;
  if (result <= 2)
  {
    if (a2 <= 3)
    {
      v14 = 3;
    }

    else
    {
      v14 = a2;
    }

    v15 = *(a7 + 524);
    LODWORD(v16) = a2 + a6 + 4;
    if (v16 >= v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = v16;
    }

    if (v14 - 3 < v16)
    {
      v17 = v14 - 3;
      v18 = vdupq_n_s64((3 - result) - 1);
      v19 = v10 + 2 * v12 * v17 - 8;
      do
      {
        v20 = 0;
        v21 = *(v10 + 2 * v12 * v17);
        v22 = v19;
        do
        {
          v23 = vdupq_n_s64(v20);
          v24 = vmovn_s64(vcgeq_u64(v18, vorrq_s8(v23, xmmword_27750D320)));
          if (vuzp1_s8(vuzp1_s16(v24, *v18.i8), *v18.i8).u8[0])
          {
            v22[3] = v21;
          }

          if (vuzp1_s8(vuzp1_s16(v24, *&v18), *&v18).i8[1])
          {
            v22[2] = v21;
          }

          if (vuzp1_s8(vuzp1_s16(*&v18, vmovn_s64(vcgeq_u64(v18, vorrq_s8(v23, xmmword_27750D310)))), *&v18).i8[2])
          {
            v22[1] = v21;
            *v22 = v21;
          }

          v25 = vmovn_s64(vcgeq_u64(v18, vorrq_s8(v23, xmmword_27750D300)));
          if (vuzp1_s8(*&v18, vuzp1_s16(v25, *&v18)).i32[1])
          {
            *(v22 - 1) = v21;
          }

          if (vuzp1_s8(*&v18, vuzp1_s16(v25, *&v18)).i8[5])
          {
            *(v22 - 2) = v21;
          }

          if (vuzp1_s8(*&v18, vuzp1_s16(*&v18, vmovn_s64(vcgeq_u64(v18, vorrq_s8(v23, xmmword_27750D2F0))))).i8[6])
          {
            *(v22 - 3) = v21;
            *(v22 - 4) = v21;
          }

          v20 += 8;
          v22 -= 8;
        }

        while (((10 - result) & 0xFFFFFFF8) != v20);
        ++v17;
        v19 += 2 * v12;
      }

      while (v17 != v16);
    }

    if (a4 <= 1)
    {
      v26 = 1;
    }

    else
    {
      v26 = a4;
    }

    v27 = a4 + a6 + 2;
    if (v27 >= v15)
    {
      v28 = v15;
    }

    else
    {
      v28 = a4 + a6 + 2;
    }

    if (v26 <= v28)
    {
      v29 = (1 - a3) & ~((1 - a3) >> 31);
      v30 = v26 - 1;
      v31 = (v29 + 3) & 0xFFFFFFFC;
      v32 = vdupq_n_s64(v29 - 1);
      v33 = v11 + 4 * v13 * v30 - 8;
      do
      {
        if (a3 <= 0)
        {
          v34 = 0;
          v35 = *(v11 + 4 * v13 * v30);
          v36 = v33;
          do
          {
            v37 = vdupq_n_s64(v34);
            v38 = vmovn_s64(vcgeq_u64(v32, vorrq_s8(v37, xmmword_27750D320)));
            if (vuzp1_s16(v38, *v32.i8).u8[0])
            {
              v36[1] = v35;
            }

            if (vuzp1_s16(v38, *&v32).i8[2])
            {
              *v36 = v35;
            }

            if (vuzp1_s16(*&v32, vmovn_s64(vcgeq_u64(v32, vorrq_s8(v37, xmmword_27750D310)))).i32[1])
            {
              *(v36 - 1) = v35;
              *(v36 - 2) = v35;
            }

            v34 += 4;
            v36 -= 4;
          }

          while (v31 != v34);
          v15 = *(a7 + 524);
        }

        ++v30;
        if (v27 >= v15)
        {
          v39 = v15;
        }

        else
        {
          v39 = a4 + a6 + 2;
        }

        v33 += 4 * v13;
      }

      while (v30 < v39);
    }
  }

  v40 = result + a5 + 4;
  v41 = *(a7 + 520);
  if (v40 > v41)
  {
    if (a2 <= 3)
    {
      v42 = 3;
    }

    else
    {
      v42 = a2;
    }

    v43 = *(a7 + 524);
    v44 = a2 + a6 + 4;
    if (v44 >= v43)
    {
      v45 = v43;
    }

    else
    {
      v45 = v44;
    }

    if (v42 - 3 < v45)
    {
      v46 = v40 - v41;
      v47 = v42 - 3;
      v48 = (v46 + 7) & 0xFFFFFFFFFFFFFFF8;
      v49 = vdupq_n_s64(v46 - 1);
      v50 = 2 * v12 * v47 + 2 * v41 + v10 + 8;
      v51 = vdupq_n_s64(8uLL);
      do
      {
        if (v40 != v41)
        {
          v52 = v50;
          v53 = *(v10 + 2 * v41 + 2 * v12 * v47 - 2);
          v54 = v48;
          v55 = xmmword_27750D320;
          v56 = xmmword_27750D310;
          v57 = xmmword_27750D300;
          v58 = xmmword_27750D2F0;
          do
          {
            v59 = vmovn_s64(vcgeq_u64(v49, v55));
            if (vuzp1_s8(vuzp1_s16(v59, *v49.i8), *v49.i8).u8[0])
            {
              *(v52 - 4) = v53;
            }

            if (vuzp1_s8(vuzp1_s16(v59, *&v49), *&v49).i8[1])
            {
              *(v52 - 3) = v53;
            }

            if (vuzp1_s8(vuzp1_s16(*&v49, vmovn_s64(vcgeq_u64(v49, *&v56))), *&v49).i8[2])
            {
              *(v52 - 2) = v53;
              *(v52 - 1) = v53;
            }

            v60 = vmovn_s64(vcgeq_u64(v49, v57));
            if (vuzp1_s8(*&v49, vuzp1_s16(v60, *&v49)).i32[1])
            {
              *v52 = v53;
            }

            if (vuzp1_s8(*&v49, vuzp1_s16(v60, *&v49)).i8[5])
            {
              v52[1] = v53;
            }

            if (vuzp1_s8(*&v49, vuzp1_s16(*&v49, vmovn_s64(vcgeq_u64(v49, *&v58)))).i8[6])
            {
              v52[2] = v53;
              v52[3] = v53;
            }

            v57 = vaddq_s64(v57, v51);
            v56 = vaddq_s64(v56, v51);
            v55 = vaddq_s64(v55, v51);
            v52 += 8;
            v58 = vaddq_s64(v58, v51);
            v54 -= 8;
          }

          while (v54);
        }

        ++v47;
        v50 += 2 * v12;
      }

      while (v47 != v45);
    }

    if (a4 <= 1)
    {
      v61 = 1;
    }

    else
    {
      v61 = a4;
    }

    v62 = a4 + a6 + 2;
    if (v62 >= v43)
    {
      v63 = v43;
    }

    else
    {
      v63 = a4 + a6 + 2;
    }

    if (v61 <= v63)
    {
      v64 = v11 + 2 * v41 - 4;
      v65 = a3 + (a5 >> 1) - (v41 >> 1) + 2;
      v66 = v65 & ~(v65 >> 31);
      v67 = v61 - 1;
      v68 = vdupq_n_s64(v66 - 1);
      v69 = (v66 + 3) & 0xFFFFFFFC;
      v70 = 4 * v13 * v67 + 2 * v41 + v11 + 8;
      v71 = vdupq_n_s64(4uLL);
      do
      {
        if (v65 >= 1)
        {
          v72 = *(v64 + 4 * v13 * v67);
          v73 = v70;
          v74 = v69;
          v75 = xmmword_27750D320;
          v76 = xmmword_27750D310;
          do
          {
            v77 = vmovn_s64(vcgeq_u64(v68, v75));
            if (vuzp1_s16(v77, *v68.i8).u8[0])
            {
              *(v73 - 2) = v72;
            }

            if (vuzp1_s16(v77, *&v68).i8[2])
            {
              *(v73 - 1) = v72;
            }

            if (vuzp1_s16(*&v68, vmovn_s64(vcgeq_u64(v68, *&v76))).i32[1])
            {
              *v73 = v72;
              v73[1] = v72;
            }

            v76 = vaddq_s64(v76, v71);
            v75 = vaddq_s64(v75, v71);
            v73 += 4;
            v74 -= 4;
          }

          while (v74);
          v43 = *(a7 + 524);
        }

        ++v67;
        if (v62 >= v43)
        {
          v78 = v43;
        }

        else
        {
          v78 = a4 + a6 + 2;
        }

        v70 += 4 * v13;
      }

      while (v67 < v78);
    }
  }

  v102 = a3;
  v103 = v11;
  v81 = v10 + 2 * result;
  if (a2 <= 2)
  {
    v82 = a2 - 3;
    v83 = (v81 - 6);
    do
    {
      v84 = &v83[-2 * v12];
      result = memcpy(v84, v83, 2 * a5 + 14);
      v83 = v84;
      v85 = __CFADD__(v82++, 1);
    }

    while (!v85);
    if (a4 <= 0)
    {
      v86 = a4 - 1;
      v87 = (v103 + 2 * (2 * v102 - 2));
      do
      {
        v88 = &v87[-2 * v104];
        result = memcpy(v88, v87, 2 * ((a5 & 0xFFFFFFFE) + 6));
        v87 = v88;
        v85 = __CFADD__(v86++, 1);
      }

      while (!v85);
    }
  }

  v89 = *(a7 + 524);
  if (a2 + a6 + 4 > v89)
  {
    v90 = v89 - 1;
    v91 = a6 + a2 - v89 + 4;
    v92 = 2 * v12 * v90;
    v93 = v81 - 6;
    v94 = v12 * (2 * v90 + 2);
    do
    {
      result = memcpy((v93 + v94), (v93 + v92), 2 * a5 + 14);
      v93 += 2 * v12;
      --v91;
    }

    while (v91);
    v95 = *(a7 + 524);
    if (v95 < a4 + a6 + 2)
    {
      v96 = v95 - 1;
      v97 = 2 * ((a5 & 0xFFFFFFFE) + 6);
      v98 = a6 + a4 - v95 + 2;
      v99 = 2 * v104 * v96;
      v100 = v103 + 2 * (2 * v102 - 2);
      v101 = v104 * (2 * v96 + 2);
      do
      {
        result = memcpy((v100 + v101), (v100 + v99), v97);
        v100 += 2 * v104;
        --v98;
      }

      while (v98);
    }
  }

  return result;
}

unint64_t sub_2773EFBD0(unint64_t result, int a2, int a3, int a4, int a5, int a6, uint64_t a7)
{
  v8 = a6;
  v12 = *(a7 + 400);
  v11 = *(a7 + 408);
  v13 = *(a7 + 416);
  v14 = *(a7 + 424);
  v15 = v14;
  v88 = v11;
  if (result <= 2)
  {
    if (a2 <= 3)
    {
      v16 = 3;
    }

    else
    {
      v16 = a2;
    }

    v17 = a2 + a6 + 4;
    LODWORD(v18) = *(a7 + 524);
    if (v17 >= v18)
    {
      v19 = *(a7 + 524);
    }

    else
    {
      v19 = a2 + a6 + 4;
    }

    if (v16 - 3 < v19)
    {
      v86 = result;
      v20 = (3 - result);
      v21 = v16 - 3;
      v84 = *(a7 + 400);
      v22 = (v12 + v13 * (v16 - 3));
      do
      {
        memset(&v22[-v20], *v22, v20);
        ++v21;
        LODWORD(v18) = *(a7 + 524);
        if (v17 >= v18)
        {
          v23 = *(a7 + 524);
        }

        else
        {
          v23 = v17;
        }

        v22 += v13;
      }

      while (v21 < v23);
      v15 = *(a7 + 424);
      v8 = a6;
      v11 = v88;
      result = v86;
      v12 = v84;
    }

    if (a4 <= 1)
    {
      v24 = 1;
    }

    else
    {
      v24 = a4;
    }

    v25 = a4 + v8 + 2;
    if (v25 >= v18)
    {
      v18 = v18;
    }

    else
    {
      v18 = v25;
    }

    if (v24 <= v18)
    {
      v26 = (1 - a3) & ~((1 - a3) >> 31);
      v27 = v24 - 1;
      v28 = (v26 + 7) & 0xFFFFFFF8;
      v29 = vdupq_n_s64(v26 - 1);
      v30 = v11 + 2 * (v15 >> 1) * v27 - 8;
      do
      {
        if (a3 <= 0)
        {
          v31 = 0;
          v32 = *(v11 + 2 * (v15 >> 1) * v27);
          v33 = v30;
          do
          {
            v34 = vdupq_n_s64(v31);
            v35 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(v34, xmmword_27750D320)));
            if (vuzp1_s8(vuzp1_s16(v35, *v29.i8), *v29.i8).u8[0])
            {
              v33[3] = v32;
            }

            if (vuzp1_s8(vuzp1_s16(v35, *&v29), *&v29).i8[1])
            {
              v33[2] = v32;
            }

            if (vuzp1_s8(vuzp1_s16(*&v29, vmovn_s64(vcgeq_u64(v29, vorrq_s8(v34, xmmword_27750D310)))), *&v29).i8[2])
            {
              v33[1] = v32;
              *v33 = v32;
            }

            v36 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(v34, xmmword_27750D300)));
            if (vuzp1_s8(*&v29, vuzp1_s16(v36, *&v29)).i32[1])
            {
              *(v33 - 1) = v32;
            }

            if (vuzp1_s8(*&v29, vuzp1_s16(v36, *&v29)).i8[5])
            {
              *(v33 - 2) = v32;
            }

            if (vuzp1_s8(*&v29, vuzp1_s16(*&v29, vmovn_s64(vcgeq_u64(v29, vorrq_s8(v34, xmmword_27750D2F0))))).i8[6])
            {
              *(v33 - 3) = v32;
              *(v33 - 4) = v32;
            }

            v31 += 8;
            v33 -= 8;
          }

          while (v28 != v31);
        }

        ++v27;
        v30 += 2 * (v15 >> 1);
      }

      while (v27 != v18);
    }
  }

  v37 = result + a5 + 4;
  v38 = *(a7 + 520);
  v39 = v37 - v38;
  if (v37 > v38)
  {
    if (a2 <= 3)
    {
      v40 = 3;
    }

    else
    {
      v40 = a2;
    }

    v41 = a2 + v8 + 4;
    LODWORD(v42) = *(a7 + 524);
    if (v41 >= v42)
    {
      v43 = *(a7 + 524);
    }

    else
    {
      v43 = a2 + v8 + 4;
    }

    if (v40 - 3 < v43)
    {
      v87 = result;
      v44 = v39;
      v45 = v40 - 3;
      v85 = v12;
      v46 = (v12 + v38 + v13 * (v40 - 3));
      do
      {
        memset(v46, *(v46 - 1), v44);
        ++v45;
        LODWORD(v42) = *(a7 + 524);
        if (v41 >= v42)
        {
          v47 = *(a7 + 524);
        }

        else
        {
          v47 = a2 + v8 + 4;
        }

        v46 += v13;
      }

      while (v45 < v47);
      v38 = *(a7 + 520);
      v15 = *(a7 + 424);
      result = v87;
      v12 = v85;
    }

    if (a4 <= 1)
    {
      v48 = 1;
    }

    else
    {
      v48 = a4;
    }

    v49 = a4 + v8 + 2;
    if (v49 >= v42)
    {
      v42 = v42;
    }

    else
    {
      v42 = v49;
    }

    if (v48 <= v42)
    {
      v50 = v38;
      v51 = v88 + v38 - 2;
      v52 = v15 >> 1;
      v53 = a3 + (a5 >> 1) - (v50 >> 1) + 2;
      v54 = v53 & ~(v53 >> 31);
      v55 = v48 - 1;
      v56 = vdupq_n_s64(v54 - 1);
      v57 = v50 + 2 * v52 * v55 + v88 + 8;
      v58 = vdupq_n_s64(8uLL);
      do
      {
        if (v53 >= 1)
        {
          v59 = *(v51 + 2 * v52 * v55);
          v60 = v57;
          v61 = (v54 + 7) & 0xFFFFFFF8;
          v62 = xmmword_27750D320;
          v63 = xmmword_27750D310;
          v64 = xmmword_27750D300;
          v65 = xmmword_27750D2F0;
          do
          {
            v66 = vmovn_s64(vcgeq_u64(v56, v62));
            if (vuzp1_s8(vuzp1_s16(v66, *v56.i8), *v56.i8).u8[0])
            {
              *(v60 - 4) = v59;
            }

            if (vuzp1_s8(vuzp1_s16(v66, *&v56), *&v56).i8[1])
            {
              *(v60 - 3) = v59;
            }

            if (vuzp1_s8(vuzp1_s16(*&v56, vmovn_s64(vcgeq_u64(v56, *&v63))), *&v56).i8[2])
            {
              *(v60 - 2) = v59;
              *(v60 - 1) = v59;
            }

            v67 = vmovn_s64(vcgeq_u64(v56, v64));
            if (vuzp1_s8(*&v56, vuzp1_s16(v67, *&v56)).i32[1])
            {
              *v60 = v59;
            }

            if (vuzp1_s8(*&v56, vuzp1_s16(v67, *&v56)).i8[5])
            {
              v60[1] = v59;
            }

            if (vuzp1_s8(*&v56, vuzp1_s16(*&v56, vmovn_s64(vcgeq_u64(v56, *&v65)))).i8[6])
            {
              v60[2] = v59;
              v60[3] = v59;
            }

            v64 = vaddq_s64(v64, v58);
            v63 = vaddq_s64(v63, v58);
            v62 = vaddq_s64(v62, v58);
            v60 += 8;
            v65 = vaddq_s64(v65, v58);
            v61 -= 8;
          }

          while (v61);
        }

        ++v55;
        v57 += 2 * v52;
      }

      while (v55 != v42);
    }
  }

  v68 = v12 + result;
  if (a2 <= 2)
  {
    v69 = a2 - 3;
    v70 = (v68 - 3);
    do
    {
      v71 = &v70[-v13];
      result = memcpy(&v70[-v13], v70, a5 + 7);
      v70 = v71;
      v72 = __CFADD__(v69++, 1);
    }

    while (!v72);
    if (a4 <= 0)
    {
      v73 = a4 - 1;
      v74 = (v88 + 2 * a3 - 2);
      do
      {
        v75 = &v74[-v14];
        result = memcpy(&v74[-v14], v74, ((a5 & 0xFFFFFFFE) + 6));
        v74 = v75;
        v72 = __CFADD__(v73++, 1);
      }

      while (!v72);
    }
  }

  v76 = *(a7 + 524);
  if (a2 + a6 + 4 > v76)
  {
    v77 = v13 * (v76 - 1);
    v78 = a6 + a2 - v76 + 4;
    v79 = v68 - 3;
    do
    {
      result = memcpy((v79 + v13 + v77), (v79 + v77), a5 + 7);
      v79 += v13;
      --v78;
    }

    while (v78);
    v80 = *(a7 + 524);
    if (v80 < a4 + a6 + 2)
    {
      v81 = v14 * (v80 - 1);
      v82 = a6 + a4 - v80 + 2;
      v83 = v88 + 2 * a3 - 2;
      do
      {
        result = memcpy((v83 + v14 + v81), (v83 + v81), ((a5 & 0xFFFFFFFE) + 6));
        v83 += v14;
        --v82;
      }

      while (v82);
    }
  }

  return result;
}

void *sub_2773F0200(void *result, int a2, int a3, int a4, int a5, int a6, uint64_t a7)
{
  v11 = *(a7 + 400);
  v12 = *(a7 + 408);
  v13 = *(a7 + 416);
  v102 = *(a7 + 424);
  v14 = v102 >> 1;
  v15 = a4 + (a6 >> 1);
  if (result <= 2)
  {
    if (a2 <= 3)
    {
      v16 = 3;
    }

    else
    {
      v16 = a2;
    }

    v17 = *(a7 + 524);
    LODWORD(v18) = a2 + a6 + 4;
    if (v18 >= v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = v18;
    }

    if (v16 - 3 < v18)
    {
      v19 = v16 - 3;
      v20 = vdupq_n_s64((3 - result) - 1);
      v21 = v11 + 2 * v13 * v19 - 8;
      do
      {
        v22 = 0;
        v23 = *(v11 + 2 * v13 * v19);
        v24 = v21;
        do
        {
          v25 = vdupq_n_s64(v22);
          v26 = vmovn_s64(vcgeq_u64(v20, vorrq_s8(v25, xmmword_27750D320)));
          if (vuzp1_s8(vuzp1_s16(v26, *v20.i8), *v20.i8).u8[0])
          {
            v24[3] = v23;
          }

          if (vuzp1_s8(vuzp1_s16(v26, *&v20), *&v20).i8[1])
          {
            v24[2] = v23;
          }

          if (vuzp1_s8(vuzp1_s16(*&v20, vmovn_s64(vcgeq_u64(v20, vorrq_s8(v25, xmmword_27750D310)))), *&v20).i8[2])
          {
            v24[1] = v23;
            *v24 = v23;
          }

          v27 = vmovn_s64(vcgeq_u64(v20, vorrq_s8(v25, xmmword_27750D300)));
          if (vuzp1_s8(*&v20, vuzp1_s16(v27, *&v20)).i32[1])
          {
            *(v24 - 1) = v23;
          }

          if (vuzp1_s8(*&v20, vuzp1_s16(v27, *&v20)).i8[5])
          {
            *(v24 - 2) = v23;
          }

          if (vuzp1_s8(*&v20, vuzp1_s16(*&v20, vmovn_s64(vcgeq_u64(v20, vorrq_s8(v25, xmmword_27750D2F0))))).i8[6])
          {
            *(v24 - 3) = v23;
            *(v24 - 4) = v23;
          }

          v22 += 8;
          v24 -= 8;
        }

        while (((10 - result) & 0xFFFFFFF8) != v22);
        ++v19;
        v21 += 2 * v13;
      }

      while (v19 != v18);
    }

    if (a4 <= 1)
    {
      v28 = 1;
    }

    else
    {
      v28 = a4;
    }

    v29 = v17 >> 1;
    if (v15 + 2 < v17 >> 1)
    {
      v29 = v15 + 2;
    }

    if (v28 <= v29)
    {
      v30 = (1 - a3) & ~((1 - a3) >> 31);
      v31 = v28 - 1;
      v32 = (v30 + 3) & 0xFFFFFFFC;
      v33 = vdupq_n_s64(v30 - 1);
      v34 = v12 + 4 * v14 * v31 - 8;
      do
      {
        if (a3 <= 0)
        {
          v35 = 0;
          v36 = *(v12 + 4 * v14 * v31);
          v37 = v34;
          do
          {
            v38 = vdupq_n_s64(v35);
            v39 = vmovn_s64(vcgeq_u64(v33, vorrq_s8(v38, xmmword_27750D320)));
            if (vuzp1_s16(v39, *v33.i8).u8[0])
            {
              v37[1] = v36;
            }

            if (vuzp1_s16(v39, *&v33).i8[2])
            {
              *v37 = v36;
            }

            if (vuzp1_s16(*&v33, vmovn_s64(vcgeq_u64(v33, vorrq_s8(v38, xmmword_27750D310)))).i32[1])
            {
              *(v37 - 1) = v36;
              *(v37 - 2) = v36;
            }

            v35 += 4;
            v37 -= 4;
          }

          while (v32 != v35);
          v17 = *(a7 + 524);
        }

        ++v31;
        v40 = v17 >> 1;
        if (v15 + 2 < v17 >> 1)
        {
          v40 = v15 + 2;
        }

        v34 += 4 * v14;
      }

      while (v31 < v40);
    }
  }

  v41 = result + a5 + 4;
  v42 = *(a7 + 520);
  if (v41 > v42)
  {
    if (a2 <= 3)
    {
      v43 = 3;
    }

    else
    {
      v43 = a2;
    }

    v44 = *(a7 + 524);
    v45 = a2 + a6 + 4;
    if (v45 >= v44)
    {
      v46 = v44;
    }

    else
    {
      v46 = v45;
    }

    if (v43 - 3 < v46)
    {
      v47 = v41 - v42;
      v48 = v43 - 3;
      v49 = (v47 + 7) & 0xFFFFFFFFFFFFFFF8;
      v50 = vdupq_n_s64(v47 - 1);
      v51 = 2 * v13 * v48 + 2 * v42 + v11 + 8;
      v52 = vdupq_n_s64(8uLL);
      do
      {
        if (v41 != v42)
        {
          v53 = v51;
          v54 = *(v11 + 2 * v42 + 2 * v13 * v48 - 2);
          v55 = v49;
          v56 = xmmword_27750D320;
          v57 = xmmword_27750D310;
          v58 = xmmword_27750D300;
          v59 = xmmword_27750D2F0;
          do
          {
            v60 = vmovn_s64(vcgeq_u64(v50, v56));
            if (vuzp1_s8(vuzp1_s16(v60, *v50.i8), *v50.i8).u8[0])
            {
              *(v53 - 4) = v54;
            }

            if (vuzp1_s8(vuzp1_s16(v60, *&v50), *&v50).i8[1])
            {
              *(v53 - 3) = v54;
            }

            if (vuzp1_s8(vuzp1_s16(*&v50, vmovn_s64(vcgeq_u64(v50, *&v57))), *&v50).i8[2])
            {
              *(v53 - 2) = v54;
              *(v53 - 1) = v54;
            }

            v61 = vmovn_s64(vcgeq_u64(v50, v58));
            if (vuzp1_s8(*&v50, vuzp1_s16(v61, *&v50)).i32[1])
            {
              *v53 = v54;
            }

            if (vuzp1_s8(*&v50, vuzp1_s16(v61, *&v50)).i8[5])
            {
              v53[1] = v54;
            }

            if (vuzp1_s8(*&v50, vuzp1_s16(*&v50, vmovn_s64(vcgeq_u64(v50, *&v59)))).i8[6])
            {
              v53[2] = v54;
              v53[3] = v54;
            }

            v58 = vaddq_s64(v58, v52);
            v57 = vaddq_s64(v57, v52);
            v56 = vaddq_s64(v56, v52);
            v53 += 8;
            v59 = vaddq_s64(v59, v52);
            v55 -= 8;
          }

          while (v55);
        }

        ++v48;
        v51 += 2 * v13;
      }

      while (v48 != v46);
    }

    if (a4 <= 1)
    {
      v62 = 1;
    }

    else
    {
      v62 = a4;
    }

    v63 = v44 >> 1;
    if (v15 + 2 < v44 >> 1)
    {
      v63 = v15 + 2;
    }

    if (v62 <= v63)
    {
      v64 = v12 + 2 * v42 - 4;
      v65 = a3 + (a5 >> 1) - (v42 >> 1) + 2;
      v66 = v65 & ~(v65 >> 31);
      v67 = v62 - 1;
      v68 = vdupq_n_s64(v66 - 1);
      v69 = (v66 + 3) & 0xFFFFFFFC;
      v70 = 4 * v14 * v67 + 2 * v42 + v12 + 8;
      v71 = vdupq_n_s64(4uLL);
      do
      {
        if (v65 >= 1)
        {
          v72 = *(v64 + 4 * v14 * v67);
          v73 = v70;
          v74 = v69;
          v75 = xmmword_27750D320;
          v76 = xmmword_27750D310;
          do
          {
            v77 = vmovn_s64(vcgeq_u64(v68, v75));
            if (vuzp1_s16(v77, *v68.i8).u8[0])
            {
              *(v73 - 2) = v72;
            }

            if (vuzp1_s16(v77, *&v68).i8[2])
            {
              *(v73 - 1) = v72;
            }

            if (vuzp1_s16(*&v68, vmovn_s64(vcgeq_u64(v68, *&v76))).i32[1])
            {
              *v73 = v72;
              v73[1] = v72;
            }

            v76 = vaddq_s64(v76, v71);
            v75 = vaddq_s64(v75, v71);
            v73 += 4;
            v74 -= 4;
          }

          while (v74);
          v44 = *(a7 + 524);
        }

        ++v67;
        v78 = v44 >> 1;
        if (v15 + 2 < v44 >> 1)
        {
          v78 = v15 + 2;
        }

        v70 += 4 * v14;
      }

      while (v67 < v78);
    }
  }

  v103 = a4 + (a6 >> 1);
  v100 = a3;
  v101 = v12;
  v80 = v11 + 2 * result;
  if (a2 <= 2)
  {
    v81 = a2 - 3;
    v82 = (v80 - 6);
    do
    {
      v83 = &v82[-2 * v13];
      result = memcpy(v83, v82, 2 * a5 + 14);
      v82 = v83;
      v84 = __CFADD__(v81++, 1);
    }

    while (!v84);
    if (a4 <= 0)
    {
      v85 = a4 - 1;
      v86 = (v101 + 2 * (2 * v100 - 2));
      do
      {
        v87 = &v86[-2 * v102];
        result = memcpy(v87, v86, 2 * ((a5 & 0xFFFFFFFE) + 6));
        v86 = v87;
        v84 = __CFADD__(v85++, 1);
      }

      while (!v84);
    }
  }

  v88 = *(a7 + 524);
  if (a2 + a6 + 4 > v88)
  {
    v89 = v88 - 1;
    v90 = a6 + a2 - v88 + 4;
    v91 = 2 * v13 * v89;
    v92 = v80 - 6;
    v93 = v13 * (2 * v89 + 2);
    do
    {
      result = memcpy((v92 + v93), (v92 + v91), 2 * a5 + 14);
      v92 += 2 * v13;
      --v90;
    }

    while (v90);
    v94 = *(a7 + 524) >> 1;
    if (v94 < v103 + 2)
    {
      v95 = 2 * ((a5 & 0xFFFFFFFE) + 6);
      v96 = (a6 >> 1) + a4 - v94 + 2;
      v97 = 2 * v102 * (v94 - 1);
      v98 = v101 + 2 * (2 * v100 - 2);
      v99 = 2 * v102 * v94;
      do
      {
        result = memcpy((v98 + v99), (v98 + v97), v95);
        v98 += 2 * v102;
        --v96;
      }

      while (v96);
    }
  }

  return result;
}

unint64_t sub_2773F0954(unint64_t result, int a2, int a3, int a4, int a5, int a6, uint64_t a7)
{
  v10 = *(a7 + 400);
  v11 = *(a7 + 408);
  v12 = *(a7 + 416);
  v13 = *(a7 + 424);
  v14 = v13;
  v15 = a4 + (a6 >> 1);
  v91 = v15;
  v92 = a6;
  if (result <= 2)
  {
    if (a2 <= 3)
    {
      v16 = 3;
    }

    else
    {
      v16 = a2;
    }

    v17 = a2 + a6 + 4;
    v18 = *(a7 + 524);
    if (v17 >= v18)
    {
      v19 = *(a7 + 524);
    }

    else
    {
      v19 = a2 + a6 + 4;
    }

    if (v16 - 3 < v19)
    {
      v89 = result;
      v20 = (3 - result);
      v21 = v16 - 3;
      v87 = *(a7 + 400);
      v22 = (v10 + v12 * (v16 - 3));
      do
      {
        memset(&v22[-v20], *v22, v20);
        ++v21;
        v18 = *(a7 + 524);
        if (v17 >= v18)
        {
          v23 = *(a7 + 524);
        }

        else
        {
          v23 = v17;
        }

        v22 += v12;
      }

      while (v21 < v23);
      v14 = *(a7 + 424);
      v15 = v91;
      a6 = v92;
      result = v89;
      v10 = v87;
    }

    if (a4 <= 1)
    {
      v24 = 1;
    }

    else
    {
      v24 = a4;
    }

    if (v15 + 2 >= v18 >> 1)
    {
      v25 = (v18 >> 1);
    }

    else
    {
      v25 = (v15 + 2);
    }

    if (v24 <= v25)
    {
      v26 = v14 >> 1;
      v27 = (1 - a3) & ~((1 - a3) >> 31);
      v28 = v24 - 1;
      v29 = vdupq_n_s64(v27 - 1);
      if (v25 > v24)
      {
        v24 = v25;
      }

      v30 = v11 + 2 * v26 * v28 - 8;
      do
      {
        if (a3 <= 0)
        {
          v31 = 0;
          v32 = *(v11 + 2 * v26 * v28);
          v33 = v30;
          do
          {
            v34 = vdupq_n_s64(v31);
            v35 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(v34, xmmword_27750D320)));
            if (vuzp1_s8(vuzp1_s16(v35, *v29.i8), *v29.i8).u8[0])
            {
              v33[3] = v32;
            }

            if (vuzp1_s8(vuzp1_s16(v35, *&v29), *&v29).i8[1])
            {
              v33[2] = v32;
            }

            if (vuzp1_s8(vuzp1_s16(*&v29, vmovn_s64(vcgeq_u64(v29, vorrq_s8(v34, xmmword_27750D310)))), *&v29).i8[2])
            {
              v33[1] = v32;
              *v33 = v32;
            }

            v36 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(v34, xmmword_27750D300)));
            if (vuzp1_s8(*&v29, vuzp1_s16(v36, *&v29)).i32[1])
            {
              *(v33 - 1) = v32;
            }

            if (vuzp1_s8(*&v29, vuzp1_s16(v36, *&v29)).i8[5])
            {
              *(v33 - 2) = v32;
            }

            if (vuzp1_s8(*&v29, vuzp1_s16(*&v29, vmovn_s64(vcgeq_u64(v29, vorrq_s8(v34, xmmword_27750D2F0))))).i8[6])
            {
              *(v33 - 3) = v32;
              *(v33 - 4) = v32;
            }

            v31 += 8;
            v33 -= 8;
          }

          while (((v27 + 7) & 0xFFFFFFF8) != v31);
        }

        ++v28;
        v30 += 2 * v26;
      }

      while (v28 != v24);
    }
  }

  v37 = result + a5 + 4;
  v38 = *(a7 + 520);
  v39 = v37 - v38;
  if (v37 > v38)
  {
    if (a2 <= 3)
    {
      v40 = 3;
    }

    else
    {
      v40 = a2;
    }

    v41 = a2 + a6 + 4;
    v42 = *(a7 + 524);
    if (v41 >= v42)
    {
      v43 = *(a7 + 524);
    }

    else
    {
      v43 = a2 + a6 + 4;
    }

    if (v40 - 3 < v43)
    {
      v90 = result;
      v44 = v39;
      v45 = v40 - 3;
      v88 = v10;
      v46 = (v10 + v38 + v12 * (v40 - 3));
      do
      {
        memset(v46, *(v46 - 1), v44);
        ++v45;
        v42 = *(a7 + 524);
        if (v41 >= v42)
        {
          v47 = *(a7 + 524);
        }

        else
        {
          v47 = v41;
        }

        v46 += v12;
      }

      while (v45 < v47);
      v38 = *(a7 + 520);
      v14 = *(a7 + 424);
      v15 = v91;
      result = v90;
      v10 = v88;
    }

    if (a4 <= 1)
    {
      v48 = 1;
    }

    else
    {
      v48 = a4;
    }

    if (v15 + 2 >= v42 >> 1)
    {
      v49 = (v42 >> 1);
    }

    else
    {
      v49 = (v15 + 2);
    }

    if (v48 <= v49)
    {
      v50 = v38;
      v51 = v11 + v38 - 2;
      v52 = v14 >> 1;
      v53 = a3 + (a5 >> 1) - (v50 >> 1) + 2;
      v54 = v53 & ~(v53 >> 31);
      v55 = v48 - 1;
      v56 = (v54 + 7) & 0xFFFFFFF8;
      v57 = vdupq_n_s64(v54 - 1);
      if (v49 > v48)
      {
        v48 = v49;
      }

      v58 = v50 + 2 * v52 * v55 + v11 + 8;
      v59 = vdupq_n_s64(8uLL);
      do
      {
        if (v53 >= 1)
        {
          v60 = *(v51 + 2 * v52 * v55);
          v61 = v58;
          v62 = v56;
          v63 = xmmword_27750D320;
          v64 = xmmword_27750D310;
          v65 = xmmword_27750D300;
          v66 = xmmword_27750D2F0;
          do
          {
            v67 = vmovn_s64(vcgeq_u64(v57, v63));
            if (vuzp1_s8(vuzp1_s16(v67, *v57.i8), *v57.i8).u8[0])
            {
              *(v61 - 4) = v60;
            }

            if (vuzp1_s8(vuzp1_s16(v67, *&v57), *&v57).i8[1])
            {
              *(v61 - 3) = v60;
            }

            if (vuzp1_s8(vuzp1_s16(*&v57, vmovn_s64(vcgeq_u64(v57, *&v64))), *&v57).i8[2])
            {
              *(v61 - 2) = v60;
              *(v61 - 1) = v60;
            }

            v68 = vmovn_s64(vcgeq_u64(v57, v65));
            if (vuzp1_s8(*&v57, vuzp1_s16(v68, *&v57)).i32[1])
            {
              *v61 = v60;
            }

            if (vuzp1_s8(*&v57, vuzp1_s16(v68, *&v57)).i8[5])
            {
              v61[1] = v60;
            }

            if (vuzp1_s8(*&v57, vuzp1_s16(*&v57, vmovn_s64(vcgeq_u64(v57, *&v66)))).i8[6])
            {
              v61[2] = v60;
              v61[3] = v60;
            }

            v65 = vaddq_s64(v65, v59);
            v64 = vaddq_s64(v64, v59);
            v63 = vaddq_s64(v63, v59);
            v61 += 8;
            v66 = vaddq_s64(v66, v59);
            v62 -= 8;
          }

          while (v62);
        }

        ++v55;
        v58 += 2 * v52;
      }

      while (v55 != v48);
    }
  }

  v69 = v10 + result;
  if (a2 <= 2)
  {
    v70 = a2 - 3;
    v71 = (v69 - 3);
    do
    {
      v72 = &v71[-v12];
      result = memcpy(&v71[-v12], v71, a5 + 7);
      v71 = v72;
      v73 = __CFADD__(v70++, 1);
    }

    while (!v73);
    if (a4 <= 0)
    {
      v74 = a4 - 1;
      v75 = (v11 + 2 * a3 - 2);
      do
      {
        v76 = &v75[-v13];
        result = memcpy(&v75[-v13], v75, ((a5 & 0xFFFFFFFE) + 6));
        v75 = v76;
        v73 = __CFADD__(v74++, 1);
      }

      while (!v73);
    }
  }

  v77 = *(a7 + 524);
  if (a2 + v92 + 4 > v77)
  {
    v78 = v12 * (v77 - 1);
    v79 = v92 + a2 - v77 + 4;
    v80 = v69 - 3;
    do
    {
      result = memcpy((v80 + v12 + v78), (v80 + v78), a5 + 7);
      v80 += v12;
      --v79;
    }

    while (v79);
    v81 = *(a7 + 524) >> 1;
    if (v81 < v91 + 2)
    {
      v82 = v13 * (v81 - 1);
      v83 = 2 * a3 - 2;
      v84 = (v92 >> 1) + a4 - v81 + 2;
      v85 = v11 + v83;
      v86 = v13 * v81;
      do
      {
        result = memcpy((v85 + v86), (v85 + v82), ((a5 & 0xFFFFFFFE) + 6));
        v85 += v13;
        --v84;
      }

      while (v84);
    }
  }

  return result;
}

void *sub_2773F0F9C(void *result, int a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7)
{
  v11 = *(a7 + 400);
  v12 = *(a7 + 416);
  if (result <= 2)
  {
    v13 = a2 <= 3 ? 3 : a2;
    LODWORD(v14) = *(a7 + 524);
    v15 = a2 + a6 + 4;
    v14 = v15 >= v14 ? v14 : v15;
    if (v13 - 3 < v14)
    {
      v16 = v13 - 3;
      v17 = vdupq_n_s64((3 - result) - 1);
      v18 = v11 + 2 * v12 * v16 - 8;
      do
      {
        v19 = 0;
        v20 = *(v11 + 2 * v12 * v16);
        v21 = v18;
        do
        {
          v22 = vdupq_n_s64(v19);
          v23 = vmovn_s64(vcgeq_u64(v17, vorrq_s8(v22, xmmword_27750D320)));
          if (vuzp1_s8(vuzp1_s16(v23, *v17.i8), *v17.i8).u8[0])
          {
            v21[3] = v20;
          }

          if (vuzp1_s8(vuzp1_s16(v23, *&v17), *&v17).i8[1])
          {
            v21[2] = v20;
          }

          if (vuzp1_s8(vuzp1_s16(*&v17, vmovn_s64(vcgeq_u64(v17, vorrq_s8(v22, xmmword_27750D310)))), *&v17).i8[2])
          {
            v21[1] = v20;
            *v21 = v20;
          }

          v24 = vmovn_s64(vcgeq_u64(v17, vorrq_s8(v22, xmmword_27750D300)));
          if (vuzp1_s8(*&v17, vuzp1_s16(v24, *&v17)).i32[1])
          {
            *(v21 - 1) = v20;
          }

          if (vuzp1_s8(*&v17, vuzp1_s16(v24, *&v17)).i8[5])
          {
            *(v21 - 2) = v20;
          }

          if (vuzp1_s8(*&v17, vuzp1_s16(*&v17, vmovn_s64(vcgeq_u64(v17, vorrq_s8(v22, xmmword_27750D2F0))))).i8[6])
          {
            *(v21 - 3) = v20;
            *(v21 - 4) = v20;
          }

          v19 += 8;
          v21 -= 8;
        }

        while (((10 - result) & 0xFFFFFFF8) != v19);
        ++v16;
        v18 += 2 * v12;
      }

      while (v16 != v14);
    }
  }

  v25 = result + a5 + 4;
  v26 = *(a7 + 520);
  if (v25 > v26)
  {
    v27 = a2 <= 3 ? 3 : a2;
    LODWORD(v28) = *(a7 + 524);
    v29 = a2 + a6 + 4;
    v28 = v29 >= v28 ? v28 : v29;
    if (v27 - 3 < v28)
    {
      v30 = v25 - v26;
      v31 = v27 - 3;
      v32 = vdupq_n_s64(v30 - 1);
      v33 = (v30 + 7) & 0xFFFFFFFFFFFFFFF8;
      v34 = 2 * v12 * v31 + 2 * v26 + v11 + 8;
      v35 = vdupq_n_s64(8uLL);
      do
      {
        if (v25 != v26)
        {
          v36 = v34;
          v37 = *(v11 + 2 * v26 + 2 * v12 * v31 - 2);
          v38 = v33;
          v39 = xmmword_27750D320;
          v40 = xmmword_27750D310;
          v41 = xmmword_27750D300;
          v42 = xmmword_27750D2F0;
          do
          {
            v43 = vmovn_s64(vcgeq_u64(v32, v39));
            if (vuzp1_s8(vuzp1_s16(v43, *v32.i8), *v32.i8).u8[0])
            {
              *(v36 - 4) = v37;
            }

            if (vuzp1_s8(vuzp1_s16(v43, *&v32), *&v32).i8[1])
            {
              *(v36 - 3) = v37;
            }

            if (vuzp1_s8(vuzp1_s16(*&v32, vmovn_s64(vcgeq_u64(v32, *&v40))), *&v32).i8[2])
            {
              *(v36 - 2) = v37;
              *(v36 - 1) = v37;
            }

            v44 = vmovn_s64(vcgeq_u64(v32, v41));
            if (vuzp1_s8(*&v32, vuzp1_s16(v44, *&v32)).i32[1])
            {
              *v36 = v37;
            }

            if (vuzp1_s8(*&v32, vuzp1_s16(v44, *&v32)).i8[5])
            {
              v36[1] = v37;
            }

            if (vuzp1_s8(*&v32, vuzp1_s16(*&v32, vmovn_s64(vcgeq_u64(v32, *&v42)))).i8[6])
            {
              v36[2] = v37;
              v36[3] = v37;
            }

            v41 = vaddq_s64(v41, v35);
            v40 = vaddq_s64(v40, v35);
            v39 = vaddq_s64(v39, v35);
            v36 += 8;
            v42 = vaddq_s64(v42, v35);
            v38 -= 8;
          }

          while (v38);
        }

        ++v31;
        v34 += 2 * v12;
      }

      while (v31 != v28);
    }
  }

  v45 = v11 + 2 * result;
  if (a2 <= 2)
  {
    v46 = a2 - 3;
    v47 = (v45 - 6);
    do
    {
      v48 = &v47[-2 * v12];
      result = memcpy(v48, v47, 2 * a5 + 14);
      v47 = v48;
    }

    while (!__CFADD__(v46++, 1));
  }

  v50 = *(a7 + 524);
  if (a2 + a6 + 4 > v50)
  {
    v51 = v50 - 1;
    v52 = 2 * a5;
    v53 = a6 + a2 - v50 + 4;
    v54 = 2 * v12 * v51;
    v55 = v45 - 6;
    v56 = 2 * v12;
    v57 = v12 * (2 * v51 + 2);
    do
    {
      result = memcpy((v55 + v57), (v55 + v54), v52 + 14);
      v55 += v56;
      --v53;
    }

    while (v53);
  }

  return result;
}

void *sub_2773F13C8(void *result, int a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7)
{
  v10 = result;
  v37 = *(a7 + 400);
  v11 = *(a7 + 416);
  if (result <= 2)
  {
    if (a2 <= 3)
    {
      v12 = 3;
    }

    else
    {
      v12 = a2;
    }

    v13 = a2 + a6 + 4;
    v14 = *(a7 + 524);
    if (v13 < v14)
    {
      v14 = a2 + a6 + 4;
    }

    if (v12 - 3 < v14)
    {
      v15 = (3 - result);
      v16 = v12 - 3;
      v17 = (v37 + v11 * (v12 - 3));
      do
      {
        result = memset(&v17[-v15], *v17, v15);
        ++v16;
        v18 = *(a7 + 524);
        if (v13 < v18)
        {
          v18 = v13;
        }

        v17 += v11;
      }

      while (v16 < v18);
    }
  }

  v19 = v10 + a5 + 4;
  v20 = *(a7 + 520);
  if (v19 > v20)
  {
    if (a2 <= 3)
    {
      v21 = 3;
    }

    else
    {
      v21 = a2;
    }

    v22 = a2 + a6 + 4;
    v23 = *(a7 + 524);
    if (v22 < v23)
    {
      v23 = a2 + a6 + 4;
    }

    if (v21 - 3 < v23)
    {
      v24 = v19 - v20;
      v25 = v21 - 3;
      v26 = (v37 + v20 + v11 * (v21 - 3));
      do
      {
        result = memset(v26, *(v26 - 1), v24);
        ++v25;
        v27 = *(a7 + 524);
        if (v22 < v27)
        {
          v27 = a2 + a6 + 4;
        }

        v26 += v11;
      }

      while (v25 < v27);
    }
  }

  v28 = v37 + v10;
  if (a2 <= 2)
  {
    v29 = a2 - 3;
    v30 = (v28 - 3);
    do
    {
      v31 = &v30[-v11];
      result = memcpy(&v30[-v11], v30, a5 + 7);
      v30 = v31;
    }

    while (!__CFADD__(v29++, 1));
  }

  v33 = *(a7 + 524);
  if (a2 + a6 + 4 > v33)
  {
    v34 = v11 * (v33 - 1);
    v35 = a6 + a2 - v33 + 4;
    v36 = v28 - 3;
    do
    {
      result = memcpy((v36 + v11 + v34), (v36 + v34), a5 + 7);
      v36 += v11;
      --v35;
    }

    while (v35);
  }

  return result;
}

void sub_2773F15C8(uint64_t a1)
{
  v1 = *(a1 - 8);
  if (v1)
  {
    v2 = (a1 + 120 * v1 - 56);
    v3 = -120 * v1;
    do
    {
      std::condition_variable::~condition_variable(v2);
      std::mutex::~mutex(&v2[-2].__cv_.__opaque[24]);
      v2 = (v2 - 120);
      v3 += 120;
    }

    while (v3);
  }

  JUMPOUT(0x277CAD330);
}

uint64_t sub_2773F1650(uint64_t a1)
{
  v2 = (a1 + 200);
  v7.__m_ = (a1 + 200);
  v7.__owns_ = 1;
  std::mutex::lock((a1 + 200));
  m = v2;
  if (!*(a1 + 196))
  {
    goto LABEL_5;
  }

  do
  {
    std::condition_variable::wait((a1 + 264), &v7);
  }

  while (*(a1 + 196));
  if (v7.__owns_)
  {
    m = v7.__m_;
LABEL_5:
    std::mutex::unlock(m);
  }

  std::condition_variable::~condition_variable((a1 + 264));
  std::mutex::~mutex(v2);
  v4 = *(a1 + 24);
  if (v4)
  {
    sub_2773CC26C(v4);
  }

  v5 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v5)
  {
    sub_2773F15C8(v5);
  }

  return a1;
}

void sub_2773F16F4(_DWORD *a1, uint64_t a2)
{
  atomic_store(0, a1 + 32);
  atomic_store(0, a1 + 48);
  v2 = *(a2 + 2124);
  if (*(a2 + 2117) > 0x10u)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  a1[16] = v3;
  a1[17] = v2;
  is_mul_ok(v2 + 1, 0x78uLL);
  operator new[]();
}

uint64_t sub_2773F18AC(uint64_t a1, void *a2, signed int *a3)
{
  v3 = *(a1 + 68);
  *a2 = 0;
  *a3 = -1;
  while (1)
  {
    while (1)
    {
      v4 = atomic_load((a1 + 128));
      v5 = v4;
      v6 = v4;
      v7 = v3 - v4;
      if (v3 > v4)
      {
        v8 = v3 - 1 - v4;
        v9 = 120 * v4;
        v6 = v4;
        while (1)
        {
          v10 = (*a1 + v9 + 114);
          LOBYTE(v10) = atomic_load_explicit(v10, memory_order_acquire);
          if (!v10)
          {
            v11 = (*a1 + v9 + 112);
            LOWORD(v11) = atomic_load_explicit(v11, memory_order_acquire);
            v12 = (*a1 + v9 - 8);
            LOWORD(v12) = atomic_load_explicit(v12, memory_order_acquire);
            if (v12 - *(a1 + 64) > v11)
            {
              break;
            }
          }

          v13 = (*a1 + v9 + 112);
          LOWORD(v13) = atomic_load_explicit(v13, memory_order_acquire);
          ++v6;
          if (v13)
          {
            v14 = v8 == 0;
          }

          else
          {
            v14 = 1;
          }

          --v8;
          v9 += 120;
          if (v14)
          {
            goto LABEL_13;
          }
        }
      }

      if (v6 < v3)
      {
        break;
      }

LABEL_13:
      v15 = atomic_load((a1 + 192));
      if ((v15 + 1) < v7)
      {
        v6 = v4;
        if (v3 > v4)
        {
          for (i = 120 * v4 + 114; ; i += 120)
          {
            v17 = (*a1 + i);
            LOBYTE(v17) = atomic_load_explicit(v17, memory_order_acquire);
            if (!v17)
            {
              break;
            }

            ++v5;
            if (!--v7)
            {
              return 0;
            }
          }

          v6 = v5;
        }

        break;
      }

      v18 = v15;
      atomic_compare_exchange_strong((a1 + 192), &v18, v15 - 1);
      if (v18 == v15)
      {
        return 1;
      }
    }

    if (v6 >= v3)
    {
      return 0;
    }

    v19 = 0;
    atomic_compare_exchange_strong((*a1 + 120 * v6 + 114), &v19, 1u);
    if (!v19)
    {
      v21 = 0;
      *a2 = *a1 + 120 * v6;
      *a3 = v6;
      return v21;
    }
  }
}

void sub_2773F1A28(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a1 + 196) = a2;
  *(a1 + 48) = a4;
  *(a1 + 56) = a5;
  sub_277482210(*(a1 + 16));
}

void sub_2773F1AAC(uint64_t a1, uint64_t a2)
{
  v23 = 0;
  v24 = 0;
  atomic_fetch_add((a1 + 192), 1u);
  v4 = sub_2773F18AC(a1, &v24, &v23 + 1);
  for (i = v24; v24; i = v24)
  {
    v6 = &i[1].__m_.__opaque[40];
    LOWORD(v6) = atomic_load_explicit(v6, memory_order_acquire);
    LODWORD(v23) = v6;
    v7 = v24;
    v8 = *(a1 + 64) + v6;
    v9 = &v24[-1].__m_.__opaque[48];
    LOWORD(v6) = atomic_load_explicit(&v24[-1].__m_.__opaque[48], memory_order_acquire);
    if (v8 >= v6)
    {
      __lk.__m_ = (v7 - 120);
      __lk.__owns_ = 1;
      std::mutex::lock((v7 - 120));
      LOWORD(v10) = atomic_load_explicit(v9, memory_order_acquire);
      if (v8 >= v10)
      {
        opaque = v7[-1].__m_.__opaque;
        do
        {
          std::condition_variable::wait(opaque, &__lk);
          LOWORD(v12) = atomic_load_explicit(v9, memory_order_acquire);
        }

        while (v8 >= v12);
      }

      if (__lk.__owns_)
      {
        std::mutex::unlock(__lk.__m_);
      }
    }

    LODWORD(__lk.__m_) = HIDWORD(v23);
    while (1)
    {
      v13 = *(a1 + 64);
      v14 = v13 + v23;
      LOWORD(v13) = atomic_load_explicit(v9, memory_order_acquire);
      if (v14 >= v13)
      {
        break;
      }

      (*(a1 + 40))(*(a1 + 32), a2, &v23, &__lk);
      if (v23 >= 1)
      {
        v15 = v24;
        atomic_store(v23, &v24[1].__m_.__opaque[40]);
        std::condition_variable::notify_all(&v15[1]);
      }

      m = __lk.__m_;
      v17 = HIDWORD(v23);
      if (SLODWORD(__lk.__m_) > SHIDWORD(v23))
      {
        goto LABEL_15;
      }
    }

    m = __lk.__m_;
    v17 = HIDWORD(v23);
LABEL_15:
    if (m <= v17)
    {
      v20 = v24;
      atomic_store(0, &v24[1].__m_.__opaque[42]);
      v19 = &v20[1];
    }

    else
    {
      atomic_fetch_add((a1 + 128), 1u);
      v18 = v24;
      atomic_store(2u, &v24[1].__m_.__opaque[42]);
      std::mutex::lock(v18);
      atomic_store(0xFFFFu, &v18[1].__m_.__opaque[40]);
      std::mutex::unlock(v18);
      v19 = &v18[1];
    }

    std::condition_variable::notify_all(v19);
    v24 = 0;
    v4 = sub_2773F18AC(a1, &v24, &v23 + 1);
  }

  if ((v4 & 1) == 0)
  {
    atomic_fetch_add((a1 + 192), 0xFFFFFFFF);
  }

  std::mutex::lock((a1 + 200));
  v21 = *(a1 + 196) - 1;
  *(a1 + 196) = v21;
  if (!v21)
  {
    v22 = *(a1 + 56);
    if (v22)
    {
      v22(*(a1 + 48));
    }

    std::condition_variable::notify_all((a1 + 264));
  }

  std::mutex::unlock((a1 + 200));
}

void sub_2773F1CD4(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  std::mutex::lock((a1 + 56));
  sub_2773F1D3C((a1 + 8), &v3);

  std::mutex::unlock((a1 + 56));
}

void *sub_2773F1D3C(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = result[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v7 = result[5];
  v8 = v7 + result[4];
  if (v6 == v8)
  {
    result = sub_2773F1DC4(result);
    v5 = v3[1];
    v7 = v3[5];
    v8 = v3[4] + v7;
  }

  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  v3[5] = v7 + 1;
  return result;
}

void *sub_2773F1DC4(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v6 = a1[3];
    v7 = v6 - *a1;
    if (a1[2] - a1[1] < v7)
    {
      operator new();
    }

    v8 = v7 >> 2;
    if (v6 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    sub_2773F237C(v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  v10 = *v4;
  a1[1] = v4 + 1;
  return sub_2773F2278(a1, &v10);
}

void sub_2773F2248(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  operator delete(v11);
  if (a11)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

void *sub_2773F2278(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_2773F237C(v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

void sub_2773F237C(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  sub_2773C5248();
}

uint64_t sub_2773F23C4(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  std::mutex::lock((a1 + 56));
  *a4 = 0;
  if (*(a1 + 48))
  {
    v8 = *(*(*(a1 + 16) + ((*(a1 + 40) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(a1 + 40) & 0x1FFLL));
    *a4 = v8;
    *(v8 + 992) = 0;
    *(v8 + 40) = 0;
    *(v8 + 42) = 0;
    *(v8 + 44) = 0;
    *(v8 + 1024) = 0;
    *(v8 + 36) = 0;
    *(v8 + 548) = 0;
    *(v8 + 597) = 0;
    *(v8 + 1172) = 0;
    *(v8 + 648) = 0u;
    *(v8 + 748) = 0;
    *(v8 + 752) = 0;
    *(v8 + 760) = 0u;
    *(v8 + 832) = 0;
    *(v8 + 840) = 0u;
    *(v8 + 928) = 0u;
    *(v8 + 672) = -1;
    *(v8 + 664) = -1;
    *(v8 + 680) = 0;
    *(a1 + 40) = vaddq_s64(*(a1 + 40), xmmword_27750D330);
    sub_2773F2788(a1 + 8);
    v9 = *a4;
  }

  else
  {
    v10 = operator new(0x498uLL, MEMORY[0x277D826F0]);
    if (!v10)
    {
      v12 = 4294954392;
      goto LABEL_44;
    }

    v9 = v10;
    sub_2773ECCE4(v10);
    *a4 = v11;
  }

  *(v9 + 432) = a3;
  if (a3)
  {
    if (dword_280B9A880 >= 3)
    {
      fwrite("VRA not implemented without CoreVideo\n", 0x26uLL, 1uLL, *MEMORY[0x277D85DF8]);
      syslog(27, "VRA not implemented without CoreVideo\n");
    }

    v12 = 4294954386;
  }

  else
  {
    v13 = *(a2 + 8);
    v41 = a2;
    if (*(v9 + 528) == 8)
    {
      if (*(v9 + 529) == 8)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }
    }

    else
    {
      v14 = 2;
    }

    v15 = *(v13 + 2117);
    sub_27743FBF4();
    v16 = v14 * v15;
    if ((v14 * v15) >= qword_280B9A898)
    {
      v16 = qword_280B9A898;
    }

    if (v16 <= 32)
    {
      v17 = 32;
    }

    else
    {
      v17 = v16;
    }

    v18 = *(v13 + 204);
    v39 = -v17;
    v40 = v17 - 1;
    v19 = (v17 - 1 + (v18 + 142) * v14) & -v17;
    if ((v19 & 0x3FF) == 0 && v19 > 0x3FF)
    {
      v21 = v17;
    }

    else
    {
      v21 = 0;
    }

    v22 = v21 + v19;
    v23 = *(v13 + 201);
    v24 = (2 * (v21 + v19)) >> (v23 < 3);
    v25 = v17 + v24 * ((SHIDWORD(v18) >> (v23 < 2)) + 143);
    if (*(v13 + 201))
    {
      v26 = v24;
    }

    else
    {
      v25 = 0;
      v26 = 0;
    }

    v38 = v17 + v22 * (HIDWORD(v18) + 143);
    v27 = v25 + v38;
    v28 = *(v9 + 90);
    v29 = *(v9 + 91) - v28;
    if (v27 <= v29)
    {
      if (v27 < v29)
      {
        *(v9 + 91) = v28 + v27;
      }

      v30 = v23;
    }

    else
    {
      sub_2773C07DC(v9 + 90, v27 - v29);
      v18 = *(v13 + 204);
      v30 = *(v13 + 201);
      v28 = *(v9 + 90);
    }

    v31 = (v17 + 71 * v14 - 1) & -v17;
    *(v9 + 65) = v18;
    if (v30)
    {
      v32 = 2;
    }

    else
    {
      v32 = 1;
    }

    *(v9 + 530) = v32;
    *(v9 + 186) = 71;
    v33 = v28 + 71 * v22 + v31;
    *(v9 + 52) = v22 / v14;
    v34 = v28 + v38 + v26 * (0x47u >> (v23 < 2)) + ((2 * v31) >> (v23 < 3));
    v35 = v30 == 0;
    if (!v30)
    {
      v34 = 0;
    }

    v36 = v26 / v14;
    if (v35)
    {
      v36 = 0;
    }

    *(v9 + 53) = v36;
    *(v9 + 50) = (v40 + v33) & v39;
    *(v9 + 51) = (v40 + v34) & v39;
    *(v9 + 63) = 0;
    *(v9 + 64) = 0;
    v12 = (*(**a4 + 40))(*a4, *(v41 + 8), *(v41 + 24));
    if (!v12)
    {
      goto LABEL_45;
    }
  }

  if (*a4)
  {
    sub_2773F1D3C((a1 + 8), a4);
LABEL_44:
    *a4 = 0;
  }

LABEL_45:
  std::mutex::unlock((a1 + 56));
  return v12;
}

void sub_2773F2788(uint64_t a1)
{
  if (*(a1 + 32) >= 0x400uLL)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 512;
  }
}

void sub_2773F27DC(uint64_t a1)
{
  sub_2773F2814(a1);

  JUMPOUT(0x277CAD370);
}

uint64_t sub_2773F2814(uint64_t a1)
{
  *a1 = &unk_2886628A0;
  for (i = *(a1 + 48); i; i = *(a1 + 48))
  {
    v3 = *(*(*(a1 + 16) + ((*(a1 + 40) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(a1 + 40) & 0x1FFLL));
    ++*(a1 + 40);
    *(a1 + 48) = i - 1;
    sub_2773F2788(a1 + 8);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  std::mutex::~mutex((a1 + 56));
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  *(a1 + 48) = 0;
  v6 = v5 - v4;
  if (v6 >= 3)
  {
    do
    {
      operator delete(*v4);
      v5 = *(a1 + 24);
      v4 = (*(a1 + 16) + 8);
      *(a1 + 16) = v4;
      v6 = v5 - v4;
    }

    while (v6 > 2);
  }

  if (v6 == 1)
  {
    v7 = 256;
    goto LABEL_11;
  }

  if (v6 == 2)
  {
    v7 = 512;
LABEL_11:
    *(a1 + 40) = v7;
  }

  if (v4 != v5)
  {
    do
    {
      v8 = *v4++;
      operator delete(v8);
    }

    while (v4 != v5);
    v10 = *(a1 + 16);
    v9 = *(a1 + 24);
    if (v9 != v10)
    {
      *(a1 + 24) = v9 + ((v10 - v9 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  v11 = *(a1 + 8);
  if (v11)
  {
    operator delete(v11);
  }

  return a1;
}

uint64_t sub_2773F2984(uint64_t a1, int a2, void *a3)
{
  keys[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    valuePtr = 1496395842;
    v5 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    v6 = *MEMORY[0x277CC4E30];
    values = v5;
    keys[0] = v6;
    v7 = CFDictionaryCreate(0, keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    CFRelease(v5);
  }

  else
  {
    v7 = 0;
  }

  return sub_2773F636C(a1, 1, v7, a3);
}

uint64_t sub_2773F2A64(unsigned __int8 **a1, uint64_t a2, void *a3)
{
  v6 = sub_277509AC4(*a1);
  v7 = v6;
  v8 = 0x280B9A000uLL;
  if (v6)
  {
    v9 = dword_280B9A880 < 3;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    fwrite("Couldn't activate SPS (unsupported?)\n", 0x25uLL, 1uLL, *MEMORY[0x277D85DF8]);
    syslog(27, "Couldn't activate SPS (unsupported?)\n");
    return v7;
  }

  if (v6)
  {
    return v7;
  }

  v10 = 0x280B9A000uLL;
  if (!*a2)
  {
    v14 = 0;
    Mutable = 0;
    goto LABEL_48;
  }

  v11 = *a1;
  if ((*a1)[2098] == 8)
  {
    if (v11[2096] == 8)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }
  }

  else
  {
    v12 = 2;
  }

  v16 = *(v11 + 534);
  v17 = *(v11 + 52);
  v18 = *(v11 + 51) - v16;
  v19 = *(v11 + 536);
  v20 = v16 + 71;
  sub_27743FBF4();
  v21 = qword_280B9A898;
  v22 = (qword_280B9A898 + ((v18 + v20 + 71) * v12) - 1) & -qword_280B9A898;
  if (v22 >= 0x400 && (v22 & 0x3FF) == 0)
  {
    v20 += qword_280B9A898 / v12;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    goto LABEL_43;
  }

  v24 = v17 - v19;
  LODWORD(valuePtr) = v18;
  v25 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  if (v25)
  {
    v26 = v25;
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CC4EC8], v25);
    CFRelease(v26);
  }

  LODWORD(valuePtr) = v24;
  v27 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  if (v27)
  {
    v28 = v27;
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CC4DD8], v27);
    CFRelease(v28);
  }

  valuePtr = v21;
  v29 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
  if (v29)
  {
    v30 = v29;
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CC4D60], v29);
    CFRelease(v30);
  }

  valuePtr = v21;
  v31 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
  if (v31)
  {
    v32 = v31;
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CC4E38], v31);
    CFRelease(v32);
  }

  v10 = 0x280B9A000;
  if (!sub_2773F6230(*a1, Mutable))
  {
    LODWORD(valuePtr) = 71;
    v33 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    if (v33)
    {
      v34 = v33;
      CFDictionaryAddValue(Mutable, *MEMORY[0x277CC4DB0], v33);
      CFRelease(v34);
    }

    if (v20)
    {
      LODWORD(valuePtr) = v20;
      v35 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      if (v35)
      {
        v36 = v35;
        CFDictionaryAddValue(Mutable, *MEMORY[0x277CC4DB8], v35);
        CFRelease(v36);
      }
    }

    LODWORD(valuePtr) = 71;
    v37 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    if (v37)
    {
      v38 = v37;
      CFDictionaryAddValue(Mutable, *MEMORY[0x277CC4DC0], v37);
      CFRelease(v38);
    }

    if (v19 != -71)
    {
      LODWORD(valuePtr) = v19 + 71;
      v39 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      if (v39)
      {
        v40 = v39;
        CFDictionaryAddValue(Mutable, *MEMORY[0x277CC4DA0], v39);
        CFRelease(v40);
      }
    }

    sub_2773F60F0(Mutable);
    sub_2773F616C(Mutable);
LABEL_43:
    v10 = 0x280B9A000uLL;
    goto LABEL_44;
  }

  CFRelease(Mutable);
  Mutable = 0;
LABEL_44:
  v41 = VTDecoderSessionSetPixelBufferAttributes();
  if (v41)
  {
    goto LABEL_45;
  }

  v14 = 1;
LABEL_48:
  if (!*(a2 + 8))
  {
    goto LABEL_94;
  }

  sub_27743FBF4();
  v42 = *a1;
  v102 = v14;
  v43 = a3;
  v44 = (*a1)[2096] > 8u || v42[2098] > 8u;
  v45 = v42[2117] << v44;
  if (*(v10 + 2200) >= v45)
  {
    v46 = v45;
  }

  else
  {
    v46 = *(v10 + 2200);
  }

  v48 = *(v42 + 51);
  v47 = *(v42 + 52);
  v49 = MEMORY[0x277CBF138];
  v50 = MEMORY[0x277CBF150];
  v51 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v52 = CFDictionaryCreateMutable(0, 0, v49, v50);
  v53 = v52;
  v54 = v51;
  if (v51 && v52)
  {
    v55 = (v48 + 15) & 0xFFFFFFF0;
    v56 = (v47 + 15) & 0xFFFFFFF0;
    v57 = *(a2 + 16);
    v58 = __OFSUB__(v55, v57);
    v59 = v55 - v57;
    v60 = v46;
    v61 = v51;
    a3 = v43;
    v8 = 0x280B9A000;
    if (!((v59 < 0) ^ v58 | (v59 == 0)))
    {
      LODWORD(valuePtr) = v59;
      v62 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      if (v62)
      {
        v63 = v62;
        CFDictionaryAddValue(v61, *MEMORY[0x277CC4DB8], v62);
        CFRelease(v63);
      }
    }

    v64 = *(a2 + 20);
    v58 = __OFSUB__(v56, v64);
    v65 = v56 - v64;
    if (!((v65 < 0) ^ v58 | (v65 == 0)))
    {
      LODWORD(valuePtr) = v65;
      v66 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      if (v66)
      {
        v67 = v66;
        CFDictionaryAddValue(v61, *MEMORY[0x277CC4DA0], v66);
        CFRelease(v67);
      }
    }

    valuePtr = v60;
    v68 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
    if (v68)
    {
      v69 = v68;
      CFDictionaryAddValue(v61, *MEMORY[0x277CC4D60], v68);
      CFRelease(v69);
    }

    valuePtr = v60;
    v70 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
    if (v70)
    {
      v71 = v70;
      CFDictionaryAddValue(v61, *MEMORY[0x277CC4E38], v70);
      CFRelease(v71);
    }

    v7 = sub_2773F6230(*a1, v61);
    if (!v7)
    {
      LODWORD(valuePtr) = 0xFFFFFFF;
      v72 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      if (v72)
      {
        v73 = v72;
        CFDictionaryAddValue(v53, *MEMORY[0x277CE2AB0], v72);
        CFRelease(v73);
      }

      LODWORD(valuePtr) = 0xFFFFFFF;
      v74 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      if (v74)
      {
        v75 = v74;
        CFDictionaryAddValue(v53, *MEMORY[0x277CE2AB8], v74);
        CFRelease(v75);
      }

      LODWORD(valuePtr) = 1;
      v76 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      if (v76)
      {
        v77 = v76;
        CFDictionaryAddValue(v53, *MEMORY[0x277CE2AD0], v76);
        CFRelease(v77);
      }

      LODWORD(valuePtr) = 1;
      v78 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      if (v78)
      {
        v79 = v78;
        CFDictionaryAddValue(v53, *MEMORY[0x277CE2AD8], v78);
        CFRelease(v79);
      }

      LODWORD(valuePtr) = 1;
      v80 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      if (v80)
      {
        v81 = v80;
        CFDictionaryAddValue(v53, *MEMORY[0x277CE2AF0], v80);
        CFRelease(v81);
      }

      LODWORD(valuePtr) = 1;
      v82 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      if (v82)
      {
        v83 = v82;
        CFDictionaryAddValue(v53, *MEMORY[0x277CE2AE8], v82);
        CFRelease(v83);
      }

      LODWORD(valuePtr) = 0x7FFFFFFF;
      v84 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      if (v84)
      {
        v85 = v84;
        CFDictionaryAddValue(v53, *MEMORY[0x277CE2AA8], v84);
        CFRelease(v85);
      }

      LODWORD(valuePtr) = 0x7FFFFFFF;
      v86 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      if (v86)
      {
        v87 = v86;
        CFDictionaryAddValue(v53, *MEMORY[0x277CE2A98], v86);
        CFRelease(v87);
      }

      valuePtr = 0x7FFFFFFFFFFFFFFFLL;
      v88 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
      if (v88)
      {
        v89 = v88;
        CFDictionaryAddValue(v53, *MEMORY[0x277CE2AA0], v88);
        CFRelease(v89);
      }

      valuePtr = v60;
      v90 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
      if (v90)
      {
        v91 = v90;
        CFDictionaryAddValue(v53, *MEMORY[0x277CE2AE0], v90);
        CFRelease(v91);
      }

      CFDictionaryAddValue(v53, *MEMORY[0x277CE2A90], *MEMORY[0x277CBED10]);
      v7 = VTTileDecoderSessionSetTileDecodeRequirements();
    }
  }

  else
  {
    v7 = 4294954392;
    v61 = v51;
    a3 = v43;
    v8 = 0x280B9A000uLL;
    if (!v54)
    {
      goto LABEL_91;
    }
  }

  CFRelease(v61);
LABEL_91:
  if (v53)
  {
    CFRelease(v53);
  }

  v14 = v102;
  if (v7)
  {
LABEL_112:
    if (!Mutable)
    {
      return v7;
    }

LABEL_113:
    CFRelease(Mutable);
    return v7;
  }

LABEL_94:
  if (!v14)
  {
    goto LABEL_109;
  }

  PixelBufferPool = VTDecoderSessionGetPixelBufferPool();
  if (PixelBufferPool)
  {
    v93 = PixelBufferPool;
    PixelBufferAttributes = CVPixelBufferPoolGetPixelBufferAttributes(PixelBufferPool);
    Value = CFDictionaryGetValue(PixelBufferAttributes, *MEMORY[0x277CC4E30]);
    LODWORD(valuePtr) = 0;
    v96 = CFGetTypeID(Value);
    if (v96 == CFArrayGetTypeID())
    {
      Value = CFArrayGetValueAtIndex(Value, 0);
    }

    v97 = CFGetTypeID(Value);
    if (v97 != CFNumberGetTypeID() || !CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr))
    {
      goto LABEL_108;
    }

    v98 = (*a1)[2096];
    if (v98 <= (*a1)[2098])
    {
      v98 = (*a1)[2098];
    }

    v99 = v98 <= 0xA ? v98 > 8 : (v98 > 8) + 1;
    v100 = *&a800l800l010l01[24 * (*a1)[201] + 8 * v99 + 4 * (*a1)[1991]];
    v101 = sub_2773F50D8(valuePtr);
    if (v101 == sub_2773F50D8(v100))
    {
      v41 = sub_2773F657C(a1, 0, v93, a3);
      if (v41)
      {
        goto LABEL_45;
      }

      LOBYTE(v14) = 1;
    }

    else
    {
LABEL_108:
      LOBYTE(v14) = 0;
    }

LABEL_109:
    if ((v14 & 1) != 0 || (v41 = sub_2773F636C(a1, 0, 0, a3), !v41))
    {
      v7 = 0;
      *(*a3 + 64) = v14;
      goto LABEL_112;
    }

LABEL_45:
    v7 = v41;
    if (!Mutable)
    {
      return v7;
    }

    goto LABEL_113;
  }

  if (*(v8 + 2176) >= 3)
  {
    fwrite("Unable to get CVPixelBufferPool from VideoToolbox\n", 0x32uLL, 1uLL, *MEMORY[0x277D85DF8]);
    syslog(27, "Unable to get CVPixelBufferPool from VideoToolbox\n");
  }

  v7 = 4294954392;
  if (Mutable)
  {
    goto LABEL_113;
  }

  return v7;
}

uint64_t sub_2773F3454(uint64_t a1, uint64_t a2, char a3)
{
  result = sub_2773EC43C(a1, a2, a3);
  if (!result)
  {
    if (*(a2 + 2096) != 8 || (v6 = sub_2773F34D8, v7 = sub_2773F3C48, *(a2 + 2098) != 8))
    {
      v6 = sub_2773F3918;
      v7 = sub_2773F3E00;
    }

    *(a1 + 1200) = v7;
    *(a1 + 1208) = v6;
  }

  return result;
}

unint64_t sub_2773F34D8(int a1, size_t a2, CVPixelBufferRef pixelBuffer)
{
  v54 = *MEMORY[0x277D85DE8];
  Width = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  v52 = 0u;
  v53 = 0u;
  CVPixelBufferGetExtendedPixels(pixelBuffer, &v52, &v52.u64[1], &v53, &v53.u64[1]);
  v8 = a1 & ~(a1 >> 31);
  v52 = vshrq_n_u64(v52, 1uLL);
  v53 = vshrq_n_u64(v53, 1uLL);
  v9 = Height >> 1;
  if (Height >> 1 >= a2)
  {
    v10 = a2;
  }

  else
  {
    v10 = Height >> 1;
  }

  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 1uLL);
  result = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 1uLL);
  v13 = result >> 1;
  if (v10 > v8)
  {
    v14 = &BaseAddressOfPlane[2 * v13 * v8];
    v15 = &v14[(Width & 0xFFFFFFFFFFFFFFFELL) - 2];
    v16 = v52;
    v17 = vdupq_n_s64(v52.i64[0] - 1);
    v18 = (v52.i64[0] + 7) & 0xFFFFFFFFFFFFFFF8;
    v19 = (v52.i64[1] + 7) & 0xFFFFFFFFFFFFFFF8;
    v20 = vdupq_n_s64(v52.i64[1] - 1);
    v21 = &BaseAddressOfPlane[2 * v13 * v8 - 2 * v52.i64[0] + 8];
    v22 = 2 * v13;
    v23 = &BaseAddressOfPlane[2 * v13 * v8 + 8 + (Width & 0xFFFFFFFFFFFFFFFELL)];
    v24 = vdupq_n_s64(8uLL);
    do
    {
      if (v16.i64[0])
      {
        result = v21;
        v25 = v18;
        v26 = *v14;
        v27 = xmmword_27750D320;
        v28 = xmmword_27750D310;
        v29 = xmmword_27750D300;
        v30 = xmmword_27750D2F0;
        do
        {
          v31 = vmovn_s64(vcgeq_u64(v17, v27));
          if (vuzp1_s8(vuzp1_s16(v31, *v17.i8), *v17.i8).u8[0])
          {
            *(result - 8) = v26;
          }

          if (vuzp1_s8(vuzp1_s16(v31, *&v17), *&v17).i8[1])
          {
            *(result - 6) = v26;
          }

          if (vuzp1_s8(vuzp1_s16(*&v17, vmovn_s64(vcgeq_u64(v17, *&v28))), *&v17).i8[2])
          {
            *(result - 4) = v26;
            *(result - 2) = v26;
          }

          v32 = vmovn_s64(vcgeq_u64(v17, v29));
          if (vuzp1_s8(*&v17, vuzp1_s16(v32, *&v17)).i32[1])
          {
            *result = v26;
          }

          if (vuzp1_s8(*&v17, vuzp1_s16(v32, *&v17)).i8[5])
          {
            *(result + 2) = v26;
          }

          if (vuzp1_s8(*&v17, vuzp1_s16(*&v17, vmovn_s64(vcgeq_u64(v17, *&v30)))).i8[6])
          {
            *(result + 4) = v26;
            *(result + 6) = v26;
          }

          v33 = vdupq_n_s64(8uLL);
          v29 = vaddq_s64(v29, v33);
          v28 = vaddq_s64(v28, v33);
          v27 = vaddq_s64(v27, v33);
          v30 = vaddq_s64(v30, v33);
          result += 16;
          v25 -= 8;
        }

        while (v25);
      }

      if (v16.i64[1])
      {
        result = v23;
        v34 = v19;
        v35 = *v15;
        v36 = xmmword_27750D320;
        v37 = xmmword_27750D310;
        v38 = xmmword_27750D300;
        v39 = xmmword_27750D2F0;
        do
        {
          v40 = vmovn_s64(vcgeq_u64(v20, v36));
          if (vuzp1_s8(vuzp1_s16(v40, *v17.i8), *v17.i8).u8[0])
          {
            *(result - 8) = v35;
          }

          if (vuzp1_s8(vuzp1_s16(v40, *&v17), *&v17).i8[1])
          {
            *(result - 6) = v35;
          }

          if (vuzp1_s8(vuzp1_s16(*&v17, vmovn_s64(vcgeq_u64(v20, *&v37))), *&v17).i8[2])
          {
            *(result - 4) = v35;
            *(result - 2) = v35;
          }

          v41 = vmovn_s64(vcgeq_u64(v20, v38));
          if (vuzp1_s8(*&v17, vuzp1_s16(v41, *&v17)).i32[1])
          {
            *result = v35;
          }

          if (vuzp1_s8(*&v17, vuzp1_s16(v41, *&v17)).i8[5])
          {
            *(result + 2) = v35;
          }

          if (vuzp1_s8(*&v17, vuzp1_s16(*&v17, vmovn_s64(vcgeq_u64(v20, *&v39)))).i8[6])
          {
            *(result + 4) = v35;
            *(result + 6) = v35;
          }

          v38 = vaddq_s64(v38, v24);
          v37 = vaddq_s64(v37, v24);
          v36 = vaddq_s64(v36, v24);
          result += 16;
          v39 = vaddq_s64(v39, v24);
          v34 -= 8;
        }

        while (v34);
      }

      ++v8;
      v14 += 2 * v13;
      v15 += 2 * v13;
      v21 += v22;
      v23 += v22;
    }

    while (v8 != v10);
  }

  if (a1 < 1)
  {
    v42 = v53.i64[0];
    if (v53.i64[0])
    {
      v43 = 0;
      v44 = &BaseAddressOfPlane[-2 * v53.i64[0]];
      v45 = &BaseAddressOfPlane[-2 * v53.i64[0] + -2 * v13];
      do
      {
        result = memcpy(v45, v44, (Width & 0xFFFFFFFFFFFFFFFELL) + 4 * v42);
        v42 = v53.i64[0];
        ++v43;
        v45 -= 2 * v13;
      }

      while (v53.i64[0] > v43);
    }
  }

  if (v9 <= a2)
  {
    v46 = v53.i64[1];
    if (v53.i64[1])
    {
      v47 = 0;
      v48 = &BaseAddressOfPlane[-2 * v53.i64[1]];
      v49 = &v48[2 * v13 * (v9 - 1)];
      v50 = Width & 0xFFFFFFFFFFFFFFFELL;
      v51 = &v48[2 * v13 * v9];
      do
      {
        result = memcpy(v51, v49, v50 + 4 * v46);
        v46 = v53.i64[1];
        ++v47;
        v51 += 2 * v13;
      }

      while (v53.i64[1] > v47);
    }
  }

  return result;
}

unint64_t sub_2773F3918(int a1, size_t a2, CVPixelBufferRef pixelBuffer)
{
  v49 = *MEMORY[0x277D85DE8];
  Width = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  v47 = 0u;
  v48 = 0u;
  CVPixelBufferGetExtendedPixels(pixelBuffer, &v47, &v47.u64[1], &v48, &v48.u64[1]);
  v8 = a1 & ~(a1 >> 31);
  v47 = vshrq_n_u64(v47, 1uLL);
  v48 = vshrq_n_u64(v48, 1uLL);
  v9 = Width >> 1;
  v10 = Height >> 1;
  if (v10 >= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = v10;
  }

  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 1uLL);
  result = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 1uLL);
  v14 = result >> 2;
  if (v11 > v8)
  {
    v15 = 4 * v14 * v8;
    v16 = &BaseAddressOfPlane[v15];
    v17 = &BaseAddressOfPlane[4 * v9 - 4 + v15];
    v18 = v47;
    v19 = (v47.i64[0] + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v20 = vdupq_n_s64(v47.i64[0] - 1);
    v21 = (v47.i64[1] + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v22 = vdupq_n_s64(v47.i64[1] - 1);
    v23 = &BaseAddressOfPlane[v15 - 4 * v47.i64[0] + 8];
    v24 = 4 * v14;
    v25 = &BaseAddressOfPlane[4 * v9 + 8 + v15];
    v26 = vdupq_n_s64(4uLL);
    do
    {
      if (v18.i64[0])
      {
        result = *v16;
        v27 = v23;
        v28 = v19;
        v29 = xmmword_27750D320;
        v30 = xmmword_27750D310;
        do
        {
          v31 = vmovn_s64(vcgeq_u64(v20, v29));
          if (vuzp1_s16(v31, *v20.i8).u8[0])
          {
            *(v27 - 2) = result;
          }

          if (vuzp1_s16(v31, *&v20).i8[2])
          {
            *(v27 - 1) = result;
          }

          if (vuzp1_s16(*&v20, vmovn_s64(vcgeq_u64(v20, *&v30))).i32[1])
          {
            *v27 = result;
            v27[1] = result;
          }

          v32 = vdupq_n_s64(4uLL);
          v30 = vaddq_s64(v30, v32);
          v29 = vaddq_s64(v29, v32);
          v27 += 4;
          v28 -= 4;
        }

        while (v28);
      }

      if (v18.i64[1])
      {
        result = *v17;
        v33 = v25;
        v34 = v21;
        v35 = xmmword_27750D320;
        v36 = xmmword_27750D310;
        do
        {
          v37 = vmovn_s64(vcgeq_u64(v22, v35));
          if (vuzp1_s16(v37, *v20.i8).u8[0])
          {
            *(v33 - 2) = result;
          }

          if (vuzp1_s16(v37, *&v20).i8[2])
          {
            *(v33 - 1) = result;
          }

          if (vuzp1_s16(*&v20, vmovn_s64(vcgeq_u64(v22, *&v36))).i32[1])
          {
            *v33 = result;
            v33[1] = result;
          }

          v36 = vaddq_s64(v36, v26);
          v35 = vaddq_s64(v35, v26);
          v33 += 4;
          v34 -= 4;
        }

        while (v34);
      }

      ++v8;
      v16 += 4 * v14;
      v17 += 4 * v14;
      v23 += v24;
      v25 += v24;
    }

    while (v8 != v11);
  }

  if (a1 < 1)
  {
    v38 = v48.i64[0];
    if (v48.i64[0])
    {
      v39 = 0;
      v40 = &BaseAddressOfPlane[-4 * v48.i64[0]];
      v41 = &BaseAddressOfPlane[-4 * v48.i64[0] + -4 * v14];
      do
      {
        result = memcpy(v41, v40, 4 * v9 + 8 * v38);
        v38 = v48.i64[0];
        ++v39;
        v41 -= 4 * v14;
      }

      while (v48.i64[0] > v39);
    }
  }

  if (v10 <= a2)
  {
    v42 = v48.i64[1];
    if (v48.i64[1])
    {
      v43 = 0;
      v44 = &BaseAddressOfPlane[-4 * v48.i64[1]];
      v45 = &v44[4 * v14 * (v10 - 1)];
      v46 = &v44[4 * v14 * v10];
      do
      {
        result = memcpy(v46, v45, 4 * v9 + 8 * v42);
        v42 = v48.i64[1];
        ++v43;
        v46 += 4 * v14;
      }

      while (v48.i64[1] > v43);
    }
  }

  return result;
}

uint64_t sub_2773F3C48(int a1, size_t a2, CVPixelBufferRef pixelBuffer)
{
  v26 = *MEMORY[0x277D85DE8];
  Width = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  v8 = a1 & ~(a1 >> 31);
  *__len = 0u;
  v25 = 0u;
  CVPixelBufferGetExtendedPixels(pixelBuffer, __len, &__len[1], &v25, &v25 + 1);
  if (Height >= a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = Height;
  }

  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 0);
  result = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 0);
  v12 = result;
  v13 = v9 > v8;
  v14 = v9 - v8;
  if (v13)
  {
    v15 = &BaseAddressOfPlane[result * v8];
    do
    {
      memset(&v15[-__len[0]], *v15, __len[0]);
      result = memset(&v15[Width], v15[Width - 1], __len[1]);
      v15 += v12;
      --v14;
    }

    while (v14);
  }

  if (a1 < 1)
  {
    v16 = v25;
    if (v25)
    {
      v17 = 0;
      v18 = &BaseAddressOfPlane[-v25];
      v19 = &BaseAddressOfPlane[-v12 - v25];
      do
      {
        result = memcpy(v19, v18, Width + 2 * v16);
        v16 = v25;
        ++v17;
        v19 -= v12;
      }

      while (v25 > v17);
    }
  }

  if (Height <= a2)
  {
    v20 = *(&v25 + 1);
    if (*(&v25 + 1))
    {
      v21 = 0;
      v22 = &BaseAddressOfPlane[v12 * (Height - 1) - *(&v25 + 1)];
      v23 = &BaseAddressOfPlane[v12 * Height - *(&v25 + 1)];
      do
      {
        result = memcpy(v23, v22, Width + 2 * v20);
        v20 = *(&v25 + 1);
        ++v21;
        v23 += v12;
      }

      while (*(&v25 + 1) > v21);
    }
  }

  return result;
}

unint64_t sub_2773F3E00(int a1, size_t a2, CVPixelBufferRef pixelBuffer)
{
  v54 = *MEMORY[0x277D85DE8];
  Width = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  v8 = a1 & ~(a1 >> 31);
  v52 = 0u;
  v53 = 0u;
  CVPixelBufferGetExtendedPixels(pixelBuffer, &v52, &v52 + 1, &v53, &v53 + 1);
  if (Height >= a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = Height;
  }

  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 0);
  result = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 0);
  v12 = result >> 1;
  if (v9 > v8)
  {
    v13 = 2 * v12 * v8;
    v14 = &BaseAddressOfPlane[v13];
    v15 = &BaseAddressOfPlane[2 * Width - 2 + v13];
    v16 = v52;
    v17 = vdupq_n_s64(v52 - 1);
    v18 = (v52 + 7) & 0xFFFFFFFFFFFFFFF8;
    v19 = (*(&v52 + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
    v20 = vdupq_n_s64(*(&v52 + 1) - 1);
    v21 = &BaseAddressOfPlane[v13 - 2 * v52 + 8];
    v22 = 2 * v12;
    v23 = &BaseAddressOfPlane[2 * Width + 8 + v13];
    v24 = vdupq_n_s64(8uLL);
    do
    {
      if (v16)
      {
        result = v21;
        v25 = v18;
        v26 = *v14;
        v27 = xmmword_27750D320;
        v28 = xmmword_27750D310;
        v29 = xmmword_27750D300;
        v30 = xmmword_27750D2F0;
        do
        {
          v31 = vmovn_s64(vcgeq_u64(v17, v27));
          if (vuzp1_s8(vuzp1_s16(v31, *v17.i8), *v17.i8).u8[0])
          {
            *(result - 8) = v26;
          }

          if (vuzp1_s8(vuzp1_s16(v31, *&v17), *&v17).i8[1])
          {
            *(result - 6) = v26;
          }

          if (vuzp1_s8(vuzp1_s16(*&v17, vmovn_s64(vcgeq_u64(v17, *&v28))), *&v17).i8[2])
          {
            *(result - 4) = v26;
            *(result - 2) = v26;
          }

          v32 = vmovn_s64(vcgeq_u64(v17, v29));
          if (vuzp1_s8(*&v17, vuzp1_s16(v32, *&v17)).i32[1])
          {
            *result = v26;
          }

          if (vuzp1_s8(*&v17, vuzp1_s16(v32, *&v17)).i8[5])
          {
            *(result + 2) = v26;
          }

          if (vuzp1_s8(*&v17, vuzp1_s16(*&v17, vmovn_s64(vcgeq_u64(v17, *&v30)))).i8[6])
          {
            *(result + 4) = v26;
            *(result + 6) = v26;
          }

          v33 = vdupq_n_s64(8uLL);
          v29 = vaddq_s64(v29, v33);
          v28 = vaddq_s64(v28, v33);
          v27 = vaddq_s64(v27, v33);
          v30 = vaddq_s64(v30, v33);
          result += 16;
          v25 -= 8;
        }

        while (v25);
      }

      if (*(&v16 + 1))
      {
        result = v23;
        v34 = v19;
        v35 = *v15;
        v36 = xmmword_27750D320;
        v37 = xmmword_27750D310;
        v38 = xmmword_27750D300;
        v39 = xmmword_27750D2F0;
        do
        {
          v40 = vmovn_s64(vcgeq_u64(v20, v36));
          if (vuzp1_s8(vuzp1_s16(v40, *v17.i8), *v17.i8).u8[0])
          {
            *(result - 8) = v35;
          }

          if (vuzp1_s8(vuzp1_s16(v40, *&v17), *&v17).i8[1])
          {
            *(result - 6) = v35;
          }

          if (vuzp1_s8(vuzp1_s16(*&v17, vmovn_s64(vcgeq_u64(v20, *&v37))), *&v17).i8[2])
          {
            *(result - 4) = v35;
            *(result - 2) = v35;
          }

          v41 = vmovn_s64(vcgeq_u64(v20, v38));
          if (vuzp1_s8(*&v17, vuzp1_s16(v41, *&v17)).i32[1])
          {
            *result = v35;
          }

          if (vuzp1_s8(*&v17, vuzp1_s16(v41, *&v17)).i8[5])
          {
            *(result + 2) = v35;
          }

          if (vuzp1_s8(*&v17, vuzp1_s16(*&v17, vmovn_s64(vcgeq_u64(v20, *&v39)))).i8[6])
          {
            *(result + 4) = v35;
            *(result + 6) = v35;
          }

          v38 = vaddq_s64(v38, v24);
          v37 = vaddq_s64(v37, v24);
          v36 = vaddq_s64(v36, v24);
          result += 16;
          v39 = vaddq_s64(v39, v24);
          v34 -= 8;
        }

        while (v34);
      }

      ++v8;
      v14 += 2 * v12;
      v15 += 2 * v12;
      v21 += v22;
      v23 += v22;
    }

    while (v8 != v9);
  }

  if (a1 < 1)
  {
    v42 = v53;
    if (v53)
    {
      v43 = 0;
      v44 = &BaseAddressOfPlane[-2 * v53];
      v45 = &BaseAddressOfPlane[-2 * v53 + -2 * v12];
      do
      {
        result = memcpy(v45, v44, 2 * Width + 4 * v42);
        v42 = v53;
        ++v43;
        v45 -= 2 * v12;
      }

      while (v53 > v43);
    }
  }

  if (Height <= a2)
  {
    v46 = *(&v53 + 1);
    if (*(&v53 + 1))
    {
      v47 = 0;
      v48 = &BaseAddressOfPlane[-2 * *(&v53 + 1)];
      v49 = &v48[2 * v12 * (Height - 1)];
      v50 = 2 * Width;
      v51 = &v48[2 * Height * v12];
      do
      {
        result = memcpy(v51, v49, v50 + 4 * v46);
        v46 = *(&v53 + 1);
        ++v47;
        v51 += 2 * v12;
      }

      while (*(&v53 + 1) > v47);
    }
  }

  return result;
}

uint64_t sub_2773F4238(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (*(a1 + 432) != 1)
  {
    v5 = *(a1 + 8 * a4 + 1200);
    v6 = a3;
    goto LABEL_5;
  }

  v5 = *(a1 + 8 * a4 + 1200);
  v6 = a3;
  if (*(a1 + 400) == *(a1 + 440))
  {
LABEL_5:
    v7 = *(a1 + 1176);
    return v5(a2, v6, v7);
  }

  v7 = *(a1 + 1192);
  return v5(a2, v6, v7);
}

void sub_2773F4284(void *a1)
{
  sub_2773F42BC(a1);

  JUMPOUT(0x277CAD370);
}

uint64_t sub_2773F42BC(void *a1)
{
  *a1 = &unk_288662B10;
  sub_2773F4314(a1);

  return sub_2773ECBB8(a1);
}

double sub_2773F4314(uint64_t a1)
{
  v2 = *(a1 + 1176);
  if (v2)
  {
    CVPixelBufferUnlockBaseAddress(v2, *(a1 + 1184));
    CVPixelBufferRelease(*(a1 + 1176));
    *(a1 + 1176) = 0;
  }

  v3 = *(a1 + 1192);
  if (v3)
  {
    CVPixelBufferUnlockBaseAddress(v3, 0);
    CVPixelBufferRelease(*(a1 + 1192));
    *(a1 + 1192) = 0;
  }

  result = 0.0;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  return result;
}

void sub_2773F4384(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  std::mutex::lock((a1 + 56));
  sub_2773F4314(a2);
  sub_2773F1D3C((a1 + 8), &v4);

  std::mutex::unlock((a1 + 56));
}

uint64_t sub_2773F43F8(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v6 = 0;
  result = sub_2773F444C(a1, a2, 0, a3, &v6, 0, 0, 0, 0);
  *a4 = v6;
  return result;
}

uint64_t sub_2773F444C(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t *a5, __CVBuffer *a6, int64_t a7, unsigned int a8, int a9)
{
  v90 = 0;
  pixelBufferOut = 0;
  *a5 = 0;
  if (a6)
  {
    PixelBufferAttributes = CVPixelBufferPoolGetPixelBufferAttributes(*(a1 + 120));
    if (a3)
    {
      goto LABEL_3;
    }

    LODWORD(valuePtr) = 0;
    Value = CFDictionaryGetValue(PixelBufferAttributes, *MEMORY[0x277CC4E30]);
    ValueAtIndex = Value;
    if (Value && ((v18 = CFGetTypeID(Value), v18 != CFArrayGetTypeID()) || CFArrayGetCount(ValueAtIndex) < 1 || (ValueAtIndex = CFArrayGetValueAtIndex(ValueAtIndex, 0)) != 0) && (v19 = CFGetTypeID(ValueAtIndex), v19 == CFNumberGetTypeID()) && CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr))
    {
      v20 = valuePtr;
      v21 = v20 == CVPixelBufferGetPixelFormatType(a6);
    }

    else
    {
      v21 = 0;
    }

    v22 = *(a2 + 8);
    v23 = *(v22 + 204);
    v24 = *(v22 + 208);
    extraRowsOnBottom = 0;
    extraColumnsOnRight[0] = 0;
    CVPixelBufferGetExtendedPixels(a6, 0, extraColumnsOnRight, 0, &extraRowsOnBottom);
    Width = CVPixelBufferGetWidth(a6);
    v26 = extraColumnsOnRight[0];
    Height = CVPixelBufferGetHeight(a6);
    v28 = v23 + a7;
    v29 = v24 + (a7 >> 32);
    v30 = v26 + Width;
    v31 = extraRowsOnBottom + Height;
    if (v28 > v30 || v29 > v31)
    {
      if (dword_280B9A880 >= 3)
      {
        fprintf(*MEMORY[0x277D85DF8], "Pixel buffer needs to be at least %zux%zu, but got %zux%zu\n", v28, v29, v30, v31);
        syslog(27, "Pixel buffer needs to be at least %zux%zu, but got %zux%zu\n", v28, v29, v30, v31);
      }
    }

    else if (v21)
    {
      pixelBufferOut = CVPixelBufferRetain(a6);
      v13 = HIDWORD(a7);
      v14 = a7;
      if (pixelBufferOut)
      {
        goto LABEL_26;
      }

      goto LABEL_6;
    }

LABEL_3:
    v13 = 0;
    v14 = 0;
    if (pixelBufferOut)
    {
      goto LABEL_26;
    }

    goto LABEL_6;
  }

  v14 = 0;
  v13 = 0;
LABEL_6:
  v15 = CVPixelBufferPoolCreatePixelBuffer(0, *(a1 + 120), &pixelBufferOut);
  if (v15)
  {
    goto LABEL_29;
  }

  v15 = (*(*a2 + 40))(a2, pixelBufferOut);
  if (v15)
  {
    goto LABEL_29;
  }

LABEL_26:
  if (a4)
  {
    v15 = CVPixelBufferPoolCreatePixelBuffer(0, *(a1 + 120), &v90);
    if (v15 || (v15 = (*(*a2 + 40))(a2, v90), v15))
    {
LABEL_29:
      v33 = 0;
LABEL_139:
      v73 = *a5;
      if (!*a5)
      {
        goto LABEL_147;
      }

      v74 = *(a1 + 24);
      v75 = *(a1 + 16);
      if (v74 == v75)
      {
        v76 = 0;
      }

      else
      {
        v76 = ((v74 - v75) << 6) - 1;
      }

      v77 = *(a1 + 48);
      v78 = v77 + *(a1 + 40);
      if (v76 == v78)
      {
        sub_2773F1DC4((a1 + 8));
        v75 = *(a1 + 16);
        v77 = *(a1 + 48);
        v78 = *(a1 + 40) + v77;
      }

      *(*(v75 + ((v78 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v78 & 0x1FF)) = v73;
      *(a1 + 48) = v77 + 1;
      goto LABEL_146;
    }
  }

  v82 = a8;
  std::mutex::lock((a1 + 56));
  if (*(a1 + 48))
  {
    v34 = *(*(*(a1 + 16) + ((*(a1 + 40) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(a1 + 40) & 0x1FFLL));
    *a5 = v34;
    *(v34 + 992) = 0;
    *(v34 + 40) = 0;
    *(v34 + 42) = 0;
    *(v34 + 44) = 0;
    *(v34 + 1024) = 0;
    *(v34 + 36) = 0;
    *(v34 + 548) = 0;
    *(v34 + 597) = 0;
    *(v34 + 1172) = 0;
    *(v34 + 648) = 0u;
    *(v34 + 748) = 0;
    *(v34 + 752) = 0;
    *(v34 + 760) = 0u;
    *(v34 + 832) = 0;
    *(v34 + 840) = 0u;
    *(v34 + 928) = 0u;
    *(v34 + 672) = -1;
    *(v34 + 664) = -1;
    *(v34 + 680) = 0;
    *(a1 + 40) = vaddq_s64(*(a1 + 40), xmmword_27750D330);
    sub_2773F2788(a1 + 8);
    v35 = *a5;
  }

  else
  {
    v36 = operator new(0x4C0uLL, MEMORY[0x277D826F0]);
    if (!v36)
    {
      v15 = 4294954392;
      v33 = 1;
LABEL_146:
      *a5 = 0;
      goto LABEL_147;
    }

    v35 = v36;
    sub_2773ECCE4(v36);
    *v37 = &unk_288662B10;
    *(v37 + 1176) = 0;
    *(v37 + 1184) = 0;
    *(v37 + 1192) = 0;
    *a5 = v37;
  }

  *(v35 + 432) = a4;
  v38 = pixelBufferOut;
  if (!pixelBufferOut)
  {
    goto LABEL_137;
  }

  texture = v90;
  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBufferOut);
  v40 = PixelFormatType;
  if (PixelFormatType <= 1952854577)
  {
    if (PixelFormatType <= 875836533)
    {
      if (PixelFormatType <= 875704933)
      {
        if (PixelFormatType == 875704422)
        {
          goto LABEL_67;
        }

        v41 = 875704438;
      }

      else
      {
        if (PixelFormatType == 875704934 || PixelFormatType == 875704950)
        {
          goto LABEL_67;
        }

        v41 = 875836518;
      }
    }

    else if (PixelFormatType > 1278226737)
    {
      if (PixelFormatType == 1278226738 || PixelFormatType == 1496395842)
      {
        goto LABEL_67;
      }

      v41 = 1952854576;
    }

    else
    {
      if (PixelFormatType == 875836534 || PixelFormatType == 1278226488)
      {
        goto LABEL_67;
      }

      v41 = 1278226736;
    }
  }

  else if (PixelFormatType > 2016686639)
  {
    if (PixelFormatType > 2019963439)
    {
      if (PixelFormatType == 2019963440 || PixelFormatType == 2019963442)
      {
        goto LABEL_67;
      }

      v41 = 2019963956;
    }

    else
    {
      if (PixelFormatType == 2016686640 || PixelFormatType == 2016686642)
      {
        goto LABEL_67;
      }

      v41 = 2016687156;
    }
  }

  else if (PixelFormatType > 1953903153)
  {
    if (PixelFormatType == 1953903154 || PixelFormatType == 1953903668)
    {
      goto LABEL_67;
    }

    v41 = 1983000886;
  }

  else
  {
    if (PixelFormatType == 1952854578 || PixelFormatType == 1952855092)
    {
      goto LABEL_67;
    }

    v41 = 1953903152;
  }

  if (PixelFormatType != v41)
  {
    goto LABEL_130;
  }

LABEL_67:
  sub_2773F4314(v35);
  *(v35 + 1184) = 0;
  v15 = CVPixelBufferLockBaseAddress(v38, 0);
  if (v15)
  {
    goto LABEL_138;
  }

  *(v35 + 1176) = CVPixelBufferRetain(v38);
  *(v35 + 520) = CVPixelBufferGetWidth(v38);
  *(v35 + 524) = CVPixelBufferGetHeight(v38);
  PlaneCount = CVPixelBufferGetPlaneCount(v38);
  if ((PlaneCount & 0xFE) != 0)
  {
    v43 = PlaneCount;
  }

  else
  {
    v43 = 1;
  }

  *(v35 + 530) = v43;
  if (PlaneCount >= 3u)
  {
    if (dword_280B9A880 >= 3)
    {
      fprintf(*MEMORY[0x277D85DF8], "Unexpected %d planes (too many)\n", v43);
      syslog(27, "Unexpected %d planes (too many)\n", *(v35 + 530));
    }

    v15 = 4294954386;
    goto LABEL_138;
  }

  v44 = v13;
  v45 = v35;
  v46 = v14;
  v80 = v14 | (v13 << 32);
  v47 = sub_2773F50D8(v40);
  v48 = 0;
  v49 = v47 > 8;
  v50 = v35 + 400;
  v83 = v45;
  v84 = v45 + 416;
  v51 = 1;
  do
  {
    v52 = v51;
    *(v50 + 8 * v48) = CVPixelBufferGetBaseAddressOfPlane(v38, v48);
    v53 = CVPixelBufferGetBytesPerRowOfPlane(v38, v48) >> v49;
    *(v84 + 8 * v48) = v53;
    v54 = *(v50 + 8 * v48);
    if (v54)
    {
      v55 = v46;
      v56 = v44;
      if ((v52 & 1) == 0)
      {
        WidthOfPlane = CVPixelBufferGetWidthOfPlane(v38, 1uLL);
        v58 = *(v83 + 520);
        HeightOfPlane = CVPixelBufferGetHeightOfPlane(v38, 1uLL);
        v55 = v46 >> (WidthOfPlane < v58);
        v56 = v44 >> (HeightOfPlane < *(v83 + 524));
        v54 = *(v50 + 8 * v48);
        v53 = *(v84 + 8 * v48);
      }

      *(v50 + 8 * v48) = v54 + ((v53 * v56 + (v55 << v48)) << v49);
    }

    v60 = v53 << v49;
    valuePtr = v60;
    if (v60 >= 0x400 && (v60 & 0x3FF) == 0)
    {
      p_valuePtr = &valuePtr;
      if (atomic_load_explicit(&qword_280A711C8, memory_order_acquire) != -1)
      {
        extraColumnsOnRight[0] = sub_2773F52D4;
        extraColumnsOnRight[1] = &p_valuePtr;
        extraRowsOnBottom = extraColumnsOnRight;
        std::__call_once(&qword_280A711C8, &extraRowsOnBottom, sub_2773F52C4);
      }
    }

    v51 = 0;
    v48 = 1;
  }

  while ((v52 & 1) != 0);
  if (texture)
  {
    v61 = CVPixelBufferGetPixelFormatType(texture);
    if (v61 <= 1952854577)
    {
      if (v61 <= 875836533)
      {
        if (v61 <= 875704933)
        {
          if (v61 == 875704422)
          {
            goto LABEL_117;
          }

          v62 = 875704438;
        }

        else
        {
          if (v61 == 875704934 || v61 == 875704950)
          {
            goto LABEL_117;
          }

          v62 = 875836518;
        }
      }

      else if (v61 > 1278226737)
      {
        if (v61 == 1278226738 || v61 == 1496395842)
        {
          goto LABEL_117;
        }

        v62 = 1952854576;
      }

      else
      {
        if (v61 == 875836534 || v61 == 1278226488)
        {
          goto LABEL_117;
        }

        v62 = 1278226736;
      }
    }

    else if (v61 > 2016686639)
    {
      if (v61 > 2019963439)
      {
        if (v61 == 2019963440 || v61 == 2019963442)
        {
          goto LABEL_117;
        }

        v62 = 2019963956;
      }

      else
      {
        if (v61 == 2016686640 || v61 == 2016686642)
        {
          goto LABEL_117;
        }

        v62 = 2016687156;
      }
    }

    else
    {
      if (v61 <= 1953903153)
      {
        if (v61 != 1952854578 && v61 != 1952855092)
        {
          v62 = 1953903152;
          goto LABEL_116;
        }

LABEL_117:
        v15 = CVPixelBufferLockBaseAddress(texture, 0);
        if (v15)
        {
          goto LABEL_138;
        }

        *(v83 + 1192) = CVPixelBufferRetain(texture);
        if (CVPixelBufferGetWidth(texture) == *(v83 + 520) && CVPixelBufferGetHeight(texture) == *(v83 + 524))
        {
          v63 = 0;
          v64 = 1;
          do
          {
            v65 = v64;
            *(v83 + 472 + 8 * v63) = CVPixelBufferGetBaseAddressOfPlane(texture, v63);
            BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(texture, v63);
            v64 = 0;
            *(v83 + 488 + 8 * v63) = BytesPerRowOfPlane >> v49;
            *(v83 + 440 + 8 * v63) = *(v50 + 8 * v63);
            *(v83 + 456 + 8 * v63) = *(v84 + 8 * v63);
            v63 = 1;
          }

          while ((v65 & 1) != 0);
          goto LABEL_122;
        }

        if (dword_280B9A880 >= 3)
        {
          v69 = *MEMORY[0x277D85DF8];
          v70 = "SetBuffer: VRA buffers have different dimensions\n";
          v71 = "SetBuffer: VRA buffers have different dimensions\n";
          v72 = 49;
          goto LABEL_136;
        }

        goto LABEL_137;
      }

      if (v61 == 1953903154 || v61 == 1953903668)
      {
        goto LABEL_117;
      }

      v62 = 1983000886;
    }

LABEL_116:
    if (v61 == v62)
    {
      goto LABEL_117;
    }

LABEL_130:
    if (dword_280B9A880 >= 3)
    {
      v69 = *MEMORY[0x277D85DF8];
      v70 = "Invalid pixel format\n";
      v71 = "Invalid pixel format\n";
      v72 = 21;
LABEL_136:
      fwrite(v71, v72, 1uLL, v69);
      syslog(27, v70);
    }

LABEL_137:
    v15 = 4294954394;
    goto LABEL_138;
  }

LABEL_122:
  *(v83 + 504) = 0;
  *(v83 + 512) = 0;
  v67 = (*(**a5 + 40))(*a5, *(a2 + 8), *(a2 + 24));
  v15 = v67;
  if (!a6 || (!v67 ? (v68 = a3 == 0) : (v68 = 1), v68))
  {
    v33 = 1;
    if (v67)
    {
      goto LABEL_139;
    }
  }

  else
  {
    v15 = sub_2774A7520((a1 + 128), a6, a7, v82, a9, pixelBufferOut, v80, 1);
    if (v15)
    {
      if (dword_280B9A880 >= 3)
      {
        v33 = 1;
        fwrite("Failed to copy source buffer\n", 0x1DuLL, 1uLL, *MEMORY[0x277D85DF8]);
        syslog(27, "Failed to copy source buffer\n");
        goto LABEL_139;
      }

LABEL_138:
      v33 = 1;
      goto LABEL_139;
    }

    v33 = 1;
  }

LABEL_147:
  CVPixelBufferRelease(pixelBufferOut);
  CVPixelBufferRelease(v90);
  if (v33)
  {
    std::mutex::unlock((a1 + 56));
  }

  return v15;
}

uint64_t sub_2773F50D8(int a1)
{
  if (a1 > 1952854577)
  {
    if (a1 <= 2016686639)
    {
      if (a1 <= 1953903153)
      {
        if (a1 == 1952854578 || a1 == 1952855092)
        {
          return 12;
        }

        v1 = 1953903152;
LABEL_31:
        if (a1 == v1)
        {
          return 12;
        }

        return 0;
      }

      if (a1 == 1953903154 || a1 == 1953903668)
      {
        return 12;
      }

      v3 = 1983000886;
      goto LABEL_26;
    }

    if (a1 > 2019963439)
    {
      if (a1 != 2019963440 && a1 != 2019963956)
      {
        v3 = 2019963442;
LABEL_26:
        if (a1 != v3)
        {
          return 0;
        }
      }
    }

    else if (a1 != 2016686640 && a1 != 2016686642)
    {
      v3 = 2016687156;
      goto LABEL_26;
    }

    return 10;
  }

  v2 = 8;
  if (a1 <= 875836533)
  {
    if (a1 <= 875704933)
    {
      if (a1 == 875704422)
      {
        return v2;
      }

      v4 = 875704438;
    }

    else
    {
      if (a1 == 875704934 || a1 == 875704950)
      {
        return v2;
      }

      v4 = 875836518;
    }

    if (a1 == v4)
    {
      return v2;
    }

    return 0;
  }

  if (a1 > 1278226737)
  {
    if (a1 == 1278226738)
    {
      return 12;
    }

    if (a1 != 1496395842)
    {
      v1 = 1952854576;
      goto LABEL_31;
    }

    return 10;
  }

  if (a1 != 875836534 && a1 != 1278226488)
  {
    v3 = 1278226736;
    goto LABEL_26;
  }

  return v2;
}

void sub_2773F52D4(void *a1)
{
  if (dword_280B9A880 >= 4)
  {
    fprintf(*MEMORY[0x277D85DF8], "Stride of %zd bytes is very aligned, this may cause slowdown\n", *a1);
    syslog(28, "Stride of %zd bytes is very aligned, this may cause slowdown\n", *a1);
  }
}

void sub_2773F5348(uint64_t a1)
{
  sub_2773F5380(a1);

  JUMPOUT(0x277CAD370);
}

uint64_t sub_2773F5380(uint64_t a1)
{
  *a1 = &unk_288662D60;
  CVPixelBufferPoolRelease(*(a1 + 120));

  return sub_2773F2814(a1);
}

uint64_t sub_2773F53E0(uint64_t a1, CVBufferRef buffer)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    CVBufferSetAttachments(buffer, v4, kCVAttachmentMode_ShouldPropagate);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    CVBufferSetAttachments(buffer, v5, kCVAttachmentMode_ShouldNotPropagate);
  }

  return 0;
}

uint64_t sub_2773F5430(uint64_t a1, int a2, CVPixelBufferRef pixelBuffer, int64_t a4)
{
  v65 = 0;
  v7 = *(a1 + 48);
  v8 = *(a1 + 25);
  if (pixelBuffer)
  {
    Width = CVPixelBufferGetWidth(pixelBuffer);
    Height = CVPixelBufferGetHeight(pixelBuffer);
    result = sub_2773F444C(v7, a1, 0, v8, &v65, pixelBuffer, a4, Width - a4, Height - HIDWORD(a4));
  }

  else
  {
    result = sub_2773F444C(v7, a1, 0, v8, &v65, 0, a4, 0, 0);
  }

  if (result)
  {
    return result;
  }

  v13 = v65;
  *(v65 + 1024) = a2;
  *(v13 + 1173) = *(a1 + 64);
  v14 = *(a1 + 24);
  v15 = *(v13 + 1028);
  v16 = vdup_n_s32(v15);
  v17 = vshl_u32(vadd_s32(*(v13 + 520), vdup_n_s32(~(-1 << v15))), vneg_s32(v16));
  *(v13 + 992) = v17;
  v18 = vshr_n_u32(vadd_s32(vshl_u32(v17, v16), 0x700000007), 3uLL);
  *&v19 = v18.u32[0];
  *(&v19 + 1) = v18.u32[1];
  *(v13 + 752) = v19;
  v20 = (v18.i32[0] + 7) & 0x3FFFFFF8;
  *(v13 + 768) = v20;
  v21 = (v18.i32[1] + 3);
  if (v14 == 1)
  {
    *(v13 + 800) = 0;
    sub_2773EE3FC((v13 + 808), v20 * ((v18.i32[1] + 7) & 0x3FFFFFF8 | 2u));
    *(v13 + 800) = *(v13 + 808) + 2 * *(v13 + 768);
    goto LABEL_20;
  }

  v22 = v21 * v20 + 8;
  v23 = *(v13 + 784);
  v24 = *(v13 + 776);
  v25 = (v23 - v24) >> 1;
  if (v22 <= v25)
  {
    if (v22 >= v25)
    {
      goto LABEL_20;
    }

    v30 = v24 + 2 * v22;
  }

  else
  {
    v26 = v22 - v25;
    v27 = *(v13 + 792);
    if (v26 > (v27 - v23) >> 1)
    {
      v28 = v27 - v24;
      if (v28 > v22)
      {
        v22 = v28;
      }

      if (v28 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v29 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v29 = v22;
      }

      if ((v29 & 0x8000000000000000) == 0)
      {
        operator new();
      }

LABEL_67:
      sub_2773C5248();
    }

    bzero(*(v13 + 784), 2 * v26);
    v30 = v23 + 2 * v26;
  }

  *(v13 + 784) = v30;
LABEL_20:
  v31 = vaddq_s64(*(v13 + 752), *(v13 + 752));
  *(v13 + 832) = v31;
  *(v13 + 848) = v31.i64[0] + 7;
  v32 = v31.i64[1] + 7;
  if (v14)
  {
    sub_2773EE524((v13 + 880), v32 * (v31.i64[0] + 7));
    v33 = *(v13 + 848) * v32;
    v34 = *(v13 + 912);
    v35 = *(v13 + 904);
    v36 = (v34 - v35) >> 2;
    if (v33 <= v36)
    {
      if (v33 >= v36)
      {
LABEL_39:
        *(v13 + 712) = 0;
        goto LABEL_40;
      }

      v43 = v35 + 4 * v33;
    }

    else
    {
      v37 = v33 - v36;
      v38 = *(v13 + 920);
      if (v37 > (v38 - v34) >> 2)
      {
        if (v33 >> 62)
        {
          sub_2773C0914();
        }

        v39 = v38 - v35;
        if (v39 >> 1 > v33)
        {
          v33 = v39 >> 1;
        }

        if (v39 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v40 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v40 = v33;
        }

        if (!(v40 >> 62))
        {
          operator new();
        }

        goto LABEL_67;
      }

      bzero(*(v13 + 912), 4 * v37);
      v43 = v34 + 4 * v37;
    }

    *(v13 + 912) = v43;
    goto LABEL_39;
  }

  v41 = *(v13 + 688);
  v42 = *(v13 + 696) - v41;
  if (v32 <= v42)
  {
    if (v32 < v42)
    {
      *(v13 + 696) = v41 + v32;
    }
  }

  else
  {
    sub_2773C07DC((v13 + 688), v32 - v42);
  }

LABEL_40:
  v44 = *(v13 + 752);
  v45 = vaddq_s64(vaddq_s64(v44, v44), vdupq_n_s64(0x10uLL));
  *(v13 + 928) = v45;
  v46 = v45.i64[0] * v21 + 31;
  v47 = *(v13 + 944);
  v48 = *(v13 + 952) - v47;
  if (v46 <= v48)
  {
    v50 = v45.i64[1];
    v49 = v44.i64[0];
    if (v46 < v48)
    {
      *(v13 + 952) = v47 + v46;
    }
  }

  else
  {
    sub_2773C07DC((v13 + 944), v46 - v48);
    v49 = *(v13 + 752);
    v50 = *(v13 + 936);
  }

  v51 = (v49 + 8) * v50 + 31;
  v52 = *(v13 + 968);
  v53 = *(v13 + 976) - v52;
  if (v51 <= v53)
  {
    if (v51 < v53)
    {
      *(v13 + 976) = v52 + v51;
    }
  }

  else
  {
    sub_2773C07DC((v13 + 968), v51 - v53);
  }

  v54 = (*(v13 + 996) * *(v13 + 992));
  v55 = *(v13 + 1008);
  v56 = *(v13 + 1000);
  v57 = (v55 - v56) >> 4;
  if (v54 > v57)
  {
    v58 = v54 - v57;
    v59 = *(v13 + 1016);
    if (v58 > (v59 - v55) >> 4)
    {
      v60 = v59 - v56;
      if (v60 >> 3 > v54)
      {
        v54 = v60 >> 3;
      }

      if (v60 >= 0x7FFFFFFFFFFFFFF0)
      {
        v61 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v61 = v54;
      }

      if (!(v61 >> 60))
      {
        operator new();
      }

      goto LABEL_67;
    }

    bzero(*(v13 + 1008), 16 * v58);
    v62 = v55 + 16 * v58;
    goto LABEL_60;
  }

  if (v54 < v57)
  {
    v62 = v56 + 16 * v54;
LABEL_60:
    *(v13 + 1008) = v62;
  }

  sub_2773EE658(v13, v14);
  if (!v14 || (result = sub_277487028(v13 + 48, 1 << *(v13 + 1028)), !result))
  {
    atomic_store(0x80000000, (v13 + 1032));
    std::condition_variable::notify_all((v13 + 1104));
    v63 = *(a1 + 56);
    if (v63)
    {
      atomic_fetch_add_explicit((v63 + 8), 1uLL, memory_order_relaxed);
    }

    sub_2773F5A18(&v64, v13);
  }

  return result;
}

void sub_2773F5A00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_2773CC26C(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_2773F5A98(void *a1)
{
  __cxa_begin_catch(a1);
  (*(**v2 + 24))(*v2, v1);
  __cxa_rethrow();
}

void sub_2773F5AE8(uint64_t a1)
{
  (*(**(a1 + 32) + 24))(*(a1 + 32), *(a1 + 24));
  v2 = *(a1 + 40);
  if (v2)
  {

    sub_2773CC26C(v2);
  }
}

void sub_2773F5B58(std::__shared_weak_count *this)
{
  this->__vftable = &unk_288662640;
  shared_weak_owners = this[1].__shared_weak_owners_;
  if (shared_weak_owners)
  {
    sub_2773CC26C(shared_weak_owners);
  }

  std::__shared_weak_count::~__shared_weak_count(this);

  JUMPOUT(0x277CAD370);
}

void sub_2773F5BC8(std::__shared_weak_count *this)
{
  this->__vftable = &unk_288662640;
  shared_weak_owners = this[1].__shared_weak_owners_;
  if (shared_weak_owners)
  {
    sub_2773CC26C(shared_weak_owners);
  }

  std::__shared_weak_count::~__shared_weak_count(this);
}

uint64_t sub_2773F5C54(uint64_t a1, __CVBuffer *a2, int64_t a3, unsigned int a4, int a5)
{
  v11 = 0;
  v6 = sub_2773F444C(*(a1 + 48), a1, 1, *(a1 + 25), &v11, a2, a3, a4, a5);
  if (!v6)
  {
    v7 = v11;
    v8 = *(a1 + 56);
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    sub_2773F5A18(&v10, v7);
  }

  return v6;
}

void sub_2773F5D18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_2773CC26C(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_2773F5D30(void *a1)
{
  sub_2773F5D68(a1);

  JUMPOUT(0x277CAD370);
}

void *sub_2773F5D68(void *a1)
{
  *a1 = &unk_288662A30;
  v2 = a1[4];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[7];
  if (v4)
  {
    sub_2773CC26C(v4);
  }

  *a1 = &unk_288662E08;
  v5 = a1[2];
  if (v5)
  {
    sub_2773CC26C(v5);
  }

  return a1;
}

void sub_2773F5DFC(int a1, int a2, int a3, int a4, __CFDictionary **a5)
{
  *a5 = 0;
  sub_27743FBF4();
  v10 = qword_280B9A898;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    LODWORD(valuePtr) = a1;
    v12 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    if (v12)
    {
      v13 = v12;
      CFDictionaryAddValue(Mutable, *MEMORY[0x277CC4EC8], v12);
      CFRelease(v13);
    }

    LODWORD(valuePtr) = a2;
    v14 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    if (v14)
    {
      v15 = v14;
      CFDictionaryAddValue(Mutable, *MEMORY[0x277CC4DD8], v14);
      CFRelease(v15);
    }

    if (a4)
    {
      LODWORD(valuePtr) = a4;
      v16 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      if (v16)
      {
        v17 = v16;
        CFDictionaryAddValue(Mutable, *MEMORY[0x277CC4E30], v16);
        CFRelease(v17);
      }
    }

    valuePtr = v10;
    v18 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
    if (v18)
    {
      v19 = v18;
      CFDictionaryAddValue(Mutable, *MEMORY[0x277CC4D60], v18);
      CFRelease(v19);
    }

    valuePtr = v10;
    v20 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
    if (v20)
    {
      v21 = v20;
      CFDictionaryAddValue(Mutable, *MEMORY[0x277CC4E38], v20);
      CFRelease(v21);
    }

    if (a3)
    {
      v22 = ((v10 + 2 * a3 - 1) & -v10) + a1;
      v23 = a3;
      if (v22 >= 0x400)
      {
        v23 = a3;
        if ((v22 & 0x3FF) == 0)
        {
          v23 = v10 / 2 + a3;
        }
      }

      LODWORD(valuePtr) = v23;
      v24 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      if (v24)
      {
        v25 = v24;
        CFDictionaryAddValue(Mutable, *MEMORY[0x277CC4DB0], v24);
        CFRelease(v25);
      }

      LODWORD(valuePtr) = a3;
      v26 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      if (v26)
      {
        v27 = v26;
        CFDictionaryAddValue(Mutable, *MEMORY[0x277CC4DC0], v26);
        CFRelease(v27);
      }

      LODWORD(valuePtr) = v23;
      v28 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      if (v28)
      {
        v29 = v28;
        CFDictionaryAddValue(Mutable, *MEMORY[0x277CC4DB8], v28);
        CFRelease(v29);
      }

      LODWORD(valuePtr) = a3;
      v30 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      if (v30)
      {
        v31 = v30;
        CFDictionaryAddValue(Mutable, *MEMORY[0x277CC4DA0], v30);
        CFRelease(v31);
      }
    }

    sub_2773F60F0(Mutable);
    sub_2773F616C(Mutable);
  }

  *a5 = Mutable;
}

void sub_2773F60F0(__CFDictionary *a1)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v3 = Mutable;
    CFDictionaryAddValue(a1, *MEMORY[0x277CC4DE8], Mutable);

    CFRelease(v3);
  }
}

void sub_2773F616C(__CFDictionary *a1)
{
  values[1] = *MEMORY[0x277D85DE8];
  valuePtr = 0;
  v2 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  if (v2)
  {
    v3 = v2;
    values[0] = v2;
    v4 = CFArrayCreate(0, values, 1, MEMORY[0x277CBF128]);
    if (v4)
    {
      v5 = v4;
      CFDictionaryAddValue(a1, *MEMORY[0x277CC4D78], v4);
      CFRelease(v5);
    }

    CFRelease(v3);
  }
}

uint64_t sub_2773F6230(unsigned __int8 *a1, __CFDictionary *a2)
{
  v3 = a1[1991];
  v4 = a1[201];
  v5 = a1[2096];
  if (v5 <= a1[2098])
  {
    v5 = a1[2098];
  }

  if (v5 <= 8)
  {
    v6 = v5 > 0xA;
  }

  else
  {
    v6 = (v5 > 0xA) + 1;
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (Mutable)
  {
    v8 = Mutable;
    if (!v4)
    {
      valuePtr = *&a800l800l010l01[8 * v6 + 4 * v3];
      v9 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      if (!v9)
      {
        goto LABEL_13;
      }

      v10 = v9;
      CFArrayAppendValue(v8, v9);
      CFRelease(v10);
      v4 = 1;
    }

    v16 = *&a800l800l010l01[24 * v4 + 8 * v6 + 4 * v3];
    v11 = CFNumberCreate(0, kCFNumberSInt32Type, &v16);
    if (v11)
    {
      v12 = v11;
      CFArrayAppendValue(v8, v11);
      CFRelease(v12);
      CFDictionarySetValue(a2, *MEMORY[0x277CC4E30], v8);
      v13 = 0;
LABEL_14:
      CFRelease(v8);
      return v13;
    }

LABEL_13:
    v13 = 4294954392;
    goto LABEL_14;
  }

  return 4294954392;
}

uint64_t sub_2773F636C(uint64_t a1, uint64_t a2, CFDictionaryRef theDict, void *a4)
{
  valuePtr[2] = *MEMORY[0x277D85DE8];
  cf = 0;
  poolOut = 0;
  v28 = 0;
  v7 = *a1;
  v8 = *(*a1 + 204);
  v9 = *(*a1 + 208);
  v10 = *(*a1 + 2096);
  if (v10 <= *(*a1 + 2098))
  {
    v10 = *(*a1 + 2098);
  }

  v11 = *(v7 + 201);
  if (v10 <= 0xA)
  {
    v12 = v10 > 8;
  }

  else
  {
    v12 = (v10 > 8) + 1;
  }

  v13 = *(v7 + 1991);
  v14 = &a800l800l010l01[24 * v11 + 8 * v12];
  v15 = *&v14[4 * v13];
  if (!theDict)
  {
    sub_2773F5DFC(*(*a1 + 204), v9, 71, *&v14[4 * v13], &cf);
    v22 = cf;
LABEL_15:
    v28 = v22;
    cf = 0;
    v25 = v22;
    goto LABEL_16;
  }

  Value = CFDictionaryGetValue(theDict, *MEMORY[0x277CC4E30]);
  if (Value)
  {
    v18 = Value;
    v19 = CFGetTypeID(Value);
    if (v19 == CFNumberGetTypeID())
    {
      LODWORD(valuePtr[0]) = 0;
      CFNumberGetValue(v18, kCFNumberSInt32Type, valuePtr);
      v20 = sub_2773F50D8(v15);
      v21 = valuePtr[0];
      if (v20 == sub_2773F50D8(valuePtr[0]))
      {
        v15 = v21;
      }
    }
  }

  sub_2773F5DFC(v8, v9, 71, v15, &cf);
  v22 = cf;
  valuePtr[0] = cf;
  valuePtr[1] = theDict;
  v23 = CFArrayCreate(0, valuePtr, 2, 0);
  if (!v23)
  {
    goto LABEL_15;
  }

  v24 = v23;
  CVPixelBufferCreateResolvedAttributesDictionary(0, v23, &v28);
  CFRelease(v24);
  v25 = v28;
  if (!v28)
  {
    goto LABEL_15;
  }

LABEL_16:
  v26 = CVPixelBufferPoolCreate(0, 0, v25, &poolOut);
  if (!v26)
  {
    v26 = sub_2773F657C(a1, a2, poolOut, a4);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  CVPixelBufferPoolRelease(poolOut);
  return v26;
}

uint64_t sub_2773F657C(uint64_t a1, uint64_t a2, __CVPixelBufferPool *a3, void *a4)
{
  v6 = operator new(0xC0uLL, MEMORY[0x277D826F0]);
  if (v6)
  {
    v7 = v6;
    *(v6 + 40) = 0u;
    *(v6 + 24) = 0u;
    *(v6 + 8) = 0u;
    *(v6 + 7) = 850045863;
    *(v6 + 4) = 0u;
    *(v6 + 5) = 0u;
    *(v6 + 6) = 0u;
    *(v6 + 14) = 0;
    *(v6 + 15) = a3;
    *v6 = &unk_288662D60;
    *(v6 + 44) = 0;
    *(v6 + 23) = sub_2774CD3C0;
    *(v6 + 16) = sub_2774A85B8;
    *(v6 + 18) = sub_2774A8570;
    *(v6 + 20) = sub_2774A852C;
    *(v6 + 21) = sub_2774A8400;
    *(v6 + 17) = sub_2774CCA54;
    *(v6 + 19) = sub_2774CC9B0;
    CVPixelBufferPoolRetain(a3);
    v8 = operator new(0x48uLL, MEMORY[0x277D826F0]);
    if (v8)
    {
      v8[1] = 0;
      v8[2] = 0;
      *(v8 + 12) = 0;
      *v8 = &unk_288662A30;
      v8[6] = v7;
      operator new();
    }

    *a4 = 0;
    (*(*v7 + 8))(v7);
  }

  return 4294954392;
}

void sub_2773F6A1C(_Unwind_Exception *a1)
{
  (*(*v2 + 8))(v2);
  *v1 = &unk_288662E08;
  v4 = v1[2];
  if (v4)
  {
    sub_2773CC26C(v4);
  }

  MEMORY[0x277CAD350](v1, MEMORY[0x277D826F0]);
  _Unwind_Resume(a1);
}

uint64_t sub_2773F6A9C(int a1)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v3 = MEMORY[0x277CC4BB8];
        break;
      case 4:
        v3 = MEMORY[0x277CC4B98];
        break;
      case 5:
        v3 = MEMORY[0x277CC4B90];
        break;
      default:
        return result;
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      v3 = MEMORY[0x277CC4BA0];
    }

    else
    {
      if (a1 != 2)
      {
        return result;
      }

      v3 = MEMORY[0x277CC4BC0];
    }
  }

  else
  {
    v3 = MEMORY[0x277CC4BB0];
  }

  return *v3;
}

uint64_t sub_2773F6B28(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_2773F6B58(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277CAD370);
}

uint64_t sub_2773F6B94(int a1, int a2, int a3)
{
  v9 = 0;
  v10 = 0;
  if (atomic_load_explicit(&qword_280A711D0, memory_order_acquire) != -1)
  {
    v12[0] = sub_2773F6EF8;
    v12[1] = &v9;
    v11 = v12;
    std::__call_once(&qword_280A711D0, &v11, sub_2773F6EE8);
  }

  sub_2773F5DFC(a1, a2, 0, 0, &v10);
  v6 = v10;
  v7 = sub_2773F6C74(a3, v10);
  if (!v7)
  {
    v7 = VTEncoderSessionSetPixelBufferAttributes();
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return v7;
}

uint64_t sub_2773F6C74(int a1, __CFDictionary *a2)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (Mutable)
  {
    v5 = 0;
  }

  else
  {
    v5 = 4294954392;
  }

  if (Mutable)
  {
    v6 = Mutable;
    if ((a1 & 0xFFFFFFFD) == 1)
    {
      v7 = 0;
      v8 = 875704422;
      v9 = 1;
      while (1)
      {
        v10 = v7;
        valuePtr = v8;
        v11 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
        if (!v11)
        {
          break;
        }

        v12 = v11;
        CFArrayAppendValue(v6, v11);
        CFRelease(v12);
        v8 = *&aF024v024[4 * v9];
        v7 = 1;
        v9 = 2;
        if (v10)
        {
          goto LABEL_27;
        }
      }
    }

    else
    {
      switch(a1)
      {
        case 2020:
          valuePtr = 1278226488;
          v23 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
          if (v23)
          {
            v24 = v23;
            CFArrayAppendValue(v6, v23);
            CFRelease(v24);
LABEL_27:
            CFDictionarySetValue(a2, *MEMORY[0x277CC4E30], v6);
            goto LABEL_29;
          }

          break;
        case 1892:
          v17 = 0;
          v18 = 1278226736;
          v19 = 1;
          while (1)
          {
            v20 = v17;
            valuePtr = v18;
            v21 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
            if (!v21)
            {
              break;
            }

            v22 = v21;
            CFArrayAppendValue(v6, v21);
            CFRelease(v22);
            v18 = *&a010l800l[4 * v19];
            v17 = 1;
            v19 = 2;
            if (v20)
            {
              goto LABEL_27;
            }
          }

          break;
        case 2:
          v13 = 2016686640;
          v14 = 4u;
          while (1)
          {
            valuePtr = v13;
            v15 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
            if (!v15)
            {
              break;
            }

            v16 = v15;
            CFArrayAppendValue(v6, v15);
            CFRelease(v16);
            v13 = *&a024x02fx612vv0[v14];
            v14 += 4;
            if (v14 == 28)
            {
              goto LABEL_27;
            }
          }

          break;
        default:
          v25 = 0;
          v26 = 2016686640;
          while (1)
          {
            valuePtr = v26;
            v27 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
            if (!v27)
            {
              break;
            }

            v28 = v27;
            CFArrayAppendValue(v6, v27);
            CFRelease(v28);
            v26 = *&a024x02fx612vf0[v25 + 4];
            v25 += 4;
            if (v25 == 32)
            {
              goto LABEL_27;
            }
          }

          break;
      }
    }

    v5 = 4294954392;
LABEL_29:
    CFRelease(v6);
    return v5;
  }

  return 4294954392;
}

void sub_2773F6EF8()
{
  values[2] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CBED00];
  v1 = CFDataCreateWithBytesNoCopy(0, "@", 2, *MEMORY[0x277CBED00]);
  v2 = CFDataCreateWithBytesNoCopy(0, byte_27750D93E, 4, v0);
  v3 = CFDataCreateWithBytesNoCopy(0, byte_288662250, 24, v0);
  v4 = CFDataCreateWithBytesNoCopy(0, byte_288662238, 24, v0);
  v5 = MEMORY[0x277CBF138];
  v6 = MEMORY[0x277CBF150];
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v8 = CFDictionaryCreateMutable(0, 0, v5, v6);
  v9 = CFDictionaryCreateMutable(0, 0, v5, v6);
  values[0] = v8;
  values[1] = v9;
  v10 = CFArrayCreate(0, values, 2, MEMORY[0x277CBF128]);
  v11 = v10;
  if (v1)
  {
    v12 = v2 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12 || v3 == 0 || v4 == 0 || Mutable == 0 || v8 == 0 || v9 == 0 || v10 == 0)
  {
    if (dword_280B9A880 >= 3)
    {
      fwrite("Failed to register 10-bit pixel format; 10-bit decodes will fail.\n", 0x42uLL, 1uLL, *MEMORY[0x277D85DF8]);
      syslog(27, "Failed to register 10-bit pixel format; 10-bit decodes will fail.\n");
    }
  }

  else
  {
    value = v2;
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CC4F28], *MEMORY[0x277CBED10]);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CC4F70], v11);
    valuePtr = 1496395842;
    v19 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    if (v19)
    {
      v20 = v19;
      CFDictionaryAddValue(Mutable, *MEMORY[0x277CC4F20], v19);
      CFRelease(v20);
    }

    v21 = *MEMORY[0x277CC4EE0];
    v34 = v1;
    CFDictionaryAddValue(v8, *MEMORY[0x277CC4EE0], v1);
    v22 = *MEMORY[0x277CC4F58];
    CFDictionaryAddValue(v8, *MEMORY[0x277CC4F58], v3);
    v23 = *MEMORY[0x277CC4ED0];
    valuePtr = 16;
    v24 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    if (v24)
    {
      v25 = v24;
      CFDictionaryAddValue(v8, v23, v24);
      CFRelease(v25);
    }

    v26 = v21;
    v2 = value;
    CFDictionaryAddValue(v9, v26, value);
    CFDictionaryAddValue(v9, v22, v4);
    valuePtr = 32;
    v27 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    if (v27)
    {
      v28 = v27;
      CFDictionaryAddValue(v9, v23, v27);
      CFRelease(v28);
    }

    valuePtr = 2;
    v29 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    if (v29)
    {
      v30 = v29;
      CFDictionaryAddValue(v9, *MEMORY[0x277CC4F60], v29);
      CFRelease(v30);
    }

    valuePtr = 2;
    v31 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    v1 = v34;
    if (v31)
    {
      v32 = v31;
      CFDictionaryAddValue(v9, *MEMORY[0x277CC4F78], v31);
      CFRelease(v32);
    }

    CVPixelFormatDescriptionRegisterDescriptionWithPixelFormatType(Mutable, 0x59313042u);
  }

  if (v1)
  {
    CFRelease(v1);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v11)
  {
    CFRelease(v11);
  }
}

uint64_t sub_2773F7310(__CVBuffer *a1)
{
  Height = CVPixelBufferGetHeight(a1);
  sub_2773F3918(0, Height >> 1, a1);
  return 1;
}

uint64_t sub_2773F7348(__CVBuffer *a1)
{
  Height = CVPixelBufferGetHeight(a1);
  sub_2773F3E00(0, Height, a1);
  return 1;
}

uint64_t sub_2773F7380(int a1)
{
  sub_27743FBF4();
  if (qword_280B9A898 >= 0x40)
  {
    v2 = 64;
  }

  else
  {
    v2 = qword_280B9A898;
  }

  v3 = MEMORY[0x277CBF138];
  v4 = MEMORY[0x277CBF150];
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v6 = CFDictionaryCreateMutable(0, 0, v3, v4);
  v7 = v6;
  if (Mutable)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    valuePtr = v2;
    v11 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
    if (v11)
    {
      v12 = v11;
      CFDictionaryAddValue(Mutable, *MEMORY[0x277CC4D60], v11);
      CFRelease(v12);
    }

    valuePtr = v2;
    v13 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
    if (v13)
    {
      v14 = v13;
      CFDictionaryAddValue(Mutable, *MEMORY[0x277CC4E38], v13);
      CFRelease(v14);
    }

    v9 = sub_2773F6C74(a1, Mutable);
    if (!v9)
    {
      LODWORD(valuePtr) = 0xFFFFFFF;
      v15 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      if (v15)
      {
        v16 = v15;
        CFDictionaryAddValue(v7, *MEMORY[0x277CE2B18], v15);
        CFRelease(v16);
      }

      LODWORD(valuePtr) = 0xFFFFFFF;
      v17 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      if (v17)
      {
        v18 = v17;
        CFDictionaryAddValue(v7, *MEMORY[0x277CE2B20], v17);
        CFRelease(v18);
      }

      LODWORD(valuePtr) = 2;
      v19 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      if (v19)
      {
        v20 = v19;
        CFDictionaryAddValue(v7, *MEMORY[0x277CE2B28], v19);
        CFRelease(v20);
      }

      LODWORD(valuePtr) = 2;
      v21 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      if (v21)
      {
        v22 = v21;
        CFDictionaryAddValue(v7, *MEMORY[0x277CE2B30], v21);
        CFRelease(v22);
      }

      LODWORD(valuePtr) = 64;
      v23 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      if (v23)
      {
        v24 = v23;
        CFDictionaryAddValue(v7, *MEMORY[0x277CE2B48], v23);
        CFRelease(v24);
      }

      LODWORD(valuePtr) = 16;
      v25 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      if (v25)
      {
        v26 = v25;
        CFDictionaryAddValue(v7, *MEMORY[0x277CE2B40], v25);
        CFRelease(v26);
      }

      LODWORD(valuePtr) = 0x7FFFFFFF;
      v27 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      if (v27)
      {
        v28 = v27;
        CFDictionaryAddValue(v7, *MEMORY[0x277CE2B10], v27);
        CFRelease(v28);
      }

      LODWORD(valuePtr) = 0x7FFFFFFF;
      v29 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      if (v29)
      {
        v30 = v29;
        CFDictionaryAddValue(v7, *MEMORY[0x277CE2B00], v29);
        CFRelease(v30);
      }

      valuePtr = 0x7FFFFFFFFFFFFFFFLL;
      v31 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
      if (v31)
      {
        v32 = v31;
        CFDictionaryAddValue(v7, *MEMORY[0x277CE2B08], v31);
        CFRelease(v32);
      }

      valuePtr = v2;
      v33 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
      if (v33)
      {
        v34 = v33;
        CFDictionaryAddValue(v7, *MEMORY[0x277CE2B38], v33);
        CFRelease(v34);
      }

      CFDictionaryAddValue(v7, *MEMORY[0x277CE2AF8], *MEMORY[0x277CBED10]);
      v9 = VTTileEncoderSessionSetTileEncodeRequirements();
    }

LABEL_39:
    CFRelease(Mutable);
    if (!v7)
    {
      return v9;
    }

    goto LABEL_11;
  }

  v9 = 4294954392;
  if (Mutable)
  {
    goto LABEL_39;
  }

  if (v6)
  {
LABEL_11:
    CFRelease(v7);
  }

  return v9;
}

void sub_2773F7778(void *a1)
{
  sub_2773F77B0(a1);

  JUMPOUT(0x277CAD370);
}

void *sub_2773F77B0(void *a1)
{
  *a1 = &unk_2886629C8;
  v2 = a1[274];
  if (v2)
  {
    sub_2773CC26C(v2);
  }

  for (i = 272; i != 208; i -= 2)
  {
    v4 = a1[i];
    if (v4)
    {
      sub_2773CC26C(v4);
    }
  }

  v5 = a1[201];
  if (v5)
  {
    a1[202] = v5;
    operator delete(v5);
  }

  v6 = a1[199];
  if (v6)
  {
    sub_2773CC26C(v6);
  }

  v7 = a1[148];
  if (v7)
  {
    a1[149] = v7;
    operator delete(v7);
  }

  v8 = a1[76];
  if (v8)
  {
    a1[77] = v8;
    operator delete(v8);
  }

  v9 = a1[72];
  if (v9)
  {
    a1[73] = v9;
    operator delete(v9);
  }

  v10 = a1[5];
  if (v10)
  {
    sub_2773CC26C(v10);
  }

  v11 = a1[3];
  if (v11)
  {
    sub_2773CC26C(v11);
  }

  return a1;
}

uint64_t sub_2773F7884(uint64_t a1)
{
  *a1 = &unk_2886629C8;
  *(a1 + 8) = 0u;
  v2 = a1 + 324;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 225) = 0u;
  *(a1 + 242) = 0u;
  *(a1 + 258) = 0u;
  *(a1 + 274) = 0u;
  *(a1 + 290) = 0u;
  *(a1 + 302) = 0u;
  *(a1 + 328) = 0;
  *(a1 + 324) = 0;
  *(a1 + 508) = 0;
  *(a1 + 592) = 0;
  *(a1 + 576) = 0u;
  *(a1 + 624) = 0;
  *(a1 + 608) = 0u;
  *(a1 + 1200) = 0;
  *(a1 + 1184) = 0u;
  *(a1 + 1624) = 0;
  *(a1 + 1608) = 0u;
  *(a1 + 1656) = 0;
  *(a1 + 1640) = 0u;
  bzero((a1 + 1672), 0x220uLL);
  *(a1 + 659) = 1;
  *(a1 + 48) = 1;
  *(a1 + 50) = 0;
  *(a1 + 52) = 0;
  *(a1 + 56) = 0;
  *(a1 + 58) = 258;
  *(a1 + 60) = 0;
  *(a1 + 64) = 0;
  *(a1 + 68) = 0;
  *(a1 + 320) = 0;
  *(a1 + 512) = 0;
  *(a1 + 552) = 0;
  *(a1 + 559) = 0;
  *(a1 + 567) = 1;
  *(a1 + 568) = 0;
  *(a1 + 572) = 0;
  *(a1 + 600) = 0;
  *(v2 + 196) = xmmword_27750D340;
  *(v2 + 212) = xmmword_27750D340;
  *(a1 + 2256) = 0;
  *(a1 + 1584) = 0u;
  *(a1 + 1600) = 0;
  return a1;
}

uint64_t sub_2773F79D0(uint64_t result)
{
  v1 = *(result + 58);
  if (*(result + 48))
  {
    if (*(result + 58) || (v8 = *(result + 516), v8 < 1))
    {
LABEL_3:
      v2 = 3;
    }

    else
    {
      v9 = 0;
      v10 = 1;
      do
      {
        while (*(result + 517) >= 1)
        {
          v11 = (result + 1928);
          v12 = *(result + 517);
          while (*(result + 1672 + 16 * v9) != *v11)
          {
            v11 += 2;
            if (!--v12)
            {
              goto LABEL_31;
            }
          }

          v10 = 0;
          if (++v9 == v8)
          {
            goto LABEL_39;
          }
        }

LABEL_31:
        ++v9;
      }

      while (v9 != v8);
      if (v10)
      {
        goto LABEL_3;
      }

LABEL_39:
      v2 = 0;
    }

    if (v1 == 1)
    {
      if (*(result + 516) == 1)
      {
        v2 = 4;
      }

      else
      {
        v2 = 1;
      }

      *(result + 2256) = v2;
      v3 = (result + 2264);
      *(result + 2264) = sub_2773F7F18;
      *(result + 2272) = 0;
LABEL_18:
      v6 = sub_2773F7DA4;
      goto LABEL_19;
    }
  }

  else
  {
    if (v1 != 1)
    {
      *(result + 2256) = 0;
      v7 = sub_2773F7F18;
      goto LABEL_36;
    }

    v4 = *(result + 2256);
    v2 = v4 == 1 || v4 == 4;
  }

  *(result + 2256) = v2;
  v3 = (result + 2264);
  *(result + 2264) = sub_2773F7F18;
  *(result + 2272) = 0;
  v6 = sub_2773F7B7C;
  if (v2 != 3)
  {
    if (v2 != 1)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

LABEL_19:
  *v3 = v6;
LABEL_20:
  v7 = sub_2774DFE54;
  if (v2 == 4)
  {
    v7 = sub_2774E0090;
  }

  else if (v2 != 3)
  {
    if (v2 != 1)
    {
      return result;
    }

    v7 = sub_2774E0220;
  }

LABEL_36:
  *(result + 2264) = v7;
  *(result + 2272) = 0;
  return result;
}

uint64_t sub_2773F7B7C(uint64_t result, __int16 *a2, int a3, int a4, int a5, int a6)
{
  v6 = *(result + 8);
  v7 = v6[106];
  if (a4)
  {
    if ((a4 & 7) == 0)
    {
      v8 = (a5 >> 2);
      if (v8 >= 1)
      {
        v9 = (v6[118] + v6[116] * (a4 >> 3) + (a3 >> 2));
        v10 = &a2[-6 * v7 + 2];
        do
        {
          if (*(result + 2224 + (a2[4] & 0xF)) != *(result + 2224 + (v10[2] & 0xF)) || *(result + 2240 + (*(a2 + 9) & 0xF)) != *(result + 2240 + (*(v10 + 5) & 0xF)))
          {
            goto LABEL_16;
          }

          v11 = *(v10 - 2) - *a2;
          if (v11 < 0)
          {
            v11 = *a2 - *(v10 - 2);
          }

          if (v11 > 3)
          {
            goto LABEL_16;
          }

          v12 = *(v10 - 1) - a2[1];
          if (v12 < 0)
          {
            v12 = a2[1] - *(v10 - 1);
          }

          if (v12 > 3)
          {
            goto LABEL_16;
          }

          v13 = *v10 - a2[2];
          if (v13 < 0)
          {
            v13 = a2[2] - *v10;
          }

          if (v13 <= 3)
          {
            v15 = v10[1] - a2[3];
            if (v15 < 0)
            {
              v15 = a2[3] - v10[1];
            }

            v14 = v15 > 3;
          }

          else
          {
LABEL_16:
            v14 = 1;
          }

          if (*v9 > v14)
          {
            LOBYTE(v14) = *v9;
          }

          *v9++ = v14;
          v10 += 6;
          --v8;
        }

        while (v8);
      }
    }
  }

  if (a3)
  {
    if ((a3 & 7) == 0)
    {
      v16 = (a6 >> 2);
      if (v16 >= 1)
      {
        v17 = (*(*(result + 8) + 968) + *(*(result + 8) + 936) * (a3 >> 3) + (a4 >> 2));
        v18 = a2 - 3;
        v19 = 12 * v7;
        do
        {
          if (*(result + 2224 + (a2[4] & 0xF)) != *(result + 2224 + (v18[1] & 0xF)) || *(result + 2240 + (*(a2 + 9) & 0xF)) != *(result + 2240 + (*(v18 + 3) & 0xF)))
          {
            goto LABEL_39;
          }

          v20 = *(v18 - 3) - *a2;
          if (v20 < 0)
          {
            v20 = *a2 - *(v18 - 3);
          }

          if (v20 > 3)
          {
            goto LABEL_39;
          }

          v21 = *(v18 - 2) - a2[1];
          if (v21 < 0)
          {
            v21 = a2[1] - *(v18 - 2);
          }

          if (v21 > 3)
          {
            goto LABEL_39;
          }

          v22 = *(v18 - 1) - a2[2];
          if (v22 < 0)
          {
            v22 = a2[2] - *(v18 - 1);
          }

          if (v22 <= 3)
          {
            v24 = *v18 - a2[3];
            if (v24 < 0)
            {
              v24 = a2[3] - *v18;
            }

            v23 = v24 > 3;
          }

          else
          {
LABEL_39:
            v23 = 1;
          }

          if (*v17 > v23)
          {
            LOBYTE(v23) = *v17;
          }

          *v17++ = v23;
          v18 = (v18 + v19);
          --v16;
        }

        while (v16);
      }
    }
  }

  return result;
}

uint64_t sub_2773F7DA4(uint64_t result, __int16 *a2, int a3, int a4, int a5, int a6)
{
  v6 = *(result + 8);
  v7 = v6[106];
  if (a4)
  {
    if ((a4 & 7) == 0)
    {
      v8 = (a5 >> 2);
      if (v8 >= 1)
      {
        v9 = (v6[118] + v6[116] * (a4 >> 3) + (a3 >> 2));
        v10 = &a2[-6 * v7];
        do
        {
          if (*(result + 2224 + (a2[4] & 0xF)) != *(result + 2224 + (v10[4] & 0xF)))
          {
            goto LABEL_9;
          }

          v11 = *a2 - *v10;
          if (v11 < 0)
          {
            v11 = *v10 - *a2;
          }

          if (v11 <= 3)
          {
            v13 = a2[1] - v10[1];
            if (v13 < 0)
            {
              v13 = v10[1] - a2[1];
            }

            v12 = v13 > 3;
          }

          else
          {
LABEL_9:
            v12 = 1;
          }

          if (*v9 > v12)
          {
            LOBYTE(v12) = *v9;
          }

          *v9++ = v12;
          v10 += 6;
          --v8;
        }

        while (v8);
      }
    }
  }

  if (a3)
  {
    if ((a3 & 7) == 0)
    {
      v14 = (a6 >> 2);
      if (v14 >= 1)
      {
        v15 = (*(*(result + 8) + 968) + *(*(result + 8) + 936) * (a3 >> 3) + (a4 >> 2));
        v16 = a2 - 6;
        v17 = 12 * v7;
        do
        {
          if (*(result + 2224 + (a2[4] & 0xF)) != *(result + 2224 + (v16[4] & 0xF)))
          {
            goto LABEL_24;
          }

          v18 = *a2 - *v16;
          if (v18 < 0)
          {
            v18 = *v16 - *a2;
          }

          if (v18 <= 3)
          {
            v20 = a2[1] - v16[1];
            if (v20 < 0)
            {
              v20 = v16[1] - a2[1];
            }

            v19 = v20 > 3;
          }

          else
          {
LABEL_24:
            v19 = 1;
          }

          if (*v15 > v19)
          {
            LOBYTE(v19) = *v15;
          }

          *v15++ = v19;
          v16 = (v16 + v17);
          --v14;
        }

        while (v14);
      }
    }
  }

  return result;
}

uint64_t sub_2773F7F18(uint64_t result, __int16 *a2, int a3, int a4, int a5, int a6)
{
  v10 = result;
  v11 = *(result + 8);
  v12 = v11[106];
  if (a4)
  {
    if ((a4 & 7) == 0)
    {
      v13 = (a5 >> 2);
      if (v13 >= 1)
      {
        v14 = (v11[118] + v11[116] * (a4 >> 3) + (a3 >> 2));
        v15 = &a2[-6 * v12];
        do
        {
          result = sub_2773F8040(a2, v15, v10 + 2224);
          v16 = *v14;
          if (v16 <= result)
          {
            LOBYTE(v16) = result;
          }

          *v14++ = v16;
          v15 += 6;
          --v13;
        }

        while (v13);
      }
    }
  }

  if (a3)
  {
    if ((a3 & 7) == 0)
    {
      v17 = (a6 >> 2);
      if (v17 >= 1)
      {
        v18 = (*(*(v10 + 8) + 968) + *(*(v10 + 8) + 936) * (a3 >> 3) + (a4 >> 2));
        v19 = a2 - 6;
        do
        {
          result = sub_2773F8040(a2, v19, v10 + 2224);
          v20 = *v18;
          if (v20 <= result)
          {
            LOBYTE(v20) = result;
          }

          *v18++ = v20;
          v19 += 6 * v12;
          --v17;
        }

        while (v17);
      }
    }
  }

  return result;
}

BOOL sub_2773F8040(__int16 *a1, __int16 *a2, uint64_t a3)
{
  v3 = *(a3 + (a1[4] & 0xF));
  v4 = *(a3 + 16 + (*(a1 + 9) & 0xF));
  v5 = *(a3 + (a2[4] & 0xF));
  v6 = *(a3 + 16 + (*(a2 + 9) & 0xF));
  if (v3 != v5 || v4 != v6)
  {
    if (v3 != v6 || v4 != v5)
    {
      return 1;
    }

    if (v3 != v4)
    {
      v9 = a2[2] - *a1;
      if (v9 < 0)
      {
        v9 = *a1 - a2[2];
      }

      if (v9 > 3)
      {
        return 1;
      }

      v10 = a2[3] - a1[1];
      if (v10 < 0)
      {
        v10 = a1[1] - a2[3];
      }

      if (v10 > 3)
      {
        return 1;
      }

      v11 = *a2;
LABEL_37:
      v19 = v11 - a1[2];
      if (v19 < 0)
      {
        v19 = -v19;
      }

      if (v19 > 3)
      {
        return 1;
      }

      v20 = 1;
      goto LABEL_52;
    }

LABEL_19:
    v11 = *a2;
    v12 = *a1;
    v13 = v11 - v12;
    if (v11 - v12 < 0)
    {
      v13 = v12 - v11;
    }

    if (v13 <= 3)
    {
      v14 = a2[1] - a1[1];
      if (v14 < 0)
      {
        v14 = a1[1] - a2[1];
      }

      if (v14 <= 3)
      {
        v15 = a2[2] - a1[2];
        if (v15 < 0)
        {
          v15 = a1[2] - a2[2];
        }

        if (v15 <= 3)
        {
          v16 = a2[3] - a1[3];
          if (v16 < 0)
          {
            v16 = a1[3] - a2[3];
          }

          if (v16 < 4)
          {
            return 0;
          }
        }
      }
    }

    v17 = a2[2] - v12;
    if (v17 < 0)
    {
      v17 = -v17;
    }

    if (v17 > 3)
    {
      return 1;
    }

    v18 = a2[3] - a1[1];
    if (v18 < 0)
    {
      v18 = a1[1] - a2[3];
    }

    if (v18 > 3)
    {
      return 1;
    }

    goto LABEL_37;
  }

  if (v3 == v4)
  {
    goto LABEL_19;
  }

  v21 = *a2 - *a1;
  if (v21 < 0)
  {
    v21 = *a1 - *a2;
  }

  if (v21 > 3)
  {
    return 1;
  }

  v22 = a2[1] - a1[1];
  if (v22 < 0)
  {
    v22 = a1[1] - a2[1];
  }

  if (v22 > 3)
  {
    return 1;
  }

  v23 = a2[2] - a1[2];
  if (v23 < 0)
  {
    v23 = a1[2] - a2[2];
  }

  if (v23 > 3)
  {
    return 1;
  }

  v20 = 3;
LABEL_52:
  v25 = a2[v20] - a1[3];
  if (v25 < 0)
  {
    v25 = -v25;
  }

  return v25 > 3;
}

uint64_t sub_2773F81F4(_BYTE *a1, int *a2, uint64_t a3)
{
  v133 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  if (*a2 <= a1[516])
  {
    v6 = a1[516];
  }

  else
  {
    v6 = *a2;
  }

  if (a1[48])
  {
    if (v5 > 0)
    {
      v127 = a3;
      v130 = 15;
      v6 = 15;
LABEL_7:
      v7 = a1 + 516;
      v8 = a1 + 2200;
      *&v132[0] = a1 + 2200;
      DWORD2(v132[0]) = 0;
      sub_2773ECFF8(v132);
      v9 = a1 + 2208;
      *&v132[0] = a1 + 2208;
      DWORD2(v132[0]) = 0;
      sub_2773ECFF8(v132);
      LODWORD(v10) = 0;
      v131 = a1 + 1672;
      v128 = a1;
      do
      {
        if (a2[1] >= 1)
        {
          v11 = v10 + 1;
          v12 = &v131[2 * v10];
          v13 = a2 + 6;
          v14 = 1;
          do
          {
            v10 = v11;
            v15 = *v13;
            v16 = *(v13 + 1);
            if (v16)
            {
              atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
            }

            v17 = v12[1];
            *v12 = v15;
            if (v17)
            {
              sub_2773CC26C(v17);
            }

            v11 = v10 + 1;
            v12 += 2;
            v18 = v14++ < a2[1];
            v13 += 4;
            v18 = v18 && v10 < v6;
          }

          while (v18);
        }

        if (a2[2] >= 1 && v10 < v6)
        {
          v20 = v10 + 1;
          v21 = &v131[2 * v10];
          v22 = a2 + 70;
          v23 = 1;
          do
          {
            v10 = v20;
            v24 = *v22;
            v25 = *(v22 + 1);
            if (v25)
            {
              atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
            }

            v26 = v21[1];
            *v21 = v24;
            if (v26)
            {
              sub_2773CC26C(v26);
            }

            v20 = v10 + 1;
            v21 += 2;
            v18 = v23++ < a2[2];
            v22 += 4;
          }

          while (v18 && v10 < v6);
        }

        if (a2[3] >= 1 && v10 < v6)
        {
          v29 = v10 + 1;
          v30 = &v131[2 * v10];
          v31 = a2 + 134;
          v32 = 1;
          do
          {
            v10 = v29;
            v33 = *v31;
            v34 = *(v31 + 1);
            if (v34)
            {
              atomic_fetch_add_explicit((v34 + 8), 1uLL, memory_order_relaxed);
            }

            v35 = v30[1];
            *v30 = v33;
            if (v35)
            {
              sub_2773CC26C(v35);
            }

            *v8 |= 1 << (v10 - 1);
            v29 = v10 + 1;
            v30 += 2;
            v18 = v32++ < a2[3];
            v31 += 4;
          }

          while (v18 && v10 < v6);
        }
      }

      while (v10 < v6);
      if (v130 >= 1)
      {
        LODWORD(v37) = 0;
        v129 = a1 + 1928;
        do
        {
          if (a2[2] >= 1)
          {
            v38 = v37 + 1;
            v39 = &v129[16 * v37];
            v40 = a2 + 70;
            v41 = 1;
            do
            {
              v37 = v38;
              v42 = *v40;
              v43 = *(v40 + 1);
              if (v43)
              {
                atomic_fetch_add_explicit((v43 + 8), 1uLL, memory_order_relaxed);
              }

              v44 = *(v39 + 1);
              *v39 = v42;
              if (v44)
              {
                sub_2773CC26C(v44);
              }

              v38 = v37 + 1;
              v39 += 16;
              v18 = v41++ < a2[2];
              v40 += 4;
            }

            while (v18 && v37 < v130);
          }

          if (a2[1] >= 1 && v37 < v130)
          {
            v47 = v37 + 1;
            v48 = a2 + 6;
            v49 = &v129[16 * v37];
            v50 = 1;
            do
            {
              v37 = v47;
              v51 = *v48;
              v52 = *(v48 + 1);
              if (v52)
              {
                atomic_fetch_add_explicit((v52 + 8), 1uLL, memory_order_relaxed);
              }

              v53 = *(v49 + 1);
              *v49 = v51;
              if (v53)
              {
                sub_2773CC26C(v53);
              }

              v47 = v37 + 1;
              v49 += 16;
              v18 = v50++ < a2[1];
              v48 += 4;
            }

            while (v18 && v37 < v130);
          }

          if (a2[3] >= 1 && v37 < v130)
          {
            v56 = v37 + 1;
            v57 = &v129[16 * v37];
            v58 = a2 + 134;
            v59 = 1;
            do
            {
              v37 = v56;
              v60 = *v58;
              v61 = *(v58 + 1);
              if (v61)
              {
                atomic_fetch_add_explicit((v61 + 8), 1uLL, memory_order_relaxed);
              }

              v62 = *(v57 + 1);
              *v57 = v60;
              if (v62)
              {
                sub_2773CC26C(v62);
              }

              *v9 |= 1 << (v37 - 1);
              v56 = v37 + 1;
              v57 += 16;
              v18 = v59++ < a2[3];
              v58 += 4;
            }

            while (v18 && v37 < v130);
          }
        }

        while (v37 < v130);
      }

      if (a1[48])
      {
        *(v127 + 232) = 0u;
        *(v127 + 328) = 0u;
        *(v127 + 344) = 0u;
        *(v127 + 296) = 0u;
        *(v127 + 312) = 0u;
        *(v127 + 264) = 0u;
        *(v127 + 280) = 0u;
        *(v127 + 248) = 0u;
        v64 = (v127 + 360);
        *&v132[0] = v127 + 360;
        DWORD2(v132[0]) = 0;
        sub_2773ECFF8(v132);
        v65 = (v127 + 368);
        *&v132[0] = v127 + 368;
        DWORD2(v132[0]) = 0;
        sub_2773ECFF8(v132);
        v66 = 0;
        v67 = v128 + 1928;
        v68 = (v127 + 296);
        do
        {
          v69 = *(v67 - 256);
          if (v69)
          {
            *(v68 - 16) = *(v69 + 1024);
            v70 = 1 << v66;
            if ((*v8 & (1 << v66)) != 0)
            {
              v71 = *v64 | v70;
            }

            else
            {
              v71 = *v64 & ~v70;
            }

            *v64 = v71;
          }

          if (*v67)
          {
            *v68 = *(*v67 + 1024);
            v72 = 1 << v66;
            if ((*v9 & (1 << v66)) != 0)
            {
              v73 = *v65 | v72;
            }

            else
            {
              v73 = *v65 & ~v72;
            }

            *v65 = v73;
          }

          ++v66;
          ++v68;
          v67 += 16;
        }

        while (v66 != 16);
        v74 = 0;
        v75 = 0;
        v76 = v128 + 2224;
        v77 = 1;
        v78 = 1;
        do
        {
          v79 = 0;
          v80 = v128 + 1672 + (v75 << 8);
          v81 = v77;
          v82 = &v131[32 * v75];
          v83 = v76 + 16 * v75;
          do
          {
            v84 = v82[2 * v79];
            if (v84)
            {
              if (v79)
              {
                v85 = 0;
                v86 = v80;
                while (v84 != *v86)
                {
                  ++v85;
                  v86 += 2;
                  if (v79 == v85)
                  {
                    goto LABEL_108;
                  }
                }

                v87 = *(v83 + v85);
              }

              else
              {
LABEL_108:
                v87 = 0;
              }

              if (v87 == 0 && (v74 & 1) != 0)
              {
                v88 = 0;
                v89 = v131;
                while (v84 != *v89)
                {
                  ++v88;
                  v89 += 2;
                  if (v88 == 16)
                  {
                    v87 = 0;
                    goto LABEL_116;
                  }
                }

                v87 = *(v76 + v88);
              }

LABEL_116:
              if (v87)
              {
                LOBYTE(v84) = v87;
              }

              else
              {
                LOBYTE(v84) = v78;
              }

              if (!v87)
              {
                ++v78;
              }
            }

            *(v83 + v79++) = v84;
          }

          while (v79 != 16);
          v77 = 0;
          v74 = 1;
          v75 = 1;
        }

        while ((v81 & 1) != 0);
        *(v128 + 2255) = 0;
        *(v128 + 2239) = 0;
      }

      memset(v132, 0, sizeof(v132));
      v90 = *(v128 + 518);
      if (*(v128 + 58))
      {
        v91 = 0;
      }

      else
      {
        v91 = *(v128 + 519);
      }

      v94 = 0;
      v95 = v128 + 520;
      v96 = 1;
      do
      {
        v97 = v96;
        if (v90)
        {
          if (v7[v94] >= 1)
          {
            v98 = 0;
            v99 = v132 + 1;
            do
            {
              v100 = &v131[32 * v94 + 2 * *(v95 + 16 * v94 + v98)];
              v102 = *v100;
              v101 = v100[1];
              if (v101)
              {
                atomic_fetch_add_explicit(&v101->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v103 = *v99;
              *(v99 - 1) = v102;
              *v99 = v101;
              if (v103)
              {
                sub_2773CC26C(v103);
              }

              ++v98;
              v99 += 2;
            }

            while (v98 < v7[v94]);
          }

          v104 = v128 + 1672 + (v94 << 8);
          v105 = v132;
          v106 = 16;
          do
          {
            v107 = *v105;
            v108 = *(v105 + 1);
            if (v108)
            {
              atomic_fetch_add_explicit((v108 + 8), 1uLL, memory_order_relaxed);
            }

            v109 = *(v104 + 8);
            *v104 = v107;
            if (v109)
            {
              sub_2773CC26C(v109);
            }

            v104 += 16;
            ++v105;
            --v106;
          }

          while (v106);
        }

        else
        {
          *(v95 + 16 * v94) = xmmword_27750D340;
        }

        v96 = 0;
        v90 = v91;
        v94 = 1;
      }

      while ((v97 & 1) != 0);
      *(v128 + 659) = 1;
      v110 = *(v128 + 516);
      if (v110 < 1)
      {
LABEL_161:
        if (*(v128 + 58) || (v112 = *(v128 + 517), v112 < 1))
        {
LABEL_169:
          for (i = 248; i != -8; i -= 16)
          {
            v115 = *(v132 + i);
            if (v115)
            {
              sub_2773CC26C(v115);
            }
          }

          v116 = *(v128 + 58);
          if (*(v128 + 514) != 1)
          {
LABEL_186:
            v122 = 0;
            for (j = 1; ; j = 0)
            {
              v124 = v7[v122];
              if (v124 >= 1)
              {
                break;
              }

LABEL_191:
              v126 = (v116 == 0) & j;
              v122 = 1;
              if ((v126 & 1) == 0)
              {
                sub_2773F79D0(v128);
                return 0;
              }
            }

            v125 = (v128 + 1672 + (v122 << 8));
            while (*v125)
            {
              v125 += 2;
              if (!--v124)
              {
                goto LABEL_191;
              }
            }

            if (dword_280B9A880 >= 3)
            {
              fprintf(*MEMORY[0x277D85DF8], "L%d found too few reference frames\n", v122);
              syslog(27, "L%d found too few reference frames\n", v122);
            }

            return 4294954387;
          }

          if (*(v128 + 58))
          {
            v117 = 0;
          }

          else
          {
            v117 = *(v128 + 554) ^ 1;
          }

          v118 = &v131[32 * v117 + 2 * *(v128 + 555)];
          v119 = *v118;
          v120 = v118[1];
          if (v120)
          {
            atomic_fetch_add_explicit((v120 + 8), 1uLL, memory_order_relaxed);
          }

          *(v128 + 2184) = v119;
          v121 = *(v128 + 2192);
          *(v128 + 2192) = v120;
          if (v121)
          {
            sub_2773CC26C(v121);
            v119 = *(v128 + 2184);
          }

          if (v119)
          {
            v116 = *(v128 + 58);
            goto LABEL_186;
          }

          if (dword_280B9A880 >= 3)
          {
            fwrite("Temporal MVP enabled but pointing to invalid reference\n", 0x37uLL, 1uLL, *MEMORY[0x277D85DF8]);
            syslog(27, "Temporal MVP enabled but pointing to invalid reference\n");
          }

          return 4294954387;
        }

        v113 = v128 + 1928;
        while (!*v113 || *(*v113 + 1024) <= *(v128 + 640))
        {
          v113 += 16;
          if (!--v112)
          {
            goto LABEL_169;
          }
        }
      }

      else
      {
        v111 = v131;
        while (!*v111 || *(*v111 + 1024) <= *(v128 + 640))
        {
          v111 += 2;
          if (!--v110)
          {
            goto LABEL_161;
          }
        }
      }

      *(v128 + 659) = 0;
      goto LABEL_169;
    }

    goto LABEL_135;
  }

  result = 0;
  v93 = a1[517];
  if (v5 > v93)
  {
    v93 = *a2;
  }

  if (a1[58])
  {
    v93 = 0;
  }

  v130 = v93;
  if (a1[58] != 2)
  {
    if (v5 >= 1)
    {
      if (v6 < 16)
      {
        if (v93 < 16)
        {
          v127 = a3;
          goto LABEL_7;
        }

        if (dword_280B9A880 < 3)
        {
          return 4294954387;
        }
      }

      else if (dword_280B9A880 < 3)
      {
        return 4294954387;
      }

      fwrite("Too many active refs!\n", 0x16uLL, 1uLL, *MEMORY[0x277D85DF8]);
      syslog(27, "Too many active refs!\n");
      return 4294954387;
    }

LABEL_135:
    if (dword_280B9A880 >= 3)
    {
      fwrite("No active refs but we expect them\n", 0x22uLL, 1uLL, *MEMORY[0x277D85DF8]);
      syslog(27, "No active refs but we expect them\n");
    }

    return 4294954387;
  }

  return result;
}

void sub_2773F8C08(uint64_t a1)
{
  v2 = a1 + 1672;
  v3 = 16;
  v4 = (a1 + 1672);
  do
  {
    v5 = v4[1];
    *v4 = 0;
    v4[1] = 0;
    if (v5)
    {
      sub_2773CC26C(v5);
    }

    v6 = v4[33];
    v4[32] = 0;
    v4[33] = 0;
    if (v6)
    {
      sub_2773CC26C(v6);
    }

    v4 += 2;
    --v3;
  }

  while (v3);
  v7 = *(a1 + 2192);
  *(v2 + 512) = 0u;
  if (v7)
  {

    sub_2773CC26C(v7);
  }
}

void sub_2773F8C98(uint64_t a1, int a2)
{
  v2 = a2 + 8;
  v3 = (a1 + 1032);
  if (atomic_load_explicit((a1 + 1032), memory_order_acquire) < a2 + 8)
  {
    v6.__m_ = (a1 + 1040);
    v6.__owns_ = 1;
    std::mutex::lock((a1 + 1040));
    for (i = atomic_load_explicit(v3, memory_order_acquire); i < v2; i = atomic_load_explicit((a1 + 1032), memory_order_acquire))
    {
      std::condition_variable::wait((a1 + 1104), &v6);
    }

    if (v6.__owns_)
    {
      std::mutex::unlock(v6.__m_);
    }
  }
}

uint64_t sub_2773F8D28(uint64_t a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7, void *a8, void *a9)
{
  v12 = -3 - a6;
  v13 = *(a2 + 520);
  v14 = v13 + 2;
  v15 = a4 + (a3 >> 2);
  if (v15 < v13 + 2)
  {
    v14 = a4 + (a3 >> 2);
  }

  if (v15 <= v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = v14;
  }

  v17 = -3 - a7;
  v18 = *(a2 + 524);
  v19 = v18 + 2;
  v20 = a5 + (a3 >> 18);
  if (v20 < v18 + 2)
  {
    v19 = a5 + (a3 >> 18);
  }

  if (v20 <= v17)
  {
    v21 = v17;
  }

  else
  {
    v21 = v19;
  }

  v22 = *(a2 + 531);
  *a8 = *(a2 + 400) + ((*(a2 + 416) * v21 + v16) << v22);
  v23 = (a3 >> 3) + (a4 >> 1);
  if (v23 >= v13 >> 1)
  {
    v24 = v13 >> 1;
  }

  else
  {
    v24 = (a3 >> 3) + (a4 >> 1);
  }

  if (v23 <= ~(a6 >> 1))
  {
    v25 = ~(a6 >> 1);
  }

  else
  {
    v25 = v24;
  }

  v26 = (a5 >> 1) + (a3 >> 19);
  if (v26 >= v18 >> 1)
  {
    v27 = v18 >> 1;
  }

  else
  {
    v27 = (a5 >> 1) + (a3 >> 19);
  }

  if (v26 <= ~(a7 >> 1))
  {
    v28 = ~(a7 >> 1);
  }

  else
  {
    v28 = v27;
  }

  if (*(*(a1 + 16) + 201))
  {
    *a9 = *(a2 + 408) + ((*(a2 + 424) * v28 + 2 * v25) << v22);
  }

  sub_2773F8C98(a2, v21 + a7);
  v29 = *(&off_2886621E0[2 * *(a2 + 532)] + *(a2 + 531));

  return v29(v16, v21, v25, v28, a6, a7, a2);
}

uint64_t sub_2773F8EA4(uint64_t result, int a2, int a3, int a4, int a5, int a6, uint64_t *a7, uint64_t *a8)
{
  if ((a6 & 0xF) != 0)
  {
    v8 = *(*(result + 8) + 856) + 12 * *(*(result + 8) + 848) * ((a5 + a3) >> 2) + 12 * ((a2 - 1) >> 2);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(*(result + 16) + 2112);
  *a7 = v8;
  if ((a6 & 0xF0) != 0)
  {
    v10 = *(*(result + 8) + 856) + 12 * *(*(result + 8) + 848) * ((a3 + a5 - 1) >> 2) + 12 * ((a2 - 1) >> 2);
  }

  else
  {
    v10 = 0;
  }

  v11 = v9 - 1;
  a7[1] = v10;
  if ((a6 & 0x1E000) != 0)
  {
    v12 = *(*(result + 8) + 856) + 12 * *(*(result + 8) + 848) * ((a3 - 1) >> 2) + 12 * ((a4 + a2) >> 2);
  }

  else
  {
    v12 = 0;
  }

  v13 = 1 << v11;
  *a8 = v12;
  if ((a6 & 0x1E00) != 0)
  {
    v14 = *(*(result + 8) + 856) + 12 * *(*(result + 8) + 848) * ((a3 - 1) >> 2) + 12 * ((a4 + a2 - v13) >> 2);
  }

  else
  {
    v14 = 0;
  }

  a8[1] = v14;
  if ((a6 & 0x100) != 0)
  {
    v15 = *(*(result + 8) + 856) + 12 * *(*(result + 8) + 848) * ((a3 - 1) >> 2) + 12 * ((a2 - v13) >> 2);
  }

  else
  {
    v15 = 0;
  }

  a8[2] = v15;
  return result;
}

uint64_t sub_2773F9000(uint64_t a1, unsigned int a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a4 && *(a4 + 10) != 1)
  {
    v6 = a2;
    if ((*(a1 + 659) & 1) == 0)
    {
      v6 = *(a1 + 554);
    }

    v7 = v6;
    v8 = *(a4 + 8 + v6) & 0xF;
    if (v8 == 15)
    {
      v7 = 1 - v6;
      v8 = *(a4 + 8 + v7) & 0xF;
    }

    v9 = (1 << *(a1 + 16 * a2 + a3 + 520)) & *(*(a1 + 8) + 8 * a2 + 360);
    v10 = (v9 != 0) ^ (*(*(a1 + 2184) + 8 * v7 + 360) >> v8);
    if ((v10 & 1) == 0)
    {
      v11 = *(a4 + 4 * v7);
      *a5 = v11;
      if (!v9)
      {
        v12 = *(a1 + 2184);
        v13 = *(v12 + (v7 << 6) + 4 * v8 + 232);
        v14 = *(a1 + 640) - *(*(a1 + (a2 << 8) + 16 * a3 + 1672) + 1024);
        v15 = *(v12 + 1024) - v13;
        if (v15 && v15 != v14)
        {
          if (v14 >= 127)
          {
            v14 = 127;
          }

          if (v14 <= -128)
          {
            v14 = -128;
          }

          if (v15 >= 127)
          {
            v15 = 127;
          }

          if (v15 <= -128)
          {
            v15 = -128;
          }

          if (v15 >= 0)
          {
            v17 = v15;
          }

          else
          {
            v17 = -v15;
          }

          v18 = (v14 * (((v17 >> 1) | 0x4000) / v15) + 32) >> 6;
          if (v18 >= 4095)
          {
            v18 = 4095;
          }

          if (v18 <= -4096)
          {
            v18 = -4096;
          }

          v19 = v18 * v11;
          v20 = v19 < 0;
          if (v19 < 0)
          {
            v19 = -v19;
          }

          v21 = (v19 + 127) >> 8;
          if (v20)
          {
            v21 = -v21;
          }

          if (v21 >= 0x7FFF)
          {
            v21 = 0x7FFF;
          }

          if (v21 <= -32768)
          {
            LOWORD(v21) = 0x8000;
          }

          *a5 = v21;
          v22 = v18 * (v11 >> 16);
          v23 = v22 < 0;
          if (v22 < 0)
          {
            v22 = -v22;
          }

          v24 = (v22 + 127) >> 8;
          if (v23)
          {
            v24 = -v24;
          }

          if (v24 >= 0x7FFF)
          {
            v24 = 0x7FFF;
          }

          if (v24 <= -32768)
          {
            LOWORD(v24) = 0x8000;
          }

          *(a5 + 2) = v24;
        }
      }
    }

    v5 = v10 ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_2773F91B8(uint64_t a1, int a2, int a3, int a4, int a5, unsigned int a6, int a7, uint64_t a8, char a9)
{
  v9 = *(a1 + 2184);
  if (*(v9 + 712))
  {
    return 0;
  }

  v10 = a7;
  v11 = a6;
  v17 = a5 + a3;
  if (atomic_load_explicit((v9 + 1032), memory_order_acquire) < a5 + a3)
  {
    v19 = a8;
    __lk.__m_ = (v9 + 1040);
    __lk.__owns_ = 1;
    std::mutex::lock((v9 + 1040));
    for (i = atomic_load_explicit((v9 + 1032), memory_order_acquire); i < v17; i = atomic_load_explicit((v9 + 1032), memory_order_acquire))
    {
      std::condition_variable::wait((v9 + 1104), &__lk);
    }

    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }

    a8 = v19;
    v10 = a7;
    v11 = a6;
  }

  v21 = *(*(a1 + 16) + 2113);
  v22 = a3 >> v21;
  v23 = v17 >> v21;
  v24 = *(a1 + 2184);
  if (v22 == v23 && a4 + a2 < *(v24 + 520) && v17 < *(v24 + 524))
  {
    v25 = *(v24 + 848) * ((v17 >> 2) & 0xFFFFFFFC);
    v26 = (((a4 + a2) >> 2) & 0xFFFFFFFC);
    if (a9)
    {
      v27 = *(v24 + 880) + 16 * v25 + 16 * v26;
    }

    else
    {
      v27 = *(v24 + 856) + 12 * v25 + 12 * v26;
    }

    v28 = a8;
    if (sub_2773F9000(a1, v11, v10, v27, a8))
    {
      return 1;
    }

    v24 = *(a1 + 2184);
    a8 = v28;
  }

  v30 = a2 + (a4 >> 1);
  if (v30 >= *(v24 + 520))
  {
    return 0;
  }

  v31 = a3 + (a5 >> 1);
  if (v31 >= *(v24 + 524))
  {
    return 0;
  }

  v32 = *(v24 + 848) * ((v31 >> 2) & 0xFFFFFFFC);
  v33 = ((v30 >> 2) & 0xFFFFFFFC);
  if (a9)
  {
    v34 = *(v24 + 880) + 16 * v32 + 16 * v33;
  }

  else
  {
    v34 = *(v24 + 856) + 12 * v32 + 12 * v33;
  }

  return sub_2773F9000(a1, v11, v10, v34, a8);
}

uint64_t sub_2773F93C8(uint64_t result, int a2, int a3, unsigned int a4, int a5, int a6, int a7, int *a8, void *a9, uint64_t a10, char a11)
{
  v14 = result + 1672;
  v15 = a4;
  v16 = result + 1672 + (a4 << 8);
  v17 = a4 == 0;
  v18 = result + 1672 + (v17 << 8);
  v19 = *(result + 8) + 360;
  v20 = *(v19 + 8 * a4);
  v21 = (1 << *(result + 16 * a4 + a5 + 520)) & v20;
  if (*a9 && *(*a9 + 10) > 1u)
  {
    v22 = 1;
  }

  else
  {
    v23 = a9[1];
    if (v23)
    {
      v22 = *(v23 + 10) > 1u;
    }

    else
    {
      v22 = 0;
    }
  }

  v24 = 0;
  v25 = 1 - a4;
  v26 = v16 + 16 * a5;
  v27 = *(*v26 + 1024);
  *(a8 + 48) = 0;
  v28 = 1;
  do
  {
    v29 = v28;
    v30 = a9[v24];
    if (v30 && *(v30 + 10) >= 2u)
    {
      v31 = *(v30 + 8 + v15) >> 4;
      if (v31 != 15 && v27 == *(*(v16 + 16 * v31) + 1024))
      {
        LOBYTE(v33) = 0;
        v39 = 1;
        *(a8 + 48) = 1;
        v43 = *(v30 + 4 * v15);
LABEL_30:
        *a8 = v43;
        goto LABEL_70;
      }

      v32 = *(v30 + 8 + v25) >> 4;
      if (v32 != 15 && v27 == *(*(v18 + 16 * v32) + 1024))
      {
        LOBYTE(v33) = 0;
        v39 = 1;
        *(a8 + 48) = 1;
        v43 = *(v30 + 4 * v25);
        goto LABEL_30;
      }
    }

    v28 = 0;
    v24 = 1;
  }

  while ((v29 & 1) != 0);
  v33 = 0;
  v34 = 1;
  while (1)
  {
    v35 = v34;
    v36 = a9[v33];
    if (v36)
    {
      if (*(v36 + 10) >= 2u)
      {
        v37 = *(v36 + 8 + v15);
        if (v37 <= 0xEF && (((v21 != 0) ^ (v20 >> (v37 & 0xF))) & 1) == 0)
        {
          v40 = v15;
          v41 = v15;
          goto LABEL_26;
        }

        v38 = *(v36 + 8 + v25);
        if (v38 <= 0xEF && (((v21 != 0) ^ (*(v19 + 8 * v25) >> (v38 & 0xF))) & 1) == 0)
        {
          break;
        }
      }
    }

    v34 = 0;
    v33 = 1;
    if ((v35 & 1) == 0)
    {
      v39 = 0;
      goto LABEL_70;
    }
  }

  v40 = 1 - a4;
  v41 = v17;
LABEL_26:
  v39 = 1;
  *(a8 + 48) = 1;
  v42 = *(v36 + 4 * v40);
  *a8 = v42;
  if (v21)
  {
    LOBYTE(v33) = 0;
  }

  else
  {
    v44 = *(*(v14 + (v41 << 8) + (*(a9[v33] + v40 + 8) & 0xF0)) + 1024);
    v45 = *(result + 640);
    v46 = *(*v26 + 1024);
    v47 = v45 - v44;
    if (v45 == v44 || v46 == v44)
    {
      LOBYTE(v33) = 0;
    }

    else
    {
      LOBYTE(v33) = 0;
      v49 = v45 - v46;
      if (v49 >= 127)
      {
        v49 = 127;
      }

      if (v49 <= -128)
      {
        v49 = -128;
      }

      if (v47 >= 127)
      {
        v47 = 127;
      }

      if (v47 <= -128)
      {
        v47 = -128;
      }

      if (v47 >= 0)
      {
        v50 = v47;
      }

      else
      {
        v50 = -v47;
      }

      v51 = (v49 * (((v50 >> 1) | 0x4000) / v47) + 32) >> 6;
      if (v51 >= 4095)
      {
        v51 = 4095;
      }

      if (v51 <= -4096)
      {
        v51 = -4096;
      }

      v52 = v51 * v42;
      v53 = v52 < 0;
      if (v52 < 0)
      {
        v52 = -v52;
      }

      v54 = (v52 + 127) >> 8;
      if (v53)
      {
        v54 = -v54;
      }

      if (v54 >= 0x7FFF)
      {
        v54 = 0x7FFF;
      }

      if (v54 <= -32768)
      {
        LOWORD(v54) = 0x8000;
      }

      *a8 = v54;
      v55 = v51 * (v42 >> 16);
      v56 = v55 < 0;
      if (v55 < 0)
      {
        v55 = -v55;
      }

      v57 = (v55 + 127) >> 8;
      if (v56)
      {
        v57 = -v57;
      }

      if (v57 >= 0x7FFF)
      {
        v57 = 0x7FFF;
      }

      if (v57 <= -32768)
      {
        LOWORD(v57) = 0x8000;
      }

      *(a8 + 1) = v57;
    }

    v39 = 1;
  }

LABEL_70:
  v58 = 0;
  while (1)
  {
    v59 = *(a10 + v58);
    if (v59 && *(v59 + 10) >= 2u)
    {
      v60 = *(v59 + 8 + v15) >> 4;
      if (v60 != 15 && v27 == *(*(v16 + 16 * v60) + 1024))
      {
        v67 = v15;
        if (v33)
        {
          goto LABEL_93;
        }

        v68 = *a8;
        v69 = *(v59 + 4 * v15);
        v67 = v15;
        goto LABEL_92;
      }

      v61 = *(v59 + 8 + v25) >> 4;
      if (v61 != 15 && v27 == *(*(v18 + 16 * v61) + 1024))
      {
        break;
      }
    }

    v58 += 8;
    if (v58 == 24)
    {
      goto LABEL_78;
    }
  }

  v67 = 1 - a4;
  if (v33)
  {
    goto LABEL_93;
  }

  v68 = *a8;
  v69 = *(v59 + 4 * v25);
  v67 = 1 - a4;
LABEL_92:
  if (v68 == v69)
  {
    goto LABEL_78;
  }

LABEL_93:
  *(a8 + 48) = v39 + 1;
  a8[v39++] = *(v59 + 4 * v67);
LABEL_78:
  if (!v22)
  {
    v62 = 0;
    while (1)
    {
      v63 = *(a10 + 8 * v62);
      if (v63 && *(v63 + 10) >= 2u)
      {
        v64 = *(v63 + 8 + v15);
        v65 = *(result + 8) + 360;
        if (v64 <= 0xEF && (((v21 != 0) ^ (*(v65 + 8 * v15) >> (v64 & 0xF))) & 1) == 0)
        {
          v17 = v15;
          goto LABEL_96;
        }

        v66 = *(v63 + 8 + v25);
        if (v66 <= 0xEF && (((v21 != 0) ^ (*(v65 + 8 * v25) >> (v66 & 0xF))) & 1) == 0)
        {
          break;
        }
      }

      if (++v62 == 3)
      {
        goto LABEL_137;
      }
    }

    v15 = 1 - a4;
LABEL_96:
    a8[v39] = *(v63 + 4 * v15);
    v70 = *(*(v14 + (v17 << 8) + (*(*(a10 + 8 * v62) + v15 + 8) & 0xF0)) + 1024);
    v71 = *(*v26 + 1024);
    if (v70 != v71 && v21 == 0)
    {
      v73 = *(result + 640);
      v74 = v73 - v70;
      if (v74)
      {
        v75 = v73 - v71;
        v76 = &a8[*(a8 + 48)];
        if (v75 >= 127)
        {
          v75 = 127;
        }

        if (v75 <= -128)
        {
          v75 = -128;
        }

        if (v74 >= 127)
        {
          v74 = 127;
        }

        if (v74 <= -128)
        {
          v74 = -128;
        }

        if (v74 >= 0)
        {
          v77 = v74;
        }

        else
        {
          v77 = -v74;
        }

        v78 = (v75 * (((v77 >> 1) | 0x4000) / v74) + 32) >> 6;
        if (v78 >= 4095)
        {
          v78 = 4095;
        }

        if (v78 <= -4096)
        {
          v78 = -4096;
        }

        v79 = v78 * *v76;
        v80 = v79 < 0;
        if (v79 < 0)
        {
          v79 = -v79;
        }

        v81 = (v79 + 127) >> 8;
        if (v80)
        {
          v81 = -v81;
        }

        if (v81 >= 0x7FFF)
        {
          v81 = 0x7FFF;
        }

        if (v81 <= -32768)
        {
          LOWORD(v81) = 0x8000;
        }

        *v76 = v81;
        v82 = v78 * v76[1];
        v83 = v82 < 0;
        if (v82 < 0)
        {
          v82 = -v82;
        }

        v84 = (v82 + 127) >> 8;
        if (v83)
        {
          v84 = -v84;
        }

        if (v84 >= 0x7FFF)
        {
          v84 = 0x7FFF;
        }

        if (v84 <= -32768)
        {
          LOWORD(v84) = 0x8000;
        }

        v76[1] = v84;
      }
    }

    LOBYTE(v39) = *(a8 + 48);
    if (!v39 || *a8 != a8[1])
    {
      LOBYTE(v39) = v39 + 1;
      *(a8 + 48) = v39;
    }
  }

LABEL_137:
  if (*(result + 514) == 1)
  {
    if (v39 > 1u)
    {
      return result;
    }

    result = sub_2773F91B8(result, a2, a3, a6, a7, a4, a5, &a8[v39], a11);
    LOBYTE(v39) = *(a8 + 48) + result;
    *(a8 + 48) = v39;
  }

  if (v39 <= 1u)
  {
    v85 = v39;
    do
    {
      v86 = v85;
      *(a8 + 48) = v85 + 1;
      a8[v85] = 0;
      v85 = 1;
    }

    while (!v86);
  }

  return result;
}

uint64_t sub_2773F9A08(uint64_t result, int a2, int a3, int a4, int a5, uint64_t a6, unsigned int a7, uint64_t *a8, uint64_t *a9, char a10)
{
  v16 = result;
  *(a6 + 60) = 0;
  v17 = a8[1];
  if (v17 && *(v17 + 10) >= 2u && (a4 >= a5 || ((a5 - 1) & a2) <= 0))
  {
    v57 = *(v17 + 8) >> 4;
    v58 = *(v17 + 9) >> 4;
    *(a6 + 4) = *v17;
    *a6 = v57;
    *(a6 + 1) = v58;
    *(a6 + 60) = 1;
    if (a7 == 1)
    {
      return result;
    }
  }

  else
  {
    a8[1] = 0;
  }

  v18 = a9[1];
  if (v18 && *(v18 + 10) >= 2u && (a4 <= a5 || ((a4 - 1) & a3) <= 0))
  {
    v59 = a8[1];
    if (!v59 || *(v59 + 10) < 2u || (*(v18 + 8) ^ *(v59 + 8)) > 0xF || *v59 != *v18 || (*(v18 + 9) ^ *(v59 + 9)) > 0xF || *(v59 + 4) != *(v18 + 4))
    {
      v60 = *(v18 + 8) >> 4;
      v61 = *(v18 + 9) >> 4;
      v62 = a6 + 12 * *(a6 + 60);
      *(v62 + 4) = *v18;
      *v62 = v60;
      v63 = *(a6 + 60);
      *(a6 + 12 * v63++ + 1) = v61;
      *(a6 + 60) = v63;
      if (a7 == v63)
      {
        return result;
      }
    }
  }

  else
  {
    a9[1] = 0;
  }

  v19 = *a9;
  if (!*a9 || *(v19 + 10) < 2u || (v20 = a9[1]) != 0 && *(v20 + 10) >= 2u && (*(v19 + 8) ^ *(v20 + 8)) <= 0xF && *v20 == *v19 && (*(v19 + 9) ^ *(v20 + 9)) <= 0xF && *(v20 + 4) == *(v19 + 4) || (v21 = *(v19 + 8) >> 4, v22 = *(v19 + 9) >> 4, v23 = a6 + 12 * *(a6 + 60), *(v23 + 4) = *v19, *v23 = v21, v24 = *(a6 + 60), *(a6 + 12 * v24 + 1) = v22, ++v24, *(a6 + 60) = v24, a7 != v24))
  {
    v25 = *a8;
    if (!*a8 || *(v25 + 10) < 2u || (v26 = a8[1]) != 0 && *(v26 + 10) >= 2u && (*(v25 + 8) ^ *(v26 + 8)) <= 0xF && *v26 == *v25 && (*(v25 + 9) ^ *(v26 + 9)) <= 0xF && *(v26 + 4) == *(v25 + 4))
    {
      v27 = *(a6 + 60);
    }

    else
    {
      v43 = *(v25 + 8) >> 4;
      v44 = *(v25 + 9) >> 4;
      v45 = a6 + 12 * *(a6 + 60);
      *(v45 + 4) = *v25;
      *v45 = v43;
      v46 = *(a6 + 60);
      *(a6 + 12 * v46 + 1) = v44;
      v27 = v46 + 1;
      *(a6 + 60) = v27;
      if (a7 == v27)
      {
        return result;
      }
    }

    if (v27 > 3u || (v28 = a9[2]) == 0 || *(v28 + 10) < 2u || (v29 = a8[1]) != 0 && *(v29 + 10) >= 2u && (*(v28 + 8) ^ *(v29 + 8)) <= 0xF && *v29 == *v28 && (*(v28 + 9) ^ *(v29 + 9)) <= 0xF && *(v29 + 4) == *(v28 + 4) || (v30 = a9[1]) != 0 && *(v30 + 10) >= 2u && (*(v28 + 8) ^ *(v30 + 8)) <= 0xF && *v30 == *v28 && (*(v28 + 9) ^ *(v30 + 9)) <= 0xF && *(v30 + 4) == *(v28 + 4) || (v31 = *(v28 + 8) >> 4, v32 = *(v28 + 9) >> 4, v33 = a6 + 12 * v27, *(v33 + 4) = *v28, *v33 = v31, LOBYTE(v31) = *(a6 + 60), *(a6 + 12 * v31 + 1) = v32, LOBYTE(v31) = v31 + 1, *(a6 + 60) = v31, a7 != v31))
    {
      if (*(result + 514) != 1)
      {
        goto LABEL_96;
      }

      v34 = sub_2773F91B8(result, a2, a3, a4, a5, 0, 0, &v70, a10);
      result = 0;
      if (!v16[58])
      {
        result = sub_2773F91B8(v16, a2, a3, a4, a5, 1u, 0, &v69, a10);
      }

      if ((v34 | result) != 1 || ((v36 = v69, v35 = v70, v34) ? (v37 = 0) : (v35 = 0, v37 = 15), result ? (v38 = 0) : (v36 = 0, v38 = 15), v39 = a6 + 12 * *(a6 + 60), *(v39 + 4) = v35, *(v39 + 8) = v36, *v39 = v37, v40 = *(a6 + 60), *(a6 + 12 * v40 + 1) = v38, ++v40, *(a6 + 60) = v40, a7 != v40))
      {
LABEL_96:
        if (v16[58])
        {
          v41 = v16[516];
          v42 = *(a6 + 60);
        }

        else
        {
          LODWORD(v47) = *(a6 + 60);
          v48 = ((v47 - 1) * v47);
          if (v48 <= 0)
          {
            v41 = v16[516];
          }

          else
          {
            v49 = &byte_27750D9A8;
            v50 = &byte_27750D99C;
            do
            {
              if (v47 > 4u)
              {
                break;
              }

              v51 = (a6 + 12 * *v50);
              v52 = *v51;
              if (v52 != 15)
              {
                v53 = a6 + 12 * *v49;
                result = *(v53 + 1);
                if (result != 15)
                {
                  v54 = *(v51 + 1);
                  v55 = *(v53 + 8);
                  if (v54 != v55 || *(*&v16[16 * v52 + 1672] + 1024) != *(*&v16[16 * result + 1928] + 1024))
                  {
                    result = *(v53 + 1);
                    v47 = a6 + 12 * v47;
                    *(v47 + 4) = v54;
                    *v47 = v52;
                    LOBYTE(v47) = *(a6 + 60);
                    v56 = a6 + 12 * v47;
                    *(v56 + 8) = v55;
                    *(v56 + 1) = result;
                    LOBYTE(v47) = v47 + 1;
                    *(a6 + 60) = v47;
                    if (a7 == v47)
                    {
                      return result;
                    }
                  }
                }
              }

              ++v49;
              ++v50;
              --v48;
            }

            while (v48);
            v41 = v16[516];
            v42 = v47;
            if (v16[58])
            {
              goto LABEL_85;
            }
          }

          if (v16[517] < v41)
          {
            v41 = v16[517];
          }

          v42 = v47;
        }

LABEL_85:
        if (a7 > v42)
        {
          v64 = 0;
          do
          {
            v65 = a6 + 12 * v42;
            *(v65 + 4) = 0;
            *(v65 + 8) = 0;
            if (v64 >= v41)
            {
              v66 = 0;
            }

            else
            {
              v66 = v64;
            }

            *v65 = v66;
            v67 = *(a6 + 60);
            if (v16[58])
            {
              v68 = 15;
            }

            else
            {
              v68 = *(a6 + 12 * *(a6 + 60));
            }

            *(a6 + 12 * *(a6 + 60) + 1) = v68;
            ++v64;
            v42 = v67 + 1;
            *(a6 + 60) = v42;
          }

          while (a7 > v42);
        }
      }
    }
  }

  return result;
}

uint64_t sub_2773FA080(uint64_t a1, int a2, int a3, int a4, int a5, int a6, uint64_t a7, unsigned __int8 a8)
{
  v32 = *MEMORY[0x277D85DE8];
  v30 = 0;
  v31 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  sub_2773F8EA4(a1, a2, a3, a4, a5, a6, &v30, &v27);
  v15 = *(*(a1 + 32) + 1610);
  if (v15)
  {
    v16 = v15 + 2;
    v17 = a2 >> (v15 + 2);
    v18 = (a2 - 1) >> v16;
    v19 = a3 >> v16;
    if (v17 == v18 && v19 == (a5 + a3) >> v16)
    {
      v30 = 0;
    }

    if (v17 == v18 && v19 == (a3 - 1 + a5) >> v16)
    {
      v31 = 0;
    }

    v22 = (a3 - 1) >> v16;
    if (v17 == (a4 + a2) >> v16 && v19 == v22)
    {
      v27 = 0;
    }

    if (v17 == (a2 - 1 + a4) >> v16 && v19 == v22)
    {
      v28 = 0;
    }

    if (v17 == v18 && v19 == v22)
    {
      v29 = 0;
    }
  }

  return sub_2773F9A08(a1, a2, a3, a4, a5, a7, a8, &v30, &v27, 0);
}

uint64_t sub_2773FA1E4(uint64_t result)
{
  v1 = *(result + 16);
  v2 = *(v1 + 2097);
  v3 = *(result + 32);
  v4 = v3[9] + *(result + 559) + 26;
  if (v4 >= 51)
  {
    v5 = 51;
  }

  else
  {
    v5 = v3[9] + *(result + 559) + 26;
  }

  if ((v4 + v2 < 0) ^ __OFADD__(v4, v2) | (v4 + v2 == 0))
  {
    v6 = -v2;
  }

  else
  {
    v6 = v5;
  }

  *(result + 653) = v6;
  v7 = *(result + 560);
  v8 = v6 + v3[14] + v7;
  v9 = *(v1 + 2099);
  if (v8 >= 57)
  {
    v10 = 57;
  }

  else
  {
    v10 = v6 + v3[14] + v7;
  }

  if ((v8 + v9 < 0) ^ __OFADD__(v8, v9) | (v8 + v9 == 0))
  {
    v11 = -v9;
  }

  else
  {
    v11 = v10;
  }

  if (v11 >= 30)
  {
    LOBYTE(v11) = byte_27753C740[v11 - 30];
  }

  *(result + 654) = v11;
  v12 = *(result + 561);
  v13 = v6 + v3[15] + v12;
  v14 = *(v1 + 2099);
  if (v13 >= 57)
  {
    v15 = 57;
  }

  else
  {
    v15 = v13;
  }

  if ((v13 + v14 < 0) ^ __OFADD__(v13, v14) | (v13 + v14 == 0))
  {
    v16 = -v14;
  }

  else
  {
    v16 = v15;
  }

  if (v16 >= 30)
  {
    LOBYTE(v16) = byte_27753C740[v16 - 30];
  }

  *(result + 655) = v16;
  *(result + 656) = 0;
  *(result + 657) = v3[14] + v7;
  *(result + 658) = v3[15] + v12;
  return result;
}

uint64_t sub_2773FA2B4(uint64_t result, FILE *__stream)
{
  v3 = result;
  if (dword_280B9A880 >= 6)
  {
    result = fwrite("=========== Slice ===========\n", 0x1EuLL, 1uLL, __stream);
    if (dword_280B9A880 >= 6)
    {
      result = fprintf(__stream, "  %-44s : %lld\n", "first_slice_in_pic_flag", *(v3 + 48));
      if (dword_280B9A880 >= 6)
      {
        result = fprintf(__stream, "  %-44s : %lld\n", "no_output_of_prior_pics_flag", *(v3 + 49));
        if (dword_280B9A880 >= 6)
        {
          result = fprintf(__stream, "  %-44s : %lld\n", "slice_pic_parameter_set_id", *(v3 + 50));
        }
      }
    }
  }

  if ((*(v3 + 48) & 1) == 0)
  {
    v4 = dword_280B9A880;
    if (*(*(v3 + 32) + 2) == 1 && dword_280B9A880 >= 6)
    {
      result = fprintf(__stream, "  %-44s : %lld\n", "dependent_slice_flag", *(v3 + 56));
      v4 = dword_280B9A880;
    }

    if (v4 >= 6)
    {
      result = fprintf(__stream, "  %-44s : %lld\n", "slice_segment_address", *(v3 + 52));
    }
  }

  if (*(v3 + 56))
  {
    goto LABEL_163;
  }

  v6 = dword_280B9A880;
  if (*(*(v3 + 32) + 4))
  {
    v7 = *(*(v3 + 32) + 4) + 1;
    do
    {
      if (v6 >= 6)
      {
        result = fprintf(__stream, "    %-42s : %lld\n", "slice_reserved_flag", (*(v3 + 57) >> (v7 - 2)) & 1);
        v6 = dword_280B9A880;
      }

      --v7;
    }

    while (v7 > 1);
  }

  if (v6 <= 5)
  {
    v9 = v3 + 16;
  }

  else
  {
    result = fprintf(__stream, "  %-44s : %lld\n", "slice_type", *(v3 + 58));
    v6 = dword_280B9A880;
    if (*(*(v3 + 32) + 3) == 1 && dword_280B9A880 >= 6)
    {
      result = fprintf(__stream, "  %-44s : %lld\n", "pic_output_flag", *(v3 + 59));
      v6 = dword_280B9A880;
    }

    v9 = v3 + 16;
    if (*(*(v3 + 16) + 202) == 1 && v6 >= 6)
    {
      result = fprintf(__stream, "  %-44s : %lld\n", "colour_plane_id", *(v3 + 60));
      v6 = dword_280B9A880;
    }
  }

  if ((*(v3 + 632) & 1) == 0)
  {
    if (v6 >= 6)
    {
      result = fprintf(__stream, "  %-44s : %lld\n", "slice_pic_order_cnt_lsb", *(v3 + 64));
      if (dword_280B9A880 >= 6)
      {
        result = fprintf(__stream, "  %-44s : %lld\n", "short_term_ref_pic_set_sps_flag", *(v3 + 68));
      }
    }

    if (*(v3 + 68))
    {
      v6 = dword_280B9A880;
      if (*(*v9 + 288) < 2u || dword_280B9A880 < 6)
      {
        goto LABEL_44;
      }

      result = fprintf(__stream, "  %-44s : %lld\n", "short_term_ref_pic_set_idx", *(v3 + 320));
    }

    else
    {
      result = sub_27750929C(v3 + 72, __stream, *(v3 + 16), *(*(v3 + 16) + 288));
    }

    v6 = dword_280B9A880;
LABEL_44:
    v12 = *v9;
    if (*(*v9 + 320) == 1)
    {
      if (v6 >= 6)
      {
        result = fwrite("  long_term_ref_pic_set {\n", 0x1AuLL, 1uLL, __stream);
        v6 = dword_280B9A880;
        if (dword_280B9A880 >= 6)
        {
          result = fprintf(__stream, "    %-42s : %lld\n", "num_long_term_sps", *(v3 + 324));
          v6 = dword_280B9A880;
          if (dword_280B9A880 >= 6)
          {
            result = fprintf(__stream, "    %-42s : %lld\n", "num_long_term_pics", *(v3 + 328));
            v6 = dword_280B9A880;
          }
        }
      }

      LODWORD(v13) = *(v3 + 324);
      if (v13)
      {
        v14 = 0;
        v15 = v3 + 332;
        do
        {
          if (v6 >= 6)
          {
            result = fprintf(__stream, "      %-40s : %lld\n", "lt_idx_sps", *(v15 + v14));
            v6 = dword_280B9A880;
            if (dword_280B9A880 >= 6)
            {
              result = fprintf(__stream, "      %-40s : %lld\n", "delta_poc_msb_present_flag", (*(v3 + 510) >> v14) & 1);
              v6 = dword_280B9A880;
              if (((*(v3 + 510) >> v14) & 1) != 0 && dword_280B9A880 >= 6)
              {
                result = fprintf(__stream, "      %-40s : %lld\n", "delta_poc_msb_cycle_lt", *(v15 + 4 * v14 + 48));
                v6 = dword_280B9A880;
              }
            }
          }

          ++v14;
          v13 = *(v3 + 324);
        }

        while (v14 < v13);
      }

      if (v13 < *(v3 + 328) + v13)
      {
        v16 = v3 + 348;
        v17 = v13;
        do
        {
          if (v6 >= 6)
          {
            result = fprintf(__stream, "      %-40s : %lld\n", "poc_lsb_lt", *(v16 + 2 * v17));
            v6 = dword_280B9A880;
            if (dword_280B9A880 >= 6)
            {
              result = fprintf(__stream, "      %-40s : %lld\n", "used_by_curr_pic_lt_flag", (*(v3 + 508) >> v17) & 1);
              v6 = dword_280B9A880;
              if (dword_280B9A880 >= 6)
              {
                result = fprintf(__stream, "      %-40s : %lld\n", "delta_poc_msb_present_flag", (*(v3 + 510) >> v17) & 1);
                v6 = dword_280B9A880;
                if (((*(v3 + 510) >> v17) & 1) != 0 && dword_280B9A880 >= 6)
                {
                  result = fprintf(__stream, "      %-40s : %lld\n", "delta_poc_msb_cycle_lt", *(v16 + 4 * v17 + 32));
                  v6 = dword_280B9A880;
                }
              }
            }
          }

          ++v17;
        }

        while (*(v3 + 328) + *(v3 + 324) > v17);
      }

      if (v6 > 5)
      {
        result = fwrite("  }\n", 4uLL, 1uLL, __stream);
        v6 = dword_280B9A880;
      }

      v12 = *v9;
    }

    if (*(v12 + 396) == 1 && v6 >= 6)
    {
      result = fprintf(__stream, "  %-44s : %lld\n", "slice_temporal_mvp_enable_flag", *(v3 + 514));
      v6 = dword_280B9A880;
    }
  }

  if (*(*v9 + 277) == 1 && v6 >= 6)
  {
    result = fprintf(__stream, "  %-44s : %lld\n", "slice_sao_luma_flag", *(v3 + 512));
    v6 = dword_280B9A880;
    if (dword_280B9A880 >= 6)
    {
      result = fprintf(__stream, "  %-44s : %lld\n", "slice_sao_chroma_flag", *(v3 + 513));
      v6 = dword_280B9A880;
    }
  }

  if (*(v3 + 58) > 1u)
  {
    goto LABEL_139;
  }

  if (v6 >= 6)
  {
    result = fprintf(__stream, "  %-44s : %lld\n", "num_ref_idx_active_override_flag", *(v3 + 515));
    v6 = dword_280B9A880;
    if (*(v3 + 515) == 1 && dword_280B9A880 >= 6)
    {
      result = fprintf(__stream, "  %-44s : %lld\n", "num_ref_idx_active", *(v3 + 516));
      v6 = dword_280B9A880;
      if (!*(v3 + 58) && dword_280B9A880 >= 6)
      {
        result = fprintf(__stream, "  %-44s : %lld\n", "num_ref_idx_active", *(v3 + 517));
        v6 = dword_280B9A880;
      }
    }
  }

  if (*(*(v3 + 32) + 1608) == 1)
  {
    if (v6 >= 6)
    {
      result = fprintf(__stream, "  %-44s : %lld\n", "ref_pic_list_modification_flag_l0", *(v3 + 518));
    }

    if (*(v3 + 518))
    {
      v20 = *(v3 + 516);
      v6 = dword_280B9A880;
      if (v20 >= 1)
      {
        v21 = 0;
        do
        {
          if (v6 >= 6)
          {
            result = fprintf(__stream, "    %-42s : %lld\n", "list_entry", *(v3 + 520 + v21));
            v6 = dword_280B9A880;
            LOBYTE(v20) = *(v3 + 516);
          }

          ++v21;
        }

        while (v21 < v20);
      }
    }

    else
    {
      v6 = dword_280B9A880;
    }

    if (!*(v3 + 58))
    {
      if (v6 >= 6)
      {
        result = fprintf(__stream, "  %-44s : %lld\n", "ref_pic_list_modification_flag_l1", *(v3 + 519));
      }

      if (*(v3 + 519))
      {
        v22 = *(v3 + 517);
        v6 = dword_280B9A880;
        if (v22 >= 1)
        {
          v23 = 0;
          do
          {
            if (v6 >= 6)
            {
              result = fprintf(__stream, "    %-42s : %lld\n", "list_entry", *(v3 + 536 + v23));
              v6 = dword_280B9A880;
              LOBYTE(v22) = *(v3 + 517);
            }

            ++v23;
          }

          while (v23 < v22);
        }
      }

      else
      {
        v6 = dword_280B9A880;
      }
    }
  }

  if (*(v3 + 58))
  {
    v24 = 1;
  }

  else
  {
    v24 = v6 < 6;
  }

  if (!v24)
  {
    result = fprintf(__stream, "  %-44s : %lld\n", "mvd_l1_zero_flag", *(v3 + 552));
    v6 = dword_280B9A880;
  }

  if (*(*(v3 + 32) + 6) == 1 && v6 >= 6)
  {
    result = fprintf(__stream, "  %-44s : %lld\n", "cabac_init_flag", *(v3 + 553));
  }

  if (*(v3 + 514) == 1)
  {
    v26 = dword_280B9A880;
    if (!*(v3 + 58) && dword_280B9A880 >= 6)
    {
      result = fprintf(__stream, "  %-44s : %lld\n", "collocated_from_l0_flag", *(v3 + 554));
      v26 = dword_280B9A880;
    }

    if (*(v3 + 554) == 1)
    {
      if (*(v3 + 516) < 2 || v26 <= 5)
      {
        goto LABEL_130;
      }

LABEL_129:
      result = fprintf(__stream, "  %-44s : %lld\n", "collocated_ref_idx", *(v3 + 555));
      goto LABEL_130;
    }

    if (*(v3 + 517) >= 2 && v26 >= 6)
    {
      goto LABEL_129;
    }
  }

LABEL_130:
  v27 = *(v3 + 32);
  if (*(v27 + 17) == 1 && *(v3 + 58) == 1 || *(v27 + 18) == 1 && !*(v3 + 58))
  {
    if (dword_280B9A880 < 6)
    {
      goto LABEL_147;
    }

    result = fprintf(__stream, "  %-44s : %lld\n", "luma_log2_weight_denom", *(v3 + 556));
    if (dword_280B9A880 < 6)
    {
      goto LABEL_147;
    }

    result = fprintf(__stream, "  %-44s : %lld\n", "delta_chroma_log2_weight_denom", *(v3 + 557));
  }

  if (dword_280B9A880 < 6)
  {
    goto LABEL_147;
  }

  result = fprintf(__stream, "  %-44s : %lld\n", "five_minus_max_num_merge_cand", *(v3 + 558));
  v6 = dword_280B9A880;
LABEL_139:
  if (v6 < 6)
  {
    goto LABEL_147;
  }

  result = fprintf(__stream, "  %-44s : %lld\n", "slice_qp_delta", *(v3 + 559));
  v28 = dword_280B9A880;
  v29 = *(v3 + 32);
  if (v29[16] == 1 && dword_280B9A880 >= 6)
  {
    result = fprintf(__stream, "  %-44s : %lld\n", "slice_cb_qp_offset", *(v3 + 560));
    if (dword_280B9A880 >= 6)
    {
      result = fprintf(__stream, "  %-44s : %lld\n", "slice_cr_qp_offset", *(v3 + 561));
      v28 = dword_280B9A880;
      v29 = *(v3 + 32);
      goto LABEL_144;
    }

LABEL_147:
    v29 = *(v3 + 32);
    goto LABEL_148;
  }

LABEL_144:
  if (v29[1617] == 1 && v28 >= 6)
  {
    result = fprintf(__stream, "  %-44s : %lld\n", "cu_chroma_qp_offset_enabled_flag", *(v3 + 562));
    goto LABEL_147;
  }

LABEL_148:
  if (v29[29] == 1 && dword_280B9A880 >= 6)
  {
    result = fprintf(__stream, "  %-44s : %lld\n", "deblocking_filter_override_flag", *(v3 + 563));
    if (*(v3 + 563) == 1 && dword_280B9A880 >= 6)
    {
      result = fprintf(__stream, "  %-44s : %lld\n", "slice_deblocking_filter_disabled_flag", *(v3 + 564));
      if ((*(v3 + 564) & 1) == 0 && dword_280B9A880 >= 6)
      {
        result = fprintf(__stream, "  %-44s : %lld\n", "slice_beta_offset_div2", *(v3 + 565));
        if (dword_280B9A880 >= 6)
        {
          result = fprintf(__stream, "  %-44s : %lld\n", "slice_tc_offset_div2", *(v3 + 566));
        }
      }
    }
  }

  if (*(*(v3 + 32) + 28) == 1)
  {
    if (*(v3 + 512) == 1)
    {
      v30 = dword_280B9A880;
    }

    else
    {
      v30 = dword_280B9A880;
      if (*(v3 + 513) & 1) == 0 && (*(v3 + 564))
      {
        goto LABEL_163;
      }
    }

    if (v30 >= 6)
    {
      result = fprintf(__stream, "  %-44s : %lld\n", "slice_loop_filter_across_slices_enabled_flag", *(v3 + 567));
    }
  }

LABEL_163:
  v31 = *(v3 + 32);
  if (*(v31 + 20) == 1)
  {
    v32 = dword_280B9A880;
  }

  else
  {
    v33 = *(v31 + 21);
    v32 = dword_280B9A880;
    if (v33 != 1)
    {
      goto LABEL_175;
    }
  }

  if (v32 >= 6)
  {
    result = fprintf(__stream, "  %-44s : %lld\n", "num_entry_point_offsets", *(v3 + 568));
    v32 = dword_280B9A880;
  }

  v34 = *(v3 + 568);
  if (v34 >= 1)
  {
    if (v32 < 6 || (result = fprintf(__stream, "  %-44s : %lld\n", "offset_len_minus1", *(v3 + 572)), v34 = *(v3 + 568), v32 = dword_280B9A880, v34 >= 1))
    {
      for (i = 0; i < v34; ++i)
      {
        if (v32 >= 6)
        {
          result = fprintf(__stream, "    %-42s : %lld\n", "entry_point_offset_minus1", *(*(v3 + 576) + 4 * i));
          v32 = dword_280B9A880;
          v34 = *(v3 + 568);
        }
      }
    }
  }

LABEL_175:
  if (*(*(v3 + 32) + 1612) == 1 && v32 >= 6)
  {
    return fprintf(__stream, "  %-44s : %lld\n", "slice_segment_header_extension_length", *(v3 + 600));
  }

  return result;
}

double sub_2773FAF74(uint64_t a1, double result)
{
  v2 = *(a1 + 1568);
  v4 = *(v2 + 8);
  v3 = *(v2 + 12);
  v5 = *(a1 + 8);
  if (v4 <= *(v5 + 520))
  {
    v6 = v3 < 17 || v4 < 17;
    if (!v6 && v3 <= *(v5 + 524))
    {
      if (*(a1 + 58) == 2 || *(a1 + 516) < 1)
      {
LABEL_37:
        *(v5 + 504) = v4;
        *(v5 + 508) = v3;
        result = 0.0;
        *(v5 + 512) = 0;
        return result;
      }

      v9 = 0;
      v30 = v3;
      v31 = a1 + 1672;
      while (1)
      {
        v10 = *(v31 + 16 * v9);
        if (*(v10 + 512) == v4 && *(v10 + 516) == v3)
        {
          if (*(v10 + 400) != *(v10 + 472))
          {
            *(v10 + 48) = 1;
          }

          v11 = *(v10 + 472);
          v12 = *(v10 + 488);
        }

        else
        {
          if (*(v10 + 504) != v4 || *(v10 + 508) != v3)
          {
            v13 = (v10 + 472);
            v14 = *(v10 + 524);
            if (v14)
            {
              v15 = *(v10 + 488);
              v16 = *(v10 + 520);
              v17 = *v13;
              do
              {
                --v14;
                memset(v17, 128, v16);
                v17 += v15;
              }

              while (v14);
              v18 = *(v10 + 524);
              if (v18 >= 2)
              {
                v19 = *(v10 + 520);
                v20 = *(v10 + 496);
                v21 = v18 >> 1;
                v22 = *(v10 + 480);
                do
                {
                  --v21;
                  memset(v22, 128, v19);
                  v22 += v20;
                }

                while (v21);
              }
            }

            v23 = 0;
            v24 = (v10 + 488);
            v25 = *(a1 + 1584);
            v26 = 1;
            do
            {
              v27 = v26;
              *(v25 + 8 * v23 + 8) = *(v10 + 440 + 8 * v23);
              *(*(a1 + 1584) + 8 * v23 + 24) = v13[v23];
              v25 = *(a1 + 1584);
              v28 = v25 + 8 * v23;
              *(v28 + 40) = *(v10 + 456 + 8 * v23);
              *(v28 + 56) = *(v24 + v23);
              v23 = 1;
              v26 = 0;
            }

            while ((v27 & 1) != 0);
            *(v25 + 72) = *(v10 + 504);
            v3 = v30;
            *(v25 + 80) = v4;
            *(v25 + 84) = v30;
            (*(*v25 + 24))(v25);
            v29 = *v24;
            *(v10 + 400) = *v13;
            *(v10 + 416) = v29;
            *(v10 + 512) = v4;
            *(v10 + 516) = v30;
            (*(*v10 + 16))(v10, 0, *(v10 + 524), 0);
            *(v10 + 48) = 1;
            goto LABEL_35;
          }

          if (*(v10 + 400) != *(v10 + 440))
          {
            *(v10 + 48) = 1;
          }

          v11 = *(v10 + 440);
          v12 = *(v10 + 456);
        }

        *(v10 + 400) = v11;
        *(v10 + 416) = v12;
LABEL_35:
        if (++v9 >= *(a1 + 516))
        {
          v5 = *(a1 + 8);
          goto LABEL_37;
        }
      }
    }
  }

  if (dword_280B9A880 >= 3)
  {
    fprintf(*MEMORY[0x277D85DF8], "Invalid VRA parameters %dx%d!\n", v4, v3);
    syslog(27, "Invalid VRA parameters %dx%d!\n", v4, v3);
  }

  return result;
}

void sub_2773FB24C(uint64_t a1, int a2, int a3, __int16 a4)
{
  v4 = a4;
  v8 = *(*(a1 + 16) + 2117);
  if (a3 && (a4 & 0x1E00) == 0)
  {
    bzero((*(*(a1 + 8) + 944) + *(*(a1 + 8) + 928) * (a3 >> 3) + (a2 >> 2)), v8 >> 2);
  }

  if (a2 && (v4 & 0xF0) == 0)
  {
    v9 = (*(*(a1 + 8) + 968) + *(*(a1 + 8) + 936) * (a2 >> 3) + (a3 >> 2));

    bzero(v9, v8 >> 2);
  }
}

void sub_2773FB310(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 2);
  v6 = a2 - v5;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 12 * a2;
  }

  else
  {
    v7 = a1[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v7 - v4) >> 2) < v6)
    {
      if (a2 <= 0x1555555555555555)
      {
        v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v3) >> 2);
        v9 = 2 * v8;
        if (2 * v8 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0xAAAAAAAAAAAAAAALL)
        {
          v10 = 0x1555555555555555;
        }

        else
        {
          v10 = v9;
        }

        sub_2773EBBF4(v10);
      }

      sub_2773C0914();
    }

    v12 = 12 * ((12 * v6 - 12) / 0xC) + 12;
    bzero(a1[1], v12);
    v11 = v4 + v12;
  }

  a1[1] = v11;
}

uint64_t sub_2773FB484(int a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = a4 + 8;
  v8 = a2;
  while (v6 < a1)
  {
    v9 = 0;
    v10 = *(a3 + 2 * v4);
    v11 = v6 + 1;
    v12 = (v7 + 12 * v6);
    do
    {
      v13 = v9;
      *(v12 - 2) = v4;
      *(v12 - 1) = v5;
      *v12 = v5 + v10 + 1;
      ++v6;
      if (v9 >= v10)
      {
        break;
      }

      ++v9;
      v12 += 3;
    }

    while (v11++ < a1);
    if (v13 < v10)
    {
      break;
    }

    ++v4;
    v5 += v10 + 1;
    if (v4 == v8)
    {
      return 0;
    }
  }

  return 4294954387;
}

uint64_t sub_2773FB51C(uint64_t a1, int a2, int a3)
{
  if (*(a1 + 104) != 1)
  {
    return 0;
  }

  v5 = *(a1 + 96);
  if (v5 <= a2 || *(a1 + 100) <= a3)
  {
    if (dword_280B9A880 >= 7)
    {
      fprintf(*MEMORY[0x277D85DF8], "Invalid ctb [%d][%d]\n", a3, a2);
      syslog(31, "Invalid ctb [%d][%d]\n", a3, a2);
    }

    return 0;
  }

  else
  {
    v6 = *(*(a1 + 72) + 12 * a3);
    return (v6 + v6 * *(*(a1 + 48) + 12 * v5 - 12) + *(*(a1 + 48) + 12 * a2));
  }
}

uint64_t sub_2773FB5F4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = *a1;
  v7 = *(a1 + 8) - v5;
  if (v4 + 4 <= v7)
  {
    if (v4 + 4 < v7)
    {
      *(a1 + 8) = &v5[v4 + 4];
    }
  }

  else
  {
    sub_2773C07DC(a1, v4 + 4 - v7);
    v5 = *a1;
    v4 = *(a2 + 24);
  }

  v8 = off_280B9A8D0(v5, *(a2 + 8), v4);
  v9 = *a1;

  return sub_2773FB67C(a1, v9, v8);
}

uint64_t sub_2773FB67C(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  if (a2 && a3)
  {
    result = 0;
    *(a1 + 24) = a2;
    *(a1 + 32) = a2;
    *(a1 + 40) = a2 + a3;
    *(a1 + 48) = bswap32(*a2);
    *(a1 + 56) = 0;
  }

  else
  {
    if (dword_280B9A880 >= 3)
    {
      fwrite("NULL buffer\n", 0xCuLL, 1uLL, *MEMORY[0x277D85DF8]);
      syslog(27, "NULL buffer\n");
    }

    return 4294954387;
  }

  return result;
}

uint64_t sub_2773FB718(uint64_t a1, unsigned int a2)
{
  v4 = a2 + 4;
  v5 = *a1;
  v6 = *(a1 + 8) - *a1;
  v7 = v4 >= v6;
  v8 = v4 - v6;
  if (v8 != 0 && v7)
  {
    sub_2773C07DC(a1, v8);
    v5 = *a1;
  }

  else if (!v7)
  {
    *(a1 + 8) = &v5[v4];
  }

  result = sub_2773FB67C(a1, v5, a2);
  *(a1 + 48) = 0;
  return result;
}

uint64_t sub_2773FB780(uint64_t result, int a2, int a3)
{
  v3 = (a2 << (-a3 - *(result + 52))) | *(result + 48);
  *(result + 48) = v3;
  **(result + 32) = bswap32(v3);
  v4 = *(result + 52) + a3;
  v5 = *(result + 48) << (v4 & 0xF8);
  v6 = *(result + 40);
  v7 = *(result + 32) + (v4 >> 3);
  *(result + 32) = v7;
  *(result + 48) = v5;
  *(result + 52) = v4 & 7;
  if (v7 >= v6)
  {
    *(result + 56) = 1;
    *(result + 32) = v6;
  }

  return result;
}

uint64_t sub_2773FB7E4(uint64_t a1, unsigned int a2, int a3)
{
  v3 = a2;
  v4 = a1;
  if (a3 > 25)
  {
    sub_2773FB780(a1, HIWORD(a2), a3 - 16);
    a2 = v3;
    a1 = v4;
    a3 = 16;
  }

  return sub_2773FB780(a1, a2, a3);
}

uint64_t sub_2773FB848(uint64_t a1, int a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52) + a2;
  v4 = v3 & 7;
  *(a1 + 52) = v3 & 7;
  v5 = *(a1 + 40);
  v6 = (*(a1 + 32) + (v3 >> 3));
  *(a1 + 32) = v6;
  if (v6 >= v5)
  {
    v7 = 0;
    *(a1 + 56) = 1;
    *(a1 + 32) = v5;
  }

  else
  {
    v7 = bswap32(*v6);
  }

  *(a1 + 48) = v7 << v4;
  return v2 >> -a2;
}

uint64_t sub_2773FB8A4(uint64_t a1, int a2)
{
  if (a2 > 25)
  {
    v4 = sub_2773FB848(a1, a2 - 16);
    return sub_2773FB848(a1, 16) + (v4 << 16);
  }

  else
  {

    return sub_2773FB848(a1, a2);
  }
}

uint64_t sub_2773FB90C(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    return 0;
  }

  v2 = __clz(v1);
  if (v2 >= 0xC)
  {
    v3 = 12;
  }

  else
  {
    v3 = v2;
  }

  v4 = v1 << (v3 + 1) >> -v3;
  if (!v2)
  {
    v4 = 0;
  }

  v5 = *(a1 + 52) + ((2 * v3) | 1u);
  v6 = *(a1 + 40);
  v7 = (*(a1 + 32) + (v5 >> 3));
  v8 = v5 & 7;
  *(a1 + 52) = v8;
  *(a1 + 32) = v7;
  if (v7 >= v6)
  {
    v9 = 0;
    *(a1 + 56) = 1;
    *(a1 + 32) = v6;
  }

  else
  {
    v9 = bswap32(*v7);
  }

  *(a1 + 48) = v9 << v8;
  return v4 + ~(-1 << v3);
}

uint64_t sub_2773FB9A4(uint64_t a1)
{
  if (*(a1 + 48) >> 19)
  {

    return sub_2773FB90C(a1);
  }

  else
  {
    v3 = -1;
    do
    {
      ++v3;
    }

    while (!sub_2773FB848(a1, 1) && v3 < 0x1F);
    return sub_2773FB8A4(a1, v3) + ~(-1 << v3);
  }
}

uint64_t sub_2773FBA38(uint64_t a1, int a2)
{
  v3 = a2 + 1;
  if (a2 == -1)
  {
    sub_2773FB780(a1, 0, 16);
    sub_2773FB780(a1, 0, 16);
    sub_2773FB780(a1, 1, 1);
    sub_2773FB780(a1, 0, 16);
    v4 = a1;
    v5 = 0;
    v6 = 16;
  }

  else
  {
    v7 = __clz(v3);
    v8 = v7 ^ 0x1F;
    if ((v7 ^ 0x1F) >= 2)
    {
      sub_2773FB780(a1, 0, v8 >> 1);
    }

    if (v7 == 31)
    {
      v4 = a1;
      v5 = 1;
      v6 = 1;
    }

    else
    {
      v9 = v8 - (v8 >> 1);
      sub_2773FB780(a1, 0, v9);
      sub_2773FB780(a1, 1, 1);
      v10 = v3 - (0x80000000 >> v7);
      if (v8 >= 2)
      {
        sub_2773FB780(a1, v10 >> v9, v8 >> 1);
      }

      v4 = a1;
      v5 = v10;
      v6 = v8 - (v8 >> 1);
    }
  }

  return sub_2773FB780(v4, v5, v6);
}

uint64_t sub_2773FBB60(uint64_t a1, int a2)
{
  if (a2 <= 0)
  {
    v2 = -2 * a2;
  }

  else
  {
    v2 = 2 * a2 - 1;
  }

  v3 = v2 + 1;
  v4 = __clz(v3);
  return sub_2773FB780(a1, (v3 - (0x80000000 >> v4)) | (0x80000000 >> v4), 63 - 2 * v4);
}

uint64_t sub_2773FBB94(uint64_t a1)
{
  result = sub_2773FB780(a1, 1, 1);
  v3 = *(a1 + 52);
  if (v3)
  {
    v4 = *(a1 + 32);
    if (v4 >= *(a1 + 40))
    {
      *(a1 + 56) = 1;
    }

    else
    {
      *v4 &= byte_27750D9B4[v3];
      v4 = *(a1 + 32);
    }

    *(a1 + 32) = v4 + 1;
  }

  *(a1 + 48) = 0;
  return result;
}

uint64_t sub_2773FBC08(uint64_t a1)
{
  v1 = (*(a1 + 40) - 1);
  while (!*v1)
  {
    v2 = v1 > *(a1 + 32);
    v1 = (v1 - 1);
    if (!v2)
    {
      goto LABEL_4;
    }
  }

  v4 = __clz(__rbit32(*v1)) ^ 7;
  if (v1 != *(a1 + 32) || *(a1 + 52) <= v4)
  {
    v3 = 0;
    *(a1 + 52) = v4;
    *(a1 + 32) = v1;
    *(a1 + 48) = bswap32(*v1) << v4;
    return v3;
  }

LABEL_4:
  if (dword_280B9A880 >= 3)
  {
    fwrite("Failed to find terminating bit\n", 0x1FuLL, 1uLL, *MEMORY[0x277D85DF8]);
    syslog(27, "Failed to find terminating bit\n");
  }

  return 4294954387;
}

uint64_t sub_2773FBCD4(uint64_t result, unsigned int a2, int a3)
{
  v3 = 0;
  if (a3 >= 0x33)
  {
    v4 = 51;
  }

  else
  {
    v4 = a3;
  }

  if (a3 <= 0)
  {
    v4 = 0;
  }

  do
  {
    v5 = byte_27750D9BC[177 * a2 + v3];
    v6 = 8 * (v5 & 0xF) + (((5 * (v5 >> 4) - 45) * v4) >> 4) - 16;
    if (v6 >= 126)
    {
      v7 = 126;
    }

    else
    {
      v7 = v6;
    }

    if (v7 <= 1)
    {
      LOBYTE(v7) = 1;
    }

    v8 = 63 - v7;
    v9 = v6 <= 63;
    v10 = v6 > 63;
    v11 = v7 ^ 0x40;
    if (v9)
    {
      v11 = v8;
    }

    *(result + 40 + v3++) = v10 | (2 * v11);
  }

  while (v3 != 177);
  *(result + 213) = 0;
  return result;
}