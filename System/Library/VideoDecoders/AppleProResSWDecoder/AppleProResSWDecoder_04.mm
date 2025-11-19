int16x8_t *from_444_to_v216_10bits_A<8,8,(AlphaOutputMethod)0,true>(int16x8_t *result, int16x8_t *a2, int a3, int a4)
{
  if (atomic_load_explicit(&qword_280A718E0, memory_order_acquire))
  {
    if (atomic_load_explicit(&qword_280A718E8, memory_order_acquire))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v66 = a2;
    v58 = result;
    v62 = a3;
    v54 = a4;
    from_444_to_v216_10bits_A<8,8,(AlphaOutputMethod)0,true>();
    a4 = v54;
    result = v58;
    a3 = v62;
    a2 = v66;
    if (atomic_load_explicit(&qword_280A718E8, memory_order_acquire))
    {
LABEL_3:
      if (atomic_load_explicit(&qword_280A718F0, memory_order_acquire))
      {
        goto LABEL_4;
      }

LABEL_19:
      v68 = a2;
      v60 = result;
      v64 = a3;
      v56 = a4;
      from_444_to_v216_10bits_A<8,8,(AlphaOutputMethod)0,true>();
      a4 = v56;
      result = v60;
      a3 = v64;
      a2 = v68;
      if (atomic_load_explicit(&qword_280A718F8, memory_order_acquire))
      {
        goto LABEL_5;
      }

      goto LABEL_20;
    }
  }

  v67 = a2;
  v59 = result;
  v63 = a3;
  v55 = a4;
  from_444_to_v216_10bits_A<8,8,(AlphaOutputMethod)0,true>();
  a4 = v55;
  result = v59;
  a3 = v63;
  a2 = v67;
  if ((atomic_load_explicit(&qword_280A718F0, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_4:
  if (atomic_load_explicit(&qword_280A718F8, memory_order_acquire))
  {
    goto LABEL_5;
  }

LABEL_20:
  v69 = a2;
  v61 = result;
  v65 = a3;
  v57 = a4;
  from_444_to_v216_10bits_A<8,8,(AlphaOutputMethod)0,true>();
  a4 = v57;
  result = v61;
  a3 = v65;
  a2 = v69;
LABEL_5:
  v4 = xmmword_280A71E60;
  v5 = *algn_280A71E70;
  if (a4 <= 8)
  {
    v6 = 0;
  }

  else
  {
    v6 = a4 - 8;
  }

  v7 = a4 - v6;
  if (!v6)
  {
    v30 = a2 + 8;
    v31 = a2 + 32;
    v32 = a2 + 40;
    v34 = a2 + 64;
    v33 = a2 + 72;
    if (v7 < 1)
    {
      return result;
    }

    goto LABEL_14;
  }

  v8 = a4 - 7;
  v9.i64[0] = 0x8000800080008000;
  v9.i64[1] = 0x8000800080008000;
  do
  {
    v10 = (result + 8 * a3);
    v11 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(*a2, v4), v5), 6uLL), v9);
    v12 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[8], v4), v5), 6uLL), v9);
    v13 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(vuzp1q_s32(vzip1q_s16(a2[32], a2[40]), vzip2q_s16(a2[32], a2[40])), v4), v5), 6uLL), v9);
    v14 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(vuzp1q_s32(vzip1q_s16(a2[64], a2[72]), vzip2q_s16(a2[64], a2[72])), v4), v5), 6uLL), v9);
    *result = vzip1q_s16(v13, v11);
    result[1] = vzip2q_s16(v13, v11);
    result[2] = vzip1q_s16(v14, v12);
    result[3] = vzip2q_s16(v14, v12);
    v15 = a2[48];
    v16 = a2[56];
    v17 = vzip1q_s16(v15, v16);
    v18 = vzip2q_s16(v15, v16);
    v19 = a2[80];
    v20 = a2[88];
    v21 = a2[16];
    v22 = a2[24];
    ++a2;
    result = (result + a3);
    --v7;
    v23 = vuzp1q_s32(vzip1q_s16(v19, v20), vzip2q_s16(v19, v20));
    v24 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v21, v4), v5), 6uLL), v9);
    v25 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v22, v4), v5), 6uLL), v9);
    v26 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(vuzp1q_s32(v17, v18), v4), v5), 6uLL), v9);
    v27 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v23, v4), v5), 6uLL), v9);
    v28 = v10;
    vst2_s16(v28, *(&v24 - 8));
    v28 += 8;
    *v28 = vzip2q_s16(v26, v24);
    i16 = v10[2].i16;
    vst2_s16(i16, *(&v25 - 8));
    v10[3] = vzip2q_s16(v27, v25);
    --v8;
  }

  while (v8 > 1);
  v30 = a2 + 8;
  v31 = a2 + 32;
  v32 = a2 + 40;
  v33 = a2 + 72;
  v34 = a2 + 64;
  if (v7 >= 1)
  {
LABEL_14:
    v35 = result + 2;
    v36 = v7 + 1;
    v37.i64[0] = 0x8000800080008000;
    v37.i64[1] = 0x8000800080008000;
    v38 = result[2].i16;
    do
    {
      v39 = *v31++;
      v40 = v39;
      v41 = v35[-2].i16;
      v42 = *v32++;
      v43 = vuzp1q_s32(vzip1q_s16(v40, v42), vzip2q_s16(v40, v42));
      v44 = *v34++;
      v45 = v44;
      v46 = *v33++;
      v47 = vuzp1q_s32(vzip1q_s16(v45, v46), vzip2q_s16(v45, v46));
      v48 = *a2++;
      v49 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v48, v4), v5), 6uLL), v37);
      v50 = *v30++;
      v51 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v50, v4), v5), 6uLL), v37);
      v52 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v43, v4), v5), 6uLL), v37);
      vst2_s16(v41, *(&v49 - 8));
      v53 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v47, v4), v5), 6uLL), v37);
      v35[-1] = vzip2q_s16(v52, v49);
      vst2_s16(v38, *(&v51 - 8));
      v38 = (v38 + a3);
      v35[1] = vzip2q_s16(v53, v51);
      --v36;
      v35 = v38;
    }

    while (v36 > 1);
  }

  return result;
}

int16x8_t *from_444_to_v216_10bits_B<8,8,(AlphaOutputMethod)0,false>(int16x8_t *result, int16x8_t *a2, int a3, int a4)
{
  if (atomic_load_explicit(&qword_280A71900, memory_order_acquire))
  {
    if (atomic_load_explicit(&qword_280A71908, memory_order_acquire))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v66 = a2;
    v58 = result;
    v62 = a3;
    v54 = a4;
    from_444_to_v216_10bits_B<8,8,(AlphaOutputMethod)0,false>();
    a4 = v54;
    result = v58;
    a3 = v62;
    a2 = v66;
    if (atomic_load_explicit(&qword_280A71908, memory_order_acquire))
    {
LABEL_3:
      if (atomic_load_explicit(&qword_280A71910, memory_order_acquire))
      {
        goto LABEL_4;
      }

LABEL_19:
      v68 = a2;
      v60 = result;
      v64 = a3;
      v56 = a4;
      from_444_to_v216_10bits_B<8,8,(AlphaOutputMethod)0,false>();
      a4 = v56;
      result = v60;
      a3 = v64;
      a2 = v68;
      if (atomic_load_explicit(&qword_280A71918, memory_order_acquire))
      {
        goto LABEL_5;
      }

      goto LABEL_20;
    }
  }

  v67 = a2;
  v59 = result;
  v63 = a3;
  v55 = a4;
  from_444_to_v216_10bits_B<8,8,(AlphaOutputMethod)0,false>();
  a4 = v55;
  result = v59;
  a3 = v63;
  a2 = v67;
  if ((atomic_load_explicit(&qword_280A71910, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_4:
  if (atomic_load_explicit(&qword_280A71918, memory_order_acquire))
  {
    goto LABEL_5;
  }

LABEL_20:
  v69 = a2;
  v61 = result;
  v65 = a3;
  v57 = a4;
  from_444_to_v216_10bits_B<8,8,(AlphaOutputMethod)0,false>();
  a4 = v57;
  result = v61;
  a3 = v65;
  a2 = v69;
LABEL_5:
  v4 = xmmword_280A71E80;
  v5 = *algn_280A71E90;
  if (a4 <= 8)
  {
    v6 = 0;
  }

  else
  {
    v6 = a4 - 8;
  }

  v7 = a4 - v6;
  if (!v6)
  {
    v30 = a2 + 8;
    v31 = a2 + 32;
    v32 = a2 + 40;
    v34 = a2 + 64;
    v33 = a2 + 72;
    if (v7 < 1)
    {
      return result;
    }

    goto LABEL_14;
  }

  v8 = a4 - 7;
  v9.i64[0] = 0x8000800080008000;
  v9.i64[1] = 0x8000800080008000;
  do
  {
    v10 = (result + 8 * a3);
    v11 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(*a2, v4), v5), 6uLL), v9);
    v12 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[8], v4), v5), 6uLL), v9);
    v13 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(vuzp1q_s32(vzip1q_s16(a2[32], a2[40]), vzip2q_s16(a2[32], a2[40])), v4), v5), 6uLL), v9);
    v14 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(vuzp1q_s32(vzip1q_s16(a2[64], a2[72]), vzip2q_s16(a2[64], a2[72])), v4), v5), 6uLL), v9);
    *result = vzip1q_s16(v13, v11);
    result[1] = vzip2q_s16(v13, v11);
    result[2] = vzip1q_s16(v14, v12);
    result[3] = vzip2q_s16(v14, v12);
    v15 = a2[48];
    v16 = a2[56];
    v17 = vzip1q_s16(v15, v16);
    v18 = vzip2q_s16(v15, v16);
    v19 = a2[80];
    v20 = a2[88];
    v21 = a2[16];
    v22 = a2[24];
    ++a2;
    result = (result + a3);
    --v7;
    v23 = vuzp1q_s32(vzip1q_s16(v19, v20), vzip2q_s16(v19, v20));
    v24 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v21, v4), v5), 6uLL), v9);
    v25 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v22, v4), v5), 6uLL), v9);
    v26 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(vuzp1q_s32(v17, v18), v4), v5), 6uLL), v9);
    v27 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v23, v4), v5), 6uLL), v9);
    v28 = v10;
    vst2_s16(v28, *(&v24 - 8));
    v28 += 8;
    *v28 = vzip2q_s16(v26, v24);
    i16 = v10[2].i16;
    vst2_s16(i16, *(&v25 - 8));
    v10[3] = vzip2q_s16(v27, v25);
    --v8;
  }

  while (v8 > 1);
  v30 = a2 + 8;
  v31 = a2 + 32;
  v32 = a2 + 40;
  v33 = a2 + 72;
  v34 = a2 + 64;
  if (v7 >= 1)
  {
LABEL_14:
    v35 = result + 2;
    v36 = v7 + 1;
    v37.i64[0] = 0x8000800080008000;
    v37.i64[1] = 0x8000800080008000;
    v38 = result[2].i16;
    do
    {
      v39 = *v31++;
      v40 = v39;
      v41 = v35[-2].i16;
      v42 = *v32++;
      v43 = vuzp1q_s32(vzip1q_s16(v40, v42), vzip2q_s16(v40, v42));
      v44 = *v34++;
      v45 = v44;
      v46 = *v33++;
      v47 = vuzp1q_s32(vzip1q_s16(v45, v46), vzip2q_s16(v45, v46));
      v48 = *a2++;
      v49 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v48, v4), v5), 6uLL), v37);
      v50 = *v30++;
      v51 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v50, v4), v5), 6uLL), v37);
      v52 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v43, v4), v5), 6uLL), v37);
      vst2_s16(v41, *(&v49 - 8));
      v53 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v47, v4), v5), 6uLL), v37);
      v35[-1] = vzip2q_s16(v52, v49);
      vst2_s16(v38, *(&v51 - 8));
      v38 = (v38 + a3);
      v35[1] = vzip2q_s16(v53, v51);
      --v36;
      v35 = v38;
    }

    while (v36 > 1);
  }

  return result;
}

int16x8_t *from_444_to_v216_10bits_B<8,8,(AlphaOutputMethod)0,true>(int16x8_t *result, int16x8_t *a2, int a3, int a4)
{
  if (atomic_load_explicit(&qword_280A71920, memory_order_acquire))
  {
    if (atomic_load_explicit(&qword_280A71928, memory_order_acquire))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v66 = a2;
    v58 = result;
    v62 = a3;
    v54 = a4;
    from_444_to_v216_10bits_B<8,8,(AlphaOutputMethod)0,true>();
    a4 = v54;
    result = v58;
    a3 = v62;
    a2 = v66;
    if (atomic_load_explicit(&qword_280A71928, memory_order_acquire))
    {
LABEL_3:
      if (atomic_load_explicit(&qword_280A71930, memory_order_acquire))
      {
        goto LABEL_4;
      }

LABEL_19:
      v68 = a2;
      v60 = result;
      v64 = a3;
      v56 = a4;
      from_444_to_v216_10bits_B<8,8,(AlphaOutputMethod)0,true>();
      a4 = v56;
      result = v60;
      a3 = v64;
      a2 = v68;
      if (atomic_load_explicit(&qword_280A71938, memory_order_acquire))
      {
        goto LABEL_5;
      }

      goto LABEL_20;
    }
  }

  v67 = a2;
  v59 = result;
  v63 = a3;
  v55 = a4;
  from_444_to_v216_10bits_B<8,8,(AlphaOutputMethod)0,true>();
  a4 = v55;
  result = v59;
  a3 = v63;
  a2 = v67;
  if ((atomic_load_explicit(&qword_280A71930, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_4:
  if (atomic_load_explicit(&qword_280A71938, memory_order_acquire))
  {
    goto LABEL_5;
  }

LABEL_20:
  v69 = a2;
  v61 = result;
  v65 = a3;
  v57 = a4;
  from_444_to_v216_10bits_B<8,8,(AlphaOutputMethod)0,true>();
  a4 = v57;
  result = v61;
  a3 = v65;
  a2 = v69;
LABEL_5:
  v4 = xmmword_280A71EC0;
  v5 = *algn_280A71ED0;
  if (a4 <= 8)
  {
    v6 = 0;
  }

  else
  {
    v6 = a4 - 8;
  }

  v7 = a4 - v6;
  if (!v6)
  {
    v30 = a2 + 8;
    v31 = a2 + 32;
    v32 = a2 + 40;
    v34 = a2 + 64;
    v33 = a2 + 72;
    if (v7 < 1)
    {
      return result;
    }

    goto LABEL_14;
  }

  v8 = a4 - 7;
  v9.i64[0] = 0x8000800080008000;
  v9.i64[1] = 0x8000800080008000;
  do
  {
    v10 = (result + 8 * a3);
    v11 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(*a2, v4), v5), 6uLL), v9);
    v12 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[8], v4), v5), 6uLL), v9);
    v13 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(vuzp1q_s32(vzip1q_s16(a2[32], a2[40]), vzip2q_s16(a2[32], a2[40])), v4), v5), 6uLL), v9);
    v14 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(vuzp1q_s32(vzip1q_s16(a2[64], a2[72]), vzip2q_s16(a2[64], a2[72])), v4), v5), 6uLL), v9);
    *result = vzip1q_s16(v13, v11);
    result[1] = vzip2q_s16(v13, v11);
    result[2] = vzip1q_s16(v14, v12);
    result[3] = vzip2q_s16(v14, v12);
    v15 = a2[48];
    v16 = a2[56];
    v17 = vzip1q_s16(v15, v16);
    v18 = vzip2q_s16(v15, v16);
    v19 = a2[80];
    v20 = a2[88];
    v21 = a2[16];
    v22 = a2[24];
    ++a2;
    result = (result + a3);
    --v7;
    v23 = vuzp1q_s32(vzip1q_s16(v19, v20), vzip2q_s16(v19, v20));
    v24 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v21, v4), v5), 6uLL), v9);
    v25 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v22, v4), v5), 6uLL), v9);
    v26 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(vuzp1q_s32(v17, v18), v4), v5), 6uLL), v9);
    v27 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v23, v4), v5), 6uLL), v9);
    v28 = v10;
    vst2_s16(v28, *(&v24 - 8));
    v28 += 8;
    *v28 = vzip2q_s16(v26, v24);
    i16 = v10[2].i16;
    vst2_s16(i16, *(&v25 - 8));
    v10[3] = vzip2q_s16(v27, v25);
    --v8;
  }

  while (v8 > 1);
  v30 = a2 + 8;
  v31 = a2 + 32;
  v32 = a2 + 40;
  v33 = a2 + 72;
  v34 = a2 + 64;
  if (v7 >= 1)
  {
LABEL_14:
    v35 = result + 2;
    v36 = v7 + 1;
    v37.i64[0] = 0x8000800080008000;
    v37.i64[1] = 0x8000800080008000;
    v38 = result[2].i16;
    do
    {
      v39 = *v31++;
      v40 = v39;
      v41 = v35[-2].i16;
      v42 = *v32++;
      v43 = vuzp1q_s32(vzip1q_s16(v40, v42), vzip2q_s16(v40, v42));
      v44 = *v34++;
      v45 = v44;
      v46 = *v33++;
      v47 = vuzp1q_s32(vzip1q_s16(v45, v46), vzip2q_s16(v45, v46));
      v48 = *a2++;
      v49 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v48, v4), v5), 6uLL), v37);
      v50 = *v30++;
      v51 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v50, v4), v5), 6uLL), v37);
      v52 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v43, v4), v5), 6uLL), v37);
      vst2_s16(v41, *(&v49 - 8));
      v53 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v47, v4), v5), 6uLL), v37);
      v35[-1] = vzip2q_s16(v52, v49);
      vst2_s16(v38, *(&v51 - 8));
      v38 = (v38 + a3);
      v35[1] = vzip2q_s16(v53, v51);
      --v36;
      v35 = v38;
    }

    while (v36 > 1);
  }

  return result;
}

int16x8_t *from_444_to_v216_12bits<8,8,(AlphaOutputMethod)0,false>(int16x8_t *result, int16x8_t *a2, int a3, int a4)
{
  if (atomic_load_explicit(&qword_280A71940, memory_order_acquire))
  {
    if (atomic_load_explicit(&qword_280A71948, memory_order_acquire))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v66 = a2;
    v58 = result;
    v62 = a3;
    v54 = a4;
    from_444_to_v216_12bits<8,8,(AlphaOutputMethod)0,false>();
    a4 = v54;
    result = v58;
    a3 = v62;
    a2 = v66;
    if (atomic_load_explicit(&qword_280A71948, memory_order_acquire))
    {
LABEL_3:
      if (atomic_load_explicit(&qword_280A71950, memory_order_acquire))
      {
        goto LABEL_4;
      }

LABEL_19:
      v68 = a2;
      v60 = result;
      v64 = a3;
      v56 = a4;
      from_444_to_v216_12bits<8,8,(AlphaOutputMethod)0,false>();
      a4 = v56;
      result = v60;
      a3 = v64;
      a2 = v68;
      if (atomic_load_explicit(&qword_280A71958, memory_order_acquire))
      {
        goto LABEL_5;
      }

      goto LABEL_20;
    }
  }

  v67 = a2;
  v59 = result;
  v63 = a3;
  v55 = a4;
  from_444_to_v216_12bits<8,8,(AlphaOutputMethod)0,false>();
  a4 = v55;
  result = v59;
  a3 = v63;
  a2 = v67;
  if ((atomic_load_explicit(&qword_280A71950, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_4:
  if (atomic_load_explicit(&qword_280A71958, memory_order_acquire))
  {
    goto LABEL_5;
  }

LABEL_20:
  v69 = a2;
  v61 = result;
  v65 = a3;
  v57 = a4;
  from_444_to_v216_12bits<8,8,(AlphaOutputMethod)0,false>();
  a4 = v57;
  result = v61;
  a3 = v65;
  a2 = v69;
LABEL_5:
  v4 = xmmword_280A71F00;
  v5 = *algn_280A71F10;
  if (a4 <= 8)
  {
    v6 = 0;
  }

  else
  {
    v6 = a4 - 8;
  }

  v7 = a4 - v6;
  if (!v6)
  {
    v30 = a2 + 8;
    v31 = a2 + 32;
    v32 = a2 + 40;
    v34 = a2 + 64;
    v33 = a2 + 72;
    if (v7 < 1)
    {
      return result;
    }

    goto LABEL_14;
  }

  v8 = a4 - 7;
  v9.i64[0] = 0x8000800080008000;
  v9.i64[1] = 0x8000800080008000;
  do
  {
    v10 = (result + 8 * a3);
    v11 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(*a2, v4), v5), 4uLL), v9);
    v12 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[8], v4), v5), 4uLL), v9);
    v13 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(vuzp1q_s32(vzip1q_s16(a2[32], a2[40]), vzip2q_s16(a2[32], a2[40])), v4), v5), 4uLL), v9);
    v14 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(vuzp1q_s32(vzip1q_s16(a2[64], a2[72]), vzip2q_s16(a2[64], a2[72])), v4), v5), 4uLL), v9);
    *result = vzip1q_s16(v13, v11);
    result[1] = vzip2q_s16(v13, v11);
    result[2] = vzip1q_s16(v14, v12);
    result[3] = vzip2q_s16(v14, v12);
    v15 = a2[48];
    v16 = a2[56];
    v17 = vzip1q_s16(v15, v16);
    v18 = vzip2q_s16(v15, v16);
    v19 = a2[80];
    v20 = a2[88];
    v21 = a2[16];
    v22 = a2[24];
    ++a2;
    result = (result + a3);
    --v7;
    v23 = vuzp1q_s32(vzip1q_s16(v19, v20), vzip2q_s16(v19, v20));
    v24 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v21, v4), v5), 4uLL), v9);
    v25 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v22, v4), v5), 4uLL), v9);
    v26 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(vuzp1q_s32(v17, v18), v4), v5), 4uLL), v9);
    v27 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v23, v4), v5), 4uLL), v9);
    v28 = v10;
    vst2_s16(v28, *(&v24 - 8));
    v28 += 8;
    *v28 = vzip2q_s16(v26, v24);
    i16 = v10[2].i16;
    vst2_s16(i16, *(&v25 - 8));
    v10[3] = vzip2q_s16(v27, v25);
    --v8;
  }

  while (v8 > 1);
  v30 = a2 + 8;
  v31 = a2 + 32;
  v32 = a2 + 40;
  v33 = a2 + 72;
  v34 = a2 + 64;
  if (v7 >= 1)
  {
LABEL_14:
    v35 = result + 2;
    v36 = v7 + 1;
    v37.i64[0] = 0x8000800080008000;
    v37.i64[1] = 0x8000800080008000;
    v38 = result[2].i16;
    do
    {
      v39 = *v31++;
      v40 = v39;
      v41 = v35[-2].i16;
      v42 = *v32++;
      v43 = vuzp1q_s32(vzip1q_s16(v40, v42), vzip2q_s16(v40, v42));
      v44 = *v34++;
      v45 = v44;
      v46 = *v33++;
      v47 = vuzp1q_s32(vzip1q_s16(v45, v46), vzip2q_s16(v45, v46));
      v48 = *a2++;
      v49 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v48, v4), v5), 4uLL), v37);
      v50 = *v30++;
      v51 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v50, v4), v5), 4uLL), v37);
      v52 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v43, v4), v5), 4uLL), v37);
      vst2_s16(v41, *(&v49 - 8));
      v53 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v47, v4), v5), 4uLL), v37);
      v35[-1] = vzip2q_s16(v52, v49);
      vst2_s16(v38, *(&v51 - 8));
      v38 = (v38 + a3);
      v35[1] = vzip2q_s16(v53, v51);
      --v36;
      v35 = v38;
    }

    while (v36 > 1);
  }

  return result;
}

int16x8_t *from_444_to_v216_12bits<8,8,(AlphaOutputMethod)0,true>(int16x8_t *result, int16x8_t *a2, int a3, int a4)
{
  if (atomic_load_explicit(&qword_280A71960, memory_order_acquire))
  {
    if (atomic_load_explicit(&qword_280A71968, memory_order_acquire))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v66 = a2;
    v58 = result;
    v62 = a3;
    v54 = a4;
    from_444_to_v216_12bits<8,8,(AlphaOutputMethod)0,true>();
    a4 = v54;
    result = v58;
    a3 = v62;
    a2 = v66;
    if (atomic_load_explicit(&qword_280A71968, memory_order_acquire))
    {
LABEL_3:
      if (atomic_load_explicit(&qword_280A71970, memory_order_acquire))
      {
        goto LABEL_4;
      }

LABEL_19:
      v68 = a2;
      v60 = result;
      v64 = a3;
      v56 = a4;
      from_444_to_v216_12bits<8,8,(AlphaOutputMethod)0,true>();
      a4 = v56;
      result = v60;
      a3 = v64;
      a2 = v68;
      if (atomic_load_explicit(&qword_280A71978, memory_order_acquire))
      {
        goto LABEL_5;
      }

      goto LABEL_20;
    }
  }

  v67 = a2;
  v59 = result;
  v63 = a3;
  v55 = a4;
  from_444_to_v216_12bits<8,8,(AlphaOutputMethod)0,true>();
  a4 = v55;
  result = v59;
  a3 = v63;
  a2 = v67;
  if ((atomic_load_explicit(&qword_280A71970, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_4:
  if (atomic_load_explicit(&qword_280A71978, memory_order_acquire))
  {
    goto LABEL_5;
  }

LABEL_20:
  v69 = a2;
  v61 = result;
  v65 = a3;
  v57 = a4;
  from_444_to_v216_12bits<8,8,(AlphaOutputMethod)0,true>();
  a4 = v57;
  result = v61;
  a3 = v65;
  a2 = v69;
LABEL_5:
  v4 = xmmword_280A71F40;
  v5 = *algn_280A71F50;
  if (a4 <= 8)
  {
    v6 = 0;
  }

  else
  {
    v6 = a4 - 8;
  }

  v7 = a4 - v6;
  if (!v6)
  {
    v30 = a2 + 8;
    v31 = a2 + 32;
    v32 = a2 + 40;
    v34 = a2 + 64;
    v33 = a2 + 72;
    if (v7 < 1)
    {
      return result;
    }

    goto LABEL_14;
  }

  v8 = a4 - 7;
  v9.i64[0] = 0x8000800080008000;
  v9.i64[1] = 0x8000800080008000;
  do
  {
    v10 = (result + 8 * a3);
    v11 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(*a2, v4), v5), 4uLL), v9);
    v12 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[8], v4), v5), 4uLL), v9);
    v13 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(vuzp1q_s32(vzip1q_s16(a2[32], a2[40]), vzip2q_s16(a2[32], a2[40])), v4), v5), 4uLL), v9);
    v14 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(vuzp1q_s32(vzip1q_s16(a2[64], a2[72]), vzip2q_s16(a2[64], a2[72])), v4), v5), 4uLL), v9);
    *result = vzip1q_s16(v13, v11);
    result[1] = vzip2q_s16(v13, v11);
    result[2] = vzip1q_s16(v14, v12);
    result[3] = vzip2q_s16(v14, v12);
    v15 = a2[48];
    v16 = a2[56];
    v17 = vzip1q_s16(v15, v16);
    v18 = vzip2q_s16(v15, v16);
    v19 = a2[80];
    v20 = a2[88];
    v21 = a2[16];
    v22 = a2[24];
    ++a2;
    result = (result + a3);
    --v7;
    v23 = vuzp1q_s32(vzip1q_s16(v19, v20), vzip2q_s16(v19, v20));
    v24 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v21, v4), v5), 4uLL), v9);
    v25 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v22, v4), v5), 4uLL), v9);
    v26 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(vuzp1q_s32(v17, v18), v4), v5), 4uLL), v9);
    v27 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v23, v4), v5), 4uLL), v9);
    v28 = v10;
    vst2_s16(v28, *(&v24 - 8));
    v28 += 8;
    *v28 = vzip2q_s16(v26, v24);
    i16 = v10[2].i16;
    vst2_s16(i16, *(&v25 - 8));
    v10[3] = vzip2q_s16(v27, v25);
    --v8;
  }

  while (v8 > 1);
  v30 = a2 + 8;
  v31 = a2 + 32;
  v32 = a2 + 40;
  v33 = a2 + 72;
  v34 = a2 + 64;
  if (v7 >= 1)
  {
LABEL_14:
    v35 = result + 2;
    v36 = v7 + 1;
    v37.i64[0] = 0x8000800080008000;
    v37.i64[1] = 0x8000800080008000;
    v38 = result[2].i16;
    do
    {
      v39 = *v31++;
      v40 = v39;
      v41 = v35[-2].i16;
      v42 = *v32++;
      v43 = vuzp1q_s32(vzip1q_s16(v40, v42), vzip2q_s16(v40, v42));
      v44 = *v34++;
      v45 = v44;
      v46 = *v33++;
      v47 = vuzp1q_s32(vzip1q_s16(v45, v46), vzip2q_s16(v45, v46));
      v48 = *a2++;
      v49 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v48, v4), v5), 4uLL), v37);
      v50 = *v30++;
      v51 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v50, v4), v5), 4uLL), v37);
      v52 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v43, v4), v5), 4uLL), v37);
      vst2_s16(v41, *(&v49 - 8));
      v53 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v47, v4), v5), 4uLL), v37);
      v35[-1] = vzip2q_s16(v52, v49);
      vst2_s16(v38, *(&v51 - 8));
      v38 = (v38 + a3);
      v35[1] = vzip2q_s16(v53, v51);
      --v36;
      v35 = v38;
    }

    while (v36 > 1);
  }

  return result;
}

uint64_t from_444_to_v216<4,8,(AlphaOutputMethod)0,false,(PixelOutputStoreType)0>(uint64_t result, uint64_t a2, int a3, int a4, double a5, double a6, double a7, double a8, int32x2_t a9)
{
  v9 = 0;
  v10 = a4 & ~(a4 >> 31);
  while (1)
  {
    v11 = (a2 + v9);
    if (!v10)
    {
      break;
    }

    v12.i16[0] = v11[128];
    v12.i16[1] = *v11;
    v12.i16[2] = v11[160];
    v12.i16[3] = v11[1];
    *result = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v12, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v12.i16[0] = v11[130];
    v12.i16[1] = v11[2];
    v12.i16[2] = v11[162];
    v12.i16[3] = v11[3];
    *(result + 8) = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v12, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v12.i16[0] = v11[256];
    v12.i16[1] = v11[32];
    v12.i16[2] = v11[288];
    v12.i16[3] = v11[33];
    *(result + 16) = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v12, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v12.i16[0] = v11[258];
    v12.i16[1] = v11[34];
    v12.i16[2] = v11[290];
    v12.i16[3] = v11[35];
    a8 = COERCE_DOUBLE(veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v12, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000));
    *(result + 24) = a8;
    result += a3;
    v9 += 8;
    --v10;
    if (v9 == 64)
    {
      v13 = (a2 + v9);
      v14 = v13 + 160;
      v15 = v13 + 288;
      v16 = v13 + 32;
      goto LABEL_6;
    }
  }

  v14 = v11 + 160;
  v15 = v11 + 288;
  v16 = v11 + 32;
LABEL_6:
  v17 = 0;
  if (a4 <= 8)
  {
    v18 = 8;
  }

  else
  {
    v18 = a4;
  }

  v19 = v18 - 8;
  v20 = v14 + 34;
  v21 = v15 + 34;
  v22 = result + 16;
  do
  {
    if (!v19)
    {
      break;
    }

    LOWORD(a8) = *(v20 - 34);
    WORD1(a8) = *(v20 - 2);
    a9.i32[0] = *&v16[v17];
    v23 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(*&a8, a9), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v24 = vrev32_s16(v23);
    v25 = vuzp1_s16(v23, v24);
    *(v22 - 16) = v25;
    v25.i16[0] = *(v20 - 32);
    v25.i16[1] = *v20;
    v24.i32[0] = *&v16[v17 + 2];
    v26 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v25, v24), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v27 = vrev32_s16(v26);
    v28 = vuzp1_s16(v26, v27);
    *(v22 - 8) = v28;
    v28.i16[0] = *(v21 - 34);
    v28.i16[1] = *(v21 - 2);
    v27.i32[0] = *&v16[v17 + 32];
    v29 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v28, v27), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v30 = vrev32_s16(v29);
    v31 = vuzp1_s16(v29, v30);
    *v22 = v31;
    v31.i16[0] = *(v21 - 32);
    v31.i16[1] = *v21;
    v30.i32[0] = *&v16[v17 + 34];
    v32 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v31, v30), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    a9 = vrev32_s16(v32);
    a8 = COERCE_DOUBLE(vuzp1_s16(v32, a9));
    *(v22 + 8) = a8;
    v20 += 4;
    v21 += 4;
    v22 += a3;
    v17 += 4;
    --v19;
  }

  while ((v17 * 2) != 64);
  return result;
}

uint64_t from_444_to_v216<4,8,(AlphaOutputMethod)0,true,(PixelOutputStoreType)0>(uint64_t result, uint64_t a2, int a3, int a4, double a5, double a6, double a7, double a8, int32x2_t a9)
{
  v9 = 0;
  v10 = a4 & ~(a4 >> 31);
  while (1)
  {
    v11 = (a2 + v9);
    if (!v10)
    {
      break;
    }

    v12.i16[0] = v11[128];
    v12.i16[1] = *v11;
    v12.i16[2] = v11[160];
    v12.i16[3] = v11[1];
    *result = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v12, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v12.i16[0] = v11[130];
    v12.i16[1] = v11[2];
    v12.i16[2] = v11[162];
    v12.i16[3] = v11[3];
    *(result + 8) = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v12, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v12.i16[0] = v11[256];
    v12.i16[1] = v11[32];
    v12.i16[2] = v11[288];
    v12.i16[3] = v11[33];
    *(result + 16) = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v12, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v12.i16[0] = v11[258];
    v12.i16[1] = v11[34];
    v12.i16[2] = v11[290];
    v12.i16[3] = v11[35];
    a8 = COERCE_DOUBLE(veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v12, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000));
    *(result + 24) = a8;
    result += a3;
    v9 += 8;
    --v10;
    if (v9 == 64)
    {
      v13 = (a2 + v9);
      v14 = v13 + 160;
      v15 = v13 + 288;
      v16 = v13 + 32;
      goto LABEL_6;
    }
  }

  v14 = v11 + 160;
  v15 = v11 + 288;
  v16 = v11 + 32;
LABEL_6:
  v17 = 0;
  if (a4 <= 8)
  {
    v18 = 8;
  }

  else
  {
    v18 = a4;
  }

  v19 = v18 - 8;
  v20 = v14 + 34;
  v21 = v15 + 34;
  v22 = result + 16;
  do
  {
    if (!v19)
    {
      break;
    }

    LOWORD(a8) = *(v20 - 34);
    WORD1(a8) = *(v20 - 2);
    a9.i32[0] = *&v16[v17];
    v23 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(*&a8, a9), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v24 = vrev32_s16(v23);
    v25 = vuzp1_s16(v23, v24);
    *(v22 - 16) = v25;
    v25.i16[0] = *(v20 - 32);
    v25.i16[1] = *v20;
    v24.i32[0] = *&v16[v17 + 2];
    v26 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v25, v24), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v27 = vrev32_s16(v26);
    v28 = vuzp1_s16(v26, v27);
    *(v22 - 8) = v28;
    v28.i16[0] = *(v21 - 34);
    v28.i16[1] = *(v21 - 2);
    v27.i32[0] = *&v16[v17 + 32];
    v29 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v28, v27), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v30 = vrev32_s16(v29);
    v31 = vuzp1_s16(v29, v30);
    *v22 = v31;
    v31.i16[0] = *(v21 - 32);
    v31.i16[1] = *v21;
    v30.i32[0] = *&v16[v17 + 34];
    v32 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v31, v30), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    a9 = vrev32_s16(v32);
    a8 = COERCE_DOUBLE(vuzp1_s16(v32, a9));
    *(v22 + 8) = a8;
    v20 += 4;
    v21 += 4;
    v22 += a3;
    v17 += 4;
    --v19;
  }

  while ((v17 * 2) != 64);
  return result;
}

int32x2_t from_444_to_v216<4,4,(AlphaOutputMethod)0,false,(PixelOutputStoreType)0>(int8x8_t *a1, uint64_t a2, int a3, int a4)
{
  v4 = 0;
  v5 = a4 & ~(a4 >> 31);
  result = 0xF000F000F000F000;
  v7.i32[1] = -268374016;
  while (1)
  {
    v8 = (a2 + v4);
    if (!v5)
    {
      break;
    }

    v9.i16[0] = v8[64];
    v9.i16[1] = *v8;
    v9.i16[2] = v8[80];
    v9.i16[3] = v8[1];
    *a1 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v9, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v9.i16[0] = v8[66];
    v9.i16[1] = v8[2];
    v9.i16[2] = v8[82];
    v9.i16[3] = v8[3];
    a1[1] = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v9, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v9.i16[0] = v8[128];
    v9.i16[1] = v8[16];
    v9.i16[2] = v8[144];
    v9.i16[3] = v8[17];
    a1[2] = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v9, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v9.i16[0] = v8[130];
    v9.i16[1] = v8[18];
    v9.i16[2] = v8[146];
    v9.i16[3] = v8[19];
    a1[3] = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v9, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    a1 = (a1 + a3);
    v4 += 8;
    --v5;
    if (v4 == 32)
    {
      v10 = a2 + v4;
      v11 = (v10 + 160);
      v12 = (v10 + 288);
      v13 = (v10 + 32);
      if (a4 <= 4)
      {
        v14 = 4;
      }

      else
      {
        v14 = a4;
      }

      v15 = v14 - 4;
      if (!v15)
      {
        return result;
      }

LABEL_13:
      result.i16[0] = *v11;
      result.i16[1] = v11[16];
      v7.i32[0] = *v13;
      v17 = vzip1_s32(result, v7);
      result = 0xF000F000F000F000;
      v18 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v17, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      v19 = vrev32_s16(v18);
      v20 = vuzp1_s16(v18, v19);
      *a1 = v20;
      v20.i16[0] = v11[2];
      v20.i16[1] = v11[18];
      v19.i32[0] = v13[1];
      v21 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v20, v19), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      v22 = vrev32_s16(v21);
      v23 = vuzp1_s16(v21, v22);
      a1[1] = v23;
      v23.i16[0] = *v12;
      v23.i16[1] = v12[16];
      v22.i32[0] = v13[8];
      v24 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v23, v22), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      v25 = vrev32_s16(v24);
      v26 = vuzp1_s16(v24, v25);
      a1[2] = v26;
      v26.i16[0] = v12[2];
      v26.i16[1] = v12[18];
      v25.i32[0] = v13[9];
      v27 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v26, v25), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      v28 = vrev32_s16(v27);
      v29 = vuzp1_s16(v27, v28);
      a1[3] = v29;
      if (v15 != 1)
      {
        v30 = (a1 + a3);
        v29.i16[0] = v11[4];
        v29.i16[1] = v11[20];
        v28.i32[0] = v13[2];
        v31 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v29, v28), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
        v32 = vrev32_s16(v31);
        v33 = vuzp1_s16(v31, v32);
        *v30 = v33;
        v33.i16[0] = v11[6];
        v33.i16[1] = v11[22];
        v32.i32[0] = v13[3];
        v34 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v33, v32), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
        v35 = vrev32_s16(v34);
        v36 = vuzp1_s16(v34, v35);
        v30[1] = v36;
        v36.i16[0] = v12[4];
        v36.i16[1] = v12[20];
        v35.i32[0] = v13[10];
        v37 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v36, v35), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
        v38 = vrev32_s16(v37);
        v39 = vuzp1_s16(v37, v38);
        v30[2] = v39;
        v39.i16[0] = v12[6];
        v39.i16[1] = v12[22];
        v38.i32[0] = v13[11];
        v40 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v39, v38), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
        v41 = vrev32_s16(v40);
        result = vuzp1_s16(v40, v41);
        v30[3] = result;
        if (v15 != 2)
        {
          v42 = (v30 + a3);
          result.i16[0] = v11[8];
          result.i16[1] = v11[24];
          v41.i32[0] = v13[4];
          v43 = vzip1_s32(result, v41);
          result = 0xF000F000F000F000;
          v44 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v43, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
          v45 = vrev32_s16(v44);
          v46 = vuzp1_s16(v44, v45);
          *v42 = v46;
          v46.i16[0] = v11[10];
          v46.i16[1] = v11[26];
          v45.i32[0] = v13[5];
          v47 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v46, v45), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
          v48 = vrev32_s16(v47);
          v49 = vuzp1_s16(v47, v48);
          v42[1] = v49;
          v49.i16[0] = v12[8];
          v49.i16[1] = v12[24];
          v48.i32[0] = v13[12];
          v50 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v49, v48), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
          v51 = vrev32_s16(v50);
          v52 = vuzp1_s16(v50, v51);
          v42[2] = v52;
          v52.i16[0] = v12[10];
          v52.i16[1] = v12[26];
          v51.i32[0] = v13[13];
          v53 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v52, v51), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
          v54 = vrev32_s16(v53);
          v55 = vuzp1_s16(v53, v54);
          v42[3] = v55;
          if (v15 != 3)
          {
            v55.i16[0] = v11[12];
            v55.i16[1] = v11[28];
            v56 = (v42 + a3);
            v54.i32[0] = v13[6];
            v57 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v55, v54), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
            v58 = vrev32_s16(v57);
            v59 = vuzp1_s16(v57, v58);
            *v56 = v59;
            v59.i16[0] = v11[14];
            v59.i16[1] = v11[30];
            v58.i32[0] = v13[7];
            v60 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v59, v58), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
            v61 = vrev32_s16(v60);
            v62 = vuzp1_s16(v60, v61);
            v56[1] = v62;
            v62.i16[0] = v12[12];
            v62.i16[1] = v12[28];
            v61.i32[0] = v13[14];
            v63 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v62, v61), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
            v64 = vrev32_s16(v63);
            v65 = vuzp1_s16(v63, v64);
            v56[2] = v65;
            v65.i16[0] = v12[14];
            v65.i16[1] = v12[30];
            v64.i32[0] = v13[15];
            v66 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v65, v64), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
            result = vuzp1_s16(v66, vrev32_s16(v66));
            v56[3] = result;
          }
        }
      }

      return result;
    }
  }

  v11 = v8 + 80;
  v12 = v8 + 144;
  v13 = (v8 + 16);
  if (a4 <= 4)
  {
    v16 = 4;
  }

  else
  {
    v16 = a4;
  }

  v15 = v16 - 4;
  if (v15)
  {
    goto LABEL_13;
  }

  return result;
}

int32x2_t from_444_to_v216<4,4,(AlphaOutputMethod)0,true,(PixelOutputStoreType)0>(int8x8_t *a1, uint64_t a2, int a3, int a4)
{
  v4 = 0;
  v5 = a4 & ~(a4 >> 31);
  result = 0xF000F000F000F000;
  v7.i32[1] = -268374016;
  while (1)
  {
    v8 = (a2 + v4);
    if (!v5)
    {
      break;
    }

    v9.i16[0] = v8[64];
    v9.i16[1] = *v8;
    v9.i16[2] = v8[80];
    v9.i16[3] = v8[1];
    *a1 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v9, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v9.i16[0] = v8[66];
    v9.i16[1] = v8[2];
    v9.i16[2] = v8[82];
    v9.i16[3] = v8[3];
    a1[1] = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v9, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v9.i16[0] = v8[128];
    v9.i16[1] = v8[16];
    v9.i16[2] = v8[144];
    v9.i16[3] = v8[17];
    a1[2] = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v9, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v9.i16[0] = v8[130];
    v9.i16[1] = v8[18];
    v9.i16[2] = v8[146];
    v9.i16[3] = v8[19];
    a1[3] = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v9, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    a1 = (a1 + a3);
    v4 += 8;
    --v5;
    if (v4 == 32)
    {
      v10 = a2 + v4;
      v11 = (v10 + 160);
      v12 = (v10 + 288);
      v13 = (v10 + 32);
      if (a4 <= 4)
      {
        v14 = 4;
      }

      else
      {
        v14 = a4;
      }

      v15 = v14 - 4;
      if (!v15)
      {
        return result;
      }

LABEL_13:
      result.i16[0] = *v11;
      result.i16[1] = v11[16];
      v7.i32[0] = *v13;
      v17 = vzip1_s32(result, v7);
      result = 0xF000F000F000F000;
      v18 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v17, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      v19 = vrev32_s16(v18);
      v20 = vuzp1_s16(v18, v19);
      *a1 = v20;
      v20.i16[0] = v11[2];
      v20.i16[1] = v11[18];
      v19.i32[0] = v13[1];
      v21 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v20, v19), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      v22 = vrev32_s16(v21);
      v23 = vuzp1_s16(v21, v22);
      a1[1] = v23;
      v23.i16[0] = *v12;
      v23.i16[1] = v12[16];
      v22.i32[0] = v13[8];
      v24 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v23, v22), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      v25 = vrev32_s16(v24);
      v26 = vuzp1_s16(v24, v25);
      a1[2] = v26;
      v26.i16[0] = v12[2];
      v26.i16[1] = v12[18];
      v25.i32[0] = v13[9];
      v27 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v26, v25), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      v28 = vrev32_s16(v27);
      v29 = vuzp1_s16(v27, v28);
      a1[3] = v29;
      if (v15 != 1)
      {
        v30 = (a1 + a3);
        v29.i16[0] = v11[4];
        v29.i16[1] = v11[20];
        v28.i32[0] = v13[2];
        v31 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v29, v28), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
        v32 = vrev32_s16(v31);
        v33 = vuzp1_s16(v31, v32);
        *v30 = v33;
        v33.i16[0] = v11[6];
        v33.i16[1] = v11[22];
        v32.i32[0] = v13[3];
        v34 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v33, v32), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
        v35 = vrev32_s16(v34);
        v36 = vuzp1_s16(v34, v35);
        v30[1] = v36;
        v36.i16[0] = v12[4];
        v36.i16[1] = v12[20];
        v35.i32[0] = v13[10];
        v37 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v36, v35), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
        v38 = vrev32_s16(v37);
        v39 = vuzp1_s16(v37, v38);
        v30[2] = v39;
        v39.i16[0] = v12[6];
        v39.i16[1] = v12[22];
        v38.i32[0] = v13[11];
        v40 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v39, v38), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
        v41 = vrev32_s16(v40);
        result = vuzp1_s16(v40, v41);
        v30[3] = result;
        if (v15 != 2)
        {
          v42 = (v30 + a3);
          result.i16[0] = v11[8];
          result.i16[1] = v11[24];
          v41.i32[0] = v13[4];
          v43 = vzip1_s32(result, v41);
          result = 0xF000F000F000F000;
          v44 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v43, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
          v45 = vrev32_s16(v44);
          v46 = vuzp1_s16(v44, v45);
          *v42 = v46;
          v46.i16[0] = v11[10];
          v46.i16[1] = v11[26];
          v45.i32[0] = v13[5];
          v47 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v46, v45), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
          v48 = vrev32_s16(v47);
          v49 = vuzp1_s16(v47, v48);
          v42[1] = v49;
          v49.i16[0] = v12[8];
          v49.i16[1] = v12[24];
          v48.i32[0] = v13[12];
          v50 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v49, v48), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
          v51 = vrev32_s16(v50);
          v52 = vuzp1_s16(v50, v51);
          v42[2] = v52;
          v52.i16[0] = v12[10];
          v52.i16[1] = v12[26];
          v51.i32[0] = v13[13];
          v53 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v52, v51), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
          v54 = vrev32_s16(v53);
          v55 = vuzp1_s16(v53, v54);
          v42[3] = v55;
          if (v15 != 3)
          {
            v55.i16[0] = v11[12];
            v55.i16[1] = v11[28];
            v56 = (v42 + a3);
            v54.i32[0] = v13[6];
            v57 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v55, v54), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
            v58 = vrev32_s16(v57);
            v59 = vuzp1_s16(v57, v58);
            *v56 = v59;
            v59.i16[0] = v11[14];
            v59.i16[1] = v11[30];
            v58.i32[0] = v13[7];
            v60 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v59, v58), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
            v61 = vrev32_s16(v60);
            v62 = vuzp1_s16(v60, v61);
            v56[1] = v62;
            v62.i16[0] = v12[12];
            v62.i16[1] = v12[28];
            v61.i32[0] = v13[14];
            v63 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v62, v61), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
            v64 = vrev32_s16(v63);
            v65 = vuzp1_s16(v63, v64);
            v56[2] = v65;
            v65.i16[0] = v12[14];
            v65.i16[1] = v12[30];
            v64.i32[0] = v13[15];
            v66 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v65, v64), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
            result = vuzp1_s16(v66, vrev32_s16(v66));
            v56[3] = result;
          }
        }
      }

      return result;
    }
  }

  v11 = v8 + 80;
  v12 = v8 + 144;
  v13 = (v8 + 16);
  if (a4 <= 4)
  {
    v16 = 4;
  }

  else
  {
    v16 = a4;
  }

  v15 = v16 - 4;
  if (v15)
  {
    goto LABEL_13;
  }

  return result;
}

int32x2_t from_444_to_v216<4,2,(AlphaOutputMethod)0,false,(PixelOutputStoreType)0>(int8x8_t *a1, __int16 *a2, int a3, int a4, int32x2_t result, int32x2_t a6)
{
  v6 = a2 + 40;
  v7 = a2 + 72;
  v8 = a2 + 8;
  if (a4 > 0)
  {
    v9.i16[0] = a2[32];
    v9.i16[1] = *a2;
    v9.i16[2] = *v6;
    v9.i16[3] = a2[1];
    result = 0xF000F000F000F000;
    v10 = vmin_s16(v9, 0xF000F000F000F000);
    *&a6 = -3.28697467e231;
    *a1 = veor_s8(vshl_n_s16(vmax_s16(v10, 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v11.i16[0] = a2[34];
    v11.i16[1] = a2[2];
    v11.i16[2] = a2[42];
    v11.i16[3] = a2[3];
    a1[1] = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v11, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v11.i16[0] = a2[64];
    v11.i16[1] = *v8;
    v11.i16[2] = *v7;
    v11.i16[3] = a2[9];
    a1[2] = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v11, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v11.i16[0] = a2[66];
    v11.i16[1] = a2[10];
    v11.i16[2] = a2[74];
    v11.i16[3] = a2[11];
    a1[3] = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v11, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    a1 = (a1 + a3);
    v8 = a2 + 12;
    v6 = a2 + 44;
    v7 = a2 + 76;
    if (a4 != 1)
    {
      v12.i16[0] = a2[36];
      v12.i16[1] = a2[4];
      v12.i16[2] = *v6;
      v12.i16[3] = a2[5];
      *a1 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v12, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      v12.i16[0] = a2[38];
      v12.i16[1] = a2[6];
      v12.i16[2] = a2[46];
      v12.i16[3] = a2[7];
      a1[1] = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v12, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      v12.i16[0] = a2[68];
      v12.i16[1] = *v8;
      v12.i16[2] = *v7;
      v12.i16[3] = a2[13];
      a1[2] = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v12, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      v12.i16[0] = a2[70];
      v12.i16[1] = a2[14];
      v12.i16[2] = a2[78];
      v12.i16[3] = a2[15];
      result = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v12, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      a1[3] = result;
      a1 = (a1 + a3);
      v8 = a2 + 16;
      v6 = a2 + 48;
      v7 = a2 + 80;
    }
  }

  if (a4 <= 2)
  {
    v13 = 2;
  }

  else
  {
    v13 = a4;
  }

  v14 = v13 - 2;
  if (v14)
  {
    result.i16[0] = *v6;
    result.i16[1] = v6[8];
    a6.i32[0] = *v8;
    v15 = vzip1_s32(result, a6);
    result = 0xF000F000F000F000;
    v16 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v15, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v17 = vrev32_s16(v16);
    v18 = vuzp1_s16(v16, v17);
    *a1 = v18;
    v18.i16[0] = v6[2];
    v18.i16[1] = v6[10];
    v17.i32[0] = *(v8 + 1);
    v19 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v18, v17), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v20 = vrev32_s16(v19);
    v21 = vuzp1_s16(v19, v20);
    a1[1] = v21;
    v21.i16[0] = *v7;
    v21.i16[1] = v7[8];
    v20.i32[0] = *(v8 + 4);
    v22 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v21, v20), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v23 = vrev32_s16(v22);
    v24 = vuzp1_s16(v22, v23);
    a1[2] = v24;
    v24.i16[0] = v7[2];
    v24.i16[1] = v7[10];
    v23.i32[0] = *(v8 + 5);
    v25 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v24, v23), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v26 = vrev32_s16(v25);
    v27 = vuzp1_s16(v25, v26);
    a1[3] = v27;
    if (v14 != 1)
    {
      v27.i16[0] = v6[4];
      v27.i16[1] = v6[12];
      v28 = (a1 + a3);
      v26.i32[0] = *(v8 + 2);
      v29 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v27, v26), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      v30 = vrev32_s16(v29);
      v31 = vuzp1_s16(v29, v30);
      *v28 = v31;
      v31.i16[0] = v6[6];
      v31.i16[1] = v6[14];
      v30.i32[0] = *(v8 + 3);
      v32 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v31, v30), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      v33 = vrev32_s16(v32);
      v34 = vuzp1_s16(v32, v33);
      v28[1] = v34;
      v34.i16[0] = v7[4];
      v34.i16[1] = v7[12];
      v33.i32[0] = *(v8 + 6);
      v35 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v34, v33), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      v36 = vrev32_s16(v35);
      v37 = vuzp1_s16(v35, v36);
      v28[2] = v37;
      v37.i16[0] = v7[6];
      v37.i16[1] = v7[14];
      v36.i32[0] = *(v8 + 7);
      v38 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v37, v36), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      result = vuzp1_s16(v38, vrev32_s16(v38));
      v28[3] = result;
    }
  }

  return result;
}

int32x2_t from_444_to_v216<4,2,(AlphaOutputMethod)0,true,(PixelOutputStoreType)0>(int8x8_t *a1, __int16 *a2, int a3, int a4, int32x2_t result, int32x2_t a6)
{
  v6 = a2 + 40;
  v7 = a2 + 72;
  v8 = a2 + 8;
  if (a4 > 0)
  {
    v9.i16[0] = a2[32];
    v9.i16[1] = *a2;
    v9.i16[2] = *v6;
    v9.i16[3] = a2[1];
    result = 0xF000F000F000F000;
    v10 = vmin_s16(v9, 0xF000F000F000F000);
    *&a6 = -3.28697467e231;
    *a1 = veor_s8(vshl_n_s16(vmax_s16(v10, 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v11.i16[0] = a2[34];
    v11.i16[1] = a2[2];
    v11.i16[2] = a2[42];
    v11.i16[3] = a2[3];
    a1[1] = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v11, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v11.i16[0] = a2[64];
    v11.i16[1] = *v8;
    v11.i16[2] = *v7;
    v11.i16[3] = a2[9];
    a1[2] = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v11, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v11.i16[0] = a2[66];
    v11.i16[1] = a2[10];
    v11.i16[2] = a2[74];
    v11.i16[3] = a2[11];
    a1[3] = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v11, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    a1 = (a1 + a3);
    v8 = a2 + 12;
    v6 = a2 + 44;
    v7 = a2 + 76;
    if (a4 != 1)
    {
      v12.i16[0] = a2[36];
      v12.i16[1] = a2[4];
      v12.i16[2] = *v6;
      v12.i16[3] = a2[5];
      *a1 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v12, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      v12.i16[0] = a2[38];
      v12.i16[1] = a2[6];
      v12.i16[2] = a2[46];
      v12.i16[3] = a2[7];
      a1[1] = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v12, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      v12.i16[0] = a2[68];
      v12.i16[1] = *v8;
      v12.i16[2] = *v7;
      v12.i16[3] = a2[13];
      a1[2] = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v12, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      v12.i16[0] = a2[70];
      v12.i16[1] = a2[14];
      v12.i16[2] = a2[78];
      v12.i16[3] = a2[15];
      result = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v12, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      a1[3] = result;
      a1 = (a1 + a3);
      v8 = a2 + 16;
      v6 = a2 + 48;
      v7 = a2 + 80;
    }
  }

  if (a4 <= 2)
  {
    v13 = 2;
  }

  else
  {
    v13 = a4;
  }

  v14 = v13 - 2;
  if (v14)
  {
    result.i16[0] = *v6;
    result.i16[1] = v6[8];
    a6.i32[0] = *v8;
    v15 = vzip1_s32(result, a6);
    result = 0xF000F000F000F000;
    v16 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v15, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v17 = vrev32_s16(v16);
    v18 = vuzp1_s16(v16, v17);
    *a1 = v18;
    v18.i16[0] = v6[2];
    v18.i16[1] = v6[10];
    v17.i32[0] = *(v8 + 1);
    v19 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v18, v17), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v20 = vrev32_s16(v19);
    v21 = vuzp1_s16(v19, v20);
    a1[1] = v21;
    v21.i16[0] = *v7;
    v21.i16[1] = v7[8];
    v20.i32[0] = *(v8 + 4);
    v22 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v21, v20), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v23 = vrev32_s16(v22);
    v24 = vuzp1_s16(v22, v23);
    a1[2] = v24;
    v24.i16[0] = v7[2];
    v24.i16[1] = v7[10];
    v23.i32[0] = *(v8 + 5);
    v25 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v24, v23), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v26 = vrev32_s16(v25);
    v27 = vuzp1_s16(v25, v26);
    a1[3] = v27;
    if (v14 != 1)
    {
      v27.i16[0] = v6[4];
      v27.i16[1] = v6[12];
      v28 = (a1 + a3);
      v26.i32[0] = *(v8 + 2);
      v29 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v27, v26), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      v30 = vrev32_s16(v29);
      v31 = vuzp1_s16(v29, v30);
      *v28 = v31;
      v31.i16[0] = v6[6];
      v31.i16[1] = v6[14];
      v30.i32[0] = *(v8 + 3);
      v32 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v31, v30), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      v33 = vrev32_s16(v32);
      v34 = vuzp1_s16(v32, v33);
      v28[1] = v34;
      v34.i16[0] = v7[4];
      v34.i16[1] = v7[12];
      v33.i32[0] = *(v8 + 6);
      v35 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v34, v33), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      v36 = vrev32_s16(v35);
      v37 = vuzp1_s16(v35, v36);
      v28[2] = v37;
      v37.i16[0] = v7[6];
      v37.i16[1] = v7[14];
      v36.i32[0] = *(v8 + 7);
      v38 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v37, v36), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      result = vuzp1_s16(v38, vrev32_s16(v38));
      v28[3] = result;
    }
  }

  return result;
}

int32x2_t from_444_to_v216<2,4,(AlphaOutputMethod)0,false,(PixelOutputStoreType)0>(int8x8_t *a1, __int16 *a2, int a3, int a4, int32x2_t result, int32x2_t a6)
{
  v6 = a2 + 40;
  v7 = a2 + 72;
  v8 = a2 + 8;
  if (a4 > 0)
  {
    v9.i16[0] = a2[32];
    v9.i16[1] = *a2;
    v9.i16[2] = *v6;
    v9.i16[3] = a2[1];
    result = 0xF000F000F000F000;
    v10 = vmin_s16(v9, 0xF000F000F000F000);
    *&a6 = -3.28697467e231;
    *a1 = veor_s8(vshl_n_s16(vmax_s16(v10, 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v11.i16[0] = a2[64];
    v11.i16[1] = *v8;
    v11.i16[2] = *v7;
    v11.i16[3] = a2[9];
    a1[1] = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v11, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    a1 = (a1 + a3);
    v8 = a2 + 10;
    v6 = a2 + 42;
    v7 = a2 + 74;
    if (a4 != 1)
    {
      v12.i16[0] = a2[34];
      v12.i16[1] = a2[2];
      v12.i16[2] = *v6;
      v12.i16[3] = a2[3];
      *a1 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v12, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      v12.i16[0] = a2[66];
      v12.i16[1] = *v8;
      v12.i16[2] = *v7;
      v12.i16[3] = a2[11];
      result = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v12, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      a1[1] = result;
      a1 = (a1 + a3);
      v8 = a2 + 12;
      v6 = a2 + 44;
      v7 = a2 + 76;
      if (a4 != 2)
      {
        v13.i16[0] = a2[36];
        v13.i16[1] = a2[4];
        v13.i16[2] = *v6;
        v13.i16[3] = a2[5];
        result = 0xF000F000F000F000;
        v14 = vmin_s16(v13, 0xF000F000F000F000);
        *&a6 = -3.28697467e231;
        *a1 = veor_s8(vshl_n_s16(vmax_s16(v14, 0xF000F000F000F000), 3uLL), 0x8000800080008000);
        v15.i16[0] = a2[68];
        v15.i16[1] = *v8;
        v15.i16[2] = *v7;
        v15.i16[3] = a2[13];
        a1[1] = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v15, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
        a1 = (a1 + a3);
        v8 = a2 + 14;
        v6 = a2 + 46;
        v7 = a2 + 78;
        if (a4 != 3)
        {
          v16.i16[0] = a2[38];
          v16.i16[1] = a2[6];
          v16.i16[2] = *v6;
          v16.i16[3] = a2[7];
          *a1 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v16, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
          v16.i16[0] = a2[70];
          v16.i16[1] = *v8;
          v16.i16[2] = *v7;
          v16.i16[3] = a2[15];
          result = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v16, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
          a1[1] = result;
          a1 = (a1 + a3);
          v8 = a2 + 16;
          v6 = a2 + 48;
          v7 = a2 + 80;
        }
      }
    }
  }

  if (a4 <= 4)
  {
    v17 = 4;
  }

  else
  {
    v17 = a4;
  }

  v18 = v17 - 4;
  if (v18)
  {
    result.i16[0] = *v6;
    result.i16[1] = v6[8];
    a6.i32[0] = *v8;
    v19 = vzip1_s32(result, a6);
    result = 0xF000F000F000F000;
    v20 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v19, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v21 = vrev32_s16(v20);
    v22 = vuzp1_s16(v20, v21);
    *a1 = v22;
    v22.i16[0] = *v7;
    v22.i16[1] = v7[8];
    v21.i32[0] = *(v8 + 4);
    v23 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v22, v21), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v24 = vrev32_s16(v23);
    v25 = vuzp1_s16(v23, v24);
    a1[1] = v25;
    if (v18 != 1)
    {
      v26 = (a1 + a3);
      v25.i16[0] = v6[2];
      v25.i16[1] = v6[10];
      v24.i32[0] = *(v8 + 1);
      v27 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v25, v24), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      v28 = vrev32_s16(v27);
      v29 = vuzp1_s16(v27, v28);
      *v26 = v29;
      v29.i16[0] = v7[2];
      v29.i16[1] = v7[10];
      v28.i32[0] = *(v8 + 5);
      v30 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v29, v28), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      v31 = vrev32_s16(v30);
      result = vuzp1_s16(v30, v31);
      v26[1] = result;
      if (v18 != 2)
      {
        v32 = (v26 + a3);
        result.i16[0] = v6[4];
        result.i16[1] = v6[12];
        v31.i32[0] = *(v8 + 2);
        v33 = vzip1_s32(result, v31);
        result = 0xF000F000F000F000;
        v34 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v33, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
        v35 = vrev32_s16(v34);
        v36 = vuzp1_s16(v34, v35);
        *v32 = v36;
        v36.i16[0] = v7[4];
        v36.i16[1] = v7[12];
        v35.i32[0] = *(v8 + 6);
        v37 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v36, v35), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
        v38 = vrev32_s16(v37);
        v39 = vuzp1_s16(v37, v38);
        v32[1] = v39;
        if (v18 != 3)
        {
          v40 = (v32 + a3);
          v39.i16[0] = v6[6];
          v39.i16[1] = v6[14];
          v38.i32[0] = *(v8 + 3);
          v41 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v39, v38), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
          v42 = vrev32_s16(v41);
          v43 = vuzp1_s16(v41, v42);
          *v40 = v43;
          v43.i16[0] = v7[6];
          v43.i16[1] = v7[14];
          v42.i32[0] = *(v8 + 7);
          v44 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v43, v42), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
          result = vuzp1_s16(v44, vrev32_s16(v44));
          v40[1] = result;
        }
      }
    }
  }

  return result;
}

int32x2_t from_444_to_v216<2,4,(AlphaOutputMethod)0,true,(PixelOutputStoreType)0>(int8x8_t *a1, __int16 *a2, int a3, int a4, int32x2_t result, int32x2_t a6)
{
  v6 = a2 + 40;
  v7 = a2 + 72;
  v8 = a2 + 8;
  if (a4 > 0)
  {
    v9.i16[0] = a2[32];
    v9.i16[1] = *a2;
    v9.i16[2] = *v6;
    v9.i16[3] = a2[1];
    result = 0xF000F000F000F000;
    v10 = vmin_s16(v9, 0xF000F000F000F000);
    *&a6 = -3.28697467e231;
    *a1 = veor_s8(vshl_n_s16(vmax_s16(v10, 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v11.i16[0] = a2[64];
    v11.i16[1] = *v8;
    v11.i16[2] = *v7;
    v11.i16[3] = a2[9];
    a1[1] = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v11, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    a1 = (a1 + a3);
    v8 = a2 + 10;
    v6 = a2 + 42;
    v7 = a2 + 74;
    if (a4 != 1)
    {
      v12.i16[0] = a2[34];
      v12.i16[1] = a2[2];
      v12.i16[2] = *v6;
      v12.i16[3] = a2[3];
      *a1 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v12, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      v12.i16[0] = a2[66];
      v12.i16[1] = *v8;
      v12.i16[2] = *v7;
      v12.i16[3] = a2[11];
      result = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v12, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      a1[1] = result;
      a1 = (a1 + a3);
      v8 = a2 + 12;
      v6 = a2 + 44;
      v7 = a2 + 76;
      if (a4 != 2)
      {
        v13.i16[0] = a2[36];
        v13.i16[1] = a2[4];
        v13.i16[2] = *v6;
        v13.i16[3] = a2[5];
        result = 0xF000F000F000F000;
        v14 = vmin_s16(v13, 0xF000F000F000F000);
        *&a6 = -3.28697467e231;
        *a1 = veor_s8(vshl_n_s16(vmax_s16(v14, 0xF000F000F000F000), 3uLL), 0x8000800080008000);
        v15.i16[0] = a2[68];
        v15.i16[1] = *v8;
        v15.i16[2] = *v7;
        v15.i16[3] = a2[13];
        a1[1] = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v15, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
        a1 = (a1 + a3);
        v8 = a2 + 14;
        v6 = a2 + 46;
        v7 = a2 + 78;
        if (a4 != 3)
        {
          v16.i16[0] = a2[38];
          v16.i16[1] = a2[6];
          v16.i16[2] = *v6;
          v16.i16[3] = a2[7];
          *a1 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v16, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
          v16.i16[0] = a2[70];
          v16.i16[1] = *v8;
          v16.i16[2] = *v7;
          v16.i16[3] = a2[15];
          result = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v16, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
          a1[1] = result;
          a1 = (a1 + a3);
          v8 = a2 + 16;
          v6 = a2 + 48;
          v7 = a2 + 80;
        }
      }
    }
  }

  if (a4 <= 4)
  {
    v17 = 4;
  }

  else
  {
    v17 = a4;
  }

  v18 = v17 - 4;
  if (v18)
  {
    result.i16[0] = *v6;
    result.i16[1] = v6[8];
    a6.i32[0] = *v8;
    v19 = vzip1_s32(result, a6);
    result = 0xF000F000F000F000;
    v20 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v19, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v21 = vrev32_s16(v20);
    v22 = vuzp1_s16(v20, v21);
    *a1 = v22;
    v22.i16[0] = *v7;
    v22.i16[1] = v7[8];
    v21.i32[0] = *(v8 + 4);
    v23 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v22, v21), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v24 = vrev32_s16(v23);
    v25 = vuzp1_s16(v23, v24);
    a1[1] = v25;
    if (v18 != 1)
    {
      v26 = (a1 + a3);
      v25.i16[0] = v6[2];
      v25.i16[1] = v6[10];
      v24.i32[0] = *(v8 + 1);
      v27 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v25, v24), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      v28 = vrev32_s16(v27);
      v29 = vuzp1_s16(v27, v28);
      *v26 = v29;
      v29.i16[0] = v7[2];
      v29.i16[1] = v7[10];
      v28.i32[0] = *(v8 + 5);
      v30 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v29, v28), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      v31 = vrev32_s16(v30);
      result = vuzp1_s16(v30, v31);
      v26[1] = result;
      if (v18 != 2)
      {
        v32 = (v26 + a3);
        result.i16[0] = v6[4];
        result.i16[1] = v6[12];
        v31.i32[0] = *(v8 + 2);
        v33 = vzip1_s32(result, v31);
        result = 0xF000F000F000F000;
        v34 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v33, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
        v35 = vrev32_s16(v34);
        v36 = vuzp1_s16(v34, v35);
        *v32 = v36;
        v36.i16[0] = v7[4];
        v36.i16[1] = v7[12];
        v35.i32[0] = *(v8 + 6);
        v37 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v36, v35), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
        v38 = vrev32_s16(v37);
        v39 = vuzp1_s16(v37, v38);
        v32[1] = v39;
        if (v18 != 3)
        {
          v40 = (v32 + a3);
          v39.i16[0] = v6[6];
          v39.i16[1] = v6[14];
          v38.i32[0] = *(v8 + 3);
          v41 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v39, v38), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
          v42 = vrev32_s16(v41);
          v43 = vuzp1_s16(v41, v42);
          *v40 = v43;
          v43.i16[0] = v7[6];
          v43.i16[1] = v7[14];
          v42.i32[0] = *(v8 + 7);
          v44 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v43, v42), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
          result = vuzp1_s16(v44, vrev32_s16(v44));
          v40[1] = result;
        }
      }
    }
  }

  return result;
}

int32x2_t from_444_to_v216<2,2,(AlphaOutputMethod)0,false,(PixelOutputStoreType)0>(int8x8_t *a1, __int16 *a2, int a3, int a4, int32x2_t result, int32x2_t a6)
{
  v6 = a2 + 20;
  v7 = a2 + 36;
  v8 = a2 + 4;
  if (a4 > 0)
  {
    v9.i16[0] = a2[16];
    v9.i16[1] = *a2;
    v9.i16[2] = *v6;
    v9.i16[3] = a2[1];
    result = 0xF000F000F000F000;
    v10 = vmin_s16(v9, 0xF000F000F000F000);
    *&a6 = -3.28697467e231;
    *a1 = veor_s8(vshl_n_s16(vmax_s16(v10, 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v11.i16[0] = a2[32];
    v11.i16[1] = *v8;
    v11.i16[2] = *v7;
    v11.i16[3] = a2[5];
    a1[1] = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v11, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    a1 = (a1 + a3);
    v8 = a2 + 6;
    v6 = a2 + 22;
    v7 = a2 + 38;
    if (a4 != 1)
    {
      v12.i16[0] = a2[18];
      v12.i16[1] = a2[2];
      v12.i16[2] = *v6;
      v12.i16[3] = a2[3];
      *a1 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v12, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      v12.i16[0] = a2[34];
      v12.i16[1] = *v8;
      v12.i16[2] = *v7;
      v12.i16[3] = a2[7];
      result = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v12, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      a1[1] = result;
      a1 = (a1 + a3);
      v8 = a2 + 8;
      v6 = a2 + 24;
      v7 = a2 + 40;
    }
  }

  if (a4 <= 2)
  {
    v13 = 2;
  }

  else
  {
    v13 = a4;
  }

  v14 = v13 - 2;
  if (v14)
  {
    result.i16[0] = *v6;
    result.i16[1] = v6[4];
    a6.i32[0] = *v8;
    v15 = vzip1_s32(result, a6);
    result = 0xF000F000F000F000;
    v16 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v15, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v17 = vrev32_s16(v16);
    v18 = vuzp1_s16(v16, v17);
    *a1 = v18;
    v18.i16[0] = *v7;
    v18.i16[1] = v7[4];
    v17.i32[0] = *(v8 + 2);
    v19 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v18, v17), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v20 = vrev32_s16(v19);
    v21 = vuzp1_s16(v19, v20);
    a1[1] = v21;
    if (v14 != 1)
    {
      v22 = (a1 + a3);
      v21.i16[0] = v6[2];
      v21.i16[1] = v6[6];
      v20.i32[0] = *(v8 + 1);
      v23 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v21, v20), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      v24 = vrev32_s16(v23);
      v25 = vuzp1_s16(v23, v24);
      *v22 = v25;
      v25.i16[0] = v7[2];
      v25.i16[1] = v7[6];
      v24.i32[0] = *(v8 + 3);
      v26 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v25, v24), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      result = vuzp1_s16(v26, vrev32_s16(v26));
      v22[1] = result;
    }
  }

  return result;
}

int32x2_t from_444_to_v216<2,2,(AlphaOutputMethod)0,true,(PixelOutputStoreType)0>(int8x8_t *a1, __int16 *a2, int a3, int a4, int32x2_t result, int32x2_t a6)
{
  v6 = a2 + 20;
  v7 = a2 + 36;
  v8 = a2 + 4;
  if (a4 > 0)
  {
    v9.i16[0] = a2[16];
    v9.i16[1] = *a2;
    v9.i16[2] = *v6;
    v9.i16[3] = a2[1];
    result = 0xF000F000F000F000;
    v10 = vmin_s16(v9, 0xF000F000F000F000);
    *&a6 = -3.28697467e231;
    *a1 = veor_s8(vshl_n_s16(vmax_s16(v10, 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v11.i16[0] = a2[32];
    v11.i16[1] = *v8;
    v11.i16[2] = *v7;
    v11.i16[3] = a2[5];
    a1[1] = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v11, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    a1 = (a1 + a3);
    v8 = a2 + 6;
    v6 = a2 + 22;
    v7 = a2 + 38;
    if (a4 != 1)
    {
      v12.i16[0] = a2[18];
      v12.i16[1] = a2[2];
      v12.i16[2] = *v6;
      v12.i16[3] = a2[3];
      *a1 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v12, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      v12.i16[0] = a2[34];
      v12.i16[1] = *v8;
      v12.i16[2] = *v7;
      v12.i16[3] = a2[7];
      result = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v12, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      a1[1] = result;
      a1 = (a1 + a3);
      v8 = a2 + 8;
      v6 = a2 + 24;
      v7 = a2 + 40;
    }
  }

  if (a4 <= 2)
  {
    v13 = 2;
  }

  else
  {
    v13 = a4;
  }

  v14 = v13 - 2;
  if (v14)
  {
    result.i16[0] = *v6;
    result.i16[1] = v6[4];
    a6.i32[0] = *v8;
    v15 = vzip1_s32(result, a6);
    result = 0xF000F000F000F000;
    v16 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v15, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v17 = vrev32_s16(v16);
    v18 = vuzp1_s16(v16, v17);
    *a1 = v18;
    v18.i16[0] = *v7;
    v18.i16[1] = v7[4];
    v17.i32[0] = *(v8 + 2);
    v19 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v18, v17), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v20 = vrev32_s16(v19);
    v21 = vuzp1_s16(v19, v20);
    a1[1] = v21;
    if (v14 != 1)
    {
      v22 = (a1 + a3);
      v21.i16[0] = v6[2];
      v21.i16[1] = v6[6];
      v20.i32[0] = *(v8 + 1);
      v23 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v21, v20), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      v24 = vrev32_s16(v23);
      v25 = vuzp1_s16(v23, v24);
      *v22 = v25;
      v25.i16[0] = v7[2];
      v25.i16[1] = v7[6];
      v24.i32[0] = *(v8 + 3);
      v26 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v25, v24), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      result = vuzp1_s16(v26, vrev32_s16(v26));
      v22[1] = result;
    }
  }

  return result;
}

int8x8_t from_444_to_v216<2,1,(AlphaOutputMethod)0,false,(PixelOutputStoreType)0>(int8x8_t *a1, __int16 *a2, int a3, int a4)
{
  if (a4 >= 1)
  {
    v4.i16[0] = a2[8];
    v4.i16[1] = *a2;
    v4.i16[2] = a2[10];
    v4.i16[3] = a2[1];
    result = 0xF000F000F000F000;
    *a1 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v4, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v6.i16[0] = a2[16];
    v6.i16[1] = a2[2];
    v6.i16[2] = a2[18];
    v6.i16[3] = a2[3];
    a1[1] = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v6, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    if (a4 != 1)
    {
      v7 = (a1 + a3);
      v8.i16[0] = a2[12];
      v8.i16[1] = a2[4];
      v8.i16[2] = a2[14];
      v8.i16[3] = a2[5];
      *v7 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v8, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      v8.i16[0] = a2[20];
      v8.i16[1] = a2[6];
      v8.i16[2] = a2[22];
      v8.i16[3] = a2[7];
      result = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v8, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      v7[1] = result;
    }
  }

  return result;
}

int8x8_t from_444_to_v216<2,1,(AlphaOutputMethod)0,true,(PixelOutputStoreType)0>(int8x8_t *a1, __int16 *a2, int a3, int a4)
{
  if (a4 >= 1)
  {
    v4.i16[0] = a2[8];
    v4.i16[1] = *a2;
    v4.i16[2] = a2[10];
    v4.i16[3] = a2[1];
    result = 0xF000F000F000F000;
    *a1 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v4, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v6.i16[0] = a2[16];
    v6.i16[1] = a2[2];
    v6.i16[2] = a2[18];
    v6.i16[3] = a2[3];
    a1[1] = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v6, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    if (a4 != 1)
    {
      v7 = (a1 + a3);
      v8.i16[0] = a2[12];
      v8.i16[1] = a2[4];
      v8.i16[2] = a2[14];
      v8.i16[3] = a2[5];
      *v7 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v8, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      v8.i16[0] = a2[20];
      v8.i16[1] = a2[6];
      v8.i16[2] = a2[22];
      v8.i16[3] = a2[7];
      result = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v8, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      v7[1] = result;
    }
  }

  return result;
}

int8x8_t from_444_to_v216<1,2,(AlphaOutputMethod)0,false,(PixelOutputStoreType)0>(int8x8_t *a1, __int16 *a2, int a3, int a4)
{
  v4 = a2 + 10;
  v5 = a2 + 2;
  if (a4 > 0)
  {
    v6.i16[0] = a2[8];
    v6.i16[1] = *a2;
    v6.i16[2] = *v4;
    v6.i16[3] = *v5;
    result = 0xF000F000F000F000;
    *a1 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v6, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    a1 = (a1 + a3);
    v5 = a2 + 3;
    v4 = a2 + 11;
    if (a4 != 1)
    {
      v8.i16[0] = a2[9];
      v8.i16[1] = a2[1];
      v8.i16[2] = *v4;
      v8.i16[3] = *v5;
      result = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v8, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      *a1 = result;
      a1 = (a1 + a3);
      v5 = a2 + 4;
      v4 = a2 + 12;
    }
  }

  if (a4 <= 2)
  {
    v9 = 2;
  }

  else
  {
    v9 = a4;
  }

  v10 = v9 - 2;
  if (v10)
  {
    v11.i16[0] = *v4;
    v11.i16[1] = *v5;
    v11.i16[2] = v4[2];
    v11.i16[3] = v5[2];
    result = 0xF000F000F000F000;
    *a1 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v11, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    if (v10 != 1)
    {
      v12.i16[0] = v4[1];
      v12.i16[1] = v5[1];
      v12.i16[2] = v4[3];
      v12.i16[3] = v5[3];
      result = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v12, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      *(a1 + a3) = result;
    }
  }

  return result;
}

int8x8_t from_444_to_v216<1,2,(AlphaOutputMethod)0,true,(PixelOutputStoreType)0>(int8x8_t *a1, __int16 *a2, int a3, int a4)
{
  v4 = a2 + 10;
  v5 = a2 + 2;
  if (a4 > 0)
  {
    v6.i16[0] = a2[8];
    v6.i16[1] = *a2;
    v6.i16[2] = *v4;
    v6.i16[3] = *v5;
    result = 0xF000F000F000F000;
    *a1 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v6, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    a1 = (a1 + a3);
    v5 = a2 + 3;
    v4 = a2 + 11;
    if (a4 != 1)
    {
      v8.i16[0] = a2[9];
      v8.i16[1] = a2[1];
      v8.i16[2] = *v4;
      v8.i16[3] = *v5;
      result = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v8, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      *a1 = result;
      a1 = (a1 + a3);
      v5 = a2 + 4;
      v4 = a2 + 12;
    }
  }

  if (a4 <= 2)
  {
    v9 = 2;
  }

  else
  {
    v9 = a4;
  }

  v10 = v9 - 2;
  if (v10)
  {
    v11.i16[0] = *v4;
    v11.i16[1] = *v5;
    v11.i16[2] = v4[2];
    v11.i16[3] = v5[2];
    result = 0xF000F000F000F000;
    *a1 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v11, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    if (v10 != 1)
    {
      v12.i16[0] = v4[1];
      v12.i16[1] = v5[1];
      v12.i16[2] = v4[3];
      v12.i16[3] = v5[3];
      result = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v12, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      *(a1 + a3) = result;
    }
  }

  return result;
}

int8x8_t from_444_to_v216<1,1,(AlphaOutputMethod)0,false,(PixelOutputStoreType)0>(int8x8_t *a1, __int16 *a2, int a3, int a4)
{
  if (a4 >= 1)
  {
    v4.i16[0] = a2[4];
    v4.i16[1] = *a2;
    v4.i16[2] = a2[5];
    v4.i16[3] = a2[1];
    result = 0xF000F000F000F000;
    *a1 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v4, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    if (a4 != 1)
    {
      v6.i16[0] = a2[6];
      v6.i16[1] = a2[2];
      v6.i16[2] = a2[7];
      v6.i16[3] = a2[3];
      result = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v6, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      *(a1 + a3) = result;
    }
  }

  return result;
}

int8x8_t from_444_to_v216<1,1,(AlphaOutputMethod)0,true,(PixelOutputStoreType)0>(int8x8_t *a1, __int16 *a2, int a3, int a4)
{
  if (a4 >= 1)
  {
    v4.i16[0] = a2[4];
    v4.i16[1] = *a2;
    v4.i16[2] = a2[5];
    v4.i16[3] = a2[1];
    result = 0xF000F000F000F000;
    *a1 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v4, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    if (a4 != 1)
    {
      v6.i16[0] = a2[6];
      v6.i16[1] = a2[2];
      v6.i16[2] = a2[7];
      v6.i16[3] = a2[3];
      result = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v6, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      *(a1 + a3) = result;
    }
  }

  return result;
}

int32x4_t *from_444_to_y416_10bits<8,8,(AlphaOutputMethod)1,false>(int32x4_t *result, int16x8_t *a2, int a3, int a4, int16x8_t *a5, unsigned int a6)
{
  if (atomic_load_explicit(&qword_280A719C0, memory_order_acquire))
  {
    if (atomic_load_explicit(&qword_280A719C8, memory_order_acquire))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v99 = a2;
    v93 = a5;
    v97 = result;
    v89 = a4;
    v91 = a6;
    v95 = a3;
    from_444_to_y416_10bits<8,8,(AlphaOutputMethod)1,false>();
    a4 = v89;
    a6 = v91;
    a5 = v93;
    a3 = v95;
    result = v97;
    a2 = v99;
    if (atomic_load_explicit(&qword_280A719C8, memory_order_acquire))
    {
LABEL_3:
      if (a4 <= 8)
      {
        v6 = 0;
      }

      else
      {
        v6 = a4 - 8;
      }

      v7 = a4 - v6;
      if (v6)
      {
        goto LABEL_7;
      }

LABEL_16:
      v50 = a2 + 8;
      v51 = a2 + 32;
      v52 = a2 + 40;
      v53 = a2 + 64;
      v54 = a2 + 72;
      if (v7 < 1)
      {
        return result;
      }

      goto LABEL_17;
    }
  }

  v100 = a2;
  v94 = a5;
  v98 = result;
  v90 = a4;
  v92 = a6;
  v96 = a3;
  from_444_to_y416_10bits<8,8,(AlphaOutputMethod)1,false>();
  a4 = v90;
  a6 = v92;
  a5 = v94;
  a3 = v96;
  result = v98;
  a2 = v100;
  if (v90 <= 8)
  {
    v55 = 0;
  }

  else
  {
    v55 = v90 - 8;
  }

  v7 = v90 - v55;
  if (!v55)
  {
    goto LABEL_16;
  }

LABEL_7:
  v8 = 2 * a3;
  v9 = xmmword_280A72000;
  v10 = *algn_280A72010;
  v11 = a4 - 7;
  v12.i64[0] = 0x8000800080008000;
  v12.i64[1] = 0x8000800080008000;
  do
  {
    v13 = (a5 + 8 * a6 + 16);
    v14 = (result + v8 * 4);
    v15 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(*a2, v9), v10), 6uLL), v12);
    v16 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[32], v9), v10), 6uLL), v12);
    v17 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[40], v9), v10), 6uLL), v12);
    v18 = vzip1q_s16(*a5, v15);
    v19 = vzip2q_s16(*a5, v15);
    v20 = vzip1q_s16(v16, v17);
    v21 = vzip2q_s16(v16, v17);
    *result = vzip1q_s32(v18, v20);
    result[1] = vzip2q_s32(v18, v20);
    result[2] = vzip1q_s32(v19, v21);
    result[3] = vzip2q_s32(v19, v21);
    v22 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[8], v9), v10), 6uLL), v12);
    v23 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[64], v9), v10), 6uLL), v12);
    v24 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[72], v9), v10), 6uLL), v12);
    v25 = a5[1];
    v26 = vzip1q_s16(v25, v22);
    v27 = vzip2q_s16(v25, v22);
    v28 = vzip1q_s16(v23, v24);
    v29 = vzip2q_s16(v23, v24);
    result[4] = vzip1q_s32(v26, v28);
    result[5] = vzip2q_s32(v26, v28);
    result[6] = vzip1q_s32(v27, v29);
    result[7] = vzip2q_s32(v27, v29);
    v30 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[16], v9), v10), 6uLL), v12);
    v31 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[48], v9), v10), 6uLL), v12);
    v32 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[56], v9), v10), 6uLL), v12);
    v33 = *(a5 + 8 * a6);
    v34 = vzip1q_s16(v33, v30);
    v35 = vzip2q_s16(v33, v30);
    v36 = vzip1q_s16(v31, v32);
    v37 = vzip2q_s16(v31, v32);
    v38 = &result->i32[v8];
    vst2_f32(v38, v34);
    v38 += 4;
    v39 = &result[2].i32[v8];
    vst2_f32(v39, v35);
    v40 = a2 + 1;
    result = (result + a3);
    --v7;
    a5 = (a5 + a6);
    *v38 = vzip2q_s32(v34, v36);
    v14[3] = vzip2q_s32(v35, v37);
    v41 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[24], v9), v10), 6uLL), v12);
    v42 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[80], v9), v10), 6uLL), v12);
    v43 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[88], v9), v10), 6uLL), v12);
    v44 = vzip1q_s16(*v13, v41);
    v45 = vzip2q_s16(*v13, v41);
    v46 = vzip1q_s16(v42, v43);
    v47 = vzip2q_s16(v42, v43);
    i32 = v14[4].i32;
    vst2_f32(i32, v44);
    v49 = v14[6].i32;
    vst2_f32(v49, v45);
    v14[5] = vzip2q_s32(v44, v46);
    v14[7] = vzip2q_s32(v45, v47);
    --v11;
    ++a2;
  }

  while (v11 > 1);
  v50 = v40 + 8;
  v51 = v40 + 32;
  v52 = v40 + 40;
  v53 = v40 + 64;
  v54 = v40 + 72;
  a2 = v40;
  if (v7 >= 1)
  {
LABEL_17:
    v56 = xmmword_280A72000;
    v57 = *algn_280A72010;
    v58 = a3;
    v59 = v7 + 1;
    v60 = a5 + 1;
    result += 4;
    v61.i64[0] = 0x8000800080008000;
    v61.i64[1] = 0x8000800080008000;
    v62 = result;
    do
    {
      v63 = *a2++;
      v64 = result[-4].i32;
      v65 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v63, v56), v57), 6uLL), v61);
      v66 = *v51++;
      v67 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v66, v56), v57), 6uLL), v61);
      v68 = *v52++;
      v69 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v68, v56), v57), 6uLL), v61);
      v70 = v60[-1];
      v71 = vzip1q_s16(v70, v65);
      v72 = vzip2q_s16(v70, v65);
      v73 = vzip1q_s16(v67, v69);
      v74 = vzip2q_s16(v67, v69);
      vst2_f32(v64, v71);
      result[-3] = vzip2q_s32(v71, v73);
      v75 = result[-2].i32;
      vst2_f32(v75, v72);
      result[-1] = vzip2q_s32(v72, v74);
      v76 = *v50++;
      v77 = vshlq_n_s16(vminq_s16(vmaxq_s16(v76, v56), v57), 6uLL);
      v78 = *v53++;
      v79 = veorq_s8(v77, v61);
      v80 = vshlq_n_s16(vminq_s16(vmaxq_s16(v78, v56), v57), 6uLL);
      v81 = *v54++;
      v82 = veorq_s8(v80, v61);
      v83 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v81, v56), v57), 6uLL), v61);
      v84 = vzip1q_s16(*v60, v79);
      v85 = vzip2q_s16(*v60, v79);
      v86 = vzip1q_s16(v82, v83);
      vst2_f32(v62, v84);
      v62 = (v62 + v58);
      v87 = vzip2q_s16(v82, v83);
      result[1] = vzip2q_s32(v84, v86);
      v88 = result[2].i32;
      vst2_f32(v88, v85);
      result[3] = vzip2q_s32(v85, v87);
      --v59;
      v60 = (v60 + a6);
      result = v62;
    }

    while (v59 > 1);
  }

  return result;
}

int32x4_t *from_444_to_y416_10bits<8,8,(AlphaOutputMethod)1,true>(int32x4_t *result, int16x8_t *a2, int a3, int a4, int16x8_t *a5, unsigned int a6)
{
  if (atomic_load_explicit(&qword_280A719D0, memory_order_acquire))
  {
    if (atomic_load_explicit(&qword_280A719D8, memory_order_acquire))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v99 = a2;
    v93 = a5;
    v97 = result;
    v89 = a4;
    v91 = a6;
    v95 = a3;
    from_444_to_y416_10bits<8,8,(AlphaOutputMethod)1,true>();
    a4 = v89;
    a6 = v91;
    a5 = v93;
    a3 = v95;
    result = v97;
    a2 = v99;
    if (atomic_load_explicit(&qword_280A719D8, memory_order_acquire))
    {
LABEL_3:
      if (a4 <= 8)
      {
        v6 = 0;
      }

      else
      {
        v6 = a4 - 8;
      }

      v7 = a4 - v6;
      if (v6)
      {
        goto LABEL_7;
      }

LABEL_16:
      v50 = a2 + 8;
      v51 = a2 + 32;
      v52 = a2 + 40;
      v53 = a2 + 64;
      v54 = a2 + 72;
      if (v7 < 1)
      {
        return result;
      }

      goto LABEL_17;
    }
  }

  v100 = a2;
  v94 = a5;
  v98 = result;
  v90 = a4;
  v92 = a6;
  v96 = a3;
  from_444_to_y416_10bits<8,8,(AlphaOutputMethod)1,true>();
  a4 = v90;
  a6 = v92;
  a5 = v94;
  a3 = v96;
  result = v98;
  a2 = v100;
  if (v90 <= 8)
  {
    v55 = 0;
  }

  else
  {
    v55 = v90 - 8;
  }

  v7 = v90 - v55;
  if (!v55)
  {
    goto LABEL_16;
  }

LABEL_7:
  v8 = 2 * a3;
  v9 = xmmword_280A72020;
  v10 = *algn_280A72030;
  v11 = a4 - 7;
  v12.i64[0] = 0x8000800080008000;
  v12.i64[1] = 0x8000800080008000;
  do
  {
    v13 = (a5 + 8 * a6 + 16);
    v14 = (result + v8 * 4);
    v15 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(*a2, v9), v10), 6uLL), v12);
    v16 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[32], v9), v10), 6uLL), v12);
    v17 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[40], v9), v10), 6uLL), v12);
    v18 = vzip1q_s16(*a5, v15);
    v19 = vzip2q_s16(*a5, v15);
    v20 = vzip1q_s16(v16, v17);
    v21 = vzip2q_s16(v16, v17);
    *result = vzip1q_s32(v18, v20);
    result[1] = vzip2q_s32(v18, v20);
    result[2] = vzip1q_s32(v19, v21);
    result[3] = vzip2q_s32(v19, v21);
    v22 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[8], v9), v10), 6uLL), v12);
    v23 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[64], v9), v10), 6uLL), v12);
    v24 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[72], v9), v10), 6uLL), v12);
    v25 = a5[1];
    v26 = vzip1q_s16(v25, v22);
    v27 = vzip2q_s16(v25, v22);
    v28 = vzip1q_s16(v23, v24);
    v29 = vzip2q_s16(v23, v24);
    result[4] = vzip1q_s32(v26, v28);
    result[5] = vzip2q_s32(v26, v28);
    result[6] = vzip1q_s32(v27, v29);
    result[7] = vzip2q_s32(v27, v29);
    v30 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[16], v9), v10), 6uLL), v12);
    v31 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[48], v9), v10), 6uLL), v12);
    v32 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[56], v9), v10), 6uLL), v12);
    v33 = *(a5 + 8 * a6);
    v34 = vzip1q_s16(v33, v30);
    v35 = vzip2q_s16(v33, v30);
    v36 = vzip1q_s16(v31, v32);
    v37 = vzip2q_s16(v31, v32);
    v38 = &result->i32[v8];
    vst2_f32(v38, v34);
    v38 += 4;
    v39 = &result[2].i32[v8];
    vst2_f32(v39, v35);
    v40 = a2 + 1;
    result = (result + a3);
    --v7;
    a5 = (a5 + a6);
    *v38 = vzip2q_s32(v34, v36);
    v14[3] = vzip2q_s32(v35, v37);
    v41 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[24], v9), v10), 6uLL), v12);
    v42 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[80], v9), v10), 6uLL), v12);
    v43 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[88], v9), v10), 6uLL), v12);
    v44 = vzip1q_s16(*v13, v41);
    v45 = vzip2q_s16(*v13, v41);
    v46 = vzip1q_s16(v42, v43);
    v47 = vzip2q_s16(v42, v43);
    i32 = v14[4].i32;
    vst2_f32(i32, v44);
    v49 = v14[6].i32;
    vst2_f32(v49, v45);
    v14[5] = vzip2q_s32(v44, v46);
    v14[7] = vzip2q_s32(v45, v47);
    --v11;
    ++a2;
  }

  while (v11 > 1);
  v50 = v40 + 8;
  v51 = v40 + 32;
  v52 = v40 + 40;
  v53 = v40 + 64;
  v54 = v40 + 72;
  a2 = v40;
  if (v7 >= 1)
  {
LABEL_17:
    v56 = xmmword_280A72020;
    v57 = *algn_280A72030;
    v58 = a3;
    v59 = v7 + 1;
    v60 = a5 + 1;
    result += 4;
    v61.i64[0] = 0x8000800080008000;
    v61.i64[1] = 0x8000800080008000;
    v62 = result;
    do
    {
      v63 = *a2++;
      v64 = result[-4].i32;
      v65 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v63, v56), v57), 6uLL), v61);
      v66 = *v51++;
      v67 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v66, v56), v57), 6uLL), v61);
      v68 = *v52++;
      v69 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v68, v56), v57), 6uLL), v61);
      v70 = v60[-1];
      v71 = vzip1q_s16(v70, v65);
      v72 = vzip2q_s16(v70, v65);
      v73 = vzip1q_s16(v67, v69);
      v74 = vzip2q_s16(v67, v69);
      vst2_f32(v64, v71);
      result[-3] = vzip2q_s32(v71, v73);
      v75 = result[-2].i32;
      vst2_f32(v75, v72);
      result[-1] = vzip2q_s32(v72, v74);
      v76 = *v50++;
      v77 = vshlq_n_s16(vminq_s16(vmaxq_s16(v76, v56), v57), 6uLL);
      v78 = *v53++;
      v79 = veorq_s8(v77, v61);
      v80 = vshlq_n_s16(vminq_s16(vmaxq_s16(v78, v56), v57), 6uLL);
      v81 = *v54++;
      v82 = veorq_s8(v80, v61);
      v83 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v81, v56), v57), 6uLL), v61);
      v84 = vzip1q_s16(*v60, v79);
      v85 = vzip2q_s16(*v60, v79);
      v86 = vzip1q_s16(v82, v83);
      vst2_f32(v62, v84);
      v62 = (v62 + v58);
      v87 = vzip2q_s16(v82, v83);
      result[1] = vzip2q_s32(v84, v86);
      v88 = result[2].i32;
      vst2_f32(v88, v85);
      result[3] = vzip2q_s32(v85, v87);
      --v59;
      v60 = (v60 + a6);
      result = v62;
    }

    while (v59 > 1);
  }

  return result;
}

int32x4_t *from_444_to_y416_10bits<8,8,(AlphaOutputMethod)2,false>(int32x4_t *result, int16x8_t *a2, int a3, int a4)
{
  if (atomic_load_explicit(&qword_280A719E0, memory_order_acquire))
  {
    if (atomic_load_explicit(&qword_280A719E8, memory_order_acquire))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v87 = a2;
    v83 = result;
    v85 = a3;
    v81 = a4;
    from_444_to_y416_10bits<8,8,(AlphaOutputMethod)2,false>();
    a4 = v81;
    result = v83;
    a3 = v85;
    a2 = v87;
    if (atomic_load_explicit(&qword_280A719E8, memory_order_acquire))
    {
LABEL_3:
      if (a4 <= 8)
      {
        v4 = 0;
      }

      else
      {
        v4 = a4 - 8;
      }

      v5 = a4 - v4;
      if (v4)
      {
        goto LABEL_7;
      }

LABEL_16:
      v45 = a2 + 8;
      v46 = a2 + 32;
      v47 = a2 + 40;
      v48 = a2 + 64;
      v49 = a2 + 72;
      if (v5 < 1)
      {
        return result;
      }

      goto LABEL_17;
    }
  }

  v88 = a2;
  v84 = result;
  v86 = a3;
  v82 = a4;
  from_444_to_y416_10bits<8,8,(AlphaOutputMethod)2,false>();
  a4 = v82;
  result = v84;
  a3 = v86;
  a2 = v88;
  if (v82 <= 8)
  {
    v50 = 0;
  }

  else
  {
    v50 = v82 - 8;
  }

  v5 = v82 - v50;
  if (!v50)
  {
    goto LABEL_16;
  }

LABEL_7:
  v6 = xmmword_280A72040;
  v7 = *algn_280A72050;
  v8 = a4 - 7;
  v9.i64[0] = 0x8000800080008000;
  v9.i64[1] = 0x8000800080008000;
  v10.i64[0] = -1;
  v10.i64[1] = -1;
  do
  {
    v11 = a2 + 1;
    v12 = (result + 8 * a3);
    v13 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(*a2, v6), v7), 6uLL), v9);
    v14 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[32], v6), v7), 6uLL), v9);
    v15 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[40], v6), v7), 6uLL), v9);
    v16 = vzip1q_s16(v10, v13);
    v17 = vzip2q_s16(v10, v13);
    v18 = vzip1q_s16(v14, v15);
    v19 = vzip2q_s16(v14, v15);
    *result = vzip1q_s32(v16, v18);
    result[1] = vzip2q_s32(v16, v18);
    result[2] = vzip1q_s32(v17, v19);
    result[3] = vzip2q_s32(v17, v19);
    v20 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[8], v6), v7), 6uLL), v9);
    v21 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[64], v6), v7), 6uLL), v9);
    v22 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[72], v6), v7), 6uLL), v9);
    v23 = vzip1q_s16(v10, v20);
    v24 = vzip2q_s16(v10, v20);
    v25 = vzip1q_s16(v21, v22);
    v26 = vzip2q_s16(v21, v22);
    result[4] = vzip1q_s32(v23, v25);
    result[5] = vzip2q_s32(v23, v25);
    result[6] = vzip1q_s32(v24, v26);
    result[7] = vzip2q_s32(v24, v26);
    result = (result + a3);
    --v5;
    v27 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[16], v6), v7), 6uLL), v9);
    v28 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[48], v6), v7), 6uLL), v9);
    v29 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[56], v6), v7), 6uLL), v9);
    v30 = vzip1q_s16(v10, v27);
    v31 = vzip2q_s16(v10, v27);
    v32 = vzip1q_s16(v28, v29);
    v33 = vzip2q_s16(v28, v29);
    v34 = v12;
    vst2_f32(v34, v30);
    v34 += 4;
    *v34 = vzip2q_s32(v30, v32);
    i32 = v12[2].i32;
    vst2_f32(i32, v31);
    v12[3] = vzip2q_s32(v31, v33);
    v36 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[24], v6), v7), 6uLL), v9);
    v37 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[80], v6), v7), 6uLL), v9);
    v38 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[88], v6), v7), 6uLL), v9);
    v39 = vzip1q_s16(v10, v36);
    v40 = vzip2q_s16(v10, v36);
    v41 = vzip1q_s16(v37, v38);
    v42 = vzip2q_s16(v37, v38);
    v43 = v12[4].i32;
    vst2_f32(v43, v39);
    v44 = v12[6].i32;
    vst2_f32(v44, v40);
    v12[5] = vzip2q_s32(v39, v41);
    v12[7] = vzip2q_s32(v40, v42);
    --v8;
    ++a2;
  }

  while (v8 > 1);
  v45 = v11 + 8;
  v46 = v11 + 32;
  v47 = v11 + 40;
  v48 = v11 + 64;
  v49 = v11 + 72;
  a2 = v11;
  if (v5 >= 1)
  {
LABEL_17:
    v51 = xmmword_280A72040;
    v52 = *algn_280A72050;
    v53 = v5 + 1;
    v54 = result + 4;
    v55.i64[0] = 0x8000800080008000;
    v55.i64[1] = 0x8000800080008000;
    v56.i64[0] = -1;
    v56.i64[1] = -1;
    v57 = result[4].i32;
    do
    {
      v58 = *a2++;
      v59 = v54[-4].i32;
      v60 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v58, v51), v52), 6uLL), v55);
      v61 = *v46++;
      v62 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v61, v51), v52), 6uLL), v55);
      v63 = *v47++;
      v64 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v63, v51), v52), 6uLL), v55);
      v65 = vzip1q_s16(v56, v60);
      v66 = vzip2q_s16(v56, v60);
      v67 = vzip1q_s16(v62, v64);
      v68 = vzip2q_s16(v62, v64);
      vst2_f32(v59, v65);
      v54[-3] = vzip2q_s32(v65, v67);
      v69 = v54[-2].i32;
      vst2_f32(v69, v66);
      v54[-1] = vzip2q_s32(v66, v68);
      v70 = *v45++;
      v71 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v70, v51), v52), 6uLL), v55);
      v72 = *v48++;
      v73 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v72, v51), v52), 6uLL), v55);
      v74 = *v49++;
      v75 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v74, v51), v52), 6uLL), v55);
      v76 = vzip1q_s16(v56, v71);
      v77 = vzip1q_s16(v73, v75);
      vst2_f32(v57, v76);
      v57 = (v57 + a3);
      v78 = vzip2q_s16(v56, v71);
      v79 = vzip2q_s16(v73, v75);
      v80 = v54[2].i32;
      vst2_f32(v80, v78);
      v54[1] = vzip2q_s32(v76, v77);
      v54[3] = vzip2q_s32(v78, v79);
      --v53;
      v54 = v57;
    }

    while (v53 > 1);
  }

  return result;
}

int32x4_t *from_444_to_y416_10bits<8,8,(AlphaOutputMethod)2,true>(int32x4_t *result, int16x8_t *a2, int a3, int a4)
{
  if (atomic_load_explicit(&qword_280A719F0, memory_order_acquire))
  {
    if (atomic_load_explicit(&qword_280A719F8, memory_order_acquire))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v87 = a2;
    v83 = result;
    v85 = a3;
    v81 = a4;
    from_444_to_y416_10bits<8,8,(AlphaOutputMethod)2,true>();
    a4 = v81;
    result = v83;
    a3 = v85;
    a2 = v87;
    if (atomic_load_explicit(&qword_280A719F8, memory_order_acquire))
    {
LABEL_3:
      if (a4 <= 8)
      {
        v4 = 0;
      }

      else
      {
        v4 = a4 - 8;
      }

      v5 = a4 - v4;
      if (v4)
      {
        goto LABEL_7;
      }

LABEL_16:
      v45 = a2 + 8;
      v46 = a2 + 32;
      v47 = a2 + 40;
      v48 = a2 + 64;
      v49 = a2 + 72;
      if (v5 < 1)
      {
        return result;
      }

      goto LABEL_17;
    }
  }

  v88 = a2;
  v84 = result;
  v86 = a3;
  v82 = a4;
  from_444_to_y416_10bits<8,8,(AlphaOutputMethod)2,true>();
  a4 = v82;
  result = v84;
  a3 = v86;
  a2 = v88;
  if (v82 <= 8)
  {
    v50 = 0;
  }

  else
  {
    v50 = v82 - 8;
  }

  v5 = v82 - v50;
  if (!v50)
  {
    goto LABEL_16;
  }

LABEL_7:
  v6 = xmmword_280A72060;
  v7 = *algn_280A72070;
  v8 = a4 - 7;
  v9.i64[0] = 0x8000800080008000;
  v9.i64[1] = 0x8000800080008000;
  v10.i64[0] = -1;
  v10.i64[1] = -1;
  do
  {
    v11 = a2 + 1;
    v12 = (result + 8 * a3);
    v13 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(*a2, v6), v7), 6uLL), v9);
    v14 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[32], v6), v7), 6uLL), v9);
    v15 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[40], v6), v7), 6uLL), v9);
    v16 = vzip1q_s16(v10, v13);
    v17 = vzip2q_s16(v10, v13);
    v18 = vzip1q_s16(v14, v15);
    v19 = vzip2q_s16(v14, v15);
    *result = vzip1q_s32(v16, v18);
    result[1] = vzip2q_s32(v16, v18);
    result[2] = vzip1q_s32(v17, v19);
    result[3] = vzip2q_s32(v17, v19);
    v20 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[8], v6), v7), 6uLL), v9);
    v21 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[64], v6), v7), 6uLL), v9);
    v22 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[72], v6), v7), 6uLL), v9);
    v23 = vzip1q_s16(v10, v20);
    v24 = vzip2q_s16(v10, v20);
    v25 = vzip1q_s16(v21, v22);
    v26 = vzip2q_s16(v21, v22);
    result[4] = vzip1q_s32(v23, v25);
    result[5] = vzip2q_s32(v23, v25);
    result[6] = vzip1q_s32(v24, v26);
    result[7] = vzip2q_s32(v24, v26);
    result = (result + a3);
    --v5;
    v27 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[16], v6), v7), 6uLL), v9);
    v28 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[48], v6), v7), 6uLL), v9);
    v29 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[56], v6), v7), 6uLL), v9);
    v30 = vzip1q_s16(v10, v27);
    v31 = vzip2q_s16(v10, v27);
    v32 = vzip1q_s16(v28, v29);
    v33 = vzip2q_s16(v28, v29);
    v34 = v12;
    vst2_f32(v34, v30);
    v34 += 4;
    *v34 = vzip2q_s32(v30, v32);
    i32 = v12[2].i32;
    vst2_f32(i32, v31);
    v12[3] = vzip2q_s32(v31, v33);
    v36 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[24], v6), v7), 6uLL), v9);
    v37 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[80], v6), v7), 6uLL), v9);
    v38 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[88], v6), v7), 6uLL), v9);
    v39 = vzip1q_s16(v10, v36);
    v40 = vzip2q_s16(v10, v36);
    v41 = vzip1q_s16(v37, v38);
    v42 = vzip2q_s16(v37, v38);
    v43 = v12[4].i32;
    vst2_f32(v43, v39);
    v44 = v12[6].i32;
    vst2_f32(v44, v40);
    v12[5] = vzip2q_s32(v39, v41);
    v12[7] = vzip2q_s32(v40, v42);
    --v8;
    ++a2;
  }

  while (v8 > 1);
  v45 = v11 + 8;
  v46 = v11 + 32;
  v47 = v11 + 40;
  v48 = v11 + 64;
  v49 = v11 + 72;
  a2 = v11;
  if (v5 >= 1)
  {
LABEL_17:
    v51 = xmmword_280A72060;
    v52 = *algn_280A72070;
    v53 = v5 + 1;
    v54 = result + 4;
    v55.i64[0] = 0x8000800080008000;
    v55.i64[1] = 0x8000800080008000;
    v56.i64[0] = -1;
    v56.i64[1] = -1;
    v57 = result[4].i32;
    do
    {
      v58 = *a2++;
      v59 = v54[-4].i32;
      v60 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v58, v51), v52), 6uLL), v55);
      v61 = *v46++;
      v62 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v61, v51), v52), 6uLL), v55);
      v63 = *v47++;
      v64 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v63, v51), v52), 6uLL), v55);
      v65 = vzip1q_s16(v56, v60);
      v66 = vzip2q_s16(v56, v60);
      v67 = vzip1q_s16(v62, v64);
      v68 = vzip2q_s16(v62, v64);
      vst2_f32(v59, v65);
      v54[-3] = vzip2q_s32(v65, v67);
      v69 = v54[-2].i32;
      vst2_f32(v69, v66);
      v54[-1] = vzip2q_s32(v66, v68);
      v70 = *v45++;
      v71 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v70, v51), v52), 6uLL), v55);
      v72 = *v48++;
      v73 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v72, v51), v52), 6uLL), v55);
      v74 = *v49++;
      v75 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v74, v51), v52), 6uLL), v55);
      v76 = vzip1q_s16(v56, v71);
      v77 = vzip1q_s16(v73, v75);
      vst2_f32(v57, v76);
      v57 = (v57 + a3);
      v78 = vzip2q_s16(v56, v71);
      v79 = vzip2q_s16(v73, v75);
      v80 = v54[2].i32;
      vst2_f32(v80, v78);
      v54[1] = vzip2q_s32(v76, v77);
      v54[3] = vzip2q_s32(v78, v79);
      --v53;
      v54 = v57;
    }

    while (v53 > 1);
  }

  return result;
}

int32x4_t *from_444_to_y416_12bits<8,8,(AlphaOutputMethod)1,false>(int32x4_t *result, int16x8_t *a2, int a3, int a4, int16x8_t *a5, unsigned int a6)
{
  if (atomic_load_explicit(&qword_280A71A00, memory_order_acquire))
  {
    if (atomic_load_explicit(&qword_280A71A08, memory_order_acquire))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v99 = a2;
    v93 = a5;
    v97 = result;
    v89 = a4;
    v91 = a6;
    v95 = a3;
    from_444_to_y416_12bits<8,8,(AlphaOutputMethod)1,false>();
    a4 = v89;
    a6 = v91;
    a5 = v93;
    a3 = v95;
    result = v97;
    a2 = v99;
    if (atomic_load_explicit(&qword_280A71A08, memory_order_acquire))
    {
LABEL_3:
      if (a4 <= 8)
      {
        v6 = 0;
      }

      else
      {
        v6 = a4 - 8;
      }

      v7 = a4 - v6;
      if (v6)
      {
        goto LABEL_7;
      }

LABEL_16:
      v50 = a2 + 8;
      v51 = a2 + 32;
      v52 = a2 + 40;
      v53 = a2 + 64;
      v54 = a2 + 72;
      if (v7 < 1)
      {
        return result;
      }

      goto LABEL_17;
    }
  }

  v100 = a2;
  v94 = a5;
  v98 = result;
  v90 = a4;
  v92 = a6;
  v96 = a3;
  from_444_to_y416_12bits<8,8,(AlphaOutputMethod)1,false>();
  a4 = v90;
  a6 = v92;
  a5 = v94;
  a3 = v96;
  result = v98;
  a2 = v100;
  if (v90 <= 8)
  {
    v55 = 0;
  }

  else
  {
    v55 = v90 - 8;
  }

  v7 = v90 - v55;
  if (!v55)
  {
    goto LABEL_16;
  }

LABEL_7:
  v8 = 2 * a3;
  v9 = xmmword_280A72080;
  v10 = *algn_280A72090;
  v11 = a4 - 7;
  v12.i64[0] = 0x8000800080008000;
  v12.i64[1] = 0x8000800080008000;
  do
  {
    v13 = (a5 + 8 * a6 + 16);
    v14 = (result + v8 * 4);
    v15 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(*a2, v9), v10), 4uLL), v12);
    v16 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[32], v9), v10), 4uLL), v12);
    v17 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[40], v9), v10), 4uLL), v12);
    v18 = vzip1q_s16(*a5, v15);
    v19 = vzip2q_s16(*a5, v15);
    v20 = vzip1q_s16(v16, v17);
    v21 = vzip2q_s16(v16, v17);
    *result = vzip1q_s32(v18, v20);
    result[1] = vzip2q_s32(v18, v20);
    result[2] = vzip1q_s32(v19, v21);
    result[3] = vzip2q_s32(v19, v21);
    v22 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[8], v9), v10), 4uLL), v12);
    v23 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[64], v9), v10), 4uLL), v12);
    v24 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[72], v9), v10), 4uLL), v12);
    v25 = a5[1];
    v26 = vzip1q_s16(v25, v22);
    v27 = vzip2q_s16(v25, v22);
    v28 = vzip1q_s16(v23, v24);
    v29 = vzip2q_s16(v23, v24);
    result[4] = vzip1q_s32(v26, v28);
    result[5] = vzip2q_s32(v26, v28);
    result[6] = vzip1q_s32(v27, v29);
    result[7] = vzip2q_s32(v27, v29);
    v30 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[16], v9), v10), 4uLL), v12);
    v31 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[48], v9), v10), 4uLL), v12);
    v32 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[56], v9), v10), 4uLL), v12);
    v33 = *(a5 + 8 * a6);
    v34 = vzip1q_s16(v33, v30);
    v35 = vzip2q_s16(v33, v30);
    v36 = vzip1q_s16(v31, v32);
    v37 = vzip2q_s16(v31, v32);
    v38 = &result->i32[v8];
    vst2_f32(v38, v34);
    v38 += 4;
    v39 = &result[2].i32[v8];
    vst2_f32(v39, v35);
    v40 = a2 + 1;
    result = (result + a3);
    --v7;
    a5 = (a5 + a6);
    *v38 = vzip2q_s32(v34, v36);
    v14[3] = vzip2q_s32(v35, v37);
    v41 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[24], v9), v10), 4uLL), v12);
    v42 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[80], v9), v10), 4uLL), v12);
    v43 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[88], v9), v10), 4uLL), v12);
    v44 = vzip1q_s16(*v13, v41);
    v45 = vzip2q_s16(*v13, v41);
    v46 = vzip1q_s16(v42, v43);
    v47 = vzip2q_s16(v42, v43);
    i32 = v14[4].i32;
    vst2_f32(i32, v44);
    v49 = v14[6].i32;
    vst2_f32(v49, v45);
    v14[5] = vzip2q_s32(v44, v46);
    v14[7] = vzip2q_s32(v45, v47);
    --v11;
    ++a2;
  }

  while (v11 > 1);
  v50 = v40 + 8;
  v51 = v40 + 32;
  v52 = v40 + 40;
  v53 = v40 + 64;
  v54 = v40 + 72;
  a2 = v40;
  if (v7 >= 1)
  {
LABEL_17:
    v56 = xmmword_280A72080;
    v57 = *algn_280A72090;
    v58 = a3;
    v59 = v7 + 1;
    v60 = a5 + 1;
    result += 4;
    v61.i64[0] = 0x8000800080008000;
    v61.i64[1] = 0x8000800080008000;
    v62 = result;
    do
    {
      v63 = *a2++;
      v64 = result[-4].i32;
      v65 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v63, v56), v57), 4uLL), v61);
      v66 = *v51++;
      v67 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v66, v56), v57), 4uLL), v61);
      v68 = *v52++;
      v69 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v68, v56), v57), 4uLL), v61);
      v70 = v60[-1];
      v71 = vzip1q_s16(v70, v65);
      v72 = vzip2q_s16(v70, v65);
      v73 = vzip1q_s16(v67, v69);
      v74 = vzip2q_s16(v67, v69);
      vst2_f32(v64, v71);
      result[-3] = vzip2q_s32(v71, v73);
      v75 = result[-2].i32;
      vst2_f32(v75, v72);
      result[-1] = vzip2q_s32(v72, v74);
      v76 = *v50++;
      v77 = vshlq_n_s16(vminq_s16(vmaxq_s16(v76, v56), v57), 4uLL);
      v78 = *v53++;
      v79 = veorq_s8(v77, v61);
      v80 = vshlq_n_s16(vminq_s16(vmaxq_s16(v78, v56), v57), 4uLL);
      v81 = *v54++;
      v82 = veorq_s8(v80, v61);
      v83 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v81, v56), v57), 4uLL), v61);
      v84 = vzip1q_s16(*v60, v79);
      v85 = vzip2q_s16(*v60, v79);
      v86 = vzip1q_s16(v82, v83);
      vst2_f32(v62, v84);
      v62 = (v62 + v58);
      v87 = vzip2q_s16(v82, v83);
      result[1] = vzip2q_s32(v84, v86);
      v88 = result[2].i32;
      vst2_f32(v88, v85);
      result[3] = vzip2q_s32(v85, v87);
      --v59;
      v60 = (v60 + a6);
      result = v62;
    }

    while (v59 > 1);
  }

  return result;
}

int32x4_t *from_444_to_y416_12bits<8,8,(AlphaOutputMethod)1,true>(int32x4_t *result, int16x8_t *a2, int a3, int a4, int16x8_t *a5, unsigned int a6)
{
  if (atomic_load_explicit(&qword_280A71A10, memory_order_acquire))
  {
    if (atomic_load_explicit(&qword_280A71A18, memory_order_acquire))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v99 = a2;
    v93 = a5;
    v97 = result;
    v89 = a4;
    v91 = a6;
    v95 = a3;
    from_444_to_y416_12bits<8,8,(AlphaOutputMethod)1,true>();
    a4 = v89;
    a6 = v91;
    a5 = v93;
    a3 = v95;
    result = v97;
    a2 = v99;
    if (atomic_load_explicit(&qword_280A71A18, memory_order_acquire))
    {
LABEL_3:
      if (a4 <= 8)
      {
        v6 = 0;
      }

      else
      {
        v6 = a4 - 8;
      }

      v7 = a4 - v6;
      if (v6)
      {
        goto LABEL_7;
      }

LABEL_16:
      v50 = a2 + 8;
      v51 = a2 + 32;
      v52 = a2 + 40;
      v53 = a2 + 64;
      v54 = a2 + 72;
      if (v7 < 1)
      {
        return result;
      }

      goto LABEL_17;
    }
  }

  v100 = a2;
  v94 = a5;
  v98 = result;
  v90 = a4;
  v92 = a6;
  v96 = a3;
  from_444_to_y416_12bits<8,8,(AlphaOutputMethod)1,true>();
  a4 = v90;
  a6 = v92;
  a5 = v94;
  a3 = v96;
  result = v98;
  a2 = v100;
  if (v90 <= 8)
  {
    v55 = 0;
  }

  else
  {
    v55 = v90 - 8;
  }

  v7 = v90 - v55;
  if (!v55)
  {
    goto LABEL_16;
  }

LABEL_7:
  v8 = 2 * a3;
  v9 = xmmword_280A720A0;
  v10 = *algn_280A720B0;
  v11 = a4 - 7;
  v12.i64[0] = 0x8000800080008000;
  v12.i64[1] = 0x8000800080008000;
  do
  {
    v13 = (a5 + 8 * a6 + 16);
    v14 = (result + v8 * 4);
    v15 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(*a2, v9), v10), 4uLL), v12);
    v16 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[32], v9), v10), 4uLL), v12);
    v17 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[40], v9), v10), 4uLL), v12);
    v18 = vzip1q_s16(*a5, v15);
    v19 = vzip2q_s16(*a5, v15);
    v20 = vzip1q_s16(v16, v17);
    v21 = vzip2q_s16(v16, v17);
    *result = vzip1q_s32(v18, v20);
    result[1] = vzip2q_s32(v18, v20);
    result[2] = vzip1q_s32(v19, v21);
    result[3] = vzip2q_s32(v19, v21);
    v22 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[8], v9), v10), 4uLL), v12);
    v23 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[64], v9), v10), 4uLL), v12);
    v24 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[72], v9), v10), 4uLL), v12);
    v25 = a5[1];
    v26 = vzip1q_s16(v25, v22);
    v27 = vzip2q_s16(v25, v22);
    v28 = vzip1q_s16(v23, v24);
    v29 = vzip2q_s16(v23, v24);
    result[4] = vzip1q_s32(v26, v28);
    result[5] = vzip2q_s32(v26, v28);
    result[6] = vzip1q_s32(v27, v29);
    result[7] = vzip2q_s32(v27, v29);
    v30 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[16], v9), v10), 4uLL), v12);
    v31 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[48], v9), v10), 4uLL), v12);
    v32 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[56], v9), v10), 4uLL), v12);
    v33 = *(a5 + 8 * a6);
    v34 = vzip1q_s16(v33, v30);
    v35 = vzip2q_s16(v33, v30);
    v36 = vzip1q_s16(v31, v32);
    v37 = vzip2q_s16(v31, v32);
    v38 = &result->i32[v8];
    vst2_f32(v38, v34);
    v38 += 4;
    v39 = &result[2].i32[v8];
    vst2_f32(v39, v35);
    v40 = a2 + 1;
    result = (result + a3);
    --v7;
    a5 = (a5 + a6);
    *v38 = vzip2q_s32(v34, v36);
    v14[3] = vzip2q_s32(v35, v37);
    v41 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[24], v9), v10), 4uLL), v12);
    v42 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[80], v9), v10), 4uLL), v12);
    v43 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[88], v9), v10), 4uLL), v12);
    v44 = vzip1q_s16(*v13, v41);
    v45 = vzip2q_s16(*v13, v41);
    v46 = vzip1q_s16(v42, v43);
    v47 = vzip2q_s16(v42, v43);
    i32 = v14[4].i32;
    vst2_f32(i32, v44);
    v49 = v14[6].i32;
    vst2_f32(v49, v45);
    v14[5] = vzip2q_s32(v44, v46);
    v14[7] = vzip2q_s32(v45, v47);
    --v11;
    ++a2;
  }

  while (v11 > 1);
  v50 = v40 + 8;
  v51 = v40 + 32;
  v52 = v40 + 40;
  v53 = v40 + 64;
  v54 = v40 + 72;
  a2 = v40;
  if (v7 >= 1)
  {
LABEL_17:
    v56 = xmmword_280A720A0;
    v57 = *algn_280A720B0;
    v58 = a3;
    v59 = v7 + 1;
    v60 = a5 + 1;
    result += 4;
    v61.i64[0] = 0x8000800080008000;
    v61.i64[1] = 0x8000800080008000;
    v62 = result;
    do
    {
      v63 = *a2++;
      v64 = result[-4].i32;
      v65 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v63, v56), v57), 4uLL), v61);
      v66 = *v51++;
      v67 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v66, v56), v57), 4uLL), v61);
      v68 = *v52++;
      v69 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v68, v56), v57), 4uLL), v61);
      v70 = v60[-1];
      v71 = vzip1q_s16(v70, v65);
      v72 = vzip2q_s16(v70, v65);
      v73 = vzip1q_s16(v67, v69);
      v74 = vzip2q_s16(v67, v69);
      vst2_f32(v64, v71);
      result[-3] = vzip2q_s32(v71, v73);
      v75 = result[-2].i32;
      vst2_f32(v75, v72);
      result[-1] = vzip2q_s32(v72, v74);
      v76 = *v50++;
      v77 = vshlq_n_s16(vminq_s16(vmaxq_s16(v76, v56), v57), 4uLL);
      v78 = *v53++;
      v79 = veorq_s8(v77, v61);
      v80 = vshlq_n_s16(vminq_s16(vmaxq_s16(v78, v56), v57), 4uLL);
      v81 = *v54++;
      v82 = veorq_s8(v80, v61);
      v83 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v81, v56), v57), 4uLL), v61);
      v84 = vzip1q_s16(*v60, v79);
      v85 = vzip2q_s16(*v60, v79);
      v86 = vzip1q_s16(v82, v83);
      vst2_f32(v62, v84);
      v62 = (v62 + v58);
      v87 = vzip2q_s16(v82, v83);
      result[1] = vzip2q_s32(v84, v86);
      v88 = result[2].i32;
      vst2_f32(v88, v85);
      result[3] = vzip2q_s32(v85, v87);
      --v59;
      v60 = (v60 + a6);
      result = v62;
    }

    while (v59 > 1);
  }

  return result;
}

int32x4_t *from_444_to_y416_12bits<8,8,(AlphaOutputMethod)2,false>(int32x4_t *result, int16x8_t *a2, int a3, int a4)
{
  if (atomic_load_explicit(&qword_280A71A20, memory_order_acquire))
  {
    if (atomic_load_explicit(&qword_280A71A28, memory_order_acquire))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v87 = a2;
    v83 = result;
    v85 = a3;
    v81 = a4;
    from_444_to_y416_12bits<8,8,(AlphaOutputMethod)2,false>();
    a4 = v81;
    result = v83;
    a3 = v85;
    a2 = v87;
    if (atomic_load_explicit(&qword_280A71A28, memory_order_acquire))
    {
LABEL_3:
      if (a4 <= 8)
      {
        v4 = 0;
      }

      else
      {
        v4 = a4 - 8;
      }

      v5 = a4 - v4;
      if (v4)
      {
        goto LABEL_7;
      }

LABEL_16:
      v45 = a2 + 8;
      v46 = a2 + 32;
      v47 = a2 + 40;
      v48 = a2 + 64;
      v49 = a2 + 72;
      if (v5 < 1)
      {
        return result;
      }

      goto LABEL_17;
    }
  }

  v88 = a2;
  v84 = result;
  v86 = a3;
  v82 = a4;
  from_444_to_y416_12bits<8,8,(AlphaOutputMethod)2,false>();
  a4 = v82;
  result = v84;
  a3 = v86;
  a2 = v88;
  if (v82 <= 8)
  {
    v50 = 0;
  }

  else
  {
    v50 = v82 - 8;
  }

  v5 = v82 - v50;
  if (!v50)
  {
    goto LABEL_16;
  }

LABEL_7:
  v6 = xmmword_280A720C0;
  v7 = *algn_280A720D0;
  v8 = a4 - 7;
  v9.i64[0] = 0x8000800080008000;
  v9.i64[1] = 0x8000800080008000;
  v10.i64[0] = -1;
  v10.i64[1] = -1;
  do
  {
    v11 = a2 + 1;
    v12 = (result + 8 * a3);
    v13 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(*a2, v6), v7), 4uLL), v9);
    v14 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[32], v6), v7), 4uLL), v9);
    v15 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[40], v6), v7), 4uLL), v9);
    v16 = vzip1q_s16(v10, v13);
    v17 = vzip2q_s16(v10, v13);
    v18 = vzip1q_s16(v14, v15);
    v19 = vzip2q_s16(v14, v15);
    *result = vzip1q_s32(v16, v18);
    result[1] = vzip2q_s32(v16, v18);
    result[2] = vzip1q_s32(v17, v19);
    result[3] = vzip2q_s32(v17, v19);
    v20 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[8], v6), v7), 4uLL), v9);
    v21 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[64], v6), v7), 4uLL), v9);
    v22 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[72], v6), v7), 4uLL), v9);
    v23 = vzip1q_s16(v10, v20);
    v24 = vzip2q_s16(v10, v20);
    v25 = vzip1q_s16(v21, v22);
    v26 = vzip2q_s16(v21, v22);
    result[4] = vzip1q_s32(v23, v25);
    result[5] = vzip2q_s32(v23, v25);
    result[6] = vzip1q_s32(v24, v26);
    result[7] = vzip2q_s32(v24, v26);
    result = (result + a3);
    --v5;
    v27 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[16], v6), v7), 4uLL), v9);
    v28 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[48], v6), v7), 4uLL), v9);
    v29 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[56], v6), v7), 4uLL), v9);
    v30 = vzip1q_s16(v10, v27);
    v31 = vzip2q_s16(v10, v27);
    v32 = vzip1q_s16(v28, v29);
    v33 = vzip2q_s16(v28, v29);
    v34 = v12;
    vst2_f32(v34, v30);
    v34 += 4;
    *v34 = vzip2q_s32(v30, v32);
    i32 = v12[2].i32;
    vst2_f32(i32, v31);
    v12[3] = vzip2q_s32(v31, v33);
    v36 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[24], v6), v7), 4uLL), v9);
    v37 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[80], v6), v7), 4uLL), v9);
    v38 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[88], v6), v7), 4uLL), v9);
    v39 = vzip1q_s16(v10, v36);
    v40 = vzip2q_s16(v10, v36);
    v41 = vzip1q_s16(v37, v38);
    v42 = vzip2q_s16(v37, v38);
    v43 = v12[4].i32;
    vst2_f32(v43, v39);
    v44 = v12[6].i32;
    vst2_f32(v44, v40);
    v12[5] = vzip2q_s32(v39, v41);
    v12[7] = vzip2q_s32(v40, v42);
    --v8;
    ++a2;
  }

  while (v8 > 1);
  v45 = v11 + 8;
  v46 = v11 + 32;
  v47 = v11 + 40;
  v48 = v11 + 64;
  v49 = v11 + 72;
  a2 = v11;
  if (v5 >= 1)
  {
LABEL_17:
    v51 = xmmword_280A720C0;
    v52 = *algn_280A720D0;
    v53 = v5 + 1;
    v54 = result + 4;
    v55.i64[0] = 0x8000800080008000;
    v55.i64[1] = 0x8000800080008000;
    v56.i64[0] = -1;
    v56.i64[1] = -1;
    v57 = result[4].i32;
    do
    {
      v58 = *a2++;
      v59 = v54[-4].i32;
      v60 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v58, v51), v52), 4uLL), v55);
      v61 = *v46++;
      v62 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v61, v51), v52), 4uLL), v55);
      v63 = *v47++;
      v64 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v63, v51), v52), 4uLL), v55);
      v65 = vzip1q_s16(v56, v60);
      v66 = vzip2q_s16(v56, v60);
      v67 = vzip1q_s16(v62, v64);
      v68 = vzip2q_s16(v62, v64);
      vst2_f32(v59, v65);
      v54[-3] = vzip2q_s32(v65, v67);
      v69 = v54[-2].i32;
      vst2_f32(v69, v66);
      v54[-1] = vzip2q_s32(v66, v68);
      v70 = *v45++;
      v71 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v70, v51), v52), 4uLL), v55);
      v72 = *v48++;
      v73 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v72, v51), v52), 4uLL), v55);
      v74 = *v49++;
      v75 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v74, v51), v52), 4uLL), v55);
      v76 = vzip1q_s16(v56, v71);
      v77 = vzip1q_s16(v73, v75);
      vst2_f32(v57, v76);
      v57 = (v57 + a3);
      v78 = vzip2q_s16(v56, v71);
      v79 = vzip2q_s16(v73, v75);
      v80 = v54[2].i32;
      vst2_f32(v80, v78);
      v54[1] = vzip2q_s32(v76, v77);
      v54[3] = vzip2q_s32(v78, v79);
      --v53;
      v54 = v57;
    }

    while (v53 > 1);
  }

  return result;
}

int32x4_t *from_444_to_y416_12bits<8,8,(AlphaOutputMethod)2,true>(int32x4_t *result, int16x8_t *a2, int a3, int a4)
{
  if (atomic_load_explicit(&qword_280A71A30, memory_order_acquire))
  {
    if (atomic_load_explicit(&qword_280A71A38, memory_order_acquire))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v87 = a2;
    v83 = result;
    v85 = a3;
    v81 = a4;
    from_444_to_y416_12bits<8,8,(AlphaOutputMethod)2,true>();
    a4 = v81;
    result = v83;
    a3 = v85;
    a2 = v87;
    if (atomic_load_explicit(&qword_280A71A38, memory_order_acquire))
    {
LABEL_3:
      if (a4 <= 8)
      {
        v4 = 0;
      }

      else
      {
        v4 = a4 - 8;
      }

      v5 = a4 - v4;
      if (v4)
      {
        goto LABEL_7;
      }

LABEL_16:
      v45 = a2 + 8;
      v46 = a2 + 32;
      v47 = a2 + 40;
      v48 = a2 + 64;
      v49 = a2 + 72;
      if (v5 < 1)
      {
        return result;
      }

      goto LABEL_17;
    }
  }

  v88 = a2;
  v84 = result;
  v86 = a3;
  v82 = a4;
  from_444_to_y416_12bits<8,8,(AlphaOutputMethod)2,true>();
  a4 = v82;
  result = v84;
  a3 = v86;
  a2 = v88;
  if (v82 <= 8)
  {
    v50 = 0;
  }

  else
  {
    v50 = v82 - 8;
  }

  v5 = v82 - v50;
  if (!v50)
  {
    goto LABEL_16;
  }

LABEL_7:
  v6 = xmmword_280A720E0;
  v7 = *algn_280A720F0;
  v8 = a4 - 7;
  v9.i64[0] = 0x8000800080008000;
  v9.i64[1] = 0x8000800080008000;
  v10.i64[0] = -1;
  v10.i64[1] = -1;
  do
  {
    v11 = a2 + 1;
    v12 = (result + 8 * a3);
    v13 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(*a2, v6), v7), 4uLL), v9);
    v14 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[32], v6), v7), 4uLL), v9);
    v15 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[40], v6), v7), 4uLL), v9);
    v16 = vzip1q_s16(v10, v13);
    v17 = vzip2q_s16(v10, v13);
    v18 = vzip1q_s16(v14, v15);
    v19 = vzip2q_s16(v14, v15);
    *result = vzip1q_s32(v16, v18);
    result[1] = vzip2q_s32(v16, v18);
    result[2] = vzip1q_s32(v17, v19);
    result[3] = vzip2q_s32(v17, v19);
    v20 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[8], v6), v7), 4uLL), v9);
    v21 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[64], v6), v7), 4uLL), v9);
    v22 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[72], v6), v7), 4uLL), v9);
    v23 = vzip1q_s16(v10, v20);
    v24 = vzip2q_s16(v10, v20);
    v25 = vzip1q_s16(v21, v22);
    v26 = vzip2q_s16(v21, v22);
    result[4] = vzip1q_s32(v23, v25);
    result[5] = vzip2q_s32(v23, v25);
    result[6] = vzip1q_s32(v24, v26);
    result[7] = vzip2q_s32(v24, v26);
    result = (result + a3);
    --v5;
    v27 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[16], v6), v7), 4uLL), v9);
    v28 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[48], v6), v7), 4uLL), v9);
    v29 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[56], v6), v7), 4uLL), v9);
    v30 = vzip1q_s16(v10, v27);
    v31 = vzip2q_s16(v10, v27);
    v32 = vzip1q_s16(v28, v29);
    v33 = vzip2q_s16(v28, v29);
    v34 = v12;
    vst2_f32(v34, v30);
    v34 += 4;
    *v34 = vzip2q_s32(v30, v32);
    i32 = v12[2].i32;
    vst2_f32(i32, v31);
    v12[3] = vzip2q_s32(v31, v33);
    v36 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[24], v6), v7), 4uLL), v9);
    v37 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[80], v6), v7), 4uLL), v9);
    v38 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[88], v6), v7), 4uLL), v9);
    v39 = vzip1q_s16(v10, v36);
    v40 = vzip2q_s16(v10, v36);
    v41 = vzip1q_s16(v37, v38);
    v42 = vzip2q_s16(v37, v38);
    v43 = v12[4].i32;
    vst2_f32(v43, v39);
    v44 = v12[6].i32;
    vst2_f32(v44, v40);
    v12[5] = vzip2q_s32(v39, v41);
    v12[7] = vzip2q_s32(v40, v42);
    --v8;
    ++a2;
  }

  while (v8 > 1);
  v45 = v11 + 8;
  v46 = v11 + 32;
  v47 = v11 + 40;
  v48 = v11 + 64;
  v49 = v11 + 72;
  a2 = v11;
  if (v5 >= 1)
  {
LABEL_17:
    v51 = xmmword_280A720E0;
    v52 = *algn_280A720F0;
    v53 = v5 + 1;
    v54 = result + 4;
    v55.i64[0] = 0x8000800080008000;
    v55.i64[1] = 0x8000800080008000;
    v56.i64[0] = -1;
    v56.i64[1] = -1;
    v57 = result[4].i32;
    do
    {
      v58 = *a2++;
      v59 = v54[-4].i32;
      v60 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v58, v51), v52), 4uLL), v55);
      v61 = *v46++;
      v62 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v61, v51), v52), 4uLL), v55);
      v63 = *v47++;
      v64 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v63, v51), v52), 4uLL), v55);
      v65 = vzip1q_s16(v56, v60);
      v66 = vzip2q_s16(v56, v60);
      v67 = vzip1q_s16(v62, v64);
      v68 = vzip2q_s16(v62, v64);
      vst2_f32(v59, v65);
      v54[-3] = vzip2q_s32(v65, v67);
      v69 = v54[-2].i32;
      vst2_f32(v69, v66);
      v54[-1] = vzip2q_s32(v66, v68);
      v70 = *v45++;
      v71 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v70, v51), v52), 4uLL), v55);
      v72 = *v48++;
      v73 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v72, v51), v52), 4uLL), v55);
      v74 = *v49++;
      v75 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v74, v51), v52), 4uLL), v55);
      v76 = vzip1q_s16(v56, v71);
      v77 = vzip1q_s16(v73, v75);
      vst2_f32(v57, v76);
      v57 = (v57 + a3);
      v78 = vzip2q_s16(v56, v71);
      v79 = vzip2q_s16(v73, v75);
      v80 = v54[2].i32;
      vst2_f32(v80, v78);
      v54[1] = vzip2q_s32(v76, v77);
      v54[3] = vzip2q_s32(v78, v79);
      --v53;
      v54 = v57;
    }

    while (v53 > 1);
  }

  return result;
}

uint64_t from_444_to_r4fl<8,8,(AlphaOutputMethod)1,false>(uint64_t result, int16x8_t *a2, int a3, int a4, int32x4_t *a5, unsigned int a6)
{
  if (a4 <= 8)
  {
    v6 = 0;
  }

  else
  {
    v6 = a4 - 8;
  }

  v7 = a4 - v6;
  if (!v6)
  {
    v123 = a2 + 8;
    v124 = a2 + 32;
    v125 = a2 + 40;
    v126 = a2 + 64;
    v127 = a2 + 72;
    if (v7 < 1)
    {
      return result;
    }

    goto LABEL_10;
  }

  v8 = 8 * a6;
  v9 = a4 - 7;
  v10.i64[0] = 0xF000F000F000F000;
  v10.i64[1] = 0xF000F000F000F000;
  v11 = vdupq_n_s16(0xFE0u);
  v12.i64[0] = 0xE000E000E000E00;
  v12.i64[1] = 0xE000E000E000E00;
  v13.i64[0] = 0x1000100010001000;
  v13.i64[1] = 0x1000100010001000;
  v14 = vdupq_n_s32(0x39008081u);
  do
  {
    v15 = vaddq_s16(vminq_s16(vmaxq_s16(*a2, v10), v11), v12);
    v16 = vaddq_s16(vminq_s16(vmaxq_s16(a2[32], v10), v11), v13);
    v17 = vaddq_s16(vminq_s16(vmaxq_s16(a2[40], v10), v11), v13);
    v18 = vcltzq_s16(v15);
    v19 = vzip1q_s16(v15, v18);
    v20 = vzip2q_s16(v15, v18);
    v21 = vmulq_f32(vcvtq_f32_s32(v19), v14);
    v22 = vmulq_f32(vcvtq_f32_u32(vzip1q_s16(v16, 0)), v14);
    v23 = vmulq_f32(vcvtq_f32_u32(vzip2q_s16(v16, 0)), v14);
    v24 = vmulq_f32(vcvtq_f32_u32(vzip1q_s16(v17, 0)), v14);
    v25 = vmulq_f32(vcvtq_f32_s32(v20), v14);
    v26 = vmulq_f32(vcvtq_f32_u32(vzip2q_s16(v17, 0)), v14);
    v27 = a5[1];
    v28 = vzip1q_s32(*a5, v21);
    v29 = vzip2q_s32(*a5, v21);
    v30 = vzip1q_s32(v22, v24);
    v31 = vzip2q_s32(v22, v24);
    v32 = vzip1q_s32(v27, v25);
    v33 = vzip1q_s32(v23, v26);
    v34 = vzip2q_s32(v23, v26);
    v35 = vzip2q_s32(v27, v25);
    v36 = vzip2q_s64(v28, v30);
    v28.i64[1] = v30.i64[0];
    *result = v28;
    *(result + 16) = v36;
    v37 = vzip2q_s64(v29, v31);
    v29.i64[1] = v31.i64[0];
    *(result + 32) = v29;
    *(result + 48) = v37;
    v38 = vzip2q_s64(v32, v33);
    v32.i64[1] = v33.i64[0];
    *(result + 64) = v32;
    *(result + 80) = v38;
    v39 = vzip2q_s64(v35, v34);
    v35.i64[1] = v34.i64[0];
    *(result + 96) = v35;
    *(result + 112) = v39;
    v40 = vaddq_s16(vminq_s16(vmaxq_s16(a2[8], v10), v11), v12);
    v41 = vaddq_s16(vminq_s16(vmaxq_s16(a2[64], v10), v11), v13);
    v42 = vaddq_s16(vminq_s16(vmaxq_s16(a2[72], v10), v11), v13);
    v43 = vcltzq_s16(v40);
    v44 = vzip1q_s16(v40, v43);
    v45 = vzip2q_s16(v40, v43);
    v46 = vcvtq_f32_s32(v44);
    v47 = vmulq_f32(vcvtq_f32_u32(vzip1q_s16(v41, 0)), v14);
    v48 = vmulq_f32(v46, v14);
    v49 = vmulq_f32(vcvtq_f32_u32(vzip2q_s16(v41, 0)), v14);
    v50 = vmulq_f32(vcvtq_f32_u32(vzip1q_s16(v42, 0)), v14);
    v51 = vmulq_f32(vcvtq_f32_s32(v45), v14);
    v52 = vmulq_f32(vcvtq_f32_u32(vzip2q_s16(v42, 0)), v14);
    v53 = a5[2];
    v54 = a5[3];
    v55 = vzip1q_s32(v53, v48);
    v56 = vzip1q_s32(v47, v50);
    v57 = vzip2q_s32(v53, v48);
    v58 = vzip2q_s32(v47, v50);
    v59 = vzip1q_s32(v54, v51);
    v60 = vzip2q_s32(v54, v51);
    v61 = vzip1q_s32(v49, v52);
    v62 = vzip2q_s32(v49, v52);
    v63 = vzip2q_s64(v55, v56);
    v55.i64[1] = v56.i64[0];
    v64 = vzip2q_s64(v57, v58);
    *(result + 128) = v55;
    *(result + 144) = v63;
    v57.i64[1] = v58.i64[0];
    v65 = vzip2q_s64(v59, v61);
    *(result + 160) = v57;
    *(result + 176) = v64;
    v59.i64[1] = v61.i64[0];
    v66 = vzip2q_s64(v60, v62);
    *(result + 192) = v59;
    *(result + 208) = v65;
    v60.i64[1] = v62.i64[0];
    *(result + 224) = v60;
    *(result + 240) = v66;
    v67 = vaddq_s16(vminq_s16(vmaxq_s16(a2[16], v10), v11), v12);
    v68 = vaddq_s16(vminq_s16(vmaxq_s16(a2[48], v10), v11), v13);
    v69 = vaddq_s16(vminq_s16(vmaxq_s16(a2[56], v10), v11), v13);
    v70 = vcltzq_s16(v67);
    v71 = vzip1q_s16(v67, v70);
    v72 = vzip2q_s16(v67, v70);
    v73 = vcvtq_f32_s32(v71);
    v74 = vmulq_f32(vcvtq_f32_u32(vzip1q_s16(v68, 0)), v14);
    v75 = vmulq_f32(v73, v14);
    v76 = vmulq_f32(vcvtq_f32_u32(vzip2q_s16(v68, 0)), v14);
    v77 = vmulq_f32(vcvtq_f32_u32(vzip1q_s16(v69, 0)), v14);
    v78 = vmulq_f32(vcvtq_f32_s32(v72), v14);
    v79 = vmulq_f32(vcvtq_f32_u32(vzip2q_s16(v69, 0)), v14);
    v80 = *(a5 + v8);
    v81 = *(&a5[1] + v8);
    v82 = vzip1q_s32(v80, v75);
    v83 = vzip1q_s32(v74, v77);
    v84 = vzip2q_s32(v80, v75);
    v85 = vzip2q_s32(v74, v77);
    v86 = vzip1q_s32(v81, v78);
    v87 = vzip2q_s32(v81, v78);
    v88 = vzip1q_s32(v76, v79);
    v89 = vzip2q_s32(v76, v79);
    v90 = (result + 8 * a3);
    v91 = vzip2q_s64(v82, v83);
    v82.i64[1] = v83.i64[0];
    *v90 = v82;
    v90[1] = v91;
    v92 = vzip2q_s64(v84, v85);
    v84.i64[1] = v85.i64[0];
    v90[2] = v84;
    v90[3] = v92;
    v93 = vzip2q_s64(v86, v88);
    v86.i64[1] = v88.i64[0];
    v90[4] = v86;
    v90[5] = v93;
    v94 = vzip2q_s64(v87, v89);
    v87.i64[1] = v89.i64[0];
    v90[6] = v87;
    v90[7] = v94;
    v95 = vaddq_s16(vminq_s16(vmaxq_s16(a2[24], v10), v11), v12);
    v96 = vaddq_s16(vminq_s16(vmaxq_s16(a2[80], v10), v11), v13);
    v97 = vaddq_s16(vminq_s16(vmaxq_s16(a2[88], v10), v11), v13);
    v98 = vcltzq_s16(v95);
    v99 = vzip1q_s16(v95, v98);
    v100 = vzip2q_s16(v95, v98);
    v101 = vcvtq_f32_s32(v99);
    v102 = vmulq_f32(vcvtq_f32_u32(vzip1q_s16(v96, 0)), v14);
    v103 = vmulq_f32(v101, v14);
    v104 = vmulq_f32(vcvtq_f32_u32(vzip2q_s16(v96, 0)), v14);
    v105 = vmulq_f32(vcvtq_f32_u32(vzip1q_s16(v97, 0)), v14);
    v106 = vmulq_f32(vcvtq_f32_s32(v100), v14);
    v107 = vmulq_f32(vcvtq_f32_u32(vzip2q_s16(v97, 0)), v14);
    v108 = *(&a5[2] + v8);
    v109 = *(&a5[3] + v8);
    v110 = vzip1q_s32(v108, v103);
    v111 = vzip1q_s32(v102, v105);
    v112 = vzip2q_s32(v108, v103);
    v113 = vzip2q_s32(v102, v105);
    v114 = vzip1q_s32(v109, v106);
    v115 = vzip2q_s32(v109, v106);
    v116 = vzip1q_s32(v104, v107);
    v117 = vzip2q_s64(v110, v111);
    v110.i64[1] = v111.i64[0];
    v118 = vzip2q_s64(v112, v113);
    v112.i64[1] = v113.i64[0];
    v119 = vzip2q_s32(v104, v107);
    v120 = vzip2q_s64(v114, v116);
    v114.i64[1] = v116.i64[0];
    v90[8] = v110;
    v90[9] = v117;
    v121 = vzip2q_s64(v115, v119);
    v115.i64[1] = v119.i64[0];
    v90[10] = v112;
    v90[11] = v118;
    v122 = a2 + 1;
    result += a3;
    --v7;
    a5 = (a5 + a6);
    v90[12] = v114;
    v90[13] = v120;
    v90[14] = v115;
    v90[15] = v121;
    --v9;
    ++a2;
  }

  while (v9 > 1);
  v123 = v122 + 8;
  v124 = v122 + 32;
  v125 = v122 + 40;
  v126 = v122 + 64;
  v127 = v122 + 72;
  a2 = v122;
  if (v7 >= 1)
  {
LABEL_10:
    v128 = v7 + 1;
    v129 = a5 + 2;
    v130 = (result + 128);
    v131.i64[0] = 0xF000F000F000F000;
    v131.i64[1] = 0xF000F000F000F000;
    v132 = vdupq_n_s16(0xFE0u);
    v133.i64[0] = 0xE000E000E000E00;
    v133.i64[1] = 0xE000E000E000E00;
    v134.i64[0] = 0x1000100010001000;
    v134.i64[1] = 0x1000100010001000;
    result = 956334209;
    v135 = vdupq_n_s32(0x39008081u);
    do
    {
      v136 = *a2++;
      v137 = vminq_s16(vmaxq_s16(v136, v131), v132);
      v138 = *v124++;
      v139 = vminq_s16(vmaxq_s16(v138, v131), v132);
      v140 = *v125++;
      v141 = vaddq_s16(v137, v133);
      v142 = vaddq_s16(v139, v134);
      v143 = vaddq_s16(vminq_s16(vmaxq_s16(v140, v131), v132), v134);
      v144 = vcltzq_s16(v141);
      v145 = vzip1q_s16(v141, v144);
      v146 = vzip2q_s16(v141, v144);
      v147 = vmulq_f32(vcvtq_f32_s32(v145), v135);
      v148 = vmulq_f32(vcvtq_f32_u32(vzip1q_s16(v142, 0)), v135);
      v149 = vmulq_f32(vcvtq_f32_u32(vzip2q_s16(v142, 0)), v135);
      v150 = vmulq_f32(vcvtq_f32_u32(vzip1q_s16(v143, 0)), v135);
      v151 = vmulq_f32(vcvtq_f32_s32(v146), v135);
      v152 = vmulq_f32(vcvtq_f32_u32(vzip2q_s16(v143, 0)), v135);
      v153 = v129[-2];
      v154 = v129[-1];
      v155 = vzip1q_s32(v153, v147);
      v156 = vzip2q_s32(v153, v147);
      v157 = vzip1q_s32(v148, v150);
      v158 = vzip2q_s32(v148, v150);
      v159 = vzip1q_s32(v149, v152);
      v160 = vzip2q_s32(v149, v152);
      v161 = vzip1q_s32(v154, v151);
      v162 = vzip2q_s32(v154, v151);
      v163 = vzip2q_s64(v155, v157);
      v155.i64[1] = v157.i64[0];
      v130[-8] = v155;
      v130[-7] = v163;
      v164 = vzip2q_s64(v156, v158);
      v156.i64[1] = v158.i64[0];
      v130[-6] = v156;
      v130[-5] = v164;
      v165 = vzip2q_s64(v161, v159);
      v161.i64[1] = v159.i64[0];
      v130[-4] = v161;
      v130[-3] = v165;
      v166 = vzip2q_s64(v162, v160);
      v162.i64[1] = v160.i64[0];
      v130[-2] = v162;
      v130[-1] = v166;
      v167 = *v123++;
      v168 = vmaxq_s16(v167, v131);
      v169 = *v126++;
      v170 = vminq_s16(vmaxq_s16(v169, v131), v132);
      v171 = *v127++;
      v172 = vaddq_s16(vminq_s16(v168, v132), v133);
      v173 = vaddq_s16(v170, v134);
      v174 = vaddq_s16(vminq_s16(vmaxq_s16(v171, v131), v132), v134);
      v175 = vcltzq_s16(v172);
      v176 = vzip1q_s16(v172, v175);
      v177 = vzip2q_s16(v172, v175);
      v178 = vmulq_f32(vcvtq_f32_u32(vzip1q_s16(v173, 0)), v135);
      v179 = vmulq_f32(vcvtq_f32_u32(vzip2q_s16(v173, 0)), v135);
      v180 = vmulq_f32(vcvtq_f32_s32(v176), v135);
      v181 = vmulq_f32(vcvtq_f32_u32(vzip1q_s16(v174, 0)), v135);
      v182 = vmulq_f32(vcvtq_f32_u32(vzip2q_s16(v174, 0)), v135);
      v183 = v129[1];
      v184 = vmulq_f32(vcvtq_f32_s32(v177), v135);
      v185 = vzip1q_s32(*v129, v180);
      v186 = vzip2q_s32(*v129, v180);
      v187 = vzip1q_s32(v178, v181);
      v188 = vzip2q_s32(v178, v181);
      v189 = vzip1q_s32(v183, v184);
      v190 = vzip2q_s32(v183, v184);
      v191 = vzip1q_s32(v179, v182);
      v192 = vzip2q_s32(v179, v182);
      v193 = vzip2q_s64(v185, v187);
      v185.i64[1] = v187.i64[0];
      v194 = vzip2q_s64(v186, v188);
      v186.i64[1] = v188.i64[0];
      *v130 = v185;
      v130[1] = v193;
      v195 = vzip2q_s64(v189, v191);
      v189.i64[1] = v191.i64[0];
      v130[2] = v186;
      v130[3] = v194;
      v196 = vzip2q_s64(v190, v192);
      v190.i64[1] = v192.i64[0];
      v130[4] = v189;
      v130[5] = v195;
      v130[6] = v190;
      v130[7] = v196;
      --v128;
      v129 = (v129 + a6);
      v130 = (v130 + a3);
    }

    while (v128 > 1);
  }

  return result;
}

uint64_t from_444_to_r4fl<8,8,(AlphaOutputMethod)1,true>(uint64_t result, int16x8_t *a2, int a3, int a4, int32x4_t *a5, unsigned int a6)
{
  if (a4 <= 8)
  {
    v6 = 0;
  }

  else
  {
    v6 = a4 - 8;
  }

  v7 = a4 - v6;
  if (!v6)
  {
    v123 = a2 + 8;
    v124 = a2 + 32;
    v125 = a2 + 40;
    v126 = a2 + 64;
    v127 = a2 + 72;
    if (v7 < 1)
    {
      return result;
    }

    goto LABEL_10;
  }

  v8 = 8 * a6;
  v9 = a4 - 7;
  v10.i64[0] = 0xF000F000F000F000;
  v10.i64[1] = 0xF000F000F000F000;
  v11 = vdupq_n_s16(0xFE0u);
  v12.i64[0] = 0xE000E000E000E00;
  v12.i64[1] = 0xE000E000E000E00;
  v13.i64[0] = 0x1000100010001000;
  v13.i64[1] = 0x1000100010001000;
  v14 = vdupq_n_s32(0x39008081u);
  do
  {
    v15 = vaddq_s16(vminq_s16(vmaxq_s16(*a2, v10), v11), v12);
    v16 = vaddq_s16(vminq_s16(vmaxq_s16(a2[32], v10), v11), v13);
    v17 = vaddq_s16(vminq_s16(vmaxq_s16(a2[40], v10), v11), v13);
    v18 = vcltzq_s16(v15);
    v19 = vzip1q_s16(v15, v18);
    v20 = vzip2q_s16(v15, v18);
    v21 = vmulq_f32(vcvtq_f32_s32(v19), v14);
    v22 = vmulq_f32(vcvtq_f32_u32(vzip1q_s16(v16, 0)), v14);
    v23 = vmulq_f32(vcvtq_f32_u32(vzip2q_s16(v16, 0)), v14);
    v24 = vmulq_f32(vcvtq_f32_u32(vzip1q_s16(v17, 0)), v14);
    v25 = vmulq_f32(vcvtq_f32_s32(v20), v14);
    v26 = vmulq_f32(vcvtq_f32_u32(vzip2q_s16(v17, 0)), v14);
    v27 = a5[1];
    v28 = vzip1q_s32(*a5, v21);
    v29 = vzip2q_s32(*a5, v21);
    v30 = vzip1q_s32(v22, v24);
    v31 = vzip2q_s32(v22, v24);
    v32 = vzip1q_s32(v27, v25);
    v33 = vzip1q_s32(v23, v26);
    v34 = vzip2q_s32(v23, v26);
    v35 = vzip2q_s32(v27, v25);
    v36 = vzip2q_s64(v28, v30);
    v28.i64[1] = v30.i64[0];
    *result = v28;
    *(result + 16) = v36;
    v37 = vzip2q_s64(v29, v31);
    v29.i64[1] = v31.i64[0];
    *(result + 32) = v29;
    *(result + 48) = v37;
    v38 = vzip2q_s64(v32, v33);
    v32.i64[1] = v33.i64[0];
    *(result + 64) = v32;
    *(result + 80) = v38;
    v39 = vzip2q_s64(v35, v34);
    v35.i64[1] = v34.i64[0];
    *(result + 96) = v35;
    *(result + 112) = v39;
    v40 = vaddq_s16(vminq_s16(vmaxq_s16(a2[8], v10), v11), v12);
    v41 = vaddq_s16(vminq_s16(vmaxq_s16(a2[64], v10), v11), v13);
    v42 = vaddq_s16(vminq_s16(vmaxq_s16(a2[72], v10), v11), v13);
    v43 = vcltzq_s16(v40);
    v44 = vzip1q_s16(v40, v43);
    v45 = vzip2q_s16(v40, v43);
    v46 = vcvtq_f32_s32(v44);
    v47 = vmulq_f32(vcvtq_f32_u32(vzip1q_s16(v41, 0)), v14);
    v48 = vmulq_f32(v46, v14);
    v49 = vmulq_f32(vcvtq_f32_u32(vzip2q_s16(v41, 0)), v14);
    v50 = vmulq_f32(vcvtq_f32_u32(vzip1q_s16(v42, 0)), v14);
    v51 = vmulq_f32(vcvtq_f32_s32(v45), v14);
    v52 = vmulq_f32(vcvtq_f32_u32(vzip2q_s16(v42, 0)), v14);
    v53 = a5[2];
    v54 = a5[3];
    v55 = vzip1q_s32(v53, v48);
    v56 = vzip1q_s32(v47, v50);
    v57 = vzip2q_s32(v53, v48);
    v58 = vzip2q_s32(v47, v50);
    v59 = vzip1q_s32(v54, v51);
    v60 = vzip2q_s32(v54, v51);
    v61 = vzip1q_s32(v49, v52);
    v62 = vzip2q_s32(v49, v52);
    v63 = vzip2q_s64(v55, v56);
    v55.i64[1] = v56.i64[0];
    v64 = vzip2q_s64(v57, v58);
    *(result + 128) = v55;
    *(result + 144) = v63;
    v57.i64[1] = v58.i64[0];
    v65 = vzip2q_s64(v59, v61);
    *(result + 160) = v57;
    *(result + 176) = v64;
    v59.i64[1] = v61.i64[0];
    v66 = vzip2q_s64(v60, v62);
    *(result + 192) = v59;
    *(result + 208) = v65;
    v60.i64[1] = v62.i64[0];
    *(result + 224) = v60;
    *(result + 240) = v66;
    v67 = vaddq_s16(vminq_s16(vmaxq_s16(a2[16], v10), v11), v12);
    v68 = vaddq_s16(vminq_s16(vmaxq_s16(a2[48], v10), v11), v13);
    v69 = vaddq_s16(vminq_s16(vmaxq_s16(a2[56], v10), v11), v13);
    v70 = vcltzq_s16(v67);
    v71 = vzip1q_s16(v67, v70);
    v72 = vzip2q_s16(v67, v70);
    v73 = vcvtq_f32_s32(v71);
    v74 = vmulq_f32(vcvtq_f32_u32(vzip1q_s16(v68, 0)), v14);
    v75 = vmulq_f32(v73, v14);
    v76 = vmulq_f32(vcvtq_f32_u32(vzip2q_s16(v68, 0)), v14);
    v77 = vmulq_f32(vcvtq_f32_u32(vzip1q_s16(v69, 0)), v14);
    v78 = vmulq_f32(vcvtq_f32_s32(v72), v14);
    v79 = vmulq_f32(vcvtq_f32_u32(vzip2q_s16(v69, 0)), v14);
    v80 = *(a5 + v8);
    v81 = *(&a5[1] + v8);
    v82 = vzip1q_s32(v80, v75);
    v83 = vzip1q_s32(v74, v77);
    v84 = vzip2q_s32(v80, v75);
    v85 = vzip2q_s32(v74, v77);
    v86 = vzip1q_s32(v81, v78);
    v87 = vzip2q_s32(v81, v78);
    v88 = vzip1q_s32(v76, v79);
    v89 = vzip2q_s32(v76, v79);
    v90 = (result + 8 * a3);
    v91 = vzip2q_s64(v82, v83);
    v82.i64[1] = v83.i64[0];
    *v90 = v82;
    v90[1] = v91;
    v92 = vzip2q_s64(v84, v85);
    v84.i64[1] = v85.i64[0];
    v90[2] = v84;
    v90[3] = v92;
    v93 = vzip2q_s64(v86, v88);
    v86.i64[1] = v88.i64[0];
    v90[4] = v86;
    v90[5] = v93;
    v94 = vzip2q_s64(v87, v89);
    v87.i64[1] = v89.i64[0];
    v90[6] = v87;
    v90[7] = v94;
    v95 = vaddq_s16(vminq_s16(vmaxq_s16(a2[24], v10), v11), v12);
    v96 = vaddq_s16(vminq_s16(vmaxq_s16(a2[80], v10), v11), v13);
    v97 = vaddq_s16(vminq_s16(vmaxq_s16(a2[88], v10), v11), v13);
    v98 = vcltzq_s16(v95);
    v99 = vzip1q_s16(v95, v98);
    v100 = vzip2q_s16(v95, v98);
    v101 = vcvtq_f32_s32(v99);
    v102 = vmulq_f32(vcvtq_f32_u32(vzip1q_s16(v96, 0)), v14);
    v103 = vmulq_f32(v101, v14);
    v104 = vmulq_f32(vcvtq_f32_u32(vzip2q_s16(v96, 0)), v14);
    v105 = vmulq_f32(vcvtq_f32_u32(vzip1q_s16(v97, 0)), v14);
    v106 = vmulq_f32(vcvtq_f32_s32(v100), v14);
    v107 = vmulq_f32(vcvtq_f32_u32(vzip2q_s16(v97, 0)), v14);
    v108 = *(&a5[2] + v8);
    v109 = *(&a5[3] + v8);
    v110 = vzip1q_s32(v108, v103);
    v111 = vzip1q_s32(v102, v105);
    v112 = vzip2q_s32(v108, v103);
    v113 = vzip2q_s32(v102, v105);
    v114 = vzip1q_s32(v109, v106);
    v115 = vzip2q_s32(v109, v106);
    v116 = vzip1q_s32(v104, v107);
    v117 = vzip2q_s64(v110, v111);
    v110.i64[1] = v111.i64[0];
    v118 = vzip2q_s64(v112, v113);
    v112.i64[1] = v113.i64[0];
    v119 = vzip2q_s32(v104, v107);
    v120 = vzip2q_s64(v114, v116);
    v114.i64[1] = v116.i64[0];
    v90[8] = v110;
    v90[9] = v117;
    v121 = vzip2q_s64(v115, v119);
    v115.i64[1] = v119.i64[0];
    v90[10] = v112;
    v90[11] = v118;
    v122 = a2 + 1;
    result += a3;
    --v7;
    a5 = (a5 + a6);
    v90[12] = v114;
    v90[13] = v120;
    v90[14] = v115;
    v90[15] = v121;
    --v9;
    ++a2;
  }

  while (v9 > 1);
  v123 = v122 + 8;
  v124 = v122 + 32;
  v125 = v122 + 40;
  v126 = v122 + 64;
  v127 = v122 + 72;
  a2 = v122;
  if (v7 >= 1)
  {
LABEL_10:
    v128 = v7 + 1;
    v129 = a5 + 2;
    v130 = (result + 128);
    v131.i64[0] = 0xF000F000F000F000;
    v131.i64[1] = 0xF000F000F000F000;
    v132 = vdupq_n_s16(0xFE0u);
    v133.i64[0] = 0xE000E000E000E00;
    v133.i64[1] = 0xE000E000E000E00;
    v134.i64[0] = 0x1000100010001000;
    v134.i64[1] = 0x1000100010001000;
    result = 956334209;
    v135 = vdupq_n_s32(0x39008081u);
    do
    {
      v136 = *a2++;
      v137 = vminq_s16(vmaxq_s16(v136, v131), v132);
      v138 = *v124++;
      v139 = vminq_s16(vmaxq_s16(v138, v131), v132);
      v140 = *v125++;
      v141 = vaddq_s16(v137, v133);
      v142 = vaddq_s16(v139, v134);
      v143 = vaddq_s16(vminq_s16(vmaxq_s16(v140, v131), v132), v134);
      v144 = vcltzq_s16(v141);
      v145 = vzip1q_s16(v141, v144);
      v146 = vzip2q_s16(v141, v144);
      v147 = vmulq_f32(vcvtq_f32_s32(v145), v135);
      v148 = vmulq_f32(vcvtq_f32_u32(vzip1q_s16(v142, 0)), v135);
      v149 = vmulq_f32(vcvtq_f32_u32(vzip2q_s16(v142, 0)), v135);
      v150 = vmulq_f32(vcvtq_f32_u32(vzip1q_s16(v143, 0)), v135);
      v151 = vmulq_f32(vcvtq_f32_s32(v146), v135);
      v152 = vmulq_f32(vcvtq_f32_u32(vzip2q_s16(v143, 0)), v135);
      v153 = v129[-2];
      v154 = v129[-1];
      v155 = vzip1q_s32(v153, v147);
      v156 = vzip2q_s32(v153, v147);
      v157 = vzip1q_s32(v148, v150);
      v158 = vzip2q_s32(v148, v150);
      v159 = vzip1q_s32(v149, v152);
      v160 = vzip2q_s32(v149, v152);
      v161 = vzip1q_s32(v154, v151);
      v162 = vzip2q_s32(v154, v151);
      v163 = vzip2q_s64(v155, v157);
      v155.i64[1] = v157.i64[0];
      v130[-8] = v155;
      v130[-7] = v163;
      v164 = vzip2q_s64(v156, v158);
      v156.i64[1] = v158.i64[0];
      v130[-6] = v156;
      v130[-5] = v164;
      v165 = vzip2q_s64(v161, v159);
      v161.i64[1] = v159.i64[0];
      v130[-4] = v161;
      v130[-3] = v165;
      v166 = vzip2q_s64(v162, v160);
      v162.i64[1] = v160.i64[0];
      v130[-2] = v162;
      v130[-1] = v166;
      v167 = *v123++;
      v168 = vmaxq_s16(v167, v131);
      v169 = *v126++;
      v170 = vminq_s16(vmaxq_s16(v169, v131), v132);
      v171 = *v127++;
      v172 = vaddq_s16(vminq_s16(v168, v132), v133);
      v173 = vaddq_s16(v170, v134);
      v174 = vaddq_s16(vminq_s16(vmaxq_s16(v171, v131), v132), v134);
      v175 = vcltzq_s16(v172);
      v176 = vzip1q_s16(v172, v175);
      v177 = vzip2q_s16(v172, v175);
      v178 = vmulq_f32(vcvtq_f32_u32(vzip1q_s16(v173, 0)), v135);
      v179 = vmulq_f32(vcvtq_f32_u32(vzip2q_s16(v173, 0)), v135);
      v180 = vmulq_f32(vcvtq_f32_s32(v176), v135);
      v181 = vmulq_f32(vcvtq_f32_u32(vzip1q_s16(v174, 0)), v135);
      v182 = vmulq_f32(vcvtq_f32_u32(vzip2q_s16(v174, 0)), v135);
      v183 = v129[1];
      v184 = vmulq_f32(vcvtq_f32_s32(v177), v135);
      v185 = vzip1q_s32(*v129, v180);
      v186 = vzip2q_s32(*v129, v180);
      v187 = vzip1q_s32(v178, v181);
      v188 = vzip2q_s32(v178, v181);
      v189 = vzip1q_s32(v183, v184);
      v190 = vzip2q_s32(v183, v184);
      v191 = vzip1q_s32(v179, v182);
      v192 = vzip2q_s32(v179, v182);
      v193 = vzip2q_s64(v185, v187);
      v185.i64[1] = v187.i64[0];
      v194 = vzip2q_s64(v186, v188);
      v186.i64[1] = v188.i64[0];
      *v130 = v185;
      v130[1] = v193;
      v195 = vzip2q_s64(v189, v191);
      v189.i64[1] = v191.i64[0];
      v130[2] = v186;
      v130[3] = v194;
      v196 = vzip2q_s64(v190, v192);
      v190.i64[1] = v192.i64[0];
      v130[4] = v189;
      v130[5] = v195;
      v130[6] = v190;
      v130[7] = v196;
      --v128;
      v129 = (v129 + a6);
      v130 = (v130 + a3);
    }

    while (v128 > 1);
  }

  return result;
}

int64x2_t *from_444_to_r4fl<8,8,(AlphaOutputMethod)2,false>(int64x2_t *result, int16x8_t *a2, int a3, int a4)
{
  if (a4 <= 8)
  {
    v4 = 0;
  }

  else
  {
    v4 = a4 - 8;
  }

  v5 = a4 - v4;
  __asm { FMOV            V0.4S, #1.0 }

  if (!v4)
  {
    v115 = a2 + 8;
    v116 = a2 + 32;
    v117 = a2 + 40;
    v118 = a2 + 64;
    v119 = a2 + 72;
    if (v5 < 1)
    {
      return result;
    }

    goto LABEL_10;
  }

  v11 = a4 - 7;
  v12.i64[0] = 0xF000F000F000F000;
  v12.i64[1] = 0xF000F000F000F000;
  v13 = vdupq_n_s16(0xFE0u);
  v14.i64[0] = 0xE000E000E000E00;
  v14.i64[1] = 0xE000E000E000E00;
  v15.i64[0] = 0x1000100010001000;
  v15.i64[1] = 0x1000100010001000;
  v16 = vdupq_n_s32(0x39008081u);
  do
  {
    v17 = vaddq_s16(vminq_s16(vmaxq_s16(*a2, v12), v13), v14);
    v18 = vaddq_s16(vminq_s16(vmaxq_s16(a2[32], v12), v13), v15);
    v19 = vcltzq_s16(v17);
    v20 = vaddq_s16(vminq_s16(vmaxq_s16(a2[40], v12), v13), v15);
    v21 = vzip1q_s16(v17, v19);
    v22 = vzip2q_s16(v17, v19);
    v23 = vcvtq_f32_s32(v21);
    v24 = vmulq_f32(vcvtq_f32_u32(vzip1q_s16(v18, 0)), v16);
    v25 = vmulq_f32(v23, v16);
    v26 = vmulq_f32(vcvtq_f32_u32(vzip2q_s16(v18, 0)), v16);
    v27 = vmulq_f32(vcvtq_f32_u32(vzip1q_s16(v20, 0)), v16);
    v28 = vmulq_f32(vcvtq_f32_u32(vzip2q_s16(v20, 0)), v16);
    v29 = vmulq_f32(vcvtq_f32_s32(v22), v16);
    v30 = vzip1q_s32(_Q0, v25);
    v31 = vzip2q_s32(_Q0, v25);
    v32 = vzip1q_s32(v24, v27);
    v33 = vzip2q_s32(v24, v27);
    v34 = vzip1q_s32(_Q0, v29);
    v35 = vzip2q_s32(_Q0, v29);
    v36 = vzip1q_s32(v26, v28);
    v37 = vzip2q_s32(v26, v28);
    v38 = vzip2q_s64(v30, v32);
    v30.i64[1] = v32.i64[0];
    v39 = vzip2q_s64(v31, v33);
    v31.i64[1] = v33.i64[0];
    *result = v30;
    result[1] = v38;
    v40 = vzip2q_s64(v34, v36);
    v34.i64[1] = v36.i64[0];
    result[2] = v31;
    result[3] = v39;
    v41 = vzip2q_s64(v35, v37);
    v35.i64[1] = v37.i64[0];
    result[4] = v34;
    result[5] = v40;
    result[6] = v35;
    result[7] = v41;
    v42 = vaddq_s16(vminq_s16(vmaxq_s16(a2[8], v12), v13), v14);
    v43 = vaddq_s16(vminq_s16(vmaxq_s16(a2[64], v12), v13), v15);
    v44 = vaddq_s16(vminq_s16(vmaxq_s16(a2[72], v12), v13), v15);
    v45 = vcltzq_s16(v42);
    v46 = vmulq_f32(vcvtq_f32_s32(vzip1q_s16(v42, v45)), v16);
    v47 = vmulq_f32(vcvtq_f32_u32(vzip1q_s16(v43, 0)), v16);
    v48 = vmulq_f32(vcvtq_f32_u32(vzip2q_s16(v43, 0)), v16);
    v49 = vmulq_f32(vcvtq_f32_s32(vzip2q_s16(v42, v45)), v16);
    v50 = vmulq_f32(vcvtq_f32_u32(vzip1q_s16(v44, 0)), v16);
    v51 = vmulq_f32(vcvtq_f32_u32(vzip2q_s16(v44, 0)), v16);
    v52 = vzip1q_s32(_Q0, v46);
    v53 = vzip1q_s32(v47, v50);
    v54 = vzip2q_s32(_Q0, v46);
    v55 = vzip2q_s32(v47, v50);
    v56 = vzip1q_s32(_Q0, v49);
    v57 = vzip2q_s32(_Q0, v49);
    v58 = vzip1q_s32(v48, v51);
    v59 = vzip2q_s32(v48, v51);
    v60 = vzip2q_s64(v52, v53);
    v52.i64[1] = v53.i64[0];
    v61 = vzip2q_s64(v54, v55);
    result[8] = v52;
    result[9] = v60;
    v54.i64[1] = v55.i64[0];
    v62 = vzip2q_s64(v56, v58);
    result[10] = v54;
    result[11] = v61;
    v56.i64[1] = v58.i64[0];
    v63 = vzip2q_s64(v57, v59);
    result[12] = v56;
    result[13] = v62;
    v57.i64[1] = v59.i64[0];
    result[14] = v57;
    result[15] = v63;
    v64 = (result + 8 * a3);
    v65 = vaddq_s16(vminq_s16(vmaxq_s16(a2[16], v12), v13), v14);
    v66 = vaddq_s16(vminq_s16(vmaxq_s16(a2[48], v12), v13), v15);
    v67 = vaddq_s16(vminq_s16(vmaxq_s16(a2[56], v12), v13), v15);
    v68 = vcltzq_s16(v65);
    v69 = vzip1q_s16(v65, v68);
    v70 = vzip2q_s16(v65, v68);
    v71 = vcvtq_f32_s32(v69);
    v72 = vmulq_f32(vcvtq_f32_u32(vzip1q_s16(v66, 0)), v16);
    v73 = vmulq_f32(v71, v16);
    v74 = vmulq_f32(vcvtq_f32_u32(vzip2q_s16(v66, 0)), v16);
    v75 = vmulq_f32(vcvtq_f32_u32(vzip1q_s16(v67, 0)), v16);
    v76 = vmulq_f32(vcvtq_f32_s32(v70), v16);
    v77 = vmulq_f32(vcvtq_f32_u32(vzip2q_s16(v67, 0)), v16);
    v78 = vzip1q_s32(_Q0, v73);
    v79 = vzip2q_s32(_Q0, v73);
    v80 = vzip1q_s32(v72, v75);
    v81 = vzip2q_s32(v72, v75);
    v82 = vzip1q_s32(_Q0, v76);
    v83 = vzip2q_s32(_Q0, v76);
    v84 = vzip1q_s32(v74, v77);
    v85 = vzip2q_s64(v78, v80);
    v78.i64[1] = v80.i64[0];
    v86 = vzip2q_s32(v74, v77);
    v87 = vzip2q_s64(v79, v81);
    v79.i64[1] = v81.i64[0];
    *v64 = v78;
    v64[1] = v85;
    v88 = vzip2q_s64(v82, v84);
    v82.i64[1] = v84.i64[0];
    v64[2] = v79;
    v64[3] = v87;
    v89 = vzip2q_s64(v83, v86);
    v83.i64[1] = v86.i64[0];
    v64[4] = v82;
    v64[5] = v88;
    v64[6] = v83;
    v64[7] = v89;
    v90 = vaddq_s16(vminq_s16(vmaxq_s16(a2[24], v12), v13), v14);
    v91 = vaddq_s16(vminq_s16(vmaxq_s16(a2[80], v12), v13), v15);
    v92 = vaddq_s16(vminq_s16(vmaxq_s16(a2[88], v12), v13), v15);
    v93 = vcltzq_s16(v90);
    v94 = vzip1q_s16(v90, v93);
    v95 = vzip2q_s16(v90, v93);
    v96 = vmulq_f32(vcvtq_f32_s32(v94), v16);
    v97 = vmulq_f32(vcvtq_f32_u32(vzip1q_s16(v91, 0)), v16);
    v98 = vmulq_f32(vcvtq_f32_u32(vzip2q_s16(v91, 0)), v16);
    v99 = vmulq_f32(vcvtq_f32_s32(v95), v16);
    v100 = vmulq_f32(vcvtq_f32_u32(vzip1q_s16(v92, 0)), v16);
    v101 = vmulq_f32(vcvtq_f32_u32(vzip2q_s16(v92, 0)), v16);
    v102 = vzip1q_s32(_Q0, v96);
    v103 = vzip2q_s32(_Q0, v96);
    v104 = vzip1q_s32(v97, v100);
    v105 = vzip2q_s32(v97, v100);
    v106 = vzip1q_s32(_Q0, v99);
    v107 = vzip1q_s32(v98, v101);
    v108 = vzip2q_s32(v98, v101);
    v109 = vzip2q_s32(_Q0, v99);
    v110 = vzip2q_s64(v102, v104);
    v111 = vzip2q_s64(v103, v105);
    v102.i64[1] = v104.i64[0];
    v103.i64[1] = v105.i64[0];
    v112 = vzip2q_s64(v106, v107);
    v64[8] = v102;
    v64[9] = v110;
    v106.i64[1] = v107.i64[0];
    v113 = vzip2q_s64(v109, v108);
    v64[10] = v103;
    v64[11] = v111;
    v109.i64[1] = v108.i64[0];
    v114 = a2 + 1;
    result = (result + a3);
    --v5;
    v64[12] = v106;
    v64[13] = v112;
    v64[14] = v109;
    v64[15] = v113;
    --v11;
    ++a2;
  }

  while (v11 > 1);
  v115 = v114 + 8;
  v116 = v114 + 32;
  v117 = v114 + 40;
  v118 = v114 + 64;
  v119 = v114 + 72;
  a2 = v114;
  if (v5 >= 1)
  {
LABEL_10:
    v120 = v5 + 1;
    v121 = result + 8;
    v122.i64[0] = 0xF000F000F000F000;
    v122.i64[1] = 0xF000F000F000F000;
    v123 = vdupq_n_s16(0xFE0u);
    v124.i64[0] = 0xE000E000E000E00;
    v124.i64[1] = 0xE000E000E000E00;
    v125.i64[0] = 0x1000100010001000;
    v125.i64[1] = 0x1000100010001000;
    v126 = vdupq_n_s32(0x39008081u);
    do
    {
      v127 = *a2++;
      v128 = vmaxq_s16(v127, v122);
      v129 = *v116++;
      v130 = vmaxq_s16(v129, v122);
      v131 = *v117++;
      v132 = vaddq_s16(vminq_s16(v128, v123), v124);
      v133 = vaddq_s16(vminq_s16(v130, v123), v125);
      v134 = vaddq_s16(vminq_s16(vmaxq_s16(v131, v122), v123), v125);
      v135 = vcltzq_s16(v132);
      v136 = vzip1q_s16(v132, v135);
      v137 = vzip2q_s16(v132, v135);
      v138 = vcvtq_f32_s32(v136);
      v139 = vmulq_f32(vcvtq_f32_u32(vzip1q_s16(v133, 0)), v126);
      v140 = vmulq_f32(v138, v126);
      v141 = vmulq_f32(vcvtq_f32_u32(vzip2q_s16(v133, 0)), v126);
      v142 = vmulq_f32(vcvtq_f32_u32(vzip1q_s16(v134, 0)), v126);
      v143 = vmulq_f32(vcvtq_f32_s32(v137), v126);
      v144 = vmulq_f32(vcvtq_f32_u32(vzip2q_s16(v134, 0)), v126);
      v145 = vzip1q_s32(_Q0, v140);
      v146 = vzip2q_s32(_Q0, v140);
      v147 = vzip1q_s32(v139, v142);
      v148 = vzip2q_s32(v139, v142);
      v149 = vzip1q_s32(_Q0, v143);
      v150 = vzip2q_s32(_Q0, v143);
      v151 = vzip1q_s32(v141, v144);
      v152 = vzip2q_s64(v145, v147);
      v145.i64[1] = v147.i64[0];
      v153 = vzip2q_s32(v141, v144);
      v154 = vzip2q_s64(v146, v148);
      v146.i64[1] = v148.i64[0];
      v121[-8] = v145;
      v121[-7] = v152;
      v155 = vzip2q_s64(v149, v151);
      v149.i64[1] = v151.i64[0];
      v121[-6] = v146;
      v121[-5] = v154;
      v156 = vzip2q_s64(v150, v153);
      v150.i64[1] = v153.i64[0];
      v121[-4] = v149;
      v121[-3] = v155;
      v121[-2] = v150;
      v121[-1] = v156;
      v157 = *v115++;
      v158 = vmaxq_s16(v157, v122);
      v159 = *v118++;
      v160 = vmaxq_s16(v159, v122);
      v161 = *v119++;
      v162 = vaddq_s16(vminq_s16(v158, v123), v124);
      v163 = vaddq_s16(vminq_s16(v160, v123), v125);
      v164 = vaddq_s16(vminq_s16(vmaxq_s16(v161, v122), v123), v125);
      v165 = vcltzq_s16(v162);
      v166 = vzip1q_s16(v162, v165);
      v167 = vzip2q_s16(v162, v165);
      v168 = vcvtq_f32_s32(v166);
      v169 = vmulq_f32(vcvtq_f32_u32(vzip1q_s16(v163, 0)), v126);
      v170 = vmulq_f32(v168, v126);
      v171 = vmulq_f32(vcvtq_f32_u32(vzip2q_s16(v163, 0)), v126);
      v172 = vmulq_f32(vcvtq_f32_u32(vzip1q_s16(v164, 0)), v126);
      v173 = vmulq_f32(vcvtq_f32_s32(v167), v126);
      v174 = vmulq_f32(vcvtq_f32_u32(vzip2q_s16(v164, 0)), v126);
      v175 = vzip1q_s32(_Q0, v170);
      v176 = vzip2q_s32(_Q0, v170);
      v177 = vzip1q_s32(v169, v172);
      v178 = vzip2q_s32(v169, v172);
      v179 = vzip1q_s32(_Q0, v173);
      v180 = vzip2q_s32(_Q0, v173);
      v181 = vzip1q_s32(v171, v174);
      v182 = vzip2q_s64(v175, v177);
      v175.i64[1] = v177.i64[0];
      v183 = vzip2q_s32(v171, v174);
      v184 = vzip2q_s64(v176, v178);
      v176.i64[1] = v178.i64[0];
      *v121 = v175;
      v121[1] = v182;
      v185 = vzip2q_s64(v179, v181);
      v179.i64[1] = v181.i64[0];
      v121[2] = v176;
      v121[3] = v184;
      v186 = vzip2q_s64(v180, v183);
      v180.i64[1] = v183.i64[0];
      v121[4] = v179;
      v121[5] = v185;
      v121[6] = v180;
      v121[7] = v186;
      --v120;
      v121 = (v121 + a3);
    }

    while (v120 > 1);
  }

  return result;
}

int64x2_t *from_444_to_r4fl<8,8,(AlphaOutputMethod)2,true>(int64x2_t *result, int16x8_t *a2, int a3, int a4)
{
  if (a4 <= 8)
  {
    v4 = 0;
  }

  else
  {
    v4 = a4 - 8;
  }

  v5 = a4 - v4;
  __asm { FMOV            V0.4S, #1.0 }

  if (!v4)
  {
    v115 = a2 + 8;
    v116 = a2 + 32;
    v117 = a2 + 40;
    v118 = a2 + 64;
    v119 = a2 + 72;
    if (v5 < 1)
    {
      return result;
    }

    goto LABEL_10;
  }

  v11 = a4 - 7;
  v12.i64[0] = 0xF000F000F000F000;
  v12.i64[1] = 0xF000F000F000F000;
  v13 = vdupq_n_s16(0xFE0u);
  v14.i64[0] = 0xE000E000E000E00;
  v14.i64[1] = 0xE000E000E000E00;
  v15.i64[0] = 0x1000100010001000;
  v15.i64[1] = 0x1000100010001000;
  v16 = vdupq_n_s32(0x39008081u);
  do
  {
    v17 = vaddq_s16(vminq_s16(vmaxq_s16(*a2, v12), v13), v14);
    v18 = vaddq_s16(vminq_s16(vmaxq_s16(a2[32], v12), v13), v15);
    v19 = vcltzq_s16(v17);
    v20 = vaddq_s16(vminq_s16(vmaxq_s16(a2[40], v12), v13), v15);
    v21 = vzip1q_s16(v17, v19);
    v22 = vzip2q_s16(v17, v19);
    v23 = vcvtq_f32_s32(v21);
    v24 = vmulq_f32(vcvtq_f32_u32(vzip1q_s16(v18, 0)), v16);
    v25 = vmulq_f32(v23, v16);
    v26 = vmulq_f32(vcvtq_f32_u32(vzip2q_s16(v18, 0)), v16);
    v27 = vmulq_f32(vcvtq_f32_u32(vzip1q_s16(v20, 0)), v16);
    v28 = vmulq_f32(vcvtq_f32_u32(vzip2q_s16(v20, 0)), v16);
    v29 = vmulq_f32(vcvtq_f32_s32(v22), v16);
    v30 = vzip1q_s32(_Q0, v25);
    v31 = vzip2q_s32(_Q0, v25);
    v32 = vzip1q_s32(v24, v27);
    v33 = vzip2q_s32(v24, v27);
    v34 = vzip1q_s32(_Q0, v29);
    v35 = vzip2q_s32(_Q0, v29);
    v36 = vzip1q_s32(v26, v28);
    v37 = vzip2q_s32(v26, v28);
    v38 = vzip2q_s64(v30, v32);
    v30.i64[1] = v32.i64[0];
    v39 = vzip2q_s64(v31, v33);
    v31.i64[1] = v33.i64[0];
    *result = v30;
    result[1] = v38;
    v40 = vzip2q_s64(v34, v36);
    v34.i64[1] = v36.i64[0];
    result[2] = v31;
    result[3] = v39;
    v41 = vzip2q_s64(v35, v37);
    v35.i64[1] = v37.i64[0];
    result[4] = v34;
    result[5] = v40;
    result[6] = v35;
    result[7] = v41;
    v42 = vaddq_s16(vminq_s16(vmaxq_s16(a2[8], v12), v13), v14);
    v43 = vaddq_s16(vminq_s16(vmaxq_s16(a2[64], v12), v13), v15);
    v44 = vaddq_s16(vminq_s16(vmaxq_s16(a2[72], v12), v13), v15);
    v45 = vcltzq_s16(v42);
    v46 = vmulq_f32(vcvtq_f32_s32(vzip1q_s16(v42, v45)), v16);
    v47 = vmulq_f32(vcvtq_f32_u32(vzip1q_s16(v43, 0)), v16);
    v48 = vmulq_f32(vcvtq_f32_u32(vzip2q_s16(v43, 0)), v16);
    v49 = vmulq_f32(vcvtq_f32_s32(vzip2q_s16(v42, v45)), v16);
    v50 = vmulq_f32(vcvtq_f32_u32(vzip1q_s16(v44, 0)), v16);
    v51 = vmulq_f32(vcvtq_f32_u32(vzip2q_s16(v44, 0)), v16);
    v52 = vzip1q_s32(_Q0, v46);
    v53 = vzip1q_s32(v47, v50);
    v54 = vzip2q_s32(_Q0, v46);
    v55 = vzip2q_s32(v47, v50);
    v56 = vzip1q_s32(_Q0, v49);
    v57 = vzip2q_s32(_Q0, v49);
    v58 = vzip1q_s32(v48, v51);
    v59 = vzip2q_s32(v48, v51);
    v60 = vzip2q_s64(v52, v53);
    v52.i64[1] = v53.i64[0];
    v61 = vzip2q_s64(v54, v55);
    result[8] = v52;
    result[9] = v60;
    v54.i64[1] = v55.i64[0];
    v62 = vzip2q_s64(v56, v58);
    result[10] = v54;
    result[11] = v61;
    v56.i64[1] = v58.i64[0];
    v63 = vzip2q_s64(v57, v59);
    result[12] = v56;
    result[13] = v62;
    v57.i64[1] = v59.i64[0];
    result[14] = v57;
    result[15] = v63;
    v64 = (result + 8 * a3);
    v65 = vaddq_s16(vminq_s16(vmaxq_s16(a2[16], v12), v13), v14);
    v66 = vaddq_s16(vminq_s16(vmaxq_s16(a2[48], v12), v13), v15);
    v67 = vaddq_s16(vminq_s16(vmaxq_s16(a2[56], v12), v13), v15);
    v68 = vcltzq_s16(v65);
    v69 = vzip1q_s16(v65, v68);
    v70 = vzip2q_s16(v65, v68);
    v71 = vcvtq_f32_s32(v69);
    v72 = vmulq_f32(vcvtq_f32_u32(vzip1q_s16(v66, 0)), v16);
    v73 = vmulq_f32(v71, v16);
    v74 = vmulq_f32(vcvtq_f32_u32(vzip2q_s16(v66, 0)), v16);
    v75 = vmulq_f32(vcvtq_f32_u32(vzip1q_s16(v67, 0)), v16);
    v76 = vmulq_f32(vcvtq_f32_s32(v70), v16);
    v77 = vmulq_f32(vcvtq_f32_u32(vzip2q_s16(v67, 0)), v16);
    v78 = vzip1q_s32(_Q0, v73);
    v79 = vzip2q_s32(_Q0, v73);
    v80 = vzip1q_s32(v72, v75);
    v81 = vzip2q_s32(v72, v75);
    v82 = vzip1q_s32(_Q0, v76);
    v83 = vzip2q_s32(_Q0, v76);
    v84 = vzip1q_s32(v74, v77);
    v85 = vzip2q_s64(v78, v80);
    v78.i64[1] = v80.i64[0];
    v86 = vzip2q_s32(v74, v77);
    v87 = vzip2q_s64(v79, v81);
    v79.i64[1] = v81.i64[0];
    *v64 = v78;
    v64[1] = v85;
    v88 = vzip2q_s64(v82, v84);
    v82.i64[1] = v84.i64[0];
    v64[2] = v79;
    v64[3] = v87;
    v89 = vzip2q_s64(v83, v86);
    v83.i64[1] = v86.i64[0];
    v64[4] = v82;
    v64[5] = v88;
    v64[6] = v83;
    v64[7] = v89;
    v90 = vaddq_s16(vminq_s16(vmaxq_s16(a2[24], v12), v13), v14);
    v91 = vaddq_s16(vminq_s16(vmaxq_s16(a2[80], v12), v13), v15);
    v92 = vaddq_s16(vminq_s16(vmaxq_s16(a2[88], v12), v13), v15);
    v93 = vcltzq_s16(v90);
    v94 = vzip1q_s16(v90, v93);
    v95 = vzip2q_s16(v90, v93);
    v96 = vmulq_f32(vcvtq_f32_s32(v94), v16);
    v97 = vmulq_f32(vcvtq_f32_u32(vzip1q_s16(v91, 0)), v16);
    v98 = vmulq_f32(vcvtq_f32_u32(vzip2q_s16(v91, 0)), v16);
    v99 = vmulq_f32(vcvtq_f32_s32(v95), v16);
    v100 = vmulq_f32(vcvtq_f32_u32(vzip1q_s16(v92, 0)), v16);
    v101 = vmulq_f32(vcvtq_f32_u32(vzip2q_s16(v92, 0)), v16);
    v102 = vzip1q_s32(_Q0, v96);
    v103 = vzip2q_s32(_Q0, v96);
    v104 = vzip1q_s32(v97, v100);
    v105 = vzip2q_s32(v97, v100);
    v106 = vzip1q_s32(_Q0, v99);
    v107 = vzip1q_s32(v98, v101);
    v108 = vzip2q_s32(v98, v101);
    v109 = vzip2q_s32(_Q0, v99);
    v110 = vzip2q_s64(v102, v104);
    v111 = vzip2q_s64(v103, v105);
    v102.i64[1] = v104.i64[0];
    v103.i64[1] = v105.i64[0];
    v112 = vzip2q_s64(v106, v107);
    v64[8] = v102;
    v64[9] = v110;
    v106.i64[1] = v107.i64[0];
    v113 = vzip2q_s64(v109, v108);
    v64[10] = v103;
    v64[11] = v111;
    v109.i64[1] = v108.i64[0];
    v114 = a2 + 1;
    result = (result + a3);
    --v5;
    v64[12] = v106;
    v64[13] = v112;
    v64[14] = v109;
    v64[15] = v113;
    --v11;
    ++a2;
  }

  while (v11 > 1);
  v115 = v114 + 8;
  v116 = v114 + 32;
  v117 = v114 + 40;
  v118 = v114 + 64;
  v119 = v114 + 72;
  a2 = v114;
  if (v5 >= 1)
  {
LABEL_10:
    v120 = v5 + 1;
    v121 = result + 8;
    v122.i64[0] = 0xF000F000F000F000;
    v122.i64[1] = 0xF000F000F000F000;
    v123 = vdupq_n_s16(0xFE0u);
    v124.i64[0] = 0xE000E000E000E00;
    v124.i64[1] = 0xE000E000E000E00;
    v125.i64[0] = 0x1000100010001000;
    v125.i64[1] = 0x1000100010001000;
    v126 = vdupq_n_s32(0x39008081u);
    do
    {
      v127 = *a2++;
      v128 = vmaxq_s16(v127, v122);
      v129 = *v116++;
      v130 = vmaxq_s16(v129, v122);
      v131 = *v117++;
      v132 = vaddq_s16(vminq_s16(v128, v123), v124);
      v133 = vaddq_s16(vminq_s16(v130, v123), v125);
      v134 = vaddq_s16(vminq_s16(vmaxq_s16(v131, v122), v123), v125);
      v135 = vcltzq_s16(v132);
      v136 = vzip1q_s16(v132, v135);
      v137 = vzip2q_s16(v132, v135);
      v138 = vcvtq_f32_s32(v136);
      v139 = vmulq_f32(vcvtq_f32_u32(vzip1q_s16(v133, 0)), v126);
      v140 = vmulq_f32(v138, v126);
      v141 = vmulq_f32(vcvtq_f32_u32(vzip2q_s16(v133, 0)), v126);
      v142 = vmulq_f32(vcvtq_f32_u32(vzip1q_s16(v134, 0)), v126);
      v143 = vmulq_f32(vcvtq_f32_s32(v137), v126);
      v144 = vmulq_f32(vcvtq_f32_u32(vzip2q_s16(v134, 0)), v126);
      v145 = vzip1q_s32(_Q0, v140);
      v146 = vzip2q_s32(_Q0, v140);
      v147 = vzip1q_s32(v139, v142);
      v148 = vzip2q_s32(v139, v142);
      v149 = vzip1q_s32(_Q0, v143);
      v150 = vzip2q_s32(_Q0, v143);
      v151 = vzip1q_s32(v141, v144);
      v152 = vzip2q_s64(v145, v147);
      v145.i64[1] = v147.i64[0];
      v153 = vzip2q_s32(v141, v144);
      v154 = vzip2q_s64(v146, v148);
      v146.i64[1] = v148.i64[0];
      v121[-8] = v145;
      v121[-7] = v152;
      v155 = vzip2q_s64(v149, v151);
      v149.i64[1] = v151.i64[0];
      v121[-6] = v146;
      v121[-5] = v154;
      v156 = vzip2q_s64(v150, v153);
      v150.i64[1] = v153.i64[0];
      v121[-4] = v149;
      v121[-3] = v155;
      v121[-2] = v150;
      v121[-1] = v156;
      v157 = *v115++;
      v158 = vmaxq_s16(v157, v122);
      v159 = *v118++;
      v160 = vmaxq_s16(v159, v122);
      v161 = *v119++;
      v162 = vaddq_s16(vminq_s16(v158, v123), v124);
      v163 = vaddq_s16(vminq_s16(v160, v123), v125);
      v164 = vaddq_s16(vminq_s16(vmaxq_s16(v161, v122), v123), v125);
      v165 = vcltzq_s16(v162);
      v166 = vzip1q_s16(v162, v165);
      v167 = vzip2q_s16(v162, v165);
      v168 = vcvtq_f32_s32(v166);
      v169 = vmulq_f32(vcvtq_f32_u32(vzip1q_s16(v163, 0)), v126);
      v170 = vmulq_f32(v168, v126);
      v171 = vmulq_f32(vcvtq_f32_u32(vzip2q_s16(v163, 0)), v126);
      v172 = vmulq_f32(vcvtq_f32_u32(vzip1q_s16(v164, 0)), v126);
      v173 = vmulq_f32(vcvtq_f32_s32(v167), v126);
      v174 = vmulq_f32(vcvtq_f32_u32(vzip2q_s16(v164, 0)), v126);
      v175 = vzip1q_s32(_Q0, v170);
      v176 = vzip2q_s32(_Q0, v170);
      v177 = vzip1q_s32(v169, v172);
      v178 = vzip2q_s32(v169, v172);
      v179 = vzip1q_s32(_Q0, v173);
      v180 = vzip2q_s32(_Q0, v173);
      v181 = vzip1q_s32(v171, v174);
      v182 = vzip2q_s64(v175, v177);
      v175.i64[1] = v177.i64[0];
      v183 = vzip2q_s32(v171, v174);
      v184 = vzip2q_s64(v176, v178);
      v176.i64[1] = v178.i64[0];
      *v121 = v175;
      v121[1] = v182;
      v185 = vzip2q_s64(v179, v181);
      v179.i64[1] = v181.i64[0];
      v121[2] = v176;
      v121[3] = v184;
      v186 = vzip2q_s64(v180, v183);
      v180.i64[1] = v183.i64[0];
      v121[4] = v179;
      v121[5] = v185;
      v121[6] = v180;
      v121[7] = v186;
      --v120;
      v121 = (v121 + a3);
    }

    while (v120 > 1);
  }

  return result;
}

void from_444_to_32ARGB<8,8,(AlphaOutputMethod)1,false>(int8x16_t *a1, int16x8_t *a2, int a3, int a4, int8x16_t *a5, unsigned int a6, int a7)
{
  if (a7 == 1)
  {
    v7 = vdupq_n_s32(0x3D65788Au);
    v8 = vdupq_n_s32(0xBC886CBF);
    v9 = vdupq_n_s32(0xBBDA5DD8);
    v10 = vdupq_n_s32(0x3D873197u);
    if (a4 <= 8)
    {
      v13 = 0;
    }

    else
    {
      v13 = a4 - 8;
    }

    v12 = a4 - v13;
    if (v13)
    {
      goto LABEL_12;
    }

LABEL_20:
    v129 = a2 + 8;
    v130 = a2 + 32;
    v131 = a2 + 40;
    v132 = a2 + 64;
    v133 = a2 + 72;
    if (v12 < 1)
    {
      return;
    }

    goto LABEL_21;
  }

  if (a7 != 9)
  {
    v7 = vdupq_n_s32(0x3D4C4A9Bu);
    v8 = vdupq_n_s32(0xBCD01EA6);
    v9 = vdupq_n_s32(0xBC489511);
    v10 = vdupq_n_s32(0x3D811A55u);
    if (a4 <= 8)
    {
      v134 = 0;
    }

    else
    {
      v134 = a4 - 8;
    }

    v12 = a4 - v134;
    if (v134)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

  v7 = vdupq_n_s32(0x3D56DECBu);
  v8 = vdupq_n_s32(0xBCA68235);
  v9 = vdupq_n_s32(0xBBBFD26A);
  v10 = vdupq_n_s32(0x3D8912CCu);
  if (a4 <= 8)
  {
    v11 = 0;
  }

  else
  {
    v11 = a4 - 8;
  }

  v12 = a4 - v11;
  if (!v11)
  {
    goto LABEL_20;
  }

LABEL_12:
  v14 = 8 * a3;
  v15 = a4 - 7;
  v16.i64[0] = 0xE000E000E000E00;
  v16.i64[1] = 0xE000E000E000E00;
  v17 = vdupq_n_s32(0x3D150A85u);
  do
  {
    v18 = vaddq_s16(*a2, v16);
    v19 = a2[32];
    v20 = *a5;
    v21 = a2[40];
    v22 = vcltzq_s16(v18);
    v23 = vzip1q_s16(v18, v22);
    v24 = vzip2q_s16(v18, v22);
    v25 = vcltzq_s16(v19);
    v26 = vcvtq_f32_s32(vzip1q_s16(v19, v25));
    v27 = vcvtq_f32_s32(vzip2q_s16(v19, v25));
    v28 = vcltzq_s16(v21);
    v29 = vcvtq_f32_s32(vzip1q_s16(v21, v28));
    v30 = vcvtq_f32_s32(vzip2q_s16(v21, v28));
    v31 = vmulq_f32(vcvtq_f32_s32(v23), v17);
    v32 = vaddq_f32(v31, vmulq_f32(v7, v29));
    v33 = vaddq_f32(v31, vmulq_f32(v9, v26));
    v34 = vaddq_f32(v31, vmulq_f32(v10, v26));
    v35 = vmulq_f32(vcvtq_f32_s32(v24), v17);
    v36 = vaddq_f32(v35, vmulq_f32(v7, v30));
    v37 = vaddq_f32(vaddq_f32(v35, vmulq_f32(v9, v27)), vmulq_f32(v8, v30));
    v38 = vaddq_f32(v35, vmulq_f32(v10, v27));
    v39 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v32)), vcvtnq_s32_f32(v36));
    v40 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(v33, vmulq_f32(v8, v29)))), vcvtnq_s32_f32(v37));
    v41 = vcvtnq_s32_f32(v38);
    v42 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v34)), v41);
    *v41.i8 = vqmovun_s16(v39);
    *v39.i8 = vqmovun_s16(v40);
    *v42.i8 = vqmovun_s16(v42);
    v43 = vzip1q_s8(*a5, v39);
    v44 = vzip1q_s8(v41, v42);
    v45 = (a1 + v14);
    *a1 = vzip1q_s8(v43, v44);
    a1[1] = vzip2q_s8(v43, v44);
    v46 = vaddq_s16(a2[8], v16);
    v47 = a2[64];
    v48 = a2[72];
    v49 = vcltzq_s16(v46);
    v50 = vzip1q_s16(v46, v49);
    v51 = vzip2q_s16(v46, v49);
    v52 = vcvtq_f32_s32(v50);
    v53 = vcltzq_s16(v47);
    v54 = vcvtq_f32_s32(vzip1q_s16(v47, v53));
    v55 = vcvtq_f32_s32(vzip2q_s16(v47, v53));
    v56 = vcltzq_s16(v48);
    v57 = vcvtq_f32_s32(vzip1q_s16(v48, v56));
    v58 = vcvtq_f32_s32(vzip2q_s16(v48, v56));
    v59 = vmulq_f32(v52, v17);
    v60 = vaddq_f32(v59, vmulq_f32(v9, v54));
    v61 = vaddq_f32(v59, vmulq_f32(v7, v57));
    v62 = vaddq_f32(v59, vmulq_f32(v10, v54));
    v63 = vmulq_f32(vcvtq_f32_s32(v51), v17);
    v64 = vaddq_f32(v63, vmulq_f32(v7, v58));
    v65 = vaddq_f32(vaddq_f32(v63, vmulq_f32(v9, v55)), vmulq_f32(v8, v58));
    v66 = vaddq_f32(v63, vmulq_f32(v10, v55));
    v67 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v61)), vcvtnq_s32_f32(v64));
    v68 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(v60, vmulq_f32(v8, v57)))), vcvtnq_s32_f32(v65));
    v69 = vcvtnq_s32_f32(v66);
    v70 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v62)), v69);
    v71 = a2 + 1;
    *v69.i8 = vqmovun_s16(v67);
    *v67.i8 = vqmovun_s16(v68);
    *v70.i8 = vqmovun_s16(v70);
    v72 = vzip1q_s8(vdupq_laneq_s64(v20, 1), v67);
    v73 = vzip1q_s8(v69, v70);
    a1[2] = vzip1q_s8(v72, v73);
    a1[3] = vzip2q_s8(v72, v73);
    --v12;
    v74 = *(a5 + 8 * a6);
    v75 = vaddq_s16(a2[16], v16);
    v76 = a2[48];
    v77 = a2[56];
    v78 = vcltzq_s16(v75);
    v79 = vzip1q_s16(v75, v78);
    v80 = vzip2q_s16(v75, v78);
    v81 = vcltzq_s16(v76);
    v82 = vcvtq_f32_s32(vzip1q_s16(v76, v81));
    v83 = vzip2q_s16(v76, v81);
    v84 = vcvtq_f32_s32(v79);
    v85 = vcvtq_f32_s32(v83);
    v86 = vcltzq_s16(v77);
    v87 = vcvtq_f32_s32(vzip1q_s16(v77, v86));
    v88 = vcvtq_f32_s32(vzip2q_s16(v77, v86));
    v89 = vmulq_f32(v84, v17);
    v90 = vaddq_f32(v89, vmulq_f32(v7, v87));
    v91 = vaddq_f32(v89, vmulq_f32(v9, v82));
    v92 = vaddq_f32(v89, vmulq_f32(v10, v82));
    v93 = vmulq_f32(vcvtq_f32_s32(v80), v17);
    v94 = vaddq_f32(v91, vmulq_f32(v8, v87));
    v95 = vaddq_f32(v93, vmulq_f32(v7, v88));
    v96 = vaddq_f32(v93, vmulq_f32(v9, v85));
    v97 = vaddq_f32(v93, vmulq_f32(v10, v85));
    v98 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v90)), vcvtnq_s32_f32(v95));
    v99 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v92)), vcvtnq_s32_f32(v97));
    *v97.f32 = vqmovun_s16(v98);
    *v98.i8 = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v94)), vcvtnq_s32_f32(vaddq_f32(v96, vmulq_f32(v8, v88)))));
    *v88.f32 = vqmovun_s16(v99);
    v100 = vzip1q_s8(v74, v98);
    *v90.f32 = vzip1_s8(*v97.f32, *v88.f32);
    *v97.f32 = vzip2_s8(*v97.f32, *v88.f32);
    v97.i64[1] = v97.i64[0];
    v101 = &a1->i8[v14];
    a1 = (a1 + a3);
    vst2_s8(v101, *(&v90 - 8));
    v101 += 16;
    *v101 = vzip2q_s8(v100, v97);
    v102 = vaddq_s16(a2[24], v16);
    v103 = a2[80];
    v104 = a2[88];
    v105 = vcltzq_s16(v102);
    v106 = vzip1q_s16(v102, v105);
    v107 = vzip2q_s16(v102, v105);
    v108 = vcltzq_s16(v103);
    v109 = vcvtq_f32_s32(vzip1q_s16(v103, v108));
    v110 = vzip2q_s16(v103, v108);
    v111 = vcvtq_f32_s32(v106);
    v112 = vcvtq_f32_s32(v110);
    v113 = vcltzq_s16(v104);
    v114 = vcvtq_f32_s32(vzip1q_s16(v104, v113));
    v115 = vcvtq_f32_s32(vzip2q_s16(v104, v113));
    v116 = vmulq_f32(v111, v17);
    v117 = vaddq_f32(v116, vmulq_f32(v7, v114));
    v118 = vaddq_f32(v116, vmulq_f32(v9, v109));
    v119 = vaddq_f32(v116, vmulq_f32(v10, v109));
    v120 = vmulq_f32(vcvtq_f32_s32(v107), v17);
    v121 = vaddq_f32(v118, vmulq_f32(v8, v114));
    v122 = vaddq_f32(v120, vmulq_f32(v7, v115));
    v123 = vaddq_f32(v120, vmulq_f32(v9, v112));
    v124 = vaddq_f32(v120, vmulq_f32(v10, v112));
    v125 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v117)), vcvtnq_s32_f32(v122));
    v126 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v119)), vcvtnq_s32_f32(v124));
    *v124.f32 = vqmovun_s16(v125);
    *v125.i8 = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v121)), vcvtnq_s32_f32(vaddq_f32(v123, vmulq_f32(v8, v115)))));
    *v115.f32 = vqmovun_s16(v126);
    v127 = vzip1q_s8(vdupq_laneq_s64(v74, 1), v125);
    *v117.f32 = vzip1_s8(*v124.f32, *v115.f32);
    *v74.i8 = vzip2_s8(*v124.f32, *v115.f32);
    v74.i64[1] = v74.i64[0];
    i8 = v45[2].i8;
    a5 = (a5 + a6);
    vst2_s8(i8, *(&v117 - 8));
    v45[3] = vzip2q_s8(v127, v74);
    --v15;
    ++a2;
  }

  while (v15 > 1);
  v129 = v71 + 8;
  v130 = v71 + 32;
  v131 = v71 + 40;
  v132 = v71 + 64;
  v133 = v71 + 72;
  a2 = v71;
  if (v12 >= 1)
  {
LABEL_21:
    v135 = a1 + 2;
    v136 = v12 + 1;
    v137.i64[0] = 0xE000E000E000E00;
    v137.i64[1] = 0xE000E000E000E00;
    v138 = vdupq_n_s32(0x3D150A85u);
    v139 = a1[2].i8;
    do
    {
      v140 = v135[-2].i8;
      v141 = *a5;
      v142 = *a2++;
      v143 = vaddq_s16(v142, v137);
      v144 = *v130++;
      v145 = v144;
      v146 = *v131++;
      v147 = vcltzq_s16(v143);
      v148 = vzip1q_s16(v143, v147);
      v149 = vzip2q_s16(v143, v147);
      v150 = vcltzq_s16(v145);
      v151 = vcvtq_f32_s32(vzip1q_s16(v145, v150));
      v152 = vzip2q_s16(v145, v150);
      v153 = vcvtq_f32_s32(v148);
      v154 = vcvtq_f32_s32(v152);
      v155 = vcltzq_s16(v146);
      v156 = vcvtq_f32_s32(vzip1q_s16(v146, v155));
      v157 = vcvtq_f32_s32(vzip2q_s16(v146, v155));
      v158 = vmulq_f32(v153, v138);
      v159 = vaddq_f32(v158, vmulq_f32(v7, v156));
      v160 = vaddq_f32(v158, vmulq_f32(v9, v151));
      v161 = vaddq_f32(v158, vmulq_f32(v10, v151));
      v162 = vmulq_f32(vcvtq_f32_s32(v149), v138);
      v163 = vaddq_f32(v160, vmulq_f32(v8, v156));
      v164 = vaddq_f32(v162, vmulq_f32(v7, v157));
      v165 = vaddq_f32(v162, vmulq_f32(v9, v154));
      v166 = vaddq_f32(v162, vmulq_f32(v10, v154));
      v167 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v159)), vcvtnq_s32_f32(v164));
      v168 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v161)), vcvtnq_s32_f32(v166));
      *v166.f32 = vqmovun_s16(v167);
      *v167.i8 = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v163)), vcvtnq_s32_f32(vaddq_f32(v165, vmulq_f32(v8, v157)))));
      *v157.f32 = vqmovun_s16(v168);
      v169 = vzip1q_s8(*a5, v167);
      *v159.f32 = vzip1_s8(*v166.f32, *v157.f32);
      *v166.f32 = vzip2_s8(*v166.f32, *v157.f32);
      v166.i64[1] = v166.i64[0];
      vst2_s8(v140, *(&v159 - 8));
      v135[-1] = vzip2q_s8(v169, v166);
      v170 = *v129++;
      v171 = vaddq_s16(v170, v137);
      v172 = *v132++;
      v173 = v172;
      v174 = *v133++;
      v175 = vcltzq_s16(v171);
      v176 = vzip1q_s16(v171, v175);
      v177 = vzip2q_s16(v171, v175);
      v178 = vcltzq_s16(v173);
      v179 = vcvtq_f32_s32(vzip1q_s16(v173, v178));
      v180 = vzip2q_s16(v173, v178);
      v181 = vcvtq_f32_s32(v176);
      v182 = vcvtq_f32_s32(v180);
      v183 = vcltzq_s16(v174);
      v184 = vcvtq_f32_s32(vzip1q_s16(v174, v183));
      v185 = vcvtq_f32_s32(vzip2q_s16(v174, v183));
      v186 = vmulq_f32(v181, v138);
      v187 = vaddq_f32(v186, vmulq_f32(v7, v184));
      v188 = vaddq_f32(v186, vmulq_f32(v9, v179));
      v189 = vaddq_f32(v186, vmulq_f32(v10, v179));
      v190 = vmulq_f32(vcvtq_f32_s32(v177), v138);
      v191 = vaddq_f32(v188, vmulq_f32(v8, v184));
      v192 = vaddq_f32(v190, vmulq_f32(v7, v185));
      v193 = vaddq_f32(v190, vmulq_f32(v9, v182));
      v194 = vaddq_f32(v190, vmulq_f32(v10, v182));
      v195 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v187)), vcvtnq_s32_f32(v192));
      v196 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v189)), vcvtnq_s32_f32(v194));
      *v194.f32 = vqmovun_s16(v195);
      *v195.i8 = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v191)), vcvtnq_s32_f32(vaddq_f32(v193, vmulq_f32(v8, v185)))));
      *v185.f32 = vqmovun_s16(v196);
      v197 = vzip1q_s8(vdupq_laneq_s64(v141, 1), v195);
      *v187.f32 = vzip1_s8(*v194.f32, *v185.f32);
      *v141.i8 = vzip2_s8(*v194.f32, *v185.f32);
      v141.i64[1] = v141.i64[0];
      vst2_s8(v139, *(&v187 - 8));
      v139 += a3;
      v135[1] = vzip2q_s8(v197, v141);
      a5 = (a5 + a6);
      --v136;
      v135 = v139;
    }

    while (v136 > 1);
  }
}

void from_444_to_32ARGB<8,8,(AlphaOutputMethod)1,true>(int8x16_t *a1, int16x8_t *a2, int a3, int a4, int8x16_t *a5, unsigned int a6, int a7)
{
  if (a7 == 1)
  {
    v7 = vdupq_n_s32(0x3D65788Au);
    v8 = vdupq_n_s32(0xBC886CBF);
    v9 = vdupq_n_s32(0xBBDA5DD8);
    v10 = vdupq_n_s32(0x3D873197u);
    if (a4 <= 8)
    {
      v13 = 0;
    }

    else
    {
      v13 = a4 - 8;
    }

    v12 = a4 - v13;
    if (v13)
    {
      goto LABEL_12;
    }

LABEL_20:
    v129 = a2 + 8;
    v130 = a2 + 32;
    v131 = a2 + 40;
    v132 = a2 + 64;
    v133 = a2 + 72;
    if (v12 < 1)
    {
      return;
    }

    goto LABEL_21;
  }

  if (a7 != 9)
  {
    v7 = vdupq_n_s32(0x3D4C4A9Bu);
    v8 = vdupq_n_s32(0xBCD01EA6);
    v9 = vdupq_n_s32(0xBC489511);
    v10 = vdupq_n_s32(0x3D811A55u);
    if (a4 <= 8)
    {
      v134 = 0;
    }

    else
    {
      v134 = a4 - 8;
    }

    v12 = a4 - v134;
    if (v134)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

  v7 = vdupq_n_s32(0x3D56DECBu);
  v8 = vdupq_n_s32(0xBCA68235);
  v9 = vdupq_n_s32(0xBBBFD26A);
  v10 = vdupq_n_s32(0x3D8912CCu);
  if (a4 <= 8)
  {
    v11 = 0;
  }

  else
  {
    v11 = a4 - 8;
  }

  v12 = a4 - v11;
  if (!v11)
  {
    goto LABEL_20;
  }

LABEL_12:
  v14 = 8 * a3;
  v15 = a4 - 7;
  v16.i64[0] = 0xE000E000E000E00;
  v16.i64[1] = 0xE000E000E000E00;
  v17 = vdupq_n_s32(0x3D150A85u);
  do
  {
    v18 = vaddq_s16(*a2, v16);
    v19 = a2[32];
    v20 = *a5;
    v21 = a2[40];
    v22 = vcltzq_s16(v18);
    v23 = vzip1q_s16(v18, v22);
    v24 = vzip2q_s16(v18, v22);
    v25 = vcltzq_s16(v19);
    v26 = vcvtq_f32_s32(vzip1q_s16(v19, v25));
    v27 = vcvtq_f32_s32(vzip2q_s16(v19, v25));
    v28 = vcltzq_s16(v21);
    v29 = vcvtq_f32_s32(vzip1q_s16(v21, v28));
    v30 = vcvtq_f32_s32(vzip2q_s16(v21, v28));
    v31 = vmulq_f32(vcvtq_f32_s32(v23), v17);
    v32 = vaddq_f32(v31, vmulq_f32(v7, v29));
    v33 = vaddq_f32(v31, vmulq_f32(v9, v26));
    v34 = vaddq_f32(v31, vmulq_f32(v10, v26));
    v35 = vmulq_f32(vcvtq_f32_s32(v24), v17);
    v36 = vaddq_f32(v35, vmulq_f32(v7, v30));
    v37 = vaddq_f32(vaddq_f32(v35, vmulq_f32(v9, v27)), vmulq_f32(v8, v30));
    v38 = vaddq_f32(v35, vmulq_f32(v10, v27));
    v39 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v32)), vcvtnq_s32_f32(v36));
    v40 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(v33, vmulq_f32(v8, v29)))), vcvtnq_s32_f32(v37));
    v41 = vcvtnq_s32_f32(v38);
    v42 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v34)), v41);
    *v41.i8 = vqmovun_s16(v39);
    *v39.i8 = vqmovun_s16(v40);
    *v42.i8 = vqmovun_s16(v42);
    v43 = vzip1q_s8(*a5, v39);
    v44 = vzip1q_s8(v41, v42);
    v45 = (a1 + v14);
    *a1 = vzip1q_s8(v43, v44);
    a1[1] = vzip2q_s8(v43, v44);
    v46 = vaddq_s16(a2[8], v16);
    v47 = a2[64];
    v48 = a2[72];
    v49 = vcltzq_s16(v46);
    v50 = vzip1q_s16(v46, v49);
    v51 = vzip2q_s16(v46, v49);
    v52 = vcvtq_f32_s32(v50);
    v53 = vcltzq_s16(v47);
    v54 = vcvtq_f32_s32(vzip1q_s16(v47, v53));
    v55 = vcvtq_f32_s32(vzip2q_s16(v47, v53));
    v56 = vcltzq_s16(v48);
    v57 = vcvtq_f32_s32(vzip1q_s16(v48, v56));
    v58 = vcvtq_f32_s32(vzip2q_s16(v48, v56));
    v59 = vmulq_f32(v52, v17);
    v60 = vaddq_f32(v59, vmulq_f32(v9, v54));
    v61 = vaddq_f32(v59, vmulq_f32(v7, v57));
    v62 = vaddq_f32(v59, vmulq_f32(v10, v54));
    v63 = vmulq_f32(vcvtq_f32_s32(v51), v17);
    v64 = vaddq_f32(v63, vmulq_f32(v7, v58));
    v65 = vaddq_f32(vaddq_f32(v63, vmulq_f32(v9, v55)), vmulq_f32(v8, v58));
    v66 = vaddq_f32(v63, vmulq_f32(v10, v55));
    v67 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v61)), vcvtnq_s32_f32(v64));
    v68 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(v60, vmulq_f32(v8, v57)))), vcvtnq_s32_f32(v65));
    v69 = vcvtnq_s32_f32(v66);
    v70 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v62)), v69);
    v71 = a2 + 1;
    *v69.i8 = vqmovun_s16(v67);
    *v67.i8 = vqmovun_s16(v68);
    *v70.i8 = vqmovun_s16(v70);
    v72 = vzip1q_s8(vdupq_laneq_s64(v20, 1), v67);
    v73 = vzip1q_s8(v69, v70);
    a1[2] = vzip1q_s8(v72, v73);
    a1[3] = vzip2q_s8(v72, v73);
    --v12;
    v74 = *(a5 + 8 * a6);
    v75 = vaddq_s16(a2[16], v16);
    v76 = a2[48];
    v77 = a2[56];
    v78 = vcltzq_s16(v75);
    v79 = vzip1q_s16(v75, v78);
    v80 = vzip2q_s16(v75, v78);
    v81 = vcltzq_s16(v76);
    v82 = vcvtq_f32_s32(vzip1q_s16(v76, v81));
    v83 = vzip2q_s16(v76, v81);
    v84 = vcvtq_f32_s32(v79);
    v85 = vcvtq_f32_s32(v83);
    v86 = vcltzq_s16(v77);
    v87 = vcvtq_f32_s32(vzip1q_s16(v77, v86));
    v88 = vcvtq_f32_s32(vzip2q_s16(v77, v86));
    v89 = vmulq_f32(v84, v17);
    v90 = vaddq_f32(v89, vmulq_f32(v7, v87));
    v91 = vaddq_f32(v89, vmulq_f32(v9, v82));
    v92 = vaddq_f32(v89, vmulq_f32(v10, v82));
    v93 = vmulq_f32(vcvtq_f32_s32(v80), v17);
    v94 = vaddq_f32(v91, vmulq_f32(v8, v87));
    v95 = vaddq_f32(v93, vmulq_f32(v7, v88));
    v96 = vaddq_f32(v93, vmulq_f32(v9, v85));
    v97 = vaddq_f32(v93, vmulq_f32(v10, v85));
    v98 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v90)), vcvtnq_s32_f32(v95));
    v99 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v92)), vcvtnq_s32_f32(v97));
    *v97.f32 = vqmovun_s16(v98);
    *v98.i8 = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v94)), vcvtnq_s32_f32(vaddq_f32(v96, vmulq_f32(v8, v88)))));
    *v88.f32 = vqmovun_s16(v99);
    v100 = vzip1q_s8(v74, v98);
    *v90.f32 = vzip1_s8(*v97.f32, *v88.f32);
    *v97.f32 = vzip2_s8(*v97.f32, *v88.f32);
    v97.i64[1] = v97.i64[0];
    v101 = &a1->i8[v14];
    a1 = (a1 + a3);
    vst2_s8(v101, *(&v90 - 8));
    v101 += 16;
    *v101 = vzip2q_s8(v100, v97);
    v102 = vaddq_s16(a2[24], v16);
    v103 = a2[80];
    v104 = a2[88];
    v105 = vcltzq_s16(v102);
    v106 = vzip1q_s16(v102, v105);
    v107 = vzip2q_s16(v102, v105);
    v108 = vcltzq_s16(v103);
    v109 = vcvtq_f32_s32(vzip1q_s16(v103, v108));
    v110 = vzip2q_s16(v103, v108);
    v111 = vcvtq_f32_s32(v106);
    v112 = vcvtq_f32_s32(v110);
    v113 = vcltzq_s16(v104);
    v114 = vcvtq_f32_s32(vzip1q_s16(v104, v113));
    v115 = vcvtq_f32_s32(vzip2q_s16(v104, v113));
    v116 = vmulq_f32(v111, v17);
    v117 = vaddq_f32(v116, vmulq_f32(v7, v114));
    v118 = vaddq_f32(v116, vmulq_f32(v9, v109));
    v119 = vaddq_f32(v116, vmulq_f32(v10, v109));
    v120 = vmulq_f32(vcvtq_f32_s32(v107), v17);
    v121 = vaddq_f32(v118, vmulq_f32(v8, v114));
    v122 = vaddq_f32(v120, vmulq_f32(v7, v115));
    v123 = vaddq_f32(v120, vmulq_f32(v9, v112));
    v124 = vaddq_f32(v120, vmulq_f32(v10, v112));
    v125 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v117)), vcvtnq_s32_f32(v122));
    v126 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v119)), vcvtnq_s32_f32(v124));
    *v124.f32 = vqmovun_s16(v125);
    *v125.i8 = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v121)), vcvtnq_s32_f32(vaddq_f32(v123, vmulq_f32(v8, v115)))));
    *v115.f32 = vqmovun_s16(v126);
    v127 = vzip1q_s8(vdupq_laneq_s64(v74, 1), v125);
    *v117.f32 = vzip1_s8(*v124.f32, *v115.f32);
    *v74.i8 = vzip2_s8(*v124.f32, *v115.f32);
    v74.i64[1] = v74.i64[0];
    i8 = v45[2].i8;
    a5 = (a5 + a6);
    vst2_s8(i8, *(&v117 - 8));
    v45[3] = vzip2q_s8(v127, v74);
    --v15;
    ++a2;
  }

  while (v15 > 1);
  v129 = v71 + 8;
  v130 = v71 + 32;
  v131 = v71 + 40;
  v132 = v71 + 64;
  v133 = v71 + 72;
  a2 = v71;
  if (v12 >= 1)
  {
LABEL_21:
    v135 = a1 + 2;
    v136 = v12 + 1;
    v137.i64[0] = 0xE000E000E000E00;
    v137.i64[1] = 0xE000E000E000E00;
    v138 = vdupq_n_s32(0x3D150A85u);
    v139 = a1[2].i8;
    do
    {
      v140 = v135[-2].i8;
      v141 = *a5;
      v142 = *a2++;
      v143 = vaddq_s16(v142, v137);
      v144 = *v130++;
      v145 = v144;
      v146 = *v131++;
      v147 = vcltzq_s16(v143);
      v148 = vzip1q_s16(v143, v147);
      v149 = vzip2q_s16(v143, v147);
      v150 = vcltzq_s16(v145);
      v151 = vcvtq_f32_s32(vzip1q_s16(v145, v150));
      v152 = vzip2q_s16(v145, v150);
      v153 = vcvtq_f32_s32(v148);
      v154 = vcvtq_f32_s32(v152);
      v155 = vcltzq_s16(v146);
      v156 = vcvtq_f32_s32(vzip1q_s16(v146, v155));
      v157 = vcvtq_f32_s32(vzip2q_s16(v146, v155));
      v158 = vmulq_f32(v153, v138);
      v159 = vaddq_f32(v158, vmulq_f32(v7, v156));
      v160 = vaddq_f32(v158, vmulq_f32(v9, v151));
      v161 = vaddq_f32(v158, vmulq_f32(v10, v151));
      v162 = vmulq_f32(vcvtq_f32_s32(v149), v138);
      v163 = vaddq_f32(v160, vmulq_f32(v8, v156));
      v164 = vaddq_f32(v162, vmulq_f32(v7, v157));
      v165 = vaddq_f32(v162, vmulq_f32(v9, v154));
      v166 = vaddq_f32(v162, vmulq_f32(v10, v154));
      v167 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v159)), vcvtnq_s32_f32(v164));
      v168 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v161)), vcvtnq_s32_f32(v166));
      *v166.f32 = vqmovun_s16(v167);
      *v167.i8 = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v163)), vcvtnq_s32_f32(vaddq_f32(v165, vmulq_f32(v8, v157)))));
      *v157.f32 = vqmovun_s16(v168);
      v169 = vzip1q_s8(*a5, v167);
      *v159.f32 = vzip1_s8(*v166.f32, *v157.f32);
      *v166.f32 = vzip2_s8(*v166.f32, *v157.f32);
      v166.i64[1] = v166.i64[0];
      vst2_s8(v140, *(&v159 - 8));
      v135[-1] = vzip2q_s8(v169, v166);
      v170 = *v129++;
      v171 = vaddq_s16(v170, v137);
      v172 = *v132++;
      v173 = v172;
      v174 = *v133++;
      v175 = vcltzq_s16(v171);
      v176 = vzip1q_s16(v171, v175);
      v177 = vzip2q_s16(v171, v175);
      v178 = vcltzq_s16(v173);
      v179 = vcvtq_f32_s32(vzip1q_s16(v173, v178));
      v180 = vzip2q_s16(v173, v178);
      v181 = vcvtq_f32_s32(v176);
      v182 = vcvtq_f32_s32(v180);
      v183 = vcltzq_s16(v174);
      v184 = vcvtq_f32_s32(vzip1q_s16(v174, v183));
      v185 = vcvtq_f32_s32(vzip2q_s16(v174, v183));
      v186 = vmulq_f32(v181, v138);
      v187 = vaddq_f32(v186, vmulq_f32(v7, v184));
      v188 = vaddq_f32(v186, vmulq_f32(v9, v179));
      v189 = vaddq_f32(v186, vmulq_f32(v10, v179));
      v190 = vmulq_f32(vcvtq_f32_s32(v177), v138);
      v191 = vaddq_f32(v188, vmulq_f32(v8, v184));
      v192 = vaddq_f32(v190, vmulq_f32(v7, v185));
      v193 = vaddq_f32(v190, vmulq_f32(v9, v182));
      v194 = vaddq_f32(v190, vmulq_f32(v10, v182));
      v195 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v187)), vcvtnq_s32_f32(v192));
      v196 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v189)), vcvtnq_s32_f32(v194));
      *v194.f32 = vqmovun_s16(v195);
      *v195.i8 = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v191)), vcvtnq_s32_f32(vaddq_f32(v193, vmulq_f32(v8, v185)))));
      *v185.f32 = vqmovun_s16(v196);
      v197 = vzip1q_s8(vdupq_laneq_s64(v141, 1), v195);
      *v187.f32 = vzip1_s8(*v194.f32, *v185.f32);
      *v141.i8 = vzip2_s8(*v194.f32, *v185.f32);
      v141.i64[1] = v141.i64[0];
      vst2_s8(v139, *(&v187 - 8));
      v139 += a3;
      v135[1] = vzip2q_s8(v197, v141);
      a5 = (a5 + a6);
      --v136;
      v135 = v139;
    }

    while (v136 > 1);
  }
}

int8x16_t *from_444_to_32ARGB<8,8,(AlphaOutputMethod)2,false>(int8x16_t *result, int16x8_t *a2, int a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  if (a7 == 1)
  {
    v7 = vdupq_n_s32(0x3D65788Au);
    v8 = vdupq_n_s32(0xBC886CBF);
    v9 = vdupq_n_s32(0xBBDA5DD8);
    v10 = vdupq_n_s32(0x3D873197u);
    if (a4 <= 8)
    {
      v13 = 0;
    }

    else
    {
      v13 = a4 - 8;
    }

    v12 = a4 - v13;
    if (v13)
    {
      goto LABEL_12;
    }

LABEL_20:
    v124 = a2 + 8;
    v125 = a2 + 32;
    v126 = a2 + 40;
    v127 = a2 + 64;
    v128 = a2 + 72;
    if (v12 < 1)
    {
      return result;
    }

    goto LABEL_21;
  }

  if (a7 != 9)
  {
    v7 = vdupq_n_s32(0x3D4C4A9Bu);
    v8 = vdupq_n_s32(0xBCD01EA6);
    v9 = vdupq_n_s32(0xBC489511);
    v10 = vdupq_n_s32(0x3D811A55u);
    if (a4 <= 8)
    {
      v129 = 0;
    }

    else
    {
      v129 = a4 - 8;
    }

    v12 = a4 - v129;
    if (v129)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

  v7 = vdupq_n_s32(0x3D56DECBu);
  v8 = vdupq_n_s32(0xBCA68235);
  v9 = vdupq_n_s32(0xBBBFD26A);
  v10 = vdupq_n_s32(0x3D8912CCu);
  if (a4 <= 8)
  {
    v11 = 0;
  }

  else
  {
    v11 = a4 - 8;
  }

  v12 = a4 - v11;
  if (!v11)
  {
    goto LABEL_20;
  }

LABEL_12:
  v14 = 8 * a3;
  v15 = a4 - 7;
  v16.i64[0] = 0xE000E000E000E00;
  v16.i64[1] = 0xE000E000E000E00;
  v17 = vdupq_n_s32(0x3D150A85u);
  v18.i64[0] = -1;
  v18.i64[1] = -1;
  do
  {
    v19 = vaddq_s16(*a2, v16);
    v20 = a2[32];
    v21 = a2[40];
    v22 = vcltzq_s16(v19);
    v23 = vzip1q_s16(v19, v22);
    v24 = vzip2q_s16(v19, v22);
    v25 = vcvtq_f32_s32(v23);
    v26 = vcltzq_s16(v20);
    v27 = vcvtq_f32_s32(vzip1q_s16(v20, v26));
    v28 = vcvtq_f32_s32(vzip2q_s16(v20, v26));
    v29 = vcltzq_s16(v21);
    v30 = vcvtq_f32_s32(vzip1q_s16(v21, v29));
    v31 = vcvtq_f32_s32(vzip2q_s16(v21, v29));
    v32 = vmulq_f32(v25, v17);
    v33 = vaddq_f32(v32, vmulq_f32(v9, v27));
    v34 = vaddq_f32(v32, vmulq_f32(v7, v30));
    v35 = vaddq_f32(v32, vmulq_f32(v10, v27));
    v36 = vmulq_f32(vcvtq_f32_s32(v24), v17);
    v37 = vaddq_f32(v36, vmulq_f32(v7, v31));
    v38 = vaddq_f32(vaddq_f32(v36, vmulq_f32(v9, v28)), vmulq_f32(v8, v31));
    v39 = vaddq_f32(v36, vmulq_f32(v10, v28));
    v40 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v34)), vcvtnq_s32_f32(v37));
    v41 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(v33, vmulq_f32(v8, v30)))), vcvtnq_s32_f32(v38));
    v42 = vcvtnq_s32_f32(v39);
    v43 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v35)), v42);
    *v42.i8 = vqmovun_s16(v40);
    *v40.i8 = vqmovun_s16(v41);
    *v43.i8 = vqmovun_s16(v43);
    v44 = vzip1q_s8(v18, v40);
    v45 = vzip1q_s8(v42, v43);
    *result = vzip1q_s8(v44, v45);
    result[1] = vzip2q_s8(v44, v45);
    v46 = vaddq_s16(a2[8], v16);
    v47 = a2[64];
    v48 = a2 + 1;
    v49 = a2[72];
    v50 = vcltzq_s16(v46);
    v51 = vzip1q_s16(v46, v50);
    v52 = vzip2q_s16(v46, v50);
    v53 = vcltzq_s16(v47);
    v54 = vcvtq_f32_s32(vzip1q_s16(v47, v53));
    v55 = vcvtq_f32_s32(vzip2q_s16(v47, v53));
    v56 = vcltzq_s16(v49);
    v57 = vcvtq_f32_s32(vzip1q_s16(v49, v56));
    v58 = vcvtq_f32_s32(vzip2q_s16(v49, v56));
    v59 = vmulq_f32(vcvtq_f32_s32(v51), v17);
    v60 = vaddq_f32(v59, vmulq_f32(v7, v57));
    v61 = vaddq_f32(v59, vmulq_f32(v9, v54));
    v62 = vaddq_f32(v59, vmulq_f32(v10, v54));
    v63 = vmulq_f32(vcvtq_f32_s32(v52), v17);
    v64 = vaddq_f32(v63, vmulq_f32(v7, v58));
    v65 = vaddq_f32(vaddq_f32(v63, vmulq_f32(v9, v55)), vmulq_f32(v8, v58));
    v66 = vaddq_f32(v63, vmulq_f32(v10, v55));
    v67 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v60)), vcvtnq_s32_f32(v64));
    v68 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(v61, vmulq_f32(v8, v57)))), vcvtnq_s32_f32(v65));
    v69 = vcvtnq_s32_f32(v66);
    v70 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v62)), v69);
    *v69.i8 = vqmovun_s16(v67);
    *v67.i8 = vqmovun_s16(v68);
    *v70.i8 = vqmovun_s16(v70);
    v71 = vzip1q_s8(v18, v67);
    v72 = vzip1q_s8(v69, v70);
    result[2] = vzip1q_s8(v71, v72);
    result[3] = vzip2q_s8(v71, v72);
    v73 = vaddq_s16(a2[16], v16);
    v74 = a2[48];
    v75 = a2[56];
    v76 = (result + v14);
    v77 = vcltzq_s16(v73);
    v78 = vzip1q_s16(v73, v77);
    v79 = vzip2q_s16(v73, v77);
    v80 = vcltzq_s16(v74);
    v81 = vcvtq_f32_s32(vzip1q_s16(v74, v80));
    v82 = vcvtq_f32_s32(vzip2q_s16(v74, v80));
    v83 = vcltzq_s16(v75);
    v84 = vcvtq_f32_s32(vzip1q_s16(v75, v83));
    v85 = vcvtq_f32_s32(vzip2q_s16(v75, v83));
    v86 = vmulq_f32(vcvtq_f32_s32(v78), v17);
    v87 = vaddq_f32(v86, vmulq_f32(v7, v84));
    v88 = vmulq_f32(v9, v81);
    v89 = vaddq_f32(v86, vmulq_f32(v10, v81));
    v90 = vmulq_f32(vcvtq_f32_s32(v79), v17);
    v91 = vaddq_f32(v86, v88);
    v92 = vaddq_f32(v90, vmulq_f32(v7, v85));
    v93 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(v91, vmulq_f32(v8, v84)))), vcvtnq_s32_f32(vaddq_f32(vaddq_f32(v90, vmulq_f32(v9, v82)), vmulq_f32(v8, v85))));
    v94 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v89)), vcvtnq_s32_f32(vaddq_f32(v90, vmulq_f32(v10, v82))));
    *v90.f32 = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v87)), vcvtnq_s32_f32(v92)));
    *v82.f32 = vqmovun_s16(v94);
    *v94.i8 = vqmovun_s16(v93);
    v95 = vzip1q_s8(v18, v94);
    *v93.i8 = vzip1_s8(*v90.f32, *v82.f32);
    *v90.f32 = vzip2_s8(*v90.f32, *v82.f32);
    v90.i64[1] = v90.i64[0];
    v96 = &result->i8[v14];
    vst2_s8(v96, *(&v93 - 8));
    v96 += 16;
    *v96 = vzip2q_s8(v95, v90);
    --v12;
    v97 = vaddq_s16(a2[24], v16);
    v98 = a2[80];
    v99 = a2[88];
    v100 = vcltzq_s16(v97);
    v101 = vzip1q_s16(v97, v100);
    v102 = vzip2q_s16(v97, v100);
    v103 = vcltzq_s16(v98);
    v104 = vcvtq_f32_s32(vzip1q_s16(v98, v103));
    v105 = vzip2q_s16(v98, v103);
    v106 = vcvtq_f32_s32(v101);
    v107 = vcvtq_f32_s32(v105);
    v108 = vcltzq_s16(v99);
    v109 = vcvtq_f32_s32(vzip1q_s16(v99, v108));
    v110 = vcvtq_f32_s32(vzip2q_s16(v99, v108));
    v111 = vmulq_f32(v106, v17);
    v112 = vaddq_f32(v111, vmulq_f32(v7, v109));
    v113 = vaddq_f32(v111, vmulq_f32(v9, v104));
    v114 = vaddq_f32(v111, vmulq_f32(v10, v104));
    v115 = vmulq_f32(vcvtq_f32_s32(v102), v17);
    v116 = vaddq_f32(v113, vmulq_f32(v8, v109));
    v117 = vaddq_f32(v115, vmulq_f32(v7, v110));
    v118 = vaddq_f32(v115, vmulq_f32(v9, v107));
    v119 = vaddq_f32(v115, vmulq_f32(v10, v107));
    v120 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v112)), vcvtnq_s32_f32(v117));
    v121 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v114)), vcvtnq_s32_f32(v119));
    *v119.f32 = vqmovun_s16(v120);
    *v120.i8 = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v116)), vcvtnq_s32_f32(vaddq_f32(v118, vmulq_f32(v8, v110)))));
    *v110.f32 = vqmovun_s16(v121);
    v122 = vzip1q_s8(v18, v120);
    *v112.f32 = vzip1_s8(*v119.f32, *v110.f32);
    *v119.f32 = vzip2_s8(*v119.f32, *v110.f32);
    v119.i64[1] = v119.i64[0];
    v123 = &result[2].i8[v14];
    result = (result + a3);
    vst2_s8(v123, *(&v112 - 8));
    v76[3] = vzip2q_s8(v122, v119);
    --v15;
    ++a2;
  }

  while (v15 > 1);
  v124 = v48 + 8;
  v125 = v48 + 32;
  v126 = v48 + 40;
  v127 = v48 + 64;
  v128 = v48 + 72;
  a2 = v48;
  if (v12 >= 1)
  {
LABEL_21:
    v130 = result + 2;
    v131 = v12 + 1;
    v132.i64[0] = 0xE000E000E000E00;
    v132.i64[1] = 0xE000E000E000E00;
    v133 = vdupq_n_s32(0x3D150A85u);
    v134.i64[0] = -1;
    v134.i64[1] = -1;
    i8 = result[2].i8;
    do
    {
      v136 = *a2++;
      v137 = vaddq_s16(v136, v132);
      v138 = *v125++;
      v139 = v138;
      v140 = *v126++;
      v141 = vcltzq_s16(v137);
      v142 = vzip1q_s16(v137, v141);
      v143 = vzip2q_s16(v137, v141);
      v144 = vcltzq_s16(v139);
      v145 = vcvtq_f32_s32(vzip1q_s16(v139, v144));
      v146 = vcvtq_f32_s32(vzip2q_s16(v139, v144));
      v147 = vcltzq_s16(v140);
      v148 = vcvtq_f32_s32(vzip1q_s16(v140, v147));
      v149 = vcvtq_f32_s32(vzip2q_s16(v140, v147));
      v150 = vmulq_f32(vcvtq_f32_s32(v142), v133);
      v151 = vaddq_f32(v150, vmulq_f32(v7, v148));
      v152 = vaddq_f32(v150, vmulq_f32(v9, v145));
      v153 = vaddq_f32(v150, vmulq_f32(v10, v145));
      v154 = vmulq_f32(vcvtq_f32_s32(v143), v133);
      v155 = vaddq_f32(v152, vmulq_f32(v8, v148));
      v156 = vaddq_f32(v154, vmulq_f32(v7, v149));
      v157 = vaddq_f32(vaddq_f32(v154, vmulq_f32(v9, v146)), vmulq_f32(v8, v149));
      v158 = vaddq_f32(v154, vmulq_f32(v10, v146));
      v159 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v151)), vcvtnq_s32_f32(v156));
      v160 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v155)), vcvtnq_s32_f32(v157));
      v161 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v153)), vcvtnq_s32_f32(v158));
      *v158.f32 = vqmovun_s16(v159);
      *v159.i8 = vqmovun_s16(v160);
      *v161.i8 = vqmovun_s16(v161);
      v162 = vzip1q_s8(v134, v159);
      *v160.i8 = vzip1_s8(*v158.f32, *v161.i8);
      *v158.f32 = vzip2_s8(*v158.f32, *v161.i8);
      v158.i64[1] = v158.i64[0];
      v163 = v130[-2].i8;
      vst2_s8(v163, *(&v160 - 8));
      v130[-1] = vzip2q_s8(v162, v158);
      v164 = *v124++;
      v165 = vaddq_s16(v164, v132);
      v166 = *v127++;
      v167 = v166;
      v168 = *v128++;
      v169 = vcltzq_s16(v165);
      v170 = vzip1q_s16(v165, v169);
      v171 = vzip2q_s16(v165, v169);
      v172 = vcltzq_s16(v167);
      v173 = vcvtq_f32_s32(vzip1q_s16(v167, v172));
      v174 = vzip2q_s16(v167, v172);
      v175 = vcvtq_f32_s32(v170);
      v176 = vcvtq_f32_s32(v174);
      v177 = vcltzq_s16(v168);
      v178 = vcvtq_f32_s32(vzip1q_s16(v168, v177));
      v179 = vcvtq_f32_s32(vzip2q_s16(v168, v177));
      v180 = vmulq_f32(v175, v133);
      v181 = vaddq_f32(v180, vmulq_f32(v7, v178));
      v182 = vaddq_f32(v180, vmulq_f32(v9, v173));
      v183 = vaddq_f32(v180, vmulq_f32(v10, v173));
      v184 = vmulq_f32(vcvtq_f32_s32(v171), v133);
      v185 = vaddq_f32(v182, vmulq_f32(v8, v178));
      v186 = vaddq_f32(v184, vmulq_f32(v7, v179));
      v187 = vaddq_f32(v184, vmulq_f32(v9, v176));
      v188 = vaddq_f32(v184, vmulq_f32(v10, v176));
      v189 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v181)), vcvtnq_s32_f32(v186));
      v190 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v183)), vcvtnq_s32_f32(v188));
      *v188.f32 = vqmovun_s16(v189);
      *v189.i8 = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v185)), vcvtnq_s32_f32(vaddq_f32(v187, vmulq_f32(v8, v179)))));
      *v179.f32 = vqmovun_s16(v190);
      v191 = vzip1q_s8(v134, v189);
      *v181.f32 = vzip1_s8(*v188.f32, *v179.f32);
      *v188.f32 = vzip2_s8(*v188.f32, *v179.f32);
      v188.i64[1] = v188.i64[0];
      vst2_s8(i8, *(&v181 - 8));
      i8 += a3;
      v130[1] = vzip2q_s8(v191, v188);
      --v131;
      v130 = i8;
    }

    while (v131 > 1);
  }

  return result;
}

int8x16_t *from_444_to_32ARGB<8,8,(AlphaOutputMethod)2,true>(int8x16_t *result, int16x8_t *a2, int a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  if (a7 == 1)
  {
    v7 = vdupq_n_s32(0x3D65788Au);
    v8 = vdupq_n_s32(0xBC886CBF);
    v9 = vdupq_n_s32(0xBBDA5DD8);
    v10 = vdupq_n_s32(0x3D873197u);
    if (a4 <= 8)
    {
      v13 = 0;
    }

    else
    {
      v13 = a4 - 8;
    }

    v12 = a4 - v13;
    if (v13)
    {
      goto LABEL_12;
    }

LABEL_20:
    v124 = a2 + 8;
    v125 = a2 + 32;
    v126 = a2 + 40;
    v127 = a2 + 64;
    v128 = a2 + 72;
    if (v12 < 1)
    {
      return result;
    }

    goto LABEL_21;
  }

  if (a7 != 9)
  {
    v7 = vdupq_n_s32(0x3D4C4A9Bu);
    v8 = vdupq_n_s32(0xBCD01EA6);
    v9 = vdupq_n_s32(0xBC489511);
    v10 = vdupq_n_s32(0x3D811A55u);
    if (a4 <= 8)
    {
      v129 = 0;
    }

    else
    {
      v129 = a4 - 8;
    }

    v12 = a4 - v129;
    if (v129)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

  v7 = vdupq_n_s32(0x3D56DECBu);
  v8 = vdupq_n_s32(0xBCA68235);
  v9 = vdupq_n_s32(0xBBBFD26A);
  v10 = vdupq_n_s32(0x3D8912CCu);
  if (a4 <= 8)
  {
    v11 = 0;
  }

  else
  {
    v11 = a4 - 8;
  }

  v12 = a4 - v11;
  if (!v11)
  {
    goto LABEL_20;
  }

LABEL_12:
  v14 = 8 * a3;
  v15 = a4 - 7;
  v16.i64[0] = 0xE000E000E000E00;
  v16.i64[1] = 0xE000E000E000E00;
  v17 = vdupq_n_s32(0x3D150A85u);
  v18.i64[0] = -1;
  v18.i64[1] = -1;
  do
  {
    v19 = vaddq_s16(*a2, v16);
    v20 = a2[32];
    v21 = a2[40];
    v22 = vcltzq_s16(v19);
    v23 = vzip1q_s16(v19, v22);
    v24 = vzip2q_s16(v19, v22);
    v25 = vcvtq_f32_s32(v23);
    v26 = vcltzq_s16(v20);
    v27 = vcvtq_f32_s32(vzip1q_s16(v20, v26));
    v28 = vcvtq_f32_s32(vzip2q_s16(v20, v26));
    v29 = vcltzq_s16(v21);
    v30 = vcvtq_f32_s32(vzip1q_s16(v21, v29));
    v31 = vcvtq_f32_s32(vzip2q_s16(v21, v29));
    v32 = vmulq_f32(v25, v17);
    v33 = vaddq_f32(v32, vmulq_f32(v9, v27));
    v34 = vaddq_f32(v32, vmulq_f32(v7, v30));
    v35 = vaddq_f32(v32, vmulq_f32(v10, v27));
    v36 = vmulq_f32(vcvtq_f32_s32(v24), v17);
    v37 = vaddq_f32(v36, vmulq_f32(v7, v31));
    v38 = vaddq_f32(vaddq_f32(v36, vmulq_f32(v9, v28)), vmulq_f32(v8, v31));
    v39 = vaddq_f32(v36, vmulq_f32(v10, v28));
    v40 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v34)), vcvtnq_s32_f32(v37));
    v41 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(v33, vmulq_f32(v8, v30)))), vcvtnq_s32_f32(v38));
    v42 = vcvtnq_s32_f32(v39);
    v43 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v35)), v42);
    *v42.i8 = vqmovun_s16(v40);
    *v40.i8 = vqmovun_s16(v41);
    *v43.i8 = vqmovun_s16(v43);
    v44 = vzip1q_s8(v18, v40);
    v45 = vzip1q_s8(v42, v43);
    *result = vzip1q_s8(v44, v45);
    result[1] = vzip2q_s8(v44, v45);
    v46 = vaddq_s16(a2[8], v16);
    v47 = a2[64];
    v48 = a2 + 1;
    v49 = a2[72];
    v50 = vcltzq_s16(v46);
    v51 = vzip1q_s16(v46, v50);
    v52 = vzip2q_s16(v46, v50);
    v53 = vcltzq_s16(v47);
    v54 = vcvtq_f32_s32(vzip1q_s16(v47, v53));
    v55 = vcvtq_f32_s32(vzip2q_s16(v47, v53));
    v56 = vcltzq_s16(v49);
    v57 = vcvtq_f32_s32(vzip1q_s16(v49, v56));
    v58 = vcvtq_f32_s32(vzip2q_s16(v49, v56));
    v59 = vmulq_f32(vcvtq_f32_s32(v51), v17);
    v60 = vaddq_f32(v59, vmulq_f32(v7, v57));
    v61 = vaddq_f32(v59, vmulq_f32(v9, v54));
    v62 = vaddq_f32(v59, vmulq_f32(v10, v54));
    v63 = vmulq_f32(vcvtq_f32_s32(v52), v17);
    v64 = vaddq_f32(v63, vmulq_f32(v7, v58));
    v65 = vaddq_f32(vaddq_f32(v63, vmulq_f32(v9, v55)), vmulq_f32(v8, v58));
    v66 = vaddq_f32(v63, vmulq_f32(v10, v55));
    v67 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v60)), vcvtnq_s32_f32(v64));
    v68 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(v61, vmulq_f32(v8, v57)))), vcvtnq_s32_f32(v65));
    v69 = vcvtnq_s32_f32(v66);
    v70 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v62)), v69);
    *v69.i8 = vqmovun_s16(v67);
    *v67.i8 = vqmovun_s16(v68);
    *v70.i8 = vqmovun_s16(v70);
    v71 = vzip1q_s8(v18, v67);
    v72 = vzip1q_s8(v69, v70);
    result[2] = vzip1q_s8(v71, v72);
    result[3] = vzip2q_s8(v71, v72);
    v73 = vaddq_s16(a2[16], v16);
    v74 = a2[48];
    v75 = a2[56];
    v76 = (result + v14);
    v77 = vcltzq_s16(v73);
    v78 = vzip1q_s16(v73, v77);
    v79 = vzip2q_s16(v73, v77);
    v80 = vcltzq_s16(v74);
    v81 = vcvtq_f32_s32(vzip1q_s16(v74, v80));
    v82 = vcvtq_f32_s32(vzip2q_s16(v74, v80));
    v83 = vcltzq_s16(v75);
    v84 = vcvtq_f32_s32(vzip1q_s16(v75, v83));
    v85 = vcvtq_f32_s32(vzip2q_s16(v75, v83));
    v86 = vmulq_f32(vcvtq_f32_s32(v78), v17);
    v87 = vaddq_f32(v86, vmulq_f32(v7, v84));
    v88 = vmulq_f32(v9, v81);
    v89 = vaddq_f32(v86, vmulq_f32(v10, v81));
    v90 = vmulq_f32(vcvtq_f32_s32(v79), v17);
    v91 = vaddq_f32(v86, v88);
    v92 = vaddq_f32(v90, vmulq_f32(v7, v85));
    v93 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(v91, vmulq_f32(v8, v84)))), vcvtnq_s32_f32(vaddq_f32(vaddq_f32(v90, vmulq_f32(v9, v82)), vmulq_f32(v8, v85))));
    v94 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v89)), vcvtnq_s32_f32(vaddq_f32(v90, vmulq_f32(v10, v82))));
    *v90.f32 = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v87)), vcvtnq_s32_f32(v92)));
    *v82.f32 = vqmovun_s16(v94);
    *v94.i8 = vqmovun_s16(v93);
    v95 = vzip1q_s8(v18, v94);
    *v93.i8 = vzip1_s8(*v90.f32, *v82.f32);
    *v90.f32 = vzip2_s8(*v90.f32, *v82.f32);
    v90.i64[1] = v90.i64[0];
    v96 = &result->i8[v14];
    vst2_s8(v96, *(&v93 - 8));
    v96 += 16;
    *v96 = vzip2q_s8(v95, v90);
    --v12;
    v97 = vaddq_s16(a2[24], v16);
    v98 = a2[80];
    v99 = a2[88];
    v100 = vcltzq_s16(v97);
    v101 = vzip1q_s16(v97, v100);
    v102 = vzip2q_s16(v97, v100);
    v103 = vcltzq_s16(v98);
    v104 = vcvtq_f32_s32(vzip1q_s16(v98, v103));
    v105 = vzip2q_s16(v98, v103);
    v106 = vcvtq_f32_s32(v101);
    v107 = vcvtq_f32_s32(v105);
    v108 = vcltzq_s16(v99);
    v109 = vcvtq_f32_s32(vzip1q_s16(v99, v108));
    v110 = vcvtq_f32_s32(vzip2q_s16(v99, v108));
    v111 = vmulq_f32(v106, v17);
    v112 = vaddq_f32(v111, vmulq_f32(v7, v109));
    v113 = vaddq_f32(v111, vmulq_f32(v9, v104));
    v114 = vaddq_f32(v111, vmulq_f32(v10, v104));
    v115 = vmulq_f32(vcvtq_f32_s32(v102), v17);
    v116 = vaddq_f32(v113, vmulq_f32(v8, v109));
    v117 = vaddq_f32(v115, vmulq_f32(v7, v110));
    v118 = vaddq_f32(v115, vmulq_f32(v9, v107));
    v119 = vaddq_f32(v115, vmulq_f32(v10, v107));
    v120 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v112)), vcvtnq_s32_f32(v117));
    v121 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v114)), vcvtnq_s32_f32(v119));
    *v119.f32 = vqmovun_s16(v120);
    *v120.i8 = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v116)), vcvtnq_s32_f32(vaddq_f32(v118, vmulq_f32(v8, v110)))));
    *v110.f32 = vqmovun_s16(v121);
    v122 = vzip1q_s8(v18, v120);
    *v112.f32 = vzip1_s8(*v119.f32, *v110.f32);
    *v119.f32 = vzip2_s8(*v119.f32, *v110.f32);
    v119.i64[1] = v119.i64[0];
    v123 = &result[2].i8[v14];
    result = (result + a3);
    vst2_s8(v123, *(&v112 - 8));
    v76[3] = vzip2q_s8(v122, v119);
    --v15;
    ++a2;
  }

  while (v15 > 1);
  v124 = v48 + 8;
  v125 = v48 + 32;
  v126 = v48 + 40;
  v127 = v48 + 64;
  v128 = v48 + 72;
  a2 = v48;
  if (v12 >= 1)
  {
LABEL_21:
    v130 = result + 2;
    v131 = v12 + 1;
    v132.i64[0] = 0xE000E000E000E00;
    v132.i64[1] = 0xE000E000E000E00;
    v133 = vdupq_n_s32(0x3D150A85u);
    v134.i64[0] = -1;
    v134.i64[1] = -1;
    i8 = result[2].i8;
    do
    {
      v136 = *a2++;
      v137 = vaddq_s16(v136, v132);
      v138 = *v125++;
      v139 = v138;
      v140 = *v126++;
      v141 = vcltzq_s16(v137);
      v142 = vzip1q_s16(v137, v141);
      v143 = vzip2q_s16(v137, v141);
      v144 = vcltzq_s16(v139);
      v145 = vcvtq_f32_s32(vzip1q_s16(v139, v144));
      v146 = vcvtq_f32_s32(vzip2q_s16(v139, v144));
      v147 = vcltzq_s16(v140);
      v148 = vcvtq_f32_s32(vzip1q_s16(v140, v147));
      v149 = vcvtq_f32_s32(vzip2q_s16(v140, v147));
      v150 = vmulq_f32(vcvtq_f32_s32(v142), v133);
      v151 = vaddq_f32(v150, vmulq_f32(v7, v148));
      v152 = vaddq_f32(v150, vmulq_f32(v9, v145));
      v153 = vaddq_f32(v150, vmulq_f32(v10, v145));
      v154 = vmulq_f32(vcvtq_f32_s32(v143), v133);
      v155 = vaddq_f32(v152, vmulq_f32(v8, v148));
      v156 = vaddq_f32(v154, vmulq_f32(v7, v149));
      v157 = vaddq_f32(vaddq_f32(v154, vmulq_f32(v9, v146)), vmulq_f32(v8, v149));
      v158 = vaddq_f32(v154, vmulq_f32(v10, v146));
      v159 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v151)), vcvtnq_s32_f32(v156));
      v160 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v155)), vcvtnq_s32_f32(v157));
      v161 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v153)), vcvtnq_s32_f32(v158));
      *v158.f32 = vqmovun_s16(v159);
      *v159.i8 = vqmovun_s16(v160);
      *v161.i8 = vqmovun_s16(v161);
      v162 = vzip1q_s8(v134, v159);
      *v160.i8 = vzip1_s8(*v158.f32, *v161.i8);
      *v158.f32 = vzip2_s8(*v158.f32, *v161.i8);
      v158.i64[1] = v158.i64[0];
      v163 = v130[-2].i8;
      vst2_s8(v163, *(&v160 - 8));
      v130[-1] = vzip2q_s8(v162, v158);
      v164 = *v124++;
      v165 = vaddq_s16(v164, v132);
      v166 = *v127++;
      v167 = v166;
      v168 = *v128++;
      v169 = vcltzq_s16(v165);
      v170 = vzip1q_s16(v165, v169);
      v171 = vzip2q_s16(v165, v169);
      v172 = vcltzq_s16(v167);
      v173 = vcvtq_f32_s32(vzip1q_s16(v167, v172));
      v174 = vzip2q_s16(v167, v172);
      v175 = vcvtq_f32_s32(v170);
      v176 = vcvtq_f32_s32(v174);
      v177 = vcltzq_s16(v168);
      v178 = vcvtq_f32_s32(vzip1q_s16(v168, v177));
      v179 = vcvtq_f32_s32(vzip2q_s16(v168, v177));
      v180 = vmulq_f32(v175, v133);
      v181 = vaddq_f32(v180, vmulq_f32(v7, v178));
      v182 = vaddq_f32(v180, vmulq_f32(v9, v173));
      v183 = vaddq_f32(v180, vmulq_f32(v10, v173));
      v184 = vmulq_f32(vcvtq_f32_s32(v171), v133);
      v185 = vaddq_f32(v182, vmulq_f32(v8, v178));
      v186 = vaddq_f32(v184, vmulq_f32(v7, v179));
      v187 = vaddq_f32(v184, vmulq_f32(v9, v176));
      v188 = vaddq_f32(v184, vmulq_f32(v10, v176));
      v189 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v181)), vcvtnq_s32_f32(v186));
      v190 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v183)), vcvtnq_s32_f32(v188));
      *v188.f32 = vqmovun_s16(v189);
      *v189.i8 = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v185)), vcvtnq_s32_f32(vaddq_f32(v187, vmulq_f32(v8, v179)))));
      *v179.f32 = vqmovun_s16(v190);
      v191 = vzip1q_s8(v134, v189);
      *v181.f32 = vzip1_s8(*v188.f32, *v179.f32);
      *v188.f32 = vzip2_s8(*v188.f32, *v179.f32);
      v188.i64[1] = v188.i64[0];
      vst2_s8(i8, *(&v181 - 8));
      i8 += a3;
      v130[1] = vzip2q_s8(v191, v188);
      --v131;
      v130 = i8;
    }

    while (v131 > 1);
  }

  return result;
}

void from_444_to_32BGRA<8,8,(AlphaOutputMethod)1,false>(int8x16_t *a1, int16x8_t *a2, int a3, int a4, int8x16_t *a5, unsigned int a6, int a7)
{
  if (a7 == 1)
  {
    v7 = vdupq_n_s32(0x3D65788Au);
    v8 = vdupq_n_s32(0xBC886CBF);
    v9 = vdupq_n_s32(0xBBDA5DD8);
    v10 = vdupq_n_s32(0x3D873197u);
    if (a4 <= 8)
    {
      v13 = 0;
    }

    else
    {
      v13 = a4 - 8;
    }

    v12 = a4 - v13;
    if (v13)
    {
      goto LABEL_12;
    }

LABEL_20:
    v129 = a2 + 8;
    v130 = a2 + 32;
    v131 = a2 + 40;
    v132 = a2 + 64;
    v133 = a2 + 72;
    if (v12 < 1)
    {
      return;
    }

    goto LABEL_21;
  }

  if (a7 != 9)
  {
    v7 = vdupq_n_s32(0x3D4C4A9Bu);
    v8 = vdupq_n_s32(0xBCD01EA6);
    v9 = vdupq_n_s32(0xBC489511);
    v10 = vdupq_n_s32(0x3D811A55u);
    if (a4 <= 8)
    {
      v134 = 0;
    }

    else
    {
      v134 = a4 - 8;
    }

    v12 = a4 - v134;
    if (v134)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

  v7 = vdupq_n_s32(0x3D56DECBu);
  v8 = vdupq_n_s32(0xBCA68235);
  v9 = vdupq_n_s32(0xBBBFD26A);
  v10 = vdupq_n_s32(0x3D8912CCu);
  if (a4 <= 8)
  {
    v11 = 0;
  }

  else
  {
    v11 = a4 - 8;
  }

  v12 = a4 - v11;
  if (!v11)
  {
    goto LABEL_20;
  }

LABEL_12:
  v14 = 8 * a3;
  v15 = a4 - 7;
  v16.i64[0] = 0xE000E000E000E00;
  v16.i64[1] = 0xE000E000E000E00;
  v17 = vdupq_n_s32(0x3D150A85u);
  do
  {
    v18 = vaddq_s16(*a2, v16);
    v19 = a2[32];
    v20 = *a5;
    v21 = a2[40];
    v22 = vcltzq_s16(v18);
    v23 = vzip1q_s16(v18, v22);
    v24 = vzip2q_s16(v18, v22);
    v25 = vcltzq_s16(v19);
    v26 = vcvtq_f32_s32(vzip1q_s16(v19, v25));
    v27 = vcvtq_f32_s32(vzip2q_s16(v19, v25));
    v28 = vcltzq_s16(v21);
    v29 = vcvtq_f32_s32(vzip1q_s16(v21, v28));
    v30 = vcvtq_f32_s32(vzip2q_s16(v21, v28));
    v31 = vmulq_f32(vcvtq_f32_s32(v23), v17);
    v32 = vaddq_f32(v31, vmulq_f32(v7, v29));
    v33 = vaddq_f32(v31, vmulq_f32(v9, v26));
    v34 = vaddq_f32(v31, vmulq_f32(v10, v26));
    v35 = vmulq_f32(vcvtq_f32_s32(v24), v17);
    v36 = vaddq_f32(v35, vmulq_f32(v7, v30));
    v37 = vaddq_f32(vaddq_f32(v35, vmulq_f32(v9, v27)), vmulq_f32(v8, v30));
    v38 = vaddq_f32(v35, vmulq_f32(v10, v27));
    v39 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v32)), vcvtnq_s32_f32(v36));
    v40 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(v33, vmulq_f32(v8, v29)))), vcvtnq_s32_f32(v37));
    v41 = vcvtnq_s32_f32(v38);
    v42 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v34)), v41);
    *v41.i8 = vqmovun_s16(v39);
    *v39.i8 = vqmovun_s16(v40);
    *v42.i8 = vqmovun_s16(v42);
    v43 = vzip1q_s8(v42, v41);
    v44 = vzip1q_s8(v39, *a5);
    v45 = (a1 + v14);
    *a1 = vzip1q_s8(v43, v44);
    a1[1] = vzip2q_s8(v43, v44);
    v46 = vaddq_s16(a2[8], v16);
    v47 = a2[64];
    v48 = a2[72];
    v49 = vcltzq_s16(v46);
    v50 = vzip1q_s16(v46, v49);
    v51 = vzip2q_s16(v46, v49);
    v52 = vcvtq_f32_s32(v50);
    v53 = vcltzq_s16(v47);
    v54 = vcvtq_f32_s32(vzip1q_s16(v47, v53));
    v55 = vcvtq_f32_s32(vzip2q_s16(v47, v53));
    v56 = vcltzq_s16(v48);
    v57 = vcvtq_f32_s32(vzip1q_s16(v48, v56));
    v58 = vcvtq_f32_s32(vzip2q_s16(v48, v56));
    v59 = vmulq_f32(v52, v17);
    v60 = vaddq_f32(v59, vmulq_f32(v9, v54));
    v61 = vaddq_f32(v59, vmulq_f32(v7, v57));
    v62 = vaddq_f32(v59, vmulq_f32(v10, v54));
    v63 = vmulq_f32(vcvtq_f32_s32(v51), v17);
    v64 = vaddq_f32(v63, vmulq_f32(v7, v58));
    v65 = vaddq_f32(vaddq_f32(v63, vmulq_f32(v9, v55)), vmulq_f32(v8, v58));
    v66 = vaddq_f32(v63, vmulq_f32(v10, v55));
    v67 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v61)), vcvtnq_s32_f32(v64));
    v68 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(v60, vmulq_f32(v8, v57)))), vcvtnq_s32_f32(v65));
    v69 = vcvtnq_s32_f32(v66);
    v70 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v62)), v69);
    v71 = a2 + 1;
    *v69.i8 = vqmovun_s16(v67);
    *v67.i8 = vqmovun_s16(v68);
    *v70.i8 = vqmovun_s16(v70);
    v72 = vzip1q_s8(v70, v69);
    v73 = vzip1q_s8(v67, vdupq_laneq_s64(v20, 1));
    a1[2] = vzip1q_s8(v72, v73);
    a1[3] = vzip2q_s8(v72, v73);
    --v12;
    v74 = *(a5 + 8 * a6);
    v75 = vaddq_s16(a2[16], v16);
    v76 = a2[48];
    v77 = a2[56];
    v78 = vcltzq_s16(v75);
    v79 = vzip1q_s16(v75, v78);
    v80 = vzip2q_s16(v75, v78);
    v81 = vcltzq_s16(v76);
    v82 = vcvtq_f32_s32(vzip1q_s16(v76, v81));
    v83 = vzip2q_s16(v76, v81);
    v84 = vcvtq_f32_s32(v79);
    v85 = vcvtq_f32_s32(v83);
    v86 = vcltzq_s16(v77);
    v87 = vcvtq_f32_s32(vzip1q_s16(v77, v86));
    v88 = vcvtq_f32_s32(vzip2q_s16(v77, v86));
    v89 = vmulq_f32(v84, v17);
    v90 = vaddq_f32(v89, vmulq_f32(v7, v87));
    v91 = vaddq_f32(v89, vmulq_f32(v9, v82));
    v92 = vaddq_f32(v89, vmulq_f32(v10, v82));
    v93 = vmulq_f32(vcvtq_f32_s32(v80), v17);
    v94 = vaddq_f32(v91, vmulq_f32(v8, v87));
    v95 = vaddq_f32(v93, vmulq_f32(v7, v88));
    v96 = vaddq_f32(v93, vmulq_f32(v9, v85));
    v97 = vaddq_f32(v93, vmulq_f32(v10, v85));
    v98 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v90)), vcvtnq_s32_f32(v95));
    v99 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v92)), vcvtnq_s32_f32(v97));
    *v97.f32 = vqmovun_s16(v98);
    *v98.i8 = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v94)), vcvtnq_s32_f32(vaddq_f32(v96, vmulq_f32(v8, v88)))));
    *v88.f32 = vqmovun_s16(v99);
    *v99.i8 = vzip1_s8(*v88.f32, *v97.f32);
    v100 = vzip1q_s8(v98, v74);
    *v97.f32 = vzip2_s8(*v88.f32, *v97.f32);
    v97.i64[1] = v97.i64[0];
    v101 = &a1->i8[v14];
    a1 = (a1 + a3);
    vst2_s8(v101, v99);
    v101 += 16;
    *v101 = vzip2q_s8(v97, v100);
    v102 = vaddq_s16(a2[24], v16);
    v103 = a2[80];
    v104 = a2[88];
    v105 = vcltzq_s16(v102);
    v106 = vzip1q_s16(v102, v105);
    v107 = vzip2q_s16(v102, v105);
    v108 = vcltzq_s16(v103);
    v109 = vcvtq_f32_s32(vzip1q_s16(v103, v108));
    v110 = vzip2q_s16(v103, v108);
    v111 = vcvtq_f32_s32(v106);
    v112 = vcvtq_f32_s32(v110);
    v113 = vcltzq_s16(v104);
    v114 = vcvtq_f32_s32(vzip1q_s16(v104, v113));
    v115 = vcvtq_f32_s32(vzip2q_s16(v104, v113));
    v116 = vmulq_f32(v111, v17);
    v117 = vaddq_f32(v116, vmulq_f32(v7, v114));
    v118 = vaddq_f32(v116, vmulq_f32(v9, v109));
    v119 = vaddq_f32(v116, vmulq_f32(v10, v109));
    v120 = vmulq_f32(vcvtq_f32_s32(v107), v17);
    v121 = vaddq_f32(v118, vmulq_f32(v8, v114));
    v122 = vaddq_f32(v120, vmulq_f32(v7, v115));
    v123 = vaddq_f32(v120, vmulq_f32(v9, v112));
    v124 = vaddq_f32(v120, vmulq_f32(v10, v112));
    v125 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v117)), vcvtnq_s32_f32(v122));
    v126 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v119)), vcvtnq_s32_f32(v124));
    *v124.f32 = vqmovun_s16(v125);
    *v125.i8 = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v121)), vcvtnq_s32_f32(vaddq_f32(v123, vmulq_f32(v8, v115)))));
    *v115.f32 = vqmovun_s16(v126);
    *v126.i8 = vzip1_s8(*v115.f32, *v124.f32);
    v127 = vzip1q_s8(v125, vdupq_laneq_s64(v74, 1));
    *v74.i8 = vzip2_s8(*v115.f32, *v124.f32);
    v74.i64[1] = v74.i64[0];
    i8 = v45[2].i8;
    a5 = (a5 + a6);
    vst2_s8(i8, v126);
    v45[3] = vzip2q_s8(v74, v127);
    --v15;
    ++a2;
  }

  while (v15 > 1);
  v129 = v71 + 8;
  v130 = v71 + 32;
  v131 = v71 + 40;
  v132 = v71 + 64;
  v133 = v71 + 72;
  a2 = v71;
  if (v12 >= 1)
  {
LABEL_21:
    v135 = a1 + 2;
    v136 = v12 + 1;
    v137.i64[0] = 0xE000E000E000E00;
    v137.i64[1] = 0xE000E000E000E00;
    v138 = vdupq_n_s32(0x3D150A85u);
    v139 = a1[2].i8;
    do
    {
      v140 = v135[-2].i8;
      v141 = *a5;
      v142 = *a2++;
      v143 = vaddq_s16(v142, v137);
      v144 = *v130++;
      v145 = v144;
      v146 = *v131++;
      v147 = vcltzq_s16(v143);
      v148 = vzip1q_s16(v143, v147);
      v149 = vzip2q_s16(v143, v147);
      v150 = vcltzq_s16(v145);
      v151 = vcvtq_f32_s32(vzip1q_s16(v145, v150));
      v152 = vzip2q_s16(v145, v150);
      v153 = vcvtq_f32_s32(v148);
      v154 = vcvtq_f32_s32(v152);
      v155 = vcltzq_s16(v146);
      v156 = vcvtq_f32_s32(vzip1q_s16(v146, v155));
      v157 = vcvtq_f32_s32(vzip2q_s16(v146, v155));
      v158 = vmulq_f32(v153, v138);
      v159 = vaddq_f32(v158, vmulq_f32(v7, v156));
      v160 = vaddq_f32(v158, vmulq_f32(v9, v151));
      v161 = vaddq_f32(v158, vmulq_f32(v10, v151));
      v162 = vmulq_f32(vcvtq_f32_s32(v149), v138);
      v163 = vaddq_f32(v160, vmulq_f32(v8, v156));
      v164 = vaddq_f32(v162, vmulq_f32(v7, v157));
      v165 = vaddq_f32(v162, vmulq_f32(v9, v154));
      v166 = vaddq_f32(v162, vmulq_f32(v10, v154));
      v167 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v159)), vcvtnq_s32_f32(v164));
      v168 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v161)), vcvtnq_s32_f32(v166));
      *v166.f32 = vqmovun_s16(v167);
      *v167.i8 = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v163)), vcvtnq_s32_f32(vaddq_f32(v165, vmulq_f32(v8, v157)))));
      *v157.f32 = vqmovun_s16(v168);
      *v168.i8 = vzip1_s8(*v157.f32, *v166.f32);
      v169 = vzip1q_s8(v167, *a5);
      *v166.f32 = vzip2_s8(*v157.f32, *v166.f32);
      v166.i64[1] = v166.i64[0];
      vst2_s8(v140, v168);
      v135[-1] = vzip2q_s8(v166, v169);
      v170 = *v129++;
      v171 = vaddq_s16(v170, v137);
      v172 = *v132++;
      v173 = v172;
      v174 = *v133++;
      v175 = vcltzq_s16(v171);
      v176 = vzip1q_s16(v171, v175);
      v177 = vzip2q_s16(v171, v175);
      v178 = vcltzq_s16(v173);
      v179 = vcvtq_f32_s32(vzip1q_s16(v173, v178));
      v180 = vzip2q_s16(v173, v178);
      v181 = vcvtq_f32_s32(v176);
      v182 = vcvtq_f32_s32(v180);
      v183 = vcltzq_s16(v174);
      v184 = vcvtq_f32_s32(vzip1q_s16(v174, v183));
      v185 = vcvtq_f32_s32(vzip2q_s16(v174, v183));
      v186 = vmulq_f32(v181, v138);
      v187 = vaddq_f32(v186, vmulq_f32(v7, v184));
      v188 = vaddq_f32(v186, vmulq_f32(v9, v179));
      v189 = vaddq_f32(v186, vmulq_f32(v10, v179));
      v190 = vmulq_f32(vcvtq_f32_s32(v177), v138);
      v191 = vaddq_f32(v188, vmulq_f32(v8, v184));
      v192 = vaddq_f32(v190, vmulq_f32(v7, v185));
      v193 = vaddq_f32(v190, vmulq_f32(v9, v182));
      v194 = vaddq_f32(v190, vmulq_f32(v10, v182));
      v195 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v187)), vcvtnq_s32_f32(v192));
      v196 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v189)), vcvtnq_s32_f32(v194));
      *v194.f32 = vqmovun_s16(v195);
      *v195.i8 = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v191)), vcvtnq_s32_f32(vaddq_f32(v193, vmulq_f32(v8, v185)))));
      *v185.f32 = vqmovun_s16(v196);
      *v196.i8 = vzip1_s8(*v185.f32, *v194.f32);
      v197 = vzip1q_s8(v195, vdupq_laneq_s64(v141, 1));
      *v141.i8 = vzip2_s8(*v185.f32, *v194.f32);
      v141.i64[1] = v141.i64[0];
      vst2_s8(v139, v196);
      v139 += a3;
      v135[1] = vzip2q_s8(v141, v197);
      a5 = (a5 + a6);
      --v136;
      v135 = v139;
    }

    while (v136 > 1);
  }
}

void from_444_to_32BGRA<8,8,(AlphaOutputMethod)1,true>(int8x16_t *a1, int16x8_t *a2, int a3, int a4, int8x16_t *a5, unsigned int a6, int a7)
{
  if (a7 == 1)
  {
    v7 = vdupq_n_s32(0x3D65788Au);
    v8 = vdupq_n_s32(0xBC886CBF);
    v9 = vdupq_n_s32(0xBBDA5DD8);
    v10 = vdupq_n_s32(0x3D873197u);
    if (a4 <= 8)
    {
      v13 = 0;
    }

    else
    {
      v13 = a4 - 8;
    }

    v12 = a4 - v13;
    if (v13)
    {
      goto LABEL_12;
    }

LABEL_20:
    v129 = a2 + 8;
    v130 = a2 + 32;
    v131 = a2 + 40;
    v132 = a2 + 64;
    v133 = a2 + 72;
    if (v12 < 1)
    {
      return;
    }

    goto LABEL_21;
  }

  if (a7 != 9)
  {
    v7 = vdupq_n_s32(0x3D4C4A9Bu);
    v8 = vdupq_n_s32(0xBCD01EA6);
    v9 = vdupq_n_s32(0xBC489511);
    v10 = vdupq_n_s32(0x3D811A55u);
    if (a4 <= 8)
    {
      v134 = 0;
    }

    else
    {
      v134 = a4 - 8;
    }

    v12 = a4 - v134;
    if (v134)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

  v7 = vdupq_n_s32(0x3D56DECBu);
  v8 = vdupq_n_s32(0xBCA68235);
  v9 = vdupq_n_s32(0xBBBFD26A);
  v10 = vdupq_n_s32(0x3D8912CCu);
  if (a4 <= 8)
  {
    v11 = 0;
  }

  else
  {
    v11 = a4 - 8;
  }

  v12 = a4 - v11;
  if (!v11)
  {
    goto LABEL_20;
  }

LABEL_12:
  v14 = 8 * a3;
  v15 = a4 - 7;
  v16.i64[0] = 0xE000E000E000E00;
  v16.i64[1] = 0xE000E000E000E00;
  v17 = vdupq_n_s32(0x3D150A85u);
  do
  {
    v18 = vaddq_s16(*a2, v16);
    v19 = a2[32];
    v20 = *a5;
    v21 = a2[40];
    v22 = vcltzq_s16(v18);
    v23 = vzip1q_s16(v18, v22);
    v24 = vzip2q_s16(v18, v22);
    v25 = vcltzq_s16(v19);
    v26 = vcvtq_f32_s32(vzip1q_s16(v19, v25));
    v27 = vcvtq_f32_s32(vzip2q_s16(v19, v25));
    v28 = vcltzq_s16(v21);
    v29 = vcvtq_f32_s32(vzip1q_s16(v21, v28));
    v30 = vcvtq_f32_s32(vzip2q_s16(v21, v28));
    v31 = vmulq_f32(vcvtq_f32_s32(v23), v17);
    v32 = vaddq_f32(v31, vmulq_f32(v7, v29));
    v33 = vaddq_f32(v31, vmulq_f32(v9, v26));
    v34 = vaddq_f32(v31, vmulq_f32(v10, v26));
    v35 = vmulq_f32(vcvtq_f32_s32(v24), v17);
    v36 = vaddq_f32(v35, vmulq_f32(v7, v30));
    v37 = vaddq_f32(vaddq_f32(v35, vmulq_f32(v9, v27)), vmulq_f32(v8, v30));
    v38 = vaddq_f32(v35, vmulq_f32(v10, v27));
    v39 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v32)), vcvtnq_s32_f32(v36));
    v40 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(v33, vmulq_f32(v8, v29)))), vcvtnq_s32_f32(v37));
    v41 = vcvtnq_s32_f32(v38);
    v42 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v34)), v41);
    *v41.i8 = vqmovun_s16(v39);
    *v39.i8 = vqmovun_s16(v40);
    *v42.i8 = vqmovun_s16(v42);
    v43 = vzip1q_s8(v42, v41);
    v44 = vzip1q_s8(v39, *a5);
    v45 = (a1 + v14);
    *a1 = vzip1q_s8(v43, v44);
    a1[1] = vzip2q_s8(v43, v44);
    v46 = vaddq_s16(a2[8], v16);
    v47 = a2[64];
    v48 = a2[72];
    v49 = vcltzq_s16(v46);
    v50 = vzip1q_s16(v46, v49);
    v51 = vzip2q_s16(v46, v49);
    v52 = vcvtq_f32_s32(v50);
    v53 = vcltzq_s16(v47);
    v54 = vcvtq_f32_s32(vzip1q_s16(v47, v53));
    v55 = vcvtq_f32_s32(vzip2q_s16(v47, v53));
    v56 = vcltzq_s16(v48);
    v57 = vcvtq_f32_s32(vzip1q_s16(v48, v56));
    v58 = vcvtq_f32_s32(vzip2q_s16(v48, v56));
    v59 = vmulq_f32(v52, v17);
    v60 = vaddq_f32(v59, vmulq_f32(v9, v54));
    v61 = vaddq_f32(v59, vmulq_f32(v7, v57));
    v62 = vaddq_f32(v59, vmulq_f32(v10, v54));
    v63 = vmulq_f32(vcvtq_f32_s32(v51), v17);
    v64 = vaddq_f32(v63, vmulq_f32(v7, v58));
    v65 = vaddq_f32(vaddq_f32(v63, vmulq_f32(v9, v55)), vmulq_f32(v8, v58));
    v66 = vaddq_f32(v63, vmulq_f32(v10, v55));
    v67 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v61)), vcvtnq_s32_f32(v64));
    v68 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(v60, vmulq_f32(v8, v57)))), vcvtnq_s32_f32(v65));
    v69 = vcvtnq_s32_f32(v66);
    v70 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v62)), v69);
    v71 = a2 + 1;
    *v69.i8 = vqmovun_s16(v67);
    *v67.i8 = vqmovun_s16(v68);
    *v70.i8 = vqmovun_s16(v70);
    v72 = vzip1q_s8(v70, v69);
    v73 = vzip1q_s8(v67, vdupq_laneq_s64(v20, 1));
    a1[2] = vzip1q_s8(v72, v73);
    a1[3] = vzip2q_s8(v72, v73);
    --v12;
    v74 = *(a5 + 8 * a6);
    v75 = vaddq_s16(a2[16], v16);
    v76 = a2[48];
    v77 = a2[56];
    v78 = vcltzq_s16(v75);
    v79 = vzip1q_s16(v75, v78);
    v80 = vzip2q_s16(v75, v78);
    v81 = vcltzq_s16(v76);
    v82 = vcvtq_f32_s32(vzip1q_s16(v76, v81));
    v83 = vzip2q_s16(v76, v81);
    v84 = vcvtq_f32_s32(v79);
    v85 = vcvtq_f32_s32(v83);
    v86 = vcltzq_s16(v77);
    v87 = vcvtq_f32_s32(vzip1q_s16(v77, v86));
    v88 = vcvtq_f32_s32(vzip2q_s16(v77, v86));
    v89 = vmulq_f32(v84, v17);
    v90 = vaddq_f32(v89, vmulq_f32(v7, v87));
    v91 = vaddq_f32(v89, vmulq_f32(v9, v82));
    v92 = vaddq_f32(v89, vmulq_f32(v10, v82));
    v93 = vmulq_f32(vcvtq_f32_s32(v80), v17);
    v94 = vaddq_f32(v91, vmulq_f32(v8, v87));
    v95 = vaddq_f32(v93, vmulq_f32(v7, v88));
    v96 = vaddq_f32(v93, vmulq_f32(v9, v85));
    v97 = vaddq_f32(v93, vmulq_f32(v10, v85));
    v98 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v90)), vcvtnq_s32_f32(v95));
    v99 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v92)), vcvtnq_s32_f32(v97));
    *v97.f32 = vqmovun_s16(v98);
    *v98.i8 = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v94)), vcvtnq_s32_f32(vaddq_f32(v96, vmulq_f32(v8, v88)))));
    *v88.f32 = vqmovun_s16(v99);
    *v99.i8 = vzip1_s8(*v88.f32, *v97.f32);
    v100 = vzip1q_s8(v98, v74);
    *v97.f32 = vzip2_s8(*v88.f32, *v97.f32);
    v97.i64[1] = v97.i64[0];
    v101 = &a1->i8[v14];
    a1 = (a1 + a3);
    vst2_s8(v101, v99);
    v101 += 16;
    *v101 = vzip2q_s8(v97, v100);
    v102 = vaddq_s16(a2[24], v16);
    v103 = a2[80];
    v104 = a2[88];
    v105 = vcltzq_s16(v102);
    v106 = vzip1q_s16(v102, v105);
    v107 = vzip2q_s16(v102, v105);
    v108 = vcltzq_s16(v103);
    v109 = vcvtq_f32_s32(vzip1q_s16(v103, v108));
    v110 = vzip2q_s16(v103, v108);
    v111 = vcvtq_f32_s32(v106);
    v112 = vcvtq_f32_s32(v110);
    v113 = vcltzq_s16(v104);
    v114 = vcvtq_f32_s32(vzip1q_s16(v104, v113));
    v115 = vcvtq_f32_s32(vzip2q_s16(v104, v113));
    v116 = vmulq_f32(v111, v17);
    v117 = vaddq_f32(v116, vmulq_f32(v7, v114));
    v118 = vaddq_f32(v116, vmulq_f32(v9, v109));
    v119 = vaddq_f32(v116, vmulq_f32(v10, v109));
    v120 = vmulq_f32(vcvtq_f32_s32(v107), v17);
    v121 = vaddq_f32(v118, vmulq_f32(v8, v114));
    v122 = vaddq_f32(v120, vmulq_f32(v7, v115));
    v123 = vaddq_f32(v120, vmulq_f32(v9, v112));
    v124 = vaddq_f32(v120, vmulq_f32(v10, v112));
    v125 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v117)), vcvtnq_s32_f32(v122));
    v126 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v119)), vcvtnq_s32_f32(v124));
    *v124.f32 = vqmovun_s16(v125);
    *v125.i8 = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v121)), vcvtnq_s32_f32(vaddq_f32(v123, vmulq_f32(v8, v115)))));
    *v115.f32 = vqmovun_s16(v126);
    *v126.i8 = vzip1_s8(*v115.f32, *v124.f32);
    v127 = vzip1q_s8(v125, vdupq_laneq_s64(v74, 1));
    *v74.i8 = vzip2_s8(*v115.f32, *v124.f32);
    v74.i64[1] = v74.i64[0];
    i8 = v45[2].i8;
    a5 = (a5 + a6);
    vst2_s8(i8, v126);
    v45[3] = vzip2q_s8(v74, v127);
    --v15;
    ++a2;
  }

  while (v15 > 1);
  v129 = v71 + 8;
  v130 = v71 + 32;
  v131 = v71 + 40;
  v132 = v71 + 64;
  v133 = v71 + 72;
  a2 = v71;
  if (v12 >= 1)
  {
LABEL_21:
    v135 = a1 + 2;
    v136 = v12 + 1;
    v137.i64[0] = 0xE000E000E000E00;
    v137.i64[1] = 0xE000E000E000E00;
    v138 = vdupq_n_s32(0x3D150A85u);
    v139 = a1[2].i8;
    do
    {
      v140 = v135[-2].i8;
      v141 = *a5;
      v142 = *a2++;
      v143 = vaddq_s16(v142, v137);
      v144 = *v130++;
      v145 = v144;
      v146 = *v131++;
      v147 = vcltzq_s16(v143);
      v148 = vzip1q_s16(v143, v147);
      v149 = vzip2q_s16(v143, v147);
      v150 = vcltzq_s16(v145);
      v151 = vcvtq_f32_s32(vzip1q_s16(v145, v150));
      v152 = vzip2q_s16(v145, v150);
      v153 = vcvtq_f32_s32(v148);
      v154 = vcvtq_f32_s32(v152);
      v155 = vcltzq_s16(v146);
      v156 = vcvtq_f32_s32(vzip1q_s16(v146, v155));
      v157 = vcvtq_f32_s32(vzip2q_s16(v146, v155));
      v158 = vmulq_f32(v153, v138);
      v159 = vaddq_f32(v158, vmulq_f32(v7, v156));
      v160 = vaddq_f32(v158, vmulq_f32(v9, v151));
      v161 = vaddq_f32(v158, vmulq_f32(v10, v151));
      v162 = vmulq_f32(vcvtq_f32_s32(v149), v138);
      v163 = vaddq_f32(v160, vmulq_f32(v8, v156));
      v164 = vaddq_f32(v162, vmulq_f32(v7, v157));
      v165 = vaddq_f32(v162, vmulq_f32(v9, v154));
      v166 = vaddq_f32(v162, vmulq_f32(v10, v154));
      v167 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v159)), vcvtnq_s32_f32(v164));
      v168 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v161)), vcvtnq_s32_f32(v166));
      *v166.f32 = vqmovun_s16(v167);
      *v167.i8 = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v163)), vcvtnq_s32_f32(vaddq_f32(v165, vmulq_f32(v8, v157)))));
      *v157.f32 = vqmovun_s16(v168);
      *v168.i8 = vzip1_s8(*v157.f32, *v166.f32);
      v169 = vzip1q_s8(v167, *a5);
      *v166.f32 = vzip2_s8(*v157.f32, *v166.f32);
      v166.i64[1] = v166.i64[0];
      vst2_s8(v140, v168);
      v135[-1] = vzip2q_s8(v166, v169);
      v170 = *v129++;
      v171 = vaddq_s16(v170, v137);
      v172 = *v132++;
      v173 = v172;
      v174 = *v133++;
      v175 = vcltzq_s16(v171);
      v176 = vzip1q_s16(v171, v175);
      v177 = vzip2q_s16(v171, v175);
      v178 = vcltzq_s16(v173);
      v179 = vcvtq_f32_s32(vzip1q_s16(v173, v178));
      v180 = vzip2q_s16(v173, v178);
      v181 = vcvtq_f32_s32(v176);
      v182 = vcvtq_f32_s32(v180);
      v183 = vcltzq_s16(v174);
      v184 = vcvtq_f32_s32(vzip1q_s16(v174, v183));
      v185 = vcvtq_f32_s32(vzip2q_s16(v174, v183));
      v186 = vmulq_f32(v181, v138);
      v187 = vaddq_f32(v186, vmulq_f32(v7, v184));
      v188 = vaddq_f32(v186, vmulq_f32(v9, v179));
      v189 = vaddq_f32(v186, vmulq_f32(v10, v179));
      v190 = vmulq_f32(vcvtq_f32_s32(v177), v138);
      v191 = vaddq_f32(v188, vmulq_f32(v8, v184));
      v192 = vaddq_f32(v190, vmulq_f32(v7, v185));
      v193 = vaddq_f32(v190, vmulq_f32(v9, v182));
      v194 = vaddq_f32(v190, vmulq_f32(v10, v182));
      v195 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v187)), vcvtnq_s32_f32(v192));
      v196 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v189)), vcvtnq_s32_f32(v194));
      *v194.f32 = vqmovun_s16(v195);
      *v195.i8 = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v191)), vcvtnq_s32_f32(vaddq_f32(v193, vmulq_f32(v8, v185)))));
      *v185.f32 = vqmovun_s16(v196);
      *v196.i8 = vzip1_s8(*v185.f32, *v194.f32);
      v197 = vzip1q_s8(v195, vdupq_laneq_s64(v141, 1));
      *v141.i8 = vzip2_s8(*v185.f32, *v194.f32);
      v141.i64[1] = v141.i64[0];
      vst2_s8(v139, v196);
      v139 += a3;
      v135[1] = vzip2q_s8(v141, v197);
      a5 = (a5 + a6);
      --v136;
      v135 = v139;
    }

    while (v136 > 1);
  }
}

int8x16_t *from_444_to_32BGRA<8,8,(AlphaOutputMethod)2,false>(int8x16_t *result, int16x8_t *a2, int a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  if (a7 == 1)
  {
    v7 = vdupq_n_s32(0x3D65788Au);
    v8 = vdupq_n_s32(0xBC886CBF);
    v9 = vdupq_n_s32(0xBBDA5DD8);
    v10 = vdupq_n_s32(0x3D873197u);
    if (a4 <= 8)
    {
      v13 = 0;
    }

    else
    {
      v13 = a4 - 8;
    }

    v12 = a4 - v13;
    if (v13)
    {
      goto LABEL_12;
    }

LABEL_20:
    v124 = a2 + 8;
    v125 = a2 + 32;
    v126 = a2 + 40;
    v127 = a2 + 64;
    v128 = a2 + 72;
    if (v12 < 1)
    {
      return result;
    }

    goto LABEL_21;
  }

  if (a7 != 9)
  {
    v7 = vdupq_n_s32(0x3D4C4A9Bu);
    v8 = vdupq_n_s32(0xBCD01EA6);
    v9 = vdupq_n_s32(0xBC489511);
    v10 = vdupq_n_s32(0x3D811A55u);
    if (a4 <= 8)
    {
      v129 = 0;
    }

    else
    {
      v129 = a4 - 8;
    }

    v12 = a4 - v129;
    if (v129)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

  v7 = vdupq_n_s32(0x3D56DECBu);
  v8 = vdupq_n_s32(0xBCA68235);
  v9 = vdupq_n_s32(0xBBBFD26A);
  v10 = vdupq_n_s32(0x3D8912CCu);
  if (a4 <= 8)
  {
    v11 = 0;
  }

  else
  {
    v11 = a4 - 8;
  }

  v12 = a4 - v11;
  if (!v11)
  {
    goto LABEL_20;
  }

LABEL_12:
  v14 = 8 * a3;
  v15 = a4 - 7;
  v16.i64[0] = 0xE000E000E000E00;
  v16.i64[1] = 0xE000E000E000E00;
  v17 = vdupq_n_s32(0x3D150A85u);
  v18.i64[0] = -1;
  v18.i64[1] = -1;
  do
  {
    v19 = vaddq_s16(*a2, v16);
    v20 = a2[32];
    v21 = a2[40];
    v22 = vcltzq_s16(v19);
    v23 = vzip1q_s16(v19, v22);
    v24 = vzip2q_s16(v19, v22);
    v25 = vcvtq_f32_s32(v23);
    v26 = vcltzq_s16(v20);
    v27 = vcvtq_f32_s32(vzip1q_s16(v20, v26));
    v28 = vcvtq_f32_s32(vzip2q_s16(v20, v26));
    v29 = vcltzq_s16(v21);
    v30 = vcvtq_f32_s32(vzip1q_s16(v21, v29));
    v31 = vcvtq_f32_s32(vzip2q_s16(v21, v29));
    v32 = vmulq_f32(v25, v17);
    v33 = vaddq_f32(v32, vmulq_f32(v9, v27));
    v34 = vaddq_f32(v32, vmulq_f32(v7, v30));
    v35 = vaddq_f32(v32, vmulq_f32(v10, v27));
    v36 = vmulq_f32(vcvtq_f32_s32(v24), v17);
    v37 = vaddq_f32(v36, vmulq_f32(v7, v31));
    v38 = vaddq_f32(vaddq_f32(v36, vmulq_f32(v9, v28)), vmulq_f32(v8, v31));
    v39 = vaddq_f32(v36, vmulq_f32(v10, v28));
    v40 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v34)), vcvtnq_s32_f32(v37));
    v41 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(v33, vmulq_f32(v8, v30)))), vcvtnq_s32_f32(v38));
    v42 = vcvtnq_s32_f32(v39);
    v43 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v35)), v42);
    *v42.i8 = vqmovun_s16(v40);
    *v40.i8 = vqmovun_s16(v41);
    *v43.i8 = vqmovun_s16(v43);
    v44 = vzip1q_s8(v43, v42);
    v45 = vzip1q_s8(v40, v18);
    *result = vzip1q_s8(v44, v45);
    result[1] = vzip2q_s8(v44, v45);
    v46 = vaddq_s16(a2[8], v16);
    v47 = a2[64];
    v48 = a2 + 1;
    v49 = a2[72];
    v50 = vcltzq_s16(v46);
    v51 = vzip1q_s16(v46, v50);
    v52 = vzip2q_s16(v46, v50);
    v53 = vcltzq_s16(v47);
    v54 = vcvtq_f32_s32(vzip1q_s16(v47, v53));
    v55 = vcvtq_f32_s32(vzip2q_s16(v47, v53));
    v56 = vcltzq_s16(v49);
    v57 = vcvtq_f32_s32(vzip1q_s16(v49, v56));
    v58 = vcvtq_f32_s32(vzip2q_s16(v49, v56));
    v59 = vmulq_f32(vcvtq_f32_s32(v51), v17);
    v60 = vaddq_f32(v59, vmulq_f32(v7, v57));
    v61 = vaddq_f32(v59, vmulq_f32(v9, v54));
    v62 = vaddq_f32(v59, vmulq_f32(v10, v54));
    v63 = vmulq_f32(vcvtq_f32_s32(v52), v17);
    v64 = vaddq_f32(v63, vmulq_f32(v7, v58));
    v65 = vaddq_f32(vaddq_f32(v63, vmulq_f32(v9, v55)), vmulq_f32(v8, v58));
    v66 = vaddq_f32(v63, vmulq_f32(v10, v55));
    v67 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v60)), vcvtnq_s32_f32(v64));
    v68 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(v61, vmulq_f32(v8, v57)))), vcvtnq_s32_f32(v65));
    v69 = vcvtnq_s32_f32(v66);
    v70 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v62)), v69);
    *v69.i8 = vqmovun_s16(v67);
    *v67.i8 = vqmovun_s16(v68);
    *v70.i8 = vqmovun_s16(v70);
    v71 = vzip1q_s8(v70, v69);
    v72 = vzip1q_s8(v67, v18);
    result[2] = vzip1q_s8(v71, v72);
    result[3] = vzip2q_s8(v71, v72);
    v73 = vaddq_s16(a2[16], v16);
    v74 = a2[48];
    v75 = a2[56];
    v76 = (result + v14);
    v77 = vcltzq_s16(v73);
    v78 = vzip1q_s16(v73, v77);
    v79 = vzip2q_s16(v73, v77);
    v80 = vcltzq_s16(v74);
    v81 = vcvtq_f32_s32(vzip1q_s16(v74, v80));
    v82 = vcvtq_f32_s32(vzip2q_s16(v74, v80));
    v83 = vcltzq_s16(v75);
    v84 = vcvtq_f32_s32(vzip1q_s16(v75, v83));
    v85 = vcvtq_f32_s32(vzip2q_s16(v75, v83));
    v86 = vmulq_f32(vcvtq_f32_s32(v78), v17);
    v87 = vaddq_f32(v86, vmulq_f32(v7, v84));
    v88 = vmulq_f32(v9, v81);
    v89 = vaddq_f32(v86, vmulq_f32(v10, v81));
    v90 = vmulq_f32(vcvtq_f32_s32(v79), v17);
    v91 = vaddq_f32(v86, v88);
    v92 = vaddq_f32(v90, vmulq_f32(v7, v85));
    v93 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(v91, vmulq_f32(v8, v84)))), vcvtnq_s32_f32(vaddq_f32(vaddq_f32(v90, vmulq_f32(v9, v82)), vmulq_f32(v8, v85))));
    v94 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v89)), vcvtnq_s32_f32(vaddq_f32(v90, vmulq_f32(v10, v82))));
    *v90.f32 = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v87)), vcvtnq_s32_f32(v92)));
    *v82.f32 = vqmovun_s16(v94);
    *v94.i8 = vqmovun_s16(v93);
    *v93.i8 = vzip1_s8(*v82.f32, *v90.f32);
    v95 = vzip1q_s8(v94, v18);
    *v90.f32 = vzip2_s8(*v82.f32, *v90.f32);
    v90.i64[1] = v90.i64[0];
    v96 = &result->i8[v14];
    vst2_s8(v96, v93);
    v96 += 16;
    *v96 = vzip2q_s8(v90, v95);
    --v12;
    v97 = vaddq_s16(a2[24], v16);
    v98 = a2[80];
    v99 = a2[88];
    v100 = vcltzq_s16(v97);
    v101 = vzip1q_s16(v97, v100);
    v102 = vzip2q_s16(v97, v100);
    v103 = vcltzq_s16(v98);
    v104 = vcvtq_f32_s32(vzip1q_s16(v98, v103));
    v105 = vzip2q_s16(v98, v103);
    v106 = vcvtq_f32_s32(v101);
    v107 = vcvtq_f32_s32(v105);
    v108 = vcltzq_s16(v99);
    v109 = vcvtq_f32_s32(vzip1q_s16(v99, v108));
    v110 = vcvtq_f32_s32(vzip2q_s16(v99, v108));
    v111 = vmulq_f32(v106, v17);
    v112 = vaddq_f32(v111, vmulq_f32(v7, v109));
    v113 = vaddq_f32(v111, vmulq_f32(v9, v104));
    v114 = vaddq_f32(v111, vmulq_f32(v10, v104));
    v115 = vmulq_f32(vcvtq_f32_s32(v102), v17);
    v116 = vaddq_f32(v113, vmulq_f32(v8, v109));
    v117 = vaddq_f32(v115, vmulq_f32(v7, v110));
    v118 = vaddq_f32(v115, vmulq_f32(v9, v107));
    v119 = vaddq_f32(v115, vmulq_f32(v10, v107));
    v120 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v112)), vcvtnq_s32_f32(v117));
    v121 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v114)), vcvtnq_s32_f32(v119));
    *v119.f32 = vqmovun_s16(v120);
    *v120.i8 = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v116)), vcvtnq_s32_f32(vaddq_f32(v118, vmulq_f32(v8, v110)))));
    *v110.f32 = vqmovun_s16(v121);
    *v121.i8 = vzip1_s8(*v110.f32, *v119.f32);
    v122 = vzip1q_s8(v120, v18);
    *v119.f32 = vzip2_s8(*v110.f32, *v119.f32);
    v119.i64[1] = v119.i64[0];
    v123 = &result[2].i8[v14];
    result = (result + a3);
    vst2_s8(v123, v121);
    v76[3] = vzip2q_s8(v119, v122);
    --v15;
    ++a2;
  }

  while (v15 > 1);
  v124 = v48 + 8;
  v125 = v48 + 32;
  v126 = v48 + 40;
  v127 = v48 + 64;
  v128 = v48 + 72;
  a2 = v48;
  if (v12 >= 1)
  {
LABEL_21:
    v130 = result + 2;
    v131 = v12 + 1;
    v132.i64[0] = 0xE000E000E000E00;
    v132.i64[1] = 0xE000E000E000E00;
    v133 = vdupq_n_s32(0x3D150A85u);
    v134.i64[0] = -1;
    v134.i64[1] = -1;
    i8 = result[2].i8;
    do
    {
      v136 = *a2++;
      v137 = vaddq_s16(v136, v132);
      v138 = *v125++;
      v139 = v138;
      v140 = *v126++;
      v141 = vcltzq_s16(v137);
      v142 = vzip1q_s16(v137, v141);
      v143 = vzip2q_s16(v137, v141);
      v144 = vcltzq_s16(v139);
      v145 = vcvtq_f32_s32(vzip1q_s16(v139, v144));
      v146 = vcvtq_f32_s32(vzip2q_s16(v139, v144));
      v147 = vcltzq_s16(v140);
      v148 = vcvtq_f32_s32(vzip1q_s16(v140, v147));
      v149 = vcvtq_f32_s32(vzip2q_s16(v140, v147));
      v150 = vmulq_f32(vcvtq_f32_s32(v142), v133);
      v151 = vaddq_f32(v150, vmulq_f32(v7, v148));
      v152 = vaddq_f32(v150, vmulq_f32(v9, v145));
      v153 = vaddq_f32(v150, vmulq_f32(v10, v145));
      v154 = vmulq_f32(vcvtq_f32_s32(v143), v133);
      v155 = vaddq_f32(v152, vmulq_f32(v8, v148));
      v156 = vaddq_f32(v154, vmulq_f32(v7, v149));
      v157 = vaddq_f32(vaddq_f32(v154, vmulq_f32(v9, v146)), vmulq_f32(v8, v149));
      v158 = vaddq_f32(v154, vmulq_f32(v10, v146));
      v159 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v151)), vcvtnq_s32_f32(v156));
      v160 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v155)), vcvtnq_s32_f32(v157));
      v161 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v153)), vcvtnq_s32_f32(v158));
      *v158.f32 = vqmovun_s16(v159);
      *v159.i8 = vqmovun_s16(v160);
      *v161.i8 = vqmovun_s16(v161);
      *v153.f32 = vzip1_s8(*v161.i8, *v158.f32);
      v162 = vzip1q_s8(v159, v134);
      *v158.f32 = vzip2_s8(*v161.i8, *v158.f32);
      v158.i64[1] = v158.i64[0];
      v163 = v130[-2].i8;
      vst2_s8(v163, v153);
      v130[-1] = vzip2q_s8(v158, v162);
      v164 = *v124++;
      v165 = vaddq_s16(v164, v132);
      v166 = *v127++;
      v167 = v166;
      v168 = *v128++;
      v169 = vcltzq_s16(v165);
      v170 = vzip1q_s16(v165, v169);
      v171 = vzip2q_s16(v165, v169);
      v172 = vcltzq_s16(v167);
      v173 = vcvtq_f32_s32(vzip1q_s16(v167, v172));
      v174 = vzip2q_s16(v167, v172);
      v175 = vcvtq_f32_s32(v170);
      v176 = vcvtq_f32_s32(v174);
      v177 = vcltzq_s16(v168);
      v178 = vcvtq_f32_s32(vzip1q_s16(v168, v177));
      v179 = vcvtq_f32_s32(vzip2q_s16(v168, v177));
      v180 = vmulq_f32(v175, v133);
      v181 = vaddq_f32(v180, vmulq_f32(v7, v178));
      v182 = vaddq_f32(v180, vmulq_f32(v9, v173));
      v183 = vaddq_f32(v180, vmulq_f32(v10, v173));
      v184 = vmulq_f32(vcvtq_f32_s32(v171), v133);
      v185 = vaddq_f32(v182, vmulq_f32(v8, v178));
      v186 = vaddq_f32(v184, vmulq_f32(v7, v179));
      v187 = vaddq_f32(v184, vmulq_f32(v9, v176));
      v188 = vaddq_f32(v184, vmulq_f32(v10, v176));
      v189 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v181)), vcvtnq_s32_f32(v186));
      v190 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v183)), vcvtnq_s32_f32(v188));
      *v188.f32 = vqmovun_s16(v189);
      *v189.i8 = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v185)), vcvtnq_s32_f32(vaddq_f32(v187, vmulq_f32(v8, v179)))));
      *v179.f32 = vqmovun_s16(v190);
      *v190.i8 = vzip1_s8(*v179.f32, *v188.f32);
      v191 = vzip1q_s8(v189, v134);
      *v188.f32 = vzip2_s8(*v179.f32, *v188.f32);
      v188.i64[1] = v188.i64[0];
      vst2_s8(i8, v190);
      i8 += a3;
      v130[1] = vzip2q_s8(v188, v191);
      --v131;
      v130 = i8;
    }

    while (v131 > 1);
  }

  return result;
}

int8x16_t *from_444_to_32BGRA<8,8,(AlphaOutputMethod)2,true>(int8x16_t *result, int16x8_t *a2, int a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  if (a7 == 1)
  {
    v7 = vdupq_n_s32(0x3D65788Au);
    v8 = vdupq_n_s32(0xBC886CBF);
    v9 = vdupq_n_s32(0xBBDA5DD8);
    v10 = vdupq_n_s32(0x3D873197u);
    if (a4 <= 8)
    {
      v13 = 0;
    }

    else
    {
      v13 = a4 - 8;
    }

    v12 = a4 - v13;
    if (v13)
    {
      goto LABEL_12;
    }

LABEL_20:
    v124 = a2 + 8;
    v125 = a2 + 32;
    v126 = a2 + 40;
    v127 = a2 + 64;
    v128 = a2 + 72;
    if (v12 < 1)
    {
      return result;
    }

    goto LABEL_21;
  }

  if (a7 != 9)
  {
    v7 = vdupq_n_s32(0x3D4C4A9Bu);
    v8 = vdupq_n_s32(0xBCD01EA6);
    v9 = vdupq_n_s32(0xBC489511);
    v10 = vdupq_n_s32(0x3D811A55u);
    if (a4 <= 8)
    {
      v129 = 0;
    }

    else
    {
      v129 = a4 - 8;
    }

    v12 = a4 - v129;
    if (v129)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

  v7 = vdupq_n_s32(0x3D56DECBu);
  v8 = vdupq_n_s32(0xBCA68235);
  v9 = vdupq_n_s32(0xBBBFD26A);
  v10 = vdupq_n_s32(0x3D8912CCu);
  if (a4 <= 8)
  {
    v11 = 0;
  }

  else
  {
    v11 = a4 - 8;
  }

  v12 = a4 - v11;
  if (!v11)
  {
    goto LABEL_20;
  }

LABEL_12:
  v14 = 8 * a3;
  v15 = a4 - 7;
  v16.i64[0] = 0xE000E000E000E00;
  v16.i64[1] = 0xE000E000E000E00;
  v17 = vdupq_n_s32(0x3D150A85u);
  v18.i64[0] = -1;
  v18.i64[1] = -1;
  do
  {
    v19 = vaddq_s16(*a2, v16);
    v20 = a2[32];
    v21 = a2[40];
    v22 = vcltzq_s16(v19);
    v23 = vzip1q_s16(v19, v22);
    v24 = vzip2q_s16(v19, v22);
    v25 = vcvtq_f32_s32(v23);
    v26 = vcltzq_s16(v20);
    v27 = vcvtq_f32_s32(vzip1q_s16(v20, v26));
    v28 = vcvtq_f32_s32(vzip2q_s16(v20, v26));
    v29 = vcltzq_s16(v21);
    v30 = vcvtq_f32_s32(vzip1q_s16(v21, v29));
    v31 = vcvtq_f32_s32(vzip2q_s16(v21, v29));
    v32 = vmulq_f32(v25, v17);
    v33 = vaddq_f32(v32, vmulq_f32(v9, v27));
    v34 = vaddq_f32(v32, vmulq_f32(v7, v30));
    v35 = vaddq_f32(v32, vmulq_f32(v10, v27));
    v36 = vmulq_f32(vcvtq_f32_s32(v24), v17);
    v37 = vaddq_f32(v36, vmulq_f32(v7, v31));
    v38 = vaddq_f32(vaddq_f32(v36, vmulq_f32(v9, v28)), vmulq_f32(v8, v31));
    v39 = vaddq_f32(v36, vmulq_f32(v10, v28));
    v40 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v34)), vcvtnq_s32_f32(v37));
    v41 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(v33, vmulq_f32(v8, v30)))), vcvtnq_s32_f32(v38));
    v42 = vcvtnq_s32_f32(v39);
    v43 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v35)), v42);
    *v42.i8 = vqmovun_s16(v40);
    *v40.i8 = vqmovun_s16(v41);
    *v43.i8 = vqmovun_s16(v43);
    v44 = vzip1q_s8(v43, v42);
    v45 = vzip1q_s8(v40, v18);
    *result = vzip1q_s8(v44, v45);
    result[1] = vzip2q_s8(v44, v45);
    v46 = vaddq_s16(a2[8], v16);
    v47 = a2[64];
    v48 = a2 + 1;
    v49 = a2[72];
    v50 = vcltzq_s16(v46);
    v51 = vzip1q_s16(v46, v50);
    v52 = vzip2q_s16(v46, v50);
    v53 = vcltzq_s16(v47);
    v54 = vcvtq_f32_s32(vzip1q_s16(v47, v53));
    v55 = vcvtq_f32_s32(vzip2q_s16(v47, v53));
    v56 = vcltzq_s16(v49);
    v57 = vcvtq_f32_s32(vzip1q_s16(v49, v56));
    v58 = vcvtq_f32_s32(vzip2q_s16(v49, v56));
    v59 = vmulq_f32(vcvtq_f32_s32(v51), v17);
    v60 = vaddq_f32(v59, vmulq_f32(v7, v57));
    v61 = vaddq_f32(v59, vmulq_f32(v9, v54));
    v62 = vaddq_f32(v59, vmulq_f32(v10, v54));
    v63 = vmulq_f32(vcvtq_f32_s32(v52), v17);
    v64 = vaddq_f32(v63, vmulq_f32(v7, v58));
    v65 = vaddq_f32(vaddq_f32(v63, vmulq_f32(v9, v55)), vmulq_f32(v8, v58));
    v66 = vaddq_f32(v63, vmulq_f32(v10, v55));
    v67 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v60)), vcvtnq_s32_f32(v64));
    v68 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(v61, vmulq_f32(v8, v57)))), vcvtnq_s32_f32(v65));
    v69 = vcvtnq_s32_f32(v66);
    v70 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v62)), v69);
    *v69.i8 = vqmovun_s16(v67);
    *v67.i8 = vqmovun_s16(v68);
    *v70.i8 = vqmovun_s16(v70);
    v71 = vzip1q_s8(v70, v69);
    v72 = vzip1q_s8(v67, v18);
    result[2] = vzip1q_s8(v71, v72);
    result[3] = vzip2q_s8(v71, v72);
    v73 = vaddq_s16(a2[16], v16);
    v74 = a2[48];
    v75 = a2[56];
    v76 = (result + v14);
    v77 = vcltzq_s16(v73);
    v78 = vzip1q_s16(v73, v77);
    v79 = vzip2q_s16(v73, v77);
    v80 = vcltzq_s16(v74);
    v81 = vcvtq_f32_s32(vzip1q_s16(v74, v80));
    v82 = vcvtq_f32_s32(vzip2q_s16(v74, v80));
    v83 = vcltzq_s16(v75);
    v84 = vcvtq_f32_s32(vzip1q_s16(v75, v83));
    v85 = vcvtq_f32_s32(vzip2q_s16(v75, v83));
    v86 = vmulq_f32(vcvtq_f32_s32(v78), v17);
    v87 = vaddq_f32(v86, vmulq_f32(v7, v84));
    v88 = vmulq_f32(v9, v81);
    v89 = vaddq_f32(v86, vmulq_f32(v10, v81));
    v90 = vmulq_f32(vcvtq_f32_s32(v79), v17);
    v91 = vaddq_f32(v86, v88);
    v92 = vaddq_f32(v90, vmulq_f32(v7, v85));
    v93 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(v91, vmulq_f32(v8, v84)))), vcvtnq_s32_f32(vaddq_f32(vaddq_f32(v90, vmulq_f32(v9, v82)), vmulq_f32(v8, v85))));
    v94 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v89)), vcvtnq_s32_f32(vaddq_f32(v90, vmulq_f32(v10, v82))));
    *v90.f32 = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v87)), vcvtnq_s32_f32(v92)));
    *v82.f32 = vqmovun_s16(v94);
    *v94.i8 = vqmovun_s16(v93);
    *v93.i8 = vzip1_s8(*v82.f32, *v90.f32);
    v95 = vzip1q_s8(v94, v18);
    *v90.f32 = vzip2_s8(*v82.f32, *v90.f32);
    v90.i64[1] = v90.i64[0];
    v96 = &result->i8[v14];
    vst2_s8(v96, v93);
    v96 += 16;
    *v96 = vzip2q_s8(v90, v95);
    --v12;
    v97 = vaddq_s16(a2[24], v16);
    v98 = a2[80];
    v99 = a2[88];
    v100 = vcltzq_s16(v97);
    v101 = vzip1q_s16(v97, v100);
    v102 = vzip2q_s16(v97, v100);
    v103 = vcltzq_s16(v98);
    v104 = vcvtq_f32_s32(vzip1q_s16(v98, v103));
    v105 = vzip2q_s16(v98, v103);
    v106 = vcvtq_f32_s32(v101);
    v107 = vcvtq_f32_s32(v105);
    v108 = vcltzq_s16(v99);
    v109 = vcvtq_f32_s32(vzip1q_s16(v99, v108));
    v110 = vcvtq_f32_s32(vzip2q_s16(v99, v108));
    v111 = vmulq_f32(v106, v17);
    v112 = vaddq_f32(v111, vmulq_f32(v7, v109));
    v113 = vaddq_f32(v111, vmulq_f32(v9, v104));
    v114 = vaddq_f32(v111, vmulq_f32(v10, v104));
    v115 = vmulq_f32(vcvtq_f32_s32(v102), v17);
    v116 = vaddq_f32(v113, vmulq_f32(v8, v109));
    v117 = vaddq_f32(v115, vmulq_f32(v7, v110));
    v118 = vaddq_f32(v115, vmulq_f32(v9, v107));
    v119 = vaddq_f32(v115, vmulq_f32(v10, v107));
    v120 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v112)), vcvtnq_s32_f32(v117));
    v121 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v114)), vcvtnq_s32_f32(v119));
    *v119.f32 = vqmovun_s16(v120);
    *v120.i8 = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v116)), vcvtnq_s32_f32(vaddq_f32(v118, vmulq_f32(v8, v110)))));
    *v110.f32 = vqmovun_s16(v121);
    *v121.i8 = vzip1_s8(*v110.f32, *v119.f32);
    v122 = vzip1q_s8(v120, v18);
    *v119.f32 = vzip2_s8(*v110.f32, *v119.f32);
    v119.i64[1] = v119.i64[0];
    v123 = &result[2].i8[v14];
    result = (result + a3);
    vst2_s8(v123, v121);
    v76[3] = vzip2q_s8(v119, v122);
    --v15;
    ++a2;
  }

  while (v15 > 1);
  v124 = v48 + 8;
  v125 = v48 + 32;
  v126 = v48 + 40;
  v127 = v48 + 64;
  v128 = v48 + 72;
  a2 = v48;
  if (v12 >= 1)
  {
LABEL_21:
    v130 = result + 2;
    v131 = v12 + 1;
    v132.i64[0] = 0xE000E000E000E00;
    v132.i64[1] = 0xE000E000E000E00;
    v133 = vdupq_n_s32(0x3D150A85u);
    v134.i64[0] = -1;
    v134.i64[1] = -1;
    i8 = result[2].i8;
    do
    {
      v136 = *a2++;
      v137 = vaddq_s16(v136, v132);
      v138 = *v125++;
      v139 = v138;
      v140 = *v126++;
      v141 = vcltzq_s16(v137);
      v142 = vzip1q_s16(v137, v141);
      v143 = vzip2q_s16(v137, v141);
      v144 = vcltzq_s16(v139);
      v145 = vcvtq_f32_s32(vzip1q_s16(v139, v144));
      v146 = vcvtq_f32_s32(vzip2q_s16(v139, v144));
      v147 = vcltzq_s16(v140);
      v148 = vcvtq_f32_s32(vzip1q_s16(v140, v147));
      v149 = vcvtq_f32_s32(vzip2q_s16(v140, v147));
      v150 = vmulq_f32(vcvtq_f32_s32(v142), v133);
      v151 = vaddq_f32(v150, vmulq_f32(v7, v148));
      v152 = vaddq_f32(v150, vmulq_f32(v9, v145));
      v153 = vaddq_f32(v150, vmulq_f32(v10, v145));
      v154 = vmulq_f32(vcvtq_f32_s32(v143), v133);
      v155 = vaddq_f32(v152, vmulq_f32(v8, v148));
      v156 = vaddq_f32(v154, vmulq_f32(v7, v149));
      v157 = vaddq_f32(vaddq_f32(v154, vmulq_f32(v9, v146)), vmulq_f32(v8, v149));
      v158 = vaddq_f32(v154, vmulq_f32(v10, v146));
      v159 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v151)), vcvtnq_s32_f32(v156));
      v160 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v155)), vcvtnq_s32_f32(v157));
      v161 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v153)), vcvtnq_s32_f32(v158));
      *v158.f32 = vqmovun_s16(v159);
      *v159.i8 = vqmovun_s16(v160);
      *v161.i8 = vqmovun_s16(v161);
      *v153.f32 = vzip1_s8(*v161.i8, *v158.f32);
      v162 = vzip1q_s8(v159, v134);
      *v158.f32 = vzip2_s8(*v161.i8, *v158.f32);
      v158.i64[1] = v158.i64[0];
      v163 = v130[-2].i8;
      vst2_s8(v163, v153);
      v130[-1] = vzip2q_s8(v158, v162);
      v164 = *v124++;
      v165 = vaddq_s16(v164, v132);
      v166 = *v127++;
      v167 = v166;
      v168 = *v128++;
      v169 = vcltzq_s16(v165);
      v170 = vzip1q_s16(v165, v169);
      v171 = vzip2q_s16(v165, v169);
      v172 = vcltzq_s16(v167);
      v173 = vcvtq_f32_s32(vzip1q_s16(v167, v172));
      v174 = vzip2q_s16(v167, v172);
      v175 = vcvtq_f32_s32(v170);
      v176 = vcvtq_f32_s32(v174);
      v177 = vcltzq_s16(v168);
      v178 = vcvtq_f32_s32(vzip1q_s16(v168, v177));
      v179 = vcvtq_f32_s32(vzip2q_s16(v168, v177));
      v180 = vmulq_f32(v175, v133);
      v181 = vaddq_f32(v180, vmulq_f32(v7, v178));
      v182 = vaddq_f32(v180, vmulq_f32(v9, v173));
      v183 = vaddq_f32(v180, vmulq_f32(v10, v173));
      v184 = vmulq_f32(vcvtq_f32_s32(v171), v133);
      v185 = vaddq_f32(v182, vmulq_f32(v8, v178));
      v186 = vaddq_f32(v184, vmulq_f32(v7, v179));
      v187 = vaddq_f32(v184, vmulq_f32(v9, v176));
      v188 = vaddq_f32(v184, vmulq_f32(v10, v176));
      v189 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v181)), vcvtnq_s32_f32(v186));
      v190 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v183)), vcvtnq_s32_f32(v188));
      *v188.f32 = vqmovun_s16(v189);
      *v189.i8 = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v185)), vcvtnq_s32_f32(vaddq_f32(v187, vmulq_f32(v8, v179)))));
      *v179.f32 = vqmovun_s16(v190);
      *v190.i8 = vzip1_s8(*v179.f32, *v188.f32);
      v191 = vzip1q_s8(v189, v134);
      *v188.f32 = vzip2_s8(*v179.f32, *v188.f32);
      v188.i64[1] = v188.i64[0];
      vst2_s8(i8, v190);
      i8 += a3;
      v130[1] = vzip2q_s8(v188, v191);
      --v131;
      v130 = i8;
    }

    while (v131 > 1);
  }

  return result;
}

int8x16_t *from_444_to_n302<8,8,(AlphaOutputMethod)0,false>(int8x16_t *result, int16x8_t *a2, int a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  if (a7 == 1)
  {
    v7 = vdupq_n_s32(0x3E662551u);
    v8 = vdupq_n_s32(0xBD88D377);
    v9 = vdupq_n_s32(0xBCDB0243);
    v10 = vdupq_n_s32(0x3E879762u);
    if (a4 <= 8)
    {
      v13 = 0;
    }

    else
    {
      v13 = a4 - 8;
    }

    v12 = a4 - v13;
    if (v13)
    {
      goto LABEL_12;
    }

LABEL_20:
    v122 = a2 + 8;
    v123 = a2 + 32;
    v124 = a2 + 40;
    v125 = a2 + 64;
    v126 = a2 + 72;
    if (v12 < 1)
    {
      return result;
    }

    goto LABEL_21;
  }

  if (a7 != 9)
  {
    v7 = vdupq_n_s32(0x3E4CE46Du);
    v8 = vdupq_n_s32(0xBDD0BB5A);
    v9 = vdupq_n_s32(0xBD492C18);
    v10 = vdupq_n_s32(0x3E817B8Au);
    if (a4 <= 8)
    {
      v127 = 0;
    }

    else
    {
      v127 = a4 - 8;
    }

    v12 = a4 - v127;
    if (v127)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

  v7 = vdupq_n_s32(0x3E578094u);
  v8 = vdupq_n_s32(0xBDA6FF94);
  v9 = vdupq_n_s32(0xBCC062D8);
  v10 = vdupq_n_s32(0x3E897A02u);
  if (a4 <= 8)
  {
    v11 = 0;
  }

  else
  {
    v11 = a4 - 8;
  }

  v12 = a4 - v11;
  if (!v11)
  {
    goto LABEL_20;
  }

LABEL_12:
  v14 = a4 - 7;
  v15.i64[0] = 0xE000E000E000E00;
  v15.i64[1] = 0xE000E000E000E00;
  v16 = vdupq_n_s32(0x3E157ABDu);
  v17.i64[0] = 0xFC00FC00FC00FC00;
  v17.i64[1] = 0xFC00FC00FC00FC00;
  do
  {
    v18 = a2 + 1;
    v19 = (result + 8 * a3);
    v20 = a2[32];
    v21 = vaddq_s16(*a2, v15);
    v22 = a2[40];
    v23 = vcltzq_s16(v21);
    v24 = vzip1q_s16(v21, v23);
    v25 = vzip2q_s16(v21, v23);
    v26 = vcltzq_s16(v20);
    v27 = vcvtq_f32_s32(vzip1q_s16(v20, v26));
    v28 = vcvtq_f32_s32(vzip2q_s16(v20, v26));
    v29 = vcltzq_s16(v22);
    v30 = vcvtq_f32_s32(vzip1q_s16(v22, v29));
    v31 = vcvtq_f32_s32(vzip2q_s16(v22, v29));
    v32 = vmulq_f32(vcvtq_f32_s32(v24), v16);
    v33 = vaddq_f32(v32, vmulq_f32(v7, v30));
    v34 = vaddq_f32(v32, vmulq_f32(v9, v27));
    v35 = vaddq_f32(v32, vmulq_f32(v10, v27));
    v36 = vmulq_f32(vcvtq_f32_s32(v25), v16);
    v37 = vaddq_f32(v36, vmulq_f32(v7, v31));
    v38 = vaddq_f32(vaddq_f32(v36, vmulq_f32(v9, v28)), vmulq_f32(v8, v31));
    v39 = vaddq_f32(v36, vmulq_f32(v10, v28));
    v40 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v33)), vcvtnq_s32_f32(v37));
    v41 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(v34, vmulq_f32(v8, v30)))), vcvtnq_s32_f32(v38));
    v42 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v35)), vcvtnq_s32_f32(v39));
    v43 = vminq_s16(vmaxq_s16(v40, 0), v17);
    v44 = vminq_s16(vmaxq_s16(v41, 0), v17);
    v45 = vminq_s16(vmaxq_s16(v42, 0), v17);
    *result = vorrq_s8(vshlq_n_s32(vzip1q_s16(v44, 0), 0xCuLL), vorrq_s8(vshlq_n_s32(vzip1q_s16(v43, v7), 0x16uLL), vshlq_n_s32(vzip1q_s16(v45, 0), 2uLL)));
    result[1] = vorrq_s8(vshlq_n_s32(vzip2q_s16(v44, 0), 0xCuLL), vorrq_s8(vshlq_n_s32(vzip2q_s16(v43, v7), 0x16uLL), vshlq_n_s32(vzip2q_s16(v45, 0), 2uLL)));
    v46 = vaddq_s16(a2[8], v15);
    v47 = a2[64];
    v48 = a2[72];
    v49 = vcltzq_s16(v46);
    v50 = vzip1q_s16(v46, v49);
    v51 = vzip2q_s16(v46, v49);
    v52 = vcvtq_f32_s32(v50);
    v53 = vcltzq_s16(v47);
    v54 = vcvtq_f32_s32(vzip1q_s16(v47, v53));
    v55 = vcvtq_f32_s32(vzip2q_s16(v47, v53));
    v56 = vcltzq_s16(v48);
    v57 = vcvtq_f32_s32(vzip1q_s16(v48, v56));
    v58 = vcvtq_f32_s32(vzip2q_s16(v48, v56));
    v59 = vmulq_f32(v52, v16);
    v60 = vaddq_f32(v59, vmulq_f32(v9, v54));
    v61 = vaddq_f32(v59, vmulq_f32(v7, v57));
    v62 = vaddq_f32(v59, vmulq_f32(v10, v54));
    v63 = vmulq_f32(vcvtq_f32_s32(v51), v16);
    v64 = vaddq_f32(v63, vmulq_f32(v7, v58));
    v65 = vaddq_f32(vaddq_f32(v63, vmulq_f32(v9, v55)), vmulq_f32(v8, v58));
    v66 = vaddq_f32(v63, vmulq_f32(v10, v55));
    v67 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v61)), vcvtnq_s32_f32(v64));
    v68 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(v60, vmulq_f32(v8, v57)))), vcvtnq_s32_f32(v65));
    v69 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v62)), vcvtnq_s32_f32(v66));
    v70 = vminq_s16(vmaxq_s16(v67, 0), v17);
    v71 = vminq_s16(vmaxq_s16(v68, 0), v17);
    v72 = vminq_s16(vmaxq_s16(v69, 0), v17);
    result[2] = vorrq_s8(vshlq_n_s32(vzip1q_s16(v71, 0), 0xCuLL), vorrq_s8(vshlq_n_s32(vzip1q_s16(v70, v7), 0x16uLL), vshlq_n_s32(vzip1q_s16(v72, 0), 2uLL)));
    result[3] = vorrq_s8(vshlq_n_s32(vzip2q_s16(v71, 0), 0xCuLL), vorrq_s8(vshlq_n_s32(vzip2q_s16(v70, v7), 0x16uLL), vshlq_n_s32(vzip2q_s16(v72, 0), 2uLL)));
    --v12;
    v73 = vaddq_s16(a2[16], v15);
    v74 = a2[48];
    v75 = a2[56];
    v76 = vcltzq_s16(v73);
    v77 = vzip1q_s16(v73, v76);
    v78 = vzip2q_s16(v73, v76);
    v79 = vcltzq_s16(v74);
    v80 = vcvtq_f32_s32(vzip1q_s16(v74, v79));
    v81 = vzip2q_s16(v74, v79);
    v82 = vcvtq_f32_s32(v77);
    v83 = vcvtq_f32_s32(v81);
    v84 = vcltzq_s16(v75);
    v85 = vcvtq_f32_s32(vzip1q_s16(v75, v84));
    v86 = vcvtq_f32_s32(vzip2q_s16(v75, v84));
    v87 = vmulq_f32(v82, v16);
    v88 = vaddq_f32(v87, vmulq_f32(v7, v85));
    v89 = vmulq_f32(vcvtq_f32_s32(v78), v16);
    v90 = vaddq_f32(vaddq_f32(v87, vmulq_f32(v9, v80)), vmulq_f32(v8, v85));
    v91 = vaddq_f32(v89, vmulq_f32(v9, v83));
    v92 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(v87, vmulq_f32(v10, v80)))), vcvtnq_s32_f32(vaddq_f32(v89, vmulq_f32(v10, v83))));
    v93 = vminq_s16(vmaxq_s16(vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v88)), vcvtnq_s32_f32(vaddq_f32(v89, vmulq_f32(v7, v86)))), 0), v17);
    v94 = vminq_s16(vmaxq_s16(vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v90)), vcvtnq_s32_f32(vaddq_f32(v91, vmulq_f32(v8, v86)))), 0), v17);
    v95 = vminq_s16(vmaxq_s16(v92, 0), v17);
    *v19 = vorrq_s8(vshlq_n_s32(vzip1q_s16(v94, 0), 0xCuLL), vorrq_s8(vshlq_n_s32(vzip1q_s16(v93, v7), 0x16uLL), vshlq_n_s32(vzip1q_s16(v95, 0), 2uLL)));
    v19[1] = vorrq_s8(vshlq_n_s32(vzip2q_s16(v94, 0), 0xCuLL), vorrq_s8(vshlq_n_s32(vzip2q_s16(v93, v7), 0x16uLL), vshlq_n_s32(vzip2q_s16(v95, 0), 2uLL)));
    v96 = vaddq_s16(a2[24], v15);
    v97 = a2[80];
    v98 = a2[88];
    result = (result + a3);
    v99 = vcltzq_s16(v96);
    v100 = vzip1q_s16(v96, v99);
    v101 = vzip2q_s16(v96, v99);
    v102 = vcltzq_s16(v97);
    v103 = vcvtq_f32_s32(vzip1q_s16(v97, v102));
    v104 = vcvtq_f32_s32(vzip2q_s16(v97, v102));
    v105 = vcltzq_s16(v98);
    v106 = vcvtq_f32_s32(vzip1q_s16(v98, v105));
    v107 = vcvtq_f32_s32(vzip2q_s16(v98, v105));
    v108 = vmulq_f32(vcvtq_f32_s32(v100), v16);
    v109 = vaddq_f32(v108, vmulq_f32(v7, v106));
    v110 = vaddq_f32(v108, vmulq_f32(v9, v103));
    v111 = vmulq_f32(vcvtq_f32_s32(v101), v16);
    v112 = vaddq_f32(v108, vmulq_f32(v10, v103));
    v113 = vaddq_f32(v111, vmulq_f32(v7, v107));
    v114 = vaddq_f32(vaddq_f32(v111, vmulq_f32(v9, v104)), vmulq_f32(v8, v107));
    v115 = vaddq_f32(v111, vmulq_f32(v10, v104));
    v116 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v109)), vcvtnq_s32_f32(v113));
    v117 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(v110, vmulq_f32(v8, v106)))), vcvtnq_s32_f32(v114));
    v118 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v112)), vcvtnq_s32_f32(v115));
    v119 = vminq_s16(vmaxq_s16(v116, 0), v17);
    v120 = vminq_s16(vmaxq_s16(v117, 0), v17);
    v121 = vminq_s16(vmaxq_s16(v118, 0), v17);
    v19[2] = vorrq_s8(vshlq_n_s32(vzip1q_s16(v120, 0), 0xCuLL), vorrq_s8(vshlq_n_s32(vzip1q_s16(v119, v7), 0x16uLL), vshlq_n_s32(vzip1q_s16(v121, 0), 2uLL)));
    v19[3] = vorrq_s8(vshlq_n_s32(vzip2q_s16(v120, 0), 0xCuLL), vorrq_s8(vshlq_n_s32(vzip2q_s16(v119, v7), 0x16uLL), vshlq_n_s32(vzip2q_s16(v121, 0), 2uLL)));
    --v14;
    ++a2;
  }

  while (v14 > 1);
  v122 = v18 + 8;
  v123 = v18 + 32;
  v124 = v18 + 40;
  v125 = v18 + 64;
  v126 = v18 + 72;
  a2 = v18;
  if (v12 >= 1)
  {
LABEL_21:
    v128 = result + 2;
    v129 = v12 + 1;
    v130.i64[0] = 0xE000E000E000E00;
    v130.i64[1] = 0xE000E000E000E00;
    v131 = vdupq_n_s32(0x3E157ABDu);
    v132.i64[0] = 0xFC00FC00FC00FC00;
    v132.i64[1] = 0xFC00FC00FC00FC00;
    do
    {
      v133 = *a2++;
      v134 = v133;
      v135 = *v123++;
      v136 = v135;
      v137 = *v124++;
      v138 = vaddq_s16(v134, v130);
      v139 = vcltzq_s16(v138);
      v140 = vzip1q_s16(v138, v139);
      v141 = vzip2q_s16(v138, v139);
      v142 = vcltzq_s16(v136);
      v143 = vcvtq_f32_s32(vzip1q_s16(v136, v142));
      v144 = vcvtq_f32_s32(vzip2q_s16(v136, v142));
      v145 = vcltzq_s16(v137);
      v146 = vcvtq_f32_s32(vzip1q_s16(v137, v145));
      v147 = vcvtq_f32_s32(vzip2q_s16(v137, v145));
      v148 = vmulq_f32(vcvtq_f32_s32(v140), v131);
      v149 = vaddq_f32(v148, vmulq_f32(v7, v146));
      v150 = vaddq_f32(v148, vmulq_f32(v9, v143));
      v151 = vaddq_f32(v148, vmulq_f32(v10, v143));
      v152 = vmulq_f32(vcvtq_f32_s32(v141), v131);
      v153 = vaddq_f32(v152, vmulq_f32(v7, v147));
      v154 = vaddq_f32(vaddq_f32(v152, vmulq_f32(v9, v144)), vmulq_f32(v8, v147));
      v155 = vaddq_f32(v152, vmulq_f32(v10, v144));
      v156 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v149)), vcvtnq_s32_f32(v153));
      v157 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(v150, vmulq_f32(v8, v146)))), vcvtnq_s32_f32(v154));
      v158 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v151)), vcvtnq_s32_f32(v155));
      v159 = vminq_s16(vmaxq_s16(v156, 0), v132);
      v160 = vminq_s16(vmaxq_s16(v157, 0), v132);
      v161 = vminq_s16(vmaxq_s16(v158, 0), v132);
      v128[-2] = vorrq_s8(vshlq_n_s32(vzip1q_s16(v160, 0), 0xCuLL), vorrq_s8(vshlq_n_s32(vzip1q_s16(v159, v7), 0x16uLL), vshlq_n_s32(vzip1q_s16(v161, 0), 2uLL)));
      v128[-1] = vorrq_s8(vshlq_n_s32(vzip2q_s16(v160, 0), 0xCuLL), vorrq_s8(vshlq_n_s32(vzip2q_s16(v159, v7), 0x16uLL), vshlq_n_s32(vzip2q_s16(v161, 0), 2uLL)));
      v162 = *v122++;
      v163 = v162;
      v164 = *v125++;
      v165 = v164;
      v166 = *v126++;
      v167 = vaddq_s16(v163, v130);
      v168 = vcltzq_s16(v167);
      v169 = vzip1q_s16(v167, v168);
      v170 = vzip2q_s16(v167, v168);
      v171 = vcltzq_s16(v165);
      v172 = vcvtq_f32_s32(vzip1q_s16(v165, v171));
      v173 = vcvtq_f32_s32(vzip2q_s16(v165, v171));
      v174 = vcltzq_s16(v166);
      v175 = vcvtq_f32_s32(vzip1q_s16(v166, v174));
      v176 = vcvtq_f32_s32(vzip2q_s16(v166, v174));
      v177 = vmulq_f32(vcvtq_f32_s32(v169), v131);
      v178 = vaddq_f32(v177, vmulq_f32(v7, v175));
      v179 = vaddq_f32(v177, vmulq_f32(v9, v172));
      v180 = vmulq_f32(vcvtq_f32_s32(v170), v131);
      v181 = vaddq_f32(v177, vmulq_f32(v10, v172));
      v182 = vaddq_f32(v180, vmulq_f32(v7, v176));
      v183 = vaddq_f32(vaddq_f32(v180, vmulq_f32(v9, v173)), vmulq_f32(v8, v176));
      v184 = vaddq_f32(v180, vmulq_f32(v10, v173));
      v185 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v178)), vcvtnq_s32_f32(v182));
      v186 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(v179, vmulq_f32(v8, v175)))), vcvtnq_s32_f32(v183));
      v187 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v181)), vcvtnq_s32_f32(v184));
      v188 = vminq_s16(vmaxq_s16(v185, 0), v132);
      v189 = vminq_s16(vmaxq_s16(v186, 0), v132);
      v190 = vminq_s16(vmaxq_s16(v187, 0), v132);
      *v128 = vorrq_s8(vshlq_n_s32(vzip1q_s16(v189, 0), 0xCuLL), vorrq_s8(vshlq_n_s32(vzip1q_s16(v188, v7), 0x16uLL), vshlq_n_s32(vzip1q_s16(v190, 0), 2uLL)));
      v128[1] = vorrq_s8(vshlq_n_s32(vzip2q_s16(v189, 0), 0xCuLL), vorrq_s8(vshlq_n_s32(vzip2q_s16(v188, v7), 0x16uLL), vshlq_n_s32(vzip2q_s16(v190, 0), 2uLL)));
      v128 = (v128 + a3);
      --v129;
    }

    while (v129 > 1);
  }

  return result;
}

int8x16_t *from_444_to_n302<8,8,(AlphaOutputMethod)0,true>(int8x16_t *result, int16x8_t *a2, int a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  if (a7 == 1)
  {
    v7 = vdupq_n_s32(0x3E662551u);
    v8 = vdupq_n_s32(0xBD88D377);
    v9 = vdupq_n_s32(0xBCDB0243);
    v10 = vdupq_n_s32(0x3E879762u);
    if (a4 <= 8)
    {
      v13 = 0;
    }

    else
    {
      v13 = a4 - 8;
    }

    v12 = a4 - v13;
    if (v13)
    {
      goto LABEL_12;
    }

LABEL_20:
    v122 = a2 + 8;
    v123 = a2 + 32;
    v124 = a2 + 40;
    v125 = a2 + 64;
    v126 = a2 + 72;
    if (v12 < 1)
    {
      return result;
    }

    goto LABEL_21;
  }

  if (a7 != 9)
  {
    v7 = vdupq_n_s32(0x3E4CE46Du);
    v8 = vdupq_n_s32(0xBDD0BB5A);
    v9 = vdupq_n_s32(0xBD492C18);
    v10 = vdupq_n_s32(0x3E817B8Au);
    if (a4 <= 8)
    {
      v127 = 0;
    }

    else
    {
      v127 = a4 - 8;
    }

    v12 = a4 - v127;
    if (v127)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

  v7 = vdupq_n_s32(0x3E578094u);
  v8 = vdupq_n_s32(0xBDA6FF94);
  v9 = vdupq_n_s32(0xBCC062D8);
  v10 = vdupq_n_s32(0x3E897A02u);
  if (a4 <= 8)
  {
    v11 = 0;
  }

  else
  {
    v11 = a4 - 8;
  }

  v12 = a4 - v11;
  if (!v11)
  {
    goto LABEL_20;
  }

LABEL_12:
  v14 = a4 - 7;
  v15.i64[0] = 0xE000E000E000E00;
  v15.i64[1] = 0xE000E000E000E00;
  v16 = vdupq_n_s32(0x3E157ABDu);
  v17.i64[0] = 0xFC00FC00FC00FC00;
  v17.i64[1] = 0xFC00FC00FC00FC00;
  do
  {
    v18 = a2 + 1;
    v19 = (result + 8 * a3);
    v20 = a2[32];
    v21 = vaddq_s16(*a2, v15);
    v22 = a2[40];
    v23 = vcltzq_s16(v21);
    v24 = vzip1q_s16(v21, v23);
    v25 = vzip2q_s16(v21, v23);
    v26 = vcltzq_s16(v20);
    v27 = vcvtq_f32_s32(vzip1q_s16(v20, v26));
    v28 = vcvtq_f32_s32(vzip2q_s16(v20, v26));
    v29 = vcltzq_s16(v22);
    v30 = vcvtq_f32_s32(vzip1q_s16(v22, v29));
    v31 = vcvtq_f32_s32(vzip2q_s16(v22, v29));
    v32 = vmulq_f32(vcvtq_f32_s32(v24), v16);
    v33 = vaddq_f32(v32, vmulq_f32(v7, v30));
    v34 = vaddq_f32(v32, vmulq_f32(v9, v27));
    v35 = vaddq_f32(v32, vmulq_f32(v10, v27));
    v36 = vmulq_f32(vcvtq_f32_s32(v25), v16);
    v37 = vaddq_f32(v36, vmulq_f32(v7, v31));
    v38 = vaddq_f32(vaddq_f32(v36, vmulq_f32(v9, v28)), vmulq_f32(v8, v31));
    v39 = vaddq_f32(v36, vmulq_f32(v10, v28));
    v40 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v33)), vcvtnq_s32_f32(v37));
    v41 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(v34, vmulq_f32(v8, v30)))), vcvtnq_s32_f32(v38));
    v42 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v35)), vcvtnq_s32_f32(v39));
    v43 = vminq_s16(vmaxq_s16(v40, 0), v17);
    v44 = vminq_s16(vmaxq_s16(v41, 0), v17);
    v45 = vminq_s16(vmaxq_s16(v42, 0), v17);
    *result = vorrq_s8(vshlq_n_s32(vzip1q_s16(v44, 0), 0xCuLL), vorrq_s8(vshlq_n_s32(vzip1q_s16(v43, v7), 0x16uLL), vshlq_n_s32(vzip1q_s16(v45, 0), 2uLL)));
    result[1] = vorrq_s8(vshlq_n_s32(vzip2q_s16(v44, 0), 0xCuLL), vorrq_s8(vshlq_n_s32(vzip2q_s16(v43, v7), 0x16uLL), vshlq_n_s32(vzip2q_s16(v45, 0), 2uLL)));
    v46 = vaddq_s16(a2[8], v15);
    v47 = a2[64];
    v48 = a2[72];
    v49 = vcltzq_s16(v46);
    v50 = vzip1q_s16(v46, v49);
    v51 = vzip2q_s16(v46, v49);
    v52 = vcvtq_f32_s32(v50);
    v53 = vcltzq_s16(v47);
    v54 = vcvtq_f32_s32(vzip1q_s16(v47, v53));
    v55 = vcvtq_f32_s32(vzip2q_s16(v47, v53));
    v56 = vcltzq_s16(v48);
    v57 = vcvtq_f32_s32(vzip1q_s16(v48, v56));
    v58 = vcvtq_f32_s32(vzip2q_s16(v48, v56));
    v59 = vmulq_f32(v52, v16);
    v60 = vaddq_f32(v59, vmulq_f32(v9, v54));
    v61 = vaddq_f32(v59, vmulq_f32(v7, v57));
    v62 = vaddq_f32(v59, vmulq_f32(v10, v54));
    v63 = vmulq_f32(vcvtq_f32_s32(v51), v16);
    v64 = vaddq_f32(v63, vmulq_f32(v7, v58));
    v65 = vaddq_f32(vaddq_f32(v63, vmulq_f32(v9, v55)), vmulq_f32(v8, v58));
    v66 = vaddq_f32(v63, vmulq_f32(v10, v55));
    v67 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v61)), vcvtnq_s32_f32(v64));
    v68 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(v60, vmulq_f32(v8, v57)))), vcvtnq_s32_f32(v65));
    v69 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v62)), vcvtnq_s32_f32(v66));
    v70 = vminq_s16(vmaxq_s16(v67, 0), v17);
    v71 = vminq_s16(vmaxq_s16(v68, 0), v17);
    v72 = vminq_s16(vmaxq_s16(v69, 0), v17);
    result[2] = vorrq_s8(vshlq_n_s32(vzip1q_s16(v71, 0), 0xCuLL), vorrq_s8(vshlq_n_s32(vzip1q_s16(v70, v7), 0x16uLL), vshlq_n_s32(vzip1q_s16(v72, 0), 2uLL)));
    result[3] = vorrq_s8(vshlq_n_s32(vzip2q_s16(v71, 0), 0xCuLL), vorrq_s8(vshlq_n_s32(vzip2q_s16(v70, v7), 0x16uLL), vshlq_n_s32(vzip2q_s16(v72, 0), 2uLL)));
    --v12;
    v73 = vaddq_s16(a2[16], v15);
    v74 = a2[48];
    v75 = a2[56];
    v76 = vcltzq_s16(v73);
    v77 = vzip1q_s16(v73, v76);
    v78 = vzip2q_s16(v73, v76);
    v79 = vcltzq_s16(v74);
    v80 = vcvtq_f32_s32(vzip1q_s16(v74, v79));
    v81 = vzip2q_s16(v74, v79);
    v82 = vcvtq_f32_s32(v77);
    v83 = vcvtq_f32_s32(v81);
    v84 = vcltzq_s16(v75);
    v85 = vcvtq_f32_s32(vzip1q_s16(v75, v84));
    v86 = vcvtq_f32_s32(vzip2q_s16(v75, v84));
    v87 = vmulq_f32(v82, v16);
    v88 = vaddq_f32(v87, vmulq_f32(v7, v85));
    v89 = vmulq_f32(vcvtq_f32_s32(v78), v16);
    v90 = vaddq_f32(vaddq_f32(v87, vmulq_f32(v9, v80)), vmulq_f32(v8, v85));
    v91 = vaddq_f32(v89, vmulq_f32(v9, v83));
    v92 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(v87, vmulq_f32(v10, v80)))), vcvtnq_s32_f32(vaddq_f32(v89, vmulq_f32(v10, v83))));
    v93 = vminq_s16(vmaxq_s16(vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v88)), vcvtnq_s32_f32(vaddq_f32(v89, vmulq_f32(v7, v86)))), 0), v17);
    v94 = vminq_s16(vmaxq_s16(vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v90)), vcvtnq_s32_f32(vaddq_f32(v91, vmulq_f32(v8, v86)))), 0), v17);
    v95 = vminq_s16(vmaxq_s16(v92, 0), v17);
    *v19 = vorrq_s8(vshlq_n_s32(vzip1q_s16(v94, 0), 0xCuLL), vorrq_s8(vshlq_n_s32(vzip1q_s16(v93, v7), 0x16uLL), vshlq_n_s32(vzip1q_s16(v95, 0), 2uLL)));
    v19[1] = vorrq_s8(vshlq_n_s32(vzip2q_s16(v94, 0), 0xCuLL), vorrq_s8(vshlq_n_s32(vzip2q_s16(v93, v7), 0x16uLL), vshlq_n_s32(vzip2q_s16(v95, 0), 2uLL)));
    v96 = vaddq_s16(a2[24], v15);
    v97 = a2[80];
    v98 = a2[88];
    result = (result + a3);
    v99 = vcltzq_s16(v96);
    v100 = vzip1q_s16(v96, v99);
    v101 = vzip2q_s16(v96, v99);
    v102 = vcltzq_s16(v97);
    v103 = vcvtq_f32_s32(vzip1q_s16(v97, v102));
    v104 = vcvtq_f32_s32(vzip2q_s16(v97, v102));
    v105 = vcltzq_s16(v98);
    v106 = vcvtq_f32_s32(vzip1q_s16(v98, v105));
    v107 = vcvtq_f32_s32(vzip2q_s16(v98, v105));
    v108 = vmulq_f32(vcvtq_f32_s32(v100), v16);
    v109 = vaddq_f32(v108, vmulq_f32(v7, v106));
    v110 = vaddq_f32(v108, vmulq_f32(v9, v103));
    v111 = vmulq_f32(vcvtq_f32_s32(v101), v16);
    v112 = vaddq_f32(v108, vmulq_f32(v10, v103));
    v113 = vaddq_f32(v111, vmulq_f32(v7, v107));
    v114 = vaddq_f32(vaddq_f32(v111, vmulq_f32(v9, v104)), vmulq_f32(v8, v107));
    v115 = vaddq_f32(v111, vmulq_f32(v10, v104));
    v116 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v109)), vcvtnq_s32_f32(v113));
    v117 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(v110, vmulq_f32(v8, v106)))), vcvtnq_s32_f32(v114));
    v118 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v112)), vcvtnq_s32_f32(v115));
    v119 = vminq_s16(vmaxq_s16(v116, 0), v17);
    v120 = vminq_s16(vmaxq_s16(v117, 0), v17);
    v121 = vminq_s16(vmaxq_s16(v118, 0), v17);
    v19[2] = vorrq_s8(vshlq_n_s32(vzip1q_s16(v120, 0), 0xCuLL), vorrq_s8(vshlq_n_s32(vzip1q_s16(v119, v7), 0x16uLL), vshlq_n_s32(vzip1q_s16(v121, 0), 2uLL)));
    v19[3] = vorrq_s8(vshlq_n_s32(vzip2q_s16(v120, 0), 0xCuLL), vorrq_s8(vshlq_n_s32(vzip2q_s16(v119, v7), 0x16uLL), vshlq_n_s32(vzip2q_s16(v121, 0), 2uLL)));
    --v14;
    ++a2;
  }

  while (v14 > 1);
  v122 = v18 + 8;
  v123 = v18 + 32;
  v124 = v18 + 40;
  v125 = v18 + 64;
  v126 = v18 + 72;
  a2 = v18;
  if (v12 >= 1)
  {
LABEL_21:
    v128 = result + 2;
    v129 = v12 + 1;
    v130.i64[0] = 0xE000E000E000E00;
    v130.i64[1] = 0xE000E000E000E00;
    v131 = vdupq_n_s32(0x3E157ABDu);
    v132.i64[0] = 0xFC00FC00FC00FC00;
    v132.i64[1] = 0xFC00FC00FC00FC00;
    do
    {
      v133 = *a2++;
      v134 = v133;
      v135 = *v123++;
      v136 = v135;
      v137 = *v124++;
      v138 = vaddq_s16(v134, v130);
      v139 = vcltzq_s16(v138);
      v140 = vzip1q_s16(v138, v139);
      v141 = vzip2q_s16(v138, v139);
      v142 = vcltzq_s16(v136);
      v143 = vcvtq_f32_s32(vzip1q_s16(v136, v142));
      v144 = vcvtq_f32_s32(vzip2q_s16(v136, v142));
      v145 = vcltzq_s16(v137);
      v146 = vcvtq_f32_s32(vzip1q_s16(v137, v145));
      v147 = vcvtq_f32_s32(vzip2q_s16(v137, v145));
      v148 = vmulq_f32(vcvtq_f32_s32(v140), v131);
      v149 = vaddq_f32(v148, vmulq_f32(v7, v146));
      v150 = vaddq_f32(v148, vmulq_f32(v9, v143));
      v151 = vaddq_f32(v148, vmulq_f32(v10, v143));
      v152 = vmulq_f32(vcvtq_f32_s32(v141), v131);
      v153 = vaddq_f32(v152, vmulq_f32(v7, v147));
      v154 = vaddq_f32(vaddq_f32(v152, vmulq_f32(v9, v144)), vmulq_f32(v8, v147));
      v155 = vaddq_f32(v152, vmulq_f32(v10, v144));
      v156 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v149)), vcvtnq_s32_f32(v153));
      v157 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(v150, vmulq_f32(v8, v146)))), vcvtnq_s32_f32(v154));
      v158 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v151)), vcvtnq_s32_f32(v155));
      v159 = vminq_s16(vmaxq_s16(v156, 0), v132);
      v160 = vminq_s16(vmaxq_s16(v157, 0), v132);
      v161 = vminq_s16(vmaxq_s16(v158, 0), v132);
      v128[-2] = vorrq_s8(vshlq_n_s32(vzip1q_s16(v160, 0), 0xCuLL), vorrq_s8(vshlq_n_s32(vzip1q_s16(v159, v7), 0x16uLL), vshlq_n_s32(vzip1q_s16(v161, 0), 2uLL)));
      v128[-1] = vorrq_s8(vshlq_n_s32(vzip2q_s16(v160, 0), 0xCuLL), vorrq_s8(vshlq_n_s32(vzip2q_s16(v159, v7), 0x16uLL), vshlq_n_s32(vzip2q_s16(v161, 0), 2uLL)));
      v162 = *v122++;
      v163 = v162;
      v164 = *v125++;
      v165 = v164;
      v166 = *v126++;
      v167 = vaddq_s16(v163, v130);
      v168 = vcltzq_s16(v167);
      v169 = vzip1q_s16(v167, v168);
      v170 = vzip2q_s16(v167, v168);
      v171 = vcltzq_s16(v165);
      v172 = vcvtq_f32_s32(vzip1q_s16(v165, v171));
      v173 = vcvtq_f32_s32(vzip2q_s16(v165, v171));
      v174 = vcltzq_s16(v166);
      v175 = vcvtq_f32_s32(vzip1q_s16(v166, v174));
      v176 = vcvtq_f32_s32(vzip2q_s16(v166, v174));
      v177 = vmulq_f32(vcvtq_f32_s32(v169), v131);
      v178 = vaddq_f32(v177, vmulq_f32(v7, v175));
      v179 = vaddq_f32(v177, vmulq_f32(v9, v172));
      v180 = vmulq_f32(vcvtq_f32_s32(v170), v131);
      v181 = vaddq_f32(v177, vmulq_f32(v10, v172));
      v182 = vaddq_f32(v180, vmulq_f32(v7, v176));
      v183 = vaddq_f32(vaddq_f32(v180, vmulq_f32(v9, v173)), vmulq_f32(v8, v176));
      v184 = vaddq_f32(v180, vmulq_f32(v10, v173));
      v185 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v178)), vcvtnq_s32_f32(v182));
      v186 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(v179, vmulq_f32(v8, v175)))), vcvtnq_s32_f32(v183));
      v187 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v181)), vcvtnq_s32_f32(v184));
      v188 = vminq_s16(vmaxq_s16(v185, 0), v132);
      v189 = vminq_s16(vmaxq_s16(v186, 0), v132);
      v190 = vminq_s16(vmaxq_s16(v187, 0), v132);
      *v128 = vorrq_s8(vshlq_n_s32(vzip1q_s16(v189, 0), 0xCuLL), vorrq_s8(vshlq_n_s32(vzip1q_s16(v188, v7), 0x16uLL), vshlq_n_s32(vzip1q_s16(v190, 0), 2uLL)));
      v128[1] = vorrq_s8(vshlq_n_s32(vzip2q_s16(v189, 0), 0xCuLL), vorrq_s8(vshlq_n_s32(vzip2q_s16(v188, v7), 0x16uLL), vshlq_n_s32(vzip2q_s16(v190, 0), 2uLL)));
      v128 = (v128 + a3);
      --v129;
    }

    while (v129 > 1);
  }

  return result;
}

uint32x4_t *from_444_to_R10k<8,8,(AlphaOutputMethod)0,false>(uint32x4_t *result, int16x8_t *a2, int a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  if (a7 == 1)
  {
    v7 = vdupq_n_s32(0x3E662551u);
    v8 = vdupq_n_s32(0xBD88D377);
    v9 = vdupq_n_s32(0xBCDB0243);
    v10 = vdupq_n_s32(0x3E879762u);
    if (a4 <= 8)
    {
      v13 = 0;
    }

    else
    {
      v13 = a4 - 8;
    }

    v12 = a4 - v13;
    if (v13)
    {
      goto LABEL_12;
    }

LABEL_20:
    v138 = a2 + 8;
    v139 = a2 + 32;
    v140 = a2 + 40;
    v141 = a2 + 64;
    v142 = a2 + 72;
    if (v12 < 1)
    {
      return result;
    }

    goto LABEL_21;
  }

  if (a7 != 9)
  {
    v7 = vdupq_n_s32(0x3E4CE46Du);
    v8 = vdupq_n_s32(0xBDD0BB5A);
    v9 = vdupq_n_s32(0xBD492C18);
    v10 = vdupq_n_s32(0x3E817B8Au);
    if (a4 <= 8)
    {
      v143 = 0;
    }

    else
    {
      v143 = a4 - 8;
    }

    v12 = a4 - v143;
    if (v143)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

  v7 = vdupq_n_s32(0x3E578094u);
  v8 = vdupq_n_s32(0xBDA6FF94);
  v9 = vdupq_n_s32(0xBCC062D8);
  v10 = vdupq_n_s32(0x3E897A02u);
  if (a4 <= 8)
  {
    v11 = 0;
  }

  else
  {
    v11 = a4 - 8;
  }

  v12 = a4 - v11;
  if (!v11)
  {
    goto LABEL_20;
  }

LABEL_12:
  v14 = a4 - 7;
  v15.i64[0] = 0xE000E000E000E00;
  v15.i64[1] = 0xE000E000E000E00;
  v16 = vdupq_n_s32(0x3E157ABDu);
  v17.i64[0] = 0xFC00FC00FC00FC00;
  v17.i64[1] = 0xFC00FC00FC00FC00;
  do
  {
    v18 = a2 + 1;
    v19 = (result + 8 * a3);
    v20 = a2[32];
    v21 = vaddq_s16(*a2, v15);
    v22 = a2[40];
    v23 = vcltzq_s16(v21);
    v24 = vzip1q_s16(v21, v23);
    v25 = vzip2q_s16(v21, v23);
    v26 = vcltzq_s16(v20);
    v27 = vcvtq_f32_s32(vzip1q_s16(v20, v26));
    v28 = vcvtq_f32_s32(vzip2q_s16(v20, v26));
    v29 = vcltzq_s16(v22);
    v30 = vcvtq_f32_s32(vzip1q_s16(v22, v29));
    v31 = vcvtq_f32_s32(vzip2q_s16(v22, v29));
    v32 = vmulq_f32(vcvtq_f32_s32(v24), v16);
    v33 = vaddq_f32(v32, vmulq_f32(v7, v30));
    v34 = vaddq_f32(v32, vmulq_f32(v9, v27));
    v35 = vaddq_f32(v32, vmulq_f32(v10, v27));
    v36 = vmulq_f32(vcvtq_f32_s32(v25), v16);
    v37 = vaddq_f32(v36, vmulq_f32(v7, v31));
    v38 = vaddq_f32(vaddq_f32(v36, vmulq_f32(v9, v28)), vmulq_f32(v8, v31));
    v39 = vaddq_f32(v36, vmulq_f32(v10, v28));
    v40 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v33)), vcvtnq_s32_f32(v37));
    v41 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(v34, vmulq_f32(v8, v30)))), vcvtnq_s32_f32(v38));
    v42 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v35)), vcvtnq_s32_f32(v39));
    v43 = vminq_s16(vmaxq_s16(v40, 0), v17);
    v44 = vminq_s16(vmaxq_s16(v41, 0), v17);
    v45 = vminq_s16(vmaxq_s16(v42, 0), v17);
    v46 = vshlq_n_s32(vzip1q_s16(v43, v7), 0x16uLL);
    v47 = vorrq_s8(vshlq_n_s32(vzip2q_s16(v44, 0), 0xCuLL), vorrq_s8(vshlq_n_s32(vzip2q_s16(v43, v7), 0x16uLL), vshlq_n_s32(vzip2q_s16(v45, 0), 2uLL)));
    v48 = vrev16q_s8(vorrq_s8(vshlq_n_s32(vzip1q_s16(v44, 0), 0xCuLL), vorrq_s8(v46, vshlq_n_s32(vzip1q_s16(v45, 0), 2uLL))));
    v49 = vrev16q_s8(v47);
    *result = vsraq_n_u32(vshlq_n_s32(v48, 0x10uLL), v48, 0x10uLL);
    result[1] = vsraq_n_u32(vshlq_n_s32(v49, 0x10uLL), v49, 0x10uLL);
    v50 = vaddq_s16(a2[8], v15);
    v51 = a2[64];
    v52 = a2[72];
    v53 = vcltzq_s16(v50);
    v54 = vzip1q_s16(v50, v53);
    v55 = vzip2q_s16(v50, v53);
    v56 = vcvtq_f32_s32(v54);
    v57 = vcltzq_s16(v51);
    v58 = vcvtq_f32_s32(vzip1q_s16(v51, v57));
    v59 = vcvtq_f32_s32(vzip2q_s16(v51, v57));
    v60 = vcltzq_s16(v52);
    v61 = vcvtq_f32_s32(vzip1q_s16(v52, v60));
    v62 = vcvtq_f32_s32(vzip2q_s16(v52, v60));
    v63 = vmulq_f32(v56, v16);
    v64 = vaddq_f32(v63, vmulq_f32(v9, v58));
    v65 = vaddq_f32(v63, vmulq_f32(v7, v61));
    v66 = vaddq_f32(v63, vmulq_f32(v10, v58));
    v67 = vmulq_f32(vcvtq_f32_s32(v55), v16);
    v68 = vaddq_f32(v67, vmulq_f32(v7, v62));
    v69 = vaddq_f32(vaddq_f32(v67, vmulq_f32(v9, v59)), vmulq_f32(v8, v62));
    v70 = vaddq_f32(v67, vmulq_f32(v10, v59));
    v71 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v65)), vcvtnq_s32_f32(v68));
    v72 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(v64, vmulq_f32(v8, v61)))), vcvtnq_s32_f32(v69));
    v73 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v66)), vcvtnq_s32_f32(v70));
    v74 = vminq_s16(vmaxq_s16(v71, 0), v17);
    v75 = vminq_s16(vmaxq_s16(v72, 0), v17);
    v76 = vminq_s16(vmaxq_s16(v73, 0), v17);
    v77 = vshlq_n_s32(vzip1q_s16(v74, v7), 0x16uLL);
    v78 = vorrq_s8(vshlq_n_s32(vzip2q_s16(v75, 0), 0xCuLL), vorrq_s8(vshlq_n_s32(vzip2q_s16(v74, v7), 0x16uLL), vshlq_n_s32(vzip2q_s16(v76, 0), 2uLL)));
    v79 = vrev16q_s8(vorrq_s8(vshlq_n_s32(vzip1q_s16(v75, 0), 0xCuLL), vorrq_s8(v77, vshlq_n_s32(vzip1q_s16(v76, 0), 2uLL))));
    v80 = vrev16q_s8(v78);
    result[2] = vsraq_n_u32(vshlq_n_s32(v79, 0x10uLL), v79, 0x10uLL);
    result[3] = vsraq_n_u32(vshlq_n_s32(v80, 0x10uLL), v80, 0x10uLL);
    --v12;
    v81 = vaddq_s16(a2[16], v15);
    v82 = a2[48];
    v83 = a2[56];
    v84 = vcltzq_s16(v81);
    v85 = vzip1q_s16(v81, v84);
    v86 = vzip2q_s16(v81, v84);
    v87 = vcltzq_s16(v82);
    v88 = vcvtq_f32_s32(vzip1q_s16(v82, v87));
    v89 = vzip2q_s16(v82, v87);
    v90 = vcvtq_f32_s32(v85);
    v91 = vcvtq_f32_s32(v89);
    v92 = vcltzq_s16(v83);
    v93 = vcvtq_f32_s32(vzip1q_s16(v83, v92));
    v94 = vcvtq_f32_s32(vzip2q_s16(v83, v92));
    v95 = vmulq_f32(v90, v16);
    v96 = vaddq_f32(v95, vmulq_f32(v7, v93));
    v97 = vmulq_f32(vcvtq_f32_s32(v86), v16);
    v98 = vaddq_f32(vaddq_f32(v95, vmulq_f32(v9, v88)), vmulq_f32(v8, v93));
    v99 = vaddq_f32(v97, vmulq_f32(v9, v91));
    v100 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(v95, vmulq_f32(v10, v88)))), vcvtnq_s32_f32(vaddq_f32(v97, vmulq_f32(v10, v91))));
    v101 = vminq_s16(vmaxq_s16(vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v96)), vcvtnq_s32_f32(vaddq_f32(v97, vmulq_f32(v7, v94)))), 0), v17);
    v102 = vminq_s16(vmaxq_s16(vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v98)), vcvtnq_s32_f32(vaddq_f32(v99, vmulq_f32(v8, v94)))), 0), v17);
    v103 = vminq_s16(vmaxq_s16(v100, 0), v17);
    v104 = vshlq_n_s32(vzip1q_s16(v101, v7), 0x16uLL);
    v105 = vorrq_s8(vshlq_n_s32(vzip2q_s16(v102, 0), 0xCuLL), vorrq_s8(vshlq_n_s32(vzip2q_s16(v101, v7), 0x16uLL), vshlq_n_s32(vzip2q_s16(v103, 0), 2uLL)));
    v106 = vrev16q_s8(vorrq_s8(vshlq_n_s32(vzip1q_s16(v102, 0), 0xCuLL), vorrq_s8(v104, vshlq_n_s32(vzip1q_s16(v103, 0), 2uLL))));
    v107 = vrev16q_s8(v105);
    *v19 = vsraq_n_u32(vshlq_n_s32(v106, 0x10uLL), v106, 0x10uLL);
    v19[1] = vsraq_n_u32(vshlq_n_s32(v107, 0x10uLL), v107, 0x10uLL);
    v108 = vaddq_s16(a2[24], v15);
    v109 = a2[80];
    v110 = a2[88];
    result = (result + a3);
    v111 = vcltzq_s16(v108);
    v112 = vzip1q_s16(v108, v111);
    v113 = vzip2q_s16(v108, v111);
    v114 = vcltzq_s16(v109);
    v115 = vcvtq_f32_s32(vzip1q_s16(v109, v114));
    v116 = vcvtq_f32_s32(vzip2q_s16(v109, v114));
    v117 = vcltzq_s16(v110);
    v118 = vcvtq_f32_s32(vzip1q_s16(v110, v117));
    v119 = vcvtq_f32_s32(vzip2q_s16(v110, v117));
    v120 = vmulq_f32(vcvtq_f32_s32(v112), v16);
    v121 = vaddq_f32(v120, vmulq_f32(v7, v118));
    v122 = vaddq_f32(v120, vmulq_f32(v9, v115));
    v123 = vmulq_f32(vcvtq_f32_s32(v113), v16);
    v124 = vaddq_f32(v120, vmulq_f32(v10, v115));
    v125 = vaddq_f32(v123, vmulq_f32(v7, v119));
    v126 = vaddq_f32(vaddq_f32(v123, vmulq_f32(v9, v116)), vmulq_f32(v8, v119));
    v127 = vaddq_f32(v123, vmulq_f32(v10, v116));
    v128 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v121)), vcvtnq_s32_f32(v125));
    v129 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(v122, vmulq_f32(v8, v118)))), vcvtnq_s32_f32(v126));
    v130 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v124)), vcvtnq_s32_f32(v127));
    v131 = vminq_s16(vmaxq_s16(v128, 0), v17);
    v132 = vminq_s16(vmaxq_s16(v129, 0), v17);
    v133 = vminq_s16(vmaxq_s16(v130, 0), v17);
    v134 = vshlq_n_s32(vzip1q_s16(v131, v7), 0x16uLL);
    v135 = vorrq_s8(vshlq_n_s32(vzip2q_s16(v132, 0), 0xCuLL), vorrq_s8(vshlq_n_s32(vzip2q_s16(v131, v7), 0x16uLL), vshlq_n_s32(vzip2q_s16(v133, 0), 2uLL)));
    v136 = vrev16q_s8(vorrq_s8(vshlq_n_s32(vzip1q_s16(v132, 0), 0xCuLL), vorrq_s8(v134, vshlq_n_s32(vzip1q_s16(v133, 0), 2uLL))));
    v137 = vrev16q_s8(v135);
    v19[2] = vsraq_n_u32(vshlq_n_s32(v136, 0x10uLL), v136, 0x10uLL);
    v19[3] = vsraq_n_u32(vshlq_n_s32(v137, 0x10uLL), v137, 0x10uLL);
    --v14;
    ++a2;
  }

  while (v14 > 1);
  v138 = v18 + 8;
  v139 = v18 + 32;
  v140 = v18 + 40;
  v141 = v18 + 64;
  v142 = v18 + 72;
  a2 = v18;
  if (v12 >= 1)
  {
LABEL_21:
    v144 = result + 2;
    v145 = v12 + 1;
    v146.i64[0] = 0xE000E000E000E00;
    v146.i64[1] = 0xE000E000E000E00;
    v147 = vdupq_n_s32(0x3E157ABDu);
    v148.i64[0] = 0xFC00FC00FC00FC00;
    v148.i64[1] = 0xFC00FC00FC00FC00;
    do
    {
      v149 = *a2++;
      v150 = v149;
      v151 = *v139++;
      v152 = v151;
      v153 = *v140++;
      v154 = vaddq_s16(v150, v146);
      v155 = vcltzq_s16(v154);
      v156 = vzip1q_s16(v154, v155);
      v157 = vzip2q_s16(v154, v155);
      v158 = vcltzq_s16(v152);
      v159 = vcvtq_f32_s32(vzip1q_s16(v152, v158));
      v160 = vcvtq_f32_s32(vzip2q_s16(v152, v158));
      v161 = vcltzq_s16(v153);
      v162 = vcvtq_f32_s32(vzip1q_s16(v153, v161));
      v163 = vcvtq_f32_s32(vzip2q_s16(v153, v161));
      v164 = vmulq_f32(vcvtq_f32_s32(v156), v147);
      v165 = vaddq_f32(v164, vmulq_f32(v7, v162));
      v166 = vaddq_f32(v164, vmulq_f32(v9, v159));
      v167 = vaddq_f32(v164, vmulq_f32(v10, v159));
      v168 = vmulq_f32(vcvtq_f32_s32(v157), v147);
      v169 = vaddq_f32(v168, vmulq_f32(v7, v163));
      v170 = vaddq_f32(vaddq_f32(v168, vmulq_f32(v9, v160)), vmulq_f32(v8, v163));
      v171 = vaddq_f32(v168, vmulq_f32(v10, v160));
      v172 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v165)), vcvtnq_s32_f32(v169));
      v173 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(v166, vmulq_f32(v8, v162)))), vcvtnq_s32_f32(v170));
      v174 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v167)), vcvtnq_s32_f32(v171));
      v175 = vminq_s16(vmaxq_s16(v172, 0), v148);
      v176 = vminq_s16(vmaxq_s16(v173, 0), v148);
      v177 = vminq_s16(vmaxq_s16(v174, 0), v148);
      v178 = vshlq_n_s32(vzip1q_s16(v175, v7), 0x16uLL);
      v179 = vorrq_s8(vshlq_n_s32(vzip2q_s16(v176, 0), 0xCuLL), vorrq_s8(vshlq_n_s32(vzip2q_s16(v175, v7), 0x16uLL), vshlq_n_s32(vzip2q_s16(v177, 0), 2uLL)));
      v180 = vrev16q_s8(vorrq_s8(vshlq_n_s32(vzip1q_s16(v176, 0), 0xCuLL), vorrq_s8(v178, vshlq_n_s32(vzip1q_s16(v177, 0), 2uLL))));
      v181 = vrev16q_s8(v179);
      v144[-2] = vsraq_n_u32(vshlq_n_s32(v180, 0x10uLL), v180, 0x10uLL);
      v144[-1] = vsraq_n_u32(vshlq_n_s32(v181, 0x10uLL), v181, 0x10uLL);
      v182 = *v138++;
      v183 = v182;
      v184 = *v141++;
      v185 = v184;
      v186 = *v142++;
      v187 = vaddq_s16(v183, v146);
      v188 = vcltzq_s16(v187);
      v189 = vzip1q_s16(v187, v188);
      v190 = vzip2q_s16(v187, v188);
      v191 = vcltzq_s16(v185);
      v192 = vcvtq_f32_s32(vzip1q_s16(v185, v191));
      v193 = vcvtq_f32_s32(vzip2q_s16(v185, v191));
      v194 = vcltzq_s16(v186);
      v195 = vcvtq_f32_s32(vzip1q_s16(v186, v194));
      v196 = vcvtq_f32_s32(vzip2q_s16(v186, v194));
      v197 = vmulq_f32(vcvtq_f32_s32(v189), v147);
      v198 = vaddq_f32(v197, vmulq_f32(v7, v195));
      v199 = vaddq_f32(v197, vmulq_f32(v9, v192));
      v200 = vmulq_f32(vcvtq_f32_s32(v190), v147);
      v201 = vaddq_f32(v197, vmulq_f32(v10, v192));
      v202 = vaddq_f32(v200, vmulq_f32(v7, v196));
      v203 = vaddq_f32(vaddq_f32(v200, vmulq_f32(v9, v193)), vmulq_f32(v8, v196));
      v204 = vaddq_f32(v200, vmulq_f32(v10, v193));
      v205 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v198)), vcvtnq_s32_f32(v202));
      v206 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(v199, vmulq_f32(v8, v195)))), vcvtnq_s32_f32(v203));
      v207 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v201)), vcvtnq_s32_f32(v204));
      v208 = vminq_s16(vmaxq_s16(v205, 0), v148);
      v209 = vminq_s16(vmaxq_s16(v206, 0), v148);
      v210 = vminq_s16(vmaxq_s16(v207, 0), v148);
      v211 = vshlq_n_s32(vzip1q_s16(v208, v7), 0x16uLL);
      v212 = vorrq_s8(vshlq_n_s32(vzip2q_s16(v209, 0), 0xCuLL), vorrq_s8(vshlq_n_s32(vzip2q_s16(v208, v7), 0x16uLL), vshlq_n_s32(vzip2q_s16(v210, 0), 2uLL)));
      v213 = vrev16q_s8(vorrq_s8(vshlq_n_s32(vzip1q_s16(v209, 0), 0xCuLL), vorrq_s8(v211, vshlq_n_s32(vzip1q_s16(v210, 0), 2uLL))));
      v214 = vrev16q_s8(v212);
      *v144 = vsraq_n_u32(vshlq_n_s32(v213, 0x10uLL), v213, 0x10uLL);
      v144[1] = vsraq_n_u32(vshlq_n_s32(v214, 0x10uLL), v214, 0x10uLL);
      v144 = (v144 + a3);
      --v145;
    }

    while (v145 > 1);
  }

  return result;
}

uint32x4_t *from_444_to_R10k<8,8,(AlphaOutputMethod)0,true>(uint32x4_t *result, int16x8_t *a2, int a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  if (a7 == 1)
  {
    v7 = vdupq_n_s32(0x3E662551u);
    v8 = vdupq_n_s32(0xBD88D377);
    v9 = vdupq_n_s32(0xBCDB0243);
    v10 = vdupq_n_s32(0x3E879762u);
    if (a4 <= 8)
    {
      v13 = 0;
    }

    else
    {
      v13 = a4 - 8;
    }

    v12 = a4 - v13;
    if (v13)
    {
      goto LABEL_12;
    }

LABEL_20:
    v138 = a2 + 8;
    v139 = a2 + 32;
    v140 = a2 + 40;
    v141 = a2 + 64;
    v142 = a2 + 72;
    if (v12 < 1)
    {
      return result;
    }

    goto LABEL_21;
  }

  if (a7 != 9)
  {
    v7 = vdupq_n_s32(0x3E4CE46Du);
    v8 = vdupq_n_s32(0xBDD0BB5A);
    v9 = vdupq_n_s32(0xBD492C18);
    v10 = vdupq_n_s32(0x3E817B8Au);
    if (a4 <= 8)
    {
      v143 = 0;
    }

    else
    {
      v143 = a4 - 8;
    }

    v12 = a4 - v143;
    if (v143)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

  v7 = vdupq_n_s32(0x3E578094u);
  v8 = vdupq_n_s32(0xBDA6FF94);
  v9 = vdupq_n_s32(0xBCC062D8);
  v10 = vdupq_n_s32(0x3E897A02u);
  if (a4 <= 8)
  {
    v11 = 0;
  }

  else
  {
    v11 = a4 - 8;
  }

  v12 = a4 - v11;
  if (!v11)
  {
    goto LABEL_20;
  }

LABEL_12:
  v14 = a4 - 7;
  v15.i64[0] = 0xE000E000E000E00;
  v15.i64[1] = 0xE000E000E000E00;
  v16 = vdupq_n_s32(0x3E157ABDu);
  v17.i64[0] = 0xFC00FC00FC00FC00;
  v17.i64[1] = 0xFC00FC00FC00FC00;
  do
  {
    v18 = a2 + 1;
    v19 = (result + 8 * a3);
    v20 = a2[32];
    v21 = vaddq_s16(*a2, v15);
    v22 = a2[40];
    v23 = vcltzq_s16(v21);
    v24 = vzip1q_s16(v21, v23);
    v25 = vzip2q_s16(v21, v23);
    v26 = vcltzq_s16(v20);
    v27 = vcvtq_f32_s32(vzip1q_s16(v20, v26));
    v28 = vcvtq_f32_s32(vzip2q_s16(v20, v26));
    v29 = vcltzq_s16(v22);
    v30 = vcvtq_f32_s32(vzip1q_s16(v22, v29));
    v31 = vcvtq_f32_s32(vzip2q_s16(v22, v29));
    v32 = vmulq_f32(vcvtq_f32_s32(v24), v16);
    v33 = vaddq_f32(v32, vmulq_f32(v7, v30));
    v34 = vaddq_f32(v32, vmulq_f32(v9, v27));
    v35 = vaddq_f32(v32, vmulq_f32(v10, v27));
    v36 = vmulq_f32(vcvtq_f32_s32(v25), v16);
    v37 = vaddq_f32(v36, vmulq_f32(v7, v31));
    v38 = vaddq_f32(vaddq_f32(v36, vmulq_f32(v9, v28)), vmulq_f32(v8, v31));
    v39 = vaddq_f32(v36, vmulq_f32(v10, v28));
    v40 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v33)), vcvtnq_s32_f32(v37));
    v41 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(v34, vmulq_f32(v8, v30)))), vcvtnq_s32_f32(v38));
    v42 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v35)), vcvtnq_s32_f32(v39));
    v43 = vminq_s16(vmaxq_s16(v40, 0), v17);
    v44 = vminq_s16(vmaxq_s16(v41, 0), v17);
    v45 = vminq_s16(vmaxq_s16(v42, 0), v17);
    v46 = vshlq_n_s32(vzip1q_s16(v43, v7), 0x16uLL);
    v47 = vorrq_s8(vshlq_n_s32(vzip2q_s16(v44, 0), 0xCuLL), vorrq_s8(vshlq_n_s32(vzip2q_s16(v43, v7), 0x16uLL), vshlq_n_s32(vzip2q_s16(v45, 0), 2uLL)));
    v48 = vrev16q_s8(vorrq_s8(vshlq_n_s32(vzip1q_s16(v44, 0), 0xCuLL), vorrq_s8(v46, vshlq_n_s32(vzip1q_s16(v45, 0), 2uLL))));
    v49 = vrev16q_s8(v47);
    *result = vsraq_n_u32(vshlq_n_s32(v48, 0x10uLL), v48, 0x10uLL);
    result[1] = vsraq_n_u32(vshlq_n_s32(v49, 0x10uLL), v49, 0x10uLL);
    v50 = vaddq_s16(a2[8], v15);
    v51 = a2[64];
    v52 = a2[72];
    v53 = vcltzq_s16(v50);
    v54 = vzip1q_s16(v50, v53);
    v55 = vzip2q_s16(v50, v53);
    v56 = vcvtq_f32_s32(v54);
    v57 = vcltzq_s16(v51);
    v58 = vcvtq_f32_s32(vzip1q_s16(v51, v57));
    v59 = vcvtq_f32_s32(vzip2q_s16(v51, v57));
    v60 = vcltzq_s16(v52);
    v61 = vcvtq_f32_s32(vzip1q_s16(v52, v60));
    v62 = vcvtq_f32_s32(vzip2q_s16(v52, v60));
    v63 = vmulq_f32(v56, v16);
    v64 = vaddq_f32(v63, vmulq_f32(v9, v58));
    v65 = vaddq_f32(v63, vmulq_f32(v7, v61));
    v66 = vaddq_f32(v63, vmulq_f32(v10, v58));
    v67 = vmulq_f32(vcvtq_f32_s32(v55), v16);
    v68 = vaddq_f32(v67, vmulq_f32(v7, v62));
    v69 = vaddq_f32(vaddq_f32(v67, vmulq_f32(v9, v59)), vmulq_f32(v8, v62));
    v70 = vaddq_f32(v67, vmulq_f32(v10, v59));
    v71 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v65)), vcvtnq_s32_f32(v68));
    v72 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(v64, vmulq_f32(v8, v61)))), vcvtnq_s32_f32(v69));
    v73 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v66)), vcvtnq_s32_f32(v70));
    v74 = vminq_s16(vmaxq_s16(v71, 0), v17);
    v75 = vminq_s16(vmaxq_s16(v72, 0), v17);
    v76 = vminq_s16(vmaxq_s16(v73, 0), v17);
    v77 = vshlq_n_s32(vzip1q_s16(v74, v7), 0x16uLL);
    v78 = vorrq_s8(vshlq_n_s32(vzip2q_s16(v75, 0), 0xCuLL), vorrq_s8(vshlq_n_s32(vzip2q_s16(v74, v7), 0x16uLL), vshlq_n_s32(vzip2q_s16(v76, 0), 2uLL)));
    v79 = vrev16q_s8(vorrq_s8(vshlq_n_s32(vzip1q_s16(v75, 0), 0xCuLL), vorrq_s8(v77, vshlq_n_s32(vzip1q_s16(v76, 0), 2uLL))));
    v80 = vrev16q_s8(v78);
    result[2] = vsraq_n_u32(vshlq_n_s32(v79, 0x10uLL), v79, 0x10uLL);
    result[3] = vsraq_n_u32(vshlq_n_s32(v80, 0x10uLL), v80, 0x10uLL);
    --v12;
    v81 = vaddq_s16(a2[16], v15);
    v82 = a2[48];
    v83 = a2[56];
    v84 = vcltzq_s16(v81);
    v85 = vzip1q_s16(v81, v84);
    v86 = vzip2q_s16(v81, v84);
    v87 = vcltzq_s16(v82);
    v88 = vcvtq_f32_s32(vzip1q_s16(v82, v87));
    v89 = vzip2q_s16(v82, v87);
    v90 = vcvtq_f32_s32(v85);
    v91 = vcvtq_f32_s32(v89);
    v92 = vcltzq_s16(v83);
    v93 = vcvtq_f32_s32(vzip1q_s16(v83, v92));
    v94 = vcvtq_f32_s32(vzip2q_s16(v83, v92));
    v95 = vmulq_f32(v90, v16);
    v96 = vaddq_f32(v95, vmulq_f32(v7, v93));
    v97 = vmulq_f32(vcvtq_f32_s32(v86), v16);
    v98 = vaddq_f32(vaddq_f32(v95, vmulq_f32(v9, v88)), vmulq_f32(v8, v93));
    v99 = vaddq_f32(v97, vmulq_f32(v9, v91));
    v100 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(v95, vmulq_f32(v10, v88)))), vcvtnq_s32_f32(vaddq_f32(v97, vmulq_f32(v10, v91))));
    v101 = vminq_s16(vmaxq_s16(vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v96)), vcvtnq_s32_f32(vaddq_f32(v97, vmulq_f32(v7, v94)))), 0), v17);
    v102 = vminq_s16(vmaxq_s16(vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v98)), vcvtnq_s32_f32(vaddq_f32(v99, vmulq_f32(v8, v94)))), 0), v17);
    v103 = vminq_s16(vmaxq_s16(v100, 0), v17);
    v104 = vshlq_n_s32(vzip1q_s16(v101, v7), 0x16uLL);
    v105 = vorrq_s8(vshlq_n_s32(vzip2q_s16(v102, 0), 0xCuLL), vorrq_s8(vshlq_n_s32(vzip2q_s16(v101, v7), 0x16uLL), vshlq_n_s32(vzip2q_s16(v103, 0), 2uLL)));
    v106 = vrev16q_s8(vorrq_s8(vshlq_n_s32(vzip1q_s16(v102, 0), 0xCuLL), vorrq_s8(v104, vshlq_n_s32(vzip1q_s16(v103, 0), 2uLL))));
    v107 = vrev16q_s8(v105);
    *v19 = vsraq_n_u32(vshlq_n_s32(v106, 0x10uLL), v106, 0x10uLL);
    v19[1] = vsraq_n_u32(vshlq_n_s32(v107, 0x10uLL), v107, 0x10uLL);
    v108 = vaddq_s16(a2[24], v15);
    v109 = a2[80];
    v110 = a2[88];
    result = (result + a3);
    v111 = vcltzq_s16(v108);
    v112 = vzip1q_s16(v108, v111);
    v113 = vzip2q_s16(v108, v111);
    v114 = vcltzq_s16(v109);
    v115 = vcvtq_f32_s32(vzip1q_s16(v109, v114));
    v116 = vcvtq_f32_s32(vzip2q_s16(v109, v114));
    v117 = vcltzq_s16(v110);
    v118 = vcvtq_f32_s32(vzip1q_s16(v110, v117));
    v119 = vcvtq_f32_s32(vzip2q_s16(v110, v117));
    v120 = vmulq_f32(vcvtq_f32_s32(v112), v16);
    v121 = vaddq_f32(v120, vmulq_f32(v7, v118));
    v122 = vaddq_f32(v120, vmulq_f32(v9, v115));
    v123 = vmulq_f32(vcvtq_f32_s32(v113), v16);
    v124 = vaddq_f32(v120, vmulq_f32(v10, v115));
    v125 = vaddq_f32(v123, vmulq_f32(v7, v119));
    v126 = vaddq_f32(vaddq_f32(v123, vmulq_f32(v9, v116)), vmulq_f32(v8, v119));
    v127 = vaddq_f32(v123, vmulq_f32(v10, v116));
    v128 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v121)), vcvtnq_s32_f32(v125));
    v129 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(v122, vmulq_f32(v8, v118)))), vcvtnq_s32_f32(v126));
    v130 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v124)), vcvtnq_s32_f32(v127));
    v131 = vminq_s16(vmaxq_s16(v128, 0), v17);
    v132 = vminq_s16(vmaxq_s16(v129, 0), v17);
    v133 = vminq_s16(vmaxq_s16(v130, 0), v17);
    v134 = vshlq_n_s32(vzip1q_s16(v131, v7), 0x16uLL);
    v135 = vorrq_s8(vshlq_n_s32(vzip2q_s16(v132, 0), 0xCuLL), vorrq_s8(vshlq_n_s32(vzip2q_s16(v131, v7), 0x16uLL), vshlq_n_s32(vzip2q_s16(v133, 0), 2uLL)));
    v136 = vrev16q_s8(vorrq_s8(vshlq_n_s32(vzip1q_s16(v132, 0), 0xCuLL), vorrq_s8(v134, vshlq_n_s32(vzip1q_s16(v133, 0), 2uLL))));
    v137 = vrev16q_s8(v135);
    v19[2] = vsraq_n_u32(vshlq_n_s32(v136, 0x10uLL), v136, 0x10uLL);
    v19[3] = vsraq_n_u32(vshlq_n_s32(v137, 0x10uLL), v137, 0x10uLL);
    --v14;
    ++a2;
  }

  while (v14 > 1);
  v138 = v18 + 8;
  v139 = v18 + 32;
  v140 = v18 + 40;
  v141 = v18 + 64;
  v142 = v18 + 72;
  a2 = v18;
  if (v12 >= 1)
  {
LABEL_21:
    v144 = result + 2;
    v145 = v12 + 1;
    v146.i64[0] = 0xE000E000E000E00;
    v146.i64[1] = 0xE000E000E000E00;
    v147 = vdupq_n_s32(0x3E157ABDu);
    v148.i64[0] = 0xFC00FC00FC00FC00;
    v148.i64[1] = 0xFC00FC00FC00FC00;
    do
    {
      v149 = *a2++;
      v150 = v149;
      v151 = *v139++;
      v152 = v151;
      v153 = *v140++;
      v154 = vaddq_s16(v150, v146);
      v155 = vcltzq_s16(v154);
      v156 = vzip1q_s16(v154, v155);
      v157 = vzip2q_s16(v154, v155);
      v158 = vcltzq_s16(v152);
      v159 = vcvtq_f32_s32(vzip1q_s16(v152, v158));
      v160 = vcvtq_f32_s32(vzip2q_s16(v152, v158));
      v161 = vcltzq_s16(v153);
      v162 = vcvtq_f32_s32(vzip1q_s16(v153, v161));
      v163 = vcvtq_f32_s32(vzip2q_s16(v153, v161));
      v164 = vmulq_f32(vcvtq_f32_s32(v156), v147);
      v165 = vaddq_f32(v164, vmulq_f32(v7, v162));
      v166 = vaddq_f32(v164, vmulq_f32(v9, v159));
      v167 = vaddq_f32(v164, vmulq_f32(v10, v159));
      v168 = vmulq_f32(vcvtq_f32_s32(v157), v147);
      v169 = vaddq_f32(v168, vmulq_f32(v7, v163));
      v170 = vaddq_f32(vaddq_f32(v168, vmulq_f32(v9, v160)), vmulq_f32(v8, v163));
      v171 = vaddq_f32(v168, vmulq_f32(v10, v160));
      v172 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v165)), vcvtnq_s32_f32(v169));
      v173 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(v166, vmulq_f32(v8, v162)))), vcvtnq_s32_f32(v170));
      v174 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v167)), vcvtnq_s32_f32(v171));
      v175 = vminq_s16(vmaxq_s16(v172, 0), v148);
      v176 = vminq_s16(vmaxq_s16(v173, 0), v148);
      v177 = vminq_s16(vmaxq_s16(v174, 0), v148);
      v178 = vshlq_n_s32(vzip1q_s16(v175, v7), 0x16uLL);
      v179 = vorrq_s8(vshlq_n_s32(vzip2q_s16(v176, 0), 0xCuLL), vorrq_s8(vshlq_n_s32(vzip2q_s16(v175, v7), 0x16uLL), vshlq_n_s32(vzip2q_s16(v177, 0), 2uLL)));
      v180 = vrev16q_s8(vorrq_s8(vshlq_n_s32(vzip1q_s16(v176, 0), 0xCuLL), vorrq_s8(v178, vshlq_n_s32(vzip1q_s16(v177, 0), 2uLL))));
      v181 = vrev16q_s8(v179);
      v144[-2] = vsraq_n_u32(vshlq_n_s32(v180, 0x10uLL), v180, 0x10uLL);
      v144[-1] = vsraq_n_u32(vshlq_n_s32(v181, 0x10uLL), v181, 0x10uLL);
      v182 = *v138++;
      v183 = v182;
      v184 = *v141++;
      v185 = v184;
      v186 = *v142++;
      v187 = vaddq_s16(v183, v146);
      v188 = vcltzq_s16(v187);
      v189 = vzip1q_s16(v187, v188);
      v190 = vzip2q_s16(v187, v188);
      v191 = vcltzq_s16(v185);
      v192 = vcvtq_f32_s32(vzip1q_s16(v185, v191));
      v193 = vcvtq_f32_s32(vzip2q_s16(v185, v191));
      v194 = vcltzq_s16(v186);
      v195 = vcvtq_f32_s32(vzip1q_s16(v186, v194));
      v196 = vcvtq_f32_s32(vzip2q_s16(v186, v194));
      v197 = vmulq_f32(vcvtq_f32_s32(v189), v147);
      v198 = vaddq_f32(v197, vmulq_f32(v7, v195));
      v199 = vaddq_f32(v197, vmulq_f32(v9, v192));
      v200 = vmulq_f32(vcvtq_f32_s32(v190), v147);
      v201 = vaddq_f32(v197, vmulq_f32(v10, v192));
      v202 = vaddq_f32(v200, vmulq_f32(v7, v196));
      v203 = vaddq_f32(vaddq_f32(v200, vmulq_f32(v9, v193)), vmulq_f32(v8, v196));
      v204 = vaddq_f32(v200, vmulq_f32(v10, v193));
      v205 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v198)), vcvtnq_s32_f32(v202));
      v206 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(v199, vmulq_f32(v8, v195)))), vcvtnq_s32_f32(v203));
      v207 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v201)), vcvtnq_s32_f32(v204));
      v208 = vminq_s16(vmaxq_s16(v205, 0), v148);
      v209 = vminq_s16(vmaxq_s16(v206, 0), v148);
      v210 = vminq_s16(vmaxq_s16(v207, 0), v148);
      v211 = vshlq_n_s32(vzip1q_s16(v208, v7), 0x16uLL);
      v212 = vorrq_s8(vshlq_n_s32(vzip2q_s16(v209, 0), 0xCuLL), vorrq_s8(vshlq_n_s32(vzip2q_s16(v208, v7), 0x16uLL), vshlq_n_s32(vzip2q_s16(v210, 0), 2uLL)));
      v213 = vrev16q_s8(vorrq_s8(vshlq_n_s32(vzip1q_s16(v209, 0), 0xCuLL), vorrq_s8(v211, vshlq_n_s32(vzip1q_s16(v210, 0), 2uLL))));
      v214 = vrev16q_s8(v212);
      *v144 = vsraq_n_u32(vshlq_n_s32(v213, 0x10uLL), v213, 0x10uLL);
      v144[1] = vsraq_n_u32(vshlq_n_s32(v214, 0x10uLL), v214, 0x10uLL);
      v144 = (v144 + a3);
      --v145;
    }

    while (v145 > 1);
  }

  return result;
}

uint32x4_t *from_444_to_r210<8,8,(AlphaOutputMethod)0,false>(uint32x4_t *result, int16x8_t *a2, int a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  if (a7 == 1)
  {
    v7 = vdupq_n_s32(0x3E662551u);
    v8 = vdupq_n_s32(0xBD88D377);
    v9 = vdupq_n_s32(0xBCDB0243);
    v10 = vdupq_n_s32(0x3E879762u);
    if (a4 <= 8)
    {
      v13 = 0;
    }

    else
    {
      v13 = a4 - 8;
    }

    v12 = a4 - v13;
    if (v13)
    {
      goto LABEL_12;
    }

LABEL_20:
    v147 = a2 + 8;
    v148 = a2 + 32;
    v149 = a2 + 40;
    v150 = a2 + 64;
    v151 = a2 + 72;
    if (v12 < 1)
    {
      return result;
    }

    goto LABEL_21;
  }

  if (a7 != 9)
  {
    v7 = vdupq_n_s32(0x3E4CE46Du);
    v8 = vdupq_n_s32(0xBDD0BB5A);
    v9 = vdupq_n_s32(0xBD492C18);
    v10 = vdupq_n_s32(0x3E817B8Au);
    if (a4 <= 8)
    {
      v152 = 0;
    }

    else
    {
      v152 = a4 - 8;
    }

    v12 = a4 - v152;
    if (v152)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

  v7 = vdupq_n_s32(0x3E578094u);
  v8 = vdupq_n_s32(0xBDA6FF94);
  v9 = vdupq_n_s32(0xBCC062D8);
  v10 = vdupq_n_s32(0x3E897A02u);
  if (a4 <= 8)
  {
    v11 = 0;
  }

  else
  {
    v11 = a4 - 8;
  }

  v12 = a4 - v11;
  if (!v11)
  {
    goto LABEL_20;
  }

LABEL_12:
  v14 = a4 - 7;
  v15.i64[0] = 0xE000E000E000E00;
  v15.i64[1] = 0xE000E000E000E00;
  v16 = vdupq_n_s32(0x3E157ABDu);
  v17.i64[0] = 0xFC00FC00FC00FC00;
  v17.i64[1] = 0xFC00FC00FC00FC00;
  do
  {
    v18 = vaddq_s16(*a2, v15);
    v19 = a2[32];
    v20 = a2[40];
    v21 = vcltzq_s16(v18);
    v22 = vzip1q_s16(v18, v21);
    v23 = vzip2q_s16(v18, v21);
    v24 = vcltzq_s16(v19);
    v25 = vcvtq_f32_s32(vzip1q_s16(v19, v24));
    v26 = vcvtq_f32_s32(vzip2q_s16(v19, v24));
    v27 = vcltzq_s16(v20);
    v28 = vcvtq_f32_s32(vzip1q_s16(v20, v27));
    v29 = vcvtq_f32_s32(vzip2q_s16(v20, v27));
    v30 = vmulq_f32(vcvtq_f32_s32(v22), v16);
    v31 = vaddq_f32(v30, vmulq_f32(v7, v28));
    v32 = vaddq_f32(v30, vmulq_f32(v9, v25));
    v33 = vaddq_f32(v30, vmulq_f32(v10, v25));
    v34 = vmulq_f32(vcvtq_f32_s32(v23), v16);
    v35 = vaddq_f32(v32, vmulq_f32(v8, v28));
    v36 = vaddq_f32(v34, vmulq_f32(v7, v29));
    v37 = vaddq_f32(vaddq_f32(v34, vmulq_f32(v9, v26)), vmulq_f32(v8, v29));
    v38 = vaddq_f32(v34, vmulq_f32(v10, v26));
    v39 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v31)), vcvtnq_s32_f32(v36));
    v40 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v35)), vcvtnq_s32_f32(v37));
    v41 = a2 + 1;
    v42 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v33)), vcvtnq_s32_f32(v38));
    v43 = vminq_s16(vmaxq_s16(v39, 0), v17);
    v44 = vminq_s16(vmaxq_s16(v40, 0), v17);
    v45 = vminq_s16(vmaxq_s16(v42, 0), v17);
    v46 = vshlq_n_s32(vzip1q_s16(v43, v7), 0x16uLL);
    v47 = vorrq_s8(vshlq_n_s32(vzip2q_s16(v44, 0), 0xCuLL), vshlq_n_s32(vzip2q_s16(v43, v7), 0x16uLL));
    v48 = (result + 8 * a3);
    v49 = vrev16q_s8(vorrq_s8(vzip1q_s16(v45, 0), vshrq_n_u32(vorrq_s8(vshlq_n_s32(vzip1q_s16(v44, 0), 0xCuLL), v46), 2uLL)));
    v50 = vrev16q_s8(vorrq_s8(vzip2q_s16(v45, 0), vshrq_n_u32(v47, 2uLL)));
    *result = vsraq_n_u32(vshlq_n_s32(v49, 0x10uLL), v49, 0x10uLL);
    result[1] = vsraq_n_u32(vshlq_n_s32(v50, 0x10uLL), v50, 0x10uLL);
    v51 = vaddq_s16(a2[8], v15);
    v52 = a2[64];
    v53 = a2[72];
    v54 = vcltzq_s16(v51);
    v55 = vzip1q_s16(v51, v54);
    v56 = vzip2q_s16(v51, v54);
    v57 = vcvtq_f32_s32(v55);
    v58 = vcltzq_s16(v52);
    v59 = vcvtq_f32_s32(vzip1q_s16(v52, v58));
    v60 = vcvtq_f32_s32(vzip2q_s16(v52, v58));
    v61 = vcltzq_s16(v53);
    v62 = vcvtq_f32_s32(vzip1q_s16(v53, v61));
    v63 = vcvtq_f32_s32(vzip2q_s16(v53, v61));
    v64 = vmulq_f32(v57, v16);
    v65 = vaddq_f32(v64, vmulq_f32(v9, v59));
    v66 = vaddq_f32(v64, vmulq_f32(v7, v62));
    v67 = vaddq_f32(v64, vmulq_f32(v10, v59));
    v68 = vmulq_f32(vcvtq_f32_s32(v56), v16);
    v69 = vaddq_f32(v68, vmulq_f32(v7, v63));
    v70 = vaddq_f32(vaddq_f32(v68, vmulq_f32(v9, v60)), vmulq_f32(v8, v63));
    v71 = vaddq_f32(v68, vmulq_f32(v10, v60));
    v72 = vcvtnq_s32_f32(v66);
    v73 = vcvtnq_s32_f32(v69);
    v74 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(v65, vmulq_f32(v8, v62)))), vcvtnq_s32_f32(v70));
    v75 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v67)), vcvtnq_s32_f32(v71));
    v76 = vminq_s16(vmaxq_s16(vqmovn_high_s32(vqmovn_s32(v72), v73), 0), v17);
    v77 = vminq_s16(vmaxq_s16(v74, 0), v17);
    v78 = vminq_s16(vmaxq_s16(v75, 0), v17);
    v79 = vshlq_n_s32(vzip1q_s16(v76, v7), 0x16uLL);
    v80 = vorrq_s8(vshlq_n_s32(vzip2q_s16(v77, 0), 0xCuLL), vshlq_n_s32(vzip2q_s16(v76, v7), 0x16uLL));
    v81 = vrev16q_s8(vorrq_s8(vzip1q_s16(v78, 0), vshrq_n_u32(vorrq_s8(vshlq_n_s32(vzip1q_s16(v77, 0), 0xCuLL), v79), 2uLL)));
    v82 = vrev16q_s8(vorrq_s8(vzip2q_s16(v78, 0), vshrq_n_u32(v80, 2uLL)));
    result[2] = vsraq_n_u32(vshlq_n_s32(v81, 0x10uLL), v81, 0x10uLL);
    result[3] = vsraq_n_u32(vshlq_n_s32(v82, 0x10uLL), v82, 0x10uLL);
    --v12;
    v83 = vaddq_s16(a2[16], v15);
    v84 = a2[48];
    v85 = a2[56];
    v86 = vcltzq_s16(v83);
    v87 = vzip1q_s16(v83, v86);
    v88 = vzip2q_s16(v83, v86);
    v89 = vcltzq_s16(v84);
    v90 = vcvtq_f32_s32(vzip1q_s16(v84, v89));
    v91 = vzip2q_s16(v84, v89);
    v92 = vcvtq_f32_s32(v87);
    v93 = vcvtq_f32_s32(v91);
    v94 = vcltzq_s16(v85);
    v95 = vcvtq_f32_s32(vzip1q_s16(v85, v94));
    v96 = vcvtq_f32_s32(vzip2q_s16(v85, v94));
    v97 = vmulq_f32(v92, v16);
    v98 = vaddq_f32(v97, vmulq_f32(v9, v90));
    v99 = vaddq_f32(v97, vmulq_f32(v7, v95));
    v100 = vaddq_f32(v97, vmulq_f32(v10, v90));
    v101 = vmulq_f32(vcvtq_f32_s32(v88), v16);
    v102 = vaddq_f32(v98, vmulq_f32(v8, v95));
    v103 = vaddq_f32(v101, vmulq_f32(v7, v96));
    v104 = vaddq_f32(v101, vmulq_f32(v9, v93));
    v105 = vaddq_f32(v101, vmulq_f32(v10, v93));
    v106 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v99)), vcvtnq_s32_f32(v103));
    v107 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v102)), vcvtnq_s32_f32(vaddq_f32(v104, vmulq_f32(v8, v96))));
    v108 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v100)), vcvtnq_s32_f32(v105));
    v109 = vminq_s16(vmaxq_s16(v106, 0), v17);
    v110 = vminq_s16(vmaxq_s16(v107, 0), v17);
    v111 = vminq_s16(vmaxq_s16(v108, 0), v17);
    v112 = vshlq_n_s32(vzip1q_s16(v109, v7), 0x16uLL);
    v113 = vorrq_s8(vshlq_n_s32(vzip2q_s16(v110, 0), 0xCuLL), vshlq_n_s32(vzip2q_s16(v109, v7), 0x16uLL));
    v114 = vrev16q_s8(vorrq_s8(vzip1q_s16(v111, 0), vshrq_n_u32(vorrq_s8(vshlq_n_s32(vzip1q_s16(v110, 0), 0xCuLL), v112), 2uLL)));
    v115 = vrev16q_s8(vorrq_s8(vzip2q_s16(v111, 0), vshrq_n_u32(v113, 2uLL)));
    *v48 = vsraq_n_u32(vshlq_n_s32(v114, 0x10uLL), v114, 0x10uLL);
    v48[1] = vsraq_n_u32(vshlq_n_s32(v115, 0x10uLL), v115, 0x10uLL);
    v116 = vaddq_s16(a2[24], v15);
    v117 = a2[80];
    v118 = a2[88];
    v119 = vcltzq_s16(v116);
    v120 = vzip1q_s16(v116, v119);
    v121 = vzip2q_s16(v116, v119);
    v122 = vcltzq_s16(v117);
    v123 = vcvtq_f32_s32(vzip1q_s16(v117, v122));
    v124 = vcvtq_f32_s32(vzip2q_s16(v117, v122));
    v125 = vcltzq_s16(v118);
    v126 = vcvtq_f32_s32(vzip1q_s16(v118, v125));
    v127 = vcvtq_f32_s32(vzip2q_s16(v118, v125));
    v128 = vmulq_f32(vcvtq_f32_s32(v120), v16);
    v129 = vaddq_f32(v128, vmulq_f32(v7, v126));
    v130 = vaddq_f32(v128, vmulq_f32(v9, v123));
    v131 = vaddq_f32(v128, vmulq_f32(v10, v123));
    v132 = vmulq_f32(vcvtq_f32_s32(v121), v16);
    v133 = vaddq_f32(v130, vmulq_f32(v8, v126));
    v134 = vaddq_f32(v132, vmulq_f32(v7, v127));
    v135 = vaddq_f32(vaddq_f32(v132, vmulq_f32(v9, v124)), vmulq_f32(v8, v127));
    v136 = vaddq_f32(v132, vmulq_f32(v10, v124));
    v137 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v129)), vcvtnq_s32_f32(v134));
    v138 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v133)), vcvtnq_s32_f32(v135));
    result = (result + a3);
    v139 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v131)), vcvtnq_s32_f32(v136));
    v140 = vminq_s16(vmaxq_s16(v137, 0), v17);
    v141 = vminq_s16(vmaxq_s16(v138, 0), v17);
    v142 = vminq_s16(vmaxq_s16(v139, 0), v17);
    v143 = vshlq_n_s32(vzip1q_s16(v140, v7), 0x16uLL);
    v144 = vorrq_s8(vshlq_n_s32(vzip2q_s16(v141, 0), 0xCuLL), vshlq_n_s32(vzip2q_s16(v140, v7), 0x16uLL));
    v145 = vrev16q_s8(vorrq_s8(vzip1q_s16(v142, 0), vshrq_n_u32(vorrq_s8(vshlq_n_s32(vzip1q_s16(v141, 0), 0xCuLL), v143), 2uLL)));
    v146 = vrev16q_s8(vorrq_s8(vzip2q_s16(v142, 0), vshrq_n_u32(v144, 2uLL)));
    v48[2] = vsraq_n_u32(vshlq_n_s32(v145, 0x10uLL), v145, 0x10uLL);
    v48[3] = vsraq_n_u32(vshlq_n_s32(v146, 0x10uLL), v146, 0x10uLL);
    --v14;
    ++a2;
  }

  while (v14 > 1);
  v147 = v41 + 8;
  v148 = v41 + 32;
  v149 = v41 + 40;
  v150 = v41 + 64;
  v151 = v41 + 72;
  a2 = v41;
  if (v12 >= 1)
  {
LABEL_21:
    v153 = result + 2;
    v154 = v12 + 1;
    v155.i64[0] = 0xE000E000E000E00;
    v155.i64[1] = 0xE000E000E000E00;
    v156 = vdupq_n_s32(0x3E157ABDu);
    v157.i64[0] = 0xFC00FC00FC00FC00;
    v157.i64[1] = 0xFC00FC00FC00FC00;
    do
    {
      v158 = *a2++;
      v159 = v158;
      v160 = *v148++;
      v161 = v160;
      v162 = *v149++;
      v163 = vaddq_s16(v159, v155);
      v164 = vcltzq_s16(v163);
      v165 = vzip1q_s16(v163, v164);
      v166 = vzip2q_s16(v163, v164);
      v167 = vcltzq_s16(v161);
      v168 = vcvtq_f32_s32(vzip1q_s16(v161, v167));
      v169 = vcvtq_f32_s32(vzip2q_s16(v161, v167));
      v170 = vcltzq_s16(v162);
      v171 = vcvtq_f32_s32(vzip1q_s16(v162, v170));
      v172 = vcvtq_f32_s32(vzip2q_s16(v162, v170));
      v173 = vmulq_f32(vcvtq_f32_s32(v165), v156);
      v174 = vaddq_f32(v173, vmulq_f32(v7, v171));
      v175 = vaddq_f32(v173, vmulq_f32(v9, v168));
      v176 = vaddq_f32(v173, vmulq_f32(v10, v168));
      v177 = vmulq_f32(vcvtq_f32_s32(v166), v156);
      v178 = vaddq_f32(v177, vmulq_f32(v7, v172));
      v179 = vaddq_f32(vaddq_f32(v177, vmulq_f32(v9, v169)), vmulq_f32(v8, v172));
      v180 = vaddq_f32(v177, vmulq_f32(v10, v169));
      v181 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v174)), vcvtnq_s32_f32(v178));
      v182 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(v175, vmulq_f32(v8, v171)))), vcvtnq_s32_f32(v179));
      v183 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v176)), vcvtnq_s32_f32(v180));
      v184 = vminq_s16(vmaxq_s16(v181, 0), v157);
      v185 = vminq_s16(vmaxq_s16(v182, 0), v157);
      v186 = vminq_s16(vmaxq_s16(v183, 0), v157);
      v187 = vshlq_n_s32(vzip1q_s16(v184, v7), 0x16uLL);
      v188 = vorrq_s8(vshlq_n_s32(vzip2q_s16(v185, 0), 0xCuLL), vshlq_n_s32(vzip2q_s16(v184, v7), 0x16uLL));
      v189 = vrev16q_s8(vorrq_s8(vzip1q_s16(v186, 0), vshrq_n_u32(vorrq_s8(vshlq_n_s32(vzip1q_s16(v185, 0), 0xCuLL), v187), 2uLL)));
      v190 = vrev16q_s8(vorrq_s8(vzip2q_s16(v186, 0), vshrq_n_u32(v188, 2uLL)));
      v153[-2] = vsraq_n_u32(vshlq_n_s32(v189, 0x10uLL), v189, 0x10uLL);
      v153[-1] = vsraq_n_u32(vshlq_n_s32(v190, 0x10uLL), v190, 0x10uLL);
      v191 = *v147++;
      v192 = vaddq_s16(v191, v155);
      v193 = *v150++;
      v194 = v193;
      v195 = *v151++;
      v196 = vcltzq_s16(v192);
      v197 = vzip1q_s16(v192, v196);
      v198 = vzip2q_s16(v192, v196);
      v199 = vcltzq_s16(v194);
      v200 = vcvtq_f32_s32(vzip1q_s16(v194, v199));
      v201 = vcvtq_f32_s32(vzip2q_s16(v194, v199));
      v202 = vcltzq_s16(v195);
      v203 = vcvtq_f32_s32(vzip1q_s16(v195, v202));
      v204 = vcvtq_f32_s32(vzip2q_s16(v195, v202));
      v205 = vmulq_f32(vcvtq_f32_s32(v197), v156);
      v206 = vaddq_f32(v205, vmulq_f32(v7, v203));
      v207 = vaddq_f32(v205, vmulq_f32(v9, v200));
      v208 = vaddq_f32(v205, vmulq_f32(v10, v200));
      v209 = vaddq_f32(v207, vmulq_f32(v8, v203));
      v210 = vmulq_f32(vcvtq_f32_s32(v198), v156);
      v211 = vaddq_f32(v210, vmulq_f32(v7, v204));
      v212 = vaddq_f32(vaddq_f32(v210, vmulq_f32(v9, v201)), vmulq_f32(v8, v204));
      v213 = vaddq_f32(v210, vmulq_f32(v10, v201));
      v214 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v206)), vcvtnq_s32_f32(v211));
      v215 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v209)), vcvtnq_s32_f32(v212));
      v216 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v208)), vcvtnq_s32_f32(v213));
      v217 = vminq_s16(vmaxq_s16(v214, 0), v157);
      v218 = vminq_s16(vmaxq_s16(v215, 0), v157);
      v219 = vminq_s16(vmaxq_s16(v216, 0), v157);
      v220 = vshlq_n_s32(vzip1q_s16(v217, v7), 0x16uLL);
      v221 = vorrq_s8(vshlq_n_s32(vzip2q_s16(v218, 0), 0xCuLL), vshlq_n_s32(vzip2q_s16(v217, v7), 0x16uLL));
      v222 = vrev16q_s8(vorrq_s8(vzip1q_s16(v219, 0), vshrq_n_u32(vorrq_s8(vshlq_n_s32(vzip1q_s16(v218, 0), 0xCuLL), v220), 2uLL)));
      v223 = vrev16q_s8(vorrq_s8(vzip2q_s16(v219, 0), vshrq_n_u32(v221, 2uLL)));
      *v153 = vsraq_n_u32(vshlq_n_s32(v222, 0x10uLL), v222, 0x10uLL);
      v153[1] = vsraq_n_u32(vshlq_n_s32(v223, 0x10uLL), v223, 0x10uLL);
      v153 = (v153 + a3);
      --v154;
    }

    while (v154 > 1);
  }

  return result;
}