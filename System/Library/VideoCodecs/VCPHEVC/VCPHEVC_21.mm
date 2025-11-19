void sub_2774CDE64(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, uint64_t a10, uint64_t a11, unsigned int a12, void (*a13)(char *, __int128 *, void, uint64_t, void), void (*a14)(uint64_t, char *, void, uint64_t, _WORD *, char *, void))
{
  v67 = a7;
  v18 = a1;
  v77 = *MEMORY[0x277D85DE8];
  v75 = 0u;
  v76 = 0u;
  v72 = a4;
  v19 = MEMORY[0x28223BE20](a1);
  v21 = v58 - ((v20 + 15) & 0x1FFFFFFF0);
  memset(v74, 0, sizeof(v74));
  memset(v73, 0, sizeof(v73));
  v69 = v22;
  v23 = (v22 >> v19);
  v24 = v23 + 16;
  sub_2773ED84C(v74, v24);
  v58[1] = v58;
  v68 = v18;
  if (v23 == -16)
  {
    v71 = 0;
    v26 = v74[0];
    goto LABEL_11;
  }

  sub_2773C07DC(v73, v24);
  v25 = v73[0];
  v26 = v74[0];
  v71 = v73[0];
  if (v23 < 1)
  {
    if (v23 < -15)
    {
      goto LABEL_11;
    }

    v34 = 0;
  }

  else
  {
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = (v72 << 16) / v69;
    do
    {
      v31 = v29 >> 16;
      v32 = v29 >> 8;
      v29 += v30;
      v33 = v31 << v18;
      v25[v27] = v32 & 0xF0;
      v26[v27++] = v33 - v28;
      v28 = v33;
    }

    while (v23 != v27);
    v34 = v23;
  }

  v35 = v23 - 1;
  do
  {
    v26[v34] = v26[v35];
    v25[v34++] = v25[v35];
  }

  while (v24 != v34);
LABEL_11:
  v70 = a9;
  if (a9 >= 1)
  {
    v36 = 0;
    v37 = 0;
    v62 = a14;
    v38 = ((v21 + 31) & 0xFFFFFFFFFFFFFFF0);
    v61 = a11;
    v65 = a10;
    v66 = a13;
    v63 = a5 - 3;
    v64 = a5 - 2;
    v39 = &v38[v72];
    v60 = v38 - 1;
    v59 = (a5 << 16) / v70;
    do
    {
      v40 = v36 >> 16;
      v41 = (v36 >> 16) - 1;
      if (v36 >> 16 <= 0)
      {
        v41 = 0;
      }

      *&v75 = a2 + v41 * a3;
      *(&v75 + 1) = a2 + (v36 >> 16) * a3;
      if (v40 <= v64)
      {
        v42 = v40 + 1;
      }

      else
      {
        v42 = a5 - 1;
      }

      v43 = a2 + v42 * a3;
      v44 = v40 <= v63;
      v45 = v40 + 2;
      if (!v44)
      {
        v45 = a5 - 1;
      }

      *&v76 = v43;
      *(&v76 + 1) = a2 + v45 * a3;
      v66(v38, &v75, v72, v65 + 16 * (v36 >> 12), a12);
      v46 = *v38;
      if (v68)
      {
        v47 = 0;
        v48 = v38[1];
        v49 = *(v39 - 1);
        v50 = v60;
        v51 = *(v39 - 2);
        v52 = v71;
        do
        {
          *(v50 - 1) = v46;
          *v50 = v48;
          v50 -= 2;
          v53 = &v39[v47];
          *v53 = v51;
          v53[1] = v49;
          v54 = v47 >= 6;
          v47 += 2;
        }

        while (!v54);
      }

      else
      {
        v55 = 0;
        v56 = *(v39 - 1);
        v57 = v60;
        v52 = v71;
        do
        {
          *v57-- = v46;
          v39[v55++] = v56;
        }

        while (v55 != 4);
      }

      v62(a6, v38, v69, v61, v26, v52, a12);
      v36 += v59;
      a6 += v67;
      ++v37;
    }

    while (v37 != v70);
  }

  if (v71)
  {
    operator delete(v71);
  }

  if (v26)
  {
    operator delete(v26);
  }
}

void sub_2774CE1E0(_Unwind_Exception *exception_object)
{
  *(v1 - 192) = *(v1 - 176);
  if (*(v1 - 192))
  {
    v3 = *(v1 - 192);
    *(v1 - 168) = v3;
    operator delete(v3);
  }

  v4 = *(v1 - 152);
  if (v4)
  {
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

int8x16_t sub_2774CE21C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64x2_t a4)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 12);
  v6 = (v5 & 4) == 0;
  *a4.i8 = vdup_n_s32(~(16 * v5) & 0x10);
  v7 = 0uLL;
  v8.i64[0] = -1;
  v8.i64[1] = -1;
  v9 = vshlq_u64(v8, a4);
  v10.i64[0] = 0;
  v10.u64[1] = vdup_n_s32(16 * ((*(a1 + 10) == 0) - (*(a1 + 10) + (v4 & 4)) + ((v5 >> 1) | 0xFFFFFFE)));
  v11 = vshlq_u64(v8, v10);
  v12 = ((v5 >> 3) | 0xFFFFFFFE) - (*(a1 + 11) != 0) - (*(a1 + 11) + v6) + *(a1 + 9) + 1;
  v14 = *a1;
  v13 = a1[1];
  v15 = v13 * v6;
  v16 = a1[3];
  v17 = (a1[2] + v16 * v6);
  if (v4 >= 9)
  {
    v21 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
    v24 = 0uLL;
    v25 = 0uLL;
    v26 = 0uLL;
    v27 = 0uLL;
    if (v12 >= 1)
    {
      v28 = v12;
      v29 = v14;
      v30 = v17;
      do
      {
        v31 = vandq_s8(*(v29 + v13 + v13 * v6 - 2), v9);
        v32 = vandq_s8(*(v29 + v15), v9);
        v33 = vandq_s8(*(v29 + v13 * (v6 - 1) + 2), v9);
        v34 = vandq_s8(*v30, v9);
        v35 = vcgtq_u8(v32, v31);
        v36 = vcgtq_u8(v32, v33);
        v37 = vcgtq_u8(v31, v32);
        v38 = vcgtq_u8(v33, v32);
        v39 = vcltzq_s8(vshlq_n_s8(vandq_s8(v37, v38), 7uLL));
        v40 = vcltzq_s8(vshlq_n_s8(vandq_s8(v35, v36), 7uLL));
        v41 = veorq_s8(v36, v35);
        v42 = veorq_s8(v38, v37);
        v43 = vcltzq_s8(vshlq_n_s8(vbicq_s8(v42, v41), 7uLL));
        v44 = vcltzq_s8(vshlq_n_s8(vbicq_s8(v41, v42), 7uLL));
        v23 = vsubq_s8(v23, v39);
        v22 = vsubq_s8(v22, v43);
        v21 = vsubq_s8(v21, v44);
        v7 = vsubq_s8(v7, v40);
        v45 = vsubl_u8(*v34.i8, *v32.i8);
        v46 = vsubl_high_u8(v34, v32);
        v27 = vaddq_s16(vaddq_s16(vandq_s8(v46, vmovl_high_s8(v39)), v27), vandq_s8(v45, vmovl_s8(*v39.i8)));
        v26 = vaddq_s16(vaddq_s16(vandq_s8(v46, vmovl_high_s8(v43)), v26), vandq_s8(v45, vmovl_s8(*v43.i8)));
        v25 = vaddq_s16(vaddq_s16(vandq_s8(v46, vmovl_high_s8(v44)), v25), vandq_s8(v45, vmovl_s8(*v44.i8)));
        v24 = vaddq_s16(vaddq_s16(vandq_s8(v46, vmovl_high_s8(v40)), v24), vandq_s8(v45, vmovl_s8(*v40.i8)));
        v30 = (v30 + v16);
        v29 += v13;
        --v28;
      }

      while (v28);
    }

    v47 = vpaddq_s16(v23, v22);
    v48 = vpaddq_s16(v21, v7);
    v19 = vpaddlq_u8(vpaddq_s8(vuzp1q_s8(v47, v48), vuzp2q_s8(v47, v48)));
    v49 = vpaddq_s16(vuzp2q_s16(v27, v26), vuzp2q_s16(v25, v24));
    v20 = vpaddlq_s16(vpaddq_s16(vuzp1q_s16(v27, v26), vuzp1q_s16(v25, v24)));
    v7 = vpaddlq_s16(v49);
    v18 = 8;
  }

  else
  {
    v18 = 0;
    v11 = vandq_s8(v11, v9);
    v19 = 0uLL;
    v20 = 0uLL;
  }

  v50 = (v4 - 8);
  if (v18 < v50)
  {
    v51 = v18;
    v52 = v13 * (v6 - 1) + 2 * v18 + v14 + 2;
    v53 = v13 + v13 * v6 + 2 * v18 + v14 - 2;
    v54 = v14 + v15 + 2 * v18;
    do
    {
      if (v12 < 1)
      {
        v65 = 0uLL;
        v64 = 0uLL;
        v63 = 0uLL;
        v56 = 0uLL;
        v62 = 0uLL;
        v61 = 0uLL;
        v60 = 0uLL;
        v57 = 0uLL;
      }

      else
      {
        v55 = 0;
        v56 = 0uLL;
        v57 = 0uLL;
        v58 = (v17 + 2 * v51);
        v59 = v12;
        v60 = 0uLL;
        v61 = 0uLL;
        v62 = 0uLL;
        v63 = 0uLL;
        v64 = 0uLL;
        v65 = 0uLL;
        do
        {
          v66 = *(v54 + v55);
          v67 = *(v53 + v55);
          v68 = *(v52 + v55);
          v69 = vcgtq_u8(v66, v67);
          v70 = vcgtq_u8(v66, v68);
          v71 = vcgtq_u8(v67, v66);
          v72 = vcgtq_u8(v68, v66);
          v73 = vcltzq_s8(vshlq_n_s8(vandq_s8(v71, v72), 7uLL));
          v74 = vcltzq_s8(vshlq_n_s8(vandq_s8(v69, v70), 7uLL));
          v75 = veorq_s8(v70, v69);
          v76 = veorq_s8(v72, v71);
          v77 = vcltzq_s8(vshlq_n_s8(vbicq_s8(v76, v75), 7uLL));
          v78 = vcltzq_s8(vshlq_n_s8(vbicq_s8(v75, v76), 7uLL));
          v56 = vsubq_s8(v56, v73);
          v63 = vsubq_s8(v63, v77);
          v64 = vsubq_s8(v64, v78);
          v65 = vsubq_s8(v65, v74);
          v79 = vsubl_u8(*v58, *v66.i8);
          v80 = vsubl_high_u8(*v58->i8, v66);
          v57 = vaddq_s16(vaddq_s16(vandq_s8(v80, vmovl_high_s8(v73)), v57), vandq_s8(v79, vmovl_s8(*v73.i8)));
          v60 = vaddq_s16(vaddq_s16(vandq_s8(v80, vmovl_high_s8(v77)), v60), vandq_s8(v79, vmovl_s8(*v77.i8)));
          v61 = vaddq_s16(vaddq_s16(vandq_s8(v80, vmovl_high_s8(v78)), v61), vandq_s8(v79, vmovl_s8(*v78.i8)));
          v62 = vaddq_s16(vaddq_s16(vandq_s8(v80, vmovl_high_s8(v74)), v62), vandq_s8(v79, vmovl_s8(*v74.i8)));
          v58 = (v58 + v16);
          v55 += v13;
          --v59;
        }

        while (v59);
      }

      v81 = vpaddq_s16(v56, v63);
      v82 = vpaddq_s16(v64, v65);
      v19 = vpadalq_u8(v19, vpaddq_s8(vuzp1q_s8(v81, v82), vuzp2q_s8(v81, v82)));
      v20 = vpadalq_s16(v20, vpaddq_s16(vuzp1q_s16(v57, v60), vuzp1q_s16(v61, v62)));
      v51 += 8;
      v7 = vpadalq_s16(v7, vpaddq_s16(vuzp2q_s16(v57, v60), vuzp2q_s16(v61, v62)));
      v52 += 16;
      v53 += 16;
      v54 += 16;
    }

    while (v51 < v50);
    v18 = v51;
  }

  if (v12 < 1)
  {
    v95 = 0uLL;
    v94 = 0uLL;
    v93 = 0uLL;
    v87 = 0uLL;
    v92 = 0uLL;
    v91 = 0uLL;
    v90 = 0uLL;
    v88 = 0uLL;
  }

  else
  {
    v83 = 2 * v18;
    v84 = (v17 + v83);
    v85 = v13 * (v6 - 1) + 2;
    v86 = v14 + v83;
    v87 = 0uLL;
    v88 = 0uLL;
    v89 = v13 + v13 * v6 - 2;
    v90 = 0uLL;
    v91 = 0uLL;
    v92 = 0uLL;
    v93 = 0uLL;
    v94 = 0uLL;
    v95 = 0uLL;
    do
    {
      v96 = vandq_s8(*(v86 + v89), v11);
      v97 = vandq_s8(*(v86 + v15), v11);
      v98 = vandq_s8(*(v86 + v85), v11);
      v99 = vandq_s8(*v84, v11);
      v100 = vcgtq_u8(v97, v96);
      v101 = vcgtq_u8(v97, v98);
      v102 = vcgtq_u8(v96, v97);
      v103 = vcgtq_u8(v98, v97);
      v104 = vcltzq_s8(vshlq_n_s8(vandq_s8(v102, v103), 7uLL));
      v105 = vcltzq_s8(vshlq_n_s8(vandq_s8(v100, v101), 7uLL));
      v106 = veorq_s8(v101, v100);
      v107 = veorq_s8(v103, v102);
      v108 = vcltzq_s8(vshlq_n_s8(vbicq_s8(v107, v106), 7uLL));
      v109 = vcltzq_s8(vshlq_n_s8(vbicq_s8(v106, v107), 7uLL));
      v87 = vsubq_s8(v87, v104);
      v93 = vsubq_s8(v93, v108);
      v94 = vsubq_s8(v94, v109);
      v95 = vsubq_s8(v95, v105);
      v110 = vsubl_u8(*v99.i8, *v97.i8);
      v111 = vsubl_high_u8(v99, v97);
      v88 = vaddq_s16(vaddq_s16(vandq_s8(v111, vmovl_high_s8(v104)), v88), vandq_s8(v110, vmovl_s8(*v104.i8)));
      v90 = vaddq_s16(vaddq_s16(vandq_s8(v111, vmovl_high_s8(v108)), v90), vandq_s8(v110, vmovl_s8(*v108.i8)));
      v91 = vaddq_s16(vaddq_s16(vandq_s8(v111, vmovl_high_s8(v109)), v91), vandq_s8(v110, vmovl_s8(*v109.i8)));
      v92 = vaddq_s16(vaddq_s16(vandq_s8(v111, vmovl_high_s8(v105)), v92), vandq_s8(v110, vmovl_s8(*v105.i8)));
      v84 = (v84 + v16);
      v86 += v13;
      --v12;
    }

    while (v12);
  }

  v112 = vpaddq_s16(v87, v93);
  v113 = vpaddq_s16(v94, v95);
  v114 = vpadalq_u8(v19, vpaddq_s8(vuzp1q_s8(v112, v113), vuzp2q_s8(v112, v113)));
  v115 = vpadalq_s16(v20, vpaddq_s16(vuzp1q_s16(v88, v90), vuzp1q_s16(v91, v92)));
  v116 = vpadalq_s16(v7, vpaddq_s16(vuzp2q_s16(v88, v90), vuzp2q_s16(v91, v92)));
  *a2 = v114.i32[0];
  *(a2 + 6) = vext_s8(*v114.i8, *&vextq_s8(v114, v114, 8uLL), 4uLL);
  *(a2 + 16) = v114.i32[3];
  *a3 = v115.i64[0];
  result = vextq_s8(v115, v116, 8uLL);
  *(a3 + 12) = result;
  *(a3 + 32) = v116.i64[1];
  return result;
}

int8x16_t sub_2774CE7CC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64x2_t a4)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 12);
  v6 = (v5 & 4) == 0;
  *a4.i8 = vdup_n_s32(~(16 * v5) & 0x10);
  v7 = 0uLL;
  v8.i64[0] = -1;
  v8.i64[1] = -1;
  v9 = vshlq_u64(v8, a4);
  v10.i64[0] = 0;
  v10.u64[1] = vdup_n_s32(16 * ((*(a1 + 10) == 0) - (*(a1 + 10) + (v4 & 4)) + ((v5 >> 1) | 0xFFFFFFE)));
  v11 = vshlq_u64(v8, v10);
  v12 = ((v5 >> 3) | 0xFFFFFFFE) - (*(a1 + 11) != 0) - (*(a1 + 11) + v6) + *(a1 + 9) + 1;
  v14 = *a1;
  v13 = a1[1];
  v15 = v13 * v6;
  v16 = a1[3];
  v17 = (a1[2] + v16 * v6);
  if (v4 >= 9)
  {
    v21 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
    v24 = 0uLL;
    v25 = 0uLL;
    v26 = 0uLL;
    v27 = 0uLL;
    if (v12 >= 1)
    {
      v28 = v12;
      v29 = v14;
      v30 = v17;
      do
      {
        v31 = vandq_s8(*(v29 + v13 * (v6 - 1) - 2), v9);
        v32 = vandq_s8(*(v29 + v15), v9);
        v33 = vandq_s8(*(v29 + v13 + v13 * v6 + 2), v9);
        v34 = vandq_s8(*v30, v9);
        v35 = vcgtq_u8(v32, v31);
        v36 = vcgtq_u8(v32, v33);
        v37 = vcgtq_u8(v31, v32);
        v38 = vcgtq_u8(v33, v32);
        v39 = vcltzq_s8(vshlq_n_s8(vandq_s8(v37, v38), 7uLL));
        v40 = vcltzq_s8(vshlq_n_s8(vandq_s8(v35, v36), 7uLL));
        v41 = veorq_s8(v36, v35);
        v42 = veorq_s8(v38, v37);
        v43 = vcltzq_s8(vshlq_n_s8(vbicq_s8(v42, v41), 7uLL));
        v44 = vcltzq_s8(vshlq_n_s8(vbicq_s8(v41, v42), 7uLL));
        v23 = vsubq_s8(v23, v39);
        v22 = vsubq_s8(v22, v43);
        v21 = vsubq_s8(v21, v44);
        v7 = vsubq_s8(v7, v40);
        v45 = vsubl_u8(*v34.i8, *v32.i8);
        v46 = vsubl_high_u8(v34, v32);
        v27 = vaddq_s16(vaddq_s16(vandq_s8(v46, vmovl_high_s8(v39)), v27), vandq_s8(v45, vmovl_s8(*v39.i8)));
        v26 = vaddq_s16(vaddq_s16(vandq_s8(v46, vmovl_high_s8(v43)), v26), vandq_s8(v45, vmovl_s8(*v43.i8)));
        v25 = vaddq_s16(vaddq_s16(vandq_s8(v46, vmovl_high_s8(v44)), v25), vandq_s8(v45, vmovl_s8(*v44.i8)));
        v24 = vaddq_s16(vaddq_s16(vandq_s8(v46, vmovl_high_s8(v40)), v24), vandq_s8(v45, vmovl_s8(*v40.i8)));
        v30 = (v30 + v16);
        v29 += v13;
        --v28;
      }

      while (v28);
    }

    v47 = vpaddq_s16(v23, v22);
    v48 = vpaddq_s16(v21, v7);
    v19 = vpaddlq_u8(vpaddq_s8(vuzp1q_s8(v47, v48), vuzp2q_s8(v47, v48)));
    v49 = vpaddq_s16(vuzp2q_s16(v27, v26), vuzp2q_s16(v25, v24));
    v20 = vpaddlq_s16(vpaddq_s16(vuzp1q_s16(v27, v26), vuzp1q_s16(v25, v24)));
    v7 = vpaddlq_s16(v49);
    v18 = 8;
  }

  else
  {
    v18 = 0;
    v11 = vandq_s8(v11, v9);
    v19 = 0uLL;
    v20 = 0uLL;
  }

  v50 = (v4 - 8);
  if (v18 < v50)
  {
    v51 = v18;
    v52 = v13 + v13 * v6 + 2 * v18 + v14 + 2;
    v53 = v13 * (v6 - 1) + 2 * v18 + v14 - 2;
    v54 = v14 + v15 + 2 * v18;
    do
    {
      if (v12 < 1)
      {
        v65 = 0uLL;
        v64 = 0uLL;
        v63 = 0uLL;
        v56 = 0uLL;
        v62 = 0uLL;
        v61 = 0uLL;
        v60 = 0uLL;
        v57 = 0uLL;
      }

      else
      {
        v55 = 0;
        v56 = 0uLL;
        v57 = 0uLL;
        v58 = (v17 + 2 * v51);
        v59 = v12;
        v60 = 0uLL;
        v61 = 0uLL;
        v62 = 0uLL;
        v63 = 0uLL;
        v64 = 0uLL;
        v65 = 0uLL;
        do
        {
          v66 = *(v54 + v55);
          v67 = *(v53 + v55);
          v68 = *(v52 + v55);
          v69 = vcgtq_u8(v66, v67);
          v70 = vcgtq_u8(v66, v68);
          v71 = vcgtq_u8(v67, v66);
          v72 = vcgtq_u8(v68, v66);
          v73 = vcltzq_s8(vshlq_n_s8(vandq_s8(v71, v72), 7uLL));
          v74 = vcltzq_s8(vshlq_n_s8(vandq_s8(v69, v70), 7uLL));
          v75 = veorq_s8(v70, v69);
          v76 = veorq_s8(v72, v71);
          v77 = vcltzq_s8(vshlq_n_s8(vbicq_s8(v76, v75), 7uLL));
          v78 = vcltzq_s8(vshlq_n_s8(vbicq_s8(v75, v76), 7uLL));
          v56 = vsubq_s8(v56, v73);
          v63 = vsubq_s8(v63, v77);
          v64 = vsubq_s8(v64, v78);
          v65 = vsubq_s8(v65, v74);
          v79 = vsubl_u8(*v58, *v66.i8);
          v80 = vsubl_high_u8(*v58->i8, v66);
          v57 = vaddq_s16(vaddq_s16(vandq_s8(v80, vmovl_high_s8(v73)), v57), vandq_s8(v79, vmovl_s8(*v73.i8)));
          v60 = vaddq_s16(vaddq_s16(vandq_s8(v80, vmovl_high_s8(v77)), v60), vandq_s8(v79, vmovl_s8(*v77.i8)));
          v61 = vaddq_s16(vaddq_s16(vandq_s8(v80, vmovl_high_s8(v78)), v61), vandq_s8(v79, vmovl_s8(*v78.i8)));
          v62 = vaddq_s16(vaddq_s16(vandq_s8(v80, vmovl_high_s8(v74)), v62), vandq_s8(v79, vmovl_s8(*v74.i8)));
          v58 = (v58 + v16);
          v55 += v13;
          --v59;
        }

        while (v59);
      }

      v81 = vpaddq_s16(v56, v63);
      v82 = vpaddq_s16(v64, v65);
      v19 = vpadalq_u8(v19, vpaddq_s8(vuzp1q_s8(v81, v82), vuzp2q_s8(v81, v82)));
      v20 = vpadalq_s16(v20, vpaddq_s16(vuzp1q_s16(v57, v60), vuzp1q_s16(v61, v62)));
      v51 += 8;
      v7 = vpadalq_s16(v7, vpaddq_s16(vuzp2q_s16(v57, v60), vuzp2q_s16(v61, v62)));
      v52 += 16;
      v53 += 16;
      v54 += 16;
    }

    while (v51 < v50);
    v18 = v51;
  }

  if (v12 < 1)
  {
    v95 = 0uLL;
    v94 = 0uLL;
    v93 = 0uLL;
    v87 = 0uLL;
    v92 = 0uLL;
    v91 = 0uLL;
    v90 = 0uLL;
    v88 = 0uLL;
  }

  else
  {
    v83 = 2 * v18;
    v84 = (v17 + v83);
    v85 = v13 + v13 * v6 + 2;
    v86 = v14 + v83;
    v87 = 0uLL;
    v88 = 0uLL;
    v89 = v13 * (v6 - 1) - 2;
    v90 = 0uLL;
    v91 = 0uLL;
    v92 = 0uLL;
    v93 = 0uLL;
    v94 = 0uLL;
    v95 = 0uLL;
    do
    {
      v96 = vandq_s8(*(v86 + v89), v11);
      v97 = vandq_s8(*(v86 + v15), v11);
      v98 = vandq_s8(*(v86 + v85), v11);
      v99 = vandq_s8(*v84, v11);
      v100 = vcgtq_u8(v97, v96);
      v101 = vcgtq_u8(v97, v98);
      v102 = vcgtq_u8(v96, v97);
      v103 = vcgtq_u8(v98, v97);
      v104 = vcltzq_s8(vshlq_n_s8(vandq_s8(v102, v103), 7uLL));
      v105 = vcltzq_s8(vshlq_n_s8(vandq_s8(v100, v101), 7uLL));
      v106 = veorq_s8(v101, v100);
      v107 = veorq_s8(v103, v102);
      v108 = vcltzq_s8(vshlq_n_s8(vbicq_s8(v107, v106), 7uLL));
      v109 = vcltzq_s8(vshlq_n_s8(vbicq_s8(v106, v107), 7uLL));
      v87 = vsubq_s8(v87, v104);
      v93 = vsubq_s8(v93, v108);
      v94 = vsubq_s8(v94, v109);
      v95 = vsubq_s8(v95, v105);
      v110 = vsubl_u8(*v99.i8, *v97.i8);
      v111 = vsubl_high_u8(v99, v97);
      v88 = vaddq_s16(vaddq_s16(vandq_s8(v111, vmovl_high_s8(v104)), v88), vandq_s8(v110, vmovl_s8(*v104.i8)));
      v90 = vaddq_s16(vaddq_s16(vandq_s8(v111, vmovl_high_s8(v108)), v90), vandq_s8(v110, vmovl_s8(*v108.i8)));
      v91 = vaddq_s16(vaddq_s16(vandq_s8(v111, vmovl_high_s8(v109)), v91), vandq_s8(v110, vmovl_s8(*v109.i8)));
      v92 = vaddq_s16(vaddq_s16(vandq_s8(v111, vmovl_high_s8(v105)), v92), vandq_s8(v110, vmovl_s8(*v105.i8)));
      v84 = (v84 + v16);
      v86 += v13;
      --v12;
    }

    while (v12);
  }

  v112 = vpaddq_s16(v87, v93);
  v113 = vpaddq_s16(v94, v95);
  v114 = vpadalq_u8(v19, vpaddq_s8(vuzp1q_s8(v112, v113), vuzp2q_s8(v112, v113)));
  v115 = vpadalq_s16(v20, vpaddq_s16(vuzp1q_s16(v88, v90), vuzp1q_s16(v91, v92)));
  v116 = vpadalq_s16(v7, vpaddq_s16(vuzp2q_s16(v88, v90), vuzp2q_s16(v91, v92)));
  *a2 = v114.i32[0];
  *(a2 + 6) = vext_s8(*v114.i8, *&vextq_s8(v114, v114, 8uLL), 4uLL);
  *(a2 + 16) = v114.i32[3];
  *a3 = v115.i64[0];
  result = vextq_s8(v115, v116, 8uLL);
  *(a3 + 12) = result;
  *(a3 + 32) = v116.i64[1];
  return result;
}

int8x16_t sub_2774CED7C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 11);
  v4 = *(a1 + 12);
  v5 = ~(v4 >> 2) & 1;
  v6 = (v4 >> 3) | 0xFFFFFFFE;
  if (v3)
  {
    v7 = -1;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 8);
  v9.i64[0] = 0;
  v10 = v6 + *(a1 + 9) + v7 - v3 - v5 + 1;
  v12 = *a1;
  v11 = a1[1];
  v13 = *a1 + v11 * v5;
  v14 = a1[3];
  v15 = a1[2] + v14 * v5;
  v16 = v11 + v11 * v5;
  v17 = 0;
  if (v8 <= 8)
  {
    v19 = 0uLL;
    v21 = 0uLL;
    v20 = 0uLL;
  }

  else
  {
    v18 = (v12 + v16);
    v19 = 0uLL;
    v20 = 0uLL;
    v21 = 0uLL;
    do
    {
      v22 = 0uLL;
      v23 = 0uLL;
      v24 = 0uLL;
      v25 = 0uLL;
      v26 = 0uLL;
      v27 = 0uLL;
      v28 = 0uLL;
      v29 = 0uLL;
      if (v10 >= 1)
      {
        v30 = 0;
        v31 = (v13 + 2 * v17);
        v32 = *v31;
        v33 = *(v31 - v11);
        v34 = (v15 + 2 * v17);
        v35 = v18;
        do
        {
          v36 = *v35;
          v37 = vcgtq_u8(v32, *v35);
          v38 = vcgtq_u8(v32, v33);
          v39 = vcgtq_u8(*v35, v32);
          v40 = vcgtq_u8(v33, v32);
          v41 = vandq_s8(v39, v40);
          v42 = vandq_s8(v37, v38);
          v43 = veorq_s8(v37, v38);
          v44 = veorq_s8(v39, v40);
          v45 = vbicq_s8(v44, v43);
          v46 = vbicq_s8(v43, v44);
          v25 = vsubq_s8(v25, v41);
          v24 = vsubq_s8(v24, v45);
          v23 = vsubq_s8(v23, v46);
          v22 = vsubq_s8(v22, v42);
          v47 = vsubl_u8(*v34, *v32.i8);
          v48 = vsubl_high_u8(*v34->i8, v32);
          v29 = vaddq_s16(vaddq_s16(vandq_s8(v48, vmovl_high_s8(v41)), v29), vandq_s8(v47, vmovl_s8(*v41.i8)));
          v28 = vaddq_s16(vaddq_s16(vandq_s8(v48, vmovl_high_s8(v45)), v28), vandq_s8(v47, vmovl_s8(*v45.i8)));
          v27 = vaddq_s16(vaddq_s16(vandq_s8(v48, vmovl_high_s8(v46)), v27), vandq_s8(v47, vmovl_s8(*v46.i8)));
          v34 = (v34 + v14);
          ++v30;
          v26 = vaddq_s16(vaddq_s16(vandq_s8(v48, vmovl_high_s8(v42)), v26), vandq_s8(v47, vmovl_s8(*v42.i8)));
          v35 = (v35 + v11);
          v33 = v32;
          v32 = v36;
        }

        while (v30 < v10);
      }

      v49 = vpaddq_s16(v25, v24);
      v50 = vpaddq_s16(v23, v22);
      v19 = vpadalq_u8(v19, vpaddq_s8(vuzp1q_s8(v49, v50), vuzp2q_s8(v49, v50)));
      v20 = vpadalq_s16(v20, vpaddq_s16(vuzp1q_s16(v29, v28), vuzp1q_s16(v27, v26)));
      v21 = vpadalq_s16(v21, vpaddq_s16(vuzp2q_s16(v29, v28), vuzp2q_s16(v27, v26)));
      v17 += 8;
      ++v18;
    }

    while (v17 < (v8 - 8));
    v17 = ((2 * v8 - 18) & 0xFFFFFFF0) + 16;
  }

  if (v10 < 1)
  {
    v66 = 0uLL;
    v65 = 0uLL;
    v64 = 0uLL;
    v57 = 0uLL;
    v63 = 0uLL;
    v62 = 0uLL;
    v61 = 0uLL;
    v58 = 0uLL;
  }

  else
  {
    v51 = 0;
    v9.u64[1] = vdup_n_s32(-16 * ((a1[4] & 4u) + *(a1 + 10)));
    v52.i64[0] = -1;
    v52.i64[1] = -1;
    v53 = vshlq_u64(v52, v9);
    v54 = (v13 + v17);
    v55 = vandq_s8(*v54, v53);
    v56 = vandq_s8(*(v54 - v11), v53);
    v57 = 0uLL;
    v58 = 0uLL;
    v59 = (v15 + v17);
    v60 = (v12 + v16 + v17);
    v61 = 0uLL;
    v62 = 0uLL;
    v63 = 0uLL;
    v64 = 0uLL;
    v65 = 0uLL;
    v66 = 0uLL;
    do
    {
      v67 = vandq_s8(*v60, v53);
      v68 = vandq_s8(*v59, v53);
      v69 = vcgtq_u8(v55, v67);
      v70 = vcgtq_u8(v55, v56);
      v71 = vcgtq_u8(v67, v55);
      v72 = vcgtq_u8(v56, v55);
      v73 = vandq_s8(v71, v72);
      v74 = vandq_s8(v69, v70);
      v75 = veorq_s8(v69, v70);
      v76 = veorq_s8(v71, v72);
      v77 = vbicq_s8(v76, v75);
      v78 = vbicq_s8(v75, v76);
      v57 = vsubq_s8(v57, v73);
      v64 = vsubq_s8(v64, v77);
      v65 = vsubq_s8(v65, v78);
      v66 = vsubq_s8(v66, v74);
      v79 = vsubl_u8(*v68.i8, *v55.i8);
      v80 = vsubl_high_u8(v68, v55);
      v58 = vaddq_s16(vaddq_s16(vandq_s8(v80, vmovl_high_s8(v73)), v58), vandq_s8(v79, vmovl_s8(*v73.i8)));
      v61 = vaddq_s16(vaddq_s16(vandq_s8(v80, vmovl_high_s8(v77)), v61), vandq_s8(v79, vmovl_s8(*v77.i8)));
      v62 = vaddq_s16(vaddq_s16(vandq_s8(v80, vmovl_high_s8(v78)), v62), vandq_s8(v79, vmovl_s8(*v78.i8)));
      v59 = (v59 + v14);
      ++v51;
      v63 = vaddq_s16(vaddq_s16(vandq_s8(v80, vmovl_high_s8(v74)), v63), vandq_s8(v79, vmovl_s8(*v74.i8)));
      v60 = (v60 + v11);
      v56 = v55;
      v55 = v67;
    }

    while (v51 < v10);
  }

  v81 = vpaddq_s16(v57, v64);
  v82 = vpaddq_s16(v65, v66);
  v83 = vpadalq_u8(v19, vpaddq_s8(vuzp1q_s8(v81, v82), vuzp2q_s8(v81, v82)));
  v84 = vpadalq_s16(v20, vpaddq_s16(vuzp1q_s16(v58, v61), vuzp1q_s16(v62, v63)));
  v85 = vpadalq_s16(v21, vpaddq_s16(vuzp2q_s16(v58, v61), vuzp2q_s16(v62, v63)));
  *a2 = v83.i32[0];
  *(a2 + 6) = vext_s8(*v83.i8, *&vextq_s8(v83, v83, 8uLL), 4uLL);
  *(a2 + 16) = v83.i32[3];
  *a3 = v84.i64[0];
  result = vextq_s8(v84, v85, 8uLL);
  *(a3 + 12) = result;
  *(a3 + 32) = v85.i64[1];
  return result;
}

int8x16_t sub_2774CF11C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64x2_t a4)
{
  v4 = *a1;
  v5 = a1[2];
  v6 = *(a1 + 8);
  v7 = *(a1 + 12);
  *a4.i8 = vdup_n_s32(~(16 * v7) & 0x10);
  v8 = 0uLL;
  v9.i64[0] = -1;
  v9.i64[1] = -1;
  v10 = vshlq_u64(v9, a4);
  v11.i64[0] = 0;
  v11.u64[1] = vdup_n_s32(16 * ((*(a1 + 10) == 0) - (*(a1 + 10) + (v6 & 4)) + ((v7 >> 1) | 0xFFFFFFE)));
  v12 = vshlq_u64(v9, v11);
  v13 = *(a1 + 9) - *(a1 + 11);
  v14 = (v6 - 8);
  if (v6 > 8)
  {
    v16 = a1[1];
    v20 = 0uLL;
    v17 = a1[3];
    v21 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
    v24 = 0uLL;
    v25 = 0uLL;
    v26 = 0uLL;
    if (v13 >= 1)
    {
      v27 = *(a1 + 9) - *(a1 + 11);
      v28 = *a1;
      v29 = a1[2];
      do
      {
        v30 = vandq_s8(*(v28 - 2), v10);
        v31 = vandq_s8(*v28, v10);
        v32 = vandq_s8(*(v28 + 2), v10);
        v33 = vandq_s8(*v29, v10);
        v34 = vcgtq_u8(v31, v30);
        v35 = vcgtq_u8(v31, v32);
        v36 = vcgtq_u8(v30, v31);
        v37 = vcgtq_u8(v32, v31);
        v38 = vcltzq_s8(vshlq_n_s8(vandq_s8(v36, v37), 7uLL));
        v39 = vcltzq_s8(vshlq_n_s8(vandq_s8(v34, v35), 7uLL));
        v40 = veorq_s8(v35, v34);
        v41 = veorq_s8(v37, v36);
        v42 = vcltzq_s8(vshlq_n_s8(vbicq_s8(v41, v40), 7uLL));
        v43 = vcltzq_s8(vshlq_n_s8(vbicq_s8(v40, v41), 7uLL));
        v22 = vsubq_s8(v22, v38);
        v21 = vsubq_s8(v21, v42);
        v20 = vsubq_s8(v20, v43);
        v8 = vsubq_s8(v8, v39);
        v44 = vsubl_u8(*v33.i8, *v31.i8);
        v45 = vsubl_high_u8(v33, v31);
        v26 = vaddq_s16(vaddq_s16(vandq_s8(v45, vmovl_high_s8(v38)), v26), vandq_s8(v44, vmovl_s8(*v38.i8)));
        v25 = vaddq_s16(vaddq_s16(vandq_s8(v45, vmovl_high_s8(v42)), v25), vandq_s8(v44, vmovl_s8(*v42.i8)));
        v24 = vaddq_s16(vaddq_s16(vandq_s8(v45, vmovl_high_s8(v43)), v24), vandq_s8(v44, vmovl_s8(*v43.i8)));
        v23 = vaddq_s16(vaddq_s16(vandq_s8(v45, vmovl_high_s8(v39)), v23), vandq_s8(v44, vmovl_s8(*v39.i8)));
        v28 += v16;
        v29 = (v29 + v17);
        --v27;
      }

      while (v27);
    }

    v46 = vpaddq_s16(v22, v21);
    v47 = vpaddq_s16(v20, v8);
    v8 = vpaddlq_u8(vpaddq_s8(vuzp1q_s8(v46, v47), vuzp2q_s8(v46, v47)));
    v19 = vpaddlq_s16(vpaddq_s16(vuzp1q_s16(v26, v25), vuzp1q_s16(v24, v23)));
    v18 = vpaddlq_s16(vpaddq_s16(vuzp2q_s16(v26, v25), vuzp2q_s16(v24, v23)));
    LODWORD(v15) = 8;
  }

  else
  {
    LODWORD(v15) = 0;
    v12 = vandq_s8(v12, v10);
    v16 = a1[1];
    v17 = a1[3];
    v18 = 0uLL;
    v19 = 0uLL;
  }

  if (v15 < v14)
  {
    v15 = v15;
    do
    {
      if (v13 < 1)
      {
        v58 = 0uLL;
        v57 = 0uLL;
        v55 = 0uLL;
        v48 = 0uLL;
        v54 = 0uLL;
        v53 = 0uLL;
        v52 = 0uLL;
        v49 = 0uLL;
      }

      else
      {
        v48 = 0uLL;
        v49 = 0uLL;
        v50 = (v5 + 2 * v15);
        v51 = *(a1 + 9) - *(a1 + 11);
        v52 = 0uLL;
        v53 = 0uLL;
        v54 = 0uLL;
        v55 = 0uLL;
        v56 = v4 + 2 * v15;
        v57 = 0uLL;
        v58 = 0uLL;
        do
        {
          v59 = *(v56 - 2);
          v60 = *(v56 + 2);
          v61 = vcgtq_u8(*v56, v59);
          v62 = vcgtq_u8(*v56, v60);
          v63 = vcgtq_u8(v59, *v56);
          v64 = vcgtq_u8(v60, *v56);
          v65 = vcltzq_s8(vshlq_n_s8(vandq_s8(v63, v64), 7uLL));
          v66 = vcltzq_s8(vshlq_n_s8(vandq_s8(v61, v62), 7uLL));
          v67 = veorq_s8(v62, v61);
          v68 = veorq_s8(v64, v63);
          v69 = vcltzq_s8(vshlq_n_s8(vbicq_s8(v68, v67), 7uLL));
          v70 = vcltzq_s8(vshlq_n_s8(vbicq_s8(v67, v68), 7uLL));
          v48 = vsubq_s8(v48, v65);
          v55 = vsubq_s8(v55, v69);
          v57 = vsubq_s8(v57, v70);
          v58 = vsubq_s8(v58, v66);
          v71 = vsubl_u8(*v50, *v56);
          v72 = vsubl_high_u8(*v50->i8, *v56);
          v49 = vaddq_s16(vaddq_s16(vandq_s8(v72, vmovl_high_s8(v65)), v49), vandq_s8(v71, vmovl_s8(*v65.i8)));
          v52 = vaddq_s16(vaddq_s16(vandq_s8(v72, vmovl_high_s8(v69)), v52), vandq_s8(v71, vmovl_s8(*v69.i8)));
          v53 = vaddq_s16(vaddq_s16(vandq_s8(v72, vmovl_high_s8(v70)), v53), vandq_s8(v71, vmovl_s8(*v70.i8)));
          v54 = vaddq_s16(vaddq_s16(vandq_s8(v72, vmovl_high_s8(v66)), v54), vandq_s8(v71, vmovl_s8(*v66.i8)));
          v56 += v16;
          v50 = (v50 + v17);
          --v51;
        }

        while (v51);
      }

      v73 = vpaddq_s16(v48, v55);
      v74 = vpaddq_s16(v57, v58);
      v8 = vpadalq_u8(v8, vpaddq_s8(vuzp1q_s8(v73, v74), vuzp2q_s8(v73, v74)));
      v19 = vpadalq_s16(v19, vpaddq_s16(vuzp1q_s16(v49, v52), vuzp1q_s16(v53, v54)));
      v18 = vpadalq_s16(v18, vpaddq_s16(vuzp2q_s16(v49, v52), vuzp2q_s16(v53, v54)));
      v15 += 8;
    }

    while (v15 < v14);
  }

  if (v13 < 1)
  {
    v85 = 0uLL;
    v84 = 0uLL;
    v83 = 0uLL;
    v75 = 0uLL;
    v82 = 0uLL;
    v81 = 0uLL;
    v80 = 0uLL;
    v77 = 0uLL;
  }

  else
  {
    v75 = 0uLL;
    v76 = (2 * v15);
    v77 = 0uLL;
    v78 = (v5 + v76);
    v79 = v4 + v76;
    v80 = 0uLL;
    v81 = 0uLL;
    v82 = 0uLL;
    v83 = 0uLL;
    v84 = 0uLL;
    v85 = 0uLL;
    do
    {
      v86 = vandq_s8(*(v79 - 2), v12);
      v87 = vandq_s8(*v79, v12);
      v88 = vandq_s8(*(v79 + 2), v12);
      v89 = vandq_s8(*v78, v12);
      v90 = vcgtq_u8(v87, v86);
      v91 = vcgtq_u8(v87, v88);
      v92 = vcgtq_u8(v86, v87);
      v93 = vcgtq_u8(v88, v87);
      v94 = vcltzq_s8(vshlq_n_s8(vandq_s8(v92, v93), 7uLL));
      v95 = vcltzq_s8(vshlq_n_s8(vandq_s8(v90, v91), 7uLL));
      v96 = veorq_s8(v91, v90);
      v97 = veorq_s8(v93, v92);
      v98 = vcltzq_s8(vshlq_n_s8(vbicq_s8(v97, v96), 7uLL));
      v99 = vcltzq_s8(vshlq_n_s8(vbicq_s8(v96, v97), 7uLL));
      v75 = vsubq_s8(v75, v94);
      v83 = vsubq_s8(v83, v98);
      v84 = vsubq_s8(v84, v99);
      v85 = vsubq_s8(v85, v95);
      v100 = vsubl_u8(*v89.i8, *v87.i8);
      v101 = vsubl_high_u8(v89, v87);
      v77 = vaddq_s16(vaddq_s16(vandq_s8(v101, vmovl_high_s8(v94)), v77), vandq_s8(v100, vmovl_s8(*v94.i8)));
      v80 = vaddq_s16(vaddq_s16(vandq_s8(v101, vmovl_high_s8(v98)), v80), vandq_s8(v100, vmovl_s8(*v98.i8)));
      v81 = vaddq_s16(vaddq_s16(vandq_s8(v101, vmovl_high_s8(v99)), v81), vandq_s8(v100, vmovl_s8(*v99.i8)));
      v82 = vaddq_s16(vaddq_s16(vandq_s8(v101, vmovl_high_s8(v95)), v82), vandq_s8(v100, vmovl_s8(*v95.i8)));
      v79 += v16;
      v78 = (v78 + v17);
      --v13;
    }

    while (v13);
  }

  v102 = vpaddq_s16(v75, v83);
  v103 = vpaddq_s16(v84, v85);
  v104 = vpadalq_u8(v8, vpaddq_s8(vuzp1q_s8(v102, v103), vuzp2q_s8(v102, v103)));
  v105 = vpadalq_s16(v19, vpaddq_s16(vuzp1q_s16(v77, v80), vuzp1q_s16(v81, v82)));
  v106 = vpadalq_s16(v18, vpaddq_s16(vuzp2q_s16(v77, v80), vuzp2q_s16(v81, v82)));
  *a2 = v104.i32[0];
  *(a2 + 6) = vext_s8(*v104.i8, *&vextq_s8(v104, v104, 8uLL), 4uLL);
  *(a2 + 16) = v104.i32[3];
  *a3 = v105.i64[0];
  result = vextq_s8(v105, v106, 8uLL);
  *(a3 + 12) = result;
  *(a3 + 32) = v106.i64[1];
  return result;
}

int32x4_t sub_2774CF640(uint64_t *a1, _DWORD *a2, void *a3, uint64x2_t a4)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 12);
  v6 = (v5 & 4) == 0;
  *a4.i8 = vdup_n_s32(~(8 * v5) & 8);
  v7 = 0uLL;
  v8.i64[0] = -1;
  v8.i64[1] = -1;
  v9 = vshlq_u64(v8, a4);
  v10.i64[0] = 0;
  v10.u64[1] = vdup_n_s32(8 * ((*(a1 + 10) == 0) - (*(a1 + 10) + (v4 & 8)) + ((v5 >> 1) | 0x1FFFFFFE)));
  v11 = vshlq_u64(v8, v10);
  v12 = ((v5 >> 3) | 0xFFFFFFFE) - (*(a1 + 11) != 0) - (*(a1 + 11) + v6) + *(a1 + 9) + 1;
  v14 = *a1;
  v13 = a1[1];
  v15 = v13 * v6;
  v16 = a1[3];
  v17 = (a1[2] + v16 * v6);
  if (v4 >= 17)
  {
    if (v12 < 1)
    {
      v28 = 0uLL;
      v27 = 0uLL;
      v26 = 0uLL;
      v21 = 0uLL;
      v22 = 0uLL;
    }

    else
    {
      v21 = 0uLL;
      v22 = 0uLL;
      v23 = v12;
      v24 = v14;
      v25 = v17;
      v26 = 0uLL;
      v27 = 0uLL;
      v28 = 0uLL;
      do
      {
        v29 = vandq_s8(*(v24 + v13 + v13 * v6 - 1), v9);
        v30 = vandq_s8(*(v24 + v15), v9);
        v31 = vandq_s8(*(v24 + v13 * (v6 - 1) + 1), v9);
        v32 = vandq_s8(*v25, v9);
        v33 = vcgtq_u8(v30, v29);
        v34 = vcgtq_u8(v30, v31);
        v35 = vcgtq_u8(v29, v30);
        v36 = vcgtq_u8(v31, v30);
        v37 = vcltzq_s8(vshlq_n_s8(vandq_s8(v35, v36), 7uLL));
        v38 = vcltzq_s8(vshlq_n_s8(vandq_s8(v33, v34), 7uLL));
        v39 = veorq_s8(v34, v33);
        v40 = veorq_s8(v36, v35);
        v41 = vcltzq_s8(vshlq_n_s8(vbicq_s8(v40, v39), 7uLL));
        v42 = vcltzq_s8(vshlq_n_s8(vbicq_s8(v39, v40), 7uLL));
        v21 = vsubq_s8(v21, v37);
        v26 = vsubq_s8(v26, v41);
        v27 = vsubq_s8(v27, v42);
        v28 = vsubq_s8(v28, v38);
        v43 = vsubl_u8(*v32.i8, *v30.i8);
        v44 = vsubl_high_u8(v32, v30);
        v22 = vpadalq_s16(v22, vpaddq_s16(vaddq_s16(vandq_s8(v43, vmovl_s8(*v37.i8)), vandq_s8(v44, vmovl_high_s8(v37))), vaddq_s16(vandq_s8(v43, vmovl_s8(*v41.i8)), vandq_s8(v44, vmovl_high_s8(v41)))));
        v7 = vpadalq_s16(v7, vpaddq_s16(vaddq_s16(vandq_s8(v43, vmovl_s8(*v42.i8)), vandq_s8(v44, vmovl_high_s8(v42))), vaddq_s16(vandq_s8(v43, vmovl_s8(*v38.i8)), vandq_s8(v44, vmovl_high_s8(v38)))));
        v25 = (v25 + v16);
        v24 += v13;
        --v23;
      }

      while (v23);
    }

    v20 = vpaddlq_u8(vpaddq_s8(v21, v26));
    v19 = vpaddlq_u8(vpaddq_s8(v27, v28));
    v7 = vpaddq_s32(v22, v7);
    v18 = 16;
  }

  else
  {
    v18 = 0;
    v11 = vandq_s8(v11, v9);
    v19 = 0uLL;
    v20 = 0uLL;
  }

  v45 = (v4 - 16);
  if (v18 < v45)
  {
    v46 = v18;
    v47 = v13 * (v6 - 1) + v18 + v14 + 1;
    v48 = v13 + v13 * v6 + v18 + v14 - 1;
    v49 = v14 + v15 + v18;
    do
    {
      if (v12 < 1)
      {
        v55 = 0uLL;
        v58 = 0uLL;
        v57 = 0uLL;
        v56 = 0uLL;
        v52 = 0uLL;
        v53 = 0uLL;
      }

      else
      {
        v50 = 0;
        v51 = &v17->i8[v46];
        v52 = 0uLL;
        v53 = 0uLL;
        v54 = v12;
        v55 = 0uLL;
        v56 = 0uLL;
        v57 = 0uLL;
        v58 = 0uLL;
        do
        {
          v59 = *(v49 + v50);
          v60 = *(v48 + v50);
          v61 = *(v47 + v50);
          v62 = vcgtq_u8(v59, v60);
          v63 = vcgtq_u8(v59, v61);
          v64 = vcgtq_u8(v60, v59);
          v65 = vcgtq_u8(v61, v59);
          v66 = vcltzq_s8(vshlq_n_s8(vandq_s8(v64, v65), 7uLL));
          v67 = vcltzq_s8(vshlq_n_s8(vandq_s8(v62, v63), 7uLL));
          v68 = veorq_s8(v63, v62);
          v69 = veorq_s8(v65, v64);
          v70 = vcltzq_s8(vshlq_n_s8(vbicq_s8(v69, v68), 7uLL));
          v71 = vcltzq_s8(vshlq_n_s8(vbicq_s8(v68, v69), 7uLL));
          v52 = vsubq_s8(v52, v66);
          v56 = vsubq_s8(v56, v70);
          v57 = vsubq_s8(v57, v71);
          v58 = vsubq_s8(v58, v67);
          v72 = vsubl_u8(*v51, *v59.i8);
          v73 = vsubl_high_u8(*v51->i8, v59);
          v53 = vpadalq_s16(v53, vpaddq_s16(vaddq_s16(vandq_s8(v72, vmovl_s8(*v66.i8)), vandq_s8(v73, vmovl_high_s8(v66))), vaddq_s16(vandq_s8(v72, vmovl_s8(*v70.i8)), vandq_s8(v73, vmovl_high_s8(v70)))));
          v55 = vpadalq_s16(v55, vpaddq_s16(vaddq_s16(vandq_s8(v72, vmovl_s8(*v71.i8)), vandq_s8(v73, vmovl_high_s8(v71))), vaddq_s16(vandq_s8(v72, vmovl_s8(*v67.i8)), vandq_s8(v73, vmovl_high_s8(v67)))));
          v51 = (v51 + v16);
          v50 += v13;
          --v54;
        }

        while (v54);
      }

      v20 = vpadalq_u8(v20, vpaddq_s8(v52, v56));
      v19 = vpadalq_u8(v19, vpaddq_s8(v57, v58));
      v46 += 16;
      v7 = vaddq_s32(vpaddq_s32(v53, v55), v7);
      v47 += 16;
      v48 += 16;
      v49 += 16;
    }

    while (v46 < v45);
    v18 = v46;
  }

  if (v12 < 1)
  {
    v80 = 0uLL;
    v83 = 0uLL;
    v82 = 0uLL;
    v81 = 0uLL;
    v78 = 0uLL;
    v79 = 0uLL;
  }

  else
  {
    v74 = (v17 + v18);
    v75 = v13 * (v6 - 1) + 1;
    v76 = v14 + v18;
    v77 = v13 + v13 * v6 - 1;
    v78 = 0uLL;
    v79 = 0uLL;
    v80 = 0uLL;
    v81 = 0uLL;
    v82 = 0uLL;
    v83 = 0uLL;
    do
    {
      v84 = vandq_s8(*(v76 + v77), v11);
      v85 = vandq_s8(*(v76 + v15), v11);
      v86 = vandq_s8(*(v76 + v75), v11);
      v87 = vandq_s8(*v74, v11);
      v88 = vcgtq_u8(v85, v84);
      v89 = vcgtq_u8(v85, v86);
      v90 = vcgtq_u8(v84, v85);
      v91 = vcgtq_u8(v86, v85);
      v92 = vcltzq_s8(vshlq_n_s8(vandq_s8(v90, v91), 7uLL));
      v93 = vcltzq_s8(vshlq_n_s8(vandq_s8(v88, v89), 7uLL));
      v94 = veorq_s8(v89, v88);
      v95 = veorq_s8(v91, v90);
      v96 = vcltzq_s8(vshlq_n_s8(vbicq_s8(v95, v94), 7uLL));
      v97 = vcltzq_s8(vshlq_n_s8(vbicq_s8(v94, v95), 7uLL));
      v78 = vsubq_s8(v78, v92);
      v81 = vsubq_s8(v81, v96);
      v82 = vsubq_s8(v82, v97);
      v83 = vsubq_s8(v83, v93);
      v98 = vsubl_u8(*v87.i8, *v85.i8);
      v99 = vsubl_high_u8(v87, v85);
      v79 = vpadalq_s16(v79, vpaddq_s16(vaddq_s16(vandq_s8(v98, vmovl_s8(*v92.i8)), vandq_s8(v99, vmovl_high_s8(v92))), vaddq_s16(vandq_s8(v98, vmovl_s8(*v96.i8)), vandq_s8(v99, vmovl_high_s8(v96)))));
      v80 = vpadalq_s16(v80, vpaddq_s16(vaddq_s16(vandq_s8(v98, vmovl_s8(*v97.i8)), vandq_s8(v99, vmovl_high_s8(v97))), vaddq_s16(vandq_s8(v98, vmovl_s8(*v93.i8)), vandq_s8(v99, vmovl_high_s8(v93)))));
      v74 = (v74 + v16);
      v76 += v13;
      --v12;
    }

    while (v12);
  }

  result = vaddq_s32(vpaddq_s32(v79, v80), v7);
  v101 = vpaddq_s16(vpadalq_u8(v20, vpaddq_s8(v78, v81)), vpadalq_u8(v19, vpaddq_s8(v82, v83)));
  v101.i64[0] = vpaddq_s16(v101, v101).u64[0];
  *a2 = v101.i32[0];
  *(a2 + 6) = v101.i32[1];
  *a3 = result.i64[0];
  *(a3 + 12) = result.i64[1];
  return result;
}

int32x4_t sub_2774CFB6C(uint64_t *a1, _DWORD *a2, void *a3, uint64x2_t a4)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 12);
  v6 = (v5 & 4) == 0;
  *a4.i8 = vdup_n_s32(~(8 * v5) & 8);
  v7 = 0uLL;
  v8.i64[0] = -1;
  v8.i64[1] = -1;
  v9 = vshlq_u64(v8, a4);
  v10.i64[0] = 0;
  v10.u64[1] = vdup_n_s32(8 * ((*(a1 + 10) == 0) - (*(a1 + 10) + (v4 & 8)) + ((v5 >> 1) | 0x1FFFFFFE)));
  v11 = vshlq_u64(v8, v10);
  v12 = ((v5 >> 3) | 0xFFFFFFFE) - (*(a1 + 11) != 0) - (*(a1 + 11) + v6) + *(a1 + 9) + 1;
  v14 = *a1;
  v13 = a1[1];
  v15 = v13 * v6;
  v16 = a1[3];
  v17 = (a1[2] + v16 * v6);
  if (v4 >= 17)
  {
    if (v12 < 1)
    {
      v28 = 0uLL;
      v27 = 0uLL;
      v26 = 0uLL;
      v21 = 0uLL;
      v22 = 0uLL;
    }

    else
    {
      v21 = 0uLL;
      v22 = 0uLL;
      v23 = v12;
      v24 = v14;
      v25 = v17;
      v26 = 0uLL;
      v27 = 0uLL;
      v28 = 0uLL;
      do
      {
        v29 = vandq_s8(*(v24 + v13 * (v6 - 1) - 1), v9);
        v30 = vandq_s8(*(v24 + v15), v9);
        v31 = vandq_s8(*(v24 + v13 + v13 * v6 + 1), v9);
        v32 = vandq_s8(*v25, v9);
        v33 = vcgtq_u8(v30, v29);
        v34 = vcgtq_u8(v30, v31);
        v35 = vcgtq_u8(v29, v30);
        v36 = vcgtq_u8(v31, v30);
        v37 = vcltzq_s8(vshlq_n_s8(vandq_s8(v35, v36), 7uLL));
        v38 = vcltzq_s8(vshlq_n_s8(vandq_s8(v33, v34), 7uLL));
        v39 = veorq_s8(v34, v33);
        v40 = veorq_s8(v36, v35);
        v41 = vcltzq_s8(vshlq_n_s8(vbicq_s8(v40, v39), 7uLL));
        v42 = vcltzq_s8(vshlq_n_s8(vbicq_s8(v39, v40), 7uLL));
        v21 = vsubq_s8(v21, v37);
        v26 = vsubq_s8(v26, v41);
        v27 = vsubq_s8(v27, v42);
        v28 = vsubq_s8(v28, v38);
        v43 = vsubl_u8(*v32.i8, *v30.i8);
        v44 = vsubl_high_u8(v32, v30);
        v22 = vpadalq_s16(v22, vpaddq_s16(vaddq_s16(vandq_s8(v43, vmovl_s8(*v37.i8)), vandq_s8(v44, vmovl_high_s8(v37))), vaddq_s16(vandq_s8(v43, vmovl_s8(*v41.i8)), vandq_s8(v44, vmovl_high_s8(v41)))));
        v7 = vpadalq_s16(v7, vpaddq_s16(vaddq_s16(vandq_s8(v43, vmovl_s8(*v42.i8)), vandq_s8(v44, vmovl_high_s8(v42))), vaddq_s16(vandq_s8(v43, vmovl_s8(*v38.i8)), vandq_s8(v44, vmovl_high_s8(v38)))));
        v25 = (v25 + v16);
        v24 += v13;
        --v23;
      }

      while (v23);
    }

    v20 = vpaddlq_u8(vpaddq_s8(v21, v26));
    v19 = vpaddlq_u8(vpaddq_s8(v27, v28));
    v7 = vpaddq_s32(v22, v7);
    v18 = 16;
  }

  else
  {
    v18 = 0;
    v11 = vandq_s8(v11, v9);
    v19 = 0uLL;
    v20 = 0uLL;
  }

  v45 = (v4 - 16);
  if (v18 < v45)
  {
    v46 = v18;
    v47 = v13 + v13 * v6 + v18 + v14 + 1;
    v48 = v13 * (v6 - 1) + v18 + v14 - 1;
    v49 = v14 + v15 + v18;
    do
    {
      if (v12 < 1)
      {
        v55 = 0uLL;
        v58 = 0uLL;
        v57 = 0uLL;
        v56 = 0uLL;
        v52 = 0uLL;
        v53 = 0uLL;
      }

      else
      {
        v50 = 0;
        v51 = &v17->i8[v46];
        v52 = 0uLL;
        v53 = 0uLL;
        v54 = v12;
        v55 = 0uLL;
        v56 = 0uLL;
        v57 = 0uLL;
        v58 = 0uLL;
        do
        {
          v59 = *(v49 + v50);
          v60 = *(v48 + v50);
          v61 = *(v47 + v50);
          v62 = vcgtq_u8(v59, v60);
          v63 = vcgtq_u8(v59, v61);
          v64 = vcgtq_u8(v60, v59);
          v65 = vcgtq_u8(v61, v59);
          v66 = vcltzq_s8(vshlq_n_s8(vandq_s8(v64, v65), 7uLL));
          v67 = vcltzq_s8(vshlq_n_s8(vandq_s8(v62, v63), 7uLL));
          v68 = veorq_s8(v63, v62);
          v69 = veorq_s8(v65, v64);
          v70 = vcltzq_s8(vshlq_n_s8(vbicq_s8(v69, v68), 7uLL));
          v71 = vcltzq_s8(vshlq_n_s8(vbicq_s8(v68, v69), 7uLL));
          v52 = vsubq_s8(v52, v66);
          v56 = vsubq_s8(v56, v70);
          v57 = vsubq_s8(v57, v71);
          v58 = vsubq_s8(v58, v67);
          v72 = vsubl_u8(*v51, *v59.i8);
          v73 = vsubl_high_u8(*v51->i8, v59);
          v53 = vpadalq_s16(v53, vpaddq_s16(vaddq_s16(vandq_s8(v72, vmovl_s8(*v66.i8)), vandq_s8(v73, vmovl_high_s8(v66))), vaddq_s16(vandq_s8(v72, vmovl_s8(*v70.i8)), vandq_s8(v73, vmovl_high_s8(v70)))));
          v55 = vpadalq_s16(v55, vpaddq_s16(vaddq_s16(vandq_s8(v72, vmovl_s8(*v71.i8)), vandq_s8(v73, vmovl_high_s8(v71))), vaddq_s16(vandq_s8(v72, vmovl_s8(*v67.i8)), vandq_s8(v73, vmovl_high_s8(v67)))));
          v51 = (v51 + v16);
          v50 += v13;
          --v54;
        }

        while (v54);
      }

      v20 = vpadalq_u8(v20, vpaddq_s8(v52, v56));
      v19 = vpadalq_u8(v19, vpaddq_s8(v57, v58));
      v46 += 16;
      v7 = vaddq_s32(vpaddq_s32(v53, v55), v7);
      v47 += 16;
      v48 += 16;
      v49 += 16;
    }

    while (v46 < v45);
    v18 = v46;
  }

  if (v12 < 1)
  {
    v80 = 0uLL;
    v83 = 0uLL;
    v82 = 0uLL;
    v81 = 0uLL;
    v78 = 0uLL;
    v79 = 0uLL;
  }

  else
  {
    v74 = (v17 + v18);
    v75 = v13 + v13 * v6 + 1;
    v76 = v14 + v18;
    v77 = v13 * (v6 - 1) - 1;
    v78 = 0uLL;
    v79 = 0uLL;
    v80 = 0uLL;
    v81 = 0uLL;
    v82 = 0uLL;
    v83 = 0uLL;
    do
    {
      v84 = vandq_s8(*(v76 + v77), v11);
      v85 = vandq_s8(*(v76 + v15), v11);
      v86 = vandq_s8(*(v76 + v75), v11);
      v87 = vandq_s8(*v74, v11);
      v88 = vcgtq_u8(v85, v84);
      v89 = vcgtq_u8(v85, v86);
      v90 = vcgtq_u8(v84, v85);
      v91 = vcgtq_u8(v86, v85);
      v92 = vcltzq_s8(vshlq_n_s8(vandq_s8(v90, v91), 7uLL));
      v93 = vcltzq_s8(vshlq_n_s8(vandq_s8(v88, v89), 7uLL));
      v94 = veorq_s8(v89, v88);
      v95 = veorq_s8(v91, v90);
      v96 = vcltzq_s8(vshlq_n_s8(vbicq_s8(v95, v94), 7uLL));
      v97 = vcltzq_s8(vshlq_n_s8(vbicq_s8(v94, v95), 7uLL));
      v78 = vsubq_s8(v78, v92);
      v81 = vsubq_s8(v81, v96);
      v82 = vsubq_s8(v82, v97);
      v83 = vsubq_s8(v83, v93);
      v98 = vsubl_u8(*v87.i8, *v85.i8);
      v99 = vsubl_high_u8(v87, v85);
      v79 = vpadalq_s16(v79, vpaddq_s16(vaddq_s16(vandq_s8(v98, vmovl_s8(*v92.i8)), vandq_s8(v99, vmovl_high_s8(v92))), vaddq_s16(vandq_s8(v98, vmovl_s8(*v96.i8)), vandq_s8(v99, vmovl_high_s8(v96)))));
      v80 = vpadalq_s16(v80, vpaddq_s16(vaddq_s16(vandq_s8(v98, vmovl_s8(*v97.i8)), vandq_s8(v99, vmovl_high_s8(v97))), vaddq_s16(vandq_s8(v98, vmovl_s8(*v93.i8)), vandq_s8(v99, vmovl_high_s8(v93)))));
      v74 = (v74 + v16);
      v76 += v13;
      --v12;
    }

    while (v12);
  }

  result = vaddq_s32(vpaddq_s32(v79, v80), v7);
  v101 = vpaddq_s16(vpadalq_u8(v20, vpaddq_s8(v78, v81)), vpadalq_u8(v19, vpaddq_s8(v82, v83)));
  v101.i64[0] = vpaddq_s16(v101, v101).u64[0];
  *a2 = v101.i32[0];
  *(a2 + 6) = v101.i32[1];
  *a3 = result.i64[0];
  *(a3 + 12) = result.i64[1];
  return result;
}

int32x4_t sub_2774D0098(uint64_t *a1, _DWORD *a2, void *a3)
{
  v3 = *(a1 + 11);
  v4 = *(a1 + 12);
  v5 = ~(v4 >> 2) & 1;
  v6 = (v4 >> 3) | 0xFFFFFFFE;
  if (v3)
  {
    v7 = -1;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 8);
  v9.i64[0] = 0;
  v10 = v6 + *(a1 + 9) + v7 - v3 - v5 + 1;
  v12 = *a1;
  v11 = a1[1];
  v13 = *a1 + v11 * v5;
  v14 = a1[3];
  v15 = a1[2] + v14 * v5;
  v16 = v11 + v11 * v5;
  v17 = 0;
  if (v8 <= 16)
  {
    v19 = 0uLL;
    v21 = 0uLL;
    v20 = 0uLL;
  }

  else
  {
    v18 = (v12 + v16);
    v19 = 0uLL;
    v20 = 0uLL;
    v21 = 0uLL;
    do
    {
      v22 = 0uLL;
      v23 = 0uLL;
      v24 = 0uLL;
      v25 = 0uLL;
      v26 = 0uLL;
      v27 = 0uLL;
      if (v10 >= 1)
      {
        v28 = 0;
        v29 = *(v13 + v17);
        v30 = *(v13 + v17 - v11);
        v31 = (v15 + v17);
        v32 = v18;
        do
        {
          v33 = *v32;
          v34 = vcgtq_u8(v29, v30);
          v35 = vcgtq_u8(v29, *v32);
          v36 = vcgtq_u8(v30, v29);
          v37 = vcgtq_u8(*v32, v29);
          v38 = vandq_s8(v36, v37);
          v39 = vandq_s8(v34, v35);
          v40 = veorq_s8(v35, v34);
          v41 = veorq_s8(v37, v36);
          v42 = vbicq_s8(v41, v40);
          v43 = vbicq_s8(v40, v41);
          v25 = vsubq_s8(v25, v38);
          v24 = vsubq_s8(v24, v42);
          v23 = vsubq_s8(v23, v43);
          v22 = vsubq_s8(v22, v39);
          v44 = vsubl_u8(*v31, *v29.i8);
          v45 = vsubl_high_u8(*v31->i8, v29);
          v27 = vpadalq_s16(v27, vpaddq_s16(vaddq_s16(vandq_s8(v44, vmovl_s8(*v38.i8)), vandq_s8(v45, vmovl_high_s8(v38))), vaddq_s16(vandq_s8(v44, vmovl_s8(*v42.i8)), vandq_s8(v45, vmovl_high_s8(v42)))));
          v31 = (v31 + v14);
          ++v28;
          v26 = vpadalq_s16(v26, vpaddq_s16(vaddq_s16(vandq_s8(v44, vmovl_s8(*v43.i8)), vandq_s8(v45, vmovl_high_s8(v43))), vaddq_s16(vandq_s8(v44, vmovl_s8(*v39.i8)), vandq_s8(v45, vmovl_high_s8(v39)))));
          v32 = (v32 + v11);
          v30 = v29;
          v29 = v33;
        }

        while (v28 < v10);
      }

      v20 = vpadalq_u8(v20, vpaddq_s8(v25, v24));
      v21 = vpadalq_u8(v21, vpaddq_s8(v23, v22));
      v19 = vaddq_s32(vpaddq_s32(v27, v26), v19);
      v17 += 16;
      ++v18;
    }

    while (v17 < (v8 - 16));
    v17 = ((v8 - 17) & 0xFFFFFFF0) + 16;
  }

  if (v10 < 1)
  {
    v56 = 0uLL;
    v59 = 0uLL;
    v58 = 0uLL;
    v57 = 0uLL;
    v54 = 0uLL;
    v55 = 0uLL;
  }

  else
  {
    v46 = 0;
    v9.u64[1] = vdup_n_s32(-8 * ((a1[4] & 8u) + *(a1 + 10)));
    v47.i64[0] = -1;
    v47.i64[1] = -1;
    v48 = vshlq_u64(v47, v9);
    v49 = (v13 + v17);
    v50 = vandq_s8(*v49, v48);
    v51 = vandq_s8(*(v49 - v11), v48);
    v52 = (v15 + v17);
    v53 = (v12 + v17 + v16);
    v54 = 0uLL;
    v55 = 0uLL;
    v56 = 0uLL;
    v57 = 0uLL;
    v58 = 0uLL;
    v59 = 0uLL;
    do
    {
      v60 = vandq_s8(*v53, v48);
      v61 = vandq_s8(*v52, v48);
      v62 = vcgtq_u8(v50, v51);
      v63 = vcgtq_u8(v50, v60);
      v64 = vcgtq_u8(v51, v50);
      v65 = vcgtq_u8(v60, v50);
      v66 = vandq_s8(v64, v65);
      v67 = vandq_s8(v62, v63);
      v68 = veorq_s8(v63, v62);
      v69 = veorq_s8(v65, v64);
      v70 = vbicq_s8(v69, v68);
      v71 = vbicq_s8(v68, v69);
      v54 = vsubq_s8(v54, v66);
      v57 = vsubq_s8(v57, v70);
      v58 = vsubq_s8(v58, v71);
      v59 = vsubq_s8(v59, v67);
      v72 = vsubl_u8(*v61.i8, *v50.i8);
      v73 = vsubl_high_u8(v61, v50);
      v55 = vpadalq_s16(v55, vpaddq_s16(vaddq_s16(vandq_s8(v72, vmovl_s8(*v66.i8)), vandq_s8(v73, vmovl_high_s8(v66))), vaddq_s16(vandq_s8(v72, vmovl_s8(*v70.i8)), vandq_s8(v73, vmovl_high_s8(v70)))));
      v52 = (v52 + v14);
      ++v46;
      v56 = vpadalq_s16(v56, vpaddq_s16(vaddq_s16(vandq_s8(v72, vmovl_s8(*v71.i8)), vandq_s8(v73, vmovl_high_s8(v71))), vaddq_s16(vandq_s8(v72, vmovl_s8(*v67.i8)), vandq_s8(v73, vmovl_high_s8(v67)))));
      v53 = (v53 + v11);
      v51 = v50;
      v50 = v60;
    }

    while (v46 < v10);
  }

  result = vaddq_s32(vpaddq_s32(v55, v56), v19);
  v75 = vpaddq_s16(vpadalq_u8(v20, vpaddq_s8(v54, v57)), vpadalq_u8(v21, vpaddq_s8(v58, v59)));
  v75.i64[0] = vpaddq_s16(v75, v75).u64[0];
  *a2 = v75.i32[0];
  *(a2 + 6) = v75.i32[1];
  *a3 = result.i64[0];
  *(a3 + 12) = result.i64[1];
  return result;
}

int32x4_t sub_2774D03D8(uint64_t *a1, _DWORD *a2, void *a3, uint64x2_t a4)
{
  v4 = *a1;
  v5 = a1[2];
  v6 = *(a1 + 8);
  v7 = *(a1 + 12);
  *a4.i8 = vdup_n_s32(~(8 * v7) & 8);
  v8 = 0uLL;
  v9.i64[0] = -1;
  v9.i64[1] = -1;
  v10 = vshlq_u64(v9, a4);
  v11.i64[0] = 0;
  v11.u64[1] = vdup_n_s32(8 * ((*(a1 + 10) == 0) - (*(a1 + 10) + (v6 & 8)) + ((v7 >> 1) | 0x1FFFFFFE)));
  v12 = vshlq_u64(v9, v11);
  v13 = *(a1 + 9) - *(a1 + 11);
  v14 = (v6 - 16);
  if (v6 > 16)
  {
    v16 = a1[1];
    v17 = a1[3];
    if (v13 < 1)
    {
      v27 = 0uLL;
      v26 = 0uLL;
      v25 = 0uLL;
      v20 = 0uLL;
      v21 = 0uLL;
    }

    else
    {
      v20 = 0uLL;
      v21 = 0uLL;
      v22 = *(a1 + 9) - *(a1 + 11);
      v23 = *a1;
      v24 = a1[2];
      v25 = 0uLL;
      v26 = 0uLL;
      v27 = 0uLL;
      do
      {
        v28 = vandq_s8(*(v23 - 1), v10);
        v29 = vandq_s8(*v23, v10);
        v30 = vandq_s8(*(v23 + 1), v10);
        v31 = vandq_s8(*v24, v10);
        v32 = vcgtq_u8(v29, v28);
        v33 = vcgtq_u8(v29, v30);
        v34 = vcgtq_u8(v28, v29);
        v35 = vcgtq_u8(v30, v29);
        v36 = vcltzq_s8(vshlq_n_s8(vandq_s8(v34, v35), 7uLL));
        v37 = vcltzq_s8(vshlq_n_s8(vandq_s8(v32, v33), 7uLL));
        v38 = veorq_s8(v33, v32);
        v39 = veorq_s8(v35, v34);
        v40 = vcltzq_s8(vshlq_n_s8(vbicq_s8(v39, v38), 7uLL));
        v41 = vcltzq_s8(vshlq_n_s8(vbicq_s8(v38, v39), 7uLL));
        v20 = vsubq_s8(v20, v36);
        v25 = vsubq_s8(v25, v40);
        v26 = vsubq_s8(v26, v41);
        v27 = vsubq_s8(v27, v37);
        v42 = vsubl_u8(*v31.i8, *v29.i8);
        v43 = vsubl_high_u8(v31, v29);
        v21 = vpadalq_s16(v21, vpaddq_s16(vaddq_s16(vandq_s8(v42, vmovl_s8(*v36.i8)), vandq_s8(v43, vmovl_high_s8(v36))), vaddq_s16(vandq_s8(v42, vmovl_s8(*v40.i8)), vandq_s8(v43, vmovl_high_s8(v40)))));
        v8 = vpadalq_s16(v8, vpaddq_s16(vaddq_s16(vandq_s8(v42, vmovl_s8(*v41.i8)), vandq_s8(v43, vmovl_high_s8(v41))), vaddq_s16(vandq_s8(v42, vmovl_s8(*v37.i8)), vandq_s8(v43, vmovl_high_s8(v37)))));
        v23 += v16;
        v24 = (v24 + v17);
        --v22;
      }

      while (v22);
    }

    v19 = vpaddlq_u8(vpaddq_s8(v20, v25));
    v18 = vpaddlq_u8(vpaddq_s8(v26, v27));
    v8 = vpaddq_s32(v21, v8);
    LODWORD(v15) = 16;
  }

  else
  {
    LODWORD(v15) = 0;
    v12 = vandq_s8(v12, v10);
    v16 = a1[1];
    v17 = a1[3];
    v18 = 0uLL;
    v19 = 0uLL;
  }

  if (v15 < v14)
  {
    v15 = v15;
    do
    {
      if (v13 < 1)
      {
        v49 = 0uLL;
        v52 = 0uLL;
        v51 = 0uLL;
        v50 = 0uLL;
        v46 = 0uLL;
        v47 = 0uLL;
      }

      else
      {
        v44 = (v5 + v15);
        v45 = v4 + v15;
        v46 = 0uLL;
        v47 = 0uLL;
        v48 = *(a1 + 9) - *(a1 + 11);
        v49 = 0uLL;
        v50 = 0uLL;
        v51 = 0uLL;
        v52 = 0uLL;
        do
        {
          v53 = *(v45 - 1);
          v54 = *(v45 + 1);
          v55 = vcgtq_u8(*v45, v53);
          v56 = vcgtq_u8(*v45, v54);
          v57 = vcgtq_u8(v53, *v45);
          v58 = vcgtq_u8(v54, *v45);
          v59 = vcltzq_s8(vshlq_n_s8(vandq_s8(v57, v58), 7uLL));
          v60 = vcltzq_s8(vshlq_n_s8(vandq_s8(v55, v56), 7uLL));
          v61 = veorq_s8(v56, v55);
          v62 = veorq_s8(v58, v57);
          v63 = vcltzq_s8(vshlq_n_s8(vbicq_s8(v62, v61), 7uLL));
          v64 = vcltzq_s8(vshlq_n_s8(vbicq_s8(v61, v62), 7uLL));
          v46 = vsubq_s8(v46, v59);
          v50 = vsubq_s8(v50, v63);
          v51 = vsubq_s8(v51, v64);
          v52 = vsubq_s8(v52, v60);
          v65 = vsubl_u8(*v44, *v45);
          v66 = vsubl_high_u8(*v44->i8, *v45);
          v47 = vpadalq_s16(v47, vpaddq_s16(vaddq_s16(vandq_s8(v65, vmovl_s8(*v59.i8)), vandq_s8(v66, vmovl_high_s8(v59))), vaddq_s16(vandq_s8(v65, vmovl_s8(*v63.i8)), vandq_s8(v66, vmovl_high_s8(v63)))));
          v49 = vpadalq_s16(v49, vpaddq_s16(vaddq_s16(vandq_s8(v65, vmovl_s8(*v64.i8)), vandq_s8(v66, vmovl_high_s8(v64))), vaddq_s16(vandq_s8(v65, vmovl_s8(*v60.i8)), vandq_s8(v66, vmovl_high_s8(v60)))));
          v45 += v16;
          v44 = (v44 + v17);
          --v48;
        }

        while (v48);
      }

      v19 = vpadalq_u8(v19, vpaddq_s8(v46, v50));
      v18 = vpadalq_u8(v18, vpaddq_s8(v51, v52));
      v8 = vaddq_s32(vpaddq_s32(v47, v49), v8);
      v15 += 16;
    }

    while (v15 < v14);
  }

  if (v13 < 1)
  {
    v70 = 0uLL;
    v73 = 0uLL;
    v72 = 0uLL;
    v71 = 0uLL;
    v68 = 0uLL;
    v69 = 0uLL;
  }

  else
  {
    v67 = (v5 + v15);
    v68 = 0uLL;
    v69 = 0uLL;
    v70 = 0uLL;
    v71 = 0uLL;
    v72 = 0uLL;
    v73 = 0uLL;
    v74 = v4 + v15;
    do
    {
      v75 = vandq_s8(*(v74 - 1), v12);
      v76 = vandq_s8(*v74, v12);
      v77 = vandq_s8(*(v74 + 1), v12);
      v78 = vandq_s8(*v67, v12);
      v79 = vcgtq_u8(v76, v75);
      v80 = vcgtq_u8(v76, v77);
      v81 = vcgtq_u8(v75, v76);
      v82 = vcgtq_u8(v77, v76);
      v83 = vcltzq_s8(vshlq_n_s8(vandq_s8(v81, v82), 7uLL));
      v84 = vcltzq_s8(vshlq_n_s8(vandq_s8(v79, v80), 7uLL));
      v85 = veorq_s8(v80, v79);
      v86 = veorq_s8(v82, v81);
      v87 = vcltzq_s8(vshlq_n_s8(vbicq_s8(v86, v85), 7uLL));
      v88 = vcltzq_s8(vshlq_n_s8(vbicq_s8(v85, v86), 7uLL));
      v68 = vsubq_s8(v68, v83);
      v71 = vsubq_s8(v71, v87);
      v72 = vsubq_s8(v72, v88);
      v73 = vsubq_s8(v73, v84);
      v89 = vsubl_u8(*v78.i8, *v76.i8);
      v90 = vsubl_high_u8(v78, v76);
      v69 = vpadalq_s16(v69, vpaddq_s16(vaddq_s16(vandq_s8(v89, vmovl_s8(*v83.i8)), vandq_s8(v90, vmovl_high_s8(v83))), vaddq_s16(vandq_s8(v89, vmovl_s8(*v87.i8)), vandq_s8(v90, vmovl_high_s8(v87)))));
      v70 = vpadalq_s16(v70, vpaddq_s16(vaddq_s16(vandq_s8(v89, vmovl_s8(*v88.i8)), vandq_s8(v90, vmovl_high_s8(v88))), vaddq_s16(vandq_s8(v89, vmovl_s8(*v84.i8)), vandq_s8(v90, vmovl_high_s8(v84)))));
      v74 += v16;
      v67 = (v67 + v17);
      --v13;
    }

    while (v13);
  }

  result = vaddq_s32(vpaddq_s32(v69, v70), v8);
  v92 = vpaddq_s16(vpadalq_u8(v19, vpaddq_s8(v68, v71)), vpadalq_u8(v18, vpaddq_s8(v72, v73)));
  v92.i64[0] = vpaddq_s16(v92, v92).u64[0];
  *a2 = v92.i32[0];
  *(a2 + 6) = v92.i32[1];
  *a3 = result.i64[0];
  *(a3 + 12) = result.i64[1];
  return result;
}

void sub_2774D0878(void *a1)
{
  sub_2774D08A4(a1);

  JUMPOUT(0x277CAD360);
}

void *sub_2774D08A4(void *a1)
{
  *a1 = &unk_2886628D0;
  v2 = a1[672];
  if (v2)
  {
    v3 = a1[673];
    v4 = a1[672];
    if (v3 != v2)
    {
      do
      {
        sub_2774D0A0C(--v3, 0);
      }

      while (v3 != v2);
      v4 = a1[672];
    }

    a1[673] = v2;
    operator delete(v4);
  }

  v5 = a1[669];
  if (v5)
  {
    v6 = a1[670];
    v7 = a1[669];
    if (v6 != v5)
    {
      v8 = a1[670];
      do
      {
        v10 = *(v8 - 64);
        v8 -= 64;
        v9 = v10;
        if (v10)
        {
          *(v6 - 56) = v9;
          operator delete(v9);
        }

        v6 = v8;
      }

      while (v8 != v5);
      v7 = a1[669];
    }

    a1[670] = v5;
    operator delete(v7);
  }

  v11 = a1[666];
  if (v11)
  {
    a1[667] = v11;
    operator delete(v11);
  }

  for (i = 0; i != -6; i -= 3)
  {
    v13 = a1[i + 652];
    if (v13)
    {
      a1[i + 653] = v13;
      operator delete(v13);
    }
  }

  sub_2773F1650((a1 + 600));
  v14 = a1[590];
  if (v14)
  {
    a1[591] = v14;
    operator delete(v14);
  }

  v15 = a1[521];
  if (v15)
  {
    a1[522] = v15;
    operator delete(v15);
  }

  v16 = a1[518];
  if (v16)
  {
    a1[519] = v16;
    operator delete(v16);
  }

  v17 = a1[515];
  if (v17)
  {
    a1[516] = v17;
    operator delete(v17);
  }

  v18 = a1[450];
  a1[450] = 0;
  if (v18)
  {
    free(v18);
  }

  return sub_2773F77B0(a1);
}

void *sub_2774D0A0C(void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[3130];
    v2[3130] = 0;
    if (v3)
    {
      MEMORY[0x277CAD330](v3, 0x1000C8077774924);
    }

    v4 = v2[3127];
    if (v4)
    {
      v2[3128] = v4;
      operator delete(v4);
    }

    v5 = v2[3124];
    if (v5)
    {
      v2[3125] = v5;
      operator delete(v5);
    }

    v6 = v2[3121];
    if (v6)
    {
      v7 = v2[3122];
      v8 = v2[3121];
      if (v7 != v6)
      {
        do
        {
          *(v7 - 96) = 0uLL;
          *(v7 - 80) = 0uLL;
          *(v7 - 112) = 0uLL;
          v7 -= 120;
        }

        while (v7 != v6);
        v8 = v2[3121];
      }

      v2[3122] = v6;
      operator delete(v8);
    }

    v9 = v2[3118];
    if (v9)
    {
      v2[3119] = v9;
      operator delete(v9);
    }

    v10 = v2[3115];
    if (v10)
    {
      v2[3116] = v10;
      operator delete(v10);
    }

    v11 = v2[3112];
    if (v11)
    {
      v12 = v2[3113];
      v13 = v2[3112];
      if (v12 != v11)
      {
        do
        {
          *(v12 - 88) = 0uLL;
          *(v12 - 104) = 0uLL;
          *(v12 - 120) = 0uLL;
          *(v12 - 136) = 0uLL;
          *(v12 - 152) = 0uLL;
          v12 -= 240;
        }

        while (v12 != v11);
        v13 = v2[3112];
      }

      v2[3113] = v11;
      operator delete(v13);
    }

    v14 = v2[3101];
    v2[3101] = 0;
    if (v14)
    {
      free(v14);
    }

    v15 = 0;
    while (1)
    {
      v16 = v2[v15 + 1821];
      if (v16)
      {
        v2[v15 + 1822] = v16;
        operator delete(v16);
      }

      v15 -= 3;
      if (v15 == -6)
      {
        v17 = v2[1815];
        if (v17)
        {
          v2[1816] = v17;
          operator delete(v17);
        }

        v18 = v2[150];
        if (v18)
        {
          v2[151] = v18;
          operator delete(v18);
        }

        v19 = v2[147];
        if (v19)
        {
          v2[148] = v19;
          operator delete(v19);
        }

        v20 = v2[144];
        if (v20)
        {
          v2[145] = v20;
          operator delete(v20);
        }

        JUMPOUT(0x277CAD360);
      }
    }
  }

  return result;
}

uint64_t sub_2774D0BBC(uint64_t result, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = 0;
  v12 = result + 1672;
  v13 = 1;
  v14 = *(result + 2208);
  v15 = v14 & (1 << a4);
  v16 = result + 16 * a4 + 1928;
  do
  {
    v17 = v13;
    v18 = *(a7 + 8 * v11);
    if (v18 && *(v18 + 10) == 1)
    {
      if (*(v18 + 13) == a4)
      {
        v26 = *(a9 + 8 * v11);
        v27 = *(a11 + 48);
        *(a11 + 48) = v27 + 1;
        *(a11 + 4 * v27) = *v26;
        goto LABEL_58;
      }

      v19 = *(v18 + 12);
      if (v19 != 15 && *(*v16 + 1024) == *(*(v12 + 16 * v19) + 1024))
      {
        v28 = *(a11 + 48);
        *(a11 + 48) = v28 + 1;
        *(a11 + 4 * v28) = *(v18 + 4);
        goto LABEL_58;
      }
    }

    v13 = 0;
    v11 = 1;
  }

  while ((v17 & 1) != 0);
  v20 = 0;
  v21 = 1;
  while (1)
  {
    v22 = v21;
    v23 = *(a7 + 8 * v20);
    if (v23)
    {
      if (v23[10] == 1)
      {
        v24 = v23[13];
        if (v24 != 15 && (((v15 != 0) ^ (v14 >> v24)) & 1) == 0)
        {
          v29 = *(a9 + 8 * v20);
          v30 = 1928;
          v31 = 13;
          goto LABEL_21;
        }

        v25 = v23[12];
        if (v25 != 15 && (((v15 != 0) ^ (*(result + 2200) >> v25)) & 1) == 0)
        {
          break;
        }
      }
    }

    v21 = 0;
    v20 = 1;
    if ((v22 & 1) == 0)
    {
      goto LABEL_58;
    }
  }

  v29 = v23 + 4;
  v30 = 1672;
  v31 = 12;
LABEL_21:
  v32 = *(a11 + 48);
  *(a11 + 48) = v32 + 1;
  *(a11 + 4 * v32) = *v29;
  if (!v15)
  {
    v33 = *(*(result + v30 + 16 * *(*(a7 + 8 * v20) + v31)) + 1024);
    v34 = *(result + 640);
    v35 = *(*v16 + 1024);
    v36 = v34 - v33;
    if (v34 != v33 && v35 != v33)
    {
      v38 = v34 - v35;
      v39 = a11 + 4 * *(a11 + 48);
      if (v38 >= 127)
      {
        v38 = 127;
      }

      if (v38 <= -128)
      {
        v38 = -128;
      }

      if (v36 >= 127)
      {
        v36 = 127;
      }

      if (v36 <= -128)
      {
        v36 = -128;
      }

      if (v36 >= 0)
      {
        v40 = v36;
      }

      else
      {
        v40 = -v36;
      }

      v41 = (v38 * (((v40 >> 1) | 0x4000) / v36) + 32) >> 6;
      if (v41 >= 4095)
      {
        v41 = 4095;
      }

      if (v41 <= -4096)
      {
        v41 = -4096;
      }

      v42 = v41 * *(v39 - 4);
      v43 = v42 < 0;
      if (v42 < 0)
      {
        v42 = -v42;
      }

      v44 = (v42 + 127) >> 8;
      if (v43)
      {
        v44 = -v44;
      }

      if (v44 >= 0x7FFF)
      {
        v44 = 0x7FFF;
      }

      if (v44 <= -32768)
      {
        LOWORD(v44) = 0x8000;
      }

      *(v39 - 4) = v44;
      v45 = v41 * *(v39 - 2);
      v46 = v45 < 0;
      if (v45 < 0)
      {
        v45 = -v45;
      }

      v47 = (v45 + 127) >> 8;
      if (v46)
      {
        v47 = -v47;
      }

      if (v47 >= 0x7FFF)
      {
        v47 = 0x7FFF;
      }

      if (v47 <= -32768)
      {
        LOWORD(v47) = 0x8000;
      }

      *(v39 - 2) = v47;
    }
  }

LABEL_58:
  v48 = 0;
  while (1)
  {
    v49 = *(a8 + 8 * v48);
    if (!v49 || *(v49 + 10) != 1)
    {
      goto LABEL_64;
    }

    if (*(v49 + 13) == a4)
    {
      break;
    }

    v50 = *(v49 + 12);
    if (v50 != 15 && *(*v16 + 1024) == *(*(v12 + 16 * v50) + 1024))
    {
      v51 = *(a11 + 48);
      if (!*(a11 + 48) || *a11 != *v49)
      {
        v52 = (v49 + 4);
        goto LABEL_72;
      }

      return result;
    }

LABEL_64:
    if (++v48 == 3)
    {
      return result;
    }
  }

  v51 = *(a11 + 48);
  if (!*(a11 + 48) || *a11 != *(v49 + 4))
  {
    v52 = *(a10 + 8 * v48);
LABEL_72:
    *(a11 + 48) = v51 + 1;
    *(a11 + 4 * v51) = *v52;
  }

  return result;
}

uint64_t sub_2774D0ECC(uint64_t result, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = 0;
  v12 = result + 1928;
  v13 = 1;
  v14 = *(result + 2200);
  v15 = v14 & (1 << a4);
  v16 = result + 16 * a4 + 1672;
  do
  {
    v17 = v13;
    v18 = *(a7 + 8 * v11);
    if (v18 && *(v18 + 10) == 1)
    {
      if (*(v18 + 12) == a4)
      {
        v26 = *(a11 + 48);
        *(a11 + 48) = v26 + 1;
        *(a11 + 4 * v26) = *(v18 + 4);
        goto LABEL_58;
      }

      v19 = *(v18 + 13);
      if (v19 != 15 && *(*v16 + 1024) == *(*(v12 + 16 * v19) + 1024))
      {
        v27 = *(a9 + 8 * v11);
        v28 = *(a11 + 48);
        *(a11 + 48) = v28 + 1;
        *(a11 + 4 * v28) = *v27;
        goto LABEL_58;
      }
    }

    v13 = 0;
    v11 = 1;
  }

  while ((v17 & 1) != 0);
  v20 = 0;
  v21 = 1;
  while (1)
  {
    v22 = v21;
    v23 = *(a7 + 8 * v20);
    if (v23)
    {
      if (v23[10] == 1)
      {
        v24 = v23[12];
        if (v24 != 15 && (((v15 != 0) ^ (v14 >> v24)) & 1) == 0)
        {
          v29 = v23 + 4;
          v30 = 1672;
          v31 = 12;
          goto LABEL_21;
        }

        v25 = v23[13];
        if (v25 != 15 && (((v15 != 0) ^ (*(result + 2208) >> v25)) & 1) == 0)
        {
          break;
        }
      }
    }

    v21 = 0;
    v20 = 1;
    if ((v22 & 1) == 0)
    {
      goto LABEL_58;
    }
  }

  v29 = *(a9 + 8 * v20);
  v30 = 1928;
  v31 = 13;
LABEL_21:
  v32 = *(a11 + 48);
  *(a11 + 48) = v32 + 1;
  *(a11 + 4 * v32) = *v29;
  if (!v15)
  {
    v33 = *(*(result + v30 + 16 * *(*(a7 + 8 * v20) + v31)) + 1024);
    v34 = *(result + 640);
    v35 = *(*v16 + 1024);
    v36 = v34 - v33;
    if (v34 != v33 && v35 != v33)
    {
      v38 = v34 - v35;
      v39 = a11 + 4 * *(a11 + 48);
      if (v38 >= 127)
      {
        v38 = 127;
      }

      if (v38 <= -128)
      {
        v38 = -128;
      }

      if (v36 >= 127)
      {
        v36 = 127;
      }

      if (v36 <= -128)
      {
        v36 = -128;
      }

      if (v36 >= 0)
      {
        v40 = v36;
      }

      else
      {
        v40 = -v36;
      }

      v41 = (v38 * (((v40 >> 1) | 0x4000) / v36) + 32) >> 6;
      if (v41 >= 4095)
      {
        v41 = 4095;
      }

      if (v41 <= -4096)
      {
        v41 = -4096;
      }

      v42 = v41 * *(v39 - 4);
      v43 = v42 < 0;
      if (v42 < 0)
      {
        v42 = -v42;
      }

      v44 = (v42 + 127) >> 8;
      if (v43)
      {
        v44 = -v44;
      }

      if (v44 >= 0x7FFF)
      {
        v44 = 0x7FFF;
      }

      if (v44 <= -32768)
      {
        LOWORD(v44) = 0x8000;
      }

      *(v39 - 4) = v44;
      v45 = v41 * *(v39 - 2);
      v46 = v45 < 0;
      if (v45 < 0)
      {
        v45 = -v45;
      }

      v47 = (v45 + 127) >> 8;
      if (v46)
      {
        v47 = -v47;
      }

      if (v47 >= 0x7FFF)
      {
        v47 = 0x7FFF;
      }

      if (v47 <= -32768)
      {
        LOWORD(v47) = 0x8000;
      }

      *(v39 - 2) = v47;
    }
  }

LABEL_58:
  v48 = 0;
  while (1)
  {
    v49 = *(a8 + 8 * v48);
    if (!v49 || *(v49 + 10) != 1)
    {
      goto LABEL_64;
    }

    if (*(v49 + 12) == a4)
    {
      break;
    }

    v50 = *(v49 + 13);
    if (v50 != 15 && *(*v16 + 1024) == *(*(v12 + 16 * v50) + 1024))
    {
      v51 = *(a11 + 48);
      if (!*(a11 + 48) || *a11 != *(v49 + 4))
      {
        v52 = *(a10 + 8 * v48);
        goto LABEL_72;
      }

      return result;
    }

LABEL_64:
    if (++v48 == 3)
    {
      return result;
    }
  }

  v51 = *(a11 + 48);
  if (!*(a11 + 48) || *a11 != *v49)
  {
    v52 = (v49 + 4);
LABEL_72:
    *(a11 + 48) = v51 + 1;
    *(a11 + 4 * v51) = *v52;
  }

  return result;
}

BOOL sub_2774D11DC(uint64_t a1, __int16 *a2, __int16 *a3)
{
  if ((*(a3 + 8) ^ *(a2 + 8)) > 0xF)
  {
    return 1;
  }

  v3 = *a2 - *a3;
  if (v3 < 0)
  {
    v3 = *a3 - *a2;
  }

  if (v3 > 3)
  {
    return 1;
  }

  v5 = a2[1] - a3[1];
  if (v5 < 0)
  {
    v5 = a3[1] - a2[1];
  }

  return v5 > 3;
}

double sub_2774D122C(uint64_t a1)
{
  v1 = a1 + 4096;
  v2 = sub_2773F7884(a1);
  *v2 = &unk_2886628D0;
  *(v2 + 2816) = 0;
  *(v2 + 2818) = 1;
  result = 0.0;
  *(v2 + 2824) = 0u;
  *(v2 + 2840) = 0u;
  *(v2 + 2856) = 0u;
  *(v2 + 2872) = 0u;
  *(v2 + 2888) = 0u;
  *(v2 + 2904) = 0u;
  *(v2 + 2920) = 0u;
  *(v2 + 2936) = 0u;
  *(v2 + 2952) = 0u;
  *(v2 + 2968) = 0u;
  *(v2 + 2984) = 0u;
  *(v2 + 3000) = 0u;
  *(v2 + 3016) = 0u;
  *(v2 + 3032) = 0u;
  *(v2 + 3048) = 0u;
  *(v2 + 3064) = 0u;
  *(v2 + 3080) = 0u;
  *(v2 + 3096) = 0u;
  *(v2 + 3112) = 0u;
  *(v2 + 3128) = 0u;
  *(v2 + 3144) = 0u;
  *(v2 + 3160) = 0u;
  *(v2 + 3176) = 0u;
  *(v2 + 3192) = 0u;
  *(v2 + 3208) = 0u;
  *(v2 + 3600) = 0;
  *(v2 + 3564) = 256;
  *(v2 + 3544) = 0u;
  *(v2 + 3568) = 0u;
  *(v2 + 3584) = 0u;
  *(v1 + 115) = 0;
  *(v2 + 4120) = 0u;
  *(v2 + 4136) = 0u;
  *(v2 + 4152) = 0u;
  *(v2 + 4168) = 0u;
  *(v2 + 4184) = 0;
  *(v2 + 4720) = 0;
  *(v2 + 4728) = 0u;
  *(v2 + 4708) = 0;
  *(v2 + 4808) = 0u;
  *(v2 + 4824) = 0;
  *(v2 + 5000) = 850045863;
  *(v2 + 5056) = 0;
  *(v2 + 5040) = 0u;
  *(v2 + 5024) = 0u;
  *(v2 + 5008) = 0u;
  *(v2 + 5064) = 1018212795;
  *(v2 + 5072) = 0u;
  *(v2 + 5088) = 0u;
  *(v2 + 5104) = 0;
  *(v2 + 4996) = 0;
  *(v2 + 5192) = 0u;
  *(v2 + 5208) = 0u;
  *(v2 + 5224) = 0u;
  *(v2 + 5412) = 0;
  *(v2 + 5320) = 0u;
  *(v2 + 5336) = 0u;
  *(v2 + 5352) = 0u;
  *(v2 + 5368) = 0u;
  *(v2 + 5384) = 0u;
  *(v1 + 1088) = 1;
  *(v2 + 5272) = sub_2774D11DC;
  *(v2 + 5280) = 0;
  *(v2 + 5288) = sub_2774D0ECC;
  *(v2 + 5296) = 0;
  *(v2 + 5304) = sub_2774D0BBC;
  *(v2 + 5312) = 0;
  *(v2 + 5248) = 0;
  *(v2 + 5428) = 0;
  *(v1 + 1337) = 0;
  *(v2 + 5436) = 0;
  *(v2 + 5440) = 0;
  *(v2 + 5448) = -1;
  *(v2 + 5456) = -1;
  *(v1 + 1368) = 0;
  return result;
}

void sub_2774D13D8(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v8 = *(a2 + 576);
  v9 = *(v8 + 480);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  v12 = *(v10 + 224);
  v158 = *(v10 + 2124);
  v13 = v158 * *(v10 + 2120);
  v14 = (v9 + 2 * v13) / (2 * v9);
  v15 = v14 * a3;
  v115 = v9 - 1 <= a3;
  v16 = v13 - v14 * a3;
  if (!v115)
  {
    v16 = v14;
  }

  v159 = v16;
  *(a1 + 8) = *(a2 + 632);
  v156 = *(a2 + 648);
  *(a1 + 5320) = a2;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v17 = *(a1 + 24);
  *(a1 + 16) = v10;
  *(a1 + 24) = v11;
  if (v17)
  {
    sub_2773CC26C(v17);
  }

  v18 = v8 + 360;
  v20 = *(a2 + 56);
  v19 = *(a2 + 64);
  v161 = a2;
  if (v19)
  {
    atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
  }

  v21 = *(a1 + 40);
  *(a1 + 32) = v20;
  *(a1 + 40) = v19;
  if (v21)
  {
    sub_2773CC26C(v21);
  }

  v22 = *(*(a1 + 5320) + 648);
  *(a1 + 632) = *(*(a1 + 5320) + 648) == 0;
  *(a1 + 637) = v22 == 1;
  *(a1 + 633) = v22 < 2;
  *(a1 + 640) = *(*(a1 + 8) + 1024);
  *(a1 + 5412) = v15 + v159 - 1;
  *(a1 + 652) = 5;
  *(a1 + 5416) = 0;
  *(a1 + 4768) = v18;
  v23 = *(a1 + 2192);
  *(a1 + 2184) = 0;
  *(a1 + 2192) = 0;
  if (v23)
  {
    sub_2773CC26C(v23);
    v18 = *(a1 + 4768);
  }

  v24 = 16 << v12;
  *(a1 + 659) = 1;
  *(a1 + 5424) = 0;
  *(a1 + 516) = 0;
  if (*(v18 + 200) == 1)
  {
    if ((atomic_load_explicit(&qword_280A71290, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A71290))
    {
      __cxa_atexit(sub_2774821E0, &qword_280A71280, &dword_2773BE000);
      __cxa_guard_release(&qword_280A71290);
    }

    if (atomic_load_explicit(&qword_280A71298, memory_order_acquire) != -1)
    {
      v164 = &v162;
      v163 = &v164;
      std::__call_once(&qword_280A71298, &v163, sub_27748216C);
    }

    v25 = qword_280A71280;
    v26 = qword_280A71288;
    if (qword_280A71288)
    {
      atomic_fetch_add_explicit((qword_280A71288 + 8), 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
    }

    *(a1 + 4816) = v25;
    v27 = *(a1 + 4824);
    *(a1 + 4824) = v26;
    if (v27)
    {
      sub_2773CC26C(v27);
    }

    if (v26)
    {
      v28 = v26;
LABEL_26:
      sub_2773CC26C(v28);
    }
  }

  else
  {
    v29 = *(v161 + 576);
    v31 = *(v29 + 296);
    v30 = *(v29 + 304);
    if (v30)
    {
      atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
    }

    *(a1 + 4816) = v31;
    v28 = *(a1 + 4824);
    *(a1 + 4824) = v30;
    if (v28)
    {
      goto LABEL_26;
    }
  }

  v32 = *(v161 + 648);
  if (v32 < 3)
  {
    v37 = 2;
    *(a1 + 58) = 2;
  }

  else
  {
    if (v32 - 4 < 2)
    {
      *(a1 + 58) = 0;
      v33 = *(a1 + 5320);
      v34 = *(v33 + 684);
      if (v34 >= *(v33 + 3064))
      {
        LOBYTE(v34) = *(v33 + 3064);
      }

      *(a1 + 516) = v34;
      v35 = *(v33 + 684);
      v36 = *(v33 + 3064);
      if (v35 < v36)
      {
        LOBYTE(v36) = v35;
      }

      *(a1 + 517) = v36;
      goto LABEL_34;
    }

    if (v32 == 3)
    {
      v37 = 1;
      *(a1 + 58) = 1;
      v38 = *(a1 + 5320);
      v39 = *(v38 + 684);
      v40 = *(v38 + 3064);
      if (v39 < v40)
      {
        LOBYTE(v40) = v39;
      }

      *(a1 + 516) = v40;
    }

    else
    {
      v37 = *(a1 + 58);
      if (!*(a1 + 58))
      {
LABEL_34:
        v37 = 0;
        *(a1 + 5272) = sub_2774D4020;
        *(a1 + 5280) = 0;
      }
    }
  }

  *(a1 + 48) = a3 == 0;
  *(a1 + 50) = **(a1 + 32);
  *(a1 + 52) = v15;
  *(a1 + 49) = 0;
  *(a1 + 56) = 0;
  v41 = *(a1 + 8);
  *(a1 + 64) = *(v41 + 1024) & (v24 - 1);
  *(a1 + 518) = *(v8 + 648);
  *(a1 + 59) = 1;
  *(a1 + 554) = 1;
  v42 = *(v8 + 529);
  *(a1 + 324) = v42;
  *(a1 + 328) = v42;
  *(a1 + 514) = *(v8 + 583);
  *(a1 + 515) = 1;
  if (v37 >= 2)
  {
    v44 = *(a1 + 5184);
  }

  else
  {
    if (sub_2773F81F4(a1, (v161 + 3064), v41))
    {
      return;
    }

    v43 = *(a1 + 516);
    if (v43 == *(a1 + 517))
    {
      v44 = 1;
      *(a1 + 5184) = 1;
      if (v43 < 1)
      {
        goto LABEL_50;
      }

      v45 = a1 + 1928;
      while (*(*(v45 - 256) + 1024) == *(*v45 + 1024))
      {
        v45 += 16;
        if (!--v43)
        {
          v44 = 1;
          goto LABEL_50;
        }
      }
    }

    v44 = 0;
    *(a1 + 5184) = 0;
  }

LABEL_50:
  *(a1 + 552) = v44;
  v46 = v161;
  v48 = *(v161 + 24);
  v47 = *(v161 + 32);
  if (v47)
  {
    atomic_fetch_add_explicit((v47 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 1584) = v48;
  v49 = *(a1 + 1592);
  *(a1 + 1592) = v47;
  if (v49)
  {
    sub_2773CC26C(v49);
  }

  v50 = (a1 + 516);
  v51 = *(v161 + 8);
  *(a1 + 1568) = vextq_s8(v51, v51, 8uLL);
  if (a4 && *(v51.i64[0] + 34) != 255)
  {
    sub_2773FAF74(a1, *v51.i64);
    if (v52)
    {
      return;
    }

    v53 = *v50;
    if (v53 >= 1)
    {
      v54 = 0;
      v55 = (a1 + 1672);
      do
      {
        v56 = *v55;
        v57 = (*v55 + 48);
        if (*v57 == 1)
        {
          if (sub_277487028(*v55 + 48, *(*(v161 + 40) + 2117)))
          {
            return;
          }

          sub_277487440(v57, 0, *(v56 + 524));
          *(v56 + 48) = 0;
          LOBYTE(v53) = *v50;
        }

        ++v54;
        v55 += 2;
      }

      while (v54 < v53);
    }

    v58 = *(a1 + 517);
    if (v58 >= 1)
    {
      v59 = 0;
      v60 = (a1 + 1928);
      do
      {
        v61 = *v60;
        v62 = (*v60 + 48);
        if (*v62 == 1)
        {
          if (sub_277487028(*v60 + 48, *(*(v161 + 40) + 2117)))
          {
            return;
          }

          sub_277487440(v62, 0, *(v61 + 524));
          *(v61 + 48) = 0;
          LOBYTE(v58) = *(a1 + 517);
        }

        ++v59;
        v60 += 2;
      }

      while (v59 < v58);
    }
  }

  if (*(a1 + 632) == 1)
  {
    v63 = *(a1 + 5320);
    goto LABEL_101;
  }

  if (*(v8 + 585) == 1)
  {
    v63 = *(a1 + 5320);
  }

  else
  {
    v63 = *(a1 + 5320);
    if ((*(v8 + 870) & 1) == 0 && !*(v63 + 676))
    {
      *(a1 + 320) = *(v161 + 4804);
      v64 = (a1 + 68);
      goto LABEL_100;
    }
  }

  *(a1 + 68) = 0;
  v64 = (a1 + 68);
  v65 = *(a1 + 16);
  v66 = *(v65 + 288);
  if (v66)
  {
    v67 = 0;
    v68 = *(v65 + 296);
    v69 = (v68 + 128);
    v70 = (v68 + 2);
    v71 = (v68 + 66);
    do
    {
      v72 = (v68 + 248 * v67);
      if (v72[162] == *(v63 + 4530))
      {
        v73 = v72[160];
        if (v73 == *(v63 + 4528))
        {
          v74 = v72[161];
          if (v74 == *(v63 + 4529))
          {
            v75 = v69;
            v76 = (v63 + 4496);
            v77 = *(v63 + 4530);
            if (*(v63 + 4530))
            {
              while (1)
              {
                v79 = *v75++;
                v78 = v79;
                v80 = *v76++;
                if (v78 != v80)
                {
                  break;
                }

                if (!--v77)
                {
                  goto LABEL_83;
                }
              }
            }

            else
            {
LABEL_83:
              if (v73)
              {
                v81 = v70;
                v82 = (v63 + 4370);
                while (1)
                {
                  v84 = *v81;
                  v81 += 4;
                  v83 = v84;
                  v85 = *v82;
                  v82 += 4;
                  if (v83 != v85)
                  {
                    break;
                  }

                  if (!--v73)
                  {
                    goto LABEL_87;
                  }
                }
              }

              else
              {
LABEL_87:
                if (!v74)
                {
                  goto LABEL_99;
                }

                v86 = v74 - 1;
                v87 = v71;
                v88 = (v63 + 4434);
                do
                {
                  v90 = *v87;
                  v87 += 4;
                  v89 = v90;
                  v92 = *v88;
                  v88 += 4;
                  v91 = v92;
                  v94 = v86-- != 0;
                }

                while (v89 == v91 && v94);
                if (v89 == v91)
                {
LABEL_99:
                  *(a1 + 320) = v67;
LABEL_100:
                  *v64 = 1;
                  break;
                }
              }
            }
          }
        }
      }

      ++v67;
      v69 += 124;
      v70 += 248;
      v71 += 248;
    }

    while (v67 != v66);
  }

LABEL_101:
  *(a1 + 553) = 0;
  *(a1 + 558) = 5 - *(a1 + 652);
  *(a1 + 559) = (*(v63 + 6516) + 0.5) - *(*(a1 + 32) + 9) - 26;
  v95 = *(v161 + 456);
  if (v95 >= 12)
  {
    v95 = 12;
  }

  if (v95 <= -12)
  {
    LOBYTE(v95) = -12;
  }

  *(a1 + 560) = v95;
  v96 = *(v161 + 460);
  if (v96 >= 12)
  {
    v96 = 12;
  }

  if (v96 <= -12)
  {
    LOBYTE(v96) = -12;
  }

  *(a1 + 561) = v96;
  sub_2773FA1E4(a1);
  v97 = *(a1 + 653);
  *(a1 + 559) = v97 - *(*(a1 + 32) + 9) - 26;
  *(v161 + 6516) = v97;
  v98 = *(a1 + 8);
  v99 = *(v98 + 768) * *(v98 + 524);
  v100 = v99 + 7;
  if (v99 >= 0)
  {
    v100 = *(v98 + 768) * *(v98 + 524);
  }

  if (v99 >= 8)
  {
    v101 = *(v98 + 800);
    v102 = v100 >> 3;
    do
    {
      *v101 = *v101 & 0x1FF | (*(a1 + 653) << 9);
      ++v101;
      --v102;
    }

    while (v102);
  }

  *(a1 + 563) = 0;
  *(a1 + 564) = *(*(v161 + 56) + 31);
  if ((*(v8 + 696) & 1) == 0 && (*(v8 + 482) & 1) == 0)
  {
    v104 = *(a1 + 565);
    v105 = *(a1 + 566);
    goto LABEL_148;
  }

  v103 = *(a1 + 32);
  v104 = *(v103 + 32);
  *(a1 + 565) = v104;
  v105 = *(v103 + 33);
  *(a1 + 566) = v105;
  v106 = *(a1 + 5320);
  if (*(*(v106 + 576) + 482) == 1 && *(v106 + 246) == 1)
  {
    v107 = 0;
    v108 = 0;
    v109 = (v106 + 225);
    do
    {
      v110 = *(v109 - 1);
      if (v110 != 127)
      {
        v111 = *v109;
        if (v111 != -128)
        {
          v112 = (*(v106 + 6516) + 0.5);
          v113 = v112 + v111;
          if (v113 >= 51)
          {
            v113 = 51;
          }

          v114 = v112 + v110;
          v115 = v107 + (v113 & ~(v113 >> 31)) >= 0xF && v114 <= 15;
          if (v115)
          {
            v116 = v114 & ~(v114 >> 31);
            v117 = v107 + v116;
            v118 = 17 - v116;
            if (v117 < 0xF)
            {
              v118 = v107 + 2;
            }

            v119 = v118 >> 1;
            if (v119 > v108)
            {
              v108 = v119;
            }
          }
        }
      }

      ++v107;
      v109 += 2;
    }

    while (v107 != 11);
    if (v108 > 0)
    {
      if (v108 >= 6)
      {
        v105 = 6;
      }

      else
      {
        v105 = v108;
      }

      *(a1 + 565) = v105;
      *(a1 + 566) = v105;
      *(a1 + 563) = 1;
      v104 = v105;
    }
  }

  v120 = *(a1 + 1568);
  if (*v120 != 255)
  {
    v122 = *(v120 + 2);
    v121 = *(v120 + 3);
    if (v122 > v121)
    {
      v121 = v122;
    }

    if (v121 >= 256)
    {
      if (v121 > 0x13F)
      {
LABEL_147:
        *(a1 + 563) = 1;
        goto LABEL_148;
      }

      v105 = 4;
    }

    else
    {
      v105 = 6;
    }

    *(a1 + 565) = v105;
    *(a1 + 566) = v105;
    v104 = v105;
    goto LABEL_147;
  }

LABEL_148:
  *(a1 + 660) = 2 * v104;
  *(a1 + 661) = 2 * v105;
  if ((*(v8 + 544) & 4) == 0)
  {
    *(a1 + 568) = 0;
LABEL_150:
    *(a1 + 567) = 0;
    if (!sub_27740284C(a1 + 2280, a1) && !sub_277400640((a1 + 2824), a1) && !sub_277411E8C((a1 + 3224), *(*(a1 + 16) + 2096), *(*(a1 + 16) + 2098), 0) && !sub_277442944(a1 + 3400, a1, 0))
    {
      v123 = *(v8 + 572);
      v124 = *(v8 + 572) - 1;
      *(a1 + 512) = v124 < 2;
      v125 = v123 >= 2 && *(v8 + 656) != 0;
      *(a1 + 513) = v125;
      if (v124 < 2 || v125)
      {
        sub_2774DBB80(a1 + 3536, *(a1 + 653), a1);
      }

      *(a1 + 5168) = 0u;
      *(a1 + 5152) = 0u;
      *(a1 + 5136) = 0u;
      *(a1 + 5120) = 0u;
      if (*(v8 + 712) == 1)
      {
        sub_2774D214C(a1);
      }

      if (*(v8 + 713) == 1)
      {
        if (*v50 >= 1)
        {
          v126 = 0;
          do
          {
            sub_2774D2414(a1, 0, v126++);
          }

          while (v126 < *(a1 + 516));
        }

        v127 = *(a1 + 517);
        if (*(a1 + 5184))
        {
          if (v127 >= 1)
          {
            v128 = (a1 + 928);
            v129 = a1 + 5153;
            do
            {
              *v128 = *(v128 - 16);
              ++v128;
              *(v129 - 1) = *(v129 - 33);
              v129 += 2;
              --v127;
            }

            while (v127);
          }
        }

        else if (v127 >= 1)
        {
          v130 = 0;
          do
          {
            sub_2774D2414(a1, 1u, v130++);
          }

          while (v130 < *(a1 + 517));
        }
      }

      v131 = 0;
      v157 = v156 & 0xFE;
      *(a1 + 5240) = *(*(v161 + 632) + 1024);
      v132 = 1;
      do
      {
        v133 = a1 + 5192 + 24 * v131;
        v134 = *v133;
        *(v133 + 8) = *v133;
        v135 = v50[v131];
        if (v135 < 1)
        {
          v148 = v134;
        }

        else
        {
          v160 = v132;
          v136 = 0;
          v137 = a1 + 1672 + (v131 << 8);
          do
          {
            v138 = *(*v137 + 1024);
            if (v138 - *(a1 + 5240) >= 0)
            {
              v139 = v138 - *(a1 + 5240);
            }

            else
            {
              v139 = *(a1 + 5240) - v138;
            }

            v140 = *(v133 + 16);
            if (v134 >= v140)
            {
              v141 = *v133;
              v142 = v134 - *v133;
              v143 = 0xAAAAAAAAAAAAAAABLL * (v142 >> 2) + 1;
              if (v143 > 0x1555555555555555)
              {
                sub_2773C0914();
              }

              v144 = 0xAAAAAAAAAAAAAAABLL * ((v140 - v141) >> 2);
              if (2 * v144 > v143)
              {
                v143 = 2 * v144;
              }

              if (v144 >= 0xAAAAAAAAAAAAAAALL)
              {
                v145 = 0x1555555555555555;
              }

              else
              {
                v145 = v143;
              }

              if (v145)
              {
                if (v145 <= 0x1555555555555555)
                {
                  operator new();
                }

                sub_2773C5248();
              }

              v146 = (4 * (v142 >> 2));
              *v146 = v136;
              v146[1] = v138;
              v146[2] = v139;
              v134 = v146 + 3;
              v147 = v146 - v142;
              memcpy(v146 - v142, v141, v142);
              *v133 = v147;
              *(v133 + 8) = v134;
              *(v133 + 16) = 0;
              if (v141)
              {
                operator delete(v141);
              }
            }

            else
            {
              *v134 = v136;
              v134[1] = v138;
              v134[2] = v139;
              v134 += 3;
            }

            *(v133 + 8) = v134;
            ++v136;
            v137 += 16;
          }

          while (v135 != v136);
          v148 = *v133;
          v132 = v160;
          v46 = v161;
          v50 = (a1 + 516);
        }

        v149 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v134 - v148) >> 2));
        if (v134 == v148)
        {
          v150 = 0;
        }

        else
        {
          v150 = v149;
        }

        sub_2774D2A34(v148, v134, v150, 1);
        v151 = (v157 == 4) & v132;
        v131 = 1;
        v132 = 0;
      }

      while ((v151 & 1) != 0);
      *(a1 + 5248) = *(v46 + 496);
      *(a1 + 5256) = *(v46 + 504);
      v152 = *(a1 + 4768);
      if (*(v152 + 96))
      {
        v153 = 42;
      }

      else
      {
        v153 = 48;
      }

      *(a1 + 5428) = v153;
      if (*(v152 + 392))
      {
        v154 = a1 + 4096;
        v155 = *(*(a1 + 5320) + 648) >= 3u && *(*(a1 + 8) + 528) == 10;
      }

      else
      {
        v155 = 0;
        v154 = a1 + 4096;
      }

      *(v154 + 1168) = v155;
    }

    return;
  }

  if (v159 == v13 && !*(a1 + 52))
  {
    *(a1 + 568) = v158 - 1;
    sub_27742C5B0((a1 + 576), v158 - 1);
    goto LABEL_150;
  }

  if (dword_280B9A880 >= 3)
  {
    fwrite("Multislice + wavefront not supported\n", 0x25uLL, 1uLL, *MEMORY[0x277D85DF8]);
    syslog(27, "Multislice + wavefront not supported\n");
  }
}

void sub_2774D214C(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  memset(v30, 0, sizeof(v30));
  if (*(a1 + 58) != 1)
  {
    return;
  }

  LODWORD(v2) = *(a1 + 516);
  if (v2 <= 0)
  {
    v15 = 0;
    v6 = 0;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v5 = (a1 + 1680);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      if (*v5)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v4)
      {
        sub_2773CC26C(v4);
      }

      v8 = *(v7 + 228);
      if (v8 == 0.0)
      {
        v9 = 1.0;
      }

      else
      {
        v9 = *(*(*(a1 + 5320) + 616) + 228) / v8;
      }

      *(v30 + v3++) = pow(v9, 0.454545455);
      v2 = *(a1 + 516);
      v5 += 2;
      v4 = v6;
    }

    while (v3 < v2);
    if (v2 >= 1)
    {
      v10 = v2;
      v11 = v30;
      v12 = -1.79769313e308;
      do
      {
        v13 = *v11++;
        v14 = v13;
        if (v12 < v13)
        {
          v12 = v14;
        }

        --v10;
      }

      while (v10);
      v15 = 1;
      goto LABEL_21;
    }

    v15 = 0;
  }

  v12 = -1.79769313e308;
LABEL_21:
  v16 = 7;
  do
  {
    v17 = 1 << v16;
    v18 = (1 << v16);
    v19 = v16-- != 0;
  }

  while (v19 && v12 * v18 > (v17 + 127));
  if (v15)
  {
    v20 = v16 + 1;
    v21 = a1 + 672;
    v22 = *(a1 + 16);
    v23 = a1 + 5121;
    v24 = v30;
    v2 = v2;
    do
    {
      v25 = *v24 * v18 + 0.5 - v18;
      if (v25 < 127.0)
      {
        v26 = *v24 * v18 + 0.5 - v18;
      }

      else
      {
        v26 = 127.0;
      }

      if (v25 <= -128.0)
      {
        v27 = -128.0;
      }

      else
      {
        v27 = v26;
      }

      *(v21 + 4) = 0;
      *(v21 + 12) = 0;
      *(v21 + 260) = 0;
      *(v21 + 268) = 0;
      *(v21 + 2) = v17 + v27;
      *v21 = v17 + v27;
      *(v21 + 258) = v17;
      *(v21 + 256) = v17;
      *(v21 + 10) = v17;
      *(v21 + 8) = v17;
      *(v21 + 266) = v17;
      *(v21 + 264) = v17;
      v28 = *(v22 + 2096);
      v29 = *(v22 + 2098);
      if (v27)
      {
        *(v23 - 1) = 1;
      }

      ++v24;
      v23 += 2;
      v21 += 16;
      --v2;
    }

    while (v2);
    *(a1 + 556) = v20;
    *(a1 + 662) = v20;
    *(a1 + 557) = 0;
    *(a1 + 664) = v20 + 14 - v28;
    *(a1 + 668) = v20 + 14 - v29;
  }

  if (v6)
  {

    sub_2773CC26C(v6);
  }
}

unint64_t sub_2774D2414(uint64_t a1, unsigned int a2, int a3)
{
  v115[286] = *MEMORY[0x277D85DE8];
  v3 = *(*(a1 + 16) + 2096);
  v5 = v3 - 8;
  v4 = v3 == 8;
  v6 = 3200;
  if (v4)
  {
    v6 = 200;
  }

  v7 = 9;
  if (v4)
  {
    v7 = 5;
  }

  v87 = v6;
  v88 = v7;
  v89 = (1 << (v7 - 1));
  v90[0] = v5;
  v90[1] = v5;
  v90[2] = v5;
  if (v4)
  {
    v8 = sub_2774A1380;
  }

  else
  {
    v8 = sub_2774A11A8;
  }

  v91 = 0xBFFFC0007FFF80;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v85 = a2;
  v86 = a3;
  v9 = *(a1 + (a2 << 8) + 16 * a3 + 1672);
  v10 = v9[50];
  v11 = v9[51];
  v13 = v9[52];
  v12 = v9[53];
  v101[0] = v10;
  *(&v102 + 1) = v13;
  *&v103 = v11;
  v106 = 0;
  v107 = v12;
  *(&v104 + 1) = v12;
  *&v105 = v11;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v14 = *(*(a1 + 5320) + 616);
  v15 = *(v14 + 408);
  v94[0] = *(v14 + 400);
  v16 = *(v14 + 520);
  v17 = *(v14 + 524);
  v19 = *(v14 + 416);
  v18 = *(v14 + 424);
  *(&v95 + 1) = v19;
  *&v96 = v15;
  v99 = 0;
  v100 = v18;
  *(&v97 + 1) = v18;
  *&v98 = v15;
  v20 = a1 + 672;
  v21 = v114;
  bzero(v114, 0x900uLL);
  v22 = 0;
  v23 = 0;
  do
  {
    v8(v94[v22], v101[v22], v16, v17, *(&v95 + v22 * 8 + 8), *(&v102 + v22 * 8 + 8), v21, v23++);
    v22 += 4;
    v21 += 768;
  }

  while (v22 != 12);
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v113[0] = 0;
  v113[1] = 0;
  v27 = v114;
  do
  {
    result = *v27;
    if (*(v27 + 1) <= 1uLL)
    {
      v29 = 1;
    }

    else
    {
      v29 = *(v27 + 1);
    }

    v30 = (*(v27 + 10) * 1000.0);
    if (v30 <= 970)
    {
      v31 = v30 > 600;
    }

    else
    {
      v31 = 2;
    }

    *(v113 + v24) = 0;
    if (v31)
    {
      result = 1000 * result + (v29 >> 1);
      v32 = result / v29;
      if (v32 < 0x3F3)
      {
        if (v32 <= 0x3DD)
        {
          *(v113 + v24) = 2;
          v26 += v31;
        }
      }

      else
      {
        *(v113 + v24) = 1;
        v25 += v31;
      }
    }

    ++v24;
    v27 += 48;
  }

  while (v24 != 16);
  v33 = 4194368;
  v34 = v20 + (v85 << 8) + 16 * v86;
  v111 = 0u;
  memset(v112, 0, 112);
  v110 = 0u;
  if (v25 > 8)
  {
    v35 = 1;
  }

  else
  {
    v35 = 2 * (v26 > 8);
  }

  v36 = (v17 >> 2) * (v16 >> 2);
  if (v36 <= 1)
  {
    v37 = 1;
  }

  else
  {
    v37 = v36;
  }

  if (v35)
  {
    v83 = v20 + (v85 << 8) + 16 * v86;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = (v37 * v37) << (2 * LOBYTE(v90[0]));
    v108 = xmmword_277533458;
    v109 = 1;
    v42 = v41 >> 1;
    result = v37 >> 1;
    v43 = v115;
    do
    {
      if (v35 == *(v113 + v38))
      {
        v44 = &v114[48 * v38];
        v45 = *v44;
        v46 = *(v44 + 1);
        v47 = *(v44 + 3);
        v48 = (v42 + *(v44 + 2) * v37 - v45 * v45) / v41;
        v49 = __OFSUB__(v87, v48);
        v51 = v87 - v48;
        v50 = (v51 < 0) ^ v49 | (v51 == 0);
        v52 = (v51 + v89) >> v88;
        if (v50)
        {
          v53 = 1;
        }

        else
        {
          v53 = v52 + 1;
        }

        *&v108 = v53;
        if (!v50 && (*(v44 + 10) * 1000.0) <= 969 && ((v42 + v47 * v37 - v46 * v46) / v41) < v87)
        {
          *(v44 + 2) = (v45 * v45 + result) / v37;
          *(v44 + 3) = (v46 * v46 + result) / v37;
          *(v44 + 4) = (result + v46 * v45) / v37;
        }

        v54 = 0;
        v55 = &v111;
        v56 = v43;
        do
        {
          v57 = *(&v108 + v54);
          v58 = *(v55 - 1) + *(v56 - 1) * v57;
          *(v55 - 2) += *(v56 - 2) * v57;
          *(v55 - 1) = v58;
          v59 = *(v55 + 1) + v56[1] * v57;
          *v55 += *v56 * v57;
          *(v55 + 1) = v59;
          *(v55 + 2) += v56[2] * v57;
          v54 += 8;
          v56 += 96;
          v55 += 3;
        }

        while (v54 != 24);
        ++v40;
        v39 += v53;
      }

      ++v38;
      v43 += 6;
    }

    while (v38 != 16);
    v60 = 64;
    strcpy(&v93[4], "@");
    *v93 = 4194368;
    memset(v92, 0, 6);
    if (v40)
    {
      v61 = 0;
      *(&v108 + 1) = ((v17 >> 3) * (v16 >> 3) * v40);
      v109 = *(&v108 + 1);
      *&v108 = v39 * v37;
      v62 = SWORD2(v91);
      v63 = SHIWORD(v91);
      v64 = v91;
      v65 = v112;
      v66 = SWORD1(v91);
      result = v92;
      do
      {
        v67 = *(&v108 + v61);
        v68 = v90[v61];
        v69 = (v67 * v67) << (2 * v68);
        v71 = *(v65 - 4);
        v70 = *(v65 - 3);
        v72 = *v65 * v67 - v70 * v71;
        v73 = *(v65 - 1) * v67 - v70 * v70;
        if (v73 <= 1)
        {
          v73 = 1;
        }

        if (v67 <= 1)
        {
          v67 = 1;
        }

        if (v73 <= 16 * v69 || v72 <= 16 * v69)
        {
          LODWORD(v75) = *&v93[2 * v61];
        }

        else
        {
          v75 = ((v73 >> 1) + (v72 << 6)) / v73;
        }

        if (v75 <= v63)
        {
          v76 = v75;
        }

        else
        {
          v76 = v63;
        }

        if (v75 < v62)
        {
          v76 = v62;
        }

        *&v93[2 * v61] = v76;
        v65 += 6;
        v77 = (((v71 << 6) + (v67 >> 1) - v70 * v76) / v67 + 32) >> 6;
        if (v77 <= v66)
        {
          v78 = v77;
        }

        else
        {
          v78 = v66;
        }

        if (v77 >= v64)
        {
          v79 = v78;
        }

        else
        {
          v79 = v64;
        }

        *(v92 + v61++) = v79 & (-1 << v68);
      }

      while (v61 != 3);
      v60 = *v93;
      v40 = LOWORD(v92[0]);
      v33 = *&v93[2];
      v80 = *(v92 + 2);
      v34 = v83;
    }

    else
    {
      v80 = 0;
      v34 = v83;
      v33 = 4194368;
    }
  }

  else
  {
    v80 = 0;
    v40 = 0;
    v60 = 64;
  }

  *(v34 + 2) = v60;
  *v34 = v60;
  *(v34 + 6) = v40;
  *(v34 + 4) = v40;
  *(v34 + 8) = v33;
  *(v34 + 12) = v80;
  *(a1 + 556) = 6;
  *(a1 + 662) = 6;
  v81 = *(a1 + 16);
  *(a1 + 664) = 20 - *(v81 + 2096);
  *(a1 + 668) = 20 - *(v81 + 2098);
  v82 = a1 + 32 * v85;
  if (v40 || v60 != 64)
  {
    *(v82 + 2 * v86 + 5120) = 1;
  }

  if (v80 || v33 != 64 || HIWORD(v80) || (v33 & 0xFFFF0000) != 0x400000)
  {
    *(v82 + 2 * v86 + 5121) = 1;
  }

  return result;
}

uint64_t sub_2774D2A34(uint64_t result, unint64_t a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = (a2 - 12);
  v9 = (a2 - 24);
  v10 = (a2 - 36);
  v11 = v7;
  while (1)
  {
    v7 = v11;
    v12 = a2 - v11;
    v13 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v11) >> 2);
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        if (*(a2 - 4) >= *(v11 + 8))
        {
          return result;
        }

LABEL_112:
        v206 = *(v11 + 8);
        v180 = *v11;
        v91 = *v8;
        *(v11 + 8) = *(a2 - 4);
        *v11 = v91;
        v92 = v180;
        v93 = v206;
LABEL_113:
        *(a2 - 4) = v93;
        *v8 = v92;
        return result;
      }

      goto LABEL_10;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {
      v94 = *(v11 + 20);
      v95 = *(v11 + 32);
      if (v94 >= *(v11 + 8))
      {
        if (v95 < v94)
        {
          v148 = *(v11 + 20);
          v149 = *(v11 + 12);
          *(v11 + 12) = *(v11 + 24);
          *(v11 + 20) = *(v11 + 32);
          *(v11 + 24) = v149;
          *(v11 + 32) = v148;
          if (*(v11 + 20) < *(v11 + 8))
          {
            v209 = *(v11 + 8);
            v183 = *v11;
            *v11 = *(v11 + 12);
            *(v11 + 8) = *(v11 + 20);
            *(v11 + 12) = v183;
            *(v11 + 20) = v209;
          }
        }
      }

      else
      {
        if (v95 < v94)
        {
          v207 = *(v11 + 8);
          v181 = *v11;
          *v11 = *(v11 + 24);
          *(v11 + 8) = *(v11 + 32);
          *(v11 + 24) = v181;
          v96 = v207;
          goto LABEL_191;
        }

        v211 = *(v11 + 8);
        v185 = *v11;
        *v11 = *(v11 + 12);
        *(v11 + 8) = *(v11 + 20);
        *(v11 + 12) = v185;
        *(v11 + 20) = v211;
        if (v95 < *(v11 + 20))
        {
          v96 = *(v11 + 20);
          v156 = *(v11 + 12);
          *(v11 + 12) = *(v11 + 24);
          *(v11 + 20) = *(v11 + 32);
          *(v11 + 24) = v156;
LABEL_191:
          *(v11 + 32) = v96;
        }
      }

      if (*(a2 - 4) >= *(v11 + 32))
      {
        return result;
      }

      v157 = *(v11 + 24);
      v158 = *(v11 + 32);
      v159 = *(a2 - 4);
      *(v11 + 24) = *v8;
      *(v11 + 32) = v159;
      *(a2 - 4) = v158;
      *v8 = v157;
      if (*(v11 + 32) >= *(v11 + 20))
      {
        return result;
      }

      v160 = *(v11 + 20);
      v161 = *(v11 + 12);
      *(v11 + 12) = *(v11 + 24);
      *(v11 + 20) = *(v11 + 32);
      *(v11 + 24) = v161;
      *(v11 + 32) = v160;
LABEL_195:
      if (*(v11 + 20) < *(v11 + 8))
      {
        v212 = *(v11 + 8);
        v186 = *v11;
        *v11 = *(v11 + 12);
        *(v11 + 8) = *(v11 + 20);
        *(v11 + 12) = v186;
        *(v11 + 20) = v212;
      }

      return result;
    }

    if (v13 == 5)
    {

      return sub_2774D3978(v11, (v11 + 12), (v11 + 24), (v11 + 36), (a2 - 12));
    }

LABEL_10:
    if (v12 <= 287)
    {
      v97 = v11 + 12;
      v99 = v11 == a2 || v97 == a2;
      if (a4)
      {
        if (!v99)
        {
          v100 = 0;
          v101 = v11;
          do
          {
            v102 = *(v101 + 20);
            v103 = *(v101 + 8);
            v101 = v97;
            if (v102 < v103)
            {
              v104 = *v97;
              v105 = v100;
              while (1)
              {
                v106 = v11 + v105;
                *(v106 + 12) = *(v11 + v105);
                *(v106 + 20) = *(v11 + v105 + 8);
                if (!v105)
                {
                  break;
                }

                v105 -= 12;
                if (v102 >= *(v106 - 4))
                {
                  v107 = v11 + v105 + 12;
                  goto LABEL_132;
                }
              }

              v107 = v11;
LABEL_132:
              *v107 = v104;
              *(v107 + 8) = v102;
            }

            v97 = v101 + 12;
            v100 += 12;
          }

          while (v101 + 12 != a2);
        }
      }

      else if (!v99)
      {
        do
        {
          v150 = *(v7 + 20);
          v151 = *(v7 + 8);
          v7 = v97;
          if (v150 < v151)
          {
            v152 = *v97;
            do
            {
              v153 = v97;
              v154 = *(v97 - 12);
              v97 -= 12;
              *v153 = v154;
              *(v153 + 8) = *(v153 - 4);
            }

            while (v150 < *(v153 - 16));
            *v97 = v152;
            *(v97 + 8) = v150;
          }

          v97 = v7 + 12;
        }

        while (v7 + 12 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v11 != a2)
      {
        v108 = (v13 - 2) >> 1;
        v109 = v108;
        do
        {
          v110 = v109;
          if (v108 >= v109)
          {
            v111 = (2 * v109) | 1;
            v112 = v11 + 12 * v111;
            if (2 * v110 + 2 < v13)
            {
              v113 = *(v112 + 8);
              v114 = *(v112 + 20);
              v115 = v113 < v114;
              v116 = v113 >= v114 ? 0 : 12;
              v112 += v116;
              if (v115)
              {
                v111 = 2 * v110 + 2;
              }
            }

            v117 = v11 + 12 * v110;
            v118 = *(v117 + 8);
            if (*(v112 + 8) >= v118)
            {
              v119 = *v117;
              do
              {
                v120 = v117;
                v117 = v112;
                v121 = *v112;
                *(v120 + 8) = *(v117 + 8);
                *v120 = v121;
                if (v108 < v111)
                {
                  break;
                }

                v122 = (2 * v111) | 1;
                v112 = v11 + 12 * v122;
                v123 = 2 * v111 + 2;
                if (v123 < v13)
                {
                  v124 = *(v112 + 8);
                  v125 = *(v112 + 20);
                  v126 = v124 < v125;
                  v127 = v124 >= v125 ? 0 : 12;
                  v112 += v127;
                  if (v126)
                  {
                    v122 = v123;
                  }
                }

                v111 = v122;
              }

              while (*(v112 + 8) >= v118);
              *v117 = v119;
              *(v117 + 8) = v118;
            }
          }

          v109 = v110 - 1;
        }

        while (v110);
        v128 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 2);
        do
        {
          v129 = 0;
          v208 = *(v11 + 8);
          v182 = *v11;
          v130 = v11;
          do
          {
            v131 = v130 + 12 * v129;
            v132 = v131 + 12;
            result = 2 * v129;
            v133 = (2 * v129) | 1;
            v129 = 2 * v129 + 2;
            if (v129 >= v128)
            {
              v129 = v133;
            }

            else
            {
              result = *(v131 + 20);
              v134 = *(v131 + 32);
              v135 = v131 + 24;
              if (result >= v134)
              {
                v129 = v133;
              }

              else
              {
                v132 = v135;
              }
            }

            v136 = *v132;
            *(v130 + 8) = *(v132 + 8);
            *v130 = v136;
            v130 = v132;
          }

          while (v129 <= ((v128 - 2) >> 1));
          a2 -= 12;
          if (v132 == a2)
          {
            *(v132 + 8) = v208;
            *v132 = v182;
          }

          else
          {
            v137 = *a2;
            *(v132 + 8) = *(a2 + 8);
            *v132 = v137;
            *(a2 + 8) = v208;
            *a2 = v182;
            v138 = v132 - v11 + 12;
            if (v138 >= 13)
            {
              v139 = (-2 - 0x5555555555555555 * (v138 >> 2)) >> 1;
              v140 = v11 + 12 * v139;
              v141 = *(v132 + 8);
              if (*(v140 + 8) < v141)
              {
                v142 = *v132;
                do
                {
                  v143 = v132;
                  v132 = v140;
                  v144 = *v140;
                  result = *(v132 + 8);
                  *(v143 + 8) = result;
                  *v143 = v144;
                  if (!v139)
                  {
                    break;
                  }

                  v139 = (v139 - 1) >> 1;
                  v140 = v11 + 12 * v139;
                }

                while (*(v140 + 8) < v141);
                *v132 = v142;
                *(v132 + 8) = v141;
              }
            }
          }

          v115 = v128-- <= 2;
        }

        while (!v115);
      }

      return result;
    }

    v14 = v13 >> 1;
    v15 = v11 + 12 * (v13 >> 1);
    v16 = *(a2 - 4);
    if (v12 >= 0x601)
    {
      v17 = *(v15 + 8);
      if (v17 >= *(v11 + 8))
      {
        if (v16 < v17)
        {
          v189 = *(v15 + 8);
          v164 = *v15;
          v21 = *v8;
          *(v15 + 8) = *(a2 - 4);
          *v15 = v21;
          *(a2 - 4) = v189;
          *v8 = v164;
          if (*(v15 + 8) < *(v11 + 8))
          {
            v190 = *(v11 + 8);
            v165 = *v11;
            v22 = *v15;
            *(v11 + 8) = *(v15 + 8);
            *v11 = v22;
            *(v15 + 8) = v190;
            *v15 = v165;
          }
        }
      }

      else
      {
        if (v16 < v17)
        {
          v187 = *(v11 + 8);
          v162 = *v11;
          v18 = *v8;
          *(v11 + 8) = *(a2 - 4);
          *v11 = v18;
          goto LABEL_27;
        }

        v193 = *(v11 + 8);
        v168 = *v11;
        v25 = *v15;
        *(v11 + 8) = *(v15 + 8);
        *v11 = v25;
        *(v15 + 8) = v193;
        *v15 = v168;
        if (*(a2 - 4) < v193)
        {
          v187 = *(v15 + 8);
          v162 = *v15;
          v26 = *v8;
          *(v15 + 8) = *(a2 - 4);
          *v15 = v26;
LABEL_27:
          *(a2 - 4) = v187;
          *v8 = v162;
        }
      }

      v27 = v11 + 12 * v14;
      v28 = v27 - 12;
      v29 = *(v27 - 4);
      v30 = *(a2 - 16);
      if (v29 >= *(v11 + 20))
      {
        if (v30 < v29)
        {
          v194 = *(v28 + 8);
          v169 = *v28;
          v34 = *v9;
          *(v28 + 8) = *(a2 - 16);
          *v28 = v34;
          *(a2 - 16) = v194;
          *v9 = v169;
          if (*(v28 + 8) < *(v11 + 20))
          {
            v35 = *(v11 + 12);
            v36 = *(v11 + 20);
            v37 = *(v28 + 8);
            *(v11 + 12) = *v28;
            *(v11 + 20) = v37;
            *(v28 + 8) = v36;
            *v28 = v35;
          }
        }
      }

      else
      {
        if (v30 < v29)
        {
          v31 = *(v11 + 12);
          v32 = *(v11 + 20);
          v33 = *(a2 - 16);
          *(v11 + 12) = *v9;
          *(v11 + 20) = v33;
          goto LABEL_39;
        }

        v40 = *(v11 + 12);
        v41 = *(v11 + 20);
        v42 = *(v28 + 8);
        *(v11 + 12) = *v28;
        *(v11 + 20) = v42;
        *(v28 + 8) = v41;
        *v28 = v40;
        if (*(a2 - 16) < v41)
        {
          v196 = *(v28 + 8);
          v171 = *v28;
          v43 = *v9;
          *(v28 + 8) = *(a2 - 16);
          *v28 = v43;
          v31 = v171;
          v32 = v196;
LABEL_39:
          *(a2 - 16) = v32;
          *v9 = v31;
        }
      }

      v44 = v11 + 12 * v14;
      v45 = *(v44 + 20);
      v46 = *(a2 - 28);
      if (v45 >= *(v11 + 32))
      {
        if (v46 < v45)
        {
          v197 = *(v44 + 20);
          v172 = *(v44 + 12);
          v50 = *v10;
          *(v44 + 20) = *(a2 - 28);
          *(v44 + 12) = v50;
          *(a2 - 28) = v197;
          *v10 = v172;
          if (*(v44 + 20) < *(v11 + 32))
          {
            v51 = *(v11 + 24);
            v52 = *(v11 + 32);
            v53 = *(v44 + 20);
            *(v11 + 24) = *(v44 + 12);
            *(v11 + 32) = v53;
            *(v44 + 20) = v52;
            *(v44 + 12) = v51;
          }
        }
      }

      else
      {
        if (v46 < v45)
        {
          v47 = *(v11 + 24);
          v48 = *(v11 + 32);
          v49 = *(a2 - 28);
          *(v11 + 24) = *v10;
          *(v11 + 32) = v49;
          goto LABEL_48;
        }

        v54 = *(v11 + 24);
        v55 = *(v11 + 32);
        v56 = *(v44 + 20);
        *(v11 + 24) = *(v44 + 12);
        *(v11 + 32) = v56;
        *(v44 + 20) = v55;
        *(v44 + 12) = v54;
        if (*(a2 - 28) < v55)
        {
          v198 = *(v44 + 20);
          v173 = *(v44 + 12);
          v57 = *v10;
          *(v44 + 20) = *(a2 - 28);
          *(v44 + 12) = v57;
          v47 = v173;
          v48 = v198;
LABEL_48:
          *(a2 - 28) = v48;
          *v10 = v47;
        }
      }

      v58 = *(v15 + 8);
      v59 = *(v44 + 20);
      if (v58 >= *(v28 + 8))
      {
        if (v59 < v58)
        {
          v200 = *(v15 + 8);
          v175 = *v15;
          *v15 = *(v44 + 12);
          *(v15 + 8) = *(v44 + 20);
          *(v44 + 20) = v200;
          *(v44 + 12) = v175;
          if (*(v15 + 8) < *(v28 + 8))
          {
            v201 = *(v28 + 8);
            v176 = *v28;
            *v28 = *v15;
            *(v28 + 8) = *(v15 + 8);
            *(v15 + 8) = v201;
            *v15 = v176;
          }
        }
      }

      else
      {
        if (v59 < v58)
        {
          v199 = *(v28 + 8);
          v174 = *v28;
          *v28 = *(v44 + 12);
          *(v28 + 8) = *(v44 + 20);
          goto LABEL_57;
        }

        v202 = *(v28 + 8);
        v177 = *v28;
        *v28 = *v15;
        *(v28 + 8) = *(v15 + 8);
        *(v15 + 8) = v202;
        *v15 = v177;
        if (*(v44 + 20) < v202)
        {
          v199 = *(v15 + 8);
          v174 = *v15;
          *v15 = *(v44 + 12);
          *(v15 + 8) = *(v44 + 20);
LABEL_57:
          *(v44 + 20) = v199;
          *(v44 + 12) = v174;
        }
      }

      v203 = *(v11 + 8);
      v178 = *v11;
      v60 = *v15;
      *(v11 + 8) = *(v15 + 8);
      *v11 = v60;
      *(v15 + 8) = v203;
      *v15 = v178;
      goto LABEL_59;
    }

    v19 = *(v11 + 8);
    if (v19 >= *(v15 + 8))
    {
      if (v16 < v19)
      {
        v191 = *(v11 + 8);
        v166 = *v11;
        v23 = *v8;
        *(v11 + 8) = *(a2 - 4);
        *v11 = v23;
        *(a2 - 4) = v191;
        *v8 = v166;
        if (*(v11 + 8) < *(v15 + 8))
        {
          v192 = *(v15 + 8);
          v167 = *v15;
          v24 = *v11;
          *(v15 + 8) = *(v11 + 8);
          *v15 = v24;
          *(v11 + 8) = v192;
          *v11 = v167;
        }
      }

      goto LABEL_59;
    }

    if (v16 < v19)
    {
      v188 = *(v15 + 8);
      v163 = *v15;
      v20 = *v8;
      *(v15 + 8) = *(a2 - 4);
      *v15 = v20;
LABEL_36:
      *(a2 - 4) = v188;
      *v8 = v163;
      goto LABEL_59;
    }

    v195 = *(v15 + 8);
    v170 = *v15;
    v38 = *v11;
    *(v15 + 8) = *(v11 + 8);
    *v15 = v38;
    *(v11 + 8) = v195;
    *v11 = v170;
    if (*(a2 - 4) < v195)
    {
      v188 = *(v11 + 8);
      v163 = *v11;
      v39 = *v8;
      *(v11 + 8) = *(a2 - 4);
      *v11 = v39;
      goto LABEL_36;
    }

LABEL_59:
    --a3;
    if (a4)
    {
      v61 = *(v11 + 8);
LABEL_62:
      v62 = *v11;
      v63 = v11;
      do
      {
        v64 = v63;
        v63 += 12;
      }

      while (*(v64 + 20) < v61);
      v65 = a2;
      if (v64 == v11)
      {
        v68 = a2;
        while (v63 < v68)
        {
          v66 = v68 - 12;
          v69 = *(v68 - 4);
          v68 -= 12;
          if (v69 < v61)
          {
            goto LABEL_72;
          }
        }

        v66 = v68;
      }

      else
      {
        do
        {
          v66 = v65 - 12;
          v67 = *(v65 - 4);
          v65 -= 12;
        }

        while (v67 >= v61);
      }

LABEL_72:
      v11 = v63;
      if (v63 < v66)
      {
        v70 = v66;
        do
        {
          v71 = *v11;
          v204 = *(v11 + 8);
          v72 = *(v70 + 8);
          *v11 = *v70;
          *(v11 + 8) = v72;
          *(v70 + 8) = v204;
          *v70 = v71;
          do
          {
            v73 = *(v11 + 20);
            v11 += 12;
          }

          while (v73 < v61);
          do
          {
            v74 = *(v70 - 4);
            v70 -= 12;
          }

          while (v74 >= v61);
        }

        while (v11 < v70);
      }

      if (v11 - 12 != v7)
      {
        v75 = *(v11 - 12);
        *(v7 + 8) = *(v11 - 4);
        *v7 = v75;
      }

      *(v11 - 12) = v62;
      *(v11 - 4) = v61;
      if (v63 < v66)
      {
        goto LABEL_83;
      }

      v76 = sub_2774D3BB8(v7, v11 - 12);
      result = sub_2774D3BB8(v11, a2);
      if (result)
      {
        a2 = v11 - 12;
        if (!v76)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v76)
      {
LABEL_83:
        result = sub_2774D2A34(v7, v11 - 12, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v61 = *(v11 + 8);
      if (*(v11 - 4) < v61)
      {
        goto LABEL_62;
      }

      if (v61 >= *(a2 - 4))
      {
        v79 = v11 + 12;
        do
        {
          v11 = v79;
          if (v79 >= a2)
          {
            break;
          }

          v80 = *(v79 + 8);
          v79 += 12;
        }

        while (v61 >= v80);
      }

      else
      {
        v77 = v11;
        do
        {
          v11 = v77 + 12;
          v78 = *(v77 + 20);
          v77 += 12;
        }

        while (v61 >= v78);
      }

      v81 = a2;
      if (v11 < a2)
      {
        v82 = a2;
        do
        {
          v81 = v82 - 12;
          v83 = *(v82 - 4);
          v82 -= 12;
        }

        while (v61 < v83);
      }

      v84 = *v7;
      while (v11 < v81)
      {
        v205 = *(v11 + 8);
        v179 = *v11;
        v85 = *v81;
        *(v11 + 8) = *(v81 + 8);
        *v11 = v85;
        *(v81 + 8) = v205;
        *v81 = v179;
        do
        {
          v86 = *(v11 + 20);
          v11 += 12;
        }

        while (v61 >= v86);
        do
        {
          v87 = *(v81 - 4);
          v81 -= 12;
        }

        while (v61 < v87);
      }

      if (v11 - 12 != v7)
      {
        v88 = *(v11 - 12);
        *(v7 + 8) = *(v11 - 4);
        *v7 = v88;
      }

      a4 = 0;
      *(v11 - 12) = v84;
      *(v11 - 4) = v61;
    }
  }

  v89 = *(v11 + 20);
  v90 = *(a2 - 4);
  if (v89 >= *(v11 + 8))
  {
    if (v90 >= v89)
    {
      return result;
    }

    v145 = *(v11 + 12);
    v146 = *(v11 + 20);
    v147 = *(a2 - 4);
    *(v11 + 12) = *v8;
    *(v11 + 20) = v147;
    *(a2 - 4) = v146;
    *v8 = v145;
    goto LABEL_195;
  }

  if (v90 < v89)
  {
    goto LABEL_112;
  }

  v210 = *(v11 + 8);
  v184 = *v11;
  *v11 = *(v11 + 12);
  *(v11 + 8) = *(v11 + 20);
  *(v11 + 12) = v184;
  *(v11 + 20) = v210;
  if (*(a2 - 4) < *(v11 + 20))
  {
    v92 = *(v11 + 12);
    v93 = *(v11 + 20);
    v155 = *(a2 - 4);
    *(v11 + 12) = *v8;
    *(v11 + 20) = v155;
    goto LABEL_113;
  }

  return result;
}

uint64_t *sub_2774D3978(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *(a2 + 2);
  v6 = *(a3 + 2);
  if (v5 >= *(result + 2))
  {
    if (v6 < v5)
    {
      v10 = *(a2 + 2);
      v11 = *a2;
      v12 = *(a3 + 2);
      *a2 = *a3;
      *(a2 + 2) = v12;
      *a3 = v11;
      *(a3 + 2) = v10;
      if (*(a2 + 2) < *(result + 2))
      {
        v13 = *(result + 2);
        v14 = *result;
        v15 = *(a2 + 2);
        *result = *a2;
        *(result + 2) = v15;
        *a2 = v14;
        *(a2 + 2) = v13;
      }
    }
  }

  else
  {
    if (v6 < v5)
    {
      v7 = *(result + 2);
      v8 = *result;
      v9 = *(a3 + 2);
      *result = *a3;
      *(result + 2) = v9;
LABEL_9:
      *a3 = v8;
      *(a3 + 2) = v7;
      goto LABEL_10;
    }

    v16 = *(result + 2);
    v17 = *result;
    v18 = *(a2 + 2);
    *result = *a2;
    *(result + 2) = v18;
    *a2 = v17;
    *(a2 + 2) = v16;
    if (*(a3 + 2) < *(a2 + 2))
    {
      v7 = *(a2 + 2);
      v8 = *a2;
      v19 = *(a3 + 2);
      *a2 = *a3;
      *(a2 + 2) = v19;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*(a4 + 2) < *(a3 + 2))
  {
    v20 = *(a3 + 2);
    v21 = *a3;
    v22 = *(a4 + 2);
    *a3 = *a4;
    *(a3 + 2) = v22;
    *a4 = v21;
    *(a4 + 2) = v20;
    if (*(a3 + 2) < *(a2 + 2))
    {
      v23 = *(a2 + 2);
      v24 = *a2;
      v25 = *(a3 + 2);
      *a2 = *a3;
      *(a2 + 2) = v25;
      *a3 = v24;
      *(a3 + 2) = v23;
      if (*(a2 + 2) < *(result + 2))
      {
        v26 = *(result + 2);
        v27 = *result;
        v28 = *(a2 + 2);
        *result = *a2;
        *(result + 2) = v28;
        *a2 = v27;
        *(a2 + 2) = v26;
      }
    }
  }

  if (*(a5 + 2) < *(a4 + 2))
  {
    v29 = *(a4 + 2);
    v30 = *a4;
    v31 = *(a5 + 2);
    *a4 = *a5;
    *(a4 + 2) = v31;
    *a5 = v30;
    *(a5 + 2) = v29;
    if (*(a4 + 2) < *(a3 + 2))
    {
      v32 = *(a3 + 2);
      v33 = *a3;
      v34 = *(a4 + 2);
      *a3 = *a4;
      *(a3 + 2) = v34;
      *a4 = v33;
      *(a4 + 2) = v32;
      if (*(a3 + 2) < *(a2 + 2))
      {
        v35 = *(a2 + 2);
        v36 = *a2;
        v37 = *(a3 + 2);
        *a2 = *a3;
        *(a2 + 2) = v37;
        *a3 = v36;
        *(a3 + 2) = v35;
        if (*(a2 + 2) < *(result + 2))
        {
          v38 = *(result + 2);
          v39 = *result;
          v40 = *(a2 + 2);
          *result = *a2;
          *(result + 2) = v40;
          *a2 = v39;
          *(a2 + 2) = v38;
        }
      }
    }
  }

  return result;
}

BOOL sub_2774D3BB8(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 2);
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v6 = (a2 - 12);
      v7 = *(a1 + 20);
      v8 = *(a2 - 4);
      if (v7 < *(a1 + 8))
      {
        if (v8 >= v7)
        {
          v34 = *(a1 + 8);
          v35 = *a1;
          *a1 = *(a1 + 12);
          *(a1 + 8) = *(a1 + 20);
          *(a1 + 12) = v35;
          *(a1 + 20) = v34;
          if (*(a2 - 4) >= *(a1 + 20))
          {
            return 1;
          }

          v9 = *(a1 + 20);
          v10 = *(a1 + 12);
          v36 = *(a2 - 4);
          *(a1 + 12) = *v6;
          *(a1 + 20) = v36;
        }

        else
        {
          v9 = *(a1 + 8);
          v10 = *a1;
          v11 = *(a2 - 4);
          *a1 = *v6;
          *(a1 + 8) = v11;
        }

        *v6 = v10;
        *(a2 - 4) = v9;
        return 1;
      }

      if (v8 >= v7)
      {
        return 1;
      }

      v23 = *(a1 + 20);
      v24 = *(a1 + 12);
      v25 = *(a2 - 4);
      *(a1 + 12) = *v6;
      *(a1 + 20) = v25;
      *v6 = v24;
      *(a2 - 4) = v23;
LABEL_50:
      if (*(a1 + 20) < *(a1 + 8))
      {
        v55 = *(a1 + 8);
        v56 = *a1;
        *a1 = *(a1 + 12);
        *(a1 + 8) = *(a1 + 20);
        *(a1 + 12) = v56;
        *(a1 + 20) = v55;
      }

      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      sub_2774D3978(a1, (a1 + 12), (a1 + 24), (a1 + 36), (a2 - 12));
      return 1;
    }

    v18 = *(a1 + 20);
    v19 = *(a1 + 8);
    v20 = *(a1 + 32);
    if (v18 >= v19)
    {
      if (v20 < v18)
      {
        v30 = *(a1 + 20);
        v31 = *(a1 + 12);
        *(a1 + 12) = *(a1 + 24);
        *(a1 + 20) = *(a1 + 32);
        *(a1 + 24) = v31;
        *(a1 + 32) = v30;
        if (*(a1 + 20) < v19)
        {
          v32 = *(a1 + 8);
          v33 = *a1;
          *a1 = *(a1 + 12);
          *(a1 + 8) = *(a1 + 20);
          *(a1 + 12) = v33;
          *(a1 + 20) = v32;
        }
      }

      goto LABEL_47;
    }

    if (v20 >= v18)
    {
      v47 = *(a1 + 8);
      v48 = *a1;
      *a1 = *(a1 + 12);
      *(a1 + 8) = *(a1 + 20);
      *(a1 + 12) = v48;
      *(a1 + 20) = v47;
      if (v20 >= *(a1 + 20))
      {
        goto LABEL_47;
      }

      v21 = *(a1 + 20);
      v22 = *(a1 + 12);
      *(a1 + 12) = *(a1 + 24);
      *(a1 + 20) = *(a1 + 32);
    }

    else
    {
      v21 = *(a1 + 8);
      v22 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 8) = *(a1 + 32);
    }

    *(a1 + 24) = v22;
    *(a1 + 32) = v21;
LABEL_47:
    if (*(a2 - 4) >= *(a1 + 32))
    {
      return 1;
    }

    v49 = a2 - 12;
    v50 = *(a1 + 32);
    v51 = *(a1 + 24);
    v52 = *(a2 - 4);
    *(a1 + 24) = *(a2 - 12);
    *(a1 + 32) = v52;
    *v49 = v51;
    *(v49 + 8) = v50;
    if (*(a1 + 32) >= *(a1 + 20))
    {
      return 1;
    }

    v53 = *(a1 + 20);
    v54 = *(a1 + 12);
    *(a1 + 12) = *(a1 + 24);
    *(a1 + 20) = *(a1 + 32);
    *(a1 + 24) = v54;
    *(a1 + 32) = v53;
    goto LABEL_50;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    if (*(a2 - 4) < *(a1 + 8))
    {
      v3 = *(a1 + 8);
      v4 = *a1;
      v5 = *(a2 - 4);
      *a1 = *(a2 - 12);
      *(a1 + 8) = v5;
      *(a2 - 12) = v4;
      *(a2 - 4) = v3;
    }

    return 1;
  }

LABEL_13:
  v12 = a1 + 24;
  v13 = *(a1 + 20);
  v14 = *(a1 + 8);
  v15 = *(a1 + 32);
  if (v13 >= v14)
  {
    if (v15 < v13)
    {
      v26 = *(a1 + 20);
      v27 = *(a1 + 12);
      *(a1 + 12) = *v12;
      *(a1 + 20) = *(a1 + 32);
      *v12 = v27;
      *(a1 + 32) = v26;
      if (*(a1 + 20) < v14)
      {
        v28 = *(a1 + 8);
        v29 = *a1;
        *a1 = *(a1 + 12);
        *(a1 + 8) = *(a1 + 20);
        *(a1 + 12) = v29;
        *(a1 + 20) = v28;
      }
    }
  }

  else
  {
    if (v15 >= v13)
    {
      v37 = *(a1 + 8);
      v38 = *a1;
      *a1 = *(a1 + 12);
      *(a1 + 8) = *(a1 + 20);
      *(a1 + 12) = v38;
      *(a1 + 20) = v37;
      if (v15 >= *(a1 + 20))
      {
        goto LABEL_33;
      }

      v16 = *(a1 + 20);
      v17 = *(a1 + 12);
      *(a1 + 12) = *v12;
      *(a1 + 20) = *(a1 + 32);
    }

    else
    {
      v16 = *(a1 + 8);
      v17 = *a1;
      *a1 = *v12;
      *(a1 + 8) = *(a1 + 32);
    }

    *v12 = v17;
    *(a1 + 32) = v16;
  }

LABEL_33:
  v39 = a1 + 36;
  if (a1 + 36 == a2)
  {
    return 1;
  }

  v40 = 0;
  v41 = 0;
  while (1)
  {
    v42 = *(v39 + 8);
    if (v42 < *(v12 + 8))
    {
      v43 = *v39;
      v44 = v40;
      while (1)
      {
        v45 = a1 + v44;
        *(v45 + 36) = *(a1 + v44 + 24);
        *(v45 + 44) = *(a1 + v44 + 32);
        if (v44 == -24)
        {
          break;
        }

        v44 -= 12;
        if (v42 >= *(v45 + 20))
        {
          v46 = a1 + v44 + 36;
          goto LABEL_41;
        }
      }

      v46 = a1;
LABEL_41:
      *v46 = v43;
      *(v46 + 8) = v42;
      if (++v41 == 8)
      {
        return v39 + 12 == a2;
      }
    }

    v12 = v39;
    v40 += 12;
    v39 += 12;
    if (v39 == a2)
    {
      return 1;
    }
  }
}

BOOL sub_2774D4020(uint64_t a1, __int16 *a2, __int16 *a3)
{
  v3 = *(a2 + 8) >> 4;
  if (v3 == 15)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a1 + 16 * v3 + 1672);
  }

  v5 = *(a2 + 9) >> 4;
  if (v5 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(a1 + 16 * v5 + 1928);
  }

  v7 = *(a3 + 8) >> 4;
  if (v7 == 15)
  {
    v8 = 0;
  }

  else
  {
    v8 = *(a1 + 16 * v7 + 1672);
  }

  v9 = *(a3 + 9) >> 4;
  if (v9 == 15)
  {
    v10 = 0;
  }

  else
  {
    v10 = *(a1 + 16 * v9 + 1928);
  }

  if (v4 == v8 && v6 == v10)
  {
    if (v4 != v6)
    {
      v11 = *a3 - *a2;
      if (v11 < 0)
      {
        v11 = *a2 - *a3;
      }

      if (v11 <= 3)
      {
        v12 = a3[1] - a2[1];
        if (v12 < 0)
        {
          v12 = a2[1] - a3[1];
        }

        if (v12 <= 3)
        {
          v13 = a3[2] - a2[2];
          if (v13 < 0)
          {
            v13 = a2[2] - a3[2];
          }

          if (v13 <= 3)
          {
            v14 = 3;
LABEL_62:
            v28 = a3[v14] - a2[3];
            if (v28 < 0)
            {
              v28 = -v28;
            }

            return v28 > 3;
          }
        }
      }

      return 1;
    }

    goto LABEL_39;
  }

  result = 1;
  if (v4 != v10 || v6 != v8)
  {
    return result;
  }

  if (v4 == v6)
  {
LABEL_39:
    v19 = *a3;
    v20 = *a2;
    v21 = v19 - v20;
    if (v19 - v20 < 0)
    {
      v21 = v20 - v19;
    }

    if (v21 <= 3)
    {
      v22 = a3[1] - a2[1];
      if (v22 < 0)
      {
        v22 = a2[1] - a3[1];
      }

      if (v22 <= 3)
      {
        v23 = a3[2] - a2[2];
        if (v23 < 0)
        {
          v23 = a2[2] - a3[2];
        }

        if (v23 <= 3)
        {
          v24 = a3[3] - a2[3];
          if (v24 < 0)
          {
            v24 = a2[3] - a3[3];
          }

          if (v24 < 4)
          {
            return 0;
          }
        }
      }
    }

    v25 = a3[2] - v20;
    if (v25 < 0)
    {
      v25 = -v25;
    }

    if (v25 > 3)
    {
      return 1;
    }

    v26 = a3[3] - a2[1];
    if (v26 < 0)
    {
      v26 = a2[1] - a3[3];
    }

    if (v26 > 3)
    {
      return 1;
    }

    v27 = v19 - a2[2];
    if (v27 < 0)
    {
      v27 = -v27;
    }

    if (v27 > 3)
    {
      return 1;
    }

LABEL_61:
    v14 = 1;
    goto LABEL_62;
  }

  v16 = a3[2] - *a2;
  if (v16 < 0)
  {
    v16 = *a2 - a3[2];
  }

  if (v16 <= 3)
  {
    v17 = a3[3] - a2[1];
    if (v17 < 0)
    {
      v17 = a2[1] - a3[3];
    }

    if (v17 <= 3)
    {
      v18 = *a3 - a2[2];
      if (v18 < 0)
      {
        v18 = a2[2] - *a3;
      }

      if (v18 <= 3)
      {
        goto LABEL_61;
      }
    }
  }

  return result;
}

uint64_t sub_2774D4240(uint64_t a1, int a2)
{
  v4 = a1;
  v5 = *(a1 + 5320);
  v6 = *(v5 + 576);
  v7 = *(v5 + 632);
  v8 = *(v6 + 480);
  v9 = *(a1 + 568);
  v10 = (v9 + 1);
  v473 = v6;
  v11 = *(v6 + 524);
  v472 = v9;
  if (v11 >= v10)
  {
    v12 = (v9 + 1);
  }

  else
  {
    v12 = v11;
  }

  if (*(*(a1 + 1576) + 33) == 1)
  {
    v13 = *(*(a1 + 1568) + 52);
  }

  else
  {
    v13 = 0;
  }

  v14 = *(a1 + 653);
  v469 = *(v473 + 544);
  v470 = *(v7 + 524);
  v486 = *(a1 + 52);
  v508 = 0;
  v15 = *(a1 + 16);
  v16 = *(v15 + 201);
  v501 = *(v15 + 2120);
  v496 = *(v15 + 2124);
  v493 = *(v15 + 2113);
  v504 = *(v15 + 2096);
  v491 = *(v15 + 2098);
  if (v16 >= 2)
  {
    v17 = v16 < 3;
  }

  else
  {
    v17 = (v16 < 3) + 1;
  }

  v499 = v17;
  v18 = v8 < 2 || dword_280B9A880 < 4;
  v480 = v12;
  if (!v18)
  {
    fwrite("max_slice_data_size calculation needs additional work for arbitrary slices\n", 0x4BuLL, 1uLL, *MEMORY[0x277D85DF8]);
    v4 = a1;
    syslog(28, "max_slice_data_size calculation needs additional work for arbitrary slices\n");
  }

  if (*(v4 + 58) > 1u)
  {
    v19 = 0;
  }

  else
  {
    v19 = *(*(v4 + 5320) + 216);
  }

  *(v4 + 5432) = v19 & 1;
  *(v4 + 5433) = 0;
  v20 = *(v4 + 4768);
  *(v4 + 5436) = *(v20 + 560);
  *(v4 + 5440) = 0;
  *(v4 + 5448) = -1;
  *(v4 + 5456) = -1;
  *(v4 + 5464) = 0;
  if (*(v20 + 553))
  {
    v21 = (v4 + 5448);
    if ((atomic_load_explicit(&qword_280A71318, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A71318))
    {
      dword_280A71310 = 32;
      __cxa_guard_release(&qword_280A71318);
    }

    v22 = 0;
    *v21 = 0;
    *(v4 + 5456) = 0;
    *(v4 + 5464) = 0;
    v23 = *(v4 + 5320);
    if (*(v4 + 58) != 2)
    {
      if ((*(v23 + 648) & 0xFE) == 4)
      {
        v24 = a1;
        v25 = *(*(a1 + 5216) + 8) < *(*(a1 + 5192) + 8);
      }

      else
      {
        v25 = 0;
        v24 = a1;
      }

      v26 = *(v24 + (v25 << 8) + 16 * **(v24 + 24 * v25 + 5192) + 1672);
      v27 = (v26 + 664);
      v28 = *(v26 + 680);
      *v21 = *v27;
      *(v4 + 5464) = v28;
      v22 = *(v24 + 5460);
    }

    v29 = *(v23 + 616);
    v30 = *(v29 + 672);
    v31 = *(v29 + 664);
    v32 = v31 >= 151 && v31 > 2 * *(v29 + 668);
    if (v22 > 399)
    {
      v32 = 1;
    }

    if (v32 || v30 <= dword_280A71310 || *(a1 + 5456) <= dword_280A71310 || v22 <= dword_280A71310)
    {
      goto LABEL_41;
    }

    v33 = 2 * v22;
    v34 = *(a1 + 5448);
    if (v34 < 2 * v22)
    {
      v33 = *(a1 + 5448);
    }

    v35 = (v33 << 10) / v34;
    *(a1 + 5444) = v35;
    v36 = *(a1 + 4768);
    v37 = *(v36 + 552);
    *(v4 + 5433) = v37;
    *(v29 + 680) = v37;
    if (!*(v36 + 554))
    {
LABEL_41:
      v4 = a1;
    }

    else
    {
      v38 = nearbyintf(*(v36 + 556) * 32.0);
      if (v30 >= v22)
      {
        v30 = sub_2774DAAA4((v30 * v30 + v22 * v22));
      }

      v39 = (((v30 * v38 + 16) >> 5) * v35 + 512) >> 10;
      v4 = a1;
      *(a1 + 5440) = v39;
    }
  }

  else
  {
    v23 = *(v4 + 5320);
  }

  v40 = *(v4 + 5436);
  if (!v40)
  {
    v40 = *(v23 + 668);
    *(v4 + 5436) = v40;
  }

  *(*(v23 + 616) + 684) = v40;
  v41 = *(v4 + 5360);
  v42 = *(v4 + 5352);
  v43 = (v41 - v42) >> 6;
  if (v10 <= v43)
  {
    if (v10 < v43)
    {
      v49 = (v42 + (v10 << 6));
      if (v41 != v49)
      {
        v50 = *(v4 + 5360);
        do
        {
          v52 = *(v50 - 8);
          v50 -= 8;
          v51 = v52;
          if (v52)
          {
            *(v41 - 7) = v51;
            operator delete(v51);
          }

          v41 = v50;
        }

        while (v50 != v49);
      }

      *(a1 + 5360) = v49;
    }
  }

  else
  {
    v44 = v10 - v43;
    v45 = *(v4 + 5368);
    if (v44 > (v45 - v41) >> 6)
    {
      if ((v10 & 0x80000000) != 0)
      {
        sub_2773C0914();
      }

      v46 = v45 - v42;
      v47 = (v45 - v42) >> 5;
      if (v47 <= v10)
      {
        v47 = v10;
      }

      if (v46 >= 0x7FFFFFFFFFFFFFC0)
      {
        v48 = 0x3FFFFFFFFFFFFFFLL;
      }

      else
      {
        v48 = v47;
      }

      if (!(v48 >> 58))
      {
        operator new();
      }

      goto LABEL_482;
    }

    v53 = &v41[8 * v44];
    do
    {
      *v41 = 0;
      v41[1] = 0;
      v41[2] = 0;
      v41[5] = 0;
      v41[6] = 0;
      v41[4] = 0;
      v41 += 8;
    }

    while (v41 != v53);
    *(a1 + 5360) = v53;
  }

  v489 = v8;
  v54 = a1;
  v55 = *(a1 + 5336);
  v56 = *(a1 + 5328);
  v57 = 0xCBEEA4E1A08AD8F3 * ((v55 - v56) >> 3);
  v58 = v10 - v57;
  if (v10 <= v57)
  {
    if (v10 >= v57)
    {
      goto LABEL_80;
    }

    v62 = v56 + 472 * v10;
  }

  else
  {
    v59 = *(a1 + 5344);
    if (0xCBEEA4E1A08AD8F3 * ((v59 - v55) >> 3) < v58)
    {
      if ((v10 & 0x80000000) != 0)
      {
        sub_2773C0914();
      }

      v60 = 0x97DD49C34115B1E6 * ((v59 - v56) >> 3);
      if (v60 <= v10)
      {
        v60 = v10;
      }

      if (0xCBEEA4E1A08AD8F3 * ((v59 - v56) >> 3) >= 0x456C797DD49C34)
      {
        v61 = 0x8AD8F2FBA93868;
      }

      else
      {
        v61 = v60;
      }

      if (v61 <= 0x8AD8F2FBA93868)
      {
        operator new();
      }

      goto LABEL_482;
    }

    v62 = v55 + 472 * v58;
    v63 = 472 * v10 - 8 * ((v55 - v56) >> 3);
    v64 = *(a1 + 5336);
    do
    {
      v64[4] = 0;
      v64[5] = 0;
      *v64 = &unk_288662920;
      v64[32] = 0;
      v64[33] = 0;
      v64[58] = 0;
      v64 += 59;
      v55 += 472;
      v63 -= 472;
    }

    while (v63);
    v54 = a1;
  }

  v54[667] = v62;
LABEL_80:
  sub_27742C5B0(v54 + 148, v10);
  v65 = v480;
  v66 = v54[673];
  v67 = v54[672];
  v68 = (v66 - v67) >> 3;
  v471 = v10;
  v467 = v13;
  v468 = a2;
  if (v480 <= v68)
  {
    if (v480 >= v68)
    {
      v73 = v54[673];
      v54 = a1;
      goto LABEL_98;
    }

    v73 = (v67 + 8 * v480);
    while (v66 != v73)
    {
      sub_2774D0A0C(--v66, 0);
    }

    v54 = a1;
  }

  else
  {
    v69 = v480 - v68;
    v70 = v54[674];
    if (v69 > (v70 - v66) >> 3)
    {
      if ((v480 & 0x80000000) != 0)
      {
        sub_2773C0914();
      }

      v71 = v70 - v67;
      if (v71 >> 2 > v480)
      {
        v65 = v71 >> 2;
      }

      if (v71 >= 0x7FFFFFFFFFFFFFF8)
      {
        v72 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v72 = v65;
      }

      if (!(v72 >> 61))
      {
        operator new();
      }

      goto LABEL_482;
    }

    bzero(v66, 8 * v69);
    v73 = &v66[v69];
  }

  v54[673] = v73;
LABEL_98:
  for (i = v54[672]; i != v73; ++i)
  {
    v75 = operator new(0x76C0uLL, 0x40uLL);
    bzero(v75, 0x76C0uLL);
    sub_27745E6C8((v75 + 1664));
    *(v75 + 1823) = 0;
    *(v75 + 14552) = 0u;
    *(v75 + 14568) = 0u;
    *(v75 + 14520) = 0u;
    *(v75 + 14536) = 0u;
    bzero(v75 + 15040, 0x1800uLL);
    *(v75 + 3050) = 0;
    sub_2774CCAF8(v75 + 3030);
    *(v75 + 2666) = v75 + 21376;
    *(v75 + 2667) = v75 + 23424;
    *(v75 + 2668) = v75 + 23936;
    *(v75 + 2669) = v75 + 24064;
    *(v75 + 1875) = v75 + 24552;
    *(v75 + 6138) = 0;
    v75[24556] = 0;
    *(v75 + 6144) = 0;
    *(v75 + 6147) = 0;
    *(v75 + 6148) = 0;
    *(v75 + 74) = 0;
    *(v75 + 1864) = 0;
    *(v75 + 14920) = 0u;
    *(v75 + 24808) = 0u;
    *(v75 + 1556) = 0u;
    *(v75 + 1557) = 0u;
    *(v75 + 1558) = 0u;
    *(v75 + 1559) = 0u;
    *(v75 + 1560) = 0u;
    *(v75 + 1561) = 0u;
    *(v75 + 1562) = 0u;
    *(v75 + 1563) = 0u;
    *(v75 + 1564) = 0u;
    *(v75 + 1565) = 0u;
    *(v75 + 6264) = 0;
    *(v75 + 25096) = 0u;
    *(v75 + 25112) = 0u;
    *(v75 + 25064) = 0u;
    *(v75 + 25080) = 0u;
    v75[24600] = 1;
    v75[24610] = 0;
    *(v75 + 12304) = -1;
    v75[27748] = 0;
    *(v75 + 1870) = 0u;
    *(v75 + 1884) = 0u;
    *(v75 + 3794) = 0;
    *(v75 + 3736) = &unk_288662D90;
    sub_2774D0A0C(i, v75);
  }

  if (*(v473 + 897))
  {
    v76 = *(*(a1 + 5320) + 576);
    v77 = *(v76 + 216);
    *(a1 + 5408) = v77;
    *(a1 + 5400) = *(v76 + 192) + 32 * (v77 * v486);
  }

  if (*(a1 + 58))
  {
    if (*(a1 + 58) == 1)
    {
      v78 = *(a1 + 553) ^ 1;
    }

    else
    {
      v78 = 2;
    }
  }

  else
  {
    v78 = *(a1 + 553);
  }

  if ((v472 & 0x80000000) == 0)
  {
    v79 = 0;
    v80 = 0;
    v81 = 0;
    do
    {
      *(*(a1 + 1184) + v79) = *(a1 + 653);
      v82 = sub_2773FB718(*(a1 + 5352) + v80, 3 * (((2 * v491 * ((v496 * v501) << (2 * v493))) >> v499) + ((v496 * v501) << (2 * v493)) * v504) / (16 * v489) / v10);
      if (v82)
      {
        v97 = v82;
        if (dword_280B9A880 < 3)
        {
          v90 = a1;
        }

        else
        {
          fwrite("Substream bitstream initialization failed\n", 0x2AuLL, 1uLL, *MEMORY[0x277D85DF8]);
          v90 = a1;
          syslog(27, "Substream bitstream initialization failed\n");
        }

        goto LABEL_471;
      }

      v83 = *(a1 + 5328);
      v84 = *(a1 + 5352) + v80;
      v85 = *(v84 + 32);
      v86 = *(v84 + 40);
      if (*(v84 + 52))
      {
        v87 = v85 >= v86;
      }

      else
      {
        v87 = 1;
      }

      if (!v87)
      {
        *(v84 + 32) = ++v85;
      }

      *(v84 + 48) = 0;
      *(v83 + v81 + 8) = xmmword_27750D350;
      v88 = (v83 + v81 + 8);
      v88[56] = v84;
      v88[57] = v85;
      v88[2] = -1;
      v88[3] = v85;
      v88[4] = v86;
      sub_2773FBCD4(v88, v78, v14);
      v81 += 472;
      v80 += 64;
      v79 += 4;
    }

    while (472 * v10 != v81);
  }

  LODWORD(v89) = v480;
  v90 = a1;
  if (v480 < 1)
  {
LABEL_289:
    if ((v469 & 4) != 0 && (v89 > 1 || *(v473 + 560) == 1))
    {
      sub_2773F16F4((v90 + 4800), *(v90 + 16));
    }

    LODWORD(memptr[0]) = 0;
    v507 = 0;
    v350 = 0x280B9A000;
      ;
    }

    v351 = v471;
    v352 = v480;
    if (v480 >= 1)
    {
      v357 = *(v90 + 5376);
      v358 = *(v90 + 5416);
      v359 = *(v90 + 5424);
      do
      {
        v360 = *v357++;
        v358 += *(v360 + 30360);
        v359 += *(v360 + 30364);
        --v352;
      }

      while (v352);
      *(v90 + 5416) = v358;
      *(v90 + 5424) = v359;
    }

    v508 = v470;
    if ((*(v90 + 512) & 1) != 0 || *(v90 + 513) == 1)
    {
      sub_2774BA50C((v90 + 3536), v90, 1, &v508);
    }

    if (v467)
    {
      sub_277452C30(v90 + 3400, *(v90 + 8), *(v90 + 653), &v508);
    }

    if (v472 >= 1)
    {
      if (*(v90 + 568) < 1)
      {
        goto LABEL_332;
      }

      v361 = 0;
      v362 = 0;
      v363 = *(v90 + 5352);
      do
      {
        sub_2773FBB94(v363 + (v361 << 6));
        v363 = *(v90 + 5352);
        v364 = v363 + (v361 << 6);
        v365 = *(v364 + 24);
        v366 = *(v364 + 32);
        if (v365 >= v366)
        {
          v368 = 0;
        }

        else
        {
          v367 = 0;
          v368 = 0;
          v369 = v365;
          do
          {
            v371 = *v369++;
            v370 = v371;
            v372 = v367 == 2;
            v373 = 2 * (v371 > 3u);
            if (v367 == 2)
            {
              v367 = v373;
            }

            if (v370)
            {
              v367 = 0;
            }

            else
            {
              ++v367;
            }

            v374 = v370 < 4u && v372;
            v368 += v374;
          }

          while (v369 != v366);
        }

        v375 = v368 - v365 + v366 - 1;
        *(*(v90 + 576) + 4 * v361) = v375;
        if (v362 <= v375)
        {
          v362 = v375;
        }

        ++v361;
      }

      while (v361 < *(v90 + 568));
      if (v362)
      {
        v376 = 31 - __clz(v362);
      }

      else
      {
LABEL_332:
        LOBYTE(v376) = 0;
      }

      *(v90 + 572) = v376;
    }

    if (v468)
    {
      sub_2773FA2B4(v90, *MEMORY[0x277D85DF8]);
    }

    v377 = *(v90 + 5320);
    v378 = *(v377 + 632);
    if (*(v90 + 632))
    {
      v380 = 19;
    }

    else if (*(v90 + 637))
    {
      v380 = 21;
    }

    else if ((*(v378 + 1024) & 0x80000000) != 0)
    {
      v380 = 7;
    }

    else if (*(v377 + 652) >= *(v377 + 608))
    {
      v380 = *(v378 + 40) != 0;
    }

    else
    {
      v380 = 9;
    }

    v379 = *(*(v377 + 576) + 480);
    v381 = sub_2773FB718(v90 + 1608, (2 * (v379 + *(v378 + 524) * *(v378 + 520)) - 2) / v379);
    if (v381)
    {
      v97 = v381;
      if (dword_280B9A880 < 3)
      {
        goto LABEL_471;
      }

      fwrite("Bitstream initialization for SliceEnc failed\n", 0x2DuLL, 1uLL, *MEMORY[0x277D85DF8]);
      syslog(27, "Bitstream initialization for SliceEnc failed\n");
      goto LABEL_348;
    }

    sub_2773FB780(v90 + 1608, 0, 1);
    sub_2773FB780(v90 + 1608, v380, 6);
    sub_2773FB780(v90 + 1608, 0, 6);
    sub_2773FB780(v90 + 1608, 1, 3);
    sub_2773FB780(v90 + 1608, *(v90 + 48), 1);
    if (*(v90 + 633) == 1)
    {
      sub_2773FB780(v90 + 1608, *(v90 + 49), 1);
    }

    v382 = *(v90 + 50) + 1;
    v383 = __clz(v382);
    sub_2773FB780(v90 + 1608, (v382 - (0x80000000 >> v383)) | (0x80000000 >> v383), (2 * v383) ^ 0x3F);
    if ((*(v90 + 48) & 1) == 0)
    {
      if (*(*(v90 + 32) + 2) == 1)
      {
        sub_2773FB780(v90 + 1608, *(v90 + 56), 1);
      }

      v384 = *(v90 + 52) + 1;
      v385 = __clz(v384);
      sub_2773FB780(v90 + 1608, (v384 - (0x80000000 >> v385)) | (0x80000000 >> v385), 63 - 2 * v385);
    }

    if (*(v90 + 56))
    {
LABEL_446:
      v441 = *(v90 + 32);
      if ((*(v441 + 20) & 1) != 0 || *(v441 + 21) == 1)
      {
        v442 = *(v90 + 568) + 1;
        v443 = __clz(v442);
        sub_2773FB780(v90 + 1608, (v442 - (0x80000000 >> v443)) | (0x80000000 >> v443), 63 - 2 * v443);
        if (*(v90 + 568) >= 1)
        {
          v444 = *(v90 + 572) + 1;
          v445 = __clz(v444);
          sub_2773FB780(v90 + 1608, (v444 - (0x80000000 >> v445)) | (0x80000000 >> v445), (2 * v445) ^ 0x3F);
          if (*(v90 + 568))
          {
            v446 = 0;
            do
            {
              sub_2773FB780(v90 + 1608, *(*(v90 + 576) + 4 * v446++), *(v90 + 572) + 1);
            }

            while (v446 < *(v90 + 568));
          }
        }
      }

      if (*(*(v90 + 32) + 1612) == 1)
      {
        v447 = *(v90 + 600) + 1;
        v448 = __clz(v447);
        sub_2773FB780(v90 + 1608, (v447 - (0x80000000 >> v448)) | (0x80000000 >> v448), (2 * v448) ^ 0x3F);
        if (*(v90 + 600))
        {
          v449 = 0;
          do
          {
            sub_2773FB780(v90 + 1608, *(*(v90 + 608) + v449++), 8);
          }

          while (v449 < *(v90 + 600));
        }
      }

      sub_2773FBB94(v90 + 1608);
      if (v472 < 0)
      {
LABEL_467:
        sub_2773FBB94(v90 + 1608);
        if (*(v90 + 1664) != 1)
        {
          v97 = 0;
          goto LABEL_471;
        }
      }

      else
      {
        v450 = 0;
        while (1)
        {
          v451 = *(v90 + 5352) + (v450 << 6);
          if (*(v451 + 56) == 1)
          {
            break;
          }

          v452 = *(v451 + 24);
          v453 = *(v451 + 52) + 8 * (*(v451 + 32) - v452);
          if (v453)
          {
            if (v453 < 0x21)
            {
              LODWORD(v454) = 0;
              v459 = 32;
            }

            else
            {
              v454 = 0;
              v455 = v90;
              do
              {
                v456 = v454;
                v457 = *v452++;
                v458 = bswap32(v457);
                sub_2773FB780(v455 + 1608, HIWORD(v458), 16);
                sub_2773FB780(v455 + 1608, v458, 16);
                v454 = v456 + 32;
              }

              while (v456 + 64 < v453);
              v459 = v456 + 64;
              v90 = v455;
            }

            sub_2773FB7E4(v90 + 1608, bswap32(*v452) >> (v459 - v453), v453 - v454);
          }

          if (++v450 == v351)
          {
            goto LABEL_467;
          }
        }
      }

      if (*(v350 + 2176) < 3)
      {
        v97 = 4294940770;
        goto LABEL_471;
      }

      v354 = "Ran out of allocated bufferspace\n";
      fwrite("Ran out of allocated bufferspace\n", 0x21uLL, 1uLL, *MEMORY[0x277D85DF8]);
      v97 = 4294940770;
LABEL_470:
      syslog(27, v354);
      goto LABEL_471;
    }

    v386 = *(v90 + 58) + 1;
    v387 = __clz(v386);
    sub_2773FB780(v90 + 1608, (v386 - (0x80000000 >> v387)) | (0x80000000 >> v387), (2 * v387) ^ 0x3F);
    if (*(*(v90 + 32) + 3) == 1)
    {
      sub_2773FB780(v90 + 1608, *(v90 + 59), 1);
    }

    v388 = *(v90 + 16);
    if ((*(v90 + 632) & 1) == 0)
    {
      sub_2773FB780(v90 + 1608, *(v90 + 64), *(v388 + 224) + 4);
      sub_2773FB780(v90 + 1608, *(v90 + 68), 1);
      if (*(v90 + 68))
      {
        v389 = *(*(v90 + 16) + 288);
        if (v389 >= 2)
        {
          sub_2773FB780(v90 + 1608, *(v90 + 320), 32 - __clz(v389 - 1));
        }
      }

      else
      {
        v97 = sub_277508F10(*(v90 + 5320) + 4368, v90 + 1608, *(v90 + 16), *(*(v90 + 16) + 288));
        if (v97)
        {
LABEL_348:
          if (*(v350 + 2176) < 3)
          {
            goto LABEL_471;
          }

          v353 = *MEMORY[0x277D85DF8];
          v354 = "Slice header encoding failed\n";
          v355 = "Slice header encoding failed\n";
          v356 = 29;
LABEL_350:
          fwrite(v355, v356, 1uLL, v353);
          goto LABEL_470;
        }
      }

      v388 = *(v90 + 16);
      if (*(v388 + 320) == 1)
      {
        if (*(v388 + 324))
        {
          v390 = *(v90 + 324) + 1;
          v391 = __clz(v390);
          sub_2773FB780(v90 + 1608, (v390 - (0x80000000 >> v391)) | (0x80000000 >> v391), 63 - 2 * v391);
        }

        v392 = *(v90 + 328) + 1;
        v393 = __clz(v392);
        sub_2773FB780(v90 + 1608, (v392 - (0x80000000 >> v393)) | (0x80000000 >> v393), 63 - 2 * v393);
        if (*(v90 + 324))
        {
          v394 = 0;
          v395 = v90;
          v396 = v90 + 332;
          do
          {
            v397 = *(v396 + v394) + 1;
            v398 = __clz(v397);
            sub_2773FB780(v395 + 1608, (v397 - (0x80000000 >> v398)) | (0x80000000 >> v398), (2 * v398) ^ 0x3F);
            v399 = (1 << v394) & *(v395 + 510);
            sub_2773FB780(v395 + 1608, v399 != 0, 1);
            if (v399)
            {
              v400 = *(v396 + 4 * v394 + 48) + 1;
              v401 = __clz(v400);
              sub_2773FB780(v395 + 1608, (v400 - (0x80000000 >> v401)) | (0x80000000 >> v401), 63 - 2 * v401);
            }

            ++v394;
            v402 = *(v395 + 324);
          }

          while (v394 < v402);
          v90 = v395;
        }

        else
        {
          LODWORD(v402) = 0;
        }

        if (v402 < *(v90 + 328) + v402)
        {
          v403 = (v90 + 4 * v402 + 380);
          v404 = (v90 + 2 * v402 + 348);
          do
          {
            v405 = *v404++;
            v406 = __clz(v405 + 1);
            sub_2773FB780(v90 + 1608, (v405 + 1 - (0x80000000 >> v406)) | (0x80000000 >> v406), (2 * v406) ^ 0x3F);
            v407 = (1 << v402) & *(v90 + 510);
            sub_2773FB780(v90 + 1608, (*(v90 + 508) >> v402) & 1, 1);
            sub_2773FB780(v90 + 1608, v407 != 0, 1);
            if (v407)
            {
              v408 = *v403 + 1;
              v409 = __clz(v408);
              sub_2773FB780(v90 + 1608, (v408 - (0x80000000 >> v409)) | (0x80000000 >> v409), 63 - 2 * v409);
            }

            ++v403;
            LODWORD(v402) = v402 + 1;
          }

          while (*(v90 + 328) + *(v90 + 324) > v402);
        }

        v388 = *(v90 + 16);
        v350 = 0x280B9A000uLL;
        v351 = v471;
      }

      if (*(v388 + 396) == 1)
      {
        sub_2773FB780(v90 + 1608, *(v90 + 514), 1);
        v388 = *(v90 + 16);
      }
    }

    if (*(v388 + 277) == 1)
    {
      sub_2773FB780(v90 + 1608, *(v90 + 512), 1);
      if (*(*(v90 + 16) + 201))
      {
        sub_2773FB780(v90 + 1608, *(v90 + 513), 1);
      }
    }

    if (*(v90 + 58) > 1u)
    {
LABEL_424:
      v428 = *(v90 + 559);
      if (v428 <= 0)
      {
        v429 = -2 * v428;
      }

      else
      {
        v429 = 2 * v428 - 1;
      }

      v430 = v429 + 1;
      v431 = __clz(v430);
      sub_2773FB780(v90 + 1608, (v430 - (0x80000000 >> v431)) | (0x80000000 >> v431), 63 - 2 * v431);
      v432 = *(v90 + 32);
      if (v432[16] == 1)
      {
        v433 = *(v90 + 560);
        if (v433 <= 0)
        {
          v434 = -2 * v433;
        }

        else
        {
          v434 = 2 * v433 - 1;
        }

        v435 = v434 + 1;
        v436 = __clz(v435);
        sub_2773FB780(v90 + 1608, (v435 - (0x80000000 >> v436)) | (0x80000000 >> v436), 63 - 2 * v436);
        v437 = *(v90 + 561);
        if (v437 <= 0)
        {
          v438 = -2 * v437;
        }

        else
        {
          v438 = 2 * v437 - 1;
        }

        v439 = v438 + 1;
        v440 = __clz(v439);
        sub_2773FB780(v90 + 1608, (v439 - (0x80000000 >> v440)) | (0x80000000 >> v440), 63 - 2 * v440);
        v432 = *(v90 + 32);
      }

      if (v432[29] == 1)
      {
        if (v432[30] == 1)
        {
          sub_2773FB780(v90 + 1608, *(v90 + 563), 1);
        }

        if (*(v90 + 563) == 1)
        {
          sub_2773FB780(v90 + 1608, *(v90 + 564), 1);
          if ((*(v90 + 564) & 1) == 0)
          {
            sub_2773FBB60(v90 + 1608, *(v90 + 565));
            sub_2773FBB60(v90 + 1608, *(v90 + 566));
          }
        }
      }

      if (*(*(v90 + 32) + 28) == 1 && ((*(v90 + 512) & 1) != 0 || (*(v90 + 513) & 1) != 0 || (*(v90 + 564) & 1) == 0))
      {
        sub_2773FB780(v90 + 1608, *(v90 + 567), 1);
      }

      goto LABEL_446;
    }

    sub_2773FB780(v90 + 1608, *(v90 + 515), 1);
    if (*(v90 + 515) == 1)
    {
      v410 = *(v90 + 516);
      v411 = __clz(v410);
      sub_2773FB780(v90 + 1608, (v410 - (0x80000000 >> v411)) | (0x80000000 >> v411), 63 - 2 * v411);
      if (!*(v90 + 58))
      {
        v412 = *(v90 + 517);
        v413 = __clz(v412);
        sub_2773FB780(v90 + 1608, (v412 - (0x80000000 >> v413)) | (0x80000000 >> v413), 63 - 2 * v413);
      }
    }

    if (*(*(v90 + 32) + 1608) == 1)
    {
      v414 = *(*(v90 + 5320) + 3064);
      if (v414 >= 2)
      {
        sub_2773FB780(v90 + 1608, *(v90 + 518), 1);
        if (*(v90 + 518) == 1 && *(v90 + 516) >= 1)
        {
          v415 = 0;
          v416 = 32 - __clz(v414 - 1);
          v417 = v90 + 520;
          while (1)
          {
            v418 = *(v417 + v415);
            if (v414 <= v418)
            {
              break;
            }

            sub_2773FB780(v90 + 1608, v418, v416);
            if (++v415 >= *(v90 + 516))
            {
              goto LABEL_397;
            }
          }

          if (*(v350 + 2176) >= 3)
          {
            v464 = "list_entry_l0_[%d] (%d) out of range [0, %d]\n";
            fprintf(*MEMORY[0x277D85DF8], "list_entry_l0_[%d] (%d) out of range [0, %d]\n");
LABEL_480:
            syslog(27, v464, v415, *(v417 + v415), v414);
            v97 = 4294954394;
            goto LABEL_348;
          }

          goto LABEL_481;
        }

LABEL_397:
        if (*(v90 + 58))
        {
LABEL_405:
          if (*(*(v90 + 32) + 6) == 1)
          {
            sub_2773FB780(v90 + 1608, *(v90 + 553), 1);
          }

          if (*(v90 + 514) != 1)
          {
            goto LABEL_415;
          }

          if (!*(v90 + 58))
          {
            sub_2773FB780(v90 + 1608, *(v90 + 554), 1);
          }

          if (*(v90 + 554) == 1)
          {
            if (*(v90 + 516) <= 1)
            {
              goto LABEL_415;
            }
          }

          else if (*(v90 + 517) < 2)
          {
LABEL_415:
            v423 = *(v90 + 32);
            if (*(v423 + 17) == 1 && *(v90 + 58) == 1 || *(v423 + 18) == 1 && !*(v90 + 58))
            {
              v424 = *(v90 + 556) + 1;
              v425 = __clz(v424);
              sub_2773FB780(v90 + 1608, (v424 - (0x80000000 >> v425)) | (0x80000000 >> v425), (2 * v425) ^ 0x3F);
              if (*(*(v90 + 16) + 201))
              {
                sub_2773FBB60(v90 + 1608, *(v90 + 557));
              }

              sub_2774DA778(v90, 0);
              if (!*(v90 + 58))
              {
                sub_2774DA778(v90, 1u);
              }
            }

            v426 = *(v90 + 558) + 1;
            v427 = __clz(v426);
            sub_2773FB780(v90 + 1608, (v426 - (0x80000000 >> v427)) | (0x80000000 >> v427), (2 * v427) ^ 0x3F);
            goto LABEL_424;
          }

          v421 = *(v90 + 555) + 1;
          v422 = __clz(v421);
          sub_2773FB780(v90 + 1608, (v421 - (0x80000000 >> v422)) | (0x80000000 >> v422), (2 * v422) ^ 0x3F);
          goto LABEL_415;
        }

        sub_2773FB780(v90 + 1608, *(v90 + 519), 1);
        if (*(v90 + 519) == 1 && *(v90 + 517) >= 1)
        {
          v415 = 0;
          v419 = 32 - __clz(v414 - 1);
          v417 = v90 + 536;
          while (1)
          {
            v420 = *(v417 + v415);
            if (v414 <= v420)
            {
              break;
            }

            sub_2773FB780(v90 + 1608, v420, v419);
            if (++v415 >= *(v90 + 517))
            {
              goto LABEL_403;
            }
          }

          if (*(v350 + 2176) >= 3)
          {
            v464 = "list_entry_l1_[%d] (%d) out of range [0, %d]\n";
            fprintf(*MEMORY[0x277D85DF8], "list_entry_l1_[%d] (%d) out of range [0, %d]\n");
            goto LABEL_480;
          }

LABEL_481:
          v97 = 4294954394;
          goto LABEL_471;
        }
      }
    }

LABEL_403:
    if (!*(v90 + 58))
    {
      sub_2773FB780(v90 + 1608, *(v90 + 552), 1);
    }

    goto LABEL_405;
  }

  v91 = 0;
  while (1)
  {
    v481 = v91;
    v92 = *(*(v90 + 5376) + 8 * v91);
    *v92 = v90;
    *(v92 + 30360) = 0;
    v93 = *(v90 + 16);
    v94 = *(v93 + 269);
    *(v92 + 1056) = *(v90 + 1568);
    *(v92 + 14912) = v90;
    *(v92 + 14920) = v93;
    *(v92 + 14928) = *(v90 + 32);
    *(v92 + 80) = *(v93 + 204);
    v95 = *(v90 + 4768);
    *(v92 + 1032) = v95;
    v96 = *(v90 + 5320);
    *(v92 + 1040) = v96 + 800;
    v97 = sub_2774BD078(v92 + 1064, *(v95 + 216), *(v95 + 220), *(v93 + 2096), *(v95 + 96), *(v93 + 2099), *(v96 + 648), 0, a1 + 657);
    sub_2774BF164(v92 + 1064, *(v90 + 653), *(*(v92 + 14920) + 2097));
    if (v97)
    {
      break;
    }

    *(v92 + 24440) = v90;
    v98 = *(v90 + 16);
    *(v92 + 24448) = v98;
    *(v92 + 24456) = *(v90 + 4768);
    v99 = *(v98 + 2096);
    v100 = sub_2774C0F3C;
    v101 = sub_2774C0F4C;
    v102 = sub_2774C0F64;
    v103 = sub_2774C0F7C;
    v104 = sub_2774C0F94;
    if (v99 == 8)
    {
      v105 = 12;
    }

    else
    {
      v105 = 50;
      v100 = nullsub_26;
      v101 = sub_2774C0F58;
      v102 = sub_2774C0F70;
      v103 = sub_2774C0F88;
      v104 = sub_2774C110C;
    }

    *(v92 + 24184) = v104;
    *(v92 + 24208) = v103;
    *(v92 + 24216) = v102;
    *(v92 + 24224) = v101;
    *(v92 + 24232) = v100;
    *(v92 + 24548) = v105;
    *(v92 + 24168) = sub_2774C0ED8;
    *(v92 + 24176) = sub_2774C0ED8;
    *(v92 + 24408) = sub_2774C0E68;
    *(v92 + 24416) = sub_2774C0DB0;
    *(v92 + 24424) = sub_2774C0CF8;
    *(v92 + 24432) = sub_2774C0C44;
    *(v92 + 24400) = 0;
    v106 = *(v90 + 5436);
    v107 = __OFSUB__(v106, 1);
    v108 = v106 - 1;
    if (v108 < 0 == v107)
    {
      *(v92 + 24400) = &unk_277535898 + 2720 * v108 + 1360 * (*(*(v90 + 16) + 208) * *(*(v90 + 16) + 204) > 2211840);
    }

    sub_2774CCAF8((v92 + 24240));
    *(v92 + 24104) = sub_2774C0764;
    *(v92 + 24112) = 0;
    *(v92 + 24120) = sub_2774BFDB4;
    *(v92 + 24128) = 0;
    *(v92 + 24136) = sub_2774BF9EC;
    *(v92 + 24144) = 0;
    *(v92 + 24152) = sub_2774BF330;
    *(v92 + 24160) = 0;
    v109 = *(*(v92 + 24448) + 2096);
    *(v92 + 24168) = sub_277507F20;
    *(v92 + 24176) = sub_277507E80;
    *(v92 + 24408) = sub_277507E10;
    *(v92 + 24416) = sub_277507D00;
    *(v92 + 24424) = sub_277507BBC;
    *(v92 + 24432) = sub_277507A38;
    if (v109 == 8)
    {
      *(v92 + 24184) = sub_277507790;
    }

    sub_27745EA44(v92 + 1648, v90, v92 + 1064, *(*(v92 + 1032) + 236), *(*(v92 + 1032) + 236), 8, 1, 2);
    memset((v92 + 27712), 255, 4 * v94 + 4);
    v110 = *(v92 + 1032);
    v111 = *(v110 + 496);
    *(v92 + 68) = v111;
    *(v92 + 72) = *(v110 + 548);
    v112 = *(v110 + 132);
    *(v92 + 76) = v112;
    *(v92 + 260) = v111 == 4;
    *(v92 + 64) = v111 > 0;
    if (v111 < 3)
    {
      *(v92 + 65) = 0;
      v89 = v480;
      v114.i64[0] = 0x500000005;
      v114.i64[1] = 0x500000005;
      if (v111 == 2)
      {
        v113 = 1;
      }

      else
      {
        v115 = v111 > 0 && *(v90 + 58) == 2;
        v113 = v115;
      }
    }

    else
    {
      *(v92 + 65) = *(v90 + 58) < 2u;
      v113 = 1;
      v89 = v480;
      v114.i64[0] = 0x500000005;
      v114.i64[1] = 0x500000005;
    }

    v116 = v92 + 29808;
    *(v92 + 256) = v113;
    v118 = *(v110 + 96) != 36 && (*(*(v90 + 5320) + 648) & 0xFE) == 4;
    *(v92 + 268) = v118;
    v119 = *(v92 + 14920);
    *v116 = v119[273] != 0;
    v120 = *(v90 + 58);
    v121 = v120 <= 1 && v119[272] != 0;
    v115 = v120 == 2;
    v122 = v120 < 2;
    *(v92 + 29809) = v121;
    *(v92 + 88) = *(*(v92 + 14912) + 653);
    *(v92 + 261) = v122 & *(v110 + 540);
    *(v92 + 262) = v122 & *(v110 + 535);
    v123 = v115;
    if (*(v110 + 202) == 1)
    {
      v124 = v123;
    }

    else
    {
      v124 = 0;
    }

    v126 = v112 != 3 && v112 != 5;
    *(v92 + 264) = v124 & v126;
    if (*(v92 + 24904) != *(v92 + 24896))
    {
      goto LABEL_265;
    }

    v127 = *(v92 + 25056);
    if (v119[2096] == 8)
    {
      if (v127 != 1)
      {
        *(v92 + 25056) = 1;
        v128 = *(v92 + 25040);
        *(v92 + 25040) = 0;
        if (v128)
        {
          MEMORY[0x277CAD330](v128, 0x1000C8077774924, 0);
          v114.i64[0] = 0x500000005;
          v114.i64[1] = 0x500000005;
          v119 = *(v92 + 14920);
        }
      }

      *(v92 + 25048) = 0;
      v129 = 4 * v119[2117] + 32;
      if (*(v92 + 24816) < (4 * v129))
      {
        *(v92 + 24816) = 4 * v129;
        memptr[0] = 0;
        if (malloc_type_posix_memalign(memptr, 0x20uLL, 4 * v129, 0xBBF09E97uLL))
        {
          goto LABEL_483;
        }

        v130 = *(v92 + 24808);
        *(v92 + 24808) = memptr[0];
        v114.i64[0] = 0x500000005;
        v114.i64[1] = 0x500000005;
        if (v130)
        {
          free(v130);
          v114.i64[0] = 0x500000005;
          v114.i64[1] = 0x500000005;
        }
      }

      v131 = *(v92 + 24808);
      *(v92 + 24824) = v131 + 32;
      *(v92 + 24832) = v131 + v129 + 32;
      *(v92 + 24840) = v131 + 2 * v129 + 32;
      v132 = 3 * v129;
      v133 = sub_27748A608;
      v134 = sub_27748B130;
      v135 = sub_27748BE80;
      v136 = sub_27748BEC8;
    }

    else
    {
      if (v127 != 2)
      {
        *(v92 + 25056) = 2;
        v137 = *(v92 + 25040);
        *(v92 + 25040) = 0;
        if (v137)
        {
          MEMORY[0x277CAD330](v137, 0x1000C8077774924, 0);
          v114.i64[0] = 0x500000005;
          v114.i64[1] = 0x500000005;
          v119 = *(v92 + 14920);
        }
      }

      *(v92 + 25048) = 0;
      v138 = 4 * v119[2117] + 16;
      if (*(v92 + 24816) < (8 * v138))
      {
        *(v92 + 24816) = 8 * v138;
        memptr[0] = 0;
        if (malloc_type_posix_memalign(memptr, 0x20uLL, 8 * v138, 0xBBF09E97uLL))
        {
LABEL_483:
          exception = __cxa_allocate_exception(8uLL);
          v466 = std::bad_alloc::bad_alloc(exception);
          __cxa_throw(v466, &unk_288662E48, MEMORY[0x277D826E0]);
        }

        v139 = *(v92 + 24808);
        *(v92 + 24808) = memptr[0];
        v114.i64[0] = 0x500000005;
        v114.i64[1] = 0x500000005;
        if (v139)
        {
          free(v139);
          v114.i64[0] = 0x500000005;
          v114.i64[1] = 0x500000005;
        }
      }

      v131 = *(v92 + 24808);
      *(v92 + 24824) = v131 + 32;
      *(v92 + 24832) = v131 + 2 * v138 + 32;
      *(v92 + 24840) = v131 + 4 * v138 + 32;
      v132 = 6 * v138;
      v133 = sub_277488108;
      v134 = sub_2774891DC;
      v135 = sub_27748A54C;
      v136 = sub_27748A59C;
    }

    *(v92 + 24848) = v131 + v132 + 32;
    *(v92 + 29816) = v136;
    *(v92 + 29824) = v135;
    *(v92 + 29832) = v134;
    *(v92 + 29840) = 0;
    *(v92 + 29848) = v133;
    *(v92 + 29856) = 0;
    v140 = *(v92 + 14920);
    v141 = v140[2117];
    v503 = v140[2113];
    v142 = vdupq_n_s32(v503);
    v143 = ~v140[270];
    v144 = (v140[269] + 4) & 0x1FC;
    v492 = v140[269];
    v2.i32[0] = v140[269];
    v145 = 0uLL;
    v146 = 0uLL;
    v147 = 0uLL;
    v148 = 0uLL;
    v149 = 0uLL;
    v150 = 0uLL;
    v151 = xmmword_27750D390;
    v152.i64[0] = 0x100000001;
    v152.i64[1] = 0x100000001;
    v153.i64[0] = 0x100000001;
    v153.i64[1] = 0x100000001;
    v154.i64[0] = 0x400000004;
    v154.i64[1] = 0x400000004;
    v155.i64[0] = 0x200000002;
    v155.i64[1] = 0x200000002;
    do
    {
      v156 = v151;
      v157 = v150;
      v158 = v149;
      v159 = v148;
      v160 = v147;
      v161 = v146;
      v162 = v145;
      v163 = vsubq_s32(v142, v151);
      v164 = vaddq_s32(v163, v152);
      v165 = vshlq_u32(v153, vaddq_s32(v163, v163));
      v166 = vshrq_n_u32(v165, 4uLL);
      v167 = vceqzq_s32(v156);
      v168 = vsubq_s32(vbicq_s8(v154, v167), v167);
      v169 = vaddq_s32(v168, v153);
      v145 = vaddq_s32(v145, v169);
      v170 = vmlaq_s32(vshlq_u32(v153, v164), vshrq_n_u32(v165, 6uLL), v169);
      v146 = vaddq_s32(v170, v146);
      v147 = vaddq_s32(vmlaq_s32(vaddq_s32(vshlq_u32(v155, v164), v147), v166, v169), v154);
      v171 = *&v168 | __PAIR128__(0x200000002, 0x200000002);
      v148 = vaddq_s32(v148, v171);
      v149 = vmlaq_s32(v149, vsraq_n_u32(v165, v165, 1uLL), v171);
      v150 = vmlaq_s32(v150, vsraq_n_u32(v166, v165, 5uLL), v171);
      v151 = vaddq_s32(v156, v154);
      v144 -= 4;
    }

    while (v144);
    v484 = v143 + v503;
    v172 = v140[2115];
    v483 = v503 - v172;
    v505 = v149;
    v500 = v158;
    v502 = v150;
    v497 = v157;
    if (!v140[273] && !v140[272])
    {
      goto LABEL_185;
    }

    if (v503 - v172 >= 1)
    {
      v485 = v161;
      v476 = v159;
      v478 = v160;
      v474 = v147;
      v475 = v146;
      bzero((v92 + 312), 32 * (~v172 + v503) + 32);
      v147 = v474;
      v146 = v475;
      v159 = v476;
      v160 = v478;
      v161 = v485;
      v114.i64[0] = 0x500000005;
      v114.i64[1] = 0x500000005;
      v155.i64[0] = 0x200000002;
      v155.i64[1] = 0x200000002;
      v154.i64[0] = 0x400000004;
      v154.i64[1] = 0x400000004;
      v153.i64[0] = 0x100000001;
      v153.i64[1] = 0x100000001;
    }

    if (v483 < v484)
    {
      v173 = (v143 + v172 + 3) & 0xFFFFFFFC;
      v174 = vdupq_n_s32(v483);
      v175 = vaddq_s32(v174, xmmword_27750D390);
      v176 = vdupq_n_s32(*(*(v92 + 14920) + 2116));
      v177 = 0uLL;
      v178 = 0uLL;
      v179 = 0uLL;
      do
      {
        v180 = v179;
        v181 = v178;
        v182 = v177;
        v183 = vsubq_s32(v142, v175);
        v184 = vaddq_s32(v183, v183);
        v185 = vshlq_u32(v153, v184);
        v186 = vceqq_s32(v183, v176);
        v187 = vbslq_s8(v186, vshlq_u32(v155, v184), vshrq_n_u32(v185, 1uLL));
        v188 = vceqq_s32(v175, v174);
        v189 = vsubq_s32(vbicq_s8(v154, v188), v188);
        v190 = vbicq_s8(v155, v188);
        v191 = vorrq_s8(v188, v186);
        v177 = vaddq_s32(v182, v189);
        v192 = vbicq_s8(v155, v191);
        v178 = vaddq_s32(vaddq_s32(vshlq_u32(v189, v184), v181), vshlq_u32(v187, v192));
        v179 = vaddq_s32(vaddq_s32(vshlq_u32(vshrq_n_u32(v185, 4uLL), v190), v180), vshlq_u32(vbslq_s8(vcgtq_u32(v114, v184), v155, vshrq_n_u32(v185, 5uLL)), v192));
        v175 = vaddq_s32(v175, v154);
        v173 -= 4;
      }

      while (v173);
      v170.i32[0] = v143 + v172 - 1;
      v193 = vcgtq_u32(vorrq_s8(vdupq_n_s32(v170.i32[0] & 0xFFFFFFFC), xmmword_27750D390), vdupq_lane_s32(*v170.i8, 0));
      v194 = vaddvq_s32(vbslq_s8(v193, v182, v177));
      v487 = vaddvq_s32(vbslq_s8(v193, v181, v178));
      v195 = vaddvq_s32(vbslq_s8(v193, v180, v179));
    }

    else
    {
LABEL_185:
      v195 = 0;
      v487 = 0;
      v194 = 0;
    }

    v196 = vcgtq_u32(v156, vdupq_lane_s32(v2, 0));
    v197 = vaddvq_s32(vbslq_s8(v196, v162, v145));
    v198 = *(v92 + 24904);
    v199 = *(v92 + 24896);
    v200 = 0xEEEEEEEEEEEEEEEFLL * ((v198 - v199) >> 4);
    v201 = v197 - v200;
    v490 = v195;
    v494 = v196;
    if (v197 <= v200)
    {
      v205 = v141;
      if (v197 >= v200)
      {
        goto LABEL_202;
      }

      for (j = v199 + 240 * v197; v198 != j; v198 -= 240)
      {
        *(v198 - 88) = 0uLL;
        *(v198 - 104) = 0uLL;
        *(v198 - 120) = 0uLL;
        *(v198 - 136) = 0uLL;
        *(v198 - 152) = 0uLL;
      }
    }

    else
    {
      v202 = *(v92 + 24912);
      if (0xEEEEEEEEEEEEEEEFLL * ((v202 - v198) >> 4) < v201)
      {
        v203 = 0xDDDDDDDDDDDDDDDELL * ((v202 - v199) >> 4);
        if (v203 <= v197)
        {
          v203 = v197;
        }

        if (0xEEEEEEEEEEEEEEEFLL * ((v202 - v199) >> 4) >= 0x88888888888888)
        {
          v204 = 0x111111111111111;
        }

        else
        {
          v204 = v203;
        }

        if (v204 <= 0x111111111111111)
        {
          operator new();
        }

        goto LABEL_482;
      }

      v205 = v141;
      j = v198 + 240 * v201;
      v207 = 240 * v197 - 16 * ((v198 - v199) >> 4);
      v208 = (v198 + 232);
      do
      {
        *v208 = 0;
        *(v208 - 13) = 0uLL;
        *(v208 - 12) = 0uLL;
        *(v208 - 11) = 0uLL;
        *(v208 - 10) = 0uLL;
        v208 += 240;
        v207 -= 240;
      }

      while (v207);
    }

    *(v92 + 24904) = j;
LABEL_202:
    v209 = vaddvq_s32(vbslq_s8(v196, v160, v147));
    v210 = vaddvq_s32(vbslq_s8(v196, v159, v148));
    sub_2773EE3FC((v92 + 24920), vaddvq_s32(vbslq_s8(v196, v161, v146)));
    sub_2773EE524((v92 + 24944), v209);
    v479 = v210;
    v211 = (v194 + v210);
    v212 = *(v92 + 24976);
    v213 = *(v92 + 24968);
    v214 = 0xEEEEEEEEEEEEEEEFLL * ((v212 - v213) >> 3);
    v215 = v211 - v214;
    if (v211 > v214)
    {
      v216 = *(v92 + 24984);
      v217 = v505;
      v219 = v500;
      v218 = v502;
      v220 = v497;
      if (0xEEEEEEEEEEEEEEEFLL * ((v216 - v212) >> 3) < v215)
      {
        v221 = 0xDDDDDDDDDDDDDDDELL * ((v216 - v213) >> 3);
        if (v221 <= v211)
        {
          v221 = (v194 + v210);
        }

        if (0xEEEEEEEEEEEEEEEFLL * ((v216 - v213) >> 3) >= 0x111111111111111)
        {
          v222 = 0x222222222222222;
        }

        else
        {
          v222 = v221;
        }

        if (v222 <= 0x222222222222222)
        {
          operator new();
        }

LABEL_482:
        sub_2773C5248();
      }

      k = v212 + 120 * v215;
      v226 = 120 * v211 - 8 * ((v212 - v213) >> 3);
      v227 = (v212 + 8);
      v223 = v490;
      v224 = v487;
      do
      {
        v227[3] = 0uLL;
        v227[4] = 0uLL;
        v227[1] = 0uLL;
        v227[2] = 0uLL;
        *v227 = 0uLL;
        v227 = (v227 + 120);
        v226 -= 120;
      }

      while (v226);
      goto LABEL_217;
    }

    v217 = v505;
    v219 = v500;
    v218 = v502;
    v220 = v497;
    v223 = v490;
    v224 = v487;
    if (v211 < v214)
    {
      for (k = v213 + 120 * v211; v212 != k; v212 -= 120)
      {
        *(v212 - 96) = 0uLL;
        *(v212 - 80) = 0uLL;
        *(v212 - 112) = 0uLL;
      }

LABEL_217:
      *(v92 + 24976) = k;
    }

    v228 = vaddvq_s32(vbslq_s8(v494, v220, v218));
    v477 = vaddvq_s32(vbslq_s8(v494, v219, v217));
    sub_2773EE3FC((v92 + 24992), v224 + v477);
    v229 = v223 + v228;
    v230 = *(v92 + 25016);
    v231 = *(v92 + 25024) - v230;
    if (v229 <= v231)
    {
      if (v229 < v231)
      {
        *(v92 + 25024) = v230 + v229;
      }
    }

    else
    {
      sub_2773C07DC((v92 + 25016), v229 - v231);
    }

    v232 = 0;
    v233 = *(v92 + 24896);
    v234 = v92 + 24744;
    *(v92 + 24744) = v233;
    *(v233 + 88) = *(v92 + 24920);
    *(*(v92 + 24744) + 96) = *(v92 + 24944);
    v235 = (v205 * v205);
    v236 = (v92 + 25040);
    *(v92 + 25064) = v92 + 25040;
    v237 = *(v92 + 25048);
    *(v92 + 25072) = v237;
    v238 = v235 >> 1;
    *(v92 + 25080) = v92 + 25040;
    *(v92 + 25088) = v237 + v235;
    v239 = v237 + v235 + v238;
    *(v92 + 25096) = v92 + 25040;
    v240 = v239 + v235;
    *(v92 + 25104) = v239;
    *(v92 + 25112) = v92 + 25040;
    v241 = v240 + v238;
    *(v92 + 25048) = v240 + v238;
    *(v92 + 25120) = v240;
    v242 = *(v92 + 24744);
    *(v242 + 24) = v92 + 25040;
    *(v242 + 32) = v237;
    v243 = *(v92 + 24744);
    *(v243 + 40) = *(v92 + 25080);
    *(v243 + 48) = *(v92 + 25088);
    v244 = *(v92 + 24744);
    *(v244 + 56) = *(v92 + 25096);
    *(v244 + 64) = *(v92 + 25104);
    v245 = *(v92 + 24744);
    *(v245 + 72) = *(v92 + 25112);
    *(v245 + 80) = *(v92 + 25120);
    *(*(v92 + 24744) + 136) = *(v92 + 24968);
    *(*(*(v92 + 24744) + 136) + 32) = *(v92 + 24992);
    *(*(*(v92 + 24744) + 136) + 8) = *(v92 + 25016);
    v488 = v92 + 24776;
    do
    {
      v246 = 1 << (v503 - v232 - 2);
      v247 = (1 << (2 * (v503 - v232)));
      v248 = v247 >> 1;
      v249 = v247 >> 4;
      v250 = v247 >> 6;
      if (v232)
      {
        v251 = 4;
      }

      else
      {
        v251 = 1;
      }

      *(*(v234 + 8 * v232) + 152) = *(v92 + 24840);
      *(*(v234 + 8 * v232) + 160) = *(v92 + 24848);
      v252 = v251 + 1;
      v498 = (v250 * (v251 + 1));
      *(*(v234 + 8 * v232) + 104) = *(*(v234 + 8 * v232) + 88) + 2 * v498;
      *(*(v234 + 8 * v232) + 112) = *(*(v234 + 8 * v232) + 104) + (v246 & 0xFFFFFFFE);
      v495 = (v249 * (v251 + 1));
      *(*(v234 + 8 * v232) + 120) = *(*(v234 + 8 * v232) + 96) + 16 * v495;
      *(*(v234 + 8 * v232) + 128) = *(*(v234 + 8 * v232) + 120) + 16 * v246 + 32;
      v253 = *(*(v234 + 8 * v232) + 136);
      *(v253 + 56) = v236;
      *(v253 + 64) = v241;
      v254 = *(*(v234 + 8 * v232) + 136);
      v255 = v241 + v247 + v248;
      *(v254 + 72) = v236;
      *(v254 + 80) = v241 + v247;
      v256 = *(*(v234 + 8 * v232) + 136);
      v257 = v256[4] + 2 * v247;
      v258 = v247 >> 2;
      v259 = v247 | (v247 >> 1);
      v260 = v249 | (v247 >> 5);
      v261 = v92 + 24616 + 32 * v232;
      v262 = v256[1] + v249;
      v263 = v241 + v248 + 2 * v247;
      v256[5] = v257;
      v256[6] = v257 + 2 * v258;
      v264 = 392;
      v265 = 2 * (v247 >> 6);
      v266 = 16 * (v247 >> 4);
      v256[2] = v262;
      v256[3] = v262 + v250;
      v267 = 120;
      v268 = v259;
      v269 = v260;
      v506 = v251;
      v270 = v251;
      do
      {
        v271 = (*(v234 + 8 * v232) + v264);
        *v261 = v271 - 19;
        *v271 = *(v92 + 24840);
        *(*v261 + 160) = *(v92 + 24848);
        *(*v261 + 88) = *(*(v234 + 8 * v232) + 88) + v265;
        *(*v261 + 104) = *(*(v234 + 8 * v232) + 104);
        *(*v261 + 112) = *(*(v234 + 8 * v232) + 112);
        *(*v261 + 96) = *(*(v234 + 8 * v232) + 96) + v266;
        *(*v261 + 120) = *(*(v234 + 8 * v232) + 120);
        *(*v261 + 128) = *(*(v234 + 8 * v232) + 128);
        *(*v261 + 136) = *(*(v234 + 8 * v232) + 136) + v267;
        *(*(*v261 + 136) + 32) = *(*(*(v234 + 8 * v232) + 136) + 32) + 2 * v268;
        *(*(*v261 + 136) + 8) = *(*(*(v234 + 8 * v232) + 136) + 8) + v269;
        v272 = *(*v261 + 136);
        *(v272 + 56) = v236;
        *(v272 + 64) = v255;
        v273 = *(*v261 + 136);
        v255 += v247 + v248;
        *(v273 + 72) = v236;
        *(v273 + 80) = v263;
        v274 = *v261;
        v261 += 8;
        v275 = *(v274 + 136);
        v276 = v275[4] + 2 * v247;
        v277 = v275[1] + v249;
        v275[5] = v276;
        v275[6] = v276 + 2 * v258;
        v269 += v260;
        v268 += v259;
        v267 += 120;
        v266 += 16 * (v247 >> 4);
        v275[2] = v277;
        v275[3] = v277 + v250;
        v265 += 2 * (v247 >> 6);
        v264 += 240;
        v263 += v248 | v247;
        --v270;
      }

      while (v270);
      v278 = *(v234 + 8 * v232);
      v279 = *(v278 + 136) + 120 * v506;
      *(v488 + 8 * v232) = v279 + 120;
      *(v279 + 152) = *(*(v278 + 136) + 32) + 2 * v259 * v252;
      *(*(v488 + 8 * v232) + 8) = *(*(*(v234 + 8 * v232) + 136) + 8) + (v260 * v252);
      v280 = *(v488 + 8 * v232);
      *(v280 + 56) = v236;
      *(v280 + 64) = v255;
      v281 = *(v488 + 8 * v232);
      *(v281 + 72) = v236;
      *(v281 + 80) = v255 + v247;
      v282 = *(v488 + 8 * v232);
      v283 = v282[4] + 2 * v247;
      v282[5] = v283;
      v282[6] = v283 + 2 * v258;
      v284 = v282[1] + v249;
      v282[2] = v284;
      v282[3] = v284 + v250;
      if (v232 < v492)
      {
        v285 = *(v234 + 8 * v232);
        v286 = v285 + 240 * v506;
        *(v234 + 8 * (v232 + 1)) = v286 + 240;
        *(v286 + 328) = *(v285 + 88) + 2 * v498 + 2 * (1 << (v503 - v232 - 2));
        *(*(v234 + 8 * (v232 + 1)) + 96) = *(*(v234 + 8 * v232) + 96) + 16 * v495 + 16 * ((2 << (v503 - v232 - 2)) + 4);
        *(*(v234 + 8 * (v232 + 1)) + 136) = *(*(v234 + 8 * v232) + 136) + 120 * (v506 | 2);
        *(*(*(v234 + 8 * (v232 + 1)) + 136) + 32) = *(*(*(v234 + 8 * v232) + 136) + 32) + 2 * v259 * (v506 | 2);
        *(*(*(v234 + 8 * (v232 + 1)) + 136) + 8) = *(*(*(v234 + 8 * v232) + 136) + 8) + v260 * (v506 | 2);
      }

      ++v232;
      v241 = v255 + v247 + v248;
    }

    while (v232 != v492 + 1);
    *(v92 + 25048) = v241;
    v287 = *(v92 + 14920);
    if (*(v287 + 273) || *(v287 + 272))
    {
      v288 = *(v92 + 24968) + 120 * v479;
      v289 = v92 + 312;
      v290 = v483;
      v291 = (v92 + 312 + 32 * v483);
      *v291 = v288;
      *(v288 + 32) = *(v92 + 24992) + 2 * v477;
      *(*v291 + 8) = *(v92 + 25016) + v228;
      if (v483 < v484)
      {
        v292 = v483;
        do
        {
          v293 = v503 - v292;
          v294 = 2 * (v503 - v292);
          v295 = (1 << (2 * (v503 - v292)));
          v296 = *(*(v92 + 14920) + 2116);
          LODWORD(v297) = 2 << (2 * (v503 - v292));
          v298 = v295 >> 5;
          if (v294 < 5)
          {
            v298 = 2;
          }

          if (v293 == v296)
          {
            v297 = v297;
          }

          else
          {
            v297 = v295 >> 1;
          }

          v299 = v293 == v296 || v292 == v290;
          v300 = (v289 + 32 * v292);
          **v300 = 1 << v293;
          v301 = (v293 - 1);
          v302 = *(*(v92 + 14920) + 2116);
          if (v301 > v302)
          {
            LOBYTE(v302) = v301;
          }

          v303 = v295 >> 4;
          (*v300)[1] = 1 << v302;
          v304 = *v300;
          v304[7] = v236;
          v305 = *(v92 + 25048);
          v304[8] = v305;
          v306 = *v300;
          v306[9] = v236;
          *(v92 + 25048) = v305 + v295 + v297;
          v306[10] = v305 + v295;
          v307 = *v300;
          v308 = *(*v300 + 4) + 2 * v295;
          v307[5] = v308;
          v307[6] = v308 + v297;
          v309 = v307[1] + v303;
          v307[2] = v309;
          v307[3] = v309 + (v298 >> 1);
          if (v292 == v290)
          {
            v310 = 1;
          }

          else
          {
            v310 = 4;
          }

          if (v292 != v290)
          {
            v311 = v92 + 320 + 32 * v292;
            v312 = 3;
            v313 = v298;
            do
            {
              v314 = *(v311 - 8);
              *v311 = v314 + 120;
              *(v314 + 120) = **v300;
              *(*v311 + 1) = (*v300)[1];
              v315 = *v311;
              *(v315 + 56) = v236;
              v316 = *(v92 + 25048);
              v317 = v316 + v295;
              *(v92 + 25048) = v316 + v295;
              *(v315 + 64) = v316;
              *(*v311 + 32) = *(*(v311 - 8) + 32) + 2 * v295 + 2 * v297;
              *(*v311 + 8) = *(*(v311 - 8) + 8) + v303 + v313;
              if (v299)
              {
                LODWORD(v297) = 0;
                v313 = 0;
                *(*v311 + 72) = *(*v300 + 72);
                *(*v311 + 40) = *(*v300 + 5);
                *(*v311 + 48) = *(*v300 + 6);
                *(*v311 + 16) = *(*v300 + 2);
                v318 = *(*v300 + 3);
                v319 = *v311;
              }

              else
              {
                v320 = *v311;
                *(v320 + 72) = v236;
                *(v92 + 25048) = v317 + v297;
                *(v320 + 80) = v317;
                v319 = *v311;
                v321 = *(*v311 + 32) + 2 * v295;
                v319[5] = v321;
                v319[6] = v321 + (v297 & 0xFFFFFFFE);
                v322 = v319[1] + v303;
                v319[2] = v322;
                v318 = v322 + (v313 >> 1);
              }

              v319[3] = v318;
              v311 += 8;
              --v312;
            }

            while (v312);
          }

          if (v484 - 1 <= v292)
          {
            ++v292;
            v290 = v483;
          }

          else
          {
            v290 = v483;
            v323 = v292 != v483;
            v324 = *v300;
            v325 = &(*v300)[120 * v310];
            ++v292;
            *(v289 + 32 * v292) = v325;
            v326 = *(v324 + 4) + 2 * (v310 << v294);
            if (v299)
            {
              v327 = 0;
            }

            else
            {
              v327 = 2;
            }

            *(v325 + 32) = v326 + 2 * (v297 << v327);
            *(*(v289 + 32 * v292) + 8) = *(*v300 + 1) + (v303 << (2 * v323)) + (v298 << v327);
          }
        }

        while (v484 > v292);
      }

      v291[1] = 0;
      v291[2] = 0;
      v291[3] = 0;
    }

    if (!*v236)
    {
      operator new[]();
    }

    v328 = *(v92 + 24744);
    *(v92 + 24864) = *(v328 + 104);
    *(v92 + 24880) = *(v328 + 120);
    *(v92 + 24632) = 0;
    *(v92 + 24640) = 0;
    *(v92 + 24624) = 0;
    v110 = *(v92 + 1032);
    v90 = a1;
    v89 = v480;
    v116 = v92 + 29808;
LABEL_265:
    v329 = *(v92 + 1056);
    v330 = v329 + 8;
    v332 = *v329;
    v331 = (v329 + 12);
    *(v92 + 877) = v332 != 255;
    if (v332 == 255)
    {
      v330 = (v92 + 80);
      v331 = (v92 + 84);
    }

    v333 = *v331;
    *(v92 + 880) = *v330;
    *(v92 + 884) = v333;
    if (*(v110 + 233) == 1 && *(*(v92 + 14912) + 58) <= 1u)
    {
      v334 = *(v92 + 268) + 1;
    }

    else
    {
      v334 = 0;
    }

    *(v92 + 280) = v334;
    v335 = sub_277487D3C;
    if (!*(*(v90 + 5320) + 536))
    {
      v335 = sub_277487E64;
      if ((*(v110 + 133) & 0xFB) != 0)
      {
        v335 = sub_277487DB0;
      }
    }

    v336 = 0;
    *(v92 + 1048) = v335;
    v337 = v92 + 24744;
    v338 = v92 + 24776;
    v339 = v92 + 24616;
    v340 = *(v92 + 14920);
    do
    {
      v341 = 0;
      v342 = v340[2117];
      v343 = v342 >> v336;
      v344 = *(v337 + 8 * v336);
      *(v344 + 1) = v342;
      *v344 = v342 >> v336;
      **(v344 + 136) = v342 >> v336;
      v345 = v342 >> v336 >> 1;
      v346 = 1 << *(*(v92 + 14920) + 2116);
      if (v345 > v346)
      {
        LOBYTE(v346) = v345;
      }

      *(*(*(v337 + 8 * v336) + 136) + 1) = v346;
      **(v338 + 8 * v336) = v343;
      if (v345 <= 1 << *(*(v92 + 14920) + 2116))
      {
        LOBYTE(v345) = 1 << *(*(v92 + 14920) + 2116);
      }

      *(*(v338 + 8 * v336) + 1) = v345;
      do
      {
        v347 = *(v339 + v341);
        if (v347)
        {
          *(v347 + 1) = *(*(v92 + 14920) + 2117);
          *v347 = v343;
          **(v347 + 136) = **(v338 + 8 * v336);
          *(*(*(v339 + v341) + 136) + 1) = *(*(v338 + 8 * v336) + 1);
        }

        v341 += 8;
      }

      while (v341 != 32);
      v340 = *(v92 + 14920);
      v339 += 32;
      v87 = v336++ >= v340[269];
    }

    while (!v87);
    v348 = *(v90 + 4000);
    *(v92 + 232) = *(v92 + 88);
    *(v92 + 236) = v348;
    *(v92 + 240) = *(v90 + 4004);
    *(v92 + 244) = *(v90 + 4008);
    *(v92 + 248) = *(v90 + 4012);
    *(v92 + 252) = *(v90 + 4016);
    *(v92 + 224) = 0xFFFFFFFFLL;
    if (v340[2096] <= 8u)
    {
      v349 = 25;
    }

    else
    {
      v349 = 400;
    }

    *(v116 + 4) = v349;
    v91 = v481 + 1;
    if (v481 + 1 == v89)
    {
      goto LABEL_289;
    }
  }

  if (dword_280B9A880 >= 3)
  {
    fwrite("RDCost init failed in LCUEnc\n", 0x1DuLL, 1uLL, *MEMORY[0x277D85DF8]);
    syslog(27, "RDCost init failed in LCUEnc\n");
    if (dword_280B9A880 >= 3)
    {
      v353 = *MEMORY[0x277D85DF8];
      v354 = "Failed to init thread data\n";
      v355 = "Failed to init thread data\n";
      v356 = 27;
      goto LABEL_350;
    }
  }

LABEL_471:
  v460 = *(v90 + 8);
  if (*(v460 + 48) == 1)
  {
    explicit = atomic_load_explicit((v460 + 1032), memory_order_acquire);
    v462 = explicit & ~(explicit >> 31);
    (*(*v460 + 16))(v460, v462, *(v460 + 524), 0);
    sub_277487440(v460 + 48, v462, *(v460 + 524));
    *(v460 + 48) = 0;
  }

  std::mutex::lock((v460 + 1040));
  atomic_store(0x7FFFFFFFu, (v460 + 1032));
  std::mutex::unlock((v460 + 1040));
  std::condition_variable::notify_all((v460 + 1104));
  sub_2773F8C08(v90);
  *(v90 + 8) = 0;
  *(v90 + 5400) = 0;
  return v97;
}

BOOL sub_2774D77D4(uint64_t a1, uint64_t a2, int *a3, int *a4)
{
  v4 = a2;
  v5 = 0;
  v608 = *MEMORY[0x277D85DE8];
  v563 = (a2 + 300);
  v6 = *a4;
  v7 = *a3 + *(*(a1 + 16) + 2120) * *a4;
  if (!*(a1 + 568))
  {
    v6 = 0;
  }

  v559 = v6;
  v8 = *(a1 + 5328) + 472 * v6;
  v9 = *(*(a1 + 1184) + 4 * v6);
  v10 = *(a2 + 14920);
  v11 = *(v10 + 2113);
  v12 = *(v10 + 2117);
  v13 = *(v10 + 2120);
  *(a2 + 1008) = v8;
  *(a2 + 1016) = v8;
  *(a2 + 1024) = a2 + 29888;
  v14 = v7 / v13;
  v15 = (v7 % v13) << v11;
  v16 = v14 << v11;
  *(a2 + 24588) = v15;
  *(a2 + 24592) = v16;
  *(a2 + 24576) = v7;
  *(a2 + 24580) = v15 >> v11;
  v586 = (a2 + 29812);
  v591 = a2 + 24576;
  *(a2 + 24584) = v16 >> v11;
  *(v8 + 225) = 0;
  *(a2 + 30113) = 0;
  v17 = *(v10 + 204);
  v18 = *(v10 + 208);
  v19 = v17 - v15;
  if (v19 >= v12)
  {
    v20 = v12;
  }

  else
  {
    v20 = v19;
  }

  if (v18 - v16 >= v12)
  {
    v21 = v12;
  }

  else
  {
    v21 = v18 - v16;
  }

  v593 = v9;
  v595 = v9;
  v22 = 1;
  do
  {
    (*(v4 + 29816))(v20, (v21 >> v5));
    if ((v22 & 1) == 0)
    {
      break;
    }

    v22 = 0;
    v5 = 1;
  }

  while (*(*(v4 + 14920) + 201));
  *(*(v4 + 24616) + 24) = *(*(v4 + 24744) + 24);
  *(*(v4 + 24616) + 40) = *(*(v4 + 24744) + 40);
  *(*(v4 + 24616) + 56) = *(*(v4 + 24744) + 56);
  *(*(v4 + 24616) + 72) = *(*(v4 + 24744) + 72);
  v23 = v591;
  v24 = *(v591 + 12);
  v25 = *(v591 + 16);
  if (v24)
  {
    v26 = 240;
  }

  else
  {
    v26 = 0;
  }

  v27 = *(v4 + 80);
  v28 = *(v4 + 84);
  if (v24 + v12 >= v27)
  {
    v29 = 7680;
  }

  else
  {
    v29 = 130560;
  }

  if (v25)
  {
    v30 = v24 == 0;
  }

  else
  {
    v29 = 0;
    v30 = 1;
  }

  v31 = v29 | v26;
  v32 = v31 | 0x100;
  if (v30)
  {
    v32 = v31;
  }

  *(v591 + 20) = v32;
  v33 = *(*(v4 + 14920) + 2117);
  v34 = v25 + v33;
  if (v28 < v25 + v33)
  {
    v34 = v28;
  }

  v35 = (v34 - v25);
  v36 = v24 + v33;
  if (v27 < v24 + v33)
  {
    v36 = v27;
  }

  if ((v32 & 0xF0) != 0)
  {
    v37 = *(*(v4 + 14912) + 8);
    v38 = *(v37 + 768);
    if ((v25 | (v24 - 1)) < 0 || *(v37 + 520) < v24 || *(v37 + 524) <= v25)
    {
      v39 = 0;
    }

    else
    {
      v39 = (*(v37 + 800) + 2 * v38 * (v25 >> 3) + 2 * ((v24 - 1) >> 3));
    }

    if (v35 >= 1)
    {
      v40 = 0;
      v41 = 0;
      v42 = 2 * v38;
      do
      {
        *(*(v4 + 24864) + v40) = *v39;
        v41 += 8;
        v40 += 2;
        v39 = (v39 + v42);
      }

      while (v41 < v35);
    }
  }

  else if (v35 >> 3 >= 1)
  {
    v43 = 0;
    do
    {
      *(*(v4 + 24864) + v43) = 0;
      v43 += 2;
    }

    while (2 * (v35 >> 3) != v43);
  }

  v44 = v36 - v24;
  if ((*(v591 + 21) & 0x1E) != 0)
  {
    v45 = *(v591 + 12);
    v46 = *(v591 + 16);
    if (((v46 - 1) | v45) < 0 || (v47 = *(*(v4 + 14912) + 8), *(v47 + 520) <= v45) || *(v47 + 524) < v46)
    {
      v48 = 0;
    }

    else
    {
      v48 = (*(v47 + 800) + 2 * *(v47 + 768) * ((v46 - 1) >> 3) + 2 * (v45 >> 3));
    }

    memcpy(*(v4 + 24872), v48, 2 * (v44 >> 3));
  }

  else if (v44 >> 3 >= 1)
  {
    v49 = 0;
    do
    {
      *(*(v4 + 24872) + v49) = 0;
      v49 += 2;
    }

    while (2 * (v44 >> 3) != v49);
  }

  v50 = v35 >> 2;
  if ((*(v591 + 20) & 0xF0) != 0)
  {
    v51 = *(*(v4 + 14912) + 8);
    v52 = *(v51 + 848);
    v54 = *(v591 + 12);
    v53 = *(v591 + 16);
    if ((v53 | (v54 - 1)) < 0 || *(v51 + 520) < v54 || *(v51 + 524) <= v53)
    {
      v55 = 0;
    }

    else
    {
      v55 = (*(v51 + 880) + 16 * v52 * (v53 >> 2) + 16 * ((v54 - 1) >> 2));
    }

    if (v35 >= 1)
    {
      v56 = 0;
      v57 = 0;
      v58 = 16 * v52;
      do
      {
        v59 = (*(v4 + 24880) + v56);
        v60 = *v55;
        *(v59 + 6) = *(v55 + 6);
        *v59 = v60;
        v57 += 4;
        v56 += 16;
        v55 = (v55 + v58);
      }

      while (v57 < v35);
    }
  }

  else if (v50 >= 1)
  {
    v61 = 0;
    do
    {
      v62 = (*(v4 + 24880) + v61);
      v63 = *(v4 + 24600);
      *(v62 + 6) = *(v4 + 24606);
      *v62 = v63;
      v61 += 16;
    }

    while (16 * (v35 >> 2) != v61);
  }

  v64 = v44 >> 2;
  v65 = (v4 + 24600);
  v66 = (*(v4 + 24880) + 16 * v50);
  v67 = *(v4 + 24600);
  *(v66 + 6) = *(v4 + 24606);
  *v66 = v67;
  if ((*(v591 + 21) & 0x1E) != 0)
  {
    v68 = *(v591 + 12);
    v69 = *(v591 + 16);
    if (((v69 - 1) | v68) < 0 || (v70 = *(*(v4 + 14912) + 8), *(v70 + 520) <= v68) || *(v70 + 524) < v69)
    {
      v71 = 0;
    }

    else
    {
      v71 = (*(v70 + 880) + 16 * *(v70 + 848) * ((v69 - 1) >> 2) + 16 * (v68 >> 2));
    }

    memcpy(*(v4 + 24888), v71, 16 * v64);
    if ((*(v591 + 20) & 0x100) != 0)
    {
      v72 = v71 - 16;
    }

    else
    {
      v72 = (v4 + 24600);
    }

    v73 = *(v4 + 24888);
    v74 = *v72;
    *(v73 - 10) = *(v72 + 6);
    *(v73 - 16) = v74;
    v75 = *(v591 + 16);
    v76 = *(v591 + 12) + v64;
    if (((v75 - 1) | v76) < 0 || (v77 = *(*(v4 + 14912) + 8), *(v77 + 520) <= v76) || *(v77 + 524) < v75)
    {
      v78 = 0;
    }

    else
    {
      v78 = (*(v77 + 880) + 16 * *(v77 + 848) * ((v75 - 1) >> 2) + 16 * (v76 >> 2));
    }

    if (!v78)
    {
      v78 = (v4 + 24600);
    }

    v79 = (*(v4 + 24888) + 16 * v64);
    v80 = *v78;
    *(v79 + 6) = *(v78 + 6);
    *v79 = v80;
    v82 = *(v591 + 12);
    v81 = *(v591 + 16);
    if (((v81 - 1) | (v82 - 1)) < 0 || (v83 = *(*(v4 + 14912) + 8), *(v83 + 520) < v82) || *(v83 + 524) < v81 || (v84 = (*(v83 + 880) + 16 * *(v83 + 848) * ((v81 - 1) >> 2) + 16 * ((v82 - 1) >> 2))) == 0)
    {
      v87 = *(v4 + 24888);
      v88 = *v65;
      *(v87 - 10) = *(v4 + 24606);
      *(v87 - 16) = v88;
    }

    else
    {
      v85 = *(v4 + 24888);
      v86 = *v84;
      *(v85 - 10) = *(v84 + 6);
      *(v85 - 16) = v86;
    }

    v89 = *(v591 + 16);
    v90 = *(v591 + 12) + v33;
    if (((v89 - 1) | v90) < 0 || (v91 = *(*(v4 + 14912) + 8), *(v91 + 520) <= v90) || *(v91 + 524) < v89 || (v92 = (*(v91 + 880) + 16 * *(v91 + 848) * ((v89 - 1) >> 2) + 16 * (v90 >> 2))) == 0)
    {
      v95 = (*(v4 + 24888) + 16 * v64);
      v96 = *v65;
      *(v95 + 6) = *(v4 + 24606);
      *v95 = v96;
    }

    else
    {
      v93 = (*(v4 + 24888) + 16 * v64);
      v94 = *v92;
      *(v93 + 6) = *(v92 + 6);
      *v93 = v94;
    }
  }

  else if (v64 >= -1)
  {
    v97 = -16;
    do
    {
      v98 = (*(v4 + 24888) + v97);
      v99 = *v65;
      *(v98 + 6) = *(v4 + 24606);
      *v98 = v99;
      v97 += 16;
    }

    while (16 * (v64 + 1) != v97);
  }

  *(v4 + 892) = v12;
  *(v591 + 280) = 0;
  *v563 = 0;
  *(v4 + 27732) = 0u;
  *(v4 + 284) = 0;
  v100 = *(v4 + 14920);
  *(v4 + 288) = *(v100 + 269);
  v101 = *(v4 + 1056);
  if (*(v101 + 3) == 255)
  {
    v102 = 2;
  }

  else
  {
    v102 = sub_2774BCFE4(v101, *(v591 + 12), *(v591 + 16), *(v100 + 2117));
  }

  v103 = (v4 + 284);
  if (*(*(v4 + 1032) + 89) == 1)
  {
    v104 = *(v4 + 1008);
    *(v4 + 1016) = v104;
    v105 = *(v4 + 1024);
    if (v104)
    {
      v106 = (v104 + 8);
    }

    else
    {
      v106 = 0;
    }

    *(v105 + 228) = 0;
    v107 = v106[4];
    v108 = v106[5];
    v109 = v106[3];
    *(v105 + 40) = v106[2];
    *(v105 + 88) = v108;
    *(v105 + 72) = v107;
    *(v105 + 56) = v109;
    v110 = v106[8];
    v111 = v106[9];
    v112 = v106[7];
    *(v105 + 104) = v106[6];
    *(v105 + 152) = v111;
    *(v105 + 136) = v110;
    *(v105 + 120) = v112;
    v113 = v106[12];
    v114 = v106[13];
    v115 = v106[11];
    *(v105 + 168) = v106[10];
    *(v105 + 216) = v114;
    *(v105 + 200) = v113;
    *(v105 + 184) = v115;
    v116 = v106[1];
    *(v105 + 8) = *v106;
    *(v105 + 24) = v116;
    *(v4 + 1008) = *(v4 + 1024);
  }

  v592 = v4;
  v561 = v8;
  if (*(v4 + 877) == 1 && ((v117 = *(*(v4 + 14920) + 2117), *(v591 + 12) + v117 > *(v4 + 880)) || *(v591 + 16) + v117 > *(v4 + 884)) || v102 != 2)
  {
    *(v4 + 284) = 0;
    v118 = *(v4 + 1032);
    v136 = *(v4 + 14912);
    goto LABEL_214;
  }

  v118 = *(v4 + 1032);
  if (*(v118 + 84) >= 1)
  {
    v119 = *(v118 + 84);
    v120 = *(v591 + 12);
    v121 = *(v591 + 16);
    v122 = *(v4 + 14920);
    v123 = v122[2112];
    v124 = 1 << v123;
    v125 = v122[2117];
    v126 = *(v4 + 80);
    v127 = *(v4 + 84);
    v128 = v120 + v125;
    v129 = v4;
    if (v126 >= v120 + v125)
    {
      v130 = v120 + v125;
    }

    else
    {
      v130 = *(v4 + 80);
    }

    v579 = v127;
    if (v127 >= v121 + v125)
    {
      v131 = v121 + v125;
    }

    else
    {
      v131 = v127;
    }

    v581 = v122[2117];
    if (v126 >= v120 + 2 * v125)
    {
      v132 = v120 + 2 * v125;
    }

    else
    {
      v132 = v126;
    }

    v133 = v122[269];
    v134 = v121 >= v124 && v128 + v124 <= v126;
    v135 = !v134;
    *(v129 + 284) = 0;
    *(v129 + 288) = v133;
    v136 = *(v129 + 14912);
    if (*(v136 + 58) != 2)
    {
      if (*(v118 + 132))
      {
        if (v131 <= v121)
        {
          v138 = 0;
          v137 = 0;
        }

        else
        {
          v137 = 0;
          v138 = 0;
          v139 = v124 + v120;
          if (v130 <= v124 + v120)
          {
            v140 = v124 + v120;
          }

          else
          {
            v140 = v130;
          }

          if (v139 >= v130)
          {
            v141 = v124 + v120;
          }

          else
          {
            v141 = v139 + 1;
          }

          v142 = (v140 - v141) >> v123;
          if (v139 < v130)
          {
            ++v142;
          }

          v143 = vdupq_n_s32(v142);
          v144 = vorrq_s8(vdupq_n_s32(v142 & 0xFFFFFFFC), xmmword_27750D390);
          v145 = (v142 & 0xFFFFFFFC) + 4;
          v146.i64[0] = 0x100000001;
          v146.i64[1] = 0x100000001;
          v147 = vcgtq_u32(v144, v143);
          v148 = v121;
          do
          {
            if (v130 > v120)
            {
              v149 = v137;
              v150 = v138;
              v151 = vdupq_n_s32(*(*(*(v592 + 1040) + 5136) + *(*(v592 + 1040) + 8) * (v121 >> *(*(v592 + 1040) + 4)) + (v120 >> *(*(v592 + 1040) + 4))));
              v152 = v145;
              do
              {
                v153 = v150;
                v154 = v149;
                v150 = vaddq_s32(v150, v151);
                v149 = vaddq_s32(v149, v146);
                v152 -= 4;
              }

              while (v152);
              v137 = vaddvq_s32(vbslq_s8(v147, v154, v149));
              v138 = vaddvq_s32(vbslq_s8(v147, v153, v150));
            }

            v148 += v124;
          }

          while (v148 < v131);
        }

        v176 = (v138 + (v137 >> 1)) / v137;
      }

      else
      {
        v176 = *(v592 + 88);
      }

      if (v120 >= v124 || v121 >= v124)
      {
        if (v120 < v124 || v131 <= v121)
        {
          v177 = 0;
          v183 = v133;
        }

        else
        {
          v177 = 0;
          v178 = *(v136 + 8);
          v179 = *(v178 + 800);
          v180 = *(v178 + 768);
          v181 = v179 + 2 * ((v120 - v124) >> 3);
          v182 = v121;
          v183 = v133;
          do
          {
            v184 = *(v181 + 2 * v180 * (v182 >> 3));
            v185 = (v184 >> 9) - v176;
            if (v185 < 0)
            {
              v185 = v176 - (v184 >> 9);
            }

            if (v185 <= 2)
            {
              v186 = v184 & 3;
              if (v183 >= v186)
              {
                v183 = v186;
              }

              if (v177 <= v186)
              {
                v177 = v186;
              }
            }

            v182 += v124;
          }

          while (v182 < v131);
        }

        v187 = v121 - v124;
        if (v121 >= v124 && v130 > v120)
        {
          v188 = v120;
          do
          {
            v189 = *(*(*(v136 + 8) + 800) + 2 * *(*(v136 + 8) + 768) * (v187 >> 3) + 2 * (v188 >> 3));
            v190 = (v189 >> 9) - v176;
            if (v190 < 0)
            {
              v190 = v176 - (v189 >> 9);
            }

            if (v190 <= 2)
            {
              v191 = v189 & 3;
              if (v183 >= v191)
              {
                v183 = v191;
              }

              if (v177 <= v191)
              {
                v177 = v191;
              }
            }

            v188 += v124;
          }

          while (v188 < v130);
        }

        if ((v135 & 1) == 0 && v128 < v132)
        {
          v192 = *(*(v136 + 8) + 800) + 2 * *(*(v136 + 8) + 768) * (v187 >> 3);
          do
          {
            v193 = *(v192 + 2 * (v128 >> 3));
            v194 = (v193 >> 9) - v176;
            if (v194 < 0)
            {
              v194 = v176 - (v193 >> 9);
            }

            if (v194 <= 2)
            {
              v195 = v193 & 3;
              if (v183 >= v195)
              {
                v183 = v195;
              }

              if (v177 <= v195)
              {
                v177 = v195;
              }
            }

            v128 += v124;
          }

          while (v128 < v132);
        }

        v196 = v120 - v124;
        if (v120 >= v124)
        {
          v197 = __OFSUB__(v121, v124);
          v198 = v121 - v124;
          if (v198 < 0 == v197)
          {
            v199 = *(*(*(v136 + 8) + 800) + 2 * *(*(v136 + 8) + 768) * (v198 >> 3) + 2 * (v196 >> 3));
            v200 = (v199 >> 9) - v176;
            if (v200 < 0)
            {
              v200 = v176 - (v199 >> 9);
            }

            if (v200 <= 2)
            {
              v201 = v199 & 3;
              if (v183 >= v201)
              {
                v183 = v201;
              }

              if (v177 <= v201)
              {
                v177 = v201;
              }

              goto LABEL_549;
            }
          }
        }

        if (v183 <= v177)
        {
LABEL_549:
          v202 = (v183 - (v183 == v177)) & ~((v183 - (v183 == v177)) >> 31);
          *(v592 + 284) = v202;
          if (v177 + 1 < v133)
          {
            v203 = v177 + 1;
          }

          else
          {
            v203 = v133;
          }

          *(v592 + 288) = v203;
LABEL_210:
          if (v119 == 1 || !v202 && v203 == v133)
          {
            v4 = v592;
          }

          else
          {
            v567 = v203;
            v578 = v126;
            v440 = v122[2113];
            v570 = v103;
            v574 = *(v592 + 1040);
            v441 = sub_2774A5DCC(v574, v120, v121, v122[2113]);
            if (v119 == 3)
            {
              v442 = *v574;
              v443 = v440 - v202 <= v442 ? *v574 : v440 - v202;
              if (v443 < v440)
              {
                if (v440 + -v202 > v442)
                {
                  v442 = v440 + -v202;
                }

                v444 = v440 + v442 - v443;
                do
                {
                  ++v442;
                  if (v441 < 0x3A99 || v442 != v440)
                  {
                    v445 = 1 << v442;
                    v446 = v579 - (1 << v442) >= (v121 - (1 << v442) + v581) ? v121 - (1 << v442) + v581 : v579 - (1 << v442);
                    if (v121 <= v446)
                    {
                      v447 = 0;
                      v448 = 0;
                      v449 = 0;
                      v450 = v440 - v442;
                      if (v578 - v445 >= (v581 - v445 + v120))
                      {
                        v451 = v581 - v445 + v120;
                      }

                      else
                      {
                        v451 = v578 - v445;
                      }

                      v452 = v121;
                      while (v120 > v451)
                      {
LABEL_524:
                        v452 += v445;
                        if (v452 > v446)
                        {
                          if (v449 && v449 == v447 && (v448 + (v449 >> 1)) / v449 < (1431655766 * (2 * word_27753130C[v450])) >> 32)
                          {
                            *v570 = v450;
                          }

                          goto LABEL_514;
                        }
                      }

                      v453 = v120;
                      while (1)
                      {
                        v454 = *(*&v574[6 * (v440 - v442) + 1290] + 4 * ((v453 >> v442) + (v452 >> v442) * ((v445 + v578 - 1) >> v442)));
                        if (v454 >= word_27753130C[v450])
                        {
                          break;
                        }

                        ++v447;
                        v448 += v454;
                        ++v449;
                        v453 += v445;
                        if (v453 > v451)
                        {
                          goto LABEL_524;
                        }
                      }
                    }
                  }

LABEL_514:
                  ;
                }

                while (v444 != v442);
              }
            }

            if (v441 < 0x2EE1)
            {
              v23 = v591;
              v4 = v592;
              v103 = v570;
            }

            else
            {
              v103 = v570;
              v455 = *v574;
              if (v440 - v567 > v455)
              {
                v456 = -v567 + v440;
                do
                {
                  if (v121 < v131)
                  {
                    v457 = 0;
                    v458 = 0;
                    v459 = 0;
                    v460 = 1 << v456;
                    v461 = (v440 - v456);
                    v462 = v121;
                    do
                    {
                      if (v120 < v130)
                      {
                        v463 = v120;
                        do
                        {
                          v464 = *(*&v574[6 * (v440 - v456) + 1290] + 4 * ((v463 >> v456) + (v462 >> v456) * (((1 << v456) + v578 - 1) >> v456)));
                          ++v457;
                          if (v464 <= word_27753130C[v461])
                          {
                            v464 = 0;
                          }

                          else
                          {
                            ++v459;
                          }

                          v458 += v464;
                          v463 += v460;
                        }

                        while (v463 < v130);
                      }

                      v462 += v460;
                    }

                    while (v462 < v131);
                    if (v457 && v459 > v457 >> 2 || v459 && (v458 + (v459 >> 1)) / v459 > 2 * word_27753130C[v461])
                    {
                      *(v592 + 288) = v440 - v456 + 1;
                    }
                  }

                  --v456;
                }

                while (v456 > v455);
              }

              v23 = v591;
              v4 = v592;
            }
          }

          goto LABEL_214;
        }
      }
    }

    v202 = 0;
    v203 = v133;
    goto LABEL_210;
  }

  v136 = *(v4 + 14912);
  if (*(v136 + 5433) == 1)
  {
    if (*(v4 + 88) > 29)
    {
LABEL_155:
      *(v4 + 264) = 0;
    }

    else
    {
      v155 = 0;
      v156 = *(v4 + 1040);
      v157 = *(v156 + 4);
      v158 = *(v591 + 12);
      v159 = *(v591 + 16);
      v160 = v158 >> v157;
      v161 = v159 >> v157;
      v162 = *(*(v4 + 14920) + 2117);
      v163 = v158 + v162;
      if (*(v4 + 80) < v163)
      {
        v163 = *(v4 + 80);
      }

      v164 = v163 >> v157;
      v165 = v159 + v162;
      if (*(v4 + 84) < v159 + v162)
      {
        v165 = *(v4 + 84);
      }

      v166 = v165 >> v157;
      v167 = v156 + 5232;
      v168 = *(v156 + 8);
      v169 = 1;
      while (1)
      {
        v170 = v169;
        v171 = v155 + v161;
        if (v155 + v161 < v166)
        {
          break;
        }

LABEL_154:
        v169 = 0;
        v155 = 1;
        if ((v170 & 1) == 0)
        {
          goto LABEL_155;
        }
      }

      v172 = v160 + (v155 ^ 1);
      v173 = *(v167 + 24 * v155) + 2 * v168 * (v171 << v157 >> v157);
      while (1)
      {
        v174 = v172;
        if (v172 < v164)
        {
          break;
        }

LABEL_153:
        ++v171;
        v173 += 2 * v168;
        if (v171 >= v166)
        {
          goto LABEL_154;
        }
      }

      while (1)
      {
        v175 = *(v173 + 2 * v174);
        if (v175 < 0)
        {
          v175 = -v175;
        }

        if (v175 > 5)
        {
          break;
        }

        if (v164 == ++v174)
        {
          goto LABEL_153;
        }
      }

      *(v4 + 264) = 2;
    }
  }

LABEL_214:
  v204 = *(v118 + 178);
  v205 = (v204 - *(v118 + 504)) & ~((v204 - *(v118 + 504)) >> 31);
  v206 = (v4 + 292);
  v207 = *(v4 + 288);
  if (v207 < v205)
  {
    v205 = *(v4 + 288);
  }

  *(v4 + 292) = v205;
  v208 = (v204 - *(v118 + 508)) & ~((v204 - *(v118 + 508)) >> 31);
  if (v207 >= v208)
  {
    v207 = v208;
  }

  *(v4 + 296) = v207;
  if (*(v136 + 58) == 2)
  {
    if (*v103 >= v205)
    {
      v206 = v103;
    }

    v209 = *v206;
    v210 = *(v23 + 12);
    v211 = *(v23 + 16);
    goto LABEL_222;
  }

  if (v208 < v205)
  {
    v206 = (v4 + 296);
  }

  v218 = *v206;
  if (*v103 > v218)
  {
    v218 = *v103;
  }

  *v103 = v218;
  v210 = *(v23 + 12);
  v211 = *(v23 + 16);
  if (*(v118 + 550) && v218 == 1)
  {
    v219 = *(v4 + 14920);
    v220 = *(v4 + 1040);
    v221 = *(v4 + 80);
    v222 = *v220;
    LODWORD(v223) = 1 << (v219[2113] - *v220);
    v224 = (*(v4 + 84) - v211) >> *v220 >= v223 ? 1 << (v219[2113] - *v220) : (*(v4 + 84) - v211) >> *v220;
    if (v224 < 1)
    {
      LODWORD(v226) = 0;
    }

    else
    {
      v225 = 0;
      v226 = 0;
      v227 = v221 >> v222;
      v228 = 2 * v222;
      v229 = (v221 - v210) >> v222;
      v223 = v229 >= v223 ? v223 : v229;
      v230 = (v210 >> v222) + v227 * (v211 >> v222);
      v231 = *(v220 + 630) + 8 * v230;
      v232 = *(v220 + 627) + 4 * v230;
      v233 = 1 << (v228 - 1);
      v234 = 4 * v227;
      v235 = 8 * v227;
      do
      {
        if (v229 >= 1)
        {
          v236 = 0;
          do
          {
            v237 = (*(v232 + 4 * v236) * *(v232 + 4 * v236)) >> v228;
            if ((*(v231 + 8 * v236) + v233 - v237) >> v228 > v226)
            {
              v226 = (*(v231 + 8 * v236) + v233 - v237) >> v228;
            }

            ++v236;
          }

          while (v223 != v236);
        }

        ++v225;
        v232 += v234;
        v231 += v235;
      }

      while (v225 != v224);
    }

    if (v226 < *v586)
    {
      v285 = 1 << v219[2112];
      v286 = v211 >= v285;
      v287 = v210 + v219[2117];
      v288 = v211 >= v285 && v210 >= v285;
      if (v211 < v285)
      {
        v289 = v210 >= v285;
      }

      else
      {
        v289 = (v210 >= v285) + 1;
      }

      if (v287 + v285 > v221)
      {
        v286 = 0;
      }

      v290 = v210 - v285;
      v291 = v210 >= v285 && (*(*(*(v136 + 8) + 800) + 2 * *(*(v136 + 8) + 768) * (v211 >> 3) + 2 * (v290 >> 3)) & 3) == 0;
      v197 = __OFSUB__(v211, v285);
      v437 = v211 - v285;
      if (v437 < 0 == v197 && (*(*(*(v136 + 8) + 800) + 2 * *(*(v136 + 8) + 768) * (v437 >> 3) + 2 * (v210 >> 3)) & 3) == 0)
      {
        ++v291;
      }

      v438 = v289 + v288;
      if (v286 && (*(*(*(v136 + 8) + 800) + 2 * *(*(v136 + 8) + 768) * (v437 >> 3) + 2 * (v287 >> 3)) & 3) == 0)
      {
        ++v291;
      }

      v439 = v438 + v286;
      if (v288 && (*(*(*(v136 + 8) + 800) + 2 * *(*(v136 + 8) + 768) * (v437 >> 3) + 2 * (v290 >> 3)) & 3) == 0)
      {
        ++v291;
      }

      if (v439 == v291)
      {
        v209 = 0;
LABEL_222:
        *v103 = v209;
      }
    }
  }

  *(v23 + 3172) = 0;
  v596 = 0;
  if (*(v4 + 1664) == 1)
  {
    *(v4 + 1688) = v210;
    *(v4 + 1692) = v211;
    v212 = 85;
    v213 = v4;
    do
    {
      v214 = (v213 + 1784);
      *(v213 + 1808) = 0;
      *(v213 + 1800) = -1;
      *(v213 + 1812) = 1;
      *(v213 + 1816) = v213 + 1784;
      *(v213 + 1856) = 0;
      *(v213 + 1864) = 0;
      v213 += 144;
      *v214 = 0uLL;
      --v212;
    }

    while (v212);
    *(v4 + 14320) = 0;
    sub_27745E7E4(v4 + 1664, v210, v211, *(v4 + 1668));
    v136 = *(v4 + 14912);
  }

  v215 = v4 + 27760;
  bzero((v4 + 27760), 0x800uLL);
  if (*(v136 + 5432) == 1)
  {
    v216 = *(v23 + 12);
    LODWORD(v217) = *(v23 + 16);
  }

  else
  {
    v216 = *(v23 + 12);
    v217 = *(v23 + 16);
    if (*(v136 + 5433) != 1)
    {
      goto LABEL_270;
    }
  }

  v238 = 1 << *(*(v4 + 14920) + 2113);
  v239 = *(*(v4 + 24744) + 1);
  sub_27748BF34(v4 + 64, *(v4 + 24616), v216, v217, 0, *(v4 + 88));
  v216 = *(v23 + 12);
  v217 = *(v23 + 16);
  v240 = v217 + v238;
  v241 = *(v4 + 84);
  if (v217 + v238 >= v241)
  {
    v240 = *(v4 + 84);
  }

  if (v217 < v240)
  {
    v242 = v217;
    v243 = *(v4 + 80);
    do
    {
      v244 = v216 + v238;
      if (v216 + v238 >= v243)
      {
        v244 = v243;
      }

      if (v216 < v244)
      {
        v245 = v216;
        v246 = v215;
        do
        {
          v247 = *(v4 + 24616);
          v248 = **(v247 + 24) + (v245 + *(v247 + 32) + (v242 - *(v247 + 8)) * *(v247 + 1) - *(v247 + 4)) * *(*(v247 + 24) + 16);
          v249 = *(v4 + 14912);
          if (*(v249 + 5432) == 1)
          {
            (*(v4 + 1064))(v248, v239, v246);
            v249 = *(v4 + 14912);
          }

          if (*(v249 + 5433) == 1)
          {
            *(v246 + 8) = *(*(*(v249 + 5320) + 616) + 672);
            (*(v592 + 1072))(v248, v239, v246 + 8);
            *(v246 + 24) = (*(*(v592 + 1040) + 104))(v248, v239);
            v4 = v592;
          }

          v245 += 8;
          v216 = *(v591 + 12);
          v250 = v216 + v238;
          v243 = *(v4 + 80);
          if (v216 + v238 >= v243)
          {
            v250 = *(v4 + 80);
          }

          v246 += 256;
        }

        while (v245 < v250);
        v23 = v591;
        v217 = *(v591 + 16);
        v241 = *(v4 + 84);
      }

      v242 += 8;
      v251 = v217 + v238;
      if (v217 + v238 >= v241)
      {
        v251 = v241;
      }

      v215 += 32;
    }

    while (v242 < v251);
  }

LABEL_270:
  sub_27748D270(v4 + 64, v216, v217, 0, (v4 + 24744), (v4 + 24616), *(v23 + 20), &v595, &v596, *(v4 + 88));
  if (*(v23 + 3172) == 1)
  {
    v596 = 0;
    v595 = v593;
    sub_27748C9C8((v4 + 64), 0);
    sub_2774906EC(v4 + 64, *(v23 + 12), *(v23 + 16), 0, *(v23 + 20), &v595, &v596);
  }

  else
  {
    if (*(v4 + 72) == 1)
    {
      v596 = 0;
      v595 = v593;
      sub_277490C94(v4 + 64, *(v23 + 12), *(v23 + 16), *(v4 + 24616), 1, 0, 0, 0, 0);
      if (*(*(v4 + 14920) + 201))
      {
        sub_277490E9C(v4 + 64, *(v23 + 12), *(v23 + 16), 0, *(v23 + 20), *(v4 + 88), &v595, &v596);
      }
    }

    sub_27748C9C8((v4 + 64), 1);
  }

  sub_277490C94(v4 + 64, *(v23 + 12), *(v23 + 16), *(v4 + 24616), 0, 0, 0, 0, 0);
  v255 = *(*(v4 + 24616) + 1);
  v256 = *(v23 + 12);
  v257 = *(v23 + 16);
  v258 = *(v4 + 80);
  if (v258 >= v256 + v255)
  {
    v258 = v256 + v255;
  }

  v259 = v257 + v255;
  if (*(v4 + 84) < v259)
  {
    v259 = *(v4 + 84);
  }

  v260 = (v259 - v257 + 7) >> 3;
  if (v260 >= 1)
  {
    v261 = 0;
    v262 = (v258 - v256 + 7) >> 3;
    do
    {
      if (v262 >= 1)
      {
        v263 = *(v4 + 952) + 16 * *(v4 + 928) * ((v257 + 8 * v261 - *(v4 + 900)) >> 2);
        v264 = -*(v4 + 896);
        v265 = v256;
        v266 = v262;
        do
        {
          if (*(v263 + 16 * ((v264 + v265) >> 2) + 10) == 1)
          {
            *(v4 + 304) += 64;
          }

          v265 += 8;
          --v266;
        }

        while (v266);
      }

      ++v261;
    }

    while (v261 != v260);
  }

  v267 = *(v4 + 14912);
  if ((*(v267 + 564) & 1) == 0)
  {
    v268.n128_u64[0] = sub_277491618(v4 + 64, v256, v257, 0, v253.n128_u64[0]);
    v269 = *(v4 + 14912);
    v270 = *(v269 + 3440);
    v271 = *(v269 + 3432);
    v272 = (v269 + (v270 >> 1) + 3400);
    if (v270)
    {
      v271 = *(*v272 + v271);
    }

    v271(v272, v268);
    v267 = *(v4 + 14912);
  }

  if ((*(v267 + 512) & 1) == 0 && *(v267 + 513) != 1)
  {
    goto LABEL_572;
  }

  v253.n128_u64[0] = 0xFFFFFFFFLL;
  *(v4 + 224) = 0xFFFFFFFFLL;
  if (*(*(v4 + 1032) + 132))
  {
    v273 = *(v4 + 14920);
    v274 = *(v23 + 12);
    v275 = vsub_s32(*(v4 + 880), v274);
    v276 = vand_s8(vmin_s32(v275, vdup_n_s32(*(v273 + 2117))), vcgtz_s32(v275));
    v277 = vceqz_s32(v276);
    if ((v277.i32[0] | v277.i32[1]))
    {
      v278 = *(v4 + 88);
    }

    else
    {
      if (v276.i32[1] < 1)
      {
        v280 = 0;
        v279 = 0;
      }

      else
      {
        v279 = 0;
        v280 = 0;
        v282 = 1 << *(*(v4 + 14928) + 1636);
        v283 = HIDWORD(*(v23 + 12));
        do
        {
          if (v276.i32[0] >= 1)
          {
            v284 = *(v23 + 12);
            do
            {
              v281 = *(v4 + 24616);
              v279 += *(*(v281 + 11) + 2 * (*v281 >> 3) * ((v283 - *(v281 + 2)) >> 3) + 2 * ((v284 - *(v281 + 1)) >> 3)) >> 9;
              v284 += v282;
              ++v280;
            }

            while (v284 < v276.i32[0] + v274.i32[0]);
          }

          v283 += v282;
        }

        while (v283 < v276.i32[1] + v274.i32[1]);
      }

      v278 = (v279 + v280 / 2) / v280;
    }

    *(v4 + 232) = v278;
    sub_2774BF0E4(v267 + 4032, v278, *(v273 + 2097), (v4 + 236), (v4 + 240), (v4 + 248));
    v267 = *(v4 + 14912);
  }

  v252 = *(v4 + 1008);
  v293 = *(v23 + 4);
  v292 = *(v23 + 8);
  v294 = *(v4 + 24616);
  v295 = v293 + *(v267 + 3552) * v292;
  v296 = *(v267 + 4720);
  v297 = (*(*(v267 + 4024) + 1000) + 16 * v295);
  *v297 = 0;
  v297[1] = 0;
  v298 = *(v267 + 4024);
  if (*(v298 + 432) != 1 || ((v299 = *(v267 + 3548) - 1, v300 = *(v267 + 3544), v301 = (v299 + *(v298 + 504)) >> v300, v302 = (v299 + *(v298 + 508)) >> v300, v301 > v293) ? (v303 = v302 > v292) : (v303 = 0), v303))
  {
    v555 = v297;
    v308 = (v267 + 4096);
    v309 = (v296 + 2 * v295);
    if (*(v267 + 4712) == 1)
    {
      v310 = *(v267 + 3548);
      v311 = v310 * v293;
      v312 = v310 * v292;
      v313 = *(v267 + 4744);
      v314 = 520;
      if (*(v313 + 432))
      {
        v314 = 504;
      }

      v315 = *(v313 + v314);
      v316 = 524;
      if (*(v313 + 432))
      {
        v316 = 508;
      }

      if (v310 + v311 < v315)
      {
        v315 = v310 + v311;
      }

      v317 = *(v313 + v316);
      v318 = v310 + v312;
      if (v318 >= v317)
      {
        v318 = v317;
      }

      if (v318 <= v312)
      {
        goto LABEL_570;
      }

      v319 = 0;
      v320 = 0;
      v321 = 1 << *(v267 + 3560);
      do
      {
        if (v315 > v311)
        {
          v322 = v311;
          do
          {
            v319 += (*(*(v294 + 11) + 2 * (*v294 >> 3) * ((v312 - *(v294 + 2)) >> 3) + 2 * ((v322 - *(v294 + 1)) >> 3)) >> 7) & 1;
            v322 += v321;
            ++v320;
          }

          while (v322 < v315);
        }

        v312 += v321;
      }

      while (v312 < v318);
      if (v319 >= (96 * v320) >> 7)
      {
        goto LABEL_570;
      }
    }

    v552 = v252;
    v553 = v309;
    v594 = v267;
    v565 = (v267 + 4096);
    v556 = v292;
    v554 = v293;
    if (*(v267 + 4704) == 1)
    {
      v323 = v597;
      sub_2774DCDE8(v267 + 3536, v293, v292, 0, v597);
      v324 = 0;
      v602 = 0;
      v587 = *(*(v267 + 4024) + 1000) + 16 * (v293 + *(v267 + 3552) * v292);
      LOWORD(v605) = 0;
      BYTE2(v605) = 0;
      v325 = *(v267 + 4760);
      HIBYTE(v605) = -v325;
      LOBYTE(v606) = -v325;
      LOBYTE(v599) = v325;
      BYTE1(v599) = v325;
      v326 = v598;
      v582 = 5;
      HIWORD(v599) = 0;
      v600 = 0;
      LODWORD(v252) = 0x7FFFFFFF;
      do
      {
        v575 = v252;
        v327 = 0;
        v328 = 0;
        v329 = 0;
        do
        {
          if (v327 != 2)
          {
            v330 = v323[v327];
            v331 = v326[v327];
            if (v326[v327])
            {
              if (v330 >= 0)
              {
                v332 = v326[v327];
              }

              else
              {
                v332 = -v331;
              }

              v333 = (v332 + 2 * v330) / (2 * v331);
              v334 = *(&v599 + v327);
              if (v333 < v334)
              {
                v334 = (v332 + 2 * v330) / (2 * v331);
              }

              if (v333 <= *(&v605 + v327))
              {
                v335 = *(&v605 + v327);
              }

              else
              {
                v335 = v334;
              }
            }

            else
            {
              v335 = 0;
            }

            v601 = v335;
            LODWORD(v603) = 0;
            v328 += sub_2774DD114(v331, v330, &v601, &v603, v324, *(v4 + 236), *(v267 + 3566));
            v329 += v603;
            *(v607 + byte_27753C4A4[v327] - 1) = v601;
          }

          ++v327;
        }

        while (v327 != 5);
        v602 = __PAIR64__(v329, v328);
        v336 = *(v267 + 4708);
        v337 = *(v4 + 236);
        if (v336 == 1)
        {
          sub_2774DD1D8(v594 + 3536, v597, v324, v607, 0, &v602 + 1, &v602, *(v4 + 236));
          v328 = v602;
          v329 = HIDWORD(v602);
        }

        v338 = v328 + 4;
        LODWORD(v602) = v328 + 4;
        v252 = v575;
        if ((v329 + v337 * (v328 + 4)) < v575)
        {
          *(v4 + 224) = v329;
          *(v4 + 228) = v338;
          *(v587 + 1) = v607[0];
          v582 = v324;
          v252 = v329 + v337 * v338;
        }

        ++v324;
        v326 += 15;
        v323 += 15;
        v267 = v594;
      }

      while (v324 != 4);
      v308 = v565;
      v339 = *(v4 + 236);
      if (v565[616])
      {
        v292 = v556;
        v293 = v554;
        v340 = v587;
        LOBYTE(v341) = v582;
      }

      else
      {
        v342 = v252;
        v343 = 0;
        v344 = *(v594 + 3566);
        do
        {
          v345 = *&v598[2 * v343 + 60];
          v346 = v598[v343 + 252];
          if (v598[v343 + 252])
          {
            if (v345 >= 0)
            {
              v347 = v598[v343 + 252];
            }

            else
            {
              v347 = -v346;
            }

            v348 = (v347 + 2 * v345) / (2 * v346);
            if (v348 >= v344)
            {
              v349 = v344;
            }

            else
            {
              v349 = (v347 + 2 * v345) / (2 * v346);
            }

            if (v348 <= -v344)
            {
              v350 = -v344;
            }

            else
            {
              v350 = v349;
            }
          }

          else
          {
            v350 = 0;
            HIDWORD(v602) = 0;
          }

          v601 = v350;
          v351 = sub_2774DD114(v346, v345, &v601, &v602 + 1, 4, v339, v344);
          *(v607 + v343) = v601;
          *(&v604[-1] + v343++) = HIDWORD(v602) + v351 * v339;
        }

        while (v343 != 32);
        v352 = 0;
        v353 = 0;
        v354 = v603 - v339 + 8 * v339 + HIDWORD(v603) + LODWORD(v604[0]);
        v292 = v556;
        v293 = v554;
        LODWORD(v252) = v342;
        v340 = v587;
        v341 = v582;
        do
        {
          v355 = &v604[-1] + v352;
          v356 = v355[3] + v354;
          if (v356 >= v252)
          {
            v252 = v252;
          }

          else
          {
            v341 = 4;
            v353 = v352;
            v252 = v356;
          }

          v354 = v356 - *v355;
          ++v352;
        }

        while (v352 != 29);
        v267 = v594;
        v308 = v565;
        if (v341 == 4)
        {
          *(v587 + 13) = v353;
          *(v587 + 1) = *(v607 + v353);
          v339 = *(v4 + 236);
        }
      }

      if (v252 >= v339)
      {
        *v340 = *v340 & 0xF0 | 0xA;
        v252 = *(v4 + 236);
      }

      else
      {
        *v340 = *v340 & 0xF0 | (2 * (v341 & 7)) | 1;
      }
    }

    else
    {
      v252 = 0;
    }

    if (v308[609] == 1)
    {
      v576 = v252;
      sub_2774DCDE8(v267 + 3536, v293, v292, 1u, v597);
      v599 = 0;
      v357 = v293 + *(v267 + 3552) * v292;
      v550 = *(*(v267 + 4024) + 1000);
      v558 = (v550 + 16 * v357);
      if (v308[616])
      {
        v571 = 0x7FFFFFFF;
        v557 = 5;
      }

      else
      {
        v568 = v293 + *(v267 + 3552) * v292;
        v358 = 0;
        LOWORD(v603) = 0;
        v359 = *(v267 + 4760);
        BYTE2(v603) = 0;
        BYTE3(v603) = -v359;
        BYTE4(v603) = -v359;
        v360 = (v4 + 240);
        LOBYTE(v605) = v359;
        BYTE1(v605) = v359;
        v557 = 5;
        v361 = 0x7FFFFFFF;
        HIWORD(v605) = 0;
        LOBYTE(v606) = 0;
        v580 = v597;
        v583 = v598;
        do
        {
          v572 = v361;
          v362 = 0;
          v599 = 0;
          HIDWORD(v602) = 0;
          v363 = 1;
          do
          {
            v364 = 0;
            v588 = v362;
            v365 = HIDWORD(v602);
            v366 = v599;
            v367 = v363 - 1;
            v368 = &v583[5 * v363];
            do
            {
              if (v364 != 2)
              {
                v369 = v580[5 * v363 + v364];
                v370 = v368[v364];
                if (v368[v364])
                {
                  if (v369 >= 0)
                  {
                    v371 = v368[v364];
                  }

                  else
                  {
                    v371 = -v370;
                  }

                  v372 = (v371 + 2 * v369) / (2 * v370);
                  v373 = *(&v605 + v364);
                  if (v372 < v373)
                  {
                    v373 = (v371 + 2 * v369) / (2 * v370);
                  }

                  if (v372 <= *(&v604[-1] + v364))
                  {
                    v374 = *(&v604[-1] + v364);
                  }

                  else
                  {
                    v374 = v373;
                  }
                }

                else
                {
                  v374 = 0;
                }

                LODWORD(v602) = v374;
                v601 = 0;
                v365 += sub_2774DD114(v370, v369, &v602, &v601, v358, v360[v367], *(v594 + 3567));
                v366 += v601;
                *(&v607[8 * v367 - 1] + byte_27753C4A4[v364] + 3) = v602;
              }

              ++v364;
            }

            while (v364 != 5);
            HIDWORD(v602) = v365;
            v599 = v366;
            if (*(v594 + 4708) == 1)
            {
              sub_2774DD1D8(v594 + 3536, v597, v358, &v607[8 * v367], v363, &v599, &v602 + 1, v360[v367]);
            }

            v362 = 1;
            v363 = 2;
          }

          while ((v588 & 1) == 0);
          HIDWORD(v602) += 4;
          v375 = v599 + *v360 * HIDWORD(v602);
          v361 = v572;
          if (v375 < v572)
          {
            v376 = v607[8];
            *(v558 + 5) = v607[0];
            *(v558 + 9) = v376;
            v557 = v358;
            v361 = v375;
          }

          ++v358;
          v580 += 15;
          v583 += 15;
        }

        while (v358 != 4);
        v571 = v361;
        v4 = v592;
        v267 = v594;
        v357 = v568;
      }

      v377 = 0;
      v549 = v357;
      v551 = *(v4 + 240);
      v378 = 12 * v551;
      v379 = *(v267 + 3567);
      v584 = (v4 + 240);
      v380 = 1;
      do
      {
        v381 = 0;
        v382 = v380 - 1;
        v383 = v584[v380 - 1];
        v384 = &v604[4 * v380 + 12];
        v589 = v377;
        v385 = &v598[32 * v380 + 252];
        v386 = &v598[64 * v380 + 60];
        do
        {
          v387 = *&v386[2 * v381];
          v388 = v385[v381];
          if (v385[v381])
          {
            if (v387 >= 0)
            {
              v389 = v385[v381];
            }

            else
            {
              v389 = -v388;
            }

            v390 = (v389 + 2 * v387) / (2 * v388);
            v391 = *(v594 + 3566);
            if (v390 >= v391)
            {
              v392 = *(v594 + 3566);
            }

            else
            {
              v392 = v390;
            }

            if ((v390 + v391 < 0) ^ __OFADD__(v390, v391) | (v390 + v391 == 0))
            {
              v393 = -v391;
            }

            else
            {
              v393 = v392;
            }
          }

          else
          {
            v393 = 0;
            v599 = 0;
          }

          LODWORD(v602) = v393;
          v394 = sub_2774DD114(v388, v387, &v602, &v599, 4, v383, v379);
          *(v384 + v381) = v602;
          *(&v604[-1] + v381++) = v599 + v394 * v383;
        }

        while (v381 != 32);
        v395 = 0;
        v396 = HIDWORD(v603) + v603 + LODWORD(v604[0]);
        v397 = 0x7FFFFFFF;
        v4 = v592;
        v267 = v594;
        do
        {
          v398 = *(v604 + v395 + 1) + v396;
          if (v398 < v397)
          {
            *(&v605 + v382) = v395;
            v397 = v398;
          }

          v396 = v398 - *(&v604[-1] + v395++);
        }

        while (v395 != 29);
        v378 += v397;
        v377 = 1;
        v380 = 2;
      }

      while ((v589 & 1) == 0);
      v399 = v571;
      v400 = v551;
      if (v378 < v571)
      {
        v401 = v605;
        v402 = v606;
        v558[14] = v605;
        v403 = v550 + 16 * v549;
        *(v403 + 5) = *(v607 + v401);
        v558[15] = v402;
        *(v403 + 9) = *(&v607[8] + v402);
        v400 = *v584;
        v557 = 4;
        v399 = v378;
      }

      v404 = *v558;
      v308 = v565;
      v292 = v556;
      v293 = v554;
      if (v399 >= v400)
      {
        *v558 = v404 & 0xF | 0xA0;
        v399 = *v584;
      }

      else
      {
        *v558 = v404 & 0xF | (32 * v557) | 0x10;
      }

      v252 = (v576 + ((*(v592 + 248) * v399) >> 8));
    }

    v405 = v293 + *(v267 + 3552) * v292;
    v406 = *(*(v267 + 4024) + 1000) + 16 * v405;
    v407 = (*(v267 + 4720) + 2 * v405);
    v603 = 0;
    v604[0] = 0;
    v573 = v407;
    *v407 = 0;
    v408 = v293 > 0;
    if (v293 < 1)
    {
      v569 = 0;
    }

    else
    {
      v569 = (v406 - 16);
      v603 = v406 - 16;
    }

    v409 = v292 > 0;
    v577 = v406;
    if (v292 < 1)
    {
      v566 = 0;
    }

    else
    {
      v566 = (v406 - 16 * *(v267 + 3552));
      v604[0] = v566;
    }

    v410 = 0;
    v590 = 0;
    v411 = *(v552 + 48);
    v412 = dword_27753C4AC[v411 ^ 1];
    LODWORD(v411) = dword_27753C4AC[v411] + v412;
    v607[0] = v412;
    v605 = v411;
    v413 = v4 + 248;
    v585 = -1;
    v414 = &v603;
    v415 = v607;
    v416 = 1;
    v417 = -1;
    while (1)
    {
      v418 = v416;
      if (v408)
      {
        v419 = *v414;
        if (*v414)
        {
          break;
        }
      }

LABEL_477:
      v416 = 0;
      v410 = 1;
      v415 = &v605;
      v408 = v409;
      v414 = v604;
      if ((v418 & 1) == 0)
      {
        if (v252 >= *(v4 + 236) * (v308[609] + v308[608]))
        {
          v23 = v591;
          v436 = v594;
          v309 = v553;
          if (v554 < 1 || (*v569 & 0x11) != 0)
          {
            if (v556 < 1 || (*v566 & 0x11) != 0)
            {
              v577->n128_u8[0] = -86;
              goto LABEL_558;
            }

            v417 = 1;
          }

          else
          {
            v417 = 0;
          }
        }

        else
        {
          v23 = v591;
          v436 = v594;
          v309 = v553;
          if ((v417 & 0x80000000) != 0)
          {
LABEL_558:
            if (*(v436 + 4020) != 1 || (*v555 & 8) != 0 && (*v309 & 1) == 0 && v309[1] != 1)
            {
              goto LABEL_572;
            }

            v466 = *(v4 + 232);
            if (v466 > 26)
            {
              goto LABEL_572;
            }

            v467 = *(v436 + 4616) - 2 * v466 + 81;
            v468 = v467 >= 0x3F ? 63 : v467;
            v469 = v467 <= 0 ? 0 : v468;
            if (*(v4 + 224) + *(v4 + 228) * dword_2775347BC[70 * v308[114] + v469] < 0)
            {
              goto LABEL_572;
            }

LABEL_570:
            *v555 = -86;
            *v309 = 0;
            v307 = v309 + 1;
            goto LABEL_571;
          }
        }

        *v573 = v417 == 0;
        v573[1] = v417 != 0;
        v465 = v604[v417 - 1];
        v253 = *v465;
        *v577 = *v465;
        if ((v465->n128_u8[0] & 8) != 0)
        {
          v253.n128_u64[0] = 2147483649;
          *(v4 + 224) = 2147483649;
        }

        else
        {
          *(v4 + 224) = v585;
          *(v4 + 228) = v590;
        }

        goto LABEL_558;
      }
    }

    v420 = v308[608] ^ 1;
    if (v308[609])
    {
      v421 = 3;
    }

    else
    {
      v421 = 1;
    }

    if (v421 == v420)
    {
      v422 = 0;
LABEL_475:
      v308 = v565;
      if ((v422 + ((*v415 * *(v4 + 236)) >> 8)) < v252)
      {
        v590 = *v415 >> 8;
        v417 = v410;
        v585 = v422;
        v252 = v422 + ((*v415 * *(v4 + 236)) >> 8);
      }

      goto LABEL_477;
    }

    v422 = 0;
    v423 = v419 + 1;
    v426 = *v419;
    v425 = v419 + 13;
    v424 = v426;
    v427 = v426 >> 5;
    v428 = (v426 >> 1) & 7;
    v429 = &v598[5 * v420];
    v430 = &v597[20 * v420];
    while (1)
    {
      if (v420)
      {
        v431 = v427;
        if ((v424 & 0x10) != 0)
        {
          goto LABEL_464;
        }
      }

      else
      {
        v431 = v428;
        if (v424)
        {
LABEL_464:
          if (v431 == 4)
          {
            v254.i32[0] = *&v423[4 * v420];
            v254 = vmovl_s16(*&vmovl_s8(*v254.i8));
            v253 = vmlaq_s32(v422, vmlaq_s32(vnegq_s32(vaddq_s32(*&v598[64 * v420 + 60 + 2 * v425[v420]], *&v598[64 * v420 + 60 + 2 * v425[v420]])), v254, vmovl_u16(*&v598[32 * v420 + 252 + v425[v420]])), v254);
            v253.n128_u32[0] = vaddvq_s32(v253);
            v422 = v253.n128_u32[0];
          }

          else if (v431 <= 3)
          {
            v432 = 0;
            v433 = &v429[15 * v431];
            v434 = &v430[15 * v431];
            do
            {
              if (v432 != 2)
              {
                v435 = v423[4 * v420 - 1 + byte_27753C4A4[v432]];
                v422 += (v435 * v433[v432] - 2 * v434[v432]) * v435;
              }

              ++v432;
            }

            while (v432 != 5);
          }

          if (v420)
          {
            v422 = (*(v413 + 4 * v420 - 4) * v422) >> 8;
          }

          v4 = v592;
        }
      }

      ++v420;
      v429 += 5;
      v430 += 5;
      if (v420 == v421)
      {
        goto LABEL_475;
      }
    }
  }

  v304 = v301 <= v293;
  v305 = v301 < v293;
  v306 = (*(v267 + 4720) + 2 * (v293 + *(v267 + 3552) * v292));
  if (v302 <= v292)
  {
    v305 = 1;
  }

  *v306 = v305;
  if (v302 < v292)
  {
    v304 = 1;
  }

  v306[1] = v304;
  v307 = v306 + 1;
  if (v293)
  {
    if (v292 != 0 && !v305)
    {
      goto LABEL_572;
    }

    goto LABEL_571;
  }

  *v306 = 0;
  if (!v292)
  {
LABEL_571:
    *v307 = 0;
  }

LABEL_572:
  v470 = *(v4 + 1016);
  v471 = (*(a1 + 1184) + 4 * v559);
  v472 = *(*(v4 + 14928) + 21);
  v597[0] = 0;
  *(v4 + 300) = 0;
  *(v4 + 1008) = v470;
  if (v472 == 1 && !*(v23 + 12) && *(v23 + 16) && *(*(v4 + 14920) + 2120) >= 2)
  {
    v487 = *(v4 + 14912);
    v488 = *(v487 + 1208);
    v489 = *(v487 + 1224);
    v490 = *(v487 + 1256);
    v470[5] = *(v487 + 1240);
    v470[6] = v490;
    v470[3] = v488;
    v470[4] = v489;
    v491 = *(v487 + 1272);
    v492 = *(v487 + 1288);
    v493 = *(v487 + 1320);
    v470[9] = *(v487 + 1304);
    v470[10] = v493;
    v470[7] = v491;
    v470[8] = v492;
    v253 = *(v487 + 1336);
    v494 = *(v487 + 1352);
    v495 = *(v487 + 1368);
    *(v470 + 224) = *(v487 + 1384);
    v470[12] = v494;
    v470[13] = v495;
    v470[11] = v253;
    v470 = *(v4 + 1008);
  }

  *(v470 + 225) = 1;
  *(v4 + 72) = *(*(v4 + 14920) + 201) == 0;
  v473 = *(v4 + 14912);
  v474 = *(v473 + 512);
  v475 = *(v473 + 513);
  if (v474 & 1) != 0 || (*(v473 + 513))
  {
    v476 = *(v591 + 4);
    v477 = *(v591 + 8);
    v478 = v476 + *(v473 + 3552) * v477;
    v479 = *(*(v473 + 4024) + 1000);
    v480 = (*(v473 + 4720) + 2 * v478);
    if (v476 < 1 || ((**v470)(v470, *v480, (v470 + 3), v252), (*v480 & 1) == 0))
    {
      if (v477 < 1 || ((**v470)(v470, v480[1], v470 + 3), (v480[1] & 1) == 0))
      {
        v481 = v474 ^ 1 | v475;
        v482 = (v479 + 16 * v478);
        if (!v474)
        {
          goto LABEL_583;
        }

        v483 = v470 + 49;
        v484 = **v470;
        if ((*v482 & 1) == 0)
        {
          v484(v470, 0, v483);
LABEL_583:
          if ((v481 & 1) == 0)
          {
            goto LABEL_624;
          }

          goto LABEL_584;
        }

        v484(v470, 1, v483);
        (*(*v470 + 8))(v470, (*v482 & 8) == 0);
        v496 = v482 + 1;
        v497 = *(v473 + 3566);
        if ((*v482 & 0xE) == 8)
        {
          v498 = 0;
          v499 = v482[13];
          do
          {
            v500 = v496[v498];
            if (v500 >= 0)
            {
              v501 = v500;
            }

            else
            {
              v501 = -v500;
            }

            (*(*v470 + 40))(v470, v501, v497);
            ++v498;
          }

          while (v498 != 4);
          for (i = 0; i != 4; ++i)
          {
            if (v496[i])
            {
              (*(*v470 + 8))(v470, (v496[i] >> 7) & 1);
            }
          }

          (*(*v470 + 24))(v470, v499, 5);
        }

        else
        {
          (*(*v470 + 40))(v470, v482[1], *(v473 + 3566));
          (*(*v470 + 40))(v470, v482[2], v497);
          (*(*v470 + 40))(v470, -v482[3], v497);
          (*(*v470 + 40))(v470, -v482[4], v497);
          (*(*v470 + 24))(v470, (*v482 >> 1) & 7, 2);
        }

        if (v481)
        {
LABEL_584:
          v485 = v470 + 49;
          v486 = **v470;
          if ((*v482 & 0x10) != 0)
          {
            v486(v470, 1, v485);
            (*(*v470 + 8))(v470, (*v482 >> 7) ^ 1u);
            v503 = v482 + 5;
            v504 = *(v473 + 3567);
            if ((*v482 & 0xE0) == 0x80)
            {
              v505 = 0;
              v506 = v482[14];
              do
              {
                v507 = v503[v505];
                if (v507 >= 0)
                {
                  v508 = v507;
                }

                else
                {
                  v508 = -v507;
                }

                (*(*v470 + 40))(v470, v508, v504);
                ++v505;
              }

              while (v505 != 4);
              for (j = 0; j != 4; ++j)
              {
                if (v503[j])
                {
                  (*(*v470 + 8))(v470, (v503[j] >> 7) & 1);
                }
              }

              (*(*v470 + 24))(v470, v506, 5);
              v510 = 0;
              v511 = *(v473 + 3567);
              v512 = v482 + 9;
              v513 = v482[15];
              do
              {
                v514 = v512[v510];
                if (v514 >= 0)
                {
                  v515 = v514;
                }

                else
                {
                  v515 = -v514;
                }

                (*(*v470 + 40))(v470, v515, v511);
                ++v510;
              }

              while (v510 != 4);
              for (k = 0; k != 4; ++k)
              {
                if (v512[k])
                {
                  (*(*v470 + 8))(v470, (v512[k] >> 7) & 1);
                }
              }

              (*(*v470 + 24))(v470, v513, 5);
            }

            else
            {
              (*(*v470 + 40))(v470, v482[5], *(v473 + 3567));
              (*(*v470 + 40))(v470, v482[6], v504);
              (*(*v470 + 40))(v470, -v482[7], v504);
              (*(*v470 + 40))(v470, -v482[8], v504);
              (*(*v470 + 24))(v470, *v482 >> 5, 2);
              v517 = *(v473 + 3567);
              (*(*v470 + 40))(v470, v482[9], v517);
              (*(*v470 + 40))(v470, v482[10], v517);
              (*(*v470 + 40))(v470, -v482[11], v517);
              v253.n128_f64[0] = (*(*v470 + 40))(v470, -v482[12], v517);
            }
          }

          else
          {
            v486(v470, 0, v485);
          }
        }
      }
    }
  }

LABEL_624:
  sub_277495D50(v592 + 64, *(v591 + 12), *(v591 + 16), 0, *(v591 + 20), v471, v597, v253);
  if (v472 && *(v591 + 4) == 1)
  {
    v518 = *(v592 + 14912);
    v519 = *(v592 + 1008);
    v520 = *(v519 + 160);
    v522 = *(v519 + 112);
    v521 = *(v519 + 128);
    *(v518 + 1304) = *(v519 + 144);
    *(v518 + 1320) = v520;
    *(v518 + 1272) = v522;
    *(v518 + 1288) = v521;
    v524 = *(v519 + 192);
    v523 = *(v519 + 208);
    v525 = *(v519 + 176);
    *(v518 + 1384) = *(v519 + 224);
    *(v518 + 1352) = v524;
    *(v518 + 1368) = v523;
    *(v518 + 1336) = v525;
    v526 = *(v519 + 48);
    v527 = *(v519 + 64);
    v528 = *(v519 + 96);
    *(v518 + 1240) = *(v519 + 80);
    *(v518 + 1256) = v528;
    *(v518 + 1208) = v526;
    *(v518 + 1224) = v527;
  }

  *(v592 + 72) = *(*(v592 + 1032) + 548);
  *(v592 + 30360) = vadd_s32(*(v592 + 30360), *v563);
  v529 = *a3 + 1;
  *a3 = v529;
  v530 = *(a1 + 16);
  if (v529 >= *(v530 + 2120))
  {
    *a3 = 0;
    v531 = a4;
    v532 = *a4 + 1;
    *a4 = v532;
    if (v532 >= *(v530 + 2124) || *(a1 + 568))
    {
      (*(*v561 + 16))(v561, 1);
      v533 = v561[1] >> 8;
      v535 = v561[3];
      v534 = v561[4];
      v536 = v535 + 2;
      if ((v533 >> (v535 + 2)))
      {
        v533 &= ~(-1 << v536);
        v537 = v534 - 1;
        do
        {
          if (v537 < v561[58])
          {
            break;
          }

          v538 = (*v537--)++ + 1;
        }

        while ((v538 & 0x100) != 0);
      }

      v134 = v535 < 30;
      v539 = v535 - 30;
      if (!v134)
      {
        *v534++ = bswap32(v533 >> v539);
        LODWORD(v533) = v533 & ~(-1 << v539);
        v536 = v539;
      }

      v540 = v561[57];
      v541 = v534 - v561[58];
      v542 = *(v540 + 40);
      v543 = &v541[*(v540 + 32) + (*(v540 + 52) >> 3)];
      *(v540 + 32) = v543;
      if (v543 >= v542)
      {
        *(v540 + 56) = 1;
        *(v540 + 32) = v542;
      }

      *(v540 + 48) = 0;
      if (v536)
      {
        sub_2773FB7E4(v540, v533, v536);
      }

      v530 = *(a1 + 16);
    }

    if ((*(*(a1 + 4768) + 184) & 2) != 0)
    {
      v544 = *(a1 + 8);
      v545 = *a4 * *(v530 + 2117) - 10;
      if (*(v544 + 48) == 1)
      {
        explicit = atomic_load_explicit((v544 + 1032), memory_order_acquire);
        v547 = explicit & ~(explicit >> 31);
        (*(*v544 + 16))(v544, v547, v545, 0);
        sub_277487440(v544 + 48, v547, v545);
      }

      atomic_store(v545, (v544 + 1032));
      std::condition_variable::notify_all((v544 + 1104));
      v530 = *(a1 + 16);
    }
  }

  else
  {
    v531 = a4;
  }

  return *v531 < *(v530 + 2124);
}