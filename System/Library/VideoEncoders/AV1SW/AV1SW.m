double sub_277934BD8()
{
  v20 = vabdq_u8(v12, v13);
  v21 = vmaxq_u8(vabdq_u8(v11, v12), vabdq_u8(v14, v13));
  v22 = vandq_s8(vandq_s8(vcgeq_u8(v1, vmaxq_u8(v21, vandq_s8(vmaxq_u8(vmaxq_u8(vabdq_u8(v10, v11), vabdq_u8(v15, v14)), vmaxq_u8(vabdq_u8(v9, v10), vabdq_u8(v16, v15))), v4))), vcgeq_u8(v0, vqaddq_u8(vqaddq_u8(v20, v20), vshrq_n_u8(vabdq_u8(v11, v14), 1uLL)))), v3);
  v23 = vandq_s8(v4, v22);
  v24 = vandq_s8(v5, v22);
  if (v22.i64[0] + v22.i64[1])
  {
    v25.i64[0] = 0x101010101010101;
    v25.i64[1] = 0x101010101010101;
    v26 = vandq_s8(vcgeq_u8(v25, vmaxq_u8(vmaxq_u8(vmaxq_u8(vabdq_u8(v10, v12), vabdq_u8(v11, v12)), vmaxq_u8(vabdq_u8(v14, v13), vabdq_u8(v15, v13))), vmaxq_u8(vabdq_u8(v9, v12), vabdq_u8(v16, v13)))), v23);
    v27 = vbicq_s8(v22, v26);
    v28 = vandq_s8(vandq_s8(v24, vcgeq_u8(v25, vmaxq_u8(vmaxq_u8(vmaxq_u8(vabdq_u8(v6, v12), vabdq_u8(v7, v12)), vmaxq_u8(vabdq_u8(v8, v12), vabdq_u8(v17, v13))), vmaxq_u8(vabdq_u8(v18, v13), vabdq_u8(v19, v13))))), v26);
    v29 = vbicq_s8(v26, v28);
    if (v27.i64[0] + v27.i64[1])
    {
      v30.i64[0] = 0x8080808080808080;
      v30.i64[1] = 0x8080808080808080;
      v31 = vcgtq_u8(v21, v2);
      v32 = vandq_s8(vqsubq_s8(veorq_s8(v11, v30), veorq_s8(v14, v30)), v31);
      v21 = vbicq_s8(v27, v31);
      v33.i64[0] = 0x3000300030003;
      v33.i64[1] = 0x3000300030003;
      v34.i64[0] = 0x404040404040404;
      v34.i64[1] = 0x404040404040404;
      v35.i64[0] = 0x303030303030303;
      v35.i64[1] = 0x303030303030303;
      v36 = vqmovn_high_s16(vqmovn_s16(vaddw_s8(vmulq_s16(vsubl_u8(*v13.i8, *v12.i8), v33), *v32.i8)), vaddw_high_s8(vmulq_s16(vsubl_high_u8(v13, v12), v33), v32));
      v37 = vshrq_n_s8(vqaddq_s8(v34, v36), 3uLL);
      v38 = vnegq_s8(v37);
      v39 = vrshrq_n_s8(v37, 1uLL);
      v12 = vbslq_s8(v27, vsqaddq_u8(v12, vshrq_n_s8(vqaddq_s8(v35, v36), 3uLL)), v12);
      v13 = vbslq_s8(v27, vsqaddq_u8(v13, v38), v13);
      v11 = vbslq_s8(v21, vsqaddq_u8(v11, v39), v11);
      v14 = vbslq_s8(v21, vsqaddq_u8(v14, vnegq_s8(v39)), v14);
    }

    if (v29.i64[0] + v29.i64[1])
    {
      v21 = vaddl_u8(*v9.i8, *v10.i8);
      v40 = vaddl_high_u8(v9, v10);
      v41 = vaddl_u8(*v9.i8, *v11.i8);
      v42 = vaddl_high_u8(v9, v11);
      v43 = vaddq_s16(vaddw_u8(vaddw_u8(vaddq_s16(v21, v21), *v12.i8), *v13.i8), v41);
      v44 = vaddq_s16(vaddw_high_u8(vaddw_high_u8(vaddq_s16(v40, v40), v12), v13), v42);
      v45 = vrshrn_high_n_s16(vrshrn_n_s16(v43, 3uLL), v44, 3uLL);
      v46 = vaddq_s16(v43, vsubq_s16(vaddl_u8(*v11.i8, *v14.i8), v21));
      v47 = vaddq_s16(v44, vsubq_s16(vaddl_high_u8(v11, v14), v40));
      v48 = vrshrn_high_n_s16(vrshrn_n_s16(v46, 3uLL), v47, 3uLL);
      v49 = vaddq_s16(v46, vsubq_s16(vaddl_u8(*v12.i8, *v15.i8), v41));
      v50 = vaddq_s16(v47, vsubq_s16(vaddl_high_u8(v12, v15), v42));
      v51 = vrshrn_high_n_s16(vrshrn_n_s16(v49, 3uLL), v50, 3uLL);
      v52 = vaddq_s16(v49, vsubq_s16(vaddl_u8(*v13.i8, *v16.i8), vaddl_u8(*v9.i8, *v12.i8)));
      v53 = vaddq_s16(v50, vsubq_s16(vaddl_high_u8(v13, v16), vaddl_high_u8(v9, v12)));
      v21.i64[0] = vrshrn_high_n_s16(vrshrn_n_s16(vaddq_s16(v52, vsubq_s16(vaddl_u8(*v14.i8, *v16.i8), vaddl_u8(*v10.i8, *v13.i8))), 3uLL), vaddq_s16(v53, vsubq_s16(vaddl_high_u8(v14, v16), vaddl_high_u8(v10, v13))), 3uLL).u64[0];
      v10 = vbslq_s8(v29, v45, v10);
      v11 = vbslq_s8(v29, v48, v11);
      v12 = vbslq_s8(v29, v51, v12);
      v13 = vbslq_s8(v29, vrshrn_high_n_s16(vrshrn_n_s16(v52, 3uLL), v53, 3uLL), v13);
    }

    if (v28.i64[0] + v28.i64[1])
    {
      v21.i64[0] = vbslq_s8(v28, vrshrn_high_n_s16(vrshrn_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(vaddl_u8(*v6.i8, *v6.i8), vaddl_u8(*v6.i8, *v7.i8)), vaddq_s16(vaddl_u8(*v6.i8, *v8.i8), vaddl_u8(*v6.i8, *v9.i8))), vaddq_s16(vaddl_u8(*v6.i8, *v10.i8), vaddl_u8(*v6.i8, *v11.i8))), vaddq_s16(vaddl_u8(*v7.i8, *v12.i8), vaddl_u8(*v8.i8, *v13.i8))), 4uLL), vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(vaddl_high_u8(v6, v6), vaddl_high_u8(v6, v7)), vaddq_s16(vaddl_high_u8(v6, v8), vaddl_high_u8(v6, v9))), vaddq_s16(vaddl_high_u8(v6, v10), vaddl_high_u8(v6, v11))), vaddq_s16(vaddl_high_u8(v7, v12), vaddl_high_u8(v8, v13))), 4uLL), v7).u64[0];
    }
  }

  return *v21.i64;
}

double sub_277935114()
{
  v13 = vabdq_u8(v8, v9);
  v14 = vmaxq_u8(vabdq_u8(v7, v8), vabdq_u8(v10, v9));
  v15 = vandq_s8(vandq_s8(vcgeq_u8(v1, vmaxq_u8(v14, vandq_s8(vmaxq_u8(vmaxq_u8(vabdq_u8(v6, v7), vabdq_u8(v11, v10)), vmaxq_u8(vabdq_u8(v5, v6), vabdq_u8(v12, v11))), v4))), vcgeq_u8(v0, vqaddq_u8(vqaddq_u8(v13, v13), vshrq_n_u8(vabdq_u8(v7, v10), 1uLL)))), v3);
  v16 = vandq_s8(v4, v15);
  if (v15.i64[0] + v15.i64[1])
  {
    v17.i64[0] = 0x101010101010101;
    v17.i64[1] = 0x101010101010101;
    v18 = vandq_s8(vcgeq_u8(v17, vmaxq_u8(vmaxq_u8(vmaxq_u8(vabdq_u8(v6, v8), vabdq_u8(v7, v8)), vmaxq_u8(vabdq_u8(v10, v9), vabdq_u8(v11, v9))), vmaxq_u8(vabdq_u8(v5, v8), vabdq_u8(v12, v9)))), v16);
    v19 = vbicq_s8(v15, v18);
    if (v19.i64[0] + v19.i64[1])
    {
      v20.i64[0] = 0x8080808080808080;
      v20.i64[1] = 0x8080808080808080;
      v21 = vcgtq_u8(v14, v2);
      v22 = vandq_s8(vqsubq_s8(veorq_s8(v7, v20), veorq_s8(v10, v20)), v21);
      v14 = vbicq_s8(v19, v21);
      v23.i64[0] = 0x3000300030003;
      v23.i64[1] = 0x3000300030003;
      v24.i64[0] = 0x404040404040404;
      v24.i64[1] = 0x404040404040404;
      v25.i64[0] = 0x303030303030303;
      v25.i64[1] = 0x303030303030303;
      v26 = vqmovn_high_s16(vqmovn_s16(vaddw_s8(vmulq_s16(vsubl_u8(*v9.i8, *v8.i8), v23), *v22.i8)), vaddw_high_s8(vmulq_s16(vsubl_high_u8(v9, v8), v23), v22));
      v27 = vshrq_n_s8(vqaddq_s8(v24, v26), 3uLL);
      v28 = vnegq_s8(v27);
      v29 = vrshrq_n_s8(v27, 1uLL);
      v8 = vbslq_s8(v19, vsqaddq_u8(v8, vshrq_n_s8(vqaddq_s8(v25, v26), 3uLL)), v8);
      v9 = vbslq_s8(v19, vsqaddq_u8(v9, v28), v9);
      v7 = vbslq_s8(v14, vsqaddq_u8(v7, v29), v7);
      v10 = vbslq_s8(v14, vsqaddq_u8(v10, vnegq_s8(v29)), v10);
    }

    if (v18.i64[0] + v18.i64[1])
    {
      v14 = vaddl_u8(*v5.i8, *v6.i8);
      v30 = vaddl_high_u8(v5, v6);
      v31 = vaddl_u8(*v5.i8, *v7.i8);
      v32 = vaddl_high_u8(v5, v7);
      v14.i64[0] = vrshrn_high_n_s16(vrshrn_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(vaddw_u8(vaddw_u8(vaddq_s16(v14, v14), *v8.i8), *v9.i8), v31), vsubq_s16(vaddl_u8(*v7.i8, *v10.i8), v14)), vsubq_s16(vaddl_u8(*v8.i8, *v11.i8), v31)), vsubq_s16(vaddl_u8(*v9.i8, *v12.i8), vaddl_u8(*v5.i8, *v8.i8))), vsubq_s16(vaddl_u8(*v10.i8, *v12.i8), vaddl_u8(*v6.i8, *v9.i8))), 3uLL), vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(vaddw_high_u8(vaddw_high_u8(vaddq_s16(v30, v30), v8), v9), v32), vsubq_s16(vaddl_high_u8(v7, v10), v30)), vsubq_s16(vaddl_high_u8(v8, v11), v32)), vsubq_s16(vaddl_high_u8(v9, v12), vaddl_high_u8(v5, v8))), vsubq_s16(vaddl_high_u8(v10, v12), vaddl_high_u8(v6, v9))), 3uLL).u64[0];
    }
  }

  return *v14.i64;
}

double sub_27793538C()
{
  v11 = vabdq_u8(v7, v8);
  v12 = vmaxq_u8(vabdq_u8(v6, v7), vabdq_u8(v9, v8));
  v13 = vandq_s8(vandq_s8(vcgeq_u8(v1, vmaxq_u8(v12, vandq_s8(vmaxq_u8(vabdq_u8(v5, v6), vabdq_u8(v10, v9)), v4))), vcgeq_u8(v0, vqaddq_u8(vqaddq_u8(v11, v11), vshrq_n_u8(vabdq_u8(v6, v9), 1uLL)))), v3);
  v14 = vandq_s8(v4, v13);
  if (v13.i64[0] + v13.i64[1])
  {
    v15.i64[0] = 0x101010101010101;
    v15.i64[1] = 0x101010101010101;
    v16 = vandq_s8(vcgeq_u8(v15, vmaxq_u8(vmaxq_u8(vabdq_u8(v5, v7), vabdq_u8(v6, v7)), vmaxq_u8(vabdq_u8(v9, v8), vabdq_u8(v10, v8)))), v14);
    v17 = vbicq_s8(v13, v16);
    if (v17.i64[0] + v17.i64[1])
    {
      v18.i64[0] = 0x8080808080808080;
      v18.i64[1] = 0x8080808080808080;
      v19 = vcgtq_u8(v12, v2);
      v20 = vandq_s8(vqsubq_s8(veorq_s8(v6, v18), veorq_s8(v9, v18)), v19);
      v12 = vbicq_s8(v17, v19);
      v21.i64[0] = 0x3000300030003;
      v21.i64[1] = 0x3000300030003;
      v22.i64[0] = 0x404040404040404;
      v22.i64[1] = 0x404040404040404;
      v23.i64[0] = 0x303030303030303;
      v23.i64[1] = 0x303030303030303;
      v24 = vqmovn_high_s16(vqmovn_s16(vaddw_s8(vmulq_s16(vsubl_u8(*v8.i8, *v7.i8), v21), *v20.i8)), vaddw_high_s8(vmulq_s16(vsubl_high_u8(v8, v7), v21), v20));
      v25 = vshrq_n_s8(vqaddq_s8(v22, v24), 3uLL);
      v7 = vbslq_s8(v17, vsqaddq_u8(v7, vshrq_n_s8(vqaddq_s8(v23, v24), 3uLL)), v7);
      v8 = vbslq_s8(v17, vsqaddq_u8(v8, vnegq_s8(v25)), v8);
      v6 = vbslq_s8(v12, vsqaddq_u8(v6, vrshrq_n_s8(v25, 1uLL)), v6);
    }

    if (v16.i64[0] + v16.i64[1])
    {
      v12.i64[0] = vrshrn_high_n_s16(vrshrn_n_s16(vaddq_s16(vaddq_s16(vaddl_u8(*v5.i8, *v5.i8), vaddl_u8(*v5.i8, *v6.i8)), vaddq_s16(vaddl_u8(*v6.i8, *v7.i8), vaddl_u8(*v7.i8, *v8.i8))), 3uLL), vaddq_s16(vaddq_s16(vaddl_high_u8(v5, v5), vaddl_high_u8(v5, v6)), vaddq_s16(vaddl_high_u8(v6, v7), vaddl_high_u8(v7, v8))), 3uLL).u64[0];
    }
  }

  return *v12.i64;
}

double sub_277935584()
{
  v8 = vabdq_u8(v5, v6);
  v9 = vmaxq_u8(vabdq_u8(v4, v5), vabdq_u8(v7, v6));
  v10 = vandq_s8(vandq_s8(vcgeq_u8(v1, v9), vcgeq_u8(v0, vqaddq_u8(vqaddq_u8(v8, v8), vshrq_n_u8(vabdq_u8(v4, v7), 1uLL)))), v3);
  if (v10.i64[0] + v10.i64[1])
  {
    v9.i64[0] = vbicq_s8(v10, vcgtq_u8(v9, v2)).u64[0];
  }

  return *v9.i64;
}

void sub_277935668()
{
  sub_277935584();
  if (!v6)
  {
    v7 = (v0 - 2 * v1);
    *v7 = v2;
    *v0 = v4;
    *(v7 + v1) = v3;
    *(v0 + v1) = v5;
  }
}

void sub_2779356AC()
{
  sub_277935584();
  if (!v6)
  {
    v7 = (v0 - 16 * v1 - 2);
    v8 = vtrn1q_s8(v2, v3);
    v9 = vtrn2q_s8(v2, v3);
    v10 = vtrn1q_s8(v4, v5);
    v11 = vtrn2q_s8(v4, v5);
    v12 = vtrn1q_s16(v8, v10);
    v13 = vtrn2q_s16(v8, v10);
    v14 = vtrn1q_s16(v9, v11);
    v15 = vtrn2q_s16(v9, v11);
    v16 = &v7[2 * v1];
    *v7 = v12.i32[0];
    v17 = (v7 + v1);
    *v16 = v12.i32[2];
    v18 = (v16 + v1);
    *v17 = v14.i32[0];
    v19 = (v17 + v1);
    *v18 = v14.i32[2];
    v20 = (v18 + v1);
    *v19 = v13.i32[0];
    v21 = (v19 + v1);
    *v20 = v13.i32[2];
    v22 = (v20 + v1);
    *v21 = v15.i32[0];
    v23 = (v21 + v1);
    *v22 = v15.i32[2];
    v24 = (v22 + v1);
    *v23 = v12.i32[1];
    v25 = (v23 + v1);
    *v24 = v12.i32[3];
    v26 = (v24 + v1);
    *v25 = v14.i32[1];
    v27 = (v25 + v1);
    *v26 = v14.i32[3];
    v28 = (v26 + v1);
    *v27 = v13.i32[1];
    *v28 = v13.i32[3];
    *(v27 + v1) = v15.i32[1];
    *(v28 + v1) = v15.i32[3];
  }
}

void sub_27793579C()
{
  sub_27793538C();
  if (!v6)
  {
    v7 = (v0 - 2 * v1);
    *v7 = v2;
    *v0 = v4;
    *(v7 + v1) = v3;
    *(v0 + v1) = v5;
  }
}

void sub_2779357F0()
{
  sub_27793538C();
  if (!v6)
  {
    v7 = (v0 - 16 * v1 - 2);
    v8 = vtrn1q_s8(v2, v3);
    v9 = vtrn2q_s8(v2, v3);
    v10 = vtrn1q_s8(v4, v5);
    v11 = vtrn2q_s8(v4, v5);
    v12 = vtrn1q_s16(v8, v10);
    v13 = vtrn2q_s16(v8, v10);
    v14 = vtrn1q_s16(v9, v11);
    v15 = vtrn2q_s16(v9, v11);
    v16 = &v7[2 * v1];
    *v7 = v12.i32[0];
    v17 = (v7 + v1);
    *v16 = v12.i32[2];
    v18 = (v16 + v1);
    *v17 = v14.i32[0];
    v19 = (v17 + v1);
    *v18 = v14.i32[2];
    v20 = (v18 + v1);
    *v19 = v13.i32[0];
    v21 = (v19 + v1);
    *v20 = v13.i32[2];
    v22 = (v20 + v1);
    *v21 = v15.i32[0];
    v23 = (v21 + v1);
    *v22 = v15.i32[2];
    v24 = (v22 + v1);
    *v23 = v12.i32[1];
    v25 = (v23 + v1);
    *v24 = v12.i32[3];
    v26 = (v24 + v1);
    *v25 = v14.i32[1];
    v27 = (v25 + v1);
    *v26 = v14.i32[3];
    v28 = (v26 + v1);
    *v27 = v13.i32[1];
    *v28 = v13.i32[3];
    *(v27 + v1) = v15.i32[1];
    *(v28 + v1) = v15.i32[3];
  }
}

void sub_277935920()
{
  sub_277935114();
  if (v2)
  {
    if ((v2 & 0x10) != 0)
    {
      v11 = (v0 - 2 * v1);
      *v11 = v4;
      *v0 = v6;
      *(v11 + v1) = v5;
      *(v0 + v1) = v7;
    }
  }

  else
  {
    *(v0 - v1 + -2 * v1) = v3;
    v9 = (v0 - 2 * v1);
    *v0 = v6;
    v10 = (v0 + v1);
    *v9 = v4;
    *v10 = v7;
    *(v9 + v1) = v5;
    *(v10 + v1) = v8;
  }
}

void sub_2779359A4()
{
  sub_277935114();
  if (v2)
  {
    if ((v2 & 0x10) != 0)
    {
      v49 = (v0 - 16 * v1 - 2);
      v50 = vtrn1q_s8(v5, v6);
      v51 = vtrn2q_s8(v5, v6);
      v52 = vtrn1q_s8(v7, v8);
      v53 = vtrn2q_s8(v7, v8);
      v54 = vtrn1q_s16(v50, v52);
      v55 = vtrn2q_s16(v50, v52);
      v56 = vtrn1q_s16(v51, v53);
      v57 = vtrn2q_s16(v51, v53);
      v58 = &v49[2 * v1];
      *v49 = v54.i32[0];
      v59 = (v49 + v1);
      *v58 = v54.i32[2];
      v60 = (v58 + v1);
      *v59 = v56.i32[0];
      v61 = (v59 + v1);
      *v60 = v56.i32[2];
      v62 = (v60 + v1);
      *v61 = v55.i32[0];
      v63 = (v61 + v1);
      *v62 = v55.i32[2];
      v64 = (v62 + v1);
      *v63 = v57.i32[0];
      v65 = (v63 + v1);
      *v64 = v57.i32[2];
      v66 = (v64 + v1);
      *v65 = v54.i32[1];
      v67 = (v65 + v1);
      *v66 = v54.i32[3];
      v68 = (v66 + v1);
      *v67 = v56.i32[1];
      v69 = (v67 + v1);
      *v68 = v56.i32[3];
      v70 = (v68 + v1);
      *v69 = v55.i32[1];
      *v70 = v55.i32[3];
      *(v69 + v1) = v57.i32[1];
      *(v70 + v1) = v57.i32[3];
    }
  }

  else
  {
    v11 = (v0 - 16 * v1 - 4);
    v12 = vtrn1q_s8(v3, v4);
    v13 = vtrn2q_s8(v3, v4);
    v14 = vtrn1q_s8(v5, v6);
    v15 = vtrn2q_s8(v5, v6);
    v16 = vtrn1q_s8(v7, v8);
    v17 = vtrn2q_s8(v7, v8);
    v18 = vtrn1q_s8(v9, v10);
    v19 = vtrn2q_s8(v9, v10);
    v20 = vtrn1q_s16(v16, v18);
    v21 = vtrn2q_s16(v16, v18);
    v22 = vtrn1q_s16(v17, v19);
    v23 = vtrn2q_s16(v17, v19);
    v24 = vtrn1q_s16(v13, v15);
    v25 = vtrn2q_s16(v13, v15);
    v26 = vtrn1q_s16(v12, v14);
    v27 = vtrn2q_s16(v12, v14);
    v28 = vtrn1q_s32(v26, v20);
    v29 = vtrn2q_s32(v26, v20);
    v30 = vtrn1q_s32(v24, v22);
    v31 = vtrn2q_s32(v24, v22);
    v32 = vtrn2q_s32(v27, v21);
    v33 = vtrn1q_s32(v27, v21);
    v34 = vtrn1q_s32(v25, v23);
    v35 = vtrn2q_s32(v25, v23);
    v36 = &v11[v1];
    *v11 = v28.i64[0];
    v37 = (v11 + v1);
    *v36 = v28.i64[1];
    v38 = (v36 + v1);
    *v37 = v30.i64[0];
    v39 = (v37 + v1);
    *v38 = v30.i64[1];
    v40 = (v38 + v1);
    *v39 = v33.i64[0];
    v41 = (v39 + v1);
    *v40 = v33.i64[1];
    v42 = (v40 + v1);
    *v41 = v34.i64[0];
    v43 = (v41 + v1);
    *v42 = v34.i64[1];
    v44 = (v42 + v1);
    *v43 = v29.i64[0];
    v45 = (v43 + v1);
    *v44 = v29.i64[1];
    v46 = (v44 + v1);
    *v45 = v31.i64[0];
    v47 = (v45 + v1);
    *v46 = v31.i64[1];
    v48 = (v46 + v1);
    *v47 = v32.i64[0];
    *v48 = v32.i64[1];
    *(v47 + v1) = v35.i64[0];
    *(v48 + v1) = v35.i64[1];
  }
}

void sub_277935B8C()
{
  *&v7 = sub_277934BD8();
  if (v6)
  {
    if ((v6 & 0x40) != 0)
    {
      *(v4 - v5 + -2 * v5) = v15;
      v30 = (v4 - 2 * v5);
      *v4 = v18;
      v31 = (v4 + v5);
      *v30 = v16;
      *v31 = v19;
      *(v30 + v5) = v17;
      *(v31 + v5) = v20;
    }

    else if ((v6 & 0x10) != 0)
    {
      v32 = (v4 - 2 * v5);
      *v32 = v16;
      *v4 = v18;
      *(v32 + v5) = v17;
      *(v4 + v5) = v19;
    }
  }

  else
  {
    v21 = (v4 - 2 * v5 + -4 * v5);
    *v21 = v7;
    v22 = (v21 + v5);
    *v4 = v13;
    v23 = (v4 + v5);
    *v22 = v8;
    v24 = (v22 + v5);
    *v23 = v14;
    v25 = (v23 + v5);
    *v24 = v9;
    v26 = (v24 + v5);
    *v25 = v0;
    v27 = (v25 + v5);
    *v26 = v10;
    v28 = (v26 + v5);
    *v27 = v1;
    v29 = (v27 + v5);
    *v28 = v11;
    *v29 = v2;
    *(v28 + v5) = v12;
    *(v29 + v5) = v3;
  }
}

void sub_277935C78()
{
  *v7.i64 = sub_277934BD8();
  if (v6)
  {
    if ((v6 & 0x40) != 0)
    {
      v104 = (v4 - 16 * v5 - 4);
      v105 = vtrn1q_s8(v17, v18);
      v106 = vtrn2q_s8(v17, v18);
      v107 = vtrn1q_s8(v19, v20);
      v108 = vtrn2q_s8(v19, v20);
      v109 = vtrn1q_s8(v21, v22);
      v110 = vtrn2q_s8(v21, v22);
      v111 = vtrn1q_s8(v23, v24);
      v112 = vtrn2q_s8(v23, v24);
      v113 = vtrn1q_s16(v109, v111);
      v114 = vtrn2q_s16(v109, v111);
      v115 = vtrn1q_s16(v110, v112);
      v116 = vtrn2q_s16(v110, v112);
      v117 = vtrn1q_s16(v106, v108);
      v118 = vtrn2q_s16(v106, v108);
      v119 = vtrn1q_s16(v105, v107);
      v120 = vtrn2q_s16(v105, v107);
      v121 = vtrn1q_s32(v119, v113);
      v122 = vtrn2q_s32(v119, v113);
      v123 = vtrn1q_s32(v117, v115);
      v124 = vtrn2q_s32(v117, v115);
      v125 = vtrn2q_s32(v120, v114);
      v126 = vtrn1q_s32(v120, v114);
      v127 = vtrn1q_s32(v118, v116);
      v128 = vtrn2q_s32(v118, v116);
      v129 = &v104[v5];
      *v104 = v121.i64[0];
      v130 = (v104 + v5);
      *v129 = v121.i64[1];
      v131 = (v129 + v5);
      *v130 = v123.i64[0];
      v132 = (v130 + v5);
      *v131 = v123.i64[1];
      v133 = (v131 + v5);
      *v132 = v126.i64[0];
      v134 = (v132 + v5);
      *v133 = v126.i64[1];
      v135 = (v133 + v5);
      *v134 = v127.i64[0];
      v136 = (v134 + v5);
      *v135 = v127.i64[1];
      v137 = (v135 + v5);
      *v136 = v122.i64[0];
      v138 = (v136 + v5);
      *v137 = v122.i64[1];
      v139 = (v137 + v5);
      *v138 = v124.i64[0];
      v140 = (v138 + v5);
      *v139 = v124.i64[1];
      v141 = (v139 + v5);
      *v140 = v125.i64[0];
      *v141 = v125.i64[1];
      *(v140 + v5) = v128.i64[0];
      *(v141 + v5) = v128.i64[1];
    }

    else if ((v6 & 0x10) != 0)
    {
      v142 = (v4 - 16 * v5 - 2);
      v143 = vtrn1q_s8(v19, v20);
      v144 = vtrn2q_s8(v19, v20);
      v145 = vtrn1q_s8(v21, v22);
      v146 = vtrn2q_s8(v21, v22);
      v147 = vtrn1q_s16(v143, v145);
      v148 = vtrn2q_s16(v143, v145);
      v149 = vtrn1q_s16(v144, v146);
      v150 = vtrn2q_s16(v144, v146);
      v151 = &v142[2 * v5];
      *v142 = v147.i32[0];
      v152 = (v142 + v5);
      *v151 = v147.i32[2];
      v153 = (v151 + v5);
      *v152 = v149.i32[0];
      v154 = (v152 + v5);
      *v153 = v149.i32[2];
      v155 = (v153 + v5);
      *v154 = v148.i32[0];
      v156 = (v154 + v5);
      *v155 = v148.i32[2];
      v157 = (v155 + v5);
      *v156 = v150.i32[0];
      v158 = (v156 + v5);
      *v157 = v150.i32[2];
      v159 = (v157 + v5);
      *v158 = v147.i32[1];
      v160 = (v158 + v5);
      *v159 = v147.i32[3];
      v161 = (v159 + v5);
      *v160 = v149.i32[1];
      v162 = (v160 + v5);
      *v161 = v149.i32[3];
      v163 = (v161 + v5);
      *v162 = v148.i32[1];
      *v163 = v148.i32[3];
      *(v162 + v5) = v150.i32[1];
      *(v163 + v5) = v150.i32[3];
    }
  }

  else
  {
    v27 = (v4 - 16 * v5);
    v28 = vtrn1q_s8(v15, v16);
    v29 = vtrn2q_s8(v15, v16);
    v30 = vtrn1q_s8(v7, v8);
    v31 = vtrn2q_s8(v7, v8);
    v32 = vtrn1q_s8(v9, v10);
    v33 = vtrn2q_s8(v9, v10);
    v34 = vtrn1q_s8(v11, v12);
    v35 = vtrn2q_s8(v11, v12);
    v36 = vtrn1q_s16(v32, v34);
    v37 = vtrn2q_s16(v32, v34);
    v38 = vtrn1q_s16(v33, v35);
    v39 = vtrn2q_s16(v33, v35);
    v40 = vtrn1q_s16(v29, v31);
    v41 = vtrn2q_s16(v29, v31);
    v42 = vtrn1q_s16(v28, v30);
    v43 = vtrn2q_s16(v28, v30);
    v44 = vtrn1q_s32(v42, v36);
    v45 = vtrn2q_s32(v42, v36);
    v46 = vtrn1q_s32(v40, v38);
    v47 = vtrn2q_s32(v40, v38);
    v48 = vtrn2q_s32(v43, v37);
    v49 = vtrn1q_s32(v43, v37);
    v50 = vtrn1q_s32(v41, v39);
    v51 = vtrn2q_s32(v41, v39);
    v52 = vtrn1q_s8(v13, v14);
    v53 = vtrn2q_s8(v13, v14);
    v54 = vtrn1q_s8(v0, v1);
    v55 = vtrn2q_s8(v0, v1);
    v56 = vtrn1q_s8(v2, v3);
    v57 = vtrn2q_s8(v2, v3);
    v58 = vtrn1q_s8(v25, v26);
    v59 = vtrn2q_s8(v25, v26);
    v60 = vtrn1q_s16(v56, v58);
    v61 = vtrn2q_s16(v56, v58);
    v62 = vtrn1q_s16(v57, v59);
    v63 = vtrn2q_s16(v57, v59);
    v64 = vtrn1q_s16(v53, v55);
    v65 = vtrn2q_s16(v53, v55);
    v66 = vtrn1q_s16(v52, v54);
    v67 = vtrn2q_s16(v52, v54);
    v68 = vtrn1q_s32(v66, v60);
    v69 = vtrn2q_s32(v66, v60);
    v70 = vtrn1q_s32(v64, v62);
    v71 = vtrn2q_s32(v64, v62);
    v72 = vtrn2q_s32(v67, v61);
    v73 = vtrn1q_s32(v67, v61);
    v74 = vtrn1q_s32(v65, v63);
    v75 = vtrn2q_s32(v65, v63);
    *(v27 - 1) = v44.i64[0];
    v76 = (v27 + v5 - 8);
    *v27 = v68.i64[0];
    v77 = (v27 + v5);
    *v76 = v46.i64[0];
    v78 = (v76 + v5);
    *v77 = v70.i64[0];
    v79 = (v77 + v5);
    *v78 = v49.i64[0];
    v80 = (v78 + v5);
    *v79 = v73.i64[0];
    v81 = (v79 + v5);
    *v80 = v50.i64[0];
    v82 = (v80 + v5);
    *v81 = v74.i64[0];
    v83 = (v81 + v5);
    *v82 = v45.i64[0];
    v84 = (v82 + v5);
    *v83 = v69.i64[0];
    v85 = (v83 + v5);
    *v84 = v47.i64[0];
    v86 = (v84 + v5);
    *v85 = v71.i64[0];
    v87 = (v85 + v5);
    *v86 = v48.i64[0];
    v88 = (v86 + v5);
    *v87 = v72.i64[0];
    v89 = (v87 + v5);
    *v88 = v51.i64[0];
    v90 = (v88 + v5);
    *v89 = v75.i64[0];
    v91 = (v89 + v5);
    *v90 = v44.i64[1];
    v92 = (v90 + v5);
    *v91 = v68.i64[1];
    v93 = (v91 + v5);
    *v92 = v46.i64[1];
    v94 = (v92 + v5);
    *v93 = v70.i64[1];
    v95 = (v93 + v5);
    *v94 = v49.i64[1];
    v96 = (v94 + v5);
    *v95 = v73.i64[1];
    v97 = (v95 + v5);
    *v96 = v50.i64[1];
    v98 = (v96 + v5);
    *v97 = v74.i64[1];
    v99 = (v97 + v5);
    *v98 = v45.i64[1];
    v100 = (v98 + v5);
    *v99 = v69.i64[1];
    v101 = (v99 + v5);
    *v100 = v47.i64[1];
    v102 = (v100 + v5);
    *v101 = v71.i64[1];
    v103 = (v101 + v5);
    *v102 = v48.i64[1];
    *v103 = v72.i64[1];
    *(v102 + v5) = v51.i64[1];
    *(v103 + v5) = v75.i64[1];
  }
}

uint64_t sub_277936048(uint64_t result, uint64_t a2, int *a3, int8x16_t *a4, uint64_t a5, uint64_t a6)
{
  v6 = *a3;
  v7 = a3[1];
  v8 = a3[2];
  v9 = (a6 + 128);
  v10 = v7 | v8;
  v11 = (a4 - 4 * a5);
  v12 = v6 | v10;
  do
  {
    v13 = *v11++;
    v14 = *a4++;
    if ((v12 & 0xF) != 0)
    {
      vld1q_dup_s8(v9);
      v15 = v9 + 8;
      v16.i64[0] = 0xFF000000FFLL;
      v16.i64[1] = 0xFF000000FFLL;
      v17 = vandq_s8(v14, v16);
      vld1q_dup_s8(v15);
      v9 = v15 - 8;
      v18 = vtstq_s32(vbslq_s8(vtstq_s8(v17, v16), v17, vandq_s8(v13, v16)), v16);
      if (v18.i64[0] + v18.i64[1])
      {
        if ((v8 & 0xF) != 0)
        {
          sub_277935B8C();
        }

        else if ((v10 & 0xF) != 0)
        {
          sub_277935920();
        }

        else
        {
          sub_277935668();
        }
      }
    }

    v12 >>= 4;
    v10 >>= 4;
    v8 >>= 4;
    result += 16;
  }

  while (v12);
  return result;
}

void sub_27793615C(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a3;
  v7 = a3[1];
  v8 = a3[2];
  v9 = (a6 + 128);
  v10 = v7 | v8;
  v11 = (a4 - 4);
  v12 = a5;
  v13 = v6 | v10;
  do
  {
    v17.i32[0] = *v11;
    v18.i32[0] = v11[1];
    v14 = &v11[v12];
    v17.i32[1] = *v14;
    v18.i32[1] = v14[1];
    v15 = &v14[v12];
    v17.i32[2] = *v15;
    v18.i32[2] = v15[1];
    v16 = &v15[v12];
    v17.i32[3] = *v16;
    v18.i32[3] = v16[1];
    v11 = &v16[v12];
    if ((v13 & 0xF) != 0 && (vld1q_dup_s8(v9), v19 = v9 + 8, v20.i64[0] = 0xFF000000FFLL, v20.i64[1] = 0xFF000000FFLL, v21 = vandq_s8(v18, v20), vld1q_dup_s8(v19), v9 = v19 - 8, v22 = vtstq_s32(vbslq_s8(vtstq_s8(v21, v20), v21, vandq_s8(v17, v20)), v20), v22.i64[0] + v22.i64[1]))
    {
      if ((v8 & 0xF) != 0)
      {
        sub_277935C78();
      }

      else if ((v10 & 0xF) != 0)
      {
        sub_2779359A4();
      }

      else
      {
        sub_2779356AC();
      }
    }

    else
    {
      a1 += 16 * a2;
    }

    v13 >>= 4;
    v10 >>= 4;
    v8 >>= 4;
  }

  while (v13);
}

uint64_t sub_277936280(uint64_t result, uint64_t a2, _DWORD *a3, int8x16_t *a4, uint64_t a5, uint64_t a6)
{
  v6 = a3[1];
  v7 = (a6 + 128);
  v8 = (a4 - 4 * a5);
  v9 = *a3 | v6;
  do
  {
    v10 = *v8++;
    v11 = *a4++;
    if ((v9 & 0xF) != 0)
    {
      vld1q_dup_s8(v7);
      v12 = v7 + 8;
      v13.i64[0] = 0xFF000000FFLL;
      v13.i64[1] = 0xFF000000FFLL;
      v14 = vandq_s8(v11, v13);
      vld1q_dup_s8(v12);
      v7 = v12 - 8;
      v15 = vtstq_s32(vbslq_s8(vtstq_s8(v14, v13), v14, vandq_s8(v10, v13)), v13);
      if (v15.i64[0] + v15.i64[1])
      {
        if ((v6 & 0xF) != 0)
        {
          sub_27793579C();
        }

        else
        {
          sub_277935668();
        }
      }
    }

    v9 >>= 4;
    v6 >>= 4;
    result += 16;
  }

  while (v9);
  return result;
}

void sub_277936370(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a3[1];
  v7 = (a6 + 128);
  v8 = (a4 - 4);
  v9 = a5;
  v10 = *a3 | v6;
  do
  {
    v14.i32[0] = *v8;
    v15.i32[0] = v8[1];
    v11 = &v8[v9];
    v14.i32[1] = *v11;
    v15.i32[1] = v11[1];
    v12 = &v11[v9];
    v14.i32[2] = *v12;
    v15.i32[2] = v12[1];
    v13 = &v12[v9];
    v14.i32[3] = *v13;
    v15.i32[3] = v13[1];
    v8 = &v13[v9];
    if ((v10 & 0xF) != 0 && (vld1q_dup_s8(v7), v16 = v7 + 8, v17.i64[0] = 0xFF000000FFLL, v17.i64[1] = 0xFF000000FFLL, v18 = vandq_s8(v15, v17), vld1q_dup_s8(v16), v7 = v16 - 8, v19 = vtstq_s32(vbslq_s8(vtstq_s8(v18, v17), v18, vandq_s8(v14, v17)), v17), v19.i64[0] + v19.i64[1]))
    {
      if ((v6 & 0xF) != 0)
      {
        sub_2779357F0();
      }

      else
      {
        sub_2779356AC();
      }
    }

    else
    {
      a1 += 16 * a2;
    }

    v10 >>= 4;
    v6 >>= 4;
  }

  while (v10);
}

double sub_277936470@<D0>(unsigned int a1@<W8>)
{
  v22 = vabdq_u16(v14, v15);
  v23 = vmaxq_u16(vabdq_u16(v13, v14), vabdq_u16(v16, v15));
  v24 = vandq_s8(vandq_s8(vcgeq_u16(v3, vmaxq_u16(v23, vandq_s8(vmaxq_u16(vmaxq_u16(vabdq_u16(v12, v13), vabdq_u16(v17, v16)), vmaxq_u16(vabdq_u16(v11, v12), vabdq_u16(v18, v17))), v6))), vcgeq_u16(v2, vqaddq_u16(vqaddq_u16(v22, v22), vshrq_n_u16(vabdq_u16(v13, v16), 1uLL)))), v5);
  v25 = vandq_s8(v6, v24);
  v26 = vandq_s8(v7, v24);
  if (v24.i64[0] + v24.i64[1])
  {
    v27.i64[0] = 0x1000100010001;
    v27.i64[1] = 0x1000100010001;
    v28 = vshlq_u16(v27, vdupq_n_s16(v1));
    v29 = vandq_s8(vcgeq_u16(v28, vmaxq_u16(vmaxq_u16(vmaxq_u16(vabdq_u16(v12, v14), vabdq_u16(v13, v14)), vmaxq_u16(vabdq_u16(v16, v15), vabdq_u16(v17, v15))), vmaxq_u16(vabdq_u16(v11, v14), vabdq_u16(v18, v15)))), v25);
    v30 = vbicq_s8(v24, v29);
    v31 = vandq_s8(vandq_s8(v26, vcgeq_u16(v28, vmaxq_u16(vmaxq_u16(vmaxq_u16(vabdq_u16(v8, v14), vabdq_u16(v9, v14)), vmaxq_u16(vabdq_u16(v10, v14), vabdq_u16(v19, v15))), vmaxq_u16(vabdq_u16(v20, v15), vabdq_u16(v21, v15))))), v29);
    v32 = vbicq_s8(v29, v31);
    if (v30.i64[0] + v30.i64[1])
    {
      v33 = vshrq_n_u16(vdupq_n_s16(a1), 1uLL);
      v34 = vcgtq_u16(v23, v4);
      v35 = vmvnq_s8(v33);
      v36 = vandq_s8(vmaxq_s16(vminq_s16(vsubq_s16(v13, v16), v33), v35), v34);
      v37.i64[0] = 0x3000300030003;
      v37.i64[1] = 0x3000300030003;
      v23 = vbicq_s8(v30, v34);
      v38.i64[0] = 0x4000400040004;
      v38.i64[1] = 0x4000400040004;
      v39 = vmaxq_s16(vminq_s16(vaddq_s16(vmulq_s16(vsubq_s16(v15, v14), v37), v36), v33), v35);
      v40 = vshrq_n_s16(vminq_s16(vqaddq_s16(v38, v39), v33), 3uLL);
      v41 = vshrq_n_s16(vminq_s16(vqaddq_s16(v37, v39), v33), 3uLL);
      v42 = vdupq_n_s16(a1);
      v43 = vqsubq_s16(v15, v40);
      v44 = vrshrq_n_s16(v40, 1uLL);
      v14 = vbslq_s8(v30, vmaxq_s16(vminq_s16(vqaddq_s16(v14, v41), v42), 0), v14);
      v15 = vbslq_s8(v30, vmaxq_s16(vminq_s16(v43, v42), 0), v15);
      v13 = vbslq_s8(v23, vmaxq_s16(vminq_s16(vqaddq_s16(v13, v44), v42), 0), v13);
      v16 = vbslq_s8(v23, vmaxq_s16(vminq_s16(vqsubq_s16(v16, v44), v42), 0), v16);
    }

    if (v32.i64[0] + v32.i64[1])
    {
      v23 = vaddq_s16(v11, v12);
      v45 = vaddq_s16(v11, v13);
      v46 = vaddq_s16(vaddq_s16(vaddq_s16(v23, v23), v45), vaddq_s16(v14, v15));
      v47 = vrshrq_n_u16(v46, 3uLL);
      v48 = vaddq_s16(v46, vsubq_s16(vaddq_s16(v13, v16), v23));
      v49 = vrshrq_n_u16(v48, 3uLL);
      v50 = vaddq_s16(v48, vsubq_s16(vaddq_s16(v14, v17), v45));
      v51 = vrshrq_n_u16(v50, 3uLL);
      v52 = vaddq_s16(v50, vsubq_s16(vaddq_s16(v15, v18), vaddq_s16(v11, v14)));
      v23.i64[0] = vrshrq_n_u16(vaddq_s16(v52, vsubq_s16(vaddq_s16(v16, v18), vaddq_s16(v12, v15))), 3uLL).u64[0];
      v12 = vbslq_s8(v32, v47, v12);
      v13 = vbslq_s8(v32, v49, v13);
      v14 = vbslq_s8(v32, v51, v14);
      v15 = vbslq_s8(v32, vrshrq_n_u16(v52, 3uLL), v15);
    }

    if (v31.i64[0] + v31.i64[1])
    {
      v23.i64[0] = vbslq_s8(v31, vrshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v8, v8), vaddq_s16(v8, v9)), vaddq_s16(vaddq_s16(v8, v10), vaddq_s16(v8, v11))), vaddq_s16(vaddq_s16(v8, v12), vaddq_s16(v8, v13))), vaddq_s16(vaddq_s16(v9, v14), vaddq_s16(v10, v15))), 4uLL), v9).u64[0];
    }
  }

  return *v23.i64;
}

double sub_277936838@<D0>(unsigned int a1@<W8>)
{
  v15 = vabdq_u16(v10, v11);
  v16 = vmaxq_u16(vabdq_u16(v9, v10), vabdq_u16(v12, v11));
  v17 = vandq_s8(vandq_s8(vcgeq_u16(v3, vmaxq_u16(v16, vandq_s8(vmaxq_u16(vmaxq_u16(vabdq_u16(v8, v9), vabdq_u16(v13, v12)), vmaxq_u16(vabdq_u16(v7, v8), vabdq_u16(v14, v13))), v6))), vcgeq_u16(v2, vqaddq_u16(vqaddq_u16(v15, v15), vshrq_n_u16(vabdq_u16(v9, v12), 1uLL)))), v5);
  v18 = vandq_s8(v6, v17);
  if (v17.i64[0] + v17.i64[1])
  {
    v19.i64[0] = 0x1000100010001;
    v19.i64[1] = 0x1000100010001;
    v20 = vandq_s8(vcgeq_u16(vshlq_u16(v19, vdupq_n_s16(v1)), vmaxq_u16(vmaxq_u16(vmaxq_u16(vabdq_u16(v8, v10), vabdq_u16(v9, v10)), vmaxq_u16(vabdq_u16(v12, v11), vabdq_u16(v13, v11))), vmaxq_u16(vabdq_u16(v7, v10), vabdq_u16(v14, v11)))), v18);
    v21 = vbicq_s8(v17, v20);
    if (v21.i64[0] + v21.i64[1])
    {
      v22 = vshrq_n_u16(vdupq_n_s16(a1), 1uLL);
      v23 = vcgtq_u16(v16, v4);
      v24 = vmvnq_s8(v22);
      v25 = vandq_s8(vmaxq_s16(vminq_s16(vsubq_s16(v9, v12), v22), v24), v23);
      v26.i64[0] = 0x3000300030003;
      v26.i64[1] = 0x3000300030003;
      v16 = vbicq_s8(v21, v23);
      v27.i64[0] = 0x4000400040004;
      v27.i64[1] = 0x4000400040004;
      v28 = vmaxq_s16(vminq_s16(vaddq_s16(vmulq_s16(vsubq_s16(v11, v10), v26), v25), v22), v24);
      v29 = vshrq_n_s16(vminq_s16(vqaddq_s16(v27, v28), v22), 3uLL);
      v30 = vshrq_n_s16(vminq_s16(vqaddq_s16(v26, v28), v22), 3uLL);
      v31 = vdupq_n_s16(a1);
      v32 = vqsubq_s16(v11, v29);
      v33 = vrshrq_n_s16(v29, 1uLL);
      v10 = vbslq_s8(v21, vmaxq_s16(vminq_s16(vqaddq_s16(v10, v30), v31), 0), v10);
      v11 = vbslq_s8(v21, vmaxq_s16(vminq_s16(v32, v31), 0), v11);
      v9 = vbslq_s8(v16, vmaxq_s16(vminq_s16(vqaddq_s16(v9, v33), v31), 0), v9);
      v12 = vbslq_s8(v16, vmaxq_s16(vminq_s16(vqsubq_s16(v12, v33), v31), 0), v12);
    }

    if (v20.i64[0] + v20.i64[1])
    {
      v16 = vaddq_s16(v7, v8);
      v34 = vaddq_s16(v7, v9);
      v16.i64[0] = vrshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v16, v16), v34), vaddq_s16(v10, v11)), vsubq_s16(vaddq_s16(v9, v12), v16)), vsubq_s16(vaddq_s16(v10, v13), v34)), vsubq_s16(vaddq_s16(v11, v14), vaddq_s16(v7, v10))), vsubq_s16(vaddq_s16(v12, v14), vaddq_s16(v8, v11))), 3uLL).u64[0];
    }
  }

  return *v16.i64;
}

double sub_277936A50@<D0>(unsigned int a1@<W8>)
{
  v13 = vabdq_u16(v9, v10);
  v14 = vmaxq_u16(vabdq_u16(v8, v9), vabdq_u16(v11, v10));
  v15 = vandq_s8(vandq_s8(vcgeq_u16(v3, vmaxq_u16(v14, vandq_s8(vmaxq_u16(vabdq_u16(v7, v8), vabdq_u16(v12, v11)), v6))), vcgeq_u16(v2, vqaddq_u16(vqaddq_u16(v13, v13), vshrq_n_u16(vabdq_u16(v8, v11), 1uLL)))), v5);
  v16 = vandq_s8(v6, v15);
  if (v15.i64[0] + v15.i64[1])
  {
    v17.i64[0] = 0x1000100010001;
    v17.i64[1] = 0x1000100010001;
    v18 = vandq_s8(vcgeq_u16(vshlq_u16(v17, vdupq_n_s16(v1)), vmaxq_u16(vmaxq_u16(vabdq_u16(v7, v9), vabdq_u16(v8, v9)), vmaxq_u16(vabdq_u16(v11, v10), vabdq_u16(v12, v10)))), v16);
    v19 = vbicq_s8(v15, v18);
    if (v19.i64[0] + v19.i64[1])
    {
      v20 = vshrq_n_u16(vdupq_n_s16(a1), 1uLL);
      v21 = vcgtq_u16(v14, v4);
      v22 = vmvnq_s8(v20);
      v23 = vandq_s8(vmaxq_s16(vminq_s16(vsubq_s16(v8, v11), v20), v22), v21);
      v24.i64[0] = 0x3000300030003;
      v24.i64[1] = 0x3000300030003;
      v14 = vbicq_s8(v19, v21);
      v25.i64[0] = 0x4000400040004;
      v25.i64[1] = 0x4000400040004;
      v26 = vmaxq_s16(vminq_s16(vaddq_s16(vmulq_s16(vsubq_s16(v10, v9), v24), v23), v20), v22);
      v27 = vshrq_n_s16(vminq_s16(vqaddq_s16(v25, v26), v20), 3uLL);
      v28 = vshrq_n_s16(vminq_s16(vqaddq_s16(v24, v26), v20), 3uLL);
      v29 = vdupq_n_s16(a1);
      v9 = vbslq_s8(v19, vmaxq_s16(vminq_s16(vqaddq_s16(v9, v28), v29), 0), v9);
      v10 = vbslq_s8(v19, vmaxq_s16(vminq_s16(vqsubq_s16(v10, v27), v29), 0), v10);
      v8 = vbslq_s8(v14, vmaxq_s16(vminq_s16(vqaddq_s16(v8, vrshrq_n_s16(v27, 1uLL)), v29), 0), v8);
    }

    if (v18.i64[0] + v18.i64[1])
    {
      v14.i64[0] = vrshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(v7, v7), vaddq_s16(v7, v8)), vaddq_s16(vaddq_s16(v8, v9), vaddq_s16(v9, v10))), 3uLL).u64[0];
    }
  }

  return *v14.i64;
}

double sub_277936C10()
{
  v8 = vabdq_u16(v5, v6);
  v9 = vmaxq_u16(vabdq_u16(v4, v5), vabdq_u16(v7, v6));
  v10 = vandq_s8(vandq_s8(vcgeq_u16(v1, v9), vcgeq_u16(v0, vqaddq_u16(vqaddq_u16(v8, v8), vshrq_n_u16(vabdq_u16(v4, v7), 1uLL)))), v3);
  if (v10.i64[0] + v10.i64[1])
  {
    v9.i64[0] = vbicq_s8(v10, vcgtq_u16(v9, v2)).u64[0];
  }

  return *v9.i64;
}

void sub_277936D04()
{
  sub_277936C10();
  if (!v6)
  {
    v7 = (v0 - 2 * v1);
    *v7 = v2;
    *v0 = v4;
    *(v7 + v1) = v3;
    *(v0 + v1) = v5;
  }
}

void sub_277936D48()
{
  sub_277936C10();
  if (!v6)
  {
    v7 = (v0 - 8 * v1 - 4);
    v8 = vtrn1q_s16(v2, v3);
    v9 = vtrn2q_s16(v2, v3);
    v10 = vtrn1q_s16(v4, v5);
    v11 = vtrn2q_s16(v4, v5);
    v12 = vtrn1q_s32(v8, v10);
    v13 = vtrn2q_s32(v8, v10);
    v14 = vtrn1q_s32(v9, v11);
    v15 = vtrn2q_s32(v9, v11);
    v16 = (v7 + 4 * v1);
    *v7 = v12.i64[0];
    v17 = (v7 + v1);
    *v16 = v12.i64[1];
    v18 = (v16 + v1);
    *v17 = v14.i64[0];
    v19 = (v17 + v1);
    *v18 = v14.i64[1];
    v20 = (v18 + v1);
    *v19 = v13.i64[0];
    *v20 = v13.i64[1];
    *(v19 + v1) = v15.i64[0];
    *(v20 + v1) = v15.i64[1];
  }
}

void sub_277936DF8(unsigned int a1@<W8>)
{
  sub_277936A50(a1);
  if (!v7)
  {
    v8 = (v1 - 2 * v2);
    *v8 = v3;
    *v1 = v5;
    *(v8 + v2) = v4;
    *(v1 + v2) = v6;
  }
}

void sub_277936E4C(unsigned int a1@<W8>)
{
  sub_277936A50(a1);
  if (!v7)
  {
    v8 = (v1 - 8 * v2 - 4);
    v9 = vtrn1q_s16(v3, v4);
    v10 = vtrn2q_s16(v3, v4);
    v11 = vtrn1q_s16(v5, v6);
    v12 = vtrn2q_s16(v5, v6);
    v13 = vtrn1q_s32(v9, v11);
    v14 = vtrn2q_s32(v9, v11);
    v15 = vtrn1q_s32(v10, v12);
    v16 = vtrn2q_s32(v10, v12);
    v17 = (v8 + 4 * v2);
    *v8 = v13.i64[0];
    v18 = (v8 + v2);
    *v17 = v13.i64[1];
    v19 = (v17 + v2);
    *v18 = v15.i64[0];
    v20 = (v18 + v2);
    *v19 = v15.i64[1];
    v21 = (v19 + v2);
    *v20 = v14.i64[0];
    *v21 = v14.i64[1];
    *(v20 + v2) = v16.i64[0];
    *(v21 + v2) = v16.i64[1];
  }
}

void sub_277936F3C(unsigned int a1@<W8>)
{
  sub_277936838(a1);
  if (v3)
  {
    if ((v3 & 0x10) != 0)
    {
      v12 = (v1 - 2 * v2);
      *v12 = v5;
      *v1 = v7;
      *(v12 + v2) = v6;
      *(v1 + v2) = v8;
    }
  }

  else
  {
    *(v1 - v2 + -2 * v2) = v4;
    v10 = (v1 - 2 * v2);
    *v1 = v7;
    v11 = (v1 + v2);
    *v10 = v5;
    *v11 = v8;
    *(v10 + v2) = v6;
    *(v11 + v2) = v9;
  }
}

void sub_277936FC0(unsigned int a1@<W8>)
{
  sub_277936838(a1);
  if (v3)
  {
    if ((v3 & 0x10) != 0)
    {
      v34 = (v1 - 8 * v2 - 4);
      v35 = vtrn1q_s16(v6, v7);
      v36 = vtrn2q_s16(v6, v7);
      v37 = vtrn1q_s16(v8, v9);
      v38 = vtrn2q_s16(v8, v9);
      v39 = vtrn1q_s32(v35, v37);
      v40 = vtrn2q_s32(v35, v37);
      v41 = vtrn1q_s32(v36, v38);
      v42 = vtrn2q_s32(v36, v38);
      v43 = (v34 + 4 * v2);
      *v34 = v39.i64[0];
      v44 = (v34 + v2);
      *v43 = v39.i64[1];
      v45 = (v43 + v2);
      *v44 = v41.i64[0];
      v46 = (v44 + v2);
      *v45 = v41.i64[1];
      v47 = (v45 + v2);
      *v46 = v40.i64[0];
      *v47 = v40.i64[1];
      *(v46 + v2) = v42.i64[0];
      *(v47 + v2) = v42.i64[1];
    }
  }

  else
  {
    v12 = (v1 - 8 * v2 - 8);
    v13 = vtrn1q_s16(v4, v5);
    v14 = vtrn2q_s16(v4, v5);
    v15 = vtrn1q_s16(v6, v7);
    v16 = vtrn2q_s16(v6, v7);
    v17 = vtrn1q_s16(v8, v9);
    v18 = vtrn2q_s16(v8, v9);
    v19 = vtrn1q_s16(v10, v11);
    v20 = vtrn2q_s16(v10, v11);
    v21 = vtrn1q_s32(v17, v19);
    v22 = vtrn2q_s32(v17, v19);
    v23 = vtrn1q_s32(v18, v20);
    v24 = vtrn2q_s32(v18, v20);
    v25 = vtrn1q_s32(v14, v16);
    v26 = vtrn2q_s32(v14, v16);
    v27 = vtrn1q_s32(v13, v15);
    v28 = vtrn2q_s32(v13, v15);
    v29 = (v12 + 4 * v2);
    *v12 = vtrn1q_s64(v27, v21);
    v30 = (v12 + v2);
    *v29 = vtrn2q_s64(v27, v21);
    v31 = (v29 + v2);
    *v30 = vtrn1q_s64(v25, v23);
    v32 = (v30 + v2);
    *v31 = vtrn2q_s64(v25, v23);
    v33 = (v31 + v2);
    *v32 = vtrn1q_s64(v28, v22);
    *v33 = vtrn2q_s64(v28, v22);
    *(v32 + v2) = vtrn1q_s64(v26, v24);
    *(v33 + v2) = vtrn2q_s64(v26, v24);
  }
}

void sub_277937148(unsigned int a1@<W8>)
{
  *&v8 = sub_277936470(a1);
  if (v7)
  {
    if ((v7 & 0x40) != 0)
    {
      *(v5 - v6 + -2 * v6) = v16;
      v31 = (v5 - 2 * v6);
      *v5 = v19;
      v32 = (v5 + v6);
      *v31 = v17;
      *v32 = v20;
      *(v31 + v6) = v18;
      *(v32 + v6) = v21;
    }

    else if ((v7 & 0x10) != 0)
    {
      v33 = (v5 - 2 * v6);
      *v33 = v17;
      *v5 = v19;
      *(v33 + v6) = v18;
      *(v5 + v6) = v20;
    }
  }

  else
  {
    v22 = (v5 - 2 * v6 + -4 * v6);
    *v22 = v8;
    v23 = (v22 + v6);
    *v5 = v14;
    v24 = (v5 + v6);
    *v23 = v9;
    v25 = (v23 + v6);
    *v24 = v15;
    v26 = (v24 + v6);
    *v25 = v10;
    v27 = (v25 + v6);
    *v26 = v1;
    v28 = (v26 + v6);
    *v27 = v11;
    v29 = (v27 + v6);
    *v28 = v2;
    v30 = (v28 + v6);
    *v29 = v12;
    *v30 = v3;
    *(v29 + v6) = v13;
    *(v30 + v6) = v4;
  }
}

void sub_277937234(unsigned int a1@<W8>)
{
  *v8.i64 = sub_277936470(a1);
  if (v7)
  {
    if ((v7 & 0x40) != 0)
    {
      v81 = (v5 - 8 * v6 - 8);
      v82 = vtrn1q_s16(v18, v19);
      v83 = vtrn2q_s16(v18, v19);
      v84 = vtrn1q_s16(v20, v21);
      v85 = vtrn2q_s16(v20, v21);
      v86 = vtrn1q_s16(v22, v23);
      v87 = vtrn2q_s16(v22, v23);
      v88 = vtrn1q_s16(v24, v25);
      v89 = vtrn2q_s16(v24, v25);
      v90 = vtrn1q_s32(v86, v88);
      v91 = vtrn2q_s32(v86, v88);
      v92 = vtrn1q_s32(v87, v89);
      v93 = vtrn2q_s32(v87, v89);
      v94 = vtrn1q_s32(v83, v85);
      v95 = vtrn2q_s32(v83, v85);
      v96 = vtrn1q_s32(v82, v84);
      v97 = vtrn2q_s32(v82, v84);
      v98 = (v81 + 4 * v6);
      *v81 = vtrn1q_s64(v96, v90);
      v99 = (v81 + v6);
      *v98 = vtrn2q_s64(v96, v90);
      v100 = (v98 + v6);
      *v99 = vtrn1q_s64(v94, v92);
      v101 = (v99 + v6);
      *v100 = vtrn2q_s64(v94, v92);
      v102 = (v100 + v6);
      *v101 = vtrn1q_s64(v97, v91);
      *v102 = vtrn2q_s64(v97, v91);
      *(v101 + v6) = vtrn1q_s64(v95, v93);
      *(v102 + v6) = vtrn2q_s64(v95, v93);
    }

    else if ((v7 & 0x10) != 0)
    {
      v103 = (v5 - 8 * v6 - 4);
      v104 = vtrn1q_s16(v20, v21);
      v105 = vtrn2q_s16(v20, v21);
      v106 = vtrn1q_s16(v22, v23);
      v107 = vtrn2q_s16(v22, v23);
      v108 = vtrn1q_s32(v104, v106);
      v109 = vtrn2q_s32(v104, v106);
      v110 = vtrn1q_s32(v105, v107);
      v111 = vtrn2q_s32(v105, v107);
      v112 = (v103 + 4 * v6);
      *v103 = v108.i64[0];
      v113 = (v103 + v6);
      *v112 = v108.i64[1];
      v114 = (v112 + v6);
      *v113 = v110.i64[0];
      v115 = (v113 + v6);
      *v114 = v110.i64[1];
      v116 = (v114 + v6);
      *v115 = v109.i64[0];
      *v116 = v109.i64[1];
      *(v115 + v6) = v111.i64[0];
      *(v116 + v6) = v111.i64[1];
    }
  }

  else
  {
    v28 = (v5 - 8 * v6);
    v29 = vtrn1q_s16(v16, v17);
    v30 = vtrn2q_s16(v16, v17);
    v31 = vtrn1q_s16(v8, v9);
    v32 = vtrn2q_s16(v8, v9);
    v33 = vtrn1q_s16(v10, v11);
    v34 = vtrn2q_s16(v10, v11);
    v35 = vtrn1q_s16(v12, v13);
    v36 = vtrn2q_s16(v12, v13);
    v37 = vtrn1q_s32(v33, v35);
    v38 = vtrn2q_s32(v33, v35);
    v39 = vtrn1q_s32(v34, v36);
    v40 = vtrn2q_s32(v34, v36);
    v41 = vtrn1q_s32(v30, v32);
    v42 = vtrn2q_s32(v30, v32);
    v43 = vtrn1q_s32(v29, v31);
    v44 = vtrn2q_s32(v29, v31);
    v45 = vtrn1q_s64(v43, v37);
    v46 = vtrn2q_s64(v43, v37);
    v47 = vtrn1q_s64(v41, v39);
    v48 = vtrn2q_s64(v41, v39);
    v49 = vtrn2q_s64(v44, v38);
    v50 = vtrn1q_s64(v44, v38);
    v51 = vtrn1q_s64(v42, v40);
    v52 = vtrn2q_s64(v42, v40);
    v53 = vtrn1q_s16(v14, v15);
    v54 = vtrn2q_s16(v14, v15);
    v55 = vtrn1q_s16(v1, v2);
    v56 = vtrn2q_s16(v1, v2);
    v57 = vtrn1q_s16(v3, v4);
    v58 = vtrn2q_s16(v3, v4);
    v59 = vtrn1q_s16(v26, v27);
    v60 = vtrn2q_s16(v26, v27);
    v61 = vtrn1q_s32(v57, v59);
    v62 = vtrn2q_s32(v57, v59);
    v63 = vtrn1q_s32(v58, v60);
    v64 = vtrn2q_s32(v58, v60);
    v65 = vtrn1q_s32(v54, v56);
    v66 = vtrn2q_s32(v54, v56);
    v67 = vtrn1q_s32(v53, v55);
    v68 = vtrn2q_s32(v53, v55);
    v28[-1] = v45;
    v69 = (v28 + v6 - 16);
    *v28 = vtrn1q_s64(v67, v61);
    v70 = (v28 + v6);
    *v69 = v47;
    v71 = (v69 + v6);
    *v70 = vtrn1q_s64(v65, v63);
    v72 = (v70 + v6);
    *v71 = v50;
    v73 = (v71 + v6);
    *v72 = vtrn1q_s64(v68, v62);
    v74 = (v72 + v6);
    *v73 = v51;
    v75 = (v73 + v6);
    *v74 = vtrn1q_s64(v66, v64);
    v76 = (v74 + v6);
    *v75 = v46;
    v77 = (v75 + v6);
    *v76 = vtrn2q_s64(v67, v61);
    v78 = (v76 + v6);
    *v77 = v48;
    v79 = (v77 + v6);
    *v78 = vtrn2q_s64(v65, v63);
    v80 = (v78 + v6);
    *v79 = v49;
    *v80 = vtrn2q_s64(v68, v62);
    *(v79 + v6) = v52;
    *(v80 + v6) = vtrn2q_s64(v66, v64);
  }
}

uint64_t sub_277937544(uint64_t result, uint64_t a2, int *a3, int8x8_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v8 = a8;
  v9 = *a3;
  v10 = a3[1];
  v11 = a3[2];
  v12 = (a6 + 128);
  v13 = v10 | v11;
  v14 = (a4 - 4 * a5);
  v15 = v9 | v13;
  do
  {
    v16 = *v14++;
    v17 = *a4++;
    if ((v15 & 3) != 0)
    {
      vld1_dup_s8(v12);
      v18 = v12 + 8;
      v19 = vand_s8(v17, 0xFF000000FFLL);
      vld1_dup_s8(v18);
      v12 = v18 - 8;
      if (vtst_s32(vbsl_s8(vtst_s8(v19, 0xFF000000FFLL), v19, vand_s8(v16, 0xFF000000FFLL)), 0xFF000000FFLL))
      {
        if ((v11 & 3) != 0)
        {
          sub_277937148(v8);
        }

        else if ((v13 & 3) != 0)
        {
          sub_277936F3C(v8);
        }

        else
        {
          sub_277936D04();
        }
      }
    }

    v15 >>= 2;
    v13 >>= 2;
    v11 >>= 2;
    result += 16;
  }

  while (v15);
  return result;
}

void sub_27793768C(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v8 = a8;
  v9 = *a3;
  v10 = a3[1];
  v11 = a3[2];
  v12 = (a6 + 128);
  v13 = v10 | v11;
  v14 = (a4 - 4);
  v15 = a5;
  v16 = v9 | v13;
  do
  {
    v18.i32[0] = *v14;
    v19.i32[0] = v14[1];
    v17 = &v14[v15];
    v18.i32[1] = *v17;
    v19.i32[1] = v17[1];
    v14 = &v17[v15];
    if ((v16 & 3) != 0 && (vld1_dup_s8(v12), v20 = v12 + 8, v21 = vand_s8(v19, 0xFF000000FFLL), vld1_dup_s8(v20), v12 = v20 - 8, *&vtst_s32(vbsl_s8(vtst_s8(v21, 0xFF000000FFLL), v21, vand_s8(v18, 0xFF000000FFLL)), 0xFF000000FFLL)))
    {
      if ((v11 & 3) != 0)
      {
        sub_277937234(v8);
      }

      else if ((v13 & 3) != 0)
      {
        sub_277936FC0(v8);
      }

      else
      {
        sub_277936D48();
      }
    }

    else
    {
      a1 += 8 * a2;
    }

    v16 >>= 2;
    v13 >>= 2;
    v11 >>= 2;
  }

  while (v16);
}

uint64_t sub_2779377DC(uint64_t result, uint64_t a2, _DWORD *a3, int8x8_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v8 = a8;
  v9 = a3[1];
  v10 = (a6 + 128);
  v11 = (a4 - 4 * a5);
  v12 = *a3 | v9;
  do
  {
    v13 = *v11++;
    v14 = *a4++;
    if ((v12 & 3) != 0)
    {
      vld1_dup_s8(v10);
      v15 = v10 + 8;
      v16 = vand_s8(v14, 0xFF000000FFLL);
      vld1_dup_s8(v15);
      v10 = v15 - 8;
      if (vtst_s32(vbsl_s8(vtst_s8(v16, 0xFF000000FFLL), v16, vand_s8(v13, 0xFF000000FFLL)), 0xFF000000FFLL))
      {
        if ((v9 & 3) != 0)
        {
          sub_277936DF8(v8);
        }

        else
        {
          sub_277936D04();
        }
      }
    }

    v12 >>= 2;
    v9 >>= 2;
    result += 16;
  }

  while (v12);
  return result;
}

void sub_2779378FC(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v8 = a8;
  v9 = a3[1];
  v10 = (a6 + 128);
  v11 = (a4 - 4);
  v12 = a5;
  v13 = *a3 | v9;
  do
  {
    v15.i32[0] = *v11;
    v16.i32[0] = v11[1];
    v14 = &v11[v12];
    v15.i32[1] = *v14;
    v16.i32[1] = v14[1];
    v11 = &v14[v12];
    if ((v13 & 3) != 0 && (vld1_dup_s8(v10), v17 = v10 + 8, v18 = vand_s8(v16, 0xFF000000FFLL), vld1_dup_s8(v17), v10 = v17 - 8, *&vtst_s32(vbsl_s8(vtst_s8(v18, 0xFF000000FFLL), v18, vand_s8(v15, 0xFF000000FFLL)), 0xFF000000FFLL)))
    {
      if ((v9 & 3) != 0)
      {
        sub_277936E4C(v8);
      }

      else
      {
        sub_277936D48();
      }
    }

    else
    {
      a1 += 8 * a2;
    }

    v13 >>= 2;
    v9 >>= 2;
  }

  while (v13);
}

char *sub_277937D20(int8x8_t *a1, uint64_t a2, unsigned __int32 *a3, int8x8_t *a4, int a5, uint64_t a6, int16x8_t *a7, char a8, double a9, double a10, int8x16_t a11)
{
  v11 = *a7;
  v12 = a7[1];
  if ((a8 & 4) == 0)
  {
    sub_277937E94(v11, *v12.i64, a11, a1, a2, a3, a1, a5, a6, a7, a8);
    v88 = (v87 - 1);
    if (!v88)
    {
      return sub_277937FE8(v34, v35, *v41.i64, v42, v36, v37, v38);
    }

    sub_277937E94(v41, *v42.i64, v86, v34, v35, v36, (v37 + v35), v38, v88, v84, v85);
    v93 = (v92 - 1);
    if (v93)
    {
      sub_277937E94(v53, *v54.i64, v91, v46, v47, v48, (v49 + v47), v50, v93, v89, v90);
      v98 = (v97 - 1);
      if (v98)
      {
        v58 = sub_2779380A4(v58, v59, v60, (v61 + v59), v62, v65, v66, v96, v98, v94, v95);
        v103 = (v102 - 1);
        if (v103)
        {
          v58 = sub_2779380A4(v58, v59, v60, v61, v62, v65, v66, v101, v103, v99, v100);
          v69 = (v104 - 1);
          if (v69)
          {
            goto LABEL_6;
          }
        }
      }

      goto LABEL_15;
    }

LABEL_16:
    v34 = sub_277937FE8(v46, v47, *v53.i64, v54, v48, v49, v50);
    return sub_277937FE8(v34, v35, *v41.i64, v42, v36, v37, v38);
  }

  sub_277937E94(v11, *v12.i64, a11, a1, a2, 0, a4, a5, a6, a7, a8);
  sub_277937E94(v21, v22, v23, v14, v15, v16, (v13 + v15), v17, v18, v19, v20);
  sub_277937E94(v31, v32, v33, v24, v25, v30, v24, v26, v27, v28, v29);
  v45 = (v44 - 1);
  if (v45)
  {
    sub_277937E94(v41, *v42.i64, v43, v34, v35, v36, (v37 + v35), v38, v45, v39, v40);
    v57 = (v56 - 1);
    if (v57)
    {
      sub_277937E94(v53, *v54.i64, v55, v46, v47, v48, (v49 + v47), v50, v57, v51, v52);
      v69 = (v68 - 1);
      if (v69)
      {
        v61 = (v61 + v59);
        do
        {
LABEL_6:
          v58 = sub_2779380A4(v58, v59, v60, v61, v62, v65, v66, v67, v69, v63, v64);
          v69 = (v71 - 1);
        }

        while (v69);
        if ((v64 & 8) != 0)
        {
          v72 = sub_2779380A4(v58, v59, 0, v70, v62, v65, v66, v67, v69, v63, v64);
          v34 = sub_2779380A4(v72, v73, v74, v75, v76, v80, v81, v82, v77, v78, v79);
          return sub_277937FE8(v34, v35, *v41.i64, v42, v36, v37, v38);
        }
      }

LABEL_15:
      v46 = sub_277937FE8(v58, v59, *v65.i64, v66, v60, v61, v62);
      goto LABEL_16;
    }

    goto LABEL_16;
  }

  return sub_277937FE8(v34, v35, *v41.i64, v42, v36, v37, v38);
}

void sub_277937E94(int16x8_t a1, double a2, int8x16_t a3, uint64_t a4, uint64_t a5, unsigned __int32 *a6, int8x8_t *a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a11)
  {
    if (a6)
    {
      v18 = *a7->i8;
      a3.i32[3] = *a6;
      v16 = (&a7[1] + 5);
      v17 = vextq_s8(a3, v18, 0xDuLL);
    }

    else
    {
      v15 = (&a7[-1] + 5);
      v17 = *v15;
      v16 = &v15[1];
    }
  }

  else
  {
    v19 = *a7->i8;
    v20 = vdupq_lane_s8(*a7, 0);
    v16 = (&a7[1] + 5);
    v17 = vextq_s8(v20, v19, 0xDuLL);
  }

  v22 = *v16;
  v21 = &v16[1];
  v23 = vmovl_u8(*v17.i8);
  v24 = vmovl_high_u8(v17);
  v25 = vmovl_u8(v22);
  if ((a11 & 2) == 0)
  {
LABEL_7:
    if (a8 < 19)
    {
      v12.i8[0] = *(&v21[-1] + a8 - 6);
      v26 = (&unk_27A718A1A - 2 * a8);
      v12 = vdupq_lane_s16(*v12.i8, 0);
      v23 = vbslq_s8(*v26, v12, v23);
      v24 = vbslq_s8(v26[1], v12, v24);
      v25 = vbslq_s8(v26[2], v12, v25);
    }
  }

  while (1)
  {
    v27 = vextq_s8(v23, v24, 6uLL);
    v28 = vshlq_n_s16(v27, 7uLL);
    v29 = vmlaq_laneq_s16(vmlaq_laneq_s16(vmlaq_laneq_s16(vmulq_lane_s16(v27, *a1.i8, 3), vaddq_s16(vextq_s8(v23, v24, 8uLL), vextq_s8(v23, v24, 4uLL)), a1, 4), vaddq_s16(vextq_s8(v23, v24, 0xAuLL), vextq_s8(v23, v24, 2uLL)), a1, 5), vaddq_s16(vextq_s8(v23, v24, 0xCuLL), v23), a1, 6);
    v30 = vextq_s8(v24, v25, 6uLL);
    v31 = __OFSUB__(a8, 16);
    a8 -= 16;
    *v11 = vaddq_s16(vshrq_n_s16(vqaddq_s16(v29, vsubq_s16(v28, v13)), 3uLL), v14);
    v11[1] = vaddq_s16(vshrq_n_s16(vqaddq_s16(vmlaq_laneq_s16(vmlaq_laneq_s16(vmlaq_laneq_s16(vmulq_lane_s16(v30, *a1.i8, 3), vaddq_s16(vextq_s8(v24, v25, 8uLL), vextq_s8(v24, v25, 4uLL)), a1, 4), vaddq_s16(vextq_s8(v24, v25, 0xAuLL), vextq_s8(v24, v25, 2uLL)), a1, 5), vaddq_s16(vextq_s8(v24, v25, 0xCuLL), v24), a1, 6), vsubq_s16(vshlq_n_s16(v30, 7uLL), v13)), 3uLL), v14);
    v11 += 2;
    if ((a8 < 0) ^ v31 | (a8 == 0))
    {
      break;
    }

    v23 = v25;
    v32 = *v21++;
    v24 = vmovl_u8(*v32.i8);
    v25 = vmovl_high_u8(v32);
    if ((a11 & 2) == 0)
    {
      goto LABEL_7;
    }
  }
}

char *sub_277937FE8(int8x16_t *a1, uint64_t a2, double a3, int16x8_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v33 = a1;
  do
  {
    v13 = *v9;
    v14 = v9[1];
    v9 += 2;
    v15 = *v11;
    v16 = v11[1];
    v11 += 2;
    v17 = *v8;
    v18 = v8[1];
    v8 += 2;
    v19 = vaddq_s16(v15, v13);
    v20 = *v12;
    v21 = v12[1];
    v12 += 2;
    v22 = *v7;
    v23 = v7[1];
    v7 += 2;
    v24 = vaddq_s16(v20, v17);
    v25 = *v10;
    v26 = v10[1];
    v10 += 2;
    v27 = vaddq_s16(v20, v22);
    v28 = vaddq_s16(v16, v14);
    v29 = vaddq_s16(v21, v18);
    v30 = vaddq_s16(v21, v23);
    v31 = __OFSUB__(a7, 16);
    a7 -= 16;
    *a1++ = vqmovun_high_s16(vqmovun_s16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmull_lane_s16(*v25.i8, *a4.i8, 3), *v19.i8, a4, 4), *v24.i8, a4, 5), *v27.i8, a4, 6), 0xBuLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmull_high_lane_s16(v25, *a4.i8, 3), v19, a4, 4), v24, a4, 5), v27, a4, 6), 0xBuLL)), vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmull_lane_s16(*v26.i8, *a4.i8, 3), *v28.i8, a4, 4), *v29.i8, a4, 5), *v30.i8, a4, 6), 0xBuLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmull_high_lane_s16(v26, *a4.i8, 3), v28, a4, 4), v29, a4, 5), v30, a4, 6), 0xBuLL));
  }

  while (!((a7 < 0) ^ v31 | (a7 == 0)));
  return v33 + a2;
}

char *sub_2779380A4(int8x16_t *a1, uint64_t a2, unsigned __int32 *a3, int8x8_t *a4, int a5, int16x8_t a6, int16x8_t a7, int8x16_t a8, uint64_t a9, uint64_t a10, char a11)
{
  v61 = a1;
  if (a11)
  {
    if (a3)
    {
      v24 = *a4->i8;
      a8.i32[3] = *a3;
      v22 = (&a4[1] + 5);
      v23 = vextq_s8(a8, v24, 0xDuLL);
    }

    else
    {
      v21 = (&a4[-1] + 5);
      v23 = *v21;
      v22 = &v21[1];
    }
  }

  else
  {
    v25 = *a4->i8;
    v26 = vdupq_lane_s8(*a4, 0);
    v22 = (&a4[1] + 5);
    v23 = vextq_s8(v26, v25, 0xDuLL);
  }

  v28 = *v22;
  v27 = &v22[1];
  v29 = vmovl_u8(*v23.i8);
  v30 = vmovl_high_u8(v23);
  v31 = vmovl_u8(v28);
  if ((a11 & 2) != 0)
  {
    goto LABEL_9;
  }

LABEL_7:
  if (a5 < 19)
  {
    v18.i8[0] = *(&v27[-1] + a5 - 6);
    v32 = (&unk_27A718A1A - 2 * a5);
    v33 = vdupq_lane_s16(*v18.i8, 0);
    v29 = vbslq_s8(*v32, v33, v29);
    v30 = vbslq_s8(v32[1], v33, v30);
    v31 = vbslq_s8(v32[2], v33, v31);
  }

LABEL_9:
  while (1)
  {
    v34 = vextq_s8(v29, v30, 6uLL);
    v35 = vshlq_n_s16(v34, 7uLL);
    v36 = vmlaq_laneq_s16(vmlaq_laneq_s16(vmlaq_laneq_s16(vmulq_lane_s16(v34, *a6.i8, 3), vaddq_s16(vextq_s8(v29, v30, 8uLL), vextq_s8(v29, v30, 4uLL)), a6, 4), vaddq_s16(vextq_s8(v29, v30, 0xAuLL), vextq_s8(v29, v30, 2uLL)), a6, 5), vaddq_s16(vextq_s8(v29, v30, 0xCuLL), v29), a6, 6);
    v37 = vextq_s8(v30, v31, 6uLL);
    v38 = *v13;
    v39 = v13[1];
    v13 += 2;
    v40 = *v15;
    v41 = v15[1];
    v15 += 2;
    v42 = vqaddq_s16(vmlaq_laneq_s16(vmlaq_laneq_s16(vmlaq_laneq_s16(vmulq_lane_s16(v37, *a6.i8, 3), vaddq_s16(vextq_s8(v30, v31, 8uLL), vextq_s8(v30, v31, 4uLL)), a6, 4), vaddq_s16(vextq_s8(v30, v31, 0xAuLL), vextq_s8(v30, v31, 2uLL)), a6, 5), vaddq_s16(vextq_s8(v30, v31, 0xCuLL), v30), a6, 6), vsubq_s16(vshlq_n_s16(v37, 7uLL), v19));
    v43 = *v12;
    v44 = v12[1];
    v12 += 2;
    v45 = *v16;
    v46 = v16[1];
    v16 += 2;
    v47 = vaddq_s16(vshrq_n_s16(vqaddq_s16(v36, vsubq_s16(v35, v19)), 3uLL), v20);
    v48 = vaddq_s16(vshrq_n_s16(v42, 3uLL), v20);
    v49 = *v11;
    v50 = v11[1];
    v11 += 2;
    v51 = vaddq_s16(v38, v40);
    v52 = *v14;
    v53 = v14[1];
    v14 += 2;
    v18 = vaddq_s16(v43, v45);
    v54 = vaddq_s16(v49, v47);
    v55 = vaddq_s16(v39, v41);
    v56 = vaddq_s16(v44, v46);
    v57 = vaddq_s16(v50, v48);
    *v17 = v47;
    v17[1] = v48;
    v17 += 2;
    v58 = __OFSUB__(a5, 16);
    a5 -= 16;
    *a1++ = vqmovun_high_s16(vqmovun_s16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmull_lane_s16(*v52.i8, *a7.i8, 3), *v51.i8, a7, 4), *v18.i8, a7, 5), *v54.i8, a7, 6), 0xBuLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmull_high_lane_s16(v52, *a7.i8, 3), v51, a7, 4), v18, a7, 5), v54, a7, 6), 0xBuLL)), vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmull_lane_s16(*v53.i8, *a7.i8, 3), *v55.i8, a7, 4), *v56.i8, a7, 5), *v57.i8, a7, 6), 0xBuLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmull_high_lane_s16(v53, *a7.i8, 3), v55, a7, 4), v56, a7, 5), v57, a7, 6), 0xBuLL));
    if ((a5 < 0) ^ v58 | (a5 == 0))
    {
      return v61 + a2;
    }

    v29 = v31;
    v59 = *v27++;
    v30 = vmovl_u8(*v59.i8);
    v31 = vmovl_high_u8(v59);
    if ((a11 & 2) == 0)
    {
      goto LABEL_7;
    }
  }
}

void sub_2779382A4(int8x8_t *a1, uint64_t a2, unsigned __int32 *a3, int8x8_t *a4, int a5, uint64_t a6, int16x8_t *a7, char a8, double a9, double a10, int8x16_t a11)
{
  v11 = *a7;
  v12 = a7[1];
  if ((a8 & 4) != 0)
  {
    sub_2779383E0(v11, *v12.i64, a11, a1, a2, 0, a4, a5, a6, a7, a8);
    sub_2779383E0(v21, v22, v23, v14, v15, v16, (v13 + v15), v17, v18, v19, v20);
    sub_2779383E0(v31, v32, v33, v24, v25, v30, v24, v26, v27, v28, v29);
    v45 = (v44 - 1);
    if (v45)
    {
      sub_2779383E0(v41, *v42.i64, v43, v34, v35, v36, (v37 + v35), v38, v45, v39, v40);
      v53 = (v52 - 1);
      if (v53)
      {
        v37 = (v37 + v35);
        do
        {
LABEL_5:
          v46 = sub_2779385A4(v46, v35, v36, v37, v47, v41, v50, v51, v53, v48, v49);
          v53 = (v55 - 1);
        }

        while (v53);
        if ((v49 & 8) != 0)
        {
          v56 = sub_2779385A4(v46, v35, 0, v54, v47, v41, v50, v51, v53, v48, v49);
          sub_2779385A4(v56, v57, v58, v59, v60, v64, v65, v66, v61, v62, v63);
          return;
        }
      }

LABEL_12:
      sub_277938514(v46, *v41.i64, v50, v35, v36, v37, v47);
      v34 = (v46 + v35);
    }
  }

  else
  {
    sub_2779383E0(v11, *v12.i64, a11, a1, a2, a3, a1, a5, a6, a7, a8);
    v71 = (v70 - 1);
    if (v71)
    {
      sub_2779383E0(v41, *v42.i64, v69, v34, v35, v36, (v37 + v35), v38, v71, v67, v68);
      v76 = (v75 - 1);
      if (v76)
      {
        v46 = sub_2779385A4(v46, v35, v36, (v37 + v35), v47, v41, v50, v74, v76, v72, v73);
        v81 = (v80 - 1);
        if (v81)
        {
          v46 = sub_2779385A4(v46, v35, v36, v37, v47, v41, v50, v79, v81, v77, v78);
          v53 = (v82 - 1);
          if (v53)
          {
            goto LABEL_5;
          }
        }
      }

      goto LABEL_12;
    }
  }

  sub_277938514(v34, *v41.i64, v42, v35, v36, v37, v38);
}

void sub_2779383E0(int16x8_t a1, double a2, int8x16_t a3, uint64_t a4, uint64_t a5, unsigned __int32 *a6, int8x8_t *a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a11)
  {
    if (a6)
    {
      v18 = *a7->i8;
      a3.i32[3] = *a6;
      v16 = (&a7[1] + 6);
      v17 = vextq_s8(a3, v18, 0xEuLL);
    }

    else
    {
      v15 = (&a7[-1] + 6);
      v17 = *v15;
      v16 = &v15[1];
    }
  }

  else
  {
    v19 = *a7->i8;
    v20 = vdupq_lane_s8(*a7, 0);
    v16 = (&a7[1] + 6);
    v17 = vextq_s8(v20, v19, 0xEuLL);
  }

  v22 = *v16;
  v21 = &v16[1];
  v23 = vmovl_u8(*v17.i8);
  v24 = vmovl_high_u8(v17);
  v25 = vmovl_u8(v22);
  if ((a11 & 2) == 0)
  {
LABEL_7:
    if (a8 < 18)
    {
      v12.i8[0] = *(&v21[-1] + a8 - 7);
      v26 = (&unk_27A718A1C - 2 * a8);
      v12 = vdupq_lane_s16(*v12.i8, 0);
      v23 = vbslq_s8(*v26, v12, v23);
      v24 = vbslq_s8(v26[1], v12, v24);
      v25 = vbslq_s8(v26[2], v12, v25);
    }
  }

  while (1)
  {
    v27 = vextq_s8(v23, v24, 4uLL);
    v28 = vshlq_n_s16(v27, 7uLL);
    v29 = vmlaq_laneq_s16(vmlaq_laneq_s16(vmulq_lane_s16(v27, *a1.i8, 3), vaddq_s16(vextq_s8(v23, v24, 6uLL), vextq_s8(v23, v24, 2uLL)), a1, 4), vaddq_s16(vextq_s8(v23, v24, 8uLL), v23), a1, 5);
    v30 = vextq_s8(v24, v25, 4uLL);
    v31 = __OFSUB__(a8, 16);
    a8 -= 16;
    *v11 = vaddq_s16(vshrq_n_s16(vqaddq_s16(v29, vsubq_s16(v28, v13)), 3uLL), v14);
    v11[1] = vaddq_s16(vshrq_n_s16(vqaddq_s16(vmlaq_laneq_s16(vmlaq_laneq_s16(vmulq_lane_s16(v30, *a1.i8, 3), vaddq_s16(vextq_s8(v24, v25, 6uLL), vextq_s8(v24, v25, 2uLL)), a1, 4), vaddq_s16(vextq_s8(v24, v25, 8uLL), v24), a1, 5), vsubq_s16(vshlq_n_s16(v30, 7uLL), v13)), 3uLL), v14);
    v11 += 2;
    if ((a8 < 0) ^ v31 | (a8 == 0))
    {
      break;
    }

    v23 = v25;
    v32 = *v21++;
    v24 = vmovl_u8(*v32.i8);
    v25 = vmovl_high_u8(v32);
    if ((a11 & 2) == 0)
    {
      goto LABEL_7;
    }
  }
}

void __spoils<X4,X11,X12,X13,X14,Q1,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25> sub_277938514(int8x16_t *a1, double a2, int16x8_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  do
  {
    v11 = *v8;
    v12 = v8[1];
    v8 += 2;
    v13 = *v10;
    v14 = v10[1];
    v10 += 2;
    v15 = *v7;
    v16 = v7[1];
    v7 += 2;
    v17 = vaddq_s16(v13, v11);
    v18 = *v9;
    v19 = v9[1];
    v9 += 2;
    v20 = vaddq_s16(v13, v15);
    v21 = vaddq_s16(v14, v12);
    v22 = vaddq_s16(v14, v16);
    v23 = __OFSUB__(a7, 16);
    a7 -= 16;
    *a1++ = vqmovun_high_s16(vqmovun_s16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmull_lane_s16(*v18.i8, *a3.i8, 3), *v17.i8, a3, 4), *v20.i8, a3, 5), 0xBuLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmull_high_lane_s16(v18, *a3.i8, 3), v17, a3, 4), v20, a3, 5), 0xBuLL)), vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmull_lane_s16(*v19.i8, *a3.i8, 3), *v21.i8, a3, 4), *v22.i8, a3, 5), 0xBuLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmull_high_lane_s16(v19, *a3.i8, 3), v21, a3, 4), v22, a3, 5), 0xBuLL));
  }

  while (!((a7 < 0) ^ v23 | (a7 == 0)));
}

char *sub_2779385A4(int8x16_t *a1, uint64_t a2, unsigned __int32 *a3, int8x8_t *a4, int a5, int16x8_t a6, int16x8_t a7, int8x16_t a8, uint64_t a9, uint64_t a10, char a11)
{
  v53 = a1;
  if (a11)
  {
    if (a3)
    {
      v22 = *a4->i8;
      a8.i32[3] = *a3;
      v20 = (&a4[1] + 6);
      v21 = vextq_s8(a8, v22, 0xEuLL);
    }

    else
    {
      v19 = (&a4[-1] + 6);
      v21 = *v19;
      v20 = &v19[1];
    }
  }

  else
  {
    v23 = *a4->i8;
    v24 = vdupq_lane_s8(*a4, 0);
    v20 = (&a4[1] + 6);
    v21 = vextq_s8(v24, v23, 0xEuLL);
  }

  v26 = *v20;
  v25 = &v20[1];
  v27 = vmovl_u8(*v21.i8);
  v28 = vmovl_high_u8(v21);
  v29 = vmovl_u8(v26);
  if ((a11 & 2) != 0)
  {
    goto LABEL_9;
  }

LABEL_7:
  if (a5 < 18)
  {
    v16.i8[0] = *(&v25[-1] + a5 - 7);
    v30 = (&unk_27A718A1C - 2 * a5);
    v16 = vdupq_lane_s16(*v16.i8, 0);
    v27 = vbslq_s8(*v30, v16, v27);
    v28 = vbslq_s8(v30[1], v16, v28);
    v29 = vbslq_s8(v30[2], v16, v29);
  }

LABEL_9:
  while (1)
  {
    v31 = vextq_s8(v27, v28, 4uLL);
    v32 = vshlq_n_s16(v31, 7uLL);
    v33 = vmlaq_laneq_s16(vmlaq_laneq_s16(vmulq_lane_s16(v31, *a6.i8, 3), vaddq_s16(vextq_s8(v27, v28, 6uLL), vextq_s8(v27, v28, 2uLL)), a6, 4), vaddq_s16(vextq_s8(v27, v28, 8uLL), v27), a6, 5);
    v34 = vextq_s8(v28, v29, 4uLL);
    v35 = *v12;
    v36 = v12[1];
    v12 += 2;
    v37 = *v14;
    v38 = v14[1];
    v14 += 2;
    v39 = vqaddq_s16(vmlaq_laneq_s16(vmlaq_laneq_s16(vmulq_lane_s16(v34, *a6.i8, 3), vaddq_s16(vextq_s8(v28, v29, 6uLL), vextq_s8(v28, v29, 2uLL)), a6, 4), vaddq_s16(vextq_s8(v28, v29, 8uLL), v28), a6, 5), vsubq_s16(vshlq_n_s16(v34, 7uLL), v17));
    v40 = *v11;
    v41 = v11[1];
    v11 += 2;
    v42 = *v13;
    v43 = v13[1];
    v13 += 2;
    v44 = vaddq_s16(vshrq_n_s16(vqaddq_s16(v33, vsubq_s16(v32, v17)), 3uLL), v18);
    v45 = vaddq_s16(vshrq_n_s16(v39, 3uLL), v18);
    v46 = vaddq_s16(v37, v35);
    v47 = vaddq_s16(v40, v44);
    v48 = vaddq_s16(v38, v36);
    v49 = vaddq_s16(v41, v45);
    *v15 = v44;
    v15[1] = v45;
    v15 += 2;
    v50 = __OFSUB__(a5, 16);
    a5 -= 16;
    *a1++ = vqmovun_high_s16(vqmovun_s16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmull_lane_s16(*v42.i8, *a7.i8, 3), *v46.i8, a7, 4), *v47.i8, a7, 5), 0xBuLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmull_high_lane_s16(v42, *a7.i8, 3), v46, a7, 4), v47, a7, 5), 0xBuLL)), vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmull_lane_s16(*v43.i8, *a7.i8, 3), *v48.i8, a7, 4), *v49.i8, a7, 5), 0xBuLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmull_high_lane_s16(v43, *a7.i8, 3), v48, a7, 4), v49, a7, 5), 0xBuLL));
    if ((a5 < 0) ^ v50 | (a5 == 0))
    {
      return v53 + a2;
    }

    v27 = v29;
    v51 = *v25++;
    v28 = vmovl_u8(*v51.i8);
    v29 = vmovl_high_u8(v51);
    if ((a11 & 2) == 0)
    {
      goto LABEL_7;
    }
  }
}

uint32x4_t *sub_27793875C(uint32x4_t *result, int8x16_t *a2, unsigned __int32 *a3, int8x8_t *a4, int a5, char a6, double a7, int8x16_t a8)
{
  v9 = a5 + 2;
  if (a6)
  {
    if (a3)
    {
      v13 = *a4->i8;
      a8.i32[3] = *a3;
      i64 = (&a4[1] + 6);
      v12 = vextq_s8(a8, v13, 0xEuLL);
    }

    else
    {
      v10 = (&a4[-1] + 6);
      v12 = *v10;
      i64 = v10[1].i64;
    }
  }

  else
  {
    v14 = *a4->i8;
    v15 = vdupq_lane_s8(*a4, 0);
    i64 = (&a4[1] + 6);
    v12 = vextq_s8(v15, v14, 0xEuLL);
  }

  v16 = vmull_u8(*v12.i8, *v12.i8);
  v17 = vmull_high_u8(v12, v12);
  if ((a6 & 2) == 0)
  {
    v8.i8[0] = *(i64 + v9 - 17);
    v8 = vdupq_lane_s8(*v8.i8, 0);
LABEL_8:
    if (v9 < 10)
    {
      v12 = vbslq_s8(*(&unk_27A718A20 - v9), v8, v12);
      v16 = vmull_u8(*v12.i8, *v12.i8);
      v17 = vmull_high_u8(v12, v12);
    }
  }

  while (1)
  {
    v18 = vextq_s8(v16, v17, 2uLL);
    v19 = vaddw_u8(vaddl_u8(*v12.i8, *&vextq_s8(v12, v12, 1uLL)), *&vextq_s8(v12, v12, 2uLL));
    v20 = vextq_s8(v16, v17, 4uLL);
    v21 = __OFSUB__(v9, 8);
    v9 -= 8;
    *a2++ = v19;
    *result = vaddw_u16(vaddl_u16(*v16.i8, *v18.i8), *v20.i8);
    result[1] = vaddw_high_u16(vaddl_high_u16(v16, v18), v20);
    result += 2;
    if ((v9 < 0) ^ v21 | (v9 == 0))
    {
      return result;
    }

    v19.i64[0] = *i64++;
    v16 = v17;
    v12 = vextq_s8(v12, v19, 8uLL);
    v17 = vmull_u8(*v19.i8, *v19.i8);
    if ((a6 & 2) == 0)
    {
      goto LABEL_8;
    }
  }
}

int32x4_t *sub_277938834(int32x4_t *result, int8x16_t *a2, unsigned __int32 *a3, int8x8_t *a4, int a5, char a6, double a7, int8x16_t a8)
{
  v9 = a5 + 2;
  if (a6)
  {
    if (a3)
    {
      v13 = *a4->i8;
      a8.i32[3] = *a3;
      i64 = (&a4[1] + 5);
      v12 = vextq_s8(a8, v13, 0xDuLL);
    }

    else
    {
      v10 = (&a4[-1] + 5);
      v12 = *v10;
      i64 = v10[1].i64;
    }
  }

  else
  {
    v14 = *a4->i8;
    v15 = vdupq_lane_s8(*a4, 0);
    i64 = (&a4[1] + 5);
    v12 = vextq_s8(v15, v14, 0xDuLL);
  }

  v16 = vmull_u8(*v12.i8, *v12.i8);
  v17 = vmull_high_u8(v12, v12);
  if ((a6 & 2) == 0)
  {
    v8.i8[0] = *(i64 + v9 - 16);
    v8 = vdupq_lane_s8(*v8.i8, 0);
LABEL_8:
    if (v9 < 11)
    {
      v12 = vbslq_s8(*(&unk_27A718A1F - v9), v8, v12);
      v16 = vmull_u8(*v12.i8, *v12.i8);
      v17 = vmull_high_u8(v12, v12);
    }
  }

  while (1)
  {
    v18 = vaddq_s16(vaddw_u8(vaddl_u8(*v12.i8, *&vextq_s8(v12, v12, 1uLL)), *&vextq_s8(v12, v12, 4uLL)), vaddl_u8(*&vextq_s8(v12, v12, 2uLL), *&vextq_s8(v12, v12, 3uLL)));
    v19 = vextq_s8(v16, v17, 2uLL);
    v20 = vextq_s8(v16, v17, 4uLL);
    v21 = vextq_s8(v16, v17, 6uLL);
    v22 = vextq_s8(v16, v17, 8uLL);
    v23 = __OFSUB__(v9, 8);
    v9 -= 8;
    *a2++ = v18;
    *result = vaddq_s32(vaddw_u16(vaddl_u16(*v16.i8, *v19.i8), *v22.i8), vaddl_u16(*v20.i8, *v21.i8));
    result[1] = vaddq_s32(vaddw_high_u16(vaddl_high_u16(v16, v19), v22), vaddl_high_u16(v20, v21));
    result += 2;
    if ((v9 < 0) ^ v23 | (v9 == 0))
    {
      return result;
    }

    v18.i64[0] = *i64++;
    v16 = v17;
    v12 = vextq_s8(v12, v18, 8uLL);
    v17 = vmull_u8(*v18.i8, *v18.i8);
    if ((a6 & 2) == 0)
    {
      goto LABEL_8;
    }
  }
}

int32x4_t *sub_277938938(int32x4_t *result, int16x8_t *a2, int32x4_t *a3, int8x16_t *a4, unsigned __int32 *a5, int8x8_t *a6, int a7, char a8, double a9, int8x16_t a10)
{
  v11 = a7 + 2;
  if (a8)
  {
    if (a5)
    {
      v15 = *a6->i8;
      a10.i32[3] = *a5;
      i64 = (&a6[1] + 5);
      v14 = vextq_s8(a10, v15, 0xDuLL);
    }

    else
    {
      v12 = (&a6[-1] + 5);
      v14 = *v12;
      i64 = v12[1].i64;
    }
  }

  else
  {
    v16 = *a6->i8;
    v17 = vdupq_lane_s8(*a6, 0);
    i64 = (&a6[1] + 5);
    v14 = vextq_s8(v17, v16, 0xDuLL);
  }

  v18 = vmull_u8(*v14.i8, *v14.i8);
  v19 = vmull_high_u8(v14, v14);
  if ((a8 & 2) == 0)
  {
    v10.i8[0] = *(i64 + v11 - 16);
    v10 = vdupq_lane_s8(*v10.i8, 0);
LABEL_8:
    if (v11 < 11)
    {
      v14 = vbslq_s8(*(&unk_27A718A1F - v11), v10, v14);
      v18 = vmull_u8(*v14.i8, *v14.i8);
      v19 = vmull_high_u8(v14, v14);
    }
  }

  while (1)
  {
    v20 = vaddw_u8(vaddl_u8(*&vextq_s8(v14, v14, 1uLL), *&vextq_s8(v14, v14, 2uLL)), *&vextq_s8(v14, v14, 3uLL));
    v21 = vextq_s8(v18, v19, 2uLL);
    v22 = vextq_s8(v18, v19, 4uLL);
    v23 = vextq_s8(v18, v19, 8uLL);
    v24 = vextq_s8(v18, v19, 6uLL);
    *a2++ = v20;
    v25 = vaddq_s16(v20, vaddl_u8(*v14.i8, *&vextq_s8(v14, v14, 4uLL)));
    v26 = vaddw_u16(vaddl_u16(*v21.i8, *v22.i8), *v24.i8);
    v27 = vaddw_high_u16(vaddl_high_u16(v21, v22), v24);
    *result = v26;
    result[1] = v27;
    result += 2;
    v28 = __OFSUB__(v11, 8);
    v11 -= 8;
    *a4++ = v25;
    *a3 = vaddq_s32(v26, vaddl_u16(*v18.i8, *v23.i8));
    a3[1] = vaddq_s32(v27, vaddl_high_u16(v18, v23));
    a3 += 2;
    if ((v11 < 0) ^ v28 | (v11 == 0))
    {
      return result;
    }

    v25.i64[0] = *i64++;
    v18 = v19;
    v14 = vextq_s8(v14, v25, 8uLL);
    v19 = vmull_u8(*v25.i8, *v25.i8);
    if ((a8 & 2) == 0)
    {
      goto LABEL_8;
    }
  }
}

int16x8_t *sub_277938A44(int16x8_t *result, uint8x8_t *a2, uint64_t a3, void *a4, void *a5, int a6, int a7)
{
  v7 = *a4;
  v8 = a4[1];
  v10 = a4[2];
  v9 = a4[3];
  v11 = *a5;
  v12 = a5[1];
  v14 = a5[2];
  v13 = a5[3];
  v15 = (a2 + a3);
  if (a7 <= 1)
  {
    v15 = a2;
  }

  v16 = result + 48;
  v17.i64[0] = 0x3000300030003;
  v17.i64[1] = 0x3000300030003;
  v18.i64[0] = 0x300000003;
  v18.i64[1] = 0x300000003;
  v20 = *v11;
  v21 = *(v11 + 1);
  v19 = (v11 + 2);
  v23 = *v12;
  v24 = *(v12 + 1);
  v22 = (v12 + 2);
  v26 = *v14;
  v27 = *(v14 + 1);
  v25 = (v14 + 2);
  v29 = *v13;
  v30 = *(v13 + 1);
  v28 = (v13 + 2);
  v32 = *v7;
  v33 = *(v7 + 1);
  v34 = *(v7 + 2);
  v31 = v7 + 3;
  v36 = *v8;
  v37 = *(v8 + 1);
  v38 = *(v8 + 2);
  v35 = v8 + 3;
  v40 = *v10;
  v41 = *(v10 + 1);
  v42 = *(v10 + 2);
  v39 = v10 + 3;
  v44 = *v9;
  v45 = *(v9 + 1);
  v46 = *(v9 + 2);
  for (i = v9 + 3; ; i += 2)
  {
    v47 = vextq_s8(v23, v24, 2uLL);
    v48 = vextq_s8(v26, v27, 2uLL);
    v49 = vextq_s8(v23, v24, 4uLL);
    v50 = vextq_s8(v26, v27, 4uLL);
    v51 = vaddq_s16(vaddq_s16(v26, v47), v50);
    v52 = vmlaq_s16(vshlq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v23, vextq_s8(v20, v21, 2uLL)), v49), vaddq_s16(v47, v48)), 2uLL), vaddq_s16(vaddq_s16(v20, vextq_s8(v20, v21, 4uLL)), vaddq_s16(v26, v50)), v17);
    v53 = vmlaq_s16(vshlq_n_s16(vaddq_s16(v51, vaddq_s16(v48, vextq_s8(v29, v30, 2uLL))), 2uLL), vaddq_s16(vaddq_s16(v23, v49), vaddq_s16(v29, vextq_s8(v29, v30, 4uLL))), v17);
    v54 = vextq_s8(v36, v37, 4uLL);
    v55 = vextq_s8(v37, v38, 4uLL);
    v56 = vextq_s8(v36, v37, 8uLL);
    v57 = vextq_s8(v37, v38, 8uLL);
    v58 = vextq_s8(v40, v41, 4uLL);
    v59 = vextq_s8(v41, v42, 4uLL);
    v60 = vaddq_s32(vaddq_s32(vextq_s8(v32, v33, 4uLL), v36), vaddq_s32(v54, v56));
    v61 = vaddq_s32(vaddq_s32(vextq_s8(v33, v34, 4uLL), v37), vaddq_s32(v55, v57));
    v62 = vaddq_s32(v36, v56);
    v63 = vaddq_s32(v37, v57);
    v64 = vaddq_s32(v40, v54);
    v65 = vaddq_s32(v41, v55);
    v66 = vextq_s8(v40, v41, 8uLL);
    v67 = vextq_s8(v41, v42, 8uLL);
    v68 = vaddq_s32(vaddq_s32(vaddq_s32(v32, vextq_s8(v32, v33, 8uLL)), v40), v66);
    v69 = vaddq_s32(vaddq_s32(vaddq_s32(v33, vextq_s8(v33, v34, 8uLL)), v41), v67);
    v70 = vaddq_s32(v66, vextq_s8(v44, v45, 4uLL));
    v71 = vaddq_s32(v67, vextq_s8(v45, v46, 4uLL));
    v72 = vaddq_s32(v62, vaddq_s32(v44, vextq_s8(v44, v45, 8uLL)));
    v73 = vaddq_s32(v63, vaddq_s32(v45, vextq_s8(v45, v46, 8uLL)));
    v74 = *a2++;
    v75 = *v15++;
    v76 = vmovl_u8(v74);
    v77 = vmovl_u8(v75);
    v78 = vmlal_u16(vmlaq_s32(vshlq_n_s32(vaddq_s32(vaddq_s32(v64, v58), v70), 2uLL), v72, v18), *v53.i8, *v77.i8);
    v79 = vmlal_high_u16(vmlaq_s32(vshlq_n_s32(vaddq_s32(vaddq_s32(v65, v59), v71), 2uLL), v73, v18), v53, v77);
    v20 = v21;
    v80 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmlaq_s32(vshlq_n_s32(vaddq_s32(v60, v58), 2uLL), v68, v18), *v52.i8, *v76.i8), 9uLL), vmlal_high_u16(vmlaq_s32(vshlq_n_s32(vaddq_s32(v61, v59), 2uLL), v69, v18), v52, v76), 9uLL);
    v23 = v24;
    v81 = __OFSUB__(a6, 8);
    a6 -= 8;
    v26 = v27;
    *result++ = v80;
    v29 = v30;
    *v16++ = vrshrn_high_n_s32(vrshrn_n_s32(v78, 9uLL), v79, 9uLL);
    if ((a6 < 0) ^ v81 | (a6 == 0))
    {
      break;
    }

    v32 = v34;
    v36 = v38;
    v40 = v42;
    v44 = v46;
    v21 = *v19++;
    v24 = *v22++;
    v27 = *v25++;
    v30 = *v28++;
    v33 = *v31;
    v34 = *(v31 + 1);
    v31 += 2;
    v37 = *v35;
    v38 = *(v35 + 1);
    v35 += 2;
    v41 = *v39;
    v42 = *(v39 + 1);
    v39 += 2;
    v45 = *i;
    v46 = *(i + 1);
  }

  return result;
}

uint8x8_t *sub_277938C70(uint8x8_t *result, void *a2, void *a3, int a4, unsigned int a5)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = *a3;
  v9 = a3[1];
  v10 = a3[2];
  v11 = vdupq_n_s16(a5);
  v12.i64[0] = 0x3000300030003;
  v12.i64[1] = 0x3000300030003;
  v13.i64[0] = 0x300000003;
  v13.i64[1] = 0x300000003;
  v15 = *v8;
  v16 = *(v8 + 1);
  v14 = (v8 + 2);
  v18 = *v9;
  v19 = *(v9 + 1);
  v17 = (v9 + 2);
  v21 = *v10;
  v22 = *(v10 + 1);
  v20 = (v10 + 2);
  v24 = *v5;
  v25 = *(v5 + 1);
  v26 = *(v5 + 2);
  v23 = v5 + 3;
  v28 = *v6;
  v29 = *(v6 + 1);
  v30 = *(v6 + 2);
  v27 = v6 + 3;
  v32 = *v7;
  v33 = *(v7 + 1);
  v34 = *(v7 + 2);
  for (i = v7 + 3; ; i += 2)
  {
    v35 = vmlaq_s16(vshlq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v18, vextq_s8(v15, v16, 2uLL)), vaddq_s16(vextq_s8(v18, v19, 2uLL), vextq_s8(v21, v22, 2uLL))), vextq_s8(v18, v19, 4uLL)), 2uLL), vaddq_s16(vaddq_s16(v15, vextq_s8(v15, v16, 4uLL)), vaddq_s16(v21, vextq_s8(v21, v22, 4uLL))), v12);
    v36 = vmlaq_s32(vshlq_n_s32(vaddq_s32(vaddq_s32(vaddq_s32(vextq_s8(v24, v25, 4uLL), v28), vaddq_s32(vextq_s8(v28, v29, 4uLL), vextq_s8(v28, v29, 8uLL))), vextq_s8(v32, v33, 4uLL)), 2uLL), vaddq_s32(vaddq_s32(vaddq_s32(v24, vextq_s8(v24, v25, 8uLL)), v32), vextq_s8(v32, v33, 8uLL)), v13);
    v37 = vmovl_u8(*result);
    v15 = v16;
    v38 = vmlal_u16(v36, *v35.i8, *v37.i8);
    v39 = vmlal_high_u16(vmlaq_s32(vshlq_n_s32(vaddq_s32(vaddq_s32(vaddq_s32(vextq_s8(v25, v26, 4uLL), v29), vaddq_s32(vextq_s8(v29, v30, 4uLL), vextq_s8(v29, v30, 8uLL))), vextq_s8(v33, v34, 4uLL)), 2uLL), vaddq_s32(vaddq_s32(vaddq_s32(v25, vextq_s8(v25, v26, 8uLL)), v33), vextq_s8(v33, v34, 8uLL)), v13), v35, v37);
    v18 = v19;
    v40 = __OFSUB__(a4, 8);
    a4 -= 8;
    v41 = vshlq_n_s16(v37, 4uLL);
    v21 = v22;
    v42 = vsubq_s16(vrshrn_high_n_s32(vrshrn_n_s32(v38, 9uLL), v39, 9uLL), v41);
    v16 = *v14++;
    v19 = *v17++;
    v22 = *v20++;
    v24 = v26;
    *v39.i8 = vqmovun_s16(vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vshll_n_u16(*v41.i8, 7uLL), *v42.i8, *v11.i8), 0xBuLL), vmlal_high_s16(vshll_high_n_u16(v41, 7uLL), v42, v11), 0xBuLL));
    v28 = v30;
    v32 = v34;
    *result++ = *v39.i8;
    if ((a4 < 0) ^ v40 | (a4 == 0))
    {
      break;
    }

    v25 = *v23;
    v26 = *(v23 + 1);
    v23 += 2;
    v29 = *v27;
    v30 = *(v27 + 1);
    v27 += 2;
    v33 = *i;
    v34 = *(i + 1);
  }

  return result;
}

int16x8_t *sub_277938DDC(int16x8_t *result, uint8x8_t *a2, uint64_t a3, void *a4, void *a5, int a6, int a7)
{
  v7 = *a4;
  v8 = a4[1];
  v10 = *a5;
  v11 = a5[1];
  v13 = (a2 + a3);
  if (a7 <= 1)
  {
    v13 = a2;
  }

  v14 = result + 48;
  v15.i64[0] = 0x5000500050005;
  v15.i64[1] = 0x5000500050005;
  v16.i64[0] = 0x500000005;
  v16.i64[1] = 0x500000005;
  v17.i64[0] = 0x6000600060006;
  v17.i64[1] = 0x6000600060006;
  v18.i64[0] = 0x600000006;
  v18.i64[1] = 0x600000006;
  v20 = *v10;
  v21 = *(v10 + 1);
  v19 = (v10 + 2);
  v23 = *v11;
  v24 = *(v11 + 1);
  v22 = (v11 + 2);
  v26 = *v7;
  v27 = *(v7 + 1);
  v28 = *(v7 + 2);
  v25 = v7 + 3;
  v30 = *v8;
  v31 = *(v8 + 1);
  v32 = *(v8 + 2);
  for (i = v8 + 3; ; i += 2)
  {
    v33 = vextq_s8(v23, v24, 2uLL);
    v34 = vaddq_s16(v23, vextq_s8(v23, v24, 4uLL));
    v35 = vaddq_s16(vextq_s8(v20, v21, 2uLL), v33);
    v36 = vaddq_s16(vaddq_s16(v20, vextq_s8(v20, v21, 4uLL)), v34);
    v37 = vmlaq_s16(vmulq_s16(v34, v15), v33, v17);
    v38 = vextq_s8(v30, v31, 4uLL);
    v39 = vextq_s8(v31, v32, 4uLL);
    v40 = vmlaq_s16(vmulq_s16(v36, v15), v35, v17);
    v41 = *a2++;
    v42 = *v13++;
    v43 = vaddq_s32(v30, vextq_s8(v30, v31, 8uLL));
    v44 = vaddq_s32(v31, vextq_s8(v31, v32, 8uLL));
    v45 = vmovl_u8(v41);
    v46 = vmovl_u8(v42);
    v47 = vmlal_u16(vmlaq_s32(vmulq_s32(vaddq_s32(vaddq_s32(v26, vextq_s8(v26, v27, 8uLL)), v43), v16), vaddq_s32(vextq_s8(v26, v27, 4uLL), v38), v18), *v40.i8, *v45.i8);
    v48 = vmlal_high_u16(vmlaq_s32(vmulq_s32(vaddq_s32(vaddq_s32(v27, vextq_s8(v27, v28, 8uLL)), v44), v16), vaddq_s32(vextq_s8(v27, v28, 4uLL), v39), v18), v40, v45);
    v20 = v21;
    v49 = __OFSUB__(a6, 8);
    a6 -= 8;
    v23 = v24;
    *result++ = vrshrn_high_n_s32(vrshrn_n_s32(v47, 9uLL), v48, 9uLL);
    *v14++ = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmlaq_s32(vmulq_s32(v43, v16), v38, v18), *v37.i8, *v46.i8), 8uLL), vmlal_high_u16(vmlaq_s32(vmulq_s32(v44, v16), v39, v18), v37, v46), 8uLL);
    if ((a6 < 0) ^ v49 | (a6 == 0))
    {
      break;
    }

    v26 = v28;
    v30 = v32;
    v21 = *v19++;
    v24 = *v22++;
    v27 = *v25;
    v28 = *(v25 + 1);
    v25 += 2;
    v31 = *i;
    v32 = *(i + 1);
  }

  return result;
}

uint8x8_t *sub_277938F30(uint8x8_t *result, uint64_t a2, void *a3, void *a4, int a5, int a6, unsigned int a7)
{
  v7 = vdupq_n_s16(a7);
  v8 = *a3;
  v9 = a3[1];
  v11 = *a4;
  v12 = a4[1];
  v14 = (result + a2);
  if (a6 <= 1)
  {
    v14 = v8;
  }

  v15.i64[0] = 0x5000500050005;
  v15.i64[1] = 0x5000500050005;
  v16.i64[0] = 0x500000005;
  v16.i64[1] = 0x500000005;
  v17.i64[0] = 0x6000600060006;
  v17.i64[1] = 0x6000600060006;
  v18.i64[0] = 0x600000006;
  v18.i64[1] = 0x600000006;
  v20 = *v11;
  v21 = *(v11 + 1);
  v19 = (v11 + 2);
  v23 = *v12;
  v24 = *(v12 + 1);
  v22 = (v12 + 2);
  v26 = *v8;
  v27 = *(v8 + 1);
  v28 = *(v8 + 2);
  v25 = v8 + 3;
  v30 = *v9;
  v31 = *(v9 + 1);
  v32 = *(v9 + 2);
  for (i = v9 + 3; ; i += 2)
  {
    v33 = vextq_s8(v23, v24, 2uLL);
    v34 = vaddq_s16(v23, vextq_s8(v23, v24, 4uLL));
    v35 = vaddq_s16(vextq_s8(v20, v21, 2uLL), v33);
    v36 = vaddq_s16(vaddq_s16(v20, vextq_s8(v20, v21, 4uLL)), v34);
    v37 = vmlaq_s16(vmulq_s16(v34, v15), v33, v17);
    v38 = vextq_s8(v30, v31, 4uLL);
    v39 = vextq_s8(v31, v32, 4uLL);
    v40 = vmlaq_s16(vmulq_s16(v36, v15), v35, v17);
    v41 = vaddq_s32(v30, vextq_s8(v30, v31, 8uLL));
    v42 = vaddq_s32(v31, vextq_s8(v31, v32, 8uLL));
    v43 = vmovl_u8(*result);
    v44 = vmovl_u8(*v14);
    v45 = vmlal_u16(vmlaq_s32(vmulq_s32(vaddq_s32(vaddq_s32(v26, vextq_s8(v26, v27, 8uLL)), v41), v16), vaddq_s32(vextq_s8(v26, v27, 4uLL), v38), v18), *v40.i8, *v43.i8);
    v46 = vmlal_high_u16(vmlaq_s32(vmulq_s32(vaddq_s32(vaddq_s32(v27, vextq_s8(v27, v28, 8uLL)), v42), v16), vaddq_s32(vextq_s8(v27, v28, 4uLL), v39), v18), v40, v43);
    v20 = v21;
    v47 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmlaq_s32(vmulq_s32(v41, v16), v38, v18), *v37.i8, *v44.i8), 8uLL), vmlal_high_u16(vmlaq_s32(vmulq_s32(v42, v16), v39, v18), v37, v44), 8uLL);
    v48 = __OFSUB__(a5, 8);
    a5 -= 8;
    v49 = vshlq_n_s16(v43, 4uLL);
    v50 = vshlq_n_s16(v44, 4uLL);
    v23 = v24;
    v51 = vsubq_s16(vrshrn_high_n_s32(vrshrn_n_s32(v45, 9uLL), v46, 9uLL), v49);
    v52 = vsubq_s16(v47, v50);
    v21 = *v19++;
    v24 = *v22++;
    v53 = vmlal_s16(vshll_n_u16(*v49.i8, 7uLL), *v51.i8, *v7.i8);
    v54 = vmlal_high_s16(vshll_high_n_u16(v49, 7uLL), v51, v7);
    v26 = v28;
    v30 = v32;
    *result++ = vqmovun_s16(vrshrn_high_n_s32(vrshrn_n_s32(v53, 0xBuLL), v54, 0xBuLL));
    *v14++ = vqmovun_s16(vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vshll_n_u16(*v50.i8, 7uLL), *v52.i8, *v7.i8), 0xBuLL), vmlal_high_s16(vshll_high_n_u16(v50, 7uLL), v52, v7), 0xBuLL));
    if ((a5 < 0) ^ v48 | (a5 == 0))
    {
      break;
    }

    v27 = *v25;
    v28 = *(v25 + 1);
    v25 += 2;
    v31 = *i;
    v32 = *(i + 1);
  }

  return result;
}

int8x8_t *sub_2779390C4(int8x8_t *result, uint64_t a2, uint8x8_t *a3, uint64_t a4, int16x8_t *a5, int16x8_t *a6, uint64_t a7, int a8, const __int16 *a9)
{
  v10 = (result + a2);
  v11 = (a3 + a4);
  v12 = a5 + 48;
  v13 = a6 + 48;
  v38 = vld2q_dup_s16(a9);
  v14 = (a7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = 2 * a2 - v14;
  v16 = 2 * a4 - v14;
  v17 = 1536 - 2 * v14;
  v18 = a7;
  if (a8 < 2)
  {
    goto LABEL_6;
  }

  while (1)
  {
    do
    {
      v19 = *a3++;
      v20 = *v11++;
      v21 = *a5++;
      v22 = *v12++;
      v23 = *a6++;
      v24 = *v13++;
      v25 = __OFSUB__(a7, 8);
      LODWORD(a7) = a7 - 8;
      v26 = vshll_n_u8(v19, 4uLL);
      v27 = vshll_n_u8(v20, 4uLL);
      v28 = vsubq_s16(v21, v26);
      v29 = vsubq_s16(v23, v26);
      v30 = vsubq_s16(v22, v27);
      v31 = vsubq_s16(v24, v27);
      *result++ = vqmovun_s16(vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmlal_s16(vshll_n_u16(*v26.i8, 7uLL), *v28.i8, *v38.val[0].i8), *v29.i8, *v38.val[1].i8), 0xBuLL), vmlal_high_s16(vmlal_high_s16(vshll_high_n_u16(v26, 7uLL), v28, v38.val[0]), v29, v38.val[1]), 0xBuLL));
      *v10++ = vqmovun_s16(vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmlal_s16(vshll_n_u16(*v27.i8, 7uLL), *v30.i8, *v38.val[0].i8), *v31.i8, *v38.val[1].i8), 0xBuLL), vmlal_high_s16(vmlal_high_s16(vshll_high_n_u16(v27, 7uLL), v30, v38.val[0]), v31, v38.val[1]), 0xBuLL));
    }

    while (!((a7 < 0) ^ v25 | (a7 == 0)));
    a8 -= 2;
    if (a8 < 1)
    {
      break;
    }

    LODWORD(a7) = v18;
    result = (result + v15);
    v10 = (v10 + v15);
    a3 = (a3 + v16);
    v11 = (v11 + v16);
    a5 = (a5 + v17);
    v12 = (v12 + v17);
    a6 = (a6 + v17);
    v13 = (v13 + v17);
    if (a8 == 1)
    {
LABEL_6:
      v32 = *a3++;
      v33 = *a5++;
      v34 = *a6++;
      v25 = __OFSUB__(a7, 8);
      LODWORD(a7) = a7 - 8;
      v35 = vshll_n_u8(v32, 4uLL);
      v36 = vsubq_s16(v33, v35);
      v37 = vsubq_s16(v34, v35);
      *result++ = vqmovun_s16(vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmlal_s16(vshll_n_u16(*v35.i8, 7uLL), *v36.i8, *v38.val[0].i8), *v37.i8, *v38.val[1].i8), 0xBuLL), vmlal_high_s16(vmlal_high_s16(vshll_high_n_u16(v35, 7uLL), v36, v38.val[0]), v37, v38.val[1]), 0xBuLL));
      if ((a7 < 0) ^ v25 | (a7 == 0))
      {
        return result;
      }
    }
  }

  return result;
}

char *sub_277939214(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, char a8, double a9, double a10, double a11, double a12, int8x16_t a13, unsigned int a14)
{
  v14 = *(a7 + 16);
  *&v15 = vdupq_n_s32(38 - __clz(a14)).u64[0];
  v16 = vzip1q_s64(*a7, v14).u64[0];
  if ((a8 & 4) == 0)
  {
    sub_2779393C0(v16, *v14.i64, v15, a12, a13, a1, a2, a3, a1, a5, a6, a7, a8);
    v107 = (v106 - 1);
    if (!v107)
    {
      return sub_277939544(v42, v43, v49, v44, v45, v46);
    }

    sub_2779393C0(*v49.i8, v102, v103, v104, v105, v42, v43, v44, v45 + v43, v46, v107, v100, v101);
    v115 = (v114 - 1);
    if (v115)
    {
      sub_2779393C0(*v63.i8, v110, v111, v112, v113, v56, v57, v58, v59 + v57, v60, v115, v108, v109);
      v123 = (v122 - 1);
      if (v123)
      {
        v70 = sub_277939628(v70, v71, v72, v73 + v71, v74, v77, v118, v119, v120, v121, v123, v116, v117);
        v131 = (v130 - 1);
        if (v131)
        {
          v70 = sub_277939628(v70, v71, v72, v73, v74, v77, v126, v127, v128, v129, v131, v124, v125);
          v83 = (v132 - 1);
          if (v83)
          {
            goto LABEL_6;
          }
        }
      }

      goto LABEL_15;
    }

LABEL_16:
    v42 = sub_277939544(v56, v57, v63, v58, v59, v60);
    return sub_277939544(v42, v43, v49, v44, v45, v46);
  }

  sub_2779393C0(v16, *v14.i64, v15, a12, a13, a1, a2, 0, a4, a5, a6, a7, a8);
  sub_2779393C0(v25, v26, v27, v28, v29, v18, v19, v20, v17 + v19, v21, v22, v23, v24);
  sub_2779393C0(v37, v38, v39, v40, v41, v30, v31, v36, v30, v32, v33, v34, v35);
  v55 = (v54 - 1);
  if (v55)
  {
    sub_2779393C0(*v49.i8, v50, v51, v52, v53, v42, v43, v44, v45 + v43, v46, v55, v47, v48);
    v69 = (v68 - 1);
    if (v69)
    {
      sub_2779393C0(*v63.i8, v64, v65, v66, v67, v56, v57, v58, v59 + v57, v60, v69, v61, v62);
      v83 = (v82 - 1);
      if (v83)
      {
        v73 += v71;
        do
        {
LABEL_6:
          v70 = sub_277939628(v70, v71, v72, v73, v74, v77, v78, v79, v80, v81, v83, v75, v76);
          v83 = (v85 - 1);
        }

        while (v83);
        if ((v76 & 8) != 0)
        {
          v86 = sub_277939628(v70, v71, 0, v84, v74, v77, v78, v79, v80, v81, v83, v75, v76);
          v42 = sub_277939628(v86, v87, v88, v89, v90, v94, v95, v96, v97, v98, v91, v92, v93);
          return sub_277939544(v42, v43, v49, v44, v45, v46);
        }
      }

LABEL_15:
      v56 = sub_277939544(v70, v71, v77, v72, v73, v74);
      goto LABEL_16;
    }

    goto LABEL_16;
  }

  return sub_277939544(v42, v43, v49, v44, v45, v46);
}

void sub_2779393C0(int16x4_t a1, double a2, double a3, double a4, int8x16_t a5, uint64_t a6, uint64_t a7, unint64_t *a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a13)
  {
    if (a8)
    {
      v22 = *a9;
      v23 = *(a9 + 16);
      a5.i64[1] = *a8;
      v19 = (a9 + 26);
      v21 = vextq_s8(v22, v23, 0xAuLL);
      v20 = vextq_s8(a5, v22, 0xAuLL);
    }

    else
    {
      v18 = (a9 - 6);
      v20 = *v18;
      v21 = *(v18 + 1);
      v19 = v18 + 2;
    }
  }

  else
  {
    v24 = *a9;
    v25 = *(a9 + 16);
    v26 = vdupq_lane_s16(*a9, 0);
    v19 = (a9 + 26);
    v21 = vextq_s8(v24, v25, 0xAuLL);
    v20 = vextq_s8(v26, v24, 0xAuLL);
  }

  v28 = *v19;
  v27 = v19 + 1;
  if ((a13 & 2) == 0)
  {
LABEL_7:
    if (a10 < 19)
    {
      v14.i16[0] = *(v27 + a10 - 22);
      v29 = (&unk_27A718A7A - 2 * a10);
      v14 = vdupq_lane_s16(*v14.i8, 0);
      v20 = vbslq_s8(*v29, v14, v20);
      v21 = vbslq_s8(v29[1], v14, v21);
      v28 = vbslq_s8(v29[2], v14, v28);
    }
  }

  while (1)
  {
    v30 = vextq_s8(v20, v21, 6uLL);
    v31 = vaddq_s16(vextq_s8(v20, v21, 8uLL), vextq_s8(v20, v21, 4uLL));
    v32 = vaddq_s16(vextq_s8(v20, v21, 0xAuLL), vextq_s8(v20, v21, 2uLL));
    v33 = vaddq_s16(vextq_s8(v20, v21, 0xCuLL), v20);
    v34 = vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v30.i8, a1, 3), *v31.i8, a1, 2), *v32.i8, a1, 1), *v33.i8, a1, 0);
    v35 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v30, a1, 3), v31, a1, 2), v32, a1, 1), v33, a1, 0);
    v36 = vextq_s8(v21, v28, 6uLL);
    v37 = vaddq_s16(vextq_s8(v21, v28, 8uLL), vextq_s8(v21, v28, 4uLL));
    v38 = vaddq_s16(vextq_s8(v21, v28, 0xAuLL), vextq_s8(v21, v28, 2uLL));
    v39 = vaddq_s16(vextq_s8(v21, v28, 0xCuLL), v21);
    v40.i64[0] = 0x8000800080008000;
    v40.i64[1] = 0x8000800080008000;
    v41 = __OFSUB__(a10, 16);
    a10 -= 16;
    *v13 = vsubq_s16(vminq_u16(vqmovun_high_s32(vqmovun_s32(vrshlq_s32(vaddq_s32(v34, v16), v15)), vrshlq_s32(vaddq_s32(v35, v16), v15)), v40), v17);
    v13[1] = vsubq_s16(vminq_u16(vqmovun_high_s32(vqmovun_s32(vrshlq_s32(vaddq_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v36.i8, a1, 3), *v37.i8, a1, 2), *v38.i8, a1, 1), *v39.i8, a1, 0), v16), v15)), vrshlq_s32(vaddq_s32(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v36, a1, 3), v37, a1, 2), v38, a1, 1), v39, a1, 0), v16), v15)), v40), v17);
    v13 += 2;
    if ((a10 < 0) ^ v41 | (a10 == 0))
    {
      break;
    }

    v20 = v28;
    v21 = *v27;
    v28 = *(v27 + 1);
    v27 += 2;
    if ((a13 & 2) == 0)
    {
      goto LABEL_7;
    }
  }
}

char *sub_277939544(uint16x8_t *a1, uint64_t a2, int16x8_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v28 = a1;
  do
  {
    v14 = *v6;
    v15 = v6[1];
    v6 += 2;
    v16 = *v7;
    v17 = v7[1];
    v7 += 2;
    v18 = *v8;
    v19 = v8[1];
    v8 += 2;
    v20 = *v9;
    v21 = v9[1];
    v9 += 2;
    v22 = *v10;
    v23 = v10[1];
    v10 += 2;
    v24 = *v11;
    v25 = v11[1];
    v11 += 2;
    v26 = __OFSUB__(a6, 16);
    a6 -= 16;
    *a1 = vminq_u16(vqmovun_high_s32(vqmovun_s32(vrshlq_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmull_laneq_s16(*v14.i8, a3, 4), *v16.i8, a3, 5), *v18.i8, a3, 6), *v20.i8, a3, 7), *v22.i8, a3, 6), *v24.i8, a3, 5), *v24.i8, a3, 4), v12)), vrshlq_s32(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmull_high_laneq_s16(v14, a3, 4), v16, a3, 5), v18, a3, 6), v20, a3, 7), v22, a3, 6), v24, a3, 5), v24, a3, 4), v12)), v13);
    a1[1] = vminq_u16(vqmovun_high_s32(vqmovun_s32(vrshlq_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmull_laneq_s16(*v15.i8, a3, 4), *v17.i8, a3, 5), *v19.i8, a3, 6), *v21.i8, a3, 7), *v23.i8, a3, 6), *v25.i8, a3, 5), *v25.i8, a3, 4), v12)), vrshlq_s32(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmull_high_laneq_s16(v15, a3, 4), v17, a3, 5), v19, a3, 6), v21, a3, 7), v23, a3, 6), v25, a3, 5), v25, a3, 4), v12)), v13);
    a1 += 2;
  }

  while (!((a6 < 0) ^ v26 | (a6 == 0)));
  return v28 + a2;
}

char *sub_277939628(uint16x8_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4, int a5, int16x8_t a6, double a7, double a8, double a9, int8x16_t a10, uint64_t a11, uint64_t a12, char a13)
{
  v70 = a1;
  if (a13)
  {
    if (a3)
    {
      v30 = *a4;
      v31 = *(a4 + 16);
      a10.i64[1] = *a3;
      v27 = (a4 + 26);
      v29 = vextq_s8(v30, v31, 0xAuLL);
      v28 = vextq_s8(a10, v30, 0xAuLL);
    }

    else
    {
      v26 = (a4 - 6);
      v28 = *v26;
      v29 = *(v26 + 1);
      v27 = v26 + 2;
    }
  }

  else
  {
    v32 = *a4;
    v33 = *(a4 + 16);
    v34 = vdupq_lane_s16(*a4, 0);
    v27 = (a4 + 26);
    v29 = vextq_s8(v32, v33, 0xAuLL);
    v28 = vextq_s8(v34, v32, 0xAuLL);
  }

  v36 = *v27;
  v35 = v27 + 1;
  if ((a13 & 2) != 0)
  {
    goto LABEL_9;
  }

LABEL_7:
  if (a5 < 19)
  {
    v20.i16[0] = *(v35 + a5 - 22);
    v37 = (&unk_27A718A7A - 2 * a5);
    v38 = vdupq_lane_s16(*v20.i8, 0);
    v28 = vbslq_s8(*v37, v38, v28);
    v29 = vbslq_s8(v37[1], v38, v29);
    v36 = vbslq_s8(v37[2], v38, v36);
  }

LABEL_9:
  while (1)
  {
    v39 = vextq_s8(v28, v29, 6uLL);
    v40 = vaddq_s16(vextq_s8(v28, v29, 8uLL), vextq_s8(v28, v29, 4uLL));
    v41 = vaddq_s16(vextq_s8(v28, v29, 0xAuLL), vextq_s8(v28, v29, 2uLL));
    v42 = vaddq_s16(vextq_s8(v28, v29, 0xCuLL), v28);
    v43 = vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v39.i8, *a6.i8, 3), *v40.i8, *a6.i8, 2), *v41.i8, *a6.i8, 1), *v42.i8, *a6.i8, 0);
    v44 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v39, *a6.i8, 3), v40, *a6.i8, 2), v41, *a6.i8, 1), v42, *a6.i8, 0);
    v45 = vextq_s8(v29, v36, 6uLL);
    v46 = vaddq_s16(vextq_s8(v29, v36, 8uLL), vextq_s8(v29, v36, 4uLL));
    v47 = vaddq_s16(vextq_s8(v29, v36, 0xAuLL), vextq_s8(v29, v36, 2uLL));
    v48 = vaddq_s16(vextq_s8(v29, v36, 0xCuLL), v29);
    v49 = *v13;
    v50 = v13[1];
    v13 += 2;
    v51.i64[0] = 0x8000800080008000;
    v51.i64[1] = 0x8000800080008000;
    v52 = vaddq_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v45.i8, *a6.i8, 3), *v46.i8, *a6.i8, 2), *v47.i8, *a6.i8, 1), *v48.i8, *a6.i8, 0), v24);
    v53 = vaddq_s32(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v45, *a6.i8, 3), v46, *a6.i8, 2), v47, *a6.i8, 1), v48, *a6.i8, 0), v24);
    v54 = *v14;
    v55 = v14[1];
    v14 += 2;
    v56 = *v15;
    v57 = v15[1];
    v15 += 2;
    v58 = vqmovun_high_s32(vqmovun_s32(vrshlq_s32(vaddq_s32(v43, v24), v23)), vrshlq_s32(vaddq_s32(v44, v24), v23));
    v59 = *v16;
    v60 = v16[1];
    v16 += 2;
    v61 = vminq_u16(vqmovun_high_s32(vqmovun_s32(vrshlq_s32(v52, v23)), vrshlq_s32(v53, v23)), v51);
    v62 = *v17;
    v63 = v17[1];
    v17 += 2;
    v64 = vsubq_s16(vminq_u16(v58, v51), v25);
    v65 = vsubq_s16(v61, v25);
    v66 = *v18;
    v67 = v18[1];
    v18 += 2;
    v20 = vrshlq_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmull_laneq_s16(*v50.i8, a6, 4), *v55.i8, a6, 5), *v57.i8, a6, 6), *v60.i8, a6, 7), *v63.i8, a6, 6), *v67.i8, a6, 5), *v65.i8, a6, 4), v21);
    *v19 = v64;
    v19[1] = v65;
    v19 += 2;
    v68 = __OFSUB__(a5, 16);
    a5 -= 16;
    *a1 = vminq_u16(vqmovun_high_s32(vqmovun_s32(vrshlq_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmull_laneq_s16(*v49.i8, a6, 4), *v54.i8, a6, 5), *v56.i8, a6, 6), *v59.i8, a6, 7), *v62.i8, a6, 6), *v66.i8, a6, 5), *v64.i8, a6, 4), v21)), vrshlq_s32(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmull_high_laneq_s16(v49, a6, 4), v54, a6, 5), v56, a6, 6), v59, a6, 7), v62, a6, 6), v66, a6, 5), v64, a6, 4), v21)), v22);
    a1[1] = vminq_u16(vqmovun_high_s32(vqmovun_s32(v20), vrshlq_s32(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmull_high_laneq_s16(v50, a6, 4), v55, a6, 5), v57, a6, 6), v60, a6, 7), v63, a6, 6), v67, a6, 5), v65, a6, 4), v21)), v22);
    a1 += 2;
    if ((a5 < 0) ^ v68 | (a5 == 0))
    {
      return v70 + a2;
    }

    v28 = v36;
    v29 = *v35;
    v36 = *(v35 + 1);
    v35 += 2;
    if ((a13 & 2) == 0)
    {
      goto LABEL_7;
    }
  }
}

void sub_277939880(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, char a8, double a9, double a10, double a11, double a12, int8x16_t a13, unsigned int a14)
{
  v14 = *(a7 + 16);
  *&v15 = vdupq_n_s32(38 - __clz(a14)).u64[0];
  v16 = vzip1q_s64(*a7, v14).u64[0];
  if ((a8 & 4) != 0)
  {
    sub_2779399F4(v16, *v14.i64, v15, a12, a13, a1, a2, 0, a4, a5, a6, a7, a8);
    sub_2779399F4(v25, v26, v27, v28, v29, v18, v19, v20, v17 + v19, v21, v22, v23, v24);
    sub_2779399F4(v37, v38, v39, v40, v41, v30, v31, v36, v30, v32, v33, v34, v35);
    v55 = (v54 - 1);
    if (v55)
    {
      sub_2779399F4(*v49.i8, v50, v51, v52, v53, v42, v43, v44, v45 + v43, v46, v55, v47, v48);
      v66 = (v65 - 1);
      if (v66)
      {
        v45 += v43;
        do
        {
LABEL_5:
          v56 = sub_277939C00(v56, v43, v44, v45, v57, v60, v61, v62, v63, v64, v66, v58, v59);
          v66 = (v68 - 1);
        }

        while (v66);
        if ((v59 & 8) != 0)
        {
          v69 = sub_277939C00(v56, v43, 0, v67, v57, v60, v61, v62, v63, v64, v66, v58, v59);
          sub_277939C00(v69, v70, v71, v72, v73, v77, v78, v79, v80, v81, v74, v75, v76);
          return;
        }
      }

LABEL_12:
      sub_277939B50(v56, v60, v43, v44, v45, v57);
      v42 = (v56 + v43);
    }
  }

  else
  {
    sub_2779399F4(v16, *v14.i64, v15, a12, a13, a1, a2, a3, a1, a5, a6, a7, a8);
    v89 = (v88 - 1);
    if (v89)
    {
      sub_2779399F4(*v49.i8, v84, v85, v86, v87, v42, v43, v44, v45 + v43, v46, v89, v82, v83);
      v97 = (v96 - 1);
      if (v97)
      {
        v56 = sub_277939C00(v56, v43, v44, v45 + v43, v57, v60, v92, v93, v94, v95, v97, v90, v91);
        v105 = (v104 - 1);
        if (v105)
        {
          v56 = sub_277939C00(v56, v43, v44, v45, v57, v60, v100, v101, v102, v103, v105, v98, v99);
          v66 = (v106 - 1);
          if (v66)
          {
            goto LABEL_5;
          }
        }
      }

      goto LABEL_12;
    }
  }

  sub_277939B50(v42, v49, v43, v44, v45, v46);
}

void sub_2779399F4(int16x4_t a1, double a2, double a3, double a4, int8x16_t a5, uint64_t a6, uint64_t a7, unint64_t *a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a13)
  {
    if (a8)
    {
      v22 = *a9;
      v23 = *(a9 + 16);
      a5.i64[1] = *a8;
      v19 = (a9 + 28);
      v21 = vextq_s8(v22, v23, 0xCuLL);
      v20 = vextq_s8(a5, v22, 0xCuLL);
    }

    else
    {
      v18 = (a9 - 4);
      v20 = *v18;
      v21 = *(v18 + 1);
      v19 = v18 + 2;
    }
  }

  else
  {
    v24 = *a9;
    v25 = *(a9 + 16);
    v26 = vdupq_lane_s16(*a9, 0);
    v19 = (a9 + 28);
    v21 = vextq_s8(v24, v25, 0xCuLL);
    v20 = vextq_s8(v26, v24, 0xCuLL);
  }

  v28 = *v19;
  v27 = v19 + 1;
  if ((a13 & 2) == 0)
  {
LABEL_7:
    if (a10 < 18)
    {
      v14.i16[0] = *(v27 + a10 - 23);
      v29 = (&unk_27A718A7C - 2 * a10);
      v14 = vdupq_lane_s16(*v14.i8, 0);
      v20 = vbslq_s8(*v29, v14, v20);
      v21 = vbslq_s8(v29[1], v14, v21);
      v28 = vbslq_s8(v29[2], v14, v28);
    }
  }

  while (1)
  {
    v30 = vextq_s8(v20, v21, 4uLL);
    v31 = vaddq_s16(vextq_s8(v20, v21, 6uLL), vextq_s8(v20, v21, 2uLL));
    v32 = vaddq_s16(vextq_s8(v20, v21, 8uLL), v20);
    v33 = vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v30.i8, a1, 3), *v31.i8, a1, 2), *v32.i8, a1, 1);
    v34 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v30, a1, 3), v31, a1, 2), v32, a1, 1);
    v35 = vextq_s8(v21, v28, 4uLL);
    v36 = vaddq_s16(vextq_s8(v21, v28, 6uLL), vextq_s8(v21, v28, 2uLL));
    v37 = vaddq_s16(vextq_s8(v21, v28, 8uLL), v21);
    v38.i64[0] = 0x8000800080008000;
    v38.i64[1] = 0x8000800080008000;
    v39 = __OFSUB__(a10, 16);
    a10 -= 16;
    *v13 = vsubq_s16(vminq_u16(vqmovun_high_s32(vqmovun_s32(vrshlq_s32(vaddq_s32(v33, v16), v15)), vrshlq_s32(vaddq_s32(v34, v16), v15)), v38), v17);
    v13[1] = vsubq_s16(vminq_u16(vqmovun_high_s32(vqmovun_s32(vrshlq_s32(vaddq_s32(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v35.i8, a1, 3), *v36.i8, a1, 2), *v37.i8, a1, 1), v16), v15)), vrshlq_s32(vaddq_s32(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v35, a1, 3), v36, a1, 2), v37, a1, 1), v16), v15)), v38), v17);
    v13 += 2;
    if ((a10 < 0) ^ v39 | (a10 == 0))
    {
      break;
    }

    v20 = v28;
    v21 = *v27;
    v28 = *(v27 + 1);
    v27 += 2;
    if ((a13 & 2) == 0)
    {
      goto LABEL_7;
    }
  }
}

void __spoils<X4,X11,X12,X13,X14,Q0,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q27,Q28> sub_277939B50(uint16x8_t *a1, int16x8_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  do
  {
    v12 = *v6;
    v13 = v6[1];
    v6 += 2;
    v14 = *v7;
    v15 = v7[1];
    v7 += 2;
    v16 = *v8;
    v17 = v8[1];
    v8 += 2;
    v18 = *v9;
    v19 = v9[1];
    v9 += 2;
    v20 = __OFSUB__(a6, 16);
    a6 -= 16;
    *a1 = vminq_u16(vqmovun_high_s32(vqmovun_s32(vrshlq_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmull_laneq_s16(*v12.i8, a2, 5), *v14.i8, a2, 6), *v16.i8, a2, 7), *v18.i8, a2, 6), *v18.i8, a2, 5), v10)), vrshlq_s32(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmull_high_laneq_s16(v12, a2, 5), v14, a2, 6), v16, a2, 7), v18, a2, 6), v18, a2, 5), v10)), v11);
    a1[1] = vminq_u16(vqmovun_high_s32(vqmovun_s32(vrshlq_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmull_laneq_s16(*v13.i8, a2, 5), *v15.i8, a2, 6), *v17.i8, a2, 7), *v19.i8, a2, 6), *v19.i8, a2, 5), v10)), vrshlq_s32(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmull_high_laneq_s16(v13, a2, 5), v15, a2, 6), v17, a2, 7), v19, a2, 6), v19, a2, 5), v10)), v11);
    a1 += 2;
  }

  while (!((a6 < 0) ^ v20 | (a6 == 0)));
}

char *sub_277939C00(uint16x8_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4, int a5, int16x8_t a6, double a7, double a8, double a9, int8x16_t a10, uint64_t a11, uint64_t a12, char a13)
{
  v59 = a1;
  if (a13)
  {
    if (a3)
    {
      v28 = *a4;
      v29 = *(a4 + 16);
      a10.i64[1] = *a3;
      v25 = (a4 + 28);
      v27 = vextq_s8(v28, v29, 0xCuLL);
      v26 = vextq_s8(a10, v28, 0xCuLL);
    }

    else
    {
      v24 = (a4 - 4);
      v26 = *v24;
      v27 = *(v24 + 1);
      v25 = v24 + 2;
    }
  }

  else
  {
    v30 = *a4;
    v31 = *(a4 + 16);
    v32 = vdupq_lane_s16(*a4, 0);
    v25 = (a4 + 28);
    v27 = vextq_s8(v30, v31, 0xCuLL);
    v26 = vextq_s8(v32, v30, 0xCuLL);
  }

  v34 = *v25;
  v33 = v25 + 1;
  if ((a13 & 2) != 0)
  {
    goto LABEL_9;
  }

LABEL_7:
  if (a5 < 18)
  {
    v18.i16[0] = *(v33 + a5 - 23);
    v35 = (&unk_27A718A7C - 2 * a5);
    v36 = vdupq_lane_s16(*v18.i8, 0);
    v26 = vbslq_s8(*v35, v36, v26);
    v27 = vbslq_s8(v35[1], v36, v27);
    v34 = vbslq_s8(v35[2], v36, v34);
  }

LABEL_9:
  while (1)
  {
    v37 = vextq_s8(v26, v27, 4uLL);
    v38 = vaddq_s16(vextq_s8(v26, v27, 6uLL), vextq_s8(v26, v27, 2uLL));
    v39 = vaddq_s16(vextq_s8(v26, v27, 8uLL), v26);
    v40 = vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v37.i8, *a6.i8, 3), *v38.i8, *a6.i8, 2), *v39.i8, *a6.i8, 1);
    v41 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v37, *a6.i8, 3), v38, *a6.i8, 2), v39, *a6.i8, 1);
    v42 = vextq_s8(v27, v34, 4uLL);
    v43 = vaddq_s16(vextq_s8(v27, v34, 6uLL), vextq_s8(v27, v34, 2uLL));
    v44 = vaddq_s16(vextq_s8(v27, v34, 8uLL), v27);
    v45 = vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v42.i8, *a6.i8, 3), *v43.i8, *a6.i8, 2), *v44.i8, *a6.i8, 1);
    v46 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v42, *a6.i8, 3), v43, *a6.i8, 2), v44, *a6.i8, 1);
    v47 = *v13;
    v48 = v13[1];
    v13 += 2;
    v18.i32[0] = -2147450880;
    v18.i16[2] = 0x8000;
    v18.i16[3] = 0x8000;
    v18.i16[4] = 0x8000;
    v18.i16[5] = 0x8000;
    v18.i16[6] = 0x8000;
    v18.i16[7] = 0x8000;
    v49 = *v14;
    v50 = v14[1];
    v14 += 2;
    v51 = *v15;
    v52 = v15[1];
    v15 += 2;
    v53 = *v16;
    v54 = v16[1];
    v16 += 2;
    v55 = vsubq_s16(vminq_u16(vqmovun_high_s32(vqmovun_s32(vrshlq_s32(vaddq_s32(v40, v22), v21)), vrshlq_s32(vaddq_s32(v41, v22), v21)), v18), v23);
    v56 = vsubq_s16(vminq_u16(vqmovun_high_s32(vqmovun_s32(vrshlq_s32(vaddq_s32(v45, v22), v21)), vrshlq_s32(vaddq_s32(v46, v22), v21)), v18), v23);
    *v17 = v55;
    v17[1] = v56;
    v17 += 2;
    v57 = __OFSUB__(a5, 16);
    a5 -= 16;
    *a1 = vminq_u16(vqmovun_high_s32(vqmovun_s32(vrshlq_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmull_laneq_s16(*v47.i8, a6, 5), *v49.i8, a6, 6), *v51.i8, a6, 7), *v53.i8, a6, 6), *v55.i8, a6, 5), v19)), vrshlq_s32(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmull_high_laneq_s16(v47, a6, 5), v49, a6, 6), v51, a6, 7), v53, a6, 6), v55, a6, 5), v19)), v20);
    a1[1] = vminq_u16(vqmovun_high_s32(vqmovun_s32(vrshlq_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmull_laneq_s16(*v48.i8, a6, 5), *v50.i8, a6, 6), *v52.i8, a6, 7), *v54.i8, a6, 6), *v56.i8, a6, 5), v19)), vrshlq_s32(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmull_high_laneq_s16(v48, a6, 5), v50, a6, 6), v52, a6, 7), v54, a6, 6), v56, a6, 5), v19)), v20);
    a1 += 2;
    if ((a5 < 0) ^ v57 | (a5 == 0))
    {
      return v59 + a2;
    }

    v26 = v34;
    v27 = *v33;
    v34 = *(v33 + 1);
    v33 += 2;
    if ((a13 & 2) == 0)
    {
      goto LABEL_7;
    }
  }
}

uint32x4_t *sub_277939E00(uint32x4_t *result, int16x8_t *a2, unint64_t *a3, uint64_t a4, int a5, char a6, double a7, double a8, int8x16_t a9)
{
  v10 = a5 + 2;
  if (a6)
  {
    if (a3)
    {
      v15 = *a4;
      v16 = *(a4 + 16);
      a9.i64[1] = *a3;
      v12 = (a4 + 28);
      v14 = vextq_s8(v15, v16, 0xCuLL);
      v13 = vextq_s8(a9, v15, 0xCuLL);
    }

    else
    {
      v11 = (a4 - 4);
      v13 = *v11;
      v14 = *(v11 + 1);
      v12 = (v11 + 2);
    }
  }

  else
  {
    v17 = *a4;
    v18 = *(a4 + 16);
    v19 = vdupq_lane_s16(*a4, 0);
    v12 = (a4 + 28);
    v14 = vextq_s8(v17, v18, 0xCuLL);
    v13 = vextq_s8(v19, v17, 0xCuLL);
  }

  if ((a6 & 2) == 0)
  {
    v9.i16[0] = *(&v12[-2] + v10 - 1);
    v9 = vdupq_lane_s16(*v9.i8, 0);
LABEL_8:
    if (v10 < 10)
    {
      v20 = (&unk_27A718A80 - 2 * v10);
      v13 = vbslq_s8(*v20, v9, v13);
      v14 = vbslq_s8(v20[1], v9, v14);
    }
  }

  while (1)
  {
    v21 = vextq_s8(v13, v14, 2uLL);
    v22 = vextq_s8(v13, v14, 4uLL);
    v23 = __OFSUB__(v10, 8);
    v10 -= 8;
    *a2++ = vaddq_s16(vaddq_s16(v13, v21), v22);
    *result = vmlal_u16(vmlal_u16(vmull_u16(*v13.i8, *v13.i8), *v21.i8, *v21.i8), *v22.i8, *v22.i8);
    result[1] = vmlal_high_u16(vmlal_high_u16(vmull_high_u16(v13, v13), v21, v21), v22, v22);
    result += 2;
    if ((v10 < 0) ^ v23 | (v10 == 0))
    {
      return result;
    }

    v13 = v14;
    v14 = *v12++;
    if ((a6 & 2) == 0)
    {
      goto LABEL_8;
    }
  }
}

uint32x4_t *sub_277939ECC(uint32x4_t *result, int16x8_t *a2, unint64_t *a3, uint64_t a4, int a5, char a6, double a7, double a8, int8x16_t a9)
{
  v10 = a5 + 2;
  if (a6)
  {
    if (a3)
    {
      v15 = *a4;
      v16 = *(a4 + 16);
      a9.i64[1] = *a3;
      v12 = (a4 + 26);
      v14 = vextq_s8(v15, v16, 0xAuLL);
      v13 = vextq_s8(a9, v15, 0xAuLL);
    }

    else
    {
      v11 = (a4 - 6);
      v13 = *v11;
      v14 = *(v11 + 1);
      v12 = (v11 + 2);
    }
  }

  else
  {
    v17 = *a4;
    v18 = *(a4 + 16);
    v19 = vdupq_lane_s16(*a4, 0);
    v12 = (a4 + 26);
    v14 = vextq_s8(v17, v18, 0xAuLL);
    v13 = vextq_s8(v19, v17, 0xAuLL);
  }

  if ((a6 & 2) == 0)
  {
    v9.i16[0] = v12[-2].i16[v10];
    v9 = vdupq_lane_s16(*v9.i8, 0);
LABEL_8:
    if (v10 < 11)
    {
      v20 = (&unk_27A718A7F - 2 * v10);
      v13 = vbslq_s8(*v20, v9, v13);
      v14 = vbslq_s8(v20[1], v9, v14);
    }
  }

  while (1)
  {
    v21 = vextq_s8(v13, v14, 2uLL);
    v22 = vextq_s8(v13, v14, 4uLL);
    v23 = vmlal_u16(vmlal_u16(vmull_u16(*v13.i8, *v13.i8), *v21.i8, *v21.i8), *v22.i8, *v22.i8);
    v24 = vaddq_s16(vaddq_s16(v13, v21), v22);
    v25 = vmlal_high_u16(vmlal_high_u16(vmull_high_u16(v13, v13), v21, v21), v22, v22);
    v26 = vextq_s8(v13, v14, 6uLL);
    v27 = vextq_s8(v13, v14, 8uLL);
    v28 = __OFSUB__(v10, 8);
    v10 -= 8;
    *a2++ = vaddq_s16(vaddq_s16(v24, v26), v27);
    *result = vmlal_u16(vmlal_u16(v23, *v26.i8, *v26.i8), *v27.i8, *v27.i8);
    result[1] = vmlal_high_u16(vmlal_high_u16(v25, v26, v26), v27, v27);
    result += 2;
    if ((v10 < 0) ^ v28 | (v10 == 0))
    {
      return result;
    }

    v13 = v14;
    v14 = *v12++;
    if ((a6 & 2) == 0)
    {
      goto LABEL_8;
    }
  }
}

uint32x4_t *sub_277939FBC(uint32x4_t *result, int16x8_t *a2, uint32x4_t *a3, int16x8_t *a4, unint64_t *a5, uint64_t a6, int a7, char a8, double a9, double a10, int8x16_t a11)
{
  v12 = a7 + 2;
  if (a8)
  {
    if (a5)
    {
      v17 = *a6;
      v18 = *(a6 + 16);
      a11.i64[1] = *a5;
      v14 = (a6 + 26);
      v16 = vextq_s8(v17, v18, 0xAuLL);
      v15 = vextq_s8(a11, v17, 0xAuLL);
    }

    else
    {
      v13 = (a6 - 6);
      v15 = *v13;
      v16 = *(v13 + 1);
      v14 = (v13 + 2);
    }
  }

  else
  {
    v19 = *a6;
    v20 = *(a6 + 16);
    v21 = vdupq_lane_s16(*a6, 0);
    v14 = (a6 + 26);
    v16 = vextq_s8(v19, v20, 0xAuLL);
    v15 = vextq_s8(v21, v19, 0xAuLL);
  }

  if ((a8 & 2) == 0)
  {
    v11.i16[0] = v14[-2].i16[v12];
    v11 = vdupq_lane_s16(*v11.i8, 0);
LABEL_8:
    if (v12 < 11)
    {
      v22 = (&unk_27A718A7F - 2 * v12);
      v15 = vbslq_s8(*v22, v11, v15);
      v16 = vbslq_s8(v22[1], v11, v16);
    }
  }

  while (1)
  {
    v23 = vextq_s8(v15, v16, 2uLL);
    v24 = vextq_s8(v15, v16, 4uLL);
    v25 = vextq_s8(v15, v16, 8uLL);
    v26 = vextq_s8(v15, v16, 6uLL);
    v27 = vaddq_s16(vaddq_s16(v23, v24), v26);
    v28 = vmlal_u16(vmlal_u16(vmull_u16(*v23.i8, *v23.i8), *v24.i8, *v24.i8), *v26.i8, *v26.i8);
    v29 = vmlal_high_u16(vmlal_high_u16(vmull_high_u16(v23, v23), v24, v24), v26, v26);
    *a2++ = v27;
    *result = v28;
    result[1] = v29;
    result += 2;
    v30 = __OFSUB__(v12, 8);
    v12 -= 8;
    *a4++ = vaddq_s16(vaddq_s16(v15, v25), v27);
    *a3 = vmlal_u16(vmlal_u16(v28, *v15.i8, *v15.i8), *v25.i8, *v25.i8);
    a3[1] = vmlal_high_u16(vmlal_high_u16(v29, v15, v15), v25, v25);
    a3 += 2;
    if ((v12 < 0) ^ v30 | (v12 == 0))
    {
      return result;
    }

    v15 = v16;
    v16 = *v14++;
    if ((a8 & 2) == 0)
    {
      goto LABEL_8;
    }
  }
}

int16x8_t *sub_27793A0B4(int16x8_t *result, uint16x8_t *a2, uint64_t a3, void *a4, void *a5, int a6, int a7)
{
  v7 = *a4;
  v8 = a4[1];
  v10 = a4[2];
  v9 = a4[3];
  v11 = *a5;
  v12 = a5[1];
  v14 = a5[2];
  v13 = a5[3];
  v15 = (a2 + a3);
  if (a7 <= 1)
  {
    v15 = a2;
  }

  v16 = result + 48;
  v17.i64[0] = 0x3000300030003;
  v17.i64[1] = 0x3000300030003;
  v18.i64[0] = 0x300000003;
  v18.i64[1] = 0x300000003;
  v20 = *v11;
  v21 = *(v11 + 1);
  v19 = (v11 + 2);
  v23 = *v12;
  v24 = *(v12 + 1);
  v22 = (v12 + 2);
  v26 = *v14;
  v27 = *(v14 + 1);
  v25 = (v14 + 2);
  v29 = *v13;
  v30 = *(v13 + 1);
  v28 = (v13 + 2);
  v32 = *v7;
  v33 = *(v7 + 1);
  v34 = *(v7 + 2);
  v31 = v7 + 3;
  v36 = *v8;
  v37 = *(v8 + 1);
  v38 = *(v8 + 2);
  v35 = v8 + 3;
  v40 = *v10;
  v41 = *(v10 + 1);
  v42 = *(v10 + 2);
  v39 = v10 + 3;
  v44 = *v9;
  v45 = *(v9 + 1);
  v46 = *(v9 + 2);
  for (i = v9 + 3; ; i += 2)
  {
    v47 = vextq_s8(v23, v24, 2uLL);
    v48 = vextq_s8(v26, v27, 2uLL);
    v49 = vextq_s8(v23, v24, 4uLL);
    v50 = vextq_s8(v26, v27, 4uLL);
    v51 = vaddq_s16(vaddq_s16(v26, v47), v50);
    v52 = vmlaq_s16(vshlq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v23, vextq_s8(v20, v21, 2uLL)), v49), vaddq_s16(v47, v48)), 2uLL), vaddq_s16(vaddq_s16(v20, vextq_s8(v20, v21, 4uLL)), vaddq_s16(v26, v50)), v17);
    v53 = vmlaq_s16(vshlq_n_s16(vaddq_s16(v51, vaddq_s16(v48, vextq_s8(v29, v30, 2uLL))), 2uLL), vaddq_s16(vaddq_s16(v23, v49), vaddq_s16(v29, vextq_s8(v29, v30, 4uLL))), v17);
    v54 = vextq_s8(v36, v37, 4uLL);
    v55 = vextq_s8(v37, v38, 4uLL);
    v56 = vextq_s8(v36, v37, 8uLL);
    v57 = vextq_s8(v37, v38, 8uLL);
    v58 = vextq_s8(v40, v41, 4uLL);
    v59 = vextq_s8(v41, v42, 4uLL);
    v60 = vaddq_s32(vaddq_s32(vextq_s8(v32, v33, 4uLL), v36), vaddq_s32(v54, v56));
    v61 = vaddq_s32(vaddq_s32(vextq_s8(v33, v34, 4uLL), v37), vaddq_s32(v55, v57));
    v62 = vaddq_s32(v36, v56);
    v63 = vaddq_s32(v37, v57);
    v64 = vaddq_s32(v40, v54);
    v65 = vaddq_s32(v41, v55);
    v66 = vextq_s8(v40, v41, 8uLL);
    v67 = vextq_s8(v41, v42, 8uLL);
    v68 = vaddq_s32(vaddq_s32(vaddq_s32(v32, vextq_s8(v32, v33, 8uLL)), v40), v66);
    v69 = vaddq_s32(vaddq_s32(vaddq_s32(v33, vextq_s8(v33, v34, 8uLL)), v41), v67);
    v70 = vaddq_s32(v66, vextq_s8(v44, v45, 4uLL));
    v71 = vaddq_s32(v67, vextq_s8(v45, v46, 4uLL));
    v72 = vaddq_s32(v62, vaddq_s32(v44, vextq_s8(v44, v45, 8uLL)));
    v73 = vaddq_s32(v63, vaddq_s32(v45, vextq_s8(v45, v46, 8uLL)));
    v74 = *a2++;
    v75 = *v15++;
    v76 = vmlal_u16(vmlaq_s32(vshlq_n_s32(vaddq_s32(vaddq_s32(v64, v58), v70), 2uLL), v72, v18), *v53.i8, *v75.i8);
    v77 = vmlal_high_u16(vmlaq_s32(vshlq_n_s32(vaddq_s32(vaddq_s32(v65, v59), v71), 2uLL), v73, v18), v53, v75);
    v20 = v21;
    v78 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmlaq_s32(vshlq_n_s32(vaddq_s32(v60, v58), 2uLL), v68, v18), *v52.i8, *v74.i8), 9uLL), vmlal_high_u16(vmlaq_s32(vshlq_n_s32(vaddq_s32(v61, v59), 2uLL), v69, v18), v52, v74), 9uLL);
    v23 = v24;
    v79 = __OFSUB__(a6, 8);
    a6 -= 8;
    v26 = v27;
    *result++ = v78;
    v29 = v30;
    *v16++ = vrshrn_high_n_s32(vrshrn_n_s32(v76, 9uLL), v77, 9uLL);
    if ((a6 < 0) ^ v79 | (a6 == 0))
    {
      break;
    }

    v32 = v34;
    v36 = v38;
    v40 = v42;
    v44 = v46;
    v21 = *v19++;
    v24 = *v22++;
    v27 = *v25++;
    v30 = *v28++;
    v33 = *v31;
    v34 = *(v31 + 1);
    v31 += 2;
    v37 = *v35;
    v38 = *(v35 + 1);
    v35 += 2;
    v41 = *v39;
    v42 = *(v39 + 1);
    v39 += 2;
    v45 = *i;
    v46 = *(i + 1);
  }

  return result;
}

uint16x4_t *sub_27793A2D8(uint16x4_t *result, void *a2, void *a3, int a4, unsigned int a5, unsigned int a6)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = *a3;
  v10 = a3[1];
  v11 = a3[2];
  v12 = vdupq_n_s16(a5);
  v13 = vdupq_n_s16(a6);
  v14.i64[0] = 0x3000300030003;
  v14.i64[1] = 0x3000300030003;
  v15.i64[0] = 0x300000003;
  v15.i64[1] = 0x300000003;
  v17 = *v9;
  v18 = *(v9 + 1);
  v16 = (v9 + 2);
  v20 = *v10;
  v21 = *(v10 + 1);
  v19 = (v10 + 2);
  v23 = *v11;
  v24 = *(v11 + 1);
  v22 = (v11 + 2);
  v26 = *v6;
  v27 = *(v6 + 1);
  v28 = *(v6 + 2);
  v25 = v6 + 3;
  v30 = *v7;
  v31 = *(v7 + 1);
  v32 = *(v7 + 2);
  v29 = v7 + 3;
  v34 = *v8;
  v35 = *(v8 + 1);
  v36 = *(v8 + 2);
  for (i = v8 + 3; ; i += 2)
  {
    v37 = vmlaq_s16(vshlq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v20, vextq_s8(v17, v18, 2uLL)), vaddq_s16(vextq_s8(v20, v21, 2uLL), vextq_s8(v23, v24, 2uLL))), vextq_s8(v20, v21, 4uLL)), 2uLL), vaddq_s16(vaddq_s16(v17, vextq_s8(v17, v18, 4uLL)), vaddq_s16(v23, vextq_s8(v23, v24, 4uLL))), v14);
    v17 = v18;
    v38 = vmlal_u16(vmlaq_s32(vshlq_n_s32(vaddq_s32(vaddq_s32(vaddq_s32(vextq_s8(v26, v27, 4uLL), v30), vaddq_s32(vextq_s8(v30, v31, 4uLL), vextq_s8(v30, v31, 8uLL))), vextq_s8(v34, v35, 4uLL)), 2uLL), vaddq_s32(vaddq_s32(vaddq_s32(v26, vextq_s8(v26, v27, 8uLL)), v34), vextq_s8(v34, v35, 8uLL)), v15), *v37.i8, *result);
    v39 = vmlal_high_u16(vmlaq_s32(vshlq_n_s32(vaddq_s32(vaddq_s32(vaddq_s32(vextq_s8(v27, v28, 4uLL), v31), vaddq_s32(vextq_s8(v31, v32, 4uLL), vextq_s8(v31, v32, 8uLL))), vextq_s8(v35, v36, 4uLL)), 2uLL), vaddq_s32(vaddq_s32(vaddq_s32(v27, vextq_s8(v27, v28, 8uLL)), v35), vextq_s8(v35, v36, 8uLL)), v15), v37, *result->i8);
    v20 = v21;
    v40 = __OFSUB__(a4, 8);
    a4 -= 8;
    v41 = vshlq_n_s16(*result->i8, 4uLL);
    v23 = v24;
    v42 = vsubq_s16(vrshrn_high_n_s32(vrshrn_n_s32(v38, 9uLL), v39, 9uLL), v41);
    v18 = *v16++;
    v21 = *v19++;
    v24 = *v22++;
    v26 = v28;
    v43 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_s16(vshll_n_u16(*v41.i8, 7uLL), *v42.i8, *v12.i8), 0xBuLL), vmlal_high_s16(vshll_high_n_u16(v41, 7uLL), v42, v12), 0xBuLL), v13);
    v30 = v32;
    v34 = v36;
    *result->i8 = v43;
    result += 2;
    if ((a4 < 0) ^ v40 | (a4 == 0))
    {
      break;
    }

    v27 = *v25;
    v28 = *(v25 + 1);
    v25 += 2;
    v31 = *v29;
    v32 = *(v29 + 1);
    v29 += 2;
    v35 = *i;
    v36 = *(i + 1);
  }

  return result;
}

int16x8_t *sub_27793A440(int16x8_t *result, uint16x8_t *a2, uint64_t a3, void *a4, void *a5, int a6, int a7)
{
  v7 = *a4;
  v8 = a4[1];
  v10 = *a5;
  v11 = a5[1];
  v13 = (a2 + a3);
  if (a7 <= 1)
  {
    v13 = a2;
  }

  v14 = result + 48;
  v15.i64[0] = 0x5000500050005;
  v15.i64[1] = 0x5000500050005;
  v16.i64[0] = 0x500000005;
  v16.i64[1] = 0x500000005;
  v17.i64[0] = 0x6000600060006;
  v17.i64[1] = 0x6000600060006;
  v18.i64[0] = 0x600000006;
  v18.i64[1] = 0x600000006;
  v20 = *v10;
  v21 = *(v10 + 1);
  v19 = (v10 + 2);
  v23 = *v11;
  v24 = *(v11 + 1);
  v22 = (v11 + 2);
  v26 = *v7;
  v27 = *(v7 + 1);
  v28 = *(v7 + 2);
  v25 = v7 + 3;
  v30 = *v8;
  v31 = *(v8 + 1);
  v32 = *(v8 + 2);
  for (i = v8 + 3; ; i += 2)
  {
    v33 = vextq_s8(v23, v24, 2uLL);
    v34 = vaddq_s16(v23, vextq_s8(v23, v24, 4uLL));
    v35 = vaddq_s16(vextq_s8(v20, v21, 2uLL), v33);
    v36 = vaddq_s16(vaddq_s16(v20, vextq_s8(v20, v21, 4uLL)), v34);
    v37 = vmlaq_s16(vmulq_s16(v34, v15), v33, v17);
    v38 = vextq_s8(v30, v31, 4uLL);
    v39 = vextq_s8(v31, v32, 4uLL);
    v40 = vmlaq_s16(vmulq_s16(v36, v15), v35, v17);
    v41 = *a2++;
    v42 = *v13++;
    v43 = vaddq_s32(v30, vextq_s8(v30, v31, 8uLL));
    v44 = vaddq_s32(v31, vextq_s8(v31, v32, 8uLL));
    v45 = vmlal_u16(vmlaq_s32(vmulq_s32(vaddq_s32(vaddq_s32(v26, vextq_s8(v26, v27, 8uLL)), v43), v16), vaddq_s32(vextq_s8(v26, v27, 4uLL), v38), v18), *v40.i8, *v41.i8);
    v46 = vmlal_high_u16(vmlaq_s32(vmulq_s32(vaddq_s32(vaddq_s32(v27, vextq_s8(v27, v28, 8uLL)), v44), v16), vaddq_s32(vextq_s8(v27, v28, 4uLL), v39), v18), v40, v41);
    v20 = v21;
    v47 = __OFSUB__(a6, 8);
    a6 -= 8;
    v23 = v24;
    *result++ = vrshrn_high_n_s32(vrshrn_n_s32(v45, 9uLL), v46, 9uLL);
    *v14++ = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmlaq_s32(vmulq_s32(v43, v16), v38, v18), *v37.i8, *v42.i8), 8uLL), vmlal_high_u16(vmlaq_s32(vmulq_s32(v44, v16), v39, v18), v37, v42), 8uLL);
    if ((a6 < 0) ^ v47 | (a6 == 0))
    {
      break;
    }

    v26 = v28;
    v30 = v32;
    v21 = *v19++;
    v24 = *v22++;
    v27 = *v25;
    v28 = *(v25 + 1);
    v25 += 2;
    v31 = *i;
    v32 = *(i + 1);
  }

  return result;
}

uint16x4_t *sub_27793A58C(uint16x4_t *result, uint64_t a2, void *a3, void *a4, int a5, int a6, unsigned int a7, unsigned int a8)
{
  v8 = vdupq_n_s16(a7);
  v9 = vdupq_n_s16(a8);
  v10 = *a3;
  v11 = a3[1];
  v13 = *a4;
  v14 = a4[1];
  v16 = (result + a2);
  if (a6 <= 1)
  {
    v16 = v10;
  }

  v17.i64[0] = 0x5000500050005;
  v17.i64[1] = 0x5000500050005;
  v18.i64[0] = 0x500000005;
  v18.i64[1] = 0x500000005;
  v19.i64[0] = 0x6000600060006;
  v19.i64[1] = 0x6000600060006;
  v20.i64[0] = 0x600000006;
  v20.i64[1] = 0x600000006;
  v22 = *v13;
  v23 = *(v13 + 1);
  v21 = (v13 + 2);
  v25 = *v14;
  v26 = *(v14 + 1);
  v24 = (v14 + 2);
  v28 = *v10;
  v29 = *(v10 + 1);
  v30 = *(v10 + 2);
  v27 = v10 + 3;
  v32 = *v11;
  v33 = *(v11 + 1);
  v34 = *(v11 + 2);
  for (i = v11 + 3; ; i += 2)
  {
    v35 = vextq_s8(v25, v26, 2uLL);
    v36 = vaddq_s16(v25, vextq_s8(v25, v26, 4uLL));
    v37 = vaddq_s16(vextq_s8(v22, v23, 2uLL), v35);
    v38 = vaddq_s16(vaddq_s16(v22, vextq_s8(v22, v23, 4uLL)), v36);
    v39 = vmlaq_s16(vmulq_s16(v36, v17), v35, v19);
    v40 = vextq_s8(v32, v33, 4uLL);
    v41 = vextq_s8(v33, v34, 4uLL);
    v42 = vmlaq_s16(vmulq_s16(v38, v17), v37, v19);
    v43 = vaddq_s32(v32, vextq_s8(v32, v33, 8uLL));
    v44 = vaddq_s32(v33, vextq_s8(v33, v34, 8uLL));
    v45 = vmlal_u16(vmlaq_s32(vmulq_s32(vaddq_s32(vaddq_s32(v28, vextq_s8(v28, v29, 8uLL)), v43), v18), vaddq_s32(vextq_s8(v28, v29, 4uLL), v40), v20), *v42.i8, *result);
    v46 = vmlal_high_u16(vmlaq_s32(vmulq_s32(vaddq_s32(vaddq_s32(v29, vextq_s8(v29, v30, 8uLL)), v44), v18), vaddq_s32(vextq_s8(v29, v30, 4uLL), v41), v20), v42, *result->i8);
    v22 = v23;
    v47 = __OFSUB__(a5, 8);
    a5 -= 8;
    v48 = vshlq_n_s16(*result->i8, 4uLL);
    v49 = vshlq_n_s16(*v16, 4uLL);
    v25 = v26;
    v50 = vsubq_s16(vrshrn_high_n_s32(vrshrn_n_s32(v45, 9uLL), v46, 9uLL), v48);
    v51 = vsubq_s16(vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmlaq_s32(vmulq_s32(v43, v18), v40, v20), *v39.i8, *v16->i8), 8uLL), vmlal_high_u16(vmlaq_s32(vmulq_s32(v44, v18), v41, v20), v39, *v16), 8uLL), v49);
    v23 = *v21++;
    v26 = *v24++;
    v52 = vmlal_s16(vshll_n_u16(*v48.i8, 7uLL), *v50.i8, *v8.i8);
    v53 = vmlal_high_s16(vshll_high_n_u16(v48, 7uLL), v50, v8);
    v28 = v30;
    v32 = v34;
    *result->i8 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(v52, 0xBuLL), v53, 0xBuLL), v9);
    result += 2;
    *v16++ = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_s16(vshll_n_u16(*v49.i8, 7uLL), *v51.i8, *v8.i8), 0xBuLL), vmlal_high_s16(vshll_high_n_u16(v49, 7uLL), v51, v8), 0xBuLL), v9);
    if ((a5 < 0) ^ v47 | (a5 == 0))
    {
      break;
    }

    v29 = *v27;
    v30 = *(v27 + 1);
    v27 += 2;
    v33 = *i;
    v34 = *(i + 1);
  }

  return result;
}

uint16x8_t *sub_27793A718(uint16x8_t *result, uint64_t a2, int16x8_t *a3, uint64_t a4, int16x8_t *a5, int16x8_t *a6, uint64_t a7, int a8, const __int16 *a9, unsigned int a10)
{
  v11 = (result + a2);
  v12 = (a3 + a4);
  v13 = a5 + 48;
  v14 = a6 + 48;
  v40 = vld2q_dup_s16(a9);
  v15 = vdupq_n_s16(a10);
  v16 = (a7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = 2 * a2 - 2 * v16;
  v18 = 2 * a4 - 2 * v16;
  v19 = 1536 - 2 * v16;
  v20 = a7;
  if (a8 < 2)
  {
    goto LABEL_6;
  }

  while (1)
  {
    do
    {
      v21 = *a3++;
      v22 = *v12++;
      v23 = *a5++;
      v24 = *v13++;
      v25 = *a6++;
      v26 = *v14++;
      v27 = __OFSUB__(a7, 8);
      LODWORD(a7) = a7 - 8;
      v28 = vshlq_n_s16(v21, 4uLL);
      v29 = vshlq_n_s16(v22, 4uLL);
      v30 = vsubq_s16(v23, v28);
      v31 = vsubq_s16(v25, v28);
      v32 = vsubq_s16(v24, v29);
      v33 = vsubq_s16(v26, v29);
      *result++ = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_s16(vmlal_s16(vshll_n_u16(*v28.i8, 7uLL), *v30.i8, *v40.val[0].i8), *v31.i8, *v40.val[1].i8), 0xBuLL), vmlal_high_s16(vmlal_high_s16(vshll_high_n_u16(v28, 7uLL), v30, v40.val[0]), v31, v40.val[1]), 0xBuLL), v15);
      *v11++ = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_s16(vmlal_s16(vshll_n_u16(*v29.i8, 7uLL), *v32.i8, *v40.val[0].i8), *v33.i8, *v40.val[1].i8), 0xBuLL), vmlal_high_s16(vmlal_high_s16(vshll_high_n_u16(v29, 7uLL), v32, v40.val[0]), v33, v40.val[1]), 0xBuLL), v15);
    }

    while (!((a7 < 0) ^ v27 | (a7 == 0)));
    a8 -= 2;
    if (a8 < 1)
    {
      break;
    }

    LODWORD(a7) = v20;
    result = (result + v17);
    v11 = (v11 + v17);
    a3 = (a3 + v18);
    v12 = (v12 + v18);
    a5 = (a5 + v19);
    v13 = (v13 + v19);
    a6 = (a6 + v19);
    v14 = (v14 + v19);
    if (a8 == 1)
    {
LABEL_6:
      v34 = *a3++;
      v35 = *a5++;
      v36 = *a6++;
      v27 = __OFSUB__(a7, 8);
      LODWORD(a7) = a7 - 8;
      v37 = vshlq_n_s16(v34, 4uLL);
      v38 = vsubq_s16(v35, v37);
      v39 = vsubq_s16(v36, v37);
      *result++ = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_s16(vmlal_s16(vshll_n_u16(*v37.i8, 7uLL), *v38.i8, *v40.val[0].i8), *v39.i8, *v40.val[1].i8), 0xBuLL), vmlal_high_s16(vmlal_high_s16(vshll_high_n_u16(v37, 7uLL), v38, v40.val[0]), v39, v40.val[1]), 0xBuLL), v15);
      if ((a7 < 0) ^ v27 | (a7 == 0))
      {
        return result;
      }
    }
  }

  return result;
}

__int32 *sub_27793A86C(__int32 *result, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  do
  {
    v7.i32[0] = *result;
    v6 = (result + a2);
    v7.i32[1] = *v6;
    v8 = (v6 + a2);
    v10.i32[0] = *v8;
    v9 = (v8 + a2);
    v10.i32[1] = *v9;
    v11 = __OFSUB__(a5, 4);
    a5 -= 4;
    v12 = (v9 + a2 + -4 * a2);
    v13 = vqmovun_s16(vaddw_u8(v5, v7));
    *v12 = v13.i32[0];
    v14 = (v12 + a2);
    v15 = vqmovun_s16(vaddw_u8(v5, v10));
    *v14 = v13.i32[1];
    v16 = (v14 + a2);
    *v16 = v15.i32[0];
    v17 = (v16 + a2);
    *v17 = v15.i32[1];
    result = (v17 + a2);
  }

  while (!((a5 < 0) ^ v11 | (a5 == 0)));
  return result;
}

uint8x8_t *sub_27793A8AC(uint8x8_t *result, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  do
  {
    v7 = *result;
    v6 = (result + a2);
    v9 = *v6;
    v8 = (v6 + a2);
    v11 = *v8;
    v10 = (v8 + a2);
    v12 = *v10;
    v13 = (v10 + a2 + -4 * a2);
    v14 = __OFSUB__(a5, 4);
    a5 -= 4;
    *v13 = vqmovun_s16(vaddw_u8(v5, v7));
    v15 = (v13 + a2);
    *v15 = vqmovun_s16(vaddw_u8(v5, v9));
    v16 = (v15 + a2);
    *v16 = vqmovun_s16(vaddw_u8(v5, v11));
    v17 = (v16 + a2);
    *v17 = vqmovun_s16(vaddw_u8(v5, v12));
    result = (v17 + a2);
  }

  while (!((a5 < 0) ^ v14 | (a5 == 0)));
  return result;
}

uint8x16_t *sub_27793A8FC(uint8x16_t *result, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  do
  {
    v7 = *result;
    v6 = (result + a2);
    v9 = *v6;
    v8 = (v6 + a2);
    v11 = *v8;
    v10 = (v8 + a2);
    v12 = __OFSUB__(a5, 4);
    a5 -= 4;
    v13 = *v10;
    v14 = &v10->i8[a2 + -4 * a2];
    *v14 = vqmovun_high_s16(vqmovun_s16(vaddw_u8(v5, *v7.i8)), vaddw_high_u8(v5, v7));
    v15 = (v14 + a2);
    *v15 = vqmovun_high_s16(vqmovun_s16(vaddw_u8(v5, *v9.i8)), vaddw_high_u8(v5, v9));
    v16 = (v15 + a2);
    *v16 = vqmovun_high_s16(vqmovun_s16(vaddw_u8(v5, *v11.i8)), vaddw_high_u8(v5, v11));
    v17 = (v16 + a2);
    *v17 = vqmovun_high_s16(vqmovun_s16(vaddw_u8(v5, *v13.i8)), vaddw_high_u8(v5, v13));
    result = &v17->i8[a2];
  }

  while (!((a5 < 0) ^ v12 | (a5 == 0)));
  return result;
}

uint8x16_t *sub_27793A96C(uint8x16_t *result, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  do
  {
    v7 = *result;
    v8 = result[1];
    v6 = (result + a2);
    v9 = __OFSUB__(a5, 2);
    a5 -= 2;
    v10 = *v6;
    v11 = v6[1];
    v12 = (v6 - a2);
    *v12 = vqmovun_high_s16(vqmovun_s16(vaddw_u8(v5, *v7.i8)), vaddw_high_u8(v5, v7));
    v12[1] = vqmovun_high_s16(vqmovun_s16(vaddw_u8(v5, *v8.i8)), vaddw_high_u8(v5, v8));
    v13 = (v12 + a2);
    *v13 = vqmovun_high_s16(vqmovun_s16(vaddw_u8(v5, *v10.i8)), vaddw_high_u8(v5, v10));
    v13[1] = vqmovun_high_s16(vqmovun_s16(vaddw_u8(v5, *v11.i8)), vaddw_high_u8(v5, v11));
    result = &v13->i8[a2];
  }

  while (!((a5 < 0) ^ v9 | (a5 == 0)));
  return result;
}

uint8x8_t *sub_27793A9CC(uint8x8_t *result, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  do
  {
    v6 = __OFSUB__(a5--, 1);
    v7 = vqmovun_high_s16(vqmovun_s16(vaddw_u8(v5, result[2])), vaddw_high_u8(v5, *result[2].i8));
    v8 = vqmovun_high_s16(vqmovun_s16(vaddw_u8(v5, result[4])), vaddw_high_u8(v5, *result[4].i8));
    v9 = vqmovun_high_s16(vqmovun_s16(vaddw_u8(v5, result[6])), vaddw_high_u8(v5, *result[6].i8));
    *result->i8 = vqmovun_high_s16(vqmovun_s16(vaddw_u8(v5, *result)), vaddw_high_u8(v5, *result->i8));
    *result[2].i8 = v7;
    *result[4].i8 = v8;
    *result[6].i8 = v9;
    result = (result + a2);
  }

  while (!((a5 < 0) ^ v6 | (a5 == 0)));
  return result;
}

void sub_27793AD3C(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  *a3 = 0u;
  a3[1] = 0u;
  JUMPOUT(0x27793AE34);
}

char *sub_27793ADDC(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, _OWORD *))
{
  *a3 = 0u;
  v5 = a5(a1, a2, a3 + 1);
  *v6 = v7;
  v9 = v8(v5);
  v12.i32[0] = *v9;
  v11 = (v9 + v10);
  v12.i32[1] = *v11;
  v13 = (v11 + v10);
  v15.i64[1] = v14;
  v17.i64[1] = v16;
  v19.i32[0] = *v13;
  v18 = (v13 + v10);
  v19.i32[1] = *v18;
  v20 = (v18 + v10 + -4 * v10);
  v21 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v15, 4uLL), v12));
  *v20 = v21.i32[0];
  v22 = (v20 + v10);
  v23 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v17, 4uLL), v19));
  *v22 = v21.i32[1];
  v24 = (v22 + v10);
  *v24 = v23.i32[0];
  v25 = (v24 + v10);
  *v25 = v23.i32[1];
  return v25 + v10;
}

char *sub_27793AE5C(uint64_t a1, uint64_t a2, __int16 *a3, uint64_t a4)
{
  if (!a4)
  {
    vld1q_dup_s16(a3);
    *a3 = 0;
    JUMPOUT(0x27793AE34);
  }

  return sub_27793ADDC(a1, a2, a3, a4, sub_27793AA20);
}

void sub_27793B7EC(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  *a3 = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  v3 = a3 + 4;
  *v3 = 0u;
  v3[1] = 0u;
  v3[2] = 0u;
  v3[3] = 0u;
  JUMPOUT(0x27793B854);
}

char *sub_27793B810(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t (*a5)(void))
{
  *a3 = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  v5 = a3 + 4;
  *v5 = 0u;
  v5[1] = 0u;
  v5[2] = 0u;
  v5[3] = 0u;
  v6 = a5();
  v8 = v7(v6);
  v11 = (v8 + v9 + v9);
  v14 = *v11;
  v13 = (v11 + v9);
  v17 = *v13;
  v16 = (v13 + v9);
  v20 = *v16;
  v19 = (v16 + v9);
  v22 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v12, 4uLL), *(v8 + v9)));
  *v8 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v10, 4uLL), *v8));
  v23 = (v8 + v9);
  v25 = *v19;
  v24 = (v19 + v9);
  *v23 = v22;
  v27 = (v23 + v9);
  v28 = *v24;
  *v27 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v15, 4uLL), v14));
  v30 = (v27 + v9);
  v31 = *(v24 + v9);
  *v30 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v18, 4uLL), v17));
  v33 = (v30 + v9);
  *v33 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v21, 4uLL), v20));
  v34 = (v33 + v9);
  *v34 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v26, 4uLL), v25));
  v35 = (v34 + v9);
  *v35 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v29, 4uLL), v28));
  v36 = (v35 + v9);
  *v36 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v32, 4uLL), v31));
  return v36 + v9;
}

uint8x8_t *sub_27793B960(uint8x8_t *a1, uint64_t a2, __int16 *a3, uint64_t a4)
{
  if (a4)
  {
    return sub_27793B810(a1, a2, a3, a4, sub_27793AF94);
  }

  vld1q_dup_s16(a3);
  *a3 = 0;
  return sub_27793A8AC(a1, a2, a3, a4, 8);
}

char *sub_27793BA7C(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t (*a5)(void))
{
  *a3 = 0u;
  a3[1] = 0u;
  v5 = a3 + 2;
  *v5 = 0u;
  v5[1] = 0u;
  v6 = a5();
  v8 = v7(v6);
  v11 = (v8 + v9 + v9);
  v13 = *v11;
  v15 = *(v11 + v9);
  v17 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v12, 4uLL), *(v8 + v9)));
  *v8 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v10, 4uLL), *v8));
  v18 = (v8 + v9);
  *v18 = v17;
  v19 = (v18 + v9);
  *v19 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v14, 4uLL), v13));
  v20 = (v19 + v9);
  *v20 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v16, 4uLL), v15));
  return v20 + v9;
}

char *sub_27793BB6C(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t (*a5)(void))
{
  *a3 = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  v5 = a5();
  v7 = v6(v5);
  v9.i32[0] = *v7;
  v11.i64[1] = v10;
  v9.i32[1] = *(v7 + v8);
  v12 = (v7 + v8 + v8);
  v14.i32[0] = *v12;
  v13 = (v12 + v8);
  v16.i64[1] = v15;
  v14.i32[1] = *v13;
  v17 = (v13 + v8);
  v19.i32[0] = *v17;
  v18 = (v17 + v8);
  v21.i64[1] = v20;
  v19.i32[1] = *v18;
  v22 = (v18 + v8);
  v23.i32[0] = *v22;
  v25.i64[1] = v24;
  v23.i32[1] = *(v22 + v8);
  v26 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v11, 4uLL), v9));
  *v7 = v26.i32[0];
  v27 = (v7 + v8);
  v28 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v16, 4uLL), v14));
  *v27 = v26.i32[1];
  v29 = (v27 + v8);
  *v29 = v28.i32[0];
  v30 = (v29 + v8);
  v31 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v21, 4uLL), v19));
  *v30 = v28.i32[1];
  v32 = (v30 + v8);
  *v32 = v31.i32[0];
  v33 = (v32 + v8);
  v34 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v25, 4uLL), v23));
  *v33 = v31.i32[1];
  v35 = (v33 + v8);
  *v35 = v34.i32[0];
  v36 = (v35 + v8);
  *v36 = v34.i32[1];
  return v36 + v8;
}

__int32 *sub_27793BC5C(__int32 *a1, uint64_t a2, __int16 *a3, uint64_t a4)
{
  if (a4)
  {
    return sub_27793BB6C(a1, a2, a3, a4, sub_27793AA70);
  }

  vld1q_dup_s16(a3);
  *a3 = 0;
  return sub_27793A86C(a1, a2, a3, a4, 8);
}

uint8x8_t *sub_27793BD88(uint8x8_t *a1, uint64_t a2, __int16 *a3, uint64_t a4)
{
  if (a4)
  {
    return sub_27793BA7C(a1, a2, a3, a4, sub_27793B0D8);
  }

  vld1q_dup_s16(a3);
  *a3 = 0;
  return sub_27793A8AC(a1, a2, a3, a4, 4);
}

void sub_27793D508(void (*a1)(void)@<X4>, _OWORD *a2@<X7>, uint64_t a3@<X8>)
{
  *a2 = 0u;
  v3 = (a2 + a3);
  *v3 = 0u;
  v4 = (v3 + a3);
  *v4 = 0u;
  v5 = (v4 + a3);
  *v5 = 0u;
  v6 = (v5 + a3);
  *v6 = 0u;
  v7 = (v6 + a3);
  *v7 = 0u;
  v8 = (v7 + a3);
  *v8 = 0u;
  v9 = (v8 + a3);
  *v9 = 0u;
  v10 = (v9 + a3);
  *v10 = 0u;
  v11 = (v10 + a3);
  *v11 = 0u;
  v12 = (v11 + a3);
  *v12 = 0u;
  v13 = (v12 + a3);
  *v13 = 0u;
  v14 = (v13 + a3);
  *v14 = 0u;
  v15 = (v14 + a3);
  *v15 = 0u;
  v16 = (v15 + a3);
  *v16 = 0u;
  *(v16 + a3) = 0u;
  a1();
  JUMPOUT(0x27793D840);
}

void sub_27793D620(_OWORD *a1@<X7>, uint64_t a2@<X8>)
{
  *a1 = 0u;
  v2 = (a1 + a2);
  *v2 = 0u;
  v3 = (v2 + a2);
  *v3 = 0u;
  v4 = (v3 + a2);
  *v4 = 0u;
  v5 = (v4 + a2);
  *v5 = 0u;
  v6 = (v5 + a2);
  *v6 = 0u;
  v7 = (v6 + a2);
  *v7 = 0u;
  v8 = (v7 + a2);
  *v8 = 0u;
  v9 = (v8 + a2);
  *v9 = 0u;
  v10 = (v9 + a2);
  *v10 = 0u;
  v11 = (v10 + a2);
  *v11 = 0u;
  v12 = (v11 + a2);
  *v12 = 0u;
  v13 = (v12 + a2);
  *v13 = 0u;
  v14 = (v13 + a2);
  *v14 = 0u;
  v15 = (v14 + a2);
  *v15 = 0u;
  *(v15 + a2) = 0u;
  JUMPOUT(0x27793D840);
}

uint64_t sub_27793D774@<X0>(uint64_t (*a1)(void)@<X4>, _OWORD *a2@<X7>, uint64_t a3@<X8>)
{
  *a2 = 0u;
  v3 = (a2 + a3);
  *v3 = 0u;
  v4 = (v3 + a3);
  *v4 = 0u;
  v5 = (v4 + a3);
  *v5 = 0u;
  v6 = (v5 + a3);
  *v6 = 0u;
  v7 = (v6 + a3);
  *v7 = 0u;
  v8 = (v7 + a3);
  *v8 = 0u;
  v9 = (v8 + a3);
  *v9 = 0u;
  v10 = (v9 + a3);
  *v10 = 0u;
  v11 = (v10 + a3);
  *v11 = 0u;
  v12 = (v11 + a3);
  *v12 = 0u;
  v13 = (v12 + a3);
  *v13 = 0u;
  v14 = (v13 + a3);
  *v14 = 0u;
  v15 = (v14 + a3);
  *v15 = 0u;
  v16 = (v15 + a3);
  *v16 = 0u;
  *(v16 + a3) = 0u;
  result = a1();
  v19 = vrshrq_n_s16(v18, 2uLL);
  v21 = vrshrq_n_s16(v20, 2uLL);
  v23 = vrshrq_n_s16(v22, 2uLL);
  v25 = vrshrq_n_s16(v24, 2uLL);
  v27 = vrshrq_n_s16(v26, 2uLL);
  v29 = vrshrq_n_s16(v28, 2uLL);
  v31 = vrshrq_n_s16(v30, 2uLL);
  v33 = vrshrq_n_s16(v32, 2uLL);
  v35 = vrshrq_n_s16(v34, 2uLL);
  v37 = vrshrq_n_s16(v36, 2uLL);
  v39 = vrshrq_n_s16(v38, 2uLL);
  v41 = vrshrq_n_s16(v40, 2uLL);
  v43 = vrshrq_n_s16(v42, 2uLL);
  v45 = vrshrq_n_s16(v44, 2uLL);
  v47 = vrshrq_n_s16(v46, 2uLL);
  v49 = vrshrq_n_s16(v48, 2uLL);
  v50 = vtrn1q_s16(v19, v21);
  v51 = vtrn2q_s16(v19, v21);
  v52 = vtrn1q_s16(v23, v25);
  v53 = vtrn2q_s16(v23, v25);
  v54 = vtrn1q_s16(v27, v29);
  v55 = vtrn2q_s16(v27, v29);
  v56 = vtrn1q_s16(v31, v33);
  v57 = vtrn2q_s16(v31, v33);
  v58 = vtrn1q_s32(v54, v56);
  v59 = vtrn2q_s32(v54, v56);
  v60 = vtrn1q_s32(v55, v57);
  v61 = vtrn2q_s32(v55, v57);
  v62 = vtrn1q_s32(v51, v53);
  v63 = vtrn2q_s32(v51, v53);
  v64 = vtrn1q_s32(v50, v52);
  v65 = vtrn2q_s32(v50, v52);
  v66 = vtrn1q_s64(v64, v58);
  v67 = vtrn2q_s64(v64, v58);
  v68 = vtrn1q_s64(v62, v60);
  v69 = vtrn2q_s64(v62, v60);
  v70 = vtrn2q_s64(v65, v59);
  v71 = vtrn1q_s64(v65, v59);
  v72 = vtrn1q_s64(v63, v61);
  v73 = vtrn2q_s64(v63, v61);
  v74 = vtrn1q_s16(v35, v37);
  v75 = vtrn2q_s16(v35, v37);
  v76 = vtrn1q_s16(v39, v41);
  v77 = vtrn2q_s16(v39, v41);
  v78 = vtrn1q_s16(v43, v45);
  v79 = vtrn2q_s16(v43, v45);
  v80 = vtrn1q_s16(v47, v49);
  v81 = vtrn2q_s16(v47, v49);
  v82 = vtrn1q_s32(v78, v80);
  v83 = vtrn2q_s32(v78, v80);
  v84 = vtrn1q_s32(v79, v81);
  v85 = vtrn2q_s32(v79, v81);
  v86 = vtrn1q_s32(v75, v77);
  v87 = vtrn2q_s32(v75, v77);
  v88 = vtrn1q_s32(v74, v76);
  v89 = vtrn2q_s32(v74, v76);
  *v90++ = v66;
  *v90++ = vtrn1q_s64(v88, v82);
  *v90++ = v68;
  *v90++ = vtrn1q_s64(v86, v84);
  *v90++ = v71;
  *v90++ = vtrn1q_s64(v89, v83);
  *v90++ = v72;
  *v90++ = vtrn1q_s64(v87, v85);
  *v90++ = v67;
  *v90++ = vtrn2q_s64(v88, v82);
  *v90++ = v69;
  *v90++ = vtrn2q_s64(v86, v84);
  *v90++ = v70;
  *v90++ = vtrn2q_s64(v89, v83);
  *v90 = v73;
  v90[1] = vtrn2q_s64(v87, v85);
  return result;
}

uint64_t sub_27793D944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  result = a6();
  v10 = (v8 + v7 + v7);
  v13 = *v10;
  v12 = (v10 + v7);
  v16 = *v12;
  v15 = (v12 + v7);
  v19 = *v15;
  v18 = (v15 + v7);
  v21 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v11, 4uLL), *(v8 + v7)));
  *v8 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v9, 4uLL), *v8));
  v22 = (v8 + v7);
  v24 = *v18;
  v23 = (v18 + v7);
  *v22 = v21;
  v26 = (v22 + v7);
  v28 = *v23;
  v27 = (v23 + v7);
  *v26 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v14, 4uLL), v13));
  v30 = (v26 + v7);
  v32 = *v27;
  v31 = (v27 + v7);
  *v30 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v17, 4uLL), v16));
  v34 = (v30 + v7);
  v36 = *v31;
  v35 = (v31 + v7);
  *v34 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v20, 4uLL), v19));
  v38 = (v34 + v7);
  v40 = *v35;
  v39 = (v35 + v7);
  *v38 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v25, 4uLL), v24));
  v42 = (v38 + v7);
  v44 = *v39;
  v43 = (v39 + v7);
  *v42 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v29, 4uLL), v28));
  v46 = (v42 + v7);
  v48 = *v43;
  v47 = (v43 + v7);
  *v46 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v33, 4uLL), v32));
  v50 = (v46 + v7);
  v52 = *v47;
  v51 = (v47 + v7);
  *v50 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v37, 4uLL), v36));
  v54 = (v50 + v7);
  v56 = *v51;
  v55 = (v51 + v7);
  *v54 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v41, 4uLL), v40));
  v58 = (v54 + v7);
  v59 = *v55;
  *v58 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v45, 4uLL), v44));
  v61 = (v58 + v7);
  v62 = *(v55 + v7);
  *v61 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v49, 4uLL), v48));
  v64 = (v61 + v7);
  *v64 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v53, 4uLL), v52));
  v65 = (v64 + v7);
  *v65 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v57, 4uLL), v56));
  v66 = (v65 + v7);
  *v66 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v60, 4uLL), v59));
  *(v66 + v7) = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v63, 4uLL), v62));
  return result;
}

uint64_t sub_27793DAD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6(a1, a2, a3, a4, a5, a6, v22, a3);
  if (v10 < v14)
  {
    memset(&v22[256], 0, 256);
  }

  else
  {
    v7 = v13(v7);
  }

  v15 = sub_27793D944(v7, v8, v9, v10, v11, v12);
  return sub_27793D944(v15, v16, v17, v18, v19, v20);
}

uint8x16_t *sub_27793DB44(uint8x16_t *a1, uint64_t a2, const __int16 *a3, uint64_t a4)
{
  if (a4)
  {
    return sub_27793DAD4(a1, a2, a3, a4, sub_27793BEB4, sub_27793BEB4);
  }

  vld1q_dup_s16(a3);
  *a3 = 0;
  return sub_27793A8FC(a1, a2, a3, a4, 16);
}

void sub_27793DC58(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = 0;
  v3 = a3 + 1;
  *v3++ = 0;
  *v3++ = 0;
  *v3++ = 0;
  *v3++ = 0;
  *v3++ = 0;
  *v3++ = 0;
  *v3++ = 0;
  *v3++ = 0;
  *v3++ = 0;
  *v3++ = 0;
  *v3++ = 0;
  *v3++ = 0;
  *v3++ = 0;
  *v3 = 0;
  v3[1] = 0;
  JUMPOUT(0x27793DF7CLL);
}

void sub_27793DDAC(uint64_t a1, uint64_t a2, _OWORD *a3, int a4)
{
  if (a4 >= v4)
  {
    a3[1] = 0uLL;
    a3[3] = 0uLL;
    a3[5] = 0uLL;
    a3[7] = 0uLL;
  }

  *a3 = 0u;
  v5 = a3 + 2;
  *v5 = 0u;
  v5 += 2;
  *v5 = 0u;
  v5[2] = 0u;
  JUMPOUT(0x27793E150);
}

uint8x8_t *sub_27793DEB0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, void *))
{
  *a3 = 0;
  v5 = a3 + 1;
  *v5++ = 0;
  *v5++ = 0;
  *v5++ = 0;
  *v5++ = 0;
  *v5++ = 0;
  *v5++ = 0;
  *v5++ = 0;
  *v5++ = 0;
  *v5++ = 0;
  *v5++ = 0;
  *v5++ = 0;
  *v5++ = 0;
  *v5++ = 0;
  *v5++ = 0;
  *v5 = 0;
  v6 = a5(a1, a2, v5 + 1);
  v8 = v7(v6);
  v11 = (v8 + v9 + v9);
  v14 = *(v11 + v9);
  v16 = vaddw_u8(vrshrq_n_s16(v13, 4uLL), *v11);
  v17 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v12, 4uLL), *(v8 + v9)));
  *v8 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v10, 4uLL), *v8));
  *(v8 + v9) = v17;
  *v11 = vqmovun_s16(v16);
  *(v11 + v9) = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v15, 4uLL), v14));
  result = v18();
  v21 = (result + v20 + 8);
  v24 = *v21;
  v23 = (v21 + v20);
  v26 = *v23;
  v28 = *(v23 + v20);
  result[1] = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v22, 4uLL), result[1]));
  v30 = (&result[1] + v20);
  *v30 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v25, 4uLL), v24));
  v31 = (v30 + v20);
  *v31 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v27, 4uLL), v26));
  *(v31 + v20) = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v29, 4uLL), v28));
  return result;
}

char *sub_27793E078(uint64_t a1, uint64_t a2, _OWORD *a3, int a4, uint64_t (*a5)(void))
{
  v6 = 2;
  if (a4 >= v5)
  {
    a3[1] = 0uLL;
    a3[3] = 0uLL;
    a3[5] = 0uLL;
    a3[7] = 0uLL;
    a1 = a5();
  }

  *a3 = 0u;
  v7 = &a3[v6];
  *v7 = 0u;
  v8 = &v7[v6];
  *v8 = 0u;
  v8[v6] = 0u;
  v9 = (a5)(a1);
  v11 = v10(v9);
  v13.i32[0] = *v11;
  v15.i64[1] = v14;
  v13.i32[1] = *(v11 + v12);
  v16 = (v11 + v12 + v12);
  v18.i32[0] = *v16;
  v17 = (v16 + v12);
  v20.i64[1] = v19;
  v18.i32[1] = *v17;
  v21 = (v17 + v12);
  v23.i32[0] = *v21;
  v22 = (v21 + v12);
  v25.i64[1] = v24;
  v23.i32[1] = *v22;
  v26 = (v22 + v12);
  v28.i32[0] = *v26;
  v27 = (v26 + v12);
  v30.i64[1] = v29;
  v28.i32[1] = *v27;
  v31 = (v27 + v12);
  v33.i32[0] = *v31;
  v32 = (v31 + v12);
  v35.i64[1] = v34;
  v33.i32[1] = *v32;
  v36 = (v32 + v12);
  v37 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v15, 4uLL), v13));
  v39.i32[0] = *v36;
  v38 = (v36 + v12);
  v41.i64[1] = v40;
  v39.i32[1] = *v38;
  v42 = (v38 + v12);
  *v11 = v37.i32[0];
  v43 = (v11 + v12);
  v44 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v20, 4uLL), v18));
  *v43 = v37.i32[1];
  v45 = (v43 + v12);
  v47.i32[0] = *v42;
  v46 = (v42 + v12);
  v49.i64[1] = v48;
  v47.i32[1] = *v46;
  v50 = (v46 + v12);
  *v45 = v44.i32[0];
  v51 = (v45 + v12);
  v52 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v25, 4uLL), v23));
  *v51 = v44.i32[1];
  v53 = (v51 + v12);
  v54.i32[0] = *v50;
  v56.i64[1] = v55;
  v54.i32[1] = *(v50 + v12);
  *v53 = v52.i32[0];
  v57 = (v53 + v12);
  v58 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v30, 4uLL), v28));
  *v57 = v52.i32[1];
  v59 = (v57 + v12);
  *v59 = v58.i32[0];
  v60 = (v59 + v12);
  v61 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v35, 4uLL), v33));
  *v60 = v58.i32[1];
  v62 = (v60 + v12);
  *v62 = v61.i32[0];
  v63 = (v62 + v12);
  v64 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v41, 4uLL), v39));
  *v63 = v61.i32[1];
  v65 = (v63 + v12);
  *v65 = v64.i32[0];
  v66 = (v65 + v12);
  v67 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v49, 4uLL), v47));
  *v66 = v64.i32[1];
  v68 = (v66 + v12);
  *v68 = v67.i32[0];
  v69 = (v68 + v12);
  v70 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v56, 4uLL), v54));
  *v69 = v67.i32[1];
  v71 = (v69 + v12);
  *v71 = v70.i32[0];
  v72 = (v71 + v12);
  *v72 = v70.i32[1];
  return v72 + v12;
}

__int32 *sub_27793E28C(__int32 *a1, uint64_t a2, __int16 *a3, uint64_t a4)
{
  if (a4)
  {
    return sub_27793E078(a1, a2, a3, a4, sub_27793AA70);
  }

  vld1q_dup_s16(a3);
  *a3 = 0;
  return sub_27793A86C(a1, a2, a3, a4, 16);
}

uint8x16_t *sub_27793E3A8(uint8x16_t *a1, uint64_t a2, __int16 *a3, uint64_t a4)
{
  if (a4)
  {
    return sub_27793DEB0(a1, a2, a3, a4, sub_27793C20C);
  }

  vld1q_dup_s16(a3);
  *a3 = 0;
  return sub_27793A8FC(a1, a2, a3, a4, 4);
}

void sub_27793E484(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  *a3 = 0u;
  v3 = a3 + 1;
  *v3++ = 0u;
  *v3++ = 0u;
  *v3++ = 0u;
  *v3++ = 0u;
  *v3++ = 0u;
  *v3++ = 0u;
  *v3++ = 0u;
  *v3++ = 0u;
  *v3++ = 0u;
  *v3++ = 0u;
  *v3++ = 0u;
  *v3++ = 0u;
  *v3++ = 0u;
  *v3 = 0u;
  v3[1] = 0u;
  JUMPOUT(0x27793E8A8);
}

void sub_27793E620(uint64_t a1, uint64_t a2, _OWORD *a3, int a4)
{
  if (a4 >= v4)
  {
    a3[1] = 0uLL;
    a3[3] = 0uLL;
    a3[5] = 0uLL;
    a3[7] = 0uLL;
    a3[9] = 0uLL;
    a3[11] = 0uLL;
    a3[13] = 0uLL;
    a3[15] = 0uLL;
  }

  *a3 = 0u;
  v5 = a3 + 2;
  *v5 = 0u;
  v5 += 2;
  *v5 = 0u;
  v5 += 2;
  *v5 = 0u;
  v5 += 2;
  *v5 = 0u;
  v5 += 2;
  *v5 = 0u;
  v5 += 2;
  *v5 = 0u;
  v5[2] = 0u;
  JUMPOUT(0x27793EC7CLL);
}

char *sub_27793E794(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, _OWORD *))
{
  *a3 = 0u;
  v5 = a3 + 1;
  *v5++ = 0u;
  *v5++ = 0u;
  *v5++ = 0u;
  *v5++ = 0u;
  *v5++ = 0u;
  *v5++ = 0u;
  *v5++ = 0u;
  *v5++ = 0u;
  *v5++ = 0u;
  *v5++ = 0u;
  *v5++ = 0u;
  *v5++ = 0u;
  *v5++ = 0u;
  *v5++ = 0u;
  *v5 = 0u;
  v6 = a5(a1, a2, v5 + 1);
  v8 = v7(v6);
  v11 = (v8 + v9 + v9);
  v14 = *v11;
  v13 = (v11 + v9);
  v17 = *v13;
  v16 = (v13 + v9);
  v20 = *v16;
  v19 = (v16 + v9);
  v22 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v12, 4uLL), *(v8 + v9)));
  *v8 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v10, 4uLL), *v8));
  v24 = *v19;
  v23 = (v19 + v9);
  *(v8 + v9) = v22;
  v26 = (v8 + v9 + v9);
  v27 = *v23;
  *v26 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v15, 4uLL), v14));
  v29 = (v26 + v9);
  v30 = *(v23 + v9);
  *v29 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v18, 4uLL), v17));
  v32 = (v29 + v9);
  *v32 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v21, 4uLL), v20));
  v33 = (v32 + v9);
  *v33 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v25, 4uLL), v24));
  v34 = (v33 + v9);
  *v34 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v28, 4uLL), v27));
  *(v34 + v9) = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v31, 4uLL), v30));
  v36 = (v35() + 8);
  v39 = (v36 + v37 + v37);
  v42 = *v39;
  v41 = (v39 + v37);
  v45 = *v41;
  v44 = (v41 + v37);
  v48 = *v44;
  v47 = (v44 + v37);
  v50 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v40, 4uLL), *(v36 + v37)));
  *v36 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v38, 4uLL), *v36));
  v51 = (v36 + v37);
  v53 = *v47;
  v52 = (v47 + v37);
  *v51 = v50;
  v55 = (v51 + v37);
  v56 = *v52;
  *v55 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v43, 4uLL), v42));
  v58 = (v55 + v37);
  v59 = *(v52 + v37);
  *v58 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v46, 4uLL), v45));
  v61 = (v58 + v37);
  *v61 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v49, 4uLL), v48));
  v62 = (v61 + v37);
  *v62 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v54, 4uLL), v53));
  v63 = (v62 + v37);
  *v63 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v57, 4uLL), v56));
  v64 = (v63 + v37);
  *v64 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v60, 4uLL), v59));
  return v64 + v37;
}

char *sub_27793EAC4(uint64_t a1, uint64_t a2, _OWORD *a3, int a4, uint64_t (*a5)(void))
{
  v6 = 2;
  if (a4 >= v5)
  {
    a3[1] = 0uLL;
    a3[3] = 0uLL;
    a3[5] = 0uLL;
    a3[7] = 0uLL;
    a3[9] = 0uLL;
    a3[11] = 0uLL;
    a3[13] = 0uLL;
    a3[15] = 0uLL;
    a1 = a5();
  }

  *a3 = 0u;
  v7 = &a3[v6];
  *v7 = 0u;
  v8 = &v7[v6];
  *v8 = 0u;
  v9 = &v8[v6];
  *v9 = 0u;
  v10 = &v9[v6];
  *v10 = 0u;
  v11 = &v10[v6];
  *v11 = 0u;
  v12 = &v11[v6];
  *v12 = 0u;
  v12[v6] = 0u;
  v13 = (a5)(a1);
  v15 = v14(v13);
  v18 = (v15 + v16 + v16);
  v21 = *v18;
  v20 = (v18 + v16);
  v24 = *v20;
  v23 = (v20 + v16);
  v27 = *v23;
  v26 = (v23 + v16);
  v29 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v19, 4uLL), *(v15 + v16)));
  *v15 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v17, 4uLL), *v15));
  v30 = (v15 + v16);
  v32 = *v26;
  v31 = (v26 + v16);
  *v30 = v29;
  v34 = (v30 + v16);
  v36 = *v31;
  v35 = (v31 + v16);
  *v34 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v22, 4uLL), v21));
  v38 = (v34 + v16);
  v40 = *v35;
  v39 = (v35 + v16);
  *v38 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v25, 4uLL), v24));
  v42 = (v38 + v16);
  v44 = *v39;
  v43 = (v39 + v16);
  *v42 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v28, 4uLL), v27));
  v46 = (v42 + v16);
  v48 = *v43;
  v47 = (v43 + v16);
  *v46 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v33, 4uLL), v32));
  v50 = (v46 + v16);
  v52 = *v47;
  v51 = (v47 + v16);
  *v50 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v37, 4uLL), v36));
  v54 = (v50 + v16);
  v56 = *v51;
  v55 = (v51 + v16);
  *v54 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v41, 4uLL), v40));
  v58 = (v54 + v16);
  v60 = *v55;
  v59 = (v55 + v16);
  *v58 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v45, 4uLL), v44));
  v62 = (v58 + v16);
  v64 = *v59;
  v63 = (v59 + v16);
  *v62 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v49, 4uLL), v48));
  v66 = (v62 + v16);
  v67 = *v63;
  *v66 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v53, 4uLL), v52));
  v69 = (v66 + v16);
  v70 = *(v63 + v16);
  *v69 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v57, 4uLL), v56));
  v72 = (v69 + v16);
  *v72 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v61, 4uLL), v60));
  v73 = (v72 + v16);
  *v73 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v65, 4uLL), v64));
  v74 = (v73 + v16);
  *v74 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v68, 4uLL), v67));
  v75 = (v74 + v16);
  *v75 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v71, 4uLL), v70));
  return v75 + v16;
}

uint8x8_t *sub_27793EE28(uint8x8_t *a1, uint64_t a2, __int16 *a3, uint64_t a4)
{
  if (a4)
  {
    return sub_27793EAC4(a1, a2, a3, a4, sub_27793AF94);
  }

  vld1q_dup_s16(a3);
  *a3 = 0;
  return sub_27793A8AC(a1, a2, a3, a4, 16);
}

uint8x16_t *sub_27793EF48(uint8x16_t *a1, uint64_t a2, __int16 *a3, uint64_t a4)
{
  if (a4)
  {
    return sub_27793E794(a1, a2, a3, a4, sub_27793BEB4);
  }

  vld1q_dup_s16(a3);
  *a3 = 0;
  return sub_27793A8FC(a1, a2, a3, a4, 8);
}

void sub_27793F4E8(_OWORD *a1@<X7>, uint64_t a2@<X8>)
{
  v2 = 2 * a2;
  *a1 = 0u;
  v3 = (a1 + v2);
  *v3 = 0u;
  v4 = (v3 + v2);
  *v4 = 0u;
  v5 = (v4 + v2);
  *v5 = 0u;
  v6 = (v5 + v2);
  *v6 = 0u;
  v7 = (v6 + v2);
  *v7 = 0u;
  v8 = (v7 + v2);
  *v8 = 0u;
  v9 = (v8 + v2);
  *v9 = 0u;
  v10 = (v9 + v2);
  *v10 = 0u;
  v11 = (v10 + v2);
  *v11 = 0u;
  v12 = (v11 + v2);
  *v12 = 0u;
  v13 = (v12 + v2);
  *v13 = 0u;
  v14 = (v13 + v2);
  *v14 = 0u;
  v15 = (v14 + v2);
  *v15 = 0u;
  v16 = (v15 + v2);
  *v16 = 0u;
  *(v16 + v2) = 0u;
  sub_27793BEB4();
  v19 = vtrn1q_s16(v17, v18);
  v20 = vtrn2q_s16(v17, v18);
  v23 = vtrn1q_s16(v21, v22);
  v24 = vtrn2q_s16(v21, v22);
  v27 = vtrn1q_s16(v25, v26);
  v28 = vtrn2q_s16(v25, v26);
  v31 = vtrn1q_s16(v29, v30);
  v32 = vtrn2q_s16(v29, v30);
  v33 = vtrn1q_s32(v27, v31);
  v34 = vtrn2q_s32(v27, v31);
  v35 = vtrn1q_s32(v28, v32);
  v36 = vtrn2q_s32(v28, v32);
  v37 = vtrn1q_s32(v20, v24);
  v38 = vtrn2q_s32(v20, v24);
  v39 = vtrn1q_s32(v19, v23);
  v40 = vtrn2q_s32(v19, v23);
  v41 = vtrn1q_s64(v39, v33);
  v42 = vtrn2q_s64(v39, v33);
  v43 = vtrn1q_s64(v37, v35);
  v44 = vtrn2q_s64(v37, v35);
  v45 = vtrn2q_s64(v40, v34);
  v46 = vtrn1q_s64(v40, v34);
  v47 = vtrn1q_s64(v38, v36);
  v48 = vtrn2q_s64(v38, v36);
  v51 = vtrn1q_s16(v49, v50);
  v52 = vtrn2q_s16(v49, v50);
  v55 = vtrn1q_s16(v53, v54);
  v56 = vtrn2q_s16(v53, v54);
  v59 = vtrn1q_s16(v57, v58);
  v60 = vtrn2q_s16(v57, v58);
  v63 = vtrn1q_s16(v61, v62);
  v64 = vtrn2q_s16(v61, v62);
  v65 = vtrn1q_s32(v59, v63);
  v66 = vtrn2q_s32(v59, v63);
  v67 = vtrn1q_s32(v60, v64);
  v68 = vtrn2q_s32(v60, v64);
  v69 = vtrn1q_s32(v52, v56);
  v70 = vtrn2q_s32(v52, v56);
  v71 = vtrn1q_s32(v51, v55);
  v72 = vtrn2q_s32(v51, v55);
  *v73++ = v41;
  *v73 = vtrn1q_s64(v71, v65);
  v73 += 3;
  *v73++ = v43;
  *v73 = vtrn1q_s64(v69, v67);
  v73 += 3;
  *v73++ = v46;
  *v73 = vtrn1q_s64(v72, v66);
  v73 += 3;
  *v73++ = v47;
  *v73 = vtrn1q_s64(v70, v68);
  v73 += 3;
  *v73++ = v42;
  *v73 = vtrn2q_s64(v71, v65);
  v73 += 3;
  *v73++ = v44;
  *v73 = vtrn2q_s64(v69, v67);
  v73 += 3;
  *v73++ = v45;
  *v73 = vtrn2q_s64(v72, v66);
  v73 += 3;
  *v73 = v48;
  v73[1] = vtrn2q_s64(v70, v68);
  *v74 = 0u;
  v76 = (v74 + v75);
  *v76 = 0u;
  v77 = (v76 + v75);
  *v77 = 0u;
  v78 = (v77 + v75);
  *v78 = 0u;
  v79 = (v78 + v75);
  *v79 = 0u;
  v80 = (v79 + v75);
  *v80 = 0u;
  v81 = (v80 + v75);
  *v81 = 0u;
  v82 = (v81 + v75);
  *v82 = 0u;
  v83 = (v82 + v75);
  *v83 = 0u;
  v84 = (v83 + v75);
  *v84 = 0u;
  v85 = (v84 + v75);
  *v85 = 0u;
  v86 = (v85 + v75);
  *v86 = 0u;
  v87 = (v86 + v75);
  *v87 = 0u;
  v88 = (v87 + v75);
  *v88 = 0u;
  v89 = (v88 + v75);
  *v89 = 0u;
  *(v89 + v75) = 0u;
  sub_27793F028();
  v92 = vtrn1q_s16(v91, v90);
  v93 = vtrn2q_s16(v91, v90);
  v96 = vtrn1q_s16(v95, v94);
  v97 = vtrn2q_s16(v95, v94);
  v100 = vtrn1q_s16(v99, v98);
  v101 = vtrn2q_s16(v99, v98);
  v104 = vtrn1q_s16(v103, v102);
  v105 = vtrn2q_s16(v103, v102);
  v106 = vtrn1q_s32(v100, v104);
  v107 = vtrn2q_s32(v100, v104);
  v108 = vtrn1q_s32(v101, v105);
  v109 = vtrn2q_s32(v101, v105);
  v110 = vtrn1q_s32(v93, v97);
  v111 = vtrn2q_s32(v93, v97);
  v112 = vtrn1q_s32(v92, v96);
  v113 = vtrn2q_s32(v92, v96);
  v114 = vtrn1q_s64(v112, v106);
  v115 = vtrn2q_s64(v112, v106);
  v116 = vtrn1q_s64(v110, v108);
  v117 = vtrn2q_s64(v110, v108);
  v118 = vtrn2q_s64(v113, v107);
  v119 = vtrn1q_s64(v113, v107);
  v120 = vtrn1q_s64(v111, v109);
  v121 = vtrn2q_s64(v111, v109);
  v124 = vtrn1q_s16(v123, v122);
  v125 = vtrn2q_s16(v123, v122);
  v128 = vtrn1q_s16(v127, v126);
  v129 = vtrn2q_s16(v127, v126);
  v132 = vtrn1q_s16(v131, v130);
  v133 = vtrn2q_s16(v131, v130);
  v136 = vtrn1q_s16(v135, v134);
  v137 = vtrn2q_s16(v135, v134);
  v138 = vtrn1q_s32(v132, v136);
  v139 = vtrn2q_s32(v132, v136);
  v140 = vtrn1q_s32(v133, v137);
  v141 = vtrn2q_s32(v133, v137);
  v142 = vtrn1q_s32(v125, v129);
  v143 = vtrn2q_s32(v125, v129);
  v144 = vtrn1q_s32(v124, v128);
  v145 = vtrn2q_s32(v124, v128);
  v146 = vtrn1q_s64(v144, v138);
  v147 = vtrn2q_s64(v144, v138);
  v148 = vtrn1q_s64(v142, v140);
  v149 = vtrn2q_s64(v142, v140);
  v150 = vtrn2q_s64(v145, v139);
  v151 = vtrn1q_s64(v145, v139);
  v152 = vtrn1q_s64(v143, v141);
  v153 = vtrn2q_s64(v143, v141);
  v155 = v154[1];
  v156 = vrshrq_n_s16(vrev64q_s16(vqsubq_s16(v155, v146)), 2uLL);
  v157 = vrshrq_n_s16(vrev64q_s16(vqsubq_s16(*v154, v114)), 2uLL);
  *v154 = vrshrq_n_s16(vqaddq_s16(*v154, v114), 2uLL);
  v154[1] = vrshrq_n_s16(vqaddq_s16(v155, v146), 2uLL);
  v154 += 2;
  *v154 = vextq_s8(v156, v156, 8uLL);
  v154[1] = vextq_s8(v157, v157, 8uLL);
  v154 += 2;
  v158 = v154[1];
  v159 = vrshrq_n_s16(vrev64q_s16(vqsubq_s16(v158, v148)), 2uLL);
  v160 = vrshrq_n_s16(vrev64q_s16(vqsubq_s16(*v154, v116)), 2uLL);
  *v154 = vrshrq_n_s16(vqaddq_s16(*v154, v116), 2uLL);
  v154[1] = vrshrq_n_s16(vqaddq_s16(v158, v148), 2uLL);
  v154 += 2;
  *v154 = vextq_s8(v159, v159, 8uLL);
  v154[1] = vextq_s8(v160, v160, 8uLL);
  v154 += 2;
  v161 = v154[1];
  v162 = vrshrq_n_s16(vrev64q_s16(vqsubq_s16(v161, v151)), 2uLL);
  v163 = vrshrq_n_s16(vrev64q_s16(vqsubq_s16(*v154, v119)), 2uLL);
  *v154 = vrshrq_n_s16(vqaddq_s16(*v154, v119), 2uLL);
  v154[1] = vrshrq_n_s16(vqaddq_s16(v161, v151), 2uLL);
  v154 += 2;
  *v154 = vextq_s8(v162, v162, 8uLL);
  v154[1] = vextq_s8(v163, v163, 8uLL);
  v154 += 2;
  v164 = v154[1];
  v165 = vrshrq_n_s16(vrev64q_s16(vqsubq_s16(v164, v152)), 2uLL);
  v166 = vrshrq_n_s16(vrev64q_s16(vqsubq_s16(*v154, v120)), 2uLL);
  *v154 = vrshrq_n_s16(vqaddq_s16(*v154, v120), 2uLL);
  v154[1] = vrshrq_n_s16(vqaddq_s16(v164, v152), 2uLL);
  v154 += 2;
  *v154 = vextq_s8(v165, v165, 8uLL);
  v154[1] = vextq_s8(v166, v166, 8uLL);
  v154 += 2;
  v167 = v154[1];
  v168 = vrshrq_n_s16(vrev64q_s16(vqsubq_s16(v167, v147)), 2uLL);
  v169 = vrshrq_n_s16(vrev64q_s16(vqsubq_s16(*v154, v115)), 2uLL);
  *v154 = vrshrq_n_s16(vqaddq_s16(*v154, v115), 2uLL);
  v154[1] = vrshrq_n_s16(vqaddq_s16(v167, v147), 2uLL);
  v154 += 2;
  *v154 = vextq_s8(v168, v168, 8uLL);
  v154[1] = vextq_s8(v169, v169, 8uLL);
  v154 += 2;
  v170 = v154[1];
  v171 = vrshrq_n_s16(vrev64q_s16(vqsubq_s16(v170, v149)), 2uLL);
  v172 = vrshrq_n_s16(vrev64q_s16(vqsubq_s16(*v154, v117)), 2uLL);
  *v154 = vrshrq_n_s16(vqaddq_s16(*v154, v117), 2uLL);
  v154[1] = vrshrq_n_s16(vqaddq_s16(v170, v149), 2uLL);
  v154 += 2;
  *v154 = vextq_s8(v171, v171, 8uLL);
  v154[1] = vextq_s8(v172, v172, 8uLL);
  v154 += 2;
  v173 = v154[1];
  v174 = vrshrq_n_s16(vrev64q_s16(vqsubq_s16(v173, v150)), 2uLL);
  v175 = vrshrq_n_s16(vrev64q_s16(vqsubq_s16(*v154, v118)), 2uLL);
  *v154 = vrshrq_n_s16(vqaddq_s16(*v154, v118), 2uLL);
  v154[1] = vrshrq_n_s16(vqaddq_s16(v173, v150), 2uLL);
  v154 += 2;
  *v154 = vextq_s8(v174, v174, 8uLL);
  v154[1] = vextq_s8(v175, v175, 8uLL);
  v154 += 2;
  v176 = v154[1];
  v177 = vrshrq_n_s16(vrev64q_s16(vqsubq_s16(v176, v153)), 2uLL);
  v178 = vrshrq_n_s16(vrev64q_s16(vqsubq_s16(*v154, v121)), 2uLL);
  *v154 = vrshrq_n_s16(vqaddq_s16(*v154, v121), 2uLL);
  v154[1] = vrshrq_n_s16(vqaddq_s16(v176, v153), 2uLL);
  v154 += 2;
  *v154 = vextq_s8(v177, v177, 8uLL);
  v154[1] = vextq_s8(v178, v178, 8uLL);
}

void sub_27793F9D0(_OWORD *a1@<X7>, uint64_t a2@<X8>)
{
  v2 = 2 * a2;
  *a1 = 0u;
  v3 = (a1 + v2);
  *v3 = 0u;
  v4 = (v3 + v2);
  *v4 = 0u;
  v5 = (v4 + v2);
  *v5 = 0u;
  v6 = (v5 + v2);
  *v6 = 0u;
  v7 = (v6 + v2);
  *v7 = 0u;
  v8 = (v7 + v2);
  *v8 = 0u;
  v9 = (v8 + v2);
  *v9 = 0u;
  v10 = (v9 + v2);
  *v10 = 0u;
  v11 = (v10 + v2);
  *v11 = 0u;
  v12 = (v11 + v2);
  *v12 = 0u;
  v13 = (v12 + v2);
  *v13 = 0u;
  v14 = (v13 + v2);
  *v14 = 0u;
  v15 = (v14 + v2);
  *v15 = 0u;
  v16 = (v15 + v2);
  *v16 = 0u;
  *(v16 + v2) = 0u;
  sub_27793BEB4();
  v19 = vtrn1q_s16(v17, v18);
  v20 = vtrn2q_s16(v17, v18);
  v23 = vtrn1q_s16(v21, v22);
  v24 = vtrn2q_s16(v21, v22);
  v27 = vtrn1q_s16(v25, v26);
  v28 = vtrn2q_s16(v25, v26);
  v31 = vtrn1q_s16(v29, v30);
  v32 = vtrn2q_s16(v29, v30);
  v33 = vtrn1q_s32(v27, v31);
  v34 = vtrn2q_s32(v27, v31);
  v35 = vtrn1q_s32(v28, v32);
  v36 = vtrn2q_s32(v28, v32);
  v37 = vtrn1q_s32(v20, v24);
  v38 = vtrn2q_s32(v20, v24);
  v39 = vtrn1q_s32(v19, v23);
  v40 = vtrn2q_s32(v19, v23);
  v41 = vtrn1q_s64(v39, v33);
  v42 = vtrn2q_s64(v39, v33);
  v43 = vtrn1q_s64(v37, v35);
  v44 = vtrn2q_s64(v37, v35);
  v45 = vtrn2q_s64(v40, v34);
  v46 = vtrn1q_s64(v40, v34);
  v47 = vtrn1q_s64(v38, v36);
  v48 = vtrn2q_s64(v38, v36);
  v51 = vtrn1q_s16(v49, v50);
  v52 = vtrn2q_s16(v49, v50);
  v55 = vtrn1q_s16(v53, v54);
  v56 = vtrn2q_s16(v53, v54);
  v59 = vtrn1q_s16(v57, v58);
  v60 = vtrn2q_s16(v57, v58);
  v63 = vtrn1q_s16(v61, v62);
  v64 = vtrn2q_s16(v61, v62);
  v65 = vtrn1q_s32(v59, v63);
  v66 = vtrn2q_s32(v59, v63);
  v67 = vtrn1q_s32(v60, v64);
  v68 = vtrn2q_s32(v60, v64);
  v69 = vtrn1q_s32(v52, v56);
  v70 = vtrn2q_s32(v52, v56);
  v71 = vtrn1q_s32(v51, v55);
  v72 = vtrn2q_s32(v51, v55);
  *v73++ = v41;
  *v73 = vtrn1q_s64(v71, v65);
  v73 += 3;
  *v73++ = v43;
  *v73 = vtrn1q_s64(v69, v67);
  v73 += 3;
  *v73++ = v46;
  *v73 = vtrn1q_s64(v72, v66);
  v73 += 3;
  *v73++ = v47;
  *v73 = vtrn1q_s64(v70, v68);
  v73 += 3;
  *v73++ = v42;
  *v73 = vtrn2q_s64(v71, v65);
  v73 += 3;
  *v73++ = v44;
  *v73 = vtrn2q_s64(v69, v67);
  v73 += 3;
  *v73++ = v45;
  *v73 = vtrn2q_s64(v72, v66);
  v73 += 3;
  *v73 = v48;
  v73[1] = vtrn2q_s64(v70, v68);
  *v74 = 0u;
  v76 = (v74 + v75);
  *v76 = 0u;
  v77 = (v76 + v75);
  *v77 = 0u;
  v78 = (v77 + v75);
  *v78 = 0u;
  v79 = (v78 + v75);
  *v79 = 0u;
  v80 = (v79 + v75);
  *v80 = 0u;
  v81 = (v80 + v75);
  *v81 = 0u;
  v82 = (v81 + v75);
  *v82 = 0u;
  v83 = (v82 + v75);
  *v83 = 0u;
  v84 = (v83 + v75);
  *v84 = 0u;
  v85 = (v84 + v75);
  *v85 = 0u;
  v86 = (v85 + v75);
  *v86 = 0u;
  v87 = (v86 + v75);
  *v87 = 0u;
  v88 = (v87 + v75);
  *v88 = 0u;
  v89 = (v88 + v75);
  *v89 = 0u;
  *(v89 + v75) = 0u;
  sub_27793F028();
  v92 = vtrn1q_s16(v91, v90);
  v93 = vtrn2q_s16(v91, v90);
  v96 = vtrn1q_s16(v95, v94);
  v97 = vtrn2q_s16(v95, v94);
  v100 = vtrn1q_s16(v99, v98);
  v101 = vtrn2q_s16(v99, v98);
  v104 = vtrn1q_s16(v103, v102);
  v105 = vtrn2q_s16(v103, v102);
  v106 = vtrn1q_s32(v100, v104);
  v107 = vtrn2q_s32(v100, v104);
  v108 = vtrn1q_s32(v101, v105);
  v109 = vtrn2q_s32(v101, v105);
  v110 = vtrn1q_s32(v93, v97);
  v111 = vtrn2q_s32(v93, v97);
  v112 = vtrn1q_s32(v92, v96);
  v113 = vtrn2q_s32(v92, v96);
  v114 = vtrn1q_s64(v112, v106);
  v115 = vtrn2q_s64(v112, v106);
  v116 = vtrn1q_s64(v110, v108);
  v117 = vtrn2q_s64(v110, v108);
  v118 = vtrn2q_s64(v113, v107);
  v119 = vtrn1q_s64(v113, v107);
  v120 = vtrn1q_s64(v111, v109);
  v121 = vtrn2q_s64(v111, v109);
  v124 = vtrn1q_s16(v123, v122);
  v125 = vtrn2q_s16(v123, v122);
  v128 = vtrn1q_s16(v127, v126);
  v129 = vtrn2q_s16(v127, v126);
  v132 = vtrn1q_s16(v131, v130);
  v133 = vtrn2q_s16(v131, v130);
  v136 = vtrn1q_s16(v135, v134);
  v137 = vtrn2q_s16(v135, v134);
  v138 = vtrn1q_s32(v132, v136);
  v139 = vtrn2q_s32(v132, v136);
  v140 = vtrn1q_s32(v133, v137);
  v141 = vtrn2q_s32(v133, v137);
  v142 = vtrn1q_s32(v125, v129);
  v143 = vtrn2q_s32(v125, v129);
  v144 = vtrn1q_s32(v124, v128);
  v145 = vtrn2q_s32(v124, v128);
  v146 = vtrn1q_s64(v144, v138);
  v147 = vtrn2q_s64(v144, v138);
  v148 = vtrn1q_s64(v142, v140);
  v149 = vtrn2q_s64(v142, v140);
  v150 = vtrn2q_s64(v145, v139);
  v151 = vtrn1q_s64(v145, v139);
  v152 = vtrn1q_s64(v143, v141);
  v153 = vtrn2q_s64(v143, v141);
  v155 = v154[1];
  v156 = vrshrq_n_s16(vrev64q_s16(vqsubq_s16(v155, v146)), 1uLL);
  v157 = vrshrq_n_s16(vrev64q_s16(vqsubq_s16(*v154, v114)), 1uLL);
  *v154 = vrshrq_n_s16(vqaddq_s16(*v154, v114), 1uLL);
  v154[1] = vrshrq_n_s16(vqaddq_s16(v155, v146), 1uLL);
  v154 += 2;
  *v154 = vextq_s8(v156, v156, 8uLL);
  v154[1] = vextq_s8(v157, v157, 8uLL);
  v154 += 2;
  v158 = v154[1];
  v159 = vrshrq_n_s16(vrev64q_s16(vqsubq_s16(v158, v148)), 1uLL);
  v160 = vrshrq_n_s16(vrev64q_s16(vqsubq_s16(*v154, v116)), 1uLL);
  *v154 = vrshrq_n_s16(vqaddq_s16(*v154, v116), 1uLL);
  v154[1] = vrshrq_n_s16(vqaddq_s16(v158, v148), 1uLL);
  v154 += 2;
  *v154 = vextq_s8(v159, v159, 8uLL);
  v154[1] = vextq_s8(v160, v160, 8uLL);
  v154 += 2;
  v161 = v154[1];
  v162 = vrshrq_n_s16(vrev64q_s16(vqsubq_s16(v161, v151)), 1uLL);
  v163 = vrshrq_n_s16(vrev64q_s16(vqsubq_s16(*v154, v119)), 1uLL);
  *v154 = vrshrq_n_s16(vqaddq_s16(*v154, v119), 1uLL);
  v154[1] = vrshrq_n_s16(vqaddq_s16(v161, v151), 1uLL);
  v154 += 2;
  *v154 = vextq_s8(v162, v162, 8uLL);
  v154[1] = vextq_s8(v163, v163, 8uLL);
  v154 += 2;
  v164 = v154[1];
  v165 = vrshrq_n_s16(vrev64q_s16(vqsubq_s16(v164, v152)), 1uLL);
  v166 = vrshrq_n_s16(vrev64q_s16(vqsubq_s16(*v154, v120)), 1uLL);
  *v154 = vrshrq_n_s16(vqaddq_s16(*v154, v120), 1uLL);
  v154[1] = vrshrq_n_s16(vqaddq_s16(v164, v152), 1uLL);
  v154 += 2;
  *v154 = vextq_s8(v165, v165, 8uLL);
  v154[1] = vextq_s8(v166, v166, 8uLL);
  v154 += 2;
  v167 = v154[1];
  v168 = vrshrq_n_s16(vrev64q_s16(vqsubq_s16(v167, v147)), 1uLL);
  v169 = vrshrq_n_s16(vrev64q_s16(vqsubq_s16(*v154, v115)), 1uLL);
  *v154 = vrshrq_n_s16(vqaddq_s16(*v154, v115), 1uLL);
  v154[1] = vrshrq_n_s16(vqaddq_s16(v167, v147), 1uLL);
  v154 += 2;
  *v154 = vextq_s8(v168, v168, 8uLL);
  v154[1] = vextq_s8(v169, v169, 8uLL);
  v154 += 2;
  v170 = v154[1];
  v171 = vrshrq_n_s16(vrev64q_s16(vqsubq_s16(v170, v149)), 1uLL);
  v172 = vrshrq_n_s16(vrev64q_s16(vqsubq_s16(*v154, v117)), 1uLL);
  *v154 = vrshrq_n_s16(vqaddq_s16(*v154, v117), 1uLL);
  v154[1] = vrshrq_n_s16(vqaddq_s16(v170, v149), 1uLL);
  v154 += 2;
  *v154 = vextq_s8(v171, v171, 8uLL);
  v154[1] = vextq_s8(v172, v172, 8uLL);
  v154 += 2;
  v173 = v154[1];
  v174 = vrshrq_n_s16(vrev64q_s16(vqsubq_s16(v173, v150)), 1uLL);
  v175 = vrshrq_n_s16(vrev64q_s16(vqsubq_s16(*v154, v118)), 1uLL);
  *v154 = vrshrq_n_s16(vqaddq_s16(*v154, v118), 1uLL);
  v154[1] = vrshrq_n_s16(vqaddq_s16(v173, v150), 1uLL);
  v154 += 2;
  *v154 = vextq_s8(v174, v174, 8uLL);
  v154[1] = vextq_s8(v175, v175, 8uLL);
  v154 += 2;
  v176 = v154[1];
  v177 = vrshrq_n_s16(vrev64q_s16(vqsubq_s16(v176, v153)), 1uLL);
  v178 = vrshrq_n_s16(vrev64q_s16(vqsubq_s16(*v154, v121)), 1uLL);
  *v154 = vrshrq_n_s16(vqaddq_s16(*v154, v121), 1uLL);
  v154[1] = vrshrq_n_s16(vqaddq_s16(v176, v153), 1uLL);
  v154 += 2;
  *v154 = vextq_s8(v177, v177, 8uLL);
  v154[1] = vextq_s8(v178, v178, 8uLL);
}

void sub_27793FF40()
{
  sub_27793BEB4();
  *v0 = v2;
  v3 = (v0 + v1);
  *v3 = v4;
  v5 = (v3 + v1);
  *v5 = v6;
  v7 = (v5 + v1);
  *v7 = v8;
  v9 = (v7 + v1);
  *v9 = v10;
  v11 = (v9 + v1);
  *v11 = v12;
  v13 = (v11 + v1);
  *v13 = v14;
  v15 = (v13 + v1);
  *v15 = v16;
  v17 = (v15 + v1);
  *v17 = v18;
  v19 = (v17 + v1);
  *v19 = v20;
  v21 = (v19 + v1);
  *v21 = v22;
  v23 = (v21 + v1);
  *v23 = v24;
  v25 = (v23 + v1);
  *v25 = v26;
  v27 = (v25 + v1);
  *v27 = v28;
  v29 = (v27 + v1);
  *v29 = v30;
  *(v29 + v1) = v31;
  sub_27793F028();
  v35 = *v32;
  v34 = (v32 + v33);
  v39 = *v34;
  v38 = (v34 + v33);
  v40 = (v37 + v36 + v36);
  v43 = *v38;
  v42 = (v38 + v33);
  v45 = *v40;
  v44 = (v40 + v36);
  v48 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(vqaddq_s16(v35, v41), 4uLL), *v37));
  v50 = *v42;
  v49 = (v42 + v33);
  v51 = vaddw_u8(vrshrq_n_s16(vqaddq_s16(v39, v46), 4uLL), *(v37 + v36));
  *v37 = v48;
  v53 = (v37 + v36);
  v55 = *v44;
  v54 = (v44 + v36);
  *v53 = vqmovun_s16(v51);
  v56 = (v53 + v36);
  *v56 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(vqaddq_s16(v43, v47), 4uLL), v45));
  v57 = (v56 + v36);
  *v57 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(vqaddq_s16(v50, v52), 4uLL), v55));
  v58 = (v57 + v36);
  v60 = *v49;
  v59 = (v49 + v33);
  v62 = *v54;
  v61 = (v54 + v36);
  v64 = *v59;
  v63 = (v59 + v33);
  v66 = *v61;
  v65 = (v61 + v36);
  v69 = *v63;
  v68 = (v63 + v33);
  v71 = *v65;
  v70 = (v65 + v36);
  v74 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(vqaddq_s16(v60, v67), 4uLL), v62));
  v76 = *v68;
  v75 = (v68 + v33);
  *v58 = v74;
  v78 = (v58 + v36);
  v80 = *v70;
  v79 = (v70 + v36);
  *v78 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(vqaddq_s16(v64, v72), 4uLL), v66));
  v81 = (v78 + v36);
  *v81 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(vqaddq_s16(v69, v73), 4uLL), v71));
  v82 = (v81 + v36);
  *v82 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(vqaddq_s16(v76, v77), 4uLL), v80));
  v83 = (v82 + v36);
  v85 = *v75;
  v84 = (v75 + v33);
  v87 = *v79;
  v86 = (v79 + v36);
  v89 = *v84;
  v88 = (v84 + v33);
  v91 = *v86;
  v90 = (v86 + v36);
  v94 = *v88;
  v93 = (v88 + v33);
  v96 = *v90;
  v95 = (v90 + v36);
  v99 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(vqaddq_s16(v85, v92), 4uLL), v87));
  v101 = *v93;
  v100 = (v93 + v33);
  *v83 = v99;
  v103 = (v83 + v36);
  v105 = *v95;
  v104 = (v95 + v36);
  *v103 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(vqaddq_s16(v89, v97), 4uLL), v91));
  v106 = (v103 + v36);
  *v106 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(vqaddq_s16(v94, v98), 4uLL), v96));
  v107 = (v106 + v36);
  *v107 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(vqaddq_s16(v101, v102), 4uLL), v105));
  v108 = (v107 + v36);
  v110 = *v100;
  v109 = (v100 + v33);
  v112 = *v104;
  v111 = (v104 + v36);
  v114 = *v109;
  v113 = (v109 + v33);
  v116 = *v111;
  v115 = (v111 + v36);
  v119 = *v113;
  v118 = (v113 + v33);
  v121 = *v115;
  v120 = (v115 + v36);
  v124 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(vqaddq_s16(v110, v117), 4uLL), v112));
  v126 = vqaddq_s16(*v118, v125);
  *v108 = v124;
  v127 = (v108 + v36);
  v129 = *v120;
  v128 = (v120 + v36);
  *v127 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(vqaddq_s16(v114, v122), 4uLL), v116));
  v130 = (v127 + v36);
  *v130 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(vqaddq_s16(v119, v123), 4uLL), v121));
  v131 = (v130 + v36);
  *v131 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v126, 4uLL), v129));
  v132 = (v131 + v36);
  v134 = *v118;
  v133 = (v118 - v33);
  v136 = *v128;
  v135 = (v128 + v36);
  v138 = *v133;
  v137 = (v133 - v33);
  v140 = *v135;
  v139 = (v135 + v36);
  v142 = *v137;
  v141 = (v137 - v33);
  v144 = *v139;
  v143 = (v139 + v36);
  v145 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(vqsubq_s16(v134, v125), 4uLL), v136));
  v147 = *v141;
  v146 = (v141 - v33);
  *v132 = v145;
  v148 = (v132 + v36);
  v150 = *v143;
  v149 = (v143 + v36);
  *v148 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(vqsubq_s16(v138, v123), 4uLL), v140));
  v151 = (v148 + v36);
  *v151 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(vqsubq_s16(v142, v122), 4uLL), v144));
  v152 = (v151 + v36);
  *v152 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(vqsubq_s16(v147, v117), 4uLL), v150));
  v153 = (v152 + v36);
  v155 = *v146;
  v154 = (v146 - v33);
  v157 = *v149;
  v156 = (v149 + v36);
  v159 = *v154;
  v158 = (v154 - v33);
  v161 = *v156;
  v160 = (v156 + v36);
  v163 = *v158;
  v162 = (v158 - v33);
  v165 = *v160;
  v164 = (v160 + v36);
  v166 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(vqsubq_s16(v155, v102), 4uLL), v157));
  v168 = *v162;
  v167 = (v162 - v33);
  *v153 = v166;
  v169 = (v153 + v36);
  v171 = *v164;
  v170 = (v164 + v36);
  *v169 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(vqsubq_s16(v159, v98), 4uLL), v161));
  v172 = (v169 + v36);
  *v172 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(vqsubq_s16(v163, v97), 4uLL), v165));
  v173 = (v172 + v36);
  *v173 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(vqsubq_s16(v168, v92), 4uLL), v171));
  v174 = (v173 + v36);
  v176 = *v167;
  v175 = (v167 - v33);
  v178 = *v170;
  v177 = (v170 + v36);
  v180 = *v175;
  v179 = (v175 - v33);
  v182 = *v177;
  v181 = (v177 + v36);
  v184 = *v179;
  v183 = (v179 - v33);
  v186 = *v181;
  v185 = (v181 + v36);
  v187 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(vqsubq_s16(v176, v77), 4uLL), v178));
  v189 = *v183;
  v188 = (v183 - v33);
  *v174 = v187;
  v190 = (v174 + v36);
  v192 = *v185;
  v191 = (v185 + v36);
  *v190 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(vqsubq_s16(v180, v73), 4uLL), v182));
  v193 = (v190 + v36);
  *v193 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(vqsubq_s16(v184, v72), 4uLL), v186));
  v194 = (v193 + v36);
  *v194 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(vqsubq_s16(v189, v67), 4uLL), v192));
  v195 = (v194 + v36);
  v197 = *v188;
  v196 = (v188 - v33);
  v199 = *v191;
  v198 = (v191 + v36);
  v201 = *v196;
  v200 = (v196 - v33);
  v203 = *v198;
  v202 = (v198 + v36);
  v204 = *v200;
  v205 = *v202;
  v206 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(vqsubq_s16(v197, v52), 4uLL), v199));
  v207 = *(v200 - v33);
  *v195 = v206;
  v208 = (v195 + v36);
  v209 = *(v202 + v36);
  *v208 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(vqsubq_s16(v201, v47), 4uLL), v203));
  v210 = (v208 + v36);
  *v210 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(vqsubq_s16(v204, v46), 4uLL), v205));
  *(v210 + v36) = vqmovun_s16(vaddw_u8(vrshrq_n_s16(vqsubq_s16(v207, v41), 4uLL), v209));
}

uint8x8_t *sub_2779403B4(uint8x8_t *result, uint64_t a2, _OWORD *a3, int a4)
{
  v4 = &word_27A718BC0;
  while (1)
  {
    LODWORD(v5) = 0;
    v6 = &word_27A718BC0;
    do
    {
      v5 = (v5 + 8);
      v7 = *a3;
      *a3 = 0uLL;
      v8 = a3 + 4;
      v9 = *v8;
      *v8 = 0uLL;
      v8 += 4;
      v10 = *v8;
      *v8 = 0uLL;
      v8 += 4;
      v11 = *v8;
      *v8 = 0uLL;
      v8 += 4;
      v12 = *v8;
      *v8 = 0uLL;
      v8 += 4;
      v13 = *v8;
      *v8 = 0uLL;
      v8 += 4;
      v14 = *v8;
      *v8 = 0uLL;
      v8 += 4;
      v15 = *v8;
      *v8 = 0uLL;
      a3 = v8 + 4;
      v16 = vtrn1q_s16(v7, v9);
      v17 = vtrn2q_s16(v7, v9);
      v18 = vtrn1q_s16(v10, v11);
      v19 = vtrn2q_s16(v10, v11);
      v20 = vtrn1q_s16(v12, v13);
      v21 = vtrn2q_s16(v12, v13);
      v22 = vtrn1q_s16(v14, v15);
      v23 = vtrn2q_s16(v14, v15);
      v24 = vtrn1q_s32(v20, v22);
      v25 = vtrn2q_s32(v20, v22);
      v26 = vtrn1q_s32(v21, v23);
      v27 = vtrn2q_s32(v21, v23);
      v28 = vtrn1q_s32(v17, v19);
      v29 = vtrn2q_s32(v17, v19);
      v30 = vtrn1q_s32(v16, v18);
      v31 = vtrn2q_s32(v16, v18);
      v32 = vtrn1q_s64(v30, v24);
      v33 = vtrn2q_s64(v30, v24);
      v34 = vtrn1q_s64(v28, v26);
      v35 = vtrn2q_s64(v28, v26);
      v36 = vtrn2q_s64(v31, v25);
      v37 = vtrn1q_s64(v31, v25);
      v38 = vtrn1q_s64(v29, v27);
      v39 = vtrn2q_s64(v29, v27);
      v40 = (result + a2 + a2);
      v31.i64[0] = *v40;
      v41 = (v40 + a2);
      v29.i64[0] = *v41;
      v42 = (v41 + a2);
      v44 = *v42;
      v43 = (v42 + a2);
      v45 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v34, 2uLL), *(result + a2)));
      *result = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v32, 2uLL), *result));
      v46 = (result + a2);
      v48 = *v43;
      v47 = (v43 + a2);
      *v46 = v45;
      v49 = (v46 + a2);
      v50 = *v47;
      *v49 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v37, 2uLL), *v31.i8));
      v51 = (v49 + a2);
      v52 = *(v47 + a2);
      *v51 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v38, 2uLL), *v29.i8));
      v53 = (v51 + a2);
      *v53 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v33, 2uLL), v44));
      v54 = (v53 + a2);
      *v54 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v35, 2uLL), v48));
      v55 = (v54 + a2);
      *v55 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v36, 2uLL), v50));
      v56 = (v55 + a2);
      *v56 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v39, 2uLL), v52));
      v57 = *v6++;
      result = (&v56[1] + a2 + -8 * a2);
    }

    while (a4 >= v57);
    v58 = *v4++;
    if (a4 < v58)
    {
      break;
    }

    result = (&result[a2] - v5);
    a3 = &a3[-4 * v5 + 1];
  }

  return result;
}

uint8x8_t *sub_277940550(uint8x8_t *result, uint64_t a2, _OWORD *a3, int a4)
{
  v4 = vdup_n_s16(0x5A80u);
  v4.i16[1] = 27152;
  v5 = &word_27A718BC8;
  while (1)
  {
    LODWORD(v6) = 0;
    v7 = &word_27A718BD0;
    do
    {
      v6 = (v6 + 8);
      v8 = *a3;
      *a3 = 0uLL;
      v9 = a3 + 4;
      v10 = *v9;
      *v9 = 0uLL;
      v9 += 4;
      v11 = *v9;
      *v9 = 0uLL;
      v9 += 4;
      v12 = *v9;
      *v9 = 0uLL;
      v9 += 4;
      v13 = *v9;
      *v9 = 0uLL;
      v9 += 4;
      v14 = *v9;
      *v9 = 0uLL;
      v9 += 4;
      v15 = *v9;
      *v9 = 0uLL;
      v9 += 4;
      v16 = *v9;
      *v9 = 0uLL;
      a3 = v9 + 4;
      v17 = vqrdmulhq_lane_s16(v8, v4, 0);
      v18 = vqrdmulhq_lane_s16(v10, v4, 0);
      v19 = vqrdmulhq_lane_s16(v11, v4, 0);
      v20 = vqrdmulhq_lane_s16(v12, v4, 0);
      v21 = vqrdmulhq_lane_s16(v13, v4, 0);
      v22 = vqrdmulhq_lane_s16(v14, v4, 0);
      v23 = vqrdmulhq_lane_s16(v15, v4, 0);
      v24 = vqrdmulhq_lane_s16(v16, v4, 0);
      v25 = vqaddq_s16(v17, vrshrq_n_s16(vqrdmulhq_lane_s16(v17, v4, 1), 1uLL));
      v26 = vqaddq_s16(v18, vrshrq_n_s16(vqrdmulhq_lane_s16(v18, v4, 1), 1uLL));
      v27 = vqaddq_s16(v19, vrshrq_n_s16(vqrdmulhq_lane_s16(v19, v4, 1), 1uLL));
      v28 = vqaddq_s16(v20, vrshrq_n_s16(vqrdmulhq_lane_s16(v20, v4, 1), 1uLL));
      v29 = vqaddq_s16(v21, vrshrq_n_s16(vqrdmulhq_lane_s16(v21, v4, 1), 1uLL));
      v30 = vqaddq_s16(v22, vrshrq_n_s16(vqrdmulhq_lane_s16(v22, v4, 1), 1uLL));
      v31 = vqaddq_s16(v23, vrshrq_n_s16(vqrdmulhq_lane_s16(v23, v4, 1), 1uLL));
      v32 = vqaddq_s16(v24, vrshrq_n_s16(vqrdmulhq_lane_s16(v24, v4, 1), 1uLL));
      v33 = vtrn1q_s16(v25, v26);
      v34 = vtrn2q_s16(v25, v26);
      v35 = vtrn1q_s16(v27, v28);
      v36 = vtrn2q_s16(v27, v28);
      v37 = vtrn1q_s16(v29, v30);
      v38 = vtrn2q_s16(v29, v30);
      v39 = vtrn1q_s16(v31, v32);
      v40 = vtrn2q_s16(v31, v32);
      v41 = vtrn1q_s32(v37, v39);
      v42 = vtrn2q_s32(v37, v39);
      v43 = vtrn1q_s32(v38, v40);
      v44 = vtrn2q_s32(v38, v40);
      v45 = vtrn1q_s32(v34, v36);
      v46 = vtrn2q_s32(v34, v36);
      v47 = vtrn1q_s32(v33, v35);
      v48 = vtrn2q_s32(v33, v35);
      v49 = vtrn1q_s64(v47, v41);
      v50 = vtrn2q_s64(v47, v41);
      v51 = vtrn1q_s64(v45, v43);
      v52 = vtrn2q_s64(v45, v43);
      v53 = vtrn2q_s64(v48, v42);
      v54 = vtrn1q_s64(v48, v42);
      v55 = vtrn1q_s64(v46, v44);
      v56 = vtrn2q_s64(v46, v44);
      v57 = (result + a2 + a2);
      v48.i64[0] = *v57;
      v58 = (v57 + a2);
      v46.i64[0] = *v58;
      v59 = (v58 + a2);
      v61 = *v59;
      v60 = (v59 + a2);
      v62 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v51, 2uLL), *(result + a2)));
      *result = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v49, 2uLL), *result));
      v63 = (result + a2);
      v65 = *v60;
      v64 = (v60 + a2);
      *v63 = v62;
      v66 = (v63 + a2);
      v67 = *v64;
      *v66 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v54, 2uLL), *v48.i8));
      v68 = (v66 + a2);
      v69 = *(v64 + a2);
      *v68 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v55, 2uLL), *v46.i8));
      v70 = (v68 + a2);
      *v70 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v50, 2uLL), v61));
      v71 = (v70 + a2);
      *v71 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v52, 2uLL), v65));
      v72 = (v71 + a2);
      *v72 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v53, 2uLL), v67));
      v73 = (v72 + a2);
      *v73 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v56, 2uLL), v69));
      v74 = *v7++;
      result = (&v73[1] + a2 + -8 * a2);
    }

    while (a4 >= v74);
    v75 = *v5++;
    if (a4 < v75)
    {
      break;
    }

    result = (&result[a2] - v6);
    a3 = &a3[-4 * v6 + 1];
  }

  return result;
}

uint8x8_t *sub_27794077C(uint8x8_t *result, uint64_t a2, _OWORD *a3, int a4)
{
  v4 = vdup_n_s16(0x5A80u);
  v4.i16[1] = 27152;
  v5 = &word_27A718BD0;
  while (1)
  {
    LODWORD(v6) = 0;
    v7 = &word_27A718BC8;
    do
    {
      v6 = (v6 + 8);
      v8 = *a3;
      *a3 = 0uLL;
      v9 = a3 + 2;
      v10 = *v9;
      *v9 = 0uLL;
      v9 += 2;
      v11 = *v9;
      *v9 = 0uLL;
      v9 += 2;
      v12 = *v9;
      *v9 = 0uLL;
      v9 += 2;
      v13 = *v9;
      *v9 = 0uLL;
      v9 += 2;
      v14 = *v9;
      *v9 = 0uLL;
      v9 += 2;
      v15 = *v9;
      *v9 = 0uLL;
      v9 += 2;
      v16 = *v9;
      *v9 = 0uLL;
      a3 = v9 + 2;
      v17 = vqshlq_n_s16(vqrdmulhq_lane_s16(v8, v4, 0), 1uLL);
      v18 = vqshlq_n_s16(vqrdmulhq_lane_s16(v10, v4, 0), 1uLL);
      v19 = vqshlq_n_s16(vqrdmulhq_lane_s16(v11, v4, 0), 1uLL);
      v20 = vqshlq_n_s16(vqrdmulhq_lane_s16(v12, v4, 0), 1uLL);
      v21 = vqshlq_n_s16(vqrdmulhq_lane_s16(v13, v4, 0), 1uLL);
      v22 = vqshlq_n_s16(vqrdmulhq_lane_s16(v14, v4, 0), 1uLL);
      v23 = vqshlq_n_s16(vqrdmulhq_lane_s16(v15, v4, 0), 1uLL);
      v24 = vqshlq_n_s16(vqrdmulhq_lane_s16(v16, v4, 0), 1uLL);
      v25 = vqaddq_s16(vqaddq_s16(v17, v17), vqrdmulhq_lane_s16(v17, v4, 1));
      v26 = vqaddq_s16(vqaddq_s16(v18, v18), vqrdmulhq_lane_s16(v18, v4, 1));
      v27 = vqaddq_s16(vqaddq_s16(v19, v19), vqrdmulhq_lane_s16(v19, v4, 1));
      v28 = vqaddq_s16(vqaddq_s16(v20, v20), vqrdmulhq_lane_s16(v20, v4, 1));
      v29 = vqaddq_s16(vqaddq_s16(v21, v21), vqrdmulhq_lane_s16(v21, v4, 1));
      v30 = vqaddq_s16(vqaddq_s16(v22, v22), vqrdmulhq_lane_s16(v22, v4, 1));
      v31 = vqaddq_s16(vqaddq_s16(v23, v23), vqrdmulhq_lane_s16(v23, v4, 1));
      v32 = vqaddq_s16(vqaddq_s16(v24, v24), vqrdmulhq_lane_s16(v24, v4, 1));
      v33 = vtrn1q_s16(v25, v26);
      v34 = vtrn2q_s16(v25, v26);
      v35 = vtrn1q_s16(v27, v28);
      v36 = vtrn2q_s16(v27, v28);
      v37 = vtrn1q_s16(v29, v30);
      v38 = vtrn2q_s16(v29, v30);
      v39 = vtrn1q_s16(v31, v32);
      v40 = vtrn2q_s16(v31, v32);
      v41 = vtrn1q_s32(v37, v39);
      v42 = vtrn2q_s32(v37, v39);
      v43 = vtrn1q_s32(v38, v40);
      v44 = vtrn2q_s32(v38, v40);
      v45 = vtrn1q_s32(v34, v36);
      v46 = vtrn2q_s32(v34, v36);
      v47 = vtrn1q_s32(v33, v35);
      v48 = vtrn2q_s32(v33, v35);
      v49 = vtrn1q_s64(v47, v41);
      v50 = vtrn2q_s64(v47, v41);
      v51 = vtrn1q_s64(v45, v43);
      v52 = vtrn2q_s64(v45, v43);
      v53 = vtrn2q_s64(v48, v42);
      v54 = vtrn1q_s64(v48, v42);
      v55 = vtrn1q_s64(v46, v44);
      v56 = vtrn2q_s64(v46, v44);
      v57 = (result + a2 + a2);
      v48.i64[0] = *v57;
      v58 = (v57 + a2);
      v46.i64[0] = *v58;
      v59 = (v58 + a2);
      v61 = *v59;
      v60 = (v59 + a2);
      v62 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v51, 4uLL), *(result + a2)));
      *result = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v49, 4uLL), *result));
      v63 = (result + a2);
      v65 = *v60;
      v64 = (v60 + a2);
      *v63 = v62;
      v66 = (v63 + a2);
      v67 = *v64;
      *v66 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v54, 4uLL), *v48.i8));
      v68 = (v66 + a2);
      v69 = *(v64 + a2);
      *v68 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v55, 4uLL), *v46.i8));
      v70 = (v68 + a2);
      *v70 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v50, 4uLL), v61));
      v71 = (v70 + a2);
      *v71 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v52, 4uLL), v65));
      v72 = (v71 + a2);
      *v72 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v53, 4uLL), v67));
      v73 = (v72 + a2);
      *v73 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v56, 4uLL), v69));
      v74 = *v7++;
      result = (&v73[1] + a2 + -8 * a2);
    }

    while (a4 >= v74);
    v75 = *v5++;
    if (a4 < v75)
    {
      break;
    }

    result = (&result[a2] - v6);
    a3 = &a3[-2 * v6 + 1];
  }

  return result;
}

uint8x8_t *sub_2779409C8(uint8x8_t *result, uint64_t a2, int16x8_t *a3, int a4)
{
  v4 = &word_27A718BD4;
  while (1)
  {
    v5 = *v4++;
    v6 = *a3;
    *a3 = 0uLL;
    v7 = a3 + 4;
    v8 = *v7;
    *v7 = 0uLL;
    v7 += 4;
    v9 = *v7;
    *v7 = 0uLL;
    v7 += 4;
    v10 = *v7;
    *v7 = 0uLL;
    v7 += 4;
    v11 = *v7;
    *v7 = 0uLL;
    v7 += 4;
    v12 = *v7;
    *v7 = 0uLL;
    v7 += 4;
    v13 = *v7;
    *v7 = 0uLL;
    v7 += 4;
    v14 = *v7;
    *v7 = 0uLL;
    v15 = v7 + 4;
    v16 = vrshrq_n_s16(v6, 1uLL);
    v17 = vrshrq_n_s16(v8, 1uLL);
    v18 = vrshrq_n_s16(v9, 1uLL);
    v19 = vrshrq_n_s16(v10, 1uLL);
    v20 = vrshrq_n_s16(v11, 1uLL);
    v21 = vrshrq_n_s16(v12, 1uLL);
    v22 = vrshrq_n_s16(v13, 1uLL);
    v23 = vrshrq_n_s16(v14, 1uLL);
    v24 = vtrn1q_s16(v16, v17);
    v25 = vtrn2q_s16(v16, v17);
    v26 = vtrn1q_s16(v18, v19);
    v27 = vtrn2q_s16(v18, v19);
    v28 = vtrn1q_s16(v20, v21);
    v29 = vtrn2q_s16(v20, v21);
    v30 = vtrn1q_s16(v22, v23);
    v31 = vtrn2q_s16(v22, v23);
    v32 = vtrn1q_s32(v28, v30);
    v33 = vtrn2q_s32(v28, v30);
    v34 = vtrn1q_s32(v29, v31);
    v35 = vtrn2q_s32(v29, v31);
    v36 = vtrn1q_s32(v25, v27);
    v37 = vtrn2q_s32(v25, v27);
    v38 = vtrn1q_s32(v24, v26);
    v39 = vtrn2q_s32(v24, v26);
    v40 = vtrn1q_s64(v38, v32);
    v41 = vtrn2q_s64(v38, v32);
    v42 = vtrn1q_s64(v36, v34);
    v43 = vtrn2q_s64(v36, v34);
    v44 = vtrn2q_s64(v39, v33);
    v45 = vtrn1q_s64(v39, v33);
    v46 = vtrn1q_s64(v37, v35);
    v47 = vtrn2q_s64(v37, v35);
    v48 = (result + a2 + a2);
    v39.i64[0] = *v48;
    v49 = (v48 + a2);
    v37.i64[0] = *v49;
    v50 = (v49 + a2);
    v52 = *v50;
    v51 = (v50 + a2);
    v53 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v42, 2uLL), *(result + a2)));
    *result = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v40, 2uLL), *result));
    v54 = (result + a2);
    v56 = *v51;
    v55 = (v51 + a2);
    *v54 = v53;
    v57 = (v54 + a2);
    v58 = *v55;
    *v57 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v45, 2uLL), *v39.i8));
    v59 = (v57 + a2);
    v60 = *(v55 + a2);
    *v59 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v46, 2uLL), *v37.i8));
    v61 = (v59 + a2);
    *v61 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v41, 2uLL), v52));
    v62 = (v61 + a2);
    *v62 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v43, 2uLL), v56));
    v63 = (v62 + a2);
    *v63 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v44, 2uLL), v58));
    v64 = (v63 + a2);
    *v64 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v47, 2uLL), v60));
    result = (v64 + a2);
    if (a4 < v5)
    {
      break;
    }

    a3 = v15 - 31;
  }

  return result;
}

char *sub_277940B58(uint8x8_t *a1, uint64_t a2, _OWORD *a3, int a4)
{
  v4 = &word_27A718BD4;
  while (1)
  {
    v5 = *v4++;
    v6 = *a3;
    *a3 = 0uLL;
    v7 = a3 + 1;
    v8 = *v7;
    *v7++ = 0uLL;
    v9 = *v7;
    *v7++ = 0uLL;
    v10 = *v7;
    *v7++ = 0uLL;
    v11 = *v7;
    *v7++ = 0uLL;
    v12 = *v7;
    *v7++ = 0uLL;
    v13 = *v7;
    *v7++ = 0uLL;
    v14 = *v7;
    *v7 = 0uLL;
    a3 = v7 + 1;
    v15 = vtrn1q_s16(v6, v8);
    v16 = vtrn2q_s16(v6, v8);
    v17 = vtrn1q_s16(v9, v10);
    v18 = vtrn2q_s16(v9, v10);
    v19 = vtrn1q_s16(v11, v12);
    v20 = vtrn2q_s16(v11, v12);
    v21 = vtrn1q_s16(v13, v14);
    v22 = vtrn2q_s16(v13, v14);
    v23 = vtrn1q_s32(v19, v21);
    v24 = vtrn2q_s32(v19, v21);
    v25 = vtrn1q_s32(v20, v22);
    v26 = vtrn2q_s32(v20, v22);
    v27 = vtrn1q_s32(v16, v18);
    v28 = vtrn2q_s32(v16, v18);
    v29 = vtrn1q_s32(v15, v17);
    v30 = vtrn2q_s32(v15, v17);
    v31 = vtrn1q_s64(v29, v23);
    v32 = vtrn2q_s64(v29, v23);
    v33 = vtrn1q_s64(v27, v25);
    v34 = vtrn2q_s64(v27, v25);
    v35 = vtrn2q_s64(v30, v24);
    v36 = vtrn1q_s64(v30, v24);
    v37 = vtrn1q_s64(v28, v26);
    v38 = vtrn2q_s64(v28, v26);
    v39 = (a1 + a2 + a2);
    v30.i64[0] = *v39;
    v40 = (v39 + a2);
    v28.i64[0] = *v40;
    v41 = (v40 + a2);
    v43 = *v41;
    v42 = (v41 + a2);
    v44 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v33, 3uLL), *(a1 + a2)));
    *a1 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v31, 3uLL), *a1));
    v45 = (a1 + a2);
    v47 = *v42;
    v46 = (v42 + a2);
    *v45 = v44;
    v48 = (v45 + a2);
    v49 = *v46;
    *v48 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v36, 3uLL), *v30.i8));
    v50 = (v48 + a2);
    v51 = *(v46 + a2);
    *v50 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v37, 3uLL), *v28.i8));
    v52 = (v50 + a2);
    *v52 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v32, 3uLL), v43));
    v53 = (v52 + a2);
    *v53 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v34, 3uLL), v47));
    v54 = (v53 + a2);
    *v54 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v35, 3uLL), v49));
    v55 = (v54 + a2);
    *v55 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v38, 3uLL), v51));
    result = v55 + a2;
    if (a4 < v5)
    {
      break;
    }

    a1 = &result[-8 * a2 + 8];
  }

  return result;
}

void sub_277940CC8(uint8x16_t *a1, uint64_t a2, __int16 *a3, uint64_t a4)
{
  if (a4)
  {
    sub_27793F4E8(a3, 64);
    v5 = &v17;
    v6 = 24;
    if (v7 < v8 || (sub_27793F4E8((v4 + 16), 64), v5 = &v18, v6 = 16, v10 < v11) || (sub_27793F4E8((v9 + 32), 64), v5 = &v19, v6 = 8, v13 < v14))
    {
      do
      {
        v15 = __OFSUB__(v6, 4);
        v6 -= 4;
        *v5 = 0uLL;
        *(v5 + 1) = 0uLL;
        *(v5 + 2) = 0uLL;
        *(v5 + 3) = 0uLL;
        v16 = v5 + 64;
        *v16 = 0uLL;
        v16[1] = 0uLL;
        v16[2] = 0uLL;
        v16[3] = 0uLL;
        v16 += 4;
        *v16 = 0uLL;
        v16[1] = 0uLL;
        v16[2] = 0uLL;
        v16[3] = 0uLL;
        v16 += 4;
        *v16 = 0uLL;
        v16[1] = 0uLL;
        v16[2] = 0uLL;
        v16[3] = 0uLL;
        v5 = (v16 + 4);
      }

      while (!((v6 < 0) ^ v15 | (v6 == 0)));
    }

    else
    {
      sub_27793F4E8((v12 + 48), 64);
    }

    sub_27793FF40();
    sub_27793FF40();
    sub_27793FF40();
    sub_27793FF40();
  }

  else
  {
    vld1q_dup_s16(a3);
    *a3 = 0;
    sub_27793A96C(a1, a2, a3, a4, 32);
  }
}

void sub_277940DE8(uint8x16_t *a1, uint64_t a2, __int16 *a3, uint64_t a4)
{
  if (a4)
  {
    sub_27793D508(sub_27793BEB4, a3, 64);
    v6 = &v20;
    v7 = 24;
    if (v8 < v9 || (sub_27793D508(v5, (v4 + 16), 64), v6 = &v21, v7 = 16, v12 < v13) || (sub_27793D508(v11, (v10 + 32), 64), v6 = &v22, v7 = 8, v16 < v17))
    {
      do
      {
        v18 = __OFSUB__(v7, 8);
        v7 -= 8;
        *v6 = 0uLL;
        *(v6 + 1) = 0uLL;
        *(v6 + 2) = 0uLL;
        *(v6 + 3) = 0uLL;
        v19 = v6 + 64;
        *v19 = 0uLL;
        v19[1] = 0uLL;
        v19[2] = 0uLL;
        v19[3] = 0uLL;
        v19 += 4;
        *v19 = 0uLL;
        v19[1] = 0uLL;
        v19[2] = 0uLL;
        v19[3] = 0uLL;
        v19 += 4;
        *v19 = 0uLL;
        v19[1] = 0uLL;
        v19[2] = 0uLL;
        v19[3] = 0uLL;
        v6 = (v19 + 4);
      }

      while (!((v7 < 0) ^ v18 | (v7 == 0)));
    }

    else
    {
      sub_27793D508(v15, (v14 + 48), 64);
    }

    sub_27793FF40();
    sub_27793FF40();
  }

  else
  {
    vld1q_dup_s16(a3);
    *a3 = 0;
    sub_27793A8FC(a1, a2, a3, a4, 32);
  }
}

uint8x16_t *sub_277940EF0(uint8x16_t *a1, uint64_t a2, __int16 *a3, uint64_t a4)
{
  if (a4)
  {
    sub_27793F9D0(a3, 32);
    v11 = &v33;
    v12 = 8;
    if (v8 < 36)
    {
      do
      {
        v13 = __OFSUB__(v12, 4);
        v12 -= 4;
        *v11 = 0uLL;
        *(v11 + 1) = 0uLL;
        *(v11 + 2) = 0uLL;
        *(v11 + 3) = 0uLL;
        v14 = v11 + 64;
        *v14 = 0uLL;
        v14[1] = 0uLL;
        v14[2] = 0uLL;
        v14[3] = 0uLL;
        v14 += 4;
        *v14 = 0uLL;
        v14[1] = 0uLL;
        v14[2] = 0uLL;
        v14[3] = 0uLL;
        v14 += 4;
        *v14 = 0uLL;
        v14[1] = 0uLL;
        v14[2] = 0uLL;
        v14[3] = 0uLL;
        v11 = (v14 + 4);
      }

      while (!((v12 < 0) ^ v13 | (v12 == 0)));
    }

    else
    {
      sub_27793F9D0((v7 + 16), 32);
    }

    v15 = sub_27793D944(v5, v6, v7, v8, v9, v10);
    v21 = sub_27793D944(v15, v16, v17, v18, v19, v20);
    v27 = sub_27793D944(v21, v22, v23, v24, v25, v26);
    return sub_27793D944(v27, v28, v29, v30, v31, v32);
  }

  else
  {
    vld1q_dup_s16(a3);
    *a3 = 0;
    return sub_27793A96C(a1, a2, a3, a4, 16);
  }
}

void sub_277940FC0(uint8x8_t *a1, uint64_t a2, __int16 *a3, uint64_t a4)
{
  if (a4)
  {
    v4 = 0uLL;
    v5 = 64;
    do
    {
      *a3 = v4;
      v6 = &a3[v5 / 2];
      *v6 = v4;
      v7 = &v6[v5 / 2];
      *v7 = v4;
      v8 = &v7[v5 / 2];
      *v8 = v4;
      v9 = &v8[v5 / 0x10];
      *v9 = v4;
      v10 = &v9[v5 / 0x10];
      *v10 = v4;
      v11 = &v10[v5 / 0x10];
      *v11 = v4;
      v11[v5 / 0x10] = v4;
      sub_27793AF94();
      v14 = vrshrq_n_s16(v13, 2uLL);
      v16 = vrshrq_n_s16(v15, 2uLL);
      v18 = vrshrq_n_s16(v17, 2uLL);
      v20 = vrshrq_n_s16(v19, 2uLL);
      v22 = vrshrq_n_s16(v21, 2uLL);
      v24 = vrshrq_n_s16(v23, 2uLL);
      v26 = vrshrq_n_s16(v25, 2uLL);
      v28 = vrshrq_n_s16(v27, 2uLL);
      v29 = vtrn1q_s16(v14, v16);
      v30 = vtrn2q_s16(v14, v16);
      v31 = vtrn1q_s16(v18, v20);
      v32 = vtrn2q_s16(v18, v20);
      v33 = vtrn1q_s16(v22, v24);
      v34 = vtrn2q_s16(v22, v24);
      v35 = vtrn1q_s16(v26, v28);
      v36 = vtrn2q_s16(v26, v28);
      v37 = vtrn1q_s32(v33, v35);
      v38 = vtrn2q_s32(v33, v35);
      v39 = vtrn1q_s32(v34, v36);
      v40 = vtrn2q_s32(v34, v36);
      v41 = vtrn1q_s32(v30, v32);
      v42 = vtrn2q_s32(v30, v32);
      v43 = vtrn1q_s32(v29, v31);
      v44 = vtrn2q_s32(v29, v31);
      *v45 = vtrn1q_s64(v43, v37);
      v45[1] = vtrn1q_s64(v41, v39);
      v45[2] = vtrn1q_s64(v44, v38);
      v45[3] = vtrn1q_s64(v42, v40);
      v45 += 4;
      *v45 = vtrn2q_s64(v43, v37);
      v45[1] = vtrn2q_s64(v41, v39);
      v45[2] = vtrn2q_s64(v44, v38);
      v45[3] = vtrn2q_s64(v42, v40);
      v46 = v45 + 4;
    }

    while (v47 >= v48);
    if (v12)
    {
      do
      {
        v49 = __OFSUB__(v12, 8);
        v12 -= 8;
        *v46 = v4;
        v46[1] = 0uLL;
        v46[2] = 0uLL;
        v46[3] = 0uLL;
        v50 = v46 + 4;
        *v50 = v4;
        v50[1] = 0uLL;
        v50[2] = 0uLL;
        v50[3] = 0uLL;
        v46 = v50 + 4;
      }

      while (!((v12 < 0) ^ v49 | (v12 == 0)));
    }

    sub_27793FF40();
  }

  else
  {
    vld1q_dup_s16(a3);
    *a3 = 0;
    sub_27793A8AC(a1, a2, a3, a4, 32);
  }
}

void sub_277941128(uint8x16_t *a1, uint64_t a2, __int16 *a3, uint64_t a4)
{
  if (a4)
  {
    sub_27793F4E8(a3, 16);
    do
    {
      sub_27793AF94();
      v7 = (v5 + v4 + v4);
      v10 = *v7;
      v9 = (v7 + v4);
      v13 = *v9;
      v12 = (v9 + v4);
      v16 = *v12;
      v15 = (v12 + v4);
      v18 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v8, 4uLL), *(v5 + v4)));
      *v5 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v6, 4uLL), *v5));
      v19 = (v5 + v4);
      v21 = *v15;
      v20 = (v15 + v4);
      *v19 = v18;
      v23 = (v19 + v4);
      v24 = *v20;
      *v23 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v11, 4uLL), v10));
      v26 = (v23 + v4);
      v27 = *(v20 + v4);
      *v26 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v14, 4uLL), v13));
      v29 = (v26 + v4);
      *v29 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v17, 4uLL), v16));
      v30 = (v29 + v4);
      *v30 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v22, 4uLL), v21));
      v31 = (v30 + v4);
      *v31 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v25, 4uLL), v24));
      *(v31 + v4) = vqmovun_s16(vaddw_u8(vrshrq_n_s16(v28, 4uLL), v27));
    }

    while (v32 < 32);
  }

  else
  {
    vld1q_dup_s16(a3);
    *a3 = 0;
    sub_27793A96C(a1, a2, a3, a4, 8);
  }
}

__n128 sub_277941258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int16x8_t *a7)
{
  result = *v7;
  v13 = *(v7 + 16);
  v14 = vqrdmulhq_lane_s16(v8, *v7, 1);
  v15 = vqrdmulhq_lane_s16(v8, *v7, 0);
  v16 = vqrdmulhq_lane_s16(v9, *v7, 2);
  v17 = vqrdmulhq_lane_s16(v9, *v7, 3);
  v18 = vqrdmulhq_laneq_s16(v10, *v7, 5);
  v19 = vqrdmulhq_laneq_s16(v10, *v7, 4);
  v20 = vqrdmulhq_laneq_s16(v11, *v7, 6);
  v21 = vqrdmulhq_laneq_s16(v11, *v7, 7);
  v22 = vqaddq_s16(v15, v17);
  v23 = vqsubq_s16(v15, v17);
  v24 = vqsubq_s16(v21, v19);
  v25 = vqaddq_s16(v21, v19);
  v26 = vqaddq_s16(v20, v18);
  v27 = vqsubq_s16(v20, v18);
  v28 = vqsubq_s16(v14, v16);
  v29 = vqaddq_s16(v14, v16);
  v30 = vmlsl_lane_s16(vmull_lane_s16(*v27.i8, *&v13, 1), *v24.i8, *&v13, 0);
  v31 = vmlsl_high_lane_s16(vmull_high_lane_s16(v27, *&v13, 1), v24, *&v13, 0);
  v32 = vqrshrn_high_n_s32(vqrshrn_n_s32(vnegq_s32(vmlal_lane_s16(vmull_lane_s16(*v27.i8, *&v13, 0), *v24.i8, *&v13, 1)), 0xCuLL), vnegq_s32(vmlal_high_lane_s16(vmull_high_lane_s16(v27, *&v13, 0), v24, *&v13, 1)), 0xCuLL);
  v33 = vmlal_lane_s16(vmull_lane_s16(*v28.i8, *&v13, 0), *v23.i8, *&v13, 1);
  v34 = vmlal_high_lane_s16(vmull_high_lane_s16(v28, *&v13, 0), v23, *&v13, 1);
  v35 = vqrshrn_high_n_s32(vqrshrn_n_s32(v30, 0xCuLL), v31, 0xCuLL);
  v36 = vqrshrn_high_n_s32(vqrshrn_n_s32(vmlsl_lane_s16(vmull_lane_s16(*v28.i8, *&v13, 1), *v23.i8, *&v13, 0), 0xCuLL), vmlsl_high_lane_s16(vmull_high_lane_s16(v28, *&v13, 1), v23, *&v13, 0), 0xCuLL);
  v37 = vqrshrn_high_n_s32(vqrshrn_n_s32(v33, 0xCuLL), v34, 0xCuLL);
  v38 = vqsubq_s16(v22, v25);
  v39 = vqsubq_s16(v36, v32);
  v40 = vqsubq_s16(v29, v26);
  v41 = vqsubq_s16(v37, v35);
  *a7 = vqaddq_s16(v22, v25);
  a7[1] = vqaddq_s16(v36, v32);
  a7[2] = vqrshrn_high_n_s32(vqrshrn_n_s32(vmlsl_lane_s16(vmull_lane_s16(*v41.i8, *&v13, 3), *v39.i8, *&v13, 2), 0xCuLL), vmlsl_high_lane_s16(vmull_high_lane_s16(v41, *&v13, 3), v39, *&v13, 2), 0xCuLL);
  a7[3] = vqrshrn_high_n_s32(vqrshrn_n_s32(vmlsl_lane_s16(vmull_lane_s16(*v40.i8, *&v13, 3), *v38.i8, *&v13, 2), 0xCuLL), vmlsl_high_lane_s16(vmull_high_lane_s16(v40, *&v13, 3), v38, *&v13, 2), 0xCuLL);
  v42 = a7 + 4;
  *v42 = vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v40.i8, *&v13, 2), *v38.i8, *&v13, 3), 0xCuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v40, *&v13, 2), v38, *&v13, 3), 0xCuLL);
  v42[1] = vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v41.i8, *&v13, 2), *v39.i8, *&v13, 3), 0xCuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v41, *&v13, 2), v39, *&v13, 3), 0xCuLL);
  v42[2] = vqaddq_s16(v37, v35);
  v42[3] = vqaddq_s16(v29, v26);
  return result;
}

void sub_277941390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int16x8_t *a7)
{
  do
  {
    v8 = v7[8];
    v9 = a7[8];
    v10 = a7[16];
    v11 = v7[24];
    v12 = v7[16];
    v13 = a7[24];
    v14 = vqaddq_s16(*a7, v8);
    v15 = vqsubq_s16(*a7, v8);
    v16 = vqaddq_s16(*v7, v9);
    v17 = vqsubq_s16(*v7, v9);
    v18 = vqsubq_s16(v11, v10);
    v19 = vqaddq_s16(v11, v10);
    v20 = vqaddq_s16(v13, v12);
    v21 = vqsubq_s16(v13, v12);
    v22 = vmlsl_lane_s16(vmull_lane_s16(*v17.i8, 0xEC8061F5A800B50, 2), *v15.i8, 0xEC8061F5A800B50, 3);
    v23 = vmlsl_high_lane_s16(vmull_high_lane_s16(v17, 0xEC8061F5A800B50, 2), v15, 0xEC8061F5A800B50, 3);
    v24 = vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v17.i8, 0xEC8061F5A800B50, 3), *v15.i8, 0xEC8061F5A800B50, 2), 0xCuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v17, 0xEC8061F5A800B50, 3), v15, 0xEC8061F5A800B50, 2), 0xCuLL);
    v25 = vqrshrn_high_n_s32(vqrshrn_n_s32(v22, 0xCuLL), v23, 0xCuLL);
    v26 = vmlsl_lane_s16(vmull_lane_s16(*v21.i8, 0xEC8061F5A800B50, 2), *v18.i8, 0xEC8061F5A800B50, 3);
    v27 = vmlsl_high_lane_s16(vmull_high_lane_s16(v21, 0xEC8061F5A800B50, 2), v18, 0xEC8061F5A800B50, 3);
    v28 = vqrshrn_high_n_s32(vqrshrn_n_s32(vnegq_s32(vmlal_lane_s16(vmull_lane_s16(*v21.i8, 0xEC8061F5A800B50, 3), *v18.i8, 0xEC8061F5A800B50, 2)), 0xCuLL), vnegq_s32(vmlal_high_lane_s16(vmull_high_lane_s16(v21, 0xEC8061F5A800B50, 3), v18, 0xEC8061F5A800B50, 2)), 0xCuLL);
    v29 = vqrshrn_high_n_s32(vqrshrn_n_s32(v26, 0xCuLL), v27, 0xCuLL);
    v30 = vqsubq_s16(v14, v19);
    v31 = vqsubq_s16(v25, v28);
    v32 = vqsubq_s16(v16, v20);
    v33 = vqsubq_s16(v24, v29);
    *a7 = vqaddq_s16(v14, v19);
    *v7 = vqaddq_s16(v25, v28);
    a7[8] = vqrshrn_high_n_s32(vqrshrn_n_s32(vmlsl_lane_s16(vmull_lane_s16(*v33.i8, 0xEC8061F5A800B50, 0), *v31.i8, 0xEC8061F5A800B50, 0), 0xCuLL), vmlsl_high_lane_s16(vmull_high_lane_s16(v33, 0xEC8061F5A800B50, 0), v31, 0xEC8061F5A800B50, 0), 0xCuLL);
    v7[8] = vqrshrn_high_n_s32(vqrshrn_n_s32(vmlsl_lane_s16(vmull_lane_s16(*v32.i8, 0xEC8061F5A800B50, 0), *v30.i8, 0xEC8061F5A800B50, 0), 0xCuLL), vmlsl_high_lane_s16(vmull_high_lane_s16(v32, 0xEC8061F5A800B50, 0), v30, 0xEC8061F5A800B50, 0), 0xCuLL);
    a7[16] = vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v32.i8, 0xEC8061F5A800B50, 0), *v30.i8, 0xEC8061F5A800B50, 0), 0xCuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v32, 0xEC8061F5A800B50, 0), v30, 0xEC8061F5A800B50, 0), 0xCuLL);
    v7[16] = vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v33.i8, 0xEC8061F5A800B50, 0), *v31.i8, 0xEC8061F5A800B50, 0), 0xCuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v33, 0xEC8061F5A800B50, 0), v31, 0xEC8061F5A800B50, 0), 0xCuLL);
    a7[24] = vqaddq_s16(v24, v29);
    v7[24] = vqaddq_s16(v16, v20);
    ++a7;
    --v7;
  }

  while (a7 < v7);
}

void sub_2779414F8()
{
  sub_27793BEB4();
  *v0++ = v1;
  *v0++ = v2;
  *v0++ = v3;
  *v0++ = v4;
  *v0++ = v5;
  *v0++ = v6;
  *v0++ = v7;
  *v0++ = v8;
  *v0++ = v9;
  *v0++ = v10;
  *v0++ = v11;
  *v0++ = v12;
  *v0++ = v13;
  *v0++ = v14;
  *v0 = v15;
  v0[1] = v16;
  sub_27793F028();
  v18 = v17 + 15;
  v17 -= 16;
  v19 = *v17++;
  v20 = *v17++;
  v22 = *v17++;
  v24 = *v17;
  v17 -= 3;
  *v17++ = vqaddq_s16(v19, v21);
  *v18-- = vqsubq_s16(v19, v21);
  *v17++ = vqaddq_s16(v20, v23);
  *v18-- = vqsubq_s16(v20, v23);
  *v17++ = vqaddq_s16(v22, v25);
  *v18-- = vqsubq_s16(v22, v25);
  *v17++ = vqaddq_s16(v24, v26);
  *v18-- = vqsubq_s16(v24, v26);
  v27 = *v17++;
  v28 = *v17++;
  v30 = *v17++;
  v32 = *v17;
  v17 -= 3;
  *v17++ = vqaddq_s16(v27, v29);
  *v18-- = vqsubq_s16(v27, v29);
  *v17++ = vqaddq_s16(v28, v31);
  *v18-- = vqsubq_s16(v28, v31);
  *v17++ = vqaddq_s16(v30, v33);
  *v18-- = vqsubq_s16(v30, v33);
  *v17++ = vqaddq_s16(v32, v34);
  *v18-- = vqsubq_s16(v32, v34);
  v35 = *v17++;
  v36 = *v17++;
  v38 = *v17++;
  v40 = *v17;
  v17 -= 3;
  *v17++ = vqaddq_s16(v35, v37);
  *v18-- = vqsubq_s16(v35, v37);
  *v17++ = vqaddq_s16(v36, v39);
  *v18-- = vqsubq_s16(v36, v39);
  *v17++ = vqaddq_s16(v38, v41);
  *v18-- = vqsubq_s16(v38, v41);
  *v17++ = vqaddq_s16(v40, v42);
  *v18-- = vqsubq_s16(v40, v42);
  v43 = *v17++;
  v44 = *v17++;
  v46 = *v17++;
  v48 = *v17;
  v17 -= 3;
  *v17++ = vqaddq_s16(v43, v45);
  *v18-- = vqsubq_s16(v43, v45);
  *v17++ = vqaddq_s16(v44, v47);
  *v18-- = vqsubq_s16(v44, v47);
  *v17++ = vqaddq_s16(v46, v49);
  *v18 = vqsubq_s16(v46, v49);
  *v17 = vqaddq_s16(v48, v50);
  v18[-1] = vqsubq_s16(v48, v50);
  sub_277941258(v51, v52, v53, v54, v55, v56, v17 + 17);
  sub_277941258(v57, v58, v59, v60, v61, v62, v63);
  sub_277941258(v64, v65, v66, v67, v68, v69, v70);
  sub_277941258(v71, v72, v73, v74, v75, v76, v77);
  sub_277941390(v79, v80, v81, v82, v83, v84, (v78 - 512));
}

void sub_2779417D8(_OWORD *a1@<X7>, uint64_t a2@<X8>)
{
  v2 = 4 * a2;
  *a1 = 0u;
  v3 = (a1 + v2);
  *v3 = 0u;
  v4 = (v3 + v2);
  *v4 = 0u;
  v5 = (v4 + v2);
  *v5 = 0u;
  v6 = (v5 + v2);
  *v6 = 0u;
  v7 = (v6 + v2);
  *v7 = 0u;
  v8 = (v7 + v2);
  *v8 = 0u;
  *(v8 + v2) = 0u;
  sub_27793BEB4();
  *v9++ = v10;
  *v9++ = v11;
  *v9++ = v12;
  *v9++ = v13;
  *v9++ = v14;
  *v9++ = v15;
  *v9++ = v16;
  *v9++ = v17;
  *v9++ = v18;
  *v9++ = v19;
  *v9++ = v20;
  *v9++ = v21;
  *v9++ = v22;
  *v9++ = v23;
  *v9 = v24;
  v9[1] = v25;
  *v26 = 0u;
  v28 = (v26 + v27);
  *v28 = 0u;
  v29 = (v28 + v27);
  *v29 = 0u;
  v30 = (v29 + v27);
  *v30 = 0u;
  v31 = (v30 + v27);
  *v31 = 0u;
  v32 = (v31 + v27);
  *v32 = 0u;
  v33 = (v32 + v27);
  *v33 = 0u;
  *(v33 + v27) = 0u;
  sub_27793F028();
  v35 = v34 + 15;
  v34 -= 16;
  v36 = *v34++;
  v37 = *v34++;
  v39 = *v34++;
  v41 = *v34;
  v34 -= 3;
  *v34++ = vqaddq_s16(v36, v38);
  *v35-- = vqsubq_s16(v36, v38);
  *v34++ = vqaddq_s16(v37, v40);
  *v35-- = vqsubq_s16(v37, v40);
  *v34++ = vqaddq_s16(v39, v42);
  *v35-- = vqsubq_s16(v39, v42);
  *v34++ = vqaddq_s16(v41, v43);
  *v35-- = vqsubq_s16(v41, v43);
  v44 = *v34++;
  v45 = *v34++;
  v47 = *v34++;
  v49 = *v34;
  v34 -= 3;
  *v34++ = vqaddq_s16(v44, v46);
  *v35-- = vqsubq_s16(v44, v46);
  *v34++ = vqaddq_s16(v45, v48);
  *v35-- = vqsubq_s16(v45, v48);
  *v34++ = vqaddq_s16(v47, v50);
  *v35-- = vqsubq_s16(v47, v50);
  *v34++ = vqaddq_s16(v49, v51);
  *v35-- = vqsubq_s16(v49, v51);
  v52 = *v34++;
  v53 = *v34++;
  v55 = *v34++;
  v57 = *v34;
  v34 -= 3;
  *v34++ = vqaddq_s16(v52, v54);
  *v35-- = vqsubq_s16(v52, v54);
  *v34++ = vqaddq_s16(v53, v56);
  *v35-- = vqsubq_s16(v53, v56);
  *v34++ = vqaddq_s16(v55, v58);
  *v35-- = vqsubq_s16(v55, v58);
  *v34++ = vqaddq_s16(v57, v59);
  *v35-- = vqsubq_s16(v57, v59);
  v60 = *v34++;
  v61 = *v34++;
  v63 = *v34++;
  v65 = *v34;
  v34 -= 3;
  *v34++ = vqaddq_s16(v60, v62);
  *v35-- = vqsubq_s16(v60, v62);
  *v34++ = vqaddq_s16(v61, v64);
  *v35-- = vqsubq_s16(v61, v64);
  *v34++ = vqaddq_s16(v63, v66);
  *v35 = vqsubq_s16(v63, v66);
  *v34 = vqaddq_s16(v65, v67);
  v35[-1] = vqsubq_s16(v65, v67);
  v70 = (v68 + 8 * v69);
  *v68 = 0u;
  *(&v68[v69] - v69) = 0u;
  *v70 = 0u;
  *(v70 - v69) = 0u;
  sub_277941258(v71, v72, v73, v74, v75, v76, v34 + 17);
  v79 = (v77 + 4 * v78);
  v81 = (v80 - 4 * v78);
  *v79 = 0u;
  *v81 = 0u;
  *(v79 - v78) = 0u;
  *(v81 + v78) = 0u;
  sub_277941258(v82, v83, v84, v85, v86, v87, v88);
  *(v90 - 2 * v89 + v89) = 0u;
  *(v93 + v89) = 0u;
  *(v91 - 2 * v89 + v89) = 0u;
  *(v92 + v89) = 0u;
  sub_277941258(v94, v95, v96, v97, v98, v99, v100);
  *v101 = 0u;
  *(v103 + v102) = 0u;
  *v104 = 0u;
  *(v105 + v102) = 0u;
  sub_277941258(v106, v107, v108, v109, v110, v111, v112);
  sub_277941390(v114, v115, v116, v117, v118, v119, (v113 - 512));
}

void sub_277941B50(_OWORD *a1@<X7>, uint64_t a2@<X8>)
{
  v2 = 4 * a2;
  *a1 = 0u;
  v3 = (a1 + v2);
  *v3 = 0u;
  v4 = (v3 + v2);
  *v4 = 0u;
  v5 = (v4 + v2);
  *v5 = 0u;
  v6 = (v5 + v2);
  *v6 = 0u;
  v7 = (v6 + v2);
  *v7 = 0u;
  v8 = (v7 + v2);
  *v8 = 0u;
  *(v8 + v2) = 0u;
  sub_27793BEB4();
  *v9++ = v10;
  *v9++ = v11;
  *v9++ = v12;
  *v9++ = v13;
  *v9++ = v14;
  *v9++ = v15;
  *v9++ = v16;
  *v9++ = v17;
  *v9++ = v18;
  *v9++ = v19;
  *v9++ = v20;
  *v9++ = v21;
  *v9++ = v22;
  *v9++ = v23;
  *v9 = v24;
  v9[1] = v25;
  *v26 = 0u;
  v28 = (v26 + v27);
  *v28 = 0u;
  v29 = (v28 + v27);
  *v29 = 0u;
  v30 = (v29 + v27);
  *v30 = 0u;
  v31 = (v30 + v27);
  *v31 = 0u;
  v32 = (v31 + v27);
  *v32 = 0u;
  v33 = (v32 + v27);
  *v33 = 0u;
  *(v33 + v27) = 0u;
  sub_27793F028();
  v35 = v34 + 15;
  v34 -= 16;
  v36 = *v34++;
  v37 = *v34++;
  v39 = *v34++;
  v41 = *v34;
  v34 -= 3;
  *v34++ = vqaddq_s16(v36, v38);
  *v35-- = vqsubq_s16(v36, v38);
  *v34++ = vqaddq_s16(v37, v40);
  *v35-- = vqsubq_s16(v37, v40);
  *v34++ = vqaddq_s16(v39, v42);
  *v35-- = vqsubq_s16(v39, v42);
  *v34++ = vqaddq_s16(v41, v43);
  *v35-- = vqsubq_s16(v41, v43);
  v44 = *v34++;
  v45 = *v34++;
  v47 = *v34++;
  v49 = *v34;
  v34 -= 3;
  *v34++ = vqaddq_s16(v44, v46);
  *v35-- = vqsubq_s16(v44, v46);
  *v34++ = vqaddq_s16(v45, v48);
  *v35-- = vqsubq_s16(v45, v48);
  *v34++ = vqaddq_s16(v47, v50);
  *v35-- = vqsubq_s16(v47, v50);
  *v34++ = vqaddq_s16(v49, v51);
  *v35-- = vqsubq_s16(v49, v51);
  v52 = *v34++;
  v53 = *v34++;
  v55 = *v34++;
  v57 = *v34;
  v34 -= 3;
  *v34++ = vqaddq_s16(v52, v54);
  *v35-- = vqsubq_s16(v52, v54);
  *v34++ = vqaddq_s16(v53, v56);
  *v35-- = vqsubq_s16(v53, v56);
  *v34++ = vqaddq_s16(v55, v58);
  *v35-- = vqsubq_s16(v55, v58);
  *v34++ = vqaddq_s16(v57, v59);
  *v35-- = vqsubq_s16(v57, v59);
  v60 = *v34++;
  v61 = *v34++;
  v63 = *v34++;
  v65 = *v34;
  v34 -= 3;
  *v34++ = vqaddq_s16(v60, v62);
  *v35-- = vqsubq_s16(v60, v62);
  *v34++ = vqaddq_s16(v61, v64);
  *v35-- = vqsubq_s16(v61, v64);
  *v34++ = vqaddq_s16(v63, v66);
  *v35 = vqsubq_s16(v63, v66);
  *v34 = vqaddq_s16(v65, v67);
  v35[-1] = vqsubq_s16(v65, v67);
  v70 = (v68 + 8 * v69);
  *v68 = 0u;
  *(&v68[v69] - v69) = 0u;
  *v70 = 0u;
  *(v70 - v69) = 0u;
  sub_277941258(v71, v72, v73, v74, v75, v76, v34 + 17);
  v79 = (v77 + 4 * v78);
  v81 = (v80 - 4 * v78);
  *v79 = 0u;
  *v81 = 0u;
  *(v79 - v78) = 0u;
  *(v81 + v78) = 0u;
  sub_277941258(v82, v83, v84, v85, v86, v87, v88);
  *(v90 - 2 * v89 + v89) = 0u;
  *(v93 + v89) = 0u;
  *(v91 - 2 * v89 + v89) = 0u;
  *(v92 + v89) = 0u;
  sub_277941258(v94, v95, v96, v97, v98, v99, v100);
  *v101 = 0u;
  *(v103 + v102) = 0u;
  *v104 = 0u;
  *(v105 + v102) = 0u;
  sub_277941258(v106, v107, v108, v109, v110, v111, v112);
  sub_277941390(v114, v115, v116, v117, v118, v119, (v113 - 512));
}

int16x8_t sub_277941F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int16x8_t *a7, uint64_t a8, uint64_t a9)
{
  v10 = &a9;
  v11 = &STACK[0x3C0];
  v12 = &a7[7];
  v13 = vdupq_n_s16(v9);
  do
  {
    v15 = *v10;
    v16 = *(v10 + 1);
    v17 = *(v10 + 2);
    v18 = *(v10 + 3);
    v14 = (v10 + 8);
    v20 = *v11;
    v21 = *(v11 + 1);
    v22 = *(v11 + 2);
    v23 = *(v11 + 3);
    v19 = (v11 - 8);
    v24 = *v14;
    v25 = v14[1];
    v26 = v14[2];
    v27 = v14[3];
    v10 = &v14[4];
    v28 = *v19;
    v29 = v19[1];
    v30 = v19[2];
    v31 = v19[3];
    v11 = &v19[-4];
    v32 = vtrn1q_s16(v15, v16);
    v33 = vtrn2q_s16(v15, v16);
    v34 = vtrn1q_s16(v17, v18);
    v35 = vtrn2q_s16(v17, v18);
    v36 = vtrn1q_s16(v24, v25);
    v37 = vtrn2q_s16(v24, v25);
    v38 = vtrn1q_s16(v26, v27);
    v39 = vtrn2q_s16(v26, v27);
    v40 = vtrn1q_s32(v36, v38);
    v41 = vtrn2q_s32(v36, v38);
    v42 = vtrn1q_s32(v37, v39);
    v43 = vtrn2q_s32(v37, v39);
    v44 = vtrn1q_s32(v33, v35);
    v45 = vtrn2q_s32(v33, v35);
    v46 = vtrn1q_s32(v32, v34);
    v47 = vtrn2q_s32(v32, v34);
    v48 = vtrn1q_s64(v46, v40);
    v49 = vtrn2q_s64(v46, v40);
    v50 = vtrn1q_s64(v44, v42);
    v51 = vtrn2q_s64(v44, v42);
    v52 = vtrn2q_s64(v47, v41);
    v53 = vtrn1q_s64(v47, v41);
    v54 = vtrn1q_s64(v45, v43);
    v55 = vtrn2q_s64(v45, v43);
    v56 = vtrn1q_s16(v23, v22);
    v57 = vtrn2q_s16(v23, v22);
    v58 = vtrn1q_s16(v21, v20);
    v59 = vtrn2q_s16(v21, v20);
    v60 = vtrn1q_s16(v31, v30);
    v61 = vtrn2q_s16(v31, v30);
    v62 = vtrn1q_s16(v29, v28);
    v63 = vtrn2q_s16(v29, v28);
    v64 = vtrn1q_s32(v60, v62);
    v65 = vtrn2q_s32(v60, v62);
    v66 = vtrn1q_s32(v61, v63);
    v67 = vtrn2q_s32(v61, v63);
    v68 = vtrn1q_s32(v57, v59);
    v69 = vtrn2q_s32(v57, v59);
    v70 = vtrn1q_s32(v56, v58);
    v71 = vtrn2q_s32(v56, v58);
    v72 = vtrn1q_s64(v70, v64);
    v73 = vtrn2q_s64(v70, v64);
    v74 = vtrn1q_s64(v68, v66);
    v75 = vtrn2q_s64(v68, v66);
    v76 = vtrn2q_s64(v71, v65);
    v77 = vtrn1q_s64(v71, v65);
    v78 = vtrn1q_s64(v69, v67);
    v79 = vtrn2q_s64(v69, v67);
    v80 = vrev64q_s16(vrshlq_s16(vqsubq_s16(v48, v72), v13));
    v81 = vrev64q_s16(vrshlq_s16(vqsubq_s16(v50, v74), v13));
    *a7 = vrshlq_s16(vqaddq_s16(v48, v72), v13);
    v82 = a7 + 8;
    *v12 = vextq_s8(v80, v80, 8uLL);
    v83 = v12 + 8;
    *v82 = vrshlq_s16(vqaddq_s16(v50, v74), v13);
    v82 += 8;
    *v83 = vextq_s8(v81, v81, 8uLL);
    v83 += 8;
    v84 = vrev64q_s16(vrshlq_s16(vqsubq_s16(v53, v77), v13));
    v85 = vrev64q_s16(vrshlq_s16(vqsubq_s16(v54, v78), v13));
    *v82 = vrshlq_s16(vqaddq_s16(v53, v77), v13);
    v82 += 8;
    *v83 = vextq_s8(v84, v84, 8uLL);
    v83 += 8;
    *v82 = vrshlq_s16(vqaddq_s16(v54, v78), v13);
    v82 += 8;
    *v83 = vextq_s8(v85, v85, 8uLL);
    v83 += 8;
    v86 = vrev64q_s16(vrshlq_s16(vqsubq_s16(v49, v73), v13));
    v87 = vrev64q_s16(vrshlq_s16(vqsubq_s16(v51, v75), v13));
    *v82 = vrshlq_s16(vqaddq_s16(v49, v73), v13);
    v82 += 8;
    *v83 = vextq_s8(v86, v86, 8uLL);
    v83 += 8;
    *v82 = vrshlq_s16(vqaddq_s16(v51, v75), v13);
    v82 += 8;
    *v83 = vextq_s8(v87, v87, 8uLL);
    v83 += 8;
    result = vrshlq_s16(vqaddq_s16(v52, v76), v13);
    v89 = vrev64q_s16(vrshlq_s16(vqsubq_s16(v52, v76), v13));
    v90 = vrev64q_s16(vrshlq_s16(vqsubq_s16(v55, v79), v13));
    *v82 = result;
    v82 += 8;
    *v83 = vextq_s8(v89, v89, 8uLL);
    v83 += 8;
    *v82 = vrshlq_s16(vqaddq_s16(v55, v79), v13);
    *v83 = vextq_s8(v90, v90, 8uLL);
    a7 = v82 - 55;
    v12 = v83 - 57;
  }

  while (v10 < v11);
  return result;
}

int8x8_t sub_277942180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint8x8_t *a7, uint64_t a8, uint64_t a9)
{
  v9 = &a9;
  v10 = &STACK[0x3C0];
  v11 = (&a7[8 * a2] - a2);
  do
  {
    v13 = *v9;
    v14 = *(v9 + 1);
    v15 = *(v9 + 2);
    v16 = *(v9 + 3);
    v12 = (v9 + 8);
    v18 = *v10;
    v19 = *(v10 + 1);
    v20 = *(v10 + 2);
    v21 = *(v10 + 3);
    v17 = (v10 - 8);
    v22 = *v12;
    v23 = v12[1];
    v24 = v12[2];
    v25 = v12[3];
    v9 = &v12[4];
    v26 = *v17;
    v27 = v17[1];
    v28 = v17[2];
    v29 = v17[3];
    v10 = &v17[-4];
    v31 = *a7;
    v30 = (a7 + a2);
    v33 = *v11;
    v32 = (v11 - a2);
    v34 = *v30;
    v35 = *v32;
    v36 = (v30 - a2);
    v37 = (v32 + a2);
    *v36 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(vqaddq_s16(v13, v21), 4uLL), v31));
    v38 = (v36 + a2);
    *v37 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(vqsubq_s16(v13, v21), 4uLL), v33));
    v39 = (v37 - a2);
    *v38 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(vqaddq_s16(v14, v20), 4uLL), v34));
    v40 = (v38 + a2);
    *v39 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(vqsubq_s16(v14, v20), 4uLL), v35));
    v41 = (v39 - a2);
    v43 = *v40;
    v42 = (v40 + a2);
    v45 = *v41;
    v44 = (v41 - a2);
    v46 = *v42;
    v47 = *v44;
    v48 = (v42 - a2);
    v49 = (v44 + a2);
    *v48 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(vqaddq_s16(v15, v19), 4uLL), v43));
    v50 = (v48 + a2);
    *v49 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(vqsubq_s16(v15, v19), 4uLL), v45));
    v51 = (v49 - a2);
    *v50 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(vqaddq_s16(v16, v18), 4uLL), v46));
    v52 = (v50 + a2);
    *v51 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(vqsubq_s16(v16, v18), 4uLL), v47));
    v53 = (v51 - a2);
    v55 = *v52;
    v54 = (v52 + a2);
    v57 = *v53;
    v56 = (v53 - a2);
    v58 = *v54;
    v59 = *v56;
    v60 = (v54 - a2);
    v61 = (v56 + a2);
    *v60 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(vqaddq_s16(v22, v29), 4uLL), v55));
    v62 = (v60 + a2);
    *v61 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(vqsubq_s16(v22, v29), 4uLL), v57));
    v63 = (v61 - a2);
    *v62 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(vqaddq_s16(v23, v28), 4uLL), v58));
    v64 = (v62 + a2);
    *v63 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(vqsubq_s16(v23, v28), 4uLL), v59));
    v65 = (v63 - a2);
    v67 = *v64;
    v66 = (v64 + a2);
    v69 = *v65;
    v68 = (v65 - a2);
    v70 = *v66;
    v71 = *v68;
    v72 = (v66 - a2);
    v73 = (v68 + a2);
    result = vqmovun_s16(vaddw_u8(vrshrq_n_s16(vqaddq_s16(v24, v27), 4uLL), v67));
    *v72 = result;
    v75 = (v72 + a2);
    *v73 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(vqsubq_s16(v24, v27), 4uLL), v69));
    v76 = (v73 - a2);
    *v75 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(vqaddq_s16(v25, v26), 4uLL), v70));
    a7 = (v75 + a2);
    *v76 = vqmovun_s16(vaddw_u8(vrshrq_n_s16(vqsubq_s16(v25, v26), 4uLL), v71));
    v11 = (v76 - a2);
  }

  while (v9 < v10);
  return result;
}

int8x8_t sub_27794235C(uint8x8_t *a1, uint64_t a2, __int16 *a3, uint64_t a4)
{
  if (a4)
  {
    sub_2779417D8(a3, 64);
    sub_277941F78(v5, v6, v7, v8, v9, v10, v10, v11, v105);
    v15 = (v14 + 1024);
    v16 = 24;
    if (v17 < *v13 || (sub_2779417D8((v12 + 16), 64), sub_277941F78(v18, v19, v20, v21, v22, v23, v23 + 64, v24, v106), v15 = (v27 + 2048), v16 = 16, v28 < *v26) || (sub_2779417D8((v25 + 32), 64), sub_277941F78(v29, v30, v31, v32, v33, v34, v34 + 128, v35, v106), v15 = (v38 + 3072), v16 = 8, v39 < *v37))
    {
      do
      {
        v47 = __OFSUB__(v16, 2);
        v16 -= 2;
        *v15 = 0uLL;
        v15[1] = 0uLL;
        v15[2] = 0uLL;
        v15[3] = 0uLL;
        v48 = v15 + 4;
        *v48 = 0uLL;
        v48[1] = 0uLL;
        v48[2] = 0uLL;
        v48[3] = 0uLL;
        v48 += 4;
        *v48 = 0uLL;
        v48[1] = 0uLL;
        v48[2] = 0uLL;
        v48[3] = 0uLL;
        v48 += 4;
        *v48 = 0uLL;
        v48[1] = 0uLL;
        v48[2] = 0uLL;
        v48[3] = 0uLL;
        v15 = v48 + 4;
      }

      while (!((v16 < 0) ^ v47 | (v16 == 0)));
    }

    else
    {
      sub_2779417D8((v36 + 48), 64);
      sub_277941F78(v40, v41, v42, v43, v44, v45, v45 + 192, v46, v106);
    }

    sub_2779414F8();
    sub_277942180(v49, v50, v51, v52, v53, v54, v49, v55, v106);
    sub_2779414F8();
    sub_277942180(v56, v57, v58, v59, v60, v61, v56 + 1, v62, v107);
    sub_2779414F8();
    sub_277942180(v63, v64, v65, v66, v67, v68, v63 + 2, v69, v108);
    sub_2779414F8();
    sub_277942180(v70, v71, v72, v73, v74, v75, v70 + 3, v76, v109);
    sub_2779414F8();
    sub_277942180(v77, v78, v79, v80, v81, v82, v77 + 4, v83, v110);
    sub_2779414F8();
    sub_277942180(v84, v85, v86, v87, v88, v89, v84 + 5, v90, v111);
    sub_2779414F8();
    sub_277942180(v91, v92, v93, v94, v95, v96, v91 + 6, v97, v112);
    sub_2779414F8();
    return sub_277942180(v98, v99, v100, v101, v102, v103, v98 + 7, v104, v113);
  }

  else
  {
    vld1q_dup_s16(a3);
    *a3 = 0;
    sub_27793A9CC(a1, a2, a3, a4, 64);
  }

  return result;
}

void sub_277942514(uint8x8_t *a1, uint64_t a2, __int16 *a3, uint64_t a4)
{
  if (a4)
  {
    sub_277941B50(a3, 64);
    sub_277941F78(v4, v5, v6, v7, v8, v9, v9, v10, v48);
    v14 = (v13 + 1024);
    v15 = 24;
    if (v16 < *v12 || (sub_277941B50((v11 + 16), 64), sub_277941F78(v17, v18, v19, v20, v21, v22, v22 + 64, v23, v49), v14 = (v26 + 2048), v15 = 16, v27 < *v25) || (sub_277941B50((v24 + 32), 64), sub_277941F78(v28, v29, v30, v31, v32, v33, v33 + 128, v34, v50), v14 = (v37 + 3072), v15 = 8, v38 < *v36))
    {
      do
      {
        v46 = __OFSUB__(v15, 2);
        v15 -= 2;
        *v14 = 0uLL;
        v14[1] = 0uLL;
        v14[2] = 0uLL;
        v14[3] = 0uLL;
        v47 = v14 + 4;
        *v47 = 0uLL;
        v47[1] = 0uLL;
        v47[2] = 0uLL;
        v47[3] = 0uLL;
        v47 += 4;
        *v47 = 0uLL;
        v47[1] = 0uLL;
        v47[2] = 0uLL;
        v47[3] = 0uLL;
        v47 += 4;
        *v47 = 0uLL;
        v47[1] = 0uLL;
        v47[2] = 0uLL;
        v47[3] = 0uLL;
        v14 = v47 + 4;
      }

      while (!((v15 < 0) ^ v46 | (v15 == 0)));
    }

    else
    {
      sub_277941B50((v35 + 48), 64);
      sub_277941F78(v39, v40, v41, v42, v43, v44, v44 + 192, v45, v51);
    }

    sub_27793FF40();
    sub_27793FF40();
    sub_27793FF40();
    sub_27793FF40();
    sub_27793FF40();
    sub_27793FF40();
    sub_27793FF40();
    sub_27793FF40();
  }

  else
  {
    vld1q_dup_s16(a3);
    *a3 = 0;
    sub_27793A9CC(a1, a2, a3, a4, 32);
  }
}

int8x8_t sub_2779426B0(uint8x16_t *a1, uint64_t a2, __int16 *a3, uint64_t a4)
{
  if (a4)
  {
    sub_27793F9D0(a3, 64);
    v7 = (v6 + 512);
    v8 = 24;
    if (v9 < v10 || (sub_27793F9D0((v5 + 16), 64), v7 = (v12 + 1024), v8 = 16, v13 < v14) || (sub_27793F9D0((v11 + 32), 64), v7 = (v16 + 1536), v8 = 8, v17 < v18))
    {
      do
      {
        v19 = __OFSUB__(v8, 4);
        v8 -= 4;
        *v7 = 0uLL;
        v7[1] = 0uLL;
        v7[2] = 0uLL;
        v7[3] = 0uLL;
        v20 = v7 + 4;
        *v20 = 0uLL;
        v20[1] = 0uLL;
        v20[2] = 0uLL;
        v20[3] = 0uLL;
        v20 += 4;
        *v20 = 0uLL;
        v20[1] = 0uLL;
        v20[2] = 0uLL;
        v20[3] = 0uLL;
        v20 += 4;
        *v20 = 0uLL;
        v20[1] = 0uLL;
        v20[2] = 0uLL;
        v20[3] = 0uLL;
        v7 = v20 + 4;
      }

      while (!((v8 < 0) ^ v19 | (v8 == 0)));
    }

    else
    {
      sub_27793F9D0((v15 + 48), 64);
    }

    sub_2779414F8();
    sub_277942180(v21, v22, v23, v24, v25, v26, v21, v27, v49);
    sub_2779414F8();
    sub_277942180(v28, v29, v30, v31, v32, v33, v28 + 1, v34, v50);
    sub_2779414F8();
    sub_277942180(v35, v36, v37, v38, v39, v40, v35 + 2, v41, v51);
    sub_2779414F8();
    return sub_277942180(v42, v43, v44, v45, v46, v47, v42 + 3, v48, v52);
  }

  else
  {
    vld1q_dup_s16(a3);
    *a3 = 0;
    sub_27793A96C(a1, a2, a3, a4, 64);
  }

  return result;
}

uint8x8_t *sub_2779427E8(uint8x8_t *a1, uint64_t a2, __int16 *a3, uint64_t a4)
{
  if (a4)
  {
    sub_2779417D8(a3, 32);
    sub_277941F78(v5, v6, v7, v8, v9, v10, v9, v11, v71);
    v18 = (v16 + 1024);
    v19 = 8;
    if (v15 < *v17)
    {
      do
      {
        v27 = __OFSUB__(v19, 2);
        v19 -= 2;
        *v18 = 0uLL;
        v18[1] = 0uLL;
        v18[2] = 0uLL;
        v18[3] = 0uLL;
        v28 = v18 + 4;
        *v28 = 0uLL;
        v28[1] = 0uLL;
        v28[2] = 0uLL;
        v28[3] = 0uLL;
        v28 += 4;
        *v28 = 0uLL;
        v28[1] = 0uLL;
        v28[2] = 0uLL;
        v28[3] = 0uLL;
        v28 += 4;
        *v28 = 0uLL;
        v28[1] = 0uLL;
        v28[2] = 0uLL;
        v28[3] = 0uLL;
        v18 = v28 + 4;
      }

      while (!((v19 < 0) ^ v27 | (v19 == 0)));
    }

    else
    {
      sub_2779417D8((v14 + 16), 32);
      sub_277941F78(v20, v21, v22, v23, v24, v25, v24 + 64, v26, v72);
    }

    v29 = sub_27793D944(v12, v13, v14, v15, v16, sub_27793BEB4);
    v35 = sub_27793D944(v29, v30, v31, v32, v33, v34);
    v41 = sub_27793D944(v35, v36, v37, v38, v39, v40);
    v47 = sub_27793D944(v41, v42, v43, v44, v45, v46);
    v53 = sub_27793D944(v47, v48, v49, v50, v51, v52);
    v59 = sub_27793D944(v53, v54, v55, v56, v57, v58);
    v65 = sub_27793D944(v59, v60, v61, v62, v63, v64);
    return sub_27793D944(v65, v66, v67, v68, v69, v70);
  }

  else
  {
    vld1q_dup_s16(a3);
    *a3 = 0;
    return sub_27793A9CC(a1, a2, a3, a4, 16);
  }
}

int8x8_t sub_27794290C(uint8x16_t *a1, uint64_t a2, __int16 *a3, uint64_t a4)
{
  if (a4)
  {
    sub_27793D774(sub_27793BEB4, a3, 64);
    v8 = (v7 + 256);
    v9 = 24;
    if (v10 < v11 || (sub_27793D774(v6, (v5 + 16), 64), v8 = (v14 + 512), v9 = 16, v15 < v16) || (sub_27793D774(v13, (v12 + 32), 64), v8 = (v19 + 768), v9 = 8, v20 < v21))
    {
      do
      {
        v22 = __OFSUB__(v9, 8);
        v9 -= 8;
        *v8 = 0uLL;
        v8[1] = 0uLL;
        v8[2] = 0uLL;
        v8[3] = 0uLL;
        v23 = v8 + 4;
        *v23 = 0uLL;
        v23[1] = 0uLL;
        v23[2] = 0uLL;
        v23[3] = 0uLL;
        v23 += 4;
        *v23 = 0uLL;
        v23[1] = 0uLL;
        v23[2] = 0uLL;
        v23[3] = 0uLL;
        v23 += 4;
        *v23 = 0uLL;
        v23[1] = 0uLL;
        v23[2] = 0uLL;
        v23[3] = 0uLL;
        v8 = v23 + 4;
      }

      while (!((v9 < 0) ^ v22 | (v9 == 0)));
    }

    else
    {
      sub_27793D774(v18, (v17 + 48), 64);
    }

    sub_2779414F8();
    sub_277942180(v24, v25, v26, v27, v28, v29, v24, v30, v38);
    sub_2779414F8();
    return sub_277942180(v31, v32, v33, v34, v35, v36, v31 + 1, v37, v39);
  }

  else
  {
    vld1q_dup_s16(a3);
    *a3 = 0;
    sub_27793A8FC(a1, a2, a3, a4, 64);
  }

  return result;
}

void sub_277942A7C(__n128 a1, __n128 a2, __n128 a3, uint64_t a4, __n128 *a5)
{
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  v8 = a5 + 3;
  *v8 = a1;
  v8[1] = a2;
  v8[2] = a3;
  v8 += 3;
  *v8 = a1;
  v8[1] = a2;
  v8[2] = a3;
  v8 += 3;
  *v8 = a1;
  v8[1] = a2;
  v8[2] = a3;
  v8 += 3;
  *v8 = a1;
  v8[1] = a2;
  v8[2] = a3;
  v8 += 3;
  *v8 = a1;
  v8[1] = a2;
  v8[2] = a3;
  v8 += 3;
  *v8 = a1;
  v8[1] = a2;
  v8[2] = a3;
  v8 += 3;
  *v8 = a1;
  v8[1] = a2;
  v8[2] = a3;
  if (!(v6 ^ v7 | v5))
  {
    JUMPOUT(0x277942A4CLL);
  }
}

uint64_t sub_277942AB0(double a1, int8x8_t a2, int16x8_t a3, __n128 a4, int8x16_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x8_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  v14 = byte_277942C5C;
  v15 = &unk_27A718BE0;
  v16 = 33620481;
  *v13.i8 = vext_s8(0, *a9, 7uLL);
  v17 = 24;
  a10 = a10;
  a12 = a12;
  v18 = 2 * a13;
  do
  {
    v19 = *(a8 + 8 * (v18 & 0x1E)) + 12;
    v20 = v19 + a10 * v17;
    v21 = (v19 + a12 * v17);
    do
    {
      v22 = *v21;
      v23 = &v14[4 * v21->u8[10]];
      a2.i16[0] = v21->i16[4];
      v24 = (v21 + 2 * *v23);
      a3.i64[0] = v22.i64[0];
      if (v24 < v20)
      {
        a5 = *v24;
        a2.i16[1] = v24->i16[4];
        a3 = vtrn1q_s64(v22, *v24);
      }

      v25 = vand_s8(*&vmull_u8(vqtbl1_s8(v13, a2), v16), vmovn_s32(vceqzq_s32(vshrq_n_u16(vabsq_s16(a3), 0xCuLL))));
      v25.i32[0] = vpadd_s16(v25, v25).u32[0];
      v26 = vqtbl1q_s8(v22, v15[v25.u16[0]]);
      v27 = vqtbl1q_s8(a5, v15[v25.u16[1]]);
      v28 = vextq_s8(v26, v26, 1uLL);
      v29 = vextq_s8(v27, v27, 1uLL);
      v30 = (&v14[-*(v23 + 1)])(v26, v28, vextq_s8(v26, v28, 4uLL), a4, v27, v29, vextq_s8(v27, v29, 4uLL));
      if (v37 == v38)
      {
        break;
      }

      v30 = v34(v30, a5, v35, v36);
    }

    while (v37 != v38);
    v18 = v33 + 2;
    result = v30 + v31;
  }

  while (v32 > 1);
  return result;
}

void sub_277942C2C(__n128 a1, __n128 a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a7 = a1;
  *(a7 + 16) = a2;
  *(a7 + 24) = a3;
}

void sub_277942C3C(__n128 a1, __n128 a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a7 = a1;
  *(a7 + 16) = a2;
  *(a7 + 30) = a1;
  *(a7 + 46) = a2;
  *(a7 + 60) = a1.n128_u64[0];
  *(a7 + 64) = a3;
}

uint64_t sub_277942CB4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4.n128_u64[0] = 0x8080808080808080;
  v4.n128_u64[1] = 0x8080808080808080;
  return ((aHd - aHd[__clz(a4) - 25]))(v4);
}

float *sub_277942CD8(float *result, uint64_t a2, float a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, float *a8)
{
  do
  {
    *result = a3;
    v8 = (result + a2);
    *a8 = a3;
    v9 = (a8 + a2);
    v10 = __OFSUB__(a6, 4);
    a6 -= 4;
    *v8 = a3;
    result = (v8 + a2);
    *v9 = a3;
    a8 = (v9 + a2);
  }

  while (!((a6 < 0) ^ v10 | (a6 == 0)));
  return result;
}

double *sub_277942CF4(double *result, uint64_t a2, double a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, double *a8)
{
  do
  {
    *result = a3;
    v8 = (result + a2);
    *a8 = a3;
    v9 = (a8 + a2);
    v10 = __OFSUB__(a6, 4);
    a6 -= 4;
    *v8 = a3;
    result = (v8 + a2);
    *v9 = a3;
    a8 = (v9 + a2);
  }

  while (!((a6 < 0) ^ v10 | (a6 == 0)));
  return result;
}

__n128 *sub_277942D10(__n128 *result, uint64_t a2, __n128 a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, __n128 *a8)
{
  do
  {
    *result = a3;
    v8 = (result + a2);
    *a8 = a3;
    v9 = (a8 + a2);
    v10 = __OFSUB__(a6, 4);
    a6 -= 4;
    *v8 = a3;
    result = (v8 + a2);
    *v9 = a3;
    a8 = (v9 + a2);
  }

  while (!((a6 < 0) ^ v10 | (a6 == 0)));
  return result;
}

uint64_t sub_277942D2C(uint64_t result, uint64_t a2, __n128 a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  *&v8 = 0x8080808080808080;
  *(&v8 + 1) = 0x8080808080808080;
  do
  {
    *result = a3;
    *(result + 16) = v8;
    v9 = result + a2;
    *a8 = a3;
    *(a8 + 16) = v8;
    v10 = a8 + a2;
    v11 = __OFSUB__(a6, 4);
    a6 -= 4;
    *v9 = a3;
    *(v9 + 16) = v8;
    result = v9 + a2;
    *v10 = a3;
    *(v10 + 16) = v8;
    a8 = v10 + a2;
  }

  while (!((a6 < 0) ^ v11 | (a6 == 0)));
  return result;
}

uint64_t sub_277942D4C(uint64_t result, uint64_t a2, __n128 a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  *&v8 = 0x8080808080808080;
  *(&v8 + 1) = 0x8080808080808080;
  *&v9 = 0x8080808080808080;
  *(&v9 + 1) = 0x8080808080808080;
  *&v10 = 0x8080808080808080;
  *(&v10 + 1) = 0x8080808080808080;
  do
  {
    *result = a3;
    *(result + 16) = v8;
    *(result + 32) = v9;
    *(result + 48) = v10;
    v11 = result + a2;
    *a8 = a3;
    *(a8 + 16) = v8;
    *(a8 + 32) = v9;
    *(a8 + 48) = v10;
    v12 = a8 + a2;
    v13 = __OFSUB__(a6, 4);
    a6 -= 4;
    *v11 = a3;
    *(v11 + 16) = v8;
    *(v11 + 32) = v9;
    *(v11 + 48) = v10;
    result = v11 + a2;
    *v12 = a3;
    *(v12 + 16) = v8;
    *(v12 + 32) = v9;
    *(v12 + 48) = v10;
    a8 = v12 + a2;
  }

  while (!((a6 < 0) ^ v13 | (a6 == 0)));
  return result;
}

_DWORD *sub_277942DA4(_DWORD *result, uint64_t a2, int *a3, uint64_t a4, int a5, uint64_t a6, _DWORD *a7)
{
  v7 = *a3;
  do
  {
    *result = v7;
    v8 = (result + a2);
    *a7 = v7;
    v9 = (a7 + a2);
    v10 = __OFSUB__(a5, 4);
    a5 -= 4;
    *v8 = v7;
    result = (v8 + a2);
    *v9 = v7;
    a7 = (v9 + a2);
  }

  while (!((a5 < 0) ^ v10 | (a5 == 0)));
  return result;
}

void *sub_277942DC4(void *result, uint64_t a2, uint64_t *a3, uint64_t a4, int a5, uint64_t a6, void *a7)
{
  v7 = *a3;
  do
  {
    *result = v7;
    v8 = (result + a2);
    *a7 = v7;
    v9 = (a7 + a2);
    v10 = __OFSUB__(a5, 4);
    a5 -= 4;
    *v8 = v7;
    result = (v8 + a2);
    *v9 = v7;
    a7 = (v9 + a2);
  }

  while (!((a5 < 0) ^ v10 | (a5 == 0)));
  return result;
}

_OWORD *sub_277942DE4(_OWORD *result, uint64_t a2, __int128 *a3, uint64_t a4, int a5, uint64_t a6, _OWORD *a7)
{
  v7 = *a3;
  do
  {
    *result = v7;
    v8 = (result + a2);
    *a7 = v7;
    v9 = (a7 + a2);
    v10 = __OFSUB__(a5, 4);
    a5 -= 4;
    *v8 = v7;
    result = (v8 + a2);
    *v9 = v7;
    a7 = (v9 + a2);
  }

  while (!((a5 < 0) ^ v10 | (a5 == 0)));
  return result;
}

_OWORD *sub_277942E04(_OWORD *result, uint64_t a2, __int128 *a3, uint64_t a4, int a5, uint64_t a6, _OWORD *a7)
{
  v7 = *a3;
  v8 = a3[1];
  do
  {
    *result = v7;
    result[1] = v8;
    v9 = (result + a2);
    *a7 = v7;
    a7[1] = v8;
    v10 = (a7 + a2);
    v11 = __OFSUB__(a5, 4);
    a5 -= 4;
    *v9 = v7;
    v9[1] = v8;
    result = (v9 + a2);
    *v10 = v7;
    v10[1] = v8;
    a7 = (v10 + a2);
  }

  while (!((a5 < 0) ^ v11 | (a5 == 0)));
  return result;
}

_OWORD *sub_277942E24(_OWORD *result, uint64_t a2, __int128 *a3, uint64_t a4, int a5, uint64_t a6, _OWORD *a7)
{
  v7 = *a3;
  v8 = a3[1];
  v9 = a3[2];
  v10 = a3[3];
  do
  {
    *result = v7;
    result[1] = v8;
    result[2] = v9;
    result[3] = v10;
    v11 = (result + a2);
    *a7 = v7;
    a7[1] = v8;
    a7[2] = v9;
    a7[3] = v10;
    v12 = (a7 + a2);
    v13 = __OFSUB__(a5, 4);
    a5 -= 4;
    *v11 = v7;
    v11[1] = v8;
    v11[2] = v9;
    v11[3] = v10;
    result = (v11 + a2);
    *v12 = v7;
    v12[1] = v8;
    v12[2] = v9;
    v12[3] = v10;
    a7 = (v12 + a2);
  }

  while (!((a5 < 0) ^ v13 | (a5 == 0)));
  return result;
}

_DWORD *sub_277942E78(_DWORD *result, uint64_t a2, const char *a3, uint64_t a4, int a5, uint64_t a6, _DWORD *a7, uint64_t a8)
{
  do
  {
    v11 = vld4_dup_s8(a3);
    a3 += a8;
    *result = v11.val[3].i32[0];
    v8 = (result + a2);
    *a7 = v11.val[2].i32[0];
    v9 = (a7 + a2);
    v10 = __OFSUB__(a5, 4);
    a5 -= 4;
    *v8 = v11.val[1].i32[0];
    result = (v8 + a2);
    *v9 = v11.val[0].i32[0];
    a7 = (v9 + a2);
  }

  while (!((a5 < 0) ^ v10 | (a5 == 0)));
  return result;
}

int8x8_t *sub_277942E98(int8x8_t *result, uint64_t a2, const char *a3, uint64_t a4, int a5, uint64_t a6, int8x8_t *a7, uint64_t a8)
{
  do
  {
    v11 = vld4_dup_s8(a3);
    a3 += a8;
    *result = v11.val[3];
    v8 = (result + a2);
    *a7 = v11.val[2];
    v9 = (a7 + a2);
    v10 = __OFSUB__(a5, 4);
    a5 -= 4;
    *v8 = v11.val[1];
    result = (v8 + a2);
    *v9 = v11.val[0];
    a7 = (v9 + a2);
  }

  while (!((a5 < 0) ^ v10 | (a5 == 0)));
  return result;
}

int8x16_t *sub_277942EB8(int8x16_t *result, uint64_t a2, const char *a3, uint64_t a4, int a5, uint64_t a6, int8x16_t *a7, uint64_t a8)
{
  do
  {
    v11 = vld4q_dup_s8(a3);
    a3 += a8;
    *result = v11.val[3];
    v8 = (result + a2);
    *a7 = v11.val[2];
    v9 = (a7 + a2);
    v10 = __OFSUB__(a5, 4);
    a5 -= 4;
    *v8 = v11.val[1];
    result = (v8 + a2);
    *v9 = v11.val[0];
    a7 = (v9 + a2);
  }

  while (!((a5 < 0) ^ v10 | (a5 == 0)));
  return result;
}

int8x16_t *sub_277942ED8(int8x16_t *result, uint64_t a2, const char *a3, uint64_t a4, int a5, uint64_t a6, int8x16_t *a7, uint64_t a8)
{
  do
  {
    v11 = vld4q_dup_s8(a3);
    a3 += a8;
    result[1] = v11.val[3];
    a7[1] = v11.val[2];
    *result = v11.val[3];
    v8 = (result + a2);
    *a7 = v11.val[2];
    v9 = (a7 + a2);
    v10 = __OFSUB__(a5, 4);
    a5 -= 4;
    v8[1] = v11.val[1];
    v9[1] = v11.val[0];
    *v8 = v11.val[1];
    result = (v8 + a2);
    *v9 = v11.val[0];
    a7 = (v9 + a2);
  }

  while (!((a5 < 0) ^ v10 | (a5 == 0)));
  return result;
}

int8x16_t *sub_277942F08(int8x16_t *result, uint64_t a2, const char *a3, uint64_t a4, int a5, uint64_t a6, int8x16_t *a7, uint64_t a8)
{
  do
  {
    v11 = vld4q_dup_s8(a3);
    a3 += a8;
    result[1] = v11.val[3];
    a7[1] = v11.val[2];
    result[2] = v11.val[3];
    result[3] = v11.val[3];
    a7[2] = v11.val[2];
    a7[3] = v11.val[2];
    *result = v11.val[3];
    v8 = (result + a2);
    *a7 = v11.val[2];
    v9 = (a7 + a2);
    v10 = __OFSUB__(a5, 4);
    a5 -= 4;
    v8[1] = v11.val[1];
    v9[1] = v11.val[0];
    v8[2] = v11.val[1];
    v8[3] = v11.val[1];
    v9[2] = v11.val[0];
    v9[3] = v11.val[0];
    *v8 = v11.val[1];
    result = (v8 + a2);
    *v9 = v11.val[0];
    a7 = (v9 + a2);
  }

  while (!((a5 < 0) ^ v10 | (a5 == 0)));
  return result;
}

_DWORD *sub_277942F78(_DWORD *result, uint64_t a2, const float *a3, int16x8_t a4, uint64_t a5, int a6, uint64_t a7, _DWORD *a8)
{
  *a4.i8 = vld1_dup_f32(a3);
  a4.i16[0] = vaddlv_u8(*a4.i8);
  a4.i32[0] = vdup_lane_s8(vrshrn_n_s16(a4, 3uLL), 0).u32[0];
  do
  {
    *result = a4.i32[0];
    v8 = (result + a2);
    *a8 = a4.i32[0];
    v9 = (a8 + a2);
    v10 = __OFSUB__(a6, 4);
    a6 -= 4;
    *v8 = a4.i32[0];
    result = (v8 + a2);
    *v9 = a4.i32[0];
    a8 = (v9 + a2);
  }

  while (!((a6 < 0) ^ v10 | (a6 == 0)));
  return result;
}

void *sub_277942FA4(void *result, uint64_t a2, uint8x8_t *a3, int16x8_t a4, uint64_t a5, int a6, uint64_t a7, void *a8)
{
  *a4.i8 = *a3;
  a4.i16[0] = vaddlv_u8(*a3);
  *a4.i8 = vdup_lane_s8(vrshrn_n_s16(a4, 3uLL), 0);
  do
  {
    *result = a4.i64[0];
    v8 = (result + a2);
    *a8 = a4.i64[0];
    v9 = (a8 + a2);
    v10 = __OFSUB__(a6, 4);
    a6 -= 4;
    *v8 = a4.i64[0];
    result = (v8 + a2);
    *v9 = a4.i64[0];
    a8 = (v9 + a2);
  }

  while (!((a6 < 0) ^ v10 | (a6 == 0)));
  return result;
}

int8x16_t *sub_277942FD0(int8x16_t *result, uint64_t a2, uint8x16_t *a3, uint64_t a4, int a5, uint64_t a6, int8x16_t *a7)
{
  v7 = *a3;
  v7.i16[0] = vaddlvq_u8(*a3);
  v8 = vdupq_lane_s8(vrshrn_n_s16(v7, 4uLL), 0);
  do
  {
    *result = v8;
    v9 = (result + a2);
    *a7 = v8;
    v10 = (a7 + a2);
    v11 = __OFSUB__(a5, 4);
    a5 -= 4;
    *v9 = v8;
    result = (v9 + a2);
    *v10 = v8;
    a7 = (v10 + a2);
  }

  while (!((a5 < 0) ^ v11 | (a5 == 0)));
  return result;
}

int8x16_t *sub_277942FFC(int8x16_t *result, uint64_t a2, uint8x16_t *a3, double a4, double a5, int16x8_t a6, uint64_t a7, int a8, uint64_t a9, int8x16_t *a10)
{
  v10 = *a3;
  v11 = a3[1];
  v10.i16[0] = vaddlvq_u8(*a3);
  v11.i16[0] = vaddlvq_u8(v11);
  *a6.i8 = vadd_s16(*v10.i8, *v11.i8);
  v12 = vdupq_lane_s8(vrshrn_n_s16(a6, 5uLL), 0);
  do
  {
    *result = v12;
    result[1] = v12;
    v13 = (result + a2);
    *a10 = v12;
    a10[1] = v12;
    v14 = (a10 + a2);
    v15 = __OFSUB__(a8, 4);
    a8 -= 4;
    *v13 = v12;
    v13[1] = v12;
    result = (v13 + a2);
    *v14 = v12;
    v14[1] = v12;
    a10 = (v14 + a2);
  }

  while (!((a8 < 0) ^ v15 | (a8 == 0)));
  return result;
}

int8x16_t *sub_277943034(int8x16_t *result, uint64_t a2, uint8x16_t *a3, double a4, double a5, double a6, double a7, int16x8_t a8, uint64_t a9, int a10, uint64_t a11, int8x16_t *a12)
{
  v12 = *a3;
  v13 = a3[1];
  v14 = a3[2];
  v15 = a3[3];
  v12.i16[0] = vaddlvq_u8(*a3);
  v13.i16[0] = vaddlvq_u8(v13);
  v14.i16[0] = vaddlvq_u8(v14);
  v15.i16[0] = vaddlvq_u8(v15);
  *a8.i8 = vadd_s16(vadd_s16(*v12.i8, *v13.i8), vadd_s16(*v14.i8, *v15.i8));
  v16 = vdupq_lane_s8(vrshrn_n_s16(a8, 6uLL), 0);
  do
  {
    *result = v16;
    result[1] = v16;
    result[2] = v16;
    result[3] = v16;
    v17 = (result + a2);
    *a12 = v16;
    a12[1] = v16;
    a12[2] = v16;
    a12[3] = v16;
    v18 = (a12 + a2);
    v19 = __OFSUB__(a10, 4);
    a10 -= 4;
    *v17 = v16;
    v17[1] = v16;
    v17[2] = v16;
    v17[3] = v16;
    result = (v17 + a2);
    *v18 = v16;
    v18[1] = v16;
    v18[2] = v16;
    v18[3] = v16;
    a12 = (v18 + a2);
  }

  while (!((a10 < 0) ^ v19 | (a10 == 0)));
  return result;
}

uint64_t sub_2779430C4(int16x8_t a1, uint64_t a2, uint64_t a3, const float *a4, uint64_t (*a5)(__n128))
{
  *a1.i8 = vld1_dup_f32(a4);
  a1.i16[0] = vaddlv_u8(*a1.i8);
  return a5(vdupq_lane_s8(vrshrn_n_s16(a1, 3uLL), 0));
}

float *sub_2779430D8(float *result, uint64_t a2, float a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, float *a8)
{
  do
  {
    *result = a3;
    v8 = (result + a2);
    *a8 = a3;
    v9 = (a8 + a2);
    v10 = __OFSUB__(a6, 4);
    a6 -= 4;
    *v8 = a3;
    result = (v8 + a2);
    *v9 = a3;
    a8 = (v9 + a2);
  }

  while (!((a6 < 0) ^ v10 | (a6 == 0)));
  return result;
}

uint64_t sub_2779430F4(int16x8_t a1, uint64_t a2, uint64_t a3, uint8x8_t *a4, uint64_t (*a5)(__n128))
{
  *a1.i8 = *a4;
  a1.i16[0] = vaddlv_u8(*a4);
  return a5(vdupq_lane_s8(vrshrn_n_s16(a1, 3uLL), 0));
}

double *sub_277943108(double *result, uint64_t a2, double a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, double *a8)
{
  do
  {
    *result = a3;
    v8 = (result + a2);
    *a8 = a3;
    v9 = (a8 + a2);
    v10 = __OFSUB__(a6, 4);
    a6 -= 4;
    *v8 = a3;
    result = (v8 + a2);
    *v9 = a3;
    a8 = (v9 + a2);
  }

  while (!((a6 < 0) ^ v10 | (a6 == 0)));
  return result;
}

uint64_t sub_277943124(uint64_t a1, uint64_t a2, uint8x16_t *a3, uint64_t (*a4)(__n128))
{
  v4 = *a3;
  v4.i16[0] = vaddlvq_u8(*a3);
  return a4(vdupq_lane_s8(vrshrn_n_s16(v4, 4uLL), 0));
}

__n128 *sub_277943138(__n128 *result, uint64_t a2, __n128 a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, __n128 *a8)
{
  do
  {
    *result = a3;
    v8 = (result + a2);
    *a8 = a3;
    v9 = (a8 + a2);
    v10 = __OFSUB__(a6, 4);
    a6 -= 4;
    *v8 = a3;
    result = (v8 + a2);
    *v9 = a3;
    a8 = (v9 + a2);
  }

  while (!((a6 < 0) ^ v10 | (a6 == 0)));
  return result;
}

uint64_t sub_277943154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(__n128))
{
  v4 = *a3;
  v5 = *(a3 + 16);
  v4.i16[0] = vaddlvq_u8(*a3);
  v5.i16[0] = vaddlvq_u8(v5);
  *v4.i8 = vadd_s16(*v4.i8, *v5.i8);
  return a4(vdupq_lane_s8(vrshrn_n_s16(v4, 5uLL), 0));
}

__n128 *sub_277943170(__n128 *result, uint64_t a2, __n128 a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, __n128 *a8)
{
  do
  {
    *result = a3;
    result[1] = a3;
    v8 = (result + a2);
    *a8 = a3;
    a8[1] = a3;
    v9 = (a8 + a2);
    v10 = __OFSUB__(a6, 4);
    a6 -= 4;
    *v8 = a3;
    v8[1] = a3;
    result = (v8 + a2);
    *v9 = a3;
    v9[1] = a3;
    a8 = (v9 + a2);
  }

  while (!((a6 < 0) ^ v10 | (a6 == 0)));
  return result;
}

uint64_t sub_277943190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(__n128))
{
  v4 = *a3;
  v5 = *(a3 + 16);
  v6 = *(a3 + 32);
  v7 = *(a3 + 48);
  v4.i16[0] = vaddlvq_u8(*a3);
  v5.i16[0] = vaddlvq_u8(v5);
  v6.i16[0] = vaddlvq_u8(v6);
  v7.i16[0] = vaddlvq_u8(v7);
  *v4.i8 = vadd_s16(vadd_s16(*v4.i8, *v5.i8), vadd_s16(*v6.i8, *v7.i8));
  return a4(vdupq_lane_s8(vrshrn_n_s16(v4, 6uLL), 0));
}

__n128 *sub_2779431BC(__n128 *result, uint64_t a2, __n128 a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, __n128 *a8)
{
  do
  {
    *result = a3;
    result[1] = a3;
    result[2] = a3;
    result[3] = a3;
    v8 = (result + a2);
    *a8 = a3;
    a8[1] = a3;
    a8[2] = a3;
    a8[3] = a3;
    v9 = (a8 + a2);
    v10 = __OFSUB__(a6, 4);
    a6 -= 4;
    *v8 = a3;
    v8[1] = a3;
    v8[2] = a3;
    v8[3] = a3;
    result = (v8 + a2);
    *v9 = a3;
    v9[1] = a3;
    v9[2] = a3;
    v9[3] = a3;
    a8 = (v9 + a2);
  }

  while (!((a6 < 0) ^ v10 | (a6 == 0)));
  return result;
}

uint64_t sub_277943248(uint64_t a1, uint64_t a2, char *a3, uint64_t (*a4)(uint64_t, uint64_t, char *, float))
{
  v4 = *a3;
  v4.i16[0] = vaddlv_u8(v4);
  return a4(a1, a2, a3 + 5, *v4.i32);
}

unsigned __int32 *sub_27794325C(unsigned __int32 *result, uint64_t a2, unsigned int *a3, int16x4_t a4, uint64_t a5, int a6, uint64_t a7, unsigned __int32 *a8)
{
  v10 = *a3;
  v10.i16[0] = vaddlv_u8(v10);
  v11 = vshl_u16(vadd_s16(vadd_s16(a4, v8), v10), v9);
  if (a6 != 4)
  {
    v11 = vqdmulh_s16(v11, vdup_n_s16(0x2AAB199Au >> (2 * a6)));
  }

  v12 = vdup_lane_s8(v11, 0).u32[0];
  do
  {
    *result = v12;
    v13 = (result + a2);
    *a8 = v12;
    v14 = (a8 + a2);
    v15 = __OFSUB__(a6, 4);
    a6 -= 4;
    *v13 = v12;
    result = (v13 + a2);
    *v14 = v12;
    a8 = (v14 + a2);
  }

  while (!((a6 < 0) ^ v15 | (a6 == 0)));
  return result;
}

uint64_t sub_2779432B4(uint64_t a1, uint64_t a2, uint8x8_t *a3, uint64_t (*a4)(uint64_t, uint64_t, __int8 *, float))
{
  v4 = *a3;
  v4.i16[0] = vaddlv_u8(*a3);
  return a4(a1, a2, &a3[1] + 1, *v4.i32);
}

int8x8_t *sub_2779432C4(int8x8_t *result, uint64_t a2, uint8x8_t *a3, int16x4_t a4, uint64_t a5, int a6, uint64_t a7, int8x8_t *a8)
{
  v10 = *a3;
  v10.i16[0] = vaddlv_u8(*a3);
  v11 = vshl_u16(vadd_s16(vadd_s16(a4, v8), v10), v9);
  if (a6 != 8)
  {
    if (a6 == 32)
    {
      v12 = 6554;
    }

    else
    {
      v12 = 10923;
    }

    v11 = vqdmulh_s16(v11, vdup_n_s16(v12));
  }

  v13 = vdup_lane_s8(v11, 0);
  do
  {
    *result = v13;
    v14 = (result + a2);
    *a8 = v13;
    v15 = (a8 + a2);
    v16 = __OFSUB__(a6, 4);
    a6 -= 4;
    *v14 = v13;
    result = (v14 + a2);
    *v15 = v13;
    a8 = (v15 + a2);
  }

  while (!((a6 < 0) ^ v16 | (a6 == 0)));
  return result;
}

uint64_t sub_277943318(uint64_t a1, uint64_t a2, uint8x16_t *a3, uint64_t (*a4)(uint64_t, uint64_t, __int8 *, float))
{
  v4 = *a3;
  v4.i16[0] = vaddlvq_u8(*a3);
  return a4(a1, a2, &a3[1].i8[1], *v4.i32);
}

int8x16_t *sub_277943328(int8x16_t *result, uint64_t a2, uint8x16_t *a3, int16x4_t a4, uint64_t a5, int a6, uint64_t a7, int8x16_t *a8)
{
  v10 = *a3;
  v10.i16[0] = vaddlvq_u8(*a3);
  v11 = vshl_u16(vadd_s16(vadd_s16(a4, v8), *v10.i8), v9);
  if (a6 != 16)
  {
    if ((a6 & 0x38) != 0)
    {
      v12 = 10923;
    }

    else
    {
      v12 = 6554;
    }

    v11 = vqdmulh_s16(v11, vdup_n_s16(v12));
  }

  v13 = vdupq_lane_s8(v11, 0);
  do
  {
    *result = v13;
    v14 = (result + a2);
    *a8 = v13;
    v15 = (a8 + a2);
    v16 = __OFSUB__(a6, 4);
    a6 -= 4;
    *v14 = v13;
    result = (v14 + a2);
    *v15 = v13;
    a8 = (v15 + a2);
  }

  while (!((a6 < 0) ^ v16 | (a6 == 0)));
  return result;
}

uint64_t sub_27794337C(uint64_t a1, uint64_t a2, uint8x16_t *a3, uint64_t (*a4)(uint64_t, uint64_t, __int8 *, double))
{
  v4 = *a3;
  v5 = a3[1];
  v4.i16[0] = vaddlvq_u8(*a3);
  v5.i16[0] = vaddlvq_u8(v5);
  return a4(a1, a2, &a3[2].i8[1], COERCE_DOUBLE(vadd_s16(*v4.i8, *v5.i8)));
}

int8x16_t *sub_277943394(int8x16_t *result, uint64_t a2, uint8x16_t *a3, int16x4_t a4, uint64_t a5, int a6, uint64_t a7, int8x16_t *a8)
{
  v10 = *a3;
  v11 = a3[1];
  v10.i16[0] = vaddlvq_u8(*a3);
  v11.i16[0] = vaddlvq_u8(v11);
  v12 = vshl_u16(vadd_s16(vadd_s16(vadd_s16(a4, v8), *v10.i8), *v11.i8), v9);
  if (a6 != 32)
  {
    if (a6 == 8)
    {
      v13 = 6554;
    }

    else
    {
      v13 = 10923;
    }

    v12 = vqdmulh_s16(v12, vdup_n_s16(v13));
  }

  v14 = vdupq_lane_s8(v12, 0);
  do
  {
    *result = v14;
    result[1] = v14;
    v15 = (result + a2);
    *a8 = v14;
    a8[1] = v14;
    v16 = (a8 + a2);
    v17 = __OFSUB__(a6, 4);
    a6 -= 4;
    *v15 = v14;
    v15[1] = v14;
    result = (v15 + a2);
    *v16 = v14;
    v16[1] = v14;
    a8 = (v16 + a2);
  }

  while (!((a6 < 0) ^ v17 | (a6 == 0)));
  return result;
}

uint64_t sub_2779433F4(uint64_t a1, uint64_t a2, uint8x16_t *a3, uint64_t (*a4)(uint64_t, uint64_t, __int8 *, double))
{
  v4 = *a3;
  v5 = a3[1];
  v6 = a3[2];
  v7 = a3[3];
  v4.i16[0] = vaddlvq_u8(*a3);
  v5.i16[0] = vaddlvq_u8(v5);
  v6.i16[0] = vaddlvq_u8(v6);
  v7.i16[0] = vaddlvq_u8(v7);
  return a4(a1, a2, &a3[4].i8[1], COERCE_DOUBLE(vadd_s16(vadd_s16(*v4.i8, *v5.i8), vadd_s16(*v6.i8, *v7.i8))));
}

int8x16_t *sub_27794341C(int8x16_t *result, uint64_t a2, uint8x16_t *a3, int16x4_t a4, uint64_t a5, int a6, uint64_t a7, int8x16_t *a8)
{
  v10 = *a3;
  v11 = a3[1];
  v12 = a3[2];
  v13 = a3[3];
  v10.i16[0] = vaddlvq_u8(*a3);
  v11.i16[0] = vaddlvq_u8(v11);
  v12.i16[0] = vaddlvq_u8(v12);
  v13.i16[0] = vaddlvq_u8(v13);
  v14 = vshl_u16(vadd_s16(vadd_s16(vadd_s16(a4, v8), vadd_s16(*v10.i8, *v11.i8)), vadd_s16(*v12.i8, *v13.i8)), v9);
  if (a6 != 64)
  {
    v14 = vqdmulh_s16(v14, vdup_n_s16(0x199A2AABu >> a6));
  }

  v15 = vdupq_lane_s8(v14, 0);
  do
  {
    *result = v15;
    result[1] = v15;
    result[2] = v15;
    result[3] = v15;
    v16 = (result + a2);
    *a8 = v15;
    a8[1] = v15;
    a8[2] = v15;
    a8[3] = v15;
    v17 = (a8 + a2);
    v18 = __OFSUB__(a6, 4);
    a6 -= 4;
    *v16 = v15;
    v16[1] = v15;
    v16[2] = v15;
    v16[3] = v15;
    result = (v16 + a2);
    *v17 = v15;
    v17[1] = v15;
    v17[2] = v15;
    v17[3] = v15;
    a8 = (v17 + a2);
  }

  while (!((a6 < 0) ^ v18 | (a6 == 0)));
  return result;
}

_DWORD *sub_2779434D4@<X0>(_DWORD *result@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, int a4@<W4>, _DWORD *a5@<X6>, uint64_t a6@<X7>, const float *a7@<X8>, int64x2_t a8@<Q0>, int64x2_t a9@<Q2>, uint8x16_t a10@<Q4>)
{
  v10 = vld1q_dup_f32(a7);
  v11 = vsubl_u8(*v10.i8, *a10.i8);
  do
  {
    *a8.i8 = vld4_dup_s8(a3);
    a3 += a6;
    *a8.i8 = vzip1_s32(*a8.i8, v12);
    *a9.i8 = vzip1_s32(*a9.i8, v13);
    v14 = vqmovun_high_s16(vqmovun_s16(vaddw_u8(v11, *a8.i8)), vaddw_u8(v11, *a9.i8));
    a8 = vzip1q_s64(a8, a9);
    v15 = vabdq_u8(v10, v14);
    v16 = vabdq_u8(a10, v14);
    v17 = vbslq_s8(vcgeq_u8(vminq_u8(v15, v16), vabdq_u8(a8, v14)), a8, vbslq_s8(vcgeq_u8(v16, v15), v10, a10));
    *result = v17.i32[3];
    v18 = (result + a2);
    *a5 = v17.i32[2];
    v19 = (a5 + a2);
    v20 = __OFSUB__(a4, 4);
    a4 -= 4;
    *v18 = v17.i32[1];
    result = (v18 + a2);
    *v19 = v17.i32[0];
    a5 = (v19 + a2);
  }

  while (!((a4 < 0) ^ v20 | (a4 == 0)));
  return result;
}

void *sub_277943538@<X0>(void *result@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, int a4@<W4>, void *a5@<X6>, uint64_t a6@<X7>, const double *a7@<X8>, int64x2_t a8@<Q0>, int64x2_t a9@<Q1>, int64x2_t a10@<Q2>, int64x2_t a11@<Q3>, uint8x16_t a12@<Q4>)
{
  v12 = vld1q_dup_f64(a7);
  v13 = vsubl_u8(*v12.i8, *a12.i8);
  do
  {
    *a8.i8 = vld4_dup_s8(a3);
    a3 += a6;
    v14 = vqmovun_high_s16(vqmovun_s16(vaddw_u8(v13, *a8.i8)), vaddw_u8(v13, *a9.i8));
    v15 = vqmovun_high_s16(vqmovun_s16(vaddw_u8(v13, *a10.i8)), vaddw_u8(v13, *a11.i8));
    a10 = vzip1q_s64(a10, a11);
    a8 = vzip1q_s64(a8, a9);
    v16 = vabdq_u8(v12, v15);
    v17 = vabdq_u8(v12, v14);
    v18 = vabdq_u8(a12, v15);
    v19 = vabdq_u8(a12, v14);
    v20 = vbslq_s8(vcgeq_u8(vminq_u8(v16, v18), vabdq_u8(a10, v15)), a10, vbslq_s8(vcgeq_u8(v18, v16), v12, a12));
    v21 = vbslq_s8(vcgeq_u8(vminq_u8(v17, v19), vabdq_u8(a8, v14)), a8, vbslq_s8(vcgeq_u8(v19, v17), v12, a12));
    *result = v20.i64[1];
    v22 = (result + a2);
    *a5 = v20.i64[0];
    v23 = (a5 + a2);
    v24 = __OFSUB__(a4, 4);
    a4 -= 4;
    *v22 = v21.i64[1];
    result = (v22 + a2);
    *v23 = v21.i64[0];
    a5 = (v23 + a2);
  }

  while (!((a4 < 0) ^ v24 | (a4 == 0)));
  return result;
}

int8x16_t *sub_2779435C8@<X0>(int8x16_t *result@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, int a4@<W3>, int a5@<W4>, int8x16_t *a6@<X6>, uint64_t a7@<X7>, int8x16_t *a8@<X8>, uint8x16_t a9@<Q4>)
{
  v10 = *a8;
  v9 = a8 + 1;
  v11 = a4;
  v12 = (result + a2);
  v13 = (a6 + a2);
  v14 = 2 * a2 - a4;
  while (1)
  {
    v31 = vld4q_dup_s8(a3);
    a3 += a7;
    while (1)
    {
      v15 = vsubl_u8(*v10.i8, *a9.i8);
      v16 = vsubl_high_u8(v10, a9);
      v17 = vqmovun_high_s16(vqmovun_s16(vaddw_u8(v15, *v31.val[1].i8)), vaddw_u8(v16, *v31.val[1].i8));
      v18 = vqmovun_high_s16(vqmovun_s16(vaddw_u8(v15, *v31.val[0].i8)), vaddw_u8(v16, *v31.val[0].i8));
      v19 = vqmovun_high_s16(vqmovun_s16(vaddw_u8(v15, *v31.val[3].i8)), vaddw_u8(v16, *v31.val[3].i8));
      v20 = vqmovun_high_s16(vqmovun_s16(vaddw_u8(v15, *v31.val[2].i8)), vaddw_u8(v16, *v31.val[2].i8));
      v21 = vabdq_u8(v10, v19);
      v22 = vabdq_u8(v10, v20);
      v23 = vabdq_u8(v10, v17);
      v24 = vabdq_u8(v10, v18);
      v25 = vabdq_u8(a9, v19);
      v26 = vabdq_u8(a9, v20);
      v27 = vabdq_u8(a9, v17);
      v28 = vabdq_u8(a9, v18);
      v29 = __OFSUB__(a4, 16);
      a4 -= 16;
      *result++ = vbslq_s8(vcgeq_u8(vminq_u8(v21, v25), vabdq_u8(v31.val[3], v19)), v31.val[3], vbslq_s8(vcgeq_u8(v25, v21), v10, a9));
      *a6++ = vbslq_s8(vcgeq_u8(vminq_u8(v22, v26), vabdq_u8(v31.val[2], v20)), v31.val[2], vbslq_s8(vcgeq_u8(v26, v22), v10, a9));
      *v12++ = vbslq_s8(vcgeq_u8(vminq_u8(v23, v27), vabdq_u8(v31.val[1], v17)), v31.val[1], vbslq_s8(vcgeq_u8(v27, v23), v10, a9));
      *v13++ = vbslq_s8(vcgeq_u8(vminq_u8(v24, v28), vabdq_u8(v31.val[0], v18)), v31.val[0], vbslq_s8(vcgeq_u8(v28, v24), v10, a9));
      if ((a4 < 0) ^ v29 | (a4 == 0))
      {
        break;
      }

      v10 = *v9++;
    }

    v29 = __OFSUB__(a5, 4);
    a5 -= 4;
    if ((a5 < 0) ^ v29 | (a5 == 0))
    {
      break;
    }

    v30 = (v9 - v11);
    result = (result + v14);
    a6 = (a6 + v14);
    v10 = *v30;
    v9 = v30 + 1;
    v12 = (v12 + v14);
    v13 = (v13 + v14);
    a4 = v11;
  }

  return result;
}

uint64_t sub_277943704(__n128 a1, __n128 a2, __n128 a3, __n128 a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, unsigned int a9)
{
  v9 = (a7 - a9);
  v10 = vld1q_dup_s8(v9);
  return ((&dword_27794396C - *(&dword_27794396C + __clz(a8) - 25)))(a1, a2, a3, a4, v10);
}

_DWORD *sub_277943740@<X0>(_DWORD *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W4>, _DWORD *a5@<X6>, const float *a6@<X8>, uint8x8_t a7@<D4>)
{
  v9 = vld1_dup_f32(a6);
  v10 = vld1_dup_f32(v7);
  v11 = (a3 - 4);
  v12 = vdupq_lane_s8(v9, 3).u64[0];
  v13 = vsubl_u8(v9, a7);
  v14 = vmovl_u8(v10);
  do
  {
    v20 = vld4_dup_s8(v11);
    v11 -= 4;
    v21 = vld4_dup_s8(v8);
    v8 += 4;
    v15 = vrshrn_n_s16(vhaddq_u16(vmlaq_s16(vshll_n_s8(v12, 8uLL), vsubl_u8(vzip1_s32(v20.val[3], v20.val[2]), v12), v14), vmlaq_s16(vshll_n_s8(a7, 8uLL), v13, vmovl_u8(vzip1_s32(v21.val[0], v21.val[1])))), 8uLL);
    v16 = vrshrn_n_s16(vhaddq_u16(vmlaq_s16(vshll_n_s8(v12, 8uLL), vsubl_u8(vzip1_s32(v20.val[1], v20.val[0]), v12), v14), vmlaq_s16(vshll_n_s8(a7, 8uLL), v13, vmovl_u8(vzip1_s32(v21.val[2], v21.val[3])))), 8uLL);
    *result = v15.i32[0];
    v17 = (result + a2);
    *a5 = v15.i32[1];
    v18 = (a5 + a2);
    v19 = __OFSUB__(a4, 4);
    a4 -= 4;
    *v17 = v16.i32[0];
    result = (v17 + a2);
    *v18 = v16.i32[1];
    a5 = (v18 + a2);
  }

  while (!((a4 < 0) ^ v19 | (a4 == 0)));
  return result;
}

int8x8_t *sub_2779437D0@<X0>(int8x8_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W4>, int8x8_t *a5@<X6>, int8x8_t *a6@<X8>, uint8x8_t a7@<D4>)
{
  v9 = (a3 - 4);
  v10 = vdupq_lane_s8(*a6, 7).u64[0];
  v11 = vsubl_u8(*a6, a7);
  v12 = vmovl_u8(*v7);
  do
  {
    v16 = vld4_dup_s8(v9);
    v9 -= 4;
    v17 = vld4_dup_s8(v8);
    v8 += 4;
    *result = vrshrn_n_s16(vhaddq_u16(vmlaq_s16(vshll_n_s8(v10, 8uLL), vsubl_u8(v16.val[3], v10), v12), vmlaq_s16(vshll_n_s8(a7, 8uLL), v11, vmovl_u8(v17.val[0]))), 8uLL);
    v13 = (result + a2);
    *a5 = vrshrn_n_s16(vhaddq_u16(vmlaq_s16(vshll_n_s8(v10, 8uLL), vsubl_u8(v16.val[2], v10), v12), vmlaq_s16(vshll_n_s8(a7, 8uLL), v11, vmovl_u8(v17.val[1]))), 8uLL);
    v14 = (a5 + a2);
    v15 = __OFSUB__(a4, 4);
    a4 -= 4;
    *v13 = vrshrn_n_s16(vhaddq_u16(vmlaq_s16(vshll_n_s8(v10, 8uLL), vsubl_u8(v16.val[1], v10), v12), vmlaq_s16(vshll_n_s8(a7, 8uLL), v11, vmovl_u8(v17.val[2]))), 8uLL);
    result = (v13 + a2);
    *v14 = vrshrn_n_s16(vhaddq_u16(vmlaq_s16(vshll_n_s8(v10, 8uLL), vsubl_u8(v16.val[0], v10), v12), vmlaq_s16(vshll_n_s8(a7, 8uLL), v11, vmovl_u8(v17.val[3]))), 8uLL);
    a5 = (v14 + a2);
  }

  while (!((a4 < 0) ^ v15 | (a4 == 0)));
  return result;
}

int8x16_t *sub_277943890@<X0>(int8x16_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, int8x16_t *a6@<X6>, uint8x16_t *a7@<X8>, uint8x16_t a8@<Q4>)
{
  v10 = (a3 + a4);
  v11 = (a3 - 2);
  v12 = vld1q_dup_s8(v10).u64[0];
  v13 = a2 - a4;
  for (i = a4; ; a4 = i)
  {
    v26 = vld2_dup_s8(v11);
    v11 -= 2;
    v27 = vld2_dup_s8(v9);
    v9 += 2;
    v15 = vsubl_u8(v26.val[0], v12);
    v16 = vsubl_u8(v26.val[1], v12);
    v17 = vmovl_u8(v27.val[0]);
    v18 = vmovl_u8(v27.val[1]);
    do
    {
      v19 = *v8++;
      v20 = *a7++;
      v21 = vmovl_u8(*v19.i8);
      v22 = vmovl_high_u8(v19);
      v23 = vsubl_u8(*v20.i8, *a8.i8);
      v24 = vsubl_high_u8(v20, a8);
      v25 = __OFSUB__(a4, 16);
      a4 -= 16;
      *result++ = vrshrn_high_n_s16(vrshrn_n_s16(vhaddq_u16(vmlaq_s16(vshll_n_s8(v12, 8uLL), v16, v21), vmlaq_s16(vshll_n_s8(*a8.i8, 8uLL), v23, v17)), 8uLL), vhaddq_u16(vmlaq_s16(vshll_n_s8(v12, 8uLL), v16, v22), vmlaq_s16(vshll_n_s8(*a8.i8, 8uLL), v24, v17)), 8uLL);
      *a6++ = vrshrn_high_n_s16(vrshrn_n_s16(vhaddq_u16(vmlaq_s16(vshll_n_s8(v12, 8uLL), v15, v21), vmlaq_s16(vshll_n_s8(*a8.i8, 8uLL), v23, v18)), 8uLL), vhaddq_u16(vmlaq_s16(vshll_n_s8(v12, 8uLL), v15, v22), vmlaq_s16(vshll_n_s8(*a8.i8, 8uLL), v24, v18)), 8uLL);
    }

    while (!((a4 < 0) ^ v25 | (a4 == 0)));
    v25 = __OFSUB__(a5, 2);
    a5 -= 2;
    if ((a5 < 0) ^ v25 | (a5 == 0))
    {
      break;
    }

    a7 = (a7 - i);
    v8 = (v8 - i);
    result = (result + v13);
    a6 = (a6 + v13);
  }

  return result;
}

uint64_t sub_277943978(__n128 a1, __n128 a2, __n128 a3, __n128 a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, unsigned int a9)
{
  v9 = (a7 - a9);
  v10 = vld1q_dup_s8(v9);
  return ((&dword_277943B3C - *(&dword_277943B3C + __clz(a8) - 25)))(a1, a2, a3, a4, v10);
}

_DWORD *sub_2779439B0(_DWORD *result, uint64_t a2, const float *a3, double a4, double a5, double a6, double a7, uint8x8_t a8, uint64_t a9, int a10, uint64_t a11, _DWORD *a12, const char *a13)
{
  v13 = vld1_dup_f32(a3);
  v14 = vsubl_u8(v13, a8);
  do
  {
    v20 = vld4_dup_s8(a13);
    a13 += 4;
    v15 = vrshrn_n_s16(vmlaq_s16(vshll_n_s8(a8, 8uLL), v14, vmovl_u8(vzip1_s32(v20.val[0], v20.val[1]))), 8uLL);
    v16 = vrshrn_n_s16(vmlaq_s16(vshll_n_s8(a8, 8uLL), v14, vmovl_u8(vzip1_s32(v20.val[2], v20.val[3]))), 8uLL);
    *result = v15.i32[0];
    v17 = (result + a2);
    *a12 = v15.i32[1];
    v18 = (a12 + a2);
    v19 = __OFSUB__(a10, 4);
    a10 -= 4;
    *v17 = v16.i32[0];
    result = (v17 + a2);
    *v18 = v16.i32[1];
    a12 = (v18 + a2);
  }

  while (!((a10 < 0) ^ v19 | (a10 == 0)));
  return result;
}

int8x8_t *sub_277943A00(int8x8_t *result, uint64_t a2, uint8x8_t *a3, double a4, double a5, double a6, double a7, uint8x8_t a8, uint64_t a9, int a10, uint64_t a11, int8x8_t *a12, const char *a13)
{
  v13 = vsubl_u8(*a3, a8);
  do
  {
    v17 = vld4_dup_s8(a13);
    a13 += 4;
    *result = vrshrn_n_s16(vmlaq_s16(vshll_n_s8(a8, 8uLL), v13, vmovl_u8(v17.val[0])), 8uLL);
    v14 = (result + a2);
    *a12 = vrshrn_n_s16(vmlaq_s16(vshll_n_s8(a8, 8uLL), v13, vmovl_u8(v17.val[1])), 8uLL);
    v15 = (a12 + a2);
    v16 = __OFSUB__(a10, 4);
    a10 -= 4;
    *v14 = vrshrn_n_s16(vmlaq_s16(vshll_n_s8(a8, 8uLL), v13, vmovl_u8(v17.val[2])), 8uLL);
    result = (v14 + a2);
    *v15 = vrshrn_n_s16(vmlaq_s16(vshll_n_s8(a8, 8uLL), v13, vmovl_u8(v17.val[3])), 8uLL);
    a12 = (v15 + a2);
  }

  while (!((a10 < 0) ^ v16 | (a10 == 0)));
  return result;
}

int8x16_t *sub_277943A68(int8x16_t *result, uint64_t a2, uint8x16_t *a3, int a4, int a5, double a6, double a7, double a8, double a9, uint8x16_t a10, uint64_t a11, int8x16_t *a12, const char *a13)
{
  v13 = (result + a2);
  v14 = (a12 + a2);
  v15 = 2 * a2 - a4;
  for (i = a4; ; a4 = i)
  {
    v25 = vld4_dup_s8(a13);
    a13 += 4;
    v17 = vmovl_u8(v25.val[0]);
    v18 = vmovl_u8(v25.val[1]);
    v19 = vmovl_u8(v25.val[2]);
    v20 = vmovl_u8(v25.val[3]);
    do
    {
      v21 = *a3++;
      v22 = vsubl_u8(*v21.i8, *a10.i8);
      v23 = vsubl_high_u8(v21, a10);
      v24 = __OFSUB__(a4, 16);
      a4 -= 16;
      *result++ = vrshrn_high_n_s16(vrshrn_n_s16(vmlaq_s16(vshll_n_s8(*a10.i8, 8uLL), v22, v17), 8uLL), vmlaq_s16(vshll_n_s8(*a10.i8, 8uLL), v23, v17), 8uLL);
      *a12++ = vrshrn_high_n_s16(vrshrn_n_s16(vmlaq_s16(vshll_n_s8(*a10.i8, 8uLL), v22, v18), 8uLL), vmlaq_s16(vshll_n_s8(*a10.i8, 8uLL), v23, v18), 8uLL);
      *v13++ = vrshrn_high_n_s16(vrshrn_n_s16(vmlaq_s16(vshll_n_s8(*a10.i8, 8uLL), v22, v19), 8uLL), vmlaq_s16(vshll_n_s8(*a10.i8, 8uLL), v23, v19), 8uLL);
      *v14++ = vrshrn_high_n_s16(vrshrn_n_s16(vmlaq_s16(vshll_n_s8(*a10.i8, 8uLL), v22, v20), 8uLL), vmlaq_s16(vshll_n_s8(*a10.i8, 8uLL), v23, v20), 8uLL);
    }

    while (!((a4 < 0) ^ v24 | (a4 == 0)));
    v24 = __OFSUB__(a5, 4);
    a5 -= 4;
    if ((a5 < 0) ^ v24 | (a5 == 0))
    {
      break;
    }

    a3 = (a3 - i);
    result = (result + v15);
    a12 = (a12 + v15);
    v13 = (v13 + v15);
    v14 = (v14 + v15);
  }

  return result;
}

uint64_t sub_277943B48(__n128 a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  v9 = (a8 + a9);
  v10 = vld1q_dup_s8(v9);
  return ((&qword_277943D20 - *(&qword_277943D20 + __clz(a9) - 25)))(a1, a2, a3, a4, a5, v10);
}

_DWORD *sub_277943B7C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W4>, _DWORD *a5@<X6>, const float *a6@<X8>, int8x8_t a7@<D5>)
{
  v7 = vld1_dup_f32(a6);
  v8 = (a3 - 4);
  v9 = vmovl_u8(v7);
  do
  {
    v15 = vld4_dup_s8(v8);
    v8 -= 4;
    v10 = vrshrn_n_s16(vmlaq_s16(vshll_n_s8(a7, 8uLL), vsubl_u8(vzip1_s32(v15.val[3], v15.val[2]), a7), v9), 8uLL);
    v11 = vrshrn_n_s16(vmlaq_s16(vshll_n_s8(a7, 8uLL), vsubl_u8(vzip1_s32(v15.val[1], v15.val[0]), a7), v9), 8uLL);
    *result = v10.i32[0];
    v12 = (result + a2);
    *a5 = v10.i32[1];
    v13 = (a5 + a2);
    v14 = __OFSUB__(a4, 4);
    a4 -= 4;
    *v12 = v11.i32[0];
    result = (v12 + a2);
    *v13 = v11.i32[1];
    a5 = (v13 + a2);
  }

  while (!((a4 < 0) ^ v14 | (a4 == 0)));
  return result;
}

int8x8_t *sub_277943BD4@<X0>(int8x8_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W4>, int8x8_t *a5@<X6>, uint8x8_t *a6@<X8>, int8x8_t a7@<D5>)
{
  v7 = (a3 - 4);
  v8 = vmovl_u8(*a6);
  do
  {
    v12 = vld4_dup_s8(v7);
    v7 -= 4;
    *result = vrshrn_n_s16(vmlaq_s16(vshll_n_s8(a7, 8uLL), vsubl_u8(v12.val[3], a7), v8), 8uLL);
    v9 = (result + a2);
    *a5 = vrshrn_n_s16(vmlaq_s16(vshll_n_s8(a7, 8uLL), vsubl_u8(v12.val[2], a7), v8), 8uLL);
    v10 = (a5 + a2);
    v11 = __OFSUB__(a4, 4);
    a4 -= 4;
    *v9 = vrshrn_n_s16(vmlaq_s16(vshll_n_s8(a7, 8uLL), vsubl_u8(v12.val[1], a7), v8), 8uLL);
    result = (v9 + a2);
    *v10 = vrshrn_n_s16(vmlaq_s16(vshll_n_s8(a7, 8uLL), vsubl_u8(v12.val[0], a7), v8), 8uLL);
    a5 = (v10 + a2);
  }

  while (!((a4 < 0) ^ v11 | (a4 == 0)));
  return result;
}

int8x16_t *sub_277943C44@<X0>(int8x16_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, int8x16_t *a6@<X6>, uint8x16_t *a7@<X8>, uint8x8_t a8@<D5>)
{
  v8 = (a3 - 4);
  v9 = (result + a2);
  v10 = (a6 + a2);
  v11 = 2 * a2 - a4;
  for (i = a4; ; a4 = i)
  {
    v21 = vld4_dup_s8(v8);
    v8 -= 4;
    v13 = vsubl_u8(v21.val[0], a8);
    v14 = vsubl_u8(v21.val[1], a8);
    v15 = vsubl_u8(v21.val[2], a8);
    v16 = vsubl_u8(v21.val[3], a8);
    do
    {
      v17 = *a7++;
      v18 = vmovl_u8(*v17.i8);
      v19 = vmovl_high_u8(v17);
      v20 = __OFSUB__(a4, 16);
      a4 -= 16;
      *result++ = vrshrn_high_n_s16(vrshrn_n_s16(vmlaq_s16(vshll_n_s8(a8, 8uLL), v16, v18), 8uLL), vmlaq_s16(vshll_n_s8(a8, 8uLL), v16, v19), 8uLL);
      *a6++ = vrshrn_high_n_s16(vrshrn_n_s16(vmlaq_s16(vshll_n_s8(a8, 8uLL), v15, v18), 8uLL), vmlaq_s16(vshll_n_s8(a8, 8uLL), v15, v19), 8uLL);
      *v9++ = vrshrn_high_n_s16(vrshrn_n_s16(vmlaq_s16(vshll_n_s8(a8, 8uLL), v14, v18), 8uLL), vmlaq_s16(vshll_n_s8(a8, 8uLL), v14, v19), 8uLL);
      *v10++ = vrshrn_high_n_s16(vrshrn_n_s16(vmlaq_s16(vshll_n_s8(a8, 8uLL), v13, v18), 8uLL), vmlaq_s16(vshll_n_s8(a8, 8uLL), v13, v19), 8uLL);
    }

    while (!((a4 < 0) ^ v20 | (a4 == 0)));
    v20 = __OFSUB__(a5, 4);
    a5 -= 4;
    if ((a5 < 0) ^ v20 | (a5 == 0))
    {
      break;
    }

    a7 = (a7 - i);
    result = (result + v11);
    a6 = (a6 + v11);
    v9 = (v9 + v11);
    v10 = (v10 + v11);
  }

  return result;
}

int8x16_t sub_277943D2C(int8x16_t *a1, uint64_t a2, int8x16_t *a3, unsigned int a4)
{
  v4 = &a3->i8[a4];
  v5 = vld1q_dup_s8(v4);
  v6.i64[0] = 0x9000900090009;
  v6.i64[1] = 0x9000900090009;
  v7 = vbslq_s8(*(&unk_27A718C48 - a4), v5, *a3);
  v8 = vextq_s8(v7, v5, 1uLL);
  v9 = vextq_s8(v7, v5, 2uLL);
  v10 = vextq_s8(v7, v5, 3uLL);
  v11 = vqrshrun_high_n_s16(vqrshrun_n_s16(vsubq_s16(vmulq_s16(vaddl_u8(*v8.i8, *v9.i8), v6), vaddl_u8(*v7.i8, *v10.i8)), 4uLL), vsubq_s16(vmulq_s16(vaddl_high_u8(v8, v9), v6), vaddl_high_u8(v7, v10)), 4uLL);
  result = vzip1q_s8(v8, v11);
  *a1 = result;
  a1[1] = vzip2q_s8(v8, v11);
  return result;
}

int8x16_t sub_277943D94(int8x16_t *a1, unsigned int a2, int8x16_t *a3)
{
  v3 = &a3->i8[a2];
  v4 = vld1q_dup_s8(a3->i8);
  v5 = vld1q_dup_s8(v3);
  v6.i64[0] = 0x9000900090009;
  v6.i64[1] = 0x9000900090009;
  result = vbslq_s8(*(&unk_27A718C48 - a2), v5, *a3);
  v8 = vsubq_s16(vmulq_s16(vaddl_u8(*result.i8, *&vextq_s8(result, v5, 1uLL)), v6), vaddl_u8(*&vextq_s8(v4, result, 0xFuLL), *&vextq_s8(result, v5, 2uLL)));
  *v8.i8 = vqrshrun_n_s16(v8, 4uLL);
  a1[1].i8[0] = v5.i8[0];
  *a1 = vzip1q_s8(result, v8);
  return result;
}

int8x16_t *sub_277943DF0(int8x16_t *result, int a2, int8x16_t *a3, int a4, unsigned int a5)
{
  if (a5 == 3)
  {
    v22 = (a3 - 1);
    v23.i64[0] = 0x202020202020202;
    v23.i64[1] = 0x202020202020202;
    v27 = *v22;
    v24 = v22 + 1;
    v25.i64[0] = 0x404040404040404;
    v25.i64[1] = 0x404040404040404;
    v26.i64[0] = 0x404040404040404;
    v26.i64[1] = 0x404040404040404;
    v27.i8[0] = v27.i8[1];
    while (1)
    {
      v28 = *v24++;
      if (a4 < 18)
      {
        break;
      }

      v29 = vextq_s8(v27, v28, 1uLL);
      v30 = vextq_s8(v27, v28, 2uLL);
      v31 = vextq_s8(v27, v28, 3uLL);
      v32 = vextq_s8(v27, v28, 4uLL);
      v33 = vmlal_u8(vmlal_u8(vmlal_u8(vmlal_u8(vmull_u8(*v27.i8, *v23.i8), *v29.i8, *v25.i8), *v30.i8, *v26.i8), *v31.i8, *v25.i8), *v32.i8, *v23.i8);
      v34 = vmlal_high_u8(vmlal_high_u8(vmlal_high_u8(vmlal_high_u8(vmull_high_u8(v27, v23), v29, v25), v30, v26), v31, v25), v32, v23);
      v15 = __OFSUB__(a2, 16);
      a2 -= 16;
      v27 = v28;
      a4 -= 16;
      *result++ = vrshrn_high_n_s16(vrshrn_n_s16(v33, 4uLL), v34, 4uLL);
      if ((a2 < 0) ^ v15 | (a2 == 0))
      {
        return result;
      }
    }

    v35 = (&unk_27A718C47 - a4);
    v36 = &v24[-1] + a4 - 15;
    v37 = vld1q_dup_s8(v36);
    v38 = vbslq_s8(*v35, v37, v27);
    v39 = vbslq_s8(v35[1], v37, v28);
    while (1)
    {
      v40 = vextq_s8(v38, v39, 1uLL);
      v41 = vextq_s8(v38, v39, 2uLL);
      v42 = vextq_s8(v38, v39, 3uLL);
      v43 = vextq_s8(v38, v39, 4uLL);
      v44 = vmlal_u8(vmlal_u8(vmlal_u8(vmlal_u8(vmull_u8(*v38.i8, *v23.i8), *v40.i8, *v25.i8), *v41.i8, *v26.i8), *v42.i8, *v25.i8), *v43.i8, *v23.i8);
      v45 = vmlal_high_u8(vmlal_high_u8(vmlal_high_u8(vmlal_high_u8(vmull_high_u8(v38, v23), v40, v25), v41, v26), v42, v25), v43, v23);
      v15 = __OFSUB__(a2, 16);
      a2 -= 16;
      v38 = v39;
      v39 = v37;
      a4 -= 16;
      *result++ = vrshrn_high_n_s16(vrshrn_n_s16(v44, 4uLL), v45, 4uLL);
      if ((a2 < 0) ^ v15 | (a2 == 0))
      {
        break;
      }

      if (a4 < 0)
      {
        do
        {
          v15 = __OFSUB__(a2, 16);
          a2 -= 16;
          *result++ = v37;
        }

        while (!((a2 < 0) ^ v15 | (a2 == 0)));
        return result;
      }
    }
  }

  else
  {
    v5.i16[0] = *(&unk_27A718C65 + 2 * a5);
    v7 = *a3;
    v6 = a3 + 1;
    v8 = vdupq_lane_s8(v5, 0);
    v9 = vdupq_lane_s8(v5, 1);
    while (1)
    {
      v10 = *v6++;
      if (a4 < 17)
      {
        break;
      }

      v11 = vextq_s8(v7, v10, 1uLL);
      v12 = vextq_s8(v7, v10, 2uLL);
      v13 = vmlal_u8(vmlal_u8(vmull_u8(*v7.i8, *v8.i8), *v11.i8, *v9.i8), *v12.i8, *v8.i8);
      v14 = vmlal_high_u8(vmlal_high_u8(vmull_high_u8(v7, v8), v11, v9), v12, v8);
      v15 = __OFSUB__(a2, 16);
      a2 -= 16;
      v7 = v10;
      a4 -= 16;
      *result++ = vrshrn_high_n_s16(vrshrn_n_s16(v13, 4uLL), v14, 4uLL);
      if ((a2 < 0) ^ v15 | (a2 == 0))
      {
        return result;
      }
    }

    v16 = &v6[-2].i8[a4];
    v17 = vld1q_dup_s8(v16);
    v18 = vbslq_s8(*(&unk_27A718C48 - a4), v17, v7);
    v19 = vextq_s8(v18, v17, 1uLL);
    v20 = vextq_s8(v18, v17, 2uLL);
    v15 = __OFSUB__(a2, 16);
    v21 = a2 - 16;
    *result = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmlal_u8(vmull_u8(*v18.i8, *v8.i8), *v19.i8, *v9.i8), *v20.i8, *v8.i8), 4uLL), vmlal_high_u8(vmlal_high_u8(vmull_high_u8(v18, v8), v19, v9), v20, v8), 4uLL);
    for (++result; !((v21 < 0) ^ v15 | (v21 == 0)); ++result)
    {
      v15 = __OFSUB__(v21, 16);
      v21 -= 16;
      *result = v17;
    }
  }

  return result;
}

int8x16_t *sub_277943FDC(int8x16_t *result, unsigned int a2, int a3)
{
  v3 = vdupq_n_s8(a2);
  do
  {
    v4 = __OFSUB__(a3, 16);
    a3 -= 16;
    *result++ = v3;
  }

  while (!((a3 < 0) ^ v4 | (a3 == 0)));
  return result;
}

uint64_t sub_277943FF0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  v7 = (a3 + a7);
  vld1q_dup_s8(v7);
  return ((&qword_277944218 - *(&qword_277944218 + __clz(a4) - 25)))();
}

_DWORD *sub_277944018(_DWORD *result, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, unsigned int a8)
{
  while (1)
  {
    v9 = a8 >> 6;
    v10 = a8 & 0x3E;
    v11 = a8 + a6;
    if (v9 >= a7)
    {
      break;
    }

    v12 = *(a3 + v9);
    v13 = *(a3 + (v11 >> 6));
    v14 = vshll_n_u8(v12, 6uLL);
    v15 = vshll_n_u8(v13, 6uLL);
    *v14.i8 = vmla_s16(*v14.i8, *&vsubl_u8(vext_s8(v12, v12, 1uLL), v12), vdup_n_s16(v10));
    *v15.i8 = vmla_s16(*v15.i8, *&vsubl_u8(vext_s8(v13, v13, 1uLL), v13), vdup_n_s16(v11 & 0x3E));
    *result = vrshrn_n_s16(v14, 6uLL).u32[0];
    v16 = (result + a2);
    a8 = v11 + a6;
    v17 = __OFSUB__(a5, 2);
    a5 -= 2;
    *v16 = vrshrn_n_s16(v15, 6uLL).u32[0];
    result = (v16 + a2);
    if ((a5 < 0) ^ v17 | (a5 == 0))
    {
      return result;
    }
  }

  do
  {
    *result = v8;
    v18 = (result + a2);
    v17 = __OFSUB__(a5, 2);
    a5 -= 2;
    *v18 = v8;
    result = (v18 + a2);
  }

  while (!((a5 < 0) ^ v17 | (a5 == 0)));
  return result;
}

int8x8_t *sub_277944098(int8x8_t *result, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, unsigned int a8)
{
  while (1)
  {
    v10 = a8 >> 6;
    v11 = a8 & 0x3E;
    v12 = a8 + a6;
    if (v10 >= a7)
    {
      break;
    }

    v13 = vrshrn_n_s16(vmlal_u8(vmull_u8(*(a3 + (v12 >> 6)), vdup_n_s8(v8 - (v12 & 0x3E))), *&vextq_s8(*(a3 + (v12 >> 6)), *(a3 + (v12 >> 6)), 1uLL), vdup_n_s8(v12 & 0x3E)), 6uLL);
    *result = vrshrn_n_s16(vmlal_u8(vmull_u8(*(a3 + v10), vdup_n_s8(v8 - v11)), *&vextq_s8(*(a3 + v10), *(a3 + v10), 1uLL), vdup_n_s8(v11)), 6uLL);
    v14 = (result + a2);
    a8 = v12 + a6;
    v15 = __OFSUB__(a5, 2);
    a5 -= 2;
    *v14 = v13;
    result = (v14 + a2);
    if ((a5 < 0) ^ v15 | (a5 == 0))
    {
      return result;
    }
  }

  do
  {
    *result = v9;
    v16 = (result + a2);
    v15 = __OFSUB__(a5, 2);
    a5 -= 2;
    *v16 = v9;
    result = (v16 + a2);
  }

  while (!((a5 < 0) ^ v15 | (a5 == 0)));
  return result;
}

int8x16_t *sub_277944120(int8x16_t *result, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, unsigned int a8)
{
  v10 = a4;
  v11 = (result + a2);
  v12 = 2 * a2 - a4;
  while (1)
  {
    v13 = a8 >> 6;
    v14 = a8 & 0x3E;
    v15 = a8 + a6;
    v16 = v15 & 0x3E;
    if (v13 >= a7)
    {
      break;
    }

    v17 = (a3 + v13);
    v18 = (a3 + (v15 >> 6));
    v19 = vdupq_n_s8(v14);
    v20 = vdupq_n_s8(v16);
    v22 = *v17;
    v23 = v17[1];
    v21 = v17 + 2;
    v25 = *v18;
    v26 = v18[1];
    v24 = v18 + 2;
    v27 = vdupq_n_s8(v8 - v14);
    v28 = vdupq_n_s8(v8 - v16);
    a8 = v15 + a6;
    while (1)
    {
      v29 = vextq_s8(v22, v23, 1uLL);
      v30 = vextq_s8(v25, v26, 1uLL);
      v31 = __OFSUB__(a4, 16);
      a4 -= 16;
      *result++ = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v22.i8, *v27.i8), *v29.i8, *v19.i8), 6uLL), vmlal_high_u8(vmull_high_u8(v22, v27), v29, v19), 6uLL);
      *v11++ = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v25.i8, *v28.i8), *v30.i8, *v20.i8), 6uLL), vmlal_high_u8(vmull_high_u8(v25, v28), v30, v20), 6uLL);
      if ((a4 < 0) ^ v31 | (a4 == 0))
      {
        break;
      }

      v22 = v23;
      v23 = *v21++;
      v25 = v26;
      v26 = *v24++;
    }

    v31 = __OFSUB__(a5, 2);
    a5 -= 2;
    if ((a5 < 0) ^ v31 | (a5 == 0))
    {
      return result;
    }

    result = (result + v12);
    v11 = (v11 + v12);
    a4 = v10;
  }

  while (1)
  {
    do
    {
      *result++ = v9;
      v31 = __OFSUB__(a4, 16);
      a4 -= 16;
      *v11++ = v9;
    }

    while (!((a4 < 0) ^ v31 | (a4 == 0)));
    v31 = __OFSUB__(a5, 2);
    a5 -= 2;
    if ((a5 < 0) ^ v31 | (a5 == 0))
    {
      break;
    }

    result = (result + v12);
    v11 = (v11 + v12);
    a4 = v10;
  }

  return result;
}

int8x8_t *sub_277944224(int8x8_t *result, uint64_t a2, uint64_t a3, int a4, int a5, unsigned int a6, signed int a7)
{
  v7 = (a3 + a7);
  v8 = vld1q_dup_s8(v7).u64[0];
  v9 = a6;
  if (a4 == 8)
  {
    while (1)
    {
      v24 = v9 >> 6;
      v25 = v9 & 0x3E;
      v26 = v9 + a6;
      if (v24 >= a7)
      {
        break;
      }

      v27 = vrshrn_n_s16(vmlal_u8(vmull_u8(*&vuzp2q_s8(*(a3 + (v26 >> 6)), *(a3 + (v26 >> 6))), vdup_n_s8(v26 & 0x3E)), *&vuzp1q_s8(*(a3 + (v26 >> 6)), *(a3 + (v26 >> 6))), vdup_n_s8(64 - (v26 & 0x3E))), 6uLL);
      *result = vrshrn_n_s16(vmlal_u8(vmull_u8(*&vuzp2q_s8(*(a3 + v24), *(a3 + v24)), vdup_n_s8(v25)), *&vuzp1q_s8(*(a3 + v24), *(a3 + v24)), vdup_n_s8(64 - v25)), 6uLL);
      v28 = (result + a2);
      v9 = v26 + a6;
      v22 = __OFSUB__(a5, 2);
      a5 -= 2;
      *v28 = v27;
      result = (v28 + a2);
      if ((a5 < 0) ^ v22 | (a5 == 0))
      {
        return result;
      }
    }

    do
    {
      *result = v8;
      v29 = (result + a2);
      v22 = __OFSUB__(a5, 2);
      a5 -= 2;
      *v29 = v8;
      result = (v29 + a2);
    }

    while (!((a5 < 0) ^ v22 | (a5 == 0)));
  }

  else
  {
    while (1)
    {
      v10 = v9 >> 6;
      v11 = v9 & 0x3E;
      v12 = v9 + a6;
      if (v10 >= a7)
      {
        break;
      }

      v13 = *(a3 + v10);
      v14 = *(a3 + (v12 >> 6));
      v15 = vuzp2_s8(v13, v13);
      v16 = vuzp1_s8(v13, v13);
      v17 = vuzp2_s8(v14, v14);
      v18 = vuzp1_s8(v14, v14);
      v19 = vshll_n_u8(v16, 6uLL);
      v20 = vshll_n_u8(v18, 6uLL);
      *v19.i8 = vmla_s16(*v19.i8, *&vsubl_u8(v15, v16), vdup_n_s16(v11));
      *v20.i8 = vmla_s16(*v20.i8, *&vsubl_u8(v17, v18), vdup_n_s16(v12 & 0x3E));
      result->i32[0] = vrshrn_n_s16(v19, 6uLL).u32[0];
      v21 = (result + a2);
      v9 = v12 + a6;
      v22 = __OFSUB__(a5, 2);
      a5 -= 2;
      v21->i32[0] = vrshrn_n_s16(v20, 6uLL).u32[0];
      result = (v21 + a2);
      if ((a5 < 0) ^ v22 | (a5 == 0))
      {
        return result;
      }
    }

    do
    {
      result->i32[0] = v8;
      v23 = (result + a2);
      v22 = __OFSUB__(a5, 2);
      a5 -= 2;
      v23->i32[0] = v8;
      result = (v23 + a2);
    }

    while (!((a5 < 0) ^ v22 | (a5 == 0)));
  }

  return result;
}

void *sub_277944354(void *result, uint64_t a2, int a3)
{
  v3 = (a2 - 16);
  v4 = result + 1;
  do
  {
    v5 = __OFSUB__(a3, 16);
    a3 -= 16;
    v6 = vrev64q_s8(*v3--);
    *result = v6.i64[1];
    result += 2;
    *v4 = v6.i64[0];
    v4 += 2;
  }

  while (!((a3 < 0) ^ v5 | (a3 == 0)));
  return result;
}

_DWORD *sub_2779443B0@<X0>(_DWORD *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W5>, int a6@<W6>, unsigned int a7@<W7>, signed int a8@<W8>, int64x2_t a9@<Q6>, int64x2_t a10@<Q7>)
{
  *v10.i8 = vdup_n_s16(a7);
  *v10.i8 = vadd_s16(vmul_s16(*v11.i8, *v10.i8), *v10.i8);
  v12 = vmovn_s16(v11);
  v13 = *a4;
  v14 = *(a4 + 16);
  v15 = vand_s8(vmovn_s16(v10), 0x3E3E3E3E3E3E3E3ELL);
  v16 = vadd_s8(vshrn_n_s16(v10, 6uLL), 0x101010101010101);
  v17 = vqtbl1_s8(*a4, v16);
  v18 = vtrn1_s32(vadd_s8(v16, 0x101010101010101), vadd_s8(v16, 0x202020202020202));
  v19 = vsub_s8(0x4040404040404040, v15);
  v20 = vtrn1_s32(v12, v12);
  v21 = vtrn1_s32(v15, v15);
  v22 = vtrn1_s32(v19, v19);
  while (1)
  {
    v23 = a8 >> 6;
    *a9.i8 = vdup_n_s16(a8);
    v24 = a8 - a6;
    if (v23 <= -4)
    {
      break;
    }

    *a10.i8 = vdup_n_s16(v24);
    a9 = vtrn1q_s64(a9, a10);
    v25 = vqtbl1_s8(v13, v18);
    v26 = vshrn_n_s16(a9, 6uLL);
    *a9.i8 = vand_s8(vmovn_s16(a9), 0x3E3E3E3E3E3E3E3ELL);
    v27 = vbsl_s8(vcgez_s8(vadd_s8(v26, v20)), vrshrn_n_s16(vmlal_u8(vmull_u8(vtrn1_s32(*(a3 + v23), *(a3 + (v24 >> 6))), vsub_s8(0x4040404040404040, *a9.i8)), vtrn1_s32(vext_s8(*(a3 + v23), *(a3 + v23), 1uLL), vext_s8(*(a3 + (v24 >> 6)), *(a3 + (v24 >> 6)), 1uLL)), *a9.i8), 6uLL), vrshrn_n_s16(vmlal_u8(vmull_u8(vtrn1_s32(v17, v25), v22), v25, v21), 6uLL));
    *result = v27.i32[0];
    v28 = (result + a2);
    a8 = v24 - a6;
    v29 = __OFSUB__(a5, 2);
    a5 -= 2;
    *v28 = v27.i32[1];
    result = (v28 + a2);
    if ((a5 < 0) ^ v29 | (a5 == 0))
    {
      return result;
    }

    v17 = vext_s8(v25, v25, 4uLL);
    v18 = vadd_s8(v18, 0x202020202020202);
  }

  while (1)
  {
    v30 = vqtbl2_s8(*v13.i8, v18);
    v31 = vrshrn_n_s16(vmlal_u8(vmull_u8(vtrn1_s32(v17, v30), v22), v30, v21), 6uLL);
    *result = v31.i32[0];
    v32 = (result + a2);
    v29 = __OFSUB__(a5, 2);
    a5 -= 2;
    *v32 = v31.i32[1];
    result = (v32 + a2);
    if ((a5 < 0) ^ v29 | (a5 == 0))
    {
      break;
    }

    v17 = vext_s8(v30, v30, 4uLL);
    v18 = vadd_s8(v18, 0x202020202020202);
  }

  return result;
}

void *sub_2779444D0@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W5>, int a6@<W6>, unsigned int a7@<W7>, signed int a8@<W8>)
{
  v9 = vdupq_n_s16(a7);
  v10.i64[0] = 0x3E3E3E3E3E3E3E3ELL;
  v10.i64[1] = 0x3E3E3E3E3E3E3E3ELL;
  v11 = vaddq_s16(vmulq_s16(v8, v9), v9);
  *v8.i8 = vmovn_s16(v8);
  v12 = *a4;
  v13 = *(a4 + 16);
  v14 = *(a4 + 32);
  v15.i64[0] = 0x4040404040404040;
  v15.i64[1] = 0x4040404040404040;
  v16 = vand_s8(vmovn_s16(v11), 0x3E3E3E3E3E3E3E3ELL);
  v17 = vadd_s8(vshrn_n_s16(v11, 6uLL), 0x101010101010101);
  v18 = vqtbl1_s8(*a4, v17);
  v19 = vadd_s8(v17, 0x202020202020202);
  v20 = vadd_s8(v17, 0x101010101010101);
  v21 = vsub_s8(0x4040404040404040, v16);
  v22 = vtrn1q_s64(v8, v8);
  while (1)
  {
    v23 = a8 >> 6;
    v24 = vdupq_n_s16(a8);
    v25 = a8 - a6;
    if (v23 <= -8)
    {
      break;
    }

    v26 = vdupq_n_s16(v25);
    v27 = *(a3 + v23);
    v28 = *(a3 + (v25 >> 6));
    v29 = vqtbl2_s8(*v12.i8, v20);
    v30 = vshrn_high_n_s16(vshrn_n_s16(v24, 6uLL), v26, 6uLL);
    v31 = vqtbl2_s8(*v12.i8, v19);
    v32 = vextq_s8(v27, v27, 1uLL);
    v33 = vandq_s8(vmovn_hight_s16(vmovn_s16(v24), v26), v10);
    v34 = vtrn1q_s64(v27, v28);
    v35 = vtrn1q_s64(v32, vextq_s8(v28, v28, 1uLL));
    v36 = vsubq_s8(v15, v33);
    v37 = vbslq_s8(vcgezq_s8(vaddq_s8(v30, v22)), vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v34.i8, *v36.i8), *v35.i8, *v33.i8), 6uLL), vmlal_high_u8(vmull_high_u8(v34, v36), v35, v33), 6uLL), vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(v18, v21), v29, v16), 6uLL), vmlal_u8(vmull_u8(v29, v21), v31, v16), 6uLL));
    *result = v37.i64[0];
    v38 = (result + a2);
    a8 = v25 - a6;
    v39 = __OFSUB__(a5, 2);
    a5 -= 2;
    *v38 = v37.i64[1];
    result = (v38 + a2);
    if ((a5 < 0) ^ v39 | (a5 == 0))
    {
      return result;
    }

    v18 = v31;
    v20 = vadd_s8(v20, 0x202020202020202);
    v19 = vadd_s8(v19, 0x202020202020202);
  }

  while (1)
  {
    v40 = vqtbl3_s8(*v12.i8, v20);
    v41 = vqtbl3_s8(*v12.i8, v19);
    v42 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(v18, v21), v40, v16), 6uLL), vmlal_u8(vmull_u8(v40, v21), v41, v16), 6uLL);
    *result = v42.i64[0];
    v43 = (result + a2);
    v39 = __OFSUB__(a5, 2);
    a5 -= 2;
    *v43 = v42.i64[1];
    result = (v43 + a2);
    if ((a5 < 0) ^ v39 | (a5 == 0))
    {
      break;
    }

    v18 = v41;
    v20 = vadd_s8(v20, 0x202020202020202);
    v19 = vadd_s8(v19, 0x202020202020202);
  }

  return result;
}

int8x16_t *sub_277944614@<X0>(int8x16_t *result@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, int a5@<W5>, int a6@<W6>, unsigned int a7@<W7>, signed int a8@<W8>)
{
  v12 = vdupq_n_s16(a7);
  v13.i64[0] = 0x101010101010101;
  v13.i64[1] = 0x101010101010101;
  v14 = a4 + 1;
  v15 = v8[1];
  v16.i64[0] = 0x3E3E3E3E3E3E3E3ELL;
  v16.i64[1] = 0x3E3E3E3E3E3E3E3ELL;
  v17 = vaddq_s16(vmulq_s16(v11, v12), v12);
  v18 = vaddq_s16(vmulq_s16(v15, v12), v12);
  v19 = vmovn_hight_s16(vmovn_s16(v11), v15);
  v20 = *v14;
  v21 = *(v14 + 16);
  v22 = *(v14 + 32);
  v23 = *(v14 + 48);
  vld1q_dup_s8(a3);
  v24.i64[0] = 0x4040404040404040;
  v24.i64[1] = 0x4040404040404040;
  v25.i64[0] = 0x202020202020202;
  v25.i64[1] = 0x202020202020202;
  v26 = vshrn_high_n_s16(vshrn_n_s16(v17, 6uLL), v18, 6uLL);
  v27 = vandq_s8(vmovn_hight_s16(vmovn_s16(v17), v18), v16);
  v28 = vqtbx1q_s8(*v14, v26);
  v29 = vaddq_s8(v26, v25);
  v30 = vaddq_s8(v26, v13);
  v31 = vsubq_s8(v24, v27);
  v32.i64[0] = 0x202020202020202;
  v32.i64[1] = 0x202020202020202;
  while (1)
  {
    v33 = a8 >> 6;
    v34 = vdupq_n_s16(a8);
    v35 = a8 - a6;
    if (v33 <= -16)
    {
      break;
    }

    v36 = vdupq_n_s16(v35);
    v37 = &a3[v33];
    v38 = &a3[v35 >> 6];
    v39 = vqtbx4q_s8(*v20.i8, v30);
    *v9.i8 = vshrn_n_s16(v34, 6uLL);
    *v10.i8 = vshrn_n_s16(v36, 6uLL);
    *v34.i8 = vmovn_s16(v34);
    *v36.i8 = vmovn_s16(v36);
    v40 = vqtbx4q_s8(*v20.i8, v29);
    v41 = vextq_s8(*v37, v37[1], 1uLL);
    v42 = vextq_s8(*v38, v38[1], 1uLL);
    v43 = vandq_s8(vtrn1q_s64(v34, v34), v16);
    v44 = vandq_s8(vtrn1q_s64(v36, v36), v16);
    v45 = vsubq_s8(v24, v43);
    v46 = vsubq_s8(v24, v44);
    v9 = vcgezq_s8(vaddq_s8(vtrn1q_s64(v9, v9), v19));
    v10 = vcgezq_s8(vaddq_s8(vtrn1q_s64(v10, v10), v19));
    v47 = vbslq_s8(v10, vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v38->i8, *v46.i8), *v42.i8, *v44.i8), 6uLL), vmlal_high_u8(vmull_high_u8(*v38, v46), v42, v44), 6uLL), vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v39.i8, *v31.i8), *v40.i8, *v27.i8), 6uLL), vmlal_high_u8(vmull_high_u8(v39, v31), v40, v27), 6uLL));
    *result = vbslq_s8(v9, vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v37->i8, *v45.i8), *v41.i8, *v43.i8), 6uLL), vmlal_high_u8(vmull_high_u8(*v37, v45), v41, v43), 6uLL), vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v28.i8, *v31.i8), *v39.i8, *v27.i8), 6uLL), vmlal_high_u8(vmull_high_u8(v28, v31), v39, v27), 6uLL));
    v48 = (result + a2);
    v49 = __OFSUB__(a5, 2);
    a5 -= 2;
    a8 = v35 - a6;
    *v48 = v47;
    result = (v48 + a2);
    if ((a5 < 0) ^ v49 | (a5 == 0))
    {
      return result;
    }

    v28 = v40;
    v30 = vaddq_s8(v30, v32);
    v29 = vaddq_s8(v29, v32);
  }

  while (1)
  {
    v50 = vqtbx4q_s8(*v20.i8, v30);
    v51 = vqtbx4q_s8(*v20.i8, v29);
    *result = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v28.i8, *v31.i8), *v50.i8, *v27.i8), 6uLL), vmlal_high_u8(vmull_high_u8(v28, v31), v50, v27), 6uLL);
    v52 = (result + a2);
    v49 = __OFSUB__(a5, 2);
    a5 -= 2;
    *v52 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v50.i8, *v31.i8), *v51.i8, *v27.i8), 6uLL), vmlal_high_u8(vmull_high_u8(v50, v31), v51, v27), 6uLL);
    result = (v52 + a2);
    if ((a5 < 0) ^ v49 | (a5 == 0))
    {
      break;
    }

    v28 = v51;
    v30 = vaddq_s8(v30, v32);
    v29 = vaddq_s8(v29, v32);
  }

  return result;
}